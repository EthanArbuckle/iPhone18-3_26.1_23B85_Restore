uint64_t sub_221F07B48(__int16 a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F07C7C, 0, 0);
  }
}

uint64_t sub_221F07C7C()
{
  v12 = v0;
  if (*(v0 + 48) == 517)
  {
    v1 = *(v0 + 8);
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v2 = sub_221FB61D8();
    __swift_project_value_buffer(v2, qword_281307DF0);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 48);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v11 = v7;
      *v6 = 136315138;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0xE000000000000000;
      *(v0 + 50) = v5;
      sub_221FB6A08();
      v8 = sub_221EF4114(*(v0 + 16), *(v0 + 24), &v11);

      *(v6 + 4) = v8;
      _os_log_impl(&dword_221E93000, v3, v4, "Invalid account info for repair: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x223DADA80](v7, -1, -1);
      MEMORY[0x223DADA80](v6, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v9 = 10;
    swift_willThrow();
    v1 = *(v0 + 8);
  }

  return v1();
}

BOOL sub_221F07E7C(void *a1)
{
  v3 = sub_221FB5BC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v23[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v23[-v9];
  if (![a1 hasOutgoingSecureCloudRepairRequest])
  {
    return 1;
  }

  v11 = [a1 dateForLatestRepairRequest];
  if (!v11)
  {
    return 1;
  }

  v12 = v11;
  sub_221FB5B98();

  (*(v4 + 32))(v10, v8, v3);
  v13 = v1;
  sub_221FB5B78();
  v15 = v14;
  v16 = *(v1 + 336);
  v17 = *(v13 + 344);
  v18 = *(v13 + 352);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    v23[15] = v16;
    UserDefaultsKeys.rawValue.getter();
    v19 = COERCE_DOUBLE(sub_221EF8934(v18));
    v21 = v20;

    (*(v4 + 8))(v10, v3);
    if ((v21 & 1) == 0)
    {
      v17 = v19;
    }
  }

  else
  {
    (*(v4 + 8))(v10, v3);
  }

  return v17 < -v15;
}

uint64_t sub_221F08060(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221F08084, 0, 0);
}

uint64_t sub_221F08084()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[5] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD00000000000002DLL, 0x8000000221FC27F0);
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_221F08198;
  v3 = v0[4];

  return sub_221F078F0();
}

uint64_t sub_221F08198()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F082CC, 0, 0);
  }
}

uint64_t sub_221F082CC()
{
  v28 = v0;
  v1 = [*(v0[4] + 128) contacts];
  if (v1)
  {
    v2 = v1;
    v3 = v0[7];
    v4 = v0[5];
    v5 = v0[2];
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    v6 = sub_221FB64F8();

    v7 = sub_221EC4E48(v5);
    v8 = sub_221F0FEA4(v6, v7);
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315138;
      v13 = sub_221FB6508();
      v15 = sub_221EF4114(v13, v14, &v27);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_221E93000, v9, v10, "Contacts lost secure cloud identity %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x223DADA80](v12, -1, -1);
      MEMORY[0x223DADA80](v11, -1, -1);
    }

    v16 = v0[4];
    v17 = swift_task_alloc();
    *(v17 + 16) = v16;
    sub_221F41EC4(sub_221F11150, v17, v8);

    v18 = swift_task_alloc();
    v0[8] = v18;
    *v18 = v0;
    v18[1] = sub_221F085C8;
    v19 = v0[3];
    v20 = v0[4];

    return sub_221F08A7C(v19);
  }

  else
  {
    v22 = v0[5];
    v23 = sub_221FB61B8();
    v24 = sub_221FB65C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_221E93000, v23, v24, "No contacts to repair", v25, 2u);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    v26 = v0[1];

    return v26();
  }
}

uint64_t sub_221F085C8()
{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

id sub_221F086BC(id *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 relationshipStorage];
  v5 = [v4 secureCloudRelationship];

  if ([v5 secureCloudNeedsZoneDeletion])
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = v5;
    v8 = sub_221FB61B8();
    v9 = sub_221FB65C8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_221E93000, v8, v9, "Relationship already marked needed deletion %@", v10, 0xCu);
      sub_221E9CFE8(v11, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v11, -1, -1);
      MEMORY[0x223DADA80](v10, -1, -1);
    }

    else
    {
    }

    v20 = 0;
    return (v20 & 1);
  }

  v13 = [v3 relationshipStorage];
  v14 = [v13 secureCloudRelationship];

  result = [v14 secureCloudZoneName];
  if (result)
  {
    v16 = result;
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    v17 = *MEMORY[0x277CBBF28];
    sub_221FB6318();
    v18 = sub_221FB65D8();

    v22 = v18;
    MEMORY[0x28223BE20](v19);
    v21[2] = &v22;
    v20 = sub_221F7C788(sub_221F1159C, v21, a2);

    return (v20 & 1);
  }

  __break(1u);
  return result;
}

void sub_221F08998(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 relationshipStorage];
  v5 = [v3 relationshipStorage];
  v6 = [v5 secureCloudRelationship];

  [v6 insertEventWithType_];
  [v4 setSecureCloudRelationship_];
  [v3 setRelationshipStorage_];
  [*(a2 + 128) saveContact_];
}

uint64_t sub_221F08A7C(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2[12] = a1;
  v2[13] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8);
  v2[14] = v3;
  v4 = *(v3 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v5 = *MEMORY[0x277D85DE8];

  return MEMORY[0x2822009F8](sub_221F08BC4, 0, 0);
}

uint64_t sub_221F08BC4()
{
  v115 = v0;
  v114[1] = *MEMORY[0x277D85DE8];
  if (qword_281307080 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v1 = *(v0 + 104);
    v2 = sub_221FB61D8();
    v3 = __swift_project_value_buffer(v2, qword_281307DF0);
    *(v0 + 184) = v3;
    sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD000000000000021, 0x8000000221FC2820);
    v4 = [*(v1 + 128) contacts];
    v113 = v0;
    if (!v4)
    {
      v24 = sub_221FB61B8();
      v25 = sub_221FB65C8();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_221E93000, v24, v25, "No contacts to repair", v26, 2u);
        MEMORY[0x223DADA80](v26, -1, -1);
      }

      goto LABEL_77;
    }

    v5 = v4;
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    v0 = sub_221FB64F8();

    v107 = v3;
    if ((v0 & 0xC000000000000001) == 0)
    {
      break;
    }

    v7 = MEMORY[0x277D84FA0];
    v114[0] = MEMORY[0x277D84FA0];
    sub_221FB6828();
    v8 = sub_221FB6898();
    if (!v8)
    {
LABEL_22:

      goto LABEL_42;
    }

LABEL_8:
    v0 = v113;
    v113[11] = v8;
    swift_dynamicCast();
    v9 = [*(v0 + 80) relationshipStorage];
    v10 = [v9 secureCloudRelationship];

    LOBYTE(v9) = [v10 secureCloudNeedsZoneDeletion];
    v11 = *(v0 + 80);
    if ((v9 & 1) == 0)
    {

      goto LABEL_7;
    }

    v12 = *(v7 + 16);
    if (*(v7 + 24) <= v12)
    {
      sub_221F161CC(v12 + 1);
      v7 = v114[0];
    }

    v13 = *(v7 + 40);
    v14 = sub_221FB6748();
    v15 = v7 + 56;
    v16 = -1 << *(v7 + 32);
    v17 = v14 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 56 + 8 * (v17 >> 6))) != 0)
    {
      v19 = __clz(__rbit64((-1 << v17) & ~*(v7 + 56 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
      goto LABEL_21;
    }

    v20 = 0;
    v21 = (63 - v16) >> 6;
    while (++v18 != v21 || (v20 & 1) == 0)
    {
      v22 = v18 == v21;
      if (v18 == v21)
      {
        v18 = 0;
      }

      v20 |= v22;
      v23 = *(v15 + 8 * v18);
      if (v23 != -1)
      {
        v19 = __clz(__rbit64(~v23)) + (v18 << 6);
LABEL_21:
        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v7 + 48) + 8 * v19) = v11;
        ++*(v7 + 16);
LABEL_7:
        v8 = sub_221FB6898();
        if (!v8)
        {
          goto LABEL_22;
        }

        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    swift_once();
  }

  v27 = *(v0 + 32);
  v28 = ((1 << v27) + 63) >> 6;
  v29 = v0;
  if ((v27 & 0x3Fu) > 0xD)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_27;
    }

    v105 = swift_slowAlloc();
    v7 = sub_221F107FC(v105, v28, v0, sub_221F0B154);

    MEMORY[0x223DADA80](v105, -1, -1);
  }

  else
  {
LABEL_27:
    v110 = &v106;
    v111 = v28;
    MEMORY[0x28223BE20](v6);
    v31 = &v106 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v30);
    v112 = 0;
    v32 = 0;
    v33 = 1 << *(v0 + 32);
    v34 = -1;
    if (v33 < 64)
    {
      v34 = ~(-1 << v33);
    }

    v35 = v34 & *(v0 + 56);
    v0 = (v33 + 63) >> 6;
    while (1)
    {
      if (v35)
      {
        v36 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
      }

      else
      {
        v37 = v32;
        do
        {
          v32 = v37 + 1;
          if (__OFADD__(v37, 1))
          {
            goto LABEL_81;
          }

          if (v32 >= v0)
          {
            goto LABEL_41;
          }

          v38 = *(v29 + 56 + 8 * v32);
          ++v37;
        }

        while (!v38);
        v36 = __clz(__rbit64(v38));
        v35 = (v38 - 1) & v38;
      }

      v39 = v36 | (v32 << 6);
      v40 = *(*(v29 + 48) + 8 * v39);
      v41 = [v40 relationshipStorage];
      v42 = [v41 secureCloudRelationship];

      LODWORD(v41) = [v42 secureCloudNeedsZoneDeletion];
      if (v41)
      {
        *&v31[(v39 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v39;
        v43 = __OFADD__(v112++, 1);
        if (v43)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_41:
    v7 = sub_221F77424(v31, v111, v112, v29);
  }

LABEL_42:
  v113[24] = v7;
  if ((v7 & 0xC000000000000001) == 0)
  {
    if (!*(v7 + 16))
    {
      goto LABEL_74;
    }

LABEL_44:
    v44 = sub_221F061B4(v7);
    v106 = 0;
    if (v44 >> 62)
    {
      v87 = v44;
      v45 = sub_221FB6868();
      v44 = v87;
      if (v45)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v45)
      {
LABEL_46:
        v46 = 0;
        v111 = v44 & 0xFFFFFFFFFFFFFF8;
        v112 = v44 & 0xC000000000000001;
        v110 = *MEMORY[0x277CBBF28];
        v47 = MEMORY[0x277D84F98];
        v108 = v45;
        v109 = v44;
        while (1)
        {
          if (v112)
          {
            v50 = MEMORY[0x223DACD50](v46, v44);
          }

          else
          {
            if (v46 >= *(v111 + 16))
            {
              goto LABEL_83;
            }

            v50 = *(v44 + 8 * v46 + 32);
          }

          v51 = v50;
          v52 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            goto LABEL_82;
          }

          v53 = [v50 secureCloudZoneName];
          if (!v53)
          {
            __break(1u);
          }

          v54 = v53;
          v0 = sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
          sub_221FB6318();

          sub_221FB6318();
          v55 = sub_221FB65D8();
          if ((v47 & 0xC000000000000001) != 0)
          {
            if (v47 < 0)
            {
              v56 = v47;
            }

            else
            {
              v56 = v47 & 0xFFFFFFFFFFFFFF8;
            }

            v57 = v51;
            v58 = sub_221FB6868();
            if (__OFADD__(v58, 1))
            {
              goto LABEL_85;
            }

            v47 = sub_221F1088C(v56, v58 + 1);
          }

          else
          {
            v59 = v51;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v114[0] = v47;
          v62 = sub_221ED4C18(v55);
          v63 = *(v47 + 16);
          v64 = (v61 & 1) == 0;
          v65 = v63 + v64;
          if (__OFADD__(v63, v64))
          {
            goto LABEL_84;
          }

          v66 = v61;
          if (*(v47 + 24) >= v65)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v47 = v114[0];
              if (v61)
              {
                goto LABEL_47;
              }
            }

            else
            {
              sub_221ED72B0();
              v47 = v114[0];
              if (v66)
              {
                goto LABEL_47;
              }
            }
          }

          else
          {
            sub_221ED5E50(v65, isUniquelyReferenced_nonNull_native);
            v67 = sub_221ED4C18(v55);
            if ((v66 & 1) != (v68 & 1))
            {
              result = sub_221FB6B98();
              v86 = *MEMORY[0x277D85DE8];
              return result;
            }

            v62 = v67;
            v47 = v114[0];
            if (v66)
            {
LABEL_47:
              v48 = *(v47 + 56);
              v49 = *(v48 + 8 * v62);
              *(v48 + 8 * v62) = v51;

              goto LABEL_48;
            }
          }

          *(v47 + 8 * (v62 >> 6) + 64) |= 1 << v62;
          *(*(v47 + 48) + 8 * v62) = v55;
          *(*(v47 + 56) + 8 * v62) = v51;

          v69 = *(v47 + 16);
          v43 = __OFADD__(v69, 1);
          v70 = v69 + 1;
          if (v43)
          {
            goto LABEL_86;
          }

          *(v47 + 16) = v70;
LABEL_48:
          ++v46;
          v44 = v109;
          if (v52 == v108)
          {
            goto LABEL_90;
          }
        }
      }
    }

    v47 = MEMORY[0x277D84F98];
LABEL_90:
    v113[25] = v47;

    v88 = sub_221FB61B8();
    v89 = sub_221FB65C8();

    if (os_log_type_enabled(v88, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v114[0] = v91;
      *v90 = 136315138;

      sub_221F0593C(v92);
      v94 = v93;

      v95 = MEMORY[0x223DAC810](v94, MEMORY[0x277D837D0]);
      v97 = v96;

      v98 = sub_221EF4114(v95, v97, v114);

      *(v90 + 4) = v98;
      _os_log_impl(&dword_221E93000, v88, v89, "Deleting zones for relationships %s", v90, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v91);
      MEMORY[0x223DADA80](v91, -1, -1);
      MEMORY[0x223DADA80](v90, -1, -1);
    }

    v99 = v113;
    __swift_project_boxed_opaque_existential_0Tm((v113[13] + 216), *(v113[13] + 240));

    v101 = sub_221E9ED00(v100);
    v99[26] = v101;

    v102 = swift_task_alloc();
    v99[27] = v102;
    *v102 = v99;
    v102[1] = sub_221F09774;
    v103 = v99[12];
    v104 = *MEMORY[0x277D85DE8];

    return sub_221EF6BA8(v101, v103);
  }

  if (sub_221FB6868())
  {
    goto LABEL_44;
  }

LABEL_74:

  v71 = sub_221FB61B8();
  v72 = sub_221FB65C8();
  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 0;
    _os_log_impl(&dword_221E93000, v71, v72, "No contacts with zone deletion requested", v73, 2u);
    MEMORY[0x223DADA80](v73, -1, -1);
  }

  v0 = v113;
LABEL_77:
  v75 = *(v0 + 168);
  v74 = *(v0 + 176);
  v77 = *(v0 + 152);
  v76 = *(v0 + 160);
  v78 = v113[18];
  v79 = v113[17];
  v80 = v113[16];
  v81 = v113[15];

  v82 = v113;

  v83 = v82[1];
  v84 = *MEMORY[0x277D85DE8];

  return v83();
}

uint64_t sub_221F09774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *v5;
  v7 = *v5;
  v8 = *(*v5 + 216);
  v9 = *v5;
  v7[28] = a1;
  v7[29] = a2;
  v7[30] = a3;
  v7[31] = a4;
  v7[32] = v4;

  v10 = v6[26];
  if (v4)
  {
    v12 = v7[24];
    v11 = v7[25];

    v14 = v7[21];
    v13 = v7[22];
    v16 = v7[19];
    v15 = v7[20];
    v18 = v7[17];
    v17 = v7[18];
    v21 = v7 + 15;
    v19 = v7[15];
    v20 = v21[1];

    v22 = *(v9 + 8);
    v23 = *MEMORY[0x277D85DE8];

    return v22();
  }

  else
  {

    v25 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_221F099AC, 0, 0);
  }
}

uint64_t sub_221F099AC()
{
  v77 = v0;
  v76[2] = *MEMORY[0x277D85DE8];
  v1 = v0[29];
  v76[0] = MEMORY[0x277D84F90];
  v2 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v1 >> 62)
  {
LABEL_70:
    v3 = sub_221FB6868();
    v4 = v0[29];
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v4 = v1;
  }

  v5 = v0[25];
  v74 = v5 & 0xC000000000000001;
  v75 = v5;
  if (v5 < 0)
  {
    v6 = v0[25];
  }

  if (!v3)
  {
    v73 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v7 = 0;
  v8 = v1 & 0xC000000000000001;
  v9 = v4 + 32;
  v73 = MEMORY[0x277D84F90];
  v1 = v5 & 0xC000000000000001;
  while (2)
  {
    v10 = v7;
    while (1)
    {
      if (v8)
      {
        v11 = MEMORY[0x223DACD50](v10, v0[29]);
      }

      else
      {
        if (v10 >= *(v2 + 16))
        {
          goto LABEL_66;
        }

        v11 = *(v9 + 8 * v10);
      }

      v12 = v11;
      v7 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      if (!v1)
      {
        break;
      }

      v13 = sub_221FB6A38();
      if (!v13)
      {
        goto LABEL_8;
      }

      v0[3] = v13;
      sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
      swift_dynamicCast();
      v14 = v0[2];

      if (v14)
      {
        goto LABEL_23;
      }

LABEL_9:
      ++v10;
      if (v7 == v3)
      {
        goto LABEL_28;
      }
    }

    if (!*(v75 + 16) || (v15 = v0[25], v16 = sub_221ED4C18(v11), v1 = v74, (v17 & 1) == 0))
    {
LABEL_8:

      goto LABEL_9;
    }

    v18 = *(*(v75 + 56) + 8 * v16);

    if (!v18)
    {
      goto LABEL_9;
    }

LABEL_23:
    MEMORY[0x223DAC7E0]();
    if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v19 = *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_221FB6458();
    }

    sub_221FB6478();
    v73 = v76[0];
    v1 = v74;
    if (v7 != v3)
    {
      continue;
    }

    break;
  }

LABEL_28:
  v20 = v0[31];
  v76[0] = MEMORY[0x277D84F90];
  v2 = *(v20 + 16);
  if (v2)
  {
    v21 = 0;
    v22 = v20 + 40;
    v72 = MEMORY[0x277D84F90];
    while (2)
    {
      v23 = (v22 + 16 * v21);
      v24 = v21;
LABEL_34:
      if (v24 >= *(v20 + 16))
      {
        goto LABEL_67;
      }

      v25 = *(v23 - 1);
      v26 = *v23;
      v0[4] = *v23;
      v27 = v26;
      v28 = v26;
      v29 = v25;
      v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB910, &qword_221FB8290);
      type metadata accessor for CKError(0);
      if (!swift_dynamicCast())
      {
        goto LABEL_32;
      }

      v30 = v0[5];
      v0[6] = v30;
      sub_221F10D24(&qword_27CFEBA20, type metadata accessor for CKError);
      v1 = (v0 + 6);
      sub_221FB5A58();
      if (v0[7] == 26)
      {
        if (v74)
        {
          v1 = v29;
          v31 = sub_221FB6A38();

          if (v31)
          {
            v0[9] = v31;
            sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
            swift_dynamicCast();
            v32 = v0[8];

            if (v32)
            {
              goto LABEL_47;
            }
          }

          else
          {
          }

          break;
        }

        if (*(v75 + 16))
        {
          v1 = v0[25];
          v33 = sub_221ED4C18(v29);
          if (v34)
          {
            v35 = *(*(v75 + 56) + 8 * v33);

            if (v35)
            {
LABEL_47:
              MEMORY[0x223DAC7E0]();
              if (*((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v36 = *((v76[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_221FB6458();
              }

              v21 = v24 + 1;
              v1 = v76;
              sub_221FB6478();
              v72 = v76[0];
              v22 = v20 + 40;
              if (v2 - 1 != v24)
              {
                continue;
              }

              goto LABEL_52;
            }

            break;
          }
        }

LABEL_32:
      }

      else
      {
      }

      break;
    }

    ++v24;
    v23 += 2;
    if (v2 == v24)
    {
      goto LABEL_52;
    }

    goto LABEL_34;
  }

  v72 = MEMORY[0x277D84F90];
LABEL_52:
  v37 = v0[31];
  v38 = v0[32];
  v40 = v0[29];
  v39 = v0[30];
  v41 = v0[28];
  v42 = v0[25];
  v43 = v0[13];

  v76[0] = v73;
  sub_221ED43D0(v72);
  v44 = v76[0];
  v45 = swift_task_alloc();
  *(v45 + 16) = v43;
  v46 = sub_221F54478(sub_221F1116C, v45, v44);
  v0[33] = v46;

  if (v46 >> 62)
  {
    v2 = sub_221FB6868();
    v0[34] = v2;
    if (v2)
    {
LABEL_54:
      v47 = 0;
      v1 = v46 & 0xC000000000000001;
      while (1)
      {
        if (v1)
        {
          v48 = MEMORY[0x223DACD50](v47, v46);
        }

        else
        {
          if (v47 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_69;
          }

          v48 = *(v46 + 8 * v47 + 32);
        }

        v49 = v48;
        v50 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        [v48 setSystemFieldsOnlyRecord_];
        [v49 insertEventWithType_];

        ++v47;
        if (v50 == v2)
        {
          v51 = v0[13];
          __swift_project_boxed_opaque_existential_0Tm(v51 + 32, v51[35]);
          v52 = v51[15];
          v0[35] = v52;
          v53 = swift_task_alloc();
          v0[36] = v53;
          *v53 = v0;
          v53[1] = sub_221F0A17C;
          v54 = v0[12];
          v55 = *MEMORY[0x277D85DE8];

          return sub_221EBB94C(v46, v52, v54);
        }
      }

LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }
  }

  else
  {
    v2 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[34] = v2;
    if (v2)
    {
      goto LABEL_54;
    }
  }

  v58 = v0[23];
  v57 = v0[24];

  v59 = sub_221FB61B8();
  v60 = sub_221FB65A8();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_221E93000, v59, v60, "Didn't find any relationship needing repair after deletion", v61, 2u);
    MEMORY[0x223DADA80](v61, -1, -1);
  }

  v63 = v0[21];
  v62 = v0[22];
  v65 = v0[19];
  v64 = v0[20];
  v67 = v0[17];
  v66 = v0[18];
  v69 = v0[15];
  v68 = v0[16];

  v70 = v0[1];
  v71 = *MEMORY[0x277D85DE8];

  return v70();
}

uint64_t sub_221F0A17C()
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = *(*v1 + 288);
  v3 = *v1;
  v3[37] = v0;

  if (v0)
  {
    v4 = v3[33];
    v5 = v3[24];

    v7 = v3[21];
    v6 = v3[22];
    v9 = v3[19];
    v8 = v3[20];
    v11 = v3[17];
    v10 = v3[18];
    v12 = v3[15];
    v13 = v3[16];

    v14 = v3[1];
    v15 = *MEMORY[0x277D85DE8];

    return v14();
  }

  else
  {
    v17 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_221F0A384, 0, 0);
  }
}

uint64_t sub_221F0A384()
{
  v77 = v0;
  v76[1] = *MEMORY[0x277D85DE8];
  v1 = v0[33];
  v2 = v0[23];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v69 = v4;
    log = v3;
    v5 = v0[33];
    v6 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v76[0] = v67;
    buf = v6;
    *v6 = 136315138;
    if (v0[34])
    {
      v7 = 0;
      v72 = v5 & 0xFFFFFFFFFFFFFF8;
      v74 = v5 & 0xC000000000000001;
      v71 = MEMORY[0x277D84F90];
      v8 = v5 + 32;
      do
      {
        v9 = v7;
        while (1)
        {
          if (v74)
          {
            v10 = MEMORY[0x223DACD50](v9, v0[33]);
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_55;
            }
          }

          else
          {
            if (v9 >= *(v72 + 16))
            {
              goto LABEL_56;
            }

            v10 = *(v8 + 8 * v9);
            v7 = v9 + 1;
            if (__OFADD__(v9, 1))
            {
              goto LABEL_55;
            }
          }

          v11 = v10;
          v12 = [v11 UUID];
          if (v12)
          {
            v13 = v0[21];
            v14 = v12;
            sub_221FB5C18();

            v15 = 0;
          }

          else
          {
            v15 = 1;
          }

          v16 = v0[21];
          v17 = v0[22];
          v18 = sub_221FB5C38();
          v19 = *(v18 - 8);
          (*(v19 + 56))(v16, v15, 1, v18);
          sub_221EB994C(v16, v17);
          if ((*(v19 + 48))(v17, 1, v18) != 1)
          {
            break;
          }

          v6 = v0[34];
          sub_221E9CFE8(v0[22], &qword_27CFEBD50, &unk_221FB9FB0);

          ++v9;
          if (v7 == v6)
          {
            goto LABEL_24;
          }
        }

        v20 = v0[22];
        v21 = v0[20];
        sub_221EB99BC(v20, v21);
        v22 = sub_221FB5BE8();
        v24 = v23;
        (*(v19 + 8))(v21, v18);
        sub_221E9CFE8(v20, &qword_27CFEBD50, &unk_221FB9FB0);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v71 = sub_221EF3C20(0, *(v71 + 2) + 1, 1, v71);
        }

        v6 = *(v71 + 2);
        v25 = *(v71 + 3);
        if (v6 >= v25 >> 1)
        {
          v71 = sub_221EF3C20((v25 > 1), v6 + 1, 1, v71);
        }

        *(v71 + 2) = v6 + 1;
        v26 = &v71[16 * v6];
        *(v26 + 4) = v22;
        *(v26 + 5) = v24;
      }

      while (v7 != v0[34]);
    }

    else
    {
      v71 = MEMORY[0x277D84F90];
    }

LABEL_24:
    v27 = MEMORY[0x223DAC810](v71, MEMORY[0x277D837D0]);
    v29 = v28;

    v30 = sub_221EF4114(v27, v29, v76);

    *(buf + 4) = v30;
    v3 = log;
    _os_log_impl(&dword_221E93000, log, v69, "Pushed relationships after deleting zones: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v67);
    MEMORY[0x223DADA80](v67, -1, -1);
    MEMORY[0x223DADA80](buf, -1, -1);
  }

  v31 = v0[33];
  if (v31 >> 62)
  {
    if (v31 < 0)
    {
      v51 = v0[33];
    }

    v32 = sub_221FB6868();
    if (v32)
    {
      goto LABEL_27;
    }

LABEL_42:
    v52 = v0[33];

    v36 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v32)
  {
    goto LABEL_42;
  }

LABEL_27:
  v76[0] = MEMORY[0x277D84F90];
  sub_221F776A4(0, v32 & ~(v32 >> 63), 0);
  if (v32 < 0)
  {
    __break(1u);
  }

  v33 = 0;
  v34 = v0[33];
  v35 = v0[14];
  v36 = v76[0];
  v73 = v34 + 32;
  v75 = v34 & 0xC000000000000001;
  do
  {
    if (v75)
    {
      v37 = MEMORY[0x223DACD50](v33, v0[33]);
    }

    else
    {
      v37 = *(v73 + 8 * v33);
    }

    v38 = v37;
    v39 = [v38 UUID];
    if (v39)
    {
      v40 = v0[17];
      v41 = v39;
      sub_221FB5C18();

      v42 = 0;
    }

    else
    {
      v42 = 1;
    }

    v44 = v0[18];
    v43 = v0[19];
    v45 = v0[17];
    v46 = sub_221FB5C38();
    (*(*(v46 - 8) + 56))(v45, v42, 1, v46);
    sub_221EB994C(v45, v44);
    sub_221EB994C(v44, v43);

    v76[0] = v36;
    v48 = *(v36 + 16);
    v47 = *(v36 + 24);
    if (v48 >= v47 >> 1)
    {
      sub_221F776A4(v47 > 1, v48 + 1, 1);
      v36 = v76[0];
    }

    v49 = v0[19];
    ++v33;
    *(v36 + 16) = v48 + 1;
    sub_221EB994C(v49, v36 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v48);
  }

  while (v32 != v33);
  v50 = v0[33];

LABEL_43:
  v53 = v0[37];
  v54 = v0[24];

  sub_221F10DD4(v54, v36);
  v6 = v55;
  v0[38] = v55;
  swift_bridgeObjectRelease_n();

  if (v6 >> 62)
  {
    goto LABEL_57;
  }

  v56 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (v0[39] = v56; v56; v0[39] = v56)
  {
    v57 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v58 = MEMORY[0x223DACD50](v57, v6);
      }

      else
      {
        if (v57 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v58 = *(v6 + 8 * v57 + 32);
      }

      v59 = v58;
      v60 = v57 + 1;
      if (__OFADD__(v57, 1))
      {
        break;
      }

      [v58 insertEventWithType_];

      ++v57;
      if (v60 == v56)
      {
        goto LABEL_58;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v56 = sub_221FB6868();
  }

LABEL_58:
  __swift_project_boxed_opaque_existential_0Tm((v0[13] + 256), *(v0[13] + 280));
  v61 = swift_task_alloc();
  v0[40] = v61;
  *v61 = v0;
  v61[1] = sub_221F0AAB4;
  v62 = v0[35];
  v63 = v0[12];
  v64 = *MEMORY[0x277D85DE8];
  v65 = MEMORY[0x277D84F90];

  return sub_221EBA884(v6, v65, v62, v63);
}

uint64_t sub_221F0AAB4()
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[38];

    v7 = v2[21];
    v6 = v2[22];
    v9 = v2[19];
    v8 = v2[20];
    v11 = v2[17];
    v10 = v2[18];
    v14 = v2 + 15;
    v12 = v2[15];
    v13 = v14[1];

    v15 = *(v4 + 8);
    v16 = *MEMORY[0x277D85DE8];

    return v15();
  }

  else
  {

    v18 = *MEMORY[0x277D85DE8];

    return MEMORY[0x2822009F8](sub_221F0ACB8, 0, 0);
  }
}

uint64_t sub_221F0ACB8()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = v0[38];
  v2 = v0[23];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[38];
  if (v5)
  {
    v49 = v4;
    log = v3;
    v7 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v54[0] = v47;
    buf = v7;
    *v7 = 136315138;
    if (v0[39])
    {
      v8 = 0;
      v52 = v6 & 0xFFFFFFFFFFFFFF8;
      v53 = v6 & 0xC000000000000001;
      v51 = MEMORY[0x277D84F90];
      v9 = v6 + 32;
      do
      {
        v10 = v8;
        while (1)
        {
          if (v53)
          {
            v11 = MEMORY[0x223DACD50](v10, v0[38]);
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (v10 >= *(v52 + 16))
            {
              goto LABEL_30;
            }

            v11 = *(v9 + 8 * v10);
            v8 = v10 + 1;
            if (__OFADD__(v10, 1))
            {
LABEL_29:
              __break(1u);
LABEL_30:
              __break(1u);
            }
          }

          v12 = v11;
          v13 = [v12 UUID];
          if (v13)
          {
            v14 = v0[15];
            v15 = v13;
            sub_221FB5C18();

            v16 = 0;
          }

          else
          {
            v16 = 1;
          }

          v17 = v0[15];
          v18 = v0[16];
          v19 = sub_221FB5C38();
          v20 = *(v19 - 8);
          (*(v20 + 56))(v17, v16, 1, v19);
          sub_221EB994C(v17, v18);
          v21 = (*(v20 + 48))(v18, 1, v19);
          v22 = v0[16];
          if (v21 != 1)
          {
            break;
          }

          v23 = v0[39];
          sub_221E9CFE8(v0[16], &qword_27CFEBD50, &unk_221FB9FB0);

          ++v10;
          if (v8 == v23)
          {
            goto LABEL_25;
          }
        }

        v24 = v0[20];
        sub_221EB99BC(v0[16], v24);
        v25 = sub_221FB5BE8();
        v27 = v26;
        (*(v20 + 8))(v24, v19);
        sub_221E9CFE8(v22, &qword_27CFEBD50, &unk_221FB9FB0);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v51 = sub_221EF3C20(0, *(v51 + 2) + 1, 1, v51);
        }

        v29 = *(v51 + 2);
        v28 = *(v51 + 3);
        if (v29 >= v28 >> 1)
        {
          v51 = sub_221EF3C20((v28 > 1), v29 + 1, 1, v51);
        }

        *(v51 + 2) = v29 + 1;
        v30 = &v51[16 * v29];
        *(v30 + 4) = v25;
        *(v30 + 5) = v27;
      }

      while (v8 != v0[39]);
    }

    else
    {
      v51 = MEMORY[0x277D84F90];
    }

LABEL_25:
    v31 = v0[38];

    v32 = MEMORY[0x223DAC810](v51, MEMORY[0x277D837D0]);
    v34 = v33;

    v35 = sub_221EF4114(v32, v34, v54);

    *(buf + 4) = v35;
    _os_log_impl(&dword_221E93000, log, v49, "Pushed legacy relationships after deleting zones: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x223DADA80](v47, -1, -1);
    MEMORY[0x223DADA80](buf, -1, -1);
  }

  else
  {
  }

  v37 = v0[21];
  v36 = v0[22];
  v39 = v0[19];
  v38 = v0[20];
  v41 = v0[17];
  v40 = v0[18];
  v43 = v0[15];
  v42 = v0[16];

  v44 = v0[1];
  v45 = *MEMORY[0x277D85DE8];

  return v44();
}

id sub_221F0B154(id *a1)
{
  v1 = [*a1 relationshipStorage];
  v2 = [v1 secureCloudRelationship];

  v3 = [v2 secureCloudNeedsZoneDeletion];
  return v3;
}

uint64_t sub_221F0B1D4(void **a1, uint64_t a2)
{
  v4 = sub_221FB5C38();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if ([v9 isFriendshipActive] && (objc_msgSend(v9, sel_secureCloudMigrationCompleted) & 1) != 0)
  {
    return 1;
  }

  v10 = *(a2 + 128);
  result = [v9 UUID];
  if (result)
  {
    v12 = result;
    sub_221FB5C18();

    v13 = sub_221FB5BF8();
    (*(v5 + 8))(v8, v4);
    v14 = [v10 contactWithUUID_];

    if (v14)
    {
      v15 = [v14 relationshipStorage];

      v16 = [v15 legacyRelationship];
      if (v16)
      {
        if ([v16 isFriendshipActive])
        {
          v17 = [v16 secureCloudUpgradeCompleted];

          if (v17)
          {
            return 1;
          }
        }

        else
        {
        }
      }
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F0B3BC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_221FB5C38();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F0B47C, 0, 0);
}

uint64_t sub_221F0B47C()
{
  v29 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v2 = v0[2];
  v1 = v0[3];
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD00000000000001FLL, 0x8000000221FC2870);
  v4 = *(v1 + 128);
  v5 = sub_221FB5BF8();
  v6 = [v4 contactWithUUID_];
  v0[7] = v6;

  if (v6)
  {
    v7 = [v6 relationshipStorage];
    v0[8] = v7;
    v8 = [v6 relationshipStorage];
    v9 = [v8 secureCloudRelationship];
    v0[9] = v9;

    [v9 insertEventWithType_];
    [v7 setSecureCloudRelationship_];
    [v6 setRelationshipStorage_];
    [v4 saveContact_];
    v10 = swift_task_alloc();
    v0[10] = v10;
    *v10 = v0;
    v10[1] = sub_221F0B87C;
    v11 = v0[3];

    return sub_221F08A7C(0);
  }

  else
  {
    (*(v0[5] + 16))(v0[6], v0[2], v0[4]);
    v13 = sub_221FB61B8();
    v14 = sub_221FB65A8();
    v15 = os_log_type_enabled(v13, v14);
    v17 = v0[5];
    v16 = v0[6];
    v18 = v0[4];
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v28 = v20;
      *v19 = 136315138;
      sub_221F10D24(&qword_27CFEBB90, MEMORY[0x277CC95F0]);
      v21 = sub_221FB6B08();
      v23 = v22;
      (*(v17 + 8))(v16, v18);
      v24 = sub_221EF4114(v21, v23, &v28);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_221E93000, v13, v14, "Failed to find contact for friend identifier: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x223DADA80](v20, -1, -1);
      MEMORY[0x223DADA80](v19, -1, -1);
    }

    else
    {

      (*(v17 + 8))(v16, v18);
    }

    sub_221EA4994();
    swift_allocError();
    *v25 = 21;
    swift_willThrow();
    v26 = v0[6];

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_221F0B87C()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_221F0BA10;
  }

  else
  {
    v3 = sub_221F0B990;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F0B990()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221F0BA10()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  v3 = *(v0 + 88);
  v4 = *(v0 + 48);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221F0BAA8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[3] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD000000000000018, 0x8000000221FC2850);
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_221F0BBBC;
  v3 = v0[2];

  return sub_221F078F0();
}

uint64_t sub_221F0BBBC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  *(v3 + 40) = v0;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F0BCF0, 0, 0);
  }
}

uint64_t sub_221F0BCF0()
{
  v23 = v0;
  v1 = [*(v0[2] + 128) contacts];
  if (!v1)
  {
    v17 = v0[3];
    v8 = sub_221FB61B8();
    v18 = sub_221FB65C8();
    if (!os_log_type_enabled(v8, v18))
    {
LABEL_7:

      goto LABEL_9;
    }

    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_221E93000, v8, v18, "No contacts to repair", v19, 2u);
    v16 = v19;
LABEL_6:
    MEMORY[0x223DADA80](v16, -1, -1);
    goto LABEL_7;
  }

  v2 = v1;
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221F10D6C();
  v6 = sub_221FB64F8();

  v7 = swift_task_alloc();
  *(v7 + 16) = v5;
  sub_221F10104(sub_221F11604, v7, v6);

  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v22 = v11;
    *v10 = 136315138;
    v12 = sub_221FB6508();
    v14 = v13;

    v15 = sub_221EF4114(v12, v14, &v22);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_221E93000, v8, v9, "Found contacts needing repair: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x223DADA80](v11, -1, -1);
    v16 = v10;
    goto LABEL_6;
  }

LABEL_9:
  v20 = v0[1];

  return v20();
}

BOOL sub_221F0BF5C(id *a1)
{
  v1 = [*a1 relationshipStorage];
  v2 = [v1 secureCloudRelationship];

  if ([v2 secureCloudNeedsRepair])
  {
    v3 = sub_221F07E7C(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_221F0BFF4(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();
  v6 = sub_221FB5F48();
  v3[7] = v6;
  v7 = *(v6 - 8);
  v3[8] = v7;
  v8 = *(v7 + 64) + 15;
  v3[9] = swift_task_alloc();
  v9 = sub_221FB5F78();
  v3[10] = v9;
  v10 = *(v9 - 8);
  v3[11] = v10;
  v11 = *(v10 + 64) + 15;
  v3[12] = swift_task_alloc();
  v12 = sub_221FB5C38();
  v3[13] = v12;
  v13 = *(v12 - 8);
  v3[14] = v13;
  v14 = *(v13 + 64) + 15;
  v3[15] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC258, &unk_221FBB4A0);
  v3[16] = v15;
  v16 = *(*(v15 - 8) + 64) + 15;
  v3[17] = swift_task_alloc();
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0) - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v18 = sub_221FB5BC8();
  v3[21] = v18;
  v19 = *(v18 - 8);
  v3[22] = v19;
  v20 = *(v19 + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F0C294, 0, 0);
}

uint64_t sub_221F0C294()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[25] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD00000000000002ALL, 0x8000000221FC27C0);
  v2 = swift_task_alloc();
  v0[26] = v2;
  *v2 = v0;
  v2[1] = sub_221F0C3A8;
  v3 = v0[4];

  return sub_221F078F0();
}

uint64_t sub_221F0C3A8()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_221F0E64C;
  }

  else
  {
    v3 = sub_221F0C4BC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F0C4BC()
{
  v1 = [*(v0 + 24) fromID];
  if (!v1)
  {
    sub_221FB6318();
    v1 = sub_221FB62E8();
  }

  v2 = ASSanitizedContactDestination();

  v3 = sub_221FB6318();
  v5 = v4;

  *(v0 + 224) = v3;
  *(v0 + 232) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
  v6 = swift_allocObject();
  *(v0 + 240) = v6;
  *(v6 + 16) = xmmword_221FB81A0;
  *(v6 + 32) = v3;
  *(v6 + 40) = v5;

  v7 = swift_task_alloc();
  *(v0 + 248) = v7;
  *v7 = v0;
  v7[1] = sub_221F0C604;
  v8 = *(v0 + 32);

  return sub_221F0734C(v6);
}

uint64_t sub_221F0C604(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v8 = *v2;
  v3[32] = a1;
  v3[33] = v1;

  if (v1)
  {
    v5 = sub_221F0E7B8;
  }

  else
  {
    v6 = v3[30];

    v5 = sub_221F0C720;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F0C720()
{
  v1 = *(v0 + 256);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v5 = *(v0 + 176);
  v6 = *(v0 + 16);
  v7 = [v1 relationshipStorage];
  v8 = [v7 secureCloudRelationship];
  *(v0 + 272) = v8;

  v9 = [v1 relationshipStorage];
  v10 = [v9 legacyRelationship];
  *(v0 + 280) = v10;

  sub_221FB5F58();
  sub_221FB5BB8();
  sub_221FB5B28();
  v12 = v11;
  v13 = *(v5 + 8);
  v13(v3, v4);
  sub_221FB5B28();
  v15 = v14;
  v13(v2, v4);
  v16 = v12 - v15;
  if (v12 - v15 <= 0.0 || v16 >= 86400.0)
  {
    goto LABEL_5;
  }

  v26 = *(v0 + 160);
  v27 = *(v0 + 104);
  v28 = *(v0 + 112);
  v29 = [*(v0 + 24) uniqueID];
  sub_221FB5C18();

  v30 = *(v28 + 56);
  v31 = 1;
  v30(v26, 0, 1, v27);
  v32 = [v8 receivedInvitation];
  v90 = v10;
  v91 = v8;
  if (v32)
  {
    v33 = *(v0 + 152);
    v34 = v32;
    v35 = [v32 uniqueID];

    sub_221FB5C18();
    v31 = 0;
  }

  v37 = *(v0 + 152);
  v36 = *(v0 + 160);
  v38 = *(v0 + 128);
  v39 = *(v0 + 136);
  v40 = *(v0 + 104);
  v41 = *(v0 + 112);
  v30(v37, v31, 1, v40);
  v42 = *(v38 + 48);
  sub_221EB99BC(v36, v39);
  sub_221EB99BC(v37, v39 + v42);
  v43 = *(v41 + 48);
  if (v43(v39, 1, v40) == 1)
  {
    v44 = *(v0 + 160);
    v45 = *(v0 + 104);
    sub_221E9CFE8(*(v0 + 152), &qword_27CFEBD50, &unk_221FB9FB0);
    sub_221E9CFE8(v44, &qword_27CFEBD50, &unk_221FB9FB0);
    v10 = v90;
    v8 = v91;
    if (v43(v39 + v42, 1, v45) == 1)
    {
      sub_221E9CFE8(*(v0 + 136), &qword_27CFEBD50, &unk_221FB9FB0);
LABEL_5:
      v18 = *(v0 + 232);
      v19 = *(v0 + 200);

      v20 = sub_221FB61B8();
      v21 = sub_221FB65A8();
      if (!os_log_type_enabled(v20, v21))
      {
        v25 = 47;
LABEL_26:
        v65 = *(v0 + 256);
        v67 = *(v0 + 40);
        v66 = *(v0 + 48);

        swift_storeEnumTagMultiPayload();
        sub_221EA4994();
        v68 = swift_allocError();
        *v69 = v25;
        v70 = type metadata accessor for IDSError(0);
        sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
        swift_allocError();
        v72 = v71;
        sub_221EA4A40(v66, v71);
        *(v72 + *(v70 + 20)) = v68;
        swift_willThrow();

        v74 = *(v0 + 184);
        v73 = *(v0 + 192);
        v76 = *(v0 + 152);
        v75 = *(v0 + 160);
        v78 = *(v0 + 136);
        v77 = *(v0 + 144);
        v79 = *(v0 + 120);
        v80 = *(v0 + 96);
        v81 = *(v0 + 72);
        v82 = *(v0 + 48);

        v83 = *(v0 + 8);

        return v83();
      }

      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      *(v22 + 4) = v8;
      *v23 = v8;
      v24 = v8;
      _os_log_impl(&dword_221E93000, v20, v21, "Already handling a repair request for relationship %@", v22, 0xCu);
      sub_221E9CFE8(v23, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v23, -1, -1);
      v25 = 47;
LABEL_25:
      MEMORY[0x223DADA80](v22, -1, -1);
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  v46 = *(v0 + 104);
  sub_221EB99BC(*(v0 + 136), *(v0 + 144));
  v47 = v43(v39 + v42, 1, v46);
  v49 = *(v0 + 152);
  v48 = *(v0 + 160);
  v50 = *(v0 + 144);
  if (v47 == 1)
  {
    v52 = *(v0 + 104);
    v51 = *(v0 + 112);
    sub_221E9CFE8(*(v0 + 152), &qword_27CFEBD50, &unk_221FB9FB0);
    sub_221E9CFE8(v48, &qword_27CFEBD50, &unk_221FB9FB0);
    (*(v51 + 8))(v50, v52);
    v10 = v90;
    v8 = v91;
LABEL_15:
    sub_221E9CFE8(*(v0 + 136), &qword_27CFEC258, &unk_221FBB4A0);
    goto LABEL_16;
  }

  v92 = *(v0 + 136);
  v89 = *(v0 + 160);
  v84 = *(v0 + 112);
  v85 = *(v0 + 120);
  v86 = *(v0 + 104);
  (*(v84 + 32))(v85, v39 + v42, v86);
  sub_221F10D24(&qword_27CFEC260, MEMORY[0x277CC95F0]);
  v87 = sub_221FB62D8();
  v88 = *(v84 + 8);
  v88(v85, v86);
  sub_221E9CFE8(v49, &qword_27CFEBD50, &unk_221FB9FB0);
  sub_221E9CFE8(v89, &qword_27CFEBD50, &unk_221FB9FB0);
  v88(v50, v86);
  sub_221E9CFE8(v92, &qword_27CFEBD50, &unk_221FB9FB0);
  v10 = v90;
  v8 = v91;
  if (v87)
  {
    goto LABEL_5;
  }

LABEL_16:
  if ((![v8 isFriendshipActive] || (objc_msgSend(v8, sel_secureCloudUpgradeCompleted) & 1) == 0) && (!objc_msgSend(v10, sel_isFriendshipActive) || !objc_msgSend(v10, sel_secureCloudUpgradeCompleted)))
  {
    v62 = *(v0 + 232);
    v63 = *(v0 + 200);

    v20 = sub_221FB61B8();
    v64 = sub_221FB65A8();
    if (!os_log_type_enabled(v20, v64))
    {
      v25 = 52;
      goto LABEL_26;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_221E93000, v20, v64, "Request to repair inactive friendship", v22, 2u);
    v25 = 52;
    goto LABEL_25;
  }

  v53 = *(v0 + 256);
  v54 = v8;
  v56 = *(v0 + 24);
  v55 = *(v0 + 32);
  [v54 insertEventWithType_];
  [v54 setReceivedInvitation_];
  __swift_project_boxed_opaque_existential_0Tm(v55 + 32, v55[35]);
  v57 = v55[15];
  *(v0 + 288) = v57;
  v58 = v54;
  v59 = v53;
  v60 = swift_task_alloc();
  *(v0 + 296) = v60;
  *v60 = v0;
  v60[1] = sub_221F0CF54;

  return sub_221EBAEA8(v58, v53, v57, 0);
}

uint64_t sub_221F0CF54(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 296);
  v6 = *v2;
  *(v4 + 304) = a1;
  *(v4 + 312) = v1;

  v7 = *(v3 + 272);
  if (v1)
  {
    v8 = *(v4 + 232);

    v9 = sub_221F0D2C8;
  }

  else
  {

    v9 = sub_221F0D0A8;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F0D0A8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  __swift_project_boxed_opaque_existential_0Tm((v1 + 296), *(v1 + 320));
  v3 = sub_221FB5F38();
  *(v0 + 320) = v3;
  v4 = swift_task_alloc();
  *(v0 + 328) = v4;
  *v4 = v0;
  v4[1] = sub_221F0D16C;
  v5 = *(v0 + 288);

  return sub_221E98A68(v3, v5);
}

uint64_t sub_221F0D16C(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 328);
  v6 = *v2;
  *(v4 + 336) = v1;

  v7 = *(v4 + 320);
  if (v1)
  {
    v8 = *(v4 + 232);

    v9 = sub_221F0D750;
  }

  else
  {

    v9 = sub_221F0D54C;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F0D2C8()
{
  v1 = v0[39];
  v2 = v0[34];
  v3 = v0[25];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v2;
    *v8 = v2;
    *(v7 + 12) = 2112;
    v9 = v1;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair request %@, error: %@", v7, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = v0[35];
  v13 = v0[32];
  v15 = v0[5];
  v14 = v0[6];

  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v14, v17);
  *(v18 + *(v16 + 20)) = v1;
  swift_willThrow();

  v20 = v0[23];
  v19 = v0[24];
  v22 = v0[19];
  v21 = v0[20];
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v26 = v0[12];
  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_221F0D54C()
{
  v1 = *(v0 + 304);
  v2 = swift_task_alloc();
  *(v0 + 344) = v2;
  *v2 = v0;
  v2[1] = sub_221F0D5F4;
  v3 = *(v0 + 304);
  v5 = *(v0 + 224);
  v4 = *(v0 + 232);
  v6 = *(v0 + 32);

  return sub_221F064E8(v5, v4, v3);
}

uint64_t sub_221F0D5F4(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 344);
  v6 = *v2;
  *(v4 + 352) = a1;
  *(v4 + 360) = v1;

  v7 = *(v3 + 304);
  if (v1)
  {
    v8 = *(v4 + 232);

    v9 = sub_221F0E8B4;
  }

  else
  {
    v10 = *(v4 + 232);

    v9 = sub_221F0D9D4;
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

uint64_t sub_221F0D750()
{
  v1 = v0[42];
  v2 = v0[38];
  v3 = v0[25];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v2;
    *v8 = v2;
    *(v7 + 12) = 2112;
    v9 = v1;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair request %@, error: %@", v7, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = v0[35];
  v13 = v0[32];
  v15 = v0[5];
  v14 = v0[6];

  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v14, v17);
  *(v18 + *(v16 + 20)) = v1;
  swift_willThrow();

  v20 = v0[23];
  v19 = v0[24];
  v22 = v0[19];
  v21 = v0[20];
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v26 = v0[12];
  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_221F0D9D4()
{
  v1 = v0[38];
  v2 = v0[32];
  v3 = v0[4];
  [v1 insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v3 + 256), *(v3 + 280));
  v4 = v1;
  v5 = swift_task_alloc();
  v0[46] = v5;
  *v5 = v0;
  v5[1] = sub_221F0DAB8;
  v6 = v0[38];
  v7 = v0[36];

  return sub_221EBAEA8(v6, v2, v7, 0);
}

uint64_t sub_221F0DAB8(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 368);
  v6 = *v2;
  *(v4 + 376) = a1;
  *(v4 + 384) = v1;

  v7 = *(v3 + 304);

  if (v1)
  {
    v8 = sub_221F0DED0;
  }

  else
  {
    v8 = sub_221F0DC0C;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F0DC0C()
{
  v1 = *(v0 + 200);

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 376);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&dword_221E93000, v2, v3, "Complete repair for request %@", v5, 0xCu);
    sub_221E9CFE8(v6, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v6, -1, -1);
    MEMORY[0x223DADA80](v5, -1, -1);
  }

  v26 = *(v0 + 352);
  v27 = *(v0 + 200);
  v8 = *(v0 + 184);
  v9 = *(v0 + 112);
  v10 = *(v0 + 120);
  v11 = *(v0 + 104);
  v25 = *(v0 + 96);
  v12 = *(v0 + 64);
  v13 = *(v0 + 72);
  v14 = *(v0 + 56);

  sub_221FB5BB8();
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v9 + 8))(v10, v11);
  (*(v12 + 104))(v13, *MEMORY[0x277CE93F0], v14);
  v15 = v26;
  sub_221FB5F68();
  v16 = sub_221FB61B8();
  v17 = sub_221FB65C8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_221E93000, v16, v17, "Sending accept for repair request", v18, 2u);
    MEMORY[0x223DADA80](v18, -1, -1);
  }

  v19 = *(v0 + 32);

  v20 = *__swift_project_boxed_opaque_existential_0Tm((v19 + 136), *(v19 + 160));
  v21 = swift_task_alloc();
  *(v0 + 392) = v21;
  *v21 = v0;
  v21[1] = sub_221F0E15C;
  v22 = *(v0 + 96);
  v23 = *(v0 + 24);

  return sub_221FA8478(v23, v22, 1155);
}

uint64_t sub_221F0DED0()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 304);
  v3 = *(v0 + 200);
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v2;
    *v8 = v2;
    *(v7 + 12) = 2112;
    v9 = v1;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair request %@, error: %@", v7, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = *(v0 + 280);
  v13 = *(v0 + 256);
  v15 = *(v0 + 40);
  v14 = *(v0 + 48);

  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v14, v17);
  *(v18 + *(v16 + 20)) = v1;
  swift_willThrow();

  v20 = *(v0 + 184);
  v19 = *(v0 + 192);
  v22 = *(v0 + 152);
  v21 = *(v0 + 160);
  v24 = *(v0 + 136);
  v23 = *(v0 + 144);
  v25 = *(v0 + 120);
  v26 = *(v0 + 96);
  v27 = *(v0 + 72);
  v28 = *(v0 + 48);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_221F0E15C()
{
  v2 = *(*v1 + 392);
  v5 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v3 = sub_221F0E3A0;
  }

  else
  {
    v3 = sub_221F0E270;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F0E270()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 352);
  v3 = *(v0 + 256);
  v5 = *(v0 + 184);
  v4 = *(v0 + 192);
  v6 = *(v0 + 160);
  v12 = *(v0 + 152);
  v13 = *(v0 + 144);
  v14 = *(v0 + 136);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v9 = *(v0 + 80);
  v15 = *(v0 + 120);
  v16 = *(v0 + 72);
  v17 = *(v0 + 48);

  (*(v7 + 8))(v8, v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_221F0E3A0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 80);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 400);
  v5 = *(v0 + 376);
  v6 = *(v0 + 200);
  v7 = v4;
  v8 = sub_221FB61B8();
  v9 = sub_221FB65A8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v5;
    *v11 = v5;
    *(v10 + 12) = 2112;
    v12 = v4;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    v11[1] = v14;
    _os_log_impl(&dword_221E93000, v8, v9, "Failed to handle repair request %@, error: %@", v10, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v11, -1, -1);
    MEMORY[0x223DADA80](v10, -1, -1);
  }

  v15 = *(v0 + 280);
  v16 = *(v0 + 256);
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);

  swift_storeEnumTagMultiPayload();
  v19 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v21 = v20;
  sub_221EA4A40(v17, v20);
  *(v21 + *(v19 + 20)) = v4;
  swift_willThrow();

  v23 = *(v0 + 184);
  v22 = *(v0 + 192);
  v25 = *(v0 + 152);
  v24 = *(v0 + 160);
  v27 = *(v0 + 136);
  v26 = *(v0 + 144);
  v28 = *(v0 + 120);
  v29 = *(v0 + 96);
  v30 = *(v0 + 72);
  v31 = *(v0 + 48);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_221F0E64C()
{
  v1 = v0[27];
  v2 = v0[5];
  v3 = v0[6];
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v6 = v5;
  sub_221EA4A40(v3, v5);
  *(v6 + *(v4 + 20)) = v1;
  swift_willThrow();
  v8 = v0[23];
  v7 = v0[24];
  v10 = v0[19];
  v9 = v0[20];
  v12 = v0[17];
  v11 = v0[18];
  v13 = v0[15];
  v14 = v0[12];
  v15 = v0[9];
  v18 = v0[6];

  v16 = v0[1];

  return v16();
}

uint64_t sub_221F0E7B8()
{
  v2 = v0[29];
  v1 = v0[30];

  v15 = v0[33];
  v4 = v0[23];
  v3 = v0[24];
  v6 = v0[19];
  v5 = v0[20];
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[15];
  v10 = v0[12];
  v11 = v0[9];
  v12 = v0[6];

  v13 = v0[1];

  return v13();
}

uint64_t sub_221F0E8B4()
{
  v1 = v0[45];
  v2 = v0[38];
  v3 = v0[25];
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    *(v7 + 4) = v2;
    *v8 = v2;
    *(v7 + 12) = 2112;
    v9 = v1;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v11;
    v8[1] = v11;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair request %@, error: %@", v7, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB900, &unk_221FB8C10);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = v0[35];
  v13 = v0[32];
  v15 = v0[5];
  v14 = v0[6];

  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v18 = v17;
  sub_221EA4A40(v14, v17);
  *(v18 + *(v16 + 20)) = v1;
  swift_willThrow();

  v20 = v0[23];
  v19 = v0[24];
  v22 = v0[19];
  v21 = v0[20];
  v24 = v0[17];
  v23 = v0[18];
  v25 = v0[15];
  v26 = v0[12];
  v27 = v0[9];
  v28 = v0[6];

  v29 = v0[1];

  return v29();
}

uint64_t sub_221F0EB38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for IDSErrorAction(0);
  v3[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F0EBD0, 0, 0);
}

uint64_t sub_221F0EBD0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[7] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC26F0, 0xD000000000000027, 0x8000000221FC2790);
  v2 = swift_task_alloc();
  v0[8] = v2;
  *v2 = v0;
  v2[1] = sub_221F0ECE4;
  v3 = v0[4];

  return sub_221F078F0();
}

uint64_t sub_221F0ECE4()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_221F0FBB4;
  }

  else
  {
    v3 = sub_221F0EDF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F0EDF8()
{
  v1 = [objc_msgSend(*(v0 + 24) destination)];
  swift_unknownObjectRelease();
  v2 = sub_221FB64F8();

  sub_221F058C0(v2);
  v4 = v3;

  if (v4)
  {
    v5 = sub_221FB62E8();

    v6 = ASSanitizedContactDestination();

    v7 = sub_221FB6318();
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v10 = swift_allocObject();
    *(v0 + 80) = v10;
    *(v10 + 16) = xmmword_221FB81A0;
    *(v10 + 32) = v7;
    *(v10 + 40) = v9;
    v11 = swift_task_alloc();
    *(v0 + 88) = v11;
    *v11 = v0;
    v11[1] = sub_221F0F0F8;
    v12 = *(v0 + 32);

    return sub_221F0734C(v10);
  }

  else
  {
    v14 = *(v0 + 56);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_221E93000, v15, v16, "Unable to get sender address for repair response", v17, 2u);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    v19 = *(v0 + 40);
    v18 = *(v0 + 48);

    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v20 = swift_allocError();
    *v21 = 48;
    v22 = *(v0 + 48);
    v23 = type metadata accessor for IDSError(0);
    sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
    swift_allocError();
    v25 = v24;
    sub_221EA4A40(v22, v24);
    *(v25 + *(v23 + 20)) = v20;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_221F0F0F8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 88);
  v8 = *v2;
  v3[12] = a1;
  v3[13] = v1;

  if (v1)
  {
    v5 = sub_221F0FCB0;
  }

  else
  {
    v6 = v3[10];

    v5 = sub_221F0F214;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F0F214()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  v3 = [*(v0 + 96) relationshipStorage];
  *(v0 + 112) = [v3 secureCloudRelationship];

  __swift_project_boxed_opaque_existential_0Tm(v1 + 37, v1[40]);
  v4 = sub_221FB5F38();
  *(v0 + 120) = v4;
  v5 = v1[15];
  *(v0 + 128) = v5;
  v6 = swift_task_alloc();
  *(v0 + 136) = v6;
  *v6 = v0;
  v6[1] = sub_221F0F318;

  return sub_221E98A68(v4, v5);
}

uint64_t sub_221F0F318(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  v7 = *(v4 + 120);
  if (v1)
  {

    v8 = sub_221F0F674;
  }

  else
  {

    v8 = sub_221F0F458;
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

uint64_t sub_221F0F458()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 32);
  [*(v0 + 112) insertEventWithType_];
  __swift_project_boxed_opaque_existential_0Tm((v2 + 256), *(v2 + 280));
  v3 = v1;
  v4 = swift_task_alloc();
  *(v0 + 152) = v4;
  *v4 = v0;
  v4[1] = sub_221F0F538;
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);

  return sub_221EBAEA8(v6, v1, v5, 0);
}

uint64_t sub_221F0F538(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 152);
  v6 = *v2;
  *(v4 + 160) = a1;
  *(v4 + 168) = v1;

  if (v1)
  {
    v7 = sub_221F0F9C8;
  }

  else
  {
    v7 = sub_221F0F860;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221F0F674()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 144);
  v3 = *(v0 + 56);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair response: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);

  swift_storeEnumTagMultiPayload();
  v13 = *(v0 + 48);
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v2;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221F0F860()
{
  v2 = (v0 + 160);
  v1 = *(v0 + 160);
  v3 = *(v0 + 56);

  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 160);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v7;
    *v9 = v7;
    _os_log_impl(&dword_221E93000, v5, v6, "Complete repair for response %@", v8, 0xCu);
    sub_221E9CFE8(v9, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v9, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
    v2 = (v0 + 96);
  }

  else
  {

    v5 = *(v0 + 96);
  }

  v10 = *v2;
  v11 = *(v0 + 48);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221F0F9C8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 168);
  v3 = *(v0 + 56);
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair response: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);

  swift_storeEnumTagMultiPayload();
  v13 = *(v0 + 48);
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v2;
  swift_willThrow();

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221F0FBB4()
{
  v2 = v0[5];
  v1 = v0[6];
  swift_storeEnumTagMultiPayload();
  v3 = v0[9];
  v4 = v0[6];
  v5 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v7 = v6;
  sub_221EA4A40(v4, v6);
  *(v7 + *(v5 + 20)) = v3;
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_221F0FCB0()
{
  v1 = v0[10];

  v2 = v0[13];
  v3 = v0[7];
  v4 = v2;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65C8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_221E93000, v5, v6, "Failed to handle repair response: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v12 = v0[5];
  v11 = v0[6];

  swift_storeEnumTagMultiPayload();
  v13 = v0[6];
  v14 = type metadata accessor for IDSError(0);
  sub_221F10D24(&qword_27CFEC100, type metadata accessor for IDSError);
  swift_allocError();
  v16 = v15;
  sub_221EA4A40(v13, v15);
  *(v16 + *(v14 + 20)) = v2;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_221F0FEA4(uint64_t a1, unint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v21 = MEMORY[0x277D84FA0];

    sub_221FB6828();
    if (sub_221FB6898())
    {
      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      while (1)
      {
        swift_dynamicCast();
        v5 = sub_221F086BC(&v20, a2);
        if (v2)
        {
          break;
        }

        v6 = v20;
        if (v5)
        {
          v7 = *(v4 + 16);
          if (*(v4 + 24) <= v7)
          {
            sub_221F161CC(v7 + 1);
          }

          v4 = v21;
          v8 = *(v21 + 40);
          result = sub_221FB6748();
          v10 = v4 + 56;
          v11 = -1 << *(v4 + 32);
          v12 = result & ~v11;
          v13 = v12 >> 6;
          if (((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6))) != 0)
          {
            v14 = __clz(__rbit64((-1 << v12) & ~*(v4 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v15 = 0;
            v16 = (63 - v11) >> 6;
            do
            {
              if (++v13 == v16 && (v15 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v17 = v13 == v16;
              if (v13 == v16)
              {
                v13 = 0;
              }

              v15 |= v17;
              v18 = *(v10 + 8 * v13);
            }

            while (v18 == -1);
            v14 = __clz(__rbit64(~v18)) + (v13 << 6);
          }

          *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          *(*(v4 + 48) + 8 * v14) = v6;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_221FB6898())
        {
          goto LABEL_21;
        }
      }

      v19 = v20;
      swift_bridgeObjectRelease_n();
    }

    else
    {
LABEL_21:
      swift_bridgeObjectRelease_n();
    }
  }

  else
  {
    v4 = sub_221F112EC(a1, a2);
  }

  return v4;
}

uint64_t sub_221F10104(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277D84FA0];
    v23 = MEMORY[0x277D84FA0];
    sub_221FB6828();
    if (sub_221FB6898())
    {
      sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
      while (1)
      {
        swift_dynamicCast();
        v6 = a1(&v22);
        if (v3)
        {
          break;
        }

        v7 = v22;
        if (v6)
        {
          v8 = *(v4 + 16);
          if (*(v4 + 24) <= v8)
          {
            sub_221F161CC(v8 + 1);
          }

          v4 = v23;
          v9 = *(v23 + 40);
          result = sub_221FB6748();
          v11 = v4 + 56;
          v12 = -1 << *(v4 + 32);
          v13 = result & ~v12;
          v14 = v13 >> 6;
          if (((-1 << v13) & ~*(v4 + 56 + 8 * (v13 >> 6))) != 0)
          {
            v15 = __clz(__rbit64((-1 << v13) & ~*(v4 + 56 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v16 = 0;
            v17 = (63 - v12) >> 6;
            do
            {
              if (++v14 == v17 && (v16 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v18 = v14 == v17;
              if (v14 == v17)
              {
                v14 = 0;
              }

              v16 |= v18;
              v19 = *(v11 + 8 * v14);
            }

            while (v19 == -1);
            v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          }

          *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
          *(*(v4 + 48) + 8 * v15) = v7;
          ++*(v4 + 16);
        }

        else
        {
        }

        if (!sub_221FB6898())
        {
          goto LABEL_21;
        }
      }

      v21 = v22;
    }

    else
    {
LABEL_21:
    }
  }

  else
  {
    v20 = sub_221F10344(a1, a2, a3);
    if (!v3)
    {
      return v20;
    }
  }

  return v4;
}

uint64_t sub_221F10344(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v30 = a1;
  v32[1] = *MEMORY[0x277D85DE8];
  v5 = *(a3 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v26 = v6;
    v31 = v3;
    v28 = &v26;
    MEMORY[0x28223BE20](a1);
    v27 = &v26 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v7);
    v29 = 0;
    v8 = 0;
    v6 = v4 + 56;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v8 << 6);
      v17 = v4;
      v32[0] = *(*(v4 + 48) + 8 * v16);
      v18 = v32[0];
      v3 = v31;
      v19 = v30(v32);
      v31 = v3;
      if (v3)
      {

        result = swift_willThrow();
        goto LABEL_18;
      }

      v20 = v19;

      v4 = v17;
      if (v20)
      {
        *&v27[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          result = sub_221F77424(v27, v26, v29, v4);
          goto LABEL_18;
        }
      }
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_17;
      }

      v15 = *(v6 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_221F107FC(v24, v6, v4, v30);

  result = MEMORY[0x223DADA80](v24, -1, -1);
  if (!v3)
  {
    result = v25;
  }

LABEL_18:
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_221F105F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  v20 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v23 = *(*(a3 + 48) + 8 * v14);
    v15 = v23;
    v16 = a4(&v23);

    if (v4)
    {
      return;
    }

    if (v16)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_16:

        sub_221F77424(a1, a2, v20, a3);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_221F10760(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_221F1118C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_221F107FC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_221F105F4(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_221F1088C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC040, &qword_221FBA1B0);
    v2 = sub_221FB6AA8();
    v20 = v2;
    sub_221FB6A18();
    v3 = sub_221FB6A48();
    if (v3)
    {
      v4 = v3;
      sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_221ED5E50(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_221FB6748();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_221FB6A48();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_221F10AD8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC058, &qword_221FBA1C8);
    v2 = sub_221FB6AA8();
    v20 = v2;
    sub_221FB6A18();
    v3 = sub_221FB6A48();
    if (v3)
    {
      v4 = v3;
      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
      v5 = v4;
      do
      {
        v18 = v5;
        swift_dynamicCast();
        sub_221E9D138(0, &qword_281306E80, 0x277CE9108);
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          sub_221ED60E0(v13 + 1, 1);
        }

        v2 = v20;
        v6 = *(v20 + 40);
        result = sub_221FB6748();
        v8 = v20 + 64;
        v9 = -1 << *(v20 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v20 + 64 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v20 + 48) + 8 * v12) = v19;
        *(*(v20 + 56) + 8 * v12) = v18;
        ++*(v20 + 16);
        v5 = sub_221FB6A48();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_221F10D24(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_221F10D6C()
{
  result = qword_281306E40;
  if (!qword_281306E40)
  {
    sub_221E9D138(255, &qword_281306E50, 0x277CE90E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306E40);
  }

  return result;
}

void sub_221F10DD4(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v28 - v6;
  v39 = MEMORY[0x277D84F90];
  v29 = v2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221F10D6C();
    sub_221FB6538();
    a1 = v34;
    v8 = v35;
    v10 = v36;
    v9 = v37;
    v11 = v38;
  }

  else
  {
    v12 = -1 << *(a1 + 32);
    v8 = a1 + 56;
    v10 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = v14 & *(a1 + 56);

    v9 = 0;
  }

  v28[1] = v10;
  v15 = MEMORY[0x277D84F90];
LABEL_8:
  v30 = v15;
  while (a1 < 0)
  {
    v19 = sub_221FB6898();
    if (!v19 || (v32 = v19, sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v18 = v33) == 0))
    {
LABEL_26:
      sub_221E96470();
      return;
    }

LABEL_18:
    v20 = [v18 relationshipStorage];
    v21 = [v20 legacyRelationship];

    v22 = [v21 UUID];
    if (v22)
    {
      v23 = v22;
      sub_221FB5C18();

      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    v25 = sub_221FB5C38();
    (*(*(v25 - 8) + 56))(v7, v24, 1, v25);
    v26 = sub_221F05E2C(v7, v31);
    sub_221E9CFE8(v7, &qword_27CFEBD50, &unk_221FB9FB0);

    if (v26)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v27 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      v15 = v39;
      goto LABEL_8;
    }
  }

  v16 = v9;
  v17 = v11;
  if (v11)
  {
LABEL_14:
    v11 = (v17 - 1) & v17;
    v18 = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v17)))));
    if (!v18)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= ((v10 + 64) >> 6))
    {
      goto LABEL_26;
    }

    v17 = *(v8 + 8 * v9);
    ++v16;
    if (v17)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_221F1118C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v21 = 0;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v23 = *(*(a3 + 48) + 8 * v15);
    v16 = v23;
    v17 = sub_221F086BC(&v23, a4);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
LABEL_16:

        sub_221F77424(a1, a2, v21, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_221F112EC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v31[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v30 = a2;

  if (v6 > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v7;
    v28 = &v25;
    MEMORY[0x28223BE20](v9);
    v27 = &v25 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v8);
    v29 = 0;
    v10 = 0;
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v7 = v12 & *(a1 + 56);
    v8 = (v11 + 63) >> 6;
    while (v7)
    {
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v16 = v13 | (v10 << 6);
      v31[0] = *(*(a1 + 48) + 8 * v16);
      v17 = v31[0];
      v18 = sub_221F086BC(v31, v30);
      if (v3)
      {

        swift_willThrow();
        goto LABEL_18;
      }

      v19 = v18;

      if (v19)
      {
        *&v27[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_17:
          v10 = sub_221F77424(v27, v26, v29, a1);
          goto LABEL_18;
        }
      }
    }

    v14 = v10;
    while (1)
    {
      v10 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v10 >= v8)
      {
        goto LABEL_17;
      }

      v15 = *(a1 + 56 + 8 * v10);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v7 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = v30;

  v10 = sub_221F10760(v23, v7, a1, v24);

  MEMORY[0x223DADA80](v23, -1, -1);
LABEL_18:

  v21 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t sub_221F1159C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  return sub_221FB6758() & 1;
}

uint64_t sub_221F1162C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
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

uint64_t sub_221F11674(uint64_t result, int a2, int a3)
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221F11744(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v16 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v6 = 0;
    v11 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DACD50](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v15 = v7;
      a1(&v14, &v15);
      if (v3)
      {

        return v11;
      }

      if (v14)
      {
        MEMORY[0x223DAC7E0]();
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v12 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_221FB6458();
        }

        sub_221FB6478();
        v11 = v16;
      }

      ++v6;
      if (v9 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_221F118F0(void (*a1)(__int128 *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_221FB6868())
  {
    v6 = 0;
    v21 = v4 & 0xFFFFFFFFFFFFFF8;
    v22 = v4 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v20 = v4;
    while (1)
    {
      if (v22)
      {
        v9 = MEMORY[0x223DACD50](v6, v4);
      }

      else
      {
        if (v6 >= *(v21 + 16))
        {
          goto LABEL_19;
        }

        v9 = *(v4 + 8 * v6 + 32);
      }

      v10 = v9;
      v11 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v30 = v9;
      a1(&v26, &v30);
      if (v3)
      {

        return v7;
      }

      if (v26)
      {
        v25 = v26;
        v12 = i;
        v13 = v27;
        v24 = v28;
        v14 = v29;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_221EF3814(0, *(v7 + 2) + 1, 1, v7);
        }

        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        v17 = v25;
        if (v16 >= v15 >> 1)
        {
          v18 = sub_221EF3814((v15 > 1), v16 + 1, 1, v7);
          v17 = v25;
          v7 = v18;
        }

        *(v7 + 2) = v16 + 1;
        v8 = &v7[48 * v16];
        *(v8 + 2) = v17;
        *(v8 + 6) = v13;
        *(v8 + 56) = v24;
        v8[72] = v14;
        v4 = v20;
        i = v12;
      }

      ++v6;
      if (v11 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x277D84F90];
}

double sub_221F11AD8@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = *(a2 + 40);
  v13 = [v11 friendUUID];
  sub_221FB5C18();

  v14 = sub_221FB5BF8();
  (*(v7 + 8))(v10, v6);
  v15 = [v12 contactWithUUID_];

  if (v15)
  {
    v16 = sub_221F55AF0(v15);
    if (v16)
    {
      v17 = v16;
      v18 = [v15 relationshipStorage];
      v19 = [v18 secureCloudRelationship];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_221FB81B0;
      *(v20 + 32) = v17;

      v22 = MEMORY[0x277D84F90];
      *a3 = v20;
      *(a3 + 8) = v22;
      *(a3 + 24) = 0;
      *(a3 + 32) = 0;
      *(a3 + 16) = v19;
      *(a3 + 40) = 6;
      return result;
    }
  }

  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v23 = sub_221FB61D8();
  __swift_project_value_buffer(v23, qword_281307DF0);
  v24 = v11;
  v25 = sub_221FB61B8();
  v26 = sub_221FB65A8();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412290;
    *(v27 + 4) = v24;
    *v28 = v24;
    v29 = v24;
    _os_log_impl(&dword_221E93000, v25, v26, "Not pushing updates for invalid competition list %@", v27, 0xCu);
    sub_221EA0558(v28);
    MEMORY[0x223DADA80](v28, -1, -1);
    MEMORY[0x223DADA80](v27, -1, -1);
  }

  result = 0.0;
  *(a3 + 25) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_221F11DFC()
{
  v1 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  v2 = off_28355EF18();
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  v4 = sub_221F118F0(sub_221F1267C, v3, v2);

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t sub_221F11EF4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_221F11F14, 0, 0);
}

uint64_t sub_221F11F14()
{
  v1 = v0[3];
  v2 = sub_221F12048(v0[2]);
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  off_28355EF30(v2, &type metadata for CompetitionCoordinator, &off_28355EF08);

  v3 = v0[1];

  return v3();
}

uint64_t sub_221F11FC4(uint64_t a1)
{
  v2 = sub_221F12048(a1);
  __swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
  off_28355EF38(v2, &type metadata for CompetitionCoordinator, &off_28355EF08);
}

uint64_t sub_221F12048(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v29 = a1 + 32;
  v2 = MEMORY[0x277D84F90];
  v3 = &unk_27CFEC270;
  while (1)
  {
    v5 = *(v29 + 48 * v1);
    v6 = v5 >> 62;
    if (v5 >> 62)
    {
      if (v5 < 0)
      {
        v26 = *(v29 + 48 * v1);
      }

      v7 = sub_221FB6868();
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v8 = v2 >> 62;
    if (v2 >> 62)
    {
      v27 = sub_221FB6868();
      v10 = v27 + v7;
      if (__OFADD__(v27, v7))
      {
LABEL_36:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v9 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v9 + v7;
      if (__OFADD__(v9, v7))
      {
        goto LABEL_36;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v7;
    if (result)
    {
      if (v8)
      {
        goto LABEL_16;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v10 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if (v8)
      {
LABEL_16:
        sub_221FB6868();
        goto LABEL_17;
      }

      v11 = v2 & 0xFFFFFFFFFFFFFF8;
    }

    v12 = *(v11 + 16);
LABEL_17:
    result = sub_221FB6998();
    v2 = result;
    v11 = result & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v13 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v6)
    {
      break;
    }

    v15 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_3;
    }

LABEL_22:
    if (((v14 >> 1) - v13) < v34)
    {
      goto LABEL_40;
    }

    v31 = v1;
    v32 = v2;
    v17 = v11 + 8 * v13 + 32;
    v28 = v11;
    if (v6)
    {
      if (v15 < 1)
      {
        goto LABEL_42;
      }

      sub_221EAB9F4(&qword_27CFEC278, v3, &qword_221FBB648);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_221FBB648);
        v19 = v3;
        v20 = sub_221F123D4(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
      swift_arrayInitWithCopy();
    }

    v1 = v31;
    v2 = v32;
    if (v34 >= 1)
    {
      v23 = *(v28 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_41;
      }

      *(v28 + 16) = v25;
    }

LABEL_4:
    if (++v1 == v30)
    {
      return v2;
    }
  }

  v16 = v11;
  result = sub_221FB6868();
  v11 = v16;
  v15 = result;
  if (result)
  {
    goto LABEL_22;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_221F12334(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_221FB6868();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_221FB6998();
  *v1 = result;
  return result;
}

uint64_t (*sub_221F123D4(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DACD50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_221F12F74;
  }

  __break(1u);
  return result;
}

void (*sub_221F12454(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x223DACD50](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_221F124D4;
  }

  __break(1u);
  return result;
}

uint64_t sub_221F124DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC278, &qword_27CFEC270, &qword_221FBB648);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC270, &qword_221FBB648);
            v9 = sub_221F123D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221F12698(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC2B8, &qword_27CFEC2B0, &qword_221FBB670);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2B0, &qword_221FBB670);
            v9 = sub_221F123D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_221E9D138(0, &qword_27CFEB908, 0x277CBC680);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221F12838(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
            v9 = sub_221F123D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221F129D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC298, &qword_27CFEC290, &qword_221FBB658);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC290, &qword_221FBB658);
            v9 = sub_221F123D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_221E9D138(0, &unk_281306F10, 0x277CBC5E8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221F12B78(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC288, &qword_27CFEC280, &qword_221FBB650);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC280, &qword_221FBB650);
            v9 = sub_221F123D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221F12D18(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221FB6868();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221FB6868();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221EAB9F4(&qword_27CFEC2A8, &qword_27CFEC2A0, &qword_221FBC510);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2A0, &qword_221FBC510);
            v9 = sub_221F123D4(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221F12EB8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_221F12F00(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_221F12F7C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a1;
  v5[8] = a3;
  v7 = sub_221FB5C38();
  v5[11] = v7;
  v8 = *(v7 - 8);
  v5[12] = v8;
  v9 = *(v8 + 64) + 15;
  v5[13] = swift_task_alloc();
  v10 = swift_task_alloc();
  v11 = *a2;
  v5[14] = v10;
  v5[15] = v11;

  return MEMORY[0x2822009F8](sub_221F13054, 0, 0);
}

id sub_221F13054()
{
  result = [*(v0 + 120) secureCloudZoneName];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = result;
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  sub_221FB6318();

  v5 = *MEMORY[0x277CBBF28];
  sub_221FB6318();
  *(v0 + 128) = sub_221FB65D8();
  sub_221EA4AB4(v4 + 40, v0 + 16);
  v6 = __swift_project_boxed_opaque_existential_0Tm((v0 + 16), *(v0 + 40));
  result = [v3 UUID];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v7 = result;
  v8 = *(v0 + 112);
  v9 = *(v0 + 88);
  v10 = *(v0 + 96);
  sub_221FB5C18();

  v11 = sub_221FB5BE8();
  v13 = v12;
  *(v0 + 136) = v12;
  v14 = *(v10 + 8);
  *(v0 + 144) = v14;
  *(v0 + 152) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v8, v9);
  v15 = *v6;
  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = sub_221F1321C;
  v17 = *(v0 + 72);

  return sub_221F92A3C(v11, v13, v17);
}

uint64_t sub_221F1321C(uint64_t a1)
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 136);
  v5 = *v1;
  *(*v1 + 168) = a1;

  return MEMORY[0x2822009F8](sub_221F1333C, 0, 0);
}

void sub_221F1333C()
{
  v105 = v0;
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v103 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_52:
    if (*(v0 + 80) < 0)
    {
      v45 = *(v0 + 80);
    }

    v2 = sub_221FB6868();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  v97 = v0;
  if (v2)
  {
    v4 = 0;
    v5 = *(v0 + 168);
    v98 = v1 & 0xFFFFFFFFFFFFFF8;
    v100 = v1 & 0xC000000000000001;
    v6 = *(v0 + 80) + 32;
    v0 = v5 + 56;
    while (1)
    {
      if (v100)
      {
        v8 = MEMORY[0x223DACD50](v4, *(v97 + 80));
      }

      else
      {
        if (v4 >= *(v98 + 16))
        {
          goto LABEL_51;
        }

        v8 = *(v6 + 8 * v4);
      }

      v9 = v8;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v11 = [v8 templateUniqueName];
      if (!v11)
      {
        break;
      }

      v12 = v11;
      v13 = sub_221FB6318();
      v15 = v14;

      if (*(v5 + 16) && (v16 = *(v5 + 40), sub_221FB6C38(), sub_221FB6358(), v17 = sub_221FB6C58(), v18 = -1 << *(v5 + 32), v1 = v17 & ~v18, ((*(v0 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) != 0))
      {
        v19 = ~v18;
        while (1)
        {
          v20 = (*(v5 + 48) + 16 * v1);
          v21 = *v20 == v13 && v20[1] == v15;
          if (v21 || (sub_221FB6B58() & 1) != 0)
          {
            break;
          }

          v1 = (v1 + 1) & v19;
          if (((*(v0 + ((v1 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v1) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        if (v4 == v2)
        {
LABEL_24:
          v22 = v103;
          v0 = v97;
          v3 = MEMORY[0x277D84F90];
          goto LABEL_26;
        }
      }

      else
      {
LABEL_5:

        sub_221FB69B8();
        v7 = *(v103 + 16);
        sub_221FB69E8();
        sub_221FB69F8();
        v1 = &v103;
        sub_221FB69C8();
        if (v4 == v2)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
    goto LABEL_93;
  }

  v22 = MEMORY[0x277D84F90];
LABEL_26:
  v23 = *(v0 + 168);

  if ((v22 & 0x8000000000000000) == 0 && (v22 & 0x4000000000000000) == 0)
  {
    v24 = *(v22 + 16);
    if (v24)
    {
      v104[0] = v3;
      sub_221FB69D8();
      v25 = v24;
      goto LABEL_30;
    }

LABEL_59:
    v48 = *(v0 + 56);

    *(v48 + 25) = 0u;
    *v48 = 0u;
    v48[1] = 0u;
    goto LABEL_84;
  }

  v46 = sub_221FB6868();
  if (!v46)
  {
    goto LABEL_59;
  }

  v24 = v46;
  v47 = sub_221FB6868();
  v38 = MEMORY[0x277D84F90];
  if (!v47)
  {
    goto LABEL_91;
  }

  v25 = v47;
  v104[0] = MEMORY[0x277D84F90];
  sub_221FB69D8();
  if (v25 < 0)
  {
    __break(1u);
    goto LABEL_59;
  }

LABEL_30:
  v26 = 0;
  v27 = v22 & 0xC000000000000001;
  do
  {
    if (v27)
    {
      v28 = MEMORY[0x223DACD50](v26, v22);
    }

    else
    {
      v28 = *(v22 + 8 * v26 + 32);
    }

    v29 = v28;
    ++v26;
    v30 = [v28 recordWithZoneID:*(v0 + 128) recordEncryptionType:1];

    sub_221FB69B8();
    v31 = *(v104[0] + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    sub_221FB69C8();
  }

  while (v25 != v26);
  v99 = v104[0];
  v104[0] = MEMORY[0x277D84F90];
  sub_221FB69D8();
  v32 = objc_opt_self();
  v33 = 0;
  do
  {
    if (v27)
    {
      v34 = MEMORY[0x223DACD50](v33, v22);
    }

    else
    {
      v34 = *(v22 + 8 * v33 + 32);
    }

    v35 = v34;
    ++v33;
    v36 = [v32 achievementCompletionEventWithAchievement_];

    sub_221FB69B8();
    v37 = *(v104[0] + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    sub_221FB69C8();
  }

  while (v25 != v33);
  v38 = v104[0];
  v0 = v97;
  v3 = MEMORY[0x277D84F90];
  while (1)
  {
    v101 = v24;
    if (v38 >> 62)
    {
      v39 = sub_221FB6868();
      if (!v39)
      {
LABEL_61:

        v96 = MEMORY[0x277D84F90];
        goto LABEL_62;
      }
    }

    else
    {
      v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v39)
      {
        goto LABEL_61;
      }
    }

    v104[0] = v3;
    sub_221FB69D8();
    if ((v39 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_91:
    v99 = v38;
  }

  v40 = 0;
  do
  {
    if ((v38 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x223DACD50](v40, v38);
    }

    else
    {
      v41 = *(v38 + 8 * v40 + 32);
    }

    v42 = v41;
    ++v40;
    v43 = [v41 recordWithZoneID:*(v0 + 128) recordEncryptionType:1];

    sub_221FB69B8();
    v44 = *(v104[0] + 16);
    sub_221FB69E8();
    sub_221FB69F8();
    sub_221FB69C8();
  }

  while (v39 != v40);

  v96 = v104[0];
LABEL_62:
  v49 = 0;
  v50 = MEMORY[0x277D84F90];
  do
  {
    v51 = v49;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v52 = MEMORY[0x223DACD50](v51, v22);
        v49 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
          goto LABEL_87;
        }
      }

      else
      {
        if (v51 >= *(v22 + 16))
        {
          goto LABEL_88;
        }

        v52 = *(v22 + 8 * v51 + 32);
        v49 = v51 + 1;
        if (__OFADD__(v51, 1))
        {
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          goto LABEL_89;
        }
      }

      v53 = v52;
      v54 = [v53 templateUniqueName];
      if (v54)
      {
        break;
      }

      ++v51;
      if (v49 == v24)
      {
        goto LABEL_78;
      }
    }

    v55 = v54;
    v56 = sub_221FB6318();
    v58 = v57;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v50 = sub_221EF3C20(0, *(v50 + 2) + 1, 1, v50);
    }

    v60 = *(v50 + 2);
    v59 = *(v50 + 3);
    if (v60 >= v59 >> 1)
    {
      v50 = sub_221EF3C20((v59 > 1), v60 + 1, 1, v50);
    }

    *(v50 + 2) = v60 + 1;
    v61 = &v50[16 * v60];
    *(v61 + 4) = v56;
    *(v61 + 5) = v58;
    v24 = v101;
    v0 = v97;
  }

  while (v49 != v101);
LABEL_78:

  if (qword_281307080 == -1)
  {
    goto LABEL_79;
  }

LABEL_89:
  swift_once();
LABEL_79:
  v62 = *(v0 + 120);
  v63 = sub_221FB61D8();
  __swift_project_value_buffer(v63, qword_281307DF0);
  v64 = v62;

  v65 = sub_221FB61B8();
  v66 = sub_221FB65C8();
  v67 = os_log_type_enabled(v65, v66);
  v68 = *(v0 + 120);
  if (v67)
  {
    v102 = v66;
    v69 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v104[0] = v95;
    *v69 = 136315650;
    v70 = [v68 UUID];
    if (!v70)
    {
LABEL_93:
      v93 = *(v97 + 120);
      swift_bridgeObjectRelease_n();

      __break(1u);
      return;
    }

    v71 = v70;
    v0 = v97;
    v73 = *(v97 + 144);
    v72 = *(v97 + 152);
    v74 = *(v97 + 104);
    v75 = *(v97 + 88);
    v94 = *(v97 + 72);

    sub_221FB5C18();

    v76 = sub_221FB5BE8();
    v78 = v77;
    v73(v74, v75);
    v79 = sub_221EF4114(v76, v78, v104);

    *(v69 + 4) = v79;
    *(v69 + 12) = 2048;
    *(v69 + 14) = v94;
    *(v69 + 22) = 2080;
    v80 = MEMORY[0x223DAC810](v50, MEMORY[0x277D837D0]);
    v82 = sub_221EF4114(v80, v81, v104);

    *(v69 + 24) = v82;
    _os_log_impl(&dword_221E93000, v65, v102, "Creating achievement update for relationship %s with %lld: %s", v69, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v95, -1, -1);
    MEMORY[0x223DADA80](v69, -1, -1);
  }

  else
  {
  }

  v83 = *(v0 + 120);
  v84 = *(v0 + 128);
  v85 = *(v97 + 72);
  v86 = *(v97 + 56);
  v104[0] = v99;
  sub_221ED4350(v96);
  v87 = v104[0];
  v88 = v83;
  v89 = sub_221F18084(v50);

  *v86 = v87;
  *(v86 + 8) = MEMORY[0x277D84F90];
  *(v86 + 16) = v88;
  *(v86 + 24) = v85;
  *(v86 + 32) = v89;
  v0 = v97;
  *(v86 + 40) = 3;
LABEL_84:
  v91 = *(v0 + 104);
  v90 = *(v0 + 112);

  v92 = *(v0 + 8);

  v92();
}

uint64_t sub_221F13C88(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F13CA8, 0, 0);
}

uint64_t sub_221F13CA8()
{
  if ([*__swift_project_boxed_opaque_existential_0Tm((v0[4] + 80) *(v0[4] + 104))])
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
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Not updating achievements, notifications suppressed", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v5 = v0[1];
    v6 = MEMORY[0x277D84F90];

    return v5(v6);
  }

  else
  {
    v8 = v0[4];
    v9 = [*__swift_project_boxed_opaque_existential_0Tm(v8 v8[3])];
    v0[5] = v9;
    __swift_project_boxed_opaque_existential_0Tm(v8, v8[3]);
    v10 = off_283557C80();
    v0[6] = v10;
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
      if (v10 >> 62)
      {
        v15 = sub_221FB6868();
      }

      else
      {
        v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v14 + 4) = v15;

      _os_log_impl(&dword_221E93000, v12, v13, "Fetched %ld achievements for index", v14, 0xCu);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    else
    {
    }

    v16 = v0[3];
    v17 = v0[4];
    v18 = [v9 snapshotIndex];
    v0[2] = v16;
    v19 = swift_task_alloc();
    v0[7] = v19;
    v19[2] = v17;
    v19[3] = v18;
    v19[4] = v10;
    v20 = *(MEMORY[0x277CE94E0] + 4);
    v21 = swift_task_alloc();
    v0[8] = v21;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBEB8, &unk_221FBB660);
    v23 = sub_221EAB9F4(&qword_27CFEBEC0, &qword_27CFEBEB8, &unk_221FBB660);
    *v21 = v0;
    v21[1] = sub_221F14070;

    return MEMORY[0x28213AED0](&unk_221FBB740, v19, v22, &type metadata for SecureCloudUpdate, v23);
  }
}

void sub_221F14070(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[6];
    v8 = v4[7];

    v4[9] = a1;

    MEMORY[0x2822009F8](sub_221F141BC, 0, 0);
  }
}

uint64_t sub_221F141BC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_221F14224(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a2;
  v4 = sub_221FB5C38();
  *(v2 + 64) = v4;
  v5 = *(v4 - 8);
  *(v2 + 72) = v5;
  v6 = *(v5 + 64) + 15;
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = swift_task_alloc();
  *(v2 + 96) = swift_task_alloc();
  *(v2 + 104) = swift_task_alloc();
  *(v2 + 112) = *a1;
  *(v2 + 128) = *(a1 + 16);
  *(v2 + 136) = *(a1 + 24);
  *(v2 + 240) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_221F1432C, 0, 0);
}

uint64_t sub_221F1432C()
{
  if (*(v0 + 240) == 3)
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((*(v0 + 56) + 40), *(*(v0 + 56) + 64));
    v2 = *v1;
    *(v0 + 152) = *v1;

    return MEMORY[0x2822009F8](sub_221F14410, v2, 0);
  }

  else
  {
    v4 = *(v0 + 96);
    v3 = *(v0 + 104);
    v6 = *(v0 + 80);
    v5 = *(v0 + 88);

    v7 = *(v0 + 8);

    return v7();
  }
}

id sub_221F14410()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = sub_221F9273C(v0[18], v0[17], v2);
  v0[20] = v3;
  result = [v2 UUID];
  if (result)
  {
    v5 = result;
    v6 = v0[13];
    v7 = v0[8];
    v8 = v0[9];
    sub_221FB5C18();

    v9 = sub_221FB5BE8();
    v11 = v10;
    v0[21] = v10;
    v12 = *(v8 + 8);
    v0[22] = v12;
    v0[23] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v6, v7);
    v13 = swift_task_alloc();
    v0[24] = v13;
    *v13 = v0;
    v13[1] = sub_221F14560;
    v14 = v0[19];

    return sub_221ED06FC(v3, v9, v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F14560()
{
  v2 = *v1;
  v3 = *(*v1 + 192);
  v4 = *(*v1 + 168);
  v5 = *(*v1 + 160);
  v9 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v6 = *(v2 + 152);
    v7 = sub_221F147A8;
  }

  else
  {
    v7 = sub_221F146BC;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_221F146BC()
{
  v1 = v0[16];
  sub_221EA4AB4(v0[7] + 40, (v0 + 2));
  v2 = __swift_project_boxed_opaque_existential_0Tm(v0 + 2, v0[5]);
  v3 = [v1 UUID];
  if (v3)
  {
    v6 = v3;
    v8 = v0[22];
    v7 = v0[23];
    v9 = v0[12];
    v10 = v0[8];
    sub_221FB5C18();

    v0[26] = sub_221FB5BE8();
    v0[27] = v11;
    v8(v9, v10);
    v4 = *v2;
    v0[28] = *v2;
    v3 = sub_221F14AD8;
    v5 = 0;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2822009F8](v3, v4, v5);
}

id sub_221F147C4()
{
  v37 = v0;
  result = [*(v0 + 128) UUID];
  if (result)
  {
    v2 = result;
    v4 = *(v0 + 176);
    v3 = *(v0 + 184);
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    sub_221FB5C18();

    v7 = sub_221FB5BE8();
    v9 = v8;
    v4(v5, v6);
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 200);
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = sub_221FB61D8();
    __swift_project_value_buffer(v13, qword_281307DF0);
    sub_221ED4904(v12, v11, 3u);

    v14 = v10;
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    sub_221ED4948(v12, v11, 3u);

    v17 = os_log_type_enabled(v15, v16);
    v18 = *(v0 + 200);
    if (v17)
    {
      v34 = v7;
      v35 = *(v0 + 144);
      v19 = *(v0 + 136);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v36 = v22;
      *v20 = 134218754;
      *(v20 + 4) = v19;
      *(v20 + 12) = 2080;
      v23 = sub_221EF4114(v34, v9, &v36);

      *(v20 + 14) = v23;
      *(v20 + 22) = 2080;
      v24 = sub_221FB6508();
      v26 = sub_221EF4114(v24, v25, &v36);

      *(v20 + 24) = v26;
      *(v20 + 32) = 2112;
      v27 = v18;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 34) = v28;
      *v21 = v28;
      _os_log_impl(&dword_221E93000, v15, v16, "Failed to store achievement archives: index %lld, identifier: %s, names %s, error: %@)", v20, 0x2Au);
      sub_221EA0558(v21);
      MEMORY[0x223DADA80](v21, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x223DADA80](v22, -1, -1);
      MEMORY[0x223DADA80](v20, -1, -1);
    }

    else
    {
    }

    v30 = *(v0 + 96);
    v29 = *(v0 + 104);
    v32 = *(v0 + 80);
    v31 = *(v0 + 88);

    v33 = *(v0 + 8);

    return v33();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_221F14AD8()
{
  v1 = v0[28];
  v2 = sub_221ECB638(v0[26], v0[27]);

  if (!v2)
  {
    v2 = sub_221ED82D4(MEMORY[0x277D84F90]);
  }

  v0[29] = v2;

  return MEMORY[0x2822009F8](sub_221F14B6C, 0, 0);
}

uint64_t sub_221F14B6C()
{
  v47 = v0;
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 120);
  v5 = *(v0 + 128);
  v6 = *(v0 + 112);
  v7 = sub_221FB61D8();
  __swift_project_value_buffer(v7, qword_281307DF0);

  v8 = v5;
  sub_221ED4904(v3, v2, 3u);

  v9 = sub_221FB61B8();
  v10 = sub_221FB65C8();
  if (os_log_type_enabled(v9, v10))
  {
    v45 = v10;
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v13 = *(v0 + 112);
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v46 = v44;
    *v14 = 136315394;
    v15 = [v11 UUID];

    v16 = *(v0 + 232);
    if (!v15)
    {
      v43 = v0 + 136;
      v42 = *(v0 + 136);
      v41 = *(v43 + 8);

      sub_221ED4948(v42, v41, 3u);

      __break(1u);
      return result;
    }

    v17 = *(v0 + 176);
    v18 = *(v0 + 184);
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    sub_221ED4948(*(v0 + 136), *(v0 + 144), 3u);

    sub_221FB5C18();

    v21 = sub_221FB5BE8();
    v23 = v22;
    v17(v19, v20);
    v24 = sub_221EF4114(v21, v23, &v46);

    *(v14 + 4) = v24;
    *(v14 + 12) = 2080;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBF38, qword_221FBF480);
    v25 = sub_221FB6298();
    v27 = v26;

    v28 = sub_221EF4114(v25, v27, &v46);

    *(v14 + 14) = v28;
    _os_log_impl(&dword_221E93000, v9, v45, "Updated achievements for relationship %s, template names %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v29 = *(v0 + 232);
    v31 = *(v0 + 136);
    v30 = *(v0 + 144);
    v32 = *(v0 + 120);
    v33 = *(v0 + 128);
    v34 = *(v0 + 112);

    sub_221ED4948(v31, v30, 3u);
    swift_bridgeObjectRelease_n();
  }

  v36 = *(v0 + 96);
  v35 = *(v0 + 104);
  v38 = *(v0 + 80);
  v37 = *(v0 + 88);

  v39 = *(v0 + 8);

  return v39();
}

void sub_221F14EDC(uint64_t a1)
{
  v2 = sub_221FB5C38();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v7 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v32 = (v4 + 8);
    v9 = (a1 + 72);
    *&v6 = 134218498;
    v29 = v6;
    v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = v2;
    do
    {
      if (*v9 == 3)
      {
        v10 = *(v9 - 2);
        v11 = *(v9 - 1);
        v12 = [*(v9 - 3) UUID];
        if (!v12)
        {
          __break(1u);
          return;
        }

        v13 = v12;
        sub_221FB5C18();

        v14 = sub_221FB5BE8();
        v16 = v15;
        (*v32)(v7, v2);
        if (qword_281307080 != -1)
        {
          swift_once();
        }

        v17 = sub_221FB61D8();
        __swift_project_value_buffer(v17, qword_281307DF0);
        sub_221ED4904(v10, v11, 3u);

        v18 = sub_221FB61B8();
        v19 = sub_221FB65A8();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v33 = v21;
          *v20 = v29;
          *(v20 + 4) = v10;
          *(v20 + 12) = 2080;
          v22 = sub_221EF4114(v14, v16, &v33);

          *(v20 + 14) = v22;
          *(v20 + 22) = 2080;
          v23 = sub_221FB6508();
          v25 = v24;
          sub_221ED4948(v10, v11, 3u);
          v26 = sub_221EF4114(v23, v25, &v33);

          *(v20 + 24) = v26;
          _os_log_impl(&dword_221E93000, v18, v19, "Failed to push achievements: index %lld, identifier: %s, names: %s", v20, 0x20u);
          swift_arrayDestroy();
          v27 = v21;
          v2 = v31;
          MEMORY[0x223DADA80](v27, -1, -1);
          v28 = v20;
          v7 = v30;
          MEMORY[0x223DADA80](v28, -1, -1);
        }

        else
        {

          sub_221ED4948(v10, v11, 3u);
        }
      }

      v9 += 48;
      --v8;
    }

    while (v8);
  }
}

uint64_t sub_221F1521C()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 16) + 40), *(*(v0 + 16) + 64));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_221E9DA9C;

  return sub_221ECC6E0();
}

uint64_t sub_221F152D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221ECAFA0;

  return sub_221F13C88(a1);
}

uint64_t sub_221F15364(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_221F15384, 0, 0);
}

uint64_t sub_221F15384()
{
  v1 = v0[4];
  v0[2] = v0[3];
  v2 = swift_task_alloc();
  v0[5] = v2;
  *(v2 + 16) = v1;
  v3 = *(MEMORY[0x277CE94D8] + 4);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v6 = sub_221EAB9F4(&qword_27CFEBE48, &qword_27CFEBE40, &qword_221FBD750);
  *v4 = v0;
  v4[1] = sub_221F1549C;

  return MEMORY[0x28213AEC8](&unk_221FBB720, v2, v5, v6);
}

void sub_221F1549C()
{
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = *(v2 + 40);

    v6 = *(v4 + 8);

    v6();
  }
}

uint64_t sub_221F155E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E9544C;

  return sub_221F14224(a1, v4);
}

uint64_t sub_221F15684(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_221FB6C38();
  sub_221FB6358();
  v9 = sub_221FB6C58();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_221FB6B58() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_221F167E4(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_221F157F8(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_221F182A4(&qword_27CFEC2C8);
  v36 = a2;
  v13 = sub_221FB62A8();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_221F182A4(&qword_27CFEC260);
      v23 = sub_221FB62D8();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_221F16AF4(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_221F15AD4(void *a1, void *a2, unint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_221FB6878();

    if (v17)
    {

      sub_221E9D138(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v38;
    }

    else
    {
      result = sub_221FB6868();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v29 = sub_221F15D48(v15, result + 1, a5, a6, a3, a4);
        v30 = *(v29 + 16);
        if (*(v29 + 24) <= v30)
        {
          sub_221F1653C(v30 + 1, a5, a6);
        }

        v31 = v16;
        sub_221F16760(v31, v29);

        *v11 = v29;
        *a1 = v31;
        return 1;
      }
    }
  }

  else
  {
    sub_221E9D138(0, a3, a4);
    v19 = *(v14 + 40);
    v20 = sub_221FB6748();
    v21 = -1 << *(v14 + 32);
    v22 = v20 & ~v21;
    if ((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22))
    {
      v23 = ~v21;
      while (1)
      {
        v24 = *(*(v14 + 48) + 8 * v22);
        v25 = sub_221FB6758();

        if (v25)
        {
          break;
        }

        v22 = (v22 + 1) & v23;
        if (((*(v14 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v32 = *(*(v14 + 48) + 8 * v22);
      *a1 = v32;
      v33 = v32;
      return 0;
    }

    else
    {
LABEL_11:
      v26 = *v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = *v11;
      v28 = a2;
      sub_221F16964(v28, v22, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v39;
      *a1 = v28;
      return 1;
    }
  }

  return result;
}

uint64_t sub_221F15D48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_221FB6938();
    v24 = v10;
    sub_221FB6828();
    if (sub_221FB6898())
    {
      sub_221E9D138(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v18 = *(v10 + 16);
        if (*(v10 + 24) <= v18)
        {
          sub_221F1653C(v18 + 1, a3, a4);
        }

        v10 = v24;
        v11 = *(v24 + 40);
        result = sub_221FB6748();
        v13 = v24 + 56;
        v14 = -1 << *(v24 + 32);
        v15 = result & ~v14;
        v16 = v15 >> 6;
        if (((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6))) != 0)
        {
          v17 = __clz(__rbit64((-1 << v15) & ~*(v24 + 56 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v19 = 0;
          v20 = (63 - v14) >> 6;
          do
          {
            if (++v16 == v20 && (v19 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v21 = v16 == v20;
            if (v16 == v20)
            {
              v16 = 0;
            }

            v19 |= v21;
            v22 = *(v13 + 8 * v16);
          }

          while (v22 == -1);
          v17 = __clz(__rbit64(~v22)) + (v16 << 6);
        }

        *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        *(*(v24 + 48) + 8 * v17) = v23;
        ++*(v24 + 16);
      }

      while (sub_221FB6898());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_221F15F6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2C0, &qword_221FBB750);
  result = sub_221FB6928();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_221FB6C38();
      sub_221FB6358();
      result = sub_221FB6C58();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_221F161E0(uint64_t a1)
{
  v2 = v1;
  v41 = sub_221FB5C38();
  v4 = *(v41 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2D0, &qword_221FBB758);
  result = sub_221FB6928();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_221F182A4(&qword_27CFEC2C8);
      result = sub_221FB62A8();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_221F1653C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_221FB6928();
  v8 = result;
  if (*(v5 + 16))
  {
    v9 = 0;
    v10 = (v5 + 56);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = *(*(v5 + 48) + 8 * (v17 | (v9 << 6)));
      v21 = *(v8 + 40);
      result = sub_221FB6748();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v20;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero((v5 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v8;
  return result;
}

unint64_t sub_221F16760(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_221FB6748();
  v5 = -1 << *(a2 + 32);
  result = sub_221FB6808();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_221F167E4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_221F15F6C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_221F16D70();
      goto LABEL_16;
    }

    sub_221F17244(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_221FB6C38();
  sub_221FB6358();
  result = sub_221FB6C58();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_221FB6B58();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_221FB6B88();
  __break(1u);
  return result;
}

void sub_221F16964(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_221F1653C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_221F17104(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_221F17784(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_221FB6748();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_221E9D138(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_221FB6758();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_221FB6B88();
  __break(1u);
}

uint64_t sub_221F16AF4(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_221FB5C38();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_221F161E0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_221F16ECC();
      goto LABEL_12;
    }

    sub_221F1747C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_221F182A4(&qword_27CFEC2C8);
  v15 = sub_221FB62A8();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_221F182A4(&qword_27CFEC260);
      v23 = sub_221FB62D8();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_221FB6B88();
  __break(1u);
  return result;
}

void *sub_221F16D70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2C0, &qword_221FBB750);
  v2 = *v0;
  v3 = sub_221FB6918();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

void *sub_221F16ECC()
{
  v1 = v0;
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2D0, &qword_221FBB758);
  v7 = *v0;
  v8 = sub_221FB6918();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id sub_221F17104(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_221FB6918();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
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
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
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

      v18 = *(v4 + 56 + 8 * v10);
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

uint64_t sub_221F17244(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2C0, &qword_221FBB750);
  result = sub_221FB6928();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_221FB6C38();

      sub_221FB6358();
      result = sub_221FB6C58();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_221F1747C(uint64_t a1)
{
  v2 = v1;
  v37 = sub_221FB5C38();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC2D0, &qword_221FBB758);
  v10 = sub_221FB6928();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_221F182A4(&qword_27CFEC2C8);
      result = sub_221FB62A8();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_221F17784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_221FB6928();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = sub_221FB6748();
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v4 = v8;
  }

  return result;
}

uint64_t sub_221F17990(uint64_t a1, uint64_t *a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E963B4;

  return sub_221F12F7C(a1, a2, v6, v7, v8);
}

uint64_t sub_221F17A54(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v5 = sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBC5A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306E60, 0x277CBC5A0, &qword_27CFEC2E0, &qword_221FBB768);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F17BE0(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
    v5 = sub_221E9E930(&qword_281306EF8, &qword_281306F08, 0x277CE9038);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CE9038uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306F08, 0x277CE9038, &qword_27CFEC300, &qword_221FBB788);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F17D6C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    v5 = sub_221E9E930(&qword_281306EE8, &qword_281306EF0, 0x277CBC5F8);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBC5F8uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306EF0, 0x277CBC5F8, &qword_27CFEC2F8, &qword_221FBB780);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F17EF8(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_221FB6868())
  {
    v4 = sub_221E9D138(0, &qword_281306E90, 0x277CBC2A0);
    v5 = sub_221E9E930(&qword_281306E88, &qword_281306E90, 0x277CBC2A0);
    result = MEMORY[0x223DAC8E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = 0x277CBC2A0uLL;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x223DACD50](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_221F15AD4(&v12, v10, &qword_281306E90, 0x277CBC2A0, &qword_27CFEC2F0, &qword_221FBB778);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_221FB6868();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221F18084(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x223DAC8E0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_221F15684(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_221F1811C(uint64_t a1)
{
  v2 = sub_221FB5C38();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v10 = *(a1 + 16);
  v11 = sub_221F182A4(&qword_27CFEC2C8);
  result = MEMORY[0x223DAC8E0](v10, v2, v11);
  v19 = result;
  if (v10)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v7, v16, v2);
      sub_221F157F8(v9, v7);
      (*(v13 - 8))(v9, v2);
      v16 += v17;
      --v10;
    }

    while (v10);
    return v19;
  }

  return result;
}

uint64_t sub_221F182A4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_221FB5C38();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221F1835C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 48);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E96070;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221F1848C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_221F18634(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 88);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221F1874C(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 96);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221F18878(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 112);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9E350;

  return v9(a1, a2);
}

uint64_t sub_221F18990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 120);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221F18AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a8 + 8);
  v21 = (v17 + *v17);
  v18 = v17[1];
  v19 = swift_task_alloc();
  *(v8 + 16) = v19;
  *v19 = v8;
  v19[1] = sub_221E9544C;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_221F18C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[161] = v4;
  v5[160] = a4;
  v5[159] = a3;
  v5[158] = a2;
  v5[157] = a1;
  v6 = type metadata accessor for IDSErrorAction(0);
  v5[162] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v5[163] = swift_task_alloc();
  v8 = *(*(sub_221FB5BC8() - 8) + 64) + 15;
  v5[164] = swift_task_alloc();
  v9 = sub_221FB5F28();
  v5[165] = v9;
  v10 = *(v9 - 8);
  v5[166] = v10;
  v11 = *(v10 + 64) + 15;
  v5[167] = swift_task_alloc();
  v12 = sub_221FB6058();
  v5[168] = v12;
  v13 = *(v12 - 8);
  v5[169] = v13;
  v14 = *(v13 + 64) + 15;
  v5[170] = swift_task_alloc();
  v5[171] = swift_task_alloc();
  v15 = sub_221FB5C38();
  v5[172] = v15;
  v16 = *(v15 - 8);
  v5[173] = v16;
  v17 = *(v16 + 64) + 15;
  v5[174] = swift_task_alloc();
  v5[175] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221F18E14, 0, 0);
}

uint64_t sub_221F18E14()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  v0[176] = __swift_project_value_buffer(v1, qword_281307DF0);
  sub_221E9DCE8(0xD00000000000009ALL, 0x8000000221FC2890, 0xD000000000000054, 0x8000000221FC2930);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Checking number of friends", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = v0[161];

  v6 = [*__swift_project_boxed_opaque_existential_0Tm((v5 + 176) *(v5 + 200))];
  v7 = sub_221FB61B8();
  if (v6)
  {
    v8 = sub_221FB65A8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "Reached maximum number of friends", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v10 = 29;
    swift_willThrow();
    v11 = v0[175];
    v12 = v0[174];
    v13 = v0[171];
    v14 = v0[170];
    v15 = v0[167];
    v16 = v0[164];
    v17 = v0[163];

    v18 = v0[1];

    return v18();
  }

  else
  {
    v20 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_221E93000, v7, v20, "Checking account info", v21, 2u);
      MEMORY[0x223DADA80](v21, -1, -1);
    }

    v22 = v0[161];

    __swift_project_boxed_opaque_existential_0Tm(v22, v22[3]);
    v23 = swift_task_alloc();
    v0[177] = v23;
    *v23 = v0;
    v23[1] = sub_221F19170;

    return sub_221EF490C();
  }
}

uint64_t sub_221F19170(__int16 a1)
{
  v3 = *(*v2 + 1416);
  v4 = *v2;
  *(v4 + 2136) = a1;

  if (v1)
  {
    v5 = *(v4 + 1400);
    v6 = *(v4 + 1392);
    v7 = *(v4 + 1368);
    v8 = *(v4 + 1360);
    v9 = *(v4 + 1336);
    v10 = *(v4 + 1312);
    v11 = *(v4 + 1304);

    v12 = *(v4 + 8);

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F19318, 0, 0);
  }
}

uint64_t sub_221F19318()
{
  v46 = v0;
  v1 = *(v0 + 1408);
  if (*(v0 + 2136) == 5)
  {
    v2 = *(v0 + 2136) & 0xFF00;
    v3 = sub_221FB61B8();
    if (v2 == 512)
    {
      v4 = sub_221FB65C8();
      if (os_log_type_enabled(v3, v4))
      {
        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&dword_221E93000, v3, v4, "Creating participant", v5, 2u);
        MEMORY[0x223DADA80](v5, -1, -1);
      }

      v6 = *(v0 + 1288);

      v7 = __swift_project_boxed_opaque_existential_0Tm(v6 + 42, v6[45]);
      v8 = v6[20];
      *(v0 + 1424) = v8;
      v9 = *__swift_project_boxed_opaque_existential_0Tm(v7 + 5, v7[8]);
      v10 = swift_task_alloc();
      *(v0 + 1432) = v10;
      *v10 = v0;
      v10[1] = sub_221F1976C;
      v11 = *(v0 + 1264);
      v12 = *(v0 + 1256);

      return sub_221E9F708(v12, v11, v8, v9);
    }

    v23 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v23))
    {
      v24 = *(v0 + 2136);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v45[0] = v26;
      *v25 = 136315138;
      *(v0 + 2140) = v24;
      v27 = sub_221FB6328();
      v29 = sub_221EF4114(v27, v28, v45);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_221E93000, v3, v23, "Account not HSA2: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x223DADA80](v26, -1, -1);
      MEMORY[0x223DADA80](v25, -1, -1);
    }

    v30 = *(v0 + 1304);
    v31 = *(v0 + 1296);
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v32 = swift_allocError();
    *v33 = 10;
    v34 = type metadata accessor for IDSError(0);
    sub_221EA49E8();
    swift_allocError();
    v36 = v35;
    sub_221EA4A40(v30, v35);
    *(v36 + *(v34 + 20)) = v32;
  }

  else
  {
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 2136);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v45[0] = v18;
      *v17 = 136315138;
      *(v0 + 2138) = v16;
      v19 = sub_221FB6328();
      v21 = sub_221EF4114(v19, v20, v45);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_221E93000, v14, v15, "Account not singed in: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v22 = 10;
  }

  swift_willThrow();
  v37 = *(v0 + 1400);
  v38 = *(v0 + 1392);
  v39 = *(v0 + 1368);
  v40 = *(v0 + 1360);
  v41 = *(v0 + 1336);
  v42 = *(v0 + 1312);
  v43 = *(v0 + 1304);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_221F1976C(uint64_t a1)
{
  v3 = *(*v2 + 1432);
  v4 = *v2;
  v4[180] = a1;

  if (v1)
  {
    v5 = v4[175];
    v6 = v4[174];
    v7 = v4[171];
    v8 = v4[170];
    v9 = v4[167];
    v10 = v4[164];
    v11 = v4[163];

    v12 = v4[1];

    return v12();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221F19914, 0, 0);
  }
}

uint64_t sub_221F19914()
{
  v32 = v0;
  if (v0[180])
  {
    v1 = __swift_project_boxed_opaque_existential_0Tm((v0[161] + 336), *(v0[161] + 360));
    v2 = *__swift_project_boxed_opaque_existential_0Tm(v1, v1[3]);
    v3 = swift_task_alloc();
    v0[181] = v3;
    *v3 = v0;
    v3[1] = sub_221F19BD4;
    v4 = v0[178];
    v5 = v0[158];
    v6 = v0[157];

    return sub_221F99674(v6, v5, v4, v2);
  }

  else
  {
    v8 = v0[176];
    v9 = v0[158];

    v10 = sub_221FB61B8();
    v11 = sub_221FB65A8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[158];
      v13 = v0[157];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v31 = v15;
      *v14 = 136315138;
      *(v14 + 4) = sub_221EF4114(v13, v12, &v31);
      _os_log_impl(&dword_221E93000, v10, v11, "Destination %s does not have a matching secure cloud participant", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x223DADA80](v15, -1, -1);
      MEMORY[0x223DADA80](v14, -1, -1);
    }

    v16 = v0[163];
    v17 = v0[162];
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v18 = swift_allocError();
    *v19 = 12;
    v20 = type metadata accessor for IDSError(0);
    sub_221EA49E8();
    swift_allocError();
    v22 = v21;
    sub_221EA4A40(v16, v21);
    *(v22 + *(v20 + 20)) = v18;
    swift_willThrow();
    v23 = v0[175];
    v24 = v0[174];
    v25 = v0[171];
    v26 = v0[170];
    v27 = v0[167];
    v28 = v0[164];
    v29 = v0[163];

    v30 = v0[1];

    return v30();
  }
}

uint64_t sub_221F19BD4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 1448);
  v7 = *v2;
  *(v3 + 1456) = a1;
  *(v3 + 1464) = v1;

  if (v1)
  {
    v5 = sub_221F19CEC;
  }

  else
  {
    v5 = sub_221F19DB8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221F19CEC()
{
  v1 = *(v0 + 1464);
  v2 = *(v0 + 1400);
  v3 = *(v0 + 1392);
  v4 = *(v0 + 1368);
  v5 = *(v0 + 1360);
  v6 = *(v0 + 1336);
  v7 = *(v0 + 1312);
  v8 = *(v0 + 1304);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_221F19DB8()
{
  v61 = v0;
  v1 = [*(v0 + 1440) userIdentity];
  v2 = [v1 hasiCloudAccount];

  if (v2 && (v3 = [*(v0 + 1456) userIdentity], v4 = objc_msgSend(v3, sel_hasiCloudAccount), v3, v4))
  {
    v5 = *(v0 + 1408);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_221E93000, v6, v7, "Fetching or creating placeholder contact", v8, 2u);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v9 = *(v0 + 1288);
    v10 = *(v0 + 1264);
    v11 = *(v0 + 1256);

    v12 = *(v9 + 168);
    *(v0 + 1472) = v12;
    *(v0 + 1480) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB78, &unk_221FBB910);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_221FB81A0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v10;

    v14 = sub_221FB6428();

    v15 = [v12 contactWithDestinations_];

    v16 = v15;
    if (!v15)
    {
      v17 = *(v0 + 1400);
      v18 = *(v0 + 1384);
      v19 = *(v0 + 1376);
      v20 = *(v0 + 1264);
      v21 = *(v0 + 1256);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_221FB81A0;
      *(v22 + 32) = v21;
      *(v22 + 40) = v20;

      v23 = sub_221FB6428();

      sub_221FB5C28();
      v24 = sub_221FB5BF8();
      (*(v18 + 8))(v17, v19);
      v25 = [v12 createContactWithDestinations:v23 relationshipIdentifier:v24];

      v16 = v25;
    }

    v59 = *(v0 + 1424);
    v26 = *(v0 + 1288);
    v27 = *(v0 + 1264);
    v28 = *(v0 + 1256);
    v29 = v15;
    v30 = [v16 relationshipStorage];
    v31 = [v30 secureCloudRelationship];

    v32 = sub_221FB62E8();
    v33 = *MEMORY[0x277CE9230];
    *(v0 + 1488) = *MEMORY[0x277CE9230];
    v34 = v33;
    v35 = ASInsertInviteForContact();
    *(v0 + 1496) = v35;

    v36 = [v12 savePlaceholderContact_];
    sub_221FB67C8();
    swift_unknownObjectRelease();
    v37 = *__swift_project_boxed_opaque_existential_0Tm((v26 + 120), *(v26 + 144));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 2142;
    *(v0 + 24) = sub_221F1A3BC;
    v38 = swift_continuation_init();
    *(v0 + 888) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 864) = v38;
    *(v0 + 832) = MEMORY[0x277D85DD0];
    *(v0 + 840) = 1107296256;
    *(v0 + 848) = sub_221FA909C;
    *(v0 + 856) = &block_descriptor_18;
    [v37 fetchAllChangesWithPriority:2 activity:0 group:v59 completion:v0 + 832];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
    v39 = *(v0 + 1408);
    v40 = *(v0 + 1264);

    v41 = sub_221FB61B8();
    v42 = sub_221FB65A8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 1264);
      v44 = *(v0 + 1256);
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v60 = v46;
      *v45 = 136315138;
      *(v45 + 4) = sub_221EF4114(v44, v43, &v60);
      _os_log_impl(&dword_221E93000, v41, v42, "Destination %s has a participant, but no iCloud account", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      MEMORY[0x223DADA80](v46, -1, -1);
      MEMORY[0x223DADA80](v45, -1, -1);
    }

    v47 = *(v0 + 1456);
    v48 = *(v0 + 1440);
    sub_221EA4994();
    swift_allocError();
    *v49 = 6;
    swift_willThrow();

    v50 = *(v0 + 1400);
    v51 = *(v0 + 1392);
    v52 = *(v0 + 1368);
    v53 = *(v0 + 1360);
    v54 = *(v0 + 1336);
    v55 = *(v0 + 1312);
    v56 = *(v0 + 1304);

    v57 = *(v0 + 8);

    return v57();
  }
}

uint64_t sub_221F1A3BC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1504) = v2;
  if (v2)
  {
    v3 = sub_221F1AB50;
  }

  else
  {
    v3 = sub_221F1A4CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221F1A4CC()
{
  v1 = __swift_project_boxed_opaque_existential_0Tm((v0[161] + 80), *(v0[161] + 104));
  v0[189] = v1;
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(MEMORY[0x277CE9360] + 4);
  v5 = swift_task_alloc();
  v0[190] = v5;
  *v5 = v0;
  v5[1] = sub_221F1A590;

  return MEMORY[0x28213AC20](v2, v3);
}

uint64_t sub_221F1A590(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 1520);
  v5 = *v1;

  v6 = swift_task_alloc();
  *(v3 + 1528) = v6;
  *v6 = v5;
  v6[1] = sub_221F1A6E0;
  v7 = *(v3 + 1512);

  return sub_221F7C268(a1);
}

uint64_t sub_221F1A6E0(char a1)
{
  v2 = *(*v1 + 1528);
  v4 = *v1;
  *(*v1 + 2143) = a1;

  return MEMORY[0x2822009F8](sub_221F1A7E0, 0, 0);
}

uint64_t sub_221F1A7E0()
{
  v36 = v0;
  if (*(v0 + 2143) == 1)
  {
    v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 1288) + 120), *(*(v0 + 1288) + 144));
    v2 = swift_task_alloc();
    *(v0 + 1536) = v2;
    *v2 = v0;
    v2[1] = sub_221F1AC78;

    return sub_221F991FC(v1);
  }

  else
  {
    v4 = *(v0 + 1408);
    sub_221F211E0(*(v0 + 1288), v0 + 336);
    v5 = sub_221FB61B8();
    v6 = sub_221FB65C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v35 = v8;
      *v7 = 136315138;
      __swift_project_boxed_opaque_existential_0Tm((v0 + 416), *(v0 + 440));
      sub_221E94E44();
      v10 = v9;
      v11 = sub_221E9D138(0, &qword_281306F08, 0x277CE9038);
      v12 = MEMORY[0x223DAC810](v10, v11);
      v14 = v13;

      sub_221F21218(v0 + 336);
      v15 = sub_221EF4114(v12, v14, &v35);

      *(v7 + 4) = v15;
      _os_log_impl(&dword_221E93000, v5, v6, "Some devices on account not eligible for the invite service: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x223DADA80](v8, -1, -1);
      MEMORY[0x223DADA80](v7, -1, -1);
    }

    else
    {

      sub_221F21218(v0 + 336);
    }

    v16 = *(v0 + 1496);
    v17 = *(v0 + 1472);
    v18 = *(v0 + 1456);
    v19 = *(v0 + 1440);
    v20 = *(v0 + 1304);
    v21 = *(v0 + 1296);
    swift_storeEnumTagMultiPayload();
    sub_221EA4994();
    v22 = swift_allocError();
    *v23 = 49;
    v24 = type metadata accessor for IDSError(0);
    sub_221EA49E8();
    swift_allocError();
    v26 = v25;
    sub_221EA4A40(v20, v25);
    *(v26 + *(v24 + 20)) = v22;
    swift_willThrow();
    __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
    [v17 removePlaceholderContactWithToken_];
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
    v27 = *(v0 + 1400);
    v28 = *(v0 + 1392);
    v29 = *(v0 + 1368);
    v30 = *(v0 + 1360);
    v31 = *(v0 + 1336);
    v32 = *(v0 + 1312);
    v33 = *(v0 + 1304);

    v34 = *(v0 + 8);

    return v34();
  }
}

uint64_t sub_221F1AB50()
{
  v1 = v0[188];
  v2 = v0[187];
  v3 = v0[184];
  v4 = v0[182];
  v5 = v0[180];
  swift_willThrow();
  __swift_project_boxed_opaque_existential_0Tm(v0 + 144, v0[147]);
  [v3 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  v6 = v0[188];
  v7 = v0[175];
  v8 = v0[174];
  v9 = v0[171];
  v10 = v0[170];
  v11 = v0[167];
  v12 = v0[164];
  v13 = v0[163];

  v14 = v0[1];

  return v14();
}

uint64_t sub_221F1AC78(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 1536);
  v8 = *v3;
  v4[193] = a1;
  v4[194] = a2;
  v4[195] = v2;

  if (v2)
  {
    v6 = sub_221F1B9C4;
  }

  else
  {
    v6 = sub_221F1AD94;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_221F1AD94()
{
  v1 = *(v0 + 1408);
  if (!*(v0 + 1552))
  {
    v29 = sub_221FB61B8();
    v30 = sub_221FB65C8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_221E93000, v29, v30, "Unable to fetch CloudKit address", v31, 2u);
      MEMORY[0x223DADA80](v31, -1, -1);
    }

    v24 = *(v0 + 1496);
    v25 = *(v0 + 1472);
    v26 = *(v0 + 1456);
    v27 = *(v0 + 1440);

    sub_221EA4994();
    swift_allocError();
    *v32 = 20;
    swift_willThrow();
    goto LABEL_36;
  }

  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Fetching or creating actual contact", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v0 + 1480);
  v6 = *(v0 + 1472);
  v7 = *(v0 + 1264);
  v8 = *(v0 + 1256);

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_221FB81A0;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;

  v10 = sub_221FB6428();

  v11 = [v6 contactWithDestinations_];

  v12 = &off_278497000;
  if (v11)
  {
    v13 = [v11 relationshipStorage];
    v14 = [v13 primaryRelationship];

    v15 = [v11 relationshipStorage];
    v16 = [v15 primaryRemoteRelationship];

    if ([v14 isFriendshipActive] && (objc_msgSend(v16, sel_isFriendshipActive) & 1) != 0)
    {
      v17 = *(v0 + 1408);

      v18 = v14;
      v19 = sub_221FB61B8();
      v20 = sub_221FB65A8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        *(v21 + 4) = v18;
        *v22 = v18;
        v23 = v18;
        _os_log_impl(&dword_221E93000, v19, v20, "Contact with existing active friendship exists %@", v21, 0xCu);
        sub_221EA0558(v22);
        MEMORY[0x223DADA80](v22, -1, -1);
        MEMORY[0x223DADA80](v21, -1, -1);
      }

      v24 = *(v0 + 1496);
      v25 = *(v0 + 1472);
      v26 = *(v0 + 1456);
      v27 = *(v0 + 1440);

      sub_221EA4994();
      swift_allocError();
      *v28 = 43;
      swift_willThrow();

LABEL_36:
      __swift_project_boxed_opaque_existential_0Tm((v0 + 1152), *(v0 + 1176));
      [v25 removePlaceholderContactWithToken_];
      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_0((v0 + 1152));
      v96 = *(v0 + 1400);
      v97 = *(v0 + 1392);
      v98 = *(v0 + 1368);
      v99 = *(v0 + 1360);
      v100 = *(v0 + 1336);
      v101 = *(v0 + 1312);
      v102 = *(v0 + 1304);

      v103 = *(v0 + 8);

      return v103();
    }

    v33 = *(v0 + 1488);
    v34 = *(v0 + 1264);
    v35 = *(v0 + 1256);
    v36 = [v11 relationshipStorage];
    v37 = [v36 secureCloudRelationship];

    v38 = sub_221FB62E8();
    v39 = v33;
    v40 = ASInsertInviteForContact();

    v12 = &off_278497000;
  }

  else
  {
    v41 = *(v0 + 1496);
    v40 = sub_221E9A240();
  }

  *(v0 + 1568) = v40;
  v42 = *(v0 + 1408);
  v43 = v40;
  v44 = [v43 relationshipStorage];
  v45 = [v44 v12[295]];
  *(v0 + 1576) = v45;

  v46 = [v43 relationshipStorage];
  v47 = [v46 secureCloudRemoteRelationship];
  *(v0 + 1584) = v47;

  v48 = [v43 relationshipStorage];
  v49 = [v48 legacyRelationship];
  *(v0 + 1592) = v49;

  v50 = sub_221FB61B8();
  v51 = sub_221FB65C8();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_221E93000, v50, v51, "Verifying friendship isn't hidden", v52, 2u);
    MEMORY[0x223DADA80](v52, -1, -1);
  }

  if ([v47 isFriendshipActive] && !objc_msgSend(v47, sel_isActivityDataVisible))
  {
    v106 = v45;
    v91 = *(v0 + 1408);

    v92 = sub_221FB61B8();
    v93 = sub_221FB65A8();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_221E93000, v92, v93, "Relationship already exists, but remote is hiding activity data", v94, 2u);
      MEMORY[0x223DADA80](v94, -1, -1);
    }

    v24 = *(v0 + 1496);
    v25 = *(v0 + 1472);
    v26 = *(v0 + 1456);
    v27 = *(v0 + 1440);

    sub_221EA4994();
    swift_allocError();
    *v95 = 30;
    swift_willThrow();

    goto LABEL_36;
  }

  v53 = *(v0 + 1408);
  v54 = sub_221FB61B8();
  v55 = sub_221FB65C8();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    *v56 = 0;
    _os_log_impl(&dword_221E93000, v54, v55, "Pushing relationship to iCloud", v56, 2u);
    MEMORY[0x223DADA80](v56, -1, -1);
  }

  v57 = *(v0 + 1288);

  v58 = __swift_project_boxed_opaque_existential_0Tm((v57 + 376), *(v57 + 400));
  v59 = v45;
  if ([v59 cloudType] != 1)
  {
    v80 = *(v0 + 1408);

    v81 = v59;
    v82 = sub_221FB61B8();
    v83 = sub_221FB65A8();

    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v84 = 138412290;
      *(v84 + 4) = v81;
      *v85 = v81;
      v86 = v81;
      _os_log_impl(&dword_221E93000, v82, v83, "Attempting to save legacy relationship to secure cloud container %@", v84, 0xCu);
      sub_221EA0558(v85);
      MEMORY[0x223DADA80](v85, -1, -1);
      MEMORY[0x223DADA80](v84, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v87 = 11;
    swift_willThrow();
    v88 = *(v0 + 1592);
    v89 = *(v0 + 1584);
    v90 = *(v0 + 1576);
    v24 = *(v0 + 1496);
    v25 = *(v0 + 1472);
    v26 = *(v0 + 1456);
    v27 = *(v0 + 1440);

    goto LABEL_36;
  }

  v60 = [v59 secureCloudZoneName];
  if (v60)
  {
    v61 = v60;
    v62 = *(v0 + 1408);
    sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
    sub_221FB6318();

    v63 = *MEMORY[0x277CBBF28];
    sub_221FB6318();
    v64 = sub_221FB65D8();
    v65 = [v59 recordWithZoneID:v64 recordEncryptionType:1];
    *(v0 + 1600) = v65;

    *(v0 + 1608) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
    v66 = swift_allocObject();
    *(v66 + 16) = xmmword_221FB81B0;
    *(v66 + 32) = v65;
    v67 = v65;
    v68 = MEMORY[0x277D84F90];
    sub_221ED4350(MEMORY[0x277D84F90]);
    v69 = sub_221FB61B8();
    v70 = sub_221FB65C8();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 134217984;
      v72 = v68 >> 62;
      if (v68 >> 62)
      {
        v105 = v71;
        v72 = sub_221FB6868();
        v71 = v105;
      }

      *(v71 + 4) = v72;
      v73 = v70;
      v74 = v71;
      _os_log_impl(&dword_221E93000, v69, v73, "Pushing relationship to iCloud with %ld extra records", v71, 0xCu);
      MEMORY[0x223DADA80](v74, -1, -1);
    }

    v75 = *(v0 + 1424);

    v76 = *__swift_project_boxed_opaque_existential_0Tm(v58 + 11, v58[14]);
    *(v0 + 1616) = sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v77 = sub_221FB6428();
    *(v0 + 1624) = v77;

    *(v0 + 1632) = sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v78 = sub_221FB6428();
    *(v0 + 1640) = v78;
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 1184;
    *(v0 + 88) = sub_221F1BAE4;
    v79 = swift_continuation_init();
    *(v0 + 952) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
    *(v0 + 928) = v79;
    *(v0 + 896) = MEMORY[0x277D85DD0];
    *(v0 + 904) = 1107296256;
    *(v0 + 912) = sub_221EBA78C;
    *(v0 + 920) = &block_descriptor_10;
    [v76 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v77 recordIDsToDelete:v78 priority:2 activity:0 useZoneWideSharing:1 group:v75 completion:v0 + 896];
    v60 = (v0 + 80);
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x282200938](v60);
}

uint64_t sub_221F1B9C4()
{
  v1 = v0[187];
  v2 = v0[184];
  v3 = v0[182];
  v4 = v0[180];
  __swift_project_boxed_opaque_existential_0Tm(v0 + 144, v0[147]);
  [v2 removePlaceholderContactWithToken_];
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0(v0 + 144);
  v5 = v0[195];
  v6 = v0[175];
  v7 = v0[174];
  v8 = v0[171];
  v9 = v0[170];
  v10 = v0[167];
  v11 = v0[164];
  v12 = v0[163];

  v13 = v0[1];

  return v13();
}