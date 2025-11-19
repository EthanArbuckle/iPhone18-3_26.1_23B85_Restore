uint64_t sub_221EF2118(void **a1, void **a2, char *a3, void **a4)
{
  v109 = sub_221FB5C38();
  v8 = *(v109 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v109);
  v93 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v94 = &v88 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v98 = &v88 - v15;
  MEMORY[0x28223BE20](v14);
  v99 = &v88 - v16;
  v17 = (a2 - a1) / 48;
  v18 = (a3 - a2) / 48;
  if (v17 >= v18)
  {
    v56 = 6 * v18;
    v20 = a4;
    if (a4 != a2 || &a2[v56] <= a4)
    {
      memmove(a4, a2, 48 * v18);
      v20 = a4;
    }

    v21 = &v20[v56];
    if (a3 - a2 >= 48 && a2 > a1)
    {
      v107 = a1;
      v91 = (v8 + 8);
      v113 = v20;
LABEL_24:
      v57 = 0;
      v58 = v21;
      v89 = a2 - 6;
      v114 = a2;
      v92 = v21;
      v108 = a3;
      do
      {
        v106 = v57;
        v60 = &v57[v58 - 48];
        v59 = *v60;
        v62 = *&v57[v58 - 40];
        v61 = *&v57[v58 - 32];
        v63 = *&v57[v58 - 24];
        v64 = *&v57[v58 - 16];
        v96 = &v57[v58];
        LODWORD(v112) = v57[v58 - 8];
        v65 = *(a2 - 6);
        v66 = *(a2 - 5);
        v67 = *(a2 - 3);
        v110 = *(a2 - 4);
        v111 = v67;
        v68 = *(a2 - 2);
        v69 = *(a2 - 8);
        v105 = v59;

        v104 = v62;

        v70 = v61;
        v101 = v65;

        v100 = v66;

        v110 = v110;
        sub_221ED4904(v63, v64, v112);
        v103 = v68;
        LODWORD(v102) = v69;
        v71 = v69;
        v72 = v70;
        sub_221ED4904(v111, v68, v71);
        result = [v70 UUID];
        if (!result)
        {
          goto LABEL_43;
        }

        v73 = result;
        v98 = v64;
        v99 = v63;
        v74 = v94;
        sub_221FB5C18();

        result = [v110 UUID];
        if (!result)
        {
          goto LABEL_44;
        }

        v75 = result;
        v76 = v108;
        v77 = v106;
        v90 = &v106[v108];
        v95 = &v106[v108 - 48];
        v78 = v93;
        sub_221FB5C18();

        sub_221EF29B8();
        v79 = v109;
        LODWORD(v97) = sub_221FB62C8();
        v80 = *v91;
        (*v91)(v78, v79);
        v80(v74, v79);

        sub_221ED4948(v111, v103, v102);

        sub_221ED4948(v99, v98, v112);
        if (v97)
        {
          v20 = v113;
          v55 = v89;
          v84 = v92;
          a3 = v95;
          if (v90 != v114)
          {
            v85 = *v89;
            v86 = *(v89 + 2);
            *(v95 + 16) = *(v89 + 1);
            *(a3 + 2) = v86;
            *a3 = v85;
          }

          v21 = &v106[v84];
          if (&v106[v84] <= v20 || (a2 = v55, v55 <= v107))
          {
            v21 = &v106[v84];
            goto LABEL_37;
          }

          goto LABEL_24;
        }

        v20 = v113;
        a2 = v114;
        v58 = v92;
        if (&v77[v76] != v96)
        {
          v81 = *v60;
          v82 = *(v60 + 32);
          v83 = v95;
          *(v95 + 16) = *(v60 + 16);
          v83[2] = v82;
          *v83 = v81;
        }

        v57 = v77 - 48;
        v21 = &v57[v58];
      }

      while (&v57[v58] > v20);
    }

    v55 = a2;
LABEL_37:
    v87 = 6 * ((v21 - v20) / 48);
    if (v55 != v20 || v55 >= &v20[v87])
    {
      memmove(v55, v20, v87 * 8);
    }

    return 1;
  }

  v19 = 6 * v17;
  v20 = a4;
  if (a4 != a1 || &a1[v19] <= a4)
  {
    memmove(a4, a1, v19 * 8);
    v20 = a4;
  }

  v21 = &v20[v19];
  if (a2 - a1 < 48 || a2 >= a3)
  {
LABEL_17:
    v55 = a1;
    goto LABEL_37;
  }

  v96 = (v8 + 8);
  v97 = &v20[v19];
  v22 = &off_278497000;
  v108 = a3;
  while (1)
  {
    v107 = a1;
    v23 = *a2;
    v24 = a2[1];
    v25 = a2[2];
    v26 = a2[3];
    v27 = a2[4];
    v114 = a2;
    v28 = *(a2 + 40);
    v30 = *v20;
    v29 = v20[1];
    v31 = v20[3];
    v32 = v20[4];
    v111 = v20[2];
    v112 = v32;
    v113 = v20;
    v33 = *(v20 + 40);
    v110 = v23;

    v106 = v24;

    v34 = v25;
    v103 = v30;

    v102 = v29;

    v35 = v111;
    LODWORD(v111) = v28;
    sub_221ED4904(v26, v27, v28);
    v105 = v31;
    v36 = v31;
    v37 = v112;
    LODWORD(v104) = v33;
    v38 = v33;
    v39 = v34;
    sub_221ED4904(v36, v112, v38);
    result = [v34 v22[311]];
    if (!result)
    {
      break;
    }

    v41 = result;
    v101 = v27;
    v42 = v26;
    v43 = v99;
    sub_221FB5C18();

    v44 = v35;
    result = [v35 v22[311]];
    if (!result)
    {
      goto LABEL_42;
    }

    v45 = result;
    v46 = v98;
    sub_221FB5C18();

    sub_221EF29B8();
    v47 = v109;
    LODWORD(v100) = sub_221FB62C8();
    v48 = *v96;
    (*v96)(v46, v47);
    v48(v43, v47);

    sub_221ED4948(v105, v37, v104);

    sub_221ED4948(v42, v101, v111);
    if (v100)
    {
      v49 = v114;
      a2 = v114 + 6;
      v50 = v107;
      v51 = v107 == v114;
      v20 = v113;
    }

    else
    {
      v49 = v113;
      v20 = v113 + 6;
      v50 = v107;
      v51 = v107 == v113;
      a2 = v114;
    }

    v52 = v108;
    v21 = v97;
    if (!v51)
    {
      v53 = *v49;
      v54 = *(v49 + 2);
      *(v50 + 1) = *(v49 + 1);
      *(v50 + 2) = v54;
      *v50 = v53;
    }

    a1 = v50 + 6;
    v22 = &off_278497000;
    if (v20 >= v21 || a2 >= v52)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_221EF2868(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return sub_221F7E4EC(a1, v4, v5, v6);
}

uint64_t sub_221EF291C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EEF608(a1, v4);
}

unint64_t sub_221EF29B8()
{
  result = qword_27CFEC1D0;
  if (!qword_27CFEC1D0)
  {
    sub_221FB5C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC1D0);
  }

  return result;
}

uint64_t sub_221EF2A10(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_221E9544C;

  return sub_221EEEEF0(a1, a2, v6);
}

uint64_t sub_221EF2AC0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_221EF2B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void static Sandbox.bootstrap(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_221FB6468();
  *(v4 + 16) = 1024;
  bzero((v4 + 32), 0x400uLL);
  sub_221FB6338();

  v5 = _set_user_dir_suffix();

  if (!v5)
  {
    v11 = MEMORY[0x223DAC5B0](v6);
    if (strerror(v11))
    {
      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_16;
  }

  v7 = *(v4 + 16);

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_221EF3B2C(0, *(v4 + 16), 0, v4);
  }

  if (!confstr(65537, (v4 + 32), v7))
  {
LABEL_16:
    v12 = MEMORY[0x223DAC5B0]();
    if (strerror(v12))
    {
      v25 = sub_221FB6388();
      v27 = v26;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_221FB6978();
      MEMORY[0x223DAC740](0xD000000000000034, 0x8000000221FC2540);
      MEMORY[0x223DAC740](a1, a2);
      v28 = MEMORY[0x223DAC740](10272, 0xE200000000000000);
      LODWORD(v46) = MEMORY[0x223DAC5B0](v28);
      v29 = sub_221FB6B08();
      MEMORY[0x223DAC740](v29);

      MEMORY[0x223DAC740](2112041, 0xE300000000000000);
      MEMORY[0x223DAC740](v25, v27);
      v30 = qword_281307070;

      if (v30 != -1)
      {
        swift_once();
      }

      v31 = sub_221FB61D8();
      __swift_project_value_buffer(v31, qword_281307DC0);

      v21 = sub_221FB61B8();
      v32 = sub_221FB65A8();

      if (os_log_type_enabled(v21, v32))
      {
        v33 = swift_slowAlloc();
        v34 = swift_slowAlloc();
        v46 = v34;
        *v33 = 136446210;
        *(v33 + 4) = sub_221EF4114(0, 0xE000000000000000, &v46);
        _os_log_impl(&dword_221E93000, v21, v32, "Sandbox bootstrap error: %{public}s", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v34);
        MEMORY[0x223DADA80](v34, -1, -1);
        MEMORY[0x223DADA80](v33, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (!mkdir((v4 + 32), 0x2BCu) && MEMORY[0x223DAC5B0]() != 17)
  {
LABEL_18:
    v13 = MEMORY[0x223DAC5B0]();
    if (strerror(v13))
    {
      v35 = sub_221FB6388();
      v37 = v36;
      v47 = 0;
      v48 = 0xE000000000000000;
      sub_221FB6978();
      MEMORY[0x223DAC740](0xD000000000000029, 0x8000000221FC2510);
      MEMORY[0x223DAC740](a1, a2);
      v38 = MEMORY[0x223DAC740](10272, 0xE200000000000000);
      LODWORD(v46) = MEMORY[0x223DAC5B0](v38);
      v39 = sub_221FB6B08();
      MEMORY[0x223DAC740](v39);

      MEMORY[0x223DAC740](2112041, 0xE300000000000000);
      MEMORY[0x223DAC740](v35, v37);
      v40 = qword_281307070;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = sub_221FB61D8();
      __swift_project_value_buffer(v41, qword_281307DC0);

      v21 = sub_221FB61B8();
      v42 = sub_221FB65A8();

      if (os_log_type_enabled(v21, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v46 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_221EF4114(0, 0xE000000000000000, &v46);
        _os_log_impl(&dword_221E93000, v21, v42, "Sandbox bootstrap error: %{public}s", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x223DADA80](v44, -1, -1);
        MEMORY[0x223DADA80](v43, -1, -1);
      }

      goto LABEL_34;
    }

    __break(1u);
LABEL_20:
    v14 = sub_221FB6388();
    v16 = v15;
    v47 = 0;
    v48 = 0xE000000000000000;
    sub_221FB6978();
    MEMORY[0x223DAC740](0xD00000000000002DLL, 0x8000000221FC24B0);
    MEMORY[0x223DAC740](a1, a2);
    v17 = MEMORY[0x223DAC740](10272, 0xE200000000000000);
    LODWORD(v46) = MEMORY[0x223DAC5B0](v17);
    v18 = sub_221FB6B08();
    MEMORY[0x223DAC740](v18);

    MEMORY[0x223DAC740](2112041, 0xE300000000000000);
    MEMORY[0x223DAC740](v14, v16);
    v19 = qword_281307070;

    if (v19 != -1)
    {
      swift_once();
    }

    v20 = sub_221FB61D8();
    __swift_project_value_buffer(v20, qword_281307DC0);

    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v46 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_221EF4114(0, 0xE000000000000000, &v46);
      _os_log_impl(&dword_221E93000, v21, v22, "Sandbox bootstrap error: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DADA80](v24, -1, -1);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

LABEL_34:

    sub_221FB6A68();
    __break(1u);
    return;
  }

  if (qword_281307070 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DC0);
  oslog = sub_221FB61B8();
  v9 = sub_221FB65C8();
  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_221E93000, oslog, v9, "Sandbox bootstrapped successfully", v10, 2u);
    MEMORY[0x223DADA80](v10, -1, -1);
  }
}

uint64_t sub_221EF333C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

char *sub_221EF3388(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB50, &qword_221FB8B68);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_221EF34BC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC210, &unk_221FBADB0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC218, &qword_221FBE680);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221EF35F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC220, &qword_221FBADC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_221EF3710(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1F8, &qword_221FBAD98);
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

char *sub_221EF3814(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1E8, &unk_221FBAD80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_221EF3954(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1F0, &qword_221FBAD90);
  v10 = *(sub_221FB5C38() - 8);
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
  v15 = *(sub_221FB5C38() - 8);
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

char *sub_221EF3B2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC238, &qword_221FBAE00);
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

char *sub_221EF3C20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
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

void *sub_221EF3D50(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_221EF3EA8(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_221EF40B8(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_221EF4114(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_221EF4114(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221EF41E0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_221E951A4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_221EF41E0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_221EF42EC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_221FB69A8();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_221EF42EC(uint64_t a1, unint64_t a2)
{
  v4 = sub_221EF4338(a1, a2);
  sub_221EF4468(&unk_283557670);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_221EF4338(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_221EF4554(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_221FB69A8();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_221FB6398();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221EF4554(v10, 0);
        result = sub_221FB6958();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_221EF4468(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_221EF45C8(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_221EF4554(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC240, qword_221FBAE08);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_221EF45C8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC240, qword_221FBAE08);
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

_BYTE **sub_221EF46BC(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_221EF46DC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E96070;

  return v9(a1, a2);
}

uint64_t sub_221EF47F4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221EBD108;

  return v9(a1, a2);
}

uint64_t sub_221EF492C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm(*(v0 + 152), *(*(v0 + 152) + 24));
  v2 = sub_221F9ACE4();
  *(v0 + 160) = v2;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_221EF4A60;
  v3 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC168, &qword_221FBAAE0);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221EF4C50;
  *(v0 + 104) = &block_descriptor_14;
  *(v0 + 112) = v3;
  [v2 accountInfoWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EF4A60()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_221EF4BE0;
  }

  else
  {
    v3 = sub_221EF4B70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EF4B70()
{
  v1 = *(v0 + 144);

  v2 = sub_221EF6738(v1);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221EF4BE0()
{
  v1 = v0[20];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_221EF4C50(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_221EF4D28()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC248, &qword_221FBAE88);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EF4DD4, 0, 0);
}

uint64_t sub_221EF4DD4()
{
  v1 = *(v0 + 168);
  v2 = *__swift_project_boxed_opaque_existential_0Tm(*(v0 + 144), *(*(v0 + 144) + 24));
  v3 = sub_221F9ACE4();
  *(v0 + 176) = v3;
  *(v0 + 16) = v0;
  *(v0 + 56) = v1;
  *(v0 + 24) = sub_221EF4F08;
  v4 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC250, &qword_221FBAE90);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221EF523C;
  *(v0 + 104) = &block_descriptor_7;
  *(v0 + 112) = v4;
  [v3 fetchFullNameAndPrimaryEmailOnAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EF4F08()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_221EF50EC;
  }

  else
  {
    v3 = sub_221EF5018;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EF5018()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  sub_221EF53A0(v0[21], v3);
  v4 = (v3 + *(v2 + 48));
  v5 = *v4;
  v6 = v4[1];
  v7 = sub_221FB5A08();
  (*(*(v7 - 8) + 8))(v3, v7);

  v9 = v0[20];
  v8 = v0[21];

  v10 = v0[1];

  return v10(v5, v6);
}

uint64_t sub_221EF50EC()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to fetch cloud kit address", v8, 2u);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v10 = v0[20];
  v9 = v0[21];

  v11 = v0[1];

  return v11(0, 0);
}

uint64_t sub_221EF523C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC248, &qword_221FBAE88);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  v10 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v11 = swift_allocError();
    *v12 = a4;
    v13 = a4;

    return MEMORY[0x282200958](v10, v11);
  }

  else
  {
    sub_221FB59F8();
    v14 = &v9[*(v6 + 48)];
    *v14 = sub_221FB6318();
    v14[1] = v15;
    sub_221EF53A0(v9, *(*(v10 + 64) + 40));
    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221EF53A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC248, &qword_221FBAE88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_221EF5424(uint64_t a1, int a2)
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

uint64_t sub_221EF546C(uint64_t result, int a2, int a3)
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

uint64_t sub_221EF54CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 8);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221EF560C(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 184) = a3;
  *(v4 + 192) = v3;
  *(v4 + 328) = a2;
  *(v4 + 176) = a1;
  v5 = sub_221FB5C38();
  *(v4 + 200) = v5;
  v6 = *(v5 - 8);
  *(v4 + 208) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 216) = swift_task_alloc();
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EF56EC, 0, 0);
}

uint64_t sub_221EF56EC()
{
  v67 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = *(v0 + 200);
  v3 = *(v0 + 208);
  v4 = *(v0 + 176);
  v5 = sub_221FB61D8();
  *(v0 + 240) = __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 232);
  v12 = *(v0 + 200);
  v11 = *(v0 + 208);
  if (v9)
  {
    v13 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v66[0] = v64;
    *v13 = 136315138;
    sub_221EA8278();
    v14 = v6;
    v15 = sub_221FB6B08();
    v17 = v16;
    v65 = *(v11 + 8);
    v65(v10, v12);
    v18 = v15;
    v6 = v14;
    v19 = sub_221EF4114(v18, v17, v66);

    *(v13 + 4) = v19;
    _os_log_impl(&dword_221E93000, v7, v8, "Removing friend: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v64);
    MEMORY[0x223DADA80](v64, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  else
  {

    v65 = *(v11 + 8);
    v65(v10, v12);
  }

  v20 = *(v0 + 192);
  v21 = *(v0 + 176);
  v22 = *v20;
  *(v0 + 248) = *v20;
  v23 = sub_221FB5BF8();
  v24 = [v22 contactWithUUID_];
  *(v0 + 256) = v24;

  if (v24)
  {
    v25 = [v24 relationshipStorage];
    v26 = [v25 primaryRelationship];
    *(v0 + 264) = v26;

    v27 = [v24 relationshipStorage];
    *(v0 + 272) = [v27 secureCloudRelationship];

    if (([v26 isFriendshipActive] & 1) == 0)
    {
      v6(*(v0 + 224), *(v0 + 176), *(v0 + 200));
      v28 = sub_221FB61B8();
      v29 = sub_221FB65A8();
      v30 = os_log_type_enabled(v28, v29);
      v31 = *(v0 + 224);
      v32 = *(v0 + 200);
      v33 = *(v0 + 208);
      if (v30)
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v66[0] = v35;
        *v34 = 136315138;
        sub_221EA8278();
        v36 = sub_221FB6B08();
        v38 = v37;
        v65(v31, v32);
        v39 = sub_221EF4114(v36, v38, v66);

        *(v34 + 4) = v39;
        _os_log_impl(&dword_221E93000, v28, v29, "Removing friend for inactive friendship: %s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v35);
        MEMORY[0x223DADA80](v35, -1, -1);
        MEMORY[0x223DADA80](v34, -1, -1);
      }

      else
      {

        v65(v31, v32);
      }
    }

    v58 = *(v0 + 184);
    v59 = *(v0 + 328);
    v60 = *(v0 + 176);
    v61 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 192) + 8), *(*(v0 + 192) + 32));
    v62 = sub_221FB5BF8();
    *(v0 + 280) = v62;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 330;
    *(v0 + 24) = sub_221EF5DC8;
    v63 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221FA909C;
    *(v0 + 104) = &block_descriptor_15;
    *(v0 + 112) = v63;
    [v61 removeLegacyFriendWithUUID:v62 event:v59 cloudKitGroup:v58 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v6(*(v0 + 216), *(v0 + 176), *(v0 + 200));
    v40 = sub_221FB61B8();
    v41 = sub_221FB65A8();
    v42 = os_log_type_enabled(v40, v41);
    v44 = *(v0 + 208);
    v43 = *(v0 + 216);
    v45 = *(v0 + 200);
    if (v42)
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v66[0] = v47;
      *v46 = 136315138;
      sub_221EA8278();
      v48 = sub_221FB6B08();
      v50 = v49;
      v65(v43, v45);
      v51 = sub_221EF4114(v48, v50, v66);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_221E93000, v40, v41, "Unable to remove friend, no contact for identifier: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x223DADA80](v47, -1, -1);
      MEMORY[0x223DADA80](v46, -1, -1);
    }

    else
    {

      v65(v43, v45);
    }

    sub_221EA4994();
    swift_allocError();
    *v52 = 21;
    swift_willThrow();
    v54 = *(v0 + 224);
    v53 = *(v0 + 232);
    v55 = *(v0 + 216);

    v56 = *(v0 + 8);

    return v56();
  }
}

uint64_t sub_221EF5DC8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  if (v2)
  {
    v3 = sub_221EF6280;
  }

  else
  {
    v3 = sub_221EF5ED8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EF5ED8()
{
  v1 = *(v0 + 272);

  v2 = [v1 systemFieldsOnlyRecord];
  *(v0 + 296) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = *(v0 + 272);
    v5 = [v2 recordID];
    v6 = [v5 zoneID];

    v7 = [v6 zoneName];
    v8 = sub_221FB6318();
    v10 = v9;

    v11 = [v4 secureCloudZoneName];
    if (v11)
    {
      v12 = v11;
      v13 = sub_221FB6318();
      v15 = v14;

      if (v8 == v13 && v10 == v15)
      {

LABEL_18:
        v34 = *(v0 + 272);
        v35 = *(v0 + 248);
        v36 = *(v0 + 192);
        v37 = *(v0 + 328);
        v38 = *(v0 + 176);
        v39 = sub_221FB5BF8();
        v40 = sub_221FB6788();
        v41 = ASInsertPlaceholderRelationshipEventForFriend();

        sub_221FB67C8();
        swift_unknownObjectRelease();
        [v34 insertEventWithType_];
        __swift_project_boxed_opaque_existential_0Tm((v36 + 88), *(v36 + 112));
        v42 = swift_task_alloc();
        *(v0 + 304) = v42;
        *v42 = v0;
        v42[1] = sub_221EF6328;
        v43 = *(v0 + 272);
        v44 = *(v0 + 184);

        return sub_221EBAEA8(v43, 0, v44, 0);
      }

      v17 = sub_221FB6B58();

      if (v17)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v18 = *(v0 + 240);
  v19 = *(v0 + 272);
  v20 = sub_221FB61B8();
  v21 = sub_221FB65C8();

  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 264);
  v24 = *(v0 + 272);
  v25 = *(v0 + 256);
  if (v22)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v26 = 138412290;
    *(v26 + 4) = v24;
    *v27 = v24;
    v28 = v24;
    _os_log_impl(&dword_221E93000, v20, v21, "Secure cloud relationship doesn't have a zone, no need to remove: %@", v26, 0xCu);
    sub_221EA0558(v27);
    MEMORY[0x223DADA80](v27, -1, -1);
    MEMORY[0x223DADA80](v26, -1, -1);
  }

  else
  {
    v28 = *(v0 + 264);
    v23 = *(v0 + 256);
    v25 = v20;
    v20 = *(v0 + 272);
  }

  v30 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 216);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_221EF6280()
{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  swift_willThrow();

  v6 = v0[36];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];

  v10 = v0[1];

  return v10();
}

uint64_t sub_221EF6328(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 304);
  v7 = *v2;
  *(v3 + 312) = a1;
  *(v3 + 320) = v1;

  if (v1)
  {
    v5 = sub_221EF6634;
  }

  else
  {
    v5 = sub_221EF643C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EF643C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 312);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 312);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_221E93000, v3, v4, "Removed friend for secure cloud relationship: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v9 = *(v0 + 312);
  v10 = *(v0 + 296);
  v12 = *(v0 + 264);
  v11 = *(v0 + 272);
  v13 = *(v0 + 248);
  v14 = *(v0 + 256);
  v15 = *(v0 + 192);
  v16 = *(v0 + 176);

  v17 = *__swift_project_boxed_opaque_existential_0Tm((v15 + 48), *(v15 + 72));
  v18 = sub_221FB5BF8();
  [v17 removePlaceholderWithContactUUID:v18 shouldNotify:0];

  __swift_project_boxed_opaque_existential_0Tm((v0 + 144), *(v0 + 168));
  [v13 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 144));
  v20 = *(v0 + 224);
  v19 = *(v0 + 232);
  v21 = *(v0 + 216);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_221EF6634()
{
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 18, v0[21]);
  [v4 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 18);
  v6 = v0[40];
  v8 = v0[28];
  v7 = v0[29];
  v9 = v0[27];

  v10 = v0[1];

  return v10();
}

uint64_t sub_221EF6738(void *a1)
{
  v2 = [a1 accountStatus];
  if (v2 > 2)
  {
    if (v2 == 4)
    {
      v4 = 3;
    }

    else
    {
      v4 = 0;
    }

    if (v2 == 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = v4;
    }
  }

  else if (v2 == 1)
  {
    if ([a1 hasValidCredentials])
    {
      v3 = 5;
    }

    else
    {
      v3 = 4;
    }
  }

  else if (v2 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  v5 = [a1 deviceToDeviceEncryptionAvailability];

  if ((v5 & 2) != 0)
  {
    v6 = 512;
  }

  else
  {
    v6 = (v5 & 1) << 8;
  }

  return v6 & 0xFFFFFF00 | v3;
}

uint64_t sub_221EF67F4(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_221E96070;

  return (v21)(a1, a2, a3 & 1, a4 & 1, a5, a6, a7, a8);
}

uint64_t sub_221EF6954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221EF6A84;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221EF6A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(*v4 + 16);
  v12 = *v4;

  v10 = *(v12 + 8);

  return v10(a1, a2, a3, a4);
}

uint64_t sub_221EF6BA8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221EF6BCC, 0, 0);
}

uint64_t sub_221EF6BCC()
{
  v1 = v0[3];
  v2 = *__swift_project_boxed_opaque_existential_0Tm((v0[4] + 8), *(v0[4] + 32));
  v3 = sub_221F9ACE4();
  v4 = [v3 privateCloudDatabase];

  type metadata accessor for XPCActivityContainer();
  v5 = swift_allocObject();
  v6 = v5;
  if (v1)
  {
    *(v5 + 16) = v0[3];
  }

  else
  {
    swift_deallocPartialClassInstance();
    v6 = 0;
  }

  v7 = v0[2];
  type metadata accessor for CloudZoneModifyOperation();
  v8 = swift_allocObject();
  v0[5] = v8;
  swift_unknownObjectRetain();
  swift_defaultActor_initialize();
  *(v8 + 112) = v4;
  *(v8 + 120) = 1;
  v9 = MEMORY[0x277D84F90];
  *(v8 + 128) = v6;
  *(v8 + 136) = v9;
  *(v8 + 144) = v7;
  *(v8 + 152) = 0;

  v10 = swift_task_alloc();
  v0[6] = v10;
  *v10 = v0;
  v10[1] = sub_221EF6D54;

  return sub_221E9C1C8();
}

uint64_t sub_221EF6D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *v5;
  v11 = *(*v5 + 48);
  v12 = *v5;
  *(*v5 + 56) = v4;

  if (v4)
  {
    v13 = sub_221EF6F08;
  }

  else
  {
    v10[8] = a4;
    v10[9] = a3;
    v10[10] = a2;
    v10[11] = a1;
    v13 = sub_221EF6E9C;
  }

  return MEMORY[0x2822009F8](v13, 0, 0);
}

uint64_t sub_221EF6E9C()
{
  v1 = v0[5];

  v2 = v0[1];
  v4 = v0[10];
  v3 = v0[11];
  v6 = v0[8];
  v5 = v0[9];

  return v2(v3, v4, v5, v6);
}

uint64_t sub_221EF6F08()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t Optional.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    return 7104878;
  }

  (*(v2 + 32))(v6, v9, v1);
  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_221FB6B28();
  v11 = v13[0];
  (*(v2 + 8))(v6, v1);
  return v11;
}

uint64_t static String.read(from:key:)(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 stringForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_221FB6318();

  return v4;
}

void sub_221EF71E0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_221FB62E8();
  v5 = [a1 stringForKey_];

  if (v5)
  {
    v6 = sub_221FB6318();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a2 = v6;
  a2[1] = v8;
}

Swift::Void __swiftcall Int.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_221FB62E8();
  [(objc_class *)isa setInteger:container forKey:v4];
}

uint64_t sub_221EF7304@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221EF8B64(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_221EF7334(void *a1)
{
  v3 = *v1;
  v4 = sub_221FB62E8();
  [a1 setInteger:v3 forKey:v4];
}

Swift::Void __swiftcall Bool.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  container = to._container_;
  isa = to.super.isa;
  v4 = sub_221FB62E8();
  [(objc_class *)isa setBool:container & 1 forKey:v4];
}

uint64_t sub_221EF7408@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(a1);
  *a2 = result;
  return result;
}

void sub_221EF7430(void *a1)
{
  v3 = *v1;
  v4 = sub_221FB62E8();
  [a1 setBool:v3 forKey:v4];
}

uint64_t static Data.read(from:key:)(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 dataForKey_];

  if (!v3)
  {
    return 0;
  }

  v4 = sub_221FB5B18();

  return v4;
}

void sub_221EF7538(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a6(a4, a5);
  v8 = sub_221FB62E8();
  [a1 setObject:v7 forKey:v8];
}

void sub_221EF75C4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_221FB62E8();
  v5 = [a1 dataForKey_];

  if (v5)
  {
    v6 = sub_221FB5B18();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a2 = v6;
  a2[1] = v8;
}

void sub_221EF7664(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, void))
{
  v8 = a6(*v6, v6[1]);
  v9 = sub_221FB62E8();
  [a1 setObject:v8 forKey:v9];
}

Swift::Void __swiftcall Double.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v5 = sub_221FB62E8();
  [(objc_class *)isa setDouble:v5 forKey:v3];
}

uint64_t sub_221EF7778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221EF8934(a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

void sub_221EF77A8(void *a1)
{
  v3 = *v1;
  v4 = sub_221FB62E8();
  [a1 setDouble:v4 forKey:v3];
}

Swift::Void __swiftcall Float.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  v3 = v2;
  isa = to.super.isa;
  v6 = sub_221FB62E8();
  LODWORD(v5) = v3;
  [(objc_class *)isa setFloat:v6 forKey:v5];
}

unint64_t sub_221EF78B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221EF8C50(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void sub_221EF78E4(void *a1)
{
  v3 = *v1;
  v5 = sub_221FB62E8();
  LODWORD(v4) = v3;
  [a1 setFloat:v5 forKey:v4];
}

uint64_t static Date.read(from:key:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_221FB62E8();
  v9 = [a1 objectForKey_];

  if (v9)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17[0] = v15;
  v17[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_221E9CFE8(v17, &qword_27CFEC128, &unk_221FBA430);
    v10 = sub_221FB5BC8();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
LABEL_8:
    sub_221E9CFE8(v7, &qword_27CFEC118, &unk_221FBB0A0);
    sub_221FB5BC8();
    return (*(*(v10 - 8) + 56))(a2, 1, 1, v10);
  }

  v10 = sub_221FB5BC8();
  v11 = swift_dynamicCast();
  v12 = *(v10 - 8);
  v13 = *(v12 + 56);
  v13(v7, v11 ^ 1u, 1, v10);
  if ((*(v12 + 48))(v7, 1, v10) == 1)
  {
    goto LABEL_8;
  }

  (*(v12 + 32))(a2, v7, v10);
  return (v13)(a2, 0, 1, v10);
}

Swift::Void __swiftcall Date.write(to:key:)(NSUserDefaults to, Swift::String key)
{
  isa = to.super.isa;
  v3 = sub_221FB5B58();
  v4 = sub_221FB62E8();
  [(objc_class *)isa setObject:v3 forKey:v4];
}

void sub_221EF7C6C(void *a1)
{
  v2 = sub_221FB5B58();
  v3 = sub_221FB62E8();
  [a1 setObject:v2 forKey:v3];
}

void Array<A>.write(to:key:)(void *a1)
{
  v2 = sub_221FB6428();
  v3 = sub_221FB62E8();
  [a1 setObject:v2 forKey:v3];
}

uint64_t sub_221EF7D7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(a1);
  *a2 = result;
  return result;
}

void sub_221EF7DA4(void *a1)
{
  v3 = *v1;
  v4 = sub_221FB6428();
  v5 = sub_221FB62E8();
  [a1 setObject:v4 forKey:v5];
}

uint64_t static Optional<A>.read(from:key:)@<X0>(uint64_t a1@<X4>, uint64_t a2@<X8>)
{
  (*(a1 + 8))();
  v3 = sub_221FB6778();
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 0, 1, v3);
}

uint64_t Optional<A>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  v12 = (MEMORY[0x28223BE20])();
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 + 16);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v12);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v14, v22, v21);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    return (*(v10 + 8))(v14, a4);
  }

  (*(v17 + 32))(v20, v14, v16);
  (*(a5 + 16))(a1, a2, a3, v16, a5);
  return (*(v17 + 8))(v20, v16);
}

uint64_t static DefaultsStorable<>.read(from:key:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v49 = a1;
  v50 = a7;
  v12 = sub_221FB6778();
  v45 = *(v12 - 8);
  v46 = v12;
  v13 = *(v45 + 64);
  MEMORY[0x28223BE20](v12);
  v48 = &v44 - v14;
  v47 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_221FB6778();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v44 - v20;
  v22 = *(*(AssociatedTypeWitness - 8) + 64);
  v23 = MEMORY[0x28223BE20](v19);
  v25 = &v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v44 - v26;
  v28 = *(a6 + 8);
  v29 = v49;
  v44 = a2;
  v49 = a3;
  v30 = a6;
  v32 = v31;
  v28(v29, a2, a3, AssociatedTypeWitness, v30);
  if ((*(v32 + 48))(v21, 1, AssociatedTypeWitness) == 1)
  {
    (*(v17 + 8))(v21, v16);
    return (*(*(a4 - 8) + 56))(v50, 1, 1, a4);
  }

  else
  {
    v34 = v50;
    (*(v32 + 32))(v27, v21, AssociatedTypeWitness);
    (*(v32 + 16))(v25, v27, AssociatedTypeWitness);
    v35 = v48;
    sub_221FB63E8();
    v36 = *(a4 - 8);
    if ((*(v36 + 48))(v35, 1, a4) == 1)
    {
      v47 = v32;
      (*(v45 + 8))(v35, v46);
      if (qword_281307070 != -1)
      {
        swift_once();
      }

      v37 = sub_221FB61D8();
      __swift_project_value_buffer(v37, qword_281307DC0);
      v38 = v49;

      v39 = sub_221FB61B8();
      v40 = sub_221FB65A8();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = v27;
        v43 = swift_slowAlloc();
        v51 = v43;
        *v41 = 141558274;
        *(v41 + 4) = 1752392040;
        *(v41 + 12) = 2080;
        *(v41 + 14) = sub_221EF4114(v44, v38, &v51);
        _os_log_impl(&dword_221E93000, v39, v40, "Couldn't parse user default %{mask.hash}s.", v41, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v43);
        MEMORY[0x223DADA80](v43, -1, -1);
        MEMORY[0x223DADA80](v41, -1, -1);

        (*(v47 + 8))(v42, AssociatedTypeWitness);
      }

      else
      {

        (*(v47 + 8))(v27, AssociatedTypeWitness);
      }

      return (*(v36 + 56))(v34, 1, 1, a4);
    }

    else
    {
      (*(v32 + 8))(v27, AssociatedTypeWitness);
      (*(v36 + 32))(v34, v35, a4);
      return (*(v36 + 56))(v34, 0, 1, a4);
    }
  }
}

uint64_t DefaultsStorable<>.write(to:key:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v17 - v14;
  sub_221FB63D8();
  (*(a7 + 16))(a1, a2, a3, AssociatedTypeWitness, a7);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

void *sub_221EF8740(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

BOOL sub_221EF8760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t))
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v10[0] = a1;
      v10[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v5 = v10;
LABEL_11:
        v8 = a4(v5, a3);
        return v8 && *v8 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v6 >= 0x21 || ((0x100003E01uLL >> v6) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_221FB6968();
  if (!v4)
  {
    return v11;
  }

  return v7;
}

uint64_t _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_221E9CFE8(v8, &qword_27CFEC128, &unk_221FBA430);
    return 2;
  }
}

uint64_t sub_221EF8934(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
  }

  v10[0] = v8;
  v10[1] = v9;
  if (!*(&v9 + 1))
  {
    sub_221E9CFE8(v10, &qword_27CFEC128, &unk_221FBA430);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  *&v10[0] = 0;
  v4 = sub_221EF8760(v6, v7, v10, MEMORY[0x277D84FA8]);

  if (v4)
  {
    return *&v10[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 objectForKey_];

  if (v3)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB30, &qword_221FBB1A8);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_221E9CFE8(v8, &qword_27CFEC128, &unk_221FBA430);
  }

  return 0;
}

uint64_t sub_221EF8B64(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_221E9CFE8(v8, &qword_27CFEC128, &unk_221FBA430);
    return 0;
  }
}

unint64_t sub_221EF8C50(void *a1)
{
  v2 = sub_221FB62E8();
  v3 = [a1 valueForKey_];

  if (v3)
  {
    sub_221FB67C8();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (!*(&v11 + 1))
  {
    sub_221E9CFE8(v12, &qword_27CFEC128, &unk_221FBA430);
    goto LABEL_10;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v5 = 0;
    v6 = 1;
    return v5 | ((v6 & 1) << 32);
  }

  LODWORD(v12[0]) = 0;
  v4 = sub_221EF8760(v8, v9, v12, MEMORY[0x277D84FB0]);

  v5 = LODWORD(v12[0]);
  v6 = !v4;
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | ((v6 & 1) << 32);
}

_BYTE *sub_221EF8E20@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v4 = *result;
  v5 = v4 > 0x20;
  v6 = (1 << v4) & 0x100003E01;
  if (v5 || v6 == 0)
  {
    v9 = *(v3 + 16);
    result = a2();
    if (result)
    {
      v10 = *result == 0;
    }

    else
    {
      v10 = 0;
    }

    *a3 = v10;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t sub_221EF8EAC(uint64_t a1)
{
  sub_221FB6908();
  if (!*(a1 + 16) || (v2 = sub_221ED4BD4(v10), (v3 & 1) == 0))
  {

    sub_221EC5354(v10);
    goto LABEL_7;
  }

  sub_221E951A4(*(a1 + 56) + 32 * v2, v11);
  sub_221EC5354(v10);
  if (swift_dynamicCast() & 1) == 0 || (sub_221FB5D18(), (v4))
  {

LABEL_7:
    v5 = 6;
LABEL_8:
    sub_221EC459C();
    swift_allocError();
    *v6 = v5;
    return swift_willThrow();
  }

  sub_221FB6908();
  if (!*(a1 + 16) || (v8 = sub_221ED4BD4(v10), (v9 & 1) == 0))
  {

    sub_221EC5354(v10);
    goto LABEL_14;
  }

  sub_221E951A4(*(a1 + 56) + 32 * v8, v11);
  sub_221EC5354(v10);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v5 = 4;
    goto LABEL_8;
  }

  return sub_221FB5D48();
}

unint64_t sub_221EF9080()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECB10, &unk_221FBF680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221FBB1B0;
  sub_221FB6908();
  sub_221FB5D58();
  v1 = sub_221FB5D28();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = v1;
  sub_221FB6908();
  v2 = sub_221FB5D38();
  *(inited + 168) = MEMORY[0x277CC9318];
  *(inited + 144) = v2;
  *(inited + 152) = v3;
  v4 = sub_221ED8054(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFECB20, &unk_221FBA170);
  swift_arrayDestroy();
  return v4;
}

uint64_t sub_221EF91A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221EF92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221EF93F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

id sub_221EF9520(void *a1, unint64_t a2)
{
  v19 = MEMORY[0x277D84F90];
  if (a2 >> 62)
  {
LABEL_18:
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v18 = sub_221FB6868();
  }

  else
  {
    v17 = a2 & 0xFFFFFFFFFFFFFF8;
    v18 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v15 = MEMORY[0x277D84F90];
  v4 = *MEMORY[0x277CBBF28];
  while (1)
  {
    if (v18 == v3)
    {
      return v15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DACD50](v3, a2);
    }

    else
    {
      if (v3 >= *(v17 + 16))
      {
        goto LABEL_17;
      }

      v5 = *(a2 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v8 = [a1 relationshipStorage];
    v9 = [v8 secureCloudRelationship];

    result = [v9 secureCloudZoneName];
    if (!result)
    {
      break;
    }

    v11 = result;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    sub_221FB6318();
    v12 = sub_221FB65D8();

    v13 = [v6 recordWithZoneID:v12 recordEncryptionType:1];
    ++v3;
    if (v13)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      v15 = v19;
      v3 = v7;
    }
  }

  __break(1u);
  return result;
}

void sub_221EF9770(uint64_t a1)
{
  v1 = a1;
  v24 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v1 = v19;
    v2 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v17 = v3;
LABEL_8:
  v9 = v4;
  v10 = v5;
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), v13 = v18, v4 = v9, v5 = v10, !v18))
      {
LABEL_22:
        sub_221E96470();
        return;
      }

      goto LABEL_18;
    }

    v11 = v9;
    v12 = v10;
    v4 = v9;
    if (!v10)
    {
      break;
    }

LABEL_14:
    v5 = (v12 - 1) & v12;
    v13 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v13)
    {
      goto LABEL_22;
    }

LABEL_18:
    v14 = [v13 relationshipStorage];
    v15 = [v14 primaryRelationship];

    v9 = v4;
    v10 = v5;
    if (v15)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      goto LABEL_8;
    }
  }

  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v12 = *(v2 + 8 * v4);
    ++v11;
    if (v12)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_221EF9A10(uint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v1 = v20;
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v18 = v3;
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v11 = v19) == 0))
    {
LABEL_26:
      sub_221E96470();
      return;
    }

LABEL_18:
    v12 = [v11 relationshipStorage];
    v13 = [v12 primaryRelationship];

    v14 = [v11 relationshipStorage];
    v15 = [v14 legacyRelationship];

    if ([v15 secureCloudDowngradeRequested] && objc_msgSend(v13, sel_cloudType) == 1 && objc_msgSend(v13, sel_isFriendshipActive))
    {
      v16 = [v13 secureCloudMigrationCompleted];

      if (v16)
      {
        MEMORY[0x223DAC7E0]();
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_221FB6458();
        }

        sub_221FB6478();
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_14:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_221EF9D50(uint64_t a1)
{
  v3 = sub_221FB5C38();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v8 = sub_221FB6868();
  }

  else
  {
    v8 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v51 = MEMORY[0x277D84F90];
    sub_221F77684(0, v8 & ~(v8 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = sub_221FB6818();
    }

    else
    {
      v11 = -1 << *(a1 + 32);
      result = sub_221FB67E8();
      v10 = *(a1 + 36);
    }

    v48 = result;
    v49 = v10;
    v50 = v45 != 0;
    if ((v8 & 0x8000000000000000) == 0)
    {
      v12 = 0;
      v41 = v8;
      v42 = v44 + 32;
      v13 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v13 = a1;
      }

      v39 = a1 + 56;
      v40 = v13;
      v37[1] = v1;
      v38 = a1 + 64;
      while (v12 < v8)
      {
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        v16 = v48;
        v17 = v49;
        v18 = v50;
        v19 = a1;
        sub_221F78B6C(v48, v49, v50, a1);
        v21 = v20;
        v22 = [v20 UUID];
        sub_221FB5C18();

        v23 = v46;
        v51 = v46;
        v25 = *(v46 + 16);
        v24 = *(v46 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_221F77684(v24 > 1, v25 + 1, 1);
          v23 = v51;
        }

        *(v23 + 16) = v25 + 1;
        v26 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v23;
        result = (*(v44 + 32))(v23 + v26 + *(v44 + 72) * v25, v7, v43);
        if (v45)
        {
          if (!v18)
          {
            goto LABEL_42;
          }

          a1 = v19;
          if (sub_221FB6838())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v8 = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD48, &unk_221FB9270);
          v14 = sub_221FB6528();
          sub_221FB68B8();
          result = v14(v47, 0);
          if (v12 == v8)
          {
LABEL_34:
            sub_221EB9940(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v18)
          {
            goto LABEL_43;
          }

          if ((v16 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v19;
          v27 = 1 << *(v19 + 32);
          if (v16 >= v27)
          {
            goto LABEL_38;
          }

          v28 = v16 >> 6;
          v29 = *(v39 + 8 * (v16 >> 6));
          if (((v29 >> v16) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v19 + 36) != v17)
          {
            goto LABEL_40;
          }

          v30 = v29 & (-2 << (v16 & 0x3F));
          if (v30)
          {
            v27 = __clz(__rbit64(v30)) | v16 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v31 = v28 << 6;
            v32 = v28 + 1;
            v33 = (v38 + 8 * v28);
            while (v32 < (v27 + 63) >> 6)
            {
              v35 = *v33++;
              v34 = v35;
              v31 += 64;
              ++v32;
              if (v35)
              {
                result = sub_221EB9940(v16, v17, 0);
                v27 = __clz(__rbit64(v34)) + v31;
                goto LABEL_33;
              }
            }

            result = sub_221EB9940(v16, v17, 0);
          }

LABEL_33:
          v36 = *(v19 + 36);
          v48 = v27;
          v49 = v36;
          v50 = 0;
          v8 = v41;
          if (v12 == v41)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_221EFA15C(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 80) = a1;
  return MEMORY[0x2822009F8](sub_221EFA180, 0, 0);
}

uint64_t sub_221EFA180()
{
  v1 = [*(*(v0 + 24) + 288) contacts];
  if (v1)
  {
    v2 = v1;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v3 = sub_221FB64F8();
    *(v0 + 32) = v3;

    sub_221EF9770(v3);
    v5 = v4;
    v21 = MEMORY[0x277D84F90];
    if (v4 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
    {
      v7 = 0;
      while (1)
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x223DACD50](v7, v5);
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_19;
          }

          v8 = *(v5 + 8 * v7 + 32);
        }

        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (*(v0 + 80))
        {
          sub_221FB69B8();
          v10 = *(v21 + 16);
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
        }

        else
        {
        }

        ++v7;
        if (v9 == i)
        {
          v11 = v21;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

    v11 = MEMORY[0x277D84F90];
LABEL_22:
    *(v0 + 40) = v11;
    v15 = *(v0 + 24);

    *(v0 + 16) = v11;
    v16 = swift_task_alloc();
    *(v0 + 48) = v16;
    *(v16 + 16) = v15;
    v17 = *(MEMORY[0x277CE94C8] + 4);

    v18 = swift_task_alloc();
    *(v0 + 56) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
    v20 = sub_221EB83D0(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
    *v18 = v0;
    v18[1] = sub_221EFA48C;

    return MEMORY[0x28213AEB8](&unk_221FBB2F8, v16, v19, v20);
  }

  else
  {
    v12 = *(v0 + 8);
    v13 = MEMORY[0x277D84F90];

    return v12(v13);
  }
}

void sub_221EFA48C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
  }

  else
  {
    v6 = v3[5];
    v7 = v3[6];

    MEMORY[0x2822009F8](sub_221EFA5D8, 0, 0);
  }
}

uint64_t sub_221EFA5D8()
{
  v1 = v0[3];
  v2 = *(v1 + 616);
  v3 = *(v1 + 617);
  v4 = *(v1 + 624);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    v7 = v0[4];

    v8 = v0[8];
    goto LABEL_9;
  }

  v10 = v0[8];
  v9 = v0[9];
  sub_221EF9A10(v0[4]);
  v12 = v11;

  sub_221ED43D0(v12);
  v8 = v10;
LABEL_9:
  v13 = v0[1];

  return v13(v8);
}

uint64_t sub_221EFA6DC(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2[2] = a2;
  v2[3] = v3;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_221EFA778;

  return sub_221EFA948(v3);
}

uint64_t sub_221EFA778(char a1)
{
  v2 = *(*v1 + 32);
  v4 = *v1;
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_221EFA878, 0, 0);
}

uint64_t sub_221EFA878()
{
  if (![*(v0 + 24) isFriendshipActive] || objc_msgSend(*(v0 + 24), sel_cloudType))
  {
    goto LABEL_3;
  }

  v4 = *(v0 + 40);
  v5 = [*(v0 + 24) secureCloudUpgradeCompleted];
  LOBYTE(v1) = 0;
  if (v5 && (v4 & 1) == 0)
  {
    if ([*(v0 + 24) secureCloudMigrationCompleted])
    {
LABEL_3:
      LOBYTE(v1) = 0;
      goto LABEL_4;
    }

    v6 = *(v0 + 16);
    v1 = !sub_221EFADA8(*(v0 + 24));
  }

LABEL_4:
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_221EFA948(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_221FB5C38();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFAA08, 0, 0);
}

id sub_221EFAA08()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 600);
  v3 = *(v1 + 601);
  v4 = *(v1 + 608);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    v7 = [*(v0 + 56) secureCloudMigrationAvailable];
    v8 = *(v0 + 88);

    v9 = *(v0 + 8);

    return v9(v7);
  }

  v11 = *(v0 + 56);
  sub_221EA4AB4(*(v0 + 64) + 336, v0 + 16);
  v12 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  result = [v11 UUID];
  if (result)
  {
    v13 = result;
    v15 = *(v0 + 80);
    v14 = *(v0 + 88);
    v16 = *(v0 + 72);
    sub_221FB5C18();

    v17 = sub_221FB5BE8();
    v19 = v18;
    *(v0 + 96) = v18;
    (*(v15 + 8))(v14, v16);
    v20 = *v12;
    v21 = swift_task_alloc();
    *(v0 + 104) = v21;
    *v21 = v0;
    v21[1] = sub_221EFABF4;

    return sub_221F2898C(v17, v19);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221EFABF4(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_221EFAD14, 0, 0);
}

uint64_t sub_221EFAD14()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1 == 1)
  {
    v2 = [*(v0 + 56) secureCloudMigrationAvailable];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v2);
}

BOOL sub_221EFADA8(void *a1)
{
  v2 = v1;
  v4 = sub_221FB5BC8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 dateForLatestMigrationCompleted];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  sub_221FB5B98();

  sub_221FB5B78();
  v12 = v11;
  v13 = *(v2 + 552);
  v14 = *(v2 + 560);
  v15 = *(v2 + 568);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v37) = v13;
    UserDefaultsKeys.rawValue.getter();
    v16 = COERCE_DOUBLE(sub_221EF8934(v15));
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      v14 = v16;
    }
  }

  v19 = fabs(v12);
  v20 = v19 < v14;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v21 = sub_221FB61D8();
  __swift_project_value_buffer(v21, qword_281307DF0);
  v22 = a1;
  v23 = sub_221FB61B8();
  v24 = sub_221FB65C8();

  if (os_log_type_enabled(v23, v24))
  {
    v36[0] = v4;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v39 = v26;
    *v25 = 136315394;
    v27 = [v22 cloudKitAddress];
    if (v27)
    {
      v28 = v27;
      v29 = sub_221FB6318();
      v31 = v30;

      v37 = 0;
      v38 = 0xE000000000000000;
      v36[1] = v29;
      v36[2] = v31;
      sub_221FB6A08();

      v32 = v37;
      v33 = v38;
    }

    else
    {
      v33 = 0xE300000000000000;
      v32 = 7104878;
    }

    v34 = sub_221EF4114(v32, v33, &v39);

    *(v25 + 4) = v34;
    *(v25 + 12) = 1024;
    *(v25 + 14) = v19 < v14;
    _os_log_impl(&dword_221E93000, v23, v24, "Relationship migration %s backing off previous completion: %{BOOL}d", v25, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x223DADA80](v26, -1, -1);
    MEMORY[0x223DADA80](v25, -1, -1);

    (*(v5 + 8))(v8, v36[0]);
  }

  else
  {

    (*(v5 + 8))(v8, v4);
  }

  return v20;
}

uint64_t sub_221EFB0E8(uint64_t a1)
{
  *(v2 + 672) = v1;
  *(v2 + 664) = a1;
  return MEMORY[0x2822009F8](sub_221EFB10C, 0, 0);
}

uint64_t sub_221EFB10C()
{
  v1 = [*(v0[84] + 288) contacts];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v3 = sub_221FB64F8();
  v0[85] = v3;

  if ((v3 & 0xC000000000000001) != 0)
  {
    if (sub_221FB6868())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*(v3 + 16))
  {
LABEL_9:

LABEL_10:
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();
    if (!os_log_type_enabled(v11, v12))
    {
      goto LABEL_19;
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "No contacts to update migration availability";
    goto LABEL_18;
  }

LABEL_4:
  v4 = __swift_project_boxed_opaque_existential_0Tm((v0[84] + 120), *(v0[84] + 144));
  v5 = *v4;
  *(v4 + 8);
  v6 = sub_221FB62E8();

  v7 = [v5 installStateForBundleIdentifier_];

  if (v7 == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0[84], *(v0[84] + 24));
    v8 = swift_task_alloc();
    v0[86] = v8;
    *v8 = v0;
    v8[1] = sub_221EFB458;

    return sub_221EF490C();
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v15 = sub_221FB61D8();
  __swift_project_value_buffer(v15, qword_281307DF0);
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = "App not installed, not updating migration availability";
LABEL_18:
    _os_log_impl(&dword_221E93000, v11, v12, v14, v13, 2u);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

LABEL_19:

  v16 = v0[1];

  return v16();
}

uint64_t sub_221EFB458(__int16 a1)
{
  v3 = *v2;
  v4 = *(*v2 + 688);
  v7 = *v2;
  *(v3 + 776) = a1;
  *(v3 + 696) = v1;

  if (v1)
  {
    v5 = sub_221EFB7DC;
  }

  else
  {
    v5 = sub_221EFB570;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EFB570()
{
  v17 = v0;
  v1 = *(v0 + 680);
  if (*(v0 + 776) == 517)
  {
    v2 = sub_221E9ECE4(*(v0 + 680));
    *(v0 + 704) = v2;

    v3 = swift_task_alloc();
    *(v0 + 712) = v3;
    *v3 = v0;
    v3[1] = sub_221EFB840;
    v4 = *(v0 + 672);
    v5 = *(v0 + 664);

    return sub_221EFC55C(v2, v5);
  }

  else
  {
    v7 = *(v0 + 680);

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 776);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v16 = v13;
      *v12 = 136315138;
      *(v0 + 648) = 0;
      *(v0 + 656) = 0xE000000000000000;
      *(v0 + 778) = v11;
      sub_221FB6A08();
      v14 = sub_221EF4114(*(v0 + 648), *(v0 + 656), &v16);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_221E93000, v9, v10, "Account is invalid, not updating migration availability: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_221EFB7DC()
{
  v1 = v0[85];

  v2 = v0[87];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221EFB840()
{
  v2 = *v1;
  v3 = *(*v1 + 712);
  v7 = *v1;
  *(*v1 + 720) = v0;

  if (v0)
  {
    v4 = sub_221EFC368;
  }

  else
  {
    v5 = *(v2 + 704);

    v4 = sub_221EFB95C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EFB95C()
{
  v1 = *(v0 + 672);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  v4 = *(MEMORY[0x277CE9360] + 4);
  v5 = swift_task_alloc();
  *(v0 + 728) = v5;
  *v5 = v0;
  v5[1] = sub_221EFBA14;

  return MEMORY[0x28213AC20](v2, v3);
}

uint64_t sub_221EFBA14(char a1)
{
  v2 = *(*v1 + 728);
  v4 = *v1;
  *(*v1 + 780) = a1;

  return MEMORY[0x2822009F8](sub_221EFBB14, 0, 0);
}

uint64_t sub_221EFBB14()
{
  v1 = *(v0 + 672);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  v4 = *(MEMORY[0x277CE9368] + 4);
  v5 = swift_task_alloc();
  *(v0 + 736) = v5;
  *v5 = v0;
  v5[1] = sub_221EFBBCC;

  return MEMORY[0x28213AC28](v2, v3);
}

uint64_t sub_221EFBBCC(uint64_t a1)
{
  v2 = *(*v1 + 736);
  v4 = *v1;
  *(*v1 + 744) = a1;

  return MEMORY[0x2822009F8](sub_221EFBCCC, 0, 0);
}

uint64_t sub_221EFBCCC()
{
  v26 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 744);
  v2 = *(v0 + 672);
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221F0419C(v2, v0 + 16);

  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 744);
  if (v6)
  {
    v8 = *(v0 + 780);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315650;
    __swift_project_boxed_opaque_existential_0Tm((v0 + 176), *(v0 + 200));
    sub_221E94E44();
    v12 = v11;
    v13 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
    v14 = MEMORY[0x223DAC810](v12, v13);
    v16 = v15;

    sub_221F041D4(v0 + 16);
    v17 = sub_221EF4114(v14, v16, &v25);

    *(v9 + 4) = v17;
    *(v9 + 12) = 1024;
    *(v9 + 14) = v8;
    *(v9 + 18) = 2080;
    v18 = MEMORY[0x223DAC810](v7, MEMORY[0x277D837D0]);
    v20 = v19;

    v21 = sub_221EF4114(v18, v20, &v25);

    *(v9 + 20) = v21;
    _os_log_impl(&dword_221E93000, v4, v5, "Running migration service with devices: %s, ignore %{BOOL}d, ids %s", v9, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
    v22 = *(v0 + 744);

    sub_221F041D4(v0 + 16);
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 672) + 160), *(*(v0 + 672) + 184));
  v23 = swift_task_alloc();
  *(v0 + 752) = v23;
  *v23 = v0;
  v23[1] = sub_221EFBF98;

  return sub_221F7C268(0);
}

uint64_t sub_221EFBF98(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 752);
  v5 = *v1;

  v6 = swift_task_alloc();
  v3[95] = v6;
  *v6 = v5;
  v6[1] = sub_221EFC0FC;
  v7 = v3[84];
  v8 = v3[83];

  return sub_221EFCF28(a1, v8);
}

uint64_t sub_221EFC0FC()
{
  v2 = *v1;
  v3 = *(*v1 + 760);
  v4 = *v1;

  if (v0)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = swift_task_alloc();
    v2[96] = v7;
    *v7 = v4;
    v7[1] = sub_221EFC274;
    v8 = v2[84];
    v9 = v2[83];

    return sub_221EFDC74(v9);
  }
}

uint64_t sub_221EFC274()
{
  v1 = *(*v0 + 768);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_221EFC368()
{
  v1 = v0[88];

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = v0[90];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[90];
  if (v7)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v8;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to fix up legacy relationships: %@", v9, 0xCu);
    sub_221EA0558(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[84];
  v14 = v13[8];
  v15 = v13[9];
  __swift_project_boxed_opaque_existential_0Tm(v13 + 5, v14);
  v16 = *(MEMORY[0x277CE9360] + 4);
  v17 = swift_task_alloc();
  v0[91] = v17;
  *v17 = v0;
  v17[1] = sub_221EFBA14;

  return MEMORY[0x28213AC20](v14, v15);
}

uint64_t sub_221EFC55C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221EFC580, 0, 0);
}

uint64_t sub_221EFC580()
{
  if (qword_281307080 != -1)
  {
    goto LABEL_53;
  }

  while (1)
  {
    v1 = v0[2];
    v2 = sub_221FB61D8();
    v0[5] = __swift_project_value_buffer(v2, qword_281307DF0);
    sub_221E9DCE8(0xD000000000000095, 0x8000000221FC25C0, 0xD00000000000002FLL, 0x8000000221FC2690);
    v56 = MEMORY[0x277D84F90];
    if (v1 >> 62)
    {
      if (v0[2] < 0)
      {
        v40 = v0[2];
      }

      v3 = sub_221FB6868();
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = MEMORY[0x277D84F90];
    if (v3)
    {
      v5 = 0;
      v54 = v1 & 0xC000000000000001;
      v53 = v1 & 0xFFFFFFFFFFFFFF8;
      v6 = v0[2] + 32;
      do
      {
        if (v54)
        {
          v7 = MEMORY[0x223DACD50](v5, v0[2]);
        }

        else
        {
          if (v5 >= *(v53 + 16))
          {
            goto LABEL_48;
          }

          v7 = *(v6 + 8 * v5);
        }

        v8 = v7;
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v10 = [v7 relationshipStorage];
        v11 = [v10 primaryRelationship];

        v12 = [v8 relationshipStorage];
        v13 = [v12 secureCloudRelationship];

        v14 = [v8 relationshipStorage];
        v15 = [v14 legacyRelationship];

        if ([v11 cloudType] == 1 && objc_msgSend(v13, sel_isFriendshipActive) && objc_msgSend(v15, sel_isFriendshipActive) && objc_msgSend(v13, sel_secureCloudMigrationCompleted))
        {
          v16 = [v15 secureCloudMigrationCompleted];

          if (v16)
          {
          }

          else
          {
            sub_221FB69B8();
            v17 = *(v56 + 16);
            sub_221FB69E8();
            sub_221FB69F8();
            sub_221FB69C8();
          }
        }

        else
        {
        }

        ++v5;
      }

      while (v9 != v3);
      v18 = v56;
      v4 = MEMORY[0x277D84F90];
      if ((v56 & 0x8000000000000000) == 0)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
      if ((MEMORY[0x277D84F90] & 0x8000000000000000) == 0)
      {
LABEL_24:
        if ((v18 & 0x4000000000000000) == 0)
        {
          v19 = *(v18 + 16);
          if (!v19)
          {
            goto LABEL_61;
          }

          v57 = v4;
          sub_221FB69D8();
LABEL_27:
          v52 = v0;
          v20 = 0;
          v21 = v18 & 0xC000000000000001;
          v55 = v18;
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v21)
            {
              v24 = MEMORY[0x223DACD50](v20, v18);
            }

            else
            {
              if (v20 >= *(v18 + 16))
              {
                goto LABEL_52;
              }

              v24 = *(v18 + 8 * v20 + 32);
            }

            v25 = v24;
            v26 = [v24 relationshipStorage];
            v27 = sub_221FB61B8();
            v28 = sub_221FB65C8();

            if (os_log_type_enabled(v27, v28))
            {
              v29 = swift_slowAlloc();
              v30 = v21;
              v31 = v19;
              v32 = swift_slowAlloc();
              *v29 = 138412290;
              *(v29 + 4) = v26;
              *v32 = v26;
              v33 = v26;
              _os_log_impl(&dword_221E93000, v27, v28, "Found legacy relationship to fix up for migration: %@", v29, 0xCu);
              sub_221EA0558(v32);
              v34 = v32;
              v19 = v31;
              v21 = v30;
              v18 = v55;
              MEMORY[0x223DADA80](v34, -1, -1);
              MEMORY[0x223DADA80](v29, -1, -1);
            }

            v0 = [v26 legacyRelationship];
            sub_221FB69B8();
            v22 = *(v57 + 16);
            sub_221FB69E8();
            sub_221FB69F8();
            sub_221FB69C8();
            ++v20;
            if (v23 == v19)
            {

              v4 = v57;
              v0 = v52;
              goto LABEL_37;
            }
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }
      }
    }

    if (!sub_221FB6868())
    {
      goto LABEL_61;
    }

    v41 = sub_221FB6868();
    if (v41)
    {
      v19 = v41;
      v57 = v4;
      sub_221FB69D8();
      if (v19 < 0)
      {
        __break(1u);
LABEL_61:

        v42 = sub_221FB61B8();
        v43 = sub_221FB65C8();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_221E93000, v42, v43, "No legacy relationships to fix up for migration", v44, 2u);
          MEMORY[0x223DADA80](v44, -1, -1);
        }

        v45 = v0[1];

        return v45();
      }

      goto LABEL_27;
    }

LABEL_37:
    v35 = v0;
    v0[6] = v4;
    if (!(v4 >> 62))
    {
      v36 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        break;
      }

      goto LABEL_39;
    }

    v36 = sub_221FB6868();
    if (!v36)
    {
      break;
    }

LABEL_39:
    v37 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v38 = MEMORY[0x223DACD50](v37, v4);
      }

      else
      {
        if (v37 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_51;
        }

        v38 = *(v4 + 8 * v37 + 32);
      }

      v0 = v38;
      v39 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      [v38 insertEventWithType_];

      ++v37;
      if (v39 == v36)
      {
        goto LABEL_67;
      }
    }

LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    swift_once();
  }

LABEL_67:
  v47 = v35[4];
  __swift_project_boxed_opaque_existential_0Tm(v47 + 57, v47[60]);
  v48 = v47[30];
  v49 = swift_task_alloc();
  v35[7] = v49;
  *v49 = v35;
  v49[1] = sub_221EFCC90;
  v50 = v35[3];
  v51 = MEMORY[0x277D84F90];

  return sub_221EBA884(v4, v51, v48, v50);
}

uint64_t sub_221EFCC90(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *(*v2 + 48);
  v5 = *v2;
  *(v5 + 64) = a1;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221EFCDE4, 0, 0);
  }
}

uint64_t sub_221EFCDE4()
{
  v1 = v0[8];
  v2 = v0[5];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    if (v6 >> 62)
    {
      if (v0[8] < 0)
      {
        v13 = v0[8];
      }

      v8 = sub_221FB6868();
    }

    else
    {
      v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v0[8];

    *(v7 + 4) = v8;

    _os_log_impl(&dword_221E93000, v3, v4, "Fixed up %ld legacy relationships for migration", v7, 0xCu);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
    v10 = v0[8];
    swift_bridgeObjectRelease_n();
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_221EFCF28(char a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v5 = swift_task_alloc();
  v3[5] = v5;
  *v5 = v3;
  v5[1] = sub_221EFCFC0;

  return sub_221EFA15C(a1);
}

uint64_t sub_221EFCFC0(uint64_t a1)
{
  v2 = *(*v1 + 40);
  v4 = *v1;
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_221EFD0C0, 0, 0);
}

uint64_t sub_221EFD0C0()
{
  v1 = *(v0 + 48);
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = *(v0 + 48);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_26:

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v33 = sub_221FB61D8();
    __swift_project_value_buffer(v33, qword_281307DF0);
    v34 = sub_221FB61B8();
    v35 = sub_221FB65C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_221E93000, v34, v35, "No relationships to update with migration availability", v36, 2u);
      MEMORY[0x223DADA80](v36, -1, -1);
    }

    v37 = *(v0 + 8);

    return v37();
  }

LABEL_25:
  v2 = sub_221FB6868();
  v3 = *(v0 + 48);
  if (!v2)
  {
    goto LABEL_26;
  }

LABEL_3:
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v3 + 32;
  do
  {
    if (v5)
    {
      v8 = MEMORY[0x223DACD50](v4, *(v0 + 48));
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_24;
      }

      v8 = *(v7 + 8 * v4);
    }

    v1 = v8;
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    [v8 insertEventWithType_];

    ++v4;
  }

  while (v9 != v2);
  v10 = *(v0 + 32);
  v11 = *(v10 + 600);
  v12 = *(v10 + 601);
  *(v0 + 128) = v12;
  v13 = *(v10 + 608);
  *(v0 + 56) = v13;
  v14 = _s23ActivitySharingServices8PlatformO15internalInstallSbvg_0();
  if (v14)
  {
    UserDefaultsKeys.rawValue.getter();
    v15 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v13);

    if (v15 == 2)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (!v12)
  {
LABEL_16:
    v17 = MEMORY[0x277D84F90];
    *(v0 + 96) = MEMORY[0x277D84F90];
    v18 = *(v0 + 32);
    __swift_project_boxed_opaque_existential_0Tm(v18 + 57, v18[60]);
    v19 = v18[30];
    v20 = swift_task_alloc();
    *(v0 + 104) = v20;
    *v20 = v0;
    v20[1] = sub_221EFD71C;
    v21 = *(v0 + 48);
    v22 = *(v0 + 24);

    return sub_221EBA884(v21, v17, v19, v22);
  }

  v24 = *(v0 + 48);
  v25 = *(v0 + 32);
  v26 = [objc_opt_self() relationshipZone];
  *(v0 + 64) = v26;
  *(v0 + 16) = v24;
  v27 = swift_task_alloc();
  *(v0 + 72) = v27;
  *(v27 + 16) = v25;
  *(v27 + 24) = v26;
  v28 = *(MEMORY[0x277CE94E0] + 4);
  v29 = swift_task_alloc();
  *(v0 + 80) = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  v31 = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  v32 = sub_221EB83D0(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *v29 = v0;
  v29[1] = sub_221EFD504;

  return MEMORY[0x28213AED0](&unk_221FBB2E0, v27, v30, v31, v32);
}

void sub_221EFD504(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 80);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = *(v4 + 72);
    *(v4 + 88) = a1;

    MEMORY[0x2822009F8](sub_221EFD648, 0, 0);
  }
}

uint64_t sub_221EFD648()
{
  v1 = *(v0 + 88);
  *(v0 + 96) = v1;
  v2 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_0Tm(v2 + 57, v2[60]);
  v3 = v2[30];
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_221EFD71C;
  v5 = *(v0 + 48);
  v6 = *(v0 + 24);

  return sub_221EBA884(v5, v1, v3, v6);
}

uint64_t sub_221EFD71C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  *(*v2 + 112) = a1;

  v7 = *(v3 + 96);
  if (v1)
  {
    v8 = *(v4 + 48);

    v9 = *(v6 + 8);

    return v9();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221EFD890, 0, 0);
  }
}

uint64_t sub_221EFD890()
{
  v25 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v9 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v10 = MEMORY[0x223DAC810](v6, v9);
    v12 = v11;

    v13 = sub_221EF4114(v10, v12, &v24);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_221E93000, v3, v4, "Updated legacy relationships with migration availability: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v14 = *(*(v0 + 32) + 600);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v15 = *(v0 + 56);
    v16 = *(v0 + 128);
    UserDefaultsKeys.rawValue.getter();
    v17 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v15);

    if (v17 == 2)
    {
      v18 = v16;
    }

    else
    {
      v18 = v17;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (*(v0 + 128) != 1)
  {
LABEL_11:
    v19 = *(v0 + 112);

    v20 = *(v0 + 8);

    return v20();
  }

  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 32) + 456), *(*(v0 + 32) + 480));
  v22 = swift_task_alloc();
  *(v0 + 120) = v22;
  *v22 = v0;
  v22[1] = sub_221EFDB60;
  v23 = *(v0 + 112);

  return sub_221EBC594(v23);
}

uint64_t sub_221EFDB60()
{
  v1 = *(*v0 + 120);
  v2 = *(*v0 + 112);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_221EFDC74(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_221FB5C38();
  v2[6] = v3;
  v4 = *(v3 - 8);
  v2[7] = v4;
  v5 = *(v4 + 64) + 15;
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFDD40, 0, 0);
}

uint64_t sub_221EFDD40()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  v0[10] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000095, 0x8000000221FC25C0, 0xD000000000000025, 0x8000000221FC2660);
  v3 = *(v1 + 536);
  v4 = *(v1 + 537);
  v5 = *(v1 + 544);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v6 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v5);

    if (v6 == 2)
    {
      v7 = v4;
    }

    else
    {
      v7 = v6;
    }

    if ((v7 & 1) == 0)
    {
LABEL_8:
      v8 = sub_221FB61B8();
      v9 = sub_221FB65C8();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        v11 = "Auto migration disallowed";
LABEL_17:
        _os_log_impl(&dword_221E93000, v8, v9, v11, v10, 2u);
        MEMORY[0x223DADA80](v10, -1, -1);
        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  v12 = [*(v0[5] + 288) contacts];
  if (!v12)
  {
    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "No contacts to migrate";
      goto LABEL_17;
    }

LABEL_18:

    v22 = v0[8];
    v21 = v0[9];

    v23 = v0[1];

    return v23();
  }

  v13 = v12;
  v14 = v0[5];
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v15 = sub_221FB64F8();
  v0[11] = v15;

  v0[2] = v15;
  v16 = swift_task_alloc();
  v0[12] = v16;
  *(v16 + 16) = v14;
  v17 = *(MEMORY[0x277CE94C8] + 4);
  v18 = swift_task_alloc();
  v0[13] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD08, &qword_221FB9210);
  v20 = sub_221EB83D0(&qword_281306F30, &qword_27CFEBD08, &qword_221FB9210);
  *v18 = v0;
  v18[1] = sub_221EFE0DC;

  return MEMORY[0x28213AEB8](&unk_221FBB260, v16, v19, v20);
}

void sub_221EFE0DC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 104);
  v5 = *v2;
  v3[14] = a1;
  v3[15] = v1;

  if (v1)
  {
  }

  else
  {
    v6 = v3[12];

    MEMORY[0x2822009F8](sub_221EFE21C, 0, 0);
  }
}

uint64_t sub_221EFE21C()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + 336), *(*(v0 + 40) + 360));
  v2 = *v1;
  *(v0 + 128) = *v1;

  return MEMORY[0x2822009F8](sub_221EFE290, v2, 0);
}

uint64_t sub_221EFE290()
{
  v7 = v0;
  v1 = *(*(v0 + 128) + 120);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = sub_221E9E980(*(v1 + 16), 0);
      v4 = sub_221E9EDC0(&v6, v3 + 4, v2, v1);

      sub_221E96470();
      if (v4 == v2)
      {
        goto LABEL_6;
      }

      __break(1u);
    }
  }

  v3 = MEMORY[0x277D84F90];
LABEL_6:
  *(v0 + 136) = v3;

  return MEMORY[0x2822009F8](sub_221EFE390, 0, 0);
}

uint64_t sub_221EFE390()
{
  v81 = v0;
  v1 = v0[14];
  v2 = v0[10];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v79 = v7;
    *v6 = 136315138;
    if (v5 >> 62)
    {
      if (v0[14] < 0)
      {
        v74 = v0[14];
      }

      v8 = sub_221FB6868();
    }

    else
    {
      v8 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = MEMORY[0x277D84F90];
    if (v8)
    {
      v80[0] = MEMORY[0x277D84F90];
      v10 = sub_221F77684(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        __break(1u);
        return MEMORY[0x28213AEC8](v10, v11, v12, v13);
      }

      v76 = v7;
      v77 = v4;
      v78 = v3;
      v9 = v80[0];
      if ((v5 & 0xC000000000000001) != 0)
      {
        v14 = 0;
        v15 = v0[7];
        do
        {
          v16 = v0[9];
          MEMORY[0x223DACD50](v14, v0[14]);
          v17 = [swift_unknownObjectRetain() UUID];
          sub_221FB5C18();

          swift_unknownObjectRelease_n();
          v80[0] = v9;
          v19 = *(v9 + 16);
          v18 = *(v9 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_221F77684(v18 > 1, v19 + 1, 1);
            v9 = v80[0];
          }

          v20 = v0[9];
          v21 = v0[6];
          ++v14;
          *(v9 + 16) = v19 + 1;
          (*(v15 + 32))(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v19, v20, v21);
        }

        while (v8 != v14);
      }

      else
      {
        v22 = v0[7];
        v23 = (v0[14] + 32);
        do
        {
          v24 = v0[8];
          v25 = *v23;
          v26 = [v25 UUID];
          sub_221FB5C18();

          v80[0] = v9;
          v28 = *(v9 + 16);
          v27 = *(v9 + 24);
          if (v28 >= v27 >> 1)
          {
            sub_221F77684(v27 > 1, v28 + 1, 1);
            v9 = v80[0];
          }

          v29 = v0[8];
          v30 = v0[6];
          *(v9 + 16) = v28 + 1;
          (*(v22 + 32))(v9 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v28, v29, v30);
          ++v23;
          --v8;
        }

        while (v8);
      }

      v3 = v78;
      v4 = v77;
      v7 = v76;
    }

    v31 = MEMORY[0x223DAC810](v9, v0[6]);
    v33 = v32;

    v34 = sub_221EF4114(v31, v33, &v79);

    *(v6 + 4) = v34;
    _os_log_impl(&dword_221E93000, v3, v4, "Contacts eligible for migration %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v35 = v0[14];
  v36 = v0[10];
  v37 = v0[11];

  v38 = sub_221FB61B8();
  v39 = sub_221FB65C8();

  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[11];
  if (v40)
  {
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v80[0] = v43;
    *v42 = 136315138;
    v44 = v0[11];
    if ((v41 & 0xC000000000000001) != 0)
    {
      if (v44 < 0)
      {
        v45 = v0[11];
      }

      else
      {
        v45 = v41 & 0xFFFFFFFFFFFFFF8;
      }

      v46 = sub_221FB6868();
      v44 = sub_221F15F48(v45, v46);
    }

    v47 = v0[15];
    v48 = v0[6];
    v49 = sub_221F04204(v0[14], v44);
    v50 = sub_221EF9D50(v49);

    v51 = MEMORY[0x223DAC810](v50, v48);
    v53 = v52;

    v54 = sub_221EF4114(v51, v53, v80);

    *(v42 + 4) = v54;
    _os_log_impl(&dword_221E93000, v38, v39, "Contacts ineligible for migration %s", v42, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v43);
    MEMORY[0x223DADA80](v43, -1, -1);
    MEMORY[0x223DADA80](v42, -1, -1);
  }

  else
  {
  }

  v55 = v0[17];
  v56 = v0[10];

  v57 = sub_221FB61B8();
  v58 = sub_221FB65C8();

  v59 = os_log_type_enabled(v57, v58);
  v60 = v0[17];
  if (v59)
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v80[0] = v62;
    *v61 = 136315138;
    v63 = sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
    v64 = MEMORY[0x223DAC810](v60, v63);
    v66 = v65;

    v67 = sub_221EF4114(v64, v66, v80);

    *(v61 + 4) = v67;
    _os_log_impl(&dword_221E93000, v57, v58, "Checked against migration available items: %s", v61, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v62);
    MEMORY[0x223DADA80](v62, -1, -1);
    MEMORY[0x223DADA80](v61, -1, -1);
  }

  else
  {
  }

  v69 = v0[4];
  v68 = v0[5];
  v0[3] = v0[14];
  v70 = swift_task_alloc();
  v0[18] = v70;
  *(v70 + 16) = v68;
  *(v70 + 24) = v69;
  v71 = *(MEMORY[0x277CE94D8] + 4);
  v72 = swift_task_alloc();
  v0[19] = v72;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD10, &unk_221FBB280);
  v13 = sub_221EB83D0(&qword_27CFEBD18, &qword_27CFEBD10, &unk_221FBB280);
  *v72 = v0;
  v72[1] = sub_221EFEA5C;
  v10 = &unk_221FBB278;
  v11 = v70;
  v12 = v73;

  return MEMORY[0x28213AEC8](v10, v11, v12, v13);
}

void sub_221EFEA5C()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[18];
    v6 = v2[14];

    v8 = v2[8];
    v7 = v2[9];

    v9 = *(v4 + 8);

    v9();
  }
}

uint64_t sub_221EFEBA0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a1;
  v6 = sub_221FB5C38();
  v4[5] = v6;
  v7 = *(v6 - 8);
  v4[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v10 = *a2;
  v4[7] = v9;
  v4[8] = v10;

  return MEMORY[0x2822009F8](sub_221EFEC6C, 0, 0);
}

uint64_t sub_221EFEC6C()
{
  v1 = [*(v0 + 64) UUID];
  if (v1)
  {
    v4 = v1;
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    sub_221FB5C18();

    *(v0 + 72) = sub_221FB5BE8();
    *(v0 + 80) = v9;
    (*(v6 + 8))(v5, v7);
    v10 = __swift_project_boxed_opaque_existential_0Tm((v8 + 336), *(v8 + 360));
    v2 = *v10;
    *(v0 + 88) = *v10;
    v1 = sub_221EFED4C;
    v3 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221EFED4C()
{
  v1 = *(v0[11] + 120);
  if (v1 && *(v1 + 16))
  {
    v3 = v0[9];
    v2 = v0[10];

    v4 = sub_221ED4B5C(v3, v2);
    if (v5)
    {
      v6 = *(*(v1 + 56) + 8 * v4);
      v0[12] = v6;
      v7 = v6;

      v8 = sub_221EFEEE8;
    }

    else
    {

      v8 = sub_221F051C4;
    }
  }

  else
  {
    v8 = sub_221EFEE24;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221EFEE24()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = objc_allocWithZone(MEMORY[0x277CE9108]);
  v4 = sub_221FB62E8();

  v5 = [v3 initWithRelationshipIdentifier_];

  v0[13] = v5;
  v6 = *__swift_project_boxed_opaque_existential_0Tm((v0[3] + 336), *(v0[3] + 360));

  return MEMORY[0x2822009F8](sub_221EFEF68, v6, 0);
}

uint64_t sub_221EFEEE8()
{
  v1 = v0[10];

  v0[13] = v0[12];
  v2 = *__swift_project_boxed_opaque_existential_0Tm((v0[3] + 336), *(v0[3] + 360));

  return MEMORY[0x2822009F8](sub_221EFEF68, v2, 0);
}

uint64_t sub_221EFEF68()
{
  v1 = *(v0 + 104);
  *(v0 + 112) = sub_221F5A3A4(*(v0 + 64), *(v0 + 32));

  return MEMORY[0x2822009F8](sub_221EFF004, 0, 0);
}

uint64_t sub_221EFF004()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 56);
  **(v0 + 16) = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EFF078()
{
  v1 = *(v0 + 56);
  **(v0 + 16) = 0;

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EFF0EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFF1AC, 0, 0);
}

uint64_t sub_221EFF1AC()
{
  v26 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_221FB61D8();
  v0[7] = __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000095, 0x8000000221FC25C0, 0xD000000000000020, 0x8000000221FC26C0);
  v4 = *(v2 + 288);
  v5 = sub_221FB5BF8();
  v6 = [v4 contactWithUUID_];
  v0[8] = v6;

  if (v6)
  {
    v7 = swift_task_alloc();
    v0[9] = v7;
    *v7 = v0;
    v7[1] = sub_221EFF4D8;
    v8 = v0[3];

    return sub_221EFFA68(v6);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();
    v12 = os_log_type_enabled(v10, v11);
    v14 = v0[5];
    v13 = v0[6];
    v15 = v0[4];
    if (v12)
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v25 = v17;
      *v16 = 136315138;
      sub_221EA8278();
      v18 = sub_221FB6B08();
      v20 = v19;
      (*(v14 + 8))(v13, v15);
      v21 = sub_221EF4114(v18, v20, &v25);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_221E93000, v10, v11, "Failed to find contact for friend identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v13, v15);
    }

    sub_221EA4994();
    swift_allocError();
    *v22 = 21;
    swift_willThrow();
    v23 = v0[6];

    v24 = v0[1];

    return v24();
  }
}

uint64_t sub_221EFF4D8(char a1)
{
  v2 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 96) = a1;

  return MEMORY[0x2822009F8](sub_221EFF5D8, 0, 0);
}

uint64_t sub_221EFF5D8()
{
  if (*(v0 + 96) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 80) = v1;
    *v1 = v0;
    v1[1] = sub_221EFF878;
    v2 = *(v0 + 64);
    v3 = *(v0 + 24);

    return sub_221F003C8(v2, 0);
  }

  else
  {
    v5 = *(v0 + 64);
    v6 = [v5 relationshipStorage];
    v7 = [v6 primaryRelationship];

    v8 = [v5 relationshipStorage];
    v9 = [v8 primaryRemoteRelationship];

    v10 = v7;
    v11 = v9;
    v12 = sub_221FB61B8();
    v13 = sub_221FB65A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412546;
      *(v14 + 4) = v10;
      *(v14 + 12) = 2112;
      *(v14 + 14) = v11;
      *v15 = v10;
      v15[1] = v11;
      v16 = v10;
      v17 = v11;
      _os_log_impl(&dword_221E93000, v12, v13, "Migration unavailable for (relationship: %@, remote relationship: %@)", v14, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    v18 = *(v0 + 64);

    sub_221EA4994();
    swift_allocError();
    *v19 = 35;
    swift_willThrow();

    v20 = *(v0 + 48);

    v21 = *(v0 + 8);

    return v21();
  }
}

uint64_t sub_221EFF878()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_221EFF9FC;
  }

  else
  {
    v3 = sub_221EFF98C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EFF98C()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EFF9FC()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EFFA68(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_221FB5BC8();
  v2[8] = v3;
  v4 = *(v3 - 8);
  v2[9] = v4;
  v5 = *(v4 + 64) + 15;
  v2[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EFFB28, 0, 0);
}

uint64_t sub_221EFFB28()
{
  v1 = *(v0 + 48);
  v2 = [v1 relationshipStorage];
  v3 = [v2 primaryRelationship];
  *(v0 + 88) = v3;

  v4 = [v1 relationshipStorage];
  v5 = [v4 secureCloudRelationship];
  *(v0 + 96) = v5;

  v6 = [v1 relationshipStorage];
  *(v0 + 104) = [v6 primaryRemoteRelationship];

  if (![v3 isFriendshipActive] || objc_msgSend(v3, sel_cloudType) || (objc_msgSend(v5, sel_secureCloudNeedsRepair) & 1) != 0)
  {
    v7 = *(v0 + 104);
    v8 = *(v0 + 88);

    v9 = *(v0 + 80);

    v10 = *(v0 + 8);

    return v10(0);
  }

  else
  {
    v12 = swift_task_alloc();
    *(v0 + 112) = v12;
    *v12 = v0;
    v12[1] = sub_221EFFD0C;
    v13 = *(v0 + 56);

    return sub_221EFA948(v3);
  }
}

uint64_t sub_221EFFD0C(char a1)
{
  v2 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_221EFFE0C, 0, 0);
}

uint64_t sub_221EFFE0C()
{
  if (*(v0 + 128) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 120) = v1;
    *v1 = v0;
    v1[1] = sub_221EFFF1C;
    v2 = *(v0 + 104);
    v3 = *(v0 + 56);

    return (sub_221F04A70)(v2);
  }

  else
  {
    v5 = *(v0 + 104);
    v6 = *(v0 + 88);

    v7 = *(v0 + 80);

    v8 = *(v0 + 8);

    return v8(0);
  }
}

uint64_t sub_221EFFF1C(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 129) = a1;

  return MEMORY[0x2822009F8](sub_221F0001C, 0, 0);
}

uint64_t sub_221F0001C()
{
  v53 = v0;
  if (*(v0 + 129) == 1)
  {
    if ([*(v0 + 88) secureCloudMigrationStarted] && (v1 = objc_msgSend(*(v0 + 88), sel_dateForLatestMigrationStarted)) != 0)
    {
      v2 = *(v0 + 80);
      v3 = *(v0 + 56);
      v4 = v1;
      sub_221FB5B98();

      sub_221FB5B78();
      v6 = v5;
      v7 = *(v3 + 552);
      v8 = *(v3 + 560);
      v9 = *(v3 + 568);
      if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
      {
        v52 = v7;
        UserDefaultsKeys.rawValue.getter();
        v10 = COERCE_DOUBLE(sub_221EF8934(v9));
        v12 = v11;

        if ((v12 & 1) == 0)
        {
          v8 = v10;
        }
      }

      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v13 = fabs(v6);
      v14 = *(v0 + 88);
      v15 = sub_221FB61D8();
      __swift_project_value_buffer(v15, qword_281307DF0);
      v16 = v14;
      v17 = sub_221FB61B8();
      v18 = sub_221FB65C8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = *(v0 + 88);
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v51 = v21;
        *v20 = 136315394;
        v22 = [v19 cloudKitAddress];
        if (v22)
        {
          v23 = v22;
          v24 = sub_221FB6318();
          v26 = v25;

          *(v0 + 16) = 0;
          *(v0 + 24) = 0xE000000000000000;
          *(v0 + 32) = v24;
          *(v0 + 40) = v26;
          sub_221FB6A08();

          v27 = *(v0 + 16);
          v28 = *(v0 + 24);
        }

        else
        {
          v28 = 0xE300000000000000;
          v27 = 7104878;
        }

        v41 = *(v0 + 104);
        v47 = *(v0 + 96);
        v48 = *(v0 + 88);
        v42 = *(v0 + 72);
        v49 = *(v0 + 64);
        v50 = *(v0 + 80);
        v43 = sub_221EF4114(v27, v28, &v51);

        *(v20 + 4) = v43;
        *(v20 + 12) = 1024;
        *(v20 + 14) = v13 < v8;
        _os_log_impl(&dword_221E93000, v17, v18, "Relationship migration %s backing off started attempt: %{BOOL}d", v20, 0x12u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x223DADA80](v21, -1, -1);
        MEMORY[0x223DADA80](v20, -1, -1);

        (*(v42 + 8))(v50, v49);
      }

      else
      {
        v37 = *(v0 + 96);
        v36 = *(v0 + 104);
        v38 = *(v0 + 80);
        v39 = *(v0 + 64);
        v40 = *(v0 + 72);

        (*(v40 + 8))(v38, v39);
      }

      v31 = v13 >= v8;
    }

    else
    {
      v33 = *(v0 + 96);
      v32 = *(v0 + 104);
      v34 = *(v0 + 88);
      v35 = *(v0 + 56);
      LOBYTE(v35) = sub_221EFADA8(v34);

      v31 = v35 ^ 1;
    }
  }

  else
  {
    v29 = *(v0 + 104);
    v30 = *(v0 + 88);

    v31 = 0;
  }

  v44 = *(v0 + 80);

  v45 = *(v0 + 8);

  return v45(v31 & 1);
}

uint64_t sub_221F003C8(uint64_t a1, uint64_t a2)
{
  v3[104] = v2;
  v3[103] = a2;
  v3[102] = a1;
  v4 = sub_221FB5C38();
  v3[105] = v4;
  v5 = *(v4 - 8);
  v3[106] = v5;
  v6 = *(v5 + 64) + 15;
  v3[107] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F00490, 0, 0);
}

uint64_t sub_221F00490()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 816);
  v2 = sub_221FB61D8();
  *(v0 + 864) = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 816);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Migrating contact: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = *(v0 + 832);

  if ([*(*__swift_project_boxed_opaque_existential_0Tm((v10 + 296) *(v10 + 320)) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    v11 = *(v0 + 832);
    v12 = [*(v0 + 816) relationshipStorage];
    *(v0 + 872) = [v12 primaryRelationship];

    *(v0 + 880) = sub_221E9A100();
    v13 = sub_221E9A100();
    *(v0 + 888) = v13;
    __swift_project_boxed_opaque_existential_0Tm((v11 + 496), *(v11 + 520));
    v14 = v13;
    v15 = swift_task_alloc();
    *(v0 + 896) = v15;
    *v15 = v0;
    v15[1] = sub_221F007C8;
    v16 = *(v0 + 824);

    return sub_221E9B754(v14, v16);
  }

  else
  {
    v18 = sub_221FB61B8();
    v19 = sub_221FB65A8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_221E93000, v18, v19, "Protected data is unavailable, skipping migration", v20, 2u);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v21 = 36;
    swift_willThrow();
    v22 = *(v0 + 856);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_221F007C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 896);
  v6 = *v2;
  *(v4 + 904) = a1;
  *(v4 + 912) = v1;

  if (v1)
  {
    v7 = sub_221F017CC;
  }

  else
  {
    v7 = sub_221F00908;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F00908()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 832);
  v3 = [*(v0 + 816) relationshipStorage];
  v4 = [v3 secureCloudRelationship];

  *(v0 + 920) = [v4 remoteRelationshipZoneShareID];
  [v1 insertEventWithType_];
  v5 = __swift_project_boxed_opaque_existential_0Tm(v2 + 57, v2[60]);
  v6 = v2[30];
  *(v0 + 928) = v6;
  if ([v1 cloudType])
  {
    v7 = *(v0 + 864);
    v8 = *(v0 + 880);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65A8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 880);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      *(v12 + 4) = v11;
      *v13 = v11;
      v14 = v11;
      _os_log_impl(&dword_221E93000, v9, v10, "Attempting to save secure cloud relationship to legacy container %@", v12, 0xCu);
      sub_221EA0558(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v15 = *(v0 + 880);

    sub_221EA4994();
    swift_allocError();
    *v16 = 11;
    swift_willThrow();

    v17 = *(v0 + 920);
    v18 = *(v0 + 888);
    v19 = *(v0 + 880);
    v20 = *(v0 + 872);

    v21 = *(v0 + 856);

    v22 = *(v0 + 8);

    return v22();
  }

  else
  {
    v24 = *(v0 + 880);
    v25 = *(v0 + 824);
    v26 = *(v0 + 816);
    v27 = *__swift_project_boxed_opaque_existential_0Tm(v5 + 6, v5[9]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 800;
    *(v0 + 24) = sub_221F00C68;
    v28 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 336) = MEMORY[0x277D85DD0];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_221EF4C50;
    *(v0 + 360) = &block_descriptor_16;
    *(v0 + 368) = v28;
    [v27 saveRelationship:v24 contact:v26 cloudKitGroup:v6 activity:v25 completion:v0 + 336];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221F00C68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 936) = v2;
  if (v2)
  {
    v3 = sub_221F01720;
  }

  else
  {
    v3 = sub_221F00D78;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F00D78()
{
  v1 = *(v0 + 880);
  v2 = *(v0 + 864);
  v3 = *(v0 + 800);
  *(v0 + 944) = v3;

  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v3;
    *v7 = v3;
    v8 = v3;
    _os_log_impl(&dword_221E93000, v4, v5, "Started migration on legacy relationship: %@", v6, 0xCu);
    sub_221EA0558(v7);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  v9 = *(v0 + 856);
  v10 = *(v0 + 848);
  v11 = *(v0 + 840);
  v12 = *(v0 + 832);
  v13 = *(v0 + 816);

  v14 = __swift_project_boxed_opaque_existential_0Tm((v12 + 248), *(v12 + 272));
  v15 = [v13 UUID];
  sub_221FB5C18();

  v16 = *v14;
  v17 = sub_221FB5BF8();
  v18 = [v16 currentCompetitionListForFriendWithUUID_];
  *(v0 + 952) = v18;

  v19 = *(v10 + 8);
  v19(v9, v11);
  v20 = __swift_project_boxed_opaque_existential_0Tm((v12 + 248), *(v12 + 272));
  v21 = [v13 UUID];
  sub_221FB5C18();

  v22 = *v20;
  v23 = sub_221FB5BF8();
  v24 = [v22 archivedCompetitionListForFriendWithUUID_];
  *(v0 + 960) = v24;

  v19(v9, v11);
  *(v0 + 688) = v18;
  *(v0 + 696) = v24;
  v25 = MEMORY[0x277D84F90];
  v91 = MEMORY[0x277D84F90];
  v26 = v18;
  v27 = v24;
  for (i = 0; i != 2; ++i)
  {
    v29 = *(v0 + 688 + 8 * i);
    if (v29)
    {
      v30 = v29;
      MEMORY[0x223DAC7E0]();
      if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      v25 = v91;
    }
  }

  v32 = *(v0 + 920);
  v33 = *(v0 + 904);
  v34 = *(v0 + 888);
  v35 = *(v0 + 832);
  v36 = *(v0 + 816);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD20, &qword_221FBB2A0);
  swift_arrayDestroy();
  v37 = sub_221EF9520(v36, v25);
  *(v0 + 968) = v37;

  [v34 setCloudType_];
  [v34 insertEventWithType_];
  v38 = [v33 recordID];
  [v34 setRelationshipZoneShareID_];

  [v34 setRemoteRelationshipZoneShareID_];
  [v34 setRelationshipShareID_];
  [v34 setRemoteActivityDataShareID_];
  v39 = __swift_project_boxed_opaque_existential_0Tm((v35 + 456), *(v35 + 480));
  v40 = [v34 cloudType];
  v41 = *(v0 + 888);
  if (v40 == 1)
  {
    v42 = [*(v0 + 888) secureCloudZoneName];
    if (v42)
    {
      v43 = v42;
      v44 = *(v0 + 888);
      v45 = *(v0 + 864);
      sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
      sub_221FB6318();

      v46 = *MEMORY[0x277CBBF28];
      sub_221FB6318();
      v47 = sub_221FB65D8();
      v48 = [v44 recordWithZoneID:v47 recordEncryptionType:1];
      *(v0 + 976) = v48;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_221FB81B0;
      *(v49 + 32) = v48;
      v92 = v49;
      v50 = v48;

      sub_221ED4350(v51);

      v52 = sub_221FB61B8();
      v53 = sub_221FB65C8();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 134217984;
        if (v37 >> 62)
        {
          v55 = sub_221FB6868();
        }

        else
        {
          v55 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v54 + 4) = v55;

        _os_log_impl(&dword_221E93000, v52, v53, "Pushing relationship to iCloud with %ld extra records", v54, 0xCu);
        MEMORY[0x223DADA80](v54, -1, -1);
      }

      else
      {
      }

      v85 = *(v0 + 928);
      v86 = *(v0 + 824);
      v87 = *__swift_project_boxed_opaque_existential_0Tm(v39 + 11, v39[14]);
      *(v0 + 984) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v88 = sub_221FB6428();
      *(v0 + 992) = v88;

      *(v0 + 1000) = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v89 = sub_221FB6428();
      *(v0 + 1008) = v89;
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 752;
      *(v0 + 88) = sub_221F01848;
      v90 = swift_continuation_init();
      *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_221EBA78C;
      *(v0 + 424) = &block_descriptor_23_2;
      *(v0 + 432) = v90;
      [v87 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v88 recordIDsToDelete:v89 priority:2 activity:v86 useZoneWideSharing:1 group:v85 completion:{v0 + 400, v92}];
      v42 = (v0 + 80);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v42);
  }

  else
  {
    v56 = *(v0 + 864);

    v57 = v41;
    v58 = sub_221FB61B8();
    v59 = sub_221FB65A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 888);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v60;
      *v62 = v60;
      v63 = v60;
      _os_log_impl(&dword_221E93000, v58, v59, "Attempting to save legacy relationship to secure cloud container %@", v61, 0xCu);
      sub_221EA0558(v62);
      MEMORY[0x223DADA80](v62, -1, -1);
      MEMORY[0x223DADA80](v61, -1, -1);
    }

    sub_221EA4994();
    v64 = swift_allocError();
    *v65 = 11;
    swift_willThrow();
    *(v0 + 1120) = v64;
    v66 = *(v0 + 864);
    v67 = *(v0 + 944);
    v68 = v64;
    v69 = sub_221FB61B8();
    v70 = sub_221FB65A8();

    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 944);
    if (v71)
    {
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *v73 = 138412546;
      v75 = v64;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v73 + 4) = v76;
      *(v73 + 12) = 2112;
      *(v73 + 14) = v72;
      *v74 = v76;
      v74[1] = v72;
      _os_log_impl(&dword_221E93000, v69, v70, "Failed to migrate relationship to secure cloud with error: %@, relationship: %@", v73, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v74, -1, -1);
      MEMORY[0x223DADA80](v73, -1, -1);
    }

    else
    {
    }

    v77 = *(v0 + 944);

    v78 = v77;
    v79 = swift_task_alloc();
    *(v0 + 1128) = v79;
    *v79 = v0;
    v79[1] = sub_221F031F0;
    v80 = *(v0 + 944);
    v81 = *(v0 + 832);
    v82 = *(v0 + 824);
    v83 = *(v0 + 816);

    return sub_221F03B6C(v80, v83, v82);
  }
}

uint64_t sub_221F01720()
{
  v1 = *(v0 + 936);
  v2 = *(v0 + 880);
  swift_willThrow();

  v3 = *(v0 + 936);
  v4 = *(v0 + 920);
  v5 = *(v0 + 888);
  v6 = *(v0 + 880);
  v7 = *(v0 + 872);

  v8 = *(v0 + 856);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F017CC()
{
  v1 = *(v0 + 888);
  v2 = *(v0 + 880);

  v3 = *(v0 + 912);
  v4 = *(v0 + 856);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F01848()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 1016) = v3;
  if (v3)
  {
    v4 = *(v1 + 968);

    v5 = sub_221F01960;
  }

  else
  {
    v5 = sub_221F01B5C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F01960()
{
  v1 = *(v0 + 1016);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 992);
  v4 = *(v0 + 976);
  swift_willThrow();

  v5 = *(v0 + 1016);
  *(v0 + 1120) = v5;
  v6 = *(v0 + 864);
  v7 = *(v0 + 944);
  v8 = v5;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v16;
    v14[1] = v12;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to migrate relationship to secure cloud with error: %@, relationship: %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 944);

  v18 = v17;
  v19 = swift_task_alloc();
  *(v0 + 1128) = v19;
  *v19 = v0;
  v19[1] = sub_221F031F0;
  v20 = *(v0 + 944);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);
  v23 = *(v0 + 816);

  return sub_221F03B6C(v20, v23, v22);
}

uint64_t sub_221F01B5C()
{
  v1 = v0[126];
  v2 = v0[124];
  v3 = v0[123];
  v4 = v0[122];
  v5 = v0[104];
  v6 = v0[102];
  v0[128] = v0[95];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v5 + 456), *(v5 + 480));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  v0[129] = sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v10 = sub_221FB64E8();
  v0[130] = v10;

  v0[18] = v0;
  v0[23] = v0 + 96;
  v0[19] = sub_221F01D38;
  v11 = swift_continuation_init();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[131] = v12;
  v0[65] = v12;
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_221EBCB58;
  v0[61] = &block_descriptor_26_0;
  v0[62] = v11;
  [v8 handleSavedRecords:v10 forContact:v6 completion:v0 + 58];

  return MEMORY[0x282200938](v0 + 18);
}

uint64_t sub_221F01D38()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 1056) = v2;
  if (v2)
  {
    v3 = sub_221F025FC;
  }

  else
  {
    v3 = sub_221F01E48;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F01E48()
{
  v1 = *(v0 + 1040);
  v2 = *(v0 + 1024);
  v3 = *(v0 + 968);
  v4 = *(v0 + 888);
  v5 = *(v0 + 864);
  v6 = *(v0 + 832);
  v7 = *(v0 + 776);
  *(v0 + 1064) = v7;

  __swift_project_boxed_opaque_existential_0Tm((v6 + 248), *(v6 + 272));
  v8 = off_28355EF40;
  v9 = v7;
  v8(v2, &type metadata for CompetitionCoordinator, &off_28355EF08);

  v10 = v9;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65C8();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 968);
  if (v13)
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v10;
    *v16 = v10;
    *(v15 + 12) = 2048;
    if (v14 >> 62)
    {
      if (*(v0 + 968) < 0)
      {
        v77 = *(v0 + 968);
      }

      v17 = sub_221FB6868();
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v18 = *(v0 + 968);

    *(v15 + 14) = v17;

    _os_log_impl(&dword_221E93000, v11, v12, "Saved secure cloud relationship for migration: %@, with competition %ld lists", v15, 0x16u);
    sub_221EA0558(v16);
    MEMORY[0x223DADA80](v16, -1, -1);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

  else
  {
    v19 = *(v0 + 968);
    swift_bridgeObjectRelease_n();
  }

  v20 = *(v0 + 952);
  if (v20)
  {
    v21 = [v20 systemFieldsOnlyRecord];
    v22 = *(v0 + 952);
    if (v21)
    {
      v23 = v21;
      v24 = [v21 recordID];

      goto LABEL_11;
    }
  }

  v24 = 0;
LABEL_11:
  v25 = *(v0 + 960);
  *(v0 + 736) = v24;
  if (!v25)
  {
LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v26 = [v25 systemFieldsOnlyRecord];
  v27 = *(v0 + 960);
  if (!v26)
  {

    goto LABEL_15;
  }

  v28 = v26;
  v29 = [v26 recordID];

LABEL_16:
  v30 = 0;
  *(v0 + 744) = v29;
  v84 = MEMORY[0x277D84F90];
  while (v30 != 2)
  {
    v31 = *(v0 + 8 * v30++ + 736);
    if (v31)
    {
      v32 = v31;
      MEMORY[0x223DAC7E0]();
      if (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v33 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
    }
  }

  v34 = *(v0 + 944);
  v35 = *(v0 + 832);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD40, &qword_221FB9250);
  swift_arrayDestroy();
  [v34 insertEventWithType_];
  v36 = __swift_project_boxed_opaque_existential_0Tm((v35 + 456), *(v35 + 480));
  if ([v34 cloudType])
  {
    v37 = *(v0 + 944);
    v38 = *(v0 + 864);

    v39 = v37;
    v40 = sub_221FB61B8();
    v41 = sub_221FB65A8();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 944);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138412290;
      *(v43 + 4) = v42;
      *v44 = v42;
      v45 = v42;
      _os_log_impl(&dword_221E93000, v40, v41, "Attempting to save secure cloud relationship to legacy container %@", v43, 0xCu);
      sub_221EA0558(v44);
      MEMORY[0x223DADA80](v44, -1, -1);
      MEMORY[0x223DADA80](v43, -1, -1);
    }

    v46 = *(v0 + 944);

    sub_221EA4994();
    v47 = swift_allocError();
    *v48 = 11;
    swift_willThrow();

    v49 = *(v0 + 864);
    v50 = *(v0 + 944);
    v51 = v47;
    v52 = sub_221FB61B8();
    v53 = sub_221FB65C8();

    v54 = os_log_type_enabled(v52, v53);
    v55 = *(v0 + 1064);
    v56 = *(v0 + 960);
    v57 = *(v0 + 952);
    if (v54)
    {
      v58 = *(v0 + 944);
      v79 = *(v0 + 904);
      v80 = *(v0 + 920);
      v82 = *(v0 + 872);
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *v59 = 138412546;
      v61 = v47;
      v62 = _swift_stdlib_bridgeErrorToNSError();
      *(v59 + 4) = v62;
      *(v59 + 12) = 2112;
      *(v59 + 14) = v58;
      *v60 = v62;
      v60[1] = v58;
      _os_log_impl(&dword_221E93000, v52, v53, "Failed to save migration completed event on legacy with error: %@ relationship: %@", v59, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v60, -1, -1);
      MEMORY[0x223DADA80](v59, -1, -1);

      v63 = *(v0 + 944);
    }

    else
    {
      v72 = *(v0 + 920);
      v73 = *(v0 + 904);
      v74 = *(v0 + 872);

      v63 = *(v0 + 944);
      v52 = v63;
    }

    v75 = *(v0 + 856);

    v76 = *(v0 + 8);

    return v76();
  }

  else
  {
    v64 = *(v0 + 1000);
    v65 = *(v0 + 984);
    v66 = *(v0 + 944);
    v81 = *(v0 + 824);
    v83 = *(v0 + 928);
    v67 = *(v0 + 816);
    v68 = *__swift_project_boxed_opaque_existential_0Tm(v36 + 6, v36[9]);
    v69 = sub_221FB6428();
    *(v0 + 1072) = v69;
    v70 = sub_221FB6428();
    *(v0 + 1080) = v70;

    *(v0 + 208) = v0;
    *(v0 + 248) = v0 + 808;
    *(v0 + 216) = sub_221F02800;
    v71 = swift_continuation_init();
    *(v0 + 584) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 560) = v71;
    *(v0 + 528) = MEMORY[0x277D85DD0];
    *(v0 + 536) = 1107296256;
    *(v0 + 544) = sub_221F68D78;
    *(v0 + 552) = &block_descriptor_30;
    [v68 saveRelationship:v66 contact:v67 extraRecordsToSave:v69 extraRecordIDsToDelete:v70 cloudKitGroup:v83 activity:v81 completion:v0 + 528];

    return MEMORY[0x282200938](v0 + 208);
  }
}

uint64_t sub_221F025FC()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1040);
  v3 = *(v0 + 1024);
  v4 = *(v0 + 968);
  swift_willThrow();

  v5 = *(v0 + 1056);
  *(v0 + 1120) = v5;
  v6 = *(v0 + 864);
  v7 = *(v0 + 944);
  v8 = v5;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65A8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 944);
  if (v11)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    v15 = v5;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v16;
    *(v13 + 12) = 2112;
    *(v13 + 14) = v12;
    *v14 = v16;
    v14[1] = v12;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to migrate relationship to secure cloud with error: %@, relationship: %@", v13, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v14, -1, -1);
    MEMORY[0x223DADA80](v13, -1, -1);
  }

  else
  {
  }

  v17 = *(v0 + 944);

  v18 = v17;
  v19 = swift_task_alloc();
  *(v0 + 1128) = v19;
  *v19 = v0;
  v19[1] = sub_221F031F0;
  v20 = *(v0 + 944);
  v21 = *(v0 + 832);
  v22 = *(v0 + 824);
  v23 = *(v0 + 816);

  return sub_221F03B6C(v20, v23, v22);
}

uint64_t sub_221F02800()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1088) = v2;
  if (v2)
  {
    v3 = sub_221F02FB8;
  }

  else
  {
    v3 = sub_221F02910;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F02910()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[129];
  v4 = v0[123];
  v5 = v0[118];
  v6 = v0[104];
  v13 = v0[131];
  v14 = v0[102];
  v0[137] = v0[101];

  v7 = __swift_project_boxed_opaque_existential_0Tm((v6 + 456), *(v6 + 480));
  v8 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 6, v7[9]);

  sub_221F17A54(v9);

  v10 = sub_221FB64E8();
  v0[138] = v10;

  v0[34] = v0;
  v0[39] = v0 + 98;
  v0[35] = sub_221F02AC0;
  v11 = swift_continuation_init();
  v0[81] = v13;
  v0[78] = v11;
  v0[74] = MEMORY[0x277D85DD0];
  v0[75] = 1107296256;
  v0[76] = sub_221EBCB58;
  v0[77] = &block_descriptor_33;
  [v8 handleSavedRecords:v10 forContact:v14 completion:v0 + 74];

  return MEMORY[0x282200938](v0 + 34);
}

uint64_t sub_221F02AC0()
{
  v1 = *v0;
  v2 = *(*v0 + 304);
  *(*v0 + 1112) = v2;
  if (v2)
  {
    v3 = sub_221F02D84;
  }

  else
  {
    v3 = sub_221F02BD0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F02BD0()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 944);
  v3 = *(v0 + 864);
  v4 = *(v0 + 792);

  v5 = v4;

  v6 = v5;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 960);
  v11 = *(v0 + 920);
  v12 = *(v0 + 904);
  v13 = *(v0 + 872);
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v6;
    *v15 = v6;
    _os_log_impl(&dword_221E93000, v7, v8, "Completed migration on legacy relationship: %@", v14, 0xCu);
    sub_221EA0558(v15);
    MEMORY[0x223DADA80](v15, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {

    v10 = v12;
    v12 = v11;
    v11 = v13;
    v13 = v7;
    v7 = v6;
  }

  v16 = *(v0 + 952);
  v17 = *(v0 + 856);

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_221F02D84()
{
  v1 = *(v0 + 1112);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1096);
  swift_willThrow();

  v4 = *(v0 + 1112);
  v5 = *(v0 + 864);
  v6 = *(v0 + 944);
  v7 = v4;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = *(v0 + 1064);
  v12 = *(v0 + 960);
  v13 = *(v0 + 952);
  if (v10)
  {
    v14 = *(v0 + 944);
    v26 = *(v0 + 904);
    v27 = *(v0 + 920);
    v28 = *(v0 + 872);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = v4;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *(v15 + 12) = 2112;
    *(v15 + 14) = v14;
    *v16 = v18;
    v16[1] = v14;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to save migration completed event on legacy with error: %@ relationship: %@", v15, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v16, -1, -1);
    MEMORY[0x223DADA80](v15, -1, -1);

    v19 = *(v0 + 944);
  }

  else
  {
    v20 = *(v0 + 920);
    v21 = *(v0 + 904);
    v22 = *(v0 + 872);

    v19 = *(v0 + 944);
    v8 = v19;
  }

  v23 = *(v0 + 856);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_221F02FB8()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  v4 = *(v0 + 944);
  swift_willThrow();

  v5 = *(v0 + 1088);
  v6 = *(v0 + 864);
  v7 = *(v0 + 944);
  v8 = v5;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1064);
  v13 = *(v0 + 960);
  v14 = *(v0 + 952);
  if (v11)
  {
    v15 = *(v0 + 944);
    v27 = *(v0 + 904);
    v28 = *(v0 + 920);
    v29 = *(v0 + 872);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412546;
    v18 = v5;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v15;
    *v17 = v19;
    v17[1] = v15;
    _os_log_impl(&dword_221E93000, v9, v10, "Failed to save migration completed event on legacy with error: %@ relationship: %@", v16, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v17, -1, -1);
    MEMORY[0x223DADA80](v16, -1, -1);

    v20 = *(v0 + 944);
  }

  else
  {
    v21 = *(v0 + 920);
    v22 = *(v0 + 904);
    v23 = *(v0 + 872);

    v20 = *(v0 + 944);
    v9 = v20;
  }

  v24 = *(v0 + 856);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221F031F0()
{
  v2 = *v1;
  v3 = *(*v1 + 1128);
  v4 = *v1;
  *(*v1 + 1136) = v0;

  if (v0)
  {
    v5 = sub_221F033E8;
  }

  else
  {
    v5 = sub_221F03324;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F03324()
{
  v1 = v0[140];
  v2 = v0[120];
  v3 = v0[119];
  v4 = v0[118];
  v5 = v0[115];
  v6 = v0[113];
  v7 = v0[111];
  v8 = v0[109];
  swift_willThrow();

  v9 = v0[140];
  v10 = v0[107];

  v11 = v0[1];

  return v11();
}

uint64_t sub_221F033E8()
{
  v1 = *(v0 + 1120);
  v2 = *(v0 + 960);
  v3 = *(v0 + 944);
  v4 = *(v0 + 920);
  v5 = *(v0 + 904);
  v6 = *(v0 + 888);
  v7 = *(v0 + 872);

  v8 = *(v0 + 1136);
  v9 = *(v0 + 856);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F034A8(uint64_t *a1)
{
  v2 = *a1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221F03540;

  return sub_221EFFA68(v2);
}

uint64_t sub_221F03540(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_221F03640(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221F036F0;

  return sub_221F003C8(v5, a3);
}

uint64_t sub_221F036F0()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_221F038D8;
  }

  else
  {
    v3 = sub_221F03804;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F03804()
{
  v1 = [*(v0 + 16) relationshipStorage];
  v2 = [v1 secureCloudRemoteRelationship];

  [v2 secureCloudMigrationCompleted];
  v3 = sub_221FB62E8();
  ASAnalyticsReportManateeMigration();

  v4 = *(v0 + 8);

  return v4();
}

void sub_221F038D8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[2];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to migrate contact %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[4];
  v11 = v0[2];

  v12 = v10;
  v13 = [v11 relationshipStorage];
  v14 = [v13 secureCloudRemoteRelationship];

  [v14 secureCloudMigrationCompleted];
  v15 = v10;
  v16 = sub_221FB5A98();
  v17 = [v16 domain];

  if (!v17)
  {
    sub_221FB6318();
    v17 = sub_221FB62E8();
  }

  v18 = v0[4];
  v19 = sub_221FB5A98();
  v20 = [v19 code];

  if (v20 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v20 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v21 = v0[4];
  ASAnalyticsReportManateeMigration();

  v22 = v0[1];

  v22();
}

uint64_t sub_221F03B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x2822009F8](sub_221F03B90, 0, 0);
}

uint64_t sub_221F03B90()
{
  v1 = v0[22];
  v2 = v0[19];
  [v2 insertEventWithType_];
  v3 = __swift_project_boxed_opaque_existential_0Tm(v1 + 57, v1[60]);
  v4 = v1[30];
  if ([v2 cloudType])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v5 = v0[19];
    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = v5;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[19];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&dword_221E93000, v8, v9, "Attempting to save secure cloud relationship to legacy container %@", v11, 0xCu);
      sub_221EA0558(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v14 = 11;
    swift_willThrow();
    v15 = v0[1];

    return v15();
  }

  else
  {
    v18 = v0[20];
    v17 = v0[21];
    v19 = v0[19];
    v20 = *__swift_project_boxed_opaque_existential_0Tm(v3 + 6, v3[9]);
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_221F03E9C;
    v21 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_221EF4C50;
    v0[13] = &block_descriptor_36;
    v0[14] = v21;
    [v20 saveRelationship:v19 contact:v18 cloudKitGroup:v4 activity:v17 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }
}

uint64_t sub_221F03E9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_221F04130;
  }

  else
  {
    v3 = sub_221F03FAC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F03FAC()
{
  v1 = qword_281307080;
  v2 = *(v0 + 144);
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    _os_log_impl(&dword_221E93000, v5, v6, "Saved legacy relationship with failed migration event: %@", v7, 0xCu);
    sub_221EA0558(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {

    v5 = v4;
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F04130()
{
  v1 = *(v0 + 184);
  swift_willThrow();
  v2 = *(v0 + 184);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F04204(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v55[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v55[0] = a1;
    v46 = a1 >> 62;
    if (a1 >> 62)
    {
LABEL_47:
      v37 = a1;
      v3 = sub_221FB6868();
      a1 = v37;
    }

    else
    {
      v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v51 = a1;

    if (v3)
    {
      v4 = 0;
      v52 = v51 & 0xC000000000000001;
      v50 = v51 & 0xFFFFFFFFFFFFFF8;
      v48 = v51 + 32;
      v54 = (v2 + 56);
      while (1)
      {
        if (v52)
        {
          a1 = MEMORY[0x223DACD50](v4, v51);
        }

        else
        {
          if (v4 >= *(v50 + 16))
          {
            goto LABEL_46;
          }

          a1 = *(v48 + 8 * v4);
        }

        v53 = a1;
        v5 = __OFADD__(v4++, 1);
        if (v5)
        {
          goto LABEL_45;
        }

        v6 = *(v2 + 40);
        v7 = sub_221FB6748();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v54[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v3)
        {
          goto LABEL_40;
        }
      }

      v12 = ~v8;
      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      while (1)
      {
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_221FB6758();

        if (v14)
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v54[v9 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v55[1] = v4;

      v16 = *(v2 + 32);
      v17 = v16 & 0x3F;
      v18 = ((1 << v16) + 63) >> 6;
      v44 = v18;
      if (v17 <= 0xD)
      {
LABEL_19:
        v45 = &v43;
        MEMORY[0x28223BE20](v15);
        v20 = &v43 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
        a1 = memcpy(v20, v54, v19);
        v21 = *(v2 + 16);
        v22 = *&v20[8 * v10] & ~v11;
        v49 = v20;
        *&v20[8 * v10] = v22;
        v47 = v21 - 1;
        if (v46)
        {
          a1 = sub_221FB6868();
          v53 = a1;
        }

        else
        {
          v53 = *(v50 + 16);
        }

        while (1)
        {
          if (v4 == v53)
          {
            v2 = sub_221F77424(v49, v44, v47, v2);
            goto LABEL_40;
          }

          if (v52)
          {
            a1 = MEMORY[0x223DACD50](v4, v51);
          }

          else
          {
            if ((v4 & 0x8000000000000000) != 0)
            {
              goto LABEL_43;
            }

            if (v4 >= *(v50 + 16))
            {
              goto LABEL_44;
            }

            a1 = *(v48 + 8 * v4);
          }

          v23 = a1;
          v5 = __OFADD__(v4++, 1);
          if (v5)
          {
            break;
          }

          v24 = *(v2 + 40);
          v25 = sub_221FB6748();
          v26 = -1 << *(v2 + 32);
          v27 = v25 & ~v26;
          v28 = v27 >> 6;
          v29 = 1 << v27;
          if (((1 << v27) & v54[v27 >> 6]) != 0)
          {
            v30 = ~v26;
            while (1)
            {
              v31 = *(*(v2 + 48) + 8 * v27);
              v32 = sub_221FB6758();

              if (v32)
              {
                break;
              }

              v27 = (v27 + 1) & v30;
              v28 = v27 >> 6;
              v29 = 1 << v27;
              if (((1 << v27) & v54[v27 >> 6]) == 0)
              {
                goto LABEL_22;
              }
            }

            v33 = v49[v28];
            v49[v28] = v33 & ~v29;
            if ((v33 & v29) != 0)
            {
              v34 = v47 - 1;
              if (__OFSUB__(v47, 1))
              {
                __break(1u);
              }

              --v47;
              if (!v34)
              {

                v2 = MEMORY[0x277D84FA0];
                goto LABEL_40;
              }
            }
          }

          else
          {
LABEL_22:
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v38 = 8 * v18;

      v39 = v38;
      if (swift_stdlib_isStackAllocationSafe())
      {

        goto LABEL_19;
      }

      v40 = swift_slowAlloc();
      memcpy(v40, v54, v39);
      sub_221F046DC(v40, v44, v2, v9, v55);
      v42 = v41;

      MEMORY[0x223DADA80](v40, -1, -1);

      v2 = v42;
    }

    else
    {
LABEL_40:
    }
  }

  else
  {

    v2 = MEMORY[0x277D84FA0];
  }

  v35 = *MEMORY[0x277D85DE8];
  return v2;
}

void sub_221F046DC(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v32 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v9 = *v5;
        if (*v5 >> 62)
        {
          if (v9 < 0)
          {
            v27 = *v5;
          }

          v10 = sub_221FB6868();
        }

        else
        {
          v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v11 = v5[1];
        if (v11 == v10)
        {

          sub_221F77424(a1, a2, v29, a3);
          return;
        }

        v12 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x223DACD50](v5[1]);
        }

        else
        {
          if ((v11 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_28:
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
            return;
          }

          if (v11 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v13 = *(v12 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_28;
        }

        v5[1] = v11 + 1;
        v15 = *(a3 + 40);
        v16 = sub_221FB6748();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_221FB6758();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_221FB6758();
        }

        while ((v25 & 1) == 0);
      }

      v5 = a5;

      v26 = a1[v19];
      a1[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
      goto LABEL_30;
    }

    if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_221F0491C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E96070;

  return sub_221F034A8(a1);
}

uint64_t sub_221F049B8(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221F03640(a1, v5, v4);
}

uint64_t sub_221F04A70(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_221FB5C38();
  v2[9] = v3;
  v4 = *(v3 - 8);
  v2[10] = v4;
  v5 = *(v4 + 64) + 15;
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F04B30, 0, 0);
}

id sub_221F04B30()
{
  v1 = *(v0 + 64);
  v2 = *(v1 + 600);
  v3 = *(v1 + 601);
  v4 = *(v1 + 608);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v5 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v4);

    if (v5 == 2)
    {
      v6 = v3;
    }

    else
    {
      v6 = v5;
    }

    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else if (!v3)
  {
LABEL_6:
    if ([*(v0 + 56) secureCloudMigrationAvailable])
    {
      v7 = 1;
    }

    else
    {
      v7 = [*(v0 + 56) secureCloudMigrationCompleted];
    }

    v20 = *(v0 + 88);

    v21 = *(v0 + 8);

    return v21(v7);
  }

  v8 = *(v0 + 56);
  sub_221EA4AB4(*(v0 + 64) + 336, v0 + 16);
  v9 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  result = [v8 UUID];
  if (result)
  {
    v11 = result;
    v13 = *(v0 + 80);
    v12 = *(v0 + 88);
    v14 = *(v0 + 72);
    sub_221FB5C18();

    v15 = sub_221FB5BE8();
    v17 = v16;
    *(v0 + 96) = v16;
    (*(v13 + 8))(v12, v14);
    v18 = *v9;
    v19 = swift_task_alloc();
    *(v0 + 104) = v19;
    *v19 = v0;
    v19[1] = sub_221F04D38;

    return sub_221F2898C(v15, v17);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F04D38(char a1)
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 112) = a1;

  return MEMORY[0x2822009F8](sub_221F04E58, 0, 0);
}

uint64_t sub_221F04E58()
{
  v1 = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1 == 1)
  {
    if ([*(v0 + 56) secureCloudMigrationAvailable])
    {
      v2 = 1;
    }

    else
    {
      v2 = [*(v0 + 56) secureCloudMigrationCompleted];
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 88);

  v4 = *(v0 + 8);

  return v4(v2);
}

uint64_t sub_221F04F08(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E9544C;

  return sub_221EFEBA0(a1, a2, v7, v6);
}

uint64_t sub_221F04FBC(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221EFA6DC(a1, v4);
}

uint64_t sub_221F05060(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
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

uint64_t sub_221F050A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F051C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F052F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221F05418(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221F05530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F05660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 40);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9544C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F05790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F058C0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_221FB67E8();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v5 = sub_221F78D98(v3, *(a1 + 36), 0, a1);

  return v5;
}

void sub_221F0593C(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v38 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - v7;
  v40 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = sub_221FB6A18() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(a1 + 32);
    v10 = ~v13;
    v9 = a1 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(a1 + 64);
    v12 = a1;
  }

  v16 = 0;
  v39 = v10;
  v41 = MEMORY[0x277D84F90];
  v17 = &off_278497000;
  while ((v12 & 0x8000000000000000) != 0)
  {
    if (!sub_221FB6A48() || (v22 = v21, swift_unknownObjectRelease(), v42 = v22, sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118), swift_dynamicCast(), v20 = v43, v17 = &off_278497000, !v43))
    {
LABEL_24:
      sub_221E96470();
      return;
    }

LABEL_17:
    v23 = v20;
    v24 = [v23 v17[311]];
    if (v24)
    {
      v26 = v24;
      sub_221FB5C18();

      v35 = sub_221FB5C38();
      v27 = *(v35 - 8);
      (*(v27 + 56))(v8, 0, 1, v35);
      v28 = v38;
      sub_221EB99BC(v8, v38);
      v36 = sub_221FB5BE8();
      v37 = v29;
      (*(v27 + 8))(v28, v35);
      sub_221E9CFE8(v8, &qword_27CFEBD50, &unk_221FB9FB0);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_221EF3C20(0, *(v41 + 2) + 1, 1, v41);
      }

      v31 = *(v41 + 2);
      v30 = *(v41 + 3);
      v17 = &off_278497000;
      if (v31 >= v30 >> 1)
      {
        v41 = sub_221EF3C20((v30 > 1), v31 + 1, 1, v41);
      }

      v32 = v41;
      *(v41 + 2) = v31 + 1;
      v33 = &v32[16 * v31];
      v34 = v37;
      *(v33 + 4) = v36;
      *(v33 + 5) = v34;
    }

    else
    {
      v25 = sub_221FB5C38();
      (*(*(v25 - 8) + 56))(v8, 1, 1, v25);
      sub_221E9CFE8(v8, &qword_27CFEBD50, &unk_221FB9FB0);
    }
  }

  v18 = v16;
  v19 = v11;
  if (v11)
  {
LABEL_13:
    v11 = (v19 - 1) & v19;
    v20 = *(*(v12 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v20)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v16 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v16 >= ((v10 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v19 = *(v9 + 8 * v16);
    ++v18;
    if (v19)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

BOOL sub_221F05D20(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a2 + 16);
  do
  {
    v5 = v3;
    if (v4 == v3)
    {
      break;
    }

    v6 = *(sub_221FB5C38() - 8);
    ++v3;
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5;
    sub_221F10D24(&qword_27CFEC260, MEMORY[0x277CC95F0]);
  }

  while ((sub_221FB62D8() & 1) == 0);
  return v4 != v5;
}

uint64_t sub_221F05E2C(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v3 = sub_221FB5C38();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC258, &unk_221FBB4A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = *(a2 + 16);
  if (!v16)
  {
    return 0;
  }

  v17 = (v4 + 48);
  v26 = v12;
  v27 = (v4 + 32);
  v30 = (v4 + 8);
  v18 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v19 = *(v8 + 72);
  while (1)
  {
    v20 = *(v12 + 48);
    sub_221EB99BC(v18, v15);
    sub_221EB99BC(v31, &v15[v20]);
    v21 = *v17;
    if ((*v17)(v15, 1, v3) == 1)
    {
      break;
    }

    sub_221EB99BC(v15, v11);
    if (v21(&v15[v20], 1, v3) == 1)
    {
      (*v30)(v11, v3);
      goto LABEL_4;
    }

    v22 = v28;
    (*v27)(v28, &v15[v20], v3);
    sub_221F10D24(&qword_27CFEC260, MEMORY[0x277CC95F0]);
    v29 = sub_221FB62D8();
    v23 = *v30;
    v24 = v22;
    v12 = v26;
    (*v30)(v24, v3);
    v23(v11, v3);
    sub_221E9CFE8(v15, &qword_27CFEBD50, &unk_221FB9FB0);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v18 += v19;
    if (!--v16)
    {
      return 0;
    }
  }

  if (v21(&v15[v20], 1, v3) != 1)
  {
LABEL_4:
    sub_221E9CFE8(v15, &qword_27CFEC258, &unk_221FBB4A0);
    goto LABEL_5;
  }

  sub_221E9CFE8(v15, &qword_27CFEBD50, &unk_221FB9FB0);
  return 1;
}

uint64_t sub_221F061B4(uint64_t a1)
{
  v27 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v32 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v29 = result;
    v30 = v4;
    v31 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v32 = MEMORY[0x277D84F90];
  sub_221FB69D8();
  v5 = -1 << *(a1 + 32);
  result = sub_221FB67E8();
  v6 = *(a1 + 36);
  v29 = result;
  v30 = v6;
  v31 = 0;
LABEL_7:
  v7 = 0;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_31;
    }

    v11 = v29;
    v10 = v30;
    v12 = v31;
    sub_221F78B6C(v29, v30, v31, a1);
    v14 = v13;
    v15 = [v13 relationshipStorage];
    v16 = [v15 secureCloudRelationship];

    sub_221FB69B8();
    v17 = *(v32 + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v27)
    {
      if (!v12)
      {
        goto LABEL_35;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD48, &unk_221FB9270);
      v8 = sub_221FB6528();
      sub_221FB68B8();
      result = v8(v28, 0);
      if (v7 == v2)
      {
LABEL_28:
        sub_221EB9940(v29, v30, v31);
        return v32;
      }
    }

    else
    {
      if (v12)
      {
        goto LABEL_36;
      }

      if ((v11 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v18 = 1 << *(a1 + 32);
      if (v11 >= v18)
      {
        goto LABEL_32;
      }

      v19 = v11 >> 6;
      v20 = *(a1 + 56 + 8 * (v11 >> 6));
      if (((v20 >> v11) & 1) == 0)
      {
        goto LABEL_33;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_34;
      }

      v21 = v20 & (-2 << (v11 & 0x3F));
      if (v21)
      {
        v18 = __clz(__rbit64(v21)) | v11 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v22 = v19 << 6;
        v23 = v19 + 1;
        v24 = (a1 + 64 + 8 * v19);
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_221EB9940(v11, v10, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_27;
          }
        }

        result = sub_221EB9940(v11, v10, 0);
      }

LABEL_27:
      v29 = v18;
      v30 = v10;
      v31 = 0;
      if (v7 == v2)
      {
        goto LABEL_28;
      }
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_221F064E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221F0650C, 0, 0);
}

uint64_t sub_221F0650C()
{
  v1 = v0[5];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 22, v1[25]);
  v3 = v1[15];
  v0[6] = v3;
  v4 = *v2;
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_221F065C4;
  v7 = v0[2];
  v6 = v0[3];

  return sub_221E9F708(v7, v6, v3, v4);
}

uint64_t sub_221F065C4(uint64_t a1)
{
  v3 = *(*v2 + 56);
  v4 = *v2;
  *(v4 + 64) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F066F8, 0, 0);
  }
}

uint64_t sub_221F066F8()
{
  v28 = v0;
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = [*(v0 + 64) userIdentity];
    v3 = [v2 hasiCloudAccount];

    if (v3)
    {
      __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + 296), *(*(v0 + 40) + 320));
      v4 = swift_task_alloc();
      *(v0 + 72) = v4;
      *v4 = v0;
      v4[1] = sub_221F06AC8;
      v5 = *(v0 + 48);
      v6 = *(v0 + 32);

      return sub_221E9AC64(v6, v5, 0);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 24);
    v18 = sub_221FB61D8();
    __swift_project_value_buffer(v18, qword_281307DF0);

    v19 = sub_221FB61B8();
    v20 = sub_221FB65A8();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v0 + 16);
      v21 = *(v0 + 24);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v27[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_221EF4114(v22, v21, v27);
      _os_log_impl(&dword_221E93000, v19, v20, "Destination %s has a participant, but no iCloud account", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DADA80](v24, -1, -1);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v25 = 6;
    swift_willThrow();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 24);
    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);

    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();

    if (os_log_type_enabled(v10, v11))
    {
      v13 = *(v0 + 16);
      v12 = *(v0 + 24);
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_221EF4114(v13, v12, v27);
      _os_log_impl(&dword_221E93000, v10, v11, "Destination %s does not have a matching CloudKit participant", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v16 = 12;
    swift_willThrow();
  }

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_221F06AC8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v7 = *v2;
  *(v3 + 80) = a1;
  *(v3 + 88) = v1;

  if (v1)
  {
    v5 = sub_221F06DA8;
  }

  else
  {
    v5 = sub_221F06BDC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F06BDC()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_0Tm((v0[5] + 296), *(v0[5] + 320));
  v2 = swift_task_alloc();
  v0[12] = v2;
  *v2 = v0;
  v2[1] = sub_221F06C94;
  v3 = v0[10];
  v4 = v0[6];

  return sub_221E9A43C(v1, v3, v4, 0);
}

uint64_t sub_221F06C94()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_221F06FD8;
  }

  else
  {
    v3 = sub_221F06E0C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F06DA8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221F06E0C()
{
  v1 = v0[8];
  __swift_project_boxed_opaque_existential_0Tm((v0[5] + 296), *(v0[5] + 320));
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_221F06EC4;
  v3 = v0[10];
  v4 = v0[6];

  return sub_221E993C0(v1, v3, v4, 0);
}

uint64_t sub_221F06EC4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 112);
  v7 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = v1;

  if (v1)
  {
    v5 = sub_221F072E0;
  }

  else
  {
    v5 = sub_221F07044;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F06FD8()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 104);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F07044()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 64);
  sub_221E9D138(0, &qword_27CFEC268, 0x277CE9130);
  v3 = sub_221FA6C68(v1, v2);
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + 80);
    v6 = *(v0 + 64);

    v7 = *(v0 + 8);

    return v7(v4);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 120);
    v10 = *(v0 + 64);
    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = v9;
    v13 = v10;
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 120);
      v17 = *(v0 + 64);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412546;
      *(v18 + 4) = v17;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v16;
      *v19 = v17;
      v19[1] = v16;
      v20 = v16;
      v21 = v17;
      _os_log_impl(&dword_221E93000, v14, v15, "Failed to create share item for participant: %@, share: %@", v18, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    v22 = *(v0 + 120);
    v23 = *(v0 + 80);
    v24 = *(v0 + 64);

    sub_221EA4994();
    swift_allocError();
    *v25 = 31;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_221F072E0()
{
  v1 = *(v0 + 64);

  v2 = *(v0 + 128);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221F0734C(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = type metadata accessor for IDSErrorAction(0);
  v2[20] = v3;
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F073E0, 0, 0);
}

uint64_t sub_221F073E0()
{
  v1 = v0[19];
  v2 = __swift_project_boxed_opaque_existential_0Tm(v1 + 10, v1[13]);
  v3 = v1[15];
  v4 = *v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221F07524;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221FA909C;
  v0[13] = &block_descriptor_17;
  v0[14] = v5;
  [v4 fetchAllChangesWithPriority:2 activity:0 group:v3 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221F07524()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 176) = v2;
  if (v2)
  {
    v3 = sub_221F077E0;
  }

  else
  {
    v3 = sub_221F07634;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F07634()
{
  v1 = v0[18];
  v2 = *(v0[19] + 128);
  v3 = sub_221FB6428();
  v4 = [v2 contactWithDestinations_];

  v5 = v0[21];
  if (v4)
  {

    v6 = v0[1];

    return v6(v4);
  }

  else
  {
    v8 = v0[20];
    v9 = v0[21];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v10 = swift_allocError();
    *v11 = 21;
    v12 = type metadata accessor for IDSError(0);
    sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v14 = v13;
    sub_221EA4A40(v9, v13);
    v15 = v0[21];
    *(v14 + *(v12 + 20)) = v10;
    swift_willThrow();

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_221F077E0()
{
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  swift_willThrow();
  *v1 = 1;
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v6 = v5;
  sub_221EA4A40(v1, v5);
  v7 = v0[21];
  *(v6 + *(v4 + 20)) = v0[22];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F07910()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[4] + 40), *(v0[4] + 64));
  v2 = *v1;
  *(v1 + 8);
  v3 = sub_221FB62E8();

  v4 = [v2 installStateForBundleIdentifier_];

  if (v4 == 1)
  {
    __swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_221F07B48;

    return sub_221EF490C();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = sub_221FB61B8();
    v9 = sub_221FB65A8();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_221E93000, v8, v9, "App not installed to handle repair", v10, 2u);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v11 = 0;
    swift_willThrow();
    v12 = v0[1];

    return v12();
  }
}