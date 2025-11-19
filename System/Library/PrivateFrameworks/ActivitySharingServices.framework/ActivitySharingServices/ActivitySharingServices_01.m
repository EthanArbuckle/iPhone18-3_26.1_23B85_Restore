void sub_221EADFB8(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *v2;
  v4 = *(*v2 + 96);
  v5 = *v2;
  v3[13] = a1;
  v3[14] = v1;

  if (v1)
  {
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v7 = v3[11];

    v8 = *MEMORY[0x277D85DE8];

    MEMORY[0x2822009F8](sub_221EAE13C, 0, 0);
  }
}

uint64_t sub_221EAE13C(uint64_t a1)
{
  v75 = v2;
  v74 = *MEMORY[0x277D85DE8];
  v3 = *(v2 + 80);
  if ((v3 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84FA0];
    v73 = MEMORY[0x277D84FA0];
    v4 = sub_221FB6828();
    v5 = sub_221FB6898();
    if (!v5)
    {
LABEL_22:

      goto LABEL_42;
    }

LABEL_8:
    v13 = *(v2 + 64);
    *(v2 + 32) = v5;
    swift_dynamicCast();
    v14 = [*(v2 + 24) relationshipStorage];
    v15 = [v14 legacyRelationship];

    if ([v15 secureCloudDowngradeNeedsAcknowledgement])
    {
    }

    else
    {
      v16 = [v15 secureCloudDowngradeAcknowledged];

      if ((v16 & 1) == 0)
      {

        goto LABEL_7;
      }
    }

    v3 = *(v2 + 24);
    v17 = *(v1 + 16);
    if (*(v1 + 24) <= v17)
    {
      sub_221F161CC(v17 + 1);
      v1 = v73;
    }

    v6 = *(v1 + 40);
    v7 = sub_221FB6748();
    v8 = v1 + 56;
    v9 = -1 << *(v1 + 32);
    v10 = v7 & ~v9;
    v11 = v10 >> 6;
    if (((-1 << v10) & ~*(v1 + 56 + 8 * (v10 >> 6))) != 0)
    {
      v12 = __clz(__rbit64((-1 << v10) & ~*(v1 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_6;
    }

    v18 = 0;
    v19 = (63 - v9) >> 6;
    while (++v11 != v19 || (v18 & 1) == 0)
    {
      v20 = v11 == v19;
      if (v11 == v19)
      {
        v11 = 0;
      }

      v18 |= v20;
      v21 = *(v8 + 8 * v11);
      if (v21 != -1)
      {
        v12 = __clz(__rbit64(~v21)) + (v11 << 6);
LABEL_6:
        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v1 + 48) + 8 * v12) = v3;
        ++*(v1 + 16);
LABEL_7:
        v5 = sub_221FB6898();
        if (!v5)
        {
          goto LABEL_22;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    v39 = sub_221FB6868();
    v40 = *(v2 + 104);
    if (!v39)
    {
      goto LABEL_69;
    }

LABEL_45:
    v68 = v4;
    v69 = v39;
    v41 = 0;
    v71 = (v3 & 0xFFFFFFFFFFFFFF8);
    v72 = v3 & 0xC000000000000001;
    v70 = v40 + 32;
    v4 = v1 & 0xC000000000000001;
    v42 = v1 + 56;
    while (1)
    {
      if (v72)
      {
        v43 = MEMORY[0x223DACD50](v41, *(v2 + 104));
      }

      else
      {
        if (v41 >= *(v71 + 2))
        {
          goto LABEL_66;
        }

        v43 = *(v70 + 8 * v41);
      }

      v44 = v43;
      v38 = __OFADD__(v41++, 1);
      if (v38)
      {
        goto LABEL_65;
      }

      if (!v4)
      {
        break;
      }

      v45 = v43;
      v46 = sub_221FB68A8();

      if ((v46 & 1) == 0)
      {
        goto LABEL_60;
      }

LABEL_47:
      if (v41 == v39)
      {
        v40 = *(v2 + 104);
        v54 = v73;
        v4 = v68;
        goto LABEL_70;
      }
    }

    if (*(v1 + 16) && (v47 = *(v1 + 40), v48 = sub_221FB6748(), v49 = -1 << *(v1 + 32), v3 = v48 & ~v49, ((*(v42 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) != 0))
    {
      v50 = ~v49;
      while (1)
      {
        v51 = *(v2 + 64);
        v52 = *(*(v1 + 48) + 8 * v3);
        LOBYTE(v51) = sub_221FB6758();

        if (v51)
        {
          break;
        }

        v3 = (v3 + 1) & v50;
        if (((*(v42 + ((v3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
        {
          goto LABEL_60;
        }
      }
    }

    else
    {
LABEL_60:
      sub_221FB69B8();
      v53 = *(v73 + 16);
      sub_221FB69E8();
      sub_221FB69F8();
      sub_221FB69C8();
    }

    v39 = v69;
    goto LABEL_47;
  }

  v22 = *(v3 + 32);
  v23 = v22 & 0x3F;
  v24 = (1 << v22) + 63;
  v25 = v24 >> 6;
  v26 = *(v2 + 80);
  if (v23 > 0xD)
  {
    v60 = *(v2 + 80);
    v61 = 8 * (v24 >> 6);

    v1 = v61;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v4 = *(v2 + 112);
      v63 = *(v2 + 80);
      v64 = swift_slowAlloc();
      v1 = sub_221F107FC(v64, v25, v63, sub_221EAFEA0);

      result = MEMORY[0x223DADA80](v64, -1, -1);
      v67 = v4;
      if (!v4)
      {
        goto LABEL_43;
      }

      v65 = *MEMORY[0x277D85DE8];
      return result;
    }

    v62 = *(v2 + 80);

    v26 = *(v2 + 80);
  }

  v69 = &v67;
  v70 = v25;
  MEMORY[0x28223BE20](a1);
  v71 = &v67 - ((v27 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v71, v27);
  v72 = 0;
  v28 = 0;
  v29 = 1 << *(v3 + 32);
  v30 = -1;
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  v4 = v30 & *(v26 + 56);
  v31 = (v29 + 63) >> 6;
  do
  {
    do
    {
      if (v4)
      {
        v32 = __clz(__rbit64(v4));
        v4 &= v4 - 1;
      }

      else
      {
        v33 = v28;
        do
        {
          v28 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_67;
          }

          if (v28 >= v31)
          {
            goto LABEL_41;
          }

          v34 = *(v26 + 56 + 8 * v28);
          ++v33;
        }

        while (!v34);
        v32 = __clz(__rbit64(v34));
        v4 = (v34 - 1) & v34;
      }

      v1 = v32 | (v28 << 6);
      v3 = *(*(v26 + 48) + 8 * v1);
      v35 = [v3 relationshipStorage];
      v36 = [v35 legacyRelationship];

      if ([v36 secureCloudDowngradeNeedsAcknowledgement])
      {

        break;
      }

      v37 = [v36 secureCloudDowngradeAcknowledged];
    }

    while (!v37);
    *&v71[(v1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v1;
    v38 = __OFADD__(v72++, 1);
  }

  while (!v38);
  __break(1u);
LABEL_41:
  v1 = sub_221F77424(v71, v70, v72, *(v2 + 80));
LABEL_42:
  v4 = *(v2 + 112);
LABEL_43:
  *(v2 + 120) = v1;
  v3 = *(v2 + 104);
  v73 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_68;
  }

  v39 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = v3;
  if (v39)
  {
    goto LABEL_45;
  }

LABEL_69:
  v54 = MEMORY[0x277D84F90];
LABEL_70:
  v55 = *(v2 + 48);
  *(v2 + 128) = v54;

  *(v2 + 136) = sub_221EB96C0(v56, v40);
  *(v2 + 144) = v4;

  v57 = __swift_project_boxed_opaque_existential_0Tm((v55 + 256), *(v55 + 280));
  v58 = *v57;
  *(v2 + 152) = *v57;
  v59 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221EAE854, v58, 0);
}

uint64_t sub_221EAE854()
{
  v8 = v0;
  v7[5] = *MEMORY[0x277D85DE8];
  v1 = *(*(v0 + 152) + 120);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = sub_221E9E980(*(v1 + 16), 0);
      v4 = sub_221E9EDC0(v7, v3 + 4, v2, v1);

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
  *(v0 + 160) = v3;
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221EAE980, 0, 0);
}

uint64_t sub_221EAE980()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = v0[20];
  v2 = v0[7];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v54[0] = v8;
    *v7 = 136315138;
    v9 = sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
    v10 = MEMORY[0x223DAC810](v6, v9);
    v12 = v11;

    v13 = sub_221EF4114(v10, v12, v54);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_221E93000, v3, v4, "Using migration available items: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[15];
  v14 = v0[16];
  v16 = v0[7];

  v17 = sub_221FB61B8();
  v18 = sub_221FB65C8();

  if (os_log_type_enabled(v17, v18))
  {
    v20 = v0[15];
    v19 = v0[16];
    v22 = v0[8];
    v21 = v0[9];
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54[0] = v24;
    *v23 = 136315394;
    v25 = sub_221FB6508();
    v27 = v26;

    v28 = sub_221EF4114(v25, v27, v54);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    v29 = MEMORY[0x223DAC810](v19, v22);
    v31 = sub_221EF4114(v29, v30, v54);

    *(v23 + 14) = v31;
    _os_log_impl(&dword_221E93000, v17, v18, "Found contacts already waiting on downgrade: %s, new requests %s", v23, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v24, -1, -1);
    MEMORY[0x223DADA80](v23, -1, -1);
  }

  else
  {
    v32 = v0[15];
  }

  v33 = v0[17];
  v34 = v0[18];
  v35 = v0[16];
  v36 = v0[6];
  v37 = swift_task_alloc();
  *(v37 + 16) = v36;
  v38 = sub_221F12F5C(sub_221EB9924, v37, v35);

  v39 = sub_221EB0748(v33);

  v54[0] = v38;
  sub_221ED43D0(v39);
  v40 = v54[0];
  v0[21] = v54[0];
  if (v40 >> 62)
  {
    if (sub_221FB6868())
    {
      goto LABEL_9;
    }
  }

  else if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:
    v41 = v0[6];
    __swift_project_boxed_opaque_existential_0Tm(v41 + 37, v41[40]);
    v42 = v41[25];
    v43 = swift_task_alloc();
    v0[22] = v43;
    *v43 = v0;
    v43[1] = sub_221EAEE84;
    v44 = v0[5];
    v45 = *MEMORY[0x277D85DE8];
    v46 = MEMORY[0x277D84F90];

    return sub_221EBA884(v40, v46, v42, v44);
  }

  v48 = v0[7];

  v49 = sub_221FB61B8();
  v50 = sub_221FB65C8();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_221E93000, v49, v50, "No relationship with downgrade request status to update", v51, 2u);
    MEMORY[0x223DADA80](v51, -1, -1);
  }

  v52 = v0[1];
  v53 = *MEMORY[0x277D85DE8];

  return v52();
}

uint64_t sub_221EAEE84(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *(*v2 + 176);
  v4 = *v2;
  v4[23] = a1;

  if (v1)
  {
    v5 = v4[21];

    v6 = v4[1];
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_221EAF010, 0, 0);
  }
}

uint64_t sub_221EAF010()
{
  v25 = v0;
  v24[1] = *MEMORY[0x277D85DE8];
  v1 = v0[23];
  v2 = v0[21];
  v3 = v0[7];

  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[23];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v24[0] = v9;
    *v8 = 134218242;
    if (v7 >> 62)
    {
      if (v0[23] < 0)
      {
        v23 = v0[23];
      }

      v10 = sub_221FB6868();
    }

    else
    {
      v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v11 = v0[23];
    v12 = v0[21];

    *(v8 + 4) = v10;

    *(v8 + 12) = 2080;
    v13 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v14 = MEMORY[0x223DAC810](v12, v13);
    v16 = v15;

    v17 = sub_221EF4114(v14, v16, v24);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_221E93000, v4, v5, "Updated %ld records with downgrade status change: %s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
    v18 = v0[21];
    v19 = v0[23];
    swift_bridgeObjectRelease_n();
  }

  v20 = v0[1];
  v21 = *MEMORY[0x277D85DE8];

  return v20();
}

uint64_t sub_221EAF238(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221EAF25C, 0, 0);
}

uint64_t sub_221EAF25C()
{
  v1 = v0[3];
  v2 = [v1 relationshipStorage];
  v0[4] = [v2 primaryRelationship];

  v3 = [v1 relationshipStorage];
  v0[5] = [v3 secureCloudRelationship];

  v4 = [v1 relationshipStorage];
  v5 = [v4 legacyRemoteRelationship];
  v0[6] = v5;

  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_221EAF3A0;
  v7 = v0[2];

  return sub_221EAF590(v5);
}

uint64_t sub_221EAF3A0(char a1)
{
  v2 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_221EAF4A0, 0, 0);
}

uint64_t sub_221EAF4A0()
{
  if ([*(v0 + 32) cloudType] == 1 && (objc_msgSend(*(v0 + 40), sel_secureCloudDowngradeStarted) & 1) == 0 && objc_msgSend(*(v0 + 40), sel_isFriendshipActive))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
    v3 = *(v0 + 32);
    v4 = [v1 secureCloudMigrationCompleted];

    if (v4)
    {
      v5 = *(v0 + 64);
      goto LABEL_8;
    }
  }

  else
  {
    v6 = *(v0 + 40);
    v7 = *(v0 + 32);
  }

  v5 = 0;
LABEL_8:
  v8 = *(v0 + 8);

  return v8(v5);
}

uint64_t sub_221EAF590(uint64_t a1)
{
  v2[9] = a1;
  v2[10] = v1;
  v3 = sub_221FB5C38();
  v2[11] = v3;
  v4 = *(v3 - 8);
  v2[12] = v4;
  v5 = *(v4 + 64) + 15;
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EAF65C, 0, 0);
}

uint64_t sub_221EAF65C()
{
  if ([*(v0 + 72) secureCloudDowngradeRequested])
  {
    v2 = *(v0 + 104);
    v1 = *(v0 + 112);

    v3 = *(v0 + 8);

    return v3(1);
  }

  else
  {
    v5 = *(v0 + 80);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_0Tm(v5, v6);
    v8 = *(MEMORY[0x277CE9360] + 4);
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_221EAF76C;

    return MEMORY[0x28213AC20](v6, v7);
  }
}

uint64_t sub_221EAF76C(char a1)
{
  v2 = *(*v1 + 120);
  v4 = *v1;
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_221EAF86C, 0, 0);
}

uint64_t sub_221EAF86C()
{
  v1 = *(v0 + 80);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(MEMORY[0x277CE9368] + 4);
  v5 = swift_task_alloc();
  *(v0 + 128) = v5;
  *v5 = v0;
  v5[1] = sub_221EAF920;

  return MEMORY[0x28213AC28](v2, v3);
}

uint64_t sub_221EAF920(uint64_t a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = a1;

  return MEMORY[0x2822009F8](sub_221EAFA20, 0, 0);
}

id sub_221EAFA20()
{
  v1 = v0[10];
  v2 = *(v1 + 360);
  v3 = *(v1 + 361);
  v4 = *(v1 + 368);
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
    v7 = v0[17];

    v9 = v0[13];
    v8 = v0[14];

    v10 = v0[1];

    return v10(0);
  }

  v12 = v0[9];
  sub_221EA4AB4(v0[10] + 256, (v0 + 2));
  v13 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  result = [v12 UUID];
  if (result)
  {
    v14 = result;
    v15 = v0[14];
    v16 = v0[11];
    v17 = v0[12];
    sub_221FB5C18();

    v18 = sub_221FB5BE8();
    v20 = v19;
    v0[18] = v19;
    v21 = *(v17 + 8);
    v0[19] = v21;
    v0[20] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v21(v15, v16);
    v22 = *v13;
    v23 = swift_task_alloc();
    v0[21] = v23;
    *v23 = v0;
    v23[1] = sub_221EAFC14;

    return sub_221F2898C(v18, v20);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221EAFC14(char a1)
{
  v2 = *(*v1 + 168);
  v3 = *(*v1 + 144);
  v5 = *v1;
  *(*v1 + 177) = a1;

  return MEMORY[0x2822009F8](sub_221EAFD34, 0, 0);
}

id sub_221EAFD34()
{
  v1 = *(v0 + 177);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1 & 1) != 0 || (*(v0 + 176))
  {
    v2 = *(v0 + 136);

    v3 = 0;
  }

  else
  {
    result = [*(v0 + 72) UUID];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = result;
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 136);
    v9 = *(v0 + 104);
    v10 = *(v0 + 88);
    sub_221FB5C18();

    v11 = sub_221FB5BE8();
    v13 = v12;
    v7(v9, v10);
    *(v0 + 56) = v11;
    *(v0 + 64) = v13;
    v14 = swift_task_alloc();
    *(v14 + 16) = v0 + 56;
    LOBYTE(v9) = sub_221F7B864(sub_221EB9CF4, v14, v8);

    v3 = v9 ^ 1;
  }

  v16 = *(v0 + 104);
  v15 = *(v0 + 112);

  v17 = *(v0 + 8);

  return v17(v3 & 1);
}

uint64_t sub_221EAFEA0(id *a1)
{
  v1 = [*a1 relationshipStorage];
  v2 = [v1 legacyRelationship];

  if ([v2 secureCloudDowngradeNeedsAcknowledgement])
  {
    v3 = 1;
  }

  else
  {
    v3 = [v2 secureCloudDowngradeAcknowledged];
  }

  return v3;
}

void sub_221EAFF3C(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = [*a1 relationshipStorage];
  v6 = [v5 legacyRelationship];

  if ((sub_221EB0110(v6) & 1) == 0)
  {

    v6 = 0;
    goto LABEL_15;
  }

  [v6 insertEventWithType_];
  v7 = *(a2 + 376);
  v8 = *(a2 + 377);
  v9 = *(a2 + 384);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v10 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v9);

    if (v10 == 2)
    {
      v11 = v8;
    }

    else
    {
      v11 = v10;
    }

    if ((v11 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  else if ((v8 & 1) == 0)
  {
LABEL_7:
    [v6 insertEventWithType_];
    goto LABEL_15;
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v12 = sub_221FB61D8();
  __swift_project_value_buffer(v12, qword_281307DF0);
  v13 = sub_221FB61B8();
  v14 = sub_221FB65C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_221E93000, v13, v14, "Waiting for downgrade acknowledgement", v15, 2u);
    MEMORY[0x223DADA80](v15, -1, -1);
  }

LABEL_15:
  *a3 = v6;
}

uint64_t sub_221EB0110(void *a1)
{
  v2 = v1;
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v65 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v66 = &v64 - v13;
  MEMORY[0x28223BE20](v12);
  v68 = &v64 - v14;
  v15 = sub_221FB5BC8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v64 - v21;
  v23 = [a1 dateForLatestDowngradeCompleted];
  if (v23)
  {
    v24 = v23;
    sub_221FB5B98();

    sub_221FB5B78();
    v26 = v25;
    v27 = *(v2 + 392);
    v28 = *(v2 + 400);
    v29 = *(v2 + 408);
    if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
    {
      LOBYTE(v69) = v27;
      UserDefaultsKeys.rawValue.getter();
      *&v67 = COERCE_DOUBLE(sub_221EF8934(v29));
      v31 = v30;

      (*(v16 + 8))(v22, v15);
      if ((v31 & 1) == 0)
      {
        v28 = *&v67;
      }
    }

    else
    {
      (*(v16 + 8))(v22, v15);
    }

    v32 = v28 < fabs(v26);
  }

  else
  {
    v32 = 1;
  }

  LODWORD(v67) = v32;
  v33 = [a1 dateForLatestDowngradeNeedsAcknowledgement];
  if (v33)
  {
    v34 = v33;
    sub_221FB5B98();

    sub_221FB5B78();
    v36 = v35;
    v37 = *(v2 + 392);
    v38 = *(v2 + 400);
    v39 = *(v2 + 408);
    if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
    {
      LOBYTE(v69) = v37;
      UserDefaultsKeys.rawValue.getter();
      *&v40 = COERCE_DOUBLE(sub_221EF8934(v39));
      v42 = v41;

      (*(v16 + 8))(v20, v15);
      if ((v42 & 1) == 0)
      {
        v38 = *&v40;
      }
    }

    else
    {
      (*(v16 + 8))(v20, v15);
    }

    v43 = v38 < fabs(v36);
  }

  else
  {
    v43 = 1;
  }

  v44 = v66;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v45 = sub_221FB61D8();
  __swift_project_value_buffer(v45, qword_281307DF0);
  v46 = a1;
  v47 = sub_221FB61B8();
  v48 = sub_221FB65C8();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v71 = v50;
    *v49 = 136315650;
    v51 = [v46 UUID];
    if (v51)
    {
      v52 = v51;
      sub_221FB5C18();

      v53 = 0;
    }

    else
    {
      v53 = 1;
    }

    (*(v5 + 56))(v44, v53, 1, v4);
    v55 = v44;
    v56 = v68;
    sub_221EB994C(v55, v68);
    v57 = v65;
    sub_221EB99BC(v56, v65);
    if ((*(v5 + 48))(v57, 1, v4) == 1)
    {
      v58 = 0xE300000000000000;
      v59 = 7104878;
    }

    else
    {
      v60 = v64;
      (*(v5 + 32))(v64, v57, v4);
      v69 = 0;
      v70 = 0xE000000000000000;
      sub_221FB6A08();
      v61 = v4;
      v59 = v69;
      v58 = v70;
      (*(v5 + 8))(v60, v61);
    }

    sub_221E9CFE8(v68, &qword_27CFEBD50, &unk_221FB9FB0);
    v62 = sub_221EF4114(v59, v58, &v71);

    *(v49 + 4) = v62;
    *(v49 + 12) = 1024;
    v54 = v67;
    *(v49 + 14) = v67 ^ 1;
    *(v49 + 18) = 1024;
    *(v49 + 20) = !v43;
    _os_log_impl(&dword_221E93000, v47, v48, "Downgrade backoff for %s completion: %{BOOL}d, acknowledgement: %{BOOL}d", v49, 0x18u);
    __swift_destroy_boxed_opaque_existential_0(v50);
    MEMORY[0x223DADA80](v50, -1, -1);
    MEMORY[0x223DADA80](v49, -1, -1);
  }

  else
  {

    v54 = v67;
  }

  return v54 & v43;
}

uint64_t sub_221EB0748(uint64_t a1)
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
    v16 = [v15 legacyRelationship];

    [v16 insertEventWithType_];
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

uint64_t sub_221EB0A90(uint64_t a1)
{
  v1 = a1;
  v37 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_221FB6868();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v43 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    result = sub_221FB6818();
    v40 = result;
    v41 = v4;
    v42 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v43 = MEMORY[0x277D84F90];
  sub_221FB69D8();
  v5 = -1 << *(v1 + 32);
  result = sub_221FB67E8();
  v6 = *(v1 + 36);
  v40 = result;
  v41 = v6;
  v42 = 0;
LABEL_7:
  v7 = 0;
  v34 = v1 + 56;
  v33 = v1 + 64;
  v35 = v2;
  v36 = v1;
  while (v7 < v2)
  {
    if (__OFADD__(v7++, 1))
    {
      goto LABEL_35;
    }

    v10 = v40;
    v11 = v42;
    v38 = v41;
    sub_221F78B6C(v40, v41, v42, v1);
    v13 = v12;
    v14 = [v12 relationshipStorage];
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v15 = sub_221FB61D8();
    __swift_project_value_buffer(v15, qword_281307DF0);
    v16 = v14;
    v17 = sub_221FB61B8();
    v18 = sub_221FB65C8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v16;
      *v20 = v16;
      v21 = v16;
      _os_log_impl(&dword_221E93000, v17, v18, "Found secure cloud relationship to fix up for downgrade: %@", v19, 0xCu);
      sub_221E9CFE8(v20, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v20, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
    }

    v22 = [v16 secureCloudRelationship];
    sub_221FB69B8();
    v23 = *(v43 + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    result = sub_221FB69C8();
    if (v37)
    {
      v1 = v36;
      if (!v11)
      {
        goto LABEL_39;
      }

      if (sub_221FB6838())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD48, &unk_221FB9270);
      v8 = sub_221FB6528();
      sub_221FB68B8();
      result = v8(v39, 0);
      if (v7 == v35)
      {
LABEL_32:
        sub_221EB9940(v40, v41, v42);
        return v43;
      }
    }

    else
    {
      v1 = v36;
      if (v11)
      {
        goto LABEL_40;
      }

      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      v24 = 1 << *(v36 + 32);
      if (v10 >= v24)
      {
        goto LABEL_36;
      }

      v25 = v10 >> 6;
      v26 = *(v34 + 8 * (v10 >> 6));
      if (((v26 >> v10) & 1) == 0)
      {
        goto LABEL_37;
      }

      if (*(v36 + 36) != v38)
      {
        goto LABEL_38;
      }

      v27 = v26 & (-2 << (v10 & 0x3F));
      if (v27)
      {
        v24 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v2 = v35;
      }

      else
      {
        v28 = v25 << 6;
        v29 = v25 + 1;
        v30 = (v33 + 8 * v25);
        v2 = v35;
        while (v29 < (v24 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_221EB9940(v10, v38, 0);
            v24 = __clz(__rbit64(v31)) + v28;
            goto LABEL_31;
          }
        }

        result = sub_221EB9940(v10, v38, 0);
      }

LABEL_31:
      v40 = v24;
      v41 = v38;
      v42 = 0;
      if (v7 == v2)
      {
        goto LABEL_32;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_221EB0F00(void (*a1)(void **__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v5 = v3;
  if (a3 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    result = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v16 = MEMORY[0x277D84F90];
    sub_221FB69D8();
    if (i < 0)
    {
      __break(1u);
LABEL_19:

      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x223DACD50](j, a3);
      }

      else
      {
        if (j >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v11 = *(a3 + 8 * j + 32);
      }

      v4 = v11;
      v14 = v11;
      a1(&v15, &v14);
      if (v5)
      {
        goto LABEL_19;
      }

      v5 = 0;

      v4 = v15;
      sub_221FB69B8();
      v12 = *(v16 + 16);
      sub_221FB69E8();
      sub_221FB69F8();
      sub_221FB69C8();
      if (v10 == i)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return result;
}

uint64_t sub_221EB1074(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x2822009F8](sub_221EB1094, 0, 0);
}

uint64_t sub_221EB1094()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  v0[6] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000095, 0x8000000221FC14C0, 0xD000000000000031, 0x8000000221FC1560);
  v3 = [*(v1 + 208) contacts];
  if (v3)
  {
    v4 = v3;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v5 = sub_221FB64F8();
    v0[7] = v5;

    if ((v5 & 0xC000000000000001) != 0)
    {
      if (sub_221FB6868())
      {
LABEL_6:
        v6 = v0[5];
        v0[2] = v5;
        v7 = swift_task_alloc();
        v0[8] = v7;
        *(v7 + 16) = v6;
        v8 = *(MEMORY[0x277CE94C8] + 4);
        v9 = swift_task_alloc();
        v0[9] = v9;
        v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD08, &qword_221FB9210);
        v11 = sub_221EB83D0(&qword_281306F30, &qword_27CFEBD08, &qword_221FB9210);
        *v9 = v0;
        v9[1] = sub_221EB1390;

        return MEMORY[0x28213AEB8](&unk_221FB9208, v7, v10, v11);
      }
    }

    else if (*(v5 + 16))
    {
      goto LABEL_6;
    }
  }

  v12 = sub_221FB61B8();
  v13 = sub_221FB65C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_221E93000, v12, v13, "No contacts to to downgrade", v14, 2u);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

void sub_221EB1390(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 72);
  v5 = *v2;
  *(*v2 + 80) = a1;

  if (v1)
  {
  }

  else
  {
    v6 = *(v3 + 56);
    v7 = *(v3 + 64);

    MEMORY[0x2822009F8](sub_221EB14D8, 0, 0);
  }
}

uint64_t sub_221EB14D8()
{
  v1 = v0[10];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v9 = v0[10];
    }

    if (sub_221FB6868())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v3 = v0[4];
    v2 = v0[5];
    v0[3] = v0[10];
    v4 = swift_task_alloc();
    v0[11] = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = *(MEMORY[0x277CE94D8] + 4);
    v6 = swift_task_alloc();
    v0[12] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD10, &unk_221FBB280);
    v8 = sub_221EB83D0(&qword_27CFEBD18, &qword_27CFEBD10, &unk_221FBB280);
    *v6 = v0;
    v6[1] = sub_221EB16E8;

    return MEMORY[0x28213AEC8](&unk_221FB9220, v4, v7, v8);
  }

  v10 = v0[10];
  v11 = v0[6];

  v12 = sub_221FB61B8();
  v13 = sub_221FB65C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_221E93000, v12, v13, "No contacts requesting downgrade", v14, 2u);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  v15 = v0[1];

  return v15();
}

void sub_221EB16E8()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 80);
    v6 = *(v2 + 88);

    v7 = *(v4 + 8);

    v7();
  }
}

uint64_t sub_221EB1828(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_221EB184C, 0, 0);
}

uint64_t sub_221EB184C()
{
  v1 = v0[3];
  v2 = [v1 relationshipStorage];
  v0[4] = [v2 primaryRelationship];

  v3 = [v1 relationshipStorage];
  v0[5] = [v3 secureCloudRelationship];

  v4 = [v1 relationshipStorage];
  v5 = [v4 legacyRelationship];
  v0[6] = v5;

  v6 = [v1 relationshipStorage];
  v7 = [v6 legacyRemoteRelationship];
  v0[7] = v7;

  v8 = swift_task_alloc();
  v0[8] = v8;
  *v8 = v0;
  v8[1] = sub_221EB19CC;
  v9 = v0[2];

  return sub_221EB1C08(v5, v7);
}

uint64_t sub_221EB19CC(char a1)
{
  v2 = *(*v1 + 64);
  v4 = *v1;
  *(*v1 + 72) = a1;

  return MEMORY[0x2822009F8](sub_221EB1ACC, 0, 0);
}

uint64_t sub_221EB1ACC()
{
  v1 = (v0 + 32);
  if ([*(v0 + 32) cloudType] != 1)
  {
    v2 = (v0 + 56);
    v4 = (v0 + 48);
    v3 = (v0 + 40);
    goto LABEL_5;
  }

  v2 = (v0 + 40);
  if ([*(v0 + 40) secureCloudDowngradeStarted])
  {
    v3 = (v0 + 40);
    v2 = (v0 + 56);
    v4 = (v0 + 48);
LABEL_5:
    v5 = *v2;
    v6 = *v4;
    v7 = *v1;
    v8 = *v3;

LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  if (([*(v0 + 40) isFriendshipActive] & 1) == 0)
  {
    v4 = (v0 + 56);
    v3 = (v0 + 32);
    v1 = (v0 + 48);
    goto LABEL_5;
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = [v14 secureCloudMigrationCompleted];

  if (!v16)
  {
    goto LABEL_6;
  }

  v9 = *(v0 + 72);
LABEL_7:
  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_221EB1C08(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_221FB5C38();
  v3[12] = v4;
  v5 = *(v4 - 8);
  v3[13] = v5;
  v6 = *(v5 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EB1CD8, 0, 0);
}

uint64_t sub_221EB1CD8()
{
  if ([*(v0 + 72) secureCloudDowngradeAcknowledged])
  {
    v2 = *(v0 + 112);
    v1 = *(v0 + 120);

    v3 = *(v0 + 8);

    return v3(1);
  }

  else
  {
    v5 = *(v0 + 88);
    v6 = v5[3];
    v7 = v5[4];
    __swift_project_boxed_opaque_existential_0Tm(v5, v6);
    v8 = *(MEMORY[0x277CE9360] + 4);
    v9 = swift_task_alloc();
    *(v0 + 128) = v9;
    *v9 = v0;
    v9[1] = sub_221EB1DE8;

    return MEMORY[0x28213AC20](v6, v7);
  }
}

uint64_t sub_221EB1DE8(char a1)
{
  v2 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_221EB1EE8, 0, 0);
}

uint64_t sub_221EB1EE8()
{
  v1 = *(v0 + 88);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(MEMORY[0x277CE9368] + 4);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_221EB1F9C;

  return MEMORY[0x28213AC28](v2, v3);
}

uint64_t sub_221EB1F9C(uint64_t a1)
{
  v2 = *(*v1 + 136);
  v4 = *v1;
  *(*v1 + 144) = a1;

  return MEMORY[0x2822009F8](sub_221EB209C, 0, 0);
}

id sub_221EB209C()
{
  if (*(v0 + 168))
  {
LABEL_4:
    v12 = *(v0 + 144);

    if ([*(v0 + 80) secureCloudDowngradeCompleted])
    {
      v13 = [*(v0 + 80) secureCloudMigrationAvailable] ^ 1;
LABEL_13:
      v22 = *(v0 + 112);
      v21 = *(v0 + 120);

      v23 = *(v0 + 8);

      return v23(v13);
    }

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  result = [*(v0 + 72) UUID];
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v2 = result;
  v3 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  sub_221FB5C18();

  v7 = sub_221FB5BE8();
  v9 = v8;
  v10 = *(v6 + 8);
  v10(v4, v5);
  *(v0 + 56) = v7;
  *(v0 + 64) = v9;
  v11 = swift_task_alloc();
  *(v11 + 16) = v0 + 56;
  LOBYTE(v3) = sub_221F7B864(sub_221EB8534, v11, v3);

  if (v3)
  {
    goto LABEL_4;
  }

  v14 = *(v0 + 88);
  v15 = *(v14 + 360);
  v16 = *(v14 + 361);
  v17 = *(v14 + 368);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    UserDefaultsKeys.rawValue.getter();
    v18 = _sSb23ActivitySharingServicesE4read4from3keySbSgSo14NSUserDefaultsC_SStFZ_0(v17);

    if (v18 == 2)
    {
      v19 = v16;
    }

    else
    {
      v19 = v18;
    }

    if ((v19 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (!v16)
  {
LABEL_11:
    v20 = *(v0 + 144);

    goto LABEL_12;
  }

  v24 = *(v0 + 72);
  sub_221EA4AB4(*(v0 + 88) + 256, v0 + 16);
  v25 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  result = [v24 UUID];
  if (!result)
  {
LABEL_22:
    __break(1u);
    return result;
  }

  v26 = result;
  v27 = *(v0 + 144);
  v28 = *(v0 + 112);
  v29 = *(v0 + 96);

  sub_221FB5C18();

  v30 = sub_221FB5BE8();
  v32 = v31;
  *(v0 + 152) = v31;
  v10(v28, v29);
  v33 = *v25;
  v34 = swift_task_alloc();
  *(v0 + 160) = v34;
  *v34 = v0;
  v34[1] = sub_221EB2390;

  return sub_221F2898C(v30, v32);
}

uint64_t sub_221EB2390(char a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 152);
  v5 = *v1;
  *(*v1 + 169) = a1;

  return MEMORY[0x2822009F8](sub_221EB24B0, 0, 0);
}

uint64_t sub_221EB24B0()
{
  v1 = *(v0 + 169);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v1)
  {
    v2 = 0;
  }

  else
  {
    v2 = [*(v0 + 80) secureCloudDowngradeCompleted];
  }

  v4 = *(v0 + 112);
  v3 = *(v0 + 120);

  v5 = *(v0 + 8);

  return v5(v2);
}

uint64_t sub_221EB2548(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  *(v3 + 16) = *a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221EB25F8;

  return sub_221EB2A94(v5, a3);
}

uint64_t sub_221EB25F8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_221EB27E0;
  }

  else
  {
    v3 = sub_221EB270C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB270C()
{
  v1 = [*(v0 + 16) relationshipStorage];
  v2 = [v1 secureCloudRemoteRelationship];

  [v2 secureCloudDowngradeCompleted];
  v3 = sub_221FB62E8();
  ASAnalyticsReportManateeDowngrade();

  v4 = *(v0 + 8);

  return v4();
}

void sub_221EB27E0()
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
    v9 = [v6 relationshipStorage];
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to downgrade contact %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[4];
  v11 = v0[2];

  v12 = v10;
  v13 = [v11 relationshipStorage];
  v14 = [v13 secureCloudRemoteRelationship];

  [v14 secureCloudDowngradeCompleted];
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
  ASAnalyticsReportManateeDowngrade();

  v22 = v0[1];

  v22();
}

uint64_t sub_221EB2A94(uint64_t a1, uint64_t a2)
{
  v3[87] = v2;
  v3[86] = a2;
  v3[85] = a1;
  v4 = sub_221FB5C38();
  v3[88] = v4;
  v5 = *(v4 - 8);
  v3[89] = v5;
  v6 = *(v5 + 64) + 15;
  v3[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EB2B5C, 0, 0);
}

uint64_t sub_221EB2B5C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[85];
  v2 = sub_221FB61D8();
  v0[91] = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[85];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Downgrading contact: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = v0[87];

  if ([*(*__swift_project_boxed_opaque_existential_0Tm((v10 + 216) *(v10 + 240)) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
  {
    v11 = v0[87];
    v12 = v0[85];
    v13 = [v12 relationshipStorage];
    v14 = [v13 secureCloudRelationship];
    v0[92] = v14;

    v15 = v14;
    v16 = [v12 relationshipStorage];
    v0[93] = [v16 legacyRelationship];

    [v15 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm(v11 + 37, v11[40]);
    v17 = v11[25];
    v0[94] = v17;
    v18 = swift_task_alloc();
    v0[95] = v18;
    *v18 = v0;
    v18[1] = sub_221EB2EE8;
    v19 = v0[86];

    return sub_221EBAEA8(v15, v12, v17, v19);
  }

  else
  {
    v21 = sub_221FB61B8();
    v22 = sub_221FB65A8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_221E93000, v21, v22, "Protected data is unavailable, skipping downgrade", v23, 2u);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v24 = 36;
    swift_willThrow();
    v25 = v0[90];

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_221EB2EE8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 760);
  v6 = *v2;
  *(v4 + 768) = a1;
  *(v4 + 776) = v1;

  if (v1)
  {
    v7 = sub_221EB3774;
  }

  else
  {
    v7 = sub_221EB3028;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221EB3028()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 720);
  v3 = *(v0 + 712);
  v4 = *(v0 + 704);
  v5 = *(v0 + 696);
  v6 = *(v0 + 680);

  v7 = __swift_project_boxed_opaque_existential_0Tm((v5 + 160), *(v5 + 184));
  v8 = v1;
  v9 = [v6 UUID];
  sub_221FB5C18();

  v10 = *v7;
  v11 = sub_221FB5BF8();
  v12 = [v10 currentCompetitionListForFriendWithUUID_];
  *(v0 + 784) = v12;

  v13 = *(v3 + 8);
  v13(v2, v4);
  v14 = __swift_project_boxed_opaque_existential_0Tm((v5 + 160), *(v5 + 184));
  v15 = [v6 UUID];
  sub_221FB5C18();

  v16 = *v14;
  v17 = sub_221FB5BF8();
  v18 = [v16 archivedCompetitionListForFriendWithUUID_];
  *(v0 + 792) = v18;

  v13(v2, v4);
  *(v0 + 560) = v12;
  *(v0 + 568) = v18;
  v19 = MEMORY[0x277D84F90];
  v70 = MEMORY[0x277D84F90];
  v20 = v12;
  v21 = v18;
  for (i = 0; i != 2; ++i)
  {
    v23 = *(v0 + 560 + 8 * i);
    if (v23)
    {
      v24 = v23;
      MEMORY[0x223DAC7E0]();
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v25 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      v19 = v70;
    }
  }

  v26 = *(v0 + 776);
  v27 = *(v0 + 768);
  v28 = *(v0 + 696);
  v29 = *(v0 + 680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD20, &qword_221FBB2A0);
  swift_arrayDestroy();
  v30 = swift_task_alloc();
  *(v30 + 16) = v28;
  *(v30 + 24) = v29;
  sub_221EB0F00(sub_221EB8418, v30, v19);

  v31 = ASCompetitionEventsFromRelationship();

  if (!v31)
  {
    sub_221E9D138(0, &qword_27CFEBD28, 0x277CE9120);
    sub_221FB6438();
    v31 = sub_221FB6428();
  }

  v32 = *(v0 + 744);
  v33 = *(v0 + 696);
  [v32 insertEvents_];

  [v32 insertEventWithType_];
  v34 = __swift_project_boxed_opaque_existential_0Tm((v33 + 296), *(v33 + 320));
  if ([v32 cloudType])
  {
    v35 = *(v0 + 744);
    v36 = *(v0 + 728);

    v37 = v35;
    v38 = sub_221FB61B8();
    v39 = sub_221FB65A8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 744);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v40;
      *v42 = v40;
      v43 = v40;
      _os_log_impl(&dword_221E93000, v38, v39, "Attempting to save secure cloud relationship to legacy container %@", v41, 0xCu);
      sub_221E9CFE8(v42, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v42, -1, -1);
      MEMORY[0x223DADA80](v41, -1, -1);
    }

    sub_221EA4994();
    v44 = swift_allocError();
    *v45 = 11;
    swift_willThrow();
    *(v0 + 952) = v44;
    v46 = *(v0 + 728);
    v47 = v44;
    v48 = sub_221FB61B8();
    v49 = sub_221FB65C8();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v50 = 138412290;
      v52 = v44;
      v53 = _swift_stdlib_bridgeErrorToNSError();
      *(v50 + 4) = v53;
      *v51 = v53;
      _os_log_impl(&dword_221E93000, v48, v49, "Saving downgrade on legacy relationship failed: %@", v50, 0xCu);
      sub_221E9CFE8(v51, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v51, -1, -1);
      MEMORY[0x223DADA80](v50, -1, -1);
    }

    v54 = *(v0 + 768);
    v55 = *(v0 + 696);
    v56 = *(v0 + 680);

    [v54 insertEventWithType_];
    __swift_project_boxed_opaque_existential_0Tm((v55 + 296), *(v55 + 320));
    v57 = swift_task_alloc();
    *(v0 + 960) = v57;
    *v57 = v0;
    v57[1] = sub_221EB5120;
    v58 = *(v0 + 768);
    v59 = *(v0 + 752);
    v60 = *(v0 + 688);

    return sub_221EBAEA8(v58, v56, v59, v60);
  }

  else
  {
    v62 = *(v0 + 744);
    v68 = *(v0 + 688);
    v69 = *(v0 + 752);
    v63 = *(v0 + 680);
    v64 = *__swift_project_boxed_opaque_existential_0Tm(v34 + 6, v34[9]);
    *(v0 + 800) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v65 = sub_221FB6428();
    *(v0 + 808) = v65;

    *(v0 + 816) = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v66 = sub_221FB6428();
    *(v0 + 824) = v66;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 672;
    *(v0 + 24) = sub_221EB37E8;
    v67 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD30, &unk_221FB9240);
    *(v0 + 272) = MEMORY[0x277D85DD0];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_221F68D78;
    *(v0 + 296) = &block_descriptor_6;
    *(v0 + 304) = v67;
    [v64 saveRelationship:v62 contact:v63 extraRecordsToSave:v65 extraRecordIDsToDelete:v66 cloudKitGroup:v69 activity:v68 completion:v0 + 272];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221EB3774()
{
  v1 = *(v0 + 736);

  v2 = *(v0 + 776);
  v3 = *(v0 + 720);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221EB37E8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 832) = v2;
  if (v2)
  {
    v3 = sub_221EB464C;
  }

  else
  {
    v3 = sub_221EB38F8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB38F8()
{
  v1 = v0[103];
  v2 = v0[101];
  v3 = v0[100];
  v4 = v0[87];
  v5 = v0[85];
  v0[105] = v0[84];

  v6 = __swift_project_boxed_opaque_existential_0Tm((v4 + 296), *(v4 + 320));
  v7 = *__swift_project_boxed_opaque_existential_0Tm(v6 + 6, v6[9]);

  sub_221F17A54(v8);

  v0[106] = sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v9 = sub_221FB64E8();
  v0[107] = v9;

  v0[10] = v0;
  v0[15] = v0 + 78;
  v0[11] = sub_221EB3AC4;
  v10 = swift_continuation_init();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[108] = v11;
  v0[49] = v11;
  v0[42] = MEMORY[0x277D85DD0];
  v0[43] = 1107296256;
  v0[44] = sub_221EBCB58;
  v0[45] = &block_descriptor_19_0;
  v0[46] = v10;
  [v7 handleSavedRecords:v9 forContact:v5 completion:v0 + 42];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_221EB3AC4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 872) = v2;
  if (v2)
  {
    v3 = sub_221EB4470;
  }

  else
  {
    v3 = sub_221EB3BD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB3BD4()
{
  v1 = *(v0 + 856);
  v2 = *(v0 + 840);
  v3 = *(v0 + 744);
  v4 = *(v0 + 728);
  v5 = *(v0 + 696);
  v6 = *(v0 + 632);
  *(v0 + 880) = v6;

  __swift_project_boxed_opaque_existential_0Tm((v5 + 160), *(v5 + 184));
  v7 = off_28355EF40;
  v8 = v6;
  v7(v2, &type metadata for CompetitionCoordinator, &off_28355EF08);

  v9 = v8;
  v10 = sub_221FB61B8();
  v11 = sub_221FB65C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v9;
    *v13 = v9;
    _os_log_impl(&dword_221E93000, v10, v11, "Downgraded to legacy relationship %@", v12, 0xCu);
    sub_221E9CFE8(v13, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v10 = v9;
  }

  v14 = *(v0 + 784);

  if (v14)
  {
    v15 = [*(v0 + 784) systemFieldsOnlyRecord];
    v16 = *(v0 + 784);
    if (v15)
    {
      v17 = v15;
      v18 = [v15 recordID];

      goto LABEL_9;
    }
  }

  v18 = 0;
LABEL_9:
  v19 = *(v0 + 792);
  *(v0 + 608) = v18;
  if (!v19)
  {
LABEL_13:
    v23 = 0;
    goto LABEL_14;
  }

  v20 = [v19 systemFieldsOnlyRecord];
  v21 = *(v0 + 792);
  if (!v20)
  {

    goto LABEL_13;
  }

  v22 = v20;
  v23 = [v20 recordID];

LABEL_14:
  v24 = 0;
  *(v0 + 616) = v23;
  v25 = MEMORY[0x277D84F90];
  v85 = MEMORY[0x277D84F90];
LABEL_15:
  *(v0 + 888) = v25;
  while (v24 != 2)
  {
    v26 = *(v0 + 8 * v24++ + 608);
    if (v26)
    {
      v27 = v26;
      MEMORY[0x223DAC7E0]();
      if (*((v85 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v85 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v28 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      v25 = v85;
      goto LABEL_15;
    }
  }

  v29 = *(v0 + 768);
  v30 = *(v0 + 696);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD40, &qword_221FB9250);
  swift_arrayDestroy();
  [v29 insertEventWithType_];
  v31 = __swift_project_boxed_opaque_existential_0Tm((v30 + 296), *(v30 + 320));
  v32 = [v29 cloudType];
  v33 = *(v0 + 768);
  if (v32 == 1)
  {
    v34 = [v33 secureCloudZoneName];
    if (v34)
    {
      v35 = v34;
      v36 = *(v0 + 768);
      v37 = *(v0 + 728);
      sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
      sub_221FB6318();

      v38 = *MEMORY[0x277CBBF28];
      sub_221FB6318();
      v39 = sub_221FB65D8();
      v40 = [v36 recordWithZoneID:v39 recordEncryptionType:1];
      *(v0 + 896) = v40;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_221FB81B0;
      *(v41 + 32) = v40;
      v42 = v40;
      v43 = MEMORY[0x277D84F90];
      sub_221ED4350(MEMORY[0x277D84F90]);
      v44 = sub_221FB61B8();
      v45 = sub_221FB65C8();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 134217984;
        v47 = v43 >> 62;
        if (v43 >> 62)
        {
          v82 = v46;
          v47 = sub_221FB6868();
          v46 = v82;
        }

        *(v46 + 4) = v47;
        v48 = v45;
        v49 = v46;
        _os_log_impl(&dword_221E93000, v44, v48, "Pushing relationship to iCloud with %ld extra records", v46, 0xCu);
        MEMORY[0x223DADA80](v49, -1, -1);
      }

      v50 = *(v0 + 816);
      v51 = *(v0 + 800);
      v83 = *(v0 + 688);
      v84 = *(v0 + 752);

      v52 = *__swift_project_boxed_opaque_existential_0Tm(v31 + 11, v31[14]);
      v53 = sub_221FB6428();
      *(v0 + 904) = v53;

      v54 = sub_221FB6428();
      *(v0 + 912) = v54;
      *(v0 + 144) = v0;
      *(v0 + 184) = v0 + 640;
      *(v0 + 152) = sub_221EB4824;
      v55 = swift_continuation_init();
      *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 400) = MEMORY[0x277D85DD0];
      *(v0 + 408) = 1107296256;
      *(v0 + 416) = sub_221EBA78C;
      *(v0 + 424) = &block_descriptor_23_0;
      *(v0 + 432) = v55;
      [v52 saveRecordsIntoPrivateDatabase:v53 recordIDsToDelete:v54 priority:2 activity:v83 useZoneWideSharing:1 group:v84 completion:v0 + 400];
      v34 = (v0 + 144);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v34);
  }

  else
  {
    v56 = *(v0 + 728);
    v57 = v33;
    v58 = sub_221FB61B8();
    v59 = sub_221FB65A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = *(v0 + 768);
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138412290;
      *(v61 + 4) = v60;
      *v62 = v60;
      v63 = v60;
      _os_log_impl(&dword_221E93000, v58, v59, "Attempting to save legacy relationship to secure cloud container %@", v61, 0xCu);
      sub_221E9CFE8(v62, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v62, -1, -1);
      MEMORY[0x223DADA80](v61, -1, -1);
    }

    sub_221EA4994();
    v64 = swift_allocError();
    *v65 = 11;
    swift_willThrow();

    v66 = *(v0 + 728);
    v67 = v64;
    v68 = sub_221FB61B8();
    v69 = sub_221FB65C8();

    v70 = os_log_type_enabled(v68, v69);
    v71 = *(v0 + 880);
    v72 = *(v0 + 792);
    v73 = *(v0 + 784);
    v74 = *(v0 + 768);
    if (v70)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v75 = 138412290;
      v77 = v64;
      v78 = _swift_stdlib_bridgeErrorToNSError();
      *(v75 + 4) = v78;
      *v76 = v78;
      _os_log_impl(&dword_221E93000, v68, v69, "Error saving secure cloud relationship with downgrade event: %@", v75, 0xCu);
      sub_221E9CFE8(v76, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v76, -1, -1);
      MEMORY[0x223DADA80](v75, -1, -1);
    }

    else
    {
    }

    v79 = *(v0 + 720);

    v80 = *(v0 + 8);

    return v80();
  }
}

uint64_t sub_221EB4470()
{
  v1 = v0[109];
  v2 = v0[107];
  v3 = v0[105];
  swift_willThrow();

  v4 = v0[109];
  v0[119] = v4;
  v5 = v0[91];
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
    _os_log_impl(&dword_221E93000, v7, v8, "Saving downgrade on legacy relationship failed: %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v13 = v0[96];
  v14 = v0[87];
  v15 = v0[85];

  [v13 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v14 + 296), *(v14 + 320));
  v16 = swift_task_alloc();
  v0[120] = v16;
  *v16 = v0;
  v16[1] = sub_221EB5120;
  v17 = v0[96];
  v18 = v0[94];
  v19 = v0[86];

  return sub_221EBAEA8(v17, v15, v18, v19);
}

uint64_t sub_221EB464C()
{
  v1 = v0[104];
  v2 = v0[103];
  v3 = v0[101];
  swift_willThrow();

  v4 = v0[104];
  v0[119] = v4;
  v5 = v0[91];
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
    _os_log_impl(&dword_221E93000, v7, v8, "Saving downgrade on legacy relationship failed: %@", v9, 0xCu);
    sub_221E9CFE8(v10, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v13 = v0[96];
  v14 = v0[87];
  v15 = v0[85];

  [v13 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v14 + 296), *(v14 + 320));
  v16 = swift_task_alloc();
  v0[120] = v16;
  *v16 = v0;
  v16[1] = sub_221EB5120;
  v17 = v0[96];
  v18 = v0[94];
  v19 = v0[86];

  return sub_221EBAEA8(v17, v15, v18, v19);
}

uint64_t sub_221EB4824()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  *(*v0 + 920) = v2;
  if (v2)
  {
    v3 = sub_221EB4C04;
  }

  else
  {
    v3 = sub_221EB4934;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB4934()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  v4 = v0[111];
  v14 = v0[108];
  v5 = v0[106];
  v6 = v0[100];
  v7 = v0[87];
  v15 = v0[85];
  v0[116] = v0[81];

  v8 = __swift_project_boxed_opaque_existential_0Tm((v7 + 296), *(v7 + 320));
  v9 = *__swift_project_boxed_opaque_existential_0Tm(v8 + 6, v8[9]);

  sub_221F17A54(v10);

  v11 = sub_221FB64E8();
  v0[117] = v11;

  v0[26] = v0;
  v0[31] = v0 + 82;
  v0[27] = sub_221EB4AF4;
  v12 = swift_continuation_init();
  v0[65] = v14;
  v0[58] = MEMORY[0x277D85DD0];
  v0[59] = 1107296256;
  v0[60] = sub_221EBCB58;
  v0[61] = &block_descriptor_26;
  v0[62] = v12;
  [v9 handleSavedRecords:v11 forContact:v15 completion:v0 + 58];

  return MEMORY[0x282200938](v0 + 26);
}

uint64_t sub_221EB4AF4()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 944) = v2;
  if (v2)
  {
    v3 = sub_221EB4F5C;
  }

  else
  {
    v3 = sub_221EB4DD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB4C04()
{
  v1 = v0[115];
  v2 = v0[114];
  v3 = v0[113];
  v4 = v0[112];
  v5 = v0[111];
  swift_willThrow();

  v6 = v0[115];
  v7 = v0[91];
  v8 = v6;
  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[110];
  v13 = v0[99];
  v14 = v0[98];
  v15 = v0[96];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = v6;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_221E93000, v9, v10, "Error saving secure cloud relationship with downgrade event: %@", v16, 0xCu);
    sub_221E9CFE8(v17, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v17, -1, -1);
    MEMORY[0x223DADA80](v16, -1, -1);
  }

  else
  {
  }

  v20 = v0[90];

  v21 = v0[1];

  return v21();
}

uint64_t sub_221EB4DD8()
{
  v1 = *(v0 + 928);
  v2 = *(v0 + 768);
  v3 = *(v0 + 728);
  v4 = *(v0 + 664);

  v5 = v4;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 880);
  v10 = *(v0 + 792);
  v11 = *(v0 + 784);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    *(v12 + 4) = v5;
    *v13 = v5;
    _os_log_impl(&dword_221E93000, v6, v7, "Completed downgrade on secure cloud relationship: %@", v12, 0xCu);
    sub_221E9CFE8(v13, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v9 = v5;
  }

  v14 = *(v0 + 720);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_221EB4F5C()
{
  v1 = v0[118];
  v2 = v0[117];
  v3 = v0[116];
  swift_willThrow();

  v4 = v0[118];
  v5 = v0[91];
  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[110];
  v11 = v0[99];
  v12 = v0[98];
  v13 = v0[96];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v4;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    _os_log_impl(&dword_221E93000, v7, v8, "Error saving secure cloud relationship with downgrade event: %@", v14, 0xCu);
    sub_221E9CFE8(v15, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v15, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
  }

  v18 = v0[90];

  v19 = v0[1];

  return v19();
}

uint64_t sub_221EB5120(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 960);
  v6 = *v2;
  *(*v2 + 968) = v1;

  if (v1)
  {
    v7 = sub_221EB52EC;
  }

  else
  {
    *(v4 + 976) = a1;
    v7 = sub_221EB5248;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221EB5248()
{
  v1 = *(v0 + 976);
  v2 = *(v0 + 952);
  v3 = *(v0 + 792);
  v4 = *(v0 + 784);
  v5 = *(v0 + 744);

  swift_willThrow();
  v6 = *(v0 + 952);
  v7 = *(v0 + 720);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_221EB52EC()
{
  v1 = *(v0 + 952);
  v2 = *(v0 + 792);
  v3 = *(v0 + 768);
  v4 = *(v0 + 744);

  v5 = *(v0 + 968);
  v6 = *(v0 + 720);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EB5384(uint64_t a1)
{
  v5 = *MEMORY[0x277D85DE8];
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  v3 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221EB5414, 0, 0);
}

uint64_t sub_221EB5414()
{
  v82 = v0;
  v81 = *MEMORY[0x277D85DE8];
  if (qword_281307080 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v1 = *(v0 + 40);
    v2 = sub_221FB61D8();
    v3 = __swift_project_value_buffer(v2, qword_281307DF0);
    *(v0 + 48) = v3;
    sub_221E9DCE8(0xD000000000000095, 0x8000000221FC14C0, 0xD00000000000002BLL, 0x8000000221FC1650);
    v4 = [*(v1 + 208) contacts];
    if (!v4)
    {
      goto LABEL_51;
    }

    v5 = v4;
    v79 = v3;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    v6 = sub_221FB64F8();

    if ((v6 & 0xC000000000000001) == 0)
    {
      break;
    }

    if (!sub_221FB6868())
    {
      goto LABEL_50;
    }

    v8 = MEMORY[0x277D84FA0];
    v80 = MEMORY[0x277D84FA0];
    sub_221FB6828();
    for (i = sub_221FB6898(); i; i = sub_221FB6898())
    {
      *(v0 + 24) = i;
      swift_dynamicCast();
      v10 = *(v0 + 16);
      v11 = [v10 relationshipStorage];
      v12 = [v11 primaryRelationship];

      v13 = [v10 relationshipStorage];
      v14 = [v13 secureCloudRelationship];

      v15 = [v10 relationshipStorage];
      v16 = [v15 legacyRelationship];

      if (![v12 cloudType] && objc_msgSend(v14, sel_isFriendshipActive) && objc_msgSend(v16, sel_isFriendshipActive) && objc_msgSend(v16, sel_secureCloudDowngradeCompleted))
      {
        v17 = [v14 secureCloudDowngradeCompleted];

        if ((v17 & 1) == 0)
        {
          v18 = *(v0 + 16);
          v19 = *(v8 + 16);
          if (*(v8 + 24) <= v19)
          {
            sub_221F161CC(v19 + 1);
            v8 = v80;
          }

          v20 = *(v8 + 40);
          v21 = v18;
          v22 = sub_221FB6748();
          v23 = v8 + 56;
          v24 = -1 << *(v8 + 32);
          v25 = v22 & ~v24;
          v26 = v25 >> 6;
          if (((-1 << v25) & ~*(v8 + 56 + 8 * (v25 >> 6))) != 0)
          {
            v27 = __clz(__rbit64((-1 << v25) & ~*(v8 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v28 = 0;
            v29 = (63 - v24) >> 6;
            do
            {
              if (++v26 == v29 && (v28 & 1) != 0)
              {
                __break(1u);
                goto LABEL_77;
              }

              v30 = v26 == v29;
              if (v26 == v29)
              {
                v26 = 0;
              }

              v28 |= v30;
              v31 = *(v23 + 8 * v26);
            }

            while (v31 == -1);
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          }

          *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
          *(*(v8 + 48) + 8 * v27) = v18;
          ++*(v8 + 16);
          continue;
        }
      }

      else
      {
      }
    }

LABEL_58:
    if ((v8 & 0xC000000000000001) != 0)
    {
      if (!sub_221FB6868())
      {
        goto LABEL_71;
      }
    }

    else if (!*(v8 + 16))
    {
LABEL_71:

      v55 = sub_221FB61B8();
      v56 = sub_221FB65C8();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        v58 = "No secure cloud relationships to fix up for downgrade";
LABEL_53:
        _os_log_impl(&dword_221E93000, v55, v56, v58, v57, 2u);
        MEMORY[0x223DADA80](v57, -1, -1);
      }

      goto LABEL_54;
    }

    v21 = sub_221EB0A90(v8);
    *(v0 + 56) = v21;

    if (v21 >> 62)
    {
LABEL_77:
      v62 = sub_221FB6868();
      if (!v62)
      {
LABEL_78:
        v67 = *(v0 + 40);
        __swift_project_boxed_opaque_existential_0Tm(v67 + 37, v67[40]);
        v68 = v67[25];
        v69 = swift_task_alloc();
        *(v0 + 64) = v69;
        *v69 = v0;
        v69[1] = sub_221EB5E0C;
        v70 = *(v0 + 32);
        v71 = *MEMORY[0x277D85DE8];

        return sub_221EBB94C(v21, v68, v70);
      }
    }

    else
    {
      v62 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v62)
      {
        goto LABEL_78;
      }
    }

    v63 = 0;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v64 = MEMORY[0x223DACD50](v63, v21);
      }

      else
      {
        if (v63 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_74;
        }

        v64 = *(v21 + 8 * v63 + 32);
      }

      v65 = v64;
      v66 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      [v64 insertEventWithType_];

      ++v63;
      if (v66 == v62)
      {
        goto LABEL_78;
      }
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  if (!*(v6 + 16))
  {
    goto LABEL_50;
  }

  v32 = *(v6 + 32);
  v33 = ((1 << v32) + 63) >> 6;
  if ((v32 & 0x3Fu) <= 0xD)
  {
    goto LABEL_31;
  }

  if (!swift_stdlib_isStackAllocationSafe())
  {
    v72 = swift_slowAlloc();
    v8 = sub_221F107FC(v72, v33, v6, sub_221EB60AC);

    MEMORY[0x223DADA80](v72, -1, -1);
    goto LABEL_58;
  }

LABEL_31:
  v73[1] = v73;
  v74 = v33;
  MEMORY[0x28223BE20](v7);
  v75 = v73 - ((v34 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v75, v34);
  v76 = 0;
  v35 = 0;
  v36 = v6 + 56;
  v37 = 1 << *(v6 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v6 + 56);
  v40 = (v37 + 63) >> 6;
  v78 = v6;
  while (1)
  {
    while (1)
    {
      if (!v39)
      {
        v42 = v35;
        while (1)
        {
          v35 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_75;
          }

          if (v35 >= v40)
          {
            break;
          }

          v43 = *(v36 + 8 * v35);
          ++v42;
          if (v43)
          {
            v41 = __clz(__rbit64(v43));
            v39 = (v43 - 1) & v43;
            goto LABEL_42;
          }
        }

        v8 = sub_221F77424(v75, v74, v76, v6);
        goto LABEL_58;
      }

      v41 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
LABEL_42:
      v44 = v41 | (v35 << 6);
      v45 = *(v6 + 48);
      v77 = v44;
      v46 = *(v45 + 8 * v44);
      v47 = [v46 relationshipStorage];
      v48 = [v47 primaryRelationship];

      v49 = [v46 relationshipStorage];
      v50 = [v49 secureCloudRelationship];

      v51 = [v46 relationshipStorage];
      v52 = [v51 legacyRelationship];

      if (![v48 cloudType] && objc_msgSend(v50, sel_isFriendshipActive) && objc_msgSend(v52, sel_isFriendshipActive) && objc_msgSend(v52, sel_secureCloudDowngradeCompleted))
      {
        break;
      }

      v6 = v78;
    }

    v53 = [v50 secureCloudDowngradeCompleted];

    v6 = v78;
    if ((v53 & 1) == 0)
    {
      *&v75[(v77 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v77;
      if (__OFADD__(v76++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_50:

LABEL_51:
  v55 = sub_221FB61B8();
  v56 = sub_221FB65C8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    v58 = "No contacts to fix up downgrade";
    goto LABEL_53;
  }

LABEL_54:

  v59 = *(v0 + 8);
  v60 = *MEMORY[0x277D85DE8];

  return v59();
}

uint64_t sub_221EB5E0C()
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;

  v5 = *(v2 + 56);

  if (v0)
  {
    v6 = *(v4 + 8);
    v7 = *MEMORY[0x277D85DE8];

    return v6();
  }

  else
  {
    v9 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_221EB5FAC, 0, 0);
  }
}

uint64_t sub_221EB5FAC()
{
  v8 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 48);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Fixed up secure cloud relationships for downgrade", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v0 + 8);
  v6 = *MEMORY[0x277D85DE8];

  return v5();
}

uint64_t sub_221EB60AC(id *a1)
{
  v1 = *a1;
  v2 = [*a1 relationshipStorage];
  v3 = [v2 primaryRelationship];

  v4 = [v1 relationshipStorage];
  v5 = [v4 secureCloudRelationship];

  v6 = [v1 relationshipStorage];
  v7 = [v6 legacyRelationship];

  if (![v3 cloudType] && (objc_msgSend(v5, sel_isFriendshipActive) & 1) != 0 && (objc_msgSend(v7, sel_isFriendshipActive) & 1) != 0 && (objc_msgSend(v7, sel_secureCloudDowngradeCompleted) & 1) != 0)
  {
    v8 = [v5 secureCloudDowngradeCompleted];

    v9 = v8 ^ 1;
  }

  else
  {

    v9 = 0;
  }

  return v9;
}

uint64_t sub_221EB6204(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_221EB629C;

  return sub_221EB5384(a1);
}

uint64_t sub_221EB629C()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221EB6820, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[6] = v4;
    *v4 = v3;
    v4[1] = sub_221EB640C;
    v5 = v3[3];
    v6 = v3[2];

    return sub_221EAC55C(v6);
  }
}

uint64_t sub_221EB640C()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  v3[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221EB6A00, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[8] = v4;
    *v4 = v3;
    v4[1] = sub_221EB657C;
    v5 = v3[3];
    v6 = v3[2];

    return sub_221EADBD4(v6);
  }
}

uint64_t sub_221EB657C()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  v3[9] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221EB6BE0, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[10] = v4;
    *v4 = v3;
    v4[1] = sub_221EB66EC;
    v5 = v3[3];
    v6 = v3[2];

    return sub_221EB1074(v6);
  }
}

uint64_t sub_221EB66EC()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221EB6DC0, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_221EB6820()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[5];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to fix up secure cloud relationships: %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_221EB640C;
  v13 = v0[2];
  v14 = v0[3];

  return sub_221EAC55C(v13);
}

uint64_t sub_221EB6A00()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[7];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to request downgrade: %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[8] = v12;
  *v12 = v0;
  v12[1] = sub_221EB657C;
  v13 = v0[2];
  v14 = v0[3];

  return sub_221EADBD4(v13);
}

uint64_t sub_221EB6BE0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle downgrade requests: %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_221EB66EC;
  v13 = v0[2];
  v14 = v0[3];

  return sub_221EB1074(v13);
}

uint64_t sub_221EB6DC0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to handle acknowledged downgrade requests: %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221EB6F64(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EB7024, 0, 0);
}

uint64_t sub_221EB7024()
{
  v26 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000095, 0x8000000221FC14C0, 0xD000000000000016, 0x8000000221FC1680);
  v4 = *(v2 + 208);
  v5 = sub_221FB5BF8();
  v6 = [v4 contactWithUUID_];
  v0[7] = v6;

  if (v6)
  {
    v7 = swift_task_alloc();
    v0[8] = v7;
    *v7 = v0;
    v7[1] = sub_221EB7350;
    v8 = v0[3];

    return sub_221EAD54C(v6, 0);
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

uint64_t sub_221EB7350()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_221EB74D0;
  }

  else
  {
    v3 = sub_221EB7464;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB7464()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EB74D0()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EB753C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_221FB5C38();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EB75FC, 0, 0);
}

uint64_t sub_221EB75FC()
{
  v52 = v0;
  v1 = *(v0 + 152);
  v2 = *(*(v0 + 160) + 208);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  *(v0 + 192) = v4;

  if (!v4)
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v21 = *(v0 + 176);
    v20 = *(v0 + 184);
    v22 = *(v0 + 168);
    v23 = *(v0 + 152);
    v24 = sub_221FB61D8();
    __swift_project_value_buffer(v24, qword_281307DF0);
    (*(v21 + 16))(v20, v23, v22);
    v25 = sub_221FB61B8();
    v26 = sub_221FB65A8();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 176);
    v28 = *(v0 + 184);
    v30 = *(v0 + 168);
    if (v27)
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v51 = v32;
      *v31 = 136315138;
      sub_221EA8278();
      v33 = sub_221FB6B08();
      v35 = v34;
      (*(v29 + 8))(v28, v30);
      v36 = sub_221EF4114(v33, v35, &v51);

      *(v31 + 4) = v36;
      _os_log_impl(&dword_221E93000, v25, v26, "Failed to find contact for friend identifier: %s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x223DADA80](v32, -1, -1);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    else
    {

      (*(v29 + 8))(v28, v30);
    }

    sub_221EA4994();
    swift_allocError();
    *v44 = 21;
    swift_willThrow();
    goto LABEL_19;
  }

  v5 = [v4 relationshipStorage];
  v6 = [v5 legacyRelationship];
  *(v0 + 200) = v6;

  if (![v6 secureCloudDowngradeNeedsAcknowledgement])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v37 = sub_221FB61D8();
    __swift_project_value_buffer(v37, qword_281307DF0);
    v38 = v6;
    v39 = sub_221FB61B8();
    v40 = sub_221FB65A8();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 138412290;
      *(v41 + 4) = v38;
      *v42 = v38;
      v43 = v38;
      _os_log_impl(&dword_221E93000, v39, v40, "Relationship doesn't need acknowledgement: %@", v41, 0xCu);
      sub_221E9CFE8(v42, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v42, -1, -1);
      MEMORY[0x223DADA80](v41, -1, -1);
    }

    else
    {
      v43 = v4;
      v4 = v39;
      v39 = v38;
    }

    v47 = *(v0 + 184);

    v46 = *(v0 + 8);
    goto LABEL_22;
  }

  v7 = *(v0 + 160);
  [v6 insertEventWithType_];
  v8 = __swift_project_boxed_opaque_existential_0Tm(v7 + 37, v7[40]);
  v9 = v7[25];
  v10 = v4;
  if ([v6 cloudType])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = v6;
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v12;
      *v16 = v12;
      v17 = v12;
      _os_log_impl(&dword_221E93000, v13, v14, "Attempting to save secure cloud relationship to legacy container %@", v15, 0xCu);
      sub_221E9CFE8(v16, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v18 = 11;
    swift_willThrow();

    v19 = *(v0 + 200);
LABEL_19:
    v45 = *(v0 + 184);

    v46 = *(v0 + 8);
LABEL_22:

    return v46();
  }

  v49 = *__swift_project_boxed_opaque_existential_0Tm(v8 + 6, v8[9]);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_221EB7CB8;
  v50 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221EF4C50;
  *(v0 + 104) = &block_descriptor_64;
  *(v0 + 112) = v50;
  [v49 saveRelationship:v6 contact:v10 cloudKitGroup:v9 activity:0 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EB7CB8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  if (v2)
  {
    v3 = sub_221EB8008;
  }

  else
  {
    v3 = sub_221EB7DC8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB7DC8()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[18];
  v0[27] = v3;

  v4 = qword_281307080;
  v5 = v3;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = sub_221FB61D8();
  __swift_project_value_buffer(v6, qword_281307DF0);
  v7 = v5;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    *(v10 + 4) = v7;
    *v11 = v7;
    _os_log_impl(&dword_221E93000, v8, v9, "Acknowledged downgrade for relationship: %@", v10, 0xCu);
    sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  else
  {

    v8 = v7;
  }

  v12 = sub_221FB61B8();
  v13 = sub_221FB65A8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_221E93000, v12, v13, "Attempting downgrade", v14, 2u);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  v15 = swift_task_alloc();
  v0[28] = v15;
  *v15 = v0;
  v15[1] = sub_221EB8090;
  v16 = v0[20];

  return sub_221EB1074(0);
}

uint64_t sub_221EB8008()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  swift_willThrow();

  v3 = *(v0 + 200);
  v4 = *(v0 + 208);

  v5 = *(v0 + 184);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221EB8090()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_221EB8218;
  }

  else
  {
    v3 = sub_221EB81A4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EB81A4()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EB8218()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 232);
  v3 = *(v0 + 184);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221EB828C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E96070;

  return sub_221EB1828(a1, v4);
}

uint64_t sub_221EB8328(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E9544C;

  return sub_221EB2548(a1, v5, v4);
}

uint64_t sub_221EB83D0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

id sub_221EB8418@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [*__swift_project_boxed_opaque_existential_0Tm((*(v2 + 16) + 160) *(*(v2 + 16) + 184))];
  *a2 = result;
  return result;
}

void *sub_221EB8490(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a5(v9, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_221EB8554(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9606C;

  return sub_221EAF238(a1, v4);
}

void sub_221EB85F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a4;
  v41 = a2;
  v42 = a1;
  v39 = sub_221FB5C38();
  v5 = *(*(v39 - 8) + 64);
  MEMORY[0x28223BE20](v39);
  v38 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = 0;
  v8 = 0;
  v46 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v37 = (v6 + 8);
  v16 = &off_278497000;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v8 << 6);
    v21 = *(*(v46 + 48) + 8 * v20);
    if ([v21 v16[306]] != 1)
    {
      goto LABEL_4;
    }

    v22 = [v21 relationshipStorage];
    v23 = [v22 secureCloudRelationship];

    LODWORD(v22) = [v23 secureCloudMigrationCompleted];
    if (!v22)
    {
      goto LABEL_4;
    }

    v24 = [v21 relationshipStorage];
    v25 = [v24 legacyRelationship];

    LOBYTE(v24) = [v25 secureCloudDowngradeRequested];
    if ((v24 & 1) == 0)
    {
      v26 = [v21 UUID];
      v27 = v38;
      sub_221FB5C18();

      v28 = sub_221FB5BE8();
      v30 = v29;
      v31 = v27;
      v16 = &off_278497000;
      v32 = (*v37)(v31, v39);
      v36[1] = v36;
      v45[0] = v28;
      v45[1] = v30;
      MEMORY[0x28223BE20](v32);
      v36[-2] = v45;
      v33 = v44;
      LOBYTE(v28) = sub_221F7B864(sub_221EB9CF4, &v36[-4], v40);
      v44 = v33;

      if ((v28 & 1) == 0)
      {
        *(v42 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        if (__OFADD__(v43++, 1))
        {
          __break(1u);
LABEL_19:
          v35 = v46;

          sub_221F77424(v42, v41, v43, v35);
          return;
        }
      }
    }

    else
    {
LABEL_4:
    }
  }

  v18 = v8;
  while (1)
  {
    v8 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_19;
    }

    v19 = *(v10 + 8 * v8);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_221EB8948(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v46 = a1;
  v47[2] = *MEMORY[0x277D85DE8];
  v40 = sub_221FB5C38();
  v6 = *(v40 - 8);
  v7 = v6[8];
  MEMORY[0x28223BE20](v40);
  v39 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = (8 * v10);
  v44 = a2;

  if (v9 > 0xD)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v45 = v3;
    v41 = &v36;
    v42 = v10;
    MEMORY[0x28223BE20](v12);
    v13 = &v36 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v43 = 0;
    v14 = 0;
    v10 = v46 + 56;
    v15 = 1 << *(v46 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v46 + 56);
    v3 = (v15 + 63) >> 6;
    v38 = v6 + 1;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_13:
      v21 = v18 | (v14 << 6);
      v6 = *(*(v46 + 48) + 8 * v21);
      if ([v6 cloudType] != 1)
      {
        goto LABEL_5;
      }

      v22 = [v6 relationshipStorage];
      v11 = [v22 secureCloudRelationship];

      LODWORD(v22) = [v11 secureCloudMigrationCompleted];
      if (!v22)
      {
        goto LABEL_5;
      }

      v23 = [v6 relationshipStorage];
      v11 = [v23 legacyRelationship];

      LOBYTE(v23) = [v11 secureCloudDowngradeRequested];
      if ((v23 & 1) == 0)
      {
        v24 = [v6 UUID];
        v37 = v13;
        v25 = v39;
        sub_221FB5C18();

        v26 = sub_221FB5BE8();
        v11 = v27;
        v28 = (*v38)(v25, v40);
        v47[0] = v26;
        v47[1] = v11;
        MEMORY[0x28223BE20](v28);
        *(&v36 - 2) = v47;
        v29 = v45;
        LOBYTE(v26) = sub_221F7B864(sub_221EB9CF4, (&v36 - 4), v44);
        v45 = v29;

        v13 = v37;
        if ((v26 & 1) == 0)
        {
          *&v37[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          if (__OFADD__(v43++, 1))
          {
            __break(1u);
LABEL_20:
            v31 = sub_221F77424(v13, v42, v43, v46);

            goto LABEL_21;
          }
        }
      }

      else
      {
LABEL_5:
      }
    }

    v19 = v14;
    while (1)
    {
      v14 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v14 >= v3)
      {
        goto LABEL_20;
      }

      v20 = *(v10 + 8 * v14);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v17 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v34 = swift_slowAlloc();
  v35 = v44;

  v31 = sub_221EB8490(v34, v10, v46, v35, sub_221EB85F0);

  MEMORY[0x223DADA80](v34, -1, -1);

LABEL_21:
  v32 = *MEMORY[0x277D85DE8];
  return v31;
}

uint64_t sub_221EB8DE4(uint64_t a1, uint64_t a2)
{
  v48 = sub_221FB5C38();
  v5 = *(v48 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v48);
  v47 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_221EB8948(a1, a2);
  }

  v51 = v2;
  v8 = MEMORY[0x277D84FA0];
  v54 = MEMORY[0x277D84FA0];
  v50 = a2;

  sub_221FB6828();
  v9 = sub_221FB6898();
  if (v9)
  {
    v10 = v9;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    v11 = v10;
    v49 = MEMORY[0x277D84FA0];
    v12 = MEMORY[0x277D84F68];
    v46 = (v5 + 8);
    v13 = &off_278497000;
    v14 = &off_278497000;
    while (1)
    {
      v52[0] = v11;
      swift_dynamicCast();
      v15 = v53;
      if ([v53 v13[306]] == 1)
      {
        v16 = [v15 v14[294]];
        v17 = [v16 secureCloudRelationship];

        LODWORD(v16) = [v17 secureCloudMigrationCompleted];
        if (v16)
        {
          v18 = v13;
          v19 = v12;
          v20 = v14;
          v21 = [v15 v14[294]];
          v22 = [v21 legacyRelationship];

          LOBYTE(v21) = [v22 secureCloudDowngradeRequested];
          if (v21)
          {
            v12 = v19;
            v13 = v18;
          }

          else
          {
            v23 = [v15 UUID];
            v24 = v47;
            sub_221FB5C18();

            v25 = sub_221FB5BE8();
            v27 = v26;
            v28 = (*v46)(v24, v48);
            v52[0] = v25;
            v52[1] = v27;
            MEMORY[0x28223BE20](v28);
            *(&v45 - 2) = v52;
            v29 = v51;
            LOBYTE(v25) = sub_221F7B864(sub_221EB9CF4, (&v45 - 4), v50);
            v51 = v29;

            v14 = v20;
            v12 = v19;
            v13 = v18;
            if ((v25 & 1) == 0)
            {
              v30 = v53;
              v31 = *(v49 + 16);
              if (*(v49 + 24) <= v31)
              {
                sub_221F161CC(v31 + 1);
              }

              v32 = v54;
              v33 = *(v54 + 40);
              result = sub_221FB6748();
              v35 = v32 + 56;
              v36 = -1 << *(v32 + 32);
              v37 = result & ~v36;
              v38 = v37 >> 6;
              if (((-1 << v37) & ~*(v32 + 56 + 8 * (v37 >> 6))) != 0)
              {
                v39 = __clz(__rbit64((-1 << v37) & ~*(v32 + 56 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v40 = 0;
                v41 = (63 - v36) >> 6;
                do
                {
                  if (++v38 == v41 && (v40 & 1) != 0)
                  {
                    __break(1u);
                    return result;
                  }

                  v42 = v38 == v41;
                  if (v38 == v41)
                  {
                    v38 = 0;
                  }

                  v40 |= v42;
                  v43 = *(v35 + 8 * v38);
                }

                while (v43 == -1);
                v39 = __clz(__rbit64(~v43)) + (v38 << 6);
              }

              *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
              *(*(v32 + 48) + 8 * v39) = v30;
              v44 = *(v32 + 16) + 1;
              v49 = v32;
              *(v32 + 16) = v44;
              goto LABEL_10;
            }
          }
        }
      }

LABEL_10:
      v11 = sub_221FB6898();
      if (!v11)
      {
        goto LABEL_27;
      }
    }
  }

  v49 = v8;
LABEL_27:

  return v49;
}

void sub_221EB9244(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v22 = 0;
  v23 = a4;
  v20 = a2;
  v21 = a1;
  v4 = 0;
  v24 = a3;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v25 = *(*(v24 + 48) + 8 * v13);
    MEMORY[0x28223BE20](a1);
    v19[2] = &v25;
    v15 = v14;
    v16 = sub_221F7C788(sub_221EB9D10, v19, v23);

    if ((v16 & 1) == 0)
    {
      *(v21 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        v18 = v24;

        sub_221F77424(v21, v20, v22, v18);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_221EB93EC(uint64_t a1, unint64_t a2)
{
  v2 = a1;
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = v3 & 0x3F;
  v5 = ((1 << v3) + 63) >> 6;
  v6 = 8 * v5;
  v32 = a2;

  if (v4 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = &v27;
    v28 = v5;
    MEMORY[0x28223BE20](v7);
    v29 = &v27 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v6);
    v30 = 0;
    v31 = v2;
    v5 = 0;
    v10 = *(v2 + 56);
    v2 += 56;
    v9 = v10;
    v11 = 1 << *(v2 - 24);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v9;
    v6 = (v11 + 63) >> 6;
    while (v13)
    {
      v14 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_12:
      v17 = v14 | (v5 << 6);
      v33[0] = *(*(v31 + 48) + 8 * v17);
      MEMORY[0x28223BE20](v8);
      *(&v27 - 2) = v33;
      v19 = v18;
      v20 = sub_221F7C788(sub_221EB9D10, (&v27 - 4), v32);

      if ((v20 & 1) == 0)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
LABEL_16:
          v22 = sub_221F77424(v29, v28, v30, v31);
          goto LABEL_17;
        }
      }
    }

    v15 = v5;
    while (1)
    {
      v5 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v5 >= v6)
      {
        goto LABEL_16;
      }

      v16 = *(v2 + 8 * v5);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v13 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = v32;

  v22 = sub_221EB8490(v25, v5, v2, v26, sub_221EB9244);

  MEMORY[0x223DADA80](v25, -1, -1);
LABEL_17:

  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

uint64_t sub_221EB96C0(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_221EB93EC(a1, a2);
  }

  v3 = MEMORY[0x277D84FA0];
  v25 = MEMORY[0x277D84FA0];

  sub_221FB6828();
  v4 = sub_221FB6898();
  if (v4)
  {
    v5 = v4;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    v6 = v5;
    do
    {
      v23 = v6;
      v7 = swift_dynamicCast();
      v23 = v24;
      MEMORY[0x28223BE20](v7);
      v22[2] = &v23;
      v8 = sub_221F7C788(sub_221EB9A2C, v22, a2);
      v9 = v24;
      if (v8)
      {
      }

      else
      {
        v10 = *(v3 + 16);
        if (*(v3 + 24) <= v10)
        {
          sub_221F161CC(v10 + 1);
        }

        v3 = v25;
        v11 = *(v25 + 40);
        result = sub_221FB6748();
        v13 = v3 + 56;
        v14 = -1 << *(v3 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v3 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v16 == v19;
            if (v16 == v19)
            {
              v16 = 0;
            }

            v18 |= v20;
            v21 = *(v13 + 8 * v16);
          }

          while (v21 == -1);
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v3 + 48) + 8 * v17) = v9;
        ++*(v3 + 16);
      }

      v6 = sub_221FB6898();
    }

    while (v6);
  }

  return v3;
}

uint64_t sub_221EB9940(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_221EB994C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EB99BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EB9A48(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  return sub_221FB6758() & 1;
}

uint64_t sub_221EB9AB0(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_221E963B4;

  return sub_221EAD1CC(a1, v5, v4);
}

uint64_t sub_221EB9BC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 416))
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

uint64_t sub_221EB9C10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 408) = 0;
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
      *(result + 416) = 1;
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

    *(result + 416) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221EB9D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221EB9E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 16);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_221E96070;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221EB9FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221EBA11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 32);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E9606C;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221EBA264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v17 = *(a9 + 40);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v9 + 16) = v19;
  *v19 = v9;
  v19[1] = sub_221E9606C;

  return (v21)(a1, a2, a3, a4, a5 & 1, a6, a7, a8, a9);
}

uint64_t sub_221EBA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 48);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9544C;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221EBA50C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 56);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E9606C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221EBA664(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 72);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221EBA78C(uint64_t a1, char a2, void *a3)
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
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v9 = sub_221FB6438();
    v10 = *(*(v5 + 64) + 40);
    *v10 = a2;
    *(v10 + 8) = v9;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221EBA884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[23] = a4;
  v5[24] = v4;
  v5[21] = a2;
  v5[22] = a3;
  v5[20] = a1;
  return MEMORY[0x2822009F8](sub_221EBA8AC, 0, 0);
}

uint64_t sub_221EBA8AC()
{
  v33 = v0;
  v1 = v0[20];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_24:
    v3 = sub_221FB6868();
    v4 = v0[20];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v0[20];
  }

  v5 = 0;
  v6 = v1 & 0xC000000000000001;
  v7 = v4 + 32;
  while (v3 != v5)
  {
    if (v6)
    {
      v8 = MEMORY[0x223DACD50](v5, v0[20]);
    }

    else
    {
      if (v5 >= *(v2 + 16))
      {
        goto LABEL_23;
      }

      v8 = *(v7 + 8 * v5);
    }

    v1 = v8;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v9 = [v8 cloudType];

    ++v5;
    if (v9)
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v18 = v0[20];
      v19 = sub_221FB61D8();
      __swift_project_value_buffer(v19, qword_281307DF0);

      v20 = sub_221FB61B8();
      v21 = sub_221FB65A8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = v0[20];
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v32 = v24;
        *v23 = 136315138;
        v25 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
        v26 = MEMORY[0x223DAC810](v22, v25);
        v28 = sub_221EF4114(v26, v27, &v32);

        *(v23 + 4) = v28;
        _os_log_impl(&dword_221E93000, v20, v21, "Attempting to save secure cloud relationships to legacy container %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x223DADA80](v24, -1, -1);
        MEMORY[0x223DADA80](v23, -1, -1);
      }

      sub_221EA4994();
      swift_allocError();
      *v29 = 11;
      swift_willThrow();
      v30 = v0[1];

      return v30();
    }
  }

  v10 = v0[23];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[20];
  v14 = *__swift_project_boxed_opaque_existential_0Tm((v0[24] + 48), *(v0[24] + 72));
  sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
  v15 = sub_221FB6428();
  v0[25] = v15;
  sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  v16 = sub_221FB6428();
  v0[26] = v16;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221EBACB0;
  v17 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EBA78C;
  v0[13] = &block_descriptor_22;
  v0[14] = v17;
  [v14 saveRelationships:v15 extraRecordsToSave:v16 cloudKitGroup:v11 activity:v10 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EBACB0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_221EBAE30;
  }

  else
  {
    v3 = sub_221EBADC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBADC0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221EBAE30()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[25];
  swift_willThrow();

  v4 = v0[27];
  v5 = v0[1];

  return v5();
}

uint64_t sub_221EBAEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[31] = a4;
  v5[32] = v4;
  v5[29] = a2;
  v5[30] = a3;
  v5[28] = a1;
  return MEMORY[0x2822009F8](sub_221EBAED0, 0, 0);
}

uint64_t sub_221EBAED0()
{
  if ([*(v0 + 224) cloudType] == 1)
  {
    v1 = [*(v0 + 224) secureCloudZoneName];
    if (v1)
    {
      v2 = v1;
      v3 = *(v0 + 224);
      sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
      sub_221FB6318();

      v4 = *MEMORY[0x277CBBF28];
      sub_221FB6318();
      v5 = sub_221FB65D8();
      v6 = [v3 recordWithZoneID:v5 recordEncryptionType:1];
      *(v0 + 264) = v6;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_221FB81B0;
      *(v7 + 32) = v6;
      v8 = v6;
      v9 = MEMORY[0x277D84F90];
      sub_221ED4350(MEMORY[0x277D84F90]);
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
        *v13 = 134217984;
        v14 = v9 >> 62;
        if (v9 >> 62)
        {
          v36 = v13;
          v14 = sub_221FB6868();
          v13 = v36;
        }

        *(v13 + 4) = v14;
        v15 = v12;
        v16 = v13;
        _os_log_impl(&dword_221E93000, v11, v15, "Pushing relationship to iCloud with %ld extra records", v13, 0xCu);
        MEMORY[0x223DADA80](v16, -1, -1);
      }

      v17 = *(v0 + 248);
      v18 = *(v0 + 256);
      v19 = *(v0 + 240);

      v20 = *__swift_project_boxed_opaque_existential_0Tm((v18 + 88), *(v18 + 112));
      *(v0 + 272) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      v21 = sub_221FB6428();
      *(v0 + 280) = v21;

      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v22 = sub_221FB6428();
      *(v0 + 288) = v22;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 208;
      *(v0 + 24) = sub_221EBB40C;
      v23 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_221EBA78C;
      *(v0 + 168) = &block_descriptor_7;
      *(v0 + 176) = v23;
      [v20 saveRecordsIntoPrivateDatabase:v21 recordIDsToDelete:v22 priority:2 activity:v17 useZoneWideSharing:1 group:v19 completion:v0 + 144];
      v1 = (v0 + 16);
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200938](v1);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v24 = *(v0 + 224);
    v25 = sub_221FB61D8();
    __swift_project_value_buffer(v25, qword_281307DF0);
    v26 = v24;
    v27 = sub_221FB61B8();
    v28 = sub_221FB65A8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = *(v0 + 224);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v29;
      *v31 = v29;
      v32 = v29;
      _os_log_impl(&dword_221E93000, v27, v28, "Attempting to save legacy relationship to secure cloud container %@", v30, 0xCu);
      sub_221EA0558(v31);
      MEMORY[0x223DADA80](v31, -1, -1);
      MEMORY[0x223DADA80](v30, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v33 = 11;
    swift_willThrow();
    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_221EBB40C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = sub_221EBB8C4;
  }

  else
  {
    v3 = sub_221EBB51C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBB51C()
{
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v6 = v0[29];
  v0[38] = v0[27];

  v7 = *__swift_project_boxed_opaque_existential_0Tm((v5 + 48), *(v5 + 72));

  sub_221F17A54(v8);

  sub_221EBCC48();
  v9 = sub_221FB64E8();
  v0[39] = v9;

  v0[10] = v0;
  v0[15] = v0 + 26;
  v0[11] = sub_221EBB6C4;
  v10 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB68, &unk_221FB9410);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221EBCB58;
  v0[21] = &block_descriptor_18;
  v0[22] = v10;
  [v7 handleSavedRecords:v9 forContact:v6 completion:v0 + 18];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_221EBB6C4()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 320) = v2;
  if (v2)
  {
    v3 = sub_221EBB848;
  }

  else
  {
    v3 = sub_221EBB7D4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBB7D4()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 216);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221EBB848()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[38];
  swift_willThrow();

  v4 = v0[40];
  v5 = v0[1];

  return v5();
}

uint64_t sub_221EBB8C4()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[35];
  v4 = v0[33];
  swift_willThrow();

  v5 = v0[37];
  v6 = v0[1];

  return v6();
}

uint64_t sub_221EBB94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  return MEMORY[0x2822009F8](sub_221EBB970, 0, 0);
}

uint64_t sub_221EBB970()
{
  v45 = v0;
  v1 = *(v0 + 160);
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  v3 = (v1 >> 62);
  if (v1 >> 62)
  {
LABEL_41:
    v4 = sub_221FB6868();
    v5 = v42[20];
  }

  else
  {
    v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = *(v0 + 160);
  }

  v6 = 0;
  v7 = v1 & 0xC000000000000001;
  v8 = v5 + 32;
  do
  {
    if (v4 == v6)
    {
      if (v3)
      {
        v27 = v42[20];
        if (v1 < 0)
        {
          v28 = v42[20];
        }

        v12 = sub_221FB6868();
      }

      else
      {
        v12 = *(v2 + 16);
      }

      v1 = MEMORY[0x277D84F90];
      if (v12)
      {
        v44 = MEMORY[0x277D84F90];
        v29 = sub_221FB69D8();
        if ((v12 & 0x8000000000000000) == 0)
        {
          sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
          v30 = 0;
          v43 = *MEMORY[0x277CBBF28];
          while (1)
          {
            v31 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              goto LABEL_39;
            }

            if (v7)
            {
              v32 = MEMORY[0x223DACD50](v30, v42[20]);
            }

            else
            {
              if (v30 >= *(v2 + 16))
              {
                goto LABEL_40;
              }

              v32 = *(v8 + 8 * v30);
            }

            v33 = v32;
            v29 = [v32 secureCloudZoneName];
            if (!v29)
            {
              goto LABEL_43;
            }

            v34 = v29;
            sub_221FB6318();

            sub_221FB6318();
            v35 = sub_221FB65D8();
            v3 = [v33 recordWithZoneID:v35 recordEncryptionType:1];

            sub_221FB69B8();
            v1 = v44[2];
            sub_221FB69E8();
            sub_221FB69F8();
            sub_221FB69C8();
            ++v30;
            if (v31 == v12)
            {
              goto LABEL_34;
            }
          }
        }

        __break(1u);
LABEL_43:
        __break(1u);
      }

      else
      {
LABEL_34:
        v36 = v42[22];
        v37 = v42[21];
        v38 = *__swift_project_boxed_opaque_existential_0Tm((v42[23] + 88), *(v42[23] + 112));
        v42[24] = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
        v39 = sub_221FB6428();
        v42[25] = v39;

        sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
        v40 = sub_221FB6428();
        v42[26] = v40;
        v42[2] = v42;
        v42[7] = v42 + 18;
        v42[3] = sub_221EBBF1C;
        v41 = swift_continuation_init();
        v42[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
        v42[10] = MEMORY[0x277D85DD0];
        v42[11] = 1107296256;
        v42[12] = sub_221EBA78C;
        v42[13] = &block_descriptor_27_0;
        v42[14] = v41;
        [v38 saveRecordsIntoPrivateDatabase:v39 recordIDsToDelete:v40 priority:2 activity:v36 useZoneWideSharing:1 group:v37 completion:v42 + 10];
        v29 = v42 + 2;
      }

      return MEMORY[0x282200938](v29);
    }

    if (v7)
    {
      v9 = MEMORY[0x223DACD50](v6, v42[20]);
    }

    else
    {
      if (v6 >= *(v2 + 16))
      {
        goto LABEL_38;
      }

      v9 = *(v8 + 8 * v6);
    }

    v10 = v9;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v11 = [v9 cloudType];

    ++v6;
  }

  while (v11 == 1);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v13 = v42[20];
  v14 = sub_221FB61D8();
  __swift_project_value_buffer(v14, qword_281307DF0);

  v15 = sub_221FB61B8();
  v16 = sub_221FB65A8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = v42[20];
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v44 = v19;
    *v18 = 136315138;
    v20 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v21 = MEMORY[0x223DAC810](v17, v20);
    v23 = sub_221EF4114(v21, v22, &v44);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_221E93000, v15, v16, "Attempting to save legacy relationships to secure cloud container %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x223DADA80](v19, -1, -1);
    MEMORY[0x223DADA80](v18, -1, -1);
  }

  sub_221EA4994();
  swift_allocError();
  *v24 = 11;
  swift_willThrow();
  v25 = v42[1];

  return v25();
}

uint64_t sub_221EBBF1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_221EBAE30;
  }

  else
  {
    v3 = sub_221EBC02C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBC02C()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 192);
  v3 = *(v0 + 152);

  v4 = objc_opt_self();

  sub_221F17A54(v5);

  sub_221EBCC48();
  v6 = sub_221FB64E8();

  v7 = [v4 relationshipsWithRelationshipAndEventRecords_];

  if (v7)
  {
    v8 = *(v0 + 184);
    sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v9 = sub_221FB6438();

    v10 = swift_task_alloc();
    *(v10 + 16) = v8;
    sub_221F41DC4(sub_221EBCCB0, v10, v9);

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);

    v12 = sub_221FB61B8();
    v13 = sub_221FB65C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      if (v3 >> 62)
      {
        v15 = sub_221FB6868();
      }

      else
      {
        v15 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&dword_221E93000, v12, v13, "Pushed secure cloud %ld relationships to iCloud", v14, 0xCu);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    v17 = *(v0 + 8);
  }

  else
  {
    sub_221EA4994();
    swift_allocError();
    *v16 = 13;
    swift_willThrow();

    v17 = *(v0 + 8);
  }

  return v17();
}

void sub_221EBC2E4(void **a1, void **a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = *a2;
  v11 = [v9 UUID];
  if (v11)
  {
    v12 = v11;
    sub_221FB5C18();

    v13 = sub_221FB5BF8();
    (*(v5 + 8))(v8, v4);
    v14 = [v10 contactWithUUID_];

    if (v14)
    {
      v15 = [v14 relationshipStorage];
      -[NSObject updateRelationship:cloudType:](v15, sel_updateRelationship_cloudType_, v9, [v9 cloudType]);
      [v14 setRelationshipStorage_];
      [v10 saveContact_];
    }

    else
    {
      if (qword_281307080 != -1)
      {
        swift_once();
      }

      v16 = sub_221FB61D8();
      __swift_project_value_buffer(v16, qword_281307DF0);
      v17 = v9;
      v15 = sub_221FB61B8();
      v18 = sub_221FB65A8();

      if (os_log_type_enabled(v15, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v19 = 138412290;
        *(v19 + 4) = v17;
        *v20 = v17;
        v21 = v17;
        _os_log_impl(&dword_221E93000, v15, v18, "Failed to find contact for pushed relationship %@", v19, 0xCu);
        sub_221EA0558(v20);
        MEMORY[0x223DADA80](v20, -1, -1);
        MEMORY[0x223DADA80](v19, -1, -1);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_221EBC594(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221EBC5B4, 0, 0);
}

uint64_t sub_221EBC5B4()
{
  v19 = v0;
  v1 = v0[2];
  v2 = objc_opt_self();
  sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  v3 = sub_221FB6428();
  v4 = [v2 migrationAvailableItemsWithRecords_];

  v5 = sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
  v0[4] = v5;
  v6 = sub_221FB6438();
  v0[5] = v6;

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v7 = sub_221FB61D8();
  v0[6] = __swift_project_value_buffer(v7, qword_281307DF0);

  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x223DAC810](v6, v5);
    v14 = sub_221EF4114(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_221E93000, v8, v9, "Storing migration available items %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v15 = *__swift_project_boxed_opaque_existential_0Tm((v0[3] + 8), *(v0[3] + 32));
  v16 = swift_task_alloc();
  v0[7] = v16;
  *v16 = v0;
  v16[1] = sub_221EBC82C;

  return sub_221F26AB8(v6);
}

uint64_t sub_221EBC82C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  v3[8] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221EBC968, 0, 0);
  }

  else
  {
    v4 = v3[5];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_221EBC968()
{
  v23 = v0;
  v1 = v0[8];
  v3 = v0[5];
  v2 = v0[6];

  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[8];
  v9 = v0[5];
  if (v7)
  {
    v10 = v0[4];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v11 = 136315394;
    v14 = MEMORY[0x223DAC810](v9, v10);
    v16 = v15;

    v17 = sub_221EF4114(v14, v16, &v22);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2112;
    v18 = v8;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v19;
    *v12 = v19;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to store migration available item %s, error: %@", v11, 0x16u);
    sub_221EA0558(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_221EBCB58(uint64_t a1, char a2, void *a3, void *a4)
{
  v7 = __swift_project_boxed_opaque_existential_0Tm((a1 + 32), *(a1 + 56));
  v9 = *v7;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
    v10 = swift_allocError();
    *v11 = a3;
    v12 = a3;
    v7 = v9;
    v8 = v10;

    return MEMORY[0x282200958](v7, v8);
  }

  if (!a4)
  {
    __break(1u);
    return MEMORY[0x282200958](v7, v8);
  }

  v13 = *(v9[8] + 40);
  *v13 = a2;
  *(v13 + 8) = a4;
  v14 = a4;

  return swift_continuation_throwingResume();
}

unint64_t sub_221EBCC48()
{
  result = qword_27CFEBD38;
  if (!qword_27CFEBD38)
  {
    sub_221E9D138(255, &qword_281306E60, 0x277CBC5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBD38);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
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
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_221EBCCF0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_221EBCD38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221EBCDC0(uint64_t a1, uint64_t a2)
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

uint64_t sub_221EBCED8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9606C;

  return v9(a1, a2);
}

uint64_t sub_221EBCFF0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221EBD108;

  return v9(a1, a2);
}

uint64_t sub_221EBD108(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t sub_221EBD214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 32);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221EBD33C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 40);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return v11(a1, a2, a3);
}

uint64_t sub_221EBD464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_221EBD594(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_221EBD5B8, 0, 0);
}

uint64_t sub_221EBD5B8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = swift_task_alloc();
  v0[7] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = *(MEMORY[0x277D85A40] + 4);
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD70, &unk_221FB9550);
  *v6 = v0;
  v6[1] = sub_221EBD6D0;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000016, 0x8000000221FC1720, sub_221EBEF84, v4, v7);
}

uint64_t sub_221EBD6D0()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_221EBDA18;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_221EBD7EC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EBD7EC()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 72);
    sub_221EBEF90(v2, *(v0 + 24));
    sub_221EBEE34();
    sub_221EBEE88();
    sub_221EBEEDC();
    sub_221FB5E78();
    if (!v3)
    {
      sub_221EBEFE4(v2, v1);
      v12 = *(v0 + 80);
      goto LABEL_10;
    }

    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v4 = sub_221FB61D8();
    __swift_project_value_buffer(v4, qword_281307DD8);
    v5 = v3;
    v6 = sub_221FB61B8();
    v7 = sub_221FB65A8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_221E93000, v6, v7, "Failed to decode stored account info: %@", v8, 0xCu);
      sub_221EA0558(v9);
      MEMORY[0x223DADA80](v9, -1, -1);
      MEMORY[0x223DADA80](v8, -1, -1);
      sub_221EBEFE4(v2, v1);
    }

    else
    {
      sub_221EBEFE4(v2, v1);
    }
  }

  v12 = 768;
LABEL_10:
  v13 = *(v0 + 8);

  return v13(v12);
}

uint64_t sub_221EBDA18()
{
  v1 = v0[7];

  v2 = v0[1];
  v3 = v0[9];

  return v2();
}

void sub_221EBDA7C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD78, &qword_221FB9560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_221FB62E8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_221EBEFF8;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221EBDCD0;
  aBlock[3] = &block_descriptor_32;
  v12 = _Block_copy(aBlock);

  [a2 dataForKey:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_221EBDC4C(uint64_t a1, unint64_t a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD78, &qword_221FB9560);
    return sub_221FB6498();
  }

  else
  {
    sub_221EBF0C0(a1, a2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD78, &qword_221FB9560);
    return sub_221FB64A8();
  }
}

uint64_t sub_221EBDCD0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_221FB5B18();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_221EBEFE4(v4, v9);
}

void sub_221EBDD7C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD60, &qword_221FB9520);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = aBlock - v7;
  v9 = sub_221FB62E8();
  (*(v5 + 16))(v8, a1, v4);
  v10 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v11 = swift_allocObject();
  (*(v5 + 32))(v11 + v10, v8, v4);
  aBlock[4] = sub_221EBEDE4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_221EBDFE4;
  aBlock[3] = &block_descriptor_8;
  v12 = _Block_copy(aBlock);

  [a2 stringForKey:v9 completion:v12];
  _Block_release(v12);
}

uint64_t sub_221EBDF5C(int a1, int a2, id a3)
{
  if (a3)
  {
    v3 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD60, &qword_221FB9520);
    return sub_221FB6498();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD60, &qword_221FB9520);
    return sub_221FB64A8();
  }
}

uint64_t sub_221EBDFE4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_221FB6318();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v9 = a3;
  v5(v6, v8, a3);
}

uint64_t sub_221EBE07C(__int16 a1, uint64_t a2)
{
  *(v2 + 144) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_221EBE0A0, 0, 0);
}

uint64_t sub_221EBE0A0()
{
  *(v0 + 80) = *(v0 + 176);
  sub_221EBEE34();
  sub_221EBEE88();
  sub_221EBEEDC();
  v1 = sub_221FB5E68();
  v2 = *(v0 + 144);
  v3 = v1;
  v5 = v4;
  v6 = sub_221FB5B08();
  *(v0 + 152) = v6;
  sub_221EBEF30(v3, v5);
  v7 = sub_221FB62E8();
  *(v0 + 160) = v7;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_221EBE288;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221ED41A0;
  *(v0 + 104) = &block_descriptor_23_1;
  *(v0 + 112) = v8;
  [v2 setData:v6 forKey:v7 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EBE288()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_221EBE400;
  }

  else
  {
    v3 = sub_221EBE398;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBE398()
{
  v1 = *(v0 + 152);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EBE400()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  swift_willThrow();

  v4 = v0[21];
  v5 = v0[1];

  return v5();
}

uint64_t sub_221EBE478(__int16 a1, uint64_t a2)
{
  *(v2 + 144) = a2;
  *(v2 + 176) = a1;
  return MEMORY[0x2822009F8](sub_221EBE49C, 0, 0);
}

uint64_t sub_221EBE49C()
{
  *(v0 + 80) = *(v0 + 176);
  sub_221EBEE34();
  sub_221EBEE88();
  sub_221EBEEDC();
  v1 = sub_221FB5E68();
  v2 = *(v0 + 144);
  v3 = v1;
  v5 = v4;
  v6 = sub_221FB5B08();
  *(v0 + 152) = v6;
  sub_221EBEF30(v3, v5);
  v7 = sub_221FB62E8();
  *(v0 + 160) = v7;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_221EBE684;
  v8 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_221ED41A0;
  *(v0 + 104) = &block_descriptor_19_1;
  *(v0 + 112) = v8;
  [v2 setData:v6 forKey:v7 completion:v0 + 80];

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_221EBE684()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 168) = v2;
  if (v2)
  {
    v3 = sub_221EBF0F8;
  }

  else
  {
    v3 = sub_221EBF0FC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBE794(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[19] = a2;
  v3[20] = a3;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_221EBE7B8, 0, 0);
}

uint64_t sub_221EBE7B8()
{
  if (v0[19])
  {
    v1 = v0[18];
    v2 = sub_221FB62E8();
  }

  else
  {
    v2 = 0;
  }

  v0[21] = v2;
  v3 = v0[20];
  v4 = sub_221FB62E8();
  v0[22] = v4;
  v0[2] = v0;
  v0[3] = sub_221EBE924;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD68, &qword_221FB9530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221ED41A0;
  v0[13] = &block_descriptor_15;
  v0[14] = v5;
  [v3 setString:v2 forKey:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EBE924()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_221EBEA9C;
  }

  else
  {
    v3 = sub_221EBEA34;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EBEA34()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EBEA9C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[21];
  swift_willThrow();

  v4 = v0[1];
  v5 = v0[23];

  return v4();
}

uint64_t sub_221EBEB38()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD58, &qword_221FB9518);
  *v4 = v0;
  v4[1] = sub_221EBEC40;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000001CLL, 0x8000000221FC16A0, sub_221EBEDDC, v2, v5);
}

uint64_t sub_221EBEC40()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v7 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v4 = sub_221EBED78;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_221EBED5C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EBED78()
{
  v1 = v0[5];

  v2 = v0[1];
  v3 = v0[7];

  return v2();
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  return sub_221E951A4(a2 + 32, a1 + 32);
}

{
  return sub_221E951A4(a2 + 32, a1 + 32);
}

unint64_t sub_221EBEE34()
{
  result = qword_2813075F0;
  if (!qword_2813075F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813075F0);
  }

  return result;
}

unint64_t sub_221EBEE88()
{
  result = qword_2813075E0;
  if (!qword_2813075E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813075E0);
  }

  return result;
}

unint64_t sub_221EBEEDC()
{
  result = qword_2813075E8;
  if (!qword_2813075E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813075E8);
  }

  return result;
}

uint64_t sub_221EBEF30(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

void sub_221EBEF84(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_221EBDA7C(a1, *(v1 + 16));
}

uint64_t sub_221EBEF90(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_221EBEFE4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_221EBEF30(a1, a2);
  }

  return a1;
}

uint64_t sub_221EBF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a4, a5) - 8);
  v11 = v6 + ((*(v10 + 80) + 16) & ~*(v10 + 80));

  return a6(a1, a2, a3, v11);
}

uint64_t sub_221EBF0C0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_221EBEF90(a1, a2);
  }

  return a1;
}

uint64_t getEnumTagSinglePayload for SecureCloudError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureCloudError(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_221EBF268()
{
  result = qword_27CFEBD80;
  if (!qword_27CFEBD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBD80);
  }

  return result;
}

uint64_t sub_221EBF2BC()
{
  v1 = *v0;
  sub_221FB6C38();
  MEMORY[0x223DAD010](v1);
  return sub_221FB6C58();
}

uint64_t sub_221EBF304()
{
  v1 = *v0;
  sub_221FB6C38();
  MEMORY[0x223DAD010](v1);
  return sub_221FB6C58();
}

uint64_t getEnumTagSinglePayload for RelationshipError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCB)
  {
    goto LABEL_17;
  }

  if (a2 + 53 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 53) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 53;
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

      return (*a1 | (v4 << 8)) - 53;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 53;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x36;
  v8 = v6 - 54;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RelationshipError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 53 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 53) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCB)
  {
    v4 = 0;
  }

  if (a2 > 0xCA)
  {
    v5 = ((a2 - 203) >> 8) + 1;
    *result = a2 + 53;
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
    *result = a2 + 53;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_221EBF4C8()
{
  v1 = *v0;
  sub_221FB6C38();
  MEMORY[0x223DAD010](qword_221FB97A8[v1]);
  return sub_221FB6C58();
}

uint64_t sub_221EBF550()
{
  v1 = *v0;
  sub_221FB6C38();
  MEMORY[0x223DAD010](qword_221FB97A8[v1]);
  return sub_221FB6C58();
}

uint64_t sub_221EBF59C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221EBF6E4(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_221EBF5E4()
{
  result = qword_27CFEBD88;
  if (!qword_27CFEBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBD88);
  }

  return result;
}

uint64_t sub_221EBF638(uint64_t a1, uint64_t a2)
{
  v4 = sub_221EBF690();
  v5 = sub_221E9D61C();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

unint64_t sub_221EBF690()
{
  result = qword_281307A20;
  if (!qword_281307A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307A20);
  }

  return result;
}

uint64_t sub_221EBF6E4(uint64_t a1)
{
  if ((a1 - 1) > 0x36)
  {
    return 54;
  }

  else
  {
    return byte_221FB9958[a1 - 1];
  }
}

uint64_t sub_221EBF758(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 48);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221EBF870(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 56);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221EBF988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 64);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221EBFAB0(void *a1)
{
  v2 = [a1 context];
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3 && (v4 = v3, [v3 contextType] == 1))
  {
    v5 = [v4 dictionary];
    v6 = sub_221FB6288();

    v7 = sub_221EBFD38(v6);
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    swift_unknownObjectRelease();
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = a1;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65A8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315138;
      [objc_msgSend(v10 context)];
      swift_unknownObjectRelease();
      type metadata accessor for IDSInvitationContextType(0);
      v15 = sub_221FB6328();
      v17 = sub_221EF4114(v15, v16, &v19);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_221E93000, v11, v12, "Received invalid invitation context type %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x223DADA80](v14, -1, -1);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    sub_221EC459C();
    swift_allocError();
    *v18 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_221EBFD38(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD98, &qword_221FB9A70);
    v2 = sub_221FB6AB8();
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
    v16 = *v14;
    v15 = v14[1];
    sub_221E951A4(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_221EC45F0(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_221EC45F0(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_221EC45F0(v32, v33);
    v17 = *(v2 + 40);
    result = sub_221FB68E8();
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
    result = sub_221EC45F0(v33, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_221EC0000(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 72) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EC00A4, 0, 0);
}

uint64_t sub_221EC00A4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000083, 0x8000000221FC1760, 0xD000000000000027, 0x8000000221FC17F0);
  v0[6] = *(v1 + 88);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_221EC01BC;

  return sub_221F7E048();
}

uint64_t sub_221EC01BC()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 56);
  v4 = *(*v0 + 72);
  v5 = *v0;

  v6 = swift_task_alloc();
  v2[8] = v6;
  *v6 = v5;
  v6[1] = sub_221EC0338;
  v7 = v1[4];
  v8 = v1[3];
  v9 = v1[2];

  return sub_221EC0534(v9, v4 & 1, v8);
}

uint64_t sub_221EC0338()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC0434, 0, 0);
}

uint64_t sub_221EC0434()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v2;

  sub_221FA7A78(0, 0, v1, &unk_221FB9A50, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_221EC0534(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 144) = a2;
  *(v4 + 16) = a1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD90, &qword_221FB9A58) - 8) + 64) + 15;
  *(v4 + 40) = swift_task_alloc();
  v6 = sub_221FB5D68();
  *(v4 + 48) = v6;
  v7 = *(v6 - 8);
  *(v4 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v4 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EC0634, 0, 0);
}

uint64_t sub_221EC0634()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000083, 0x8000000221FC1760, 0xD00000000000001DLL, 0x8000000221FC1820);
  type metadata accessor for RuntimeTransaction();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  swift_defaultActor_initialize();
  v2[15] = 0x8000000221FC1840;
  v2[16] = 0;
  v2[14] = 0xD00000000000002ELL;

  return MEMORY[0x2822009F8](sub_221EC0758, v2, 0);
}

uint64_t sub_221EC0758()
{
  v1 = *(v0 + 72);
  v2 = v1[14];
  v3 = v1[15];
  sub_221FB6338();
  v4 = os_transaction_create();

  v5 = v1[16];
  v1[16] = v4;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_221EC07F0, 0, 0);
}

uint64_t sub_221EC07F0()
{
  v1 = *(v0 + 144);
  v2 = *__swift_project_boxed_opaque_existential_0Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  v3 = swift_task_alloc();
  *(v0 + 80) = v3;
  *v3 = v0;
  v3[1] = sub_221EC08A4;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_221F6F0EC(v5, v1 & 1, v4);
}

uint64_t sub_221EC08A4()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC09A0, 0, 0);
}

uint64_t sub_221EC09A0()
{
  v1 = *(v0 + 144);
  v2 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 32) + 40), *(*(v0 + 32) + 64));
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_221EC0A58;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  return sub_221F6F0EC(v5, v1 & 1, v4);
}

uint64_t sub_221EC0A58()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC0B54, 0, 0);
}

uint64_t sub_221EC0B54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = sub_221EBFAB0(v2);
  v4 = *(v0 + 64);
  sub_221EF8EAC(v3);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  v7 = *(*(v0 + 32) + 80);
  v8 = sub_221FB5D58();
  v9 = sub_221FB5D38();
  v11 = v10;
  *(v0 + 96) = v9;
  *(v0 + 104) = v10;
  *v6 = v2;
  v12 = *MEMORY[0x277CE9388];
  v13 = sub_221FB5D78();
  v14 = *(v13 - 8);
  (*(v14 + 104))(v6, v12, v13);
  (*(v14 + 56))(v6, 0, 1, v13);
  v15 = *(MEMORY[0x277CE9400] + 4);
  v20 = (*MEMORY[0x277CE9400] + MEMORY[0x277CE9400]);
  v16 = v2;
  v17 = swift_task_alloc();
  *(v0 + 112) = v17;
  *v17 = v0;
  v17[1] = sub_221EC0D90;
  v18 = *(v0 + 40);

  return v20(v8, v9, v11, v18);
}

uint64_t sub_221EC0D90()
{
  v2 = *v1;
  v3 = (*v1)[14];
  v4 = *v1;
  (*v1)[15] = v0;

  v5 = v2[13];
  v6 = v2[12];
  sub_221E9CFE8(v2[5], &qword_27CFEBD90, &qword_221FB9A58);
  sub_221EBEF30(v6, v5);
  if (v0)
  {
    v7 = sub_221EC11E8;
  }

  else
  {
    v7 = sub_221EC0F10;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221EC0F10()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_221EC0FA0, v4, 0);
}

uint64_t sub_221EC0FA0()
{
  v1 = *(v0 + 72);
  v2 = *(v1 + 128);
  *(v1 + 128) = 0;
  swift_unknownObjectRelease();

  return MEMORY[0x2822009F8](sub_221EC1010, 0, 0);
}

uint64_t sub_221EC1010()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[5];

  v4 = v0[1];

  return v4();
}

uint64_t sub_221EC1084()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC1180, 0, 0);
}

uint64_t sub_221EC1180()
{
  v1 = *(v0 + 72);

  return MEMORY[0x2822009F8](sub_221EC0FA0, v1, 0);
}

uint64_t sub_221EC11E8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 120);
  *(v0 + 128) = v4;
  v5 = *(v0 + 144);
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_221EC1084;
  v7 = *(v0 + 24);
  v8 = *(v0 + 32);
  v9 = *(v0 + 16);

  return sub_221EC12C0(v4, v9, v5 & 1, v7);
}

uint64_t sub_221EC12C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 200) = a3;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  v6 = type metadata accessor for IDSErrorAction(0);
  *(v5 + 104) = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  *(v5 + 112) = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC0F0, &qword_221FBA2A0) - 8) + 64) + 15;
  *(v5 + 120) = swift_task_alloc();
  v9 = type metadata accessor for IDSError(0);
  *(v5 + 128) = v9;
  v10 = *(v9 - 8);
  *(v5 + 136) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 144) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EC13F0, 0, 0);
}

uint64_t sub_221EC13F0()
{
  v70 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = sub_221FB61D8();
  *(v0 + 152) = __swift_project_value_buffer(v3, qword_281307DF0);
  v4 = v1;
  v5 = v2;
  v6 = sub_221FB61B8();
  v7 = sub_221FB65A8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 200);
    v9 = *(v0 + 80);
    v67 = *(v0 + 88);
    v68 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v69 = v12;
    *v10 = 136315394;
    *(v0 + 40) = v9;
    *(v0 + 48) = v8 & 1;
    *(v0 + 56) = v67;
    v13 = v4;
    v14 = sub_221FB6328();
    v16 = sub_221EF4114(v14, v15, &v69);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2112;
    v17 = v68;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v18;
    *v11 = v18;
    _os_log_impl(&dword_221E93000, v6, v7, "Error handling invitation, attempting to queue: %s, error: %@", v10, 0x16u);
    sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v19 = *(v0 + 128);
  v20 = *(v0 + 136);
  v21 = *(v0 + 120);
  v22 = *(v0 + 72);
  *(v0 + 64) = v22;
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  v24 = swift_dynamicCast();
  v25 = *(v20 + 56);
  if (!v24)
  {
    v42 = *(v0 + 120);
    v43 = *(v0 + 72);
    v25(v42, 1, 1, *(v0 + 128));
    sub_221E9CFE8(v42, &unk_27CFEC0F0, &qword_221FBA2A0);
    v44 = v43;
    v45 = sub_221FB61B8();
    v46 = sub_221FB65A8();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = *(v0 + 72);
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      v50 = v47;
      v51 = _swift_stdlib_bridgeErrorToNSError();
      *(v48 + 4) = v51;
      *v49 = v51;
      _os_log_impl(&dword_221E93000, v45, v46, "Received invalid error type %@", v48, 0xCu);
      sub_221E9CFE8(v49, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v49, -1, -1);
      MEMORY[0x223DADA80](v48, -1, -1);
    }

    goto LABEL_13;
  }

  v26 = *(v0 + 144);
  v27 = *(v0 + 120);
  v29 = *(v0 + 104);
  v28 = *(v0 + 112);
  v25(v27, 0, 1, *(v0 + 128));
  sub_221EC4474(v27, v26);
  sub_221EC44D8(v26, v28);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v31 = *(v0 + 112);
  if (EnumCaseMultiPayload)
  {
    v32 = *(v0 + 72);
    sub_221EC453C(v31, type metadata accessor for IDSErrorAction);
    v33 = v32;
    v34 = sub_221FB61B8();
    v35 = sub_221FB65A8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 72);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v36;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_221E93000, v34, v35, "Received error without queuing %@", v37, 0xCu);
      sub_221E9CFE8(v38, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v38, -1, -1);
      MEMORY[0x223DADA80](v37, -1, -1);
    }

    v41 = *(v0 + 144);

    sub_221EC453C(v41, type metadata accessor for IDSError);
LABEL_13:
    v52 = *(v0 + 144);
    v53 = *(v0 + 112);
    v54 = *(v0 + 120);

    v55 = *(v0 + 8);

    return v55();
  }

  if (*v31)
  {
    v57 = *(v0 + 200);
    v58 = swift_task_alloc();
    *(v0 + 184) = v58;
    *v58 = v0;
    v58[1] = sub_221EC1EBC;
    v59 = *(v0 + 144);
    v60 = *(v0 + 88);
    v61 = *(v0 + 96);
    v62 = *(v0 + 80);

    return sub_221EC2164(v59, v62, v57 & 1, v60);
  }

  else
  {
    v63 = *(v0 + 200);
    *(v0 + 160) = *__swift_project_boxed_opaque_existential_0Tm(*(v0 + 96), *(*(v0 + 96) + 24));
    v64 = swift_task_alloc();
    *(v0 + 168) = v64;
    *v64 = v0;
    v64[1] = sub_221EC1A38;
    v66 = *(v0 + 80);
    v65 = *(v0 + 88);

    return sub_221F6F0EC(v66, v63 & 1, v65);
  }
}

uint64_t sub_221EC1A38()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EC1B48, v2, 0);
}

uint64_t sub_221EC1B48()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 136) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_221EF35F0(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 136) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_221EF35F0((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 160);
  v7 = *(v0 + 200);
  v9 = *(v0 + 80);
  v8 = *(v0 + 88);
  *(v2 + 2) = v5 + 1;
  v10 = &v2[24 * v5];
  *(v10 + 4) = v9;
  v10[40] = v7 & 1;
  *(v10 + 6) = v8;
  *(v1 + 136) = v2;
  swift_endAccess();
  v11 = v9;
  sub_221F6ED30();
  *(v0 + 176) = 0;

  return MEMORY[0x2822009F8](sub_221EC1C98, 0, 0);
}

uint64_t sub_221EC1C98()
{
  sub_221EC453C(v0[18], type metadata accessor for IDSError);
  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];

  v4 = v0[1];

  return v4();
}

uint64_t sub_221EC1D28()
{
  v1 = v0[22];
  v2 = v0[19];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to store invitation for retry: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  else
  {
  }

  sub_221EC453C(v0[18], type metadata accessor for IDSError);
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[15];

  v13 = v0[1];

  return v13();
}

uint64_t sub_221EC1EBC()
{
  v2 = *(*v1 + 184);
  v5 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = sub_221EC1FD0;
  }

  else
  {
    v3 = sub_221EC4730;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EC1FD0()
{
  v1 = v0[24];
  v2 = v0[19];
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65A8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_221E93000, v4, v5, "Failed to store invitation for retry: %@", v6, 0xCu);
    sub_221E9CFE8(v7, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v7, -1, -1);
    MEMORY[0x223DADA80](v6, -1, -1);
  }

  else
  {
  }

  sub_221EC453C(v0[18], type metadata accessor for IDSError);
  v10 = v0[18];
  v11 = v0[14];
  v12 = v0[15];

  v13 = v0[1];

  return v13();
}

uint64_t sub_221EC2164(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v5 + 96) = a4;
  *(v5 + 104) = v4;
  *(v5 + 136) = a3;
  *(v5 + 80) = a1;
  *(v5 + 88) = a2;
  return MEMORY[0x2822009F8](sub_221EC218C, 0, 0);
}

uint64_t sub_221EC218C()
{
  v31 = v0;
  if (*(v0 + 96))
  {
    goto LABEL_11;
  }

  v1 = *(v0 + 80);
  v2 = *(v1 + *(type metadata accessor for IDSError(0) + 20));
  *(v0 + 64) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
  type metadata accessor for CKError(0);
  if (!swift_dynamicCast())
  {
    goto LABEL_11;
  }

  v4 = *(v0 + 72);
  sub_221EC4754(14, v4);
  v6 = v5;

  if (v6)
  {
    v7 = qword_281307080;
    v8 = *(v0 + 88);
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    __swift_project_value_buffer(v9, qword_281307DF0);
    v10 = v8;
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = *(v0 + 136);
      v14 = *(v0 + 88);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v30 = v16;
      *v15 = 136315138;
      *(v0 + 40) = v14;
      *(v0 + 48) = v13 & 1;
      *(v0 + 56) = 1;
      v17 = v10;
      v18 = sub_221FB6328();
      v20 = sub_221EF4114(v18, v19, &v30);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_221E93000, v11, v12, "Retrying message immediately %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x223DADA80](v16, -1, -1);
      MEMORY[0x223DADA80](v15, -1, -1);
    }

    v21 = *(v0 + 136);
    v22 = swift_task_alloc();
    *(v0 + 112) = v22;
    *v22 = v0;
    v22[1] = sub_221EC24AC;
    v23 = *(v0 + 104);
    v24 = *(v0 + 88);

    return sub_221EC0534(v24, v21 & 1, 1);
  }

  else
  {
LABEL_11:
    v26 = *(v0 + 136);
    *(v0 + 120) = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 104) + 40), *(*(v0 + 104) + 64));
    v27 = swift_task_alloc();
    *(v0 + 128) = v27;
    *v27 = v0;
    v27[1] = sub_221EC260C;
    v29 = *(v0 + 88);
    v28 = *(v0 + 96);

    return sub_221F6F0EC(v29, v26 & 1, v28);
  }
}

uint64_t sub_221EC24AC()
{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC25A8, 0, 0);
}

uint64_t sub_221EC25A8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EC260C()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EC271C, v2, 0);
}

uint64_t sub_221EC271C()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 136);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 136) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_221EF35F0(0, *(v2 + 2) + 1, 1, v2);
    *(v1 + 136) = v2;
  }

  v5 = *(v2 + 2);
  v4 = *(v2 + 3);
  if (v5 >= v4 >> 1)
  {
    v2 = sub_221EF35F0((v4 > 1), v5 + 1, 1, v2);
  }

  v6 = *(v0 + 120);
  v7 = *(v0 + 136);
  v9 = *(v0 + 88);
  v8 = *(v0 + 96);
  *(v2 + 2) = v5 + 1;
  v10 = &v2[24 * v5];
  *(v10 + 4) = v9;
  v10[40] = v7 & 1;
  *(v10 + 6) = v8;
  *(v1 + 136) = v2;
  swift_endAccess();
  v11 = v9;
  sub_221F6ED30();
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221EC285C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221EC287C, 0, 0);
}

uint64_t sub_221EC287C()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_221E93000, v4, v5, "Received incoming invitation %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = sub_221EC2A50;
  v13 = *(v0 + 24);

  return sub_221EC0000(v7, 1, 0);
}

uint64_t sub_221EC2A50()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC2B4C, 0, 0);
}

uint64_t sub_221EC2B4C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EC2BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221EC2BCC, 0, 0);
}

uint64_t sub_221EC2BCC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_221E93000, v4, v5, "Friend cancelled received invitation %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = sub_221EC2DA0;
  v13 = *(v0 + 24);

  return sub_221EC0000(v7, 1, 0);
}

uint64_t sub_221EC2DA0()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC4750, 0, 0);
}

uint64_t sub_221EC2E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221EC2EBC, 0, 0);
}

uint64_t sub_221EC2EBC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_221E93000, v4, v5, "Friend accepted invitation %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = sub_221EC2DA0;
  v13 = *(v0 + 24);

  return sub_221EC0000(v7, 0, 0);
}

uint64_t sub_221EC3090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221EC30B0, 0, 0);
}

uint64_t sub_221EC30B0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 16);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    v10 = v7;
    _os_log_impl(&dword_221E93000, v4, v5, "Friend declined invitation %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  v11 = *(v0 + 16);
  v12 = swift_task_alloc();
  *(v0 + 32) = v12;
  *v12 = v0;
  v12[1] = sub_221EC2DA0;
  v13 = *(v0 + 24);

  return sub_221EC0000(v7, 0, 0);
}

uint64_t sub_221EC3284(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  *(v2 + 56) = *(a1 + 8);
  *(v2 + 32) = a1[2];
  return MEMORY[0x2822009F8](sub_221EC32B8, 0, 0);
}

uint64_t sub_221EC32B8()
{
  v2 = *(v1 + 32);
  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = qword_281307080;
  v0 = *(v1 + 24);
  if (v3 <= 9)
  {
    if (v4 == -1)
    {
LABEL_4:
      v5 = sub_221FB61D8();
      __swift_project_value_buffer(v5, qword_281307DF0);
      v6 = v0;
      v7 = sub_221FB61B8();
      v8 = sub_221FB65C8();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = *(v1 + 24);
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        *v10 = 138412290;
        *(v10 + 4) = v6;
        *v11 = v9;
        v12 = v6;
        _os_log_impl(&dword_221E93000, v7, v8, "Retrying message for invitation %@", v10, 0xCu);
        sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
        MEMORY[0x223DADA80](v11, -1, -1);
        MEMORY[0x223DADA80](v10, -1, -1);
      }

      v13 = *(v1 + 56);

      v14 = swift_task_alloc();
      *(v1 + 40) = v14;
      *v14 = v1;
      v14[1] = sub_221EC3648;
      v16 = *(v1 + 16);
      v15 = *(v1 + 24);

      return sub_221EC0000(v15, v13, v3);
    }

LABEL_17:
    swift_once();
    goto LABEL_4;
  }

  if (v4 != -1)
  {
    swift_once();
  }

  v18 = sub_221FB61D8();
  __swift_project_value_buffer(v18, qword_281307DF0);
  v19 = v0;
  v20 = sub_221FB61B8();
  v21 = sub_221FB65C8();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = *(v1 + 24);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v19;
    *v24 = v22;
    v25 = v19;
    _os_log_impl(&dword_221E93000, v20, v21, "Invitation has reached the max retry count %@", v23, 0xCu);
    sub_221E9CFE8(v24, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v24, -1, -1);
    MEMORY[0x223DADA80](v23, -1, -1);
  }

  v26 = *(v1 + 56);
  v27 = *(v1 + 16);

  v28 = *__swift_project_boxed_opaque_existential_0Tm((v27 + 40), *(v27 + 64));
  v29 = swift_task_alloc();
  *(v1 + 48) = v29;
  *v29 = v1;
  v29[1] = sub_221EC37A8;
  v31 = *(v1 + 24);
  v30 = *(v1 + 32);

  return sub_221F6F0EC(v31, v26, v30);
}

uint64_t sub_221EC3648()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC3744, 0, 0);
}

uint64_t sub_221EC3744()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_221EC37A8()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC472C, 0, 0);
}

uint64_t sub_221EC38A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 16) = a2;
  *(v2 + 24) = v3;
  *(v2 + 48) = *(a1 + 8);
  *(v2 + 32) = a1[2];
  return MEMORY[0x2822009F8](sub_221EC38D8, 0, 0);
}

uint64_t sub_221EC38D8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v3;
    *v8 = v6;
    v9 = v3;
    _os_log_impl(&dword_221E93000, v4, v5, "Processing persisted message for invitation %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = *(v0 + 48);

  v11 = swift_task_alloc();
  *(v0 + 40) = v11;
  *v11 = v0;
  v11[1] = sub_221EC3AA4;
  v13 = *(v0 + 24);
  v12 = *(v0 + 32);
  v14 = *(v0 + 16);

  return sub_221EC0000(v13, v10, v12);
}

uint64_t sub_221EC3AA4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_221EC3B9C(uint64_t a1)
{
  *(v2 + 112) = a1;
  *(v2 + 120) = v1;
  return MEMORY[0x2822009F8](sub_221EC3BBC, 0, 0);
}

uint64_t sub_221EC3BBC()
{
  v1 = *(v0 + 112);
  v2 = __swift_project_boxed_opaque_existential_0Tm(*(v0 + 120), *(*(v0 + 120) + 24));
  v3 = *v2;
  *(v0 + 128) = *v2;
  v4 = v1;

  return MEMORY[0x2822009F8](sub_221EC3C40, v3, 0);
}

uint64_t sub_221EC3C40()
{
  v1 = *(v0 + 128);
  swift_beginAccess();
  *(v0 + 136) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_221EC3CC8, 0, 0);
}

uint64_t sub_221EC3CC8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 120);
  *(v0 + 40) = *(v0 + 112);
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 40;
  *(v0 + 184) = sub_221F7B7A4(sub_221EC4600, v3, v1) & 1;
  *(v0 + 144) = 0;

  v4 = __swift_project_boxed_opaque_existential_0Tm((v2 + 40), *(v2 + 64));
  v5 = *v4;
  *(v0 + 152) = *v4;

  return MEMORY[0x2822009F8](sub_221EC3DB4, v5, 0);
}

uint64_t sub_221EC3DB4()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  *(v0 + 160) = *(v1 + 136);

  return MEMORY[0x2822009F8](sub_221EC3E3C, 0, 0);
}

uint64_t sub_221EC3E3C()
{
  *(v0 + 88) = *(v0 + 112);
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  *(v0 + 96) = 1;
  *(v0 + 104) = 0;
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 88;
  v4 = sub_221F7B7A4(sub_221EC4734, v3, v1);

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 184);
    v9 = swift_slowAlloc();
    *v9 = 67109376;
    *(v9 + 4) = v8;
    *(v9 + 8) = 1024;
    *(v9 + 10) = v4 & 1;
    _os_log_impl(&dword_221E93000, v6, v7, "Removing queued invitation (persist: %{BOOL}d, retry: %{BOOL}d)", v9, 0xEu);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  v11 = *(v0 + 112);
  v10 = *(v0 + 120);

  v12 = *__swift_project_boxed_opaque_existential_0Tm(v10, v10[3]);
  v13 = swift_task_alloc();
  *(v0 + 168) = v13;
  *v13 = v0;
  v13[1] = sub_221EC4030;

  return sub_221F6F0EC(v11, 1, 0);
}

uint64_t sub_221EC4030()
{
  v1 = *(*v0 + 168);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC412C, 0, 0);
}

uint64_t sub_221EC412C()
{
  v1 = v0[14];
  v2 = *__swift_project_boxed_opaque_existential_0Tm((v0[15] + 40), *(v0[15] + 64));
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_221EC41E0;

  return sub_221F6F0EC(v1, 1, 0);
}

uint64_t sub_221EC41E0()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EC42DC, 0, 0);
}

uint64_t sub_221EC42DC()
{
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_221EC4344(uint64_t a1)
{
  result = sub_221EC436C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_221EC436C()
{
  result = qword_281307A10;
  if (!qword_281307A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281307A10);
  }

  return result;
}

uint64_t sub_221EC43C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return sub_221F7E4EC(a1, v4, v5, v6);
}

uint64_t sub_221EC4474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EC44D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSErrorAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EC453C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_221EC459C()
{
  result = qword_27CFEC5B0;
  if (!qword_27CFEC5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC5B0);
  }

  return result;
}

_OWORD *sub_221EC45F0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_221EC461C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 8);
  return sub_221F9A2EC(*a1, *(a1 + 8), *v2) & 1;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_221EC467C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
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

uint64_t sub_221EC46C4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

void sub_221EC4754(uint64_t a1, uint64_t a2)
{
  v23[0] = a2;
  type metadata accessor for CKError(0);
  sub_221EC49F0();
  sub_221FB5A58();
  if (v21[0] != 2)
  {
    v23[0] = a2;
    sub_221FB5A58();
    return;
  }

  v21[0] = a2;
  v4 = sub_221FB5A78();
  v5 = *MEMORY[0x277CBBFB0];
  v6 = sub_221FB6318();
  if (!*(v4 + 16))
  {

    goto LABEL_10;
  }

  v8 = sub_221ED4B5C(v6, v7);
  v10 = v9;

  if ((v10 & 1) == 0)
  {
LABEL_10:

    return;
  }

  sub_221E951A4(*(v4 + 56) + 32 * v8, v23);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBDA0, &qword_221FB9AF8);
  if (swift_dynamicCast())
  {
    v11 = v22;
    v12 = v22 + 64;
    v13 = 1 << *(v22 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v22 + 64);
    v16 = (v13 + 63) >> 6;

    v17 = 0;
    while (v15)
    {
LABEL_18:
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      sub_221E951A4(*(v11 + 56) + ((v17 << 11) | (32 * v19)), v23);
      sub_221E951A4(v23, v21);
      if (swift_dynamicCast())
      {
        v20 = v22;
        v21[0] = v22;
        sub_221FB5A58();
        __swift_destroy_boxed_opaque_existential_0(v23);

        if (v22 == a1)
        {
LABEL_20:

          return;
        }
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(v23);
      }
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v18 >= v16)
      {
        goto LABEL_20;
      }

      v15 = *(v12 + 8 * v18);
      ++v17;
      if (v15)
      {
        v17 = v18;
        goto LABEL_18;
      }
    }

    __break(1u);
  }
}

unint64_t sub_221EC49F0()
{
  result = qword_27CFEBA20;
  if (!qword_27CFEBA20)
  {
    type metadata accessor for CKError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEBA20);
  }

  return result;
}

void sub_221EC4A48(uint64_t *a1, uint64_t a2)
{
  sub_221EC52E4(a2, v34);
  type metadata accessor for CKError(0);
  if (swift_dynamicCast())
  {
    v4 = *&v29[0];
    sub_221EC5354(v34);
    sub_221EC52E4(a2, v34);
    v5 = sub_221FB68C8();
    sub_221EC5354(v34);
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      __swift_destroy_boxed_opaque_existential_0(v35);
      v8 = [v7 zoneID];
      v9 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *a1;
      sub_221F78180(*&v29[0], v8, isUniquelyReferenced_nonNull_native);

LABEL_11:
      *a1 = v34[0];
      return;
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
    sub_221EC52E4(a2, v34);
    v15 = sub_221FB68C8();
    sub_221EC5354(v34);
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      __swift_destroy_boxed_opaque_existential_0(v35);
      v18 = *a1;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      v34[0] = *a1;
      sub_221F78180(*&v29[0], v17, v19);

      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_0(v35);
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v20 = sub_221FB61D8();
    __swift_project_value_buffer(v20, qword_281307DF0);
    sub_221EC52E4(a2, v34);
    v21 = sub_221FB61B8();
    v22 = sub_221FB65C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36 = v24;
      *v23 = 136315138;
      sub_221EC52E4(v34, v29);
      v32[0] = v29[0];
      v32[1] = v29[1];
      v33 = v30;
      __swift_destroy_boxed_opaque_existential_0(v31);
      v25 = sub_221FB68D8();
      v27 = v26;
      sub_221EC5354(v32);
      sub_221EC527C(v34);
      v28 = sub_221EF4114(v25, v27, &v36);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_221E93000, v21, v22, "Unexpected item identifier type %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x223DADA80](v24, -1, -1);
      MEMORY[0x223DADA80](v23, -1, -1);
    }

    else
    {

      sub_221EC527C(v34);
    }
  }

  else
  {
    sub_221EC5354(v34);
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v11 = sub_221FB61D8();
    __swift_project_value_buffer(v11, qword_281307DF0);
    v12 = sub_221FB61B8();
    v13 = sub_221FB65C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_221E93000, v12, v13, "Partial CloudKit error contain non-CKError", v14, 2u);
      MEMORY[0x223DADA80](v14, -1, -1);
    }
  }
}

uint64_t sub_221EC4E48(uint64_t a1)
{
  v35[0] = a1;
  type metadata accessor for CKError(0);
  sub_221EC49F0();
  sub_221FB5A58();
  result = MEMORY[0x277D84F90];
  if (v38 != 2)
  {
    return result;
  }

  v33 = MEMORY[0x277D84F90];
  v38 = a1;
  v3 = sub_221FB5A78();
  v4 = *MEMORY[0x277CBBFB0];
  v5 = sub_221FB6318();
  if (!*(v3 + 16))
  {

    goto LABEL_15;
  }

  v7 = sub_221ED4B5C(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_15:

    return MEMORY[0x277D84F90];
  }

  sub_221E951A4(*(v3 + 56) + 32 * v7, v35);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBDA0, &qword_221FB9AF8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = v37;
  v38 = MEMORY[0x277D84F98];
  v11 = 1 << *(v37 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v37 + 64);
  v14 = (v11 + 63) >> 6;

  v15 = 0;
  if (v13)
  {
    while (1)
    {
      v16 = v15;
LABEL_12:
      v17 = __clz(__rbit64(v13)) | (v16 << 6);
      sub_221EC5220(*(v10 + 48) + 40 * v17, v35);
      sub_221E951A4(*(v10 + 56) + 32 * v17, &v36);
      sub_221EC4A48(&v38, v35);
      v13 &= v13 - 1;
      sub_221EC527C(v35);
      v15 = v16;
      if (!v13)
      {
        goto LABEL_9;
      }
    }
  }

  while (1)
  {
LABEL_9:
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_33;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 64 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  v35[0] = MEMORY[0x277D84F90];
  v18 = v38 + 64;
  v19 = 1 << *(v38 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(v38 + 64);
  v22 = (v19 + 63) >> 6;
  v32 = v38;

  v23 = 0;
  while (v21)
  {
    v24 = v23;
LABEL_26:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = (v24 << 9) | (8 * v25);
    v27 = *(*(v32 + 48) + v26);
    v38 = *(*(v32 + 56) + v26);
    v28 = v38;
    v29 = v27;
    v30 = v28;
    sub_221FB5A58();
    if (v37 == 112)
    {
      v31 = v29;
      MEMORY[0x223DAC7E0]();
      if (*((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v34 = *((v35[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();

      v33 = v35[0];
      v23 = v24;
    }

    else
    {

      v23 = v24;
    }
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v22)
    {

      return v33;
    }

    v21 = *(v18 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_33:
  __break(1u);

  sub_221EC527C(v35);

  __break(1u);
  return result;
}

uint64_t sub_221EC527C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBDA8, qword_221FB9B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EC52E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBDA8, qword_221FB9B00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EC5608(int a1, void *a2, void *a3, void *a4, void *a5, void *aBlock, void *a7)
{
  v7[5] = a5;
  v7[6] = a7;
  v7[3] = a3;
  v7[4] = a4;
  v7[2] = a2;
  v7[7] = _Block_copy(aBlock);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  v17 = a2;

  return MEMORY[0x2822009F8](sub_221EC56BC, 0, 0);
}

uint64_t sub_221EC56BC()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000008CLL, 0x8000000221FC1A20, 0xD000000000000057, 0x8000000221FC1B10);
  __swift_project_boxed_opaque_existential_0Tm((v1 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService), *(v1 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService + 24));
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_221EC57F0;
  v4 = v0[4];
  v5 = v0[5];
  v7 = v0[2];
  v6 = v0[3];

  return sub_221EA5524(v7, v6, v4, v5);
}

uint64_t sub_221EC57F0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  v7 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v5 = sub_221EC59FC;
  }

  else
  {
    v5 = sub_221EC5904;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EC5904()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v2 = *(v0 + 40);
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);

  v6 = *(v0 + 72);
  if (v1)
  {
    v7 = *(v0 + 56);
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v8 = sub_221FB6428();

    (v7)[2](v7, 1, 0, v8);
    _Block_release(v7);
  }

  else
  {
    v9 = *(v0 + 72);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221EC59FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);

  v6 = *(v0 + 80);
  if (v2)
  {
    v7 = *(v0 + 56);
    v8 = *(v0 + 80);
    v9 = sub_221FB5A98();

    (v7)[2](v7, 0, v9, 0);
    _Block_release(v7);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221EC5C7C(int a1, int a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a3;
  v5[3] = a5;
  v5[4] = _Block_copy(aBlock);
  sub_221E9D138(0, &qword_27CFEBE30, 0x277CE90E0);
  sub_221EC69E0();
  v5[5] = sub_221FB64F8();
  v8 = a3;
  v9 = a5;

  return MEMORY[0x2822009F8](sub_221EC5D40, 0, 0);
}

uint64_t sub_221EC5D40()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[3];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000008CLL, 0x8000000221FC1A20, 0xD000000000000021, 0x8000000221FC1AE0);
  __swift_project_boxed_opaque_existential_0Tm((v2 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService), *(v2 + OBJC_IVAR____TtC23ActivitySharingServices30SecureCloudCompetitionDelegate_competitionService + 24));
  v4 = sub_221E9EBF8(v1);
  v0[6] = v4;

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_221EC5E94;
  v6 = v0[2];

  return sub_221EA5DA8(v4, v6);
}