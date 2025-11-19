uint64_t sub_2226E22B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 384);
  v7 = *v2;
  *(v3 + 392) = a1;
  *(v3 + 400) = v1;

  if (v1)
  {
    v5 = sub_2226E28AC;
  }

  else
  {
    v5 = sub_2226E23C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t sub_2226E23C4()
{
  v1 = *(v0 + 392);
  v2 = *(v0 + 352);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 288) = v2;
  v4 = v1 + 64;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 64);
  v8 = (63 - v6) >> 6;
  v9 = *(v0 + 352);
  v59 = v1;

  v11 = 0;
  if (!v7)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v14 = v11;
LABEL_15:
    v17 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v18 = v17 | (v14 << 6);
    v19 = (*(v59 + 48) + 16 * v18);
    v21 = *v19;
    v20 = v19[1];
    sub_22262BF70(*(v59 + 56) + 32 * v18, v0 + 160);
    *(v0 + 64) = v21;
    *(v0 + 72) = v20;
    sub_22269457C((v0 + 160), (v0 + 80));

LABEL_16:
    v22 = *(v0 + 80);
    *(v0 + 112) = *(v0 + 64);
    *(v0 + 128) = v22;
    *(v0 + 144) = *(v0 + 96);
    v23 = *(v0 + 120);
    if (!v23)
    {
      break;
    }

    v24 = *(v0 + 112);
    sub_22262BF70(v0 + 128, v0 + 32);
    *(v0 + 16) = v24;
    *(v0 + 24) = v23;

    sub_222660468(v0 + 112, &unk_27D014680, &unk_222744148);
    v25 = *(v0 + 24);
    if (!v25)
    {
      goto LABEL_31;
    }

    v26 = *(v0 + 16);
    sub_22269457C((v0 + 32), (v0 + 256));
    result = sub_222688818(v26, v25);
    v28 = v9[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_44;
    }

    v32 = v27;
    if (v9[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v38 = result;
      sub_22268C710();
      result = v38;
      v9 = *(v0 + 288);
      if ((v32 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_5:
      v12 = result;

      v13 = (v9[7] + 32 * v12);
      __swift_destroy_boxed_opaque_existential_1(v13);
      result = sub_22269457C((v0 + 256), v13);
      isUniquelyReferenced_nonNull_native = 1;
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      sub_2226895E4(v31, isUniquelyReferenced_nonNull_native & 1);
      v33 = *(v0 + 288);
      result = sub_222688818(v26, v25);
      if ((v32 & 1) != (v34 & 1))
      {

        return sub_222739B8C();
      }

LABEL_23:
      v9 = *(v0 + 288);
      if (v32)
      {
        goto LABEL_5;
      }

LABEL_24:
      v9[(result >> 6) + 8] |= 1 << result;
      v35 = (v9[6] + 16 * result);
      *v35 = v26;
      v35[1] = v25;
      result = sub_22269457C((v0 + 256), (v9[7] + 32 * result));
      v36 = v9[2];
      v30 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v30)
      {
        goto LABEL_45;
      }

      v9[2] = v37;
      isUniquelyReferenced_nonNull_native = 1;
      if (!v7)
      {
LABEL_7:
        if (v8 <= v11 + 1)
        {
          v15 = v11 + 1;
        }

        else
        {
          v15 = v8;
        }

        v16 = v15 - 1;
        while (1)
        {
          v14 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v14 >= v8)
          {
            v7 = 0;
            *(v0 + 80) = 0u;
            *(v0 + 96) = 0u;
            v11 = v16;
            *(v0 + 64) = 0u;
            goto LABEL_16;
          }

          v7 = *(v4 + 8 * v14);
          ++v11;
          if (v7)
          {
            v11 = v14;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        return result;
      }
    }
  }

  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
LABEL_31:
  v39 = *(v0 + 392);
  v41 = *(v0 + 360);
  v40 = *(v0 + 368);
  v43 = *(v0 + 336);
  v42 = *(v0 + 344);

  if (v42 + 1 == v43)
  {
    v44 = *(v0 + 328);
    *(v0 + 216) = MEMORY[0x277D837D0];
    *(v0 + 192) = 0xD000000000000019;
    *(v0 + 200) = 0x800000022274CB50;
    sub_22269457C((v0 + 192), (v0 + 224));
    v45 = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BC94((v0 + 224), 0x734E72657375, 0xE600000000000000, v45);

    v46 = *(v0 + 8);

    return v46(v9);
  }

  else
  {
    v47 = *(v0 + 344);
    *(v0 + 344) = v47 + 1;
    *(v0 + 352) = v9;
    v48 = *(v0 + 328);
    v49 = (*(v0 + 296) + 24 * v47);
    v50 = v49[7];
    *(v0 + 360) = v50;
    v52 = v49[8];
    v51 = v49[9];
    *(v0 + 368) = v51;
    v53 = v50;

    v54 = v48;
    if (!v48)
    {
      v54 = [*(v0 + 312) ams_activeiTunesAccount];
      v48 = *(v0 + 328);
    }

    *(v0 + 376) = v54;
    v55 = v48;
    v56 = swift_task_alloc();
    *(v0 + 384) = v56;
    *v56 = v0;
    v56[1] = sub_2226E22B0;
    v58 = *(v0 + 312);
    v57 = *(v0 + 320);

    return sub_2226E3314(v58, v57, v54, v53, v52, v51);
  }
}

uint64_t sub_2226E28AC()
{
  v2 = v0[46];
  v1 = v0[47];
  v3 = v0[44];
  v4 = v0[45];
  v5 = v0[41];

  v6 = v0[1];
  v7 = v0[50];

  return v6();
}

uint64_t sub_2226E2934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 64) = *v4;
  return MEMORY[0x2822009F8](sub_2226E2960, 0, 0);
}

char *sub_2226E2960()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    v1 = [*(v0 + 64) ams_activeiTunesAccount];
  }

  *(v0 + 80) = v1;
  v2 = *(v0 + 32);
  if (v2 >> 62)
  {
    if (v2 < 0)
    {
      v26 = *(v0 + 32);
    }

    v3 = sub_22273984C();
    v4 = *(v0 + 40);
    if (v3)
    {
      goto LABEL_5;
    }

LABEL_20:
    v27 = v4;
    v7 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v4 = *(v0 + 40);
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_5:
  v32 = MEMORY[0x277D84F90];
  v5 = v4;
  result = sub_2226AE86C(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v29 = v1;
  v7 = v32;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    do
    {
      v9 = *(v0 + 56);
      v10 = MEMORY[0x223DBEC70](v8, *(v0 + 32));
      v11 = *(v32 + 16);
      v12 = *(v32 + 24);

      if (v11 >= v12 >> 1)
      {
        sub_2226AE86C((v12 > 1), v11 + 1, 1);
      }

      v14 = *(v0 + 48);
      v13 = *(v0 + 56);
      ++v8;
      *(v32 + 16) = v11 + 1;
      v15 = (v32 + 24 * v11);
      v15[4] = v10;
      v15[5] = v14;
      v15[6] = v13;
    }

    while (v3 != v8);
  }

  else
  {
    v16 = 0;
    v30 = *(v32 + 16);
    v31 = *(v0 + 32) + 32;
    v17 = 24 * v30;
    do
    {
      v18 = *(v0 + 56);
      v19 = *(v31 + 8 * v16);
      v20 = *(v32 + 24);
      v21 = v30 + v16 + 1;

      v22 = v19;
      if (v30 + v16 >= v20 >> 1)
      {
        v25 = v22;
        sub_2226AE86C((v20 > 1), v21, 1);
        v22 = v25;
        v18 = *(v0 + 56);
      }

      v23 = *(v0 + 48);
      ++v16;
      *(v32 + 16) = v21;
      v24 = (v32 + v17);
      v24[4] = v22;
      v24[5] = v23;
      v24[6] = v18;
      v17 += 24;
    }

    while (v3 != v16);
  }

  v1 = v29;
LABEL_21:
  *(v0 + 88) = v7;
  *(v0 + 16) = *(v0 + 64);
  v28 = swift_task_alloc();
  *(v0 + 96) = v28;
  *v28 = v0;
  v28[1] = sub_2226E2BF8;

  return sub_2226E2068(v7, v1);
}

uint64_t sub_2226E2BF8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 88);
  v7 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v8 = sub_2226E2DAC;
  }

  else
  {
    *(v4 + 112) = a1;
    v8 = sub_2226E2D44;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_2226E2D44()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 112);

  return v1(v2);
}

uint64_t sub_2226E2DAC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 104);

  return v1();
}

uint64_t sub_2226E2E10()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738F6C();
  __swift_allocate_value_buffer(v5, qword_27D014080);
  __swift_project_value_buffer(v5, qword_27D014080);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v4, v6, v0);
  return sub_222738F5C();
}

void sub_2226E2F6C()
{
  v0 = sub_22273916C();
  v1 = [objc_opt_self() keyWithName:v0 crossDeviceSync:1];

  qword_281314328 = v1;
}

uint64_t sub_2226E2FD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[6] = a3;
  v6[7] = a4;
  v6[4] = a1;
  v6[5] = a2;
  return MEMORY[0x2822009F8](sub_2226E3000, 0, 0);
}

uint64_t sub_2226E3000()
{
  v1 = *(v0 + 48);
  v2 = v1;
  if (!v1)
  {
    v2 = [*(v0 + 32) ams_activeiTunesAccount];
    v1 = *(v0 + 48);
  }

  *(v0 + 80) = v2;
  v3 = v1;
  *(v0 + 16) = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *v4 = v0;
  v4[1] = sub_2226E30D4;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);

  return sub_2226E3C80(v2, v5, v6);
}

uint64_t sub_2226E30D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {
    v7 = sub_2226E32B0;
  }

  else
  {
    *(v4 + 104) = a1;
    v7 = sub_2226E31FC;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226E31FC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 56);

  v3 = [v1 identifierForKey_];
  v4 = sub_22273919C();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_2226E32B0()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t sub_2226E3314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[36] = a5;
  v6[37] = a6;
  v6[34] = a3;
  v6[35] = a4;
  v6[32] = a1;
  v6[33] = a2;
  return MEMORY[0x2822009F8](sub_2226E333C, 0, 0);
}

uint64_t sub_2226E333C()
{
  v1 = *(v0 + 272);
  v2 = v1;
  if (!v1)
  {
    v2 = [*(v0 + 256) ams_activeiTunesAccount];
    v1 = *(v0 + 272);
  }

  *(v0 + 304) = v2;
  v3 = v1;
  *(v0 + 240) = *(v0 + 256);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_2226E3410;
  v5 = *(v0 + 288);
  v6 = *(v0 + 296);

  return sub_2226E3C80(v2, v5, v6);
}

uint64_t sub_2226E3410(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 312);
  v7 = *v2;
  *(v3 + 320) = a1;
  *(v3 + 328) = v1;

  if (v1)
  {
    v5 = sub_2226E3524;
  }

  else
  {
    v5 = sub_2226E3588;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2226E3524()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 328);

  return v1();
}

_OWORD *sub_2226E3588()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 280);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140B0, &qword_222744140);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2227440C0;
  *(v3 + 32) = v2;
  sub_22262E364(0, &qword_27D0140B8, 0x277CEE5B0);
  v4 = v2;
  v5 = sub_22273936C();

  v6 = [v1 generateEventFieldsForKeys_];

  v7 = sub_22273910C();
  v8 = sub_222710688(MEMORY[0x277D84F90]);
  v9 = 0;
  v10 = -1;
  v11 = -1 << *(v7 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v7 + 64);
  v13 = (63 - v11) >> 6;
  while (1)
  {
    v14 = v9;
    if (!v12)
    {
      break;
    }

LABEL_8:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = v15 | (v9 << 6);
    sub_22269458C(*(v7 + 48) + 40 * v16, v0 + 16);
    sub_22262BF70(*(v7 + 56) + 32 * v16, v0 + 56);
    v17 = *(v0 + 32);
    *(v0 + 88) = *(v0 + 16);
    *(v0 + 104) = v17;
    *(v0 + 120) = *(v0 + 48);
    sub_22269457C((v0 + 56), (v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140C0, &unk_2227437C8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
    if (swift_dynamicCast())
    {
      v18 = *(v0 + 160);
      v19 = *(v0 + 168);
      sub_22269457C((v0 + 176), (v0 + 208));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v19;
      v34 = v18;
      v21 = sub_222688818(v18, v19);
      v22 = v8[2];
      v23 = (v20 & 1) == 0;
      result = (v22 + v23);
      if (__OFADD__(v22, v23))
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      if (v8[3] >= result)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v20 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

        else
        {
          v36 = v20;
          sub_22268C710();
          if ((v36 & 1) == 0)
          {
            goto LABEL_19;
          }
        }

LABEL_17:

        v28 = (v8[7] + 32 * v21);
        __swift_destroy_boxed_opaque_existential_1(v28);
        sub_22269457C((v0 + 208), v28);
      }

      else
      {
        v25 = v20;
        sub_2226895E4(result, isUniquelyReferenced_nonNull_native);
        v26 = sub_222688818(v34, v37);
        if ((v25 & 1) != (v27 & 1))
        {
LABEL_25:

          return sub_222739B8C();
        }

        v21 = v26;
        if (v25)
        {
          goto LABEL_17;
        }

LABEL_19:
        v8[(v21 >> 6) + 8] |= 1 << v21;
        v29 = (v8[6] + 16 * v21);
        *v29 = v34;
        v29[1] = v37;
        result = sub_22269457C((v0 + 208), (v8[7] + 32 * v21));
        v30 = v8[2];
        v31 = __OFADD__(v30, 1);
        v32 = v30 + 1;
        if (v31)
        {
          goto LABEL_29;
        }

        v8[2] = v32;
      }
    }

    else
    {
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 160) = 0u;
      sub_222660468(v0 + 160, &qword_27D0140D0, &qword_222744508);
    }
  }

  while (1)
  {
    v9 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v9 >= v13)
    {
      break;
    }

    v12 = *(v7 + 64 + 8 * v9);
    ++v14;
    if (v12)
    {
      goto LABEL_8;
    }
  }

  v33 = *(v0 + 8);

  return v33(v8);
}

uint64_t sub_2226E39B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_2226E39D4, 0, 0);
}

uint64_t sub_2226E39D4()
{
  if (qword_281314320 != -1)
  {
    swift_once();
  }

  v1 = [*(v0 + 40) ams_activeiTunesAccount];
  *(v0 + 56) = v1;
  *(v0 + 16) = v4;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2226E3AE8;

  return sub_2226E3C80(v1, 0xD000000000000013, 0x800000022274CA70);
}

uint64_t sub_2226E3AE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2226BE2B4;
  }

  else
  {
    *(v4 + 80) = a1;
    v7 = sub_2226E3C10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226E3C10()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 32);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2226E3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a2;
  v4[29] = a3;
  v4[27] = a1;
  v5 = sub_222738F6C();
  v4[30] = v5;
  v6 = *(v5 - 8);
  v4[31] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v9 = *(v3 + 8);
  v4[32] = v8;
  v4[33] = v9;

  return MEMORY[0x2822009F8](sub_2226E3D48, 0, 0);
}

uint64_t sub_2226E3D48()
{
  v1 = v0[33];
  v3 = v0[28];
  v2 = v0[29];
  v4 = v0[27];
  v5 = objc_opt_self();
  v6 = sub_22273916C();
  v7 = [v5 identifierStoreWithAccount:v4 bagNamespace:v6 bag:v1];
  v0[34] = v7;

  v0[2] = v0;
  v0[7] = v0 + 26;
  v0[3] = sub_2226E3ECC;
  v8 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0140A0, &unk_2227444E8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2226E4EF4;
  v0[13] = &block_descriptor_12;
  v0[14] = v8;
  [v7 resultWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2226E3ECC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  if (v2)
  {
    v3 = sub_2226E407C;
  }

  else
  {
    v3 = sub_2226E3FDC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226E3FDC()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 208);

  [v2 setIncludeAccountMatchStatus_];
  [v2 setIsActiveITunesAccountRequired_];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2226E407C()
{
  v1 = v0[34];
  v2 = v0[35];
  swift_willThrow();

  if (qword_27D0129F8 != -1)
  {
    swift_once();
  }

  v4 = v0[31];
  v3 = v0[32];
  v5 = v0[30];
  v6 = v0[27];
  v7 = __swift_project_value_buffer(v5, qword_27D014080);
  (*(v4 + 16))(v3, v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v8 = *(sub_2227381FC() - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  *(swift_allocObject() + 16) = xmmword_222743D10;
  sub_22273813C();
  if (v6)
  {
    v11 = sub_22262E364(0, &qword_27D0140A8, 0x277CB8F30);
    v12 = v0[27];
    v13 = v12;
  }

  else
  {
    v13 = 0;
    v11 = 0;
    v0[19] = 0;
    v0[20] = 0;
    v12 = v0[27];
  }

  v22 = v0[35];
  v14 = v0[32];
  v15 = v0[33];
  v16 = v0[30];
  v17 = v0[31];
  v0[18] = v13;
  v0[21] = v11;
  v18 = v12;
  sub_22273814C();
  sub_222660468((v0 + 18), &qword_27D0130C0, &unk_2227413B0);
  sub_22273813C();
  v0[25] = swift_getObjectType();
  v0[22] = v15;
  swift_unknownObjectRetain();
  sub_22273814C();
  sub_222660468((v0 + 22), &qword_27D0130C0, &unk_2227413B0);
  sub_222738C6C();

  (*(v17 + 8))(v14, v16);
  swift_willThrow();

  v19 = v0[1];
  v20 = v0[35];

  return v19();
}

char *sub_2226E4344(void *a1)
{
  v3 = sub_222738F6C();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v55 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v53 - v7;
  v8 = *(v1 + 8);
  v9 = objc_opt_self();
  v10 = sub_22273916C();
  v56 = a1;
  v57 = v8;
  v11 = [v9 identifierStoreWithAccount:a1 bagNamespace:v10 bag:v8];

  v12 = [v11 promiseWithTimeout_];
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  v54 = (v13 + 16);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  v71 = sub_2226E5000;
  v72 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_222730B48;
  ObjectType = &block_descriptor_16_0;
  v17 = _Block_copy(&aBlock);
  v59 = v14;

  v18 = v15;

  [v12 addErrorBlock_];
  _Block_release(v17);
  v19 = swift_allocObject();
  *(v19 + 16) = v13;
  *(v19 + 24) = v18;
  v71 = sub_2226E5020;
  v72 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v68 = 1107296256;
  v69 = sub_2226E4E8C;
  ObjectType = &block_descriptor_22;
  v20 = _Block_copy(&aBlock);
  v21 = v18;
  v60 = v13;

  v61 = v12;
  [v12 addSuccessBlock_];
  _Block_release(v20);
  v58 = v21;
  sub_22273965C();
  swift_beginAccess();
  v22 = *(v14 + 16);
  if (v22)
  {
    v23 = v22;
    if (qword_27D0129F8 != -1)
    {
      swift_once();
    }

    v24 = v64;
    v25 = __swift_project_value_buffer(v64, qword_27D014080);
    (*(v63 + 16))(v62, v25, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v26 = *(sub_2227381FC() - 8);
    v27 = *(v26 + 72);
    v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
    *(swift_allocObject() + 16) = xmmword_222742E90;
    sub_22273813C();
    v29 = v56;
    if (v56)
    {
      v30 = sub_22262E364(0, &qword_27D0140A8, 0x277CB8F30);
      v31 = v29;
    }

    else
    {
      v31 = 0;
      v30 = 0;
      v68 = 0;
      v69 = 0;
    }

    aBlock = v31;
    ObjectType = v30;
    v35 = v29;
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    sub_22273813C();
    v36 = v57;
    ObjectType = swift_getObjectType();
    aBlock = v36;
    swift_unknownObjectRetain();
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    sub_22273813C();
    swift_getErrorValue();
    v37 = v65;
    v38 = v66;
    ObjectType = v66;
    v39 = __swift_allocate_boxed_opaque_existential_1(&aBlock);
    (*(*(v38 - 1) + 16))(v39, v37, v38);
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    v40 = v64;
    v34 = v62;
    sub_222738C6C();

    (*(v63 + 8))(v34, v40);
LABEL_10:
    swift_willThrow();

    return v34;
  }

  v32 = v55;
  v33 = v54;
  swift_beginAccess();
  if (!*v33)
  {
    if (qword_27D0129F8 != -1)
    {
      swift_once();
    }

    v42 = v64;
    v43 = __swift_project_value_buffer(v64, qword_27D014080);
    (*(v63 + 16))(v32, v43, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v44 = *(sub_2227381FC() - 8);
    v45 = *(v44 + 72);
    v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    *(swift_allocObject() + 16) = xmmword_222743D10;
    sub_22273813C();
    v47 = v56;
    if (v56)
    {
      v48 = sub_22262E364(0, &qword_27D0140A8, 0x277CB8F30);
      v49 = v47;
    }

    else
    {
      v49 = 0;
      v48 = 0;
      v68 = 0;
      v69 = 0;
    }

    aBlock = v49;
    ObjectType = v48;
    v50 = v47;
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    sub_22273813C();
    v51 = v57;
    ObjectType = swift_getObjectType();
    aBlock = v51;
    swift_unknownObjectRetain();
    sub_22273814C();
    sub_222660468(&aBlock, &qword_27D0130C0, &unk_2227413B0);
    v52 = v64;
    v34 = v32;
    sub_222738C6C();

    (*(v63 + 8))(v32, v52);
    sub_2226E5028();
    swift_allocError();
    goto LABEL_10;
  }

  v34 = *v33;
  [v34 setIncludeAccountMatchStatus_];
  [v34 setIsActiveITunesAccountRequired_];

  return v34;
}

uint64_t sub_2226E4C8C()
{
  sub_222739C5C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226E4D00()
{
  sub_222739C5C();
  sub_22273924C();
  return sub_222739C8C();
}

uint64_t sub_2226E4D54@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_222739A8C();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_2226E4DC8(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_22273966C();
}

uint64_t sub_2226E4E2C(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_22273966C();
}

void sub_2226E4E8C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_2226E4EF4(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
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

id sub_2226E4FCC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_2226E507C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t block_copy_helper_14_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2226E5028()
{
  result = qword_27D0140D8;
  if (!qword_27D0140D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0140D8);
  }

  return result;
}

id sub_2226E507C(void *a1, uint64_t a2)
{
  v32 = a2;
  v3 = sub_2227380FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v31 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v31 - v12;
  v33 = a1;
  sub_22273810C();
  v14 = sub_2227380EC();
  v16 = v15;
  v17 = *(v4 + 8);
  v17(v13, v3);
  if (!v16)
  {
    v26 = v17;
    v19 = 0xE400000000000000;
    v18 = 1701667182;
    v24 = v33;
    goto LABEL_7;
  }

  v31[0] = v14;
  v31[2] = v16;
  v18 = 0x6E795373736F7263;
  v19 = 0xEF65636976654463;
  sub_22273810C();
  v20 = sub_22273808C();
  v17(v11, v3);
  if (v20 == 2 || (v18 = 0x73656D614E676162, v19 = 0xEC00000065636170, sub_22273810C(), sub_2227380EC(), v22 = v21, v17(v8, v3), !v22))
  {
    v26 = v17;
    v24 = v33;

LABEL_7:
    v27 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v28 = v18;
    v28[1] = v19;
    v28[2] = &type metadata for MetricsIdentifierKeyContext;
    (*(*(v27 - 8) + 104))(v28, *MEMORY[0x277D22530], v27);
    swift_willThrow();
    v29 = sub_22273823C();
    (*(*(v29 - 8) + 8))(v32, v29);
    v26(v24, v3);
    return v24;
  }

  v23 = sub_22273916C();

  v24 = [objc_opt_self() keyWithName:v23 crossDeviceSync:v20 & 1];

  v25 = sub_22273823C();
  (*(*(v25 - 8) + 8))(v32, v25);
  v17(v33, v3);
  return v24;
}

uint64_t sub_2226E5440(uint64_t *a1, int a2)
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

uint64_t sub_2226E5488(uint64_t result, int a2, int a3)
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

unint64_t sub_2226E54DC()
{
  result = qword_27D0140E8;
  if (!qword_27D0140E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0140E8);
  }

  return result;
}

uint64_t sub_2226E5538()
{
  v0 = [objc_opt_self() processInfo];
  [v0 operatingSystemVersion];

  v4 = sub_222739AFC();
  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v1 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v1);

  MEMORY[0x223DBE5D0](46, 0xE100000000000000);
  v2 = sub_222739AFC();
  MEMORY[0x223DBE5D0](v2);

  return v4;
}

unint64_t sub_2226E5648()
{
  v0 = sub_222738C1C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v22[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013730, &qword_2227426C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2227446A0;
  *(inited + 32) = 29551;
  *(inited + 40) = 0xE200000000000000;
  sub_222738C0C();
  v6 = sub_222738BCC();
  v8 = v7;
  v9 = *(v1 + 8);
  v9(v4, v0);
  *(inited + 48) = v6;
  *(inited + 56) = v8;
  strcpy((inited + 64), "hardwareFamily");
  *(inited + 79) = -18;
  sub_222738C0C();
  v10 = sub_222738BDC();
  v12 = v11;
  v9(v4, v0);
  *(inited + 80) = v10;
  *(inited + 88) = v12;
  strcpy((inited + 96), "hardwareModel");
  *(inited + 110) = -4864;
  sub_222738C0C();
  v13 = sub_222738BFC();
  v15 = v14;
  v9(v4, v0);
  *(inited + 112) = v13;
  *(inited + 120) = v15;
  strcpy((inited + 128), "osBuildNumber");
  *(inited + 142) = -4864;
  sub_222738C0C();
  v16 = sub_222738BEC();
  v18 = v17;
  v9(v4, v0);
  *(inited + 144) = v16;
  *(inited + 152) = v18;
  *(inited + 160) = 0x6F6973726556736FLL;
  *(inited + 168) = 0xE90000000000006ELL;
  *(inited + 176) = sub_2226E5538();
  *(inited + 184) = v19;
  v20 = sub_222732D1C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141C0, &unk_2227426D0);
  swift_arrayDestroy();
  return v20;
}

uint64_t sub_2226E58C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22262BF70(a1, v6);

  return sub_222730CC4(v6, a2, a3);
}

uint64_t sub_2226E5928()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2226E597C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (*(a4 + 8))();
  v7 = sub_22273823C();
  (*(*(v7 - 8) + 8))(a2, v7);
  v8 = sub_2227380FC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v6;
}

uint64_t sub_2226E5A40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_2226E597C(a1, a2, *(a3 + 16), *(a3 + 24));
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_2226E5A74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2226E5C14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2226E5AA4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0132F0, &unk_222745700);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = v6 - v3;
  sub_22273821C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014120, &qword_2227423C0);
  sub_22273824C();
  (*(v1 + 8))(v4, v0);
  sub_2226848A4(v8, v6);
  if (v7)
  {
    __swift_project_boxed_opaque_existential_1(v6, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
    sub_2227389AC();
    sub_222684914(v8);
    return __swift_destroy_boxed_opaque_existential_1(v6);
  }

  else
  {
    sub_222684914(v8);
    return sub_222684914(v6);
  }
}

uint64_t sub_2226E5C14(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738FAC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_2227380FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2227380CC();
  result = 0;
  if ((v14 & 1) == 0)
  {
    v45 = v5;
    v46 = a2;
    sub_22273810C();
    v43 = sub_2227380EC();
    v17 = v16;
    (*(v10 + 8))(v13, v9);
    v44 = v17;
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014100, &qword_2227447F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227447E0;
      *(inited + 32) = 0x70756B636F4C6461;
      *(inited + 40) = 0xEF65727574616546;
      *(inited + 48) = sub_22262E364(0, &qword_281312CB8, off_2784B0658);
      *(inited + 56) = &off_2835CA7C0;
      *(inited + 64) = 0xD000000000000014;
      *(inited + 72) = 0x800000022274CBD0;
      *(inited + 80) = sub_22262E364(0, &qword_281312BB0, off_2784B06B0);
      *(inited + 88) = &off_2835CA870;
      *(inited + 96) = 0xD000000000000015;
      *(inited + 104) = 0x800000022274CBF0;
      *(inited + 112) = sub_22262E364(0, &qword_281312BD8, off_2784B0688);
      *(inited + 120) = &off_2835CA820;
      strcpy((inited + 128), "genreFeature");
      *(inited + 141) = 0;
      *(inited + 142) = -5120;
      *(inited + 144) = sub_22262E364(0, &qword_281312C40, off_2784B0698);
      *(inited + 152) = &off_2835CA840;
      *(inited + 160) = 0xD000000000000016;
      *(inited + 168) = 0x800000022274CC10;
      *(inited + 176) = sub_22262E364(0, &qword_281312BA8, off_2784B06B8);
      *(inited + 184) = &off_2835CA880;
      *(inited + 192) = 0xD000000000000013;
      *(inited + 200) = 0x800000022274CC30;
      *(inited + 208) = sub_22262E364(0, &qword_281312BF0, off_2784B06C8);
      *(inited + 216) = &off_2835CA8A0;
      *(inited + 224) = 0xD000000000000010;
      *(inited + 232) = 0x800000022274CC50;
      *(inited + 240) = sub_22262E364(0, &unk_281312BF8, off_2784B06C0);
      *(inited + 248) = &off_2835CA890;
      strcpy((inited + 256), "mediaFeature");
      *(inited + 269) = 0;
      *(inited + 270) = -5120;
      *(inited + 272) = sub_22262E364(0, &unk_281312C30, off_2784B06A0);
      *(inited + 280) = &off_2835CA850;
      *(inited + 288) = 0xD000000000000016;
      *(inited + 296) = 0x800000022274CC70;
      *(inited + 304) = sub_22262E364(0, &unk_281312BB8, off_2784B06A8);
      *(inited + 312) = &off_2835CA860;
      *(inited + 320) = 0x4449656C646E7562;
      *(inited + 328) = 0xEF65727574616546;
      *(inited + 336) = sub_22262E364(0, &unk_281312C20, off_2784B0670);
      *(inited + 344) = &off_2835CA7F0;
      *(inited + 352) = 0xD000000000000019;
      *(inited + 360) = 0x800000022274CC90;
      *(inited + 368) = sub_22262E364(0, &unk_281312B98, off_2784B0690);
      *(inited + 376) = &off_2835CA830;
      *(inited + 384) = 0xD000000000000014;
      *(inited + 392) = 0x800000022274CCB0;
      *(inited + 400) = sub_22262E364(0, &unk_281312BE0, off_2784B0680);
      *(inited + 408) = &off_2835CA810;
      *(inited + 416) = 0xD000000000000010;
      *(inited + 424) = 0x800000022274CCD0;
      *(inited + 432) = sub_22262E364(0, &unk_281312C08, off_2784B0678);
      *(inited + 440) = &off_2835CA800;
      v19 = sub_2227334D8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014110, &unk_222744800);
      swift_arrayDestroy();
      v20 = sub_22262E364(0, &unk_281312BC8, off_2784B0660);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v19;
      sub_22268C178(v20, &off_2835CA7D0, 0xD000000000000016, 0x800000022274CCF0, isUniquelyReferenced_nonNull_native);
      v22 = v47;
      v23 = sub_22262E364(0, &qword_281312B90, off_2784B0668);
      v24 = swift_isUniquelyReferenced_nonNull_native();
      v47 = v22;
      sub_22268C178(v23, &off_2835CA7E0, 0xD00000000000001DLL, 0x800000022274CD10, v24);
      v25 = v47;
      v27 = v43;
      v26 = v44;
      if (*(v47 + 16))
      {
        v28 = sub_222688818(v43, v44);
        if (v29)
        {
          v30 = v28;

          v31 = (*(v25 + 56) + 16 * v30);
          v32 = *v31;
          v41 = (*(v31[1] + 8))(a1, v46);

          return v41;
        }
      }

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
      *v8 = v27;
      v8[1] = v26;
      v8[2] = v33;
      v34 = v45;
      (*(v45 + 104))(v8, *MEMORY[0x277D22520], v4);
      sub_22268497C();
      v35 = swift_allocError();
      (*(v34 + 16))(v36, v8, v4);
      sub_2226E5AA4();
      (*(v34 + 8))(v8, v4);
    }

    else
    {
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
      *v8 = 0x646E696B24;
      v8[1] = 0xE500000000000000;
      v8[2] = v37;
      v38 = v45;
      (*(v45 + 104))(v8, *MEMORY[0x277D22530], v4);
      sub_22268497C();
      v39 = swift_allocError();
      (*(v38 + 16))(v40, v8, v4);
      sub_2226E5AA4();
      (*(v38 + 8))(v8, v4);
    }

    return 0;
  }

  return result;
}

char *sub_2226E6410(uint64_t a1)
{
  v2 = 0x726F746964457369;
  v3 = sub_2227380FC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v34 - v14;
  v16 = 0xEF6563696F684373;
  v37 = a1;
  sub_22273810C();
  v36 = sub_22273808C();
  LODWORD(a1) = v36;
  v17 = *(v4 + 8);
  v17(v15, v3);
  if (a1 == 2)
  {
    goto LABEL_6;
  }

  v2 = 0x676E69746172;
  v16 = 0xE600000000000000;
  sub_22273810C();
  v18 = sub_2227380AC();
  v17(v13, v3);
  if ((v18 & 0x100000000) != 0 || (v2 = 0x6F43676E69746172, v16 = 0xEB00000000746E75, sub_22273810C(), sub_2227380EC(), v20 = v19, v17(v10, v3), !v20))
  {
LABEL_6:
    v27 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v29 = v28;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v29 = v2;
    v29[1] = v16;
    v29[2] = MetatypeMetadata;
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D22530], v27);
    swift_willThrow();
  }

  else
  {
    v21 = v18;
    v22 = v35;
    sub_22273810C();
    sub_2227380EC();
    v24 = v23;
    v17(v22, v3);
    v25 = sub_22273916C();

    if (v24)
    {
      v26 = sub_22273916C();
    }

    else
    {
      v26 = 0;
    }

    v32 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    LODWORD(v33) = v21;
    v10 = [v32 initWithEditorsChoice:v36 & 1 productRating:v25 productRatingBadge:v26 productDescription:v33];
  }

  return v10;
}

id sub_2226E67BC()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_22273810C();
  sub_2227380EC();
  v9 = v8;
  v7(v4, v0);
  if (!v6)
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_22273916C();

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_22273916C();

LABEL_6:
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDistributorBundleId:v10 appVersionId:v11];

  return v12;
}

id sub_2226E69B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x28223BE20](v2 - 8);
  v52 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v46 - v12;
  v14 = sub_2227380FC();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v51 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v46 - v22;
  sub_22273810C();
  v46[1] = sub_2227380EC();
  v50 = v24;
  v25 = *(v15 + 8);
  v25(v23, v14);
  v53 = a1;
  sub_22273810C();
  sub_22273809C();
  v25(v23, v14);
  v54 = v13;
  sub_22266110C(v13, v11, &qword_27D0141A0, &unk_2227448B0);
  v26 = sub_222738F9C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v11, 1, v26) == 1)
  {
    sub_222660468(v11, &qword_27D0141A0, &unk_2227448B0);
    v47 = 0;
  }

  else
  {
    v28 = v56;
    v47 = sub_222738F8C();
    v56 = v28;
    (*(v27 + 8))(v11, v26);
  }

  sub_22273810C();
  v46[0] = sub_2227380EC();
  v30 = v29;
  v25(v23, v14);
  sub_22273810C();
  v49 = sub_22273806C();
  v48 = v31;
  v25(v21, v14);
  sub_22273810C();
  v32 = v55;
  sub_22273801C();
  v25(v23, v14);
  v33 = v52;
  sub_22266110C(v32, v52, &qword_27D014128, &qword_2227448A8);
  v34 = sub_2227384AC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    sub_222660468(v33, &qword_27D014128, &qword_2227448A8);
    v36 = 0;
  }

  else
  {
    v36 = sub_22273849C();
    (*(v35 + 8))(v33, v34);
  }

  v37 = v51;
  sub_22273810C();
  v38 = sub_22273808C();
  v25(v37, v14);
  if (v50)
  {
    v39 = sub_22273916C();
  }

  else
  {
    v39 = 0;
  }

  if (v47)
  {
    v40 = sub_22273936C();

    if (v30)
    {
      goto LABEL_12;
    }

LABEL_15:
    v41 = 0;
    if (v36)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  v40 = 0;
  if (!v30)
  {
    goto LABEL_15;
  }

LABEL_12:
  v41 = sub_22273916C();

  if (v36)
  {
LABEL_13:
    v42 = sub_2227390FC();

    goto LABEL_17;
  }

LABEL_16:
  v42 = 0;
LABEL_17:
  if (v48)
  {
    v43 = 0;
  }

  else
  {
    v43 = v49;
  }

  v44 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeveloperId:v39 webDistributionDomains:v40 supportUrl:v41 ageRatingValue:v43 contentRatingsBySystem:v42 isDistributor:v38 & 1];

  sub_222660468(v55, &qword_27D014128, &qword_2227448A8);
  sub_222660468(v54, &qword_27D0141A0, &unk_2227448B0);
  return v44;
}

uint64_t sub_2226E7074@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2227380EC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_2226E70C8()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_22273916C();

    v11 = [v9 initWithBundleID_];
  }

  else
  {
    v11 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v12 = 0x4449656C646E7562;
    v12[1] = 0xE800000000000000;
    v12[2] = v1;
    (*(*(v11 - 1) + 104))(v12, *MEMORY[0x277D22530], v11);
    swift_willThrow();
  }

  return v11;
}

id sub_2226E72B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_22273823C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2227380FC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  (*(v5 + 16))(v8, a2, v4);
  sub_22266F98C();
  v14 = sub_2226ED04C(v13, v8);
  if (v2)
  {
    (*(v5 + 8))(v8, v4);
    v16 = *(v10 + 8);
    v15 = (v10 + 8);
    v16(v13, v9);
  }

  else
  {
    v17 = v14;
    (*(v5 + 8))(v8, v4);
    (*(v10 + 8))(v13, v9);
    v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithAppOffer_];
  }

  return v15;
}

id sub_2226E7504()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (v6)
  {
    v7 = sub_22273916C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeveloperName_];

  return v8;
}

id sub_2226E7670()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  type metadata accessor for HeadingKind(0);
  sub_2226E77F4();
  sub_22273802C();
  (*(v1 + 8))(v4, v0);
  v5 = v10;
  v6 = [objc_allocWithZone(ASCLockupDisplayContext) initWithHeadingKind_];

  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDisplayContext_];
  return v7;
}

unint64_t sub_2226E77F4()
{
  result = qword_27D012BC8;
  if (!qword_27D012BC8)
  {
    type metadata accessor for HeadingKind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012BC8);
  }

  return result;
}

id sub_2226E784C()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v6 = v5;
  v7 = *(v1 + 8);
  v7(v4, v0);
  sub_22273810C();
  sub_2227380EC();
  v9 = v8;
  v7(v4, v0);
  if (!v6)
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = sub_22273916C();

  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = sub_22273916C();

LABEL_6:
  v12 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPrivacyPolicyUrl:v10 eula:v11];

  return v12;
}

void *sub_2226E7A30(uint64_t a1, uint64_t a2)
{
  v53 = a2;
  v2 = 0x6D614E65726E6567;
  v52 = sub_22273823C();
  v49 = *(v52 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x28223BE20](v52);
  v51 = v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v56 = v47 - v7;
  v8 = sub_222738F9C();
  v57 = *(v8 - 8);
  v58 = v8;
  v9 = *(v57 + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v48 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v54 = v47 - v12;
  v13 = sub_2227380FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v47 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v47 - v22;
  sub_22273810C();
  v50 = sub_2227380EC();
  v25 = v24;
  v26 = *(v14 + 8);
  v26(v23, v13);
  if (!v25)
  {
    v30 = 0xE900000000000065;
    goto LABEL_7;
  }

  v55 = v25;
  v2 = 0x444965726E6567;
  sub_22273810C();
  v27 = sub_2227380EC();
  v29 = v28;
  v26(v21, v13);
  if (!v29)
  {

    v30 = 0xE700000000000000;
    goto LABEL_7;
  }

  v47[1] = v27;
  v47[2] = v29;
  v2 = 0x65726E6567627573;
  v30 = 0xE900000000000073;
  sub_22273810C();
  v31 = v56;
  sub_22273809C();
  v26(v18, v13);
  v33 = v57;
  v32 = v58;
  if ((*(v57 + 48))(v31, 1, v58) == 1)
  {

    sub_2226E8068(v31);
LABEL_7:
    v34 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v35 = v2;
    v35[1] = v30;
    v35[2] = v59;
    (*(*(v34 - 1) + 104))(v35, *MEMORY[0x277D22530], v34);
    swift_willThrow();
    return v34;
  }

  v37 = v54;
  (*(v33 + 32))(v54, v31, v32);
  (*(v33 + 16))(v48, v37, v32);
  (*(v49 + 16))(v51, v53, v52);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014130, &unk_2227449F0);
  sub_2226E80D0();
  v38 = sub_2227393EC();
  v39 = *(v38 + 16);
  if (v39)
  {
    v60 = MEMORY[0x277D84F90];
    sub_22273997C();
    v40 = 32;
    do
    {
      v41 = *(v38 + v40);
      sub_22273995C();
      v42 = *(v60 + 16);
      sub_22273998C();
      sub_22273999C();
      sub_22273996C();
      v40 += 8;
      --v39;
    }

    while (v39);
  }

  v43 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v44 = sub_22273916C();

  v45 = sub_22273916C();

  sub_2226E8134();
  v46 = sub_22273936C();

  v34 = [v43 initWithGenreName:v44 genreID:v45 subgenres:v46];

  (*(v33 + 8))(v37, v32);
  return v34;
}

uint64_t sub_2226E8068(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2226E80D0()
{
  result = qword_27D014138;
  if (!qword_27D014138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014130, &unk_2227449F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014138);
  }

  return result;
}

unint64_t sub_2226E8134()
{
  result = qword_27D014140;
  if (!qword_27D014140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D014140);
  }

  return result;
}

id sub_2226E8180(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v3 = sub_22273823C();
  v15[0] = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227380FC();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014148, &qword_222744A28);
  sub_22273810C();
  v10 = *(v4 + 16);
  v10(v7, a2, v3);
  sub_2226849D4(&qword_27D014150, &qword_27D014148, &qword_222744A28);
  sub_22273870C();
  v11 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014158, &unk_222744A30);
  sub_22273810C();
  v10(v7, a2, v15[0]);
  sub_2226849D4(&qword_27D014160, &qword_27D014158, &unk_222744A30);
  sub_22273870C();
  v12 = v16;
  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithScreenshots:v11 trailers:v16];

  return v13;
}

id sub_2226E8400()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - v6;
  sub_22273810C();
  sub_2227380EC();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v7, v0);
  sub_22273810C();
  sub_2227380EC();
  v12 = v11;
  v10(v5, v0);
  if (!v9)
  {
    v13 = 0;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_6;
  }

  v13 = sub_22273916C();

  if (!v12)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = sub_22273916C();

LABEL_6:
  v15 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithMetadata:v13 description:v14];

  return v15;
}

id sub_2226E8610()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v6 = v5;
  (*(v1 + 8))(v4, v0);
  if (v6)
  {
    v7 = sub_22273916C();
  }

  else
  {
    v7 = 0;
  }

  v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithProductVariantID_];

  return v8;
}

void *sub_2226E877C()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_22273916C();

    v11 = [v9 initWithContentProviderTeamID_];
  }

  else
  {
    v11 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v12 = 0xD000000000000015;
    v12[1] = 0x800000022274CDD0;
    v12[2] = v1;
    (*(*(v11 - 1) + 104))(v12, *MEMORY[0x277D22530], v11);
    swift_willThrow();
  }

  return v11;
}

void *sub_2226E8974()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  sub_2227380EC();
  v8 = v7;
  (*(v3 + 8))(v6, v2);
  if (v8)
  {
    v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v10 = sub_22273916C();

    v11 = [v9 initWithShortName_];
  }

  else
  {
    v11 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v12 = 0x6D614E74726F6873;
    v12[1] = 0xE900000000000065;
    v12[2] = v1;
    (*(*(v11 - 1) + 104))(v12, *MEMORY[0x277D22530], v11);
    swift_willThrow();
  }

  return v11;
}

id sub_2226E8B6C()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  v7 = sub_22273808C();
  (*(v3 + 8))(v6, v2);
  if (v7 != 2)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRequiresSSOEntitlement_];
  }

  v8 = sub_222738FAC();
  sub_22268497C();
  swift_allocError();
  *v9 = 0xD000000000000016;
  v9[1] = 0x800000022274CDF0;
  v9[2] = v1;
  (*(*(v8 - 8) + 104))(v9, *MEMORY[0x277D22530], v8);
  return swift_willThrow();
}

uint64_t sub_2226E8D3C()
{
  v1 = [v0 topic];
  if (v1)
  {
    v2 = v1;
    sub_22273919C();
  }

  [v0 shouldFlush];
  v3 = [v0 fields];
  sub_22273910C();

  v4 = [v0 includingFields];
  v5 = sub_2227394CC();

  sub_2226ADE58(v5, sub_2226E92DC, 0);
  v6 = [v0 includingFields];
  v7 = sub_2227394CC();

  sub_2226AE0E4(v7, sub_2226E932C, 0);

  return sub_22273829C();
}

_BYTE *sub_2226E8EF0(uint64_t a1, uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v2 = sub_22273823C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v28[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_2227380FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2227382CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v11, v30, v7);
  (*(v3 + 16))(v6, v31, v2);
  v17 = v32;
  sub_22273826C();
  if (!v17)
  {
    v30 = v13;
    v31 = v12;
    v32 = 0;
    sub_2227382AC();
    v19 = v18;
    v29 = sub_22273825C();
    sub_2227382BC();
    v20 = sub_22273828C();
    sub_2226AE370(v20, sub_2226E926C, 0);
    v21 = sub_22273827C();
    sub_2226AE388(v21, sub_2226E9298, 0);
    if (v19)
    {
      v22 = sub_22273916C();
    }

    else
    {
      v22 = 0;
    }

    v23 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v24 = sub_2227390FC();

    v25 = sub_2227394BC();

    v26 = sub_2227394BC();

    v11 = [v23 initWithTopic:v22 shouldFlush:v29 & 1 fields:v24 includingFields:v25 excludingFields:v26];

    (*(v30 + 8))(v16, v31);
  }

  return v11;
}

uint64_t sub_2226E926C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222738AAC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2226E9298@<X0>(uint64_t *a1@<X8>)
{
  result = sub_222738A7C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2226E92DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_222738A9C();
}

uint64_t sub_2226E932C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_222738A6C();
}

_OWORD *sub_2226E937C@<X0>(unint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222743D10;
  *(inited + 32) = 0x6C46646C756F6873;
  *(inited + 40) = 0xEB00000000687375;
  v3 = [v1 shouldFlush];
  v4 = MEMORY[0x277D839B0];
  *(inited + 48) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x73646C656966;
  *(inited + 88) = 0xE600000000000000;
  v5 = [v1 fields];
  v6 = sub_22273910C();

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  *(inited + 96) = v6;
  *(inited + 120) = v7;
  *(inited + 128) = 0x6E6964756C636E69;
  *(inited + 136) = 0xEF73646C65694667;
  v8 = [v1 includingFields];
  v9 = sub_2227394CC();

  v10 = *(v9 + 16);
  if (v10)
  {
    v11 = sub_2226959D0(*(v9 + 16), 0);
    v12 = sub_2226E96F0(&v29, v11 + 4, v10, v9);
    sub_2226342B0();
    if (v12 == v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v11 = MEMORY[0x277D84F90];
LABEL_5:
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  *(inited + 144) = v11;
  *(inited + 168) = v13;
  *(inited + 176) = 0x6E6964756C637865;
  *(inited + 184) = 0xEF73646C65694667;
  v14 = [v1 excludingFields];
  v15 = MEMORY[0x277D837D0];
  v16 = sub_2227394CC();

  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = sub_2226959D0(*(v16 + 16), 0);
    v19 = sub_2226E96F0(&v29, v18 + 4, v17, v16);
    sub_2226342B0();
    if (v19 == v17)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_9:
  *(inited + 216) = v13;
  *(inited + 192) = v18;
  v20 = sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  result = [v1 topic];
  if (result)
  {
    v22 = result;
    v23 = sub_22273919C();
    v25 = v24;

    v30 = v15;
    *&v29 = v23;
    *(&v29 + 1) = v25;
    sub_22269457C(&v29, v28);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_22268BC94(v28, 0x6369706F74, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
  }

  a1[3] = v7;
  *a1 = v20;
  return result;
}

void *sub_2226E96F0(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_2226E9848(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = &v60 - v5;
  v67 = sub_2227384AC();
  v69 = *(v67 - 8);
  v6 = *(v69 + 64);
  MEMORY[0x28223BE20](v67);
  v61 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22273823C();
  v64 = *(v8 - 8);
  v65 = v8;
  v9 = *(v64 + 64);
  MEMORY[0x28223BE20](v8);
  v62 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v60 - v13;
  v15 = sub_2227380FC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v60 - v21;
  v23 = sub_222738F9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v60 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v71 = &v60 - v29;
  v68 = a1;
  sub_22273810C();
  sub_22273809C();
  v30 = v24;
  v31 = *(v16 + 8);
  v63 = v15;
  v31(v22, v15);
  if ((*(v30 + 48))(v14, 1, v23) == 1)
  {
    sub_222660468(v14, &qword_27D0141A0, &unk_2227448B0);
    v32 = sub_222738FAC();
    sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v34 = v33;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v34, "instructions");
    *(v34 + 13) = 0;
    *(v34 + 14) = -5120;
    *(v34 + 16) = MetatypeMetadata;
    (*(*(v32 - 1) + 104))(v34, *MEMORY[0x277D22530], v32);
    swift_willThrow();
  }

  else
  {
    v36 = v71;
    (*(v30 + 32))(v71, v14, v23);
    (*(v30 + 16))(v28, v36, v23);
    (*(v64 + 16))(v62, v66, v65);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014168, &qword_222744BA0);
    v37 = v30;
    sub_2226EA75C();
    v38 = sub_2227393EC();
    sub_22273810C();
    v39 = v70;
    sub_22273801C();
    v31(v20, v63);
    v40 = v69;
    v41 = v39;
    v42 = v67;
    v43 = v23;
    if ((*(v69 + 48))(v41, 1, v67) == 1)
    {

      sub_222660468(v70, &qword_27D014128, &qword_2227448A8);
      v32 = sub_222738FAC();
      sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548]);
      swift_allocError();
      v45 = v44;
      v46 = swift_getMetatypeMetadata();
      *v45 = 0x6C65694665676170;
      v45[1] = 0xEA00000000007364;
      v45[2] = v46;
      (*(*(v32 - 1) + 104))(v45, *MEMORY[0x277D22530], v32);
      swift_willThrow();
      (*(v37 + 8))(v71, v43);
    }

    else
    {
      v68 = v30;
      v47 = v61;
      (*(v40 + 32))(v61, v70, v42);
      if (sub_22273849C())
      {
        v48 = *(v38 + 16);
        if (v48)
        {
          v70 = v23;
          v72 = MEMORY[0x277D84F90];
          sub_22273997C();
          v49 = 32;
          do
          {
            v50 = *(v38 + v49);
            sub_22273995C();
            v51 = *(v72 + 16);
            sub_22273998C();
            sub_22273999C();
            sub_22273996C();
            v49 += 8;
            --v48;
          }

          while (v48);

          v40 = v69;
          v43 = v70;
          v47 = v61;
        }

        else
        {
        }

        v56 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        sub_22262E364(0, &qword_27D014178, off_2784B0748);
        v57 = sub_22273936C();

        v58 = sub_2227390FC();

        v32 = [v56 initWithInstructions:v57 pageFields:v58];

        (*(v40 + 8))(v47, v42);
        (*(v68 + 8))(v71, v43);
      }

      else
      {

        v32 = sub_222738FAC();
        sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548]);
        swift_allocError();
        v53 = v52;
        v54 = swift_getMetatypeMetadata();
        v55 = MEMORY[0x277D84F90];
        *v53 = 0x6C65694665676170;
        v53[1] = 0xEA00000000007364;
        v53[2] = v54;
        v53[3] = v55;
        (*(*(v32 - 1) + 104))(v53, *MEMORY[0x277D22540], v32);
        swift_willThrow();
        (*(v40 + 8))(v47, v42);
        (*(v68 + 8))(v71, v43);
      }
    }
  }

  return v32;
}

char *sub_2226EA1D4(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = v33 - v4;
  v6 = sub_222738F9C();
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2227380FC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v33 - v16;
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  sub_22273810C();
  v18 = v37;
  v19 = sub_2226E8EF0(v17, v36);
  if (v18)
  {
    (*(v11 + 8))(v17, v10);
  }

  else
  {
    v33[1] = 0;
    v36 = v9;
    v37 = v19;
    v20 = *(v11 + 8);
    v20(v17, v10);
    sub_22273810C();
    sub_22273809C();
    v20(v15, v10);
    v22 = v34;
    v21 = v35;
    if ((*(v34 + 48))(v5, 1, v35) == 1)
    {
      sub_222660468(v5, &qword_27D0141A0, &unk_2227448B0);
      v15 = sub_222738FAC();
      sub_2226EA714(&qword_27D013300, MEMORY[0x277D22548]);
      swift_allocError();
      v24 = v23;
      MetatypeMetadata = swift_getMetatypeMetadata();
      *v24 = 0xD000000000000010;
      v24[1] = 0x800000022274CE10;
      v24[2] = MetatypeMetadata;
      (*(*(v15 - 1) + 104))(v24, *MEMORY[0x277D22530], v15);
      swift_willThrow();
    }

    else
    {
      v26 = v36;
      (*(v22 + 32))(v36, v5, v21);
      type metadata accessor for ASCMetricsInvocationPoint(0);
      v27 = sub_222738F8C();
      sub_2226AF6D8(v27);

      v28 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_2226EA714(&qword_27D012D10, type metadata accessor for ASCMetricsInvocationPoint);
      v29 = sub_2227394BC();

      v30 = v28;
      v31 = v37;
      v15 = [v30 initWithData:v37 invocationPoints:v29];

      (*(v22 + 8))(v26, v21);
    }
  }

  return v15;
}

uint64_t sub_2226EA678()
{
  type metadata accessor for ASCMetricsInvocationPoint(0);
  sub_2226EA714(&qword_27D012BB8, type metadata accessor for ASCMetricsInvocationPoint);
  return sub_22273805C();
}

uint64_t sub_2226EA714(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2226EA75C()
{
  result = qword_27D014170;
  if (!qword_27D014170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014168, &qword_222744BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014170);
  }

  return result;
}

uint64_t sub_2226EA7C0()
{
  if ([v0 alertButtonOffer])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014830, &qword_222741240);
    type metadata accessor for ObjectGraph();
    sub_222738C9C();
    sub_2226839AC(&v23);
    if (v24)
    {
      sub_222634290(&v23, &v25);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FF0, &qword_2227419A0);
      inited = swift_allocObject();
      *(inited + 16) = xmmword_2227413C0;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      v2 = sub_2227390BC();
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 80) = 0;
      *(inited + 32) = v2;
      *(inited + 40) = v3;
      v4 = [v0 alertButtonTitle];
      if (v4)
      {
        v5 = v4;
        v6 = sub_22273919C();
        v8 = v7;
      }

      else
      {
        __swift_project_boxed_opaque_existential_1(v27, v28);
        v6 = sub_2227390BC();
        v8 = v21;
      }

      sub_22266BCCC(&v25, inited + 104);
      *(inited + 88) = v6;
      *(inited + 96) = v8;
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(&v25);
      __swift_destroy_boxed_opaque_existential_1(v27);
    }

    else
    {
      sub_222660468(&v23, &unk_27D013240, &unk_222741770);
      type metadata accessor for ASCAppOfferActionError(0);
      *&v23 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2227412F0;
      v14 = *MEMORY[0x277CCA450];
      *(inited + 32) = sub_22273919C();
      *(inited + 40) = v15;
      v25 = 0;
      v26 = 0xE000000000000000;
      sub_22273991C();
      swift_getObjectType();
      v16 = sub_222739D2C();
      v18 = v17;

      v25 = v16;
      v26 = v18;
      MEMORY[0x223DBE5D0](0xD00000000000001ELL, 0x80000002227481D0);
      v19 = v25;
      v20 = v26;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 48) = v19;
      *(inited + 56) = v20;
      sub_222710688(inited);
      swift_setDeallocating();
      sub_222660468(inited + 32, &qword_27D013250, &unk_222741780);
      sub_2226EB9D4(&qword_27D012C20, type metadata accessor for ASCAppOfferActionError);
      sub_22273725C();
      swift_willThrow();
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  else
  {
    v9 = [v0 alertButtonTitle];
    if (v9)
    {
      v10 = v9;
      v11 = sub_22273919C();
      v13 = v12;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D012FF0, &qword_2227419A0);
      inited = swift_allocObject();
      *(inited + 16) = xmmword_2227412F0;
      *(inited + 48) = 0u;
      *(inited + 64) = 0u;
      *(inited + 80) = 0;
      *(inited + 32) = v11;
      *(inited + 40) = v13;
    }

    else
    {
      return MEMORY[0x277D84F90];
    }
  }

  return inited;
}

void *sub_2226EABAC(void *a1, uint64_t a2)
{
  v126 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v119 = &v107 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v107 - v7;
  v125 = sub_22273823C();
  v123 = *(v125 - 8);
  v8 = v123[8];
  v9 = MEMORY[0x28223BE20](v125);
  v112 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v107 - v11;
  v13 = sub_2227380FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v114 = &v107 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v113 = &v107 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v111 = &v107 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v120 = &v107 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v117 = &v107 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v116 = &v107 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v107 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v33 = &v107 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v107 - v34;
  v36 = a1;
  sub_22273810C();
  v115 = sub_2227380EC();
  v38 = v37;
  v41 = *(v14 + 8);
  v40 = v14 + 8;
  v39 = v41;
  v41(v35, v13);
  v127 = v38;
  if (!v38)
  {
    v52 = sub_222738FAC();
    sub_2226EB9D4(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v54 = v53;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v54 = 0x7469547472656C61;
    v54[1] = 0xEA0000000000656CLL;
    v54[2] = MetatypeMetadata;
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D22530], v52);
LABEL_7:
    swift_willThrow();
    return v36;
  }

  v129 = v39;
  sub_22273810C();
  v42 = sub_2227380EC();
  v44 = v43;
  v122 = v40;
  v129(v33, v13);
  if (!v44)
  {

    v56 = sub_222738FAC();
    sub_2226EB9D4(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v58 = v57;
    v59 = swift_getMetatypeMetadata();
    strcpy(v58, "alertMessage");
    *(v58 + 13) = 0;
    *(v58 + 14) = -5120;
    *(v58 + 16) = v59;
    (*(*(v56 - 8) + 104))(v58, *MEMORY[0x277D22530], v56);
    goto LABEL_7;
  }

  v109 = v42;
  v110 = v44;
  v121 = v13;
  v45 = v36;
  sub_22273810C();
  v46 = v123;
  v47 = v123[2];
  v48 = v125;
  v47(v12, v126, v125);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v49 = v124;
  v50 = sub_2226F3C10();
  v124 = v49;
  if (v49)
  {

    v51 = v46[1];
    v36 = v46 + 1;
    v51(v12, v48);
    v129(v30, v121);
    return v36;
  }

  v107 = v47;
  v108 = v50;
  (v46[1])(v12, v48);
  v60 = v121;
  v61 = v129;
  v129(v30, v121);
  v62 = v116;
  v123 = v45;
  sub_22273810C();
  v63 = v118;
  sub_22273801C();
  v61(v62, v60);
  v64 = sub_2227384AC();
  v65 = *(v64 - 8);
  v36 = (v65 + 48);
  v116 = *(v65 + 48);
  if ((v116)(v63, 1, v64) == 1)
  {
    sub_222660468(v63, &qword_27D014128, &qword_2227448A8);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EB9D4(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v66 = sub_22273849C();
    (*(v65 + 8))(v63, v64);
    if (v66)
    {
      v118 = v66;
      goto LABEL_13;
    }
  }

  v118 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_13:
  v67 = v117;
  sub_22273810C();
  v68 = v119;
  sub_22273801C();
  v129(v67, v121);
  if ((v116)(v68, 1, v64) == 1)
  {
    sub_222660468(v68, &qword_27D014128, &qword_2227448A8);
    v69 = v120;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EB9D4(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v70 = sub_22273849C();
    (*(v65 + 8))(v68, v64);
    v69 = v120;
    if (v70)
    {
      goto LABEL_17;
    }
  }

  sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_17:
  sub_22273810C();
  v71 = sub_22273806C();
  if (v72)
  {

    v73 = sub_222738FAC();
    sub_2226EB9D4(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v75 = v74;
    type metadata accessor for ASCOfferFlags(0);
    v76 = MEMORY[0x277D84F90];
    *v75 = 0x65756C6156776172;
    v75[1] = 0xE800000000000000;
    v75[2] = v77;
    v75[3] = v76;
    (*(*(v73 - 8) + 104))(v75, *MEMORY[0x277D22540], v73);
    swift_willThrow();

    v129(v69, v121);
  }

  else
  {
    v120 = v71;
    v78 = v121;
    v79 = v129;
    v129(v69, v121);
    v80 = v111;
    sub_22273810C();
    v119 = sub_2227380DC();
    v79(v80, v78);
    v81 = v113;
    sub_22273810C();
    v107(v112, v126, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v82 = sub_2227393DC();
    v83 = *(v82 + 16);
    if (v83)
    {
      v130 = MEMORY[0x277D84F90];
      sub_22273997C();
      v84 = 32;
      do
      {
        v85 = *(v82 + v84);
        sub_22273995C();
        v86 = *(v130 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v84 += 8;
        --v83;
      }

      while (v83);
    }

    sub_22273810C();
    v87 = sub_222683D28(v81, v126);
    v88 = v121;
    v89 = v129;
    v129(v81, v121);
    v90 = v114;
    sub_22273810C();
    v126 = sub_2227380EC();
    v92 = v91;
    v89(v90, v88);
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EB9D4(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v93 = sub_2227390FC();

    v94 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v129 = sub_22273936C();

    v95 = sub_22273916C();

    v96 = sub_22273916C();

    if (v92)
    {
      v97 = sub_22273916C();
    }

    else
    {
      v97 = 0;
    }

    v128 = v97;
    v98 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v105 = v87;
    v106 = v97;
    v104 = v95;
    v99 = v108;
    v100 = v119;
    v101 = v95;
    v102 = v129;
    v36 = [v98 initWithID:v108 titles:v93 subtitles:v94 flags:v120 ageRating:v119 metrics:v129 alertTitle:v104 alertMessage:v96 alertButtonOffer:v105 alertButtonTitle:v106];

    swift_unknownObjectRelease();
  }

  return v36;
}

unint64_t sub_2226EB970()
{
  result = qword_281313F78;
  if (!qword_281313F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D014180, &unk_222744C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313F78);
  }

  return result;
}

uint64_t sub_2226EB9D4(unint64_t *a1, void (*a2)(uint64_t))
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

char *sub_2226EBA1C(uint64_t a1, uint64_t a2)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v103 = v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v102 = v91 - v7;
  v110 = sub_22273823C();
  v108 = *(v110 - 8);
  v8 = *(v108 + 64);
  v9 = MEMORY[0x28223BE20](v110);
  v97 = v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = v91 - v11;
  v13 = sub_2227380FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v96 = v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v95 = v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v104 = v91 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v101 = v91 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v100 = v91 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = v91 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = v91 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = v91 - v32;
  v34 = a1;
  sub_22273810C();
  v98 = sub_2227380EC();
  v36 = v35;
  v39 = *(v14 + 8);
  v37 = v14 + 8;
  v38 = v39;
  v39(v33, v13);
  if (!v36)
  {
    v12 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v48 = v47;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v48 = 0x6973726556707061;
    v50 = 0xEC00000064496E6FLL;
LABEL_7:
    v48[1] = v50;
    v48[2] = MetatypeMetadata;
    (*(*(v12 - 1) + 104))(v48, *MEMORY[0x277D22530], v12);
    swift_willThrow();
    return v12;
  }

  v107 = v36;
  sub_22273810C();
  v93 = sub_2227380EC();
  v41 = v40;
  v105 = v37;
  v106 = v13;
  v38(v31, v13);
  if (!v41)
  {

    v12 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v48 = v51;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v48 = 0x7562697274736964;
    v50 = 0xED00006449726F74;
    goto LABEL_7;
  }

  v99 = v38;
  v94 = v41;
  sub_22273810C();
  v42 = v108;
  v43 = *(v108 + 16);
  v44 = v110;
  v43(v12, v111, v110);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v45 = v109;
  v46 = sub_2226F3C10();
  if (v45)
  {

    (*(v42 + 8))(v12, v44);
    v99(v28, v106);
    return v12;
  }

  v91[0] = v43;
  v92 = v46;
  v91[1] = 0;
  (*(v42 + 8))(v12, v44);
  v53 = v106;
  v54 = v99;
  v99(v28, v106);
  v55 = v100;
  v109 = v34;
  sub_22273810C();
  v56 = v102;
  sub_22273801C();
  v54(v55, v53);
  v57 = sub_2227384AC();
  v58 = *(v57 - 8);
  v59 = *(v58 + 48);
  if (v59(v56, 1, v57) == 1)
  {
    sub_2226EC694(v56);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v60 = sub_22273849C();
    (*(v58 + 8))(v56, v57);
    if (v60)
    {
      v108 = v60;
      goto LABEL_14;
    }
  }

  v108 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_14:
  v61 = v101;
  sub_22273810C();
  v62 = v103;
  sub_22273801C();
  v99(v61, v53);
  if (v59(v62, 1, v57) == 1)
  {
    sub_2226EC694(v62);
    v63 = v111;
    v64 = v104;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v65 = sub_22273849C();
    v66 = v62;
    v67 = v65;
    (*(v58 + 8))(v66, v57);
    v63 = v111;
    v64 = v104;
    if (v67)
    {
      goto LABEL_18;
    }
  }

  sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_18:
  sub_22273810C();
  v68 = sub_22273806C();
  if (v69)
  {

    v12 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v71 = v70;
    type metadata accessor for ASCOfferFlags(0);
    v72 = MEMORY[0x277D84F90];
    *v71 = 0x65756C6156776172;
    v71[1] = 0xE800000000000000;
    v71[2] = v73;
    v71[3] = v72;
    (*(*(v12 - 1) + 104))(v71, *MEMORY[0x277D22540], v12);
    swift_willThrow();

    v99(v64, v106);
  }

  else
  {
    v111 = v68;
    v74 = v64;
    v75 = v106;
    v76 = v99;
    v99(v74, v106);
    v77 = v95;
    sub_22273810C();
    v78 = sub_2227380DC();
    v76(v77, v75);
    sub_22273810C();
    (v91[0])(v97, v63, v110);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v79 = sub_2227393DC();
    v80 = *(v79 + 16);
    if (v80)
    {
      v112 = MEMORY[0x277D84F90];
      sub_22273997C();
      v81 = 32;
      do
      {
        v82 = *(v79 + v81);
        sub_22273995C();
        v83 = *(v112 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v81 += 8;
        --v80;
      }

      while (v80);
    }

    v84 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v85 = sub_2227390FC();

    v86 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v87 = sub_22273936C();

    v88 = sub_22273916C();

    v89 = sub_22273916C();

    v90 = v92;
    v12 = [v84 initWithID:v92 titles:v85 subtitles:v86 flags:v111 ageRating:v78 metrics:v87 appVersionId:v88 distributorId:v89];
  }

  return v12;
}

uint64_t sub_2226EC694(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2226EC6FC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226EC744()
{
  v1 = [v0 baseBuyParams];
  v2 = sub_22273919C();
  v4 = v3;

  v5 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v5 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = [v0 baseBuyParams];
    v7 = sub_22273919C();
    v9 = v8;

    v10 = sub_222694EC0(0, 1, 1, MEMORY[0x277D84F90]);
    v12 = *(v10 + 2);
    v11 = *(v10 + 3);
    if (v12 >= v11 >> 1)
    {
      v10 = sub_222694EC0((v11 > 1), v12 + 1, 1, v10);
    }

    *(v10 + 2) = v12 + 1;
    v13 = &v10[16 * v12];
    *(v13 + 4) = v7;
    *(v13 + 5) = v9;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v14 = [v0 metricsBuyParams];
  v15 = sub_22273919C();
  v17 = v16;

  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    v19 = [v0 metricsBuyParams];
    v20 = sub_22273919C();
    v22 = v21;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_222694EC0(0, *(v10 + 2) + 1, 1, v10);
    }

    v24 = *(v10 + 2);
    v23 = *(v10 + 3);
    if (v24 >= v23 >> 1)
    {
      v10 = sub_222694EC0((v23 > 1), v24 + 1, 1, v10);
    }

    *(v10 + 2) = v24 + 1;
    v25 = &v10[16 * v24];
    *(v25 + 4) = v20;
    *(v25 + 5) = v22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AA8, &qword_222742EE0);
  sub_22262BED4(&qword_281312DD0, &qword_27D013AA8, &qword_222742EE0);
  v26 = sub_22273913C();

  return v26;
}

uint64_t sub_2226EC9A0@<X0>(uint64_t a1@<X8>)
{
  v50 = sub_2227370AC();
  v3 = *(v50 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v50);
  v49 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v46 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014190, &qword_222744C48);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46 - v17;
  v51 = 0x2F2F3A7370747468;
  v52 = 0xE90000000000003FLL;
  v19 = [v1 baseBuyParams];
  v20 = sub_22273919C();
  v22 = v21;

  MEMORY[0x223DBE5D0](v20, v22);

  sub_2227370DC();

  v23 = sub_2227370EC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v18, 1, v23) == 1)
  {
    sub_222660468(v18, &qword_27D014190, &qword_222744C48);
LABEL_29:

LABEL_30:
    v40 = 1;
LABEL_31:
    v41 = sub_222737C2C();
    return (*(*(v41 - 8) + 56))(a1, v40, 1, v41);
  }

  v25 = sub_2227370BC();
  (*(v24 + 8))(v18, v23);
  if (!v25)
  {
    goto LABEL_29;
  }

  v47 = v9;
  v26 = *(v25 + 16);

  if (v26)
  {
    v48 = v14;
    v46 = a1;
    v28 = 0;
    while (1)
    {
      if (v28 >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_38;
      }

      (*(v3 + 16))(v12, v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v50);
      if (sub_22273708C() == 0x54746375646F7270 && v29 == 0xEB00000000657079)
      {
        break;
      }

      v30 = sub_222739B4C();

      if (v30)
      {
        goto LABEL_14;
      }

      ++v28;
      result = (*(v3 + 8))(v12, v50);
      if (v26 == v28)
      {
        LODWORD(v48) = 0;
        a1 = v46;
        goto LABEL_21;
      }
    }

LABEL_14:

    v31 = v48;
    v32 = v50;
    (*(v3 + 32))(v48, v12, v50);
    v33 = sub_22273709C();
    v35 = v34;
    result = (*(v3 + 8))(v31, v32);
    a1 = v46;
    if (!v35)
    {
      LODWORD(v48) = 0;
      v36 = *(v25 + 16);
      if (v36)
      {
        goto LABEL_22;
      }

LABEL_28:

      if (v48)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }

    if (v33 == 65 && v35 == 0xE100000000000000)
    {
      LODWORD(v48) = 1;
    }

    else
    {
      LODWORD(v48) = sub_222739B4C();
    }
  }

  else
  {
    LODWORD(v48) = 0;
  }

LABEL_21:

  v36 = *(v25 + 16);
  if (!v36)
  {
    goto LABEL_28;
  }

LABEL_22:
  v37 = 0;
  while (v37 < *(v25 + 16))
  {
    (*(v3 + 16))(v49, v25 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v37, v50);
    if (sub_22273708C() == 0x41656C62616C6173 && v38 == 0xED000064496D6164)
    {

LABEL_33:

      v42 = v47;
      v43 = v50;
      (*(v3 + 32))(v47, v49, v50);
      sub_22273709C();
      v45 = v44;
      (*(v3 + 8))(v42, v43);
      if ((v48 & 1) == 0)
      {
        goto LABEL_29;
      }

      if (v45)
      {
        sub_222737C0C();
        v40 = 0;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    v39 = sub_222739B4C();

    if (v39)
    {
      goto LABEL_33;
    }

    ++v37;
    result = (*(v3 + 8))(v49, v50);
    if (v36 == v37)
    {
      goto LABEL_28;
    }
  }

LABEL_38:
  __break(1u);
  return result;
}

char *sub_2226ED04C(uint64_t a1, void *a2)
{
  v192 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v181 = v159 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v182 = v159 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v179 = v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v186 = v159 - v14;
  MEMORY[0x28223BE20](v13);
  v185 = v159 - v15;
  v194 = sub_22273823C();
  v190 = *(v194 - 8);
  v16 = v190[8];
  v17 = MEMORY[0x28223BE20](v194);
  v175 = v159 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v189 = v159 - v19;
  v20 = sub_2227380FC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v178 = v159 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v177 = v159 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v176 = v159 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v174 = v159 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v173 = v159 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v187 = v159 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v184 = v159 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v183 = v159 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v188 = (v159 - v40);
  v41 = MEMORY[0x28223BE20](v39);
  v193 = v159 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v45 = v159 - v44;
  v46 = MEMORY[0x28223BE20](v43);
  v48 = v159 - v47;
  v49 = MEMORY[0x28223BE20](v46);
  v51 = v159 - v50;
  MEMORY[0x28223BE20](v49);
  v53 = v159 - v52;
  v54 = a1;
  sub_22273810C();
  v180 = sub_2227380EC();
  v56 = v55;
  v59 = *(v21 + 8);
  v57 = v21 + 8;
  v58 = v59;
  (v59)(v53, v20);
  if (!v56)
  {
    v78 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v80 = v79;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v80, "baseBuyParams");
    *(v80 + 14) = -4864;
LABEL_13:
    *(v80 + 16) = MetatypeMetadata;
    (*(*(v78 - 8) + 104))(v80, *MEMORY[0x277D22530], v78);
    swift_willThrow();
    return v45;
  }

  v195 = v56;
  v60 = 0x800000022274CE70;
  sub_22273810C();
  v171 = sub_2227380EC();
  v62 = v61;
  (v58)(v51, v20);
  if (!v62)
  {

    v78 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v80 = v82;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v80 = 0xD000000000000010;
LABEL_12:
    *(v80 + 8) = v60;
    goto LABEL_13;
  }

  v63 = v20;
  v172 = v62;
  sub_22273810C();
  v64 = sub_2227380EC();
  v66 = v65;
  (v58)(v48, v63);
  if (!v66)
  {

    v78 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v80 = v83;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v80 = 0x4449656C646E7562;
    *(v80 + 8) = 0xE800000000000000;
    goto LABEL_13;
  }

  v169 = v64;
  v60 = 0xE800000000000000;
  sub_22273810C();
  v168 = sub_2227380EC();
  v68 = v67;
  (v58)(v45, v63);
  if (!v68)
  {

    v78 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v80 = v84;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v80 = 0x656D614E6D657469;
    goto LABEL_12;
  }

  v170 = v68;
  v45 = v193;
  sub_22273810C();
  v69 = sub_2227380EC();
  v71 = v70;
  v193 = v58;
  (v58)(v45, v63);
  if (!v71)
  {

    v78 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v80 = v86;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v80 = 0x614E726F646E6576;
    *(v80 + 8) = 0xEA0000000000656DLL;
    goto LABEL_13;
  }

  v166 = v57;
  v165 = v66;
  v164 = v69;
  v72 = v188;
  v167 = v54;
  sub_22273810C();
  v73 = v189;
  v74 = v190;
  v75 = (v190 + 2);
  v45 = v190[2];
  (v45)(v189, v192, v194);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v76 = v191;
  v77 = sub_2226F3C10();
  if (v76)
  {

    (v74[1])(v73, v194);
    (v193)(v72, v63);
    return v45;
  }

  v160 = v45;
  v161 = v71;
  v162 = v77;
  v163 = 0;
  (v74[1])(v73, v194);
  v87 = v193;
  (v193)(v72, v63);
  v88 = v183;
  sub_22273810C();
  v89 = v185;
  sub_22273801C();
  (v87)(v88, v63);
  v90 = sub_2227384AC();
  v91 = *(v90 - 8);
  v92 = v91 + 48;
  v190 = *(v91 + 6);
  v93 = (v190)(v89, 1, v90);
  v191 = v63;
  v188 = v91;
  v159[1] = v75;
  if (v93 == 1)
  {
    sub_222660468(v89, &qword_27D014128, &qword_2227448A8);
    v94 = v186;
    v95 = v187;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v63 = v191;
    v96 = sub_22273849C();
    (*(v91 + 1))(v89, v90);
    v94 = v186;
    v95 = v187;
    if (v96)
    {
      v45 = v92;
      v189 = v96;
      goto LABEL_21;
    }
  }

  v45 = v92;
  v189 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_21:
  v97 = v184;
  sub_22273810C();
  sub_22273801C();
  (v193)(v97, v63);
  v98 = (v190)(v94, 1, v90);
  v183 = v90;
  if (v98 == 1)
  {
    sub_222660468(v94, &qword_27D014128, &qword_2227448A8);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v99 = sub_22273849C();
    v188[1](v94, v90);
    if (v99)
    {
      goto LABEL_25;
    }
  }

  v99 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_25:
  sub_22273810C();
  v100 = sub_22273806C();
  if (v101)
  {

    v102 = sub_222738FAC();
    sub_2226EEEA8(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v104 = v103;
    type metadata accessor for ASCOfferFlags(0);
    v105 = MEMORY[0x277D84F90];
    *v104 = 0x65756C6156776172;
    v104[1] = 0xE800000000000000;
    v104[2] = v106;
    v104[3] = v105;
    (*(*(v102 - 8) + 104))(v104, *MEMORY[0x277D22540], v102);
    swift_willThrow();

    (v193)(v95, v191);
  }

  else
  {
    v185 = v99;
    v187 = v100;
    v107 = v191;
    v108 = v193;
    (v193)(v95, v191);
    v109 = v173;
    sub_22273810C();
    v186 = sub_2227380DC();
    (v108)(v109, v107);
    sub_22273810C();
    (v160)(v175, v192, v194);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_22262BED4(&qword_281313F78, &qword_27D014180, &unk_222744C00);
    v110 = sub_2227393DC();
    v111 = *(v110 + 16);
    if (v111)
    {
      v197 = MEMORY[0x277D84F90];
      sub_22273997C();
      v112 = 32;
      v113 = v183;
      do
      {
        v114 = *(v110 + v112);
        sub_22273995C();
        v115 = *(v197 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v112 += 8;
        --v111;
      }

      while (v111);

      v194 = v197;
    }

    else
    {

      v194 = MEMORY[0x277D84F90];
      v113 = v183;
    }

    v116 = v176;
    sub_22273810C();
    v117 = v179;
    sub_22273801C();
    (v193)(v116, v191);
    v118 = (v190)(v117, 1, v113);
    v119 = v181;
    if (v118 == 1)
    {
      sub_222660468(v117, &qword_27D014128, &qword_2227448A8);
      v192 = 0;
    }

    else
    {
      v192 = sub_22273849C();
      v188[1](v117, v113);
    }

    v120 = v163;
    v121 = v182;
    v122 = v177;
    sub_22273810C();
    sub_22273807C();
    v123 = v122;
    v124 = v191;
    v125 = v193;
    (v193)(v123, v191);
    v126 = v178;
    sub_22273810C();
    sub_22273809C();
    (v125)(v126, v124);
    v127 = sub_222738F9C();
    v128 = *(v127 - 8);
    if ((*(v128 + 48))(v119, 1, v127) == 1)
    {
      sub_222660468(v119, &qword_27D0141A0, &unk_2227448B0);
      v129 = 0;
    }

    else
    {
      v130 = sub_222738F8C();
      v131 = v119;
      v129 = v130;
      (*(v128 + 8))(v131, v127);
    }

    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v132 = sub_2227390FC();

    v133 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v193 = sub_22273936C();

    v134 = sub_22273916C();

    v195 = sub_22273916C();

    v163 = v120;
    if (v192)
    {
      v194 = sub_2227390FC();
    }

    else
    {
      v194 = 0;
    }

    v135 = sub_22273731C();
    v136 = *(v135 - 8);
    v137 = 0;
    if ((*(v136 + 48))(v121, 1, v135) != 1)
    {
      v137 = sub_2227372BC();
      (*(v136 + 8))(v121, v135);
    }

    v138 = sub_22273916C();

    v139 = sub_22273916C();

    v140 = sub_22273916C();

    if (v129)
    {
      v141 = sub_22273936C();
    }

    else
    {
      v141 = 0;
    }

    v192 = v141;
    v142 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v157 = v140;
    v158 = v141;
    v155 = v138;
    v156 = v139;
    v190 = v138;
    v143 = v137;
    v154 = v137;
    v191 = v139;
    v144 = v194;
    v196 = v140;
    v145 = v195;
    v153 = v134;
    v146 = v162;
    v147 = v132;
    v148 = v133;
    v189 = v134;
    v149 = v133;
    v150 = v132;
    v151 = v186;
    v152 = v193;
    v45 = [v142 initWithID:v162 titles:v147 subtitles:v148 flags:v187 ageRating:v186 metrics:v193 baseBuyParams:v153 metricsBuyParams:v195 additionalHeaders:v194 preflightPackageURL:v154 bundleID:v155 itemName:v156 vendorName:v157 capabilities:v158];
  }

  return v45;
}

char *sub_2226EE6A0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_22273731C();
  v74 = *(v5 - 8);
  v6 = *(v74 + 64);
  MEMORY[0x28223BE20](v5);
  v73 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2227378EC();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    if (([a2 flags] & 2) == 0)
    {
      v76 = v10;
      v77 = v11;
      goto LABEL_6;
    }
  }

  v12 = [v3 baseBuyParams];
  v76 = sub_22273919C();
  v77 = v13;

LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130A0, &unk_222741640);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_222744C10;
  *(inited + 32) = 25705;
  v78 = inited + 32;
  *(inited + 40) = 0xE200000000000000;
  v15 = [v3 id];
  v16 = [v15 stringValue];

  v17 = sub_22273919C();
  v19 = v18;

  v20 = MEMORY[0x277D837D0];
  *(inited + 48) = v17;
  *(inited + 56) = v19;
  *(inited + 72) = v20;
  *(inited + 80) = 0x73656C746974;
  *(inited + 88) = 0xE600000000000000;
  v21 = [v3 titles];
  type metadata accessor for ASCOfferTitleVariant(0);
  sub_2226EEEA8(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
  v22 = sub_22273910C();

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014188, &qword_222744C40);
  *(inited + 96) = v22;
  *(inited + 120) = v23;
  *(inited + 128) = 0x656C746974627573;
  *(inited + 136) = 0xE900000000000073;
  v24 = [v3 subtitles];
  v25 = sub_22273910C();

  *(inited + 144) = v25;
  *(inited + 168) = v23;
  *(inited + 176) = 0x7367616C66;
  *(inited + 184) = 0xE500000000000000;
  v26 = [v3 flags];
  v27 = MEMORY[0x277D83B88];
  *(inited + 192) = v26;
  *(inited + 216) = v27;
  *(inited + 224) = 0x7363697274656DLL;
  *(inited + 232) = 0xE700000000000000;
  v28 = [v3 metrics];
  sub_22262E364(0, &qword_281312D38, off_2784B06F0);
  v29 = sub_22273937C();

  if (v29 >> 62)
  {
    v30 = sub_22273984C();
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v79 = v3;
  v75 = v5;
  if (v30)
  {
    *&v81[0] = MEMORY[0x277D84F90];
    result = sub_2226AE788(0, v30 & ~(v30 >> 63), 0);
    if (v30 < 0)
    {
      __break(1u);
      return result;
    }

    v32 = 0;
    v33 = *&v81[0];
    do
    {
      if ((v29 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x223DBEC70](v32, v29);
      }

      else
      {
        v34 = *(v29 + 8 * v32 + 32);
      }

      v35 = v34;
      sub_2226E937C(&v82);

      *&v81[0] = v33;
      v37 = *(v33 + 16);
      v36 = *(v33 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2226AE788((v36 > 1), v37 + 1, 1);
        v33 = *&v81[0];
      }

      ++v32;
      *(v33 + 16) = v37 + 1;
      sub_22269457C(&v82, (v33 + 32 * v37 + 32));
    }

    while (v30 != v32);

    v20 = MEMORY[0x277D837D0];
  }

  else
  {

    v33 = MEMORY[0x277D84F90];
  }

  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014640, &qword_222745960);
  *(inited + 240) = v33;
  *(inited + 264) = v38;
  strcpy((inited + 272), "baseBuyParams");
  *(inited + 286) = -4864;
  v39 = v77;
  *(inited + 288) = v76;
  *(inited + 296) = v39;
  *(inited + 312) = v20;
  *(inited + 320) = 0xD000000000000010;
  *(inited + 328) = 0x800000022274CE70;
  v40 = v79;
  v41 = [v79 metricsBuyParams];
  v42 = sub_22273919C();
  v44 = v43;

  *(inited + 336) = v42;
  *(inited + 344) = v44;
  *(inited + 360) = v20;
  *(inited + 368) = 0x4449656C646E7562;
  *(inited + 376) = 0xE800000000000000;
  v45 = [v40 bundleID];
  v46 = sub_22273919C();
  v48 = v47;

  *(inited + 384) = v46;
  *(inited + 392) = v48;
  *(inited + 408) = v20;
  *(inited + 416) = 0x656D614E6D657469;
  *(inited + 424) = 0xE800000000000000;
  v49 = [v40 itemName];
  v50 = sub_22273919C();
  v52 = v51;

  *(inited + 432) = v50;
  *(inited + 440) = v52;
  *(inited + 456) = v20;
  *(inited + 464) = 0x614E726F646E6576;
  *(inited + 472) = 0xEA0000000000656DLL;
  v53 = [v40 vendorName];
  v54 = sub_22273919C();
  v56 = v55;

  *(inited + 504) = v20;
  *(inited + 480) = v54;
  *(inited + 488) = v56;
  v57 = sub_222710688(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013250, &unk_222741780);
  swift_arrayDestroy();
  v58 = [v40 additionalHeaders];
  if (v58)
  {
    v59 = v58;
    v60 = sub_22273910C();

    v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B50, &unk_2227452B0);
    *&v82 = v60;
    sub_22269457C(&v82, v81);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_22268BC94(v81, 0xD000000000000011, 0x800000022274CEB0, isUniquelyReferenced_nonNull_native);
    v57 = v80;
  }

  v62 = [v40 preflightPackageURL];
  if (v62)
  {
    v63 = v73;
    v64 = v62;
    sub_2227372FC();

    v65 = sub_22273729C();
    v83 = v20;
    *&v82 = v65;
    *(&v82 + 1) = v66;
    sub_22269457C(&v82, v81);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_22268BC94(v81, 0xD000000000000013, 0x800000022274CE90, v67);
    (*(v74 + 8))(v63, v75);
    v57 = v80;
  }

  v68 = [v40 ageRating];
  if (v68)
  {
    v69 = v68;
    v83 = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    *&v82 = v69;
    sub_22269457C(&v82, v81);
    v70 = v69;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    v80 = v57;
    sub_22268BC94(v81, 0x6E69746152656761, 0xE900000000000067, v71);

    return v80;
  }

  return v57;
}

uint64_t sub_2226EEEA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2226EEF3C(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (![v3 *a3])
  {
    return 0;
  }

  ObjectType = swift_getObjectType();
  v5 = swift_conformsToProtocol2();
  if (v5)
  {
    v6 = *(v5 + 8);
    v7 = v5;
    swift_unknownObjectRetain();
    v8 = v6(ObjectType, v7);
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  swift_unknownObjectRelease();
  return v8;
}

void (*sub_2226EEFF8(uint64_t a1, uint64_t a2))(char *, uint64_t, uint64_t)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v96 = v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = v85 - v8;
  v103 = sub_22273823C();
  v101 = *(v103 - 8);
  v9 = *(v101 + 64);
  v10 = MEMORY[0x28223BE20](v103);
  v90 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v100 = v85 - v12;
  v13 = sub_2227380FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v89 = v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v97 = v85 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v94 = v85 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v93 = v85 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v85 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = v85 - v27;
  v29 = a1;
  sub_22273810C();
  v30 = a2;
  v31 = sub_222683D28(v28, a2);
  v34 = *(v14 + 8);
  v32 = v14 + 8;
  v33 = v34;
  v34(v28, v13);
  if (!v31)
  {
    v38 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v43 = v42;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v43 = 0xD000000000000012;
    v43[1] = 0x800000022274CED0;
    v43[2] = MetatypeMetadata;
    (*(*(v38 - 1) + 104))(v43, *MEMORY[0x277D22530], v38);
    swift_willThrow();
    return v38;
  }

  v98 = v31;
  sub_22273810C();
  v35 = sub_222683D28(v28, v30);
  v99 = v13;
  v33(v28, v13);
  if (!v35)
  {
    v38 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v46 = v45;
    v47 = swift_getMetatypeMetadata();
    *v46 = 0x6269726373627573;
    v46[1] = 0xEF726566664F6465;
    v46[2] = v47;
    (*(*(v38 - 1) + 104))(v46, *MEMORY[0x277D22530], v38);
    swift_willThrow();
    swift_unknownObjectRelease();
    return v38;
  }

  v91 = v32;
  v92 = v33;
  v88 = v35;
  sub_22273810C();
  v37 = v100;
  v36 = v101;
  v39 = v101 + 16;
  v38 = *(v101 + 16);
  v38(v100, v30, v103);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v40 = v102;
  v41 = sub_2226F3C10();
  v102 = v40;
  if (v40)
  {
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v36 + 8))(v37, v103);
    v92(v26, v99);
    return v38;
  }

  v85[0] = v38;
  v85[1] = v39;
  v86 = v30;
  v87 = v41;
  (*(v36 + 8))(v37, v103);
  v48 = v29;
  v49 = v99;
  v50 = v92;
  v92(v26, v99);
  v51 = v93;
  v101 = v48;
  sub_22273810C();
  v52 = v95;
  sub_22273801C();
  v50(v51, v49);
  v53 = sub_2227384AC();
  v54 = *(v53 - 8);
  v55 = *(v54 + 48);
  if (v55(v52, 1, v53) == 1)
  {
    sub_2226EC694(v52);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v56 = sub_22273849C();
    (*(v54 + 8))(v52, v53);
    if (v56)
    {
      v100 = v56;
      goto LABEL_12;
    }
  }

  v100 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_12:
  v57 = v94;
  sub_22273810C();
  v58 = v96;
  sub_22273801C();
  v92(v57, v99);
  if (v55(v58, 1, v53) == 1)
  {
    sub_2226EC694(v58);
    v59 = v86;
    v60 = v97;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v61 = sub_22273849C();
    (*(v54 + 8))(v58, v53);
    v59 = v86;
    v60 = v97;
    if (v61)
    {
      goto LABEL_16;
    }
  }

  v61 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_16:
  v62 = v99;
  sub_22273810C();
  v63 = sub_22273806C();
  if (v64)
  {

    v38 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v66 = v65;
    type metadata accessor for ASCOfferFlags(0);
    v67 = MEMORY[0x277D84F90];
    *v66 = 0x65756C6156776172;
    v66[1] = 0xE800000000000000;
    v66[2] = v68;
    v66[3] = v67;
    (*(*(v38 - 1) + 104))(v66, *MEMORY[0x277D22540], v38);
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v92(v60, v62);
  }

  else
  {
    v97 = v63;
    v99 = v61;
    v69 = v60;
    v70 = v92;
    v92(v69, v62);
    v71 = v89;
    sub_22273810C();
    v96 = sub_2227380DC();
    v70(v71, v62);
    sub_22273810C();
    (v85[0])(v90, v59, v103);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v72 = sub_2227393DC();
    v73 = *(v72 + 16);
    if (v73)
    {
      v104 = MEMORY[0x277D84F90];
      sub_22273997C();
      v74 = 32;
      do
      {
        v75 = *(v72 + v74);
        sub_22273995C();
        v76 = *(v104 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v74 += 8;
        --v73;
      }

      while (v73);
    }

    v77 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v78 = sub_2227390FC();

    v79 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v80 = sub_22273936C();

    v81 = v77;
    v82 = v87;
    v83 = v96;
    v38 = [v81 initWithID:v87 titles:v78 subtitles:v79 flags:v97 ageRating:v96 metrics:v80 notSubscribedOffer:v98 subscribedOffer:v88];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v38;
}

char *sub_2226EFC34(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v141 = &v126 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v140 = &v126 - v8;
  v149 = sub_22273823C();
  v145 = *(v149 - 8);
  v9 = *(v145 + 64);
  v10 = MEMORY[0x28223BE20](v149);
  v136 = &v126 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v143 = &v126 - v12;
  v13 = sub_2227380FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v137 = &v126 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v135 = &v126 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v142 = &v126 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v139 = &v126 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v138 = &v126 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v148 = &v126 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v146 = &v126 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v150 = &v126 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v126 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v126 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v40 = &v126 - v39;
  MEMORY[0x28223BE20](v38);
  v42 = &v126 - v41;
  sub_22273810C();
  v153 = a2;
  v43 = sub_222683D28(v42, a2);
  v46 = *(v14 + 8);
  v45 = (v14 + 8);
  v44 = v46;
  v147 = v42;
  (v46)(v42, v13);
  if (!v43)
  {
    v68 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v69;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v64, "organicOffer");
    v64[13] = 0;
    *(v64 + 7) = -5120;
    *(v64 + 2) = MetatypeMetadata;
    (*(*(v68 - 8) + 104))(v64, *MEMORY[0x277D22530], v68);
    swift_willThrow();
    return v64;
  }

  v152 = v43;
  v154 = a1;
  sub_22273810C();
  v47 = sub_22273808C();
  v156 = v13;
  (v44)(v40, v13);
  if (v47 == 2 || (v47 & 1) == 0)
  {
    v151 = 0;
  }

  else
  {
    v48 = v147;
    sub_22273810C();
    v151 = sub_222683D28(v48, v153);
    (v44)(v48, v156);
  }

  sub_22273810C();
  v49 = sub_2227380EC();
  v51 = v50;
  (v44)(v37, v156);
  if (!v51)
  {
    v71 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v72;
    v73 = swift_getMetatypeMetadata();
    *v64 = 0x4449726566666FLL;
    *(v64 + 1) = 0xE700000000000000;
LABEL_15:
    *(v64 + 2) = v73;
    (*(*(v71 - 8) + 104))(v64, *MEMORY[0x277D22530], v71);
    swift_willThrow();
LABEL_19:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return v64;
  }

  v133 = v49;
  v134 = v51;
  sub_22273810C();
  v52 = sub_2227380DC();
  (v44)(v34, v156);
  if (!v52)
  {

    v71 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v74;
    v73 = swift_getMetatypeMetadata();
    *v64 = 0x496D657449706169;
    *(v64 + 1) = 0xE900000000000044;
    goto LABEL_15;
  }

  v53 = v150;
  sub_22273810C();
  v132 = sub_2227380EC();
  v55 = v54;
  (v44)(v53, v156);
  if (!v55)
  {

    v75 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v76;
    v77 = swift_getMetatypeMetadata();
    *v64 = 0x4E6D657449706169;
    *(v64 + 1) = 0xEB00000000656D61;
LABEL_18:
    *(v64 + 2) = v77;
    (*(*(v75 - 8) + 104))(v64, *MEMORY[0x277D22530], v75);
    swift_willThrow();

    goto LABEL_19;
  }

  v150 = v55;
  v56 = v146;
  sub_22273810C();
  v57 = sub_2227380EC();
  v59 = v58;
  (v44)(v56, v156);
  if (!v59)
  {

    v75 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v78;
    v77 = swift_getMetatypeMetadata();
    strcpy(v64, "iapProductName");
    v64[15] = -18;
    goto LABEL_18;
  }

  v130 = v57;
  v131 = v59;
  v146 = v44;
  sub_22273810C();
  v60 = v145;
  v61 = v145 + 16;
  v62 = *(v145 + 16);
  v63 = v143;
  v62(v143, v153, v149);
  v64 = sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v65 = v144;
  v66 = sub_2226F3C10();
  v67 = v65;
  if (v65)
  {

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v60 + 8))(v63, v149);
    (v146)(v148, v156);
    return v64;
  }

  v127 = v62;
  v128 = v61;
  v144 = v66;
  v129 = v52;
  (*(v60 + 8))(v63, v149);
  v80 = v156;
  v81 = v146;
  (v146)(v148, v156);
  v82 = v138;
  sub_22273810C();
  v83 = v140;
  sub_22273801C();
  v148 = v45;
  v81(v82, v80);
  v84 = sub_2227384AC();
  v85 = *(v84 - 8);
  v86 = *(v85 + 48);
  if (v86(v83, 1, v84) == 1)
  {
    sub_2226EC694(v83);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v87 = sub_22273849C();
    (*(v85 + 8))(v83, v84);
    v145 = v87;
    if (v87)
    {
      goto LABEL_25;
    }
  }

  v145 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_25:
  v88 = v139;
  sub_22273810C();
  v89 = v141;
  sub_22273801C();
  (v146)(v88, v156);
  if (v86(v89, 1, v84) == 1)
  {
    sub_2226EC694(v89);
    v90 = v129;
    v91 = v142;
LABEL_28:
    v93 = sub_2227333D8(MEMORY[0x277D84F90]);

    goto LABEL_29;
  }

  type metadata accessor for ASCOfferTitleVariant(0);
  v92 = v89;
  sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
  v93 = sub_22273849C();
  (*(v85 + 8))(v92, v84);
  v90 = v129;
  v91 = v142;
  if (!v93)
  {
    goto LABEL_28;
  }

LABEL_29:
  sub_22273810C();
  v94 = sub_22273806C();
  if (v95)
  {

    v96 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v97;
    type metadata accessor for ASCOfferFlags(0);
    v98 = MEMORY[0x277D84F90];
    *v64 = 0x65756C6156776172;
    *(v64 + 1) = 0xE800000000000000;
    *(v64 + 2) = v99;
    *(v64 + 3) = v98;
  }

  else
  {
    v141 = v94;
    v142 = v93;
    v100 = v91;
    v101 = v156;
    v102 = v146;
    (v146)(v100, v156);
    v103 = v135;
    sub_22273810C();
    v143 = sub_2227380DC();
    v102(v103, v101);
    sub_22273810C();
    v127(v136, v153, v149);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v104 = sub_2227393DC();
    v105 = *(v104 + 16);
    v106 = MEMORY[0x277D84F90];
    if (v105)
    {
      v157 = MEMORY[0x277D84F90];
      sub_22273997C();
      v107 = 32;
      do
      {
        v108 = *(v104 + v107);
        sub_22273995C();
        v109 = *(v157 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v107 += 8;
        --v105;
      }

      while (v105);

      v90 = v129;
      v67 = v65;
      v106 = MEMORY[0x277D84F90];
    }

    else
    {
    }

    v91 = v137;
    sub_22273810C();
    v154 = sub_22273806C();
    if ((v110 & 1) == 0)
    {
      (v146)(v91, v156);
      v113 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      type metadata accessor for ASCOfferTitleVariant(0);
      sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
      v156 = v67;
      v114 = sub_2227390FC();

      v115 = sub_2227390FC();

      sub_22262E364(0, &qword_281312D38, off_2784B06F0);
      v116 = sub_22273936C();

      v117 = sub_22273916C();
      v153 = v117;

      v118 = sub_22273916C();
      v155 = v118;

      v119 = sub_22273916C();

      v125 = v118;
      v124 = v117;
      v120 = v113;
      v121 = v143;
      v122 = v144;
      v123 = v115;
      v64 = [v120 initWithID:v144 titles:v114 subtitles:v115 flags:v141 ageRating:v143 metrics:v116 organicOffer:v152 streamlinedOffer:v151 offerID:v124 iapItemID:v90 iapItemName:v125 iapProductName:v119 offerType:v154];

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v64;
    }

    v96 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v64 = v111;
    type metadata accessor for ASCContingentOfferType(0);
    *v64 = 0x65756C6156776172;
    *(v64 + 1) = 0xE800000000000000;
    *(v64 + 2) = v112;
    *(v64 + 3) = v106;
  }

  (*(*(v96 - 8) + 104))(v64, *MEMORY[0x277D22540], v96);
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (v146)(v91, v156);
  return v64;
}

char *sub_2226F0F78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v139 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v138 = &v121 - v8;
  v9 = sub_22273823C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v128 = &v121 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v121 - v14;
  v16 = sub_2227380FC();
  v17 = *(v16 - 8);
  v145 = v16;
  v146 = v17;
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v136 = &v121 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v135 = &v121 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v134 = &v121 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v121 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v132 = &v121 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v131 = &v121 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v130 = &v121 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v129 = &v121 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v141 = &v121 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v127 = &v121 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v140 = &v121 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v121 - v42;
  v44 = MEMORY[0x28223BE20](v41);
  v137 = &v121 - v45;
  MEMORY[0x28223BE20](v44);
  v47 = &v121 - v46;
  v144 = a1;
  sub_22273810C();
  v48 = v10;
  v51 = *(v10 + 16);
  v49 = v10 + 16;
  v50 = v51;
  v142 = a2;
  v52 = a2;
  v53 = v9;
  v51(v15, v52, v9);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v54 = v15;
  v55 = v143;
  v56 = sub_2226F3C10();
  if (v55)
  {
    (*(v48 + 8))(v15, v53);
    (*(v146 + 8))(v47, v145);
    return v54;
  }

  v126 = v43;
  v122 = v50;
  v123 = v49;
  v143 = v56;
  v125 = 0;
  (*(v48 + 8))(v15, v53);
  v57 = v145;
  v58 = v146 + 8;
  v59 = *(v146 + 8);
  v59(v47, v145);
  v60 = v137;
  sub_22273810C();
  v61 = v138;
  sub_22273801C();
  v146 = v58;
  v59(v60, v57);
  v62 = sub_2227384AC();
  v63 = *(v62 - 8);
  v64 = *(v63 + 48);
  v65 = v64(v61, 1, v62);
  v124 = v53;
  if (v65 == 1)
  {
    sub_2226EC694(v61);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226F1EEC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v66 = sub_22273849C();
    (*(v63 + 8))(v61, v62);
    if (v66)
    {
      goto LABEL_7;
    }
  }

  v66 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_7:
  v67 = v126;
  sub_22273810C();
  v68 = v139;
  sub_22273801C();
  v69 = v67;
  v70 = v145;
  v59(v69, v145);
  if (v64(v68, 1, v62) == 1)
  {
    sub_2226EC694(v68);
    v71 = v142;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226F1EEC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v72 = sub_22273849C();
    (*(v63 + 8))(v68, v62);
    v71 = v142;
    if (v72)
    {
      v139 = v72;
      goto LABEL_12;
    }
  }

  v139 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_12:
  v54 = v140;
  sub_22273810C();
  v73 = sub_22273806C();
  if (v74)
  {

    v75 = sub_222738FAC();
    sub_2226F1EEC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v77 = v76;
    type metadata accessor for ASCOfferFlags(0);
    v78 = MEMORY[0x277D84F90];
    *v77 = 0x65756C6156776172;
    v77[1] = 0xE800000000000000;
    v77[2] = v79;
    v77[3] = v78;
    (*(*(v75 - 8) + 104))(v77, *MEMORY[0x277D22540], v75);
    swift_willThrow();

    v59(v54, v70);
  }

  else
  {
    v138 = v66;
    v144 = v73;
    v59(v54, v70);
    v81 = v127;
    sub_22273810C();
    v140 = sub_2227380DC();
    v59(v81, v70);
    sub_22273810C();
    v122(v128, v71, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v82 = sub_2227393DC();
    v83 = *(v82 + 16);
    if (v83)
    {
      v147 = MEMORY[0x277D84F90];
      sub_22273997C();
      v84 = 32;
      do
      {
        v85 = *(v82 + v84);
        sub_22273995C();
        v86 = *(v147 + 2);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v84 += 8;
        --v83;
      }

      while (v83);

      v128 = v147;
    }

    else
    {

      v128 = MEMORY[0x277D84F90];
    }

    v87 = v134;
    v88 = v129;
    sub_22273810C();
    v123 = sub_2227380EC();
    v127 = v89;
    v59(v88, v70);
    v90 = v130;
    sub_22273810C();
    v124 = sub_2227380EC();
    v129 = v91;
    v59(v90, v70);
    v92 = v131;
    sub_22273810C();
    v126 = sub_2227380EC();
    v130 = v93;
    v59(v92, v70);
    v94 = v132;
    sub_22273810C();
    v95 = sub_22273808C();
    v59(v94, v70);
    LODWORD(v132) = v95 == 2;
    v96 = v133;
    sub_22273810C();
    v137 = sub_2227380DC();
    v59(v96, v70);
    sub_22273810C();
    LODWORD(v133) = sub_22273808C();
    v59(v87, v70);
    v97 = v141;
    sub_22273810C();
    type metadata accessor for ASCControllerRequirement(0);
    sub_2226F1EEC(&qword_27D012BA0, type metadata accessor for ASCControllerRequirement);
    sub_22273805C();
    v59(v97, v70);
    v134 = v147;
    v98 = v135;
    sub_22273810C();
    LODWORD(v131) = sub_22273808C();
    v59(v98, v70);
    v99 = v136;
    sub_22273810C();
    LODWORD(v135) = sub_22273808C();
    v59(v99, v70);
    sub_22273810C();
    v146 = sub_222683D28(v97, v142);
    v59(v97, v70);
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226F1EEC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v100 = sub_2227390FC();

    v145 = sub_2227390FC();
    v101 = v127;

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v142 = sub_22273936C();

    if (v101)
    {
      v102 = sub_22273916C();
    }

    else
    {
      v102 = 0;
    }

    v103 = v130;
    if (v129)
    {
      v104 = sub_22273916C();
    }

    else
    {
      v104 = 0;
    }

    v105 = v132 | v95;
    if (v103)
    {
      v106 = sub_22273916C();
    }

    else
    {
      v106 = 0;
    }

    v141 = v106;
    v107 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    BYTE1(v120) = v135 & 1;
    LOBYTE(v120) = v131 & 1;
    v108 = v134;
    LOBYTE(v119) = v133 & 1;
    v109 = v137;
    LOBYTE(v118) = v105 & 1;
    v116 = v104;
    v117 = v106;
    v115 = v102;
    v110 = v143;
    v139 = v104;
    v111 = v145;
    v112 = v102;
    v113 = v140;
    v114 = v142;
    v54 = [v107 initWithID:v143 titles:v100 subtitles:v145 flags:v144 ageRating:v140 metrics:v142 alertTitle:v115 alertMessage:v116 alertFooterMessage:v117 isCancelable:v118 checkRestrictionsForContentRating:v137 shouldCheckForAvailableDiskSpace:v119 remoteControllerRequirement:v134 shouldIncludeActiveAccountInFooterMessage:v120 shouldPromptForConfirmation:v146 completionOffer:?];

    swift_unknownObjectRelease();
  }

  return v54;
}

uint64_t sub_2226F1EEC(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2226F1F34()
{
  v1 = sub_222732E30(MEMORY[0x277D84F90]);
  if ([v0 supportsDSIDLessInstall])
  {
    sub_2227398CC();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = v1;
    sub_22268BDE4(v6, 0x654C444953447369, 0xEA00000000007373, isUniquelyReferenced_nonNull_native);
  }

  if ([v0 shouldInstallParentApp])
  {
    sub_2227398CC();
    v3 = swift_isUniquelyReferenced_nonNull_native();
    sub_22268BDE4(v6, 0xD000000000000016, 0x800000022274D000, v3);
  }

  return v1;
}

id sub_2226F2058(uint64_t a1)
{
  v3 = sub_22273793C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277CEC0D8])
  {
    (*(v4 + 8))(v7, v3);
    goto LABEL_3;
  }

  if (v8 == *MEMORY[0x277CEC0C0])
  {
    (*(v4 + 96))(v7, v3);
    v10 = [v1 openOffer];
    v11 = sub_22273786C();
    (*(*(v11 - 8) + 8))(v7, v11);
    if (v10)
    {
      return v10;
    }
  }

  else
  {
    if (v8 == *MEMORY[0x277CEC0A8] || v8 == *MEMORY[0x277CEC0B0])
    {
LABEL_3:
      result = [v1 buyOffer];
      if (result)
      {
        return result;
      }

      goto LABEL_14;
    }

    (*(v4 + 8))(v7, v3);
  }

LABEL_14:
  v13 = [v1 defaultOffer];

  return v13;
}

id sub_2226F228C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v98 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v97 = &v89 - v8;
  v105 = sub_22273823C();
  v109 = *(v105 - 8);
  v9 = *(v109 + 64);
  v10 = MEMORY[0x28223BE20](v105);
  v95 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v108 = &v89 - v12;
  v13 = sub_2227380FC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v94 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v99 = &v89 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v89 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v96 = &v89 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v89 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v89 - v28;
  v30 = a1;
  sub_22273810C();
  v31 = sub_222683D28(v29, a2);
  v33 = *(v14 + 8);
  v32 = (v14 + 8);
  v100 = v29;
  v106 = v32;
  v107 = v13;
  v34 = v13;
  v35 = v33;
  v33(v29, v34);
  if (!v31)
  {
    v40 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v42 = v41;
    MetatypeMetadata = swift_getMetatypeMetadata();
    strcpy(v42, "defaultOffer");
    *(v42 + 13) = 0;
    *(v42 + 14) = -5120;
    *(v42 + 16) = MetatypeMetadata;
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D22530], v40);
    swift_willThrow();
    return v32;
  }

  v101 = v31;
  v102 = v35;
  v93 = v22;
  sub_22273810C();
  v32 = (v109 + 16);
  v36 = *(v109 + 16);
  v37 = v105;
  v36(v108, a2, v105);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v38 = v104;
  v39 = sub_2226F3C10();
  if (v38)
  {
    swift_unknownObjectRelease();
    (*(v109 + 8))(v108, v37);
    v102(v27, v107);
    return v32;
  }

  v91 = 0;
  v92 = v36;
  v89 = v32;
  v90 = a2;
  v104 = v39;
  (*(v109 + 8))(v108, v37);
  v44 = v107;
  v102(v27, v107);
  v45 = v96;
  v109 = v30;
  sub_22273810C();
  v46 = v97;
  sub_22273801C();
  v47 = v45;
  v48 = v102;
  v102(v47, v44);
  v49 = sub_2227384AC();
  v50 = *(v49 - 8);
  v51 = *(v50 + 48);
  if (v51(v46, 1, v49) == 1)
  {
    sub_2226EC694(v46);
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v52 = sub_22273849C();
    (*(v50 + 8))(v46, v49);
    if (v52)
    {
      v108 = v52;
      goto LABEL_10;
    }
  }

  v108 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_10:
  v53 = v93;
  sub_22273810C();
  v54 = v98;
  sub_22273801C();
  v55 = v53;
  v56 = v48;
  v48(v55, v107);
  if (v51(v54, 1, v49) == 1)
  {
    sub_2226EC694(v54);
    v57 = v99;
    v58 = v92;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v59 = sub_22273849C();
    (*(v50 + 8))(v54, v49);
    v57 = v99;
    v58 = v92;
    if (v59)
    {
      goto LABEL_14;
    }
  }

  v59 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_14:
  sub_22273810C();
  v60 = sub_22273806C();
  if (v61)
  {

    v62 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    v32 = swift_allocError();
    v64 = v63;
    type metadata accessor for ASCOfferFlags(0);
    v65 = MEMORY[0x277D84F90];
    *v64 = 0x65756C6156776172;
    v64[1] = 0xE800000000000000;
    v64[2] = v66;
    v64[3] = v65;
    (*(*(v62 - 8) + 104))(v64, *MEMORY[0x277D22540], v62);
    swift_willThrow();

    swift_unknownObjectRelease();
    v56(v57, v107);
  }

  else
  {
    v99 = v60;
    v68 = v107;
    v48(v57, v107);
    v69 = v94;
    sub_22273810C();
    v98 = sub_2227380DC();
    v48(v69, v68);
    sub_22273810C();
    v70 = v90;
    v58(v95, v90, v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v71 = sub_2227393DC();
    v72 = *(v71 + 16);
    v103 = v59;
    if (v72)
    {
      v110 = MEMORY[0x277D84F90];
      sub_22273997C();
      v73 = 32;
      do
      {
        v74 = *(v71 + v73);
        sub_22273995C();
        v75 = *(v110 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v73 += 8;
        --v72;
      }

      while (v72);
    }

    v76 = v100;
    sub_22273810C();
    v77 = sub_222683D28(v76, v70);
    v78 = v70;
    v79 = v107;
    v80 = v102;
    v102(v76, v107);
    sub_22273810C();
    v81 = sub_222683D28(v76, v78);
    v80(v76, v79);
    v82 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v83 = sub_2227390FC();

    v84 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v85 = sub_22273936C();

    v86 = v82;
    v87 = v104;
    v88 = v98;
    v32 = [v86 initWithID:v104 titles:v83 subtitles:v84 flags:v99 ageRating:v98 metrics:v85 defaultOffer:v101 buyOffer:v77 openOffer:v81];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  return v32;
}

void *sub_2226F2E5C(uint64_t a1, uint64_t a2)
{
  v119 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014128, &qword_2227448A8);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v115 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v114 = &v100 - v8;
  v9 = sub_22273823C();
  v124 = *(v9 - 1);
  v125 = v9;
  v10 = *(v124 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v109 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v123 = &v100 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v100 - v16;
  v18 = sub_2227380FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v110 = &v100 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v108 = &v100 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v107 = &v100 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v116 = &v100 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v113 = &v100 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v112 = &v100 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v122 = &v100 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v100 - v35;
  v37 = sub_22273731C();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = MEMORY[0x28223BE20](v37);
  v111 = &v100 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v100 - v42;
  v120 = a1;
  sub_22273810C();
  sub_22273807C();
  v44 = v38;
  v47 = *(v19 + 8);
  v46 = v19 + 8;
  v45 = v47;
  v121 = v18;
  v47(v36, v18);
  if ((*(v44 + 48))(v17, 1, v37) == 1)
  {
    sub_222660468(v17, &qword_27D013DC0, qword_222743950);
    v48 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v50 = v49;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v50 = 7107189;
    v50[1] = 0xE300000000000000;
    v50[2] = MetatypeMetadata;
    (*(*(v48 - 1) + 104))(v50, *MEMORY[0x277D22530], v48);
    swift_willThrow();
    return v48;
  }

  v117 = v45;
  v118 = v46;
  (*(v44 + 32))(v43, v17, v37);
  v48 = v122;
  v106 = v2;
  sub_22273810C();
  v52 = *(v124 + 16);
  v52(v123, v119, v125);
  sub_22262E364(0, &qword_281312B70, off_2784B05F0);
  v53 = v106;
  v54 = sub_2226F3C10();
  if (v53)
  {
    (*(v124 + 8))(v123, v125);
    v117(v122, v121);
    (*(v44 + 8))(v43, v37);
    return v48;
  }

  v106 = v43;
  v102 = v52;
  v104 = v54;
  v103 = 0;
  v105 = v44;
  (*(v124 + 8))(v123, v125);
  v55 = v121;
  v56 = v117;
  v117(v122, v121);
  v57 = v112;
  sub_22273810C();
  v58 = v114;
  sub_22273801C();
  v56(v57, v55);
  v59 = sub_2227384AC();
  v60 = *(v59 - 8);
  v61 = *(v60 + 48);
  if (v61(v58, 1, v59) == 1)
  {
    sub_222660468(v58, &qword_27D014128, &qword_2227448A8);
    v62 = v115;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v63 = sub_22273849C();
    (*(v60 + 8))(v58, v59);
    v62 = v115;
    if (v63)
    {
      v124 = v63;
      goto LABEL_10;
    }
  }

  v124 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_10:
  v64 = v113;
  sub_22273810C();
  sub_22273801C();
  v65 = v64;
  v66 = v117;
  v117(v65, v121);
  if (v61(v62, 1, v59) == 1)
  {
    sub_222660468(v62, &qword_27D014128, &qword_2227448A8);
    v67 = v119;
    v68 = v116;
  }

  else
  {
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v69 = sub_22273849C();
    (*(v60 + 8))(v62, v59);
    v67 = v119;
    v68 = v116;
    if (v69)
    {
      goto LABEL_14;
    }
  }

  v69 = sub_2227333D8(MEMORY[0x277D84F90]);

LABEL_14:
  sub_22273810C();
  v70 = sub_22273806C();
  if (v71)
  {

    v72 = v68;
    v48 = sub_222738FAC();
    sub_2226EC6FC(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v74 = v73;
    type metadata accessor for ASCOfferFlags(0);
    v75 = MEMORY[0x277D84F90];
    *v74 = 0x65756C6156776172;
    v74[1] = 0xE800000000000000;
    v74[2] = v76;
    v74[3] = v75;
    (*(*(v48 - 1) + 104))(v74, *MEMORY[0x277D22540], v48);
    swift_willThrow();

    v66(v72, v121);
    (*(v105 + 8))(v106, v37);
  }

  else
  {
    v122 = v70;
    v123 = v69;
    v78 = v68;
    v79 = v121;
    v66(v78, v121);
    v80 = v107;
    sub_22273810C();
    v119 = sub_2227380DC();
    v66(v80, v79);
    sub_22273810C();
    v102(v109, v67, v125);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014180, &unk_222744C00);
    sub_2226EB970();
    v81 = sub_2227393DC();
    v82 = *(v81 + 16);
    if (v82)
    {
      v83 = v37;
      v126 = MEMORY[0x277D84F90];
      sub_22273997C();
      v84 = 32;
      do
      {
        v85 = *(v81 + v84);
        sub_22273995C();
        v86 = *(v126 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v84 += 8;
        --v82;
      }

      while (v82);

      v37 = v83;
    }

    else
    {
    }

    v101 = v37;
    v87 = v105;
    v88 = v111;
    (*(v105 + 16))(v111, v106, v37);
    v89 = v110;
    sub_22273810C();
    v90 = sub_22273808C();
    v117(v89, v121);
    v125 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    type metadata accessor for ASCOfferTitleVariant(0);
    sub_2226EC6FC(&qword_281312C60, type metadata accessor for ASCOfferTitleVariant);
    v91 = sub_2227390FC();

    v92 = sub_2227390FC();

    sub_22262E364(0, &qword_281312D38, off_2784B06F0);
    v93 = sub_22273936C();

    v94 = sub_2227372BC();
    LOBYTE(v99) = v90 & 1;
    v95 = v104;
    v96 = v119;
    v48 = [v125 initWithID:v104 titles:v91 subtitles:v92 flags:v122 ageRating:v119 metrics:v93 url:v94 isSensitive:v99];

    v97 = *(v87 + 8);
    v98 = v101;
    v97(v88, v101);
    v97(v106, v98);
  }

  return v48;
}

uint64_t sub_2226F3C10()
{
  sub_2227380EC();
  if (v0)
  {
    v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v2 = sub_22273916C();

    v3 = [v1 initWithStringValue_];

    return v3;
  }

  else
  {
    v5 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v7 = v6;
    MetatypeMetadata = swift_getMetatypeMetadata();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014198, &qword_222744E18);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2227412F0;
    *(v9 + 32) = swift_allocError();
    *v10 = 0x65756C6156776172;
    v10[1] = 0xE800000000000000;
    v10[2] = MetatypeMetadata;
    v11 = *(*(v5 - 8) + 104);
    v11(v10, *MEMORY[0x277D22530], v5);
    *v7 = MetatypeMetadata;
    v7[1] = v9;
    v11(v7, *MEMORY[0x277D22538], v5);
    return swift_willThrow();
  }
}

void *sub_2226F3DD8()
{
  v1 = v0;
  v2 = sub_2227380FC();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v59 = v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v60 = v58 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v61 = v58 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v58 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = v58 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = v58 - v17;
  sub_22273810C();
  v58[1] = sub_2227380EC();
  v20 = v19;
  v21 = *(v3 + 8);
  v21(v18, v2);
  if (!v20)
  {
    v25 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v27 = v30;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v27 = 0x6C706D65546C7275;
    v29 = 0xEB00000000657461;
    goto LABEL_5;
  }

  v63 = v1;
  v64 = v20;
  sub_22273810C();
  v22 = COERCE_DOUBLE(sub_2227380BC());
  v24 = v23;
  v21(v16, v2);
  if (v24)
  {

    v25 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v27 = v26;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v27 = 0x6874646977;
    v29 = 0xE500000000000000;
LABEL_5:
    v27[1] = v29;
    v27[2] = MetatypeMetadata;
    v31 = MEMORY[0x277D22530];
LABEL_6:
    (*(*(v25 - 8) + 104))(v27, *v31, v25);
LABEL_7:
    swift_willThrow();
    return v27;
  }

  v33 = v22;
  if (v22 <= 0.0)
  {

    v25 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v27 = v41;
    v42 = swift_getMetatypeMetadata();
    v43 = MEMORY[0x277D84F90];
    *v27 = 0x6874646977;
    v27[1] = 0xE500000000000000;
    v27[2] = v42;
    v27[3] = v43;
    v31 = MEMORY[0x277D22540];
    goto LABEL_6;
  }

  sub_22273810C();
  v34 = COERCE_DOUBLE(sub_2227380BC());
  v36 = v35;
  v21(v13, v2);
  if (v36)
  {

    v27 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v38 = v37;
    v39 = swift_getMetatypeMetadata();
    *v38 = 0x746867696568;
    v38[1] = 0xE600000000000000;
    v38[2] = v39;
    v40 = MEMORY[0x277D22530];
LABEL_17:
    (*(*(v27 - 1) + 104))(v38, *v40, v27);
    goto LABEL_7;
  }

  v44 = v34;
  if (v34 <= 0.0)
  {

    v27 = sub_222738FAC();
    sub_2226F4654(&qword_27D013300, MEMORY[0x277D22548]);
    swift_allocError();
    v38 = v47;
    v48 = swift_getMetatypeMetadata();
    v49 = MEMORY[0x277D84F90];
    *v38 = 0x746867696568;
    v38[1] = 0xE600000000000000;
    v38[2] = v48;
    v38[3] = v49;
    v40 = MEMORY[0x277D22540];
    goto LABEL_17;
  }

  v45 = v61;
  sub_22273810C();
  type metadata accessor for Decoration(0);
  sub_2226F4654(&unk_281312C78, type metadata accessor for Decoration);
  v27 = v45;
  v46 = v62;
  sub_22273803C();
  v21(v45, v2);
  if (v46)
  {
  }

  else
  {
    v50 = v65;
    v51 = v60;
    sub_22273810C();
    type metadata accessor for Crop(0);
    sub_2226F4654(&qword_281312D50, type metadata accessor for Crop);
    sub_22273803C();
    v62 = v50;
    v21(v51, v2);
    v52 = v65;
    v53 = v59;
    sub_22273810C();
    type metadata accessor for Format(0);
    sub_2226F4654(&qword_281312D18, type metadata accessor for Format);
    sub_22273803C();
    v21(v53, v2);
    v54 = v65;
    v55 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v56 = sub_22273916C();

    v57 = v62;
    v27 = [v55 initWithURLTemplate:v56 width:v62 height:v52 decoration:v54 preferredCrop:v33 preferredFormat:v44];
  }

  return v27;
}

uint64_t sub_2226F4654(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_2226F469C()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v21 - v6;
  v8 = 0xE400000000000000;
  sub_22273810C();
  sub_2227380EC();
  v10 = v9;
  v11 = *(v1 + 8);
  v11(v7, v0);
  if (!v10)
  {
    v18 = 1701667182;
LABEL_6:
    v17 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    *v19 = v18;
    v19[1] = v8;
    v19[2] = v21[3];
    (*(*(v17 - 1) + 104))(v19, *MEMORY[0x277D22530], v17);
    swift_willThrow();
    return v17;
  }

  sub_22273810C();
  sub_2227380EC();
  v13 = v12;
  v11(v5, v0);
  if (!v13)
  {

    v8 = 0xE200000000000000;
    v18 = 25705;
    goto LABEL_6;
  }

  v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v15 = sub_22273916C();

  v16 = sub_22273916C();

  v17 = [v14 initWithName:v15 identifier:v16];

  return v17;
}

unint64_t sub_2226F492C()
{
  v0 = sub_22273919C();
  v2 = v1;
  if (v0 == sub_22273919C() && v2 == v3)
  {
    goto LABEL_14;
  }

  v5 = sub_222739B4C();

  if (v5)
  {
    goto LABEL_15;
  }

  v6 = sub_22273919C();
  v8 = v7;
  if (v6 == sub_22273919C() && v8 == v9)
  {
LABEL_14:

    goto LABEL_15;
  }

  v11 = sub_222739B4C();

  if ((v11 & 1) == 0)
  {
    v12 = sub_22273919C();
    v14 = v13;
    if (v12 == sub_22273919C() && v14 == v15)
    {

LABEL_19:
      v16 = &unk_2835C7370;
      goto LABEL_16;
    }

    v19 = sub_222739B4C();

    if (v19)
    {
      goto LABEL_19;
    }

    v20 = sub_22273919C();
    v22 = v21;
    if (v20 == sub_22273919C() && v22 == v23)
    {
      goto LABEL_22;
    }

    v24 = sub_222739B4C();

    if (v24)
    {
      goto LABEL_24;
    }

    v25 = sub_22273919C();
    v27 = v26;
    if (v25 == sub_22273919C() && v27 == v28)
    {
      goto LABEL_22;
    }

    v29 = sub_222739B4C();

    if (v29)
    {
      goto LABEL_24;
    }

    v30 = sub_22273919C();
    v32 = v31;
    if (v30 == sub_22273919C() && v32 == v33)
    {
      goto LABEL_22;
    }

    v34 = sub_222739B4C();

    if (v34)
    {
      goto LABEL_24;
    }

    v35 = sub_22273919C();
    v37 = v36;
    if (v35 == sub_22273919C() && v37 == v38)
    {
      goto LABEL_22;
    }

    v39 = sub_222739B4C();

    if (v39)
    {
      goto LABEL_24;
    }

    v40 = sub_22273919C();
    v42 = v41;
    if (v40 == sub_22273919C() && v42 == v43)
    {
      goto LABEL_22;
    }

    v44 = sub_222739B4C();

    if (v44)
    {
      goto LABEL_24;
    }

    v45 = sub_22273919C();
    v47 = v46;
    if (v45 == sub_22273919C() && v47 == v48)
    {
LABEL_22:

LABEL_24:
      v16 = &unk_2835C73B0;
      goto LABEL_16;
    }

    v49 = sub_222739B4C();

    if (v49)
    {
      goto LABEL_24;
    }

    v50 = sub_22273919C();
    v52 = v51;
    if (v50 == sub_22273919C() && v52 == v53)
    {
      goto LABEL_42;
    }

    v54 = sub_222739B4C();

    if (v54)
    {
      goto LABEL_44;
    }

    v55 = sub_22273919C();
    v57 = v56;
    if (v55 == sub_22273919C() && v57 == v58)
    {
LABEL_42:

LABEL_44:
      v16 = &unk_2835C73F0;
      goto LABEL_16;
    }

    v59 = sub_222739B4C();

    if (v59)
    {
      goto LABEL_44;
    }

    v60 = sub_22273919C();
    v62 = v61;
    if (v60 == sub_22273919C() && v62 == v63)
    {
    }

    else
    {
      v64 = sub_222739B4C();

      if ((v64 & 1) == 0)
      {
        v66 = sub_22273919C();
        v68 = v67;
        if (v66 == sub_22273919C() && v68 == v69)
        {
        }

        else
        {
          v70 = sub_222739B4C();

          if ((v70 & 1) == 0)
          {
            v71 = sub_22273919C();
            v73 = v72;
            if (v71 == sub_22273919C() && v73 == v74)
            {
            }

            else
            {
              v75 = sub_222739B4C();

              if ((v75 & 1) == 0)
              {
                v76 = sub_22273919C();
                v78 = v77;
                if (v76 == sub_22273919C() && v78 == v79)
                {
                }

                else
                {
                  v80 = sub_222739B4C();

                  if ((v80 & 1) == 0)
                  {
                    v81 = sub_22273919C();
                    v83 = v82;
                    if (v81 == sub_22273919C() && v83 == v84)
                    {
                    }

                    else
                    {
                      v85 = sub_222739B4C();

                      if ((v85 & 1) == 0)
                      {
                        v86 = sub_22273919C();
                        v88 = v87;
                        if (v86 == sub_22273919C() && v88 == v89)
                        {
                        }

                        else
                        {
                          v90 = sub_222739B4C();

                          if ((v90 & 1) == 0)
                          {
                            v91 = sub_22273919C();
                            v93 = v92;
                            if (v91 == sub_22273919C() && v93 == v94)
                            {
                            }

                            else
                            {
                              v95 = sub_222739B4C();

                              if ((v95 & 1) == 0)
                              {
                                v96 = sub_22273919C();
                                v98 = v97;
                                if (v96 == sub_22273919C() && v98 == v99)
                                {
                                }

                                else
                                {
                                  v100 = sub_222739B4C();

                                  if ((v100 & 1) == 0)
                                  {
                                    return 0;
                                  }
                                }

                                v65 = &unk_2835C76B0;
                                goto LABEL_53;
                              }
                            }

                            v65 = &unk_2835C7650;
LABEL_53:
                            v17 = sub_222732D1C(v65);
                            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141C0, &unk_2227426D0);
                            swift_arrayDestroy();
                            return v17;
                          }
                        }

                        v16 = &unk_2835C7610;
                        goto LABEL_16;
                      }
                    }

                    v16 = &unk_2835C75D0;
                    goto LABEL_16;
                  }
                }

                v16 = &unk_2835C7590;
                goto LABEL_16;
              }
            }

            v65 = &unk_2835C7510;
            goto LABEL_53;
          }
        }

        v65 = &unk_2835C74B0;
        goto LABEL_53;
      }
    }

    v65 = &unk_2835C7430;
    goto LABEL_53;
  }

LABEL_15:
  v16 = &unk_2835C7330;
LABEL_16:
  v17 = sub_222732D1C(v16);
  sub_222660468(v16 + 32, &unk_27D0141C0, &unk_2227426D0);
  return v17;
}

id sub_2226F52C0(void *a1, uint64_t a2)
{
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = v81 - v5;
  v6 = sub_222738F9C();
  v95 = *(v6 - 8);
  v96 = v6;
  v7 = *(v95 + 64);
  MEMORY[0x28223BE20](v6);
  v89 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22273823C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v91 = v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = v81 - v14;
  v101 = sub_2227380FC();
  v104 = *(v101 - 1);
  v16 = *(v104 + 64);
  v17 = MEMORY[0x28223BE20](v101);
  v97 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v93 = v81 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v92 = v81 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v90 = v81 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v81 - v26;
  v28 = MEMORY[0x28223BE20](v25);
  v30 = v81 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v98 = v81 - v32;
  MEMORY[0x28223BE20](v31);
  v34 = v81 - v33;
  v99 = a1;
  sub_22273810C();
  v35 = *(v10 + 16);
  v102 = v9;
  v35(v15, v103, v9);
  v36 = sub_222672B54();
  v37 = v100;
  v38 = sub_2226F3C10();
  if (!v37)
  {
    v85 = v35;
    v86 = v10 + 16;
    v87 = v27;
    v88 = v30;
    v100 = v38;
    (*(v10 + 8))(v15, v102);
    v40 = v104 + 8;
    v39 = *(v104 + 8);
    v41 = v101;
    v39(v34, v101);
    v42 = v98;
    sub_22273810C();
    type metadata accessor for Kind(0);
    sub_2226F5D10();
    sub_22273803C();
    v84 = 0;
    v39(v42, v41);
    v98 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0141A8, &qword_222744E78);
    v104 = v40;
    v82 = v39;
    sub_22273810C();
    v44 = v91;
    v45 = v103;
    v46 = v85;
    v85(v91, v103, v102);
    sub_2226849D4(&qword_281313F70, &unk_27D0141A8, &qword_222744E78);
    v47 = v88;
    sub_22273870C();
    v83 = v105;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141B8, &unk_222744E80);
    sub_22273810C();
    v46(v44, v45, v102);
    sub_2226849D4(qword_281313F90, &qword_27D0141B8, &unk_222744E80);
    v48 = v47;
    sub_22273870C();
    v102 = v105;
    v49 = v87;
    sub_22273810C();
    v81[0] = sub_2227380EC();
    v86 = v50;
    v51 = v82;
    v82(v49, v41);
    v52 = v90;
    sub_22273810C();
    v81[1] = sub_2227380EC();
    v87 = v53;
    v51(v52, v41);
    v54 = v92;
    sub_22273810C();
    v85 = sub_2227380EC();
    v91 = v55;
    v51(v54, v41);
    v56 = v93;
    sub_22273810C();
    v90 = sub_2227380EC();
    v92 = v57;
    v51(v56, v41);
    sub_22273810C();
    v93 = sub_222683D28(v48, v103);
    v51(v48, v41);
    v58 = v97;
    sub_22273810C();
    v59 = v94;
    sub_22273809C();
    v60 = v95;
    v61 = v96;
    if ((*(v95 + 48))(v59, 1, v96) == 1)
    {
      sub_222660468(v59, &qword_27D0141A0, &unk_2227448B0);
    }

    else
    {
      v62 = v89;
      v63 = (*(v60 + 32))(v89, v59, v61);
      MEMORY[0x28223BE20](v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
      v64 = v84;
      sub_222738F8C();
      v84 = v64;
      v58 = v97;
      (*(v60 + 8))(v62, v61);
    }

    v51(v58, v101);
    v66 = v91;
    v65 = v92;
    v67 = v87;
    if (v86)
    {
      v104 = sub_22273916C();

      if (v67)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v104 = 0;
      if (v87)
      {
LABEL_10:
        v103 = sub_22273916C();

        if (v66)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    v103 = 0;
    if (v66)
    {
LABEL_11:
      v68 = sub_22273916C();

      if (v65)
      {
LABEL_12:
        v69 = sub_22273916C();

LABEL_17:
        v70 = objc_allocWithZone(swift_getObjCClassFromMetadata());
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0140F0, &qword_2227447F0);
        v71 = sub_22273936C();
        v101 = v71;

        v80 = v71;
        v79 = v68;
        v72 = v70;
        v73 = v100;
        v74 = v98;
        v75 = v83;
        v76 = v102;
        v77 = v103;
        v99 = v68;
        v78 = v104;
        v36 = [v72 initWithID:v100 kind:v98 metrics:v83 icon:v102 heading:v104 title:v103 subtitle:v79 ageRating:v69 offer:v93 features:v80];

        swift_unknownObjectRelease();
        return v36;
      }

LABEL_16:
      v69 = 0;
      goto LABEL_17;
    }

LABEL_15:
    v68 = 0;
    if (v65)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

  (*(v10 + 8))(v15, v102);
  (*(v104 + 8))(v34, v101);
  return v36;
}

unint64_t sub_2226F5D10()
{
  result = qword_281312D80;
  if (!qword_281312D80)
  {
    type metadata accessor for Kind(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281312D80);
  }

  return result;
}

uint64_t sub_2226F5D84(uint64_t a1, uint64_t a2)
{
  v37 = a2;
  v36 = sub_22273823C();
  v34 = *(v36 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v34 - v6;
  v8 = sub_2227380FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222738F9C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v34 - v19;
  sub_22273810C();
  sub_22273809C();
  (*(v9 + 8))(v12, v8);
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_2226E8068(v7);
    v21 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v23 = v22;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v23 = 0x7370756B636F6CLL;
    v23[1] = 0xE700000000000000;
    v23[2] = MetatypeMetadata;
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D22530], v21);
    return swift_willThrow();
  }

  else
  {
    (*(v14 + 32))(v20, v7, v13);
    (*(v14 + 16))(v18, v20, v13);
    (*(v34 + 16))(v35, v37, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141D0, &unk_222744ED0);
    sub_2226F62B8();
    v26 = v38;
    v27 = sub_2227393CC();
    if (v26)
    {
      return (*(v14 + 8))(v20, v13);
    }

    else
    {
      v28 = v27;
      v29 = *(v27 + 16);
      if (v29)
      {
        v38 = 0;
        v39 = MEMORY[0x277D84F90];
        sub_22273997C();
        v30 = 32;
        do
        {
          v31 = *(v28 + v30);
          sub_22273995C();
          v32 = *(v39 + 16);
          sub_22273998C();
          sub_22273999C();
          sub_22273996C();
          v30 += 8;
          --v29;
        }

        while (v29);
        (*(v14 + 8))(v20, v13);

        v33 = v39;
      }

      else
      {

        (*(v14 + 8))(v20, v13);
        v33 = MEMORY[0x277D84F90];
      }

      type metadata accessor for ASCLockupContainer();
      result = swift_allocObject();
      *(result + 16) = v33;
    }
  }

  return result;
}

uint64_t sub_2226F6244()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_2226F62B8()
{
  result = qword_281313F60;
  if (!qword_281313F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0141D0, &unk_222744ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281313F60);
  }

  return result;
}

id sub_2226F631C()
{
  v0 = sub_2227380FC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22273810C();
  v5 = sub_2227380DC();
  (*(v1 + 8))(v4, v0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDeviceCornerRadiusFactor_];

  return v6;
}

void *sub_2226F6440(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_22273823C();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v12 = sub_2227380FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v19 = sub_222738F9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v59 = a1;
  sub_22273810C();
  sub_22273809C();
  v27 = v19;
  v28 = v20;
  v29 = *(v13 + 8);
  v60 = v12;
  v29(v18, v12);
  if ((*(v28 + 48))(v11, 1, v27) == 1)
  {
    sub_2226E8068(v11);
    v30 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v32 = v31;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v32 = 0x6B726F77747261;
    v32[1] = 0xE700000000000000;
    v32[2] = MetatypeMetadata;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
  }

  else
  {
    v52 = v29;
    (*(v28 + 32))(v26, v11, v27);
    v53 = v28;
    v54 = v26;
    v34 = *(v28 + 16);
    v55 = v27;
    v34(v24, v26, v27);
    v36 = v63;
    v35 = v64;
    v37 = v57;
    v51 = *(v63 + 16);
    v51(v56, v57, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141B8, &unk_222744E80);
    sub_2226F6AAC();
    v38 = sub_2227393EC();
    v39 = *(v38 + 16);
    if (v39)
    {
      v65 = MEMORY[0x277D84F90];
      sub_22273997C();
      v40 = 32;
      do
      {
        v41 = *(v38 + v40);
        sub_22273995C();
        v42 = *(v65 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v40 += 8;
        --v39;
      }

      while (v39);

      v36 = v63;
      v35 = v64;
    }

    else
    {
    }

    v43 = v58;
    sub_22273810C();
    v32 = v61;
    v51(v61, v37, v35);
    sub_22262E364(0, &qword_27D0141D8, off_2784B06E0);
    v44 = v62;
    v45 = sub_2226F631C();
    if (v44)
    {

      (*(v36 + 8))(v32, v35);
      v52(v43, v60);
    }

    else
    {
      v46 = v45;
      (*(v36 + 8))(v32, v35);
      v52(v43, v60);
      v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_22262E364(0, &qword_27D0141E0, off_2784B0620);
      v48 = sub_22273936C();

      v32 = [v47 initWithArtwork:v48 mediaPlatform:v46];
    }

    (*(v53 + 8))(v54, v55);
  }

  return v32;
}

unint64_t sub_2226F6AAC()
{
  result = qword_281313F90[0];
  if (!qword_281313F90[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0141B8, &unk_222744E80);
    result = swift_getWitnessTable();
    atomic_store(result, qword_281313F90);
  }

  return result;
}

void *sub_2226F6B10(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v3 = sub_22273823C();
  v63 = *(v3 - 8);
  v64 = v3;
  v4 = *(v63 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v61 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v56 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141A0, &unk_2227448B0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v50 - v10;
  v12 = sub_2227380FC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v58 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - v17;
  v19 = sub_222738F9C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v50 - v25;
  v59 = a1;
  sub_22273810C();
  sub_22273809C();
  v27 = v19;
  v28 = v20;
  v29 = *(v13 + 8);
  v60 = v12;
  v29(v18, v12);
  if ((*(v28 + 48))(v11, 1, v27) == 1)
  {
    sub_2226E8068(v11);
    v30 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v32 = v31;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v32 = 0x736F65646976;
    v32[1] = 0xE600000000000000;
    v32[2] = MetatypeMetadata;
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D22530], v30);
    swift_willThrow();
  }

  else
  {
    v52 = v29;
    (*(v28 + 32))(v26, v11, v27);
    v53 = v28;
    v54 = v26;
    v34 = *(v28 + 16);
    v55 = v27;
    v34(v24, v26, v27);
    v36 = v63;
    v35 = v64;
    v37 = v57;
    v51 = *(v63 + 16);
    v51(v56, v57, v64);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0141E8, &qword_222744F48);
    sub_2226F7174();
    v38 = sub_2227393EC();
    v39 = *(v38 + 16);
    if (v39)
    {
      v65 = MEMORY[0x277D84F90];
      sub_22273997C();
      v40 = 32;
      do
      {
        v41 = *(v38 + v40);
        sub_22273995C();
        v42 = *(v65 + 16);
        sub_22273998C();
        sub_22273999C();
        sub_22273996C();
        v40 += 8;
        --v39;
      }

      while (v39);

      v36 = v63;
      v35 = v64;
    }

    else
    {
    }

    v43 = v58;
    sub_22273810C();
    v32 = v61;
    v51(v61, v37, v35);
    sub_22262E364(0, &qword_27D0141D8, off_2784B06E0);
    v44 = v62;
    v45 = sub_2226F631C();
    if (v44)
    {

      (*(v36 + 8))(v32, v35);
      v52(v43, v60);
    }

    else
    {
      v46 = v45;
      (*(v36 + 8))(v32, v35);
      v52(v43, v60);
      v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_22262E364(0, &qword_27D0141F8, off_2784B0738);
      v48 = sub_22273936C();

      v32 = [v47 initWithVideos:v48 mediaPlatform:v46];
    }

    (*(v53 + 8))(v54, v55);
  }

  return v32;
}

unint64_t sub_2226F7174()
{
  result = qword_27D0141F0;
  if (!qword_27D0141F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D0141E8, &qword_222744F48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D0141F0);
  }

  return result;
}

void *sub_2226F71D8(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v33 = sub_22273823C();
  v30 = *(v33 - 8);
  v2 = *(v30 + 64);
  MEMORY[0x28223BE20](v33);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2227380FC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v29 - v11;
  sub_22273810C();
  v13 = sub_2227380EC();
  v15 = v14;
  v18 = *(v6 + 8);
  v17 = (v6 + 8);
  v16 = v18;
  v18(v12, v5);
  if (v15)
  {
    v29[1] = v13;
    sub_22273810C();
    v19 = v30;
    (*(v30 + 16))(v4, v31, v33);
    sub_2226F755C();
    v20 = v32;
    v21 = sub_2226F3DD8();
    if (v20)
    {

      (*(v19 + 8))(v4, v33);
      v16(v10, v5);
    }

    else
    {
      v25 = v21;
      (*(v19 + 8))(v4, v33);
      v16(v10, v5);
      v26 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v27 = sub_22273916C();

      v17 = [v26 initWithVideoURL:v27 preview:v25];
    }
  }

  else
  {
    v22 = sub_222738FAC();
    sub_22268497C();
    swift_allocError();
    v17 = v23;
    MetatypeMetadata = swift_getMetatypeMetadata();
    *v17 = 0x4C52556F65646976;
    v17[1] = 0xE800000000000000;
    v17[2] = MetatypeMetadata;
    (*(*(v22 - 8) + 104))(v17, *MEMORY[0x277D22530], v22);
    swift_willThrow();
  }

  return v17;
}

unint64_t sub_2226F755C()
{
  result = qword_27D0141E0;
  if (!qword_27D0141E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D0141E0);
  }

  return result;
}

uint64_t sub_2226F75A8(char a1)
{
  v2 = v1;
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  result = MEMORY[0x28223BE20](v4 - 8);
  v7 = *(v2 + 16);
  v8 = a1 & 1;
  *(v2 + 16) = a1;
  if (v7 != (a1 & 1))
  {
    v9 = *(v2 + 24);
    v15[0] = v8;
    sub_222737F8C();
    if (qword_27D0129B8 != -1)
    {
      swift_once();
    }

    v10 = sub_222738F6C();
    __swift_project_value_buffer(v10, qword_281315AD8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v11 = *(sub_2227381FC() - 8);
    v12 = *(v11 + 72);
    v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v14 = *(v2 + 16);
    v16 = MEMORY[0x277D839B0];
    v15[0] = v14;
    sub_22273816C();
    sub_222672BA0(v15);
    sub_22273819C();
    sub_2227381CC();
    sub_222738C4C();
  }

  return result;
}

void *sub_2226F77B8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2227376DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v32 = (&v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_22273872C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013020, &qword_2227416C8);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = sub_222737F9C();
  v1[4] = 0;
  v1[5] = 0;
  v1[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013548, &qword_2227425B0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v1[6] = v17;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v19 = result;
    v20 = sub_22273916C();
    v21 = [v19 applicationIsInstalled_];

    *(v2 + 16) = v21;
    sub_22273871C();
    v22 = sub_2226DD5A8(&unk_2835C72B0);
    sub_22269E384(&unk_2835C72D0);
    v23 = v32;
    *v32 = v22;
    (*(v5 + 104))(v23, *MEMORY[0x277CEBFA8], v4);
    v24 = a1[3];
    v30 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v24);
    v33[3] = v8;
    v33[4] = MEMORY[0x277D21FB0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
    (*(v9 + 16))(boxed_opaque_existential_1, v12, v8);
    swift_allocObject();
    v31 = a1;
    swift_weakInit();

    v26 = sub_2227376FC();
    v28 = v27;

    (*(v5 + 8))(v23, v4);
    (*(v9 + 8))(v12, v8);

    __swift_destroy_boxed_opaque_existential_1(v33);
    v29 = v2[4];
    v2[4] = v26;
    v2[5] = v28;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2226F7B24(unint64_t a1)
{
  if (a1 >> 62)
  {
    v5 = a1;
    v6 = sub_22273984C();
    a1 = v5;
    if (!v6)
    {
      return;
    }
  }

  else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x223DBEC70](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v1 = *(a1 + 32);
  }

  v2 = v1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 48);
    MEMORY[0x28223BE20](Strong);

    os_unfair_lock_lock(v4 + 4);
    sub_2226F7CD0();
    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
  }
}

uint64_t sub_2226F7C5C()
{
  v1 = v0[3];

  v2 = v0[4];
  swift_unknownObjectRelease();
  v3 = v0[6];

  return swift_deallocClassInstance();
}

void sub_2226F7D38(unint64_t a1, void *a2)
{
  v2 = a1;
  v15[1] = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22273980C();
    sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
    sub_2226FA0EC();
    sub_2227394FC();
    v2 = v15[2];
    v3 = v15[3];
    v4 = v15[4];
    v5 = v15[5];
    v6 = v15[6];
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(a1 + 32);
    v3 = (a1 + 56);
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = (v9 & *(a1 + 56));
  }

  if ((v2 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_2226342B0();
      return;
    }

    while (1)
    {
      sub_22268DBDC(v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22273987C())
      {
        sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
        swift_dynamicCast();
        v14 = v15[0];
        v12 = v5;
        v13 = v6;
        if (v15[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = v3[v12];
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2226F7F20()
{
  v0 = sub_222738F4C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_222738F6C();
  __swift_allocate_value_buffer(v5, qword_2813130D0);
  __swift_project_value_buffer(v5, qword_2813130D0);
  if (qword_281312E10 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_281315A90);
  (*(v1 + 16))(v4, v6, v0);
  return sub_222738F5C();
}

void *sub_2226F8074()
{
  v1 = v0;
  v2 = *v0;
  v3 = sub_222737C5C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_22273984C())
    {
      sub_2226DD584(MEMORY[0x277D84F90]);
      v9 = v19;
    }

    else
    {
      v9 = MEMORY[0x277D84FA0];
    }

    if (sub_22273984C())
    {
      sub_2226DD584(MEMORY[0x277D84F90]);
      v8 = v20;
    }

    else
    {
      v8 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v8 = MEMORY[0x277D84FA0];
    v9 = MEMORY[0x277D84FA0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014228, &qword_222745100);
  v10 = swift_allocObject();
  *(v10 + 32) = 0;
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  v1[2] = v10;
  *(v1 + 6) = 0;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014230, &unk_222745A30);
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v1[4] = sub_222737F9C();
  sub_22262E364(0, &qword_281312CC0, 0x277D85C78);
  (*(v4 + 104))(v7, *MEMORY[0x277D851C8], v3);
  v14 = sub_22273959C();
  (*(v4 + 8))(v7, v3);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v2;
  aBlock[4] = sub_2226FA258;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226F8F9C;
  aBlock[3] = &block_descriptor_22_0;
  v17 = _Block_copy(aBlock);

  swift_beginAccess();
  notify_register_dispatch("com.apple.appstored.IAPInfoDatabaseUpdated", v1 + 6, v14, v17);
  swift_endAccess();
  _Block_release(v17);

  return v1;
}

uint64_t sub_2226F8380()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013050, &qword_222741370);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v12 - v2;
  if (qword_2813130C8 != -1)
  {
    swift_once();
  }

  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813130D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v8 = sub_22273946C();
  (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
  v9 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v9;
  sub_222699BF8(0, 0, v3, &unk_222745110, v10);
}

uint64_t sub_2226F85F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x2822009F8](sub_2226F8610, 0, 0);
}

uint64_t sub_2226F8610()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 64) = v3;
    *v3 = v0;
    v3[1] = sub_2226F8700;

    return sub_2226F88B8();
  }

  else
  {
    **(v0 + 40) = 0;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_2226F8700(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v7 = sub_2226F8854;
  }

  else
  {
    v8 = *(v4 + 56);

    *(v4 + 80) = a1;
    v7 = sub_2226F8830;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_2226F8854()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

uint64_t sub_2226F88B8()
{
  *(v1 + 112) = v0;
  v2 = *(*(sub_2227381BC() - 8) + 64) + 15;
  *(v1 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226F8948, 0, 0);
}

uint64_t sub_2226F8948()
{
  if (qword_2813130C8 != -1)
  {
    swift_once();
  }

  v1 = sub_222738F6C();
  *(v0 + 128) = v1;
  *(v0 + 136) = __swift_project_value_buffer(v1, qword_2813130D0);
  *(v0 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v2 = *(sub_2227381FC() - 8);
  *(v0 + 152) = *(v2 + 72);
  *(v0 + 184) = *(v2 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_22273813C();
  sub_222738C4C();

  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *v3 = v0;
  v3[1] = sub_2226F8B0C;

  return sub_2226F982C();
}

uint64_t sub_2226F8B0C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 160);
  v7 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v5 = sub_2226F8E10;
  }

  else
  {
    v5 = sub_2226F8C20;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_2226F8C20()
{
  v17 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v7 = *(v0 + 112);
  v6 = *(v0 + 120);
  v8 = ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(v0 + 152);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014200, &unk_222745670);
  *(v0 + 48) = v1;
  *(v0 + 72) = v9;

  sub_22273815C();
  sub_222672BA0(v0 + 48);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v10 = *(v7 + 16);
  v11 = swift_task_alloc();
  *(v11 + 16) = v1;
  *(v11 + 24) = v7;

  os_unfair_lock_lock((v10 + 32));
  sub_2226FA0D0((v10 + 16), &v16);
  if (v2)
  {

    os_unfair_lock_unlock((v10 + 32));
  }

  else
  {
    v12 = *(v0 + 168);
    v13 = *(v0 + 120);
    os_unfair_lock_unlock((v10 + 32));

    v14 = v16;

    v15 = *(v0 + 8);

    v15(v14);
  }
}

uint64_t sub_2226F8E10()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);
  v3 = *(v0 + 136);
  v5 = *(v0 + 120);
  v6 = ((*(v0 + 184) + 32) & ~*(v0 + 184)) + *(v0 + 152);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  swift_getErrorValue();
  v7 = *(v0 + 80);
  v8 = *(v0 + 88);
  *(v0 + 40) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  sub_22273816C();
  sub_222672BA0(v0 + 16);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C6C();

  swift_willThrow();

  v10 = *(v0 + 8);
  v11 = *(v0 + 176);

  return v10();
}

uint64_t sub_2226F8F9C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_2226F8FF0()
{
  swift_beginAccess();
  notify_cancel(*(v0 + 24));
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_2226F907C@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = *a1;
  swift_bridgeObjectRetain_n();

  *a1 = a2;
  v9 = a1[1];

  sub_2226F7D38(v10, a2);
  v12 = v11;
  v13 = *(a3 + 32);
  result = sub_222737F8C();
  *a4 = v12;
  return result;
}

uint64_t sub_2226F910C(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = *(*(sub_2227381BC() - 8) + 64) + 15;
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226F919C, 0, 0);
}

uint64_t sub_2226F919C()
{
  v15 = v0;
  if (qword_2813130C8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  v4 = sub_222738F6C();
  __swift_project_value_buffer(v4, qword_2813130D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v5 = *(sub_2227381FC() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v0[5] = sub_22262E364(0, &qword_281312B80, 0x277CCABB0);
  v0[2] = v3;
  v8 = v3;
  sub_22273815C();
  sub_222672BA0((v0 + 2));
  sub_22273819C();
  sub_2227381CC();
  sub_222738C4C();

  v9 = *(v2 + 16);
  *(swift_task_alloc() + 16) = v8;

  os_unfair_lock_lock(v9 + 8);
  sub_2226FA314(&v9[4], &v14);
  v10 = v0[8];
  os_unfair_lock_unlock(v9 + 8);
  v11 = v14;

  v12 = v0[1];

  return v12(v11);
}

void sub_2226F9420(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_22268DBDC(&v9, a2);

  v6 = *a1;
  v5 = *(a1 + 8);

  sub_2226F7D38(v7, v6);
  *a3 = v8;
}

uint64_t sub_2226F9498(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013130, &qword_2227416B0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return swift_continuation_throwingResume();
  }
}

void sub_2226F9544(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  (*(v5 + 16))(aBlock - v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v8, v4);
  aBlock[4] = sub_2226FA1B4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2226F9788;
  aBlock[3] = &block_descriptor_13;
  v11 = _Block_copy(aBlock);

  [a2 getAllIAPsForActiveAccountWithResultHandler_];
  _Block_release(v11);
}

uint64_t sub_2226F96F4(int a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
    return sub_22273940C();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0);
    return sub_22273941C();
  }
}

uint64_t sub_2226F9788(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_22262E364(0, &qword_281312DB8, 0x277CEC3A0);
    v4 = sub_22273937C();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t sub_2226F982C()
{
  v1 = sub_2227373BC();
  v0[19] = v1;
  v2 = *(v1 - 8);
  v0[20] = v2;
  v3 = *(v2 + 64) + 15;
  v0[21] = swift_task_alloc();
  v0[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2226F98F4, 0, 0);
}

uint64_t sub_2226F98F4()
{
  v1 = objc_opt_self();
  v0[23] = v1;
  v2 = [v1 sharedInstance];
  v0[24] = v2;
  v0[2] = v0;
  v0[3] = sub_2226F9A30;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014208, &qword_2227450E0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2226F9498;
  v0[13] = &block_descriptor_13;
  v0[14] = v3;
  [v2 refreshIAPsForActiveAccountWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2226F9A30()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_2226FA050;
  }

  else
  {
    v3 = sub_2226F9B40;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2226F9B40()
{
  v1 = *(v0 + 184);

  v2 = [v1 sharedInstance];
  *(v0 + 208) = v2;
  v3 = swift_task_alloc();
  *(v0 + 216) = v3;
  *(v3 + 16) = v2;
  v4 = *(MEMORY[0x277D85A40] + 4);
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014210, &qword_2227450E8);
  *v5 = v0;
  v5[1] = sub_2226F9C6C;

  return MEMORY[0x2822008A0](v0 + 144, 0, 0, 0xD000000000000019, 0x800000022274D320, sub_2226FA154, v3, v6);
}

uint64_t sub_2226F9C6C()
{
  v2 = *v1;
  v3 = *(*v1 + 224);
  v7 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v4 = sub_2226F9FD4;
  }

  else
  {
    v5 = *(v2 + 216);

    v4 = sub_2226F9D88;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_2226F9D88()
{
  v20 = v0;

  v17 = v0;
  v1 = *(v0 + 144);
  v18 = MEMORY[0x277D84FA0];
  if (v1 >> 62)
  {
    v2 = sub_22273984C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_17:

    v13 = MEMORY[0x277D84FA0];
    goto LABEL_18;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_17;
  }

LABEL_3:
  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v4 = (*(v0 + 160) + 8);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223DBEC70](v3, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 expirationDate];
    if (!v7)
    {
      goto LABEL_5;
    }

    v9 = v17[21];
    v8 = v17[22];
    v10 = v17[19];
    v11 = v7;
    sub_22273739C();

    sub_2227373AC();
    sub_2226FA15C();
    LOBYTE(v11) = sub_22273914C();
    v12 = *v4;
    (*v4)(v9, v10);
    v12(v8, v10);
    if ((v11 & 1) == 0)
    {
      goto LABEL_5;
    }

    if ([v6 type] == 2 || objc_msgSend(v6, sel_type) == 3)
    {
      sub_22268DBDC(&v19, [v6 adamId]);
    }

    else
    {
LABEL_5:
    }

    ++v3;
  }

  while (v2 != v3);

  v13 = v18;
LABEL_18:
  v15 = v17[21];
  v14 = v17[22];

  v16 = v17[1];

  v16(v13);
}

uint64_t sub_2226F9FD4()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 232);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2226FA050()
{
  v1 = v0[24];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[25];
  v5 = v0[21];
  v4 = v0[22];

  v6 = v0[1];

  return v6();
}

unint64_t sub_2226FA0EC()
{
  result = qword_27D013AE8;
  if (!qword_27D013AE8)
  {
    sub_22262E364(255, &qword_281312B80, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D013AE8);
  }

  return result;
}

unint64_t sub_2226FA15C()
{
  result = qword_27D014218;
  if (!qword_27D014218)
  {
    sub_2227373BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D014218);
  }

  return result;
}

uint64_t sub_2226FA1B4(int a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014220, &unk_2227450F0) - 8) + 80);

  return sub_2226F96F4(a1, a2);
}

uint64_t sub_2226FA258()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_2226F8380();
}

uint64_t sub_2226FA260(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_222660228;

  return sub_2226F85F0(a1, v4, v5, v6);
}

uint64_t sub_2226FA338(void *a1, uint64_t a2)
{
  v4 = sub_22273793C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  if (([a1 flags] & 0x10) != 0)
  {
    return 0;
  }

  (*(v5 + 16))(v11, a2, v4);
  v12 = (*(v5 + 88))(v11, v4);
  if (v12 != *MEMORY[0x277CEC0D0])
  {
    if (v12 == *MEMORY[0x277CEC098])
    {
      (*(v5 + 8))(v11, v4);
    }

    else if (v12 != *MEMORY[0x277CEC0A8] && v12 != *MEMORY[0x277CEC0B0])
    {
      (*(v5 + 8))(v11, v4);
      return 1;
    }

    if ((sub_222737A6C() & 1) == 0 || (sub_222737AAC() & 1) != 0 && ([a1 flags] & 4) == 0)
    {
      return 0;
    }

    if (sub_222737A9C())
    {
      v15 = *MEMORY[0x277CEC0B0];
      v24 = *(v5 + 104);
      v24(v9, v15, v4);
      v16 = MEMORY[0x223DBCC40](a2, v9);
      v23 = *(v5 + 8);
      v23(v9, v4);
      if (v16)
      {
        return 0;
      }

      v24(v9, *MEMORY[0x277CEC0A8], v4);
      v17 = MEMORY[0x223DBCC40](a2, v9);
      v23(v9, v4);
      if (v17)
      {
        return 0;
      }
    }

    v18 = [a1 ageRating];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 integerValue];
      v21 = sub_222737A8C();

      if (v21 < v20)
      {
        return 0;
      }
    }

    return 1;
  }

  (*(v5 + 96))(v11, v4);
  v13 = sub_22273783C();
  (*(*(v13 - 8) + 8))(v11, v13);
  return 0;
}

char *sub_2226FA6B4(void *a1, void *a2, char *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v41 = a6;
  v40 = a4;
  v45 = a2;
  v46 = a3;
  v44 = a1;
  v48 = sub_222738BBC();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_222738FDC();
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  MEMORY[0x28223BE20](v9);
  v43 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013DC0, qword_222743950);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v36 - v14;
  v52 = sub_22273731C();
  v50 = *(v52 - 8);
  v16 = *(v50 + 64);
  v17 = MEMORY[0x28223BE20](v52);
  v18 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v36 - v19;
  sub_2227387BC();
  v49 = MEMORY[0x223DBDAF0]();
  if (v49)
  {
    sub_22273730C();
    if ((*(v50 + 48))(v15, 1, v52) == 1)
    {
      sub_222660468(v15, &qword_27D013DC0, qword_222743950);
      v21 = " JS worker thread";
      sub_222738D8C();
      sub_2226B7CC0();
      swift_allocError();
      sub_222738D3C();
      swift_willThrow();
    }

    else
    {
      v45 = a5;
      v22 = v50;
      v23 = *(v50 + 32);
      v37 = v9;
      v38 = v23;
      v24 = v52;
      v23(v20, v15, v52);
      v25 = *(v22 + 16);
      v46 = v20;
      v25(v18, v20, v24);
      (*(v7 + 16))(v47, v40, v48);
      sub_22266BCCC(v41, v51);
      v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
      v27 = (v16 + *(v7 + 80) + v26) & ~*(v7 + 80);
      v28 = (v8 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      v21 = swift_allocObject();
      v38(&v21[v26], v18, v52);
      (*(v7 + 32))(&v21[v27], v47, v48);
      v30 = v45;
      *&v21[v28] = v45;
      sub_222634290(v51, &v21[v29]);
      *&v21[(v29 + 47) & 0xFFFFFFFFFFFFFFF8] = v49;
      v31 = v44;
      v32 = v30;

      v33 = v42;
      v34 = v43;
      sub_222738FBC();
      if (!v33)
      {
        v21 = sub_222738FCC();

        (*(v39 + 8))(v34, v37);
        (*(v50 + 8))(v46, v52);
        return v21;
      }

      (*(v50 + 8))(v46, v52);
    }
  }

  else
  {
    v21 = "mpaignAttributionService";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
  }

  return v21;
}

uint64_t sub_2226FAC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v39 = a8;
  v36 = a6;
  v10 = sub_222737FDC();
  v38 = *(v10 - 8);
  v11 = *(v38 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = v12;
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013A90, &unk_222741DC0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v33 - v16;
  v18 = sub_222738ADC();
  v19 = objc_allocWithZone(MEMORY[0x277CEE440]);
  v20 = sub_2227372BC();
  v21 = [v19 initWithURL:v20 bag:v18];
  swift_unknownObjectRelease();

  [v21 setClientInfo_];
  v22 = a7[4];
  __swift_project_boxed_opaque_existential_1(a7, a7[3]);
  sub_2227384EC();
  v23 = sub_222738CFC();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v17, 1, v23) == 1)
  {
    sub_222660468(v17, &unk_27D013A90, &unk_222741DC0);
    v25 = 0;
  }

  else
  {
    v25 = MEMORY[0x223DBDFF0]();
    (*(v24 + 8))(v17, v23);
  }

  [v21 setAccount_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014248, &unk_2227451B0);
  v26 = [v21 perform];
  v36 = sub_222738F0C();
  v27 = v38;
  v33 = *(v38 + 16);
  v33(v13, a2, v10);
  v28 = *(v27 + 80);
  v35 = v21;
  v29 = (v28 + 16) & ~v28;
  v34 = swift_allocObject();
  v30 = *(v27 + 32);
  v30(v34 + v29, v13, v10);
  v33(v13, a2, v10);
  v31 = swift_allocObject();
  v30(v31 + v29, v13, v10);
  v40[3] = sub_2227387BC();
  v40[4] = MEMORY[0x277D22078];
  v40[0] = v39;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_2226FB004()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2227412F0;
  *(v0 + 56) = MEMORY[0x277D839B0];
  *(v0 + 32) = 1;
  v1 = sub_222737FCC();
}

void sub_2226FB1EC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2227412F0;
  *(v0 + 56) = MEMORY[0x277D839B0];
  *(v0 + 32) = 0;
  v1 = sub_222737FCC();
}

uint64_t type metadata accessor for JSCampaignAttributionService()
{
  result = qword_2813131D8;
  if (!qword_2813131D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226FB69C()
{
  result = sub_222738BBC();
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

id sub_2226FB744()
{
  v0 = sub_222738BBC();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22262E364(0, &qword_281312D58, 0x277CEE620);
  sub_22273858C();
  sub_222738C9C();
  v5 = v12[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D013870, &unk_222741D80);
  sub_222738C9C();
  sub_222738C9C();
  v6 = type metadata accessor for JSCampaignAttributionService();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_process] = v5;
  sub_22266BCCC(v12, &v7[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_accounts]);
  (*(v1 + 16))(&v7[OBJC_IVAR____TtC27AppStoreComponentsDaemonKit28JSCampaignAttributionService_bag], v4, v0);
  v11.receiver = v7;
  v11.super_class = v6;
  v8 = v5;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  (*(v1 + 8))(v4, v0);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v9;
}

uint64_t sub_2226FB954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(sub_22273731C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_222738BBC() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2226FAC1C(a1, a2, a3, v3 + v8, v3 + v11, *(v3 + v12), (v3 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_2226FBA80()
{
  v0 = *(*(sub_222737FDC() - 8) + 80);

  sub_2226FB004();
}

void sub_2226FBAF0()
{
  v0 = *(*(sub_222737FDC() - 8) + 80);

  sub_2226FB1EC();
}

uint64_t sub_2226FBB60(uint64_t a1, uint64_t a2)
{
  v4 = sub_222738DAC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22273903C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v21[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21[-1] - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v21[-1] - v15;
  sub_222738D9C();
  sub_22273900C();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0145C0, &qword_222742EB0);
  v21[0] = a1;

  sub_222738FEC();
  v17 = *(v7 + 8);
  v17(v11, v6);
  sub_222672BA0(v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B60, &qword_2227451C0);
  v21[0] = a2;

  sub_222738FEC();
  v17(v14, v6);
  sub_222672BA0(v21);
  sub_222712308(v16);
  v22 = sub_22273872C();
  v23 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v21);
  sub_22273871C();
  sub_2226FBED8();
  v18 = sub_222738E6C();

  v17(v16, v6);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

uint64_t sub_2226FBE5C()
{
  v1 = *(*(*v0 + 24) + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0138A0, &qword_222742B30);
  sub_22273956C();
}

unint64_t sub_2226FBED8()
{
  result = qword_281312B50;
  if (!qword_281312B50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281312B50);
  }

  return result;
}

uint64_t sub_2226FBFE0(uint64_t a1)
{
  swift_getObjectType();
  sub_2226FD65C(a1, v14);
  if (!v15)
  {
    sub_222672BA0(v14);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v11 = 0;
    return v11 & 1;
  }

  v3 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client);
  v4 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 8);
  v5 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 16);
  v6 = *(v1 + OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 24);
  v7 = *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 16];
  v8 = *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 24];
  v9 = v3 == *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client] && v4 == *&v13[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client + 8];
  if (!v9 && (sub_222739B4C() & 1) == 0)
  {

    goto LABEL_14;
  }

  if (v5 == v7 && v6 == v8)
  {

    v11 = 1;
  }

  else
  {
    v11 = sub_222739B4C();
  }

  return v11 & 1;
}

id sub_2226FC1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for JSMediaTokensObject.CacheKey();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtCC27AppStoreComponentsDaemonKit19JSMediaTokensObjectP33_638155E9B66C7584798509A6FE06B4498CacheKey_client];
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = a3;
  *(v11 + 3) = a4;
  v19.receiver = v10;
  v19.super_class = v9;

  v12 = objc_msgSendSuper2(&v19, sel_init);
  v13 = *(v4 + OBJC_IVAR____TtC27AppStoreComponentsDaemonKit19JSMediaTokensObject_cachedServices);
  v14 = [v13 objectForKey_];
  if (!v14)
  {
    v15 = sub_222738ADC();
    v16 = objc_allocWithZone(MEMORY[0x277CEE578]);
    v17 = sub_22273916C();
    v14 = [v16 initWithClientIdentifier:v17 bag:v15];

    swift_unknownObjectRelease();
    [v13 setObject:v14 forKey:v12];
  }

  return v14;
}

const char *sub_2226FC31C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_222738FDC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2227387BC();
  v11 = MEMORY[0x223DBDAF0]();
  if (!v11)
  {
    v18 = "clientVersion is not a string: ";
    sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    sub_222738D3C();
    swift_willThrow();
    return v18;
  }

  v12 = v11;
  v24 = v7;
  v14 = sub_22273968C();
  if (!v13)
  {
    v18 = sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
LABEL_9:
    sub_222738D3C();
    swift_willThrow();
    goto LABEL_10;
  }

  v15 = v13;
  v25 = sub_22273968C();
  if (!v16)
  {

    v18 = sub_222738D8C();
    sub_2226B7CC0();
    swift_allocError();
    goto LABEL_9;
  }

  v17 = v16;
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  *(v18 + 3) = v14;
  v19 = v25;
  *(v18 + 4) = v15;
  *(v18 + 5) = v19;
  *(v18 + 6) = v17;
  *(v18 + 7) = v12;
  v20 = a1;
  v21 = a4;

  v22 = v26;
  sub_222738FBC();
  if (v22)
  {
LABEL_10:

    return v18;
  }

  v18 = sub_222738FCC();

  (*(v24 + 8))(v10, v6);
  return v18;
}

uint64_t sub_2226FC638(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v30 = a3;
  v28 = a2;
  v32 = a1;
  v33 = a9;
  v13 = sub_222737FDC();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2226FC1DC(a5, a6, a7, a8);
  v31 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014258, &qword_222745240);
  v18 = [v17 fetchMediaToken];
  v29 = sub_222738F0C();
  v19 = *(v14 + 16);
  v19(v16, v28, v13);
  v20 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v28 = swift_allocObject();
  v21 = *(v14 + 32);
  v21(v28 + v20, v16, v13);
  v19(v16, v30, v13);
  v22 = (v20 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  v21(v23 + v20, v16, v13);
  v24 = v32;
  *(v23 + v22) = v32;
  v34[3] = sub_2227387BC();
  v34[4] = MEMORY[0x277D22078];
  v34[0] = v33;
  v25 = v24;

  sub_222738E8C();

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

void sub_2226FC8BC(void **a1)
{
  v2 = sub_2227381BC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_2227412F0;
  v6 = [v4 tokenString];
  v7 = sub_22273919C();
  v9 = v8;

  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  v10 = sub_222737FCC();
}

void sub_2226FCBB4()
{
  v0 = sub_2227381BC();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = sub_222738D8C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013AE0, &unk_222743500);
  v7 = swift_allocObject();
  v10 = xmmword_2227412F0;
  *(v7 + 16) = xmmword_2227412F0;
  swift_getErrorValue();
  sub_222739BEC();
  sub_222738D3C();
  v8 = sub_222738D6C();
  (*(v3 + 8))(v6, v2);
  *(v7 + 56) = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
  *(v7 + 32) = v8;
  v9 = sub_222737FCC();
}

void sub_2226FD01C(void *a1, void *a2)
{
  v4 = sub_2227381BC();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = sub_22273968C();
  if (!v7)
  {
    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v12 = sub_222738F6C();
    __swift_project_value_buffer(v12, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v13 = *(sub_2227381FC() - 8);
    v14 = *(v13 + 72);
    v15 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v24 = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    v23[0] = a1;
    v16 = a1;
    sub_22273816C();
    sub_222672BA0(v23);
    sub_22273819C();
    sub_2227381CC();
    goto LABEL_12;
  }

  v8 = v7;
  v9 = v6;
  v10 = sub_22273968C();
  if (!v11)
  {

    if (qword_281312E28 != -1)
    {
      swift_once();
    }

    v17 = sub_222738F6C();
    __swift_project_value_buffer(v17, qword_281315AC0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
    v18 = *(sub_2227381FC() - 8);
    v19 = *(v18 + 72);
    v20 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    *(swift_allocObject() + 16) = xmmword_2227412F0;
    sub_2227381AC();
    sub_22273819C();
    v24 = sub_22262E364(0, &qword_27D013BA8, 0x277CD4658);
    v23[0] = a2;
    v21 = a2;
    sub_22273816C();
    sub_222672BA0(v23);
    sub_22273819C();
    sub_2227381CC();
LABEL_12:
    sub_222738C6C();

    return;
  }

  v22 = sub_2226FC1DC(v9, v8, v10, v11);

  [v22 invalidateMediaToken];
}

uint64_t type metadata accessor for JSMediaTokensObject()
{
  result = qword_281313538;
  if (!qword_281313538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2226FD59C()
{
  result = sub_222738BBC();
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

uint64_t sub_2226FD65C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0130C0, &unk_2227413B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2226FD71C(void **a1)
{
  v2 = *(*(sub_222737FDC() - 8) + 80);

  sub_2226FC8BC(a1);
}

void sub_2226FD78C()
{
  v1 = *(sub_222737FDC() - 8);
  v2 = *(v0 + ((*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_2226FCBB4();
}

uint64_t sub_2226FD828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v58 = a3;
  v56 = a1;
  v57 = a5;
  v7 = sub_2227381BC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22273793C();
  v53 = *(v10 - 8);
  v54 = v10;
  v11 = *(v53 + 64);
  MEMORY[0x28223BE20](v10);
  v52 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_222738DAC();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_22273903C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v51 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  sub_222738D9C();
  sub_22273900C();
  v29 = MEMORY[0x277D837D0];
  v62 = MEMORY[0x277D837D0];
  v60 = v56;
  v61 = a2;

  sub_222738FEC();
  v56 = v16;
  v30 = *(v16 + 8);
  v30(v19, v15);
  sub_222672BA0(&v60);
  v62 = v29;
  v60 = v58;
  v61 = a4;

  sub_222738FEC();
  v30(v22, v15);
  sub_222672BA0(&v60);
  v31 = v57;
  v32 = [v57 id];
  v33 = [v32 stringValue];

  v34 = sub_22273919C();
  v36 = v35;

  v62 = v29;
  v60 = v34;
  v61 = v36;
  v58 = v28;
  sub_222738FEC();
  v30(v25, v15);
  sub_222672BA0(&v60);
  if ([v31 offer])
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v38 = v52;
      v37 = v53;
      v39 = v54;
      (*(v53 + 104))(v52, *MEMORY[0x277CEC0B0], v54);
      v40 = [objc_allocWithZone(ASCOfferContext) init];
      v41 = sub_2226EE6A0(v38, v40);

      (*(v37 + 8))(v38, v39);
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
      v60 = v41;
      v42 = v58;
      sub_222738FEC();
      swift_unknownObjectRelease();
      v30(v42, v15);
      sub_222672BA0(&v60);
      (*(v56 + 32))(v42, v25, v15);
      goto LABEL_8;
    }

    swift_unknownObjectRelease();
  }

  if (qword_27D0129B0 != -1)
  {
    swift_once();
  }

  v43 = sub_222738F6C();
  __swift_project_value_buffer(v43, qword_27D019C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0130B0, &unk_2227414D0);
  v44 = *(sub_2227381FC() - 8);
  v45 = *(v44 + 72);
  v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
  *(swift_allocObject() + 16) = xmmword_2227412F0;
  sub_2227381AC();
  sub_22273819C();
  v47 = [v31 id];
  v62 = sub_222672B54();
  v60 = v47;
  sub_22273816C();
  sub_222672BA0(&v60);
  sub_22273819C();
  sub_2227381CC();
  sub_222738C7C();

  v42 = v58;
LABEL_8:
  v48 = *v59;
  sub_2226D7BBC(v42);
  v62 = sub_22273872C();
  v63 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v60);
  sub_22273871C();
  v49 = sub_222738E6C();

  v30(v42, v15);
  __swift_destroy_boxed_opaque_existential_1(&v60);
  return v49;
}

uint64_t sub_2226FDF70(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_2226FDFB8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2226FE014(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_222738DAC();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = sub_22273903C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v30 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v30 - v17;
  sub_222738D9C();
  sub_22273900C();
  v19 = MEMORY[0x277D837D0];
  if (a2)
  {
    v20 = MEMORY[0x277D837D0];
    v21 = a2;
  }

  else
  {
    a1 = 0;
    v21 = 0;
    v20 = 0;
    v33 = 0;
  }

  v31 = a1;
  v32 = v21;
  v34 = v20;

  sub_222738FEC();
  v22 = *(v9 + 8);
  v22(v13, v8);
  sub_222672BA0(&v31);
  v23 = [a3 stringValue];
  v24 = sub_22273919C();
  v26 = v25;

  v34 = v19;
  v31 = v24;
  v32 = v26;
  sub_222738FEC();
  v22(v16, v8);
  sub_222672BA0(&v31);
  v27 = *v30;
  sub_2226D7BBC(v18);
  v34 = sub_22273872C();
  v35 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(&v31);
  sub_22273871C();
  v28 = sub_222738E6C();

  v22(v18, v8);
  __swift_destroy_boxed_opaque_existential_1(&v31);
  return v28;
}

uint64_t sub_2226FE348(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v42 = a5;
  v38[2] = a4;
  v39 = a3;
  v38[1] = a1;
  v7 = sub_222738DAC();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_22273903C();
  v40 = *(v9 - 8);
  v10 = v40;
  v11 = *(v40 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v38 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v38 - v20;
  MEMORY[0x28223BE20](v19);
  v41 = v38 - v22;
  sub_222738D9C();
  sub_22273900C();
  v23 = sub_2226EE6A0(a2, a4);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D0146F0, &qword_2227436A0);
  v43[0] = v23;
  sub_222738FEC();
  v24 = *(v10 + 8);
  v24(v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  sub_222672BA0(v43);
  v25 = [v39 fields];
  v26 = sub_22273910C();

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D013B50, &unk_2227452B0);
  v44 = v27;
  v43[0] = v26;
  sub_222738FEC();
  v24(v15, v9);
  sub_222672BA0(v43);
  v28 = sub_2226E5648();
  v44 = v27;
  v43[0] = v28;
  sub_222738FEC();
  v24(v18, v9);
  sub_222672BA0(v43);
  v29 = sub_2226F1F34();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D014260, &unk_222745AD0);
  v43[0] = v29;
  v30 = v41;
  sub_222738FEC();
  v24(v21, v9);
  sub_222672BA0(v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0144A0, &unk_222741CA0);
  sub_222738F2C();

  sub_2227385DC();

  v31 = v40;
  (*(v40 + 16))(v21, v30, v9);
  v32 = v31;
  v33 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = v42;
  (*(v32 + 32))(v34 + v33, v21, v9);
  v35 = swift_allocObject();
  *(v35 + 16) = sub_2226FE958;
  *(v35 + 24) = v34;
  v44 = sub_22273872C();
  v45 = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v43);

  sub_22273871C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D014490, &qword_222741560);
  sub_2226FE9E4();
  v36 = sub_222738EDC();

  v24(v30, v9);
  __swift_destroy_boxed_opaque_existential_1(v43);
  return v36;
}

uint64_t sub_2226FE88C(uint64_t a1, uint64_t a2)
{
  sub_222712338(a2);
  v4[3] = sub_22273872C();
  v4[4] = MEMORY[0x277D21FB0];
  __swift_allocate_boxed_opaque_existential_1(v4);
  sub_22273871C();
  sub_22266F98C();
  v2 = sub_222738E6C();

  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2;
}

id sub_2226FE928@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_2226FE958()
{
  v1 = *(sub_22273903C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2226FE88C(v2, v3);
}

uint64_t sub_2226FE9BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_2226FE9E4()
{
  result = qword_27D012FC8;
  if (!qword_27D012FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D014490, &qword_222741560);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D012FC8);
  }

  return result;
}

uint64_t sub_2226FEA5C(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_22273971C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id *sub_2226FEB00()
{
  v1 = *v0;

  v2 = *(*v0 + 12);
  v3 = v1[10];
  v4 = sub_22273971C();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  return v0;
}

uint64_t sub_2226FEB94()
{
  sub_2226FEB00();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_2226FEC04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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