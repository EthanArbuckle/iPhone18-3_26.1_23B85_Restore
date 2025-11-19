uint64_t sub_221EC5E94(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v8 = *v2;
  v3[8] = a1;
  v3[9] = v1;

  if (v1)
  {
    v5 = sub_221EC6090;
  }

  else
  {
    v6 = v3[6];

    v5 = sub_221EC5FB0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EC5FB0()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  v3 = *(v0 + 64);
  if (v1)
  {
    v4 = *(v0 + 32);
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v5 = sub_221FB6428();

    (v4)[2](v4, 1, 0, v5);
    _Block_release(v4);
  }

  else
  {
    v6 = *(v0 + 64);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EC6090()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = v0[9];
  if (v3)
  {
    v6 = v0[4];
    v7 = v0[9];
    v8 = sub_221FB5A98();

    (v6)[2](v6, 0, v8, 0);
    _Block_release(v6);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221EC6300(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_221E9D138(0, &qword_27CFEBE30, 0x277CE90E0);
  sub_221EC69E0();
  v5[5] = sub_221FB64F8();
  v8 = a3;
  v9 = a5;

  return MEMORY[0x2822009F8](sub_221EC63C4, 0, 0);
}

uint64_t sub_221EC63C4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000008CLL, 0x8000000221FC1A20, 0xD000000000000023, 0x8000000221FC1AB0);
  __swift_project_boxed_opaque_existential_0Tm((v2 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService), *(v2 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService + 24));
  v4 = sub_221E9EBF8(v1);
  v0[6] = v4;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_221EC6518;
  v6 = v0[2];

  return sub_221EA6420(v4, v6);
}

uint64_t sub_221EC6518()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_221EC66C4;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_221EC6634;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EC6634()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  if (v2)
  {
    v3 = *(v0 + 32);
    v3[2](v3, 1, 0);
    _Block_release(v3);
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221EC66C4()
{
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  v5 = v0[8];
  if (v3)
  {
    v6 = v0[4];
    v7 = v0[8];
    v8 = sub_221FB5A98();

    (v6)[2](v6, 0, v8);
    _Block_release(v6);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221EC678C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E963B4;

  return sub_221EC6300(v2, v3, v4, v5, v6);
}

uint64_t sub_221EC6854()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_221E963B4;

  return sub_221FB24DC(v2, v3, v5);
}

uint64_t sub_221EC6914(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_221E963B4;

  return sub_221FB25C4(a1, v4, v5, v7);
}

unint64_t sub_221EC69E0()
{
  result = qword_27CFEBB30;
  if (!qword_27CFEBB30)
  {
    sub_221E9D138(255, &qword_27CFEBE30, 0x277CE90E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBB30);
  }

  return result;
}

uint64_t sub_221EC6A48()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_221E963B4;

  return sub_221EC5C7C(v2, v3, v4, v5, v6);
}

uint64_t sub_221EC6B10()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = v0[7];
  v8 = v0[8];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_221E9544C;

  return sub_221EC5608(v2, v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_221EC6C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E96070;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221EC6DFC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 32);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221EC6F34()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm((v0[5] + 80) *(v0[5] + 104))];
  if (v1)
  {
    v2 = v1;
    sub_221E9D138(0, &qword_281306E70, 0x277CE90F8);
    sub_221EC7A3C();
    v3 = sub_221FB64F8();
  }

  else if (MEMORY[0x277D84F90] >> 62 && sub_221FB6868())
  {
    sub_221EC774C(MEMORY[0x277D84F90]);
    v3 = v7;
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
  }

  v4 = v0[5];
  v0[6] = sub_221E9EBDC(v3);

  __swift_project_boxed_opaque_existential_0Tm(v4, v4[3]);
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_221EC7090;

  return sub_221EF490C();
}

uint64_t sub_221EC7090(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 32) = v1;
  *(v4 + 24) = a1;
  *(v4 + 16) = v2;
  v5 = *(v3 + 56);
  v8 = *v2;
  *(v4 + 64) = v1;

  if (v1)
  {
    v6 = sub_221EC7594;
  }

  else
  {
    v6 = sub_221EC71B0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221EC71B0()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 40) + 40), *(*(v0 + 40) + 64));
  sub_221E94E44();
  v2 = v1;
  v33 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
    goto LABEL_44;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = MEMORY[0x277D84F90];
    if (i)
    {
      v5 = 0;
      while (1)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x223DACD50](v5, v2);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v11 = v33;
            v4 = MEMORY[0x277D84F90];
            goto LABEL_17;
          }
        }

        else
        {
          if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_41;
          }

          v6 = *(v2 + 8 * v5 + 32);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_14;
          }
        }

        v8 = v6;
        v9 = sub_221FB6588();

        if (v9)
        {
          sub_221FB69B8();
          v10 = *(v33 + 16);
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
        }

        else
        {
        }

        ++v5;
        if (v7 == i)
        {
          goto LABEL_15;
        }
      }
    }

    v11 = MEMORY[0x277D84F90];
LABEL_17:
    v12 = *(v0 + 64);
    v32 = v0;
    v13 = *(v0 + 40);

    v14 = swift_task_alloc();
    *(v14 + 16) = v13;
    v2 = sub_221F54478(sub_221EC772C, v14, v11);

    if (v2 >> 62)
    {
      break;
    }

    v15 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_46;
    }

LABEL_19:
    v16 = 0;
    v17 = v2 & 0xC000000000000001;
    do
    {
      v0 = v15 == v16;
      if (v15 == v16)
      {
        break;
      }

      if (v17)
      {
        v18 = MEMORY[0x223DACD50](v16, v2);
        if (__OFADD__(v16, 1))
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (v16 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_43;
        }

        v18 = *(v2 + 8 * v16 + 32);
        if (__OFADD__(v16, 1))
        {
LABEL_28:
          __break(1u);
          break;
        }
      }

      v19 = v18;
      v20 = sub_221FB6598();

      ++v16;
    }

    while ((v20 & 1) != 0);
    v21 = 0;
    v33 = v4;
    while (1)
    {
      if (v17)
      {
        v23 = MEMORY[0x223DACD50](v21, v2);
      }

      else
      {
        if (v21 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_42;
        }

        v23 = *(v2 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (sub_221FB6598())
      {
      }

      else
      {
        sub_221FB69B8();
        v22 = *(v33 + 16);
        sub_221FB69E8();
        sub_221FB69F8();
        sub_221FB69C8();
      }

      ++v21;
      if (v25 == v15)
      {
        goto LABEL_46;
      }
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    ;
  }

  v15 = sub_221FB6868();
  if (v15)
  {
    goto LABEL_19;
  }

LABEL_46:
  v26 = *(v32 + 24);
  v27 = *(v32 + 48);

  sub_221E9D138(0, &qword_281306E70, 0x277CE90F8);
  v28 = sub_221FB6428();

  sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
  v29 = sub_221FB6428();

  ASAnalyticsUpdateManateeStateWithFriends();

  v30 = *(v32 + 8);

  return v30();
}

uint64_t sub_221EC7594()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

BOOL sub_221EC75F8(void **a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 120);
  v4 = *(a2 + 128);
  v5 = *(a2 + 136);
  if ((_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0() & 1) != 0 && (LOBYTE(v14[0]) = v3, UserDefaultsKeys.rawValue.getter(), v6 = _sSa23ActivitySharingServicesSSRszlE4read4from3keySaySSGSgSo14NSUserDefaultsC_SStFZ_0(v5), , v6))
  {
    v4 = v6;
  }

  else
  {
  }

  v7 = [v2 identifier];
  v8 = sub_221FB6318();
  v10 = v9;

  v14[0] = v8;
  v14[1] = v10;
  MEMORY[0x28223BE20](v11);
  v13[2] = v14;
  LOBYTE(v7) = sub_221F7B864(sub_221EB8534, v13, v4);

  return (v7 & 1) == 0;
}

void sub_221EC774C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_221FB6868())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE38, &qword_221FB9CF0);
      v3 = sub_221FB6948();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_221FB6868();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v40 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v38 = v1;
    while (1)
    {
      v8 = MEMORY[0x223DACD50](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = *(v3 + 40);
      v12 = sub_221FB6748();
      v13 = -1 << *(v3 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      v16 = *(v6 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) != 0)
      {
        v18 = ~v13;
        sub_221E9D138(0, &qword_281306E70, 0x277CE90F8);
        while (1)
        {
          v19 = *(*(v3 + 48) + 8 * v14);
          v20 = sub_221FB6758();

          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v18;
          v15 = v14 >> 6;
          v16 = *(v6 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            v1 = v38;
            v5 = v40;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v38;
        v5 = v40;
        if (v7 == v40)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v15) = v17 | v16;
        *(*(v3 + 48) + 8 * v14) = v10;
        v21 = *(v3 + 16);
        v9 = __OFADD__(v21, 1);
        v22 = v21 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v22;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v23 = 0;
    v37 = v1 + 32;
    v39 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v23 != v39)
    {
      v24 = *(v3 + 40);
      v25 = *(v37 + 8 * v23);
      v26 = sub_221FB6748();
      v27 = -1 << *(v3 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      v30 = *(v6 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      if (((1 << v28) & v30) != 0)
      {
        v32 = ~v27;
        sub_221E9D138(0, &qword_281306E70, 0x277CE90F8);
        do
        {
          v33 = *(*(v3 + 48) + 8 * v28);
          v34 = sub_221FB6758();

          if (v34)
          {

            v5 = v40;
            goto LABEL_23;
          }

          v28 = (v28 + 1) & v32;
          v29 = v28 >> 6;
          v30 = *(v6 + 8 * (v28 >> 6));
          v31 = 1 << v28;
        }

        while (((1 << v28) & v30) != 0);
        v5 = v40;
      }

      *(v6 + 8 * v29) = v31 | v30;
      *(*(v3 + 48) + 8 * v28) = v25;
      v35 = *(v3 + 16);
      v9 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v36;
LABEL_23:
      if (++v23 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_221EC7A3C()
{
  result = qword_281306E68;
  if (!qword_281306E68)
  {
    sub_221E9D138(255, &qword_281306E70, 0x277CE90F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306E68);
  }

  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_221EC7AD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_221EC7B18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_221EC7B8C()
{
  v1 = *(v0 + 16);
  v2 = 0x706D6F436C616F67;
  v3 = 0x4474756F6B726F77;
  if (v1 != 5)
  {
    v3 = 0x74697465706D6F63;
  }

  v4 = 0x6D65766569686361;
  if (v1 != 3)
  {
    v4 = 0x74756F6B726F77;
  }

  if (*(v0 + 16) <= 4u)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000019;
  }

  if (!*(v0 + 16))
  {
    v2 = 0xD000000000000015;
  }

  if (*(v0 + 16) <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices21SecureCloudUpdateTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_221EC7CC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 17))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 16);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_221EC7D10(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_221EC7D54(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_221EC7D7C(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = *a1;
  *(v2 + 112) = *(a1 + 16);
  *(v2 + 120) = *(a1 + 24);
  *(v2 + 200) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221EC7E6C, 0, 0);
}

uint64_t sub_221EC7E6C()
{
  if (*(v0 + 200))
  {
    v2 = *(v0 + 80);
    v1 = *(v0 + 88);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 120);
    v6 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 80), *(*(v0 + 56) + 104));
    v7 = v5;
    v8 = swift_task_alloc();
    *(v0 + 136) = v8;
    *v8 = v0;
    v8[1] = sub_221EC7F7C;
    v9 = *(v0 + 112);

    return sub_221F7AAE4(v7, v9);
  }
}

uint64_t sub_221EC7F7C()
{
  v2 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_221EC8190;
  }

  else
  {
    v3 = sub_221EC8090;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EC8090()
{
  v1 = v0[14];
  sub_221EA4AB4(v0[7] + 80, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v7 = v0[11];
    v8 = v0[8];
    v9 = v0[9];
    sub_221FB5C18();

    v0[19] = sub_221FB5BE8();
    v0[20] = v10;
    v11 = *(v9 + 8);
    v0[21] = v11;
    v0[22] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v7, v8);
    v4 = *v2;
    v0[23] = *v2;
    v3 = sub_221EC8414;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_221EC8190()
{
  v1 = [*(v0 + 120) _activitySummaryIndex];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v3 = *(v0 + 128);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);
  sub_221ED4904(v4, v3, 0);

  v9 = v5;
  v10 = v2;
  v11 = sub_221FB61B8();
  v12 = sub_221FB65A8();

  sub_221ED4948(v4, v3, 0);
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 144);
  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  if (v13)
  {
    v17 = *(v0 + 112);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v18 = 134218498;
    *(v18 + 4) = v1;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v17;
    *v19 = v17;
    *(v18 + 22) = 2112;
    v20 = v17;
    v21 = v14;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 24) = v22;
    v19[1] = v22;
    _os_log_impl(&dword_221E93000, v11, v12, "Failed to store today snapshot anchor %lld, relationship identifier %@, error: %@", v18, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v19, -1, -1);
    MEMORY[0x223DADA80](v18, -1, -1);
    sub_221ED4948(v16, v15, 0);
  }

  else
  {
    sub_221ED4948(*(v0 + 120), *(v0 + 128), 0);
  }

  v24 = *(v0 + 80);
  v23 = *(v0 + 88);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_221EC8414()
{
  v1 = v0[23];
  v2 = sub_221ECB14C(v0[19], v0[20]);

  if (!v2)
  {
    v2 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v0[24] = v2;

  return MEMORY[0x2822009F8](sub_221EC84A8, 0, 0);
}

uint64_t sub_221EC84A8()
{
  v47 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[12];
  v7 = sub_221FB61D8();
  __swift_project_value_buffer(v7, qword_281307DF0);
  sub_221ED4904(v3, v2, 0);

  v8 = v5;

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();
  if (os_log_type_enabled(v9, v10))
  {
    v45 = v10;
    v12 = v0[13];
    v11 = v0[14];
    v13 = v0[12];
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v14 = 136315394;
    v15 = [v11 UUID];

    v16 = v0[24];
    if (!v15)
    {
      v41 = v0 + 15;
      v40 = v0[15];
      v39 = v41[1];

      sub_221ED4948(v40, v39, 0);

      __break(1u);
      return result;
    }

    v17 = v0[21];
    v18 = v0[22];
    v42 = v0[15];
    v43 = v0[16];
    v19 = v0[10];
    v20 = v0[8];
    sub_221ED4948(v42, v43, 0);

    sub_221FB5C18();

    v21 = sub_221FB5BE8();
    v23 = v22;
    v17(v19, v20);
    v24 = sub_221EF4114(v21, v23, &v46);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    v25 = sub_221FB6298();
    v27 = v26;

    v28 = sub_221EF4114(v25, v27, &v46);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_221E93000, v9, v45, "Updated snapshot hashes for today: relationship %s, hashes %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
    sub_221ED4948(v42, v43, 0);
  }

  else
  {
    v29 = v0[24];
    v31 = v0[15];
    v30 = v0[16];
    v32 = v0[13];
    v33 = v0[14];
    v34 = v0[12];
    sub_221ED4948(v31, v30, 0);

    sub_221ED4948(v31, v30, 0);
    swift_bridgeObjectRelease_n();
  }

  v36 = v0[10];
  v35 = v0[11];

  v37 = v0[1];

  return v37();
}

uint64_t sub_221EC8814(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 48) = v4;
  v5 = *(v4 - 8);
  *(v2 + 56) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 64) = swift_task_alloc();
  *(v2 + 72) = *a1;
  v7 = *(a1 + 24);
  *(v2 + 88) = *(a1 + 16);
  *(v2 + 96) = v7;
  *(v2 + 152) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221EC88F0, 0, 0);
}

id sub_221EC88F0()
{
  if (*(v0 + 152) == 2)
  {
    result = [*(v0 + 88) UUID];
    if (result)
    {
      v2 = result;
      v4 = *(v0 + 56);
      v3 = *(v0 + 64);
      v6 = *(v0 + 40);
      v5 = *(v0 + 48);
      sub_221FB5C18();

      v7 = sub_221FB5BE8();
      v9 = v8;
      *(v0 + 104) = v7;
      *(v0 + 112) = v8;
      (*(v4 + 8))(v3, v5);
      v10 = *__swift_project_boxed_opaque_existential_0Tm((v6 + 40), *(v6 + 64));
      v11 = swift_task_alloc();
      *(v0 + 120) = v11;
      *v11 = v0;
      v11[1] = sub_221EC8A80;
      v12 = *(v0 + 96);

      return sub_221ED002C(v12, v7, v9);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v13 = *(v0 + 64);

    v14 = *(v0 + 8);

    return v14();
  }

  return result;
}

uint64_t sub_221EC8A80()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);

    v5 = sub_221EC8EF8;
  }

  else
  {
    v5 = sub_221EC8B9C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EC8B9C()
{
  v1 = v0[12];
  v2 = v0[5];
  v3 = *__swift_project_boxed_opaque_existential_0Tm(v2, v2[3]);
  v4 = sub_221FB6C18();
  [v3 updateSecureCloudGoalCompletionAnchor_];

  v5 = __swift_project_boxed_opaque_existential_0Tm(v2 + 5, v2[8]);
  v6 = *v5;
  v0[17] = *v5;

  return MEMORY[0x2822009F8](sub_221EC8C50, v6, 0);
}

uint64_t sub_221EC8C50()
{
  v1 = *(v0 + 136);
  *(v0 + 144) = sub_221ECB2F0(*(v0 + 104), *(v0 + 112));
  *(v0 + 153) = v2;

  return MEMORY[0x2822009F8](sub_221EC8CC4, 0, 0);
}

uint64_t sub_221EC8CC4()
{
  v20 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 153);
    v7 = *(v0 + 104);
    v6 = *(v0 + 112);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v10 = sub_221EF4114(v7, v6, &v19);

    *(v8 + 4) = v10;
    *(v8 + 12) = 2080;
    if (v5)
    {
      v11 = 0xE300000000000000;
      v12 = 7104878;
    }

    else
    {
      v14 = *(v0 + 144);
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 32) = v14;
      sub_221FB6A08();
      v12 = *(v0 + 16);
      v11 = *(v0 + 24);
    }

    v15 = sub_221EF4114(v12, v11, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_221E93000, v3, v4, "Updated goal completion anchor for relationship %s, anchor %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
    v13 = *(v0 + 112);
  }

  v16 = *(v0 + 64);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EC8EF8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);

  v6 = v2;
  v7 = v1;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[16];
  if (v10)
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 134218498;
    *(v14 + 4) = v12;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v15 = v13;
    *(v14 + 22) = 2112;
    v16 = v13;
    v17 = v11;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v18;
    v15[1] = v18;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to store goal completion anchor %lld, for relationship %@, error: %@", v14, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v15, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
  }

  v19 = v0[8];

  v20 = v0[1];

  return v20();
}

id sub_221EC9110(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = [objc_opt_self() snapshotWithActivitySummary_];
  if (v10)
  {
    v11 = [*__swift_project_boxed_opaque_existential_0Tm(v1 v1[3])];
    if (v11)
    {
      v12 = v11;
      sub_221FB5C18();

      v13 = sub_221FB5C38();
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
    }

    else
    {
      v13 = sub_221FB5C38();
      (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
    }

    sub_221EB994C(v7, v9);
    sub_221FB5C38();
    v15 = *(v13 - 8);
    v16 = 0;
    if ((*(v15 + 48))(v9, 1, v13) != 1)
    {
      v16 = sub_221FB5BF8();
      (*(v15 + 8))(v9, v13);
    }

    [v10 setSourceUUID_];

    ASCleanSnapshotForUpload();
  }

  else
  {
    sub_221ED8D78();
    swift_allocError();
    *v14 = 1;
    swift_willThrow();
  }

  return v10;
}

uint64_t sub_221EC937C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[9] = a1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v7 = sub_221FB5C38();
  v4[15] = v7;
  v8 = *(v7 - 8);
  v4[16] = v8;
  v9 = *(v8 + 64) + 15;
  v4[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v4[18] = v10;
  v4[19] = v11;

  return MEMORY[0x2822009F8](sub_221EC94A4, 0, 0);
}

uint64_t sub_221EC94A4()
{
  v1 = [*(v0 + 152) secureCloudZoneName];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v5 = *(v0 + 152);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  v8 = *MEMORY[0x277CBBF28];
  sub_221FB6318();
  *(v0 + 160) = sub_221FB65D8();
  *(v0 + 168) = [v6 _activitySummaryIndex];
  sub_221EA4AB4(v7 + 40, v0 + 16);
  v9 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  v1 = [v5 UUID];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = v1;
  v11 = *(v0 + 144);
  v12 = *(v0 + 120);
  v13 = *(v0 + 128);
  sub_221FB5C18();

  *(v0 + 176) = sub_221FB5BE8();
  *(v0 + 184) = v14;
  v15 = *(v13 + 8);
  *(v0 + 192) = v15;
  *(v0 + 200) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v15(v11, v12);
  v2 = *v9;
  *(v0 + 208) = *v9;
  v1 = sub_221EC9640;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221EC9640()
{
  v1 = *(v0 + 208);
  v2 = sub_221ECB2F0(*(v0 + 176), *(v0 + 184));
  v4 = v3;

  *(v0 + 216) = v2;
  *(v0 + 224) = v4;

  return MEMORY[0x2822009F8](sub_221EC96D0, 0, 0);
}

uint64_t sub_221EC96D0()
{
  v49 = v0;
  v1 = *(v0 + 168);
  if (*(v0 + 224))
  {
    v2 = 0;
  }

  else
  {
    v2 = *(v0 + 216);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v3 = *(v0 + 160);
  if (v2 >= v1)
  {
    v18 = *(v0 + 72);

    *(v18 + 25) = 0u;
    *v18 = 0u;
    v18[1] = 0u;
  }

  else
  {
    v4 = [objc_opt_self() goalCompletionEventWithActivitySummary_];
    v5 = [v4 recordWithZoneID:v3 recordEncryptionType:1];
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 152);
    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v8 = v6;
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();

    if (os_log_type_enabled(v9, v10))
    {
      v46 = v5;
      v47 = v4;
      v11 = *(v0 + 152);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v48 = v13;
      *v12 = 136315394;
      v14 = [v11 UUID];
      if (v14)
      {
        v15 = *(v0 + 104);
        v16 = v14;
        sub_221FB5C18();

        v17 = 0;
      }

      else
      {
        v17 = 1;
      }

      v20 = *(v0 + 120);
      v19 = *(v0 + 128);
      v22 = *(v0 + 104);
      v21 = *(v0 + 112);
      v23 = *(v0 + 96);
      (*(v19 + 56))(v22, v17, 1, v20);
      sub_221EB994C(v22, v21);
      sub_221ED9874(v21, v23, &qword_27CFEBD50, &unk_221FB9FB0);
      if ((*(v19 + 48))(v23, 1, v20) == 1)
      {
        v24 = 0xE300000000000000;
        v25 = 7104878;
      }

      else
      {
        v26 = *(v0 + 192);
        v45 = *(v0 + 200);
        v27 = *(v0 + 136);
        v28 = *(v0 + 120);
        (*(*(v0 + 128) + 32))(v27, *(v0 + 96), v28);
        *(v0 + 56) = 0;
        *(v0 + 64) = 0xE000000000000000;
        sub_221FB6A08();
        v25 = *(v0 + 56);
        v24 = *(v0 + 64);
        v26(v27, v28);
      }

      v29 = *(v0 + 168);
      sub_221E9CFE8(*(v0 + 112), &qword_27CFEBD50, &unk_221FB9FB0);
      v30 = sub_221EF4114(v25, v24, &v48);

      *(v12 + 4) = v30;
      *(v12 + 12) = 2048;
      *(v12 + 14) = v29;
      _os_log_impl(&dword_221E93000, v9, v10, "Creating goal completion update for %s with index %lld", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);

      v5 = v46;
      v4 = v47;
    }

    else
    {
    }

    v32 = *(v0 + 160);
    v31 = *(v0 + 168);
    v33 = *(v0 + 152);
    v34 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_221FB81B0;
    *(v35 + 32) = v5;

    v36 = MEMORY[0x277D84F90];
    *v34 = v35;
    *(v34 + 8) = v36;
    *(v34 + 16) = v33;
    *(v34 + 24) = v31;
    *(v34 + 32) = 0;
    *(v34 + 40) = 2;
    v37 = v33;
  }

  v39 = *(v0 + 136);
  v38 = *(v0 + 144);
  v41 = *(v0 + 104);
  v40 = *(v0 + 112);
  v42 = *(v0 + 96);

  v43 = *(v0 + 8);

  return v43();
}

uint64_t sub_221EC9AEC(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221EC9B0C, 0, 0);
}

uint64_t sub_221EC9B0C()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm(*(v0 + 40) *(*(v0 + 40) + 24))];
  *(v0 + 48) = v1;
  if (!v1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v7 = sub_221FB61D8();
    __swift_project_value_buffer(v7, qword_281307DF0);
    v2 = sub_221FB61B8();
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v2, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v2, v8, "No activity summary to push for today", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    goto LABEL_12;
  }

  v2 = v1;
  if (([v1 paused]& 1) != 0)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_221E93000, v4, v5, "Activity summary is paused, not pushing update", v6, 2u);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

LABEL_12:
    v10 = *(v0 + 8);
    v11 = MEMORY[0x277D84F90];

    return v10(v11);
  }

  v13 = *(v0 + 40);
  v14 = sub_221EC9110(v2);
  *(v0 + 56) = v14;
  v15 = v14;
  v16 = *(v0 + 40);
  *(v0 + 16) = *(v0 + 32);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *(v17 + 16) = v2;
  *(v17 + 24) = v16;
  *(v17 + 32) = v15;
  *(v17 + 40) = v2;
  *(v17 + 48) = 0;
  *(v17 + 56) = 0;
  v18 = *(MEMORY[0x277CE94E0] + 4);
  v19 = swift_task_alloc();
  *(v0 + 72) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
  *(v0 + 80) = v20;
  v21 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
  *(v0 + 88) = v21;
  *v19 = v0;
  v19[1] = sub_221EC9E9C;

  return MEMORY[0x28213AED0](&unk_221FB9F90, v17, v20, &type metadata for SecureCloudUpdate, v21);
}

void sub_221EC9E9C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
  }

  else
  {
    v6 = v3[8];

    MEMORY[0x2822009F8](sub_221EC9FDC, 0, 0);
  }
}

uint64_t sub_221EC9FDC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);

  v4 = sub_221EC9110(v2);
  *(v0 + 112) = v4;
  if (v1)
  {
    v5 = *(v0 + 96);
    v6 = *(v0 + 48);

    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = v4;
    if (ASAllGoalsMetForSnapshot())
    {
      *(v0 + 24) = *(v0 + 32);
      v10 = swift_task_alloc();
      *(v0 + 120) = v10;
      v10[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
      v11 = *(MEMORY[0x277CE94E0] + 4);
      v12 = swift_task_alloc();
      *(v0 + 128) = v12;
      *v12 = v0;
      v12[1] = sub_221ECA194;
      v13 = *(v0 + 80);
      v14 = *(v0 + 88);

      return MEMORY[0x28213AED0](&unk_221FB9FA8, v10, v13, &type metadata for SecureCloudUpdate, v14);
    }

    else
    {

      v15 = *(v0 + 48);
      v17 = *(v0 + 96);
      sub_221ED43FC(MEMORY[0x277D84F90]);

      v16 = *(v0 + 8);

      return v16(v17);
    }
  }
}

void sub_221ECA194(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = *(v4 + 120);
    *(v4 + 136) = a1;

    MEMORY[0x2822009F8](sub_221ECA2D8, 0, 0);
  }
}

uint64_t sub_221ECA2D8()
{
  v1 = *(v0 + 48);
  v4 = *(v0 + 96);
  sub_221ED43FC(*(v0 + 136));

  v2 = *(v0 + 8);

  return v2(v4);
}

uint64_t sub_221ECA360(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221ECA380, 0, 0);
}

uint64_t sub_221ECA380()
{
  v1 = v0[5];
  v0[2] = v0[4];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v0[8] = v5;
  v6 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  v0[9] = v6;
  *v4 = v0;
  v4[1] = sub_221ECA4A0;

  return MEMORY[0x28213AEC8](&unk_221FB9EF0, v2, v5, v6);
}

void sub_221ECA4A0()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 48);

    MEMORY[0x2822009F8](sub_221ECA5DC, 0, 0);
  }
}

uint64_t sub_221ECA5DC()
{
  v1 = v0[5];
  v0[3] = v0[4];
  v2 = swift_task_alloc();
  v0[10] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_221ECA6B0;
  v5 = v0[8];
  v6 = v0[9];

  return MEMORY[0x28213AEC8](&unk_221FB9F08, v2, v5, v6);
}

void sub_221ECA6B0()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 80);

    v6 = *(v4 + 8);

    v6();
  }
}

void sub_221ECA7E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 48);
    do
    {
      v3 = *(v2 + 24);
      v4 = *v2;
      v5 = *(v2 - 1);
      v6 = v4;
      v7 = *(v2 + 1);
      v8 = v3;
      sub_221ECA854(&v5);
      v2 += 6;
      --v1;
    }

    while (v1);
  }
}

void sub_221ECA854(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  if (*(a1 + 40) == 2)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v15 = sub_221FB61D8();
    __swift_project_value_buffer(v15, qword_281307DF0);

    v16 = v4;
    v10 = sub_221FB61B8();
    v17 = sub_221FB65A8();

    if (os_log_type_enabled(v10, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 134218242;
      *(v18 + 4) = v3;
      *(v18 + 12) = 2112;
      *(v18 + 14) = v16;
      *v19 = v16;
      v20 = v16;
      _os_log_impl(&dword_221E93000, v10, v17, "Failed to update goal completion notification: %lld) relationship: %@", v18, 0x16u);
      sub_221E9CFE8(v19, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    goto LABEL_11;
  }

  if (*(a1 + 40))
  {
    return;
  }

  v5 = a1[4];
  v6 = qword_281307080;
  v7 = v3;
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_221FB61D8();
  __swift_project_value_buffer(v8, qword_281307DF0);
  sub_221ED4904(v3, v5, 0);

  v9 = v4;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65A8();

  sub_221ED4948(v3, v5, 0);
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412546;
    *(v12 + 4) = v7;
    *(v12 + 12) = 2112;
    *(v12 + 14) = v9;
    *v13 = v3;
    v13[1] = v9;
    sub_221ED4904(v3, v5, 0);
    v14 = v9;
    _os_log_impl(&dword_221E93000, v10, v11, "Failed to update today's summary %@, for relationship %@", v12, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
    sub_221ED4948(v3, v5, 0);
LABEL_11:

    return;
  }

  sub_221ED4948(v3, v5, 0);
}

uint64_t sub_221ECABB4()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_221ECAC68;

  return sub_221ECB980();
}

uint64_t sub_221ECAC68()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221ECAD64, 0, 0);
}

uint64_t sub_221ECAD64()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 80), *(*(v0 + 16) + 104));
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_221ECAE18;

  return sub_221ECBCD8();
}

uint64_t sub_221ECAE18()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_221ECAF0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221EC9AEC(a1);
}

uint64_t sub_221ECAFA0(uint64_t a1)
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

uint64_t sub_221ECB0A0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221ECA360(a1);
}

uint64_t sub_221ECB14C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB2F0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);
        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB494(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB638(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB7DC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 176);
  if (v3 >= 2)
  {
    if (*(v3 + 16))
    {

      v11 = sub_221ED4B5C(a1, a2);
      if (v12)
      {
        v13 = *(*(v3 + 56) + 8 * v11);

        sub_221E967CC(v3);
        return v13;
      }

      sub_221E967CC(v3);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DF0);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65A8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v15);
      _os_log_impl(&dword_221E93000, v5, v6, "Inactive anchor store: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_221ECB9A0()
{
  v17 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v16);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;
      v8 = v0[2];

      return sub_221ED1B44(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v16);
      _os_log_impl(&dword_221E93000, v11, v12, "Protected data is unavailable on prepare: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_221ECBCF8()
{
  v17 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v16);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;
      v8 = v0[2];

      return sub_221ED2094(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v16);
      _os_log_impl(&dword_221E93000, v11, v12, "Protected data is unavailable on prepare: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_221ECC050()
{
  v17 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v16);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;
      v8 = v0[2];

      return sub_221ED2928(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v16);
      _os_log_impl(&dword_221E93000, v11, v12, "Protected data is unavailable on prepare: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_221ECC3A8()
{
  v17 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v16);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221EAC1E0;
      v8 = v0[2];

      return sub_221ED2C6C(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v16);
      _os_log_impl(&dword_221E93000, v11, v12, "Protected data is unavailable on prepare: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_221ECC700()
{
  v17 = v0;
  v1 = v0[2];
  if (v1[22] == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm(v1 + 14 v1[17]) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v2 = sub_221FB61D8();
      __swift_project_value_buffer(v2, qword_281307DF0);
      v3 = sub_221FB61B8();
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v16 = v6;
        *v5 = 136315138;
        *(v5 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v16);
        _os_log_impl(&dword_221E93000, v3, v4, "Preparing anchor store for protected data change: %s", v5, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x223DADA80](v6, -1, -1);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v7 = swift_task_alloc();
      v0[3] = v7;
      *v7 = v0;
      v7[1] = sub_221E9DA9C;
      v8 = v0[2];

      return sub_221ED25E4(1);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DF0);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v16);
      _os_log_impl(&dword_221E93000, v11, v12, "Protected data is unavailable on prepare: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_221ECCA58()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECCC00;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_37;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECCC00()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_221ED9A04;
  }

  else
  {
    v5 = sub_221ECCD20;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECCD20()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);

    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_221EF4114(v9, v8, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "No existing anchor, no data from domain for key: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v15 = 0;
  }

  else
  {
    v12 = sub_221FB5998();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE90, &qword_221FB9F68);
    sub_221ED8DF8();
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v15 = *(v0 + 80);
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_221ECD09C()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECD244;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_57;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECD244()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_221ECD6F8;
  }

  else
  {
    v5 = sub_221ECD364;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECD364()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);

    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_221EF4114(v9, v8, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "No existing anchor, no data from domain for key: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v15 = 0;
  }

  else
  {
    v12 = sub_221FB5998();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF10, &qword_221FBA068);
    sub_221ED925C(&qword_27CFEBF48, sub_221ED92E0);
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v15 = *(v0 + 80);
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_221ECD6F8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[25];
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v4;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_221E93000, v7, v8, "No existing anchor: %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v13 = v0[1];

  return v13(0);
}

uint64_t sub_221ECD8D0()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECDA78;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_44;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECDA78()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_221ED9A04;
  }

  else
  {
    v5 = sub_221ECDB98;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECDB98()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);

    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_221EF4114(v9, v8, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "No existing anchor, no data from domain for key: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v15 = 0;
  }

  else
  {
    v12 = sub_221FB5998();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE60, &qword_221FB9F30);
    sub_221ED8EA4(&qword_27CFEBEF0);
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v15 = *(v0 + 80);
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_221ECDF40()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECE0E8;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_76;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECE0E8()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_221ED9A04;
  }

  else
  {
    v5 = sub_221ECE208;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECE208()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);

    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_221EF4114(v9, v8, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "No existing anchor, no data from domain for key: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v15 = 0;
  }

  else
  {
    v12 = sub_221FB5998();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF70, &unk_221FBA0D0);
    sub_221ED9584();
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v15 = *(v0 + 80);
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_221ECE584()
{
  v1 = v0[20];
  v2 = v1[19];
  v3 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v4 = sub_221FB62E8();
  v5 = [v3 initWithCategory:1 domainName:v4 healthStore:v2];
  v0[21] = v5;

  v0[22] = v1[20];
  v0[23] = v1[21];
  v6 = sub_221FB62E8();
  v0[24] = v6;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221ECE72C;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED8, &qword_221FBA020);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED40A8;
  v0[13] = &block_descriptor_83;
  v0[14] = v7;
  [v5 dataForKey:v6 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECE72C()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 160);
  if (v3)
  {
    v5 = sub_221ED9A04;
  }

  else
  {
    v5 = sub_221ECE84C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECE84C()
{
  v19 = v0;
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);

  if (v3 >> 60 == 15)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 160);
    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DF0);

    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 176);
      v8 = *(v0 + 184);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_221EF4114(v9, v8, &v18);
      _os_log_impl(&dword_221E93000, v6, v7, "No existing anchor, no data from domain for key: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v15 = 0;
  }

  else
  {
    v12 = sub_221FB5998();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    sub_221FB5988();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBFB8, &unk_221FBA110);
    sub_221ED96E4(&qword_27CFEBFF8, sub_221ED9768);
    sub_221FB5978();
    sub_221EBEFE4(v2, v3);

    v15 = *(v0 + 80);
  }

  v16 = *(v0 + 8);

  return v16(v15);
}

uint64_t sub_221ECEBE0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECEC00, v1, 0);
}

uint64_t sub_221ECEC00()
{
  v1 = v0[18];
  v2 = sub_221FB59C8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE90, &qword_221FB9F68);
  sub_221ED8AB4();
  v0[20] = sub_221FB59A8();
  v0[21] = v5;
  v6 = v0[19];

  v7 = v6[19];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_221FB62E8();
  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];
  v0[22] = v10;

  v11 = sub_221FB5B08();
  v0[23] = v11;
  v12 = v6[20];
  v13 = v6[21];
  v14 = sub_221FB62E8();
  v0[24] = v14;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_19_2;
  v0[14] = v15;
  [v10 setData:v11 forKey:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECEE70()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_221ED9A08;
  }

  else
  {
    v5 = sub_221ED9A0C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECEF90(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECEFB0, v1, 0);
}

uint64_t sub_221ECEFB0()
{
  v1 = v0[18];
  v2 = sub_221FB59C8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF10, &qword_221FBA068);
  sub_221ED925C(&qword_27CFEBF18, sub_221ED91AC);
  v0[20] = sub_221FB59A8();
  v0[21] = v5;
  v6 = v0[19];

  v7 = v6[19];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_221FB62E8();
  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];
  v0[22] = v10;

  v11 = sub_221FB5B08();
  v0[23] = v11;
  v12 = v6[20];
  v13 = v6[21];
  v14 = sub_221FB62E8();
  v0[24] = v14;
  v0[2] = v0;
  v0[3] = sub_221ECF258;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_49;
  v0[14] = v15;
  [v10 setData:v11 forKey:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECF258()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 200) = v3;
  v4 = *(v1 + 152);
  if (v3)
  {
    v5 = sub_221ECF3F8;
  }

  else
  {
    v5 = sub_221ECF378;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221ECF378()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[22];
  sub_221EBEF30(v0[20], v0[21]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_221ECF3F8()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v6 = v0[21];
  swift_willThrow();
  sub_221EBEF30(v5, v6);

  v7 = v0[25];
  v8 = v0[1];

  return v8();
}

uint64_t sub_221ECF494(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECF4B4, v1, 0);
}

uint64_t sub_221ECF4B4()
{
  v1 = v0[18];
  v2 = sub_221FB59C8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE60, &qword_221FB9F30);
  sub_221ED8EA4(&qword_27CFEBE68);
  v0[20] = sub_221FB59A8();
  v0[21] = v5;
  v6 = v0[19];

  v7 = v6[19];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_221FB62E8();
  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];
  v0[22] = v10;

  v11 = sub_221FB5B08();
  v0[23] = v11;
  v12 = v6[20];
  v13 = v6[21];
  v14 = sub_221FB62E8();
  v0[24] = v14;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_9;
  v0[14] = v15;
  [v10 setData:v11 forKey:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECF750(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECF770, v1, 0);
}

uint64_t sub_221ECF770()
{
  v1 = v0[18];
  v2 = sub_221FB59C8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF70, &unk_221FBA0D0);
  sub_221ED93FC();
  v0[20] = sub_221FB59A8();
  v0[21] = v5;
  v6 = v0[19];

  v7 = v6[19];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_221FB62E8();
  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];
  v0[22] = v10;

  v11 = sub_221FB5B08();
  v0[23] = v11;
  v12 = v6[20];
  v13 = v6[21];
  v14 = sub_221FB62E8();
  v0[24] = v14;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_62;
  v0[14] = v15;
  [v10 setData:v11 forKey:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECF9E0(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_221ECFA00, v1, 0);
}

uint64_t sub_221ECFA00()
{
  v1 = v0[18];
  v2 = sub_221FB59C8();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_221FB59B8();
  v0[10] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBFB8, &unk_221FBA110);
  sub_221ED96E4(&qword_27CFEBFC0, sub_221ED94C0);
  v0[20] = sub_221FB59A8();
  v0[21] = v5;
  v6 = v0[19];

  v7 = v6[19];
  v8 = objc_allocWithZone(MEMORY[0x277CCD570]);
  v9 = sub_221FB62E8();
  v10 = [v8 initWithCategory:1 domainName:v9 healthStore:v7];
  v0[22] = v10;

  v11 = sub_221FB5B08();
  v0[23] = v11;
  v12 = v6[20];
  v13 = v6[21];
  v14 = sub_221FB62E8();
  v0[24] = v14;
  v0[2] = v0;
  v0[3] = sub_221ECEE70;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_68;
  v0[14] = v15;
  [v10 setData:v11 forKey:v14 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221ECFCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ECFCCC, v3, 0);
}

uint64_t sub_221ECFCCC()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE80, &qword_221FB9F50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBEB0, &qword_221FB9F78);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBE88, &qword_221FB9F58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v21, &qword_27CFEBEB0, &qword_221FB9F78);

    v16 = v21[0];
    v0[13] = v21[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;
    v20 = v0[12];

    return sub_221ECEBE0(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, v21);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED002C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED0050, v3, 0);
}

uint64_t sub_221ED0050()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE50, &qword_221FB9F18);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED7F58(inited);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBE58, &qword_221FB9F20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v2;
    sub_221ED8830(v14, sub_221ED7A20, 0, isUniquelyReferenced_nonNull_native, v21);

    v16 = v21[0];
    v0[13] = v21[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;
    v20 = v0[12];

    return sub_221ECF494(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, v21);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED0378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED039C, v3, 0);
}

uint64_t sub_221ED039C()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBFA8, &qword_221FBA0F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBFD8, &qword_221FBA120);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBFB0, &qword_221FBA100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v21, &qword_27CFEBFD8, &qword_221FBA120);

    v16 = v21[0];
    v0[13] = v21[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;
    v20 = v0[12];

    return sub_221ECF9E0(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, v21);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED06FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED0720, v3, 0);
}

uint64_t sub_221ED0720()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF00, &qword_221FBA050);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBF40, &qword_221FBA080);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBF08, &qword_221FBA058);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v21, &qword_27CFEBF40, &qword_221FBA080);

    v16 = v21[0];
    v0[13] = v21[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED0A80;
    v20 = v0[12];

    return sub_221ECEF90(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, v21);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED0A80()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  v6 = *v0;

  v3 = *(v1 + 104);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_221ED0B98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  return MEMORY[0x2822009F8](sub_221ED0BBC, v3, 0);
}

uint64_t sub_221ED0BBC()
{
  v22 = v0;
  v1 = v0[12];
  v2 = *(v1 + 176);
  if (v2 >= 2)
  {
    v11 = v0[10];
    v10 = v0[11];
    v12 = v0[9];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF60, &qword_221FBA0B8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221FB81A0;
    *(inited + 32) = v11;
    *(inited + 40) = v10;
    *(inited + 48) = v12;
    sub_221E967DC(v2);

    v14 = sub_221ED8604(inited, &qword_27CFEBF98, &qword_221FBA0E0);
    swift_setDeallocating();
    sub_221E9CFE8(inited + 32, &qword_27CFEBF68, &qword_221FBA0C0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = v2;
    sub_221ED8F14(v14, sub_221ED9A14, 0, isUniquelyReferenced_nonNull_native, v21, &qword_27CFEBF98, &qword_221FBA0E0);

    v16 = v21[0];
    v0[13] = v21[0];
    v17 = *(v1 + 176);
    *(v1 + 176) = v16;
    v18 = v16;

    sub_221E967CC(v17);
    v19 = swift_task_alloc();
    v0[14] = v19;
    *v19 = v0;
    v19[1] = sub_221ED9A38;
    v20 = v0[12];

    return sub_221ECF750(v18);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    v4 = sub_221FB61B8();
    v5 = sub_221FB65A8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21[0] = v7;
      *v6 = 136315138;
      *(v6 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, v21);
      _os_log_impl(&dword_221E93000, v4, v5, "Inactive anchor store: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_221ED0F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_221FB5C38();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221ED0FEC, 0, 0);
}

uint64_t sub_221ED0FEC()
{
  v1 = [*(v0 + 24) UUID];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  sub_221FB5C18();

  *(v0 + 96) = sub_221FB5BE8();
  *(v0 + 104) = v9;
  (*(v6 + 8))(v5, v7);
  v1 = [v8 secureCloudZoneName];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = v1;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  v13 = *MEMORY[0x277CBBF28];
  sub_221FB6318();
  *(v0 + 112) = sub_221FB65D8();
  *(v0 + 120) = [v11 _activitySummaryIndex];
  v14 = __swift_project_boxed_opaque_existential_0Tm((v12 + 80), *(v12 + 104));
  v2 = *v14;
  *(v0 + 128) = *v14;
  v1 = sub_221ED1164;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221ED1164()
{
  v1 = *(v0 + 128);
  v2 = sub_221ECB14C(*(v0 + 96), *(v0 + 104));
  if (!v2)
  {
    v2 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = sub_221ED4C68(*(v0 + 120));
    if (v6)
    {
      v4 = *(*(v3 + 56) + 8 * v5);
      v7 = 1;
      goto LABEL_8;
    }

    v4 = 0;
  }

  v7 = 0;
LABEL_8:
  *(v0 + 145) = v7;
  *(v0 + 136) = v4;

  return MEMORY[0x2822009F8](sub_221ED1220, 0, 0);
}

uint64_t sub_221ED1220()
{
  v39 = v0;
  v1 = *(v0 + 145);
  v2 = *(v0 + 136);
  v3 = *(v0 + 32);
  v4 = sub_221F8F248();
  if (v1 == 1 && v2 == v4)
  {
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 32);
    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);

    v9 = v7;
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 120);
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136315906;
      v18 = sub_221EF4114(v13, v14, &v38);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v12;
      *(v16 + 22) = 2048;
      *(v16 + 24) = sub_221F8F248();

      *(v16 + 32) = 2080;
      *(v16 + 34) = sub_221EF4114(0xD00000000000001BLL, 0x8000000221FB9FB0, &v38);
      _os_log_impl(&dword_221E93000, v10, v11, "Creating snapshot update for relationship %s hash %lld: %ld for %s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    else
    {
      v27 = *(v0 + 104);
    }

    v28 = *(v0 + 112);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v23 = *(v0 + 24);
    v31 = *(v0 + 144);
    v32 = [*(v0 + 48) recordWithZoneID:v28 recordEncryptionType:1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_221FB81B0;
    *(v21 + 32) = v32;

    v33 = v23;
    sub_221ED4904(v30, v29, v31);
    v26 = *(v0 + 144);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);
    v22 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 88);
  v35 = *(v0 + 16);

  *v35 = v21;
  *(v35 + 8) = v22;
  *(v35 + 16) = v23;
  *(v35 + 24) = v24;
  *(v35 + 32) = v25;
  *(v35 + 40) = v26;
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_221ED1530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 144) = a8;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  *(v8 + 16) = a1;
  v9 = sub_221FB5C38();
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 88) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221ED1600, 0, 0);
}

uint64_t sub_221ED1600()
{
  v1 = [*(v0 + 24) UUID];
  if (!v1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = v1;
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  v8 = *(v0 + 24);
  sub_221FB5C18();

  *(v0 + 96) = sub_221FB5BE8();
  *(v0 + 104) = v9;
  (*(v6 + 8))(v5, v7);
  v1 = [v8 secureCloudZoneName];
  if (!v1)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](v1, v2, v3);
  }

  v10 = v1;
  v11 = *(v0 + 32);
  v12 = *(v0 + 40);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  v13 = *MEMORY[0x277CBBF28];
  sub_221FB6318();
  *(v0 + 112) = sub_221FB65D8();
  *(v0 + 120) = [v11 _activitySummaryIndex];
  v14 = __swift_project_boxed_opaque_existential_0Tm((v12 + 40), *(v12 + 64));
  v2 = *v14;
  *(v0 + 128) = *v14;
  v1 = sub_221ED1778;
  v3 = 0;

  return MEMORY[0x2822009F8](v1, v2, v3);
}

uint64_t sub_221ED1778()
{
  v1 = *(v0 + 128);
  v2 = sub_221ECB14C(*(v0 + 96), *(v0 + 104));
  if (!v2)
  {
    v2 = sub_221ED7E7C(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  v4 = *(v2 + 16);
  if (v4)
  {
    v5 = sub_221ED4C68(*(v0 + 120));
    if (v6)
    {
      v4 = *(*(v3 + 56) + 8 * v5);
      v7 = 1;
      goto LABEL_8;
    }

    v4 = 0;
  }

  v7 = 0;
LABEL_8:
  *(v0 + 145) = v7;
  *(v0 + 136) = v4;

  return MEMORY[0x2822009F8](sub_221ED1834, 0, 0);
}

uint64_t sub_221ED1834()
{
  v39 = v0;
  v1 = *(v0 + 145);
  v2 = *(v0 + 136);
  v3 = *(v0 + 32);
  v4 = sub_221F8F248();
  if (v1 == 1 && v2 == v4)
  {
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);

    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = *(v0 + 104);
    v7 = *(v0 + 32);
    v8 = sub_221FB61D8();
    __swift_project_value_buffer(v8, qword_281307DF0);

    v9 = v7;
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v0 + 120);
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = *(v0 + 32);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v17;
      *v16 = 136315906;
      v18 = sub_221EF4114(v13, v14, &v38);

      *(v16 + 4) = v18;
      *(v16 + 12) = 2048;
      *(v16 + 14) = v12;
      *(v16 + 22) = 2048;
      *(v16 + 24) = sub_221F8F248();

      *(v16 + 32) = 2080;
      *(v16 + 34) = sub_221EF4114(0xD00000000000001FLL, 0x8000000221FC1C70, &v38);
      _os_log_impl(&dword_221E93000, v10, v11, "Creating snapshot update for relationship %s hash %lld: %ld for %s", v16, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v17, -1, -1);
      MEMORY[0x223DADA80](v16, -1, -1);
    }

    else
    {
      v27 = *(v0 + 104);
    }

    v28 = *(v0 + 112);
    v30 = *(v0 + 56);
    v29 = *(v0 + 64);
    v23 = *(v0 + 24);
    v31 = *(v0 + 144);
    v32 = [*(v0 + 48) recordWithZoneID:v28 recordEncryptionType:1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_221FB81B0;
    *(v21 + 32) = v32;

    v33 = v23;
    sub_221ED4904(v30, v29, v31);
    v26 = *(v0 + 144);
    v24 = *(v0 + 56);
    v25 = *(v0 + 64);
    v22 = MEMORY[0x277D84F90];
  }

  v34 = *(v0 + 88);
  v35 = *(v0 + 16);

  *v35 = v21;
  *(v35 + 8) = v22;
  *(v35 + 16) = v23;
  *(v35 + 24) = v24;
  *(v35 + 32) = v25;
  *(v35 + 40) = v26;
  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_221ED1B44(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED1B68, v1, 0);
}

uint64_t sub_221ED1B68()
{
  v16 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v15);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;
    v7 = *(v0 + 56);

    return sub_221ED2FB0();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data available but already loaded anchor for: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_221ED1E88()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221ED1F98, v2, 0);
}

uint64_t sub_221ED1F98()
{
  v10 = v0;
  v1 = v0[7];
  sub_221EA4AB4(v1 + 112, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(*v2 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_221ED9A20((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 24));
  sub_221ED8DE8(v9);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_221ED2094(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED20B8, v1, 0);
}

uint64_t sub_221ED20B8()
{
  v16 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v15);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED23D8;
    v7 = *(v0 + 56);

    return sub_221ED3308();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data available but already loaded anchor for: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_221ED23D8()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 56);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221ED24E8, v2, 0);
}

uint64_t sub_221ED24E8()
{
  v10 = v0;
  v1 = v0[7];
  sub_221EA4AB4(v1 + 112, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = *(v1 + 160);
  v4 = *(v1 + 168);
  v5 = *(*v2 + OBJC_IVAR____TtC23ActivitySharingServices19DatabaseCoordinator_protectedDataObservers);
  v6 = swift_task_alloc();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  os_unfair_lock_lock((v5 + 24));
  sub_221ED8DCC((v5 + 16), &v9);
  os_unfair_lock_unlock((v5 + 24));
  sub_221ED8DE8(v9);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v7 = v0[1];

  return v7();
}

uint64_t sub_221ED25E4(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED2608, v1, 0);
}

uint64_t sub_221ED2608()
{
  v16 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v15);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;
    v7 = *(v0 + 56);

    return sub_221ED3670();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data available but already loaded anchor for: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_221ED2928(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED294C, v1, 0);
}

uint64_t sub_221ED294C()
{
  v16 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v15);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;
    v7 = *(v0 + 56);

    return sub_221ED39D8();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data available but already loaded anchor for: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_221ED2C6C(char a1)
{
  *(v2 + 56) = v1;
  *(v2 + 72) = a1;
  return MEMORY[0x2822009F8](sub_221ED2C90, v1, 0);
}

uint64_t sub_221ED2C90()
{
  v16 = v0;
  if (*(v0 + 72) == 1 && *(*(v0 + 56) + 176) == 1)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DF0);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v15 = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v15);
      _os_log_impl(&dword_221E93000, v2, v3, "Protected data available for: %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x223DADA80](v5, -1, -1);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v6 = swift_task_alloc();
    *(v0 + 64) = v6;
    *v6 = v0;
    v6[1] = sub_221ED1E88;
    v7 = *(v0 + 56);

    return sub_221ED3D40();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v15);
      _os_log_impl(&dword_221E93000, v10, v11, "Protected data available but already loaded anchor for: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x223DADA80](v13, -1, -1);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_221ED2FB0()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3054;

  return sub_221ECD8B0();
}

uint64_t sub_221ED3054(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED316C, v3, 0);
}

uint64_t sub_221ED316C()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED7F58(MEMORY[0x277D84F90]);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD000000000000019, 0x8000000221FC1BF0, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED3308()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED33AC;

  return sub_221ECCA38();
}

uint64_t sub_221ED33AC(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED34C4, v3, 0);
}

uint64_t sub_221ED34C4()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBEB0, &qword_221FB9F78);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1C30, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED3670()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3714;

  return sub_221ECD07C();
}

uint64_t sub_221ED3714(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED382C, v3, 0);
}

uint64_t sub_221ED382C()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBF40, &qword_221FBA080);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD000000000000016, 0x8000000221FC1C50, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED39D8()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3A7C;

  return sub_221ECE564();
}

uint64_t sub_221ED3A7C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED3B94, v3, 0);
}

uint64_t sub_221ED3B94()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBFD8, &qword_221FBA120);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD00000000000001CLL, 0x8000000221FC1CB0, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED3D40()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221ED3DE4;

  return sub_221ECDF20();
}

uint64_t sub_221ED3DE4(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 16);
  v5 = *v1;
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](sub_221ED3EFC, v3, 0);
}

uint64_t sub_221ED3EFC()
{
  v12 = v0;
  v1 = v0[4];
  if (!v1)
  {
    v1 = sub_221ED8604(MEMORY[0x277D84F90], &qword_27CFEBF98, &qword_221FBA0E0);
  }

  v2 = v0[2];
  v3 = *(v2 + 176);
  *(v2 + 176) = v1;
  sub_221E967CC(v3);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = sub_221FB61D8();
  __swift_project_value_buffer(v4, qword_281307DF0);
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_221EF4114(0xD00000000000001ALL, 0x8000000221FC1C90, &v11);
    _os_log_impl(&dword_221E93000, v5, v6, "Loaded anchor map for: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221ED40A8(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    if (a2)
    {
      v9 = a2;
      v10 = sub_221FB5B18();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xF000000000000000;
    }

    v13 = *(*(v5 + 64) + 40);
    *v13 = v10;
    v13[1] = v12;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221ED41A0(uint64_t a1, int a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a2)
  {
    v8 = *v5;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
      v10 = swift_allocError();
      *v11 = a3;
      v12 = a3;
      v5 = v7;
      v6 = v10;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200958](v5, v6);
  }
}

uint64_t sub_221ED4258(uint64_t result)
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

  result = sub_221EF3388(result, v11, 1, v3);
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

uint64_t sub_221ED43FC(uint64_t result)
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

  result = sub_221EF3814(result, v11, 1, v3);
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

uint64_t sub_221ED451C(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  v12 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v13 = *(v6 + 16);
  v14 = __OFADD__(v13, v5);
  v15 = v13 + v5;
  if (!v14)
  {
    *(v6 + 16) = v15;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_221ED46BC(unint64_t a1, void (*a2)(void), void (*a3)(uint64_t, void, unint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_221FB6868();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = *v3;
  if (!(*v3 >> 62))
  {
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = __OFADD__(v9, v7);
    result = v9 + v7;
    if (!v10)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 < 0)
  {
    v18 = *v3;
  }

  v19 = sub_221FB6868();
  v10 = __OFADD__(v19, v7);
  result = v19 + v7;
  if (v10)
  {
    goto LABEL_15;
  }

LABEL_5:
  a2();
  v12 = *v3;
  v13 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v13 + 8 * *(v13 + 0x10) + 32, (*(v13 + 0x18) >> 1) - *(v13 + 0x10), a1);
  v15 = v14;

  if (v15 < v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v15 < 1)
  {
LABEL_9:
    *v3 = v12;
    return result;
  }

  v16 = *(v13 + 16);
  v10 = __OFADD__(v16, v15);
  v17 = v16 + v15;
  if (!v10)
  {
    *(v13 + 16) = v17;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_221ED47BC(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_221ED47F4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_221ED4868@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_221ED4898(void (*a1)(void))
{
  a1();

  return sub_221FB6CA8();
}

uint64_t sub_221ED48D4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

id sub_221ED4904(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 <= 1u)
    {
      return result;
    }
  }

  else if (a3 == 3 || a3 == 4 || a3 == 5)
  {
  }

  return result;
}

void sub_221ED4948(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
    if (a3 <= 1u)
    {
    }
  }

  else if (a3 == 3 || a3 == 4 || a3 == 5)
  {
  }
}

uint64_t sub_221ED498C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EC7D7C(a1, v4);
}

uint64_t sub_221ED4A28(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EC8814(a1, v4);
}

unint64_t sub_221ED4AC4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_221FB5AE8();
  sub_221ED982C(&qword_27CFEB8E8, MEMORY[0x277CC9260]);
  v5 = sub_221FB62A8();

  return sub_221ED4CFC(a1, v5);
}

unint64_t sub_221ED4B5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_221FB6C38();
  sub_221FB6358();
  v6 = sub_221FB6C58();

  return sub_221ED4EBC(a1, a2, v6);
}

unint64_t sub_221ED4BD4(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_221FB68E8();

  return sub_221ED4F74(a1, v5);
}

unint64_t sub_221ED4C18(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_221FB6748();
  return sub_221ED50A8(a1, v5, &qword_281306EF0, 0x277CBC5F8);
}

unint64_t sub_221ED4C68(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_221FB6C28();

  return sub_221ED503C(a1, v4);
}

unint64_t sub_221ED4CAC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_221FB6748();
  return sub_221ED50A8(a1, v5, &qword_281306F20, 0x277CBC5D0);
}

unint64_t sub_221ED4CFC(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_221FB5AE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_221ED982C(&qword_27CFEC008, MEMORY[0x277CC9260]);
      v16 = sub_221FB62D8();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_221ED4EBC(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_221FB6B58())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_221ED4F74(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_221EC5220(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x223DACCC0](v9, a1);
      sub_221EC5354(v9);
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

unint64_t sub_221ED503C(uint64_t a1, uint64_t a2)
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

unint64_t sub_221ED50A8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_221E9D138(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_221FB6758();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_221ED5174(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC030, &qword_221FBA1A0);
  v39 = a2;
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_221ED5418(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC048, &qword_221FBA1B8);
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v34 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      v25 = *(v8 + 40);
      result = sub_221FB6748();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_221ED5680(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE78, &qword_221FB9F40);
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      v23 = *(v8 + 40);
      result = sub_221FB6C28();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_221ED58E4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE70, &qword_221FB9F38);
  v38 = a2;
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_221ED5B84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = *(v5 + 48) + 40 * v23;
      if (a2)
      {
        v25 = *v24;
        v26 = *(v24 + 16);
        v40 = *(v24 + 32);
        v38 = v25;
        v39 = v26;
        sub_221EC45F0((*(v5 + 56) + 32 * v23), v37);
      }

      else
      {
        sub_221EC5220(v24, &v38);
        sub_221E951A4(*(v5 + 56) + 32 * v23, v37);
      }

      v27 = *(v8 + 40);
      result = sub_221FB68E8();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      v18 = v38;
      v19 = v39;
      *(v17 + 32) = v40;
      *v17 = v18;
      *(v17 + 16) = v19;
      result = sub_221EC45F0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v5 + 32);
      if (v35 >= 64)
      {
        bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v35;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_221ED5E78(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_221FB6A98();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = sub_221FB6C28();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_221ED60F4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_221FB6A98();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(*(v7 + 56) + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = v23;
        v26 = v24;
      }

      v27 = *(v10 + 40);
      result = sub_221FB6748();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      *(*(v10 + 56) + 8 * v18) = v24;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if (a2)
    {
      v35 = 1 << *(v7 + 32);
      if (v35 >= 64)
      {
        bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v12 = -1 << v35;
      }

      *(v7 + 16) = 0;
    }

    v5 = v36;
  }

  else
  {
  }

  *v5 = v10;
  return result;
}

uint64_t sub_221ED6354(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED0, &qword_221FBA010);
  v36 = a2;
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = 16 * (v19 | (v9 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v37 = *(*(v5 + 56) + v22);
      if ((v36 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v8 + 56) + v17) = v37;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_221ED6620(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC018, &qword_221FBA188);
  v36 = a2;
  result = sub_221FB6A98();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_221EC45F0(v25, v37);
      }

      else
      {
        sub_221E951A4(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_221EC45F0(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_221ED68D8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v40 = a2;
  result = sub_221FB6A98();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

id sub_221ED6B78()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC030, &qword_221FBA1A0);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_221ED6CE4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC048, &qword_221FBA1B8);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED6E44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE78, &qword_221FB9F40);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED6F90()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE70, &qword_221FB9F38);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED70F8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_221EC5220(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_221E951A4(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_221EC45F0(v22, (*(v4 + 56) + v17));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED72D8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6A88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_221ED7438(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6A88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
        v22 = v20;
        result = v21;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_221ED7588()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED0, &qword_221FBA010);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_221ED771C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC018, &qword_221FBA188);
  v2 = *v0;
  v3 = sub_221FB6A88();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_221E951A4(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_221EC45F0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_221ED78C0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6A88();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_221ED7A20@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t sub_221ED7A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 64) = a1;
  v15 = *a2;
  v16 = swift_task_alloc();
  *(v8 + 72) = v16;
  *v16 = v8;
  v16[1] = sub_221ED7B20;

  return sub_221ED0F1C(v8 + 16, v15, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221ED7B20()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (!v0)
  {
    v5 = *(v2 + 64);
    v6 = *(v2 + 16);
    v7 = *(v2 + 32);
    *(v5 + 25) = *(v2 + 41);
    *v5 = v6;
    v5[1] = v7;
  }

  v8 = *(v4 + 8);

  return v8();
}

uint64_t sub_221ED7C38@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

unint64_t sub_221ED7C80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB8D8, &qword_221FB8278);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC010, &qword_221FBA180);
    v8 = sub_221FB6AB8();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_221ED9874(v10, v6, &qword_27CFEB8D8, &qword_221FB8278);
      result = sub_221ED4AC4(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_221FB5AE8();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

unint64_t sub_221ED7E7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE78, &qword_221FB9F40);
    v3 = sub_221FB6AB8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_221ED4C68(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

unint64_t sub_221ED7F58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE70, &qword_221FB9F38);
    v3 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_221ED4B5C(v5, v6);
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

unint64_t sub_221ED8054(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
    v3 = sub_221FB6AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_221ED9874(v4, v13, &unk_27CFECB20, &unk_221FBA170);
      result = sub_221ED4BD4(v13);
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
      result = sub_221EC45F0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_221ED8190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBED0, &qword_221FBA010);
    v3 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_221ED4B5C(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

void *sub_221ED82E8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = a1[2];
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_221FB6AB8();
  v6 = a1[4];
  v7 = a1[5];
  v8 = sub_221ED4C68(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = sub_221ED4C68(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_221ED83FC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_221ED4B5C(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_221ED84F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC058, &qword_221FBA1C8);
    v3 = sub_221FB6AB8();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_221ED4CAC(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_221ED8604(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_221FB6AB8();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_221ED4B5C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_221ED8700(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC018, &qword_221FBA188);
    v3 = sub_221FB6AB8();
    v4 = a1 + 32;

    while (1)
    {
      sub_221ED9874(v4, &v13, &qword_27CFEC020, &unk_221FBA190);
      v5 = v13;
      v6 = v14;
      result = sub_221ED4B5C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_221EC45F0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_221ED8830(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v38 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v12 = v11;
LABEL_14:
    v14 = __clz(__rbit64(v9)) | (v12 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = v15[1];
    v17 = *(*(a1 + 56) + 8 * v14);
    v46[0] = *v15;
    v46[1] = v16;
    v46[2] = v17;

    a2(&v43, v46);

    v18 = v43;
    v19 = v44;
    v20 = v45;
    v21 = *v47;
    v23 = sub_221ED4B5C(v43, v44);
    v24 = *(v21 + 16);
    v25 = (v22 & 1) == 0;
    v26 = v24 + v25;
    if (__OFADD__(v24, v25))
    {
      goto LABEL_25;
    }

    v27 = v22;
    if (*(v21 + 24) >= v26)
    {
      if ((v42 & 1) == 0)
      {
        sub_221ED6F90();
      }
    }

    else
    {
      v28 = v47;
      sub_221ED58E4(v26, v42 & 1);
      v29 = *v28;
      v30 = sub_221ED4B5C(v18, v19);
      if ((v27 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v23 = v30;
    }

    v9 &= v9 - 1;
    v32 = *v47;
    if (v27)
    {

      *(v32[7] + 8 * v23) = v20;
    }

    else
    {
      v32[(v23 >> 6) + 8] |= 1 << v23;
      v33 = (v32[6] + 16 * v23);
      *v33 = v18;
      v33[1] = v19;
      *(v32[7] + 8 * v23) = v20;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v11 = v12;
    v6 = v39;
  }

  v13 = v11;
  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      sub_221E96470();
    }

    v9 = *(v6 + 8 * v12);
    ++v13;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

unint64_t sub_221ED8AB4()
{
  result = qword_27CFEBE98;
  if (!qword_27CFEBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBE90, &qword_221FB9F68);
    sub_221ED8B60(&qword_27CFEBEA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBE98);
  }

  return result;
}

uint64_t sub_221ED8B60(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBEA8, &qword_221FB9F70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221ED8BD0(uint64_t a1, uint64_t *a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_221E9544C;

  return sub_221ED7A38(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_221ED8CC4(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221E963B4;

  return sub_221EC937C(a1, a2, v7, v6);
}

unint64_t sub_221ED8D78()
{
  result = qword_27CFEBEC8;
  if (!qword_27CFEBEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBEC8);
  }

  return result;
}

uint64_t sub_221ED8DE8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_221ED8DF8()
{
  result = qword_27CFEBEE0;
  if (!qword_27CFEBEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBE90, &qword_221FB9F68);
    sub_221ED8B60(&qword_27CFEBEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBEE0);
  }

  return result;
}

uint64_t sub_221ED8EA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBE60, &qword_221FB9F30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221ED8F14(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v53 = a5;
  v8 = a1 + 64;
  v9 = -1 << *(a1 + 32);
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 64);
  v42 = -1 << *(a1 + 32);
  v12 = (63 - v9) >> 6;

  v13 = 0;
  v45 = v8;
  while (v11)
  {
    v48 = a4;
    v16 = v13;
LABEL_14:
    v18 = __clz(__rbit64(v11)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(*(a1 + 56) + 8 * v18);
    v52[0] = *v19;
    v52[1] = v20;
    v52[2] = v21;

    a2(&v49, v52);

    v23 = v49;
    v22 = v50;
    v24 = v51;
    v25 = *v53;
    v27 = sub_221ED4B5C(v49, v50);
    v28 = *(v25 + 16);
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (*(v25 + 24) >= v30)
    {
      if ((v48 & 1) == 0)
      {
        sub_221ED78C0(a6, a7);
      }
    }

    else
    {
      v32 = v53;
      sub_221ED68D8(v30, v48 & 1, a6, a7);
      v33 = *v32;
      v34 = sub_221ED4B5C(v23, v22);
      if ((v31 & 1) != (v35 & 1))
      {
        goto LABEL_27;
      }

      v27 = v34;
    }

    v11 &= v11 - 1;
    v36 = *v53;
    if (v31)
    {

      v14 = v36[7];
      v15 = *(v14 + 8 * v27);
      *(v14 + 8 * v27) = v24;
    }

    else
    {
      v36[(v27 >> 6) + 8] |= 1 << v27;
      v37 = (v36[6] + 16 * v27);
      *v37 = v23;
      v37[1] = v22;
      *(v36[7] + 8 * v27) = v24;
      v38 = v36[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_26;
      }

      v36[2] = v40;
    }

    a4 = 1;
    v13 = v16;
    v8 = v45;
  }

  v17 = v13;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v12)
    {
      sub_221E96470();
    }

    v11 = *(v8 + 8 * v16);
    ++v17;
    if (v11)
    {
      v48 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_221FB6B98();
  __break(1u);
  return result;
}

unint64_t sub_221ED91AC()
{
  result = qword_27CFEBF20;
  if (!qword_27CFEBF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF28, &unk_221FBA070);
    sub_221ED9390(&qword_27CFEBF30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBF20);
  }

  return result;
}

uint64_t sub_221ED925C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF10, &qword_221FBA068);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221ED92E0()
{
  result = qword_27CFEBF50;
  if (!qword_27CFEBF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF28, &unk_221FBA070);
    sub_221ED9390(&qword_27CFEBF58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBF50);
  }

  return result;
}

uint64_t sub_221ED9390(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF38, qword_221FBF480);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221ED93FC()
{
  result = qword_27CFEBF78;
  if (!qword_27CFEBF78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF70, &unk_221FBA0D0);
    sub_221ED9648(&qword_27CFEBF80, &qword_27CFEBF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBF78);
  }

  return result;
}

unint64_t sub_221ED94C0()
{
  result = qword_27CFEBFC8;
  if (!qword_27CFEBFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBFD0, qword_221FBA8E0);
    sub_221ED9648(&qword_27CFEBF80, &qword_27CFEBF90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBFC8);
  }

  return result;
}

unint64_t sub_221ED9584()
{
  result = qword_27CFEBFE0;
  if (!qword_27CFEBFE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF70, &unk_221FBA0D0);
    sub_221ED9648(&qword_27CFEBFE8, &qword_27CFEBFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBFE0);
  }

  return result;
}

uint64_t sub_221ED9648(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF88, &qword_221FBE3D0);
    sub_221ED982C(a2, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221ED96E4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBFB8, &unk_221FBA110);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221ED9768()
{
  result = qword_27CFEC000;
  if (!qword_27CFEC000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBFD0, qword_221FBA8E0);
    sub_221ED9648(&qword_27CFEBFE8, &qword_27CFEBFF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC000);
  }

  return result;
}

uint64_t sub_221ED982C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221ED9874(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_221ED9908(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_221ED9950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221ED9A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[9] = a7;
  v8[10] = v7;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v9 = type metadata accessor for IDSErrorAction(0);
  v8[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v8[12] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0) - 8) + 64) + 15;
  v8[13] = swift_task_alloc();
  v12 = type metadata accessor for IDSError(0);
  v8[14] = v12;
  v13 = *(v12 - 8);
  v8[15] = v13;
  v14 = *(v13 + 64) + 15;
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD90, &qword_221FB9A58) - 8) + 64) + 15;
  v8[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221ED9BB4, 0, 0);
}

uint64_t sub_221ED9BB4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = v0[10];
  v4 = v0[4];
  v3 = v0[5];
  v5 = sub_221FB61D8();
  v0[19] = __swift_project_value_buffer(v5, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000070, 0x8000000221FC1D50, 0xD000000000000029, 0x8000000221FC1E70);
  v6 = *(v2 + OBJC_IVAR____TtC23ActivitySharingServices11IDSListener_transportDispatchService);
  *v1 = v4;
  v1[1] = v3;
  v7 = *MEMORY[0x277CE9390];
  v8 = sub_221FB5D78();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v1, v7, v8);
  (*(v9 + 56))(v1, 0, 1, v8);
  v10 = *(MEMORY[0x277CE9400] + 4);
  v17 = (*MEMORY[0x277CE9400] + MEMORY[0x277CE9400]);

  v11 = swift_task_alloc();
  v0[20] = v11;
  *v11 = v0;
  v11[1] = sub_221ED9DA4;
  v12 = v0[18];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[3];

  return v17(v15, v13, v14, v12);
}

uint64_t sub_221ED9DA4()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 144);
  v4 = *v1;
  v4[21] = v0;

  sub_221E9CFE8(v3, &qword_27CFEBD90, &qword_221FB9A58);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221ED9F40, 0, 0);
  }

  else
  {
    v6 = v4[17];
    v5 = v4[18];
    v7 = v4[16];
    v8 = v4[12];
    v9 = v4[13];

    v10 = v4[1];

    return v10();
  }
}

uint64_t sub_221ED9F40()
{
  v1 = *(v0 + 168);
  *(v0 + 16) = v1;
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  v5 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v6 = swift_dynamicCast();
  v7 = *(v3 + 56);
  if (v6)
  {
    v8 = *(v0 + 152);
    v10 = *(v0 + 128);
    v9 = *(v0 + 136);
    v11 = *(v0 + 104);
    v7(v11, 0, 1, *(v0 + 112));
    sub_221EC4474(v11, v9);
    sub_221EDADCC(v9, v10, type metadata accessor for IDSError);
    v12 = sub_221FB61B8();
    v13 = sub_221FB65A8();
    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 128);
    if (v14)
    {
      v16 = *(v0 + 112);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      sub_221EA49E8();
      swift_allocError();
      sub_221EDADCC(v15, v19, type metadata accessor for IDSError);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      sub_221EDAE34(v15, type metadata accessor for IDSError);
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&dword_221E93000, v12, v13, "Error processing incoming message %@", v17, 0xCu);
      sub_221E9CFE8(v18, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    else
    {

      sub_221EDAE34(v15, type metadata accessor for IDSError);
    }

    v33 = *(v0 + 88);
    sub_221EDADCC(*(v0 + 136), *(v0 + 96), type metadata accessor for IDSErrorAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v35 = *(v0 + 168);
    v36 = *(v0 + 136);
    v37 = *(v0 + 96);
    if (EnumCaseMultiPayload)
    {
      sub_221EDAE34(*(v0 + 136), type metadata accessor for IDSError);

      v38 = type metadata accessor for IDSErrorAction;
      v39 = v37;
    }

    else
    {
      v40 = *(v0 + 72);
      if (*v37)
      {
        v41 = 2;
      }

      else
      {
        v41 = 1;
      }

      (*(v0 + 64))(v41);

      v38 = type metadata accessor for IDSError;
      v39 = v36;
    }

    sub_221EDAE34(v39, v38);
  }

  else
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 152);
    v23 = *(v0 + 104);
    v7(v23, 1, 1, *(v0 + 112));
    sub_221E9CFE8(v23, &unk_27CFEC0F0, &qword_221FBA2A0);
    v24 = v21;
    v25 = sub_221FB61B8();
    v26 = sub_221FB65A8();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 168);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v28;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_221E93000, v25, v26, "Handler of IDS message didn't throw IDSError: %@", v29, 0xCu);
      sub_221E9CFE8(v30, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v30, -1, -1);
      MEMORY[0x223DADA80](v29, -1, -1);
    }

    else
    {
    }
  }

  v43 = *(v0 + 136);
  v42 = *(v0 + 144);
  v44 = *(v0 + 128);
  v46 = *(v0 + 96);
  v45 = *(v0 + 104);

  v47 = *(v0 + 8);

  return v47();
}

id sub_221EDA3D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IDSListener();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_221EDA488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 40) = a4;
  return MEMORY[0x2822009F8](sub_221EDA4C4, 0, 0);
}

uint64_t sub_221EDA4C4()
{
  v1 = v0[5];
  sub_221FB6978();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x223DAC740](0xD000000000000030, 0x8000000221FC1E30);
  v0[4] = v1;
  sub_221FB6A08();
  v2 = v0[2];
  v3 = v0[3];
  type metadata accessor for RuntimeTransaction();
  v4 = swift_allocObject();
  v0[13] = v4;
  swift_defaultActor_initialize();
  v4[15] = v3;
  v4[16] = 0;
  v4[14] = v2;

  return MEMORY[0x2822009F8](sub_221EDA5C8, v4, 0);
}

uint64_t sub_221EDA5C8()
{
  v1 = v0[13];
  v2 = v1[14];
  v3 = v1[15];
  sub_221FB6338();
  v4 = os_transaction_create();

  v5 = v1[16];
  v1[16] = v4;
  swift_unknownObjectRelease();
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_221EDA6A0;
  v7 = v0[11];
  v8 = v0[12];
  v9 = v0[9];
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];
  v13 = v0[5];
  v14 = v0[6];

  return sub_221ED9A3C(v13, v11, v12, v9, v10, v7, v8);
}

uint64_t sub_221EDA6A0()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EDA7B0, v2, 0);
}

uint64_t sub_221EDA7B0()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_221EDA820, 0, 0);
}

uint64_t sub_221EDA820()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}