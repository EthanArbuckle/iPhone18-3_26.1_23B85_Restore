uint64_t sub_2186B2418(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 440);
  v6 = *v2;
  v4[56] = v1;

  v7 = v4[54];
  if (v1)
  {
    v8 = v4[53];
    v9 = v4[49];

    v10 = sub_2186B34E0;
  }

  else
  {

    v4[57] = a1;
    v10 = sub_2186B2578;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_2186B2578()
{
  v1 = *(v0 + 456);
  v101 = *(v0 + 448);
  while (1)
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 120);
    sub_2186B76CC();
    v4 = sub_2186B75AC();
    v5 = *(v4 - 8);
    if ((*(v5 + 48))(v3, 1, v4) != 1)
    {
      v6 = *(v0 + 472);
      v7 = *(v0 + 112);
      sub_2186A7D78(*(v0 + 120), v7, &qword_27CC07290, &unk_2186B9770);
      v8 = (*(v5 + 88))(v7, v4);
      if (v8 != v6)
      {
        if (v8 == *(v0 + 476) || v8 == *(v0 + 480))
        {
          v10 = 2;
          goto LABEL_11;
        }

        (*(v5 + 8))(*(v0 + 112), v4);
      }
    }

    v10 = 1;
LABEL_11:
    v110 = v10;
    v11 = *(v0 + 200);
    sub_21867F0B8(*(v0 + 120), &qword_27CC07290, &unk_2186B9770);
    sub_2186B771C();
    sub_2186B774C();
    v13 = v12;
    sub_2186B772C();
    sub_2186B76AC();
    v15 = v14;
    v108 = sub_2186B76BC();
    v16 = sub_2186B777C();
    v17 = *(v16 + 16);
    if (v17)
    {
      v102 = v15;
      v18 = v1;
      *(v0 + 24) = MEMORY[0x277D84F90];
      sub_2186B6BD8(0, v17, 0);
      v19 = *(v0 + 24);
      v20 = 32;
      do
      {
        v21 = *(v0 + 88);
        v22 = *(v16 + v20);

        sub_2186B38F0(v23, v21);

        *(v0 + 24) = v19;
        v25 = *(v19 + 16);
        v24 = *(v19 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_2186B6BD8(v24 > 1, v25 + 1, 1);
          v19 = *(v0 + 24);
        }

        v27 = *(v0 + 80);
        v26 = *(v0 + 88);
        v28 = *(v0 + 72);
        *(v19 + 16) = v25 + 1;
        (*(v27 + 32))(v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, v26, v28);
        v20 += 8;
        --v17;
      }

      while (v17);

      v1 = v18;
      v15 = v102;
    }

    else
    {
    }

    v29 = *(v0 + 200);
    v30 = *(v0 + 96);
    sub_2186B773C();
    v31 = sub_2186B78FC();
    v32 = *(v31 - 8);
    v33 = (*(v32 + 48))(v30, 1, v31);
    v34 = *(v0 + 96);
    v35 = *(v0 + 104);
    if (v33 == 1)
    {
      sub_21867F0B8(*(v0 + 96), &qword_27CC07198, &qword_2186B94D8);
      v36 = sub_2186B6FAC();
      (*(*(v36 - 8) + 56))(v35, 1, 1, v36);
      v37 = 0;
    }

    else
    {
      sub_2186AF21C(*(v0 + 104));
      (*(v32 + 8))(v34, v31);
      v38 = sub_2186B6FAC();
      v39 = *(v38 - 8);
      v37 = 0;
      if ((*(v39 + 48))(v35, 1, v38) != 1)
      {
        v40 = *(v0 + 104);
        v37 = sub_2186B6F8C();
        (*(v39 + 8))(v40, v38);
      }
    }

    v41 = v1;
    v42 = sub_2186B79FC();

    if (v13)
    {
      v43 = sub_2186B79FC();
    }

    else
    {
      v43 = 0;
    }

    v44 = sub_2186B79FC();

    if (v15)
    {
      v45 = sub_2186B79FC();
    }

    else
    {
      v45 = 0;
    }

    v46 = *(v0 + 72);
    v47 = objc_allocWithZone(GKChallengeDefinition);
    v48 = sub_2186B7A9C();

    [v47 initWithIdentifier:v42 groupIdentifier:v43 title:v44 details:v45 isRepeatable:v108 & 1 durationOptions:v48 leaderboard:v41 imageUrl:v37 releaseState:v110];

    MEMORY[0x21CEB10A0]();
    if (*((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v78 = *((*(v0 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_2186B7ACC();
    }

    v49 = *(v0 + 400);
    v51 = *(v0 + 192);
    v50 = *(v0 + 200);
    v52 = *(v0 + 184);
    v53 = *(v0 + 416) + 1;
    sub_2186B7AEC();

    result = (*(v51 + 8))(v50, v52);
    v55 = *(v0 + 16);
    if (v53 == v49)
    {
      break;
    }

    v56 = *(v0 + 416) + 1;
    *(v0 + 416) = v56;
    *(v0 + 424) = v55;
    v57 = *(v0 + 392);
    if (v56 >= *(v57 + 16))
    {
      __break(1u);
      return result;
    }

    v58 = *(v0 + 468);
    v59 = *(v0 + 176);
    v61 = *(v0 + 160);
    v60 = *(v0 + 168);
    v62 = *(v0 + 152);
    (*(*(v0 + 192) + 16))(*(v0 + 200), v57 + ((*(v0 + 464) + 32) & ~*(v0 + 464)) + *(*(v0 + 192) + 72) * v56, *(v0 + 184));
    sub_2186B775C();
    (*(v61 + 16))(v60, v59, v62);
    if ((*(v61 + 88))(v60, v62) == v58)
    {
      v66 = *(v0 + 168);
      v67 = *(v0 + 144);
      v68 = *(v0 + 128);
      v69 = *(v0 + 136);
      (*(*(v0 + 160) + 96))(v66, *(v0 + 152));
      (*(v69 + 32))(v67, v66, v68);
      v70 = sub_2186B783C();
      *(v0 + 432) = v71;
      if (!v101)
      {
        v92 = *(v0 + 176);
        v93 = *(v0 + 152);
        v94 = *(v0 + 160);
        v95 = (*(v0 + 40) + *(v0 + 408));
        v96 = v70;
        v97 = v71;
        (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));
        (*(v94 + 8))(v92, v93);
        v98 = v95[1];
        v112 = (*v95 + **v95);
        v99 = (*v95)[1];
        v100 = swift_task_alloc();
        *(v0 + 440) = v100;
        *v100 = v0;
        v100[1] = sub_2186B2418;

        return v112(v96, v97);
      }

      v72 = *(v0 + 176);
      v73 = *(v0 + 152);
      v74 = *(v0 + 160);
      v75 = *(v0 + 136);
      v76 = *(v0 + 144);
      v77 = *(v0 + 128);

      (*(v75 + 8))(v76, v77);
      (*(v74 + 8))(v72, v73);
      v101 = 0;
    }

    else
    {
      v63 = *(v0 + 168);
      v64 = *(v0 + 152);
      v65 = *(*(v0 + 160) + 8);
      v65(*(v0 + 176), v64);
      v65(v63, v64);
    }

    v1 = 0;
  }

  v79 = *(v0 + 392);

  v80 = *(v0 + 32);
  (*(*(v0 + 280) + 8))(*(v0 + 304), *(v0 + 272));
  *v80 = v55;
  v82 = *(v0 + 296);
  v81 = *(v0 + 304);
  v83 = *(v0 + 264);
  v85 = *(v0 + 232);
  v84 = *(v0 + 240);
  v86 = *(v0 + 224);
  v87 = *(v0 + 200);
  v88 = *(v0 + 208);
  v90 = *(v0 + 168);
  v89 = *(v0 + 176);
  v103 = *(v0 + 144);
  v104 = *(v0 + 120);
  v105 = *(v0 + 112);
  v106 = *(v0 + 104);
  v107 = *(v0 + 96);
  v109 = *(v0 + 88);
  v111 = *(v0 + 64);

  v91 = *(v0 + 8);

  return v91();
}

uint64_t sub_2186B2ED0()
{
  v1 = v0[42];
  v2 = v0[39];
  v4 = v0[7];
  v3 = v0[8];
  v5 = v0[6];

  v6 = sub_2186AF0B0();
  (*(v4 + 16))(v3, v6, v5);
  v7 = v1;
  v8 = sub_2186B792C();
  v9 = sub_2186B7BEC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[42];
  if (v10)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v11;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_21867D000, v8, v9, "Failed to refresh challenge definitions: %@", v12, 0xCu);
    sub_21867F0B8(v13, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v13, -1, -1);
    MEMORY[0x21CEB1A70](v12, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v16 = v0[38];
  v17 = v0[39];
  v19 = v0[36];
  v18 = v0[37];
  v20 = v0[34];
  v21 = v0[35];
  v33 = v0[33];
  v22 = v0[30];
  v23 = v0[5];
  v24 = sub_2186B789C();
  (*(*(v24 - 8) + 56))(v22, 1, 1, v24);
  (*(v21 + 16))(v18, v16, v20);
  v25 = (*(v21 + 80) + 24) & ~*(v21 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  (*(v21 + 32))(v26 + v25, v18, v20);
  *(v26 + ((v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v17;
  v27 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07280, &unk_2186B9758);
  sub_2186B6B18(&qword_27CC072B0);
  sub_2186B6B18(&qword_27CC072B8);
  sub_2186B762C();
  v28 = *(MEMORY[0x277D0D0B0] + 4);
  v29 = swift_task_alloc();
  v0[43] = v29;
  *v29 = v0;
  v29[1] = sub_2186B13C4;
  v30 = v0[33];
  v31 = v0[31];

  return MEMORY[0x282164EA8](v31);
}

uint64_t sub_2186B3228()
{
  (*(v0[35] + 8))(v0[38], v0[34]);
  v20 = v0[45];
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186B3384()
{
  (*(v0[35] + 8))(v0[38], v0[34]);
  v20 = v0[48];
  v2 = v0[37];
  v1 = v0[38];
  v3 = v0[33];
  v5 = v0[29];
  v4 = v0[30];
  v6 = v0[28];
  v8 = v0[25];
  v7 = v0[26];
  v10 = v0[21];
  v9 = v0[22];
  v13 = v0[18];
  v14 = v0[15];
  v15 = v0[14];
  v16 = v0[13];
  v17 = v0[12];
  v18 = v0[11];
  v19 = v0[8];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186B34E0()
{
  v1 = v0[38];
  v2 = v0[34];
  v3 = v0[35];
  (*(v0[24] + 8))(v0[25], v0[23]);
  (*(v3 + 8))(v1, v2);
  v23 = v0[56];
  v5 = v0[37];
  v4 = v0[38];
  v6 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  v11 = v0[25];
  v10 = v0[26];
  v13 = v0[21];
  v12 = v0[22];
  v16 = v0[18];
  v17 = v0[15];
  v18 = v0[14];
  v19 = v0[13];
  v20 = v0[12];
  v21 = v0[11];
  v22 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_2186B365C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2186818F8;

  return sub_2186B090C(a1, v4);
}

uint64_t sub_2186B36FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2186B3724, 0, 0);
}

uint64_t sub_2186B3724()
{
  v1 = v0[6];
  v2 = (v0[4] + OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service);
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_0(v2, v3);
  v5 = *(MEMORY[0x277D0CBE0] + 4);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2186B37FC;
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return MEMORY[0x2821648C0](v8, v7, v1, v9, v3, v4);
}

uint64_t sub_2186B37FC()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2186B38F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072C8, &qword_2186B97B0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v83 = &v70[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v81 = &v70[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v79 = &v70[-v10];
  v11 = MEMORY[0x28223BE20](v9);
  v76 = &v70[-v12];
  v13 = MEMORY[0x28223BE20](v11);
  v73 = &v70[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v72 = &v70[-v16];
  MEMORY[0x28223BE20](v15);
  v18 = &v70[-v17];
  v19 = sub_2186B76FC();
  v20 = *(v19 - 8);
  v21 = v20[8];
  v22 = MEMORY[0x28223BE20](v19);
  v89 = &v70[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x28223BE20](v22);
  v88 = &v70[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v87 = &v70[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v86 = &v70[-v29];
  v30 = MEMORY[0x28223BE20](v28);
  v85 = &v70[-v31];
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v70[-v33];
  MEMORY[0x28223BE20](v32);
  v36 = &v70[-v35];
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072D0, &qword_2186B97B8);
  v38 = *(*(v37 - 8) + 64);
  MEMORY[0x28223BE20](v37 - 8);
  v40 = &v70[-v39];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072D8, &qword_2186B97C0);
  v42 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41 - 8);
  v44 = &v70[-v43];
  v45 = sub_2186B705C();
  v46 = *(*(v45 - 8) + 56);
  v80 = v44;
  v46(v44, 1, 1, v45);
  v47 = sub_2186B706C();
  v48 = *(*(v47 - 8) + 56);
  v82 = v40;
  v48(v40, 1, 1, v47);
  v49 = v20[13];
  v49(v36, *MEMORY[0x277D0D148], v19);
  v96 = v36;
  v92 = a1;
  sub_2186B64DC(sub_2186B6BF8, a1, v18);
  v50 = sub_2186B770C();
  v51 = *(v50 - 8);
  v93 = *(v51 + 48);
  v94 = v51 + 48;
  v77 = v93(v18, 1, v50);
  v90 = v51;
  if (v77 == 1)
  {
    sub_21867F0B8(v18, &qword_27CC072C8, &qword_2186B97B0);
    v78 = 0;
  }

  else
  {
    v78 = sub_2186B76EC();
    (*(v51 + 8))(v18, v50);
  }

  v52 = v20[1];
  v91 = v20 + 1;
  v95 = v52;
  v52(v36, v19);
  v53 = v49;
  v54 = (v49)(v34, *MEMORY[0x277D0D150], v19);
  MEMORY[0x28223BE20](v54);
  v55 = v72;
  v56 = v92;
  sub_2186B64DC(sub_2186B6E58, v92, v72);
  v74 = v93(v55, 1, v50);
  if (v74 == 1)
  {
    sub_21867F0B8(v55, &qword_27CC072C8, &qword_2186B97B0);
    v75 = 0;
  }

  else
  {
    v75 = sub_2186B76EC();
    (*(v90 + 8))(v55, v50);
  }

  v57 = v73;
  v95(v34, v19);
  v58 = v53(v85, *MEMORY[0x277D0D130], v19);
  MEMORY[0x28223BE20](v58);
  sub_2186B64DC(sub_2186B6E58, v56, v57);
  LODWORD(v72) = v93(v57, 1, v50);
  if (v72 == 1)
  {
    sub_21867F0B8(v57, &qword_27CC072C8, &qword_2186B97B0);
    v73 = 0;
    v59 = v90;
  }

  else
  {
    v73 = sub_2186B76EC();
    v59 = v90;
    (*(v90 + 8))(v57, v50);
  }

  v95(v85, v19);
  v60 = v53(v86, *MEMORY[0x277D0D138], v19);
  MEMORY[0x28223BE20](v60);
  v61 = v76;
  sub_2186B64DC(sub_2186B6E58, v56, v76);
  v71 = v93(v61, 1, v50);
  if (v71 == 1)
  {
    sub_21867F0B8(v61, &qword_27CC072C8, &qword_2186B97B0);
    v85 = 0;
  }

  else
  {
    v85 = sub_2186B76EC();
    (*(v59 + 8))(v61, v50);
  }

  v95(v86, v19);
  v62 = v53(v87, *MEMORY[0x277D0D158], v19);
  MEMORY[0x28223BE20](v62);
  v63 = v79;
  sub_2186B64DC(sub_2186B6E58, v56, v79);
  if (v93(v63, 1, v50) == 1)
  {
    sub_21867F0B8(v63, &qword_27CC072C8, &qword_2186B97B0);
    v86 = 0;
    v64 = v90;
  }

  else
  {
    v86 = sub_2186B76EC();
    v64 = v90;
    (*(v90 + 8))(v63, v50);
  }

  v95(v87, v19);
  v65 = v53(v88, *MEMORY[0x277D0D160], v19);
  MEMORY[0x28223BE20](v65);
  v66 = v81;
  sub_2186B64DC(sub_2186B6E58, v92, v81);
  if (v93(v66, 1, v50) == 1)
  {
    sub_21867F0B8(v66, &qword_27CC072C8, &qword_2186B97B0);
  }

  else
  {
    sub_2186B76EC();
    (*(v64 + 8))(v66, v50);
  }

  v67 = v83;
  v95(v88, v19);
  v68 = v53(v89, *MEMORY[0x277D0D140], v19);
  MEMORY[0x28223BE20](v68);
  sub_2186B64DC(sub_2186B6E58, v92, v67);
  if (v93(v67, 1, v50) == 1)
  {
    sub_21867F0B8(v67, &qword_27CC072C8, &qword_2186B97B0);
  }

  else
  {
    sub_2186B76EC();
    (*(v90 + 8))(v67, v50);
  }

  v95(v89, v19);
  return sub_2186B6EDC();
}

uint64_t sub_2186B46BC(const void *a1, void *a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = _Block_copy(a1);
  v4 = a2;

  return MEMORY[0x2822009F8](sub_2186B4734, 0, 0);
}

uint64_t sub_2186B4734()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07270, &qword_2186B9660);
  *v3 = v0;
  v3[1] = sub_2186B4814;

  return sub_218682BE4((v0 + 2), &unk_2186B9738);
}

uint64_t sub_2186B4814()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2186B49D8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2186B4930;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186B4930()
{
  v1 = *(v0 + 16);
  type metadata accessor for GKChallengeDefinition(v2);
  v3 = sub_2186B7A9C();

  v4 = *(v0 + 32);
  (v4)[2](v4, v3, 0);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2186B49D8()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 40);

  v3 = sub_2186B6F6C();

  v4 = *(v0 + 32);
  (v4)[2](v4, 0, v3);

  _Block_release(v4);
  v5 = *(v0 + 8);

  return v5();
}

uint64_t GKChallengeDefinitionSupport.hasActiveChallenges(definitionID:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2186B4AA8, 0, 0);
}

uint64_t sub_2186B4AA8()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_2186B4B80;

  return sub_218682BE4(v0 + 64, &unk_2186B9678);
}

uint64_t sub_2186B4B80()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_2186B4CB8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2186B4C9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186B4CB8()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2(0);
}

uint64_t sub_2186B4D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_2186B794C();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E88, &qword_2186B9740) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07278, &unk_2186B9748);
  v4[10] = v9;
  v10 = *(v9 - 8);
  v4[11] = v10;
  v11 = *(v10 + 64) + 15;
  v4[12] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06F40, &unk_2186B90E0);
  v4[13] = v12;
  v13 = *(v12 - 8);
  v4[14] = v13;
  v14 = *(v13 + 64) + 15;
  v4[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07280, &unk_2186B9758);
  v4[16] = v15;
  v16 = *(v15 - 8);
  v4[17] = v16;
  v17 = *(v16 + 64) + 15;
  v4[18] = swift_task_alloc();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0);
  v4[19] = v18;
  v19 = *(v18 - 8);
  v4[20] = v19;
  v20 = *(v19 + 64) + 15;
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2186B4FBC, 0, 0);
}

uint64_t sub_2186B4FBC()
{
  v1 = v0[21];
  sub_2186804FC(0, &qword_2811ED5B0, 0x277CCA8D8);
  sub_218680544();
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[3];
  v5 = v0[4];
  v6 = sub_2186B77AC();
  v7 = v0[20];
  v8 = v0[21];
  v9 = v0[19];
  v26 = v0[17];
  v10 = v0[15];
  v27 = v0[16];
  v28 = v0[18];
  v29 = v0[5];
  v11 = *(v29 + OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider + 8);
  (*(v29 + OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_localPlayerIDProvider))(v6);
  sub_2186B786C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07288, &qword_2186B9768);
  v12 = sub_2186B75BC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 72);
  v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v25 = swift_allocObject();
  v0[22] = v25;
  *(v25 + 16) = xmmword_2186B9630;
  v16 = v25 + v15;
  v17 = *(v13 + 104);
  v17(v16, *MEMORY[0x277D0CF88], v12);
  (*(v7 + 16))(v16 + v14, v8, v9);
  v17(v16 + v14, *MEMORY[0x277D0CF80], v12);
  (*(v26 + 16))(v16 + 2 * v14, v28, v27);
  v17(v16 + 2 * v14, *MEMORY[0x277D0CF68], v12);
  v18 = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v0[23] = OBJC_IVAR____TtC7GameKit28GKChallengeDefinitionSupport_service;
  v19 = *(v29 + v18 + 24);
  v20 = *(v29 + v18 + 32);
  __swift_project_boxed_opaque_existential_0((v29 + v18), v19);
  v21 = *(MEMORY[0x277D0CBD8] + 4);
  v22 = swift_task_alloc();
  v0[24] = v22;
  *v22 = v0;
  v22[1] = sub_2186B5308;
  v23 = v0[15];

  return MEMORY[0x2821648B8](v23, v25, v19, v20);
}

uint64_t sub_2186B5308()
{
  v2 = *(*v1 + 192);
  v5 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = sub_2186B5808;
  }

  else
  {
    v3 = sub_2186B541C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2186B541C()
{
  v1 = v0[22];
  v2 = v0[9];
  v3 = (v0[5] + v0[23]);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_0(v3, v4);
  v6 = sub_2186B789C();
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
  v7 = *(MEMORY[0x277D0CBD0] + 4);
  v8 = swift_task_alloc();
  v0[26] = v8;
  *v8 = v0;
  v8[1] = sub_2186B553C;
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];

  return MEMORY[0x2821648B0](v10, v9, v1, v11, v4, v5);
}

uint64_t sub_2186B553C()
{
  v2 = *(*v1 + 208);
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 216) = v0;

  sub_21867F0B8(v4, &qword_27CC06E88, &qword_2186B9740);

  if (v0)
  {
    v5 = sub_2186B5A5C;
  }

  else
  {
    v5 = sub_2186B56A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2186B56A0()
{
  v1 = v0[20];
  v16 = v0[19];
  v17 = v0[21];
  v2 = v0[17];
  v13 = v0[16];
  v14 = v0[18];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[12];
  v6 = v0[13];
  v7 = v0[10];
  v8 = v0[11];
  v18 = v0[9];
  v19 = v0[8];
  v15 = v0[2];
  v9 = sub_2186B788C();
  (*(v8 + 8))(v5, v7);
  (*(v3 + 8))(v4, v6);
  (*(v2 + 8))(v14, v13);
  (*(v1 + 8))(v17, v16);
  v10 = *(v9 + 16);

  *v15 = v10 != 0;

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186B5808()
{
  v1 = v0[25];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_2186AF0B0();
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_2186B792C();
  v8 = sub_2186B7BEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[25];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_21867D000, v7, v8, "Failed to refresh challenges: %@", v11, 0xCu);
    sub_21867F0B8(v12, &qword_27CC06D90, &qword_2186B8C70);
    MEMORY[0x21CEB1A70](v12, -1, -1);
    MEMORY[0x21CEB1A70](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[7] + 8))(v0[8], v0[6]);
  v15 = v0[22];
  v16 = v0[9];
  v17 = (v0[5] + v0[23]);
  v18 = v17[3];
  v19 = v17[4];
  __swift_project_boxed_opaque_existential_0(v17, v18);
  v20 = sub_2186B789C();
  (*(*(v20 - 8) + 56))(v16, 1, 1, v20);
  v21 = *(MEMORY[0x277D0CBD0] + 4);
  v22 = swift_task_alloc();
  v0[26] = v22;
  *v22 = v0;
  v22[1] = sub_2186B553C;
  v23 = v0[15];
  v24 = v0[12];
  v25 = v0[9];

  return MEMORY[0x2821648B0](v24, v23, v15, v25, v18, v19);
}

uint64_t sub_2186B5A5C()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[27];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v5 = v0[21];
  v6 = v0[18];
  v7 = v0[15];
  v8 = v0[12];
  v10 = v0[8];
  v9 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_2186B5B54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2186818F8;

  return sub_2186B4D20(a1, v4, v5, v6);
}

uint64_t sub_2186B5D90(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v3[4] = sub_2186B7A0C();
  v3[5] = v5;
  v6 = a3;

  return MEMORY[0x2822009F8](sub_2186B5E1C, 0, 0);
}

uint64_t sub_2186B5E1C()
{
  v5 = *(v0 + 32);
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v5;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_2186B5F04;

  return sub_218682BE4(v0 + 72, &unk_2186B9710);
}

uint64_t sub_2186B5F04()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_2186B60A8;
  }

  else
  {
    v5 = *(v2 + 40);
    v6 = *(v2 + 48);

    v4 = sub_2186B6028;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2186B6028()
{
  v1 = *(v0 + 24);

  (*(v1 + 16))(v1, *(v0 + 72), 0);
  _Block_release(*(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2186B60A8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = sub_2186B6F6C();

  (*(v4 + 16))(v4, 0, v6);
  _Block_release(*(v0 + 24));
  v7 = *(v0 + 8);

  return v7();
}

id GKChallengeDefinitionSupport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GKChallengeDefinitionSupport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2186B62DC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_218681150;

  return sub_2186B5D90(v2, v3, v4);
}

uint64_t sub_2186B6390()
{
  v0 = sub_2186B76FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186B76DC();
  sub_2186B6C28();
  sub_2186B7A7C();
  sub_2186B7A7C();
  if (v7[2] == v7[0] && v7[3] == v7[1])
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_2186B7E5C();
  }

  (*(v1 + 8))(v4, v0);

  return v5 & 1;
}

uint64_t sub_2186B64DC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_2186B770C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_2186B66B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_218681150;

  return sub_2186B4D20(a1, v4, v5, v6);
}

uint64_t sub_2186B6764()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_2186818F8;

  return sub_2186B46BC(v2, v3);
}

size_t sub_2186B6810(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072C0, &qword_2186B97A8);
  v10 = *(sub_2186B778C() - 8);
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
  v15 = *(sub_2186B778C() - 8);
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

uint64_t sub_2186B69E8(uint64_t a1, uint64_t a2)
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC06E98, &qword_2186B94E0) - 8);
  v7 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v8 = *(v2 + 16);
  v9 = *(v2 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2186818F8;

  return sub_2186B36FC(a1, a2, v8, v2 + v7, v9);
}

uint64_t sub_2186B6B18(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CC07280, &unk_2186B9758);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2186B6B68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC07298, &qword_2186B9780);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

size_t sub_2186B6BD8(size_t a1, int64_t a2, char a3)
{
  result = sub_2186B6C80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_2186B6C28()
{
  result = qword_27CC072E0;
  if (!qword_27CC072E0)
  {
    sub_2186B76FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC072E0);
  }

  return result;
}

size_t sub_2186B6C80(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CC072E8, &qword_2186B97C8);
  v10 = *(sub_2186B6EEC() - 8);
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
  v15 = *(sub_2186B6EEC() - 8);
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

id GKAchievementDescription.rarityPercent.getter()
{
  result = [v0 rarityPercent];
  v2 = result;
  if (result)
  {
    [result doubleValue];
    v4 = v3;

    return v4;
  }

  return result;
}