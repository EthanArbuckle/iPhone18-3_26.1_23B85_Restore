uint64_t sub_23E8EC6D8(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F660, &unk_23E9069D0);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v50 - v10;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED08, &unk_23E905D60);
  v57 = *(v61 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v61);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v50 = a2;
    v55 = v17;
    v51 = &v50 - v22;
    v52 = a3;
    v53 = a4;
    v64 = MEMORY[0x277D84F90];
    v60 = v11;
    sub_23E8AF85C(0, v24, 0);
    v25 = v60;
    v26 = v64;
    v27 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = (v12 + 16);
    v59 = v12;
    v62 = *(v62 + 72);
    v28 = v27;
    v29 = v24;
    do
    {
      v30 = v63;
      sub_23E8891B4(v28, v63, &unk_27E35F660, &unk_23E9069D0);
      v56 = *v58;
      v56(v21, v30, v25);
      sub_23E87E3F0(v30, &v21[*(v61 + 36)], &unk_27E35F660, &unk_23E9069D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F670, &qword_23E9079C8);
      swift_storeEnumTagMultiPayload();
      v64 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23E8AF85C(v31 > 1, v32 + 1, 1);
        v26 = v64;
      }

      *(v26 + 16) = v32 + 1;
      sub_23E87E3F0(v21, v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v32, &qword_27E35ED08, &unk_23E905D60);
      v28 += v62;
      --v29;
      v25 = v60;
    }

    while (v29);
    v56(v55, v50, v60);
    v64 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v24, 0);
    v33 = v60;
    v34 = v64;
    v35 = (v59 + 32);
    v58 = ((v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v36 = v54;
    do
    {
      v37 = v63;
      sub_23E8891B4(v27, v63, &unk_27E35F660, &unk_23E9069D0);
      v38 = *v35;
      (*v35)(v36, v37, v33);
      v64 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_23E8AF7FC(v39 > 1, v40 + 1, 1);
        v33 = v60;
        v34 = v64;
      }

      *(v34 + 16) = v40 + 1;
      v38((v34 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40), v36, v33);
      v27 += v62;
      --v24;
    }

    while (v24);
    LOBYTE(a3) = v52;
    v41 = v53;
    v23 = v51;
    v42 = v33;
    v43 = v55;
  }

  else
  {
    (*(v12 + 16))(v17, a2, v11);
    v38 = *(v12 + 32);
    v43 = v17;
    v26 = MEMORY[0x277D84F90];
    v41 = a4;
    v34 = MEMORY[0x277D84F90];
    v42 = v11;
  }

  v44 = v61;
  v45 = &v23[*(v61 + 36)];
  *v45 = a3;
  v45[1] = v41;
  *(v45 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F670, &qword_23E9079C8);
  swift_storeEnumTagMultiPayload();
  v38(v23, v43, v42);
  v46 = sub_23E8BCD6C(v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v44;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F030, &qword_27E35ED08, &unk_23E905D60);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v23, boxed_opaque_existential_1, &qword_27E35ED08, &unk_23E905D60);
  v64 = v46;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v23, &qword_27E35ED08, &unk_23E905D60);
  return v64;
}

uint64_t sub_23E8ECCF4(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F690, &unk_23E906F50);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v50 - v10;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED20, &qword_23E9079E0);
  v57 = *(v61 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v61);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v50 = a2;
    v55 = v17;
    v51 = &v50 - v22;
    v52 = a3;
    v53 = a4;
    v64 = MEMORY[0x277D84F90];
    v60 = v11;
    sub_23E8AF89C(0, v24, 0);
    v25 = v60;
    v26 = v64;
    v27 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = (v12 + 16);
    v59 = v12;
    v62 = *(v62 + 72);
    v28 = v27;
    v29 = v24;
    do
    {
      v30 = v63;
      sub_23E8891B4(v28, v63, &unk_27E35F690, &unk_23E906F50);
      v56 = *v58;
      v56(v21, v30, v25);
      sub_23E87E3F0(v30, &v21[*(v61 + 36)], &unk_27E35F690, &unk_23E906F50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6A0, &qword_23E9079E8);
      swift_storeEnumTagMultiPayload();
      v64 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23E8AF89C(v31 > 1, v32 + 1, 1);
        v26 = v64;
      }

      *(v26 + 16) = v32 + 1;
      sub_23E87E3F0(v21, v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v32, &qword_27E35ED20, &qword_23E9079E0);
      v28 += v62;
      --v29;
      v25 = v60;
    }

    while (v29);
    v56(v55, v50, v60);
    v64 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v24, 0);
    v33 = v60;
    v34 = v64;
    v35 = (v59 + 32);
    v58 = ((v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v36 = v54;
    do
    {
      v37 = v63;
      sub_23E8891B4(v27, v63, &unk_27E35F690, &unk_23E906F50);
      v38 = *v35;
      (*v35)(v36, v37, v33);
      v64 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_23E8AF7FC(v39 > 1, v40 + 1, 1);
        v33 = v60;
        v34 = v64;
      }

      *(v34 + 16) = v40 + 1;
      v38((v34 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40), v36, v33);
      v27 += v62;
      --v24;
    }

    while (v24);
    LOBYTE(a3) = v52;
    v41 = v53;
    v23 = v51;
    v42 = v33;
    v43 = v55;
  }

  else
  {
    (*(v12 + 16))(v17, a2, v11);
    v38 = *(v12 + 32);
    v43 = v17;
    v26 = MEMORY[0x277D84F90];
    v41 = a4;
    v34 = MEMORY[0x277D84F90];
    v42 = v11;
  }

  v44 = v61;
  v45 = &v23[*(v61 + 36)];
  *v45 = a3;
  v45[1] = v41;
  *(v45 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6A0, &qword_23E9079E8);
  swift_storeEnumTagMultiPayload();
  v38(v23, v43, v42);
  v46 = sub_23E8BCF4C(v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v44;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F038, &qword_27E35ED20, &qword_23E9079E0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v23, boxed_opaque_existential_1, &qword_27E35ED20, &qword_23E9079E0);
  v64 = v46;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v23, &qword_27E35ED20, &qword_23E9079E0);
  return v64;
}

uint64_t sub_23E8ED310(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6C0, &qword_23E9069E0);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v50 - v10;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED38, &unk_23E905D70);
  v57 = *(v61 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v61);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v50 = a2;
    v55 = v17;
    v51 = &v50 - v22;
    v52 = a3;
    v53 = a4;
    v64 = MEMORY[0x277D84F90];
    v60 = v11;
    sub_23E8AF8DC(0, v24, 0);
    v25 = v60;
    v26 = v64;
    v27 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = (v12 + 16);
    v59 = v12;
    v62 = *(v62 + 72);
    v28 = v27;
    v29 = v24;
    do
    {
      v30 = v63;
      sub_23E8891B4(v28, v63, &unk_27E35F6C0, &qword_23E9069E0);
      v56 = *v58;
      v56(v21, v30, v25);
      sub_23E87E3F0(v30, &v21[*(v61 + 36)], &unk_27E35F6C0, &qword_23E9069E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6D0, &qword_23E9079F8);
      swift_storeEnumTagMultiPayload();
      v64 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23E8AF8DC(v31 > 1, v32 + 1, 1);
        v26 = v64;
      }

      *(v26 + 16) = v32 + 1;
      sub_23E87E3F0(v21, v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v32, &qword_27E35ED38, &unk_23E905D70);
      v28 += v62;
      --v29;
      v25 = v60;
    }

    while (v29);
    v56(v55, v50, v60);
    v64 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v24, 0);
    v33 = v60;
    v34 = v64;
    v35 = (v59 + 32);
    v58 = ((v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v36 = v54;
    do
    {
      v37 = v63;
      sub_23E8891B4(v27, v63, &unk_27E35F6C0, &qword_23E9069E0);
      v38 = *v35;
      (*v35)(v36, v37, v33);
      v64 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_23E8AF7FC(v39 > 1, v40 + 1, 1);
        v33 = v60;
        v34 = v64;
      }

      *(v34 + 16) = v40 + 1;
      v38((v34 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40), v36, v33);
      v27 += v62;
      --v24;
    }

    while (v24);
    LOBYTE(a3) = v52;
    v41 = v53;
    v23 = v51;
    v42 = v33;
    v43 = v55;
  }

  else
  {
    (*(v12 + 16))(v17, a2, v11);
    v38 = *(v12 + 32);
    v43 = v17;
    v26 = MEMORY[0x277D84F90];
    v41 = a4;
    v34 = MEMORY[0x277D84F90];
    v42 = v11;
  }

  v44 = v61;
  v45 = &v23[*(v61 + 36)];
  *v45 = a3;
  v45[1] = v41;
  *(v45 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6D0, &qword_23E9079F8);
  swift_storeEnumTagMultiPayload();
  v38(v23, v43, v42);
  v46 = sub_23E8BCF68(v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v44;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F040, &qword_27E35ED38, &unk_23E905D70);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v23, boxed_opaque_existential_1, &qword_27E35ED38, &unk_23E905D70);
  v64 = v46;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v23, &qword_27E35ED38, &unk_23E905D70);
  return v64;
}

uint64_t sub_23E8ED92C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F6F0, qword_23E903D18);
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v63 = &v50 - v10;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v54 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v50 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED50, &qword_23E907A10);
  v57 = *(v61 - 8);
  v18 = *(v57 + 64);
  v19 = MEMORY[0x28223BE20](v61);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  v24 = *(a1 + 16);
  if (v24)
  {
    v50 = a2;
    v55 = v17;
    v51 = &v50 - v22;
    v52 = a3;
    v53 = a4;
    v64 = MEMORY[0x277D84F90];
    v60 = v11;
    sub_23E8AF91C(0, v24, 0);
    v25 = v60;
    v26 = v64;
    v27 = a1 + ((*(v62 + 80) + 32) & ~*(v62 + 80));
    v58 = (v12 + 16);
    v59 = v12;
    v62 = *(v62 + 72);
    v28 = v27;
    v29 = v24;
    do
    {
      v30 = v63;
      sub_23E8891B4(v28, v63, &unk_27E35F6F0, qword_23E903D18);
      v56 = *v58;
      v56(v21, v30, v25);
      sub_23E87E3F0(v30, &v21[*(v61 + 36)], &unk_27E35F6F0, qword_23E903D18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F700, &unk_23E907A18);
      swift_storeEnumTagMultiPayload();
      v64 = v26;
      v32 = *(v26 + 16);
      v31 = *(v26 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_23E8AF91C(v31 > 1, v32 + 1, 1);
        v26 = v64;
      }

      *(v26 + 16) = v32 + 1;
      sub_23E87E3F0(v21, v26 + ((*(v57 + 80) + 32) & ~*(v57 + 80)) + *(v57 + 72) * v32, &qword_27E35ED50, &qword_23E907A10);
      v28 += v62;
      --v29;
      v25 = v60;
    }

    while (v29);
    v56(v55, v50, v60);
    v64 = MEMORY[0x277D84F90];
    sub_23E8AF7FC(0, v24, 0);
    v33 = v60;
    v34 = v64;
    v35 = (v59 + 32);
    v58 = ((v59 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000);
    v36 = v54;
    do
    {
      v37 = v63;
      sub_23E8891B4(v27, v63, &unk_27E35F6F0, qword_23E903D18);
      v38 = *v35;
      (*v35)(v36, v37, v33);
      v64 = v34;
      v40 = *(v34 + 16);
      v39 = *(v34 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_23E8AF7FC(v39 > 1, v40 + 1, 1);
        v33 = v60;
        v34 = v64;
      }

      *(v34 + 16) = v40 + 1;
      v38((v34 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v40), v36, v33);
      v27 += v62;
      --v24;
    }

    while (v24);
    LOBYTE(a3) = v52;
    v41 = v53;
    v23 = v51;
    v42 = v33;
    v43 = v55;
  }

  else
  {
    (*(v12 + 16))(v17, a2, v11);
    v38 = *(v12 + 32);
    v43 = v17;
    v26 = MEMORY[0x277D84F90];
    v41 = a4;
    v34 = MEMORY[0x277D84F90];
    v42 = v11;
  }

  v44 = v61;
  v45 = &v23[*(v61 + 36)];
  *v45 = a3;
  v45[1] = v41;
  *(v45 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F700, &unk_23E907A18);
  swift_storeEnumTagMultiPayload();
  v38(v23, v43, v42);
  v46 = sub_23E8BCF84(v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F640, &unk_23E905090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 56) = v44;
  *(inited + 64) = sub_23E8C88E0(&qword_27E35F048, &qword_27E35ED50, &qword_23E907A10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  sub_23E8891B4(v23, boxed_opaque_existential_1, &qword_27E35ED50, &qword_23E907A10);
  v64 = v46;
  sub_23E8EBFB4(inited);
  sub_23E87E458(v23, &qword_27E35ED50, &qword_23E907A10);
  return v64;
}

uint64_t sub_23E8EDF48()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E888F34;

  return sub_23E8EDFD8();
}

uint64_t sub_23E8EDFD8()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8EE074, 0, 0);
}

uint64_t sub_23E8EE074()
{
  v1 = v0[3];
  v2 = *(v0[2] + 136);
  v0[4] = v2;
  os_unfair_lock_lock(v2 + 17);
  sub_23E8F2F34(&v2[4], v1);
  os_unfair_lock_unlock(v2 + 17);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_23E8EE18C;
  v5 = v0[2];
  v4 = v0[3];

  return sub_23E8EE604(v4);
}

uint64_t sub_23E8EE18C()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_23E8EE37C;
  }

  else
  {
    v3 = sub_23E8EE2A0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E8EE2A0()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = swift_task_alloc();
  *(v5 + 16) = v4;
  *(v5 + 24) = v2;
  os_unfair_lock_lock(v3 + 17);
  sub_23E8F2F4C(&v3[4]);
  os_unfair_lock_unlock(v3 + 17);

  sub_23E8EE400(v4);
  sub_23E87E458(v2, &unk_27E35E630, &qword_23E903300);
  v6 = v0[3];

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E8EE37C()
{
  v1 = v0[3];
  sub_23E8EE400(v0[2]);
  sub_23E87E458(v1, &unk_27E35E630, &qword_23E903300);
  v2 = v0[6];
  v3 = v0[3];

  v4 = v0[1];

  return v4();
}

void sub_23E8EE400(uint64_t a1)
{
  v1 = *(a1 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8EFD44(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

uint64_t sub_23E8EE604(uint64_t a1)
{
  v2[36] = a1;
  v2[37] = v1;
  v3 = type metadata accessor for RenderTransactionAction();
  v2[38] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v2[41] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770) - 8) + 64) + 15;
  v2[42] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v2[43] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[44] = swift_task_alloc();
  v2[45] = swift_task_alloc();
  v2[46] = swift_task_alloc();
  v8 = sub_23E900694();
  v2[47] = v8;
  v9 = *(v8 - 8);
  v2[48] = v9;
  v10 = *(v9 + 64) + 15;
  v2[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8EE798, 0, 0);
}

uint64_t sub_23E8EE798()
{
  v73 = v0;
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[47];
  sub_23E900684();
  sub_23E900674();
  v5 = v4;
  v0[50] = v4;
  (*(v2 + 8))(v1, v3);
  if (qword_27E35E180 != -1)
  {
    swift_once();
  }

  v6 = v0[46];
  v7 = v0[36];
  v8 = sub_23E900764();
  v0[51] = __swift_project_value_buffer(v8, qword_27E367150);
  sub_23E8891B4(v7, v6, &unk_27E35E630, &qword_23E903300);
  v9 = sub_23E900744();
  v10 = sub_23E900B14();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[46];
  if (v11)
  {
    v13 = v0[45];
    v14 = v0[43];
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v72[0] = v16;
    *v15 = 134218242;
    *(v15 + 4) = v5;
    *(v15 + 12) = 2080;
    sub_23E8891B4(v12, v13, &unk_27E35E630, &qword_23E903300);
    v17 = sub_23E9008D4();
    v19 = v18;
    sub_23E87E458(v12, &unk_27E35E630, &qword_23E903300);
    v20 = sub_23E887B9C(v17, v19, v72);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_23E879000, v9, v10, "[%f] Apply Root -> %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x23EF18560](v16, -1, -1);
    MEMORY[0x23EF18560](v15, -1, -1);
  }

  else
  {

    sub_23E87E458(v12, &unk_27E35E630, &qword_23E903300);
  }

  v21 = v0[42];
  v22 = v0[36];
  v23 = v0[37];
  v24 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
  swift_beginAccess();
  sub_23E8891B4(v23 + v24, v21, &unk_27E35F3D0, &qword_23E905770);
  v25 = sub_23E8E9EA4(v21, v22);
  v0[52] = v25;
  v36 = v25;
  v37 = v0[44];
  v38 = v0[36];
  sub_23E87E458(v0[42], &unk_27E35F3D0, &qword_23E905770);
  sub_23E8891B4(v38, v37, &unk_27E35E630, &qword_23E903300);

  v39 = sub_23E900744();
  v40 = sub_23E900B14();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[44];
  if (v41)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v72[0] = v44;
    *v43 = 134218498;
    *(v43 + 4) = v5;
    *(v43 + 12) = 2048;
    *(v43 + 14) = *(v36 + 16);

    *(v43 + 22) = 2080;
    sub_23E9006D4();
    sub_23E8F1538(&qword_27E35F5C8, MEMORY[0x277CC95F0]);
    v45 = sub_23E900DD4();
    v47 = v46;
    sub_23E87E458(v42, &unk_27E35E630, &qword_23E903300);
    v48 = sub_23E887B9C(v45, v47, v72);

    *(v43 + 24) = v48;
    _os_log_impl(&dword_23E879000, v39, v40, "[%f] %ld actions created for %s", v43, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v44);
    MEMORY[0x23EF18560](v44, -1, -1);
    MEMORY[0x23EF18560](v43, -1, -1);
  }

  else
  {

    sub_23E87E458(v42, &unk_27E35E630, &qword_23E903300);
  }

  v49 = v0[41];
  v50 = v0[38];
  _s10AirPlayKit16ContainerContentV2id10Foundation4UUIDVvg_0();
  *(v49 + *(v50 + 20)) = v36;
  if (*(v36 + 16))
  {
    sub_23E8F2D1C(v0[41], v0[40], type metadata accessor for RenderTransactionAction);
    v51 = sub_23E900744();
    v52 = sub_23E900B14();
    v53 = os_log_type_enabled(v51, v52);
    v54 = v0[40];
    if (v53)
    {
      v55 = swift_slowAlloc();
      *v55 = 134218240;
      *(v55 + 4) = v5;
      *(v55 + 12) = 2048;
      v56 = *(*(v54 + *(v50 + 20)) + 16);
      sub_23E8F2D84(v54, type metadata accessor for RenderTransactionAction);
      *(v55 + 14) = v56;
      _os_log_impl(&dword_23E879000, v51, v52, "[%f] Attempting to send %ld display tree actions", v55, 0x16u);
      MEMORY[0x23EF18560](v55, -1, -1);
    }

    else
    {
      sub_23E8F2D84(v0[40], type metadata accessor for RenderTransactionAction);
    }

    v62 = v0[41];
    v64 = v0[37];
    v63 = v0[38];

    v65 = v64[5];
    v66 = v64[6];
    __swift_project_boxed_opaque_existential_1(v64 + 2, v65);
    v0[11] = v63;
    v0[12] = sub_23E8F1538(&qword_27E35EFF8, type metadata accessor for RenderTransactionAction);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 8);
    sub_23E8F2D1C(v62, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
    v68 = *(v66 + 16);
    v71 = (v68 + *v68);
    v69 = v68[1];
    v70 = swift_task_alloc();
    v0[53] = v70;
    *v70 = v0;
    v70[1] = sub_23E8EEFEC;

    return (v71)(v0 + 8, v65, v66);
  }

  else
  {
    v57 = sub_23E900744();
    v58 = sub_23E900B14();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 134217984;
      *(v59 + 4) = v5;
      _os_log_impl(&dword_23E879000, v57, v58, "[%f] No actions for transaction!", v59, 0xCu);
      MEMORY[0x23EF18560](v59, -1, -1);
    }

    v60 = v0[41];

    sub_23E8F14E4();
    swift_allocError();
    *v61 = 3;
    swift_willThrow();
    sub_23E8F2D84(v60, type metadata accessor for RenderTransactionAction);
    v26 = v0[49];
    v28 = v0[45];
    v27 = v0[46];
    v29 = v0[44];
    v31 = v0[41];
    v30 = v0[42];
    v33 = v0[39];
    v32 = v0[40];

    v34 = v0[1];

    return v34();
  }
}

uint64_t sub_23E8EEFEC()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v6 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v4 = sub_23E8EF5E0;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 64));
    v4 = sub_23E8EF108;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_23E8EF108()
{
  v42 = v0;
  sub_23E8891B4(v0[37] + 56, (v0 + 13), &unk_27E35F5B0, &unk_23E903040);
  v1 = v0[16];
  if (v1)
  {
    v2 = v0[41];
    v3 = v0[38];
    v4 = v0[17];
    __swift_project_boxed_opaque_existential_1(v0 + 13, v0[16]);
    v0[31] = v3;
    v0[32] = &off_28511E6A0;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 28);
    sub_23E8F2D1C(v2, boxed_opaque_existential_1, type metadata accessor for RenderTransactionAction);
    (*(v4 + 24))(v0 + 28, v1, v4);
    __swift_destroy_boxed_opaque_existential_1(v0 + 28);
    __swift_destroy_boxed_opaque_existential_1(v0 + 13);
  }

  else
  {
    sub_23E87E458((v0 + 13), &unk_27E35F5B0, &unk_23E903040);
  }

  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_23E900854();
  v8 = [v6 BOOLForKey_];

  if (v8 && (v9 = v0[52], (v10 = *(v9 + 16)) != 0))
  {
    v11 = 0;
    v12 = v9 + 32;
    v40 = *(v9 + 16);
    while (v11 < *(v0[52] + 16))
    {
      v13 = v0[51];
      v0[2] = v11;
      sub_23E8810DC(v12, (v0 + 3));
      sub_23E8810DC((v0 + 3), (v0 + 18));
      v14 = sub_23E900744();
      v15 = sub_23E900B14();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = v0[50];
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v41 = v18;
        *v17 = 134218498;
        *(v17 + 4) = v16;
        *(v17 + 12) = 2048;
        *(v17 + 14) = v11;
        *(v17 + 22) = 2080;
        sub_23E8810DC((v0 + 18), (v0 + 23));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
        v19 = sub_23E9008D4();
        v21 = v20;
        __swift_destroy_boxed_opaque_existential_1(v0 + 18);
        v22 = sub_23E887B9C(v19, v21, &v41);

        *(v17 + 24) = v22;
        v10 = v40;
        _os_log_impl(&dword_23E879000, v14, v15, "[%f] %ld - %s", v17, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x23EF18560](v18, -1, -1);
        MEMORY[0x23EF18560](v17, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v0 + 18);
      }

      ++v11;
      sub_23E87E458((v0 + 2), qword_27E35EF48, &unk_23E9057F0);
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    v23 = v0[51];
    sub_23E8F2D1C(v0[41], v0[39], type metadata accessor for RenderTransactionAction);
    v24 = sub_23E900744();
    v25 = sub_23E900B14();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = v0[50];
      v28 = v0[38];
      v27 = v0[39];
      v29 = swift_slowAlloc();
      *v29 = 134218240;
      *(v29 + 4) = v26;
      *(v29 + 12) = 2048;
      v30 = *(*(v27 + *(v28 + 20)) + 16);
      sub_23E8F2D84(v27, type metadata accessor for RenderTransactionAction);
      *(v29 + 14) = v30;
      _os_log_impl(&dword_23E879000, v24, v25, "[%f] Success sending %ld display tree actions", v29, 0x16u);
      MEMORY[0x23EF18560](v29, -1, -1);
    }

    else
    {
      sub_23E8F2D84(v0[39], type metadata accessor for RenderTransactionAction);
    }

    v31 = v0[49];
    v33 = v0[45];
    v32 = v0[46];
    v34 = v0[44];
    v36 = v0[41];
    v35 = v0[42];
    v38 = v0[39];
    v37 = v0[40];

    sub_23E8F2D84(v36, type metadata accessor for RenderTransactionAction);

    v39 = v0[1];

    v39();
  }
}

uint64_t sub_23E8EF5E0()
{
  sub_23E8F2D84(v0[41], type metadata accessor for RenderTransactionAction);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  v1 = v0[54];
  v2 = v0[49];
  v4 = v0[45];
  v3 = v0[46];
  v5 = v0[44];
  v7 = v0[41];
  v6 = v0[42];
  v9 = v0[39];
  v8 = v0[40];

  v10 = v0[1];

  return v10();
}

uint64_t sub_23E8EF6C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v32 - v17;
  sub_23E8F14AC(a1, v36);
  if (v38)
  {
    sub_23E8F1408(v36);
    sub_23E8F14E4();
    swift_allocError();
    *v19 = 2;
    return swift_willThrow();
  }

  v42 = v3;
  v21 = v37;
  sub_23E881028(v36, v39);
  if (*(a2 + 144) == 1)
  {
    v33 = a3;
    v34 = v21;
    v35 = a2;
    v22 = v40;
    v23 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    (*(v23 + 8))(v22, v23);
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_23E87E3F0(v13, v18, &unk_27E35E630, &qword_23E903300);
      v25 = *(v35 + 40);
      v26 = *(v35 + 48);
      __swift_project_boxed_opaque_existential_1((v35 + 16), v25);
      v27 = v42;
      (*(v26 + 8))(v25, v26);
      if (v27)
      {
        (*(v15 + 56))(v11, 1, 1, v14);
        v28 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
        v29 = v35;
        swift_beginAccess();
        sub_23E8F1354(v11, v29 + v28);
        swift_endAccess();
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_23E87E458(v18, &unk_27E35E630, &qword_23E903300);
      }

      else
      {
        sub_23E8F1408(a1);
        v30 = v34;
        if (qword_27E35E180 != -1)
        {
          swift_once();
        }

        v31 = sub_23E900764();
        __swift_project_value_buffer(v31, qword_27E367150);
        sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD000000000000018, 0x800000023E909790);
        *(v35 + 144) = 0;
        sub_23E8810DC(v39, a1);
        *(a1 + 40) = v30;
        *(a1 + 48) = 1;
        sub_23E87E3F0(v18, v33, &unk_27E35E630, &qword_23E903300);
      }

      return __swift_destroy_boxed_opaque_existential_1(v39);
    }

    sub_23E87E458(v13, &unk_27E35F3D0, &qword_23E905770);
  }

  sub_23E8F14E4();
  swift_allocError();
  *v24 = 3;
  swift_willThrow();
  swift_unknownObjectRelease();
  return __swift_destroy_boxed_opaque_existential_1(v39);
}

uint64_t sub_23E8EFAE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v19[-1] - v8;
  sub_23E8F14AC(a1, v19);
  if (v20 == 1)
  {
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v19);
    if (qword_27E35E180 != -1)
    {
      swift_once();
    }

    v10 = sub_23E900764();
    __swift_project_value_buffer(v10, qword_27E367150);
    sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD000000000000016, 0x800000023E909770);
    sub_23E8891B4(a3, v9, &unk_27E35E630, &qword_23E903300);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    (*(*(v11 - 8) + 56))(v9, 0, 1, v11);
    v12 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
    swift_beginAccess();
    sub_23E8F1354(v9, a2 + v12);
    swift_endAccess();
    v13 = a2 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated;
    result = swift_beginAccess();
    v15 = *v13;
    if (*v13)
    {
      v16 = *(v13 + 8);

      v15(a3);
      return sub_23E882A30(v15);
    }
  }

  else
  {
    sub_23E8F1408(v19);
    sub_23E8F14E4();
    swift_allocError();
    *v17 = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E8EFD44(uint64_t a1)
{
  sub_23E8F14AC(a1, v6);
  if (v8 == 1)
  {
    sub_23E8F1408(a1);
    v2 = v7;
    sub_23E881028(v6, v9);
    if (qword_27E35E180 != -1)
    {
      swift_once();
    }

    v3 = sub_23E900764();
    __swift_project_value_buffer(v3, qword_27E367150);
    sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD000000000000018, 0x800000023E909750);
    result = sub_23E881028(v9, a1);
    *(a1 + 40) = v2;
    *(a1 + 48) = 0;
  }

  else
  {
    sub_23E8F1408(v6);
    sub_23E8F14E4();
    swift_allocError();
    *v5 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E8EFE74()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_23E87E458((v0 + 7), &unk_27E35F5B0, &unk_23E903040);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  v1 = v0[17];

  sub_23E87E458(v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode, &unk_27E35F3D0, &qword_23E905770);
  v2 = *(v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated + 8);
  sub_23E882A30(*(v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AirPlayOverlayDisplayTree()
{
  result = qword_27E35F588;
  if (!qword_27E35F588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E8EFF80()
{
  sub_23E8F0048();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_23E8F0048()
{
  if (!qword_27E35F810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E35E630, &qword_23E903300);
    v0 = sub_23E900BD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35F810);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10AirPlayKit0aB18OverlayDisplayTreeC5StateO(uint64_t a1)
{
  if ((*(a1 + 48) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 48) & 3;
  }
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

uint64_t sub_23E8F00E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 49))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 48);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8F0120(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_23E8F0170(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_23E8F01A8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300) - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8F0248, 0, 0);
}

uint64_t sub_23E8F0248()
{
  v1 = v0[5];
  v2 = v0[3];
  v3 = *(v1 + 136);
  v0[7] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  os_unfair_lock_lock(v3 + 17);
  sub_23E8F1438(&v3[4]);
  os_unfair_lock_unlock(v3 + 17);

  if (qword_27E35E180 != -1)
  {
    swift_once();
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = sub_23E900764();
  v0[8] = __swift_project_value_buffer(v7, qword_27E367150);
  sub_23E882260(0xD00000000000006ALL, 0x800000023E9096C0, 0xD00000000000001FLL, 0x800000023E909730);
  os_unfair_lock_lock(v3 + 17);
  sub_23E8F1454(&v3[4], v5);
  os_unfair_lock_unlock(v3 + 17);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_23E8F05CC;
  v10 = v0[5];
  v9 = v0[6];

  return sub_23E8EE604(v9);
}

uint64_t sub_23E8F05CC()
{
  v2 = *(*v1 + 72);
  v5 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23E8F098C;
  }

  else
  {
    v3 = sub_23E8F06E0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23E8F06E0()
{
  v24 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  *(swift_task_alloc() + 16) = *(v0 + 40);
  os_unfair_lock_lock(v2 + 17);
  sub_23E8F1490(&v2[4]);
  v3 = *(v0 + 56);
  if (v1)
  {
    v4 = *(v0 + 48);
    os_unfair_lock_unlock(v3 + 17);

    sub_23E87E458(v4, &unk_27E35E630, &qword_23E903300);
    v6 = *(v0 + 64);
    v7 = v1;
    v8 = sub_23E900744();
    v9 = sub_23E900B04();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136446210;
      *(v0 + 16) = v1;
      v12 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
      v13 = sub_23E9008D4();
      v15 = sub_23E887B9C(v13, v14, &v23);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_23E879000, v8, v9, "Failed to send initial display tree: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x23EF18560](v11, -1, -1);
      MEMORY[0x23EF18560](v10, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    os_unfair_lock_unlock(v3 + 17);

    os_unfair_lock_lock(v3 + 17);
    sub_23E8EFD44(&v3[4]);
    v5 = *(v0 + 48);
    os_unfair_lock_unlock((*(v0 + 56) + 68));
    sub_23E87E458(v5, &unk_27E35E630, &qword_23E903300);
  }

  v16 = *(v0 + 56);
  v22 = *(v0 + 32);
  v17 = *(v0 + 24);
  v18 = swift_task_alloc();
  *(v18 + 16) = v22;
  *(v18 + 32) = v17;
  os_unfair_lock_lock(v16 + 17);
  sub_23E8F1470(&v16[4]);
  os_unfair_lock_unlock(v16 + 17);
  v19 = *(v0 + 48);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_23E8F098C()
{
  v20 = v0;
  sub_23E87E458(*(v0 + 48), &unk_27E35E630, &qword_23E903300);
  v1 = *(v0 + 80);
  v2 = *(v0 + 64);
  v3 = v1;
  v4 = sub_23E900744();
  v5 = sub_23E900B04();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136446210;
    *(v0 + 16) = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v9 = sub_23E9008D4();
    v11 = sub_23E887B9C(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_23E879000, v4, v5, "Failed to send initial display tree: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x23EF18560](v7, -1, -1);
    MEMORY[0x23EF18560](v6, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 56);
  v18 = *(v0 + 32);
  v13 = *(v0 + 24);
  v14 = swift_task_alloc();
  *(v14 + 16) = v18;
  *(v14 + 32) = v13;
  os_unfair_lock_lock(v12 + 17);
  sub_23E8F1470(&v12[4]);
  os_unfair_lock_unlock(v12 + 17);
  v15 = *(v0 + 48);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_23E8F0BAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_23E8F14AC(a1, v12);
  if (v15 == 2 && (v6 = vorrq_s8(v13, v14), !(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v12[1] | v12[0])))
  {
    sub_23E8F1408(a1);
    sub_23E8F1408(v12);
    v9 = *(a2 + 120);
    v10 = *(a2 + 128);
    __swift_project_boxed_opaque_existential_1((a2 + 96), v9);
    v11 = DispatchSourceTimerProviding.makeTimer(fireInterval:handler:)(nullsub_1, 0, v9, v10, 0.0);
    result = sub_23E8810DC(a3, a1);
    *(a1 + 40) = v11;
    *(a1 + 48) = 0;
    *(a2 + 144) = 1;
  }

  else
  {
    sub_23E8F1408(v12);
    sub_23E8F14E4();
    swift_allocError();
    *v7 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_23E8F0CDC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  sub_23E8F1408(a1);
  v8 = 1.0 / a2;
  v9 = a3[15];
  v10 = a3[16];
  __swift_project_boxed_opaque_existential_1(a3 + 12, v9);
  v11 = swift_allocObject();
  swift_weakInit();

  v12 = DispatchSourceTimerProviding.makeRepeatingTimer(fireInterval:handler:)(sub_23E8F2E1C, v11, v9, v10, v8);

  result = sub_23E8810DC(a4, a1);
  *(a1 + 40) = v12;
  *(a1 + 48) = 0;
  return result;
}

uint64_t sub_23E8F0DD0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v8 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    v6 = sub_23E900A74();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    v7[2] = 0;
    v7[3] = 0;
    v7[4] = v5;
    sub_23E8EBD08(0, 0, v3, &unk_23E907A70, v7);
  }

  return result;
}

uint64_t sub_23E8F0EF0(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - v5;
  *(a2 + 144) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_rootNode;
  swift_beginAccess();
  sub_23E8F1354(v6, a2 + v8);
  return swift_endAccess();
}

uint64_t sub_23E8F0FF8()
{
  v1 = (*v0 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];
  sub_23E8829CC(v3);
  return v3;
}

uint64_t sub_23E8F1058(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC10AirPlayKit25AirPlayOverlayDisplayTree_onRootNodeUpdated);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_23E882A30(v6);
}

uint64_t (*sub_23E8F10BC())()
{
  v1 = *v0;
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_23E8F1120(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E889AD8;

  return sub_23E8F01A8(a1, a2);
}

void sub_23E8F11C8()
{
  v1 = *(*v0 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8F13C4(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

void sub_23E8F1224()
{
  v1 = *(*v0 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8F1338(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

uint64_t sub_23E8F1280(uint64_t a1, uint64_t a2)
{
  result = sub_23E8F14AC(a1, v4);
  if (v5 < 2u)
  {
    swift_unknownObjectRelease();
    result = __swift_destroy_boxed_opaque_existential_1(v4);
    *(a2 + 144) = 1;
  }

  return result;
}

void sub_23E8F12DC()
{
  v1 = *(*v0 + 136);
  os_unfair_lock_lock(v1 + 17);
  sub_23E8F2F18(&v1[4]);

  os_unfair_lock_unlock(v1 + 17);
}

uint64_t sub_23E8F1354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_23E8F13C4(uint64_t a1)
{
  sub_23E8F1408(a1);
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 2;
  *(v1 + 144) = 0;
  return result;
}

unint64_t sub_23E8F14E4()
{
  result = qword_27E35F5A0;
  if (!qword_27E35F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F5A0);
  }

  return result;
}

uint64_t sub_23E8F1538(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_23E8F1580(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = a4(v9);
  }

  v10 = *(v9 + 16);
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = sub_23E8F1654(v12, a2, a3);
  *a1 = v9;
  return result;
}

uint64_t sub_23E8F1654(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = *(a1 + 8);
  result = sub_23E900DC4();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v10 = sub_23E9009E4();
        *(v10 + 16) = v9;
      }

      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
      v12[0] = v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v12[1] = v9;
      sub_23E8F1A34(v12, v13, a1, v8, a2, a3);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_23E8F17B0(0, v6, 1, a1, a2, a3);
  }

  return result;
}

uint64_t sub_23E8F17B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v43 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v34 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v34 - v21;
  v36 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v20 + 72);
    v25 = *a4 + v24 * (a3 - 1);
    v41 = -v24;
    v42 = v23;
    v26 = a1 - a3;
    v35 = v24;
    v27 = v23 + v24 * a3;
LABEL_6:
    v39 = v25;
    v40 = a3;
    v37 = v27;
    v38 = v26;
    v28 = v26;
    while (1)
    {
      sub_23E8891B4(v27, v22, a5, a6);
      sub_23E8891B4(v25, v18, a5, a6);
      if (*&v22[*(v12 + 40)] >= *&v18[*(v12 + 40)])
      {
        sub_23E87E458(v18, a5, a6);
        result = sub_23E87E458(v22, a5, a6);
LABEL_5:
        a3 = v40 + 1;
        v25 = v39 + v35;
        v26 = v38 - 1;
        v27 = v37 + v35;
        if (v40 + 1 == v36)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = *(v12 + 36);
      v30 = *&v22[v29];
      v31 = *&v18[v29];
      sub_23E87E458(v18, a5, a6);
      result = sub_23E87E458(v22, a5, a6);
      if (v30 >= v31)
      {
        goto LABEL_5;
      }

      if (!v42)
      {
        break;
      }

      v32 = v43;
      sub_23E87E3F0(v27, v43, a5, a6);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23E87E3F0(v32, v25, a5, a6);
      v25 += v41;
      v27 += v41;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8F1A34(uint64_t *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v122 = a1;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v133 = *(v140 - 8);
  v11 = *(v133 + 64);
  v12 = MEMORY[0x28223BE20](v140);
  v127 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v138 = &v118 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v130 = &v118 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v21 = MEMORY[0x28223BE20](v20);
  v120 = &v118 - v22;
  result = MEMORY[0x28223BE20](v21);
  v28 = *(a3 + 1);
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_101:
    v6 = *v122;
    if (!*v122)
    {
      goto LABEL_139;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_103:
      v141 = v30;
      v111 = *(v30 + 16);
      if (v111 >= 2)
      {
        while (1)
        {
          v112 = *a3;
          if (!*a3)
          {
            goto LABEL_137;
          }

          v113 = a3;
          v114 = *(v30 + 16 * v111);
          a3 = v30;
          v115 = *(v30 + 16 * (v111 - 1) + 32);
          v30 = *(v30 + 16 * (v111 - 1) + 40);
          v116 = v135;
          sub_23E8F246C(v112 + *(v133 + 72) * v114, v112 + *(v133 + 72) * v115, v112 + *(v133 + 72) * v30, v6, a5, a6);
          v135 = v116;
          if (v116)
          {
          }

          if (v30 < v114)
          {
            goto LABEL_126;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a3 = sub_23E8F2A84(a3);
          }

          if (v111 - 2 >= *(a3 + 2))
          {
            goto LABEL_127;
          }

          v117 = &a3[16 * v111];
          *v117 = v114;
          *(v117 + 1) = v30;
          v141 = a3;
          result = sub_23E8F29F8(v111 - 1);
          v30 = v141;
          v111 = *(v141 + 16);
          a3 = v113;
          if (v111 <= 1)
          {
          }
        }
      }
    }

LABEL_133:
    result = sub_23E8F2A84(v30);
    v30 = result;
    goto LABEL_103;
  }

  v119 = &v118 - v24;
  v129 = v27;
  v139 = v26;
  v137 = v25;
  v118 = a4;
  v29 = 0;
  v30 = MEMORY[0x277D84F90];
  v123 = a3;
  while (1)
  {
    v31 = v29++;
    v124 = v31;
    if (v29 < v28)
    {
      v131 = v28;
      v32 = *a3;
      v6 = *(v133 + 72);
      v33 = v119;
      sub_23E8891B4(*a3 + v6 * v29, v119, a5, a6);
      v134 = v6;
      v34 = v32 + v6 * v31;
      v35 = v120;
      sub_23E8891B4(v34, v120, a5, a6);
      LODWORD(v132) = *(v33 + *(v140 + 40)) < *(v35 + *(v140 + 40)) && *(v33 + *(v140 + 36)) < *(v35 + *(v140 + 36));
      v121 = v30;
      sub_23E87E458(v35, a5, a6);
      result = sub_23E87E458(v33, a5, a6);
      v36 = v124 + 2;
      v37 = v134 * (v124 + 2);
      v38 = v32 + v37;
      v39 = (v134 * v29);
      v40 = v32 + v134 * v29;
      do
      {
        v41 = v36;
        v42 = v29;
        a3 = v39;
        v30 = v37;
        v136 = v36;
        if (v36 >= v131)
        {
          break;
        }

        v43 = v129;
        sub_23E8891B4(v38, v129, a5, a6);
        v44 = v130;
        sub_23E8891B4(v40, v130, a5, a6);
        v45 = v44;
        v6 = *(v43 + *(v140 + 40)) < *(v44 + *(v140 + 40)) && (*(v43 + *(v140 + 36)) < *(v44 + *(v140 + 36)));
        sub_23E87E458(v45, a5, a6);
        result = sub_23E87E458(v43, a5, a6);
        v41 = v136;
        v36 = v136 + 1;
        v38 += v134;
        v40 += v134;
        v29 = v42 + 1;
        v39 = &a3[v134];
        v37 = v30 + v134;
      }

      while (v132 == v6);
      if (v132)
      {
        v31 = v124;
        if (v41 < v124)
        {
          goto LABEL_130;
        }

        if (v124 >= v41)
        {
          v29 = v41;
          a3 = v123;
          goto LABEL_30;
        }

        v46 = (v124 * v134);
        do
        {
          if (v31 != v42)
          {
            v6 = *v123;
            if (!*v123)
            {
              goto LABEL_136;
            }

            sub_23E87E3F0(&v46[v6], v127, a5, a6);
            if (v46 < a3 || &v46[v6] >= v6 + v30)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v46 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_23E87E3F0(v127, &a3[v6], a5, a6);
            v41 = v136;
          }

          ++v31;
          a3 -= v134;
          v30 -= v134;
          v46 += v134;
        }

        while (v31 < v42--);
      }

      v29 = v41;
      a3 = v123;
      v31 = v124;
LABEL_30:
      v30 = v121;
    }

    v48 = *(a3 + 1);
    if (v29 < v48)
    {
      if (__OFSUB__(v29, v31))
      {
        goto LABEL_129;
      }

      if (v29 - v31 < v118)
      {
        break;
      }
    }

LABEL_50:
    if (v29 < v31)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_23E88A1E0(0, *(v30 + 16) + 1, 1, v30);
      v30 = result;
    }

    v64 = *(v30 + 16);
    v63 = *(v30 + 24);
    v65 = v64 + 1;
    if (v64 >= v63 >> 1)
    {
      result = sub_23E88A1E0((v63 > 1), v64 + 1, 1, v30);
      v30 = result;
    }

    *(v30 + 16) = v65;
    v66 = v30 + 16 * v64;
    *(v66 + 32) = v124;
    *(v66 + 40) = v29;
    v136 = *v122;
    if (!v136)
    {
      goto LABEL_138;
    }

    if (v64)
    {
      while (1)
      {
        v67 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v68 = *(v30 + 32);
          v69 = *(v30 + 40);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_70:
          if (v71)
          {
            goto LABEL_117;
          }

          v84 = (v30 + 16 * v65);
          v86 = *v84;
          v85 = v84[1];
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_120;
          }

          v90 = (v30 + 32 + 16 * v67);
          v92 = *v90;
          v91 = v90[1];
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_123;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_124;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v65 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        v94 = (v30 + 16 * v65);
        v96 = *v94;
        v95 = v94[1];
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_84:
        if (v89)
        {
          goto LABEL_119;
        }

        v97 = v30 + 16 * v67;
        v99 = *(v97 + 32);
        v98 = *(v97 + 40);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_122;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_91:
        v105 = v67 - 1;
        if (v67 - 1 >= v65)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v106 = *a3;
        if (!*a3)
        {
          goto LABEL_135;
        }

        v6 = a3;
        a3 = v30;
        v107 = *(v30 + 32 + 16 * v105);
        v108 = *(v30 + 32 + 16 * v67);
        v30 = *(v30 + 32 + 16 * v67 + 8);
        v109 = v135;
        sub_23E8F246C(v106 + *(v133 + 72) * v107, v106 + *(v133 + 72) * v108, v106 + *(v133 + 72) * v30, v136, a5, a6);
        v135 = v109;
        if (v109)
        {
        }

        if (v30 < v107)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a3 = sub_23E8F2A84(a3);
        }

        if (v105 >= *(a3 + 2))
        {
          goto LABEL_114;
        }

        v110 = &a3[16 * v105];
        *(v110 + 4) = v107;
        *(v110 + 5) = v30;
        v141 = a3;
        result = sub_23E8F29F8(v67);
        v30 = v141;
        v65 = *(v141 + 16);
        a3 = v6;
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = v30 + 32 + 16 * v65;
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_115;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_116;
      }

      v79 = (v30 + 16 * v65);
      v81 = *v79;
      v80 = v79[1];
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_118;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_121;
      }

      if (v83 >= v75)
      {
        v101 = (v30 + 32 + 16 * v67);
        v103 = *v101;
        v102 = v101[1];
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_125;
        }

        if (v70 < v104)
        {
          v67 = v65 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_70;
    }

LABEL_3:
    v28 = *(a3 + 1);
    if (v29 >= v28)
    {
      goto LABEL_101;
    }
  }

  v49 = v31 + v118;
  if (__OFADD__(v31, v118))
  {
    goto LABEL_131;
  }

  if (v49 >= v48)
  {
    v49 = *(a3 + 1);
  }

  if (v49 < v31)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  if (v29 == v49)
  {
    goto LABEL_50;
  }

  v121 = v30;
  v50 = *a3;
  v51 = *(v133 + 72);
  v52 = *a3 + v51 * (v29 - 1);
  v53 = -v51;
  v54 = v31 - v29;
  v136 = v50;
  v125 = v51;
  v126 = v49;
  v55 = v50 + v29 * v51;
  v56 = v137;
LABEL_42:
  v134 = v29;
  v128 = v55;
  v131 = v54;
  v132 = v52;
  v57 = v140;
  while (1)
  {
    v6 = v139;
    sub_23E8891B4(v55, v139, a5, a6);
    sub_23E8891B4(v52, v56, a5, a6);
    if (*(v6 + *(v57 + 40)) >= *(v56 + *(v57 + 40)))
    {
      sub_23E87E458(v56, a5, a6);
      sub_23E87E458(v6, a5, a6);
LABEL_41:
      v29 = v134 + 1;
      v52 = v132 + v125;
      v54 = v131 - 1;
      v55 = v128 + v125;
      if (v134 + 1 == v126)
      {
        v29 = v126;
        a3 = v123;
        v31 = v124;
        v30 = v121;
        goto LABEL_50;
      }

      goto LABEL_42;
    }

    v58 = *(v57 + 36);
    v59 = *(v6 + v58);
    v60 = *(v56 + v58);
    sub_23E87E458(v56, a5, a6);
    result = sub_23E87E458(v6, a5, a6);
    if (v59 >= v60)
    {
      goto LABEL_41;
    }

    if (!v136)
    {
      break;
    }

    v61 = v138;
    sub_23E87E3F0(v55, v138, a5, a6);
    v57 = v140;
    swift_arrayInitWithTakeFrontToBack();
    sub_23E87E3F0(v61, v52, a5, a6);
    v52 += v53;
    v55 += v53;
    v62 = __CFADD__(v54++, 1);
    v56 = v137;
    if (v62)
    {
      goto LABEL_41;
    }
  }

  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
  return result;
}

uint64_t sub_23E8F246C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a6;
  v7 = a5;
  v62 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = MEMORY[0x28223BE20](v13);
  v58 = &v52 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v52 - v17;
  result = MEMORY[0x28223BE20](v16);
  v22 = &v52 - v21;
  v24 = *(v23 + 72);
  if (!v24)
  {
    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_65;
  }

  v25 = v62 - a2;
  if (v62 - a2 == 0x8000000000000000 && v24 == -1)
  {
    goto LABEL_66;
  }

  v26 = (a2 - a1) / v24;
  v65 = a1;
  v64 = a4;
  v61 = result;
  if (v26 >= v25 / v24)
  {
    v29 = v25 / v24 * v24;
    v57 = v20;
    if (a4 < a2 || a2 + v29 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v29;
    if (v29 >= 1)
    {
      v37 = -v24;
      v38 = a4 + v29;
      v59 = v7;
      v60 = v6;
      v54 = a4;
      do
      {
        v52 = v36;
        v39 = a2;
        v40 = a2 + v37;
        v55 = v39;
        v56 = v40;
        while (1)
        {
          v42 = v62;
          if (v39 <= a1)
          {
            v65 = v39;
            v63 = v52;
            goto LABEL_63;
          }

          v53 = v36;
          v43 = v37;
          v44 = v38 + v37;
          v45 = v58;
          sub_23E8891B4(v44, v58, v7, v6);
          v46 = v40;
          v47 = v57;
          sub_23E8891B4(v46, v57, v7, v6);
          v48 = v47;
          v49 = *(v45 + *(v61 + 40)) < *(v47 + *(v61 + 40)) && *(v45 + *(v61 + 36)) < *(v47 + *(v61 + 36));
          v62 = v42 + v43;
          v51 = v59;
          v50 = v60;
          sub_23E87E458(v48, v59, v60);
          sub_23E87E458(v45, v51, v50);
          if (v49)
          {
            break;
          }

          v36 = v44;
          if (v42 < v38 || v62 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v40 = v56;
          }

          else
          {
            v40 = v56;
            if (v42 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v44;
          v39 = v55;
          v41 = v44 > v54;
          v37 = v43;
          v7 = v59;
          v6 = v60;
          if (!v41)
          {
            a2 = v55;
            goto LABEL_62;
          }
        }

        if (v42 < v55 || v62 >= v55)
        {
          a2 = v56;
          swift_arrayInitWithTakeFrontToBack();
          v36 = v53;
          v37 = v43;
        }

        else
        {
          a2 = v56;
          v36 = v53;
          v37 = v43;
          if (v42 != v55)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v7 = v59;
        v6 = v60;
      }

      while (v38 > v54);
    }

LABEL_62:
    v65 = a2;
    v63 = v36;
  }

  else
  {
    v27 = a2;
    v28 = v26 * v24;
    if (a4 < a1 || a1 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v28;
    v63 = a4 + v28;
    if (v28 >= 1 && v27 < v62)
    {
      v31 = v27;
      while (1)
      {
        sub_23E8891B4(v31, v22, v7, v6);
        sub_23E8891B4(a4, v18, v7, v6);
        if (*&v22[*(v61 + 40)] >= *&v18[*(v61 + 40)])
        {
          break;
        }

        v32 = *(v61 + 36);
        v33 = *&v22[v32];
        v34 = *&v18[v32];
        sub_23E87E458(v18, v7, v6);
        sub_23E87E458(v22, v7, v6);
        if (v33 >= v34)
        {
          goto LABEL_28;
        }

        v35 = v31;
        v31 += v24;
        if (a1 < v35 || a1 >= v31)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v35)
        {
          swift_arrayInitWithTakeBackToFront();
        }

LABEL_34:
        a1 += v24;
        v65 = a1;
        if (a4 >= v58 || v31 >= v62)
        {
          goto LABEL_63;
        }
      }

      sub_23E87E458(v18, v7, v6);
      sub_23E87E458(v22, v7, v6);
LABEL_28:
      if (a1 < a4 || a1 >= a4 + v24)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v64 = a4 + v24;
      a4 += v24;
      goto LABEL_34;
    }
  }

LABEL_63:
  sub_23E8F2AFC(&v65, &v64, &v63, v7, v6);
  return 1;
}

uint64_t sub_23E8F29F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23E8F2A84(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23E8F2AFC(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23E8F2C70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_23E881028(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_23E8F2D08(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_23E8811D8(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_23E8F2D1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8F2D84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23E8F2DE4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_23E8F2E24()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8F2E64()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E888F34;

  return sub_23E8EDF48();
}

uint64_t Anchor.hashValue.getter()
{
  sub_23E900EB4();
  sub_23E900EE4();
  sub_23E900EE4();
  return sub_23E900F14();
}

uint64_t sub_23E8F3050()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E900EB4();
  Anchor.hash(into:)();
  return sub_23E900F14();
}

uint64_t sub_23E8F30A4()
{
  v1 = *v0;
  v2 = v0[1];
  return Anchor.hash(into:)();
}

uint64_t sub_23E8F30AC()
{
  v1 = *v0;
  v2 = v0[1];
  sub_23E900EB4();
  Anchor.hash(into:)();
  return sub_23E900F14();
}

unint64_t sub_23E8F3100()
{
  result = qword_27E35F740;
  if (!qword_27E35F740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F740);
  }

  return result;
}

unint64_t sub_23E8F3180(uint64_t a1)
{
  result = sub_23E8F31A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F31A8()
{
  result = qword_27E35F748;
  if (!qword_27E35F748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F748);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Anchor(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Anchor(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_23E8F3254(uint64_t a1)
{
  result = sub_23E8F327C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F327C()
{
  result = qword_27E35F750;
  if (!qword_27E35F750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F750);
  }

  return result;
}

unint64_t sub_23E8F32D0(uint64_t a1)
{
  result = sub_23E8A7FF8();
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RemoteInspectorError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemoteInspectorError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23E8F344C()
{
  result = qword_27E35F7B8;
  if (!qword_27E35F7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7B8);
  }

  return result;
}

unint64_t sub_23E8F34A0()
{
  v1 = v0[1];
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      v5 = *v0;
      v7 = v0[1];
      return sub_23E8815EC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E903380;
      *(inited + 32) = 1701869940;
      *(inited + 40) = 0xE400000000000000;
      sub_23E900C64();
      v4 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      sub_23E8D3054(inited + 32);
      return v4;
    }
  }

  else
  {
    v6 = *v0;
    v8 = v0[1];
    return sub_23E8B0C9C();
  }
}

unint64_t sub_23E8F36CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8F34A0();
  *a1 = result;
  return result;
}

unint64_t sub_23E8F36F4(uint64_t a1)
{
  result = sub_23E8F371C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F371C()
{
  result = qword_27E35F7C0;
  if (!qword_27E35F7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7C0);
  }

  return result;
}

unint64_t sub_23E8F3770(uint64_t a1)
{
  result = sub_23E8F3798();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F3798()
{
  result = qword_27E35F7C8;
  if (!qword_27E35F7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7C8);
  }

  return result;
}

uint64_t sub_23E8F383C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E8F40C4;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4);
}

uint64_t sub_23E8F38D0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E8F409C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;
  sub_23E8829CC(v3);
  return sub_23E882A30(v8);
}

uint64_t NullAirPlayConnection.onClose.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23E8829CC(v1);
  return v1;
}

uint64_t NullAirPlayConnection.onClose.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_23E882A30(v5);
}

uint64_t sub_23E8F3A80@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  v5 = *(v3 + 40);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_23E8F406C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_23E8829CC(v4);
}

uint64_t sub_23E8F3B14(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_23E8F4034;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 32);
  v9 = *(v7 + 40);
  *(v7 + 32) = v6;
  *(v7 + 40) = v5;
  sub_23E8829CC(v3);
  return sub_23E882A30(v8);
}

uint64_t NullAirPlayConnection.onDataReceived.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_23E8829CC(v1);
  return v1;
}

uint64_t NullAirPlayConnection.onDataReceived.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_23E882A30(v5);
}

double NullAirPlayConnection.__allocating_init()()
{
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

double NullAirPlayConnection.init()()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  return result;
}

uint64_t *NullAirPlayConnection.deinit()
{
  v1 = v0[3];
  sub_23E882A30(v0[2]);
  v2 = v0[5];
  sub_23E882A30(v0[4]);
  return v0;
}

uint64_t NullAirPlayConnection.__deallocating_deinit()
{
  v1 = v0[3];
  sub_23E882A30(v0[2]);
  v2 = v0[5];
  sub_23E882A30(v0[4]);

  return swift_deallocClassInstance();
}

uint64_t NullAirPlayConnection.send(_:)()
{
  return (*(v0 + 8))();
}

{
  return (*(v0 + 8))();
}

uint64_t sub_23E8F3D9C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  sub_23E8829CC(v1);
  return v1;
}

uint64_t sub_23E8F3DEC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return sub_23E882A30(v5);
}

uint64_t sub_23E8F3E90()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_23E8829CC(v1);
  return v1;
}

uint64_t sub_23E8F3EE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_23E882A30(v5);
}

uint64_t sub_23E8F3FFC()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23E8F4034(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6[0] = a1;
  v6[1] = a2;
  return v3(v6);
}

uint64_t sub_23E8F406C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_23E8F409C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E8F40C4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23E8F40F8@<X0>(unsigned int a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23E88CAE8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D0688();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_23E9006D4();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a2, v12 + *(v20 + 72) * v8, v13);
    sub_23E8FC1AC(v8, v11);
    *v3 = v11;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_23E9006D4();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_23E8F4264@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23E88C9D8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v17 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D0164();
      v11 = v17;
    }

    v12 = *(v11 + 48);
    v13 = sub_23E9006D4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56) + 56 * v8;
    v15 = *(v14 + 16);
    *a2 = *v14;
    *(a2 + 16) = v15;
    *(a2 + 32) = *(v14 + 32);
    *(a2 + 48) = *(v14 + 48);
    sub_23E8FBB5C(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_23E8F435C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23E88C9D8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D08F0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_23E9006D4();
    v14 = *(v13 - 8);
    v22 = v14;
    v15 = *(v14 + 72) * v8;
    (*(v14 + 8))(v12 + v15, v13);
    (*(v22 + 32))(a2, *(v11 + 56) + v15, v13);
    sub_23E8FC35C(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v13;
  }

  else
  {
    v20 = sub_23E9006D4();
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

void sub_23E8F44F4(void *a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4)
{
  v180 = a1;
  v176 = a4;
  v174 = a3;
  v178 = a2;
  v179 = sub_23E9006D4();
  v182 = *(v179 - 8);
  v5 = *(v182 + 64);
  v6 = MEMORY[0x28223BE20](v179);
  v8 = &v171 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v171 - v10;
  MEMORY[0x28223BE20](v9);
  v177 = &v171 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v171 - v15;
  v17 = type metadata accessor for RenderLayerAction();
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v172 = &v171 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v175 = &v171 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v171 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v171 - v26;
  v28 = type metadata accessor for RenderLayerActionType();
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v171 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = v17;
  v32 = *(v17 + 20);
  v33 = v31;
  v209 = v4;
  sub_23E8F5C3C(v4 + v32, v31, type metadata accessor for RenderLayerActionType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v35 = v178;
      v36 = v181;
      if (*(v178 + 16))
      {
        v37 = sub_23E88C9D8(v209);
        if (v38)
        {
          sub_23E8810DC(*(v35 + 56) + 40 * v37, &v191);
          sub_23E881028(&v191, &v187);
          v39 = *__swift_project_boxed_opaque_existential_1(v180, v180[3]);
          sub_23E8F8DBC(&v187, &v191);
          if (v36)
          {
            __swift_destroy_boxed_opaque_existential_1(&v187);
LABEL_45:
            v123 = type metadata accessor for RenderLayerActionType;
            v124 = v33;
            goto LABEL_46;
          }

          sub_23E8A295C(&v191);
          __swift_destroy_boxed_opaque_existential_1(&v187);
          sub_23E8F5CA4(v33, type metadata accessor for RenderLayerActionType);
          v81 = v175;
          goto LABEL_89;
        }
      }

      if (qword_27E35E188 == -1)
      {
LABEL_31:
        v82 = sub_23E900764();
        __swift_project_value_buffer(v82, qword_27E367168);
        sub_23E8F5C3C(v209, v27, type metadata accessor for RenderLayerAction);
        v83 = sub_23E900744();
        v84 = sub_23E900B04();
        if (os_log_type_enabled(v83, v84))
        {
          v85 = v33;
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v191 = v87;
          *v86 = 136315138;
          sub_23E8DF634(&qword_27E35F5C8);
          v88 = sub_23E900DD4();
          v90 = v89;
          sub_23E8F5CA4(v27, type metadata accessor for RenderLayerAction);
          v91 = sub_23E887B9C(v88, v90, &v191);

          *(v86 + 4) = v91;
          _os_log_impl(&dword_23E879000, v83, v84, "No node in registry for %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v87);
          MEMORY[0x23EF18560](v87, -1, -1);
          v92 = v86;
          v33 = v85;
          MEMORY[0x23EF18560](v92, -1, -1);
        }

        else
        {

          sub_23E8F5CA4(v27, type metadata accessor for RenderLayerAction);
        }

        goto LABEL_45;
      }

LABEL_95:
      swift_once();
      goto LABEL_31;
    }

    v177 = v33;
    v56 = v180;
    v57 = __swift_project_boxed_opaque_existential_1(v180, v180[3]);
    v58 = v182;
    v59 = v179;
    (*(v182 + 16))(v16, v209, v179);
    (*(v58 + 56))(v16, 0, 1, v59);
    v60 = *v57;
    sub_23E8F9798(v16, &v187);
    sub_23E87E458(v16, &unk_27E35F820, &qword_23E9064A0);
    v61 = v181;
    v62 = v178;
    if (!*(&v189 + 1))
    {
      sub_23E87E458(&v187, &unk_27E35EB60, &unk_23E907DC0);
      v63 = v177;
      goto LABEL_42;
    }

    v191 = v187;
    v192 = v188;
    v193 = v189;
    v194 = v190;
    v63 = v177;
    if (!*(v178 + 16) || (v64 = sub_23E88C9D8(v209), (v65 & 1) == 0))
    {
LABEL_24:
      sub_23E8A295C(&v191);
LABEL_42:
      v123 = type metadata accessor for RenderLayerActionType;
      v124 = v63;
LABEL_46:
      sub_23E8F5CA4(v124, v123);
      return;
    }

    sub_23E8810DC(*(v62 + 56) + 40 * v64, &v187);
    sub_23E881028(&v187, v183);
    v66 = *__swift_project_boxed_opaque_existential_1(v56, v56[3]);
    sub_23E8FA318(v183, &v187);
    if (v61)
    {
      __swift_destroy_boxed_opaque_existential_1(v183);
      goto LABEL_24;
    }

    v27 = 0;
    v127 = *(&v189 + 1);
    v128 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
    sub_23E8810DC(&v192, v184);
    v182 = v187;
    v33 = sub_23E8FEB0C(v184, v187, v127, v128);
    sub_23E87E458(v184, &unk_27E35F3E0, "t=");
    v129 = *(v33 + 16);
    if (v129)
    {
      v130 = 0;
      v131 = 32;
      v132 = v174;
      while (v130 < *(v33 + 16))
      {
        v133 = *(v33 + v131);
        v134 = *(v33 + v131 + 16);
        *(v202 + 9) = *(v33 + v131 + 25);
        v201 = v133;
        v202[0] = v134;
        if (v132)
        {
          sub_23E8F5D04(&v201, v184);
          v132(&v201);
          sub_23E8F5D60(&v201);
        }

        ++v130;
        v131 += 48;
        if (v129 == v130)
        {
          goto LABEL_62;
        }
      }

      __break(1u);
      goto LABEL_95;
    }

    v132 = v174;
LABEL_62:

    if (BYTE8(v191) == 1)
    {
      v135 = *(&v193 + 1);
      v136 = v194;
      __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
      v137 = (*(v136 + 56))(v135, v136);
      v138 = v137;
      LODWORD(v181) = DWORD1(v187);
      if ((BYTE8(v187) & 1) == 0)
      {
        v139 = v137 == 1 || v132 == 0;
        v81 = v175;
        if (!v139)
        {
          v140 = 0;
          v141 = 0x100000000;
          goto LABEL_76;
        }

LABEL_79:
        v147 = *(&v193 + 1);
        v148 = v194;
        __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
        v149 = (*(v148 + 40))(v147, v148);
        v151 = v150;
        v152 = *(&v189 + 1);
        v153 = v190;
        __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
        if (v149 == (*(v153 + 40))(v152, v153) && v151 == v154)
        {
        }

        else
        {
          v156 = sub_23E900E04();

          if ((v156 & 1) == 0 && v132)
          {
            v157 = *(&v189 + 1);
            v158 = v190;
            __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
            v159 = (*(v158 + 40))(v157, v158);
            v195[0] = v181;
            v195[1] = v159;
            v195[3] = 0;
            v195[4] = 0;
            v195[2] = v160;
            v196 = 5;
            v132(v195);
            __swift_destroy_boxed_opaque_existential_1(v183);

LABEL_88:
            v161 = v177;
            sub_23E8A295C(&v187);
            sub_23E8A295C(&v191);
            sub_23E8F5CA4(v161, type metadata accessor for RenderLayerActionType);
            goto LABEL_89;
          }
        }

LABEL_87:
        __swift_destroy_boxed_opaque_existential_1(v183);
        goto LABEL_88;
      }
    }

    else
    {
      LODWORD(v181) = DWORD1(v187);
      if ((BYTE8(v187) & 1) == 0)
      {
        v81 = v175;
        goto LABEL_79;
      }

      v138 = 1;
    }

    v81 = v175;
    v142 = *(&v189 + 1);
    v143 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
    if (v138 == (*(v143 + 56))(v142, v143) || v132 == 0)
    {
      goto LABEL_87;
    }

    v145 = *(&v189 + 1);
    v146 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
    v141 = (*(v146 + 56))(v145, v146) << 32;
    v140 = 1;
LABEL_76:
    v197 = v141 | v182;
    v198 = 0u;
    v199 = 0u;
    v200 = 2;
    v132(&v197);
    if (v140)
    {
      goto LABEL_87;
    }

    goto LABEL_79;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v67 = v180;
    v68 = __swift_project_boxed_opaque_existential_1(v180, v180[3]);
    v69 = v182;
    v70 = v179;
    (*(v182 + 16))(v16, v209, v179);
    (*(v69 + 56))(v16, 0, 1, v70);
    v71 = *v68;
    sub_23E8F9798(v16, &v187);
    sub_23E87E458(v16, &unk_27E35F820, &qword_23E9064A0);
    if (*(&v189 + 1))
    {
      v191 = v187;
      v192 = v188;
      v193 = v189;
      v194 = v190;
      v72 = __swift_project_boxed_opaque_existential_1(v67, v67[3]);
      v73 = v191;
      v74 = *v72;
      LOBYTE(v183[0]) = 0;
      sub_23E8F9E38(v191, v184);
      if (*(&v185 + 1))
      {
        v187 = v184[0];
        v188 = v184[1];
        v189 = v185;
        v190 = v186;
        v75 = *__swift_project_boxed_opaque_existential_1(v67, v67[3]);
        swift_beginAccess();
        sub_23E8F40F8(v73, v16);
        swift_endAccess();
        sub_23E87E458(v16, &unk_27E35F820, &qword_23E9064A0);
        v76 = *(&v193 + 1);
        v77 = v194;
        __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
        (*(v77 + 24))(v76, v77);
        swift_beginAccess();
        sub_23E8F4264(v8, v184);
        swift_endAccess();
        (*(v182 + 8))(v8, v70);
        sub_23E87E458(v184, &unk_27E35EB60, &unk_23E907DC0);
        v78 = *(&v193 + 1);
        v79 = v194;
        __swift_project_boxed_opaque_existential_1(&v192, *(&v193 + 1));
        sub_23E8FEEDC(sub_23E8F5C34, v75, v78, v79);
        if (v174)
        {
          v205 = v73 | (v187 << 32);
          v206 = 0u;
          v207 = 0u;
          v208 = 1;
          v80 = v181;
          v174(&v205);
          v81 = v175;
          if (v80)
          {
            sub_23E8A295C(&v187);
            sub_23E8A295C(&v191);
            return;
          }
        }

        else
        {
          v81 = v175;
        }

        sub_23E8A295C(&v187);
        sub_23E8A295C(&v191);
        goto LABEL_89;
      }

      sub_23E8A295C(&v191);
      v125 = v184;
    }

    else
    {
      v125 = &v187;
    }

    sub_23E87E458(v125, &unk_27E35EB60, &unk_23E907DC0);
    return;
  }

  v171 = *(v33 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E8D0, &qword_23E906270) + 48));
  v40 = v182;
  v41 = v33;
  v42 = v179;
  (*(v182 + 32))(v177, v41, v179);
  v43 = __swift_project_boxed_opaque_existential_1(v180, v180[3]);
  v44 = *(v40 + 16);
  v44(v16, v209, v42);
  (*(v40 + 56))(v16, 0, 1, v42);
  v45 = *v43;
  sub_23E8F9798(v16, &v187);
  sub_23E87E458(v16, &unk_27E35F820, &qword_23E9064A0);
  if (!*(&v189 + 1))
  {
    sub_23E87E458(&v187, &unk_27E35EB60, &unk_23E907DC0);
    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v106 = sub_23E900764();
    __swift_project_value_buffer(v106, qword_27E367168);
    sub_23E8F5C3C(v209, v25, type metadata accessor for RenderLayerAction);
    sub_23E8810DC(v180, &v191);

    v107 = sub_23E900744();
    v108 = sub_23E900B14();

    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v184[0] = v209;
      *v109 = 136315650;
      sub_23E8DF634(&qword_27E35F5C8);
      LODWORD(v180) = v108;
      v110 = v179;
      v111 = sub_23E900DD4();
      v113 = v112;
      sub_23E8F5CA4(v25, type metadata accessor for RenderLayerAction);
      v114 = sub_23E887B9C(v111, v113, v184);

      *(v109 + 4) = v114;
      *(v109 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E35ED70, &qword_23E905178);
      sub_23E8DF634(&qword_27E35E5B8);
      v115 = sub_23E900804();
      v117 = sub_23E887B9C(v115, v116, v184);

      *(v109 + 14) = v117;
      *(v109 + 22) = 2048;
      v118 = __swift_project_boxed_opaque_existential_1(&v191, *(&v192 + 1));
      v119 = *v118;
      v120 = *(*v118 + 40);
      os_unfair_lock_lock(*(v120 + 16));
      swift_beginAccess();
      v121 = *(*(v119 + 32) + 16);
      os_unfair_lock_unlock(*(v120 + 16));
      __swift_destroy_boxed_opaque_existential_1(&v191);
      *(v109 + 24) = v121;
      _os_log_impl(&dword_23E879000, v107, v180, "No parent for %s in %s map has %ld nodes", v109, 0x20u);
      v122 = v209;
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v122, -1, -1);
      MEMORY[0x23EF18560](v109, -1, -1);

      (*(v182 + 8))(v177, v110);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(&v191);

      sub_23E8F5CA4(v25, type metadata accessor for RenderLayerAction);
      (*(v182 + 8))(v177, v179);
    }

    return;
  }

  v191 = v187;
  v192 = v188;
  v193 = v189;
  v194 = v190;
  v46 = v177;
  v47 = v178;
  if (!*(v178 + 16) || (v48 = sub_23E88C9D8(v177), (v49 & 1) == 0))
  {
    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v93 = sub_23E900764();
    __swift_project_value_buffer(v93, qword_27E367168);
    v44(v11, v46, v42);

    v94 = sub_23E900744();
    v95 = sub_23E900B14();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v209 = swift_slowAlloc();
      *&v187 = v209;
      *v96 = 136315394;
      sub_23E8DF634(&qword_27E35F5C8);
      LODWORD(v180) = v95;
      v97 = sub_23E900DD4();
      v99 = v98;
      v100 = *(v182 + 8);
      v100(v11, v42);
      v101 = sub_23E887B9C(v97, v99, &v187);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2080;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27E35ED70, &qword_23E905178);
      sub_23E8DF634(&qword_27E35E5B8);
      v102 = sub_23E900804();
      v104 = sub_23E887B9C(v102, v103, &v187);

      *(v96 + 14) = v104;
      _os_log_impl(&dword_23E879000, v94, v180, "Unexpected identifier %s in %s", v96, 0x16u);
      v105 = v209;
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v105, -1, -1);
      MEMORY[0x23EF18560](v96, -1, -1);

      sub_23E8A295C(&v191);
      v100(v177, v42);
    }

    else
    {

      v126 = *(v182 + 8);
      v126(v11, v42);
      sub_23E8A295C(&v191);
      v126(v46, v42);
    }

    return;
  }

  sub_23E8810DC(*(v47 + 56) + 40 * v48, &v187);
  sub_23E881028(&v187, v184);
  v50 = v180;
  v51 = *__swift_project_boxed_opaque_existential_1(v180, v180[3]);
  v52 = v181;
  sub_23E8F8DBC(v184, &v187);
  if (v52)
  {
LABEL_18:
    __swift_destroy_boxed_opaque_existential_1(v184);
    sub_23E8A295C(&v191);
    (*(v182 + 8))(v46, v42);
    return;
  }

  v53 = *__swift_project_boxed_opaque_existential_1(v50, v50[3]);
  sub_23E8FA5BC(&v187, &v191);
  v54 = *__swift_project_boxed_opaque_existential_1(v50, v50[3]);
  v55 = sub_23E8FA998(v187, 3);
  if (!v55)
  {
    sub_23E8A295C(&v187);
    goto LABEL_18;
  }

  if (v174)
  {
    if (v171 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v171 <= 0x7FFFFFFF)
    {
      v203[0] = v55;
      v203[1] = v191 | (v171 << 32);
      memset(&v203[2], 0, 24);
      v204 = 0;
      v174(v203);
      goto LABEL_60;
    }

    __break(1u);
    return;
  }

LABEL_60:
  swift_unknownObjectRelease();
  sub_23E8A295C(&v187);
  __swift_destroy_boxed_opaque_existential_1(v184);
  sub_23E8A295C(&v191);
  (*(v182 + 8))(v46, v42);
  v81 = v175;
LABEL_89:
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v162 = sub_23E900764();
  __swift_project_value_buffer(v162, qword_27E367168);
  sub_23E8F5C3C(v209, v81, type metadata accessor for RenderLayerAction);
  v163 = sub_23E900744();
  v164 = sub_23E900B14();
  if (!os_log_type_enabled(v163, v164))
  {

    v123 = type metadata accessor for RenderLayerAction;
    v124 = v81;
    goto LABEL_46;
  }

  v165 = swift_slowAlloc();
  v166 = swift_slowAlloc();
  *&v191 = v166;
  *v165 = 136315138;
  sub_23E8F5C3C(v81, v172, type metadata accessor for RenderLayerAction);
  v167 = sub_23E9008D4();
  v169 = v168;
  sub_23E8F5CA4(v81, type metadata accessor for RenderLayerAction);
  v170 = sub_23E887B9C(v167, v169, &v191);

  *(v165 + 4) = v170;
  _os_log_impl(&dword_23E879000, v163, v164, "Action: %s", v165, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v166);
  MEMORY[0x23EF18560](v166, -1, -1);
  MEMORY[0x23EF18560](v165, -1, -1);
}

uint64_t sub_23E8F5C3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23E8F5CA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23E8F5DB4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E902EF0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x65756C6176;
  *(inited + 96) = 0xE500000000000000;
  sub_23E900C64();
  v1 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_23E8F5FC8@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1 | (*(v1 + 4) << 32);
  result = sub_23E8F5DB4();
  *a1 = result;
  return result;
}

unint64_t sub_23E8F5FFC(uint64_t a1)
{
  result = sub_23E8F6024();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8F6024()
{
  result = qword_27E35F7D0;
  if (!qword_27E35F7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7D0);
  }

  return result;
}

uint64_t sub_23E8F6078(uint64_t a1)
{
  sub_23E900F24();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = a1 + 32;
    do
    {
      sub_23E8810DC(v3, v7);
      v4 = v7[4];
      __swift_project_boxed_opaque_existential_1(v7, v7[3]);
      v5 = *(v4 + 8);
      sub_23E900824();
      __swift_destroy_boxed_opaque_existential_1(v7);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  return sub_23E900F04();
}

uint64_t sub_23E8F6110(uint64_t a1, int a2, char a3)
{
  if (!a3)
  {
    v8 = *(&a1 + 1);
    v9 = *&a1;
    sub_23E900CB4();
    result = MEMORY[0x23EF17600](0x2861626772, 0xE500000000000000);
    v10 = v9 * 255.0;
    if (COERCE_INT(fabs(v9 * 255.0)) > 2139095039)
    {
      __break(1u);
    }

    else if (v10 > -9.2234e18)
    {
      if (v10 < 9.2234e18)
      {
        v11 = sub_23E900DD4();
        MEMORY[0x23EF17600](v11);

        result = MEMORY[0x23EF17600](44, 0xE100000000000000);
        v12 = v8 * 255.0;
        if (COERCE_INT(fabs(v8 * 255.0)) <= 2139095039)
        {
          if (v12 > -9.2234e18)
          {
            if (v12 < 9.2234e18)
            {
              v13 = sub_23E900DD4();
              MEMORY[0x23EF17600](v13);

              result = MEMORY[0x23EF17600](44, 0xE100000000000000);
              v14 = *&a2 * 255.0;
              if (COERCE_INT(fabs(*&a2 * 255.0)) <= 2139095039)
              {
                if (v14 > -9.2234e18)
                {
                  if (v14 < 9.2234e18)
                  {
                    v15 = sub_23E900DD4();
                    MEMORY[0x23EF17600](v15);

                    MEMORY[0x23EF17600](44, 0xE100000000000000);
                    sub_23E900AA4();
                    MEMORY[0x23EF17600](41, 0xE100000000000000);
                    return 0;
                  }

                  goto LABEL_30;
                }

LABEL_29:
                __break(1u);
LABEL_30:
                __break(1u);
                return result;
              }

LABEL_28:
              __break(1u);
              goto LABEL_29;
            }

LABEL_27:
            __break(1u);
            goto LABEL_28;
          }

LABEL_26:
          __break(1u);
          goto LABEL_27;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_24;
  }

  v3 = 0x694C6D756964654DLL;
  v4 = 0x67694C6172746C55;
  if (a1 != 2)
  {
    v4 = 0x7261446172746C55;
  }

  if (a1)
  {
    v3 = 0x61446D756964654DLL;
  }

  if (a1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 1)
  {
    return v5;
  }

  else
  {
    return 0x302C302861626772;
  }
}

uint64_t sub_23E8F6440(unsigned __int8 a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x6528726F68636E61, 0xED0000203A656764);
      v3 = 0xE700000000000000;
      v4 = 0x676E696461656CLL;
      v5 = 0xE400000000000000;
      v6 = 1952867692;
      if (a1 != 2)
      {
        v6 = 0x7468676972;
        v5 = 0xE500000000000000;
      }

      if (a1)
      {
        v4 = 0x676E696C69617274;
        v3 = 0xE800000000000000;
      }

      if (a1 <= 1u)
      {
        v7 = v4;
      }

      else
      {
        v7 = v6;
      }

      if (a1 <= 1u)
      {
        v8 = v3;
      }

      else
      {
        v8 = v5;
      }

      MEMORY[0x23EF17600](v7, v8);

      v9 = 0x74657366666F202CLL;
      v10 = 0xEA0000000000203ALL;
    }

    else
    {
      v9 = 0x6E6F697463617266;
      v10 = 0xEB00000000286C61;
    }
  }

  else
  {
    v9 = 0x6574756C6F736261;
    v10 = 0xE900000000000028;
  }

  MEMORY[0x23EF17600](v9, v10);
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E8F65F8(char a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x6528726F68636E61, 0xED0000203A656764);
      if (a1)
      {
        v3 = 0x6D6F74746F62;
      }

      else
      {
        v3 = 7368564;
      }

      if (a1)
      {
        v4 = 0xE600000000000000;
      }

      else
      {
        v4 = 0xE300000000000000;
      }

      MEMORY[0x23EF17600](v3, v4);

      v5 = 0x74657366666F202CLL;
      v6 = 0xEA0000000000203ALL;
    }

    else
    {
      v5 = 0x6E6F697463617266;
      v6 = 0xEB00000000286C61;
    }
  }

  else
  {
    v5 = 0x6574756C6F736261;
    v6 = 0xE900000000000028;
  }

  MEMORY[0x23EF17600](v5, v6);
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E8F676C(uint64_t a1)
{
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) != 2)
    {
      v1 = 0x7374694674616874;
      goto LABEL_8;
    }

    v1 = 0x6E6F697463617266;
    v2 = 0xEB00000000286C61;
  }

  else
  {
    if (!BYTE4(a1))
    {
      v1 = 0x6574756C6F736261;
LABEL_8:
      v2 = 0xE900000000000028;
      goto LABEL_9;
    }

    v1 = 0x2874657366666FLL;
    v2 = 0xE700000000000000;
  }

LABEL_9:
  MEMORY[0x23EF17600](v1, v2);
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_23E8F6878()
{
  v1 = *v0;
  v2 = v0[1];
  if (*v0 == 1.0 && v2 == 0.0 && v0[2] == 0.0 && v0[3] == 1.0 && v0[4] == 0.0 && v0[5] == 0.0)
  {
    return 0x797469746E656469;
  }

  if (v2 == 0.0 && v0[2] == 0.0)
  {
    if (v0[4] == 0.0 && v0[5] == 0.0)
    {
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x3A7828656C616373, 0xE900000000000020);
      sub_23E900AA4();
      MEMORY[0x23EF17600](0x203A79202CLL, 0xE500000000000000);
      v13 = *(v0 + 3);
      goto LABEL_22;
    }

    if (v1 == 1.0 && v0[3] == 1.0)
    {
      sub_23E900CB4();
      MEMORY[0x23EF17600](0x74616C736E617274, 0xEF203A78286E6F69);
      v14 = *(v0 + 4);
      sub_23E900AA4();
      v10 = 0x203A79202CLL;
      v11 = 0xE500000000000000;
      goto LABEL_21;
    }
  }

  v4 = acosf(*v0);
  v5 = __sincosf_stret(v4);
  v6 = v5.__cosval == v1 && v5.__sinval == v2;
  if (!v6 || v0[2] != -v5.__sinval || v5.__cosval != v0[3] || v0[4] != 0.0 || v0[5] != 0.0)
  {
    sub_23E900CB4();
    MEMORY[0x23EF17600](540696872, 0xE400000000000000);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A62202CLL, 0xE500000000000000);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A63202CLL, 0xE500000000000000);
    v7 = *(v0 + 2);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A64202CLL, 0xE500000000000000);
    v8 = *(v0 + 3);
    sub_23E900AA4();
    MEMORY[0x23EF17600](0x203A7874202CLL, 0xE600000000000000);
    v9 = *(v0 + 4);
    sub_23E900AA4();
    v10 = 0x203A7974202CLL;
    v11 = 0xE600000000000000;
LABEL_21:
    MEMORY[0x23EF17600](v10, v11);
    v12 = *(v0 + 5);
    goto LABEL_22;
  }

  sub_23E900CB4();
  MEMORY[0x23EF17600](0xD000000000000012, 0x800000023E909800);
LABEL_22:
  sub_23E900AA4();
  MEMORY[0x23EF17600](41, 0xE100000000000000);
  return 0;
}

char *sub_23E8F6C48(uint64_t a1, void *a2)
{
  v128 = a2;
  v130 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F738, &unk_23E907A58);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v119 = &v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v112 = &v100 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v126 = *(v7 - 8);
  v127 = v7;
  v8 = *(v126 + 64);
  v9 = MEMORY[0x28223BE20](v7);
  v118 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v110 = &v100 - v12;
  MEMORY[0x28223BE20](v11);
  v111 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v117 = &v100 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v103 = &v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v120 = *(v19 - 8);
  v121 = v19;
  v20 = *(v120 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v116 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v101 = &v100 - v24;
  MEMORY[0x28223BE20](v23);
  v102 = &v100 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F720, &unk_23E907A40);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v26 - 8);
  v115 = &v100 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v109 = &v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v124 = *(v31 - 8);
  v125 = v31;
  v32 = *(v124 + 64);
  v33 = MEMORY[0x28223BE20](v31);
  v114 = &v100 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v107 = &v100 - v36;
  MEMORY[0x28223BE20](v35);
  v108 = &v100 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F710, &qword_23E907A30);
  v39 = *(*(v38 - 8) + 64);
  v40 = MEMORY[0x28223BE20](v38 - 8);
  v113 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v106 = &v100 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  v122 = *(v43 - 8);
  v123 = v43;
  v44 = *(v122 + 64);
  v45 = MEMORY[0x28223BE20](v43);
  v47 = &v100 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v104 = &v100 - v49;
  MEMORY[0x28223BE20](v48);
  v105 = &v100 - v50;
  v51 = type metadata accessor for ContainerContent.Child();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = MEMORY[0x28223BE20](v51);
  v56 = &v100 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x28223BE20](v54);
  v59 = &v100 - v58;
  v60 = MEMORY[0x28223BE20](v57);
  v62 = &v100 - v61;
  MEMORY[0x28223BE20](v60);
  v64 = &v100 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F7D8, &unk_23E907D20);
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v69 = &v100 - v68;
  v70 = &v100 + *(v67 + 56) - v68;
  sub_23E8891B4(v130, &v100 - v68, &qword_27E35F070, &qword_23E906130);
  sub_23E882004(v131, v70);
  if ((*(v52 + 48))(v69, 1, v51) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_23E882004(v69, v56);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          v78 = &qword_27E35E438;
          v79 = &unk_23E907E20;
          v80 = v56;
          goto LABEL_27;
        }

        v81 = v111;
        sub_23E87E3F0(v56, v111, &qword_27E35E438, &unk_23E907E20);
        v82 = v110;
        sub_23E87E3F0(v70, v110, &qword_27E35E438, &unk_23E907E20);
        v83 = v112;
        sub_23E8891B4(v81, v112, &qword_27E35E438, &unk_23E907E20);
        (*(v126 + 56))(v83, 0, 1, v127);
        v84 = v129;
        v85 = sub_23E8EA874(v83, v128);
        if (!v84)
        {
          v70 = v85;
          sub_23E87E458(v83, &qword_27E35F738, &unk_23E907A58);
          v98 = &qword_27E35E438;
          v99 = &unk_23E907E20;
          goto LABEL_37;
        }

        sub_23E87E458(v83, &qword_27E35F738, &unk_23E907A58);
        v86 = &qword_27E35E438;
        v87 = &unk_23E907E20;
      }

      else
      {
        sub_23E882004(v69, v64);
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          v78 = &qword_27E35E430;
          v79 = &unk_23E902C80;
          v80 = v64;
          goto LABEL_27;
        }

        v81 = v105;
        sub_23E87E3F0(v64, v105, &qword_27E35E430, &unk_23E902C80);
        v82 = v104;
        sub_23E87E3F0(v70, v104, &qword_27E35E430, &unk_23E902C80);
        v91 = v106;
        sub_23E8891B4(v81, v106, &qword_27E35E430, &unk_23E902C80);
        (*(v122 + 56))(v91, 0, 1, v123);
        v92 = v129;
        v93 = sub_23E8E8934(v91, v128);
        if (!v92)
        {
          v70 = v93;
          sub_23E87E458(v91, &qword_27E35F710, &qword_23E907A30);
          v98 = &qword_27E35E430;
          v99 = &unk_23E902C80;
          goto LABEL_37;
        }

        sub_23E87E458(v91, &qword_27E35F710, &qword_23E907A30);
        v86 = &qword_27E35E430;
        v87 = &unk_23E902C80;
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        sub_23E882004(v69, v59);
        if (swift_getEnumCaseMultiPayload())
        {
          v78 = &unk_27E35E630;
          v79 = &qword_23E903300;
          v80 = v59;
LABEL_27:
          sub_23E87E458(v80, v78, v79);
          sub_23E8F7ABC();
          swift_allocError();
          swift_willThrow();
          sub_23E8A2434(v69);
LABEL_31:
          sub_23E8A2434(v70);
          return v70;
        }

        v81 = v102;
        sub_23E87E3F0(v59, v102, &unk_27E35E630, &qword_23E903300);
        v82 = v101;
        sub_23E87E3F0(v70, v101, &unk_27E35E630, &qword_23E903300);
        v94 = v103;
        sub_23E8891B4(v81, v103, &unk_27E35E630, &qword_23E903300);
        (*(v120 + 56))(v94, 0, 1, v121);
        v95 = v129;
        v96 = sub_23E8E9EA4(v94, v128);
        if (v95)
        {
          sub_23E87E458(v94, &unk_27E35F3D0, &qword_23E905770);
          v86 = &unk_27E35E630;
          v87 = &qword_23E903300;
          goto LABEL_30;
        }

        v70 = v96;
        sub_23E87E458(v94, &unk_27E35F3D0, &qword_23E905770);
        v98 = &unk_27E35E630;
        v99 = &qword_23E903300;
LABEL_37:
        sub_23E87E458(v82, v98, v99);
        sub_23E87E458(v81, v98, v99);
        sub_23E8A2434(v69);
        return v70;
      }

      sub_23E882004(v69, v62);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v78 = &unk_27E35E440;
        v79 = &unk_23E902C90;
        v80 = v62;
        goto LABEL_27;
      }

      v81 = v108;
      sub_23E87E3F0(v62, v108, &unk_27E35E440, &unk_23E902C90);
      v82 = v107;
      sub_23E87E3F0(v70, v107, &unk_27E35E440, &unk_23E902C90);
      v88 = v109;
      sub_23E8891B4(v81, v109, &unk_27E35E440, &unk_23E902C90);
      (*(v124 + 56))(v88, 0, 1, v125);
      v89 = v129;
      v90 = sub_23E8E939C(v88, v128);
      if (!v89)
      {
        v70 = v90;
        sub_23E87E458(v88, &unk_27E35F720, &unk_23E907A40);
        v98 = &unk_27E35E440;
        v99 = &unk_23E902C90;
        goto LABEL_37;
      }

      sub_23E87E458(v88, &unk_27E35F720, &unk_23E907A40);
      v86 = &unk_27E35E440;
      v87 = &unk_23E902C90;
    }

LABEL_30:
    sub_23E87E458(v82, v86, v87);
    sub_23E87E458(v81, v86, v87);
    v70 = v69;
    goto LABEL_31;
  }

  v71 = swift_getEnumCaseMultiPayload();
  if (v71 > 1)
  {
    if (v71 == 2)
    {
      v72 = &qword_27E35E438;
      v73 = &unk_23E907E20;
      v47 = v118;
      sub_23E87E3F0(v70, v118, &qword_27E35E438, &unk_23E907E20);
      v74 = v119;
      (*(v126 + 56))(v119, 1, 1, v127);
      v70 = sub_23E8EA874(v74, v128);
      v75 = &qword_27E35F738;
      v76 = &unk_23E907A58;
    }

    else
    {
      v72 = &qword_27E35E430;
      v73 = &unk_23E902C80;
      sub_23E87E3F0(v70, v47, &qword_27E35E430, &unk_23E902C80);
      v74 = v113;
      (*(v122 + 56))(v113, 1, 1, v123);
      v70 = sub_23E8E8934(v74, v128);
      v75 = &qword_27E35F710;
      v76 = &qword_23E907A30;
    }
  }

  else if (v71)
  {
    v72 = &unk_27E35E440;
    v73 = &unk_23E902C90;
    v47 = v114;
    sub_23E87E3F0(v70, v114, &unk_27E35E440, &unk_23E902C90);
    v74 = v115;
    (*(v124 + 56))(v115, 1, 1, v125);
    v70 = sub_23E8E939C(v74, v128);
    v75 = &unk_27E35F720;
    v76 = &unk_23E907A40;
  }

  else
  {
    v72 = &unk_27E35E630;
    v73 = &qword_23E903300;
    v47 = v116;
    sub_23E87E3F0(v70, v116, &unk_27E35E630, &qword_23E903300);
    v74 = v117;
    (*(v120 + 56))(v117, 1, 1, v121);
    v70 = sub_23E8E9EA4(v74, v128);
    v75 = &unk_27E35F3D0;
    v76 = &qword_23E905770;
  }

  sub_23E87E458(v74, v75, v76);
  sub_23E87E458(v47, v72, v73);
  return v70;
}

unint64_t sub_23E8F7ABC()
{
  result = qword_27E35F7E0;
  if (!qword_27E35F7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F7E0);
  }

  return result;
}

uint64_t sub_23E8F7B10(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40))
  {
    v4 = *(a1 + 16);
    v11[0] = *a1;
    v11[1] = v4;
    v11[2] = *(a1 + 32);
    v12 = *(a1 + 48);
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v2;
    sub_23E8FC7FC(v11, a2, isUniquelyReferenced_nonNull_native);
    v7 = sub_23E9006D4();
    result = (*(*(v7 - 8) + 8))(a2, v7);
    *v2 = v10;
  }

  else
  {
    sub_23E87E458(a1, &unk_27E35EB60, &unk_23E907DC0);
    sub_23E8F4264(a2, v11);
    v9 = sub_23E9006D4();
    (*(*(v9 - 8) + 8))(a2, v9);
    return sub_23E87E458(v11, &unk_27E35EB60, &unk_23E907DC0);
  }

  return result;
}

uint64_t sub_23E8F7C3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_23E881028(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_23E8FC9CC(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_23E9006D4();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_23E87E458(a1, &unk_27E35F3E0, "t=");
    sub_23E8FB8B0(a2, v10);
    v8 = sub_23E9006D4();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_23E87E458(v10, &unk_27E35F3E0, "t=");
  }

  return result;
}

uint64_t sub_23E8F7D58(uint64_t a1, unsigned int a2)
{
  v3 = v2;
  v6 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v8 = &v24 - v7;
  v9 = sub_23E9006D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23E87E458(a1, &unk_27E35F820, &qword_23E9064A0);
    v14 = *v3;
    v15 = sub_23E88CAE8(a2);
    if (v16)
    {
      v17 = v15;
      v18 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v3;
      v25 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_23E8D0688();
        v20 = v25;
      }

      (*(v10 + 32))(v8, *(v20 + 56) + *(v10 + 72) * v17, v9);
      sub_23E8FC1AC(v17, v20);
      *v3 = v20;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_23E87E458(v8, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v21 = *v3;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    result = sub_23E8FCBA8(v13, a2, v22);
    *v3 = v25;
  }

  return result;
}

uint64_t sub_23E8F7FA8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v17 - v7;
  v9 = sub_23E9006D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_23E87E458(a1, &unk_27E35F820, &qword_23E9064A0);
    sub_23E8F435C(a2, v8);
    (*(v10 + 8))(a2, v9);
    return sub_23E87E458(v8, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    (*(v10 + 32))(v13, a1, v9);
    v15 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_23E8FCD10(v13, a2, isUniquelyReferenced_nonNull_native);
    result = (*(v10 + 8))(a2, v9);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_23E8F8198(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v5 = *(v4 - 8);
  v6 = v5[8];
  MEMORY[0x28223BE20](v4);
  v75 = &v67 - v7;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F870, &unk_23E907E10);
  v8 = *(*(v81 - 8) + 64);
  MEMORY[0x28223BE20](v81);
  v10 = (&v67 - v9);
  v84 = type metadata accessor for ContainerContent.Child();
  v80 = *(v84 - 8);
  v11 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](v84);
  v85 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v67 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v79 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v67 - v19;
  v82 = sub_23E900734();
  v69 = *(v82 - 8);
  v21 = *(v69 + 64);
  v22 = MEMORY[0x28223BE20](v82);
  v86 = &v67 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v83 = &v67 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v67 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x28223BE20](v28 - 8);
  v74 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v33 = &v67 - v32;
  v34 = MEMORY[0x277D84F90];
  *(v2 + 16) = sub_23E88F32C(MEMORY[0x277D84F90]);
  *(v2 + 24) = sub_23E88F508(v34);
  *(v2 + 32) = sub_23E88F714(v34);
  type metadata accessor for UnfairLock();
  v35 = swift_allocObject();
  v36 = swift_slowAlloc();
  *(v35 + 16) = v36;
  *v36 = 0;
  *(v2 + 40) = v35;
  *(v2 + 48) = 10;
  v37 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  v38 = v5[7];
  v73 = v5 + 7;
  v72 = v38;
  v38(v2 + OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree, 1, 1, v4);
  swift_beginAccess();
  sub_23E8FD2CC(a1, v2 + v37);
  swift_endAccess();
  sub_23E8891B4(a1, v33, &unk_27E35F3D0, &qword_23E905770);
  v39 = v5[6];
  v76 = v4;
  if (v39(v33, 1, v4) == 1)
  {
    sub_23E87E458(a1, &unk_27E35F3D0, &qword_23E905770);
    v40 = v33;
    v41 = &unk_27E35F3D0;
    v42 = &qword_23E905770;
LABEL_26:
    sub_23E87E458(v40, v41, v42);
    return v2;
  }

  sub_23E900714();
  sub_23E8891B4(v33, v20, &unk_27E35E630, &qword_23E903300);
  swift_storeEnumTagMultiPayload();
  sub_23E882004(v20, v79);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v20;
  v78 = v27;
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v49 = &qword_27E35E438;
      v50 = &unk_23E907E20;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v51 = sub_23E8A25C4();
    }

    else
    {
      v49 = &qword_27E35E430;
      v50 = &unk_23E902C80;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v51 = sub_23E8A2490();
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v88 = v76;
      v89 = sub_23E8A2828();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
      v46 = &unk_27E35E630;
      v47 = &qword_23E903300;
      v48 = v79;
      goto LABEL_11;
    }

    v49 = &unk_27E35E440;
    v50 = &unk_23E902C90;
    v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v51 = sub_23E8A26F8();
  }

  v89 = v51;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v87);
  v48 = v79;
  v46 = v49;
  v47 = v50;
LABEL_11:
  sub_23E87E3F0(v48, boxed_opaque_existential_1, v46, v47);
  sub_23E8F8DBC(v87, v90);
  v79 = v2;
  v68 = a1;
  __swift_destroy_boxed_opaque_existential_1(v87);
  sub_23E8A295C(v90);
  sub_23E8A2434(v44);
  v52 = v83;
  v53 = *(v76 + 36);
  v71 = v33;
  v54 = *&v33[v53];
  v55 = *(v54 + 16);
  if (!v55)
  {
LABEL_25:
    sub_23E87E458(v68, &unk_27E35F3D0, &qword_23E905770);
    (*(v69 + 8))(v78, v82);
    v2 = v79;

    v41 = &unk_27E35E630;
    v42 = &qword_23E903300;
    v40 = v71;
    goto LABEL_26;
  }

  v56 = 0;
  v77 = (v69 + 8);
  v70 = v10;
  while (v56 < *(v54 + 16))
  {
    v57 = v54 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v56;
    v27 = *(v81 + 48);
    *v10 = v56;
    sub_23E882004(v57, v10 + v27);
    sub_23E882004(v10 + v27, v16);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_23E8A2434(v16);
      sub_23E900724();
      sub_23E882004(v10 + v27, v85);
      v58 = swift_getEnumCaseMultiPayload();
      if (v58 > 1)
      {
        if (v58 == 2)
        {
          v59 = &qword_27E35E438;
          v60 = &unk_23E907E20;
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
          v61 = sub_23E8A25C4();
        }

        else
        {
          v59 = &qword_27E35E430;
          v60 = &unk_23E902C80;
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
          v61 = sub_23E8A2490();
        }
      }

      else
      {
        v59 = &unk_27E35E630;
        v60 = &qword_23E903300;
        if (v58)
        {
          v59 = &unk_27E35E440;
          v60 = &unk_23E902C90;
          v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
          v61 = sub_23E8A26F8();
        }

        else
        {
          v88 = v76;
          v61 = sub_23E8A2828();
        }
      }

      v89 = v61;
      v65 = __swift_allocate_boxed_opaque_existential_1(v87);
      sub_23E87E3F0(v85, v65, v59, v60);
      sub_23E8F8DBC(v87, v90);
      sub_23E8A295C(v90);
      __swift_destroy_boxed_opaque_existential_1(v87);
      v52 = v83;
      (*v77)(v86, v82);
    }

    else
    {
      v62 = v55;
      v27 = v75;
      sub_23E87E3F0(v16, v75, &unk_27E35E630, &qword_23E903300);
      v63 = v74;
      sub_23E8891B4(v71, v74, &unk_27E35E630, &qword_23E903300);
      v72(v63, 0, 1, v76);
      sub_23E900724();
      v52 = v83;
      v64 = v79;

      sub_23E89F4FC(v63, v52, v27, v64);
      (*v77)(v52, v82);
      sub_23E87E458(v63, &unk_27E35F3D0, &qword_23E905770);
      sub_23E87E458(v27, &unk_27E35E630, &qword_23E903300);
      v55 = v62;
      v10 = v70;
    }

    ++v56;
    sub_23E87E458(v10, &unk_27E35F870, &unk_23E907E10);
    if (v55 == v56)
    {
      goto LABEL_25;
    }
  }

  __break(1u);

  (*v77)(v52, v82);
  sub_23E87E458(v55, &unk_27E35F3D0, &qword_23E905770);
  sub_23E87E458(v27, &unk_27E35E630, &qword_23E903300);

  result = sub_23E87E458(v70, &unk_27E35F870, &unk_23E907E10);
  __break(1u);
  return result;
}

void sub_23E8F8C04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(type metadata accessor for ContainerContent.Child() - 8) + 64);
  MEMORY[0x28223BE20]();
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(a3, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v9 = &qword_27E35E438;
      v10 = &unk_23E907E20;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v11 = sub_23E8A25C4();
    }

    else
    {
      v9 = &qword_27E35E430;
      v10 = &unk_23E902C80;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v11 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v9 = &unk_27E35E440;
    v10 = &unk_23E902C90;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v11 = sub_23E8A26F8();
  }

  else
  {
    v9 = &unk_27E35E630;
    v10 = &qword_23E903300;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v11 = sub_23E8A2828();
  }

  v15 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_23E87E3F0(v7, boxed_opaque_existential_1, v9, v10);
  sub_23E8F8DBC(v13, v16);
  if (v3)
  {
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_23E8A295C(v16);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }
}

uint64_t sub_23E8F8DBC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v42[-v10];
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v14 = *(v12 + 24);
  v15 = v12;
  v16 = v51;
  v14(v13, v15);
  v19 = *(v5 + 56);
  v17 = v5 + 56;
  v18 = v19;
  v19(v11, 0, 1, v4);
  sub_23E8F9798(v11, v48);
  result = sub_23E87E458(v11, &unk_27E35F820, &qword_23E9064A0);
  if (*(&v49 + 1))
  {
    v21 = v48[1];
    *a2 = v48[0];
    *(a2 + 16) = v21;
    *(a2 + 32) = v49;
    *(a2 + 48) = v50;
    return result;
  }

  v46 = v17;
  v47 = v4;
  v44 = v8;
  v45 = a2;
  result = sub_23E87E458(v48, &unk_27E35EB60, &unk_23E907DC0);
  v22 = *(v16 + 48);
  v23 = v22 + 1;
  if (__OFADD__(v22, 1))
  {
    __break(1u);
    goto LABEL_13;
  }

  v24 = v16;
  *(v16 + 48) = v23;
  v25 = a1[3];
  v26 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v25);
  (*(v26 + 24))(v25, v26);
  v18(v11, 0, 1, v47);
  swift_beginAccess();
  sub_23E8F7D58(v11, v23);
  swift_endAccess();
  v27 = a1[3];
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v27);
  result = (*(v28 + 32))(v27, v28);
  if (result == 3)
  {
    v43 = v23;
    v29 = *(v24 + 48);
    v30 = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      *(v24 + 48) = v30;
      v31 = a1[3];
      v32 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, v31);
      (*(v32 + 24))(v31, v32);
      v18(v11, 0, 1, v47);
      swift_beginAccess();
      sub_23E8F7D58(v11, v30);
      swift_endAccess();
      v23 = v43;
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

LABEL_7:
  v33 = a1[3];
  v34 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v33);
  v35 = (*(v34 + 32))(v33, v34);
  if (v35 == 3)
  {
    v36 = *(v24 + 48);
  }

  else
  {
    v36 = 0;
  }

  v38 = v44;
  v37 = v45;
  v39 = v35 != 3;
  sub_23E8810DC(a1, v45 + 16);
  *v37 = v23;
  *(v37 + 4) = v36;
  *(v37 + 8) = v39;
  v40 = a1[3];
  v41 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v40);
  (*(v41 + 24))(v40, v41);
  sub_23E88FE10(v37, v48);
  swift_beginAccess();
  sub_23E8F7B10(v48, v38);
  return swift_endAccess();
}

id sub_23E8F91D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v46 = a2 - 1;
  if (a2 < 1)
  {
    return 0;
  }

  v16 = sub_23E8C8AC0();
  if ((*(a1 + 8) & 1) == 0)
  {
    if (a2 != 1)
    {
      v50 = sub_23E8C8ECC();
      *&v55[0] = MEMORY[0x277D84F90];
      if (v50)
      {
        v35 = swift_unknownObjectRetain();
        MEMORY[0x23EF17660](v35);
        if (*((*&v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v55[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v39 = *((*&v55[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23E9009D4();
        }

        sub_23E9009F4();
      }

      sub_23E87E458(&v50, &unk_27E35F838, &unk_23E907DD8);
      goto LABEL_28;
    }

    return v16;
  }

  v47 = v8;
  v17 = *(a1 + 40);
  v18 = *(a1 + 48);
  __swift_project_boxed_opaque_existential_1((a1 + 16), v17);
  v19 = (*(v18 + 64))(v17, v18);
  if (!v19)
  {
    return v16;
  }

  v60 = MEMORY[0x277D84F90];
  v20 = *(v19 + 16);
  if (v20)
  {
    v41 = v16;
    v42 = v19;
    v21 = v19 + 32;
    v48 = (v5 + 56);
    v22 = (v5 + 48);
    v45 = (v5 + 32);
    v44 = (v5 + 8);
    v43 = MEMORY[0x277D84F90];
    v23 = &qword_23E9064A0;
    while (1)
    {
      sub_23E8810DC(v21, &v57);
      v24 = v23;
      v25 = v58;
      v26 = v59;
      __swift_project_boxed_opaque_existential_1(&v57, v58);
      v27 = v25;
      v23 = v24;
      (*(v26 + 24))(v27, v26);
      (*v48)(v15, 0, 1, v4);
      sub_23E8891B4(v15, v13, &unk_27E35F820, v24);
      if ((*v22)(v13, 1, v4) == 1)
      {
        sub_23E87E458(v15, &unk_27E35F820, v24);
        sub_23E87E458(v13, &unk_27E35F820, v24);
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0;
      }

      else
      {
        v28 = v47;
        (*v45)(v47, v13, v4);
        v29 = v49;
        swift_beginAccess();
        v30 = *(v29 + 32);
        if (*(v30 + 16) && (v31 = sub_23E88C9D8(v28), (v32 & 1) != 0))
        {
          sub_23E88FE10(*(v30 + 56) + 56 * v31, &v51);
        }

        else
        {
          v54 = 0;
          v52 = 0u;
          v53 = 0u;
          v51 = 0u;
        }

        swift_endAccess();
        (*v44)(v28, v4);
        v23 = v24;
        sub_23E87E458(v15, &unk_27E35F820, v24);
        if (*(&v53 + 1))
        {
          v55[0] = v51;
          v55[1] = v52;
          v55[2] = v53;
          v56 = v54;
          v33 = sub_23E8F91D4(v55, v46);
          sub_23E8A295C(v55);
          v34 = __swift_destroy_boxed_opaque_existential_1(&v57);
          if (v33)
          {
            MEMORY[0x23EF17660](v34);
            if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_23E9009D4();
            }

            sub_23E9009F4();
            v43 = v60;
            v23 = v24;
          }

          goto LABEL_8;
        }
      }

      sub_23E87E458(&v51, &unk_27E35EB60, &unk_23E907DC0);
      __swift_destroy_boxed_opaque_existential_1(&v57);
LABEL_8:
      v21 += 40;
      if (!--v20)
      {

        v16 = v41;
        v36 = v43;
        if (!(v43 >> 62))
        {
          goto LABEL_27;
        }

LABEL_30:
        if (!sub_23E900D34())
        {
          goto LABEL_31;
        }

LABEL_28:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
        v37 = sub_23E9009A4();

        [v16 setChildren_];

        return v16;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_30;
  }

LABEL_27:
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

LABEL_31:

  return v16;
}

uint64_t sub_23E8F9798@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v7 = &v17 - v6;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E8891B4(a1, v7, &unk_27E35F820, &qword_23E9064A0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    result = sub_23E87E458(v7, &unk_27E35F820, &qword_23E9064A0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    swift_beginAccess();
    v14 = *(v2 + 32);
    if (*(v14 + 16) && (v15 = sub_23E88C9D8(v12), (v16 & 1) != 0))
    {
      sub_23E88FE10(*(v14 + 56) + 56 * v15, a2);
    }

    else
    {
      *(a2 + 48) = 0;
      *(a2 + 16) = 0u;
      *(a2 + 32) = 0u;
      *a2 = 0u;
    }

    swift_endAccess();
    return (*(v9 + 8))(v12, v8);
  }

  return result;
}

uint64_t sub_23E8F99AC()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  sub_23E87E458(v0 + OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree, &unk_27E35F3D0, &qword_23E905770);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RemoteInspectorNodeRegistry()
{
  result = qword_27E35F800;
  if (!qword_27E35F800)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23E8F9A94()
{
  sub_23E8F0048();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_23E8F9B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  v12 = sub_23E9006D4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0x100000000) != 0)
  {
    (*(v13 + 56))(v11, 1, 1, v12);
LABEL_9:
    result = sub_23E87E458(v11, &unk_27E35F820, &qword_23E9064A0);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0;
    return result;
  }

  swift_beginAccess();
  v17 = *(v2 + 16);
  if (*(v17 + 16))
  {
    v18 = *(v2 + 16);
    v19 = sub_23E88CAE8(a1);
    if (v20)
    {
      (*(v13 + 16))(v11, *(v17 + 56) + *(v13 + 72) * v19, v12);
      v21 = 0;
    }

    else
    {
      v21 = 1;
    }
  }

  else
  {
    v21 = 1;
  }

  v22 = *(v13 + 56);
  v22(v11, v21, 1, v12);
  swift_endAccess();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    goto LABEL_9;
  }

  (*(v13 + 32))(v16, v11, v12);
  (*(v13 + 16))(v9, v16, v12);
  v22(v9, 0, 1, v12);
  sub_23E8F9798(v9, a2);
  sub_23E87E458(v9, &unk_27E35F820, &qword_23E9064A0);
  return (*(v13 + 8))(v16, v12);
}

double sub_23E8F9E38@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v12 - v6;
  sub_23E8F9B54(a1 | ((HIDWORD(a1) & 1) << 32), v13);
  if (*(&v14 + 1))
  {
    v16 = v13[0];
    v17[0] = v13[1];
    v17[1] = v14;
    v8 = v15;
    v18 = v15;
    v9 = *(&v14 + 1);
    __swift_project_boxed_opaque_existential_1(v17, *(&v14 + 1));
    (*(v8 + 24))(v9, v8);
    v10 = sub_23E9006D4();
    (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
    sub_23E8F9FD4(v7, a2);
    sub_23E87E458(v7, &unk_27E35F820, &qword_23E9064A0);
    sub_23E8A295C(&v16);
  }

  else
  {
    sub_23E87E458(v13, &unk_27E35EB60, &unk_23E907DC0);
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

double sub_23E8F9FD4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v32 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v30 - v9;
  v11 = sub_23E9006D4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v30 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v30 - v20;
  sub_23E8891B4(a1, v10, &unk_27E35F820, &qword_23E9064A0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_23E87E458(v10, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    v31 = *(v12 + 32);
    v31(v21, v10, v11);
    swift_beginAccess();
    v22 = *(v2 + 24);
    if (*(v22 + 16))
    {
      v23 = *(v2 + 24);
      v24 = sub_23E88C9D8(v21);
      if (v25)
      {
        v26 = *(v12 + 16);
        v26(v16, *(v22 + 56) + *(v12 + 72) * v24, v11);
        v31(v19, v16, v11);
        swift_endAccess();
        v27 = v32;
        v26(v32, v19, v11);
        (*(v12 + 56))(v27, 0, 1, v11);
        sub_23E8F9798(v27, a2);
        sub_23E87E458(v27, &unk_27E35F820, &qword_23E9064A0);
        v28 = *(v12 + 8);
        v28(v19, v11);
        v28(v21, v11);
        return result;
      }
    }

    swift_endAccess();
    (*(v12 + 8))(v21, v11);
  }

  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_23E8FA318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v22 - v11;
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v14 + 24))(v13, v14);
  (*(v5 + 56))(v12, 0, 1, v4);
  sub_23E8F9798(v12, v23);
  sub_23E87E458(v12, &unk_27E35F820, &qword_23E9064A0);
  if (*(&v24 + 1))
  {
    v26[0] = v23[0];
    v26[1] = v23[1];
    v26[2] = v24;
    v27 = v25;
    v15 = v23[0];
    sub_23E8810DC(a1, a2 + 16);
    v16 = DWORD1(v26[0]);
    v17 = BYTE8(v26[0]);
    *a2 = v15;
    *(a2 + 4) = v16;
    *(a2 + 8) = v17;
    v18 = a1[3];
    v19 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 24))(v18, v19);
    sub_23E88FE10(a2, v23);
    swift_beginAccess();
    sub_23E8F7B10(v23, v8);
    swift_endAccess();
    return sub_23E8A295C(v26);
  }

  else
  {
    sub_23E87E458(v23, &unk_27E35EB60, &unk_23E907DC0);
    sub_23E8A9420();
    swift_allocError();
    *v21 = 6;
    return swift_willThrow();
  }
}

uint64_t sub_23E8FA5BC(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23[-v6 - 8];
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v23[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v13 = *a1;
  v23[0] = 0;
  sub_23E8F9B54(v13, v23);
  v14 = v24;
  result = sub_23E87E458(v23, &unk_27E35EB60, &unk_23E907DC0);
  if (v14)
  {
    v16 = *a2;
    v23[0] = 0;
    sub_23E8F9B54(v16, v23);
    v17 = v24;
    result = sub_23E87E458(v23, &unk_27E35EB60, &unk_23E907DC0);
    if (v17)
    {
      v18 = a1[5];
      v19 = a1[6];
      __swift_project_boxed_opaque_existential_1(a1 + 2, v18);
      (*(v19 + 24))(v18, v19);
      v20 = a2[5];
      v21 = a2[6];
      __swift_project_boxed_opaque_existential_1(a2 + 2, v20);
      (*(v21 + 24))(v20, v21);
      (*(v9 + 56))(v7, 0, 1, v8);
      swift_beginAccess();
      sub_23E8F7FA8(v7, v12);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_23E8FA7F8(void *a1)
{
  v2 = sub_23E9006D4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v14 - v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 24))(v11, v12);
  swift_beginAccess();
  sub_23E8F435C(v6, v10);
  swift_endAccess();
  (*(v3 + 8))(v6, v2);
  return sub_23E87E458(v10, &unk_27E35F820, &qword_23E9064A0);
}

id sub_23E8FA998(uint64_t a1, uint64_t a2)
{
  LOBYTE(v17) = 0;
  sub_23E8F9B54(a1, v14);
  if (*(&v15 + 1))
  {
    v17 = v14[0];
    v18 = v14[1];
    v19 = v15;
    v20 = v16;
    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v4 = sub_23E900764();
    __swift_project_value_buffer(v4, qword_27E367168);
    sub_23E882260(0xD000000000000065, 0x800000023E909890, 0xD00000000000001FLL, 0x800000023E909900);
    if ((BYTE8(v17) & 1) != 0 || DWORD1(v17) != a1)
    {
      v12 = sub_23E8F91D4(&v17, a2);
    }

    else
    {
      v5 = objc_opt_self();
      v6 = *(&v19 + 1);
      v7 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      (*(v7 + 48))(v6, v7);
      v8 = sub_23E900854();

      v9 = *(&v19 + 1);
      v10 = v20;
      __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
      (*(v10 + 40))(v9, v10);
      v11 = sub_23E900854();

      v12 = [v5 nodeWithIdentifier:a1 name:v8 type:3 value:v11];
    }

    sub_23E8A295C(&v17);
  }

  else
  {
    sub_23E87E458(v14, &unk_27E35EB60, &unk_23E907DC0);
    return 0;
  }

  return v12;
}

id sub_23E8FABC4()
{
  v1 = sub_23E9006D4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v6 = &v33[-2] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v33[-2] - v7;
  v9 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  swift_beginAccess();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  if ((*(*(v10 - 8) + 48))(v0 + v9, 1, v10))
  {
    goto LABEL_12;
  }

  (*(v2 + 16))(v6, v0 + v9, v1);
  (*(v2 + 32))(v8, v6, v1);
  swift_beginAccess();
  v11 = *(v0 + 32);
  if (*(v11 + 16) && (v12 = *(v0 + 32), v13 = sub_23E88C9D8(v8), (v14 & 1) != 0))
  {
    sub_23E88FE10(*(v11 + 56) + 56 * v13, v34);
    if (*(&v35 + 1))
    {
      sub_23E88FE10(v34, v33);
      sub_23E87E458(v34, &unk_27E35EB60, &unk_23E907DC0);
      swift_endAccess();
      v15 = v33[0];
      sub_23E8A295C(v33);
      v16 = sub_23E8FA998(v15, 3);
      if (v16)
      {
        v17 = v16;
        if (qword_27E35E188 != -1)
        {
          swift_once();
        }

        v18 = sub_23E900764();
        __swift_project_value_buffer(v18, qword_27E367168);
        sub_23E882260(0xD000000000000065, 0x800000023E909890, 0x75636F44656B616DLL, 0xEE002928746E656DLL);
        v19 = objc_opt_self();
        v20 = sub_23E900854();
        v21 = sub_23E900854();
        v22 = [v19 nodeWithIdentifier:0 name:v20 type:9 value:v21];

        [v22 setNodeType_];
        v23 = sub_23E900854();
        [v22 setDocumentURL_];

        v24 = sub_23E900854();
        [v22 setXmlVersion_];

        [v22 setChildNodeCount_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F848, &unk_23E907DE8);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_23E907D30;
        *(v25 + 32) = v17;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F830, &qword_23E907DD0);
        v26 = sub_23E9009A4();

        [v22 setChildren_];
        swift_unknownObjectRelease();

        (*(v2 + 8))(v8, v1);
        return v22;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v36 = 0;
    v35 = 0u;
    memset(v34, 0, sizeof(v34));
  }

  sub_23E87E458(v34, &unk_27E35EB60, &unk_23E907DC0);
  swift_endAccess();
LABEL_11:
  (*(v2 + 8))(v8, v1);
LABEL_12:
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v28 = sub_23E900764();
  __swift_project_value_buffer(v28, qword_27E367168);
  v29 = sub_23E900744();
  v30 = sub_23E900B04();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_23E879000, v29, v30, "Failed to get root node", v31, 2u);
    MEMORY[0x23EF18560](v31, -1, -1);
  }

  return 0;
}

void sub_23E8FB110(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v54 = a3;
  v56 = a2;
  v6 = sub_23E900734();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v46 - v16;
  v63[0] = sub_23E8901F8(MEMORY[0x277D84F90]);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v19 = *(v18 - 8);
  v51 = *(v19 + 56);
  v50 = v19 + 56;
  v51(v17, 1, 1, v18);
  sub_23E900714();
  sub_23E89FC80(v17, v10, a1, v63);
  v20 = v10;
  v21 = v56;
  (*(v7 + 8))(v20, v6);
  v49 = v17;
  sub_23E87E458(v17, &unk_27E35F3D0, &qword_23E905770);
  v22 = v63[0];
  v23 = OBJC_IVAR____TtC10AirPlayKit27RemoteInspectorNodeRegistry_displayTree;
  swift_beginAccess();
  sub_23E8891B4(v21 + v23, v15, &unk_27E35F3D0, &qword_23E905770);
  v24 = sub_23E8E9EA4(v15, a1);
  sub_23E87E458(v15, &unk_27E35F3D0, &qword_23E905770);
  if (v4)
  {
    goto LABEL_2;
  }

  v64 = v22;
  v53 = v18;
  v25 = *(v24 + 16);
  if (!v25)
  {

LABEL_2:

    return;
  }

  v26 = a1;
  v47 = v23;
  if (qword_27E35E188 != -1)
  {
LABEL_19:
    swift_once();
  }

  v27 = sub_23E900764();
  v28 = __swift_project_value_buffer(v27, qword_27E367168);

  v46[1] = v28;
  v29 = sub_23E900744();
  v30 = sub_23E900B14();
  v31 = os_log_type_enabled(v29, v30);
  v48 = v26;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 134217984;
    *(v32 + 4) = *(v24 + 16);

    _os_log_impl(&dword_23E879000, v29, v30, "Merging %ld actions", v32, 0xCu);
    MEMORY[0x23EF18560](v32, -1, -1);
  }

  else
  {
  }

  v33 = v53;
  v34 = 0;
  v26 = &qword_27E35F5C0;
  v35 = v24 + 32;
  v52 = v24;
  do
  {
    if (v34 >= *(v24 + 16))
    {
      __break(1u);
      goto LABEL_19;
    }

    sub_23E8810DC(v35, v63);
    sub_23E8810DC(v63, v59);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F5C0, &unk_23E905D80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35F858, &qword_23E907DF8);
    if (swift_dynamicCast())
    {
      sub_23E881028(v57, v60);
      v37 = v61;
      v36 = v62;
      __swift_project_boxed_opaque_existential_1(v60, v61);
      v59[3] = type metadata accessor for RemoteInspectorNodeRegistry();
      v59[4] = &off_28511FF10;
      v59[0] = v56;
      v38 = *(v36 + 16);

      v38(v59, v64, v54, v55, v37, v36);
      __swift_destroy_boxed_opaque_existential_1(v63);
      __swift_destroy_boxed_opaque_existential_1(v59);
      __swift_destroy_boxed_opaque_existential_1(v60);
      v24 = v52;
      v33 = v53;
    }

    else
    {
      v58 = 0;
      memset(v57, 0, sizeof(v57));
      __swift_destroy_boxed_opaque_existential_1(v63);
      sub_23E87E458(v57, &unk_27E35F860, &unk_23E907E00);
    }

    ++v34;
    v35 += 40;
  }

  while (v25 != v34);

  v39 = v49;
  sub_23E8891B4(v48, v49, &unk_27E35E630, &qword_23E903300);
  v51(v39, 0, 1, v33);
  v40 = v56;
  v41 = v47;
  swift_beginAccess();
  sub_23E8F1354(v39, v40 + v41);
  swift_endAccess();

  v42 = sub_23E900744();
  v43 = sub_23E900B14();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 134217984;
    v45 = *(v24 + 16);

    *(v44 + 4) = v45;

    _os_log_impl(&dword_23E879000, v42, v43, "Merged %ld actions", v44, 0xCu);
    MEMORY[0x23EF18560](v44, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

double sub_23E8FB7F0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_23E88CA70(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v18 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8CFE28();
      v12 = v18;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56) + 72 * v9;
    v15 = *(v14 + 48);
    *(a3 + 32) = *(v14 + 32);
    *(a3 + 48) = v15;
    *(a3 + 64) = *(v14 + 64);
    v16 = *(v14 + 16);
    *a3 = *v14;
    *(a3 + 16) = v16;
    sub_23E8FB994(v9, v12);
    *v4 = v12;
  }

  else
  {
    *(a3 + 64) = 0;
    result = 0.0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

double sub_23E8FB8B0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_23E88C9D8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23E8D0400();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_23E9006D4();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_23E881028((*(v11 + 56) + 40 * v8), a2);
    sub_23E8FBE88(v8, v11);
    *v3 = v11;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

char *sub_23E8FB994(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E900C34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_23E900EB4();

      sub_23E900904();
      v13 = sub_23E900F14();

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
        result = (v18 + 72 * v3);
        v19 = (v18 + 72 * v6);
        if (72 * v3 < (72 * v6) || result >= v19 + 72 || v3 != v6)
        {
          result = memmove(result, v19, 0x48uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_23E8FBB5C(int64_t a1, uint64_t a2)
{
  v46 = sub_23E9006D4();
  v4 = *(v46 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20]();
  v45 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v47 = v7;
    v13 = sub_23E900C34();
    v14 = v46;
    v7 = v47;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v43 = (v13 + 1) & v12;
    v44 = v17;
    v18 = *(v16 + 56);
    v41 = (v16 - 8);
    v42 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v45;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v44(v45, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      v26 = sub_23E900814();
      result = (*v41)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v43)
      {
        if (v27 >= v43 && a1 >= v27)
        {
LABEL_15:
          v7 = v47;
          v30 = *(v47 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v47;
            v18 = v19;
            v15 = v22;
            v9 = v42;
          }

          else
          {
            v9 = v42;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v47;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 56 * a1;
          v33 = (v31 + 56 * v11);
          if (a1 != v11 || v32 >= v33 + 56)
          {
            v34 = *v33;
            v35 = v33[1];
            v36 = v33[2];
            *(v32 + 48) = *(v33 + 6);
            *(v32 + 16) = v35;
            *(v32 + 32) = v36;
            *v32 = v34;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v43 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v42;
      v18 = v19;
      v7 = v47;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v37 = *(v7 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v39;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_23E8FBE88(int64_t a1, uint64_t a2)
{
  v45 = sub_23E9006D4();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = MEMORY[0x28223BE20](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = sub_23E900C34();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      v26 = sub_23E900814();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_23E8FC1AC(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23E900C34() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x23EF17B70](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 4 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_23E9006D4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
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

unint64_t sub_23E8FC35C(int64_t a1, uint64_t a2)
{
  v4 = sub_23E9006D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_23E900C34();
    v15 = v13;
    v35 = (v14 + 1) & v13;
    v36 = a2 + 64;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v18 = *(v16 + 56);
    v33 = (v16 - 8);
    v34 = v17;
    do
    {
      v19 = v18 * v12;
      v20 = v15;
      v21 = v16;
      v34(v9, *(a2 + 48) + v18 * v12, v4);
      v22 = *(a2 + 40);
      sub_23E8A27E0(&qword_27E35E5B8, MEMORY[0x277CC95F0]);
      v23 = sub_23E900814();
      result = (*v33)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v35)
      {
        if (v24 >= v35 && a1 >= v24)
        {
LABEL_15:
          v27 = v18 * a1;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v27 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          result = v28 + v27;
          if (v27 < v19 || result >= v28 + v19 + v18)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v21;
            v15 = v20;
          }

          else
          {
            a1 = v12;
            v29 = v27 == v19;
            v16 = v21;
            v15 = v20;
            if (!v29)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v35 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v36;
    }

    while (((*(v36 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v30 = *(a2 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v32;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_23E8FC65C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23E88CA70(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_23E88D584(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_23E88CA70(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_23E900E44();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_23E8CFE28();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 72 * v11;

    return sub_23E8FD270(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 72 * v11;
  *v26 = *a1;
  v27 = *(a1 + 16);
  v28 = *(a1 + 32);
  v29 = *(a1 + 48);
  *(v26 + 64) = *(a1 + 64);
  *(v26 + 32) = v28;
  *(v26 + 48) = v29;
  *(v26 + 16) = v27;
  v30 = v22[2];
  v15 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v31;
}

uint64_t sub_23E8FC7FC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20]();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23E88C9D8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23E8D0164();
      goto LABEL_7;
    }

    sub_23E88DB90(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_23E88C9D8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23E8FCEF4(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7] + 56 * v15;

  return sub_23E8FCFC8(a1, v22);
}

uint64_t sub_23E8FC9CC(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23E9006D4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_23E88C9D8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_23E8D0400();
      goto LABEL_7;
    }

    sub_23E88DF94(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_23E88C9D8(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_23E8FD024(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 40 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_23E881028(a1, v22);
}

uint64_t sub_23E8FCBA8(uint64_t a1, unsigned int a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_23E88CAE8(a2);
  v11 = *(v8 + 16);
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v8 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_23E8D0688();
      goto LABEL_7;
    }

    sub_23E88E378(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_23E88CAE8(a2);
    if ((v14 & 1) == (v26 & 1))
    {
      v10 = v25;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_23E9006D4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_23E8FD0E8(v10, a2, a1, v16);
}

uint64_t sub_23E8FCD10(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_23E9006D4();
  v28 = *(v8 - 8);
  v9 = *(v28 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_23E88C9D8(a2);
  v15 = *(v12 + 16);
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = *(v12 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_23E8D08F0();
      goto LABEL_9;
    }

    sub_23E88E6C8(v17, a3 & 1);
    v20 = *v4;
    v21 = sub_23E88C9D8(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_23E900E44();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = *v4;
  if (v18)
  {
    v24 = *(v28 + 40);
    v25 = v23[7] + *(v28 + 72) * v14;

    return v24(v25, a1, v8);
  }

  else
  {
    (*(v28 + 16))(v11, a2, v8);
    return sub_23E8FD194(v14, v11, a1, v23);
  }
}

uint64_t sub_23E8FCEF4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23E9006D4();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 56 * a1;
  *(v11 + 48) = *(a3 + 48);
  v12 = *(a3 + 32);
  *(v11 + 16) = *(a3 + 16);
  *(v11 + 32) = v12;
  *v11 = *a3;
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_23E8FD024(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23E9006D4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_23E881028(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_23E8FD0E8(unint64_t a1, int a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 4 * a1) = a2;
  v7 = a4[7];
  v8 = sub_23E9006D4();
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

uint64_t sub_23E8FD194(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_23E9006D4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

uint64_t sub_23E8FD2CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8FD388()
{
  type metadata accessor for NullAirPlayConnection();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t dispatch thunk of AirPlayOverlayActionSending.sendAction(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_23E889AD8;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AirPlayOverlayAdapting.connect()(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E888F34;

  return v9(a1, a2);
}

unint64_t sub_23E8FD780(uint64_t a1)
{
  result = sub_23E8FD7A8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8FD7A8()
{
  result = qword_27E35EC50;
  if (!qword_27E35EC50)
  {
    type metadata accessor for ImageContent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC50);
  }

  return result;
}

uint64_t sub_23E8FD840(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v20 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6B8, &unk_23E9039B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903900;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  v22 = 0x6E6F6974636E7566;
  v23 = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x6E6F69746361;
  *(inited + 96) = 0xE600000000000000;
  v22 = a1;
  v23 = a2;

  sub_23E900C64();
  *(inited + 144) = 0x55557463656A626FLL;
  *(inited + 152) = 0xEA00000000004449;
  sub_23E8891B4(a3, v10, &unk_27E35F820, &qword_23E9064A0);
  v12 = sub_23E9006D4();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_23E8FDB14(v10);
    *(inited + 160) = 0u;
    *(inited + 176) = 0u;
    *(inited + 192) = 0;
  }

  else
  {
    v14 = sub_23E9006A4();
    v16 = v15;
    (*(v13 + 8))(v10, v12);
    v22 = v14;
    v23 = v16;
    sub_23E900C64();
  }

  *(inited + 200) = 0x746E656D75677261;
  *(inited + 208) = 0xE900000000000073;
  sub_23E8891B4(v21, inited + 216, &qword_27E35E6C8, &unk_23E9039A0);
  v17 = sub_23E88FAD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E6C0, &qword_23E906330);
  swift_arrayDestroy();
  v18 = sub_23E88B1F4(v17);

  return v18;
}

uint64_t sub_23E8FDB14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static Animatable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a1;
  v45 = a2;
  v39 = *(a3 - 8);
  v3 = *(v39 + 64);
  MEMORY[0x28223BE20](a1);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = v6;
  v41 = v7;
  v8 = type metadata accessor for Animatable();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v42 = *(TupleTypeMetadata2 - 8);
  v20 = *(v42 + 64);
  v21 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v23 = &v38 - v22;
  v24 = *(v21 + 48);
  v40 = v9;
  v25 = *(v9 + 16);
  v25(&v38 - v22, v44, v8);
  v25(&v23[v24], v45, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v31 = v39;
    v25(v18, v23, v8);
    if (!swift_getEnumCaseMultiPayload())
    {
      v34 = v31;
      v35 = v43;
      (*(v31 + 32))(v5, &v23[v24], v43);
      v36 = *(*(v41 + 8) + 8);
      v29 = sub_23E900844();
      v37 = *(v34 + 8);
      v37(v5, v35);
      v37(v18, v35);
      v30 = v40;
      goto LABEL_10;
    }

    (*(v31 + 8))(v18, v43);
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload != 1)
  {
    v25(v13, v23, v8);
    v32 = *v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  v25(v16, v23, v8);
  v27 = *v16;
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_8:

LABEL_9:
    v29 = 0;
    v30 = v42;
    v8 = TupleTypeMetadata2;
    goto LABEL_10;
  }

LABEL_4:
  v28 = *&v23[v24];
  type metadata accessor for Animation();
  swift_getWitnessTable();
  v29 = sub_23E900A24();

  v30 = v40;
LABEL_10:
  (*(v30 + 8))(v23, v8);
  return v29 & 1;
}

uint64_t Animatable.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v14, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v16 = *v12;
    if (EnumCaseMultiPayload == 1)
    {
      v17 = 1;
    }

    else
    {
      v17 = 2;
    }

    MEMORY[0x23EF17B90](v17);
    v20 = *(a2 + 24);
    type metadata accessor for Animation();
    swift_getWitnessTable();
    sub_23E900A14();
  }

  else
  {
    (*(v4 + 32))(v8, v12, v3);
    MEMORY[0x23EF17B90](0);
    v18 = *(*(a2 + 24) + 8);
    sub_23E900824();
    return (*(v4 + 8))(v8, v3);
  }
}

uint64_t Animatable.hashValue.getter(uint64_t a1)
{
  sub_23E900EB4();
  Animatable.hash(into:)(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8FE200(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  Animatable.hash(into:)(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8FE26C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    type metadata accessor for Animation();
    result = sub_23E900A04();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23E8FE2F8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
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
    goto LABEL_25;
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

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_23E8FE410(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_23E8FE5C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 0x6C6169726574616DLL;
    *(inited + 40) = 0xE800000000000000;
    sub_23E900C64();
    v5 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E8D3054(inited + 32);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    v4 = swift_initStackObject();
    *(v4 + 16) = xmmword_23E903900;
    *(v4 + 32) = 114;
    *(v4 + 40) = 0xE100000000000000;
    sub_23E900C64();
    *(v4 + 88) = 103;
    *(v4 + 96) = 0xE100000000000000;
    sub_23E900C64();
    *(v4 + 144) = 98;
    *(v4 + 152) = 0xE100000000000000;
    sub_23E900C64();
    *(v4 + 200) = 97;
    *(v4 + 208) = 0xE100000000000000;
    sub_23E900C64();
    v5 = sub_23E88F1F4(v4);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
  }

  return v5;
}

unint64_t sub_23E8FE8F4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8FE5C8(*v1, *(v1 + 8), *(v1 + 16));
  *a1 = result;
  return result;
}

unint64_t sub_23E8FE924(uint64_t a1)
{
  result = sub_23E8FE94C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8FE94C()
{
  result = qword_27E35F958;
  if (!qword_27E35F958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F958);
  }

  return result;
}

unint64_t sub_23E8FE9A0(uint64_t a1)
{
  result = sub_23E8FE9C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8FE9C8()
{
  result = qword_27E35F960;
  if (!qword_27E35F960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F960);
  }

  return result;
}

uint64_t AirPlayOverlayCoordinatorError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8FEAA8()
{
  result = qword_27E35F968;
  if (!qword_27E35F968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F968);
  }

  return result;
}

uint64_t sub_23E8FEB0C(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  sub_23E8FEE6C(a1, v40);
  v7 = v42;
  if (v42)
  {
    v8 = v43;
    __swift_project_boxed_opaque_existential_1(v40, v42);
    v9 = (*(v8 + 72))(v7, v8);
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  else
  {
    sub_23E87E458(v40, &unk_27E35F3E0, "t=");
    v9 = sub_23E88F1F4(MEMORY[0x277D84F90]);
  }

  v10 = (*(a4 + 72))(a3, a4);
  if (sub_23E8FEFB4(v9, v10))
  {

    return MEMORY[0x277D84F90];
  }

  else
  {
    v12 = 1 << *(v10 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v10 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = a2;

    v17 = 0;
    v11 = MEMORY[0x277D84F90];
    if (v14)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v15)
      {

        return v11;
      }

      v14 = *(v10 + 64 + 8 * v18);
      ++v17;
      if (v14)
      {
        v17 = v18;
        do
        {
LABEL_13:
          v19 = __clz(__rbit64(v14)) | (v17 << 6);
          v20 = (*(v10 + 48) + 16 * v19);
          v22 = *v20;
          v21 = v20[1];
          sub_23E88FC10(*(v10 + 56) + 40 * v19, &v41);
          v40[0] = v22;
          v40[1] = v21;
          v23 = *(v9 + 16);

          if (v23)
          {
            v24 = sub_23E88CA70(v22, v21);
            if (v25)
            {
              sub_23E88FC10(*(v9 + 56) + 40 * v24, v36);
              v38[0] = v36[0];
              v38[1] = v36[1];
              v39 = v37;
              if (MEMORY[0x23EF17920](v38, &v41))
              {
                sub_23E8A2384(v38);
              }

              else
              {
                sub_23E88FC10(&v41, v36);
                if (swift_dynamicCast())
                {
                  v31 = v35;
                  v32 = v34;
                }

                else
                {

                  v26 = sub_23E900C44();
                  v31 = v27;
                  v32 = v26;
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v11 = sub_23E88ABB4(0, *(v11 + 2) + 1, 1, v11);
                }

                v29 = *(v11 + 2);
                v28 = *(v11 + 3);
                if (v29 >= v28 >> 1)
                {
                  v11 = sub_23E88ABB4((v28 > 1), v29 + 1, 1, v11);
                }

                sub_23E8A2384(v38);
                *(v11 + 2) = v29 + 1;
                v30 = &v11[48 * v29];
                *(v30 + 4) = v33;
                *(v30 + 5) = v22;
                *(v30 + 6) = v21;
                *(v30 + 7) = v32;
                *(v30 + 8) = v31;
                v30[72] = 3;
              }
            }
          }

          v14 &= v14 - 1;
          result = sub_23E87E458(v40, &qword_27E35ED60, &qword_23E905168);
        }

        while (v14);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_23E8FEE6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3E0, "t=");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8FEEDC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(a4 + 64))(a3, a4);
  if (result)
  {
    v7 = *(result + 16);
    if (v7)
    {
      v8 = result + 32;
      do
      {
        sub_23E8810DC(v8, v11);
        a1(v11);
        v9 = v12;
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        sub_23E8FEEDC(a1, a2, v9, v10);
        __swift_destroy_boxed_opaque_existential_1(v11);
        v8 += 40;
        --v7;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t sub_23E8FEFB4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_23E88FC10(*(v3 + 56) + 40 * v12, &v24);
    v21 = v24;
    v22 = v25;
    v16 = v26;

    if (!v14)
    {
      return 1;
    }

    v24 = v21;
    v25 = v22;
    v26 = v16;
    v17 = sub_23E88CA70(v15, v14);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      sub_23E8A2384(&v24);
      return 0;
    }

    sub_23E88FC10(*(a2 + 56) + 40 * v17, v23);
    v20 = MEMORY[0x23EF17920](v23, &v24);
    sub_23E8A2384(v23);
    result = sub_23E8A2384(&v24);
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8FF150@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_23E8FF15C()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 40))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FF304()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 32))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FF4A4()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 48))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FF64C()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 56))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FF7EC()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 64))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FF98C()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 72))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FFB2C()
{
  v1 = type metadata accessor for ContainerContent.Child();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v6 = &qword_27E35E438;
      v7 = &unk_23E907E20;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
      v8 = sub_23E8A25C4();
    }

    else
    {
      v6 = &qword_27E35E430;
      v7 = &unk_23E902C80;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
      v8 = sub_23E8A2490();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v6 = &unk_27E35E440;
    v7 = &unk_23E902C90;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
    v8 = sub_23E8A26F8();
  }

  else
  {
    v6 = &unk_27E35E630;
    v7 = &qword_23E903300;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
    v8 = sub_23E8A2828();
  }

  v17 = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  sub_23E87E3F0(v4, boxed_opaque_existential_1, v6, v7);
  v10 = v16;
  v11 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  v12 = (*(v11 + 80))(v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v12;
}

uint64_t sub_23E8FFCE8(uint64_t a1)
{
  *(a1 + 8) = sub_23E8FFD6C(&qword_27E35F098, type metadata accessor for ContainerContent.Child);
  result = sub_23E8FFD6C(&qword_27E35F970, type metadata accessor for ContainerContent.Child);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23E8FFD6C(unint64_t *a1, void (*a2)(uint64_t))
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

BOOL static Point.== infix(_:_:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v9 = a5;
  *(&v9 + 1) = a6;
  v6 = *(&v9 + 4);
  LOBYTE(v9) = a2;
  *(&v9 + 4) = __PAIR64__(a3, HIDWORD(a2));
  BYTE12(v9) = BYTE4(a3);
  v7 = v9;
  LOBYTE(v9) = a5;
  *(&v9 + 4) = v6;
  BYTE12(v9) = BYTE4(a6);
  return sub_23E9000A0(a1, v7, *(&v7 + 1), a4, v9, *(&v9 + 1));
}

uint64_t Point.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = __PAIR64__(a4, HIDWORD(a3));
  v5 = HIDWORD(a4);
  HorizontalPosition.hash(into:)(a1, a2, a3);

  return VerticalPosition.hash(into:)(a1, v7, v5);
}

uint64_t Point.hashValue.getter(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = a2;
  *&v8[0] = a2;
  *(&v8[0] + 1) = a3;
  v5 = *(v8 + 4);
  v6 = HIDWORD(a3);
  sub_23E900EB4();
  HorizontalPosition.hash(into:)(v8, a1, v3);
  VerticalPosition.hash(into:)(v8, v5, v6);
  return sub_23E900F14();
}

uint64_t sub_23E8FFF24()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  sub_23E900EB4();
  HorizontalPosition.hash(into:)(v6, v1, v3);
  VerticalPosition.hash(into:)(v6, v2, v4);
  return sub_23E900F14();
}

uint64_t sub_23E8FFF94(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 12);
  v5 = *(v1 + 8);
  v6 = *(v1 + 20);
  HorizontalPosition.hash(into:)(a1, v3, v5);

  return VerticalPosition.hash(into:)(a1, v4, v6);
}

uint64_t sub_23E8FFFEC()
{
  v1 = *v0;
  v2 = *(v0 + 12);
  v3 = *(v0 + 8);
  v4 = *(v0 + 20);
  sub_23E900EB4();
  HorizontalPosition.hash(into:)(v6, v1, v3);
  VerticalPosition.hash(into:)(v6, v2, v4);
  return sub_23E900F14();
}

BOOL sub_23E900058(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *(&v5 + 4) = *(a1 + 12);
  BYTE12(v5) = *(a1 + 20);
  v3 = v5;
  LOBYTE(v5) = *(a2 + 8);
  *(&v5 + 4) = *(a2 + 12);
  BYTE12(v5) = *(a2 + 20);
  return sub_23E9000A0(*a1, v3, *(&v3 + 1), *a2, v5, *(&v5 + 1));
}

BOOL sub_23E9000A0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *&a1;
  v7 = __PAIR64__(a3, HIDWORD(a2));
  v29 = *(&a5 + 1);
  v30 = *&a6;
  if (!a2)
  {
    result = 0;
    if (a5)
    {
      return result;
    }

LABEL_14:
    if (v6 != *&a4)
    {
      return result;
    }

    goto LABEL_15;
  }

  if (a2 != 1)
  {
    result = 0;
    if (a5 != 2)
    {
      return result;
    }

    goto LABEL_14;
  }

  if (a5 != 1)
  {
    return 0;
  }

  v8 = HIDWORD(a1);
  v9 = 0x676E696461656CLL;
  v10 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v11 = 1952867692;
    }

    else
    {
      v11 = 0x7468676972;
    }

    if (v10 == 2)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v11 = 0x676E696C69617274;
    }

    else
    {
      v11 = 0x676E696461656CLL;
    }

    if (v10)
    {
      v12 = 0xE800000000000000;
    }

    else
    {
      v12 = 0xE700000000000000;
    }
  }

  v18 = *&v8;
  v19 = *(&a4 + 1);
  v20 = 0xE700000000000000;
  v21 = 0xE400000000000000;
  v22 = 1952867692;
  if (a4 != 2)
  {
    v22 = 0x7468676972;
    v21 = 0xE500000000000000;
  }

  if (a4)
  {
    v9 = 0x676E696C69617274;
    v20 = 0xE800000000000000;
  }

  if (a4 <= 1u)
  {
    v23 = v9;
  }

  else
  {
    v23 = v22;
  }

  if (a4 <= 1u)
  {
    v24 = v20;
  }

  else
  {
    v24 = v21;
  }

  v25 = BYTE4(a3);
  v26 = BYTE4(a6);
  if (v11 == v23 && v12 == v24)
  {

    BYTE4(a6) = v26;
    BYTE4(a3) = v25;
    if (v18 != v19)
    {
      return 0;
    }

LABEL_15:
    if (BYTE4(a3))
    {
      if (BYTE4(a3) == 1)
      {
        if (BYTE4(a6) == 1)
        {
          if (v7)
          {
            v14 = 0x6D6F74746F62;
          }

          else
          {
            v14 = 7368564;
          }

          if (v7)
          {
            v15 = 0xE600000000000000;
          }

          else
          {
            v15 = 0xE300000000000000;
          }

          if (LOBYTE(v29))
          {
            v16 = 0x6D6F74746F62;
          }

          else
          {
            v16 = 7368564;
          }

          if (LOBYTE(v29))
          {
            v17 = 0xE600000000000000;
          }

          else
          {
            v17 = 0xE300000000000000;
          }

          if (v14 == v16 && v15 == v17)
          {
          }

          else
          {
            v28 = sub_23E900E04();

            if ((v28 & 1) == 0)
            {
              return 0;
            }
          }

          if (*(&v7 + 1) == v30)
          {
            return 1;
          }
        }

        return 0;
      }

      if (BYTE4(a6) != 2)
      {
        return 0;
      }
    }

    else if (BYTE4(a6))
    {
      return 0;
    }

    return *&v7 == v29;
  }

  v27 = sub_23E900E04();

  result = 0;
  if (v27)
  {
    BYTE4(a6) = v26;
    BYTE4(a3) = v25;
    if (v18 == v19)
    {
      goto LABEL_15;
    }
  }

  return result;
}

unint64_t sub_23E900380()
{
  result = qword_27E35F978;
  if (!qword_27E35F978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F978);
  }

  return result;
}

unint64_t sub_23E9003D4(uint64_t a1)
{
  result = sub_23E9003FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E9003FC()
{
  result = qword_27E35F980;
  if (!qword_27E35F980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F980);
  }

  return result;
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Point(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Point(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}