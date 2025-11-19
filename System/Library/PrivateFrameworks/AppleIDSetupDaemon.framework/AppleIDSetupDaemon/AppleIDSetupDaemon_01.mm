uint64_t sub_2407EF064(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2407EF14C()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E506E60);
  __swift_project_value_buffer(v0, qword_27E506E60);
  return sub_2408D4920();
}

uint64_t sub_2407EF198()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4920();
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_2407CF000, v7, v8, "Removing Proximity Transport Connector", v9, 2u);
    MEMORY[0x245CC9F60](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(v1 + 112);

  sub_2407D9440(v1 + 120, &qword_27E506E98, &qword_2408D7FA0);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_2407EF304()
{
  sub_2407EF198();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2407EF354(uint64_t a1, uint64_t a2)
{
  v3[17] = a1;
  v3[18] = a2;
  v4 = sub_2408D4B20();
  v3[19] = v4;
  v5 = *(v4 - 8);
  v3[20] = v5;
  v6 = *(v5 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_2408D34E0();
  v3[25] = v7;
  v8 = *(v7 - 8);
  v3[26] = v8;
  v9 = *(v8 + 64) + 15;
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407EF494, v2, 0);
}

uint64_t sub_2407EF494()
{
  v84 = v0;
  v2 = v0[26];
  v1 = v0[27];
  v3 = v0[25];
  v4 = v0[18];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 32))(v5, v6);
  v7 = (*(v2 + 88))(v1, v3);
  if (v7 == *MEMORY[0x277CED250] || v7 == *MEMORY[0x277CED240])
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
    goto LABEL_7;
  }

  if (v7 == *MEMORY[0x277CED248])
  {
    (*(v0[26] + 8))(v0[27], v0[25]);
LABEL_11:
    v25 = v0[23];
    v26 = v0[18];
    sub_2408D4910();
    sub_2407D91C4(v26, (v0 + 7));
    v27 = sub_2408D4B10();
    v28 = sub_2408D4F20();
    v29 = os_log_type_enabled(v27, v28);
    v30 = v0[23];
    v31 = v0[19];
    v32 = v0[20];
    if (v29)
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v83 = v34;
      *v33 = 136315138;
      v35 = v0[11];
      __swift_project_boxed_opaque_existential_1(v0 + 7, v0[10]);
      v36 = *(v35 + 16);
      v37 = sub_2408D5250();
      v39 = v38;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
      v40 = sub_2408CC504(v37, v39, &v83);

      *(v33 + 4) = v40;
      _os_log_impl(&dword_2407CF000, v27, v28, "Returning server role for model: %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x245CC9F60](v34, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);

      (*(v32 + 8))(v30, v31);
    }

    else
    {

      (*(v32 + 8))(v30, v31);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    }

    v41 = v0[17];
    v42 = MEMORY[0x277CED568];
LABEL_21:
    v52 = *v42;
    v53 = sub_2408D3D60();
    v54 = *(v53 - 8);
    (*(v54 + 104))(v41, v52, v53);
    (*(v54 + 56))(v41, 0, 1, v53);
    goto LABEL_22;
  }

  if (v7 != *MEMORY[0x277CED230])
  {
    if (v7 == *MEMORY[0x277CED258])
    {
      goto LABEL_11;
    }

    if (v7 != *MEMORY[0x277CED238])
    {
      v62 = v0[21];
      v63 = v0[18];
      sub_2408D4910();
      sub_2407D91C4(v63, (v0 + 2));
      v64 = sub_2408D4B10();
      v65 = sub_2408D4F20();
      v66 = os_log_type_enabled(v64, v65);
      v68 = v0[20];
      v67 = v0[21];
      v69 = v0[19];
      if (v66)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v83 = v71;
        *v70 = 136315138;
        v72 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
        v73 = *(v72 + 16);
        v74 = sub_2408D5250();
        v76 = v75;
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
        v77 = sub_2408CC504(v74, v76, &v83);

        *(v70 + 4) = v77;
        _os_log_impl(&dword_2407CF000, v64, v65, "Returning nil role for model: %s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v71);
        MEMORY[0x245CC9F60](v71, -1, -1);
        MEMORY[0x245CC9F60](v70, -1, -1);

        (*(v68 + 8))(v67, v69);
      }

      else
      {

        (*(v68 + 8))(v67, v69);
        __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
      }

      v79 = v0[26];
      v78 = v0[27];
      v80 = v0[25];
      v81 = v0[17];
      v82 = sub_2408D3D60();
      (*(*(v82 - 8) + 56))(v81, 1, 1, v82);
      (*(v79 + 8))(v78, v80);
      goto LABEL_22;
    }

LABEL_7:
    v9 = v0[24];
    v10 = v0[18];
    sub_2408D4910();
    sub_2407D91C4(v10, (v0 + 12));
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F20();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[24];
    v15 = v0[19];
    v16 = v0[20];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v83 = v18;
      *v17 = 136315138;
      v19 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v0[15]);
      v20 = *(v19 + 16);
      v21 = sub_2408D5250();
      v23 = v22;
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
      v24 = sub_2408CC504(v21, v23, &v83);

      *(v17 + 4) = v24;
      _os_log_impl(&dword_2407CF000, v11, v12, "Returning client role for model: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v18);
      MEMORY[0x245CC9F60](v18, -1, -1);
      MEMORY[0x245CC9F60](v17, -1, -1);

      (*(v16 + 8))(v14, v15);
    }

    else
    {

      (*(v16 + 8))(v14, v15);
      __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    }

    v41 = v0[17];
    v42 = MEMORY[0x277CED560];
    goto LABEL_21;
  }

  v43 = v0[22];
  sub_2408D4910();
  v44 = sub_2408D4B10();
  v45 = sub_2408D4F30();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 0;
    _os_log_impl(&dword_2407CF000, v44, v45, "Remote setup is restricted for this model, rejecting", v46, 2u);
    MEMORY[0x245CC9F60](v46, -1, -1);
  }

  v47 = v0[22];
  v48 = v0[19];
  v49 = v0[20];
  v50 = v0[17];

  (*(v49 + 8))(v47, v48);
  v51 = sub_2408D3D60();
  (*(*(v51 - 8) + 56))(v50, 1, 1, v51);
LABEL_22:
  v55 = v0[27];
  v56 = v0[23];
  v57 = v0[24];
  v59 = v0[21];
  v58 = v0[22];

  v60 = v0[1];

  return v60();
}

uint64_t sub_2407EFC24@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v28 = sub_2408D4B20();
  v27 = *(v28 - 8);
  v3 = *(v27 + 64);
  MEMORY[0x28223BE20](v28);
  v25 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EC8, &qword_2408D7028);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v23 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED0, &qword_2408D7030);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v24 = &v23 - v12;
  v13 = a1;
  sub_2408D3460();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506ED8, &qword_2408D7038);
  sub_2407D917C(&qword_27E506EE0, &qword_27E506ED8, &qword_2408D7038);
  sub_2408D47B0();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_2407D9440(v8, &qword_27E506EC8, &qword_2408D7028);
    v14 = v25;
    sub_2408D4910();
    v15 = v13;
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F30();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v15;
      *v19 = v15;
      v20 = v15;
      _os_log_impl(&dword_2407CF000, v16, v17, "Failed to create transport for message session template: %@", v18, 0xCu);
      sub_2407D9440(v19, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v19, -1, -1);
      MEMORY[0x245CC9F60](v18, -1, -1);
    }

    (*(v27 + 8))(v14, v28);
    sub_2407F11F8();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    v22 = v24;
    (*(v10 + 32))(v24, v8, v9);
    sub_2407D917C(&qword_27E506EF0, &qword_27E506ED0, &qword_2408D7030);
    sub_2408D43D0();
    return (*(v10 + 8))(v22, v9);
  }
}

uint64_t sub_2407F0014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[11] = a4;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v6[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F00B8, a5, 0);
}

uint64_t sub_2407F00B8()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);
  v5 = *(MEMORY[0x277CED550] + 4);
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_2407F0170;

  return MEMORY[0x28213F250](v2, v4);
}

uint64_t sub_2407F0170()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 128) = v0;

  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = sub_2407F0384;
  }

  else
  {
    v6 = sub_2407F029C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_2407F029C()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v0[5] = v3;
  v0[6] = *(v4 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v5, v3);
  swift_beginAccess();
  sub_2407F1074((v0 + 2), v2 + 120);
  swift_endAccess();
  v7 = v0[14];

  v8 = v0[1];

  return v8();
}

uint64_t sub_2407F0384()
{
  v1 = *(v0 + 112);
  v2 = *(*(v0 + 104) + 16);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v4));
  sub_2407F1124(v2 + v3, v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2 + v3, 1, 1, v5);
  os_unfair_lock_unlock((v2 + v4));

  if ((*(v6 + 48))(v1, 1, v5) == 1)
  {
    v7 = *(v0 + 112);

    sub_2407D9440(v7, &qword_27E506EA8, &unk_2408D9130);
  }

  else
  {
    v8 = *(v0 + 128);
    *(v0 + 80) = v8;
    v9 = *(v0 + 112);
    v10 = v8;
    sub_2408D4E10();

    (*(v6 + 8))(v9, v5);
  }

  v11 = *(v0 + 112);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2407F0568()
{
  v0 = sub_2408D3490();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2408D4120() == 2)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CED1F0], v0);
    v5 = sub_2408D3480();
    (*(v1 + 8))(v4, v0);
    if (v5)
    {
      return sub_2408D46D0();
    }
  }

  v7 = sub_2408D4060();
  if (v7 == 2)
  {
    (*(v1 + 104))(v4, *MEMORY[0x277CED208], v0);
    v8 = sub_2408D3480();
    (*(v1 + 8))(v4, v0);
    if (v8)
    {
      return sub_2408D4700();
    }
  }

  else if (v7 == 1)
  {
    return sub_2408D46C0();
  }

  return sub_2408D46E0();
}

uint64_t sub_2407F0714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[13] = a4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130) - 8) + 64) + 15;
  v6[16] = swift_task_alloc();
  v8 = *(MEMORY[0x277CED9F0] + 4);
  v11 = (*MEMORY[0x277CED9F0] + MEMORY[0x277CED9F0]);
  v9 = swift_task_alloc();
  v6[17] = v9;
  *v9 = v6;
  v9[1] = sub_2407F07F8;

  return v11();
}

uint64_t sub_2407F07F8()
{
  v2 = *(*v1 + 136);
  v3 = *(*v1 + 112);
  v6 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v4 = sub_2407F0A10;
  }

  else
  {
    v4 = sub_2407F0920;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2407F0920()
{
  v1 = v0[13];
  v2 = v0[14];
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB8, &qword_2408D7018);
  v0[6] = sub_2407D917C(&qword_27E506EC0, &qword_27E506EB8, &qword_2408D7018);
  v0[2] = v1;
  swift_beginAccess();

  sub_2407F1074((v0 + 2), v2 + 120);
  swift_endAccess();
  v3 = v0[16];

  v4 = v0[1];

  return v4();
}

uint64_t sub_2407F0A10()
{
  v1 = v0[15];
  sub_2408D4A90();
  v2 = v0[10];
  if (v2)
  {
    v3 = v0[16];
    v4 = *(v2 + 16);

    v5 = *(*v4 + *MEMORY[0x277D841D0] + 16);
    v6 = (*(*v4 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v4 + v6));
    sub_2407F1124(v4 + v5, v3);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EB0, &qword_2408D7010);
    v8 = *(v7 - 8);
    (*(v8 + 56))(v4 + v5, 1, 1, v7);
    os_unfair_lock_unlock((v4 + v6));

    if ((*(v8 + 48))(v3, 1, v7) == 1)
    {
      sub_2407D9440(v0[16], &qword_27E506EA8, &unk_2408D9130);
    }

    else
    {
      v9 = v0[18];
      v10 = v0[16];
      v0[12] = v9;
      v11 = v9;
      sub_2408D4E10();
      (*(v8 + 8))(v10, v7);
    }
  }

  v12 = v0[18];
  v13 = v0[15];
  v0[11] = 0;
  sub_2408D4AA0();

  v14 = v0[16];

  v15 = v0[1];

  return v15();
}

uint64_t sub_2407F0C10()
{
  v1 = *v0;
  type metadata accessor for ProximityTransportConnector();
  sub_2407F10E4(&qword_27E506EA0);
  return sub_2408D4270();
}

uint64_t sub_2407F0D20(uint64_t a1)
{
  result = sub_2407F10E4(&qword_27E506E78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2407F0D64()
{
  v1 = v0;
  v2 = sub_2408D4B20();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  swift_beginAccess();
  sub_2407F1004(v1 + 120, &v18);
  if (v19)
  {
    sub_2407D2554(&v18, &v20);
    sub_2408D4920();
    v10 = sub_2408D4B10();
    v11 = sub_2408D4F20();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v10, v11, "Attempting to invalidate the valid bluetooth base", v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }

    (*(v3 + 8))(v9, v2);
    __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    sub_2408D3CE0();
    __swift_destroy_boxed_opaque_existential_0Tm(&v20);
  }

  else
  {
    sub_2407D9440(&v18, &qword_27E506E98, &qword_2408D7FA0);
    sub_2408D4920();
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F20();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "bluetooth base is already nil, bailing", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
  }

  v22 = 0;
  v20 = 0u;
  v21 = 0u;
  swift_beginAccess();
  sub_2407F1074(&v20, v1 + 120);
  return swift_endAccess();
}

uint64_t sub_2407F1004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E98, &qword_2408D7FA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407F1074(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E98, &qword_2408D7FA0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407F10E4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ProximityTransportConnector();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2407F1124(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EA8, &unk_2408D9130);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_2407F11F8()
{
  result = qword_27E506EE8;
  if (!qword_27E506EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506EE8);
  }

  return result;
}

uint64_t type metadata accessor for ProximityTransportConnector.LegacySetupCompleted()
{
  result = qword_27E506F00;
  if (!qword_27E506F00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2407F12C0()
{
  sub_2407F132C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2407F132C()
{
  if (!qword_27E506F10)
  {
    sub_2408D3A60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E506AC0, &qword_2408D6850);
    v0 = sub_2408D5360();
    if (!v1)
    {
      atomic_store(v0, &qword_27E506F10);
    }
  }
}

uint64_t sub_2407F13E8()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  v2 = *(v0 + 128);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2407F1428()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_28130EFC0);
  __swift_project_value_buffer(v0, qword_28130EFC0);
  return sub_2408D4930();
}

uint64_t sub_2407F1474()
{
  result = sub_2407F1498();
  qword_28130F640 = result;
  *algn_28130F648 = v1;
  return result;
}

uint64_t sub_2407F1498()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_2408D4CB0();
  if (*(v2 + 16) && (v3 = sub_2408CCB30(0xD000000000000010, 0x80000002408DA670), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v6 = *v5;
    v7 = v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_2407F1578@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v48 = a1;
  v49 = a2;
  v46 = a4;
  v5 = sub_2408D4FC0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v7 = sub_2408D4C70();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_2408D4FD0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v53 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FB8, &qword_2408D7360);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  v45 = sub_2408D4A70();
  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  (*(v10 + 104))(v13, *MEMORY[0x277D85268], v9);
  sub_2408D4C60();
  v17 = MEMORY[0x277D84F90];
  *&v53 = MEMORY[0x277D84F90];
  sub_2407F6C9C(&unk_28130EF50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407F6B68();
  sub_2408D5080();
  v18 = sub_2408D4FF0();
  v47 = a3;
  sub_2407F66D8(a3);
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v19 = sub_2408D4B20();
  __swift_project_value_buffer(v19, qword_28130EFC0);
  v20 = sub_2408D4B10();
  v21 = sub_2408D4F10();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_2407CF000, v20, v21, "Entering sandbox", v22, 2u);
    MEMORY[0x245CC9F60](v22, -1, -1);
  }

  if (!_set_user_dir_suffix())
  {
    goto LABEL_12;
  }

  v23 = [objc_opt_self() defaultStore];
  if (!v23)
  {
    __break(1u);
LABEL_12:
    result = sub_2408D5190();
    __break(1u);
    return result;
  }

  v24 = v23;
  v25 = objc_allocWithZone(MEMORY[0x277CED1E8]);
  v26 = v24;
  v27 = [v25 initWithAccountStore_];
  v54 = sub_2407EEDBC(0, &qword_28130EF40, 0x277CED1E8);
  v55 = &off_285284100;
  *&v53 = v27;
  v51 = sub_2407EEDBC(0, &qword_28130EF88, 0x277CB8F48);
  v52 = &off_285284110;
  *&v50 = v26;
  type metadata accessor for AISSignOutService();
  v28 = swift_allocObject();
  *(v28 + 96) = 0;
  sub_2407D2554(&v53, v28 + 16);
  sub_2407D2554(&v50, v28 + 56);
  v29 = v27;
  v30 = sub_2408D4B10();
  v31 = sub_2408D4F10();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v44 = v18;
    v34 = v33;
    *&v53 = v33;
    *v32 = 136315138;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC0, &qword_2408D7368);
    v36 = MEMORY[0x245CC9210](MEMORY[0x277D84F90], v35);
    v38 = v17;
    v39 = sub_2408CC504(v36, v37, &v53);

    *(v32 + 4) = v39;
    v17 = v38;
    _os_log_impl(&dword_2407CF000, v30, v31, "Registering push service with delegates: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    v40 = v34;
    v18 = v44;
    MEMORY[0x245CC9F60](v40, -1, -1);
    MEMORY[0x245CC9F60](v32, -1, -1);
  }

  else
  {
  }

  result = __swift_destroy_boxed_opaque_existential_0Tm(v47);
  v42 = v49;
  v43 = v46;
  *v46 = v48;
  v43[1] = v42;
  v43[2] = v45;
  v43[3] = v17;
  v43[4] = v28;
  v43[5] = v18;
  return result;
}

double Daemon.init()@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for MachServiceManager();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = sub_2407F5F64(MEMORY[0x277D84F90]);
  sub_2408D4720();
  v3 = objc_allocWithZone(MEMORY[0x277CCAE98]);
  v4 = sub_2408D4D00();

  v5 = [v3 initWithMachServiceName_];

  v6 = type metadata accessor for ConnectionManager();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC18AppleIDSetupDaemon17ConnectionManager_aisDaemonServiceListener] = v5;
  v14.receiver = v7;
  v14.super_class = v6;
  v8 = objc_msgSendSuper2(&v14, sel_init);
  v9 = sub_2408D4150();
  v10 = sub_2408D4140();
  v13[3] = v9;
  v13[4] = MEMORY[0x277CED7C0];
  v13[0] = v10;
  sub_2407F1578(v2, v8, v13, v15);
  v11 = v15[1];
  *a1 = v15[0];
  a1[1] = v11;
  result = *&v16;
  a1[2] = v16;
  return result;
}

uint64_t Daemon.start()()
{
  v2 = v0[1];
  *(v1 + 120) = *v0;
  *(v1 + 136) = v2;
  *(v1 + 152) = v0[2];
  return MEMORY[0x2822009F8](sub_2407F1C90, 0, 0);
}

uint64_t sub_2407F1C90()
{
  v23 = v0;
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  v0[21] = __swift_project_value_buffer(v1, qword_28130EFC0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "============== appleidsetupd starting ==============", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  if (qword_28130F410 != -1)
  {
    swift_once();
  }

  v6 = qword_28130F640;
  v5 = *algn_28130F648;
  if (*algn_28130F648)
  {
    v7 = *algn_28130F648;
  }

  else
  {
    v7 = 0x80000002408DA4E0;
  }

  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();

  if (os_log_type_enabled(v8, v9))
  {
    if (v5)
    {
      v10 = v6;
    }

    else
    {
      v10 = 0xD000000000000012;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136315138;
    v13 = sub_2408CC504(v10, v7, v22);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_2407CF000, v8, v9, "Starting appleidsetupd - %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[19];
  v14 = v0[20];
  v17 = v0[17];
  v16 = v0[18];
  v18 = v0[16];
  v22[0] = v0[15];
  v19 = v22[0];
  v22[1] = v18;
  v22[2] = v17;
  v22[3] = v16;
  v22[4] = v15;
  v22[5] = v14;
  sub_2407F255C();
  sub_2408C29F4();
  v0[2] = v19;
  v0[3] = v18;
  v0[4] = v17;
  v0[5] = v16;
  v0[6] = v15;
  v0[7] = v14;
  v20 = swift_task_alloc();
  v0[22] = v20;
  *v20 = v0;
  v20[1] = sub_2407F1F74;

  return sub_2407F2770();
}

uint64_t sub_2407F1F74()
{
  v2 = *(*v1 + 176);
  v3 = *v1;
  *(v3 + 184) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407F2228, 0, 0);
  }

  else
  {
    *(v3 + 64) = *(v3 + 120);
    v4 = *(v3 + 152);
    *(v3 + 80) = *(v3 + 136);
    *(v3 + 96) = v4;
    v5 = swift_task_alloc();
    *(v3 + 192) = v5;
    *v5 = v3;
    v5[1] = sub_2407F20F4;

    return sub_2407F3130();
  }
}

uint64_t sub_2407F20F4()
{
  v2 = *(*v1 + 192);
  v3 = *v1;
  *(v3 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2407F2408, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_2407F2228()
{
  v18 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    *(v0 + 112) = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v17);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v4, v5, "Error occurred in registering aps connection: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  else
  {
    v13 = *(v0 + 184);
  }

  *(v0 + 64) = *(v0 + 120);
  v14 = *(v0 + 152);
  *(v0 + 80) = *(v0 + 136);
  *(v0 + 96) = v14;
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_2407F20F4;

  return sub_2407F3130();
}

uint64_t sub_2407F2408()
{
  v1 = v0[25];
  v2 = v0[21];
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[25];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to register mach setup service: %@", v8, 0xCu);
    sub_2407DB3B0(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

void sub_2407F255C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 40);
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  __swift_project_value_buffer(v3, qword_28130EFC0);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F10();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v4, v5, "Registering launch event stream handlers: (notifyd, distnoted)", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_2407F6C20;
  v15 = v7;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2407F52B4;
  v13 = &block_descriptor_0;
  v8 = _Block_copy(&v10);

  xpc_set_event_stream_handler("com.apple.notifyd.matching", v2, v8);
  _Block_release(v8);
  v14 = nullsub_1;
  v15 = 0;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_2407F52B4;
  v13 = &block_descriptor_23;
  v9 = _Block_copy(&v10);
  xpc_set_event_stream_handler("com.apple.distnoted.matching", v2, v9);
  _Block_release(v9);
}

uint64_t sub_2407F2770()
{
  v2 = sub_2408D4FD0();
  *(v1 + 80) = v2;
  v3 = *(v2 - 8);
  *(v1 + 88) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 96) = swift_task_alloc();
  v5 = sub_2408D4FC0();
  *(v1 + 104) = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  *(v1 + 112) = swift_task_alloc();
  v7 = *(*(sub_2408D4C70() - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();
  v8 = v0[1];
  *(v1 + 128) = *v0;
  *(v1 + 144) = v8;
  *(v1 + 160) = v0[2];

  return MEMORY[0x2822009F8](sub_2407F2898, 0, 0);
}

uint64_t sub_2407F2898()
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  *(v0 + 176) = __swift_project_value_buffer(v1, qword_28130EFC0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Activating push service async", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v17 = *(v0 + 144);
  v18 = *(v0 + 168);
  v6 = *(v0 + 112);
  v5 = *(v0 + 120);
  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 88);
  v15 = *(v0 + 80);
  v16 = *(v0 + 128);
  v19 = *(v0 + 152);

  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  *(v0 + 64) = MEMORY[0x277D84F90];
  sub_2407F6C9C(&unk_28130EF50, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407F6B68();
  sub_2408D5080();
  (*(v9 + 104))(v8, *MEMORY[0x277D85260], v15);
  v10 = sub_2408D4FF0();
  *(v0 + 184) = v10;

  *(v0 + 192) = sub_240872FB0(&unk_2852831E8);
  sub_2407F6BCC(&unk_285283208);
  type metadata accessor for PushService();
  v11 = swift_allocObject();
  *(v0 + 200) = v11;
  swift_defaultActor_initialize();
  v11[21] = 0;
  v11[22] = 0;
  v11[14] = 0xD00000000000001ALL;
  v11[15] = 0x80000002408DA5C0;
  v11[16] = v10;
  v12 = v10;
  *(v0 + 16) = v16;
  *(v0 + 32) = v17;
  *(v0 + 40) = v19;
  *(v0 + 56) = v18;
  v13 = swift_task_alloc();
  *(v0 + 208) = v13;
  *v13 = v0;
  v13[1] = sub_2407F2BC0;

  return sub_2407F4020();
}

uint64_t sub_2407F2BC0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v6 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = a2;

  return MEMORY[0x2822009F8](sub_2407F2CC0, 0, 0);
}

uint64_t sub_2407F2CC0()
{
  v1 = v0[28];
  v3 = v0[24];
  v2 = v0[25];
  v4 = v0[19];
  v2[19] = v0[27];
  v2[20] = v1;
  v2[17] = v4;
  v2[18] = v3;
  return MEMORY[0x2822009F8](sub_2407F2CEC, v2, 0);
}

uint64_t sub_2407F2CEC()
{
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_2407F2D84;
  v2 = *(v0 + 200);

  return sub_2408767B8();
}

uint64_t sub_2407F2D84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 232);
  v7 = *v2;
  *(v3 + 240) = a1;
  *(v3 + 248) = v1;

  if (v1)
  {
    v5 = sub_2407F30A4;
  }

  else
  {
    v5 = sub_2407F2E98;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2407F2E98()
{
  v0[9] = v0[25];
  v1 = v0[30];
  v2 = v0[21];
  v25 = v0[22];
  v4 = v0[19];
  v3 = v0[20];
  v6 = v0[17];
  v5 = v0[18];
  v7 = v0[16];

  v8 = v6;

  v9 = v2;

  sub_2408D4AA0();

  v10 = v1;
  v11 = sub_2408D4B10();
  v12 = sub_2408D4F20();

  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[30];
  v15 = v0[25];
  if (v13)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v14;
    *v17 = v14;
    v18 = v14;
    _os_log_impl(&dword_2407CF000, v11, v12, "Successfully registered aps connection: %@", v16, 0xCu);
    sub_2407DB3B0(v17);
    MEMORY[0x245CC9F60](v17, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);

    v11 = v0[30];
  }

  else
  {
    v19 = v0[25];
  }

  v21 = v0[14];
  v20 = v0[15];
  v22 = v0[12];

  v23 = v0[1];

  return v23();
}

uint64_t sub_2407F30A4()
{
  v1 = v0[25];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];

  v5 = v0[1];
  v6 = v0[31];

  return v5();
}

uint64_t sub_2407F3130()
{
  v2 = *(*(sub_2408D4B90() - 8) + 64) + 15;
  v1[2] = swift_task_alloc();
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = sub_2408D3490();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *v0;
  v1[7] = v6;
  v1[8] = v7;

  return MEMORY[0x2822009F8](sub_2407F3234, 0, 0);
}

uint64_t sub_2407F3234()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = *MEMORY[0x277CED1F0];
  v5 = *(v2 + 104);
  v0[9] = v5;
  v0[10] = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v5(v1, v4, v3);
  v6 = sub_2408D3480();
  v7 = *(v2 + 8);
  v0[11] = v7;
  v0[12] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  if (v6)
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_28130EFC0);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F10();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Registering age migration listener", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v12 = v0[8];

    v13 = sub_2407F3690;
LABEL_17:

    return MEMORY[0x2822009F8](v13, v12, 0);
  }

  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v14 = sub_2408D4B20();
  __swift_project_value_buffer(v14, qword_28130EFC0);
  v15 = sub_2408D4B10();
  v16 = sub_2408D4F20();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_2407CF000, v15, v16, "Age migration feature is not enabled", v17, 2u);
    MEMORY[0x245CC9F60](v17, -1, -1);
  }

  v0[14] = 0;
  v19 = v0[11];
  v18 = v0[12];
  v20 = v0[10];
  v21 = v0[7];
  v22 = v0[5];
  (v0[9])(v21, *MEMORY[0x277CED228], v22);
  v23 = sub_2408D3480();
  v19(v21, v22);
  if (v23)
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v0[15] = __swift_project_value_buffer(v14, qword_28130EFC0);
    v24 = sub_2408D4B10();
    v25 = sub_2408D4F10();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2407CF000, v24, v25, "Sandstone is enabled, registering mach setup service", v26, 2u);
      MEMORY[0x245CC9F60](v26, -1, -1);
    }

    v12 = v0[8];

    v13 = sub_2407F3AD8;
    goto LABEL_17;
  }

  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v14, qword_28130EFC0);
  v27 = sub_2408D4B10();
  v28 = sub_2408D4F30();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_2407CF000, v27, v28, "Not registering mach setup service, disabled", v29, 2u);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  v30 = v0[7];
  v31 = v0[3];
  v32 = v0[4];
  v33 = v0[2];

  v34 = v0[1];

  return v34();
}

uint64_t sub_2407F3690()
{
  if (qword_28130F098 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = qword_28130F620;
  v3 = *algn_28130F628;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_2407F49BC;
  *(v4 + 24) = 0;

  sub_2408D4B80();
  v5 = sub_2408D4BD0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  sub_2408D4BC0();
  v0[13] = 0;
  v8 = v0[8];

  sub_2408C7498(v9, v2, v3);

  return MEMORY[0x2822009F8](sub_2407F3858, 0, 0);
}

uint64_t sub_2407F3858()
{
  v1 = *(v0 + 96);
  *(v0 + 112) = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  v4 = *(v0 + 56);
  v5 = *(v0 + 40);
  (*(v0 + 72))(v4, *MEMORY[0x277CED228], v5);
  v6 = sub_2408D3480();
  v3(v4, v5);
  if (v6)
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v7 = sub_2408D4B20();
    *(v0 + 120) = __swift_project_value_buffer(v7, qword_28130EFC0);
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Sandstone is enabled, registering mach setup service", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = *(v0 + 64);

    return MEMORY[0x2822009F8](sub_2407F3AD8, v11, 0);
  }

  else
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_28130EFC0);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F30();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "Not registering mach setup service, disabled", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v16 = *(v0 + 56);
    v17 = *(v0 + 24);
    v18 = *(v0 + 32);
    v19 = *(v0 + 16);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_2407F3AD8()
{
  v1 = v0[14];
  v2 = v0[3];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2407F4B90;
  *(v3 + 24) = 0;
  sub_2408D4B80();
  v4 = sub_2408D4BD0();
  v0[16] = v4;
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  sub_2408D4BC0();
  v0[17] = v1;
  if (v1)
  {
    v7 = v0[7];
    v8 = v0[3];
    v9 = v0[4];
    v10 = v0[2];

    v11 = v0[1];

    return v11();
  }

  else
  {
    v13 = v0[8];

    sub_2408C7498(v14, 0xD000000000000021, 0x80000002408DA590);

    return MEMORY[0x2822009F8](sub_2407F3C74, 0, 0);
  }
}

uint64_t sub_2407F3C74()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 88);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);
  v6 = *(v0 + 40);
  (*(v0 + 72))(v5, *MEMORY[0x277CED1F8], v6);
  v7 = sub_2408D3480();
  v3(v5, v6);
  v8 = sub_2408D4B10();
  if (v7)
  {
    v9 = sub_2408D4F10();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Sandstone Repair is enabled, registering mach repair service", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v11 = *(v0 + 64);

    return MEMORY[0x2822009F8](sub_2407F3E64, v11, 0);
  }

  else
  {
    v12 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_2407CF000, v8, v12, "Not registering mach repair service, disabled", v13, 2u);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v14 = *(v0 + 56);
    v15 = *(v0 + 24);
    v16 = *(v0 + 32);
    v17 = *(v0 + 16);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_2407F3E64()
{
  if (qword_28130F198 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[2];
  v4 = qword_28130F630;
  v5 = *algn_28130F638;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2407F4D40;
  *(v6 + 24) = 0;

  sub_2408D4B80();
  v7 = *(v1 + 48);
  v8 = *(v1 + 52);
  swift_allocObject();
  sub_2408D4BC0();
  if (v2)
  {
    v9 = v0[7];
    v10 = v0[3];
    v11 = v0[4];
    v12 = v0[2];
  }

  else
  {
    v14 = v0[8];

    sub_2408C7498(v15, v4, v5);

    v16 = v0[7];
    v17 = v0[3];
    v18 = v0[4];
    v19 = v0[2];
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_2407F4020()
{
  v1 = sub_2408D4AC0();
  v0[5] = v1;
  v2 = *(v1 - 8);
  v0[6] = v2;
  v3 = *(v2 + 64) + 15;
  v0[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F40DC, 0, 0);
}

uint64_t sub_2407F40DC()
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  *(v0 + 64) = __swift_project_value_buffer(v1, qword_28130EFC0);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2407CF000, v2, v3, "Fetching APSEnvironment", v4, 2u);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  v5 = *(MEMORY[0x277CE4600] + 4);
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *v6 = v0;
  v6[1] = sub_2407F4264;
  v7 = MEMORY[0x277D837D0];

  return MEMORY[0x2821372C0](v0 + 16, 2000000000000000000, 0, &unk_2408D7358, 0, v7);
}

uint64_t sub_2407F4264()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_2407F43E4;
  }

  else
  {
    v3 = sub_2407F4378;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2407F4378()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[7];

  v4 = v0[1];

  return v4(v2, v1);
}

uint64_t sub_2407F43E4()
{
  v1 = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 80);
  v7 = *(v0 + 64);
  if (v5)
  {

    v8 = sub_2408D4B10();
    v9 = sub_2408D4F30();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_2407CF000, v8, v9, "Fetching APSEnvironment timed out", v10, 2u);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v12 = *(v0 + 48);
    v11 = *(v0 + 56);
    v13 = *(v0 + 40);

    (*(v12 + 8))(v11, v13);
    v14 = *(v0 + 32);
  }

  else
  {

    v15 = v6;
    v16 = sub_2408D4B10();
    v17 = sub_2408D4F30();

    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 80);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v19;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_2407CF000, v16, v17, "Error occurred in fetching APS environment: %@", v20, 0xCu);
      sub_2407DB3B0(v21);
      MEMORY[0x245CC9F60](v21, -1, -1);
      MEMORY[0x245CC9F60](v20, -1, -1);

      goto LABEL_9;
    }

    v14 = v19;
  }

LABEL_9:
  v24 = *MEMORY[0x277CEE9F0];
  v25 = sub_2408D4D30();
  v27 = v26;
  v28 = *(v0 + 56);

  v29 = *(v0 + 8);

  return v29(v25, v27);
}

id sub_2407F4668()
{
  v27 = v0;
  result = [objc_opt_self() sharedBag];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v2 = result;
  v3 = [result APSEnvironment];

  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = sub_2408D4D30();
  v6 = v5;
  v7 = [objc_opt_self() isValidEnvironment_];

  if (!v7)
  {

LABEL_10:
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v13 = sub_2408D4B20();
    __swift_project_value_buffer(v13, qword_28130EFC0);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      v18 = *MEMORY[0x277CEE9F0];
      v19 = sub_2408D4D30();
      v21 = sub_2408CC504(v19, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_2407CF000, v14, v15, "Returning default APSEnvironment: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    else
    {

      v22 = *MEMORY[0x277CEE9F0];
    }

    v4 = sub_2408D4D30();
    v6 = v23;
    goto LABEL_16;
  }

  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v8 = sub_2408D4B20();
  __swift_project_value_buffer(v8, qword_28130EFC0);

  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2408CC504(v4, v6, &v26);
    _os_log_impl(&dword_2407CF000, v9, v10, "Fetched APSEnvironment from AKURLBag: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

LABEL_16:
  v24 = *(v0 + 16);
  *v24 = v4;
  v24[1] = v6;
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2407F49BC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_28130EFC0);

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    sub_2408D4B70();

    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, &v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v5, v6, "Creating new MachAgeMigrationService for XPC session: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF0130]) init];
  type metadata accessor for MachAgeMigrationService();
  swift_allocObject();

  v13 = sub_2408B4B90(v12, a1);

  *a2 = v13;
  return result;
}

uint64_t sub_2407F4B90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_28130EFC0);

  v5 = sub_2408D4B10();
  v6 = sub_2408D4F10();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15[0] = v8;
    *v7 = 136315138;
    sub_2408D4B70();

    v9 = sub_2408D4D40();
    v11 = sub_2408CC504(v9, v10, v15);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_2407CF000, v5, v6, "Creating new mach setup service for XPC session: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v12 = sub_2408D4150();

  v13 = sub_2408D4140();
  v15[3] = v12;
  v15[4] = MEMORY[0x277CED7C0];
  v15[0] = v13;
  return sub_2408B6100(a1, v15, a2);
}

uint64_t sub_2407F4D40@<X0>(void *a1@<X8>)
{
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_28130EFC0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_2408D4B70();

    v7 = sub_2408D4D40();
    v9 = sub_2408CC504(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Creating new mach repair service for XPC session: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  type metadata accessor for MachRepairService();
  swift_allocObject();

  v11 = sub_240873118(v10);

  *a1 = v11;
  return result;
}

void sub_2407F4EEC(void *a1)
{
  v2 = sub_2408D4B30();
  if (xpc_dictionary_get_string(a1, v2))
  {
    v3 = sub_2408D4D80();
    v5 = v4;
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v6 = sub_2408D4B20();
    __swift_project_value_buffer(v6, qword_28130EFC0);

    v7 = sub_2408D4B10();
    v8 = sub_2408D4F20();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v25 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2408CC504(v3, v5, &v25);
      _os_log_impl(&dword_2407CF000, v7, v8, "XPC event stream handler called with event name: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x245CC9F60](v10, -1, -1);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;

      v13 = sub_2408D4B10();
      v14 = sub_2408D4F20();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v24 = v16;
        *v15 = 136315138;
        *(v15 + 4) = sub_2408CC504(v3, v5, &v24);
        _os_log_impl(&dword_2407CF000, v13, v14, "Handing off event name to connection manager: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v16);
        MEMORY[0x245CC9F60](v16, -1, -1);
        MEMORY[0x245CC9F60](v15, -1, -1);
      }

      sub_2408C3370(v3, v5);
    }

    else
    {

      v20 = sub_2408D4B10();
      v21 = sub_2408D4F20();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2407CF000, v20, v21, "Connection manager has been released.", v22, 2u);
        MEMORY[0x245CC9F60](v22, -1, -1);
      }
    }
  }

  else
  {
    if (qword_28130EFB8 != -1)
    {
      swift_once();
    }

    v17 = sub_2408D4B20();
    __swift_project_value_buffer(v17, qword_28130EFC0);
    oslog = sub_2408D4B10();
    v18 = sub_2408D4F20();
    if (os_log_type_enabled(oslog, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2407CF000, oslog, v18, "No event name to handle in this notification. Ignoring.", v19, 2u);
      MEMORY[0x245CC9F60](v19, -1, -1);
    }
  }
}

uint64_t sub_2407F52B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_2407F5314()
{
  type metadata accessor for MachRepairService();
  sub_2407F6C9C(&qword_27E506FA8, type metadata accessor for MachRepairService);
  return sub_2408D4BA0();
}

uint64_t sub_2407F53B4()
{
  type metadata accessor for MachAgeMigrationService();
  sub_2407F6C9C(&qword_27E506F88, type metadata accessor for MachAgeMigrationService);
  return sub_2408D4BA0();
}

unint64_t sub_2407F5454(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F78, &qword_2408D7320);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F80, &qword_2408D7328);
    v8 = sub_2408D51D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v10, v6, &qword_27E506F78, &qword_2408D7320);
      result = sub_2408CCBA8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2408D38D0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_2408D3770();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2407F5674(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F48, &qword_2408D72E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F50, &qword_2408D72F0);
    v8 = sub_2408D51D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v10, v6, &qword_27E506F48, &qword_2408D72E8);
      v12 = *v6;
      result = sub_2408CCC7C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_2408D38D0();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2407F585C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F68, &unk_2408D7310);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F70, &unk_2408D9C80);
    v8 = sub_2408D51D0();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v10, v6, &qword_27E506F68, &unk_2408D7310);
      result = sub_2408CCBA8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2408D38D0();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 16 * v14;
      v18 = v9[8];
      *v17 = *v9;
      *(v17 + 8) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2407F5A54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F58, &qword_2408D72F8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F60, &unk_2408D7300);
    v8 = sub_2408D51D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v10, v6, &qword_27E506F58, &qword_2408D72F8);
      result = sub_2408CCBA8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2408D38D0();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
      result = sub_2407F64A8(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2407F5C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F28, &qword_2408D72C8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F30, &unk_2408D72D0);
    v8 = sub_2408D51D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v10, v6, &qword_27E506F28, &qword_2408D72C8);
      v12 = *v6;
      result = sub_2408CCC7C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F38, &unk_2408D8150);
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2407F5E5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
    v3 = sub_2408D51D0();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_2407D256C(v5, v6);
      result = sub_2408CCC7C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_2407F5F64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD0, qword_2408D9B60);
    v3 = sub_2408D51D0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_2408CCB30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2407F60A0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_2407F60E8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_2407F6144(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F90, &qword_2408D7330);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F98, &qword_2408D7338);
    v8 = sub_2408D51D0();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_2407EEE04(v10, v6, &qword_27E506F90, &qword_2408D7330);
      result = sub_2408CCD10(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_2408D4260();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_2407F6370(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F18, &unk_2408D9C90);
    v3 = sub_2408D51D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2407EEE04(v4, &v11, &qword_27E506F20, &qword_2408D72C0);
      v5 = v11;
      result = sub_2408CCC7C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2407F6498(&v12, (v3[7] + 32 * result));
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

_OWORD *sub_2407F6498(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2407F64A8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2407F6518()
{
  v2 = *(v0 + 16);
  sub_2407F6B14();
  return sub_2408D4BA0();
}

uint64_t sub_2407F6588()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2407F5314();
}

uint64_t sub_2407F6590()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2407F53B4();
}

unint64_t sub_2407F659C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD8, &qword_2408D7380);
    v3 = sub_2408D51D0();
    v4 = a1 + 32;

    while (1)
    {
      sub_2407EEE04(v4, v13, &unk_27E506FE0, &qword_2408D9630);
      result = sub_2408CCDE4(v13);
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
      result = sub_2407F6498(&v15, (v3[7] + 32 * result));
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

void sub_2407F66D8(void *a1)
{
  v2 = sub_2408D3490();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28130EFB8 != -1)
  {
    swift_once();
  }

  v7 = sub_2408D4B20();
  __swift_project_value_buffer(v7, qword_28130EFC0);
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2407CF000, v8, v9, "Configuring AIDA limitations for this platform (see AIDA logging for details)", v10, 2u);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (*(v3 + 104))(v6, *MEMORY[0x277CED218], v2);
  v12 = sub_2408D4770();
  (*(v3 + 8))(v6, v2);
  v13 = objc_opt_self();
  if (v12)
  {
    sub_240872FB0(&unk_285283178);
    sub_2407F6BCC(&unk_285283198);
    v14 = sub_2408D4ED0();

    [v13 configureProcessSpecificServiceOwnerRejectionlist_];

    type metadata accessor for AIDAServiceType(0);
    sub_2407F6C9C(&qword_28130EF80, type metadata accessor for AIDAServiceType);
    v15 = sub_2408D4ED0();
  }

  else
  {
    sub_240872FB0(&unk_2852831A8);
    swift_arrayDestroy();
    v16 = sub_2408D4ED0();

    [v13 configureProcessSpecificServiceOwnerRejectionlist_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2408D71B0;
    v18 = *MEMORY[0x277CED1B0];
    *(inited + 32) = *MEMORY[0x277CED1B0];
    v19 = v18;
    sub_2408709E4(inited);
    swift_setDeallocating();
    sub_2407F6C40(inited + 32);
    type metadata accessor for AIDAServiceType(0);
    sub_2407F6C9C(&qword_28130EF80, type metadata accessor for AIDAServiceType);
    v15 = sub_2408D4ED0();
  }

  [v13 configureProcessSpecificSupplementalServiceTypes_];
}

void *sub_2407F6AAC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v6);
  *a1 = v6;
  return result;
}

uint64_t sub_2407F6AEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2407F6B14()
{
  result = qword_27E506FB0;
  if (!qword_27E506FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E506FB0);
  }

  return result;
}

unint64_t sub_2407F6B68()
{
  result = qword_28130EF98;
  if (!qword_28130EF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E506DB0, &unk_2408D6D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130EF98);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2407F6C40(uint64_t a1)
{
  type metadata accessor for AIDAServiceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2407F6C9C(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2407F6CF4(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_2408D5090();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_24080D380(v3, *(a1 + 36), 0, a1);
  v6 = v5;
  return v5;
}

void sub_2407F6D64(uint64_t a1, void (*a2)(uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v7 = a4 + 56;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  if (v10)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v15 = *(*(a4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v10)))));
      v14 = v15;
      a2(&v16, &v15);
      if (v4)
      {
        break;
      }

      v10 &= v10 - 1;

      v12 = v13;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v7 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_2407F6EA0()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E506FF0);
  __swift_project_value_buffer(v0, qword_27E506FF0);
  return sub_2408D4910();
}

uint64_t sub_2407F6EEC()
{
  sub_24080A730();
  sub_2407D9440(v0 + 16, &unk_27E507270, &qword_2408D76D0);

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 72));
  v1 = *(v0 + 112);

  v2 = *(v0 + 128);

  v3 = *(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_2407F6F8C(void *a1)
{
  v3 = *v1;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v4 = sub_2408D4B20();
  __swift_project_value_buffer(v4, qword_27E506FF0);
  v5 = a1;
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F10();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v8 = 136315394;
    v11 = sub_2408D53B0();
    v13 = sub_2408CC504(v11, v12, &v17);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2112;
    v14 = a1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v15;
    *v9 = v15;
    _os_log_impl(&dword_2407CF000, v6, v7, "%s handling cancellation with error: %@", v8, 0x16u);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  return sub_24080A730();
}

uint64_t sub_2407F7188(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_2408D3500();
  v3[8] = v4;
  v5 = *(v4 - 8);
  v3[9] = v5;
  v6 = *(v5 + 64) + 15;
  v3[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506EF8, &qword_2408D76B0);
  v3[11] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F72A0, 0, 0);
}

uint64_t sub_2407F72A0()
{
  v26 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_2408D4B20();
  v0[15] = __swift_project_value_buffer(v2, qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v25 = v7;
    *v6 = 136315138;
    v0[4] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v25);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "LocalSetupService called to setup with model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v12 = v0[6];
  v11 = v0[7];
  v13 = sub_2408D34B0();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v0[16] = sub_2408D34C0();
  sub_2408D49C0();
  v16 = sub_2408D48E0();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v0[17] = sub_2408D48C0();
  sub_2408D48D0();
  sub_24080A424();
  v19 = swift_task_alloc();
  v0[18] = v19;
  *(v19 + 16) = v11;
  *(v19 + 24) = v12;
  v20 = *(MEMORY[0x277CEDE70] + 4);
  v21 = swift_task_alloc();
  v0[19] = v21;
  v22 = sub_2408D3A60();
  v0[20] = v22;
  *v21 = v0;
  v21[1] = sub_2407F7554;
  v23 = v0[14];

  return MEMORY[0x2821400E8](v23, &unk_2408D76C0, v19, v22);
}

uint64_t sub_2407F7554()
{
  v1 = *(*v0 + 152);
  v2 = *(*v0 + 144);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2407F766C, 0, 0);
}

uint64_t sub_2407F766C()
{
  v1 = *(v0 + 88);
  sub_2407EEE04(*(v0 + 112), *(v0 + 104), &qword_27E506EF8, &qword_2408D76B0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v3 = *(v0 + 104);
  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    sub_2407D9440(v3, &qword_27E506EF8, &qword_2408D76B0);
  }

  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v6 = *(v0 + 112);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 56);
  sub_24080A730();
  sub_2408D48B0();
  sub_2408D34A0();
  sub_2407EEE04(v6, v7, &qword_27E506EF8, &qword_2408D76B0);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28 = *(v0 + 160);
    v30 = *(v0 + 128);
    v29 = *(v0 + 136);
    v31 = *(v0 + 104);
    v32 = *(v0 + 96);
    v33 = *(v0 + 80);
    v34 = *(v0 + 40);
    sub_2407D9440(*(v0 + 112), &qword_27E506EF8, &qword_2408D76B0);

    (*(*(v28 - 8) + 32))(v34, v32, v28);

    v35 = *(v0 + 8);
LABEL_17:

    return v35();
  }

  v11 = *(v0 + 128);
  v10 = *(v0 + 136);
  v12 = *(v0 + 112);
  v13 = *(v0 + 96);
  v14 = *(v0 + 80);
  v15 = *(v0 + 64);
  v16 = *v13;
  *(v0 + 168) = *v13;
  *(v0 + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  swift_willThrowTypedImpl();

  sub_2407D9440(v12, &qword_27E506EF8, &qword_2408D76B0);
  *(v0 + 24) = v16;
  v17 = v16;
  if (swift_dynamicCast())
  {
    v18 = (*(*(v0 + 72) + 88))(*(v0 + 80), *(v0 + 64));
    v19 = *MEMORY[0x277CED270];
    if (v18 == *MEMORY[0x277CED2D8] || v18 == v19)
    {
      v36 = *(v0 + 120);

      v37 = sub_2408D4B10();
      v38 = sub_2408D4F10();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_2407CF000, v37, v38, "LocalSetupService caught overall setup cancellation", v39, 2u);
        MEMORY[0x245CC9F60](v39, -1, -1);
      }

      v40 = *(v0 + 64);
      v41 = *(v0 + 72);

      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      (*(v41 + 104))(v42, v19, v40);
      swift_willThrow();
      goto LABEL_16;
    }

    if (v18 == *MEMORY[0x277CED268])
    {
      v20 = v18;
      v21 = *(v0 + 120);

      v22 = sub_2408D4B10();
      v23 = sub_2408D4F10();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_2407CF000, v22, v23, "LocalSetupService caught overall setup skipped", v24, 2u);
        MEMORY[0x245CC9F60](v24, -1, -1);
      }

      v25 = *(v0 + 64);
      v26 = *(v0 + 72);

      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      (*(v26 + 104))(v27, v20, v25);
      swift_willThrow();

LABEL_16:
      v44 = *(v0 + 104);
      v43 = *(v0 + 112);
      v45 = *(v0 + 96);
      v46 = *(v0 + 80);

      v35 = *(v0 + 8);
      goto LABEL_17;
    }

    (*(*(v0 + 72) + 8))(*(v0 + 80), *(v0 + 64));
  }

  v48 = *(v0 + 120);

  v49 = v16;
  v50 = sub_2408D4B10();
  v51 = sub_2408D4F30();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    *v52 = 138412290;
    v54 = v16;
    v55 = _swift_stdlib_bridgeErrorToNSError();
    *(v52 + 4) = v55;
    *v53 = v55;
    _os_log_impl(&dword_2407CF000, v50, v51, "LocalSetupService caught overall setup failure: %@", v52, 0xCu);
    sub_2407D9440(v53, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v53, -1, -1);
    MEMORY[0x245CC9F60](v52, -1, -1);
  }

  v56 = swift_task_alloc();
  *(v0 + 176) = v56;
  *(v56 + 16) = v16;
  v57 = *(MEMORY[0x277CED860] + 4);
  v60 = (*MEMORY[0x277CED860] + MEMORY[0x277CED860]);
  v58 = swift_task_alloc();
  *(v0 + 184) = v58;
  *v58 = v0;
  v58[1] = sub_2407F7D1C;
  v59 = *(v0 + 48);

  return v60();
}

uint64_t sub_2407F7D1C()
{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v7 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v4 = sub_2407F7ED4;
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = sub_2407F7E38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2407F7E38()
{
  v1 = v0[21];
  swift_willThrow();
  v2 = v0[21];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[10];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2407F7ED4()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 192);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 96);
  v6 = *(v0 + 80);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2407F7F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407D379C;

  return sub_2407F867C(a1, a3);
}

uint64_t sub_2407F8020(uint64_t a1, void *a2)
{
  v3 = sub_2408D35B0();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507268, &qword_2408D8240);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = v24 - v9;
  v11 = sub_2408D3500();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v16 = sub_2408D4B20();
  __swift_project_value_buffer(v16, qword_27E506FF0);
  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2407CF000, v17, v18, "Engaging with client to present error and wait for continuation", v19, 2u);
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  v24[5] = a2;
  v20 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v21 = swift_dynamicCast();
  v22 = *(v12 + 56);
  if (v21)
  {
    v22(v10, 0, 1, v11);
    (*(v12 + 32))(v15, v10, v11);
    (*(v12 + 16))(v6, v15, v11);
    v22(v6, 0, 6, v11);
    sub_2408D35D0();
    return (*(v12 + 8))(v15, v11);
  }

  else
  {
    v22(v10, 1, 1, v11);
    sub_2407D9440(v10, &qword_27E507268, &qword_2408D8240);
    swift_getErrorValue();
    sub_2408D52A0();
    v22(v6, 0, 6, v11);
    return sub_2408D35D0();
  }
}

uint64_t sub_2407F8388(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = *(*(sub_2408D35B0() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F8418, 0, 0);
}

uint64_t sub_2407F8418()
{
  v2 = v0[3];
  v1 = v0[4];
  sub_2408D35C0();
  v3 = sub_2408D3500();
  LODWORD(v2) = (*(*(v3 - 8) + 48))(v1, 6, v3);
  sub_24080F6B4(v1, MEMORY[0x277CED338]);
  if (v2)
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v4 = sub_2408D4B20();
    __swift_project_value_buffer(v4, qword_27E506FF0);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v7 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCB0];
    if (v7)
    {
      v9 = "Client has decided to proceed from the failure, moving on";
LABEL_10:
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2407CF000, v5, v6, v9, v12, 2u);
      MEMORY[0x245CC9F60](v12, -1, -1);
    }
  }

  else
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v10 = sub_2408D4B20();
    __swift_project_value_buffer(v10, qword_27E506FF0);
    v5 = sub_2408D4B10();
    v6 = sub_2408D4F20();
    v11 = os_log_type_enabled(v5, v6);
    v8 = MEMORY[0x277CEDCA8];
    if (v11)
    {
      v9 = "Client is remaining in failed state";
      goto LABEL_10;
    }
  }

  v13 = v0[4];
  v14 = v0[2];

  v15 = *v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507260, &qword_2408D6860);
  (*(*(v16 - 8) + 104))(v14, v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_2407F867C(uint64_t a1, uint64_t a2)
{
  v3[21] = a2;
  v3[22] = v2;
  v3[20] = a1;
  v4 = sub_2408D3500();
  v3[23] = v4;
  v5 = *(v4 - 8);
  v3[24] = v5;
  v6 = *(v5 + 64) + 15;
  v3[25] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DA0, &unk_2408D76A0) - 8) + 64) + 15;
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v3[28] = v8;
  v9 = *(v8 - 8);
  v3[29] = v9;
  v10 = *(v9 + 64) + 15;
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v11 = type metadata accessor for SignInReport(0);
  v3[32] = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v13 = sub_2408D4660();
  v3[35] = v13;
  v14 = *(v13 - 8);
  v3[36] = v14;
  v15 = *(v14 + 64) + 15;
  v3[37] = swift_task_alloc();
  v16 = sub_2408D3C20();
  v3[38] = v16;
  v17 = *(v16 - 8);
  v3[39] = v17;
  v18 = *(v17 + 64) + 15;
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v19 = sub_2408D3630();
  v3[43] = v19;
  v20 = *(v19 - 8);
  v3[44] = v20;
  v21 = *(v20 + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407F8960, 0, 0);
}

uint64_t sub_2407F8960()
{
  v1 = v0[22];
  v2 = *(v1 + 112);
  *(v1 + 112) = v0[21];

  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v3 = sub_2408D4B20();
  v0[47] = __swift_project_value_buffer(v3, qword_27E506FF0);
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F20();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2407CF000, v4, v5, "Configuring authentication mode to require user interaction for local setup", v6, 2u);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v7 = *(MEMORY[0x277CED870] + 4);
  v11 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v8 = swift_task_alloc();
  v0[48] = v8;
  *v8 = v0;
  v8[1] = sub_2407F8AF4;
  v9 = v0[21];

  return v11(sub_2407FC7A0, 0);
}

uint64_t sub_2407F8AF4()
{
  v2 = *(*v1 + 384);
  v3 = *v1;
  v3[49] = v0;

  if (v0)
  {
    v5 = v3[45];
    v4 = v3[46];
    v7 = v3[41];
    v6 = v3[42];
    v8 = v3[40];
    v9 = v3[37];
    v11 = v3[33];
    v10 = v3[34];
    v15 = v3[31];
    v16 = v3[30];
    v17 = v3[27];
    v18 = v3[26];
    v12 = v3[25];

    v13 = v3[1];

    return v13();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2407F8CE4, 0, 0);
  }
}

uint64_t sub_2407F8CE4()
{
  v0[50] = sub_2407F5674(MEMORY[0x277D84F90]);
  v1 = *(MEMORY[0x277CED858] + 4);
  v6 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v2 = swift_task_alloc();
  v0[51] = v2;
  *v2 = v0;
  v2[1] = sub_2407F8DA0;
  v3 = v0[46];
  v4 = v0[21];

  return v6(v3);
}

uint64_t sub_2407F8DA0()
{
  v1 = *(*v0 + 408);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407F8E9C, 0, 0);
}

uint64_t sub_2407F8E9C()
{
  v1 = v0[46];
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[42];
  v5 = v0[38];
  v6 = v0[39];
  sub_2408D3540();
  v7 = *(v3 + 8);
  v0[52] = v7;
  v0[53] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v2);
  v0[54] = sub_2408D3B20();
  v8 = *(v6 + 8);
  v0[55] = v8;
  v0[56] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v4, v5);
  v9 = *(MEMORY[0x277CED858] + 4);
  v14 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v0[57] = v10;
  *v10 = v0;
  v10[1] = sub_2407F8FC8;
  v11 = v0[45];
  v12 = v0[21];

  return v14(v11);
}

uint64_t sub_2407F8FC8()
{
  v1 = *(*v0 + 456);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407F90C4, 0, 0);
}

uint64_t sub_2407F90C4()
{
  v44 = v0;
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  v5 = v0[52];
  v41 = v0[47];
  v6 = v0[45];
  v7 = v0[43];
  v8 = v0[41];
  v9 = v0[38];
  sub_2408D3540();
  v5(v6, v7);
  v10 = sub_2408D3AE0();
  v2(v8, v9);
  sub_24082A3C4(v10, v3);
  v0[15] = v11;
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F20();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v43 = v15;
    *v14 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

    v16 = sub_2408D4EF0();
    v18 = v17;

    v19 = sub_2408CC504(v16, v18, &v43);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2407CF000, v12, v13, "Configuring remaining services: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v15);
    MEMORY[0x245CC9F60](v15, -1, -1);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  swift_beginAccess();
  v20 = v0[15];
  if (*(v20 + 16))
  {
    v21 = *MEMORY[0x277CED1A0];
    v23 = v0[49];
    v22 = v0[50];
    v0[63] = 0;
    v0[64] = v22;
    v0[61] = v20;
    v0[62] = v22;
    v0[59] = v23;
    v0[60] = v20 + 16;
    v0[58] = v21;
    v24 = v0[47];
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F20();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v43 = v28;
      *v27 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

      v29 = sub_2408D4EF0();
      v31 = v30;

      v32 = sub_2408CC504(v29, v31, &v43);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_2407CF000, v25, v26, "Current remaining services: %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v28);
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v33 = *(MEMORY[0x277CED858] + 4);
    v42 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v34 = swift_task_alloc();
    v0[65] = v34;
    *v34 = v0;
    v35 = sub_2407F950C;
  }

  else
  {
    v36 = v0[50];
    v0[86] = 0;
    v0[88] = 0;
    v0[87] = 0;
    v0[85] = v36;
    v0[84] = v20;
    v37 = *(MEMORY[0x277CED858] + 4);
    v42 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v34 = swift_task_alloc();
    v0[89] = v34;
    *v34 = v0;
    v35 = sub_2407FB4B8;
  }

  v34[1] = v35;
  v38 = v0[46];
  v39 = v0[21];

  return v42(v38);
}

uint64_t sub_2407F950C()
{
  v1 = *(*v0 + 520);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407F9608, 0, 0);
}

uint64_t sub_2407F9608()
{
  v82 = v0;
  v2 = *(v0 + 416);
  v1 = *(v0 + 424);
  v3 = *(v0 + 368);
  v4 = *(v0 + 344);
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  v7 = *(v0 + 280);
  sub_2408D3520();
  v2(v3, v4);
  LOBYTE(v3) = sub_2408D45E0();
  v8 = *(v6 + 8);
  *(v0 + 528) = v8;
  *(v0 + 536) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v5, v7);
  if ((v3 & 1) == 0)
  {
    goto LABEL_5;
  }

  v9 = *(v0 + 480);
  v10 = *v9;
  if (!*v9)
  {
    v12 = MEMORY[0x277D84F90];
LABEL_10:
    v24 = *(v0 + 472);
    *(v0 + 152) = v12;

    sub_24080C318((v0 + 152));
    if (v24)
    {

      v25 = *(v0 + 152);
    }

    else
    {
      v47 = *(v0 + 376);

      v48 = *(v0 + 152);
      *(v0 + 544) = v48;

      v49 = sub_2408D4B10();
      v50 = sub_2408D4F20();

      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v81 = v52;
        *v51 = 136315138;
        type metadata accessor for AIDAServiceType(0);
        v54 = MEMORY[0x245CC9210](v48, v53);
        v56 = sub_2408CC504(v54, v55, &v81);

        *(v51 + 4) = v56;
        _os_log_impl(&dword_2407CF000, v49, v50, "Configuring current services: %s", v51, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v52);
        MEMORY[0x245CC9F60](v52, -1, -1);
        MEMORY[0x245CC9F60](v51, -1, -1);
      }

      v57 = swift_task_alloc();
      *(v0 + 552) = v57;
      *(v57 + 16) = v48;
      v58 = *(MEMORY[0x277CED870] + 4);
      v79 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
      v59 = swift_task_alloc();
      *(v0 + 560) = v59;
      *v59 = v0;
      v59[1] = sub_2407F9D64;
      v60 = *(v0 + 168);

      return v79(sub_24080F5F8, v57);
    }
  }

  v11 = *(v0 + 488);
  v12 = sub_240878450(*v9, 0);
  v13 = sub_2408788D0((v0 + 16), v12 + 4, v10, v11);
  v14 = *(v0 + 16);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);
  v17 = *(v0 + 40);
  v18 = *(v0 + 48);

  sub_2407D17F4();
  if (v13 == v10)
  {
    goto LABEL_10;
  }

  __break(1u);
LABEL_5:
  v19 = *(*(v0 + 176) + 112);
  *(v0 + 576) = v19;
  if (v19)
  {

    v20 = swift_task_alloc();
    *(v0 + 584) = v20;
    *v20 = v0;
    v20[1] = sub_2407FA358;
    v21 = *(v0 + 272);
    v22 = *(v0 + 176);

    return sub_2407FC9C8(v21, v19);
  }

  sub_24080D664();
  v26 = swift_allocError();
  *v27 = xmmword_2408D7390;
  swift_willThrow();
  v28 = *(v0 + 504);
  *(v0 + 728) = *(v0 + 496);
  *(v0 + 720) = v28;
  v29 = *(v0 + 200);
  v30 = *(v0 + 184);
  *(v0 + 128) = v26;
  v31 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v32 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v32;
    if (v32 == *MEMORY[0x277CED268])
    {
      v33 = v32;
      v34 = *(v0 + 376);

      v35 = sub_2408D4B10();
      v36 = sub_2408D4F20();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v0 + 184);
        v38 = *(v0 + 192);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        (*(v38 + 104))(v41, v33, v37);
        v42 = _swift_stdlib_bridgeErrorToNSError();
        *(v39 + 4) = v42;
        *v40 = v42;
        _os_log_impl(&dword_2407CF000, v35, v36, "Local setup cancellation with setup error :%@", v39, 0xCu);
        sub_2407D9440(v40, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v40, -1, -1);
        MEMORY[0x245CC9F60](v39, -1, -1);
      }

      v43 = *(MEMORY[0x277CED858] + 4);
      v78 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v44 = swift_task_alloc();
      *(v0 + 736) = v44;
      *v44 = v0;
      v44[1] = sub_2407FBA6C;
      v45 = *(v0 + 368);
      v46 = *(v0 + 168);

      return v78(v45);
    }

    v62 = *(v0 + 192);
    v61 = *(v0 + 200);
    v63 = *(v0 + 184);

    (*(v62 + 8))(v61, v63);
  }

  else
  {
  }

  swift_willThrow();

  v64 = *(v0 + 120);

  v66 = *(v0 + 360);
  v65 = *(v0 + 368);
  v68 = *(v0 + 328);
  v67 = *(v0 + 336);
  v69 = *(v0 + 320);
  v70 = *(v0 + 296);
  v72 = *(v0 + 264);
  v71 = *(v0 + 272);
  v73 = *(v0 + 248);
  v75 = *(v0 + 240);
  v76 = *(v0 + 216);
  v77 = *(v0 + 208);
  v80 = *(v0 + 200);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_2407F9D64()
{
  v2 = *v1;
  v3 = *(*v1 + 560);
  v4 = *v1;
  v2[71] = v0;

  v5 = v2[69];
  v6 = v2[68];
  if (v0)
  {
    v7 = v2[62];

    v8 = sub_2407FB94C;
  }

  else
  {

    v8 = sub_2407F9ED8;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2407F9ED8()
{
  v1 = *(*(v0 + 176) + 112);
  *(v0 + 576) = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    *(v0 + 584) = v2;
    *v2 = v0;
    v2[1] = sub_2407FA358;
    v3 = *(v0 + 272);
    v4 = *(v0 + 176);

    return sub_2407FC9C8(v3, v1);
  }

  sub_24080D664();
  v6 = swift_allocError();
  *v7 = xmmword_2408D7390;
  swift_willThrow();
  v8 = *(v0 + 504);
  *(v0 + 728) = *(v0 + 496);
  *(v0 + 720) = v8;
  v9 = *(v0 + 200);
  v10 = *(v0 + 184);
  *(v0 + 128) = v6;
  v11 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v12 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v12;
    if (v12 == *MEMORY[0x277CED268])
    {
      v13 = v12;
      v14 = *(v0 + 376);

      v15 = sub_2408D4B10();
      v16 = sub_2408D4F20();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = *(v0 + 184);
        v18 = *(v0 + 192);
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        (*(v18 + 104))(v21, v13, v17);
        v22 = _swift_stdlib_bridgeErrorToNSError();
        *(v19 + 4) = v22;
        *v20 = v22;
        _os_log_impl(&dword_2407CF000, v15, v16, "Local setup cancellation with setup error :%@", v19, 0xCu);
        sub_2407D9440(v20, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v20, -1, -1);
        MEMORY[0x245CC9F60](v19, -1, -1);
      }

      v23 = *(MEMORY[0x277CED858] + 4);
      v44 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v24 = swift_task_alloc();
      *(v0 + 736) = v24;
      *v24 = v0;
      v24[1] = sub_2407FBA6C;
      v25 = *(v0 + 368);
      v26 = *(v0 + 168);

      return v44(v25);
    }

    v28 = *(v0 + 192);
    v27 = *(v0 + 200);
    v29 = *(v0 + 184);

    (*(v28 + 8))(v27, v29);
  }

  else
  {
  }

  swift_willThrow();

  v30 = *(v0 + 120);

  v32 = *(v0 + 360);
  v31 = *(v0 + 368);
  v34 = *(v0 + 328);
  v33 = *(v0 + 336);
  v35 = *(v0 + 320);
  v36 = *(v0 + 296);
  v38 = *(v0 + 264);
  v37 = *(v0 + 272);
  v39 = *(v0 + 248);
  v41 = *(v0 + 240);
  v42 = *(v0 + 216);
  v43 = *(v0 + 208);
  v45 = *(v0 + 200);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_2407FA358(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 584);
  v8 = *v2;
  v3[74] = a1;
  v3[75] = v1;

  if (v1)
  {
    v5 = sub_2407FC004;
  }

  else
  {
    v6 = v3[72];

    v5 = sub_2407FA478;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2407FA478()
{
  v72 = v0;
  v1 = v0[75];
  v66 = v0[74];
  v2 = sub_24086ED9C(*(v0[34] + *(v0[32] + 20)));
  v0[76] = v1;
  sub_240845108(v2);
  v4 = 0;
  v5 = v3 + 56;
  v68 = v3;
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 56);
  v9 = (63 - v7) >> 6;
  v10 = v0[63];
  v11 = v0[64];
  v12 = v0[62];
LABEL_4:
  v0[77] = v10;
  while (1)
  {
    v0[79] = v12;
    v0[78] = v11;
    if (!v8)
    {
      while (1)
      {
        v13 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v13 >= v9)
        {
          break;
        }

        v8 = *(v5 + 8 * v13);
        ++v4;
        if (v8)
        {
          v4 = v13;
          goto LABEL_10;
        }
      }

      v40 = v0[47];
      v42 = v0[33];
      v41 = v0[34];

      sub_24080F58C(v41, v42);
      v43 = sub_2408D4B10();
      v44 = sub_2408D4F20();
      if (os_log_type_enabled(v43, v44))
      {
        v67 = v0[61];
        v45 = v0[32];
        v46 = v0[33];
        v47 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v71[0] = v69;
        *v47 = 136315394;
        v48 = *(v46 + *(v45 + 20));

        sub_240845108(v49);
        type metadata accessor for AIDAServiceType(0);
        sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
        v50 = sub_2408D4EF0();
        v52 = v51;

        sub_24080F6B4(v46, type metadata accessor for SignInReport);
        v53 = sub_2408CC504(v50, v52, v71);

        *(v47 + 4) = v53;
        *(v47 + 12) = 2080;

        v54 = sub_2408D4EF0();
        v56 = v55;

        v57 = sub_2408CC504(v54, v56, v71);

        *(v47 + 14) = v57;
        _os_log_impl(&dword_2407CF000, v43, v44, "Subtracting all attempted services: %s from those remaining: %s", v47, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245CC9F60](v69, -1, -1);
        MEMORY[0x245CC9F60](v47, -1, -1);
      }

      else
      {
        v58 = v0[33];

        sub_24080F6B4(v58, type metadata accessor for SignInReport);
      }

      sub_240845108(v59);
      v61 = v60;
      swift_beginAccess();
      sub_24086C57C(v61);
      swift_endAccess();

      v62 = *(MEMORY[0x277CED858] + 4);
      v70 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v63 = swift_task_alloc();
      v0[80] = v63;
      *v63 = v0;
      v63[1] = sub_2407FAA60;
      v64 = v0[46];
      v65 = v0[21];

      v70(v64);
      return;
    }

LABEL_10:
    v14 = *(*(v68 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v8)))));
    (*(v0[29] + 16))(v0[31], v0[34], v0[28]);
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v0[18] = v11;
    v17 = sub_2408CCC7C(v15);
    v19 = v11[2];
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      break;
    }

    v23 = v18;
    if (v11[3] >= v22)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v38 = v17;
        sub_2408C5870();
        v17 = v38;
      }
    }

    else
    {
      sub_2408C81A4(v22, isUniquelyReferenced_nonNull_native);
      v24 = v0[18];
      v17 = sub_2408CCC7C(v15);
      if ((v23 & 1) != (v25 & 1))
      {
        type metadata accessor for AIDAServiceType(0);

        sub_2408D5280();
        return;
      }
    }

    v11 = v0[18];
    v26 = v0[31];
    v27 = v0[28];
    v28 = v0[29];
    if (v23)
    {
      (*(v28 + 40))(v11[7] + *(v28 + 72) * v17, v26, v27);
    }

    else
    {
      v11[(v17 >> 6) + 8] |= 1 << v17;
      *(v11[6] + 8 * v17) = v15;
      (*(v28 + 32))(v11[7] + *(v28 + 72) * v17, v26, v27);
      v29 = v11[2];
      v21 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v21)
      {
        goto LABEL_39;
      }

      v11[2] = v30;
    }

    v8 &= v8 - 1;
    v31 = v0[58];
    v32 = sub_2408D4D30();
    v34 = v33;
    if (v32 == sub_2408D4D30() && v34 == v35)
    {

LABEL_27:
      v39 = v0[74];

      v10 = v66;
      v12 = v11;
      goto LABEL_4;
    }

    v37 = sub_2408D5240();

    v12 = v11;
    if (v37)
    {
      goto LABEL_27;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_2407FAA60()
{
  v1 = *(*v0 + 640);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FAB5C, 0, 0);
}

uint64_t sub_2407FAB5C()
{
  v52 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v4 = v0[52];
  v3 = v0[53];
  v5 = v0[46];
  v6 = v0[43];
  v7 = v0[37];
  v8 = v0[35];
  sub_2408D3520();
  v4(v5, v6);
  LOBYTE(v5) = sub_2408D45E0();
  v2(v7, v8);
  if ((v5 & 1) != 0 && *(v0[15] + 16) == 1)
  {
    v9 = swift_task_alloc();
    v0[81] = v9;
    *(v9 + 16) = v0 + 15;
    v10 = *(MEMORY[0x277CED870] + 4);
    v49 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v11 = swift_task_alloc();
    v0[82] = v11;
    *v11 = v0;
    v11[1] = sub_2407FB000;
    v12 = v0[21];

    return v49(sub_24080F5F0, v9);
  }

  v14 = v0[74];
  sub_24080F6B4(v0[34], type metadata accessor for SignInReport);

  v15 = v0[15];
  if (*(v15 + 16))
  {
    v16 = v0[76];
    v17 = v0[79];
    v18 = v0[78];
    v0[63] = v0[77];
    v0[64] = v18;
    v0[61] = v15;
    v0[62] = v17;
    v0[59] = v16;
    v0[60] = v15 + 16;
    v19 = v0[47];
    v20 = sub_2408D4B10();
    v21 = sub_2408D4F20();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      type metadata accessor for AIDAServiceType(0);
      sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

      v24 = sub_2408D4EF0();
      v26 = v25;

      v27 = sub_2408CC504(v24, v26, &v51);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_2407CF000, v20, v21, "Current remaining services: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v23);
      MEMORY[0x245CC9F60](v23, -1, -1);
      MEMORY[0x245CC9F60](v22, -1, -1);
    }

    v28 = *(MEMORY[0x277CED858] + 4);
    v50 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v29 = swift_task_alloc();
    v0[65] = v29;
    *v29 = v0;
    v30 = sub_2407F950C;
    goto LABEL_19;
  }

  v31 = v0[77];
  v32 = v0[79];
  if (v31)
  {
    v33 = *(v31 + 16);
    if (v33)
    {
      v34 = *MEMORY[0x277CEFF78];
      v35 = sub_2408D4D30();
      v37 = v36;
      if (*(v33 + 16))
      {
        v38 = v35;

        v39 = sub_2408CCB30(v38, v37);
        v41 = v40;

        if (v41)
        {
          v42 = *(*(v33 + 56) + 8 * v39);
          swift_unknownObjectRetain();

          v0[17] = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
          v43 = swift_dynamicCast();
          v44 = v0[13];
          v45 = v0[14];
          if (!v43)
          {
            v44 = 0;
            v45 = 0;
          }

          goto LABEL_18;
        }
      }
    }
  }

  v44 = 0;
  v45 = 0;
LABEL_18:
  v0[88] = v45;
  v0[87] = v44;
  v0[86] = v31;
  v0[85] = v32;
  v0[84] = v15;
  v46 = *(MEMORY[0x277CED858] + 4);
  v50 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v29 = swift_task_alloc();
  v0[89] = v29;
  *v29 = v0;
  v30 = sub_2407FB4B8;
LABEL_19:
  v29[1] = v30;
  v47 = v0[46];
  v48 = v0[21];

  return v50(v47);
}

uint64_t sub_2407FB000()
{
  v2 = *v1;
  v3 = *(*v1 + 656);
  v4 = *v1;
  *(*v1 + 664) = v0;

  v5 = *(v2 + 648);

  if (v0)
  {
    v6 = sub_2407FC3C0;
  }

  else
  {
    v6 = sub_2407FB134;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2407FB134()
{
  v40 = v0;
  v1 = v0[74];
  v2 = v0[34];

  sub_24080F6B4(v2, type metadata accessor for SignInReport);
  v3 = v0[15];
  if (!*(v3 + 16))
  {
    v19 = v0[77];
    v20 = v0[79];
    if (v19)
    {
      v21 = *(v19 + 16);
      if (v21)
      {
        v22 = *MEMORY[0x277CEFF78];
        v23 = sub_2408D4D30();
        v25 = v24;
        if (*(v21 + 16))
        {
          v26 = v23;

          v27 = sub_2408CCB30(v26, v25);
          v29 = v28;

          if (v29)
          {
            v30 = *(*(v21 + 56) + 8 * v27);
            swift_unknownObjectRetain();

            v0[17] = v30;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
            v31 = swift_dynamicCast();
            v32 = v0[13];
            v33 = v0[14];
            if (!v31)
            {
              v32 = 0;
              v33 = 0;
            }

            goto LABEL_13;
          }
        }
      }
    }

    v32 = 0;
    v33 = 0;
LABEL_13:
    v0[88] = v33;
    v0[87] = v32;
    v0[86] = v19;
    v0[85] = v20;
    v0[84] = v3;
    v34 = *(MEMORY[0x277CED858] + 4);
    v38 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v17 = swift_task_alloc();
    v0[89] = v17;
    *v17 = v0;
    v18 = sub_2407FB4B8;
    goto LABEL_14;
  }

  v4 = v0[83];
  v5 = v0[79];
  v6 = v0[78];
  v0[63] = v0[77];
  v0[64] = v6;
  v0[61] = v3;
  v0[62] = v5;
  v0[59] = v4;
  v0[60] = v3 + 16;
  v7 = v0[47];
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v39 = v11;
    *v10 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);

    v12 = sub_2408D4EF0();
    v14 = v13;

    v15 = sub_2408CC504(v12, v14, &v39);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2407CF000, v8, v9, "Current remaining services: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x245CC9F60](v11, -1, -1);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  v16 = *(MEMORY[0x277CED858] + 4);
  v38 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v17 = swift_task_alloc();
  v0[65] = v17;
  *v17 = v0;
  v18 = sub_2407F950C;
LABEL_14:
  v17[1] = v18;
  v35 = v0[46];
  v36 = v0[21];

  return v38(v35);
}

uint64_t sub_2407FB4B8()
{
  v1 = *(*v0 + 712);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FB5B4, 0, 0);
}

uint64_t sub_2407FB5B4()
{
  v1 = v0[85];
  v2 = v0[52];
  v3 = v0[53];
  v4 = v0[46];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[29];
  v8 = v0[27];
  sub_2408D3540();
  v2(v4, v5);
  sub_2408D3B40();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507250, &qword_2408D82A0);
  result = sub_2408D51B0();
  v10 = 0;
  v11 = v1 + 64;
  v52 = v7;
  v54 = v1;
  v12 = 1 << *(v1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v1 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = result + 64;
  v56 = result;
  if (v14)
  {
    while (1)
    {
      v16 = __clz(__rbit64(v14));
      v58 = (v14 - 1) & v14;
LABEL_10:
      v19 = v16 | (v10 << 6);
      v20 = v57[30];
      v21 = v57[28];
      v22 = *(*(v54 + 48) + 8 * v19);
      (*(v52 + 16))(v20, *(v54 + 56) + *(v52 + 72) * v19, v21);
      v23 = v22;
      v24 = sub_2408D38B0();
      v26 = v25;
      (*(v52 + 8))(v20, v21);
      *(v48 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = v56;
      *(v56[6] + 8 * v19) = v23;
      v27 = (v56[7] + 16 * v19);
      *v27 = v24;
      v27[1] = v26;
      v28 = v56[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        break;
      }

      v56[2] = v30;
      v14 = v58;
      if (!v58)
      {
        goto LABEL_5;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_5:
    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_17;
      }

      if (v10 >= v15)
      {
        break;
      }

      v18 = *(v11 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v58 = (v18 - 1) & v18;
        goto LABEL_10;
      }
    }

    v31 = v57[88];
    v32 = v57[87];
    v33 = v57[85];
    v42 = v57[56];
    v43 = v57[84];
    v41 = v57[55];
    v44 = v57[46];
    v45 = v57[45];
    v46 = v57[42];
    v47 = v57[41];
    v34 = v57[40];
    v39 = v57[86];
    v40 = v57[38];
    v49 = v57[37];
    v50 = v57[34];
    v51 = v57[33];
    v53 = v57[31];
    v55 = v57[30];
    v35 = v57[26];
    v36 = v57[27];
    v59 = v57[25];
    v37 = v57[20];

    sub_2407EEE04(v36, v35, &qword_27E506DA0, &unk_2408D76A0);
    sub_2408D3A50();

    sub_2407D9440(v36, &qword_27E506DA0, &unk_2408D76A0);
    v41(v34, v40);

    v38 = v57[1];

    return v38();
  }

  return result;
}

uint64_t sub_2407FB94C()
{
  v1 = v0[63];
  v2 = v0[61];

  v4 = v0[45];
  v3 = v0[46];
  v6 = v0[41];
  v5 = v0[42];
  v7 = v0[40];
  v8 = v0[37];
  v10 = v0[33];
  v9 = v0[34];
  v11 = v0[30];
  v12 = v0[31];
  v15 = v0[27];
  v16 = v0[26];
  v17 = v0[25];
  v18 = v0[71];

  v13 = v0[1];

  return v13();
}

uint64_t sub_2407FBA6C()
{
  v1 = *(*v0 + 736);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FBB68, 0, 0);
}

uint64_t sub_2407FBB68()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 296);
  v8 = *(v0 + 280);
  sub_2408D3520();
  v4(v5, v6);
  LOBYTE(v5) = sub_2408D45E0();
  v2(v7, v8);
  if ((v5 & 1) == 0 || (v9 = *(v0 + 120), *(v9 + 16) != 1) || (v10 = *(v0 + 120), v11 = , v12 = sub_2407F6CF4(v11), , !v12))
  {
LABEL_10:
    v22 = *(v0 + 744);
    v23 = *(v0 + 728);
    v24 = *(v0 + 720);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);

    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    (*(v25 + 104))(v27, v22, v26);
    swift_willThrow();

    v28 = *(v0 + 120);

    v30 = *(v0 + 360);
    v29 = *(v0 + 368);
    v32 = *(v0 + 328);
    v31 = *(v0 + 336);
    v33 = *(v0 + 320);
    v34 = *(v0 + 296);
    v36 = *(v0 + 264);
    v35 = *(v0 + 272);
    v37 = *(v0 + 240);
    v38 = *(v0 + 248);
    v64 = *(v0 + 216);
    v65 = *(v0 + 208);
    v66 = *(v0 + 200);

    v39 = *(v0 + 8);

    return v39();
  }

  v13 = *MEMORY[0x277CED1C0];
  v14 = sub_2408D4D30();
  v16 = v15;
  v17 = sub_2408D4D30();
  v19 = *(v0 + 720);
  if (v14 == v17 && v16 == v18)
  {

    if (!v19)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v21 = sub_2408D5240();

    if ((v21 & 1) == 0 || !v19)
    {
      goto LABEL_10;
    }
  }

  v41 = *(v0 + 376);
  v42 = sub_2408D4B10();
  v43 = sub_2408D4F20();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_2407CF000, v42, v43, "User decided to cancel on store account sign in, breaking out", v44, 2u);
    MEMORY[0x245CC9F60](v44, -1, -1);
  }

  v45 = *(v0 + 728);
  v46 = *(v0 + 720);
  v47 = *(v46 + 16);
  if (v47)
  {
    v48 = *MEMORY[0x277CEFF78];
    v49 = sub_2408D4D30();
    v51 = v50;
    if (*(v47 + 16))
    {
      v52 = v49;

      v53 = sub_2408CCB30(v52, v51);
      v55 = v54;

      if (v55)
      {
        v56 = *(*(v47 + 56) + 8 * v53);
        swift_unknownObjectRetain();

        *(v0 + 136) = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
        v57 = swift_dynamicCast();
        v58 = *(v0 + 104);
        v59 = *(v0 + 112);
        if (!v57)
        {
          v58 = 0;
          v59 = 0;
        }

        goto LABEL_23;
      }
    }
  }

  v58 = 0;
  v59 = 0;
LABEL_23:
  *(v0 + 704) = v59;
  *(v0 + 696) = v58;
  *(v0 + 688) = v46;
  *(v0 + 680) = v45;
  *(v0 + 672) = v9;
  v60 = *(MEMORY[0x277CED858] + 4);
  v67 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v61 = swift_task_alloc();
  *(v0 + 712) = v61;
  *v61 = v0;
  v61[1] = sub_2407FB4B8;
  v62 = *(v0 + 368);
  v63 = *(v0 + 168);

  return v67(v62);
}

uint64_t sub_2407FC004()
{
  v1 = *(v0 + 576);

  v2 = *(v0 + 600);
  *(v0 + 128) = v2;
  v3 = *(v0 + 504);
  *(v0 + 728) = *(v0 + 496);
  *(v0 + 720) = v3;
  v4 = *(v0 + 200);
  v5 = *(v0 + 184);
  v6 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v7 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v7;
    if (v7 == *MEMORY[0x277CED268])
    {
      v8 = v7;
      v9 = *(v0 + 376);

      v10 = sub_2408D4B10();
      v11 = sub_2408D4F20();
      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 184);
        v13 = *(v0 + 192);
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        *v14 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        (*(v13 + 104))(v16, v8, v12);
        v17 = _swift_stdlib_bridgeErrorToNSError();
        *(v14 + 4) = v17;
        *v15 = v17;
        _os_log_impl(&dword_2407CF000, v10, v11, "Local setup cancellation with setup error :%@", v14, 0xCu);
        sub_2407D9440(v15, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v15, -1, -1);
        MEMORY[0x245CC9F60](v14, -1, -1);
      }

      v18 = *(MEMORY[0x277CED858] + 4);
      v40 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v19 = swift_task_alloc();
      *(v0 + 736) = v19;
      *v19 = v0;
      v19[1] = sub_2407FBA6C;
      v20 = *(v0 + 368);
      v21 = *(v0 + 168);

      return v40(v20);
    }

    v24 = *(v0 + 192);
    v23 = *(v0 + 200);
    v25 = *(v0 + 184);

    (*(v24 + 8))(v23, v25);
  }

  else
  {
  }

  swift_willThrow();

  v26 = *(v0 + 120);

  v28 = *(v0 + 360);
  v27 = *(v0 + 368);
  v30 = *(v0 + 328);
  v29 = *(v0 + 336);
  v31 = *(v0 + 320);
  v32 = *(v0 + 296);
  v34 = *(v0 + 264);
  v33 = *(v0 + 272);
  v35 = *(v0 + 248);
  v37 = *(v0 + 240);
  v38 = *(v0 + 216);
  v39 = *(v0 + 208);
  v41 = *(v0 + 200);

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_2407FC3C0()
{
  v1 = *(v0 + 592);
  v2 = *(v0 + 272);

  sub_24080F6B4(v2, type metadata accessor for SignInReport);
  v3 = *(v0 + 664);
  *(v0 + 128) = v3;
  v4 = *(v0 + 616);
  *(v0 + 728) = *(v0 + 632);
  *(v0 + 720) = v4;
  v5 = *(v0 + 200);
  v6 = *(v0 + 184);
  v7 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  if (swift_dynamicCast())
  {
    v8 = (*(*(v0 + 192) + 88))(*(v0 + 200), *(v0 + 184));
    *(v0 + 744) = v8;
    if (v8 == *MEMORY[0x277CED268])
    {
      v9 = v8;
      v10 = *(v0 + 376);

      v11 = sub_2408D4B10();
      v12 = sub_2408D4F20();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = *(v0 + 184);
        v14 = *(v0 + 192);
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412290;
        sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
        swift_allocError();
        (*(v14 + 104))(v17, v9, v13);
        v18 = _swift_stdlib_bridgeErrorToNSError();
        *(v15 + 4) = v18;
        *v16 = v18;
        _os_log_impl(&dword_2407CF000, v11, v12, "Local setup cancellation with setup error :%@", v15, 0xCu);
        sub_2407D9440(v16, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v16, -1, -1);
        MEMORY[0x245CC9F60](v15, -1, -1);
      }

      v19 = *(MEMORY[0x277CED858] + 4);
      v41 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
      v20 = swift_task_alloc();
      *(v0 + 736) = v20;
      *v20 = v0;
      v20[1] = sub_2407FBA6C;
      v21 = *(v0 + 368);
      v22 = *(v0 + 168);

      return v41(v21);
    }

    v25 = *(v0 + 192);
    v24 = *(v0 + 200);
    v26 = *(v0 + 184);

    (*(v25 + 8))(v24, v26);
  }

  else
  {
  }

  swift_willThrow();

  v27 = *(v0 + 120);

  v29 = *(v0 + 360);
  v28 = *(v0 + 368);
  v31 = *(v0 + 328);
  v30 = *(v0 + 336);
  v32 = *(v0 + 320);
  v33 = *(v0 + 296);
  v35 = *(v0 + 264);
  v34 = *(v0 + 272);
  v36 = *(v0 + 248);
  v38 = *(v0 + 240);
  v39 = *(v0 + 216);
  v40 = *(v0 + 208);
  v42 = *(v0 + 200);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_2407FC7A0()
{
  v0 = sub_2408D4570();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x277CEDC48]);
  v4 = sub_2408D3510();
  sub_2408D45C0();
  return v4(v6, 0);
}

uint64_t sub_2407FC898()
{

  v0 = sub_2408D3510();
  sub_2408D45A0();
  return v0(&v2, 0);
}

uint64_t sub_2407FC904(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  v3 = *a2;

  v4 = sub_2408D3530();
  sub_2408D3B30();
  v4(v7, 0);
  v5 = sub_2408D3530();
  sub_2408D3AF0();
  return v5(v7, 0);
}

uint64_t sub_2407FC9C8(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507228, &qword_2408D8160) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = *(*(type metadata accessor for SignInReport(0) - 8) + 64) + 15;
  v3[10] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = sub_2408D38D0();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = sub_2408D3630();
  v3[16] = v11;
  v12 = *(v11 - 8);
  v3[17] = v12;
  v13 = *(v12 + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v14 = sub_2408D3C20();
  v3[20] = v14;
  v15 = *(v14 - 8);
  v3[21] = v15;
  v16 = *(v15 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v17 = sub_2408D4760();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v20 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680) - 8) + 64) + 15;
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407FCCD0, 0, 0);
}

uint64_t sub_2407FCCD0()
{
  v1 = v0[28];
  v2 = sub_2408D4660();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(MEMORY[0x277CEDCB8] + 4);
  v4 = swift_task_alloc();
  v0[29] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  v0[30] = v5;
  v6 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0);
  v0[31] = v6;
  *v4 = v0;
  v4[1] = sub_2407FCE50;
  v7 = v0[28];
  v8 = v0[7];

  return MEMORY[0x28213FC20](v7, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v5, v2, v6);
}

uint64_t sub_2407FCE50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    sub_2407D9440(v4[28], &qword_27E507230, &unk_2408D7680);
    v7 = sub_2407FD928;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = v4[30];
    v11 = v4[7];
    v4[33] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0);
    v12 = sub_2408D4E00();
    v9 = v13;
    v4[34] = v12;
    v4[35] = v13;
    v7 = sub_2407FCFEC;
    v8 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2407FCFEC()
{
  v1 = v0[33];
  v2 = v0[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820);
  v0[36] = sub_2408D4680();

  sub_2407D9440(v2, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_2407FD0DC, 0, 0);
}

uint64_t sub_2407FD0DC()
{
  v1 = v0[27];
  sub_2408D4750();
  v2 = *(MEMORY[0x277CED858] + 4);
  v7 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v3 = swift_task_alloc();
  v0[37] = v3;
  *v3 = v0;
  v3[1] = sub_2407FD190;
  v4 = v0[19];
  v5 = v0[7];

  return v7(v4);
}

uint64_t sub_2407FD190()
{
  v1 = *(*v0 + 296);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FD28C, 0, 0);
}

uint64_t sub_2407FD28C()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[20];
  v5 = v0[21];
  v6 = v0[19];
  v7 = v0[16];
  v8 = v0[17];
  v9 = v0[8];
  sub_2408D3540();
  v10 = *(v8 + 8);
  v0[38] = v10;
  v0[39] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v6, v7);
  sub_2408D4730();
  v11 = *(v5 + 8);
  v0[40] = v11;
  v0[41] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v4);
  v12 = swift_task_alloc();
  v0[42] = v12;
  *(v12 + 16) = v9;
  *(v12 + 24) = v1;
  v13 = *(MEMORY[0x277CEDE70] + 4);
  v14 = swift_task_alloc();
  v0[43] = v14;
  v15 = type metadata accessor for AuthenticationReport(0);
  v0[44] = v15;
  *v14 = v0;
  v14[1] = sub_2407FD40C;

  return MEMORY[0x2821400E8](v0 + 2, &unk_2408D7690, v12, v15);
}

uint64_t sub_2407FD40C()
{
  v1 = *(*v0 + 344);
  v2 = *(*v0 + 336);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_2407FD524, 0, 0);
}

uint64_t sub_2407FD524()
{
  v43 = v0;
  v1 = *(v0 + 16);
  *(v0 + 360) = v1;
  if (*(v0 + 24))
  {
    v2 = *(v0 + 288);
    v4 = *(v0 + 208);
    v3 = *(v0 + 216);
    v5 = *(v0 + 200);
    *(v0 + 32) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();

    (*(v4 + 8))(v3, v5);
LABEL_9:
    v24 = *(v0 + 216);
    v23 = *(v0 + 224);
    v26 = *(v0 + 184);
    v25 = *(v0 + 192);
    v27 = *(v0 + 176);
    v29 = *(v0 + 144);
    v28 = *(v0 + 152);
    v30 = *(v0 + 120);
    v31 = *(v0 + 88);
    v32 = *(v0 + 96);
    v39 = *(v0 + 80);
    v40 = *(v0 + 72);

    v33 = *(v0 + 8);

    return v33();
  }

  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 96);
  sub_2408CBA10(v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_2407D9440(*(v0 + 96), &qword_27E507F00, &qword_2408D6D50);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v9 = sub_2408D4B20();
    __swift_project_value_buffer(v9, qword_27E506FF0);

    v10 = sub_2408D4B10();
    v11 = sub_2408D4F30();
    sub_24080F564(v1, 0);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 352);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v42 = v14;
      *v13 = 136315138;
      *(v0 + 40) = v1;

      v15 = sub_2408D4D40();
      v17 = sub_2408CC504(v15, v16, &v42);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2407CF000, v10, v11, "Failed to retrieve ID from authentication report: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      MEMORY[0x245CC9F60](v14, -1, -1);
      MEMORY[0x245CC9F60](v13, -1, -1);
    }

    v18 = *(v0 + 288);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    v21 = *(v0 + 200);
    sub_24080D664();
    swift_allocError();
    *v22 = xmmword_2408D73A0;
    swift_willThrow();

    sub_24080F564(v1, 0);
    (*(v19 + 8))(v20, v21);
    goto LABEL_9;
  }

  (*(*(v0 + 112) + 32))(*(v0 + 120), *(v0 + 96), *(v0 + 104));
  v35 = *(MEMORY[0x277CED858] + 4);
  v41 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v36 = swift_task_alloc();
  *(v0 + 368) = v36;
  *v36 = v0;
  v36[1] = sub_2407FDA28;
  v37 = *(v0 + 152);
  v38 = *(v0 + 56);

  return v41(v37);
}

uint64_t sub_2407FD928()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[15];
  v9 = v0[11];
  v10 = v0[12];
  v13 = v0[10];
  v14 = v0[9];
  v15 = v0[32];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2407FDA28()
{
  v1 = *(*v0 + 368);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FDB24, 0, 0);
}

uint64_t sub_2407FDB24()
{
  v2 = v0[40];
  v1 = v0[41];
  v4 = v0[38];
  v3 = v0[39];
  v5 = v0[24];
  v6 = v0[19];
  v7 = v0[20];
  v8 = v0[16];
  sub_2408D3540();
  v4(v6, v8);
  v0[47] = sub_2408D3B20();
  v2(v5, v7);
  v9 = *(MEMORY[0x277CED858] + 4);
  v14 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v10 = swift_task_alloc();
  v0[48] = v10;
  *v10 = v0;
  v10[1] = sub_2407FDC2C;
  v11 = v0[18];
  v12 = v0[7];

  return v14(v11);
}

uint64_t sub_2407FDC2C()
{
  v1 = *(*v0 + 384);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FDD28, 0, 0);
}

uint64_t sub_2407FDD28()
{
  v42 = v0;
  v1 = v0[47];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[38];
  v5 = v0[39];
  v6 = v0[23];
  v7 = v0[20];
  v8 = v0[18];
  v9 = v0[16];
  v37 = v0[15];
  v38 = v0[32];
  sub_2408D3540();
  v4(v8, v9);
  v10 = sub_2408D3AE0();
  v3(v6, v7);
  sub_24082A3C4(v10, v1);
  v12 = v11;
  v13 = sub_2407F5674(MEMORY[0x277D84F90]);
  v14 = swift_task_alloc();
  *(v14 + 16) = v37;
  sub_2407F6D64(v13, sub_24080F570, v14, v12);
  v16 = v15;
  v0[49] = v15;

  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v17 = sub_2408D4B20();
  __swift_project_value_buffer(v17, qword_27E506FF0);

  v18 = sub_2408D4B10();
  v19 = sub_2408D4F20();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = v0[13];
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v41 = v22;
    *v21 = 136315138;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v23 = sub_2408D4CC0();
    v25 = sub_2408CC504(v23, v24, &v41);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_2407CF000, v18, v19, "Passing accountIDsByService: %s to signInPreflightHelper", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  v26 = v0[27];
  v27 = sub_2408D4740();
  v0[50] = v27;
  v0[51] = v28;
  if (v27)
  {
    v39 = (v27 + *v27);
    v29 = v27[1];
    v30 = swift_task_alloc();
    v0[52] = v30;
    *v30 = v0;
    v30[1] = sub_2407FE110;
    v31 = v16;
    v32 = v39;
  }

  else
  {

    v34 = *(MEMORY[0x277CED858] + 4);
    v40 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v35 = swift_task_alloc();
    v0[54] = v35;
    *v35 = v0;
    v35[1] = sub_2407FE318;
    v31 = v0[19];
    v36 = v0[7];
    v32 = v40;
  }

  return v32(v31);
}

uint64_t sub_2407FE110()
{
  v2 = *v1;
  v3 = *(*v1 + 416);
  v4 = *v1;
  v2[53] = v0;

  v5 = v2[51];
  v6 = v2[50];
  v7 = v2[49];
  if (v0)
  {

    sub_2407D1854(v6);

    return MEMORY[0x2822009F8](sub_2407FEC78, 0, 0);
  }

  else
  {
    sub_2407D1854(v6);

    v8 = *(MEMORY[0x277CED858] + 4);
    v13 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v9 = swift_task_alloc();
    v2[54] = v9;
    *v9 = v4;
    v9[1] = sub_2407FE318;
    v10 = v2[19];
    v11 = v2[7];

    return v13(v10);
  }
}

uint64_t sub_2407FE318()
{
  v1 = *(*v0 + 432);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FE414, 0, 0);
}

uint64_t sub_2407FE414()
{
  v1 = v0[45];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[19];
  v8 = v0[15];
  v7 = v0[16];
  v9 = v0[11];
  v19 = v0[9];
  v20 = v0[20];
  sub_2408D3540();
  v3(v6, v7);
  sub_2408CAC38(v8);
  v10 = sub_2408D3770();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_2408D3A90();
  (*(v5 + 16))(v19, v4, v20);
  (*(v5 + 56))(v19, 0, 1, v20);
  v11 = *(MEMORY[0x277CEDCB8] + 4);
  v12 = swift_task_alloc();
  v0[55] = v12;
  *v12 = v0;
  v12[1] = sub_2407FE5DC;
  v13 = v0[30];
  v14 = v0[31];
  v15 = v0[20];
  v16 = v0[9];
  v17 = v0[7];

  return MEMORY[0x28213FC20](v16, sub_2407EE514, 0, sub_2407EE538, 0, v13, v15, v14);
}

uint64_t sub_2407FE5DC(uint64_t a1)
{
  v4 = *v2;
  v5 = (*v2)[55];
  v6 = *v2;
  (*v2)[56] = v1;

  if (v1)
  {
    sub_2407D9440(v4[9], &qword_27E507228, &qword_2408D8160);
    v7 = sub_2407FE98C;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v4[57] = a1;
    v8 = v4[34];
    v9 = v4[35];
    v7 = sub_2407FE728;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2407FE728()
{
  v1 = v0[57];
  v2 = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507238, &qword_2408D8180);
  sub_2407D917C(&unk_27E507240, &qword_27E507238, &qword_2408D8180);
  v3 = sub_2408D4680();
  v0[58] = v3;

  sub_2407D9440(v2, &qword_27E507228, &qword_2408D8160);
  v4 = swift_task_alloc();
  v0[59] = v4;
  *v4 = v0;
  v4[1] = sub_2407FE858;
  v5 = v0[10];
  v6 = v0[8];

  return sub_240802688(v5, v3);
}

uint64_t sub_2407FE858()
{
  v2 = *v1;
  v3 = *(*v1 + 472);
  v4 = *v1;
  *(*v1 + 480) = v0;

  v5 = *(v2 + 464);

  if (v0)
  {
    v6 = sub_2407FEDD0;
  }

  else
  {
    v6 = sub_2407FEAFC;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2407FE98C()
{
  v1 = v0[45];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[20];
  v10 = v0[14];
  v24 = v0[13];
  v26 = v0[15];

  sub_24080F564(v1, 0);
  v3(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v10 + 8))(v26, v24);
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[22];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[12];
  v23 = v0[10];
  v25 = v0[9];
  v27 = v0[56];

  v21 = v0[1];

  return v21();
}

uint64_t sub_2407FEAFC()
{
  v1 = v0[40];
  v14 = v0[41];
  v2 = v0[36];
  v3 = v0[27];
  v5 = v0[25];
  v4 = v0[26];
  v17 = v0[28];
  v18 = v0[24];
  v6 = v0[22];
  v7 = v0[20];
  v19 = v0[23];
  v20 = v0[19];
  v8 = v0[14];
  v15 = v0[13];
  v16 = v0[15];
  v21 = v0[18];
  v22 = v0[12];
  v9 = v0[10];
  v23 = v0[11];
  v24 = v0[9];
  v10 = v0[6];

  v1(v6, v7);
  (*(v4 + 8))(v3, v5);
  sub_24080F334(v9, v10);
  (*(v8 + 8))(v16, v15);

  v11 = v0[1];
  v12 = v0[45];

  return v11(v12);
}

uint64_t sub_2407FEC78()
{
  v1 = v0[45];
  v2 = v0[36];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];

  sub_24080F564(v1, 0);
  (*(v4 + 8))(v3, v5);
  (*(v7 + 8))(v6, v8);
  v10 = v0[27];
  v9 = v0[28];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v15 = v0[18];
  v14 = v0[19];
  v16 = v0[15];
  v17 = v0[11];
  v18 = v0[12];
  v21 = v0[10];
  v22 = v0[9];
  v23 = v0[53];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2407FEDD0()
{
  v1 = v0[45];
  v3 = v0[40];
  v2 = v0[41];
  v4 = v0[36];
  v6 = v0[26];
  v5 = v0[27];
  v7 = v0[25];
  v8 = v0[22];
  v9 = v0[20];
  v10 = v0[14];
  v24 = v0[13];
  v26 = v0[15];

  sub_24080F564(v1, 0);
  v3(v8, v9);
  (*(v6 + 8))(v5, v7);
  (*(v10 + 8))(v26, v24);
  v12 = v0[27];
  v11 = v0[28];
  v14 = v0[23];
  v13 = v0[24];
  v15 = v0[22];
  v17 = v0[18];
  v16 = v0[19];
  v18 = v0[15];
  v19 = v0[11];
  v20 = v0[12];
  v23 = v0[10];
  v25 = v0[9];
  v27 = v0[60];

  v21 = v0[1];

  return v21();
}

void sub_2407FEF40(uint64_t a1, void **a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v12 - v7;
  v9 = *a2;
  v10 = sub_2408D38D0();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v8, a3, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  sub_2408C6C04(v8, v9);
}

uint64_t sub_2407FF060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_2407FF100;

  return sub_2407FF2E4(a3);
}

uint64_t sub_2407FF100(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_2407FF24C, 0, 0);
  }
}

id sub_2407FF270()
{
  result = [objc_allocWithZone(MEMORY[0x277CF0178]) init];
  if (!result)
  {
    sub_24080D664();
    swift_allocError();
    *v1 = 0;
    v1[1] = 0;
    swift_willThrow();
    return 0;
  }

  return result;
}

uint64_t sub_2407FF2E4(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  v3 = sub_2408D3500();
  v2[26] = v3;
  v4 = *(v3 - 8);
  v2[27] = v4;
  v5 = *(v4 + 64) + 15;
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v6 = sub_2408D4660();
  v2[32] = v6;
  v7 = *(v6 - 8);
  v2[33] = v7;
  v8 = *(v7 + 64) + 15;
  v2[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2407FF424, 0, 0);
}

uint64_t sub_2407FF424()
{
  v24 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = sub_2408D4B20();
  v0[35] = __swift_project_value_buffer(v2, qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[24];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315138;
    v0[23] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507220, &unk_2408D7670);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v23);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Authenticating with model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = v0[25];
  v12 = *(v11 + 120);
  v13 = *(v11 + 128);

  v0[36] = v12(v14);
  v16 = v0[24];
  v15 = v0[25];

  v0[37] = swift_allocObject();
  swift_weakInit();
  objc_allocWithZone(sub_2408D3440());

  v0[38] = sub_2408D3450();
  v17 = *(MEMORY[0x277CED858] + 4);
  v22 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v18 = swift_task_alloc();
  v0[39] = v18;
  *v18 = v0;
  v18[1] = sub_2407FF74C;
  v19 = v0[34];
  v20 = v0[24];

  return v22(v19);
}

uint64_t sub_2407FF74C()
{
  v1 = *(*v0 + 312);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2407FF848, 0, 0);
}

uint64_t sub_2407FF848()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[32];
  v4 = v0[33];
  v5 = v0[25];
  sub_240800E88(v2, v1);
  (*(v4 + 8))(v2, v3);
  v6 = v1;
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[38];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v10;
    *v12 = v10;
    v13 = v10;
    _os_log_impl(&dword_2407CF000, v7, v8, "Authenticating with context: %@", v11, 0xCu);
    sub_2407D9440(v12, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v0[40] = v10;
  v14 = v0[38];
  v15 = v0[36];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_2407FFA78;
  v16 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507208, &qword_2408D7668);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_240800D80;
  v0[13] = &block_descriptor_157;
  v0[14] = v16;
  [v15 authenticateWithContext:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2407FFA78()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 328) = v2;
  if (v2)
  {
    v3 = sub_2407FFF74;
  }

  else
  {
    v3 = sub_2407FFB88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2407FFB88()
{
  v50 = v0;
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[35];
    v3 = v0[18];

    v4 = sub_2408D4B10();
    v5 = sub_2408D4F10();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v49 = v7;
      *v6 = 136642819;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
      v8 = sub_2408D4CC0();
      v10 = sub_2408CC504(v8, v9, &v49);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_2407CF000, v4, v5, "Successfully authenticated with results: %{sensitive}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v7);
      MEMORY[0x245CC9F60](v7, -1, -1);
      MEMORY[0x245CC9F60](v6, -1, -1);
    }

    v11 = v0[40];
    v13 = v0[37];
    v12 = v0[38];
    v14 = v0[36];
    v15 = v0[34];
    v16 = v0[31];
    v46 = v0[30];
    v47 = v0[29];
    v48 = v0[28];
    v17 = type metadata accessor for AuthenticationReport(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    v20 = swift_allocObject();
    v21 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport__id;
    v22 = sub_2408D38D0();
    (*(*(v22 - 8) + 56))(v20 + v21, 1, 1, v22);
    v23 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_context;
    v24 = OBJC_IVAR____TtC18AppleIDSetupDaemon20AuthenticationReport_originalReport;
    *(v20 + 16) = v1;
    *(v20 + v23) = v11;
    *(v20 + v24) = 0;

    v25 = v0[1];

    return v25(v20);
  }

  else
  {
    v27 = v0[38];
    v28 = v0[35];
    v29 = sub_2408D4B10();
    v30 = sub_2408D4F30();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v0[40];
      v32 = v0[38];
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138412290;
      *(v33 + 4) = v32;
      *v34 = v31;
      v35 = v32;
      _os_log_impl(&dword_2407CF000, v29, v30, "Failed to unwrap optional SRP results for context: %@", v33, 0xCu);
      sub_2407D9440(v34, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v34, -1, -1);
      MEMORY[0x245CC9F60](v33, -1, -1);
    }

    v36 = v0[37];
    v37 = v0[38];
    v38 = v0[36];

    sub_24080D664();
    swift_allocError();
    *v39 = xmmword_2408D73A0;
    swift_willThrow();

    v40 = v0[34];
    v42 = v0[30];
    v41 = v0[31];
    v44 = v0[28];
    v43 = v0[29];

    v45 = v0[1];

    return v45();
  }
}

uint64_t sub_2407FFF74()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 304);
  v3 = *(v0 + 248);
  v4 = *(v0 + 208);
  swift_willThrow();

  *(v0 + 152) = v1;
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
  v6 = swift_dynamicCast();
  v7 = *(v0 + 328);
  if (v6)
  {
    v8 = *(v0 + 280);
    v10 = *(v0 + 240);
    v9 = *(v0 + 248);
    v11 = *(v0 + 232);
    v12 = *(v0 + 208);
    v13 = *(v0 + 216);

    (*(v13 + 32))(v10, v9, v12);
    v14 = *(v13 + 16);
    v14(v11, v10, v12);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F10();
    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 232);
    v19 = *(v0 + 208);
    v20 = *(v0 + 216);
    if (v17)
    {
      v83 = v14;
      v21 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *v21 = 138412290;
      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      v83(v22, v18, v19);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v84 = *(v20 + 8);
      v84(v18, v19);
      *(v21 + 4) = v23;
      *v82 = v23;
      _os_log_impl(&dword_2407CF000, v15, v16, "auth caught SetupError: %@", v21, 0xCu);
      sub_2407D9440(v82, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v82, -1, -1);
      v24 = v21;
      v14 = v83;
      MEMORY[0x245CC9F60](v24, -1, -1);
    }

    else
    {

      v84 = *(v20 + 8);
      v84(v18, v19);
    }

    v45 = *(v0 + 296);
    v46 = *(v0 + 304);
    v47 = *(v0 + 288);
    v48 = *(v0 + 240);
    v49 = *(v0 + 208);
    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    v14(v50, v48, v49);
    swift_willThrow();

    v84(v48, v49);
    v51 = *(v0 + 152);
    goto LABEL_23;
  }

  *(v0 + 160) = v7;
  v25 = v7;
  sub_2407EEDBC(0, &qword_27E507210, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    v52 = *(v0 + 296);
    v53 = *(v0 + 304);
    v54 = *(v0 + 288);

    v55 = *(v0 + 328);
    goto LABEL_24;
  }

  v26 = *(v0 + 280);

  v27 = *(v0 + 168);
  v28 = sub_2408D4B10();
  v29 = sub_2408D4F10();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&dword_2407CF000, v28, v29, "auth caught error: %@", v30, 0xCu);
    sub_2407D9440(v31, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v31, -1, -1);
    MEMORY[0x245CC9F60](v30, -1, -1);
  }

  if ([v27 ak_isUserSkippedError])
  {
    v33 = *(v0 + 280);
    v34 = sub_2408D4B10();
    v35 = sub_2408D4F10();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2407CF000, v34, v35, "User opted to skip authentication, cancelling sign in", v36, 2u);
      MEMORY[0x245CC9F60](v36, -1, -1);
    }

    v37 = *(v0 + 296);
    v38 = *(v0 + 304);
    v39 = *(v0 + 288);
    v40 = *(v0 + 208);
    v41 = *(v0 + 216);

    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    v43 = v42;
    v44 = MEMORY[0x277CED268];
  }

  else
  {
    v56 = [v27 ak_isUserCancelError];
    v57 = *(v0 + 280);
    if (!v56)
    {
      v63 = v27;
      v64 = sub_2408D4B10();
      v65 = sub_2408D4F30();

      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        *v66 = 138412290;
        *(v66 + 4) = v63;
        *v67 = v63;
        v68 = v63;
        _os_log_impl(&dword_2407CF000, v64, v65, "Failed to authenticate with error: %@", v66, 0xCu);
        sub_2407D9440(v67, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v67, -1, -1);
        MEMORY[0x245CC9F60](v66, -1, -1);
      }

      v69 = *(v0 + 304);
      v85 = *(v0 + 296);
      v70 = *(v0 + 288);
      v72 = *(v0 + 216);
      v71 = *(v0 + 224);
      v73 = *(v0 + 208);

      *(v0 + 176) = v63;
      sub_24080F430();
      sub_2408D52A0();
      sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
      swift_allocError();
      (*(v72 + 16))(v74, v71, v73);
      swift_willThrow();

      (*(v72 + 8))(v71, v73);
      goto LABEL_22;
    }

    v58 = sub_2408D4B10();
    v59 = sub_2408D4F10();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_2407CF000, v58, v59, "User opted to cancel authentication, cancelling sign in", v60, 2u);
      MEMORY[0x245CC9F60](v60, -1, -1);
    }

    v61 = *(v0 + 296);
    v38 = *(v0 + 304);
    v39 = *(v0 + 288);
    v40 = *(v0 + 208);
    v41 = *(v0 + 216);

    sub_24080D61C(qword_27E506DC8, 255, MEMORY[0x277CED2E0]);
    swift_allocError();
    v43 = v62;
    v44 = MEMORY[0x277CED270];
  }

  (*(v41 + 104))(v43, *v44, v40);
  swift_willThrow();

LABEL_22:
  v51 = *(v0 + 160);
LABEL_23:

LABEL_24:
  v75 = *(v0 + 272);
  v77 = *(v0 + 240);
  v76 = *(v0 + 248);
  v79 = *(v0 + 224);
  v78 = *(v0 + 232);

  v80 = *(v0 + 8);

  return v80();
}

uint64_t sub_240800804(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_240800824, 0, 0);
}

uint64_t sub_240800824()
{
  v1 = v0[7];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[8] = Strong;
  if (!Strong)
  {
    goto LABEL_8;
  }

  v3 = Strong;
  v0[5] = *MEMORY[0x277CED1A0];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v5 + 16) = v0 + 5;
  LOBYTE(v4) = sub_24080CF48(sub_24080F498, v5, v4);

  if ((v4 & 1) == 0)
  {

LABEL_8:
    v10 = v0[1];
    goto LABEL_9;
  }

  v6 = *(v3 + 112);
  v0[9] = v6;
  if (v6)
  {
    v7 = *(MEMORY[0x277CED870] + 4);
    v12 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);

    v8 = swift_task_alloc();
    v0[10] = v8;
    *v8 = v0;
    v8[1] = sub_240800A20;

    return v12(sub_240800C0C, 0);
  }

  sub_24080D664();
  swift_allocError();
  *v11 = xmmword_2408D7390;
  swift_willThrow();

  v10 = v0[1];
LABEL_9:

  return v10();
}

uint64_t sub_240800A20()
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v4 = sub_240800BA0;
  }

  else
  {
    v5 = *(v2 + 72);

    v4 = sub_240800B3C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_240800B3C()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_240800BA0()
{
  v1 = v0[8];
  v2 = v0[9];

  v3 = v0[11];
  v4 = v0[1];

  return v4();
}

uint64_t sub_240800C0C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2408D71B0;
  v1 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v2 = v1;
  sub_2408709E4(inited);
  swift_setDeallocating();
  sub_24080F6B4(inited + 32, type metadata accessor for AIDAServiceType);
  v3 = sub_2408D3530();
  sub_2408D3B30();
  v3(v9, 0);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_2408D71B0;
  v5 = *MEMORY[0x277CED1B0];
  *(v4 + 32) = *MEMORY[0x277CED1B0];
  v6 = v5;
  sub_2408709E4(v4);
  swift_setDeallocating();
  sub_24080F6B4(v4 + 32, type metadata accessor for AIDAServiceType);
  v7 = sub_2408D3530();
  sub_2408D3AF0();
  return v7(v9, 0);
}

uint64_t sub_240800D80(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
      v9 = sub_2408D4CB0();
    }

    else
    {
      v9 = 0;
    }

    **(*(v5 + 64) + 40) = v9;

    return MEMORY[0x282200950](v5);
  }
}

void sub_240800E88(uint64_t a1, void *a2)
{
  v94 = sub_2408D3970();
  v4 = *(v94 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v94);
  v84 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v90 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v91 = &v82 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v89 = &v82 - v14;
  v15 = sub_2408D4570();
  v87 = *(v15 - 8);
  v88 = v15;
  v16 = *(v87 + 64);
  v17 = MEMORY[0x28223BE20](v15);
  v86 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v85 = &v82 - v19;
  v20 = sub_2408D4660();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v25 = sub_2408D4B20();
  v26 = __swift_project_value_buffer(v25, qword_27E506FF0);
  v27 = *(v21 + 16);
  v95 = a1;
  v27(v24, a1, v20);
  v28 = a2;
  v92 = v26;
  v29 = sub_2408D4B10();
  v30 = sub_2408D4F20();

  v31 = os_log_type_enabled(v29, v30);
  v93 = v4;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v96 = v83;
    *v32 = 136315394;
    sub_24080D61C(&qword_27E507200, 255, MEMORY[0x277CEDC98]);
    v34 = sub_2408D5220();
    v36 = v35;
    (*(v21 + 8))(v24, v20);
    v37 = sub_2408CC504(v34, v36, &v96);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2112;
    *(v32 + 14) = v28;
    *v33 = v28;
    v38 = v28;
    v39 = v28;
    _os_log_impl(&dword_2407CF000, v29, v30, "Applying model: %s to context: %@", v32, 0x16u);
    sub_2407D9440(v33, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v33, -1, -1);
    v40 = v83;
    __swift_destroy_boxed_opaque_existential_0Tm(v83);
    MEMORY[0x245CC9F60](v40, -1, -1);
    MEMORY[0x245CC9F60](v32, -1, -1);
  }

  else
  {
    v38 = v28;

    (*(v21 + 8))(v24, v20);
  }

  v41 = v88;
  v42 = v85;
  sub_2408D45B0();
  v44 = v86;
  v43 = v87;
  (*(v87 + 32))(v86, v42, v41);
  v45 = (*(v43 + 88))(v44, v41);
  v46 = v91;
  v47 = v38;
  v48 = v89;
  if (v45 == *MEMORY[0x277CEDC38])
  {
    v49 = 1;
    goto LABEL_13;
  }

  if (v45 != *MEMORY[0x277CEDC40])
  {
    if (v45 == *MEMORY[0x277CEDC48])
    {
      v49 = 2;
      goto LABEL_13;
    }

    (*(v43 + 8))(v44, v41);
  }

  v49 = 0;
LABEL_13:
  [v38 setAuthenticationType_];
  [v38 setServiceType_];
  [v38 setSupportsPiggybacking_];
  sub_2408D4650();
  if (v50)
  {
    v51 = sub_2408D4D00();
  }

  else
  {
    v51 = 0;
  }

  [v38 setIdmsDataToken_];

  sub_2408D45D0();
  v52 = sub_2408D38D0();
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v48, 1, v52) == 1)
  {
    sub_2407D9440(v48, &qword_27E507F00, &qword_2408D6D50);
  }

  else
  {
    sub_2408D38C0();
    v55 = v54;
    (*(v53 + 8))(v48, v52);
    if (v55)
    {
      v56 = sub_2408D4B10();
      v57 = sub_2408D4F10();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2407CF000, v56, v57, "Applying username to context", v58, 2u);
        MEMORY[0x245CC9F60](v58, -1, -1);
      }

      v59 = sub_2408D4D00();

      [v47 setUsername_];

      [v47 setIsUsernameEditable_];
    }
  }

  sub_2408D4630();
  v60 = v90;
  sub_2407EEE04(v46, v90, &unk_27E506A20, &unk_2408D67F0);
  v62 = v93;
  v61 = v94;
  if ((*(v93 + 48))(v60, 1, v94) != 1)
  {
    v63 = v84;
    (*(v62 + 32))(v84, v60, v61);
    sub_2408018AC(v63, v47);
    (*(v62 + 8))(v63, v61);
  }

  sub_2407D9440(v46, &unk_27E506A20, &unk_2408D67F0);
  v64 = sub_2408D4580();
  if (v64)
  {
    v65 = v64;
    v66 = v47;
    v67 = sub_2408D4B10();
    v68 = sub_2408D4F20();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v69 = 138412290;
      *(v69 + 4) = v66;
      *v70 = v66;
      v71 = v66;
      _os_log_impl(&dword_2407CF000, v67, v68, "Executing context modifier for context: %@", v69, 0xCu);
      sub_2407D9440(v70, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v70, -1, -1);
      MEMORY[0x245CC9F60](v69, -1, -1);
    }

    v65(v66);
    sub_2407D1854(v65);
  }

  v72 = v47;
  v73 = sub_2408D4B10();
  v74 = sub_2408D4F10();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v96 = v76;
    *v75 = 136315138;
    v77 = [v72 debugDescription];
    v78 = sub_2408D4D30();
    v80 = v79;

    v81 = sub_2408CC504(v78, v80, &v96);

    *(v75 + 4) = v81;
    _os_log_impl(&dword_2407CF000, v73, v74, "Completed applying model to context: %s", v75, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v76);
    MEMORY[0x245CC9F60](v76, -1, -1);
    MEMORY[0x245CC9F60](v75, -1, -1);
  }
}

void sub_2408018AC(uint64_t a1, void *a2)
{
  v136 = a1;
  v137 = a2;
  v130 = sub_2408D36A0();
  v127 = *(v130 - 8);
  v3 = *(v127 + 64);
  MEMORY[0x28223BE20](v130);
  v126 = &v120 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2408D3970();
  v132 = *(v5 - 8);
  v133 = v5;
  v6 = *(v132 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v128 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v125 = &v120 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v120 = &v120 - v12;
  MEMORY[0x28223BE20](v11);
  v121 = &v120 - v13;
  v131 = sub_2408D38D0();
  v135 = *(v131 - 8);
  v14 = *(v135 + 64);
  v15 = MEMORY[0x28223BE20](v131);
  v124 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v123 = &v120 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v122 = &v120 - v20;
  MEMORY[0x28223BE20](v19);
  v134 = &v120 - v21;
  v22 = sub_2408D3490();
  v23 = *(v22 - 8);
  v24 = v23[8];
  MEMORY[0x28223BE20](v22);
  v26 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v2 + 12);
  v28 = *(v2 + 13);
  v129 = v2;
  __swift_project_boxed_opaque_existential_1(v2 + 9, v27);
  v29 = *MEMORY[0x277CED208];
  v30 = v23[13];
  v30(v26, v29, v22);
  LOBYTE(v27) = sub_2408D4770();
  v31 = v23[1];
  v31(v26, v22);
  if (v27 & 1) != 0 && (v32 = v134, sub_2408D38F0(), v33 = sub_2408D3850(), (*(v135 + 8))(v32, v131), (v33))
  {
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v34 = sub_2408D4B20();
    __swift_project_value_buffer(v34, qword_27E506FF0);
    v36 = v132;
    v35 = v133;
    v37 = v121;
    (*(v132 + 16))(v121, v136, v133);
    v38 = sub_2408D4B10();
    v39 = sub_2408D4F20();
    v40 = os_log_type_enabled(v38, v39);
    v41 = v137;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v138[0] = v43;
      *v42 = 136315138;
      sub_24080D61C(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
      v44 = sub_2408D5220();
      v46 = v45;
      (*(v36 + 8))(v37, v35);
      v47 = sub_2408CC504(v44, v46, v138);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_2407CF000, v38, v39, "Skipping applying credential to context as it represents a reserved new account: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x245CC9F60](v43, -1, -1);
      MEMORY[0x245CC9F60](v42, -1, -1);
    }

    else
    {

      (*(v36 + 8))(v37, v35);
    }

    [v41 setNeedsNewAppleID_];
    [v41 setRequestedNewAccountAgeRange_];
  }

  else
  {
    v48 = *(v129 + 13);
    __swift_project_boxed_opaque_existential_1(v129 + 9, *(v129 + 12));
    v30(v26, v29, v22);
    v49 = sub_2408D4770();
    v31(v26, v22);
    v51 = v135;
    v50 = v136;
    v52 = v131;
    v53 = v134;
    if (v49 & 1) != 0 && (sub_2408D38F0(), v54 = sub_2408D3870(), (*(v51 + 8))(v53, v52), (v54))
    {
      v55 = v137;
      v57 = v132;
      v56 = v133;
      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v58 = sub_2408D4B20();
      __swift_project_value_buffer(v58, qword_27E506FF0);
      v59 = v120;
      (*(v57 + 16))(v120, v50, v56);
      v60 = sub_2408D4B10();
      v61 = sub_2408D4F20();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v138[0] = v63;
        *v62 = 136315138;
        sub_24080D61C(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
        v64 = sub_2408D5220();
        v65 = v56;
        v67 = v66;
        (*(v57 + 8))(v59, v65);
        v68 = sub_2408CC504(v64, v67, v138);

        *(v62 + 4) = v68;
        _os_log_impl(&dword_2407CF000, v60, v61, "Skipping applying account / credential to context as it represents a reserved unknown account id: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v63);
        MEMORY[0x245CC9F60](v63, -1, -1);
        MEMORY[0x245CC9F60](v62, -1, -1);
      }

      else
      {

        (*(v57 + 8))(v59, v56);
      }

      [v55 setIsUsernameEditable_];
    }

    else
    {
      [v137 setIsUsernameEditable_];
      v69 = v122;
      sub_2408D38F0();
      sub_2408D38C0();
      v71 = v70;
      v74 = *(v51 + 8);
      v73 = v51 + 8;
      v72 = v74;
      v74(v69, v52);
      v75 = v133;
      if (v71)
      {
        v76 = sub_2408D4D00();
      }

      else
      {
        v76 = 0;
      }

      v77 = v125;
      [v137 setUsername_];

      v78 = v123;
      sub_2408D38F0();
      v79 = sub_2408D38B0();
      v81 = v80;
      v72(v78, v52);

      v82 = HIBYTE(v81) & 0xF;
      if ((v81 & 0x2000000000000000) == 0)
      {
        v82 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v82)
      {
        sub_2408D38F0();
        sub_2408D38B0();
        v72(v53, v52);
        v83 = sub_2408D4D00();
      }

      else
      {
        v83 = 0;
      }

      [v137 setAltDSID_];

      v84 = v124;
      sub_2408D38F0();
      sub_2408D3890();
      v86 = v85;
      v72(v84, v52);
      if (v86)
      {
        v87 = sub_2408D4D00();
      }

      else
      {
        v87 = 0;
      }

      [v137 setDSID_];

      if (qword_27E506928 != -1)
      {
        swift_once();
      }

      v129 = v72;
      v88 = sub_2408D4B20();
      v89 = __swift_project_value_buffer(v88, qword_27E506FF0);
      v90 = v132;
      v123 = *(v132 + 16);
      (v123)(v77, v50, v75);
      v124 = v89;
      v91 = sub_2408D4B10();
      v92 = v77;
      v93 = sub_2408D4F20();
      if (os_log_type_enabled(v91, v93))
      {
        v94 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v138[0] = v95;
        *v94 = 136642819;
        v135 = v73;
        v96 = v126;
        sub_2408D3780();
        v97 = sub_2408D4D40();
        v99 = v98;
        v125 = *(v90 + 8);
        (v125)(v92, v133);
        v100 = sub_2408CC504(v97, v99, v138);
        v101 = v130;

        *(v94 + 4) = v100;
        v102 = v96;
        v52 = v131;
        _os_log_impl(&dword_2407CF000, v91, v93, "Applying credential: %{sensitive}s to context", v94, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v95);
        v103 = v95;
        v75 = v133;
        MEMORY[0x245CC9F60](v103, -1, -1);
        v104 = v94;
        v50 = v136;
        MEMORY[0x245CC9F60](v104, -1, -1);
      }

      else
      {

        v125 = *(v90 + 8);
        (v125)(v92, v75);
        v102 = v126;
        v101 = v130;
      }

      sub_2408D3780();
      v105 = v134;
      sub_2408D38F0();
      v106 = v137;
      sub_2408D3690();
      v129(v105, v52);
      (*(v127 + 8))(v102, v101);
      v107 = v128;
      (v123)(v128, v50, v75);
      v108 = v106;
      v109 = sub_2408D4B10();
      v110 = sub_2408D4F20();

      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        v112 = swift_slowAlloc();
        v113 = v75;
        v114 = swift_slowAlloc();
        v138[0] = v114;
        *v111 = 136315394;
        sub_24080D61C(&qword_28130F418, 255, MEMORY[0x277CED3F8]);
        v115 = sub_2408D5220();
        v117 = v116;
        (v125)(v107, v113);
        v118 = sub_2408CC504(v115, v117, v138);

        *(v111 + 4) = v118;
        *(v111 + 12) = 2112;
        *(v111 + 14) = v108;
        *v112 = v108;
        v119 = v108;
        _os_log_impl(&dword_2407CF000, v109, v110, "Configured authentication context for pre-found account (%s: %@", v111, 0x16u);
        sub_2407D9440(v112, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v112, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v114);
        MEMORY[0x245CC9F60](v114, -1, -1);
        MEMORY[0x245CC9F60](v111, -1, -1);
      }

      else
      {

        (v125)(v107, v75);
      }
    }
  }
}

uint64_t sub_240802688(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071F0, &qword_2408D7640);
  v3[6] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240802738, 0, 0);
}

uint64_t sub_240802738()
{
  v1 = swift_task_alloc();
  v0[4].i64[1] = v1;
  v1[1] = vextq_s8(v0[2], v0[2], 8uLL);
  v2 = *(MEMORY[0x277CEDE70] + 4);
  v3 = swift_task_alloc();
  v0[5].i64[0] = v3;
  v4 = type metadata accessor for SignInReport(0);
  *v3 = v0;
  v3[1] = sub_240802810;
  v5 = v0[4].i64[0];

  return MEMORY[0x2821400E8](v5, &unk_2408D7650, v1, v4);
}

uint64_t sub_240802810()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240802928, 0, 0);
}

uint64_t sub_240802928()
{
  v1 = v0[6];
  sub_2407EEE04(v0[8], v0[7], &unk_27E5071F0, &qword_2408D7640);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = v0[7];
  v3 = v0[8];
  if (EnumCaseMultiPayload == 1)
  {
    v0[2] = *v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    swift_willThrowTypedImpl();
    sub_2407D9440(v3, &unk_27E5071F0, &qword_2408D7640);
  }

  else
  {
    v6 = v0[3];
    sub_2407D9440(v0[8], &unk_27E5071F0, &qword_2408D7640);
    sub_24080F334(v4, v6);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_240802A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_240802B10(a1, a3);
}

uint64_t sub_240802B10(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507F00, &qword_2408D6D50) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v6 = sub_2408D38D0();
  v3[10] = v6;
  v7 = *(v6 - 8);
  v3[11] = v7;
  v8 = *(v7 + 64) + 15;
  v3[12] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D0, &unk_2408D9C70) - 8) + 64) + 15;
  v3[13] = swift_task_alloc();
  v10 = sub_2408D3C20();
  v3[14] = v10;
  v11 = *(v10 - 8);
  v3[15] = v11;
  v12 = *(v11 + 64) + 15;
  v3[16] = swift_task_alloc();
  v13 = swift_task_alloc();
  v3[17] = v13;
  v14 = sub_2408D3770();
  v3[18] = v14;
  v15 = *(v14 - 8);
  v3[19] = v15;
  v16 = *(v15 + 64) + 15;
  v3[20] = swift_task_alloc();
  v17 = *(MEMORY[0x277CED858] + 4);
  v20 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v18 = swift_task_alloc();
  v3[21] = v18;
  *v18 = v3;
  v18[1] = sub_240802D98;

  return v20(v13);
}

uint64_t sub_240802D98()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240802E94, 0, 0);
}

uint64_t sub_240802E94()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[14];
  v5 = v0[15];
  v6 = v0[13];
  sub_2408D3A80();
  v7 = *(v5 + 8);
  v0[22] = v7;
  v0[23] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v3, v4);
  if ((*(v2 + 48))(v6, 1, v1) == 1)
  {
    sub_2407D9440(v0[13], &qword_27E5071D0, &unk_2408D9C70);
    if (qword_27E506928 != -1)
    {
      swift_once();
    }

    v8 = sub_2408D4B20();
    __swift_project_value_buffer(v8, qword_27E506FF0);
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F30();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Missing SRP results to use for signing in", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    sub_24080D664();
    swift_allocError();
    *v12 = xmmword_2408D73A0;
    swift_willThrow();
    v13 = v0[20];
    v15 = v0[16];
    v14 = v0[17];
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[8];
    v18 = v0[9];

    v20 = v0[1];

    return v20();
  }

  else
  {
    (*(v0[19] + 32))(v0[20], v0[13], v0[18]);
    v22 = *(MEMORY[0x277CED870] + 4);
    v25 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v23 = swift_task_alloc();
    v0[24] = v23;
    *v23 = v0;
    v23[1] = sub_240803164;
    v24 = v0[6];

    return v25(nullsub_1, 0);
  }
}

uint64_t sub_240803164()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {

    v3 = sub_240804BAC;
  }

  else
  {
    v3 = sub_240803280;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240803280()
{
  v1 = v0[25];
  v2 = v0[20];
  v3 = IdMSAccount.SRPResults.into()();
  v0[26] = v3;
  if (v1)
  {
    (*(v0[19] + 8))(v0[20], v0[18]);
LABEL_7:
    v13 = v0[20];
    v14 = v0[16];
    v15 = v0[17];
    v17 = v0[12];
    v16 = v0[13];
    v19 = v0[8];
    v18 = v0[9];

    v20 = v0[1];

    return v20();
  }

  v4 = *(v3 + 16);
  v0[27] = v4;
  if (!v4)
  {
LABEL_6:
    v10 = v0[19];
    v9 = v0[20];
    v11 = v0[18];
    sub_24080D664();
    swift_allocError();
    *v12 = xmmword_2408D73A0;
    swift_willThrow();

    (*(v10 + 8))(v9, v11);
    goto LABEL_7;
  }

  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];

  sub_2408CBA10(v7);
  if ((*(v6 + 48))(v7, 1, v5) == 1)
  {
    v8 = v0[9];

    sub_2407D9440(v8, &qword_27E507F00, &qword_2408D6D50);
    goto LABEL_6;
  }

  v23 = v0[11];
  v22 = v0[12];
  v24 = v0[9];
  v25 = v0[10];
  v26 = *(v23 + 32);
  v0[28] = v26;
  v0[29] = (v23 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v26(v22, v24, v25);
  v27 = *(MEMORY[0x277CED858] + 4);
  v31 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v28 = swift_task_alloc();
  v0[30] = v28;
  *v28 = v0;
  v28[1] = sub_2408034EC;
  v29 = v0[16];
  v30 = v0[6];

  return v31(v29);
}

uint64_t sub_2408034EC()
{
  v1 = *(*v0 + 240);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_2408035E8, 0, 0);
}

uint64_t sub_2408035E8()
{
  v25 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[16];
  v4 = v0[14];
  v5 = sub_2408D3B20();
  v0[31] = v5;
  v2(v3, v4);
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v6 = v0[27];
  v7 = sub_2408D4B20();
  v0[32] = __swift_project_value_buffer(v7, qword_27E506FF0);

  v8 = sub_2408D4B10();
  v9 = sub_2408D4F10();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v0[27];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315395;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v13 = sub_2408D4EF0();
    v15 = sub_2408CC504(v13, v14, &v24);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2085;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v16 = sub_2408D4CC0();
    v18 = sub_2408CC504(v16, v17, &v24);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2407CF000, v8, v9, "Signing into required services (%s) with SRP results: %{sensitive}s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v19 = v0[27];
  v20 = swift_task_alloc();
  v0[33] = v20;
  *v20 = v0;
  v20[1] = sub_2408038CC;
  v21 = v0[6];
  v22 = v0[7];

  return sub_240805DC8(v21, v5, v19, sub_240805030, 0);
}

uint64_t sub_2408038CC(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 264);
  v6 = *v2;
  v4[34] = a1;
  v4[35] = v1;

  v7 = v3[31];
  if (v1)
  {
    v8 = v4[27];

    return MEMORY[0x2822009F8](sub_240804E18, 0, 0);
  }

  else
  {

    v9 = *(MEMORY[0x277CED858] + 4);
    v14 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
    v10 = swift_task_alloc();
    v4[36] = v10;
    *v10 = v6;
    v10[1] = sub_240803A94;
    v11 = v4[16];
    v12 = v4[6];

    return v14(v11);
  }
}

uint64_t sub_240803A94()
{
  v1 = *(*v0 + 288);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240803B90, 0, 0);
}

uint64_t sub_240803B90()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[16];
  v4 = v0[14];
  v0[37] = sub_2408D3AE0();
  v2(v3, v4);
  v5 = *(MEMORY[0x277CED858] + 4);
  v10 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v6 = swift_task_alloc();
  v0[38] = v6;
  *v6 = v0;
  v6[1] = sub_240803C68;
  v7 = v0[16];
  v8 = v0[6];

  return v10(v7);
}

uint64_t sub_240803C68()
{
  v1 = *(*v0 + 304);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240803D64, 0, 0);
}

uint64_t sub_240803D64()
{
  v85 = v0;
  v1 = v0[37];
  v81 = v0[27];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[16];
  v5 = v0[14];
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];
  v9 = sub_2408D3B80();
  v2(v4, v5);
  sub_2408D4E40();
  v10 = sub_2408D4E60();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v1;
  v11[5] = v81;
  v11[6] = v7;
  v11[7] = v8;

  v12 = sub_240805A88(0, 0, v6, &unk_2408D7628, v11);
  v0[39] = v12;
  sub_2407D9440(v6, &unk_27E506BD0, &qword_2408D7AB0);
  if (v9)
  {
    v13 = v0[32];

    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v84 = v17;
      *v16 = 136315138;
      v0[4] = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071E0, &qword_2408D7638);
      v18 = sub_2408D4D40();
      v20 = sub_2408CC504(v18, v19, &v84);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_2407CF000, v14, v15, "Backgrounding desired service sign ins (%s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x245CC9F60](v17, -1, -1);
      MEMORY[0x245CC9F60](v16, -1, -1);
    }

    v26 = 0;
    v27 = v0[37];
    v30 = *(v27 + 56);
    v29 = v27 + 56;
    v28 = v30;
    v82 = v0[37];
    v31 = -1;
    v32 = -1 << *(v82 + 32);
    if (-v32 < 64)
    {
      v31 = ~(-1 << -v32);
    }

    v33 = v31 & v28;
    v34 = (63 - v32) >> 6;
    v35 = v0[34];
    if ((v31 & v28) != 0)
    {
      goto LABEL_9;
    }

    do
    {
LABEL_10:
      v39 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v39 >= v34)
      {
        v66 = v0[37];

        goto LABEL_31;
      }

      v33 = *(v29 + 8 * v39);
      ++v26;
    }

    while (!v33);
    while (1)
    {
      v40 = *(*(v82 + 48) + ((v39 << 9) | (8 * __clz(__rbit64(v33)))));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v35;
      v21 = sub_2408CCC7C(v40);
      v42 = v35[2];
      v43 = (v22 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        break;
      }

      v46 = v22;
      if (v35[3] >= v45)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = v21;
          sub_2408C6540();
          v21 = v50;
          v35 = v84;
        }
      }

      else
      {
        sub_2408C94F8(v45, isUniquelyReferenced_nonNull_native);
        v35 = v84;
        v21 = sub_2408CCC7C(v40);
        if ((v46 & 1) != (v22 & 1))
        {
          type metadata accessor for AIDAServiceType(0);

          return sub_2408D5280();
        }
      }

      v33 &= v33 - 1;
      if (v46)
      {
        v36 = v35[7] + 16 * v21;
        v37 = *v36;
        v38 = *(v36 + 8);
        *v36 = 1;
        *(v36 + 8) = 0;
        sub_24080F17C(v37, v38);

        v26 = v39;
        if (!v33)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v35[(v21 >> 6) + 8] |= 1 << v21;
        *(v35[6] + 8 * v21) = v40;
        v47 = v35[7] + 16 * v21;
        *v47 = 1;
        *(v47 + 8) = 0;
        v48 = v35[2];
        v44 = __OFADD__(v48, 1);
        v49 = v48 + 1;
        if (v44)
        {
          goto LABEL_41;
        }

        v35[2] = v49;
        v26 = v39;
        if (!v33)
        {
          goto LABEL_10;
        }
      }

LABEL_9:
      v39 = v26;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    return MEMORY[0x282200430](v21, v22, v23, v24, v25);
  }

  v51 = v0[34];
  v52 = v0;
  v53 = *(v0[37] + 16);

  if (v53)
  {
    v54 = v52[32];

    v55 = sub_2408D4B10();
    v56 = sub_2408D4F20();

    v57 = v52;
    if (os_log_type_enabled(v55, v56))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v84 = v59;
      *v58 = 136315138;
      v57[3] = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071E0, &qword_2408D7638);
      v60 = sub_2408D4D40();
      v62 = sub_2408CC504(v60, v61, &v84);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_2407CF000, v55, v56, "Forcing synchronous desired service sign ins (%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x245CC9F60](v59, -1, -1);
      MEMORY[0x245CC9F60](v58, -1, -1);
    }

    v63 = *(MEMORY[0x277D857C8] + 4);
    v64 = swift_task_alloc();
    v57[40] = v64;
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D8, &qword_2408D7630);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    *v64 = v57;
    v64[1] = sub_24080458C;
    v25 = MEMORY[0x277D84950];
    v21 = (v57 + 2);
    v22 = v12;
    v23 = v65;

    return MEMORY[0x282200430](v21, v22, v23, v24, v25);
  }

  v67 = v52[34];

  v35 = v52[34];
  v0 = v52;
LABEL_31:
  v0[42] = v35;
  v68 = v0[32];
  v69 = sub_2408D4B10();
  v70 = sub_2408D4F20();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v84 = v72;
    *v71 = 136315138;
    type metadata accessor for AIDAServiceType(0);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v73 = sub_2408D4CC0();
    v75 = v74;

    v76 = sub_2408CC504(v73, v75, &v84);

    *(v71 + 4) = v76;
    _os_log_impl(&dword_2407CF000, v69, v70, "Finished signing in with results by service: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x245CC9F60](v72, -1, -1);
    MEMORY[0x245CC9F60](v71, -1, -1);
  }

  v77 = *(MEMORY[0x277CED870] + 4);
  v83 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v78 = swift_task_alloc();
  v0[43] = v78;
  *v78 = v0;
  v78[1] = sub_240804960;
  v79 = v0[6];

  return v83(sub_240805D04, 0);
}

uint64_t sub_24080458C()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v7 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v4 = *(v2 + 272);

    v5 = sub_240804F18;
  }

  else
  {
    v5 = sub_2408046A8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2408046A8()
{
  v21 = v0;
  v1 = v0[41];
  v2 = v0[34];
  v3 = v0[2];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20[0] = v2;
  sub_24080E18C(v3, sub_24080D080, 0, isUniquelyReferenced_nonNull_native, v20);
  if (v1)
  {
  }

  else
  {
    v6 = v0[34];

    v0[42] = v20[0];
    v7 = v0[32];
    v8 = sub_2408D4B10();
    v9 = sub_2408D4F20();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v20[0] = v11;
      *v10 = 136315138;
      type metadata accessor for AIDAServiceType(0);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
      sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
      v12 = sub_2408D4CC0();
      v14 = v13;

      v15 = sub_2408CC504(v12, v14, v20);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_2407CF000, v8, v9, "Finished signing in with results by service: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x245CC9F60](v11, -1, -1);
      MEMORY[0x245CC9F60](v10, -1, -1);
    }

    v16 = *(MEMORY[0x277CED870] + 4);
    v19 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
    v17 = swift_task_alloc();
    v0[43] = v17;
    *v17 = v0;
    v17[1] = sub_240804960;
    v18 = v0[6];

    return v19(sub_240805D04, 0);
  }
}

uint64_t sub_240804960()
{
  v2 = *(*v1 + 344);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_24080F7FC;
  }

  else
  {
    v3 = sub_240804A78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240804A78()
{
  v1 = v0[39];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[18];
  v13 = v0[17];
  v14 = v0[42];
  v8 = v0[12];
  v15 = v0[16];
  v16 = v0[13];
  v9 = v0[10];
  v17 = v0[9];
  v18 = v0[8];
  v10 = v0[5];

  (*(v6 + 8))(v5, v7);
  v3(v10, v8, v9);
  *(v10 + *(type metadata accessor for SignInReport(0) + 20)) = v14;

  v11 = v0[1];

  return v11();
}

uint64_t sub_240804BAC()
{
  v1 = v0[20];
  v2 = IdMSAccount.SRPResults.into()();
  v0[26] = v2;
  v3 = *(v2 + 16);
  v0[27] = v3;
  if (!v3)
  {
LABEL_4:
    v9 = v0[19];
    v8 = v0[20];
    v10 = v0[18];
    sub_24080D664();
    swift_allocError();
    *v11 = xmmword_2408D73A0;
    swift_willThrow();

    (*(v9 + 8))(v8, v10);
    v12 = v0[20];
    v13 = v0[16];
    v14 = v0[17];
    v16 = v0[12];
    v15 = v0[13];
    v18 = v0[8];
    v17 = v0[9];

    v19 = v0[1];

    return v19();
  }

  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];

  sub_2408CBA10(v6);
  if ((*(v5 + 48))(v6, 1, v4) == 1)
  {
    v7 = v0[9];

    sub_2407D9440(v7, &qword_27E507F00, &qword_2408D6D50);
    goto LABEL_4;
  }

  v22 = v0[11];
  v21 = v0[12];
  v23 = v0[9];
  v24 = v0[10];
  v25 = *(v22 + 32);
  v0[28] = v25;
  v0[29] = (v22 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v25(v21, v23, v24);
  v26 = *(MEMORY[0x277CED858] + 4);
  v30 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v27 = swift_task_alloc();
  v0[30] = v27;
  *v27 = v0;
  v27[1] = sub_2408034EC;
  v28 = v0[16];
  v29 = v0[6];

  return v30(v28);
}

uint64_t sub_240804E18()
{
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[18];
  v6 = v0[11];
  v5 = v0[12];
  v7 = v0[10];

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[35];
  v9 = v0[20];
  v11 = v0[16];
  v10 = v0[17];
  v13 = v0[12];
  v12 = v0[13];
  v15 = v0[8];
  v14 = v0[9];

  v16 = v0[1];

  return v16();
}

uint64_t sub_240804F18()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[26];
  v5 = v0[19];
  v4 = v0[20];
  v6 = v0[18];
  v8 = v0[11];
  v7 = v0[12];
  v9 = v0[10];

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);

  v10 = v0[41];
  v11 = v0[20];
  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[12];
  v14 = v0[13];
  v17 = v0[8];
  v16 = v0[9];

  v18 = v0[1];

  return v18();
}

void sub_240805030(void *a1, void *a2, char a3)
{
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506FF0);
  v7 = a1;
  v8 = a3 & 1;
  sub_2407D256C(a2, a3 & 1);
  v9 = sub_2408D4B10();
  v10 = sub_2408D4F20();

  sub_24080F17C(a2, a3 & 1);
  if (os_log_type_enabled(v9, v10))
  {
    v34 = a3;
    v11 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v37 = v33;
    *v11 = 136315394;
    type metadata accessor for AIDAServiceType(0);
    v12 = v7;
    v13 = sub_2408D4D40();
    v15 = sub_2408CC504(v13, v14, &v37);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    v35 = a2;
    v36 = v8;
    sub_2407D256C(a2, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
    v16 = sub_2408D4D40();
    v18 = sub_2408CC504(v16, v17, &v37);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2407CF000, v9, v10, "Running signInResultsHandler for service: %s, result: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v33, -1, -1);
    v19 = v11;
    a3 = v34;
    MEMORY[0x245CC9F60](v19, -1, -1);
  }

  if (a3)
  {
    v20 = v7;
    sub_2407D256C(a2, 1);
    v21 = sub_2408D4B10();
    v22 = sub_2408D4F30();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v35 = v24;
      *v23 = 136315394;
      v37 = v20;
      type metadata accessor for AIDAServiceType(0);
      v25 = v20;
      v26 = sub_2408D4D40();
      v28 = sub_2408CC504(v26, v27, &v35);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v37 = a2;
      v29 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      v30 = sub_2408D4D40();
      v32 = sub_2408CC504(v30, v31, &v35);

      *(v23 + 14) = v32;
      _os_log_impl(&dword_2407CF000, v21, v22, "Signing in required service: %s failed due to error: %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v24, -1, -1);
      MEMORY[0x245CC9F60](v23, -1, -1);
    }

    swift_willThrow();
  }
}

uint64_t sub_2408053B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_2408053DC, 0, 0);
}

uint64_t sub_2408053DC()
{
  v26 = v0;
  v1 = sub_2408D4B00();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  v0[7] = sub_2408D4AE0();
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v5 = v0[3];
  v4 = v0[4];
  v6 = sub_2408D4B20();
  __swift_project_value_buffer(v6, qword_27E506FF0);

  v7 = sub_2408D4B10();
  v8 = sub_2408D4F10();

  if (os_log_type_enabled(v7, v8))
  {
    v10 = v0[3];
    v9 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315394;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v13 = sub_2408D4EF0();
    v15 = sub_2408CC504(v13, v14, &v25);

    *(v11 + 4) = v15;
    *(v11 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v16 = sub_2408D4CC0();
    v18 = sub_2408CC504(v16, v17, &v25);

    *(v11 + 14) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Signing into desired services (%s) with SRP results: %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v12, -1, -1);
    MEMORY[0x245CC9F60](v11, -1, -1);
  }

  v19 = swift_task_alloc();
  v0[8] = v19;
  *v19 = v0;
  v19[1] = sub_2408056A8;
  v21 = v0[5];
  v20 = v0[6];
  v22 = v0[3];
  v23 = v0[4];

  return sub_240805DC8(v20, v22, v23, 0, 0);
}

uint64_t sub_2408056A8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_24080584C;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_2408057D0;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2408057D0()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = *(v0 + 80);
  sub_2408058BC(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24080584C()
{
  sub_2408058BC(*(v0 + 56));

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t sub_2408058BC(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136315138;
    sub_24080D61C(&qword_27E5071E8, 255, MEMORY[0x277CE4660]);
    v7 = sub_2408D5220();
    v9 = sub_2408CC504(v7, v8, &v13);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2407CF000, v3, v4, "Completing OS transaction for background-sign-in: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  return MEMORY[0x245CC8F30](v10, v11);
}

uint64_t sub_240805A88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_2407EEE04(a3, v24 - v10, &unk_27E506BD0, &qword_2408D7AB0);
  v12 = sub_2408D4E60();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2407D9440(v11, &unk_27E506BD0, &qword_2408D7AB0);
  }

  else
  {
    sub_2408D4E50();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_2408D4E00();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_2408D4D50() + 32;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D8, &qword_2408D7630);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071D8, &qword_2408D7630);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_240805D04()
{
  v0 = sub_2408D3BA0();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  (*(v3 + 104))(&v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CED4F0]);
  return sub_2408D3BC0();
}

uint64_t sub_240805DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[28] = a5;
  v6[29] = v5;
  v6[26] = a3;
  v6[27] = a4;
  v6[24] = a1;
  v6[25] = a2;
  v7 = sub_2408D4B20();
  v6[30] = v7;
  v8 = *(v7 - 8);
  v6[31] = v8;
  v9 = *(v8 + 64) + 15;
  v6[32] = swift_task_alloc();
  v6[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240805E9C, 0, 0);
}

uint64_t sub_240805E9C()
{
  v68 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  *(v0 + 272) = __swift_project_value_buffer(*(v0 + 240), qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 200);
    v5 = *(v0 + 208);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v67 = v8;
    *v7 = 136315394;
    type metadata accessor for AIDAServiceType(0);
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v9 = sub_2408D4EF0();
    v11 = sub_2408CC504(v9, v10, &v67);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v12 = sub_2408D4CC0();
    v14 = sub_2408CC504(v12, v13, &v67);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_2407CF000, v3, v4, "Signing in to services (%s) with results: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v8, -1, -1);
    MEMORY[0x245CC9F60](v7, -1, -1);
  }

  v15 = *(v0 + 200);
  v16 = sub_2407F6370(MEMORY[0x277D84F90]);
  v17 = *MEMORY[0x277CED1A0];
  *(v0 + 280) = v16;
  *(v0 + 288) = v17;
  if (sub_2408764B4(v17, v15))
  {
    v18 = *(v0 + 264);
    sub_2408D4910();
    v19 = sub_2408D4B10();
    v20 = sub_2408D4F20();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_2407CF000, v19, v20, "Preparing to sign into iCloud", v21, 2u);
      MEMORY[0x245CC9F60](v21, -1, -1);
    }

    v22 = *(v0 + 264);
    v23 = *(v0 + 240);
    v24 = *(v0 + 248);

    (*(v24 + 8))(v22, v23);
    v25 = swift_task_alloc();
    *(v0 + 296) = v25;
    *v25 = v0;
    v25[1] = sub_2408065FC;
    v26 = *(v0 + 208);
    v27 = *(v0 + 192);

    return sub_24080D964(v27, v26);
  }

  else
  {
    v29 = *MEMORY[0x277CED1C0];
    if (sub_2408764B4(*MEMORY[0x277CED1C0], *(v0 + 200)))
    {
      v30 = *(v0 + 256);
      sub_2408D4910();
      v31 = sub_2408D4B10();
      v32 = sub_2408D4F20();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_2407CF000, v31, v32, "Preparing to sign into iTunes", v33, 2u);
        MEMORY[0x245CC9F60](v33, -1, -1);
      }

      v35 = *(v0 + 248);
      v34 = *(v0 + 256);
      v36 = *(v0 + 240);

      (*(v35 + 8))(v34, v36);
      v37 = sub_24080DFB4();
      *(v0 + 40) = sub_2407EEDBC(0, &qword_27E5071A8, 0x277CEE698);
      *(v0 + 16) = v37;
      sub_2407F6498((v0 + 16), (v0 + 48));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v67 = v16;
      sub_2408CA588((v0 + 48), v29, isUniquelyReferenced_nonNull_native);
    }

    v39 = *(v0 + 200);
    v40 = *(v0 + 208);
    v41 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
    *(v0 + 312) = v41;
    [v41 setOperationUIPermissions_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    v42 = sub_2408D4C90();
    [v41 setAuthenticationResults_];

    type metadata accessor for AIDAServiceType(0);
    *(v0 + 320) = v43;
    sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
    v44 = sub_2408D4C90();

    [v41 setSignInContexts_];

    v45 = sub_2407F5E5C(MEMORY[0x277D84F90]);
    v46 = v45;
    v47 = *(v39 + 32);
    *(v0 + 153) = v47;
    v48 = -1;
    v49 = -1 << v47;
    if (-(-1 << v47) < 64)
    {
      v48 = ~(-1 << -v49);
    }

    v50 = v48 & *(v39 + 56);
    *(v0 + 328) = 0;
    *(v0 + 336) = v45;

    if (v50)
    {
      v51 = 0;
      v52 = *(v0 + 200);
LABEL_22:
      *(v0 + 344) = v50;
      *(v0 + 352) = v51;
      v54 = *(v0 + 312);
      v55 = *(v0 + 232);
      v56 = *(*(v52 + 48) + ((v51 << 9) | (8 * __clz(__rbit64(v50)))));
      *(v0 + 360) = v56;
      v57 = swift_task_alloc();
      *(v0 + 368) = v57;
      v57[2] = v56;
      v57[3] = v54;
      v57[4] = v55;
      v58 = *(MEMORY[0x277CEDE70] + 4);
      v59 = v56;
      v60 = swift_task_alloc();
      *(v0 + 376) = v60;
      *v60 = v0;
      v60[1] = sub_240806B74;
      v61 = MEMORY[0x277D839B0];

      return MEMORY[0x2821400E8](v0 + 144, &unk_2408D7608, v57, v61);
    }

    else
    {
      v53 = 0;
      while (((63 - v49) >> 6) - 1 != v53)
      {
        v51 = v53 + 1;
        v52 = *(v0 + 200);
        v50 = *(v52 + 8 * v53++ + 64);
        if (v50)
        {
          goto LABEL_22;
        }
      }

      v62 = *(v0 + 312);
      v64 = *(v0 + 256);
      v63 = *(v0 + 264);
      v65 = *(v0 + 200);

      v66 = *(v0 + 8);

      return v66(v46);
    }
  }
}

uint64_t sub_2408065FC(uint64_t a1)
{
  v2 = *(*v1 + 296);
  v4 = *v1;
  *(*v1 + 304) = a1;

  return MEMORY[0x2822009F8](sub_2408066FC, 0, 0);
}

uint64_t sub_2408066FC()
{
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v4 = type metadata accessor for CloudSignInContext();
  *(v0 + 80) = v1;
  *(v0 + 104) = v4;
  sub_2407F6498((v0 + 80), (v0 + 112));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2408CA588((v0 + 112), v2, isUniquelyReferenced_nonNull_native);
  v6 = *MEMORY[0x277CED1C0];
  if (sub_2408764B4(*MEMORY[0x277CED1C0], *(v0 + 200)))
  {
    v7 = (v0 + 48);
    v8 = *(v0 + 256);
    sub_2408D4910();
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2407CF000, v9, v10, "Preparing to sign into iTunes", v11, 2u);
      MEMORY[0x245CC9F60](v11, -1, -1);
    }

    v13 = *(v0 + 248);
    v12 = *(v0 + 256);
    v14 = *(v0 + 240);

    (*(v13 + 8))(v12, v14);
    v15 = sub_24080DFB4();
    *(v0 + 40) = sub_2407EEDBC(0, &qword_27E5071A8, 0x277CEE698);
    *(v0 + 16) = v15;
    sub_2407F6498((v0 + 16), v7);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_2408CA588(v7, v6, v16);
  }

  v17 = *(v0 + 200);
  v18 = *(v0 + 208);
  v19 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
  *(v0 + 312) = v19;
  [v19 setOperationUIPermissions_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
  v20 = sub_2408D4C90();
  [v19 setAuthenticationResults_];

  type metadata accessor for AIDAServiceType(0);
  *(v0 + 320) = v21;
  sub_24080D61C(&qword_28130EF80, 255, type metadata accessor for AIDAServiceType);
  v22 = sub_2408D4C90();

  [v19 setSignInContexts_];

  v23 = sub_2407F5E5C(MEMORY[0x277D84F90]);
  v24 = v23;
  v25 = *(v17 + 32);
  *(v0 + 153) = v25;
  v26 = -1;
  v27 = -1 << v25;
  if (-(-1 << v25) < 64)
  {
    v26 = ~(-1 << -v27);
  }

  v28 = v26 & *(v17 + 56);
  *(v0 + 328) = 0;
  *(v0 + 336) = v23;

  if (v28)
  {
    v29 = 0;
    v30 = *(v0 + 200);
LABEL_12:
    *(v0 + 344) = v28;
    *(v0 + 352) = v29;
    v32 = *(v0 + 312);
    v33 = *(v0 + 232);
    v34 = *(*(v30 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
    *(v0 + 360) = v34;
    v35 = swift_task_alloc();
    *(v0 + 368) = v35;
    v35[2] = v34;
    v35[3] = v32;
    v35[4] = v33;
    v36 = *(MEMORY[0x277CEDE70] + 4);
    v37 = v34;
    v38 = swift_task_alloc();
    *(v0 + 376) = v38;
    *v38 = v0;
    v38[1] = sub_240806B74;
    v39 = MEMORY[0x277D839B0];

    return MEMORY[0x2821400E8](v0 + 144, &unk_2408D7608, v35, v39);
  }

  else
  {
    v31 = 0;
    while (((63 - v27) >> 6) - 1 != v31)
    {
      v29 = v31 + 1;
      v30 = *(v0 + 200);
      v28 = *(v30 + 8 * v31++ + 64);
      if (v28)
      {
        goto LABEL_12;
      }
    }

    v40 = *(v0 + 312);
    v42 = *(v0 + 256);
    v41 = *(v0 + 264);
    v43 = *(v0 + 200);

    v44 = *(v0 + 8);

    return v44(v24);
  }
}

uint64_t sub_240806B74()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_240806C8C, 0, 0);
}

uint64_t sub_240806C8C()
{
  v74 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 216);
  v3 = *(v0 + 152);
  if (v2)
  {
    v4 = *(v0 + 328);
    v5 = *(v0 + 224);
    v2(*(v0 + 360), *(v0 + 144), *(v0 + 152));
    if (v4)
    {
      v6 = *(v0 + 360);
      v7 = *(v0 + 336);
      v8 = *(v0 + 312);
      v9 = *(v0 + 256);
      v10 = *(v0 + 264);
      v11 = *(v0 + 200);

      sub_24080F17C(v1, v3);

      v12 = *(v0 + 8);

      return v12();
    }

    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 328);
  }

  v15 = *(v0 + 272);
  v16 = *(v0 + 360);
  sub_2407D256C(v1, v3);
  v17 = sub_2408D4B10();
  v18 = sub_2408D4F20();

  sub_24080F17C(v1, v3);
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 360);
    v72 = v14;
    v20 = *(v0 + 320);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v73[0] = v22;
    *v21 = 136315394;
    *(v0 + 184) = v19;
    v23 = v19;
    v24 = sub_2408D4D40();
    v26 = sub_2408CC504(v24, v25, v73);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    *(v0 + 160) = v1;
    *(v0 + 168) = v3;
    sub_2407D256C(v1, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5071A0, &qword_2408D7610);
    v27 = sub_2408D4D40();
    v29 = sub_2408CC504(v27, v28, v73);
    v14 = v72;

    *(v21 + 14) = v29;
    _os_log_impl(&dword_2407CF000, v17, v18, "Finished signing into service (%s) with result: %s", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  v30 = *(v0 + 360);
  v31 = *(v0 + 336);
  sub_2407D256C(v1, v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 176) = v31;
  v33 = sub_2408CCC7C(v30);
  v35 = *(v31 + 16);
  v36 = (v34 & 1) == 0;
  v37 = __OFADD__(v35, v36);
  v38 = v35 + v36;
  if (v37)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    v71 = v33;
    sub_2408C6540();
    v33 = v71;
    goto LABEL_17;
  }

  v18 = v34;
  if (*(*(v0 + 336) + 24) >= v38)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_17;
    }

    goto LABEL_35;
  }

  v39 = *(v0 + 360);
  sub_2408C94F8(v38, isUniquelyReferenced_nonNull_native);
  v40 = *(v0 + 176);
  v33 = sub_2408CCC7C(v39);
  if ((v18 & 1) != (v41 & 1))
  {
    v42 = *(v0 + 320);

    return sub_2408D5280();
  }

LABEL_17:
  v43 = *(v0 + 176);
  v44 = *(v0 + 360);
  if (v18)
  {
    v45 = v43[7] + 16 * v33;
    v46 = *v45;
    v47 = *(v45 + 8);
    *v45 = v1;
    *(v45 + 8) = v3;
    sub_24080F17C(v46, v47);

    sub_24080F17C(v1, v3);
  }

  else
  {
    v43[(v33 >> 6) + 8] |= 1 << v33;
    *(v43[6] + 8 * v33) = v44;
    v48 = v43[7] + 16 * v33;
    *v48 = v1;
    *(v48 + 8) = v3;
    sub_24080F17C(v1, v3);
    v52 = v43[2];
    v37 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v37)
    {
      __break(1u);
      return MEMORY[0x2821400E8](v33, v49, v50, v51);
    }

    v43[2] = v53;
  }

  v55 = *(v0 + 344);
  v54 = *(v0 + 352);
  *(v0 + 328) = v14;
  *(v0 + 336) = v43;
  v56 = (v55 - 1) & v55;
  if (v56)
  {
    v57 = *(v0 + 200);
LABEL_27:
    *(v0 + 344) = v56;
    *(v0 + 352) = v54;
    v59 = *(v0 + 312);
    v60 = *(v0 + 232);
    v61 = *(*(v57 + 48) + ((v54 << 9) | (8 * __clz(__rbit64(v56)))));
    *(v0 + 360) = v61;
    v62 = swift_task_alloc();
    *(v0 + 368) = v62;
    v62[2] = v61;
    v62[3] = v59;
    v62[4] = v60;
    v63 = *(MEMORY[0x277CEDE70] + 4);
    v64 = v61;
    v65 = swift_task_alloc();
    *(v0 + 376) = v65;
    *v65 = v0;
    v65[1] = sub_240806B74;
    v51 = MEMORY[0x277D839B0];
    v49 = &unk_2408D7608;
    v33 = v0 + 144;
    v50 = v62;

    return MEMORY[0x2821400E8](v33, v49, v50, v51);
  }

  while (1)
  {
    v58 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v58 >= (((1 << *(v0 + 153)) + 63) >> 6))
    {
      break;
    }

    v57 = *(v0 + 200);
    v56 = *(v57 + 8 * v58 + 56);
    ++v54;
    if (v56)
    {
      v54 = v58;
      goto LABEL_27;
    }
  }

  v66 = *(v0 + 312);
  v68 = *(v0 + 256);
  v67 = *(v0 + 264);
  v69 = *(v0 + 200);

  v70 = *(v0 + 8);

  return v70(v43);
}

uint64_t sub_240807214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[18] = a1;
  v4[19] = a2;
  return MEMORY[0x2822009F8](sub_240807238, 0, 0);
}

uint64_t sub_240807238()
{
  v26 = v0;
  v1 = v0;
  v2 = v0 + 10;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v3 = v1[19];
  v4 = v1[20];
  v5 = sub_2408D4B20();
  __swift_project_value_buffer(v5, qword_27E506FF0);
  v6 = v3;
  v7 = v4;
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = v1[19];
    v11 = v1[20];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v14;
    *v12 = 136315394;
    v1[10] = v10;
    type metadata accessor for AIDAServiceType(0);
    v15 = v10;
    v16 = sub_2408D4D40();
    v18 = sub_2408CC504(v16, v17, &v25);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v11;
    *v13 = v11;
    v19 = v11;
    _os_log_impl(&dword_2407CF000, v8, v9, "Signing into service (%s) with context: %@", v12, 0x16u);
    sub_2407D9440(v13, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  v20 = v1[20];
  v21 = v1[19];
  v22 = *(v1[21] + 64);
  v1[2] = v1;
  v1[7] = v1 + 23;
  v1[3] = sub_24080750C;
  v23 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E5071C0, &qword_2408D6CC0);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_24085F49C;
  v1[13] = &block_descriptor_1;
  v1[14] = v23;
  [v22 signInService:v21 withContext:v20 completion:v2];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_24080750C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_240807640;
  }

  else
  {
    v3 = sub_24080761C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_240807640()
{
  v1 = *(v0 + 176);
  swift_willThrow();
  v2 = *(v0 + 8);
  v3 = *(v0 + 176);

  return v2();
}

uint64_t sub_2408076AC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FD8, &qword_2408D7380);
    v2 = sub_2408D51D0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v33[0] = *v14;
    *(&v33[0] + 1) = v15;

    swift_unknownObjectRetain();
    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507190, &qword_2408D75F8);
    swift_dynamicCast();
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_2407F6498(&v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_2407F6498(v32, v33);
    v17 = *(v2 + 40);
    result = sub_2408D50B0();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v18) >> 6;
      while (++v20 != v22 || (v21 & 1) == 0)
      {
        v23 = v20 == v22;
        if (v20 == v22)
        {
          v20 = 0;
        }

        v21 |= v23;
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_2407F6498(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_240807978(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_2408D3970();
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507100, &unk_2408D75C0) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v2[11] = v7;
  v8 = *(v7 - 8);
  v2[12] = v8;
  v9 = *(v8 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v10 = sub_2408D3630();
  v2[18] = v10;
  v11 = *(v10 - 8);
  v2[19] = v11;
  v12 = *(v11 + 64) + 15;
  v2[20] = swift_task_alloc();
  v13 = sub_2408D3C20();
  v2[21] = v13;
  v14 = *(v13 - 8);
  v2[22] = v14;
  v15 = *(v14 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240807BD8, 0, 0);
}

uint64_t sub_240807BD8()
{
  v18 = v0;
  if (qword_27E506928 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = sub_2408D4B20();
  v0[24] = __swift_project_value_buffer(v2, qword_27E506FF0);

  v3 = sub_2408D4B10();
  v4 = sub_2408D4F20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[2] = v5;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v8 = sub_2408D4D40();
    v10 = sub_2408CC504(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finding eligible accounts for model: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x245CC9F60](v7, -1, -1);
    MEMORY[0x245CC9F60](v6, -1, -1);
  }

  v11 = *(MEMORY[0x277CED858] + 4);
  v16 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v12 = swift_task_alloc();
  v0[25] = v12;
  *v12 = v0;
  v12[1] = sub_240807DE8;
  v13 = v0[20];
  v14 = v0[3];

  return v16(v13);
}

uint64_t sub_240807DE8()
{
  v1 = *(*v0 + 200);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_240807EE4, 0, 0);
}

uint64_t sub_240807EE4()
{
  v122 = v0;
  v2 = v0[23];
  v4 = v0[19];
  v3 = v0[20];
  v5 = v0[18];
  sub_2408D3540();
  (*(v4 + 8))(v3, v5);
  v6 = sub_2408D3B20();
  v7 = sub_2408D3AE0();
  sub_24082A3C4(v7, v6);
  v9 = v8;
  v10 = v8 + 56;
  v11 = -1;
  v12 = -1 << *(v8 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v8 + 56);
  v14 = (63 - v12) >> 6;

  v15 = 0;
  v16 = MEMORY[0x277D84F90];
  while (v13)
  {
LABEL_11:
    v19 = v114[4];
    v119 = *(*(v9 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v13)))));
    v1 = v119;
    sub_2408089C8(&v119, v19, &v120);

    if (v121)
    {
      v116 = v121;
      v1 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_240869AE0(0, v16[2] + 1, 1, v16);
      }

      v21 = v16[2];
      v20 = v16[3];
      v22 = v116;
      if (v21 >= v20 >> 1)
      {
        v23 = sub_240869AE0((v20 > 1), v21 + 1, 1, v16);
        v22 = v116;
        v16 = v23;
      }

      v16[2] = v21 + 1;
      v17 = &v16[3 * v21];
      v17[4] = v1;
      *(v17 + 5) = v22;
    }

    v13 &= v13 - 1;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_52;
    }

    if (v18 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v18);
    ++v15;
    if (v13)
    {
      v15 = v18;
      goto LABEL_11;
    }
  }

  if (v16[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507110, &qword_2408D75D0);
    v24 = sub_2408D51D0();
  }

  else
  {
    v24 = MEMORY[0x277D84F98];
  }

  v1 = v114;
  v120 = v24;
  sub_24080D0C8(v16, 1, &v120);
  v25 = v114[24];

  v26 = v120;

  v27 = sub_2408D4B10();
  v28 = sub_2408D4F20();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v120 = v30;
    *v29 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507120, &qword_2408D75D8);
    v31 = sub_2408D4CC0();
    v33 = sub_2408CC504(v31, v32, &v120);

    *(v29 + 4) = v33;
    v1 = v114;
    _os_log_impl(&dword_2407CF000, v27, v28, "Discovered eligible accounts: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x245CC9F60](v30, -1, -1);
    MEMORY[0x245CC9F60](v29, -1, -1);
  }

  v34 = v1[12];
  v36 = v1[5];
  v35 = v1[6];
  v37 = v1[4];
  v38 = swift_allocObject();
  *(v38 + 16) = sub_24080F058;
  *(v38 + 24) = v37;
  v39 = sub_24080D61C(&qword_27E507118, 255, MEMORY[0x277CED3F8]);
  swift_retain_n();
  v40 = MEMORY[0x245CC9340](0, v36, v39);
  v41 = 0;
  v43 = v26 + 64;
  v42 = *(v26 + 64);
  v44 = -1 << *(v26 + 32);
  v120 = v40;
  if (-v44 < 64)
  {
    v45 = ~(-1 << -v44);
  }

  else
  {
    v45 = -1;
  }

  v46 = v45 & v42;
  v107 = (63 - v44) >> 6;
  v47 = (v35 + 48);
  v112 = (v34 + 56);
  v113 = (v35 + 32);
  v110 = (v35 + 56);
  v111 = (v34 + 48);
  v109 = (v35 + 8);
  v117 = (v35 + 48);
  if ((v45 & v42) != 0)
  {
    goto LABEL_36;
  }

LABEL_27:
  v48 = v41;
  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v107)
    {
      v46 = 0;
      if (v107 <= v41 + 1)
      {
        v50 = v41 + 1;
      }

      else
      {
        v50 = v107;
      }

      v49 = v50 - 1;
      v51 = 1;
      goto LABEL_39;
    }

    v46 = *(v43 + 8 * v49);
    ++v48;
    if (v46)
    {
      while (1)
      {
        v53 = v1[15];
        v52 = v1[16];
        v54 = v1[4];
        v55 = v1[5];
        v56 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v57 = v56 | (v49 << 6);
        v58 = (*(v26 + 48) + 16 * v57);
        v59 = *v58;
        v60 = v58[1];
        v61 = *(*(v26 + 56) + 8 * v57);

        sub_240808F44(v61, v54, v53);
        v1 = v114;

        sub_24080F060(v53, v52, &unk_27E506A20, &unk_2408D67F0);
        v47 = v117;
        v62 = (*v117)(v52, 1, v55);
        v63 = v114[16];
        if (v62 == 1)
        {
          sub_2407D9440(v63, &unk_27E506A20, &unk_2408D67F0);
          v41 = v49;
          v43 = v26 + 64;
          if (!v46)
          {
            goto LABEL_27;
          }
        }

        else
        {
          sub_24080F060(v63, v114[10], &unk_27E506A20, &unk_2408D67F0);
          v51 = 0;
LABEL_39:
          v64 = v1[10];
          v65 = v1[11];
          v66 = v1[9];
          (*v112)(v64, v51, 1, v65);
          sub_24080F060(v64, v66, &unk_27E507100, &unk_2408D75C0);
          if ((*v111)(v66, 1, v65) == 1)
          {
            (*v110)(v1[17], 1, 1, v1[5]);
            v67 = *v47;
          }

          else
          {
            v68 = v1[13];
            v69 = v1[14];
            v108 = v1[5];
            sub_24080F060(v1[9], v69, &unk_27E506A20, &unk_2408D67F0);
            sub_2407EEE04(v69, v68, &unk_27E506A20, &unk_2408D67F0);
            v67 = *v47;
            if ((*v47)(v68, 1, v108) == 1)
            {
              goto LABEL_53;
            }

            v70 = v1[17];
            v71 = v1[14];
            v72 = v1[5];
            (*v113)(v70, v1[13], v72);
            sub_2407D9440(v71, &unk_27E506A20, &unk_2408D67F0);
            (*v110)(v70, 0, 1, v72);
          }

          v73 = v1[17];
          v74 = v1[5];
          if (v67(v73, 1, v74) == 1)
          {
            v77 = v1[24];
            v78 = v1[4];

            sub_2407D17F4();

            v79 = v120;

            v80 = sub_2408D4B10();
            v81 = sub_2408D4F10();

            v82 = os_log_type_enabled(v80, v81);
            v83 = v1[22];
            v84 = v1[23];
            v85 = v1[21];
            v118 = v79;
            if (v82)
            {
              v86 = v1[5];
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              v120 = v88;
              *v87 = 136315138;
              v89 = sub_2408D4EF0();
              v91 = sub_2408CC504(v89, v90, &v120);

              *(v87 + 4) = v91;
              _os_log_impl(&dword_2407CF000, v80, v81, "Discovered IdMS accounts: %s", v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v88);
              v92 = v88;
              v1 = v114;
              MEMORY[0x245CC9F60](v92, -1, -1);
              MEMORY[0x245CC9F60](v87, -1, -1);
            }

            (*(v83 + 8))(v84, v85);
            v93 = v1[23];
            v94 = v1[20];
            v96 = v1[16];
            v95 = v1[17];
            v98 = v1[14];
            v97 = v1[15];
            v99 = v1[13];
            v100 = v1;
            v101 = v1[10];
            v103 = v100[8];
            v102 = v100[9];
            v115 = v100[7];

            v104 = v100[1];

            return v104(v118);
          }

          v76 = v1[7];
          v75 = v1[8];
          (*v113)(v76, v73, v74);
          sub_24086A1EC(v75, v76);
          (*v109)(v75, v74);
          v41 = v49;
          v43 = v26 + 64;
          v47 = v117;
          if (!v46)
          {
            goto LABEL_27;
          }
        }

LABEL_36:
        v49 = v41;
      }
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  v106 = v1[4];

  __break(1u);
  return result;
}