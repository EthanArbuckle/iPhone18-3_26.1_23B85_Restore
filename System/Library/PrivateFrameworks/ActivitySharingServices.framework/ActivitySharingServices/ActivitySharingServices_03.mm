uint64_t sub_221EDA988(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, void (**a7)(void, void))
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v32 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a7;
  _Block_copy(a7);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v19 = sub_221FB61D8();
  __swift_project_value_buffer(v19, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000070, 0x8000000221FC1D50, 0xD000000000000053, 0x8000000221FC1DD0);
  if ((a3 - 100) >= 4)
  {
    v24 = sub_221FB61B8();
    v25 = sub_221FB65A8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v33 = v27;
      *v26 = 136315138;
      v32[1] = a3;
      type metadata accessor for ASMessageType(0);
      v28 = sub_221FB6328();
      v30 = sub_221EF4114(v28, v29, &v33);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_221E93000, v24, v25, "Received unknown IDS type %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x223DADA80](v27, -1, -1);
      MEMORY[0x223DADA80](v26, -1, -1);
    }

    a7[2](a7, 0);
  }

  else
  {
    v20 = qword_221FBA2A8[a3 - 100];
    v21 = sub_221FB64C8();
    (*(*(v21 - 8) + 56))(v17, 1, 1, v21);
    v22 = swift_allocObject();
    v22[2] = 0;
    v22[3] = 0;
    v22[4] = v20;
    v22[5] = a6;
    v22[6] = a4;
    v22[7] = a5;
    v22[8] = a1;
    v22[9] = a2;
    v22[10] = sub_221EDACB8;
    v22[11] = v18;
    v23 = a6;

    sub_221EBEF90(a1, a2);

    sub_221FA7A78(0, 0, v17, &unk_221FBA298, v22);
  }
}

uint64_t sub_221EDACCC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v14 = *(v1 + 72);
  v11 = *(v1 + 88);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_221E9544C;

  return sub_221EDA488(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_221EDADCC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_221EDAE34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for IDSSendError(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for IDSSendError(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_221EDAF80()
{
  result = qword_27CFEC110;
  if (!qword_27CFEC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC110);
  }

  return result;
}

uint64_t sub_221EDAFDC()
{
  sub_221FB6C38();
  MEMORY[0x223DAD010](0);
  return sub_221FB6C58();
}

uint64_t sub_221EDB048()
{
  sub_221FB6C38();
  MEMORY[0x223DAD010](0);
  return sub_221FB6C58();
}

uint64_t sub_221EDB088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_221EDB1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_221EDB2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

void sub_221EDB428(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a1;
  v22 = MEMORY[0x277D84F90];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_221FB6828();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
    sub_221FB6538();
    v4 = v21[1];
    v5 = v21[2];
    v6 = v21[3];
    v7 = v21[4];
    v8 = v21[5];
  }

  else
  {
    v9 = -1 << *(a1 + 32);
    v5 = (a1 + 56);
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = (v11 & *(a1 + 56));

    v7 = 0;
  }

  while ((v4 & 0x8000000000000000) != 0)
  {
    v17 = sub_221FB6898();
    if (!v17 || (v20 = v17, sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), v16 = v21[0], v14 = v7, v15 = v8, !v21[0]))
    {
LABEL_22:
      sub_221E96470();
      return;
    }

LABEL_18:
    v21[0] = v16;
    sub_221EDBDE0(v21, a2, &v20);
    if (v3)
    {

      sub_221E96470();

      return;
    }

    if (v20)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
    }

    v7 = v14;
    v8 = v15;
  }

  v12 = v7;
  v13 = v8;
  v14 = v7;
  if (v8)
  {
LABEL_14:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));
    if (!v16)
    {
      goto LABEL_22;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v14 = (v12 + 1);
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= ((v6 + 64) >> 6))
    {
      goto LABEL_22;
    }

    v13 = v5[v14];
    ++v12;
    if (v13)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_221EDB6E8(uint64_t a1)
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
  while (v1 < 0)
  {
    if (!sub_221FB6898() || (sub_221E9D138(0, &qword_281306E50, 0x277CE90E8), swift_dynamicCast(), (v11 = v18) == 0))
    {
LABEL_25:
      sub_221E96470();
      return;
    }

LABEL_19:
    v12 = [v11 relationshipStorage];
    v13 = [v12 secureCloudRelationship];

    v14 = v13;
    if (!ASRelationshipNeedsSupportedFeaturesUpdate() || ![v14 isFriendshipActive])
    {

      goto LABEL_9;
    }

    v15 = [v14 secureCloudMigrationCompleted];

    if (v15)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
    }

    else
    {
LABEL_9:
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_15:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
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
      goto LABEL_25;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_221EDB9D0@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v2)
  {
    v3 = v2;
    v4 = sub_221FB62E8();
    v5 = [v3 objectForKey_];

    if (v5)
    {
      sub_221FB67C8();

      swift_unknownObjectRelease();
    }

    else
    {

      v16 = 0u;
      v17 = 0u;
    }

    v18[0] = v16;
    v18[1] = v17;
    if (*(&v17 + 1))
    {
      v13 = sub_221FB5BC8();
      v14 = swift_dynamicCast();
      return (*(*(v13 - 8) + 56))(a1, v14 ^ 1u, 1, v13);
    }

    else
    {
      sub_221E9CFE8(v18, &qword_27CFEC128, &unk_221FBA430);
      v15 = sub_221FB5BC8();
      return (*(*(v15 - 8) + 56))(a1, 1, 1, v15);
    }
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v6 = sub_221FB61D8();
    __swift_project_value_buffer(v6, qword_281307DF0);
    v7 = sub_221FB61B8();
    v8 = sub_221FB65C8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_221E93000, v7, v8, "Failed to create Activity Sharing user defaults", v9, 2u);
      MEMORY[0x223DADA80](v9, -1, -1);
    }

    v10 = sub_221FB5BC8();
    v11 = *(*(v10 - 8) + 56);

    return v11(a1, 1, 1, v10);
  }
}

void sub_221EDBC78()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];
  if (v0)
  {
    v1 = v0;
    v2 = sub_221FB5B58();
    oslog = sub_221FB62E8();
    [v1 setObject:v2 forKey:?];
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v3 = sub_221FB61D8();
    __swift_project_value_buffer(v3, qword_281307DF0);
    oslog = sub_221FB61B8();
    v4 = sub_221FB65C8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, oslog, v4, "Failed to create Activity Sharing user defaults", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }
  }
}

void sub_221EDBDE0(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v108 = a3;
  v101 = sub_221FB5C38();
  v103 = *(v101 - 8);
  v6 = *(v103 + 64);
  MEMORY[0x28223BE20](v101);
  v98 = &v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBD50, &unk_221FB9FB0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v99 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v88 - v13;
  MEMORY[0x28223BE20](v12);
  v102 = &v88 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v100 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v104 = &v88 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v105 = &v88 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v88 - v25;
  MEMORY[0x28223BE20](v24);
  v106 = &v88 - v27;
  v28 = sub_221FB5BC8();
  v107 = *(v28 - 8);
  v29 = *(v107 + 64);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v88 - v33;
  v35 = [*a1 relationshipStorage];
  v36 = v35;
  v37 = &selRef_secureCloudRelationship;
  if (a2 != 1)
  {
    v37 = &selRef_legacyRelationship;
  }

  v38 = [v35 *v37];

  if (![v38 needsPushForConsolidation] || (v39 = objc_msgSend(v38, sel_systemFieldsOnlyRecord)) == 0)
  {

LABEL_9:
    v38 = 0;
    goto LABEL_10;
  }

  v40 = v39;
  v41 = [v39 modificationDate];
  v95 = v3;
  v97 = v40;
  if (v41)
  {
    v42 = v41;
    sub_221FB5B98();

    sub_221FB5BB8();
    v43 = sub_221FB5BA8();
    v44 = *(v107 + 8);
    v44(v32, v28);
    if (v43 == -1)
    {
      sub_221FB5BB8();
      sub_221FB5B28();
      v46 = v45;
      v44(v32, v28);
      sub_221FB5B28();
      v48 = v47;
      v44(v34, v28);
      v40 = v97;
      if (v46 - v48 <= 0.0 || v46 - v48 >= 86400.0)
      {

        goto LABEL_10;
      }
    }

    else
    {
      v44(v34, v28);
      v40 = v97;
    }
  }

  [v38 cloudType];
  v49 = NSStringFromASCloudType();
  v94 = sub_221FB6318();
  v96 = v50;

  v51 = [v40 modificationDate];
  if (v51)
  {
    v52 = v51;
    sub_221FB5B98();

    v53 = 0;
  }

  else
  {
    v53 = 1;
  }

  v55 = v105;
  v54 = v106;
  v93 = v14;
  (*(v107 + 56))(v26, v53, 1, v28);
  sub_221EDEF74(v26, v54, &qword_27CFEC118, &unk_221FBB0A0);
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v56 = sub_221FB61D8();
  __swift_project_value_buffer(v56, qword_281307DF0);
  sub_221ED9874(v54, v55, &qword_27CFEC118, &unk_221FBB0A0);
  v57 = v38;

  v58 = sub_221FB61B8();
  v59 = sub_221FB65C8();

  v92 = v59;
  v60 = os_log_type_enabled(v58, v59);
  v61 = v103;
  if (!v60)
  {

    sub_221E9CFE8(v55, &qword_27CFEC118, &unk_221FBB0A0);
    sub_221E9CFE8(v54, &qword_27CFEC118, &unk_221FBB0A0);
    goto LABEL_9;
  }

  v91 = v58;
  v62 = swift_slowAlloc();
  v89 = swift_slowAlloc();
  v111 = v89;
  *v62 = 136315650;
  v63 = [v57 UUID];
  v90 = v57;
  if (v63)
  {
    v64 = v93;
    v65 = v63;
    sub_221FB5C18();

    v66 = 0;
  }

  else
  {
    v66 = 1;
    v64 = v93;
  }

  v67 = 7104878;
  v68 = v101;
  (*(v61 + 56))(v64, v66, 1, v101);
  v69 = v64;
  v70 = v102;
  sub_221EDEF74(v69, v102, &qword_27CFEBD50, &unk_221FB9FB0);
  v71 = v70;
  v72 = v99;
  sub_221ED9874(v71, v99, &qword_27CFEBD50, &unk_221FB9FB0);
  if ((*(v61 + 48))(v72, 1, v68) == 1)
  {
    v73 = 0xE300000000000000;
    v74 = 7104878;
  }

  else
  {
    v75 = v98;
    (*(v61 + 32))(v98, v72, v68);
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_221FB6A08();
    v76 = v68;
    v74 = v109;
    v73 = v110;
    (*(v61 + 8))(v75, v76);
  }

  v77 = v105;
  sub_221E9CFE8(v102, &qword_27CFEBD50, &unk_221FB9FB0);
  v78 = sub_221EF4114(v74, v73, &v111);

  *(v62 + 4) = v78;
  *(v62 + 12) = 2080;
  v79 = v104;
  sub_221ED9874(v77, v104, &qword_27CFEC118, &unk_221FBB0A0);
  v80 = v79;
  v81 = v100;
  sub_221ED9874(v80, v100, &qword_27CFEC118, &unk_221FBB0A0);
  v82 = v107;
  if ((*(v107 + 48))(v81, 1, v28) == 1)
  {
    v83 = 0xE300000000000000;
  }

  else
  {
    (*(v82 + 32))(v32, v81, v28);
    v109 = 0;
    v110 = 0xE000000000000000;
    sub_221FB6A08();
    v67 = v109;
    v83 = v110;
    (*(v82 + 8))(v32, v28);
  }

  sub_221E9CFE8(v104, &qword_27CFEC118, &unk_221FBB0A0);
  sub_221E9CFE8(v77, &qword_27CFEC118, &unk_221FBB0A0);
  v84 = sub_221EF4114(v67, v83, &v111);

  *(v62 + 14) = v84;
  *(v62 + 22) = 2080;
  v85 = sub_221EF4114(v94, v96, &v111);

  *(v62 + 24) = v85;
  v86 = v91;
  _os_log_impl(&dword_221E93000, v91, v92, "Backing off push for consolidation %s, mod date %s type %s", v62, 0x20u);
  v87 = v89;
  swift_arrayDestroy();
  MEMORY[0x223DADA80](v87, -1, -1);
  MEMORY[0x223DADA80](v62, -1, -1);

  sub_221E9CFE8(v106, &qword_27CFEC118, &unk_221FBB0A0);
  v38 = 0;
LABEL_10:
  *v108 = v38;
}

uint64_t sub_221EDC7CC(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 160) = a3;
  *(v4 + 168) = v3;
  *(v4 + 248) = a2;
  *(v4 + 152) = a1;
  return MEMORY[0x2822009F8](sub_221EDC7F4, 0, 0);
}

uint64_t sub_221EDC7F4()
{
  __swift_project_boxed_opaque_existential_0Tm((v0[21] + 8), *(v0[21] + 32));
  v5 = off_28355BEA0 + *off_28355BEA0;
  v1 = *(off_28355BEA0 + 1);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_221EDC92C;
  v3 = v0[19];

  return (v5)(v3, &type metadata for RelationshipFinalizationCoordinator, &off_28355BE88);
}

uint64_t sub_221EDC92C()
{
  v1 = *(*v0 + 176);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EDCA28, 0, 0);
}

uint64_t sub_221EDCA28()
{
  v39 = v0;
  v1 = *(v0 + 152);
  v2 = **(v0 + 168);
  v3 = sub_221FB5BF8();
  v4 = [v2 contactWithUUID_];
  *(v0 + 184) = v4;

  if (v4)
  {
    v5 = [v4 relationshipStorage];
    v6 = [v5 secureCloudRelationship];
    *(v0 + 192) = v6;

    v7 = [v4 relationshipStorage];
    v8 = [v7 legacyRelationship];
    *(v0 + 200) = v8;

    if ([v6 isFriendshipActive])
    {
      v9 = *(v0 + 168);
      [v6 insertEventWithType_];
      __swift_project_boxed_opaque_existential_0Tm((v9 + 48), *(v9 + 72));
      v10 = swift_task_alloc();
      *(v0 + 208) = v10;
      *v10 = v0;
      v10[1] = sub_221EDCEE4;
      v11 = *(v0 + 160);

      return sub_221EBAEA8(v6, 0, v11, 0);
    }

    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v25 = sub_221FB61D8();
    __swift_project_value_buffer(v25, qword_281307DF0);
    v26 = sub_221FB61B8();
    v27 = sub_221FB65A8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 248);
      v29 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38[0] = v37;
      *v29 = 136315138;
      v30 = NSStringFromASRelationshipEventType();
      v31 = sub_221FB6318();
      v33 = v32;

      v34 = sub_221EF4114(v31, v33, v38);

      *(v29 + 4) = v34;
      _os_log_impl(&dword_221E93000, v26, v27, "Friendship inactive not update with competition event: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v37);
      MEMORY[0x223DADA80](v37, -1, -1);
      MEMORY[0x223DADA80](v29, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v35 = 8;
    swift_willThrow();
  }

  else
  {
    if (qword_281307080 != -1)
    {
      swift_once();
    }

    v13 = sub_221FB61D8();
    __swift_project_value_buffer(v13, qword_281307DF0);
    v14 = sub_221FB61B8();
    v15 = sub_221FB65A8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = *(v0 + 248);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38[0] = v18;
      *v17 = 136315138;
      v19 = NSStringFromASRelationshipEventType();
      v20 = sub_221FB6318();
      v22 = v21;

      v23 = sub_221EF4114(v20, v22, v38);

      *(v17 + 4) = v23;
      _os_log_impl(&dword_221E93000, v14, v15, "Missing contact while trying to update for competition event: %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v18);
      MEMORY[0x223DADA80](v18, -1, -1);
      MEMORY[0x223DADA80](v17, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v24 = 21;
    swift_willThrow();
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_221EDCEE4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_221EDD3F4;
  }

  else
  {
    v5 = sub_221EDCFF8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EDCFF8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 216);
  v2 = sub_221FB61D8();
  *(v0 + 232) = __swift_project_value_buffer(v2, qword_281307DF0);
  v3 = v1;
  v4 = sub_221FB61B8();
  v5 = sub_221FB65C8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 216);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_221E93000, v4, v5, "Updated active friend for secure cloud relationship: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  v10 = *(v0 + 200);
  v11 = *(v0 + 168);
  v12 = *(v0 + 248);

  [v10 insertEventWithType_];
  v13 = __swift_project_boxed_opaque_existential_0Tm((v11 + 48), *(v11 + 72));
  if ([v10 cloudType])
  {
    v14 = *(v0 + 200);
    v15 = sub_221FB61B8();
    v16 = sub_221FB65A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = *(v0 + 200);
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      *(v18 + 4) = v17;
      *v19 = v17;
      v20 = v17;
      _os_log_impl(&dword_221E93000, v15, v16, "Attempting to save secure cloud relationship to legacy container %@", v18, 0xCu);
      sub_221E9CFE8(v19, &qword_27CFEB900, &unk_221FB8C10);
      MEMORY[0x223DADA80](v19, -1, -1);
      MEMORY[0x223DADA80](v18, -1, -1);
    }

    sub_221EA4994();
    swift_allocError();
    *v21 = 11;
    swift_willThrow();
    v23 = *(v0 + 192);
    v22 = *(v0 + 200);
    v24 = *(v0 + 184);

    v25 = *(v0 + 8);

    return v25();
  }

  else
  {
    v27 = *(v0 + 200);
    v28 = *(v0 + 160);
    v29 = *__swift_project_boxed_opaque_existential_0Tm(v13 + 6, v13[9]);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_221EDD464;
    v30 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB70, &unk_221FB8C20);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_221EF4C50;
    *(v0 + 104) = &block_descriptor_10;
    *(v0 + 112) = v30;
    [v29 saveRelationship:v27 contact:0 cloudKitGroup:v28 activity:0 completion:v0 + 80];

    return MEMORY[0x282200938](v0 + 16);
  }
}

uint64_t sub_221EDD3F4()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 184);

  v3 = *(v0 + 224);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221EDD464()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 240) = v2;
  if (v2)
  {
    v3 = sub_221EDD6F8;
  }

  else
  {
    v3 = sub_221EDD574;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EDD574()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 144);
  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 192);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v2;
    *v8 = v2;
    v9 = v2;
    _os_log_impl(&dword_221E93000, v3, v4, "Updated active friend for legacy relationship: %@", v7, 0xCu);
    sub_221E9CFE8(v8, &qword_27CFEB900, &unk_221FB8C10);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);

    v10 = 200;
  }

  else
  {

    v9 = *(v0 + 200);
    v10 = 192;
  }

  v11 = *(v0 + v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_221EDD6F8()
{
  v1 = *(v0 + 240);
  swift_willThrow();
  v2 = *(v0 + 240);
  v4 = *(v0 + 192);
  v3 = *(v0 + 200);
  v5 = *(v0 + 184);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_221EDD788(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC118, &unk_221FBB0A0) - 8) + 64) + 15;
  v3[5] = swift_task_alloc();
  v5 = sub_221FB5BC8();
  v3[6] = v5;
  v6 = *(v5 - 8);
  v3[7] = v6;
  v7 = *(v6 + 64) + 15;
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EDD89C, 0, 0);
}

uint64_t sub_221EDD89C()
{
  v89 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  v0[11] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC1ED0, 0xD000000000000035, 0x8000000221FC1FA0);
  v3 = [*v1 contacts];
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v5 = sub_221FB64F8();

  sub_221EDB428(v5, 0);
  v7 = v6;
  v0[12] = v6;
  sub_221EDB428(v5, 1);
  v9 = v8;
  v0[13] = v8;

  if (v7 >> 62)
  {
    v10 = sub_221FB6868();
    if (v10)
    {
      goto LABEL_8;
    }

LABEL_6:
    if (v9 >> 62)
    {
      if (sub_221FB6868())
      {
        goto LABEL_8;
      }
    }

    else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

    goto LABEL_40;
  }

  v10 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_8:
  v11 = v0[6];
  v12 = v0[7];
  v13 = v0[5];
  sub_221EDB9D0(v13);
  if ((*(v12 + 48))(v13, 1, v11) == 1)
  {
    sub_221E9CFE8(v0[5], &qword_27CFEC118, &unk_221FBB0A0);
  }

  else
  {
    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    (*(v16 + 32))(v0[10], v0[5], v15);
    sub_221FB5BB8();
    sub_221FB5B28();
    v18 = v17;
    v19 = *(v16 + 8);
    v19(v14, v15);
    sub_221FB5B28();
    v21 = v18 - v20;
    v22 = v0[10];
    if (v21 > 0.0 && v21 < 86400.0)
    {
      v24 = v0[7];
      v23 = v0[8];
      v25 = v0[6];

      (*(v24 + 16))(v23, v22, v25);
      v26 = sub_221FB61B8();
      v27 = sub_221FB65C8();
      v28 = os_log_type_enabled(v26, v27);
      v29 = v0[10];
      v30 = v0[8];
      v31 = v0[6];
      if (v28)
      {
        v32 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v88[0] = v86;
        *v32 = 136315138;
        sub_221EDEF1C();
        v87 = v29;
        v33 = sub_221FB6B08();
        v35 = v34;
        v19(v30, v31);
        v36 = sub_221EF4114(v33, v35, v88);

        *(v32 + 4) = v36;
        _os_log_impl(&dword_221E93000, v26, v27, "Rate limiting push for consolidation, last attempt %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v86);
        MEMORY[0x223DADA80](v86, -1, -1);
        MEMORY[0x223DADA80](v32, -1, -1);

        v37 = v87;
      }

      else
      {

        v19(v30, v31);
        v37 = v29;
      }

      v19(v37, v31);
      goto LABEL_40;
    }

    v19(v0[10], v0[6]);
  }

  v38 = v0[9];
  v39 = v0[6];
  v40 = v0[7];
  v41 = v0[4];
  sub_221FB5BB8();
  sub_221EDBC78();
  (*(v40 + 8))(v38, v39);
  if (v10)
  {

    v42 = sub_221FB61B8();
    v43 = sub_221FB65C8();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v88[0] = v45;
      *v44 = 136315138;
      v46 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
      v47 = MEMORY[0x223DAC810](v7, v46);
      v49 = sub_221EF4114(v47, v48, v88);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_221E93000, v42, v43, "Found legacy relationships to consolidate: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x223DADA80](v45, -1, -1);
      MEMORY[0x223DADA80](v44, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
    v50 = swift_task_alloc();
    v0[14] = v50;
    *v50 = v0;
    v50[1] = sub_221EDE1A8;
    v51 = v0[2];
    v52 = v0[3];
    v53 = MEMORY[0x277D84F90];

    return sub_221EBA884(v7, v53, v51, v52);
  }

  v55 = sub_221FB61B8();
  v56 = sub_221FB65C8();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_221E93000, v55, v56, "No legacy relationships to consolidate", v57, 2u);
    MEMORY[0x223DADA80](v57, -1, -1);
  }

  v58 = v0[13];
  if (v58 >> 62)
  {
    if (v58 < 0)
    {
      v85 = v0[13];
    }

    v59 = sub_221FB6868();
  }

  else
  {
    v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v60 = v0[13];
  v61 = v0[11];
  if (v59)
  {
    v62 = v0[13];

    v63 = sub_221FB61B8();
    v64 = sub_221FB65C8();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = v0[13];
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v88[0] = v67;
      *v66 = 136315138;
      v68 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
      v69 = MEMORY[0x223DAC810](v65, v68);
      v71 = sub_221EF4114(v69, v70, v88);

      *(v66 + 4) = v71;
      _os_log_impl(&dword_221E93000, v63, v64, "Found secure cloud relationships to consolidate: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v67);
      MEMORY[0x223DADA80](v67, -1, -1);
      MEMORY[0x223DADA80](v66, -1, -1);
    }

    __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
    v72 = swift_task_alloc();
    v0[17] = v72;
    *v72 = v0;
    v72[1] = sub_221EDE79C;
    v73 = v0[13];
    v74 = v0[2];
    v75 = v0[3];

    return sub_221EBB94C(v73, v74, v75);
  }

  v76 = v0[13];

  v77 = sub_221FB61B8();
  v78 = sub_221FB65C8();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_221E93000, v77, v78, "No secure cloud relationships to consolidate", v79, 2u);
    MEMORY[0x223DADA80](v79, -1, -1);
  }

LABEL_40:
  v81 = v0[9];
  v80 = v0[10];
  v82 = v0[8];
  v83 = v0[5];

  v84 = v0[1];

  return v84();
}

uint64_t sub_221EDE1A8(uint64_t a1)
{
  v3 = *(*v2 + 112);
  v4 = *(*v2 + 96);
  v5 = *v2;
  v5[15] = a1;
  v5[16] = v1;

  if (v1)
  {
    v6 = v5[13];

    v8 = v5[9];
    v7 = v5[10];
    v9 = v5[8];
    v10 = v5[5];

    v11 = v5[1];

    return v11();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221EDE338, 0, 0);
  }
}

uint64_t sub_221EDE338()
{
  v48 = v0;
  v1 = v0[15];
  v2 = __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
  v3 = objc_opt_self();

  sub_221F17A54(v4);

  sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
  sub_221E9E930(&qword_27CFEBD38, &qword_281306E60, 0x277CBC5A0);
  v5 = sub_221FB64E8();

  v6 = [v3 relationshipsWithRelationshipAndEventRecords_];

  if (v6)
  {
    v8 = v0[15];
    v7 = v0[16];
    v9 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v10 = sub_221FB6438();

    v11 = swift_task_alloc();
    *(v11 + 16) = v2;
    sub_221F41DC4(sub_221EBCCB0, v11, v10);

    v12 = v0[13];
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v46 = v0[13];
      }

      v13 = sub_221FB6868();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = v0[13];
    v15 = v0[11];
    if (v13)
    {
      v16 = v0[13];

      v17 = sub_221FB61B8();
      v18 = sub_221FB65C8();

      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0[13];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v47 = v21;
        *v20 = 136315138;
        v22 = MEMORY[0x223DAC810](v19, v9);
        v24 = sub_221EF4114(v22, v23, &v47);

        *(v20 + 4) = v24;
        _os_log_impl(&dword_221E93000, v17, v18, "Found secure cloud relationships to consolidate: %s", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x223DADA80](v21, -1, -1);
        MEMORY[0x223DADA80](v20, -1, -1);
      }

      __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
      v25 = swift_task_alloc();
      v0[17] = v25;
      *v25 = v0;
      v25[1] = sub_221EDE79C;
      v26 = v0[13];
      v27 = v0[2];
      v28 = v0[3];

      return sub_221EBB94C(v26, v27, v28);
    }

    v38 = v0[13];

    v39 = sub_221FB61B8();
    v40 = sub_221FB65C8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_221E93000, v39, v40, "No secure cloud relationships to consolidate", v41, 2u);
      MEMORY[0x223DADA80](v41, -1, -1);
    }

    v43 = v0[9];
    v42 = v0[10];
    v44 = v0[8];
    v45 = v0[5];

    v37 = v0[1];
  }

  else
  {
    v30 = v0[13];
    sub_221EA4994();
    swift_allocError();
    *v31 = 13;
    swift_willThrow();

    v32 = v0[15];

    v34 = v0[9];
    v33 = v0[10];
    v35 = v0[8];
    v36 = v0[5];

    v37 = v0[1];
  }

  return v37();
}

uint64_t sub_221EDE79C()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 104);
  v10 = *v0;

  v4 = v1[10];
  v5 = v1[9];
  v6 = v1[8];
  v7 = v1[5];

  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_221EDE92C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_221EDE950, 0, 0);
}

uint64_t sub_221EDE950()
{
  if (qword_281307080 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = v0[4];
  v2 = sub_221FB61D8();
  v0[5] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000096, 0x8000000221FC1ED0, 0xD00000000000002BLL, 0x8000000221FC1F70);
  v3 = [*v1 contacts];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
  sub_221E9E930(&qword_281306E40, &qword_281306E50, 0x277CE90E8);
  v5 = sub_221FB64F8();

  sub_221EDB6E8(v5);
  v7 = v6;
  v0[6] = v6;

  if (!(v7 >> 62))
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  v8 = sub_221FB6868();
  if (!v8)
  {
LABEL_20:

LABEL_21:
    v17 = v0[1];

    return v17();
  }

LABEL_5:
  v9 = 0;
  do
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x223DACD50](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    ASUpdateSupportedFeaturesForRelationship();

    ++v9;
  }

  while (v12 != v8);
  __swift_project_boxed_opaque_existential_0Tm((v0[4] + 48), *(v0[4] + 72));
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_221EDEC04;
  v14 = v0[2];
  v15 = v0[3];

  return sub_221EBB94C(v7, v14, v15);
}

uint64_t sub_221EDEC04()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_221EDEEA8;
  }

  else
  {
    v3 = sub_221EDED18;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EDED18()
{
  v17 = v0;
  v1 = v0[5];
  v2 = v0[6];

  v3 = sub_221FB61B8();
  v4 = sub_221FB65C8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = sub_221E9D138(0, &unk_27CFEB970, 0x277CE9118);
    v10 = MEMORY[0x223DAC810](v6, v9);
    v12 = v11;

    v13 = sub_221EF4114(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_221E93000, v3, v4, "Updated relationships with supported features: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x223DADA80](v8, -1, -1);
    MEMORY[0x223DADA80](v7, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221EDEEA8()
{
  v1 = v0[6];

  v2 = v0[1];
  v3 = v0[8];

  return v2();
}

unint64_t sub_221EDEF1C()
{
  result = qword_27CFEC120;
  if (!qword_27CFEC120)
  {
    sub_221FB5BC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEC120);
  }

  return result;
}

uint64_t sub_221EDEF74(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_221EDEFEC(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221EDF104(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E96070;

  return v11(a1, a2, a3);
}

uint64_t sub_221EDF22C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_221E9544C;

  return v11(a1, a2, a3);
}

uint64_t sub_221EDF368(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221EDF480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_221EDF5B0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_221FB5EC8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC130, &qword_221FBA608) - 8) + 64) + 15;
  v3[11] = swift_task_alloc();
  v11 = sub_221FB6128();
  v3[12] = v11;
  v12 = *(v11 - 8);
  v3[13] = v12;
  v13 = *(v12 + 64) + 15;
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v14 = sub_221FB5D78();
  v3[16] = v14;
  v15 = *(v14 - 8);
  v3[17] = v15;
  v16 = *(v15 + 64) + 15;
  v3[18] = swift_task_alloc();
  v17 = sub_221FB5EA8();
  v3[19] = v17;
  v18 = *(v17 - 8);
  v3[20] = v18;
  v19 = *(v18 + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EDF84C, 0, 0);
}

uint64_t sub_221EDF84C()
{
  v124 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[2];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v118 = *(v3 + 16);
  v118(v1, v4, v2);
  v6 = sub_221FB61B8();
  v7 = sub_221FB65C8();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  v11 = v0[19];
  v10 = v0[20];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v123[0] = v13;
    *v12 = 136315138;
    v14 = sub_221FB5E98();
    v16 = v15;
    v117 = *(v10 + 8);
    v117(v9, v11);
    v17 = sub_221EF4114(v14, v16, v123);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_221E93000, v6, v7, "Received secure cloud ping request %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x223DADA80](v13, -1, -1);
    MEMORY[0x223DADA80](v12, -1, -1);
  }

  else
  {

    v117 = *(v10 + 8);
    v117(v9, v11);
  }

  v19 = v0[17];
  v18 = v0[18];
  v20 = v0[16];
  (*(v19 + 16))(v18, v0[3], v20);
  v21 = (*(v19 + 88))(v18, v20);
  v22 = v0[17];
  v23 = v0[18];
  v24 = v0[16];
  if (v21 != *MEMORY[0x277CE9388])
  {
    (*(v22 + 8))(v0[18], v24);
LABEL_13:
    sub_221EC459C();
    swift_allocError();
    *v34 = 3;
    swift_willThrow();
    v36 = v0[23];
    v35 = v0[24];
    v38 = v0[21];
    v37 = v0[22];
    v39 = v0[18];
    v41 = v0[14];
    v40 = v0[15];
    v43 = v0[10];
    v42 = v0[11];
    v119 = v0[7];

    v44 = v0[1];
LABEL_21:

    return v44();
  }

  (*(v22 + 96))(v0[18], v24);
  v25 = *v23;
  v0[25] = *v23;
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (!v26)
  {

    goto LABEL_13;
  }

  v116 = v26;
  v27 = v0[4];
  v28 = *(v27 + 80);
  v29 = *(v27 + 88);
  v30 = *(v27 + 96);
  v31 = *(v27 + 104);
  if (_s23ActivitySharingServices8PlatformO15internalInstallSbvg_0())
  {
    LOBYTE(v123[0]) = v28;
    UserDefaultsKeys.rawValue.getter();
    v32 = sub_221FB62E8();

    v33 = [v31 stringForKey_];

    if (v33)
    {
      sub_221FB6318();

      goto LABEL_16;
    }

LABEL_18:
    v49 = sub_221FB61B8();
    v50 = sub_221FB65C8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_221E93000, v49, v50, "Not responding, no type set", v51, 2u);
      MEMORY[0x223DADA80](v51, -1, -1);
    }

    v53 = v0[23];
    v52 = v0[24];
    v55 = v0[21];
    v54 = v0[22];
    v56 = v0[18];
    v58 = v0[14];
    v57 = v0[15];
    v60 = v0[10];
    v59 = v0[11];
    v61 = v0[7];

    v44 = v0[1];
    goto LABEL_21;
  }

  if (!v30)
  {
    goto LABEL_18;
  }

LABEL_16:
  v46 = v0[12];
  v45 = v0[13];
  v47 = v0[11];

  sub_221FB6118();
  if ((*(v45 + 48))(v47, 1, v46) == 1)
  {
    v48 = v0[11];

    sub_221EE2954(v48);
    goto LABEL_18;
  }

  v114 = v0[15];
  v115 = v0[14];
  v64 = v0[12];
  v63 = v0[13];
  v65 = v0[11];
  v66 = v0[6];
  v67 = v0[7];
  v112 = v0[5];
  v113 = v0[10];
  v68 = v0[2];
  (*(v63 + 32))();
  sub_221FB5E98();
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v66 + 8))(v67, v112);
  sub_221FB5EB8();
  (*(v63 + 16))(v115, v114, v64);
  v69 = (*(v63 + 88))(v115, v64);
  if (v69 == *MEMORY[0x277CE9430])
  {
    v70 = v0[23];
    v71 = v0[19];
    v72 = v0[2];

    v118(v70, v72, v71);
    v73 = sub_221FB61B8();
    v74 = sub_221FB65C8();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v0[23];
    if (v75)
    {
      v77 = v0[22];
      v78 = v0[19];
      v120 = v0[20];
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v123[0] = v80;
      *v79 = 136315138;
      v118(v77, v76, v78);
      v81 = sub_221FB6328();
      v83 = v82;
      v117(v76, v78);
      v84 = sub_221EF4114(v81, v83, v123);

      *(v79 + 4) = v84;
      _os_log_impl(&dword_221E93000, v73, v74, "Accepting invitation ping %s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v80);
      MEMORY[0x223DADA80](v80, -1, -1);
      MEMORY[0x223DADA80](v79, -1, -1);
    }

    else
    {
      v99 = v0[19];
      v100 = v0[20];

      v117(v76, v99);
    }

    v101 = *__swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v122 = sub_221FA806C;
    v102 = swift_task_alloc();
    v0[26] = v102;
    *v102 = v0;
    v102[1] = sub_221EE02A0;
    v103 = v0[10];
    v104 = v116;
    v105 = 1151;
LABEL_37:

    return v122(v104, v103, v105);
  }

  if (v69 == *MEMORY[0x277CE9438])
  {
    v85 = v0[21];
    v86 = v0[19];
    v87 = v0[2];

    v118(v85, v87, v86);
    v88 = sub_221FB61B8();
    v89 = sub_221FB65C8();
    if (os_log_type_enabled(v88, v89))
    {
      v91 = v0[21];
      v90 = v0[22];
      v92 = v0[19];
      v121 = v0[20];
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v123[0] = v94;
      *v93 = 136315138;
      v118(v90, v91, v92);
      v95 = sub_221FB6328();
      v97 = v96;
      v117(v91, v92);
      v98 = sub_221EF4114(v95, v97, v123);

      *(v93 + 4) = v98;
      _os_log_impl(&dword_221E93000, v88, v89, "Declining invitation ping %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v94);
      MEMORY[0x223DADA80](v94, -1, -1);
      MEMORY[0x223DADA80](v93, -1, -1);
    }

    else
    {
      v108 = v0[20];
      v107 = v0[21];
      v109 = v0[19];

      v117(v107, v109);
    }

    v110 = *__swift_project_boxed_opaque_existential_0Tm(v0[4], *(v0[4] + 24));
    v122 = sub_221EE1E14;
    v111 = swift_task_alloc();
    v0[28] = v111;
    *v111 = v0;
    v111[1] = sub_221EE060C;
    v103 = v0[10];
    v104 = v116;
    v105 = 1152;
    goto LABEL_37;
  }

  v106 = v0[12];

  return MEMORY[0x2821FDEB8](v106, v106);
}

uint64_t sub_221EE02A0()
{
  v2 = *(*v1 + 208);
  v5 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {
    v3 = sub_221EE04DC;
  }

  else
  {
    v3 = sub_221EE03B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EE03B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EE04DC()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v19 = *(v0 + 216);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EE060C()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_221EE0720;
  }

  else
  {
    v3 = sub_221EE2AA4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EE0720()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v6 = *(v0 + 64);

  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v19 = *(v0 + 232);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v10 = *(v0 + 168);
  v9 = *(v0 + 176);
  v11 = *(v0 + 144);
  v13 = *(v0 + 112);
  v12 = *(v0 + 120);
  v15 = *(v0 + 80);
  v14 = *(v0 + 88);
  v16 = *(v0 + 56);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EE0850(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_221FB5EA8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE091C, 0, 0);
}

uint64_t sub_221EE091C()
{
  v27 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_221FB6328();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_221EF4114(v15, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v7, v8, "Received secure cloud accept: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DADA80](v25, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v19 = v0[3];
    v20 = v0[4];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[5];
  v21 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_221EE0B50(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_221FB5EA8();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE0C1C, 0, 0);
}

uint64_t sub_221EE0C1C()
{
  v27 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);
  v6 = *(v3 + 16);
  v6(v1, v4, v2);
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[6];
  if (v9)
  {
    v11 = v0[4];
    v12 = v0[5];
    v13 = v0[3];
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v14 = 136315138;
    v6(v12, v10, v13);
    v15 = sub_221FB6328();
    v17 = v16;
    (*(v11 + 8))(v10, v13);
    v18 = sub_221EF4114(v15, v17, &v26);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_221E93000, v7, v8, "Received secure cloud decline: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x223DADA80](v25, -1, -1);
    MEMORY[0x223DADA80](v14, -1, -1);
  }

  else
  {
    v19 = v0[3];
    v20 = v0[4];

    (*(v20 + 8))(v10, v19);
  }

  v22 = v0[5];
  v21 = v0[6];

  v23 = v0[1];

  return v23();
}

uint64_t sub_221EE0E70()
{
  v1 = *(v0 + 352);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221EE15F4(v1, v0 + 16);
  v4 = swift_allocObject();
  *(v0 + 360) = v4;
  v5 = *(v0 + 96);
  v4[5] = *(v0 + 80);
  v4[6] = v5;
  v4[7] = *(v0 + 112);
  v6 = *(v0 + 32);
  v4[1] = *(v0 + 16);
  v4[2] = v6;
  v7 = *(v0 + 64);
  v4[3] = *(v0 + 48);
  v4[4] = v7;
  v8 = *(MEMORY[0x277CE93C0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 368) = v9;
  v10 = sub_221FB5EA8();
  *(v0 + 376) = v10;
  *v9 = v0;
  v9[1] = sub_221EE0FB4;
  v11 = MEMORY[0x277CE93D8];

  return MEMORY[0x28213ACC0](1150, &unk_221FBA5C8, v4, v2, v10, v3, v11);
}

uint64_t sub_221EE0FB4()
{
  v1 = *(*v0 + 368);
  v2 = *(*v0 + 360);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EE10CC, 0, 0);
}

uint64_t sub_221EE10CC()
{
  v1 = *(v0 + 352);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221EE15F4(v1, v0 + 128);
  v4 = swift_allocObject();
  *(v0 + 384) = v4;
  v5 = *(v0 + 208);
  v4[5] = *(v0 + 192);
  v4[6] = v5;
  v4[7] = *(v0 + 224);
  v6 = *(v0 + 144);
  v4[1] = *(v0 + 128);
  v4[2] = v6;
  v7 = *(v0 + 176);
  v4[3] = *(v0 + 160);
  v4[4] = v7;
  v8 = *(MEMORY[0x277CE93C0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 392) = v9;
  *v9 = v0;
  v9[1] = sub_221EE11F8;
  v10 = *(v0 + 376);
  v11 = MEMORY[0x277CE93D8];

  return MEMORY[0x28213ACC0](1151, &unk_221FBA5D8, v4, v2, v10, v3, v11);
}

uint64_t sub_221EE11F8()
{
  v1 = *(*v0 + 392);
  v2 = *(*v0 + 384);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EE1310, 0, 0);
}

uint64_t sub_221EE1310()
{
  v1 = *(v0 + 352);
  v2 = v1[8];
  v3 = v1[9];
  __swift_project_boxed_opaque_existential_0Tm(v1 + 5, v2);
  sub_221EE15F4(v1, v0 + 240);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  v5 = *(v0 + 320);
  v4[5] = *(v0 + 304);
  v4[6] = v5;
  v4[7] = *(v0 + 336);
  v6 = *(v0 + 256);
  v4[1] = *(v0 + 240);
  v4[2] = v6;
  v7 = *(v0 + 288);
  v4[3] = *(v0 + 272);
  v4[4] = v7;
  v8 = *(MEMORY[0x277CE93C0] + 4);
  v9 = swift_task_alloc();
  *(v0 + 408) = v9;
  *v9 = v0;
  v9[1] = sub_221EE143C;
  v10 = *(v0 + 376);
  v11 = MEMORY[0x277CE93D8];

  return MEMORY[0x28213ACC0](1152, &unk_221FBA5E8, v4, v2, v10, v3, v11);
}

uint64_t sub_221EE143C()
{
  v1 = *(*v0 + 408);
  v2 = *(*v0 + 400);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_221EE154C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EDF5B0(a1, a2);
}

uint64_t sub_221EE162C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221E963B4;

  return sub_221EE154C(a1, a2);
}

uint64_t sub_221EE16D4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221EE0850(a1);
}

uint64_t sub_221EE177C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E9544C;

  return sub_221EE16D4(a1);
}

uint64_t sub_221EE1824(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221EE0B50(a1);
}

uint64_t sub_221EE18CC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_221E963B4;

  return sub_221EE1824(a1);
}

uint64_t sub_221EE1974(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v7 = sub_221FB5EA8();
  v3[8] = v7;
  v8 = *(v7 - 8);
  v3[9] = v8;
  v9 = *(v8 + 64) + 15;
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE1A94, 0, 0);
}

uint64_t sub_221EE1A94()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = __swift_project_boxed_opaque_existential_0Tm(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_221FB5C28();
  sub_221FB5BE8();
  (*(v3 + 8))(v2, v4);
  sub_221FB5E88();
  v6 = *v5;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_221EE1BBC;
  v8 = *(v0 + 80);
  v10 = *(v0 + 16);
  v9 = *(v0 + 24);

  return sub_221F422A8(v10, v9, v8, 1150, 0, 0);
}

uint64_t sub_221EE1BBC(void *a1)
{
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *v2;
  v4[12] = v1;

  v7 = v4[10];
  v8 = v4[9];
  v9 = v4[8];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    return MEMORY[0x2822009F8](sub_221EE1DA4, 0, 0);
  }

  else
  {
    v10 = v4[7];

    (*(v8 + 8))(v7, v9);

    v11 = *(v6 + 8);

    return v11();
  }
}

uint64_t sub_221EE1DA4()
{
  v1 = v0[10];
  v2 = v0[7];

  v3 = v0[1];
  v4 = v0[12];

  return v3();
}

uint64_t sub_221EE1E14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE1ED8, 0, 0);
}

uint64_t sub_221EE1ED8()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002BLL, 0x8000000221FC2090);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB5EC8();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2220;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002BLL, 0x8000000221FC2090, sub_221EE29BC, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221EE2220()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_221EE23B0;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_221EE233C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EE233C()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_221EE23B0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  v3 = *(v0 + 104);
  v4 = *(v0 + 64);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_221EE242C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_221FB5D68();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE24F0, 0, 0);
}

uint64_t sub_221EE24F0()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = sub_221FB61D8();
  __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000082, 0x8000000221FC2000, 0xD00000000000002BLL, 0x8000000221FC2090);
  v3 = *(v1 + OBJC_IVAR____TtC23ActivitySharingServices17InvitationService_protectedState);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  v0[9] = v4;
  v5 = v4;
  os_unfair_lock_unlock((v3 + 24));
  if (v4)
  {
    v6 = v0[3];
    sub_221FB5FF8();
    v7 = sub_221FB5E58();
    v12 = v0[8];
    v25 = v0[7];
    v26 = v0[6];
    v13 = v0[4];
    v27 = v0[2];
    v14 = v7;
    v16 = v15;
    sub_221EBEF90(v7, v15);
    sub_221FB5D48();
    sub_221EF9080();
    v17 = objc_allocWithZone(MEMORY[0x277D186F0]);
    v18 = sub_221FB6278();

    v19 = sub_221FB62E8();
    v20 = [v17 initWithDictionary:v18 schema:v19];
    v0[10] = v20;

    sub_221EBEF30(v14, v16);
    (*(v25 + 8))(v12, v26);
    v21 = swift_task_alloc();
    v0[11] = v21;
    v21[2] = v5;
    v21[3] = v27;
    v21[4] = v20;
    v22 = *(MEMORY[0x277D85A40] + 4);
    v23 = swift_task_alloc();
    v0[12] = v23;
    *v23 = v0;
    v23[1] = sub_221EE2838;
    v24 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822008A0](v23, 0, 0, 0xD00000000000002BLL, 0x8000000221FC2090, sub_221EE2AA0, v21, v24);
  }

  else
  {
    sub_221EC459C();
    swift_allocError();
    *v8 = 0;
    swift_willThrow();
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_221EE2838()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v7 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = sub_221EE2AAC;
  }

  else
  {
    v5 = *(v2 + 88);

    v4 = sub_221EE2AA8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_221EE2954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC130, &qword_221FBA608);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_221EE29EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_221EE2A34(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_221EE2AB0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221EE2BC8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221EE2CE0()
{
  v1 = v0;
  if (*(*(v0 + 120) + 16))
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
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, v3, v4, "Unexpected deinit of SecureCloudActivationGateway", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }
  }

  v6 = *(v1 + 120);

  sub_221EE3290(v1 + 128);
  swift_defaultActor_destroy();
  return v1;
}

uint64_t sub_221EE2DEC()
{
  sub_221EE2CE0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221EE2E3C(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v4 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC138, &qword_221FBA728);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8 + 16;
  swift_beginAccess();
  sub_221EE3220(v3 + 128, v16);
  if (v16[3])
  {
    memcpy(v17, v16, sizeof(v17));
    sub_221EE32F8(v17, v16);
    sub_221FB64A8();
    return sub_221E95288(v17);
  }

  else
  {
    sub_221EE3290(v16);
    (*(v6 + 16))(v9, v4, v5);
    v11 = *(v3 + 120);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 120) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_221EF3930(0, v11[2] + 1, 1, v11);
      *(v3 + 120) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_221EF3930(v13 > 1, v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    result = (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v9, v5);
    *(v3 + 120) = v11;
  }

  return result;
}

uint64_t sub_221EE304C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC138, &qword_221FBA728);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v16 - v5;
  swift_beginAccess();
  sub_221EE3220(v1 + 128, v18);
  if (!v18[3])
  {
    return sub_221EE3290(v18);
  }

  memcpy(v19, v18, 0xD38uLL);
  v7 = *(v1 + 120);
  v8 = *(v7 + 16);
  if (v8)
  {
    v16 = *(v1 + 120);
    v17 = v1;
    v11 = *(v3 + 16);
    v9 = v3 + 16;
    v10 = v11;
    v12 = v7 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v13 = *(v9 + 56);

    do
    {
      v10(v6, v12, v2);
      sub_221EE32F8(v19, v18);
      sub_221FB64A8();
      (*(v9 - 8))(v6, v2);
      v12 += v13;
      --v8;
    }

    while (v8);

    v1 = v17;
    v14 = *(v17 + 120);
  }

  *(v1 + 120) = MEMORY[0x277D84F90];

  return sub_221E95288(v19);
}

uint64_t sub_221EE3220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC140, &qword_221FBA730);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EE3290(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC140, &qword_221FBA730);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EE3354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *(a7 + 8);
  v19 = (v15 + *v15);
  v16 = v15[1];
  v17 = swift_task_alloc();
  *(v7 + 16) = v17;
  *v17 = v7;
  v17[1] = sub_221E9606C;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_221EE34AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221E96070;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221EE35F4(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 24);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221EE370C(uint64_t a1, char a2, void *a3)
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
    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v10 = sub_221FB6438();
    v11 = *(*(v5 + 64) + 40);
    *v11 = a2;
    *(v11 + 8) = v9;
    *(v11 + 16) = v10;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_221EE383C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  return MEMORY[0x2822009F8](sub_221EE3864, 0, 0);
}

uint64_t sub_221EE3864()
{
  v1 = v0[24];
  if (v1)
  {
    v2 = *(v1 + 16);
    swift_unknownObjectRetain();
  }

  else
  {
    v2 = 0;
  }

  v0[26] = v2;
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  v6 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_221EE39C4;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFECC80, &unk_221FBA7B0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE370C;
  v0[13] = &block_descriptor_11;
  v0[14] = v7;
  [v3 fetchChangesInSharedDatabaseWithServerChangeTokenCache:v6 priority:v5 activity:v2 group:v4 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EE39C4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  if (v2)
  {
    v3 = sub_221EE3D48;
  }

  else
  {
    v3 = sub_221EE3AD4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EE3AD4()
{
  v24 = v0;
  v1 = v0[26];
  v3 = v0[19];
  v2 = v0[20];

  swift_unknownObjectRelease();
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v4 = v0[23];
  v5 = sub_221FB61D8();
  __swift_project_value_buffer(v5, qword_281307DF0);

  v6 = v4;
  v7 = sub_221FB61B8();
  v8 = sub_221FB65C8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 134349314;
    if (v3 >> 62)
    {
      v11 = sub_221FB6868();
    }

    else
    {
      v11 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v0[23];
    *(v9 + 4) = v11;

    *(v9 + 12) = 2080;
    v13 = [v12 name];
    if (v13)
    {
      v14 = v13;
      v15 = sub_221FB6318();
      v17 = v16;

      v0[10] = 0;
      v0[11] = 0xE000000000000000;
      v0[18] = v15;
      v0[19] = v17;
      sub_221FB6A08();

      v18 = v0[10];
      v19 = v0[11];
    }

    else
    {
      v19 = 0xE300000000000000;
      v18 = 7104878;
    }

    v20 = sub_221EF4114(v18, v19, &v23);

    *(v9 + 14) = v20;
    _os_log_impl(&dword_221E93000, v7, v8, "Fetched %{public}ld records from secure cloud shared database, group: %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v9, -1, -1);
  }

  else
  {
  }

  v21 = v0[1];

  return v21(v3);
}

uint64_t sub_221EE3D48()
{
  v1 = v0[26];
  v2 = v0[27];
  swift_willThrow();
  swift_unknownObjectRelease();
  v3 = v0[1];
  v4 = v0[27];

  return v3();
}

uint64_t sub_221EE3DDC()
{
  v1 = v0[25];
  sub_221E9D138(0, &qword_281306EF0, 0x277CBC5F8);
  v2 = *MEMORY[0x277CBBF28];
  sub_221FB6318();
  v3 = sub_221FB65D8();
  v0[26] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEB928, &qword_221FB8E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221FB81B0;
  *(inited + 32) = v3;
  v5 = v3;
  sub_221F17D6C(inited);
  swift_setDeallocating();
  v6 = *(inited + 16);
  swift_arrayDestroy();
  sub_221EE4328();
  v7 = sub_221FB64E8();
  v0[27] = v7;

  v8 = ASCloudKitGroupInitialSetup();
  v0[28] = v8;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_221EE4014;
  v9 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC148, &qword_221FBA7D0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_221EE4220;
  v0[13] = &block_descriptor_9_1;
  v0[14] = v9;
  [v1 createRecordZonesWithIDs:v7 priority:2 useZoneWideSharing:1 group:v8 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EE4014()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  if (v2)
  {
    v3 = sub_221EE419C;
  }

  else
  {
    v3 = sub_221EE4124;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EE4124()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  v3 = *(v0 + 192);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_221EE419C()
{
  v1 = v0[28];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[29];

  return v5();
}

uint64_t sub_221EE4220(uint64_t a1, char a2, void *a3)
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
    sub_221E9D138(0, &unk_281306F10, 0x277CBC5E8);
    v9 = sub_221FB6438();
    v10 = *(*(v5 + 64) + 40);
    *v10 = a2;
    *(v10 + 8) = v9;

    return swift_continuation_throwingResume();
  }
}

unint64_t sub_221EE4328()
{
  result = qword_281306EE8;
  if (!qword_281306EE8)
  {
    sub_221E9D138(255, &qword_281306EF0, 0x277CBC5F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281306EE8);
  }

  return result;
}

uint64_t sub_221EE43A8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221EE44C0(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E9544C;

  return v9(a1, a2);
}

uint64_t sub_221EE45D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221EE581C;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221EE4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_221E9E350;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_221EE4848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_221EE4978(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_221FB5C38();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a3 UUID];
  if (v10)
  {
    v11 = v10;
    sub_221FB5C18();

    v12 = sub_221FB5BE8();
    v14 = v13;
    (*(v6 + 8))(v9, v5);
    v15 = sub_221ECB494(v12, v14);

    if (v15)
    {
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {
      v15 = sub_221ED82C0(MEMORY[0x277D84F90]);
      if (!*(v15 + 16))
      {
        goto LABEL_8;
      }
    }

    v16 = sub_221ED4C68(a2);
    if (v17)
    {
      v18 = *(*(v15 + 56) + 8 * v16);

LABEL_9:

      v20 = sub_221F71540(v19, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC158, &qword_221FBA948);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_221FB81A0;
      *(inited + 32) = a2;
      v22 = inited + 32;
      *(inited + 40) = v20;
      v23 = sub_221ED82C0(inited);
      swift_setDeallocating();
      sub_221EE555C(v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = v15;
      sub_221EE55C4(v23, sub_221EE5550, 0, isUniquelyReferenced_nonNull_native, &v28);

      v25 = sub_221F921A4(3, v28);

      return v25;
    }

LABEL_8:
    v18 = MEMORY[0x277D84FA0];
    goto LABEL_9;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_221EE4BD0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 112));

  v1 = *(v0 + 168);

  sub_221E967CC(*(v0 + 176));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_221EE4C4C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFEBF88, &qword_221FBE3D0);
    sub_221EE4D44(a2, 255, MEMORY[0x277CC95F0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221EE4CEC(uint64_t a1, uint64_t a2)
{
  result = sub_221EE4D44(&qword_27CFEC150, a2, type metadata accessor for WorkoutCompletionAnchorStore);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221EE4D44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221EE4D8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_221EE4DB0, v3, 0);
}

uint64_t sub_221EE4DB0()
{
  v1 = v0[5];
  v2 = sub_221ECB494(v0[2], v0[3]);
  if (!v2)
  {
    v2 = sub_221ED82C0(MEMORY[0x277D84F90]);
  }

  v3 = v2;
  if (*(v2 + 16) && (v4 = sub_221ED4C68(v0[4]), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84FA0];
  }

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_221EE4E64(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_221FB5C38();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE4F28, v2, 0);
}

id sub_221EE4F28()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  *(v0 + 112) = v2;
  v3 = -1;
  v4 = -1 << v2;
  if (-(-1 << v2) < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & *(v1 + 64);

  if (v5)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 64) = v5;
    *(v0 + 72) = v7;
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    v11 = (v7 << 9) | (8 * __clz(__rbit64(v5)));
    v12 = *(*(v6 + 48) + v11);
    v13 = *(*(v6 + 56) + v11);

    v15 = sub_221EE4978(v14, v12, v10);
    *(v0 + 80) = v15;
    result = [v10 UUID];
    if (result)
    {
      v17 = result;
      v19 = *(v0 + 48);
      v18 = *(v0 + 56);
      v20 = *(v0 + 40);

      sub_221FB5C18();

      v21 = sub_221FB5BE8();
      v23 = v22;
      *(v0 + 88) = v22;
      (*(v19 + 8))(v18, v20);
      v24 = swift_task_alloc();
      *(v0 + 96) = v24;
      *v24 = v0;
      v24[1] = sub_221EE515C;
      v25 = *(v0 + 32);

      return sub_221ED0378(v15, v21, v23);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = 0;
    while (((63 - v4) >> 6) - 1 != v8)
    {
      v7 = v8 + 1;
      v5 = *(v6 + 8 * v8++ + 72);
      if (v5)
      {
        goto LABEL_8;
      }
    }

    v26 = *(v0 + 56);

    v27 = *(v0 + 8);

    return v27();
  }

  return result;
}

uint64_t sub_221EE515C()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *v1;
  *(*v1 + 104) = v0;

  v5 = v2[11];
  v6 = v2[10];
  v7 = v2[4];

  if (v0)
  {
    v8 = sub_221EE54E0;
  }

  else
  {
    v8 = sub_221EE52C0;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

void sub_221EE52C0()
{
  v1 = *(v0 + 72);
  v2 = (*(v0 + 64) - 1) & *(v0 + 64);
  if (v2)
  {
    v3 = *(v0 + 16);
LABEL_7:
    *(v0 + 64) = v2;
    *(v0 + 72) = v1;
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);
    v7 = (v1 << 9) | (8 * __clz(__rbit64(v2)));
    v8 = *(*(v3 + 48) + v7);
    v9 = *(*(v3 + 56) + v7);

    v11 = sub_221EE4978(v10, v8, v6);
    *(v0 + 80) = v11;
    v12 = [v6 UUID];
    if (v12)
    {
      v13 = v12;
      v15 = *(v0 + 48);
      v14 = *(v0 + 56);
      v16 = *(v0 + 40);

      sub_221FB5C18();

      v17 = sub_221FB5BE8();
      v19 = v18;
      *(v0 + 88) = v18;
      (*(v15 + 8))(v14, v16);
      v20 = swift_task_alloc();
      *(v0 + 96) = v20;
      *v20 = v0;
      v20[1] = sub_221EE515C;
      v21 = *(v0 + 32);

      sub_221ED0378(v11, v17, v19);
    }

    else
    {
LABEL_15:
      __break(1u);
    }
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        goto LABEL_15;
      }

      if (v4 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 16);
      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v22 = *(v0 + 56);
    v23 = *(v0 + 16);

    v24 = *(v0 + 8);

    v24();
  }
}

uint64_t sub_221EE54E0()
{
  v1 = v0[7];
  v2 = v0[2];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t sub_221EE5550@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t sub_221EE555C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC160, &qword_221FBA950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EE55C4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v42 = a5;
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
  v36 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  while (v9)
  {
    v39 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 9) | (8 * __clz(__rbit64(v9)));
    v17 = *(*(a1 + 56) + v16);
    v41[0] = *(*(a1 + 48) + v16);
    v41[1] = v17;

    a2(v40, v41);

    v19 = v40[0];
    v18 = v40[1];
    v20 = *v42;
    v22 = sub_221ED4C68(v40[0]);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_25;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((v39 & 1) == 0)
      {
        sub_221ED729C();
      }
    }

    else
    {
      v27 = v42;
      sub_221ED5E3C(v25, v39 & 1);
      v28 = *v27;
      v29 = sub_221ED4C68(v19);
      if ((v26 & 1) != (v30 & 1))
      {
        goto LABEL_27;
      }

      v22 = v29;
    }

    v9 &= v9 - 1;
    v31 = *v42;
    if (v26)
    {
      v12 = v31[7];
      v13 = *(v12 + 8 * v22);
      *(v12 + 8 * v22) = v18;
    }

    else
    {
      v31[(v22 >> 6) + 8] |= 1 << v22;
      *(v31[6] + 8 * v22) = v19;
      *(v31[7] + 8 * v22) = v18;
      v32 = v31[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_26;
      }

      v31[2] = v34;
    }

    a4 = 1;
    v11 = v14;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_221E96470();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v39 = a4;
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

uint64_t sub_221EE5820(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v9 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_221E963B4;

  return v9(a1, a2);
}

uint64_t sub_221EE5938(char a1)
{
  *(v2 + 536) = v1;
  *(v2 + 805) = a1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  *(v2 + 544) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EE59D8, v1, 0);
}

uint64_t sub_221EE59D8()
{
  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = sub_221FB61D8();
  v0[69] = __swift_project_value_buffer(v2, qword_281307DD8);
  sub_221E9DCE8(0xD000000000000076, 0x8000000221FC2320, 0xD00000000000001ALL, 0x8000000221FC23A0);
  v0[70] = *(v1 + 112);
  v3 = swift_task_alloc();
  v0[71] = v3;
  *v3 = v0;
  v3[1] = sub_221EE5AF4;

  return sub_221F7E048();
}

uint64_t sub_221EE5AF4()
{
  v1 = *(*v0 + 568);
  v2 = *(*v0 + 536);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EE5C04, v2, 0);
}

uint64_t sub_221EE5C04()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 288), *(*(v0 + 536) + 312));
  v2 = swift_task_alloc();
  *(v0 + 576) = v2;
  *v2 = v0;
  v2[1] = sub_221EE5CC0;

  return sub_221EBD594(0xD000000000000016, 0x8000000221FC16E0, v1);
}

uint64_t sub_221EE5CC0(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 576);
  v6 = *v2;
  *(v4 + 792) = a1;
  *(v4 + 584) = v1;

  v7 = *(v3 + 536);
  if (v1)
  {
    v8 = sub_221EE5FD0;
  }

  else
  {
    v8 = sub_221EE5DF8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_221EE5DF8()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 248), *(*(v0 + 536) + 272));
  v1 = swift_task_alloc();
  *(v0 + 592) = v1;
  *v1 = v0;
  v1[1] = sub_221EE5E98;

  return sub_221EF490C();
}

uint64_t sub_221EE5E98(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 592);
  v6 = *v2;
  *(v4 + 794) = a1;
  *(v4 + 600) = v1;

  v7 = *(v3 + 536);
  if (v1)
  {
    v8 = sub_221EE62CC;
  }

  else
  {
    v8 = sub_221EE60D8;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_221EE5FD0()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FB9A50, v4);

  v5 = v0[73];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE60D8()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 288), *(*(v0 + 536) + 312));
  v2 = swift_task_alloc();
  *(v0 + 608) = v2;
  *v2 = v0;
  v2[1] = sub_221EE6194;

  return sub_221EBD594(0xD000000000000011, 0x8000000221FC1700, v1);
}

uint64_t sub_221EE6194(__int16 a1)
{
  v3 = *v2;
  v4 = *v2;
  v5 = *(*v2 + 608);
  v6 = *v2;
  *(v4 + 796) = a1;
  *(v4 + 616) = v1;

  v7 = *(v3 + 536);
  if (v1)
  {
    v8 = sub_221EE6678;
  }

  else
  {
    v8 = sub_221EE63D4;
  }

  return MEMORY[0x2822009F8](v8, v7, 0);
}

uint64_t sub_221EE62CC()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAD0, v4);

  v5 = v0[75];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE63D4()
{
  *(v0 + 624) = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 160), *(*(v0 + 536) + 184));

  return MEMORY[0x2822009F8](sub_221EE644C, 0, 0);
}

uint64_t sub_221EE644C()
{
  v1 = v0[78];
  v0[2] = v0;
  v0[7] = v0 + 66;
  v0[3] = sub_221EE6568;
  v2 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC168, &qword_221FBAAE0);
  v0[18] = MEMORY[0x277D85DD0];
  v0[19] = 1107296256;
  v0[20] = sub_221EF4C50;
  v0[21] = &block_descriptor_12;
  v0[22] = v2;
  [v1 fetchCloudKitAccountInfoWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_221EE6568()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 632) = v2;
  if (v2)
  {
    v3 = sub_221EE6A60;
  }

  else
  {
    v3 = sub_221EE6780;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EE6678()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAD8, v4);

  v5 = v0[77];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE6780()
{
  v1 = *(v0 + 536);
  *(v0 + 798) = sub_221EF6738(*(v0 + 528));

  return MEMORY[0x2822009F8](sub_221EE67F0, v1, 0);
}

uint64_t sub_221EE67F0()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 288), *(*(v0 + 536) + 312));
  v4 = off_283558638 + *off_283558638;
  v1 = *(off_283558638 + 1);
  v2 = swift_task_alloc();
  *(v0 + 640) = v2;
  *v2 = v0;
  v2[1] = sub_221EE6924;

  return (v4)(&type metadata for SecureCloudAccountStore, &off_283558620);
}

uint64_t sub_221EE6924(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 640);
  v7 = *v3;
  v5[81] = a1;
  v5[82] = a2;
  v5[83] = v2;

  v8 = v4[67];
  if (v2)
  {
    v9 = sub_221EE9538;
  }

  else
  {
    v9 = sub_221EE6BDC;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_221EE6A60()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 536);
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_221EE6AD4, v2, 0);
}

uint64_t sub_221EE6AD4()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAE8, v4);

  v5 = v0[79];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE6BDC()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 248), *(*(v0 + 536) + 272));
  v1 = swift_task_alloc();
  *(v0 + 672) = v1;
  *v1 = v0;
  v1[1] = sub_221EE6C7C;

  return sub_221EF4D28();
}

uint64_t sub_221EE6C7C(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v6 = *(*v3 + 672);
  v7 = *v3;
  v5[85] = a1;
  v5[86] = a2;
  v5[87] = v2;

  v8 = v4[67];
  if (v2)
  {
    v9 = sub_221EE6EB8;
  }

  else
  {
    v9 = sub_221EE6DB8;
  }

  return MEMORY[0x2822009F8](v9, v8, 0);
}

uint64_t sub_221EE6DB8()
{
  v1 = [*__swift_project_boxed_opaque_existential_0Tm((v0[67] + 160) *(v0[67] + 184))];
  if (v1)
  {
    v2 = v1;
    v3 = sub_221FB6318();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  v0[89] = v5;
  v0[88] = v3;
  v6 = *__swift_project_boxed_opaque_existential_0Tm((v0[67] + 160), *(v0[67] + 184));
  v7 = swift_task_alloc();
  v0[90] = v7;
  *v7 = v0;
  v7[1] = sub_221EE6FC8;

  return sub_221F991FC(v6);
}

uint64_t sub_221EE6EB8()
{
  v1 = v0[82];
  v2 = v0[70];
  v3 = v0[68];

  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_221FA7A78(0, 0, v3, &unk_221FBAAF8, v5);

  v6 = v0[87];
  v7 = v0[68];

  v8 = v0[1];

  return v8();
}

uint64_t sub_221EE6FC8(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 720);
  v13 = *v3;
  v4[91] = a1;
  v4[92] = a2;
  v4[93] = v2;

  if (v2)
  {
    v6 = v4[89];
    v7 = v4[86];
    v8 = v4[82];
    v9 = v4[67];

    v10 = sub_221EE8A1C;
    v11 = v9;
  }

  else
  {
    v11 = v4[67];
    v10 = sub_221EE7118;
  }

  return MEMORY[0x2822009F8](v10, v11, 0);
}

uint64_t sub_221EE7118()
{
  v198 = v0;
  v1 = *(v0 + 552);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Checking CloudKit account status", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v0 + 736);
  v6 = *(v0 + 712);
  v7 = *(v0 + 552);

  v8 = sub_221FB61B8();
  v9 = sub_221FB65C8();

  v191 = v5;

  if (os_log_type_enabled(v8, v9))
  {
    v10 = *(v0 + 712);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v197 = v12;
    *v11 = 136315394;
    if (v10)
    {
      v13 = *(v0 + 704);
      *(v0 + 352) = 0;
      *(v0 + 360) = 0xE000000000000000;
      *(v0 + 320) = v13;
      *(v0 + 328) = v6;
      sub_221FB6A08();
      v14 = *(v0 + 352);
      v15 = *(v0 + 360);
    }

    else
    {
      v15 = 0xE300000000000000;
      v14 = 7104878;
    }

    v16 = *(v0 + 736);
    v17 = sub_221EF4114(v14, v15, &v197);

    *(v11 + 4) = v17;
    *(v11 + 12) = 2080;
    if (v16)
    {
      v18 = *(v0 + 728);
      *(v0 + 288) = 0;
      *(v0 + 296) = 0xE000000000000000;
      *(v0 + 416) = v18;
      *(v0 + 424) = v191;
      sub_221FB6A08();
      v19 = *(v0 + 288);
      v20 = *(v0 + 296);
    }

    else
    {
      v20 = 0xE300000000000000;
      v19 = 7104878;
    }

    v21 = sub_221EF4114(v19, v20, &v197);

    *(v11 + 14) = v21;
    _os_log_impl(&dword_221E93000, v8, v9, "Legacy CloudKit address: %s vs %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v12, -1, -1);
    MEMORY[0x223DADA80](v11, -1, -1);
  }

  else
  {
  }

  v22 = *(v0 + 688);
  v23 = *(v0 + 656);
  v24 = *(v0 + 552);

  v25 = sub_221FB61B8();
  v26 = sub_221FB65C8();
  v194 = v23;

  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 656);
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v197 = v29;
    *v28 = 136315394;
    if (v27)
    {
      v30 = *(v0 + 648);
      *(v0 + 496) = 0;
      *(v0 + 504) = 0xE000000000000000;
      *(v0 + 512) = v30;
      *(v0 + 520) = v194;
      sub_221FB6A08();
      v31 = *(v0 + 496);
      v32 = *(v0 + 504);
    }

    else
    {
      v32 = 0xE300000000000000;
      v31 = 7104878;
    }

    v33 = *(v0 + 688);
    v34 = sub_221EF4114(v31, v32, &v197);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    if (v33)
    {
      v35 = *(v0 + 680);
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      *(v0 + 448) = v35;
      *(v0 + 456) = v22;
      sub_221FB6A08();
      v36 = *(v0 + 272);
      v37 = *(v0 + 280);
    }

    else
    {
      v37 = 0xE300000000000000;
      v36 = 7104878;
    }

    v38 = sub_221EF4114(v36, v37, &v197);

    *(v28 + 14) = v38;
    _os_log_impl(&dword_221E93000, v25, v26, "Secure Cloud CloudKit address: %s vs %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v29, -1, -1);
    MEMORY[0x223DADA80](v28, -1, -1);
  }

  else
  {
  }

  v39 = *(v0 + 552);
  v40 = sub_221FB61B8();
  v41 = sub_221FB65C8();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 797) << 8;
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v197 = v44;
    *v43 = 136315394;
    if (v42 == 768)
    {
      v45 = 0xE300000000000000;
      v46 = 7104878;
    }

    else
    {
      v47 = *(v0 + 796);
      *(v0 + 432) = 0;
      *(v0 + 440) = 0xE000000000000000;
      *(v0 + 800) = v47;
      sub_221FB6A08();
      v48 = *(v0 + 432);
      v49 = *(v0 + 440);
      *(v0 + 464) = 0;
      *(v0 + 472) = 0xE000000000000000;
      *(v0 + 480) = v48;
      *(v0 + 488) = v49;
      sub_221FB6A08();

      v46 = *(v0 + 464);
      v45 = *(v0 + 472);
    }

    v50 = *(v0 + 798);
    v51 = sub_221EF4114(v46, v45, &v197);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2080;
    *(v0 + 400) = 0;
    *(v0 + 408) = 0xE000000000000000;
    *(v0 + 804) = v50;
    sub_221FB6A08();
    v52 = sub_221EF4114(*(v0 + 400), *(v0 + 408), &v197);

    *(v43 + 14) = v52;
    _os_log_impl(&dword_221E93000, v40, v41, "Legacy account status: %s vs %s", v43, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v44, -1, -1);
    MEMORY[0x223DADA80](v43, -1, -1);
  }

  else
  {
  }

  v53 = *(v0 + 552);
  v54 = sub_221FB61B8();
  v55 = sub_221FB65C8();
  v56 = os_log_type_enabled(v54, v55);
  v57 = *(v0 + 792);
  if (v56)
  {
    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v197 = v59;
    *v58 = 136315394;
    v60 = v57 & 0xFF00;
    if (v60 == 768)
    {
      v61 = 0xE300000000000000;
      v62 = 7104878;
    }

    else
    {
      v63 = *(v0 + 792);
      *(v0 + 336) = 0;
      *(v0 + 344) = 0xE000000000000000;
      *(v0 + 801) = v63;
      sub_221FB6A08();
      v64 = *(v0 + 336);
      v65 = *(v0 + 344);
      *(v0 + 368) = 0;
      *(v0 + 376) = 0xE000000000000000;
      *(v0 + 384) = v64;
      *(v0 + 392) = v65;
      sub_221FB6A08();

      v62 = *(v0 + 368);
      v61 = *(v0 + 376);
    }

    v66 = *(v0 + 794);
    v67 = sub_221EF4114(v62, v61, &v197);

    *(v58 + 4) = v67;
    *(v58 + 12) = 2080;
    *(v0 + 304) = 0;
    *(v0 + 312) = 0xE000000000000000;
    *(v0 + 802) = v66;
    sub_221FB6A08();
    v68 = sub_221EF4114(*(v0 + 304), *(v0 + 312), &v197);

    *(v58 + 14) = v68;
    _os_log_impl(&dword_221E93000, v54, v55, "Secure cloud account status: %s vs %s", v58, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DADA80](v59, -1, -1);
    MEMORY[0x223DADA80](v58, -1, -1);
  }

  else
  {

    v60 = v57 & 0xFF00;
  }

  v69 = *(v0 + 798);
  v70 = *(v0 + 794);
  v71 = *(v0 + 792);
  v72 = *(v0 + 796) & 0xFF00;
  v73 = *(v0 + 796);
  if (v60 == 768 || v70 != v71 || v72 == 768 || v69 != v73 || (*(v0 + 792) ^ *(v0 + 794)) > 0xFF)
  {
LABEL_52:
    v78 = *(v0 + 552);
    v79 = sub_221FB61B8();
    v80 = sub_221FB65C8();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_221E93000, v79, v80, "CloudKit account status changed", v81, 2u);
      MEMORY[0x223DADA80](v81, -1, -1);
    }

    v83 = v70 == 1 || v69 == 1;
    if (v60 == 768)
    {
      if (v70 != 5)
      {
LABEL_67:
        if (v72 != 768)
        {
          if (v69 == 5)
          {
            v85 = v73 == 1;
            goto LABEL_72;
          }

LABEL_79:

          if (v70 != 5)
          {
            v90 = *(v0 + 795) << 8;

            v89 = v90 == 512;
            if (!v83)
            {
              v85 = 0;
              goto LABEL_164;
            }

            v91 = v83;
            v92 = 0;
            if (v90 != 512)
            {
              goto LABEL_153;
            }

            v93 = 1;
            v85 = 0;
            v192 = 0;
            v94 = 0;
            v84 = 0;
            v186 = 0;
LABEL_180:
            v123 = 1;
            goto LABEL_181;
          }

          v84 = 0;
          v85 = 0;
LABEL_102:
          v109 = *(v0 + 688);
          v110 = *(v0 + 656);
          if (v110)
          {
            if (!v109)
            {
              v112 = *(v0 + 712);

              if (v112)
              {
                v91 = v83;
                v186 = v85;
                v113 = *(v0 + 795) << 8;

                v192 = 0;
                v92 = v113 == 512;
                goto LABEL_155;
              }

LABEL_126:
              v91 = v83;
              v186 = v85;
              v118 = *(v0 + 795) << 8;
              v92 = v118 == 512;
              if (v69 == 1)
              {
                if ((v84 & 1) == 0)
                {
                  v92 = 0;
                  if (v118 != 512)
                  {
                    v85 = 1;
                    v93 = 1;
                    v192 = 0;
                    v94 = 1;
                    v84 = 0;
                    v123 = 0;
                    goto LABEL_181;
                  }

                  v192 = 0;
                  goto LABEL_139;
                }

                goto LABEL_135;
              }

              if (v84)
              {
LABEL_135:
                v192 = 0;
                goto LABEL_158;
              }

              v192 = 0;
              v84 = 0;
LABEL_155:
              v85 = 1;
              v93 = 1;
              v94 = 1;
              v123 = v92;
              goto LABEL_181;
            }

            if (*(v0 + 648) == *(v0 + 680) && v110 == v109)
            {

LABEL_115:

              v115 = *(v0 + 795) << 8;
              v91 = v83;
              if (v69 == 1)
              {
                if ((v84 & 1) == 0)
                {
                  if (v115 == 512)
                  {
LABEL_118:
                    v192 = 0;
                    v94 = 0;
                    v84 = 0;
                    v92 = 1;
                    v186 = v85;
                    v93 = 1;
                    goto LABEL_180;
                  }

LABEL_152:
                  v92 = v85;
LABEL_153:
                  v192 = 0;
                  v94 = 0;
                  v84 = 0;
                  v123 = 0;
                  v85 = v92;
                  v93 = 1;
                  v186 = v92;
                  v92 = 0;
LABEL_181:
                  v124 = v93;
                  *(v0 + 809) = v84 & 1;
                  v195 = v94;
                  *(v0 + 808) = v94;
                  v187 = v85;
                  *(v0 + 807) = v85;
                  v189 = v92;
                  *(v0 + 806) = v92;
                  v125 = *(v0 + 552);
                  v126 = sub_221FB61B8();
                  v127 = sub_221FB65C8();
                  if (os_log_type_enabled(v126, v127))
                  {
                    v128 = swift_slowAlloc();
                    *v128 = 67109120;
                    *(v128 + 4) = v91;
                    _os_log_impl(&dword_221E93000, v126, v127, "Signed out: %{BOOL}d", v128, 8u);
                    MEMORY[0x223DADA80](v128, -1, -1);
                  }

                  v129 = *(v0 + 552);

                  v130 = sub_221FB61B8();
                  v131 = sub_221FB65C8();
                  if (os_log_type_enabled(v130, v131))
                  {
                    v132 = swift_slowAlloc();
                    *v132 = 67109120;
                    *(v132 + 4) = v84 & 1;
                    _os_log_impl(&dword_221E93000, v130, v131, "New legacy account: %{BOOL}d", v132, 8u);
                    MEMORY[0x223DADA80](v132, -1, -1);
                  }

                  v133 = *(v0 + 552);

                  v134 = sub_221FB61B8();
                  v135 = sub_221FB65C8();
                  if (os_log_type_enabled(v134, v135))
                  {
                    v136 = swift_slowAlloc();
                    *v136 = 67109120;
                    *(v136 + 4) = v195;
                    _os_log_impl(&dword_221E93000, v134, v135, "New secure cloud account: %{BOOL}d", v136, 8u);
                    MEMORY[0x223DADA80](v136, -1, -1);
                  }

                  v137 = *(v0 + 552);

                  v138 = sub_221FB61B8();
                  v139 = sub_221FB65C8();
                  if (os_log_type_enabled(v138, v139))
                  {
                    v140 = swift_slowAlloc();
                    *v140 = 67109120;
                    *(v140 + 4) = v186;
                    _os_log_impl(&dword_221E93000, v138, v139, "Signed in after sign out: %{BOOL}d", v140, 8u);
                    MEMORY[0x223DADA80](v140, -1, -1);
                  }

                  v141 = *(v0 + 552);

                  v142 = sub_221FB61B8();
                  v143 = sub_221FB65C8();
                  if (os_log_type_enabled(v142, v143))
                  {
                    v144 = swift_slowAlloc();
                    *v144 = 67109120;
                    *(v144 + 4) = v192 & 1;
                    _os_log_impl(&dword_221E93000, v142, v143, "Secure cloud account sign in on upgrade: %{BOOL}d", v144, 8u);
                    MEMORY[0x223DADA80](v144, -1, -1);
                  }

                  v145 = *(v0 + 552);

                  v146 = sub_221FB61B8();
                  v147 = sub_221FB65C8();
                  if (os_log_type_enabled(v146, v147))
                  {
                    v148 = swift_slowAlloc();
                    *v148 = 67109120;
                    *(v148 + 4) = v123;
                    _os_log_impl(&dword_221E93000, v146, v147, "Secure cloud E2E encryption enabled: %{BOOL}d", v148, 8u);
                    MEMORY[0x223DADA80](v148, -1, -1);
                  }

                  v149 = *(v0 + 552);

                  v150 = sub_221FB61B8();
                  v151 = sub_221FB65C8();
                  if (os_log_type_enabled(v150, v151))
                  {
                    v152 = swift_slowAlloc();
                    *v152 = 67109120;
                    *(v152 + 4) = v124 & 1;
                    _os_log_impl(&dword_221E93000, v150, v151, "Should clear state: %{BOOL}d", v152, 8u);
                    MEMORY[0x223DADA80](v152, -1, -1);
                  }

                  v153 = *(v0 + 552);

                  v154 = sub_221FB61B8();
                  v155 = sub_221FB65C8();
                  if (os_log_type_enabled(v154, v155))
                  {
                    v156 = swift_slowAlloc();
                    *v156 = 67109120;
                    *(v156 + 4) = v187;
                    _os_log_impl(&dword_221E93000, v154, v155, "Should perform fetch: %{BOOL}d", v156, 8u);
                    MEMORY[0x223DADA80](v156, -1, -1);
                  }

                  v157 = *(v0 + 552);

                  v158 = sub_221FB61B8();
                  v159 = sub_221FB65C8();
                  if (os_log_type_enabled(v158, v159))
                  {
                    v160 = swift_slowAlloc();
                    *v160 = 67109120;
                    *(v160 + 4) = v84 & 1;
                    _os_log_impl(&dword_221E93000, v158, v159, "Should create legacy subscriptions: %{BOOL}d", v160, 8u);
                    MEMORY[0x223DADA80](v160, -1, -1);
                  }

                  v161 = *(v0 + 552);

                  v162 = sub_221FB61B8();
                  v163 = sub_221FB65C8();
                  if (os_log_type_enabled(v162, v163))
                  {
                    v164 = swift_slowAlloc();
                    *v164 = 67109120;
                    *(v164 + 4) = v195;
                    _os_log_impl(&dword_221E93000, v162, v163, "Should create secure cloud subscriptions: %{BOOL}d", v164, 8u);
                    MEMORY[0x223DADA80](v164, -1, -1);
                  }

                  v165 = *(v0 + 552);

                  v166 = sub_221FB61B8();
                  v167 = sub_221FB65C8();
                  if (os_log_type_enabled(v166, v167))
                  {
                    v168 = swift_slowAlloc();
                    *v168 = 67109120;
                    *(v168 + 4) = v189;
                    _os_log_impl(&dword_221E93000, v166, v167, "Should bootstrap secure cloud container: %{BOOL}d", v168, 8u);
                    MEMORY[0x223DADA80](v168, -1, -1);
                  }

                  if (v124)
                  {
                    v169 = *(v0 + 552);
                    v170 = sub_221FB61B8();
                    v171 = sub_221FB65C8();
                    if (os_log_type_enabled(v170, v171))
                    {
                      v172 = swift_slowAlloc();
                      *v172 = 0;
                      _os_log_impl(&dword_221E93000, v170, v171, "Clearing token cache and friend list for account update", v172, 2u);
                      MEMORY[0x223DADA80](v172, -1, -1);
                    }

                    v173 = *(v0 + 536);

                    *(v0 + 752) = *__swift_project_boxed_opaque_existential_0Tm((v173 + 160), *(v173 + 184));
                    v174 = sub_221EE8B24;
                    v175 = 0;
                  }

                  else
                  {
                    v176 = *(v0 + 809);
                    v188 = *(v0 + 808);
                    v190 = *(v0 + 807);
                    v177 = *(v0 + 806);
                    v193 = *(v0 + 680);
                    v196 = *(v0 + 688);
                    v178 = *(v0 + 798);
                    v179 = *(v0 + 794);
                    v180 = *(v0 + 536);
                    v181 = swift_allocObject();
                    swift_weakInit();
                    v182 = swift_allocObject();
                    *(v182 + 16) = v176;
                    *(v182 + 24) = v181;
                    *(v182 + 32) = v188;
                    *(v182 + 33) = v177;
                    *(v182 + 34) = v190;
                    *(v182 + 35) = v178;
                    *(v182 + 37) = v179;
                    *(v182 + 40) = v193;
                    *(v182 + 48) = v196;
                    sub_221E9D138(0, &qword_281306EB8, 0x277D85C78);
                    v183 = sub_221FB6628();
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC170, &qword_221FBAB18);
                    v184 = swift_allocObject();
                    *(v0 + 768) = v184;
                    swift_defaultActor_initialize();
                    *(v184 + 176) = 0;
                    *(v184 + 184) = 0;
                    *(v184 + 192) = 0;
                    *(v184 + 112) = xmmword_221FBA960;
                    *(v184 + 128) = 0;
                    *(v184 + 136) = 0x405E000000000000;
                    *(v184 + 144) = 0x7FFFFFFFFFFFFFFFLL;
                    *(v184 + 152) = &unk_221FBAB10;
                    *(v184 + 160) = v182;
                    *(v184 + 168) = v183;
                    v185 = *(v180 + 408);
                    *(v180 + 408) = v184;

                    sub_221EEDBE0(v185);
                    v174 = sub_221EE90CC;
                    v175 = v184;
                  }

                  return MEMORY[0x2822009F8](v174, v175, 0);
                }

LABEL_131:
                v186 = v85;
                v192 = 0;
                if (v115 == 512)
                {
LABEL_132:
                  v92 = 1;
                  v85 = 1;
                  v93 = 1;
                  v94 = 0;
                  goto LABEL_133;
                }

                goto LABEL_149;
              }

              if (v84)
              {
                goto LABEL_131;
              }

              if (v115 != 512)
              {
                goto LABEL_172;
              }

LABEL_170:
              v93 = 0;
              v192 = 0;
              v94 = 0;
              v84 = 0;
              v92 = 1;
              goto LABEL_171;
            }

            v114 = sub_221FB6B58();

            if (v114)
            {
              goto LABEL_115;
            }
          }

          else if (!v109)
          {
            v111 = *(v0 + 795) << 8;

            v91 = v83;
            if (v69 == 1)
            {
              if ((v84 & 1) == 0)
              {
                if (v111 == 512)
                {
                  goto LABEL_118;
                }

                goto LABEL_152;
              }
            }

            else if ((v84 & 1) == 0)
            {
              if (v111 != 512)
              {
                goto LABEL_172;
              }

              goto LABEL_170;
            }

            v186 = v85;
            v192 = 0;
            if (v111 == 512)
            {
              goto LABEL_132;
            }

LABEL_149:
            v92 = 0;
LABEL_168:
            v123 = 0;
            v94 = v92;
            v85 = 1;
            v93 = 1;
            v84 = 1;
            v92 = 0;
            goto LABEL_181;
          }

          v116 = *(v0 + 712);
          if (v116)
          {
            v117 = *(v0 + 794);
            v186 = v85;
            if (*(v0 + 704) == *(v0 + 680) && v116 == *(v0 + 688))
            {

              v118 = v117 & 0xFF00;
              if (v69 == 1)
              {
                if ((v84 & 1) == 0)
                {
                  v91 = v83;
                  v85 = 1;
                  if (v118 != 512)
                  {
                    v92 = 0;
                    v84 = 0;
                    v123 = 0;
                    v93 = 1;
                    v192 = 1;
                    v94 = 1;
                    goto LABEL_181;
                  }

                  v192 = 1;
LABEL_139:
                  v84 = 0;
                  v92 = 1;
                  v85 = 1;
                  v93 = 1;
LABEL_179:
                  v94 = 1;
                  goto LABEL_180;
                }

                goto LABEL_160;
              }

              if (v84)
              {
LABEL_160:
                v91 = v83;
                v93 = 1;
                v192 = 1;
                v92 = 1;
                v85 = 1;
LABEL_161:
                v94 = 1;
                v84 = 1;
                v123 = 1;
                if (v118 == 512)
                {
                  goto LABEL_181;
                }

                goto LABEL_168;
              }

              v91 = v83;
              v93 = 0;
              v192 = 1;
              if (v118 != 512)
              {
                v92 = 0;
                v85 = 1;
                v94 = 1;
                v84 = 0;
                v123 = 0;
                goto LABEL_181;
              }

LABEL_178:
              v84 = 0;
              v92 = 1;
              v85 = 1;
              goto LABEL_179;
            }

            v119 = sub_221FB6B58();

            v118 = v117 & 0xFF00;
            v192 = v119;
            if (v69 == 1)
            {
              if ((v84 & 1) == 0)
              {
                v91 = v83;
                if (v118 != 512)
                {
                  v92 = 0;
                  v84 = 0;
                  v123 = 0;
                  v85 = 1;
                  v93 = 1;
                  v94 = 1;
                  goto LABEL_181;
                }

                goto LABEL_139;
              }
            }

            else if ((v84 & 1) == 0)
            {
              v93 = v119 ^ 1;
              v91 = v83;
              if (v118 != 512)
              {
                v92 = 0;
                v84 = 0;
                v123 = 0;
                v85 = 1;
                v94 = 1;
                goto LABEL_181;
              }

              goto LABEL_178;
            }

            v91 = v83;
LABEL_158:
            v92 = 1;
            v85 = 1;
            v93 = 1;
            goto LABEL_161;
          }

          goto LABEL_126;
        }

        if (v69 != 5)
        {
          goto LABEL_79;
        }

LABEL_71:
        v85 = 1;
LABEL_72:
        v86 = *(v0 + 736);
        v87 = *(v0 + 712);
        if (v87)
        {
          if (v86)
          {
            if (*(v0 + 704) == *(v0 + 728) && v87 == v86)
            {

              if (v70 != 5)
              {
                v88 = *(v0 + 795) << 8;

                v89 = v88 == 512;
                if (!v83)
                {
LABEL_164:
                  v91 = v83;
                  if (v89)
                  {
                    v92 = 0;
                    v93 = 0;
                    v192 = 0;
                    v94 = 0;
                    v84 = 0;
                    v123 = 1;
LABEL_173:
                    v186 = v85;
                    goto LABEL_181;
                  }

LABEL_172:
                  v92 = 0;
                  v93 = 0;
                  v192 = 0;
                  v94 = 0;
                  v84 = 0;
                  v123 = 0;
                  goto LABEL_173;
                }

LABEL_143:
                v91 = v83;
                if (v89)
                {
LABEL_144:
                  v92 = 0;
                  v192 = 0;
                  v94 = 0;
                  v84 = 0;
                  v93 = 1;
LABEL_171:
                  v186 = v85;
                  goto LABEL_180;
                }

                goto LABEL_152;
              }

LABEL_101:
              v84 = 0;
              goto LABEL_102;
            }

            v108 = sub_221FB6B58();

            if (v70 == 5)
            {
              v84 = v108 ^ 1;
              goto LABEL_102;
            }

            v120 = v85;
            v121 = *(v0 + 795) << 8;

            v89 = v121 == 512;
            v85 = v120;
            if (v83)
            {
              if (v108)
              {
                goto LABEL_143;
              }

              goto LABEL_89;
            }

            if (v108)
            {
              goto LABEL_164;
            }

            goto LABEL_166;
          }
        }

        else
        {
          if (!v86)
          {
            if (v70 != 5)
            {
              v122 = *(v0 + 795) << 8;

              v89 = v122 == 512;
              if (!v83)
              {
                goto LABEL_164;
              }

              v91 = v83;
              if (v122 == 512)
              {
                goto LABEL_144;
              }

              goto LABEL_152;
            }

            goto LABEL_101;
          }
        }

        if (v70 == 5)
        {
          v84 = 1;
          goto LABEL_102;
        }

        v95 = *(v0 + 795) << 8;

        v89 = v95 == 512;
        if (v83)
        {
LABEL_89:
          v91 = v83;
          v92 = 0;
          v186 = v85;
          if (v89)
          {
LABEL_90:
            v85 = 1;
            v93 = 1;
            v192 = 0;
            v94 = 0;
LABEL_133:
            v84 = 1;
            goto LABEL_180;
          }

LABEL_167:
          v192 = 0;
          goto LABEL_168;
        }

LABEL_166:
        v91 = v83;
        v186 = v85;
        v92 = 0;
        if (v89)
        {
          goto LABEL_90;
        }

        goto LABEL_167;
      }
    }

    else if (v70 != 5 || v71 != 1)
    {
      goto LABEL_67;
    }

    if (v69 != 5)
    {

      v84 = 0;
      v85 = 1;
      goto LABEL_102;
    }

    goto LABEL_71;
  }

  v74 = *(v0 + 688);
  v75 = *(v0 + 656);
  if (v75)
  {
    if (!v74 || (*(v0 + 648) != *(v0 + 680) || v75 != v74) && (sub_221FB6B58() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (v74)
  {
    goto LABEL_52;
  }

  v76 = *(v0 + 736);
  v77 = *(v0 + 712);
  if (v77)
  {
    if (!v76 || (*(v0 + 704) != *(v0 + 728) || v77 != v76) && (sub_221FB6B58() & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  else if (v76)
  {
    goto LABEL_52;
  }

  v96 = *(v0 + 552);
  v97 = sub_221FB61B8();
  v98 = sub_221FB65C8();
  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    *v99 = 0;
    _os_log_impl(&dword_221E93000, v97, v98, "CloudKit account status did not change for any container, not updating", v99, 2u);
    MEMORY[0x223DADA80](v99, -1, -1);
  }

  v100 = *(v0 + 805);

  if (v100 == 1)
  {
    v101 = *(v0 + 536);
    sub_221EEBF38(*(v0 + 794), *(v0 + 798));
  }

  v102 = *(v0 + 560);
  v103 = *(v0 + 544);
  v104 = sub_221FB64C8();
  (*(*(v104 - 8) + 56))(v103, 1, 1, v104);
  v105 = swift_allocObject();
  v105[2] = 0;
  v105[3] = 0;
  v105[4] = v102;

  sub_221FA7A78(0, 0, v103, &unk_221FBAB40, v105);

  v106 = *(v0 + 8);

  return v106();
}

uint64_t sub_221EE8A1C()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAB00, v4);

  v5 = v0[93];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE8B24()
{
  v1 = v0[94];
  v0[10] = v0;
  v0[15] = v0 + 803;
  v0[11] = sub_221EE8C40;
  v2 = swift_continuation_init();
  v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
  v0[26] = MEMORY[0x277D85DD0];
  v0[27] = 1107296256;
  v0[28] = sub_221FA909C;
  v0[29] = &block_descriptor_77;
  v0[30] = v2;
  [v1 clearChangeTokenCacheAndFriendListWithCompletion_];

  return MEMORY[0x282200938](v0 + 10);
}

uint64_t sub_221EE8C40()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 112);
  *(*v0 + 760) = v3;
  if (v3)
  {
    v4 = *(v1 + 688);

    v5 = sub_221EE8F50;
  }

  else
  {
    v5 = sub_221EE8D58;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EE8D74()
{
  __swift_project_boxed_opaque_existential_0Tm((*(v0 + 536) + 120), *(*(v0 + 536) + 144));
  sub_221F7C11C();
  v1 = *(v0 + 809);
  v12 = *(v0 + 808);
  v13 = *(v0 + 807);
  v2 = *(v0 + 806);
  v14 = *(v0 + 680);
  v15 = *(v0 + 688);
  v3 = *(v0 + 798);
  v4 = *(v0 + 794);
  v5 = *(v0 + 536);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v6;
  *(v7 + 32) = v12;
  *(v7 + 33) = v2;
  *(v7 + 34) = v13;
  *(v7 + 35) = v3;
  *(v7 + 37) = v4;
  *(v7 + 40) = v14;
  *(v7 + 48) = v15;
  sub_221E9D138(0, &qword_281306EB8, 0x277D85C78);
  v8 = sub_221FB6628();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC170, &qword_221FBAB18);
  v9 = swift_allocObject();
  *(v0 + 768) = v9;
  swift_defaultActor_initialize();
  *(v9 + 176) = 0;
  *(v9 + 184) = 0;
  *(v9 + 192) = 0;
  *(v9 + 112) = xmmword_221FBA960;
  *(v9 + 128) = 0;
  *(v9 + 136) = 0x405E000000000000;
  *(v9 + 144) = 0x7FFFFFFFFFFFFFFFLL;
  *(v9 + 152) = &unk_221FBAB10;
  *(v9 + 160) = v7;
  *(v9 + 168) = v8;
  v10 = *(v5 + 408);
  *(v5 + 408) = v9;

  sub_221EEDBE0(v10);

  return MEMORY[0x2822009F8](sub_221EE90CC, v9, 0);
}

uint64_t sub_221EE8F50()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 536);
  swift_willThrow();

  return MEMORY[0x2822009F8](sub_221EE8FC4, v2, 0);
}

uint64_t sub_221EE8FC4()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAB38, v4);

  v5 = v0[95];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE90CC()
{
  v1 = *(v0 + 768);
  v2 = sub_221EB83D0(qword_281307C40, &qword_27CFEC170, &qword_221FBAB18);
  v3 = *(MEMORY[0x277D85A40] + 4);
  v4 = swift_task_alloc();
  *(v0 + 776) = v4;
  *v4 = v0;
  v4[1] = sub_221EE91D0;
  v5 = *(v0 + 768);
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, v1, v2, 0x29286E7572, 0xE500000000000000, sub_221EEE040, v5, v6);
}

uint64_t sub_221EE91D0()
{
  v2 = *v1;
  v3 = *(*v1 + 776);
  v7 = *v1;
  *(*v1 + 784) = v0;

  if (v0)
  {
    v4 = *(v2 + 768);
    v5 = sub_221EE940C;
  }

  else
  {
    v4 = *(v2 + 536);
    v5 = sub_221EE92E8;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_221EE92E8()
{
  v1 = *(v0 + 768);
  v2 = *(v0 + 536);
  sub_221EEBF38(*(v0 + 794), *(v0 + 798));

  v3 = *(v0 + 560);
  v4 = *(v0 + 544);
  v5 = sub_221FB64C8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v3;

  sub_221FA7A78(0, 0, v4, &unk_221FBAB28, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_221EE9428()
{
  v1 = v0[96];
  v2 = v0[70];
  v3 = v0[68];

  v4 = sub_221FB64C8();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;

  sub_221FA7A78(0, 0, v3, &unk_221FBAB20, v5);

  v6 = v0[98];
  v7 = v0[68];

  v8 = v0[1];

  return v8();
}

uint64_t sub_221EE9538()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = sub_221FB64C8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_221FA7A78(0, 0, v2, &unk_221FBAAF0, v4);

  v5 = v0[83];
  v6 = v0[68];

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EE9640(uint64_t a1, char a2, uint64_t a3, char a4, char a5, char a6, __int16 a7, __int16 a8)
{
  *(v8 + 616) = v11;
  *(v8 + 608) = v10;
  *(v8 + 762) = a8;
  *(v8 + 760) = a7;
  *(v8 + 769) = a6;
  *(v8 + 768) = a5;
  *(v8 + 767) = a4;
  *(v8 + 600) = a3;
  *(v8 + 766) = a2;
  return MEMORY[0x2822009F8](sub_221EE9688, 0, 0);
}

uint64_t sub_221EE9688()
{
  if (*(v0 + 766) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DD8);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Creating legacy subscriptions for account update", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v5 = *(v0 + 600);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v7 = v0 + 80;
      sub_221EA4AB4(Strong + 160, v0 + 392);

      v8 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 392), *(v0 + 416));
      *(v0 + 80) = v0;
      *(v0 + 120) = v0 + 765;
      *(v0 + 88) = sub_221EE9E7C;
      v9 = swift_continuation_init();
      *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      *(v0 + 208) = MEMORY[0x277D85DD0];
      *(v0 + 216) = 1107296256;
      *(v0 + 224) = sub_221FA909C;
      *(v0 + 232) = &block_descriptor_119;
      *(v0 + 240) = v9;
      [v8 subscribeToCloudKitDatabaseChangesWithCompletion_];
LABEL_34:

      return MEMORY[0x282200938](v7);
    }
  }

  if (*(v0 + 767) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v10 = sub_221FB61D8();
    __swift_project_value_buffer(v10, qword_281307DD8);
    v11 = sub_221FB61B8();
    v12 = sub_221FB65C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_221E93000, v11, v12, "Creating secure cloud subscriptions for account update", v13, 2u);
      MEMORY[0x223DADA80](v13, -1, -1);
    }

    v14 = *(v0 + 600);

    swift_beginAccess();
    v15 = swift_weakLoadStrong();
    if (v15)
    {
      sub_221EA4AB4(v15 + 368, v0 + 352);

      __swift_project_boxed_opaque_existential_0Tm((v0 + 352), *(v0 + 376));
      v16 = swift_task_alloc();
      *(v0 + 632) = v16;
      *v16 = v0;
      v16[1] = sub_221EEA62C;

      return sub_221F907F4();
    }
  }

  if (*(v0 + 768) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v18 = sub_221FB61D8();
    *(v0 + 648) = __swift_project_value_buffer(v18, qword_281307DD8);
    v19 = sub_221FB61B8();
    v20 = sub_221FB65C8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_221E93000, v19, v20, "Bootstrapping secure cloud container", v21, 2u);
      MEMORY[0x223DADA80](v21, -1, -1);
    }

    v22 = *(v0 + 600);

    swift_beginAccess();
    v23 = swift_weakLoadStrong();
    *(v0 + 656) = v23;
    if (v23)
    {
      v24 = v23;
      v25 = sub_221EEAC5C;
LABEL_43:

      return MEMORY[0x2822009F8](v25, v24, 0);
    }

    v26 = *(v0 + 648);
    v27 = sub_221FB61B8();
    v28 = sub_221FB65C8();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_221E93000, v27, v28, "Bootstrapping complete", v29, 2u);
      MEMORY[0x223DADA80](v29, -1, -1);
    }
  }

  if (*(v0 + 769) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v30 = sub_221FB61D8();
    __swift_project_value_buffer(v30, qword_281307DD8);
    v31 = sub_221FB61B8();
    v32 = sub_221FB65C8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_221E93000, v31, v32, "Fetching all changes for account update", v33, 2u);
      MEMORY[0x223DADA80](v33, -1, -1);
    }

    v34 = *(v0 + 600);

    swift_beginAccess();
    v35 = swift_weakLoadStrong();
    if (v35)
    {
      v7 = v0 + 16;
      sub_221EA4AB4(v35 + 160, v0 + 272);

      v36 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 764;
      *(v0 + 24) = sub_221EEB2A4;
      v37 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_221FA909C;
      *(v0 + 168) = &block_descriptor_114;
      *(v0 + 176) = v37;
      [v36 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];
      goto LABEL_34;
    }
  }

  v38 = *(v0 + 600);
  swift_beginAccess();
  v39 = swift_weakLoadStrong();
  *(v0 + 688) = v39;
  if (v39)
  {
    v24 = v39;
    v25 = sub_221EEB564;
    goto LABEL_43;
  }

  v40 = *(v0 + 600);
  swift_beginAccess();
  v41 = swift_weakLoadStrong();
  *(v0 + 712) = v41;
  if (v41)
  {
    v24 = v41;
    v25 = sub_221EEB920;
    goto LABEL_43;
  }

  v42 = *(v0 + 600);
  swift_beginAccess();
  v43 = swift_weakLoadStrong();
  *(v0 + 752) = v43;
  if (v43)
  {
    v24 = v43;
    v25 = sub_221EEBEC0;
    goto LABEL_43;
  }

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_221EE9E7C()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 624) = v2;
  if (v2)
  {
    v3 = sub_221EEA5B8;
  }

  else
  {
    v3 = sub_221EE9F8C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EE9F8C()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 392));
  if (*(v0 + 767) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    __swift_project_value_buffer(v1, qword_281307DD8);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Creating secure cloud subscriptions for account update", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v5 = *(v0 + 600);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_221EA4AB4(Strong + 368, v0 + 352);

      __swift_project_boxed_opaque_existential_0Tm((v0 + 352), *(v0 + 376));
      v7 = swift_task_alloc();
      *(v0 + 632) = v7;
      *v7 = v0;
      v7[1] = sub_221EEA62C;

      return sub_221F907F4();
    }
  }

  if (*(v0 + 768) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v9 = sub_221FB61D8();
    *(v0 + 648) = __swift_project_value_buffer(v9, qword_281307DD8);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_221E93000, v10, v11, "Bootstrapping secure cloud container", v12, 2u);
      MEMORY[0x223DADA80](v12, -1, -1);
    }

    v13 = *(v0 + 600);

    swift_beginAccess();
    v14 = swift_weakLoadStrong();
    *(v0 + 656) = v14;
    if (v14)
    {
      v15 = v14;
      v16 = sub_221EEAC5C;
LABEL_35:

      return MEMORY[0x2822009F8](v16, v15, 0);
    }

    v17 = *(v0 + 648);
    v18 = sub_221FB61B8();
    v19 = sub_221FB65C8();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_221E93000, v18, v19, "Bootstrapping complete", v20, 2u);
      MEMORY[0x223DADA80](v20, -1, -1);
    }
  }

  if (*(v0 + 769) != 1)
  {
    goto LABEL_29;
  }

  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v21 = sub_221FB61D8();
  __swift_project_value_buffer(v21, qword_281307DD8);
  v22 = sub_221FB61B8();
  v23 = sub_221FB65C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_221E93000, v22, v23, "Fetching all changes for account update", v24, 2u);
    MEMORY[0x223DADA80](v24, -1, -1);
  }

  v25 = *(v0 + 600);

  swift_beginAccess();
  v26 = swift_weakLoadStrong();
  if (v26)
  {
    sub_221EA4AB4(v26 + 160, v0 + 272);

    v27 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 764;
    *(v0 + 24) = sub_221EEB2A4;
    v28 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221FA909C;
    *(v0 + 168) = &block_descriptor_114;
    *(v0 + 176) = v28;
    [v27 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
LABEL_29:
    v29 = *(v0 + 600);
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    *(v0 + 688) = v30;
    if (v30)
    {
      v15 = v30;
      v16 = sub_221EEB564;
      goto LABEL_35;
    }

    v31 = *(v0 + 600);
    swift_beginAccess();
    v32 = swift_weakLoadStrong();
    *(v0 + 712) = v32;
    if (v32)
    {
      v15 = v32;
      v16 = sub_221EEB920;
      goto LABEL_35;
    }

    v33 = *(v0 + 600);
    swift_beginAccess();
    v34 = swift_weakLoadStrong();
    *(v0 + 752) = v34;
    if (v34)
    {
      v15 = v34;
      v16 = sub_221EEBEC0;
      goto LABEL_35;
    }

    v35 = *(v0 + 8);

    return v35();
  }
}

uint64_t sub_221EEA5B8()
{
  v1 = v0[78];
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0(v0 + 49);
  v2 = v0[78];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221EEA62C()
{
  v2 = *(*v1 + 632);
  v5 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = sub_221EEABF8;
  }

  else
  {
    v3 = sub_221EEA740;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EEA740()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  if (*(v0 + 768) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v1 = sub_221FB61D8();
    *(v0 + 648) = __swift_project_value_buffer(v1, qword_281307DD8);
    v2 = sub_221FB61B8();
    v3 = sub_221FB65C8();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_221E93000, v2, v3, "Bootstrapping secure cloud container", v4, 2u);
      MEMORY[0x223DADA80](v4, -1, -1);
    }

    v5 = *(v0 + 600);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v0 + 656) = Strong;
    if (Strong)
    {
      v7 = Strong;
      v8 = sub_221EEAC5C;
LABEL_26:

      return MEMORY[0x2822009F8](v8, v7, 0);
    }

    v9 = *(v0 + 648);
    v10 = sub_221FB61B8();
    v11 = sub_221FB65C8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_221E93000, v10, v11, "Bootstrapping complete", v12, 2u);
      MEMORY[0x223DADA80](v12, -1, -1);
    }
  }

  if (*(v0 + 769) != 1)
  {
    goto LABEL_20;
  }

  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v13 = sub_221FB61D8();
  __swift_project_value_buffer(v13, qword_281307DD8);
  v14 = sub_221FB61B8();
  v15 = sub_221FB65C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_221E93000, v14, v15, "Fetching all changes for account update", v16, 2u);
    MEMORY[0x223DADA80](v16, -1, -1);
  }

  v17 = *(v0 + 600);

  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  if (v18)
  {
    sub_221EA4AB4(v18 + 160, v0 + 272);

    v19 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 764;
    *(v0 + 24) = sub_221EEB2A4;
    v20 = swift_continuation_init();
    *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_221FA909C;
    *(v0 + 168) = &block_descriptor_114;
    *(v0 + 176) = v20;
    [v19 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];

    return MEMORY[0x282200938](v0 + 16);
  }

  else
  {
LABEL_20:
    v21 = *(v0 + 600);
    swift_beginAccess();
    v22 = swift_weakLoadStrong();
    *(v0 + 688) = v22;
    if (v22)
    {
      v7 = v22;
      v8 = sub_221EEB564;
      goto LABEL_26;
    }

    v23 = *(v0 + 600);
    swift_beginAccess();
    v24 = swift_weakLoadStrong();
    *(v0 + 712) = v24;
    if (v24)
    {
      v7 = v24;
      v8 = sub_221EEB920;
      goto LABEL_26;
    }

    v25 = *(v0 + 600);
    swift_beginAccess();
    v26 = swift_weakLoadStrong();
    *(v0 + 752) = v26;
    if (v26)
    {
      v7 = v26;
      v8 = sub_221EEBEC0;
      goto LABEL_26;
    }

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_221EEABF8()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 44);
  v1 = v0[80];
  v2 = v0[1];

  return v2();
}

uint64_t sub_221EEAC5C()
{
  sub_221EA4AB4(*(v0 + 656) + 328, v0 + 312);

  return MEMORY[0x2822009F8](sub_221EEACD4, 0, 0);
}

uint64_t sub_221EEACD4()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm(v0 + 39, v0[42]);
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_221EEAD74;

  return sub_221EE3DBC(v1);
}

uint64_t sub_221EEAD74()
{
  v2 = *(*v1 + 664);
  v5 = *v1;
  *(*v1 + 672) = v0;

  if (v0)
  {
    v3 = sub_221EEB240;
  }

  else
  {
    v3 = sub_221EEAE88;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EEAE88()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 312));
  v1 = *(v0 + 648);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Bootstrapping complete", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  if (*(v0 + 769) == 1)
  {
    if (qword_281307078 != -1)
    {
      swift_once();
    }

    v5 = sub_221FB61D8();
    __swift_project_value_buffer(v5, qword_281307DD8);
    v6 = sub_221FB61B8();
    v7 = sub_221FB65C8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_221E93000, v6, v7, "Fetching all changes for account update", v8, 2u);
      MEMORY[0x223DADA80](v8, -1, -1);
    }

    v9 = *(v0 + 600);

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_221EA4AB4(Strong + 160, v0 + 272);

      v11 = *__swift_project_boxed_opaque_existential_0Tm((v0 + 272), *(v0 + 296));
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 764;
      *(v0 + 24) = sub_221EEB2A4;
      v12 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBB60, &qword_221FBAB30);
      *(v0 + 144) = MEMORY[0x277D85DD0];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_221FA909C;
      *(v0 + 168) = &block_descriptor_114;
      *(v0 + 176) = v12;
      [v11 fetchAllChangesWithPriority:2 activity:0 group:0 completion:v0 + 144];

      return MEMORY[0x282200938](v0 + 16);
    }
  }

  v13 = *(v0 + 600);
  swift_beginAccess();
  v14 = swift_weakLoadStrong();
  *(v0 + 688) = v14;
  if (v14)
  {
    v15 = v14;
    v16 = sub_221EEB564;
LABEL_18:

    return MEMORY[0x2822009F8](v16, v15, 0);
  }

  v17 = *(v0 + 600);
  swift_beginAccess();
  v18 = swift_weakLoadStrong();
  *(v0 + 712) = v18;
  if (v18)
  {
    v15 = v18;
    v16 = sub_221EEB920;
    goto LABEL_18;
  }

  v19 = *(v0 + 600);
  swift_beginAccess();
  v20 = swift_weakLoadStrong();
  *(v0 + 752) = v20;
  if (v20)
  {
    v15 = v20;
    v16 = sub_221EEBEC0;
    goto LABEL_18;
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_221EEB240()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  v1 = v0[84];
  v2 = v0[1];

  return v2();
}

uint64_t sub_221EEB2A4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 680) = v2;
  if (v2)
  {
    v3 = sub_221EEB4F0;
  }

  else
  {
    v3 = sub_221EEB3B4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_221EEB3B4()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  v1 = v0[75];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[86] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_221EEB564;
LABEL_7:

    return MEMORY[0x2822009F8](v4, v3, 0);
  }

  v5 = v0[75];
  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  v0[89] = v6;
  if (v6)
  {
    v3 = v6;
    v4 = sub_221EEB920;
    goto LABEL_7;
  }

  v7 = v0[75];
  swift_beginAccess();
  v8 = swift_weakLoadStrong();
  v0[94] = v8;
  if (v8)
  {
    v3 = v8;
    v4 = sub_221EEBEC0;
    goto LABEL_7;
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_221EEB4F0()
{
  v1 = v0[85];
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0(v0 + 34);
  v2 = v0[85];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221EEB564()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 688) + 288), *(*(v0 + 688) + 312));
  v2 = swift_task_alloc();
  *(v0 + 696) = v2;
  *v2 = v0;
  v2[1] = sub_221EEB610;
  v3 = *(v0 + 760);

  return sub_221EBE07C(v3, v1);
}

uint64_t sub_221EEB610()
{
  v2 = *v1;
  v3 = *(*v1 + 696);
  v4 = *v1;
  *(*v1 + 704) = v0;

  v5 = *(v2 + 688);
  if (v0)
  {
    v6 = sub_221EEB8BC;
  }

  else
  {
    v6 = sub_221EEB73C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221EEB73C()
{
  [*__swift_project_boxed_opaque_existential_0Tm((*(v0 + 688) + 160) *(*(v0 + 688) + 184))];

  return MEMORY[0x2822009F8](sub_221EEB7C4, 0, 0);
}

uint64_t sub_221EEB7C4()
{
  v1 = v0[75];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[89] = Strong;
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_221EEB920;
LABEL_5:

    return MEMORY[0x2822009F8](v4, v3, 0);
  }

  v5 = v0[75];
  swift_beginAccess();
  v6 = swift_weakLoadStrong();
  v0[94] = v6;
  if (v6)
  {
    v3 = v6;
    v4 = sub_221EEBEC0;
    goto LABEL_5;
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_221EEB8BC()
{
  v1 = v0[86];

  v2 = v0[88];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221EEB920()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((*(v0 + 712) + 288), *(*(v0 + 712) + 312));
  v2 = swift_task_alloc();
  *(v0 + 720) = v2;
  *v2 = v0;
  v2[1] = sub_221EEB9CC;
  v3 = *(v0 + 762);

  return sub_221EBE478(v3, v1);
}

uint64_t sub_221EEB9CC()
{
  v2 = *v1;
  v3 = *(*v1 + 720);
  v4 = *v1;
  *(*v1 + 728) = v0;

  v5 = *(v2 + 712);
  if (v0)
  {
    v6 = sub_221EEBCD4;
  }

  else
  {
    v6 = sub_221EEBAF8;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221EEBAF8()
{
  v1 = *__swift_project_boxed_opaque_existential_0Tm((v0[89] + 288), *(v0[89] + 312));
  v2 = swift_task_alloc();
  v0[92] = v2;
  *v2 = v0;
  v2[1] = sub_221EEBBA8;
  v3 = v0[77];
  v4 = v0[76];

  return sub_221EBE794(v4, v3, v1);
}

uint64_t sub_221EEBBA8()
{
  v2 = *v1;
  v3 = *(*v1 + 736);
  v4 = *v1;
  *(*v1 + 744) = v0;

  v5 = *(v2 + 712);
  if (v0)
  {
    v6 = sub_221EEBE5C;
  }

  else
  {
    v6 = sub_221EEBD38;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_221EEBCD4()
{
  v1 = v0[89];

  v2 = v0[91];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221EEBD38()
{
  v1 = *(v0 + 712);

  return MEMORY[0x2822009F8](sub_221EEBDA0, 0, 0);
}

uint64_t sub_221EEBDA0()
{
  v1 = v0[75];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[94] = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_221EEBEC0, Strong, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_221EEBE5C()
{
  v1 = v0[89];

  v2 = v0[93];
  v3 = v0[1];

  return v3();
}

uint64_t sub_221EEBEC0()
{
  v1 = *(v0 + 752);
  v2 = *(v1 + 408);
  *(v1 + 408) = 1;
  sub_221EEDBE0(v2);

  v3 = *(v0 + 8);

  return v3();
}

id sub_221EEBF38(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a2 >= a1 || a2 == 1)
  {
    v4 = a2;
  }

  else
  {
    v4 = a1;
  }

  if (a1 == 1)
  {
    v5 = a1;
  }

  else
  {
    v5 = v4;
  }

  v6 = __swift_project_boxed_opaque_existential_0Tm((v2 + 160), *(v2 + 184));
  v7 = qword_221FBAB90[v5];
  v8 = *v6;

  return [v8 notifyOfCloudKitAccountStatusUpdate_];
}

uint64_t *sub_221EEBFA8()
{
  v1 = v0[14];

  __swift_destroy_boxed_opaque_existential_0(v0 + 15);
  __swift_destroy_boxed_opaque_existential_0(v0 + 20);
  v2 = v0[25];

  __swift_destroy_boxed_opaque_existential_0(v0 + 26);
  __swift_destroy_boxed_opaque_existential_0(v0 + 31);
  __swift_destroy_boxed_opaque_existential_0(v0 + 36);
  __swift_destroy_boxed_opaque_existential_0(v0 + 41);
  __swift_destroy_boxed_opaque_existential_0(v0 + 46);
  sub_221EEDBE0(v0[51]);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_221EEC018()
{
  sub_221EEBFA8();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_23ActivitySharingServices13AccountSystemC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_221EEC08C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221EEC0E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_221EEC13C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_221EEC16C()
{
  *(v1 + 16) = v0;
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EEC208, v0, 0);
}

uint64_t sub_221EEC208()
{
  v1 = v0[2];
  if (*(v1 + 408))
  {
    if (qword_281307070 != -1)
    {
      swift_once();
    }

    v2 = sub_221FB61D8();
    __swift_project_value_buffer(v2, qword_281307DC0);
    v3 = sub_221FB61B8();
    v4 = sub_221FB65A8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_221E93000, v3, v4, "Account System already active", v5, 2u);
      MEMORY[0x223DADA80](v5, -1, -1);
    }
  }

  else
  {
    v6 = v0[3];
    v7 = *(v1 + 200);
    v8 = *MEMORY[0x277CBBF00];
    v9 = objc_opt_self();

    v10 = [v9 mainQueue];
    sub_221E9FCB8(v8, v10, &unk_221FBAAB0, v1);

    v11 = sub_221FB64C8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v13 = sub_221EEE2C0(&qword_281307C38, v12, type metadata accessor for AccountSystem);
    v14 = swift_allocObject();
    v14[2] = v1;
    v14[3] = v13;
    v14[4] = v1;
    swift_retain_n();
    sub_221EEC69C(0, 0, v6, &unk_221FBAAC0, v14);

    v15 = *(v1 + 408);
    *(v1 + 408) = 1;
    sub_221EEDBE0(v15);
  }

  v16 = v0[3];

  v17 = v0[1];

  return v17();
}

uint64_t sub_221EEC4B8()
{
  if (qword_281307078 != -1)
  {
    swift_once();
  }

  v1 = sub_221FB61D8();
  __swift_project_value_buffer(v1, qword_281307DD8);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "CloudKit account changed notification", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_221E9DA9C;
  v6 = *(v0 + 16);

  return sub_221EE5938(0);
}

uint64_t sub_221EEC608()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_221E9544C;

  return sub_221EE5938(1);
}

uint64_t sub_221EEC69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v24 - v10;
  sub_221EEDBF0(a3, v24 - v10);
  v12 = sub_221FB64C8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_221EEDC60(v11);
  }

  else
  {
    sub_221FB64B8();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_221FB6488();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_221FB6338() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_221EEDC60(a3);

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

  sub_221EEDC60(a3);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_221EEC908(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v18 - v11;
  v13 = sub_221FB64C8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = sub_221EB83D0(qword_281307C40, &qword_27CFEC170, &qword_221FBAB18);
  v15 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = a2;
  *(v16 + 3) = v14;
  *(v16 + 4) = a2;
  (*(v5 + 32))(&v16[v15], v8, v4);
  swift_retain_n();
  sub_221FA7A78(0, 0, v12, &unk_221FBAB58, v16);
}

uint64_t sub_221EECB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_221EECB4C, a4, 0);
}

uint64_t sub_221EECB4C()
{
  v1 = v0[2];
  v3 = *(v1 + 152);
  v2 = *(v1 + 160);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_221ECAE18;
  v6 = v0[2];
  v5 = v0[3];

  return sub_221EECBF4(v3, v2, v5);
}

uint64_t sub_221EECBF4(int *a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v8 = (a1 + *a1);
  v5 = a1[1];
  v6 = swift_task_alloc();
  v4[7] = v6;
  *v6 = v4;
  v6[1] = sub_221EECCEC;

  return v8();
}

uint64_t sub_221EECCEC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v6 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_221EECE8C;
  }

  else
  {
    v4 = sub_221EECE14;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_221EECE14()
{
  v1 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  sub_221FB64A8();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_221EECE8C()
{
  v1 = v0[6];
  if (v1[24])
  {
    v2 = v1[23] == 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v2 = 0;
  }

  if (v2)
  {
    v0[2] = v0[8];
    v12 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
    sub_221FB6498();
  }

  else
  {
    v3 = v0[6];
    v4 = sub_221EECFC8(v0[3], v0[4], v0[5]);
    v6 = v5;
    v7 = v4;
    v9 = v8;
    swift_getObjectType();
    sub_221FB66A8();
    v10 = v0[8];
    if (v1[24])
    {
      v11 = v1[24];
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_221FB6698();

      swift_unknownObjectRelease();
    }

    else
    {
    }

    v13 = v1[24];
    v1[22] = v6;
    v1[23] = v7;
    v1[24] = v9;
    swift_unknownObjectRelease();
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_221EECFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v73 = a3;
  v74 = a1;
  v76 = a2;
  v4 = sub_221FB6208();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_221FB6238();
  v77 = *(v9 - 8);
  v10 = *(v77 + 64);
  MEMORY[0x28223BE20](v9);
  v75 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v71 = *(v12 - 8);
  v72 = v12;
  v69 = *(v71 + 64);
  MEMORY[0x28223BE20](v12);
  v70 = v55 - v13;
  v14 = sub_221FB61F8();
  v67 = *(v14 - 8);
  v68 = v14;
  v15 = *(v67 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v62 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v66 = v55 - v18;
  v65 = sub_221FB6258();
  v64 = *(v65 - 8);
  v19 = *(v64 + 64);
  v20 = MEMORY[0x28223BE20](v65);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v63 = v55 - v23;
  v24 = sub_221FB6668();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  result = MEMORY[0x28223BE20](v24);
  v29 = v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v3 + 176);
  v31 = *(v3 + 184);
  v32 = *(v3 + 192);
  if (v32)
  {
    v33 = *(v3 + 176);
  }

  if ((*(v3 + 128) & 1) == 0)
  {
    *(v3 + 120);
    *(v3 + 112);
  }

  if (!v32)
  {
    v31 = 0;
  }

  v34 = __OFADD__(v31, 1);
  v35 = v31 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    v56 = v3;
    v61 = v35;
    sub_221E9D138(0, &qword_281306EA0, 0x277D85CA0);
    v60 = v9;
    aBlock[0] = MEMORY[0x277D84F90];
    sub_221EEE2C0(&qword_281306EA8, 255, MEMORY[0x277D85278]);
    v57 = v8;
    v59 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC178, &qword_221FBAB68);
    v58 = v5;
    sub_221EB83D0(&qword_281306F40, &qword_27CFEC178, &qword_221FBAB68);
    sub_221FB67D8();
    v36 = *(v3 + 168);
    v78 = sub_221FB6678();
    (*(v25 + 8))(v29, v24);
    ObjectType = swift_getObjectType();
    v55[1] = ObjectType;
    sub_221FB6248();
    v38 = v63;
    sub_221FB6268();
    v39 = v62;
    v64 = *(v64 + 8);
    v40 = v65;
    (v64)(v22, v65);
    v42 = v66;
    v41 = v67;
    v43 = *(v67 + 104);
    v44 = v68;
    v43(v66, *MEMORY[0x277D85180], v68);
    *v39 = 0;
    v43(v39, *MEMORY[0x277D85168], v44);
    MEMORY[0x223DACAC0](v38, v42, v39, ObjectType);
    v45 = *(v41 + 8);
    v45(v39, v44);
    v45(v42, v44);
    (v64)(v38, v40);
    v47 = v70;
    v46 = v71;
    v48 = v72;
    (*(v71 + 16))(v70, v73, v72);
    v49 = (*(v46 + 80) + 40) & ~*(v46 + 80);
    v50 = swift_allocObject();
    v51 = v74;
    *(v50 + 2) = v56;
    *(v50 + 3) = v51;
    *(v50 + 4) = v76;
    (*(v46 + 32))(&v50[v49], v47, v48);
    aBlock[4] = sub_221EEE234;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_221F560F8;
    aBlock[3] = &block_descriptor_99;
    v52 = _Block_copy(aBlock);

    v53 = v75;
    sub_221FB6228();
    v54 = v57;
    sub_221EED9AC();
    sub_221FB6688();
    _Block_release(v52);
    (*(v58 + 8))(v54, v59);
    (*(v77 + 8))(v53, v60);

    return v61;
  }

  return result;
}

uint64_t sub_221EED788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v21 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v21 - v14;
  v16 = sub_221FB64C8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, a4, v7);
  v18 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = 0;
  *(v19 + 3) = 0;
  *(v19 + 4) = v17;
  *(v19 + 5) = a2;
  *(v19 + 6) = a3;
  (*(v8 + 32))(&v19[v18], v11, v7);

  sub_221FA7D68(0, 0, v15, &unk_221FBAB80, v19);
}

uint64_t sub_221EED9AC()
{
  sub_221FB6208();
  sub_221EEE2C0(&qword_281306F80, 255, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC180, &qword_221FBAB70);
  sub_221EB83D0(&qword_281306F58, &qword_27CFEC180, &qword_221FBAB70);
  return sub_221FB67D8();
}

uint64_t sub_221EEDA9C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_221E963B4;

  return sub_221EEC498(v0);
}

uint64_t sub_221EEDB2C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_221E963B4;

  return sub_221EEC608();
}

unint64_t sub_221EEDBE0(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_221EEDBF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221EEDC60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221EEDCD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[5] = a1;
  return MEMORY[0x2822009F8](sub_221EEDD00, 0, 0);
}

uint64_t sub_221EEDD00()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_221EEDE00;
    v4 = *(v0 + 64);
    v5 = *(v0 + 72);
    v6 = *(v0 + 56);

    return sub_221EECBF4(v6, v4, v5);
  }

  else
  {
    **(v0 + 40) = 1;
    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_221EEDE00()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  v4 = *v0;

  return MEMORY[0x2822009F8](sub_221EEDF18, 0, 0);
}

uint64_t sub_221EEDF40(uint64_t a1)
{
  v14 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v7 = *(v1 + 34);
  v9 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10 = *(v1 + 35);
  v11 = *(v1 + 37);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_221E9544C;

  return sub_221EE9640(a1, v14, v4, v5, v6, v7, v10, v11);
}

uint64_t sub_221EEE048(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_221E9544C;

  return sub_221EECB2C(a1, v6, v7, v8, v1 + v5);
}

uint64_t objectdestroy_89Tm(void (*a1)(void))
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 40) & ~v5;
  v7 = *(v4 + 64);
  a1(*(v1 + 16));
  v8 = *(v1 + 32);

  (*(v4 + 8))(v1 + v6, v3);

  return MEMORY[0x2821FE8E8](v1, v6 + v7, v5 | 7);
}

uint64_t sub_221EEE234()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_221EED788(v2, v3, v4, v5);
}

uint64_t block_copy_helper_97(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_221EEE2C0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221EEE308(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CFEC590, &unk_221FBCEA0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_221E963B4;

  return sub_221EEDCD8(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_221EEE4B4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_221EEE4EC()
{
  result = type metadata accessor for IDSErrorAction(319);
  if (v1 <= 0x3F)
  {
    result = sub_221EEE570();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_221EEE570()
{
  result = qword_27CFEC198;
  if (!qword_27CFEC198)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CFEC198);
  }

  return result;
}

uint64_t sub_221EEE624()
{
  result = sub_221FB5C38();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_221EEE690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_221E963B4;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_221EEE7E0()
{
  if (qword_281307080 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v0 = sub_221FB61D8();
    __swift_project_value_buffer(v0, qword_281307DF0);
    v1 = sub_221FB61B8();
    v2 = sub_221FB65C8();
    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      *v3 = 0;
      _os_log_impl(&dword_221E93000, v1, v2, "Collecting updates to push to CloudKit", v3, 2u);
      MEMORY[0x223DADA80](v3, -1, -1);
    }

    v4 = v42[3];

    v5 = *v4;
    v6 = ASContactsPreferringPlaceholders();
    sub_221E9D138(0, &qword_281306E50, 0x277CE90E8);
    v7 = sub_221FB6438();

    v43 = MEMORY[0x277D84F90];
    v8 = v7 >> 62 ? sub_221FB6868() : *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = MEMORY[0x277D84F90];
    if (!v8)
    {
      break;
    }

    v10 = 0;
    v11 = 0x1FCD97000uLL;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x223DACD50](v10, v7);
      }

      else
      {
        if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_45;
        }

        v12 = *(v7 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v15 = v11;
      v16 = [v12 relationshipStorage];
      v17 = [v16 primaryRelationship];

      v18 = [v13 relationshipStorage];
      v19 = [v18 primaryRemoteRelationship];

      if ([v17 cloudType] != 1)
      {

        goto LABEL_20;
      }

      v11 = v15;
      if ([v17 (v15 + 2203)] & 1) != 0 && (objc_msgSend(v19, (v15 + 2203)))
      {
        v20 = [v17 isHidingActivityData];

        if (!v20)
        {
          sub_221FB69B8();
          v21 = *(v43 + 16);
          sub_221FB69E8();
          sub_221FB69F8();
          sub_221FB69C8();
LABEL_21:
          v11 = v15;
          goto LABEL_9;
        }

LABEL_20:

        goto LABEL_21;
      }

LABEL_9:
      ++v10;
      if (v14 == v8)
      {
        v22 = v43;
        v9 = MEMORY[0x277D84F90];
        goto LABEL_25;
      }
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

  v22 = MEMORY[0x277D84F90];
LABEL_25:

  v44 = v9;
  if (v22 < 0 || (v22 & 0x4000000000000000) != 0)
  {
    v23 = sub_221FB6868();
  }

  else
  {
    v23 = *(v22 + 16);
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  v42[4] = MEMORY[0x277D84F90];
  while (v23 != v24)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x223DACD50](v24, v22);
    }

    else
    {
      if (v24 >= *(v22 + 16))
      {
        goto LABEL_43;
      }

      v26 = *(v22 + 8 * v24 + 32);
    }

    v27 = v26;
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v29 = [v26 relationshipStorage];
    v30 = [v29 primaryRelationship];

    ++v24;
    if (v30)
    {
      MEMORY[0x223DAC7E0]();
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v31 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_221FB6458();
      }

      sub_221FB6478();
      v25 = v44;
      v42[4] = v44;
      v24 = v28;
    }
  }

  v32 = v42[3];

  v33 = *(v32 + 96);
  v42[5] = v33;
  v42[2] = v33;
  v34 = swift_task_alloc();
  v42[6] = v34;
  *(v34 + 16) = v25;
  v35 = *(MEMORY[0x277CE94D0] + 4);

  v36 = swift_task_alloc();
  v42[7] = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1B0, &qword_221FBACC0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEBE40, &qword_221FBD750);
  v39 = sub_221EB83D0(&qword_27CFEC1B8, &qword_27CFEC1B0, &qword_221FBACC0);
  v40 = sub_221EB83D0(&qword_27CFEC1D8, &qword_27CFEBE40, &qword_221FBD750);
  *v36 = v42;
  v36[1] = sub_221EEEDA0;

  return MEMORY[0x28213AEC0](&unk_221FBACE0, v34, v37, v38, v39, v40);
}

void sub_221EEEDA0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;

  if (v1)
  {
  }

  else
  {
    v7 = v4[5];
    v8 = v4[6];
    v9 = v4[4];

    v10 = *(v6 + 8);

    v10(a1);
  }
}

uint64_t sub_221EEEEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  return MEMORY[0x2822009F8](sub_221EEEF14, 0, 0);
}

uint64_t sub_221EEEF14()
{
  v1 = *(v0 + 104);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 120) = v6;
  *v6 = v0;
  v6[1] = sub_221EEF038;

  return v8(v2, v3);
}

uint64_t sub_221EEF038()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EEF134, 0, 0);
}

uint64_t sub_221EEF134()
{
  v1 = v0[13];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(v3 + 16);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[16] = v6;
  *v6 = v0;
  v6[1] = sub_221EEF260;
  v7 = v0[14];

  return v9(v7, v2, v3);
}

uint64_t sub_221EEF260(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_221EEF3AC;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_221EEF388;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_221EEF3AC()
{
  v20 = v0;
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  v3 = sub_221FB61D8();
  __swift_project_value_buffer(v3, qword_281307DF0);
  sub_221EA4AB4(v2, v0 + 16);
  v4 = v1;
  v5 = sub_221FB61B8();
  v6 = sub_221FB65A8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 136);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    sub_221EA4AB4(v0 + 16, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1E0, &unk_221FBACF0);
    v11 = sub_221FB6328();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v14 = sub_221EF4114(v11, v13, &v19);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    v15 = v7;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v16;
    *v9 = v16;
    _os_log_impl(&dword_221E93000, v5, v6, "Error fetching record updates for %s, error: %@", v8, 0x16u);
    sub_221EA0558(v9);
    MEMORY[0x223DADA80](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x223DADA80](v10, -1, -1);
    MEMORY[0x223DADA80](v8, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  **(v0 + 96) = MEMORY[0x277D84F90];
  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_221EEF608(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_221EEF628, 0, 0);
}

uint64_t sub_221EEF628()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0Tm(v1, v2);
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[4] = v6;
  *v6 = v0;
  v6[1] = sub_221EAA6C0;
  v7 = v0[3];

  return v9(v7, v2, v3);
}

uint64_t sub_221EEF754(uint64_t a1, uint64_t a2)
{
  v3[37] = a2;
  v3[38] = v2;
  v3[36] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC3A0, &qword_221FB8B70) - 8) + 64) + 15;
  v3[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221EEF7F4, 0, 0);
}

uint64_t sub_221EEF7F4()
{
  if (qword_281307080 != -1)
  {
    swift_once();
  }

  v1 = v0[38];
  v2 = sub_221FB61D8();
  v0[40] = __swift_project_value_buffer(v2, qword_281307DF0);
  sub_221E9DCE8(0xD000000000000088, 0x8000000221FC23F0, 0xD000000000000022, 0x8000000221FC2480);
  v0[41] = *(v1 + 104);
  v3 = swift_task_alloc();
  v0[42] = v3;
  *v3 = v0;
  v3[1] = sub_221EEF910;

  return sub_221F7E048();
}

uint64_t sub_221EEF910()
{
  v1 = *(*v0 + 336);
  v3 = *v0;

  return MEMORY[0x2822009F8](sub_221EEFA0C, 0, 0);
}

id sub_221EEFA0C()
{
  v1 = *(v0[38] + 48);
  result = [objc_opt_self() sharedBehavior];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = [result fitnessMode];

  if (v4 == 2)
  {
    v5 = 1;
  }

  else
  {
    v5 = v1;
  }

  if (v5 == 1)
  {
    if ([*(*__swift_project_boxed_opaque_existential_0Tm((v0[38] + 8) *(v0[38] + 32)) + OBJC:sel_isProtectedDataAvailable IVAR:? :? :? :? TtC23ActivitySharingServices19DatabaseCoordinator:?databaseClient)])
    {
      v6 = swift_task_alloc();
      v0[43] = v6;
      *v6 = v0;
      v6[1] = sub_221EEFD60;
      v7 = v0[38];

      return sub_221EEE7C0();
    }

    v13 = v0[40];
    v9 = sub_221FB61B8();
    v14 = sub_221FB65C8();
    if (!os_log_type_enabled(v9, v14))
    {
      v12 = &unk_221FBAC90;
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_221E93000, v9, v14, "Not pushing activity data updates to CloudKit, protected data unavailable", v11, 2u);
    v12 = &unk_221FBAC90;
  }

  else
  {
    v8 = v0[40];
    v9 = sub_221FB61B8();
    v10 = sub_221FB65C8();
    if (!os_log_type_enabled(v9, v10))
    {
      v12 = &unk_221FB9A50;
      goto LABEL_17;
    }

    v11 = swift_slowAlloc();
    *v11 = 67109376;
    *(v11 + 8) = 1024;
    *(v11 + 10) = 0;
    _os_log_impl(&dword_221E93000, v9, v10, "Not pushing activity data updates to CloudKit, apple watch: %{BOOL}d, standalone phone %{BOOL}d", v11, 0xEu);
    v12 = &unk_221FB9A50;
  }

  MEMORY[0x223DADA80](v11, -1, -1);
LABEL_17:
  v15 = v0[41];
  v16 = v0[39];

  v17 = sub_221FB64C8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v15;

  sub_221FA7A78(0, 0, v16, v12, v18);

  v19 = v0[39];

  v20 = v0[1];

  return v20();
}

uint64_t sub_221EEFD60(uint64_t a1)
{
  v2 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = a1;

  return MEMORY[0x2822009F8](sub_221EEFE60, 0, 0);
}

uint64_t sub_221EEFE60()
{
  v43 = v0;
  v1 = *(v0 + 320);
  v2 = sub_221FB61B8();
  v3 = sub_221FB65C8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_221E93000, v2, v3, "Pushing updates:", v4, 2u);
    MEMORY[0x223DADA80](v4, -1, -1);
  }

  v5 = *(v0 + 352);

  v42[0] = v5;

  sub_221EF1294(v42);
  v38 = v42[0];
  v37 = *(v42[0] + 2);
  if (v37)
  {
    v7 = 0;
    v8 = (v42[0] + 72);
    v41 = v0;
    while (v7 < *(v38 + 2))
    {
      v9 = *(v0 + 320);
      v10 = *(v8 - 4);
      v11 = *(v8 - 3);
      v12 = *(v8 - 2);
      v13 = *(v8 - 1);
      v14 = *v8;
      *(v0 + 144) = *(v8 - 5);
      *(v0 + 152) = v10;
      *(v0 + 160) = v11;
      *(v0 + 168) = v12;
      *(v0 + 176) = v13;
      *(v0 + 184) = v14;

      v15 = v11;
      sub_221ED4904(v12, v13, v14);
      v16 = sub_221FB61B8();
      LOBYTE(v11) = sub_221FB65C8();

      sub_221ED4948(v12, v13, v14);
      v39 = v11;
      if (os_log_type_enabled(v16, v11))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v42[0] = v36;
        *v35 = 136315138;

        v17 = v15;
        sub_221ED4904(v12, v13, v14);
        v34 = v16;
        v18 = sub_221F297F4();
        v20 = v19;

        sub_221ED4948(v12, v13, v14);
        v21 = sub_221EF4114(v18, v20, v42);

        *(v35 + 4) = v21;
        _os_log_impl(&dword_221E93000, v34, v39, "%s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x223DADA80](v36, -1, -1);
        MEMORY[0x223DADA80](v35, -1, -1);
      }

      else
      {
      }

      ++v7;
      v8 += 48;
      v0 = v41;
      if (v37 == v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v22 = v0 + 16;
    v23 = v0 + 80;
    v24 = *(v0 + 352);
    v26 = *(v0 + 296);
    v25 = *(v0 + 304);
    v27 = v0;
    v40 = *(v0 + 288);

    v28 = __swift_project_boxed_opaque_existential_0Tm((v25 + 56), *(v25 + 80));
    sub_221F12048(v24);
    sub_221EF0F94(v24);
    *(v0 + 360) = 0;
    v29 = *v28;
    sub_221E9D138(0, &qword_281306E60, 0x277CBC5A0);
    v30 = sub_221FB6428();
    *(v0 + 368) = v30;

    sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
    v31 = sub_221FB6428();
    *(v0 + 376) = v31;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 232;
    *(v0 + 24) = sub_221EF0334;
    v32 = swift_continuation_init();
    v27[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEB938, &qword_221FB82B0);
    v27[10] = MEMORY[0x277D85DD0];
    v27[11] = 1107296256;
    v27[12] = sub_221EBA78C;
    v27[13] = &block_descriptor_13;
    v27[14] = v32;
    [v29 forceSaveRecordsIntoPrivateDatabaseIgnoringServerChanges:v30 recordIDsToDelete:v31 priority:2 activity:v26 useZoneWideSharing:1 group:v40 completion:v23];
    v6 = v22;
  }

  return MEMORY[0x282200938](v6);
}

uint64_t sub_221EF0334()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 384) = v3;
  if (v3)
  {
    v4 = *(v1 + 352);

    v5 = sub_221EF0B9C;
  }

  else
  {
    v5 = sub_221EF044C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221EF044C()
{
  v1 = v0[46];
  v2 = v0[30];

  v3 = v2;
  if (v2 >> 62)
  {
    v4 = sub_221FB6868();
    v3 = v2;
    v95 = v0;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_13:

    isUniquelyReferenced_nonNull_native = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v95 = v0;
  if (!v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  v5 = v3;
  v96 = MEMORY[0x277D84F90];
  isUniquelyReferenced_nonNull_native = sub_221F77644(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    goto LABEL_46;
  }

  v10 = 0;
  v11 = v5;
  v93 = v5 & 0xC000000000000001;
  v12 = v5;
  v13 = v4;
  do
  {
    if (v93)
    {
      v14 = MEMORY[0x223DACD50](v10, v11);
    }

    else
    {
      v14 = *(v11 + 8 * v10 + 32);
    }

    v15 = v14;
    v16 = [v15 recordID];
    v17 = [v16 zoneID];
    v18 = [v17 zoneName];
    v19 = sub_221FB6318();
    v21 = v20;

    v23 = *(v96 + 16);
    v22 = *(v96 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_221F77644((v22 > 1), v23 + 1, 1);
    }

    ++v10;
    *(v96 + 16) = v23 + 1;
    v24 = v96 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v11 = v12;
  }

  while (v13 != v10);

  isUniquelyReferenced_nonNull_native = v96;
  v0 = v95;
LABEL_14:
  v25 = v0[44];
  v26 = *(v25 + 16);
  if (!v26)
  {
    v69 = MEMORY[0x277D84F90];
    v51 = MEMORY[0x277D84F90];
LABEL_41:
    v0[49] = v69;
    v0[50] = v51;
    v70 = v0[44];
    v71 = v69;
    v72 = v0[38];

    v73 = *(v72 + 96);
    v0[51] = v73;
    v0[35] = v73;
    v74 = swift_task_alloc();
    v0[52] = v74;
    *(v74 + 16) = v71;
    v75 = *(MEMORY[0x277CE94D8] + 4);

    v76 = swift_task_alloc();
    v0[53] = v76;
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEC1B0, &qword_221FBACC0);
    v9 = sub_221EB83D0(&qword_27CFEC1B8, &qword_27CFEC1B0, &qword_221FBACC0);
    *v76 = v0;
    v76[1] = sub_221EF0CC0;
    isUniquelyReferenced_nonNull_native = &unk_221FBACB8;
    v7 = v74;
    v8 = v77;

    return MEMORY[0x28213AEC8](isUniquelyReferenced_nonNull_native, v7, v8, v9);
  }

  v27 = 0;
  v83 = v0 + 33;
  v28 = v0[45];
  v84 = -v26;
  v86 = v0 + 31;
  v29 = v25 + 72;
  v80 = *(v25 + 16);
  v82 = MEMORY[0x277D84F90];
  v92 = v0[44];
  v94 = isUniquelyReferenced_nonNull_native;
  v79 = v25 + 72;
  do
  {
    v30 = (v29 + 48 * v27++);
    while (1)
    {
      if ((v27 - 1) >= *(v25 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v32 = *(v30 - 5);
      v31 = *(v30 - 4);
      v33 = *(v30 - 3);
      v34 = *(v30 - 2);
      v35 = *(v30 - 1);
      v36 = *v30;

      v37 = v33;
      v88 = v35;
      v90 = v36;
      sub_221ED4904(v34, v35, v36);
      isUniquelyReferenced_nonNull_native = [v37 secureCloudZoneName];
      if (!isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_47;
      }

      v38 = isUniquelyReferenced_nonNull_native;
      v39 = sub_221FB6318();
      v41 = v40;

      v95[31] = v39;
      v95[32] = v41;
      v42 = swift_task_alloc();
      *(v42 + 16) = v86;
      LOBYTE(v39) = sub_221F7B864(sub_221EB8534, v42, v94);

      if (v39)
      {
        break;
      }

      sub_221ED4948(v34, v88, v90);
      ++v27;
      v30 += 48;
      v25 = v92;
      if (v84 + v27 == 1)
      {
        v48 = v80;
        goto LABEL_27;
      }
    }

    v43 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = sub_221F77624(0, *(v82 + 16) + 1, 1);
      v43 = v82;
    }

    v29 = v79;
    v48 = v80;
    v45 = *(v43 + 16);
    v44 = *(v43 + 24);
    v46 = v45 + 1;
    v25 = v92;
    if (v45 >= v44 >> 1)
    {
      isUniquelyReferenced_nonNull_native = sub_221F77624((v44 > 1), v45 + 1, 1);
      v46 = v45 + 1;
      v29 = v79;
      v43 = v82;
    }

    *(v43 + 16) = v46;
    v82 = v43;
    v47 = v43 + 48 * v45;
    *(v47 + 32) = v32;
    *(v47 + 40) = v31;
    *(v47 + 48) = v37;
    *(v47 + 56) = v34;
    *(v47 + 64) = v88;
    *(v47 + 72) = v90;
  }

  while (v84 + v27);
LABEL_27:
  v49 = 0;
  v87 = -v48;
  v50 = v95[44] + 72;
  v51 = MEMORY[0x277D84F90];
  v81 = v50;
LABEL_28:
  v85 = v51;
  v52 = (v50 + 48 * v49++);
  while ((v49 - 1) < *(v25 + 16))
  {
    v54 = *(v52 - 5);
    v53 = *(v52 - 4);
    v55 = *(v52 - 3);
    v56 = *(v52 - 2);
    v57 = *(v52 - 1);
    v58 = *v52;

    v59 = v55;
    v89 = v57;
    v91 = v58;
    sub_221ED4904(v56, v57, v58);
    isUniquelyReferenced_nonNull_native = [v59 secureCloudZoneName];
    if (!isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_48;
    }

    v60 = isUniquelyReferenced_nonNull_native;
    v61 = sub_221FB6318();
    v63 = v62;

    v95[33] = v61;
    v95[34] = v63;
    v64 = swift_task_alloc();
    *(v64 + 16) = v83;
    LOBYTE(v61) = sub_221F7B864(sub_221EB9CF4, v64, v94);

    if ((v61 & 1) == 0)
    {
      v51 = v85;
      v25 = v92;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_221F77624(0, *(v85 + 16) + 1, 1);
        v51 = v85;
      }

      isUniquelyReferenced_nonNull_native = v94;
      v50 = v81;
      v66 = *(v51 + 16);
      v65 = *(v51 + 24);
      v67 = v66 + 1;
      if (v66 >= v65 >> 1)
      {
        sub_221F77624((v65 > 1), v66 + 1, 1);
        v67 = v66 + 1;
        isUniquelyReferenced_nonNull_native = v94;
        v51 = v85;
      }

      *(v51 + 16) = v67;
      v68 = v51 + 48 * v66;
      *(v68 + 32) = v54;
      *(v68 + 40) = v53;
      *(v68 + 48) = v59;
      *(v68 + 56) = v56;
      *(v68 + 64) = v89;
      *(v68 + 72) = v91;
      if (!(v87 + v49))
      {
        v0 = v95;
        v69 = v82;
        goto LABEL_41;
      }

      goto LABEL_28;
    }

    sub_221ED4948(v56, v89, v91);
    ++v49;
    v52 += 48;
    v25 = v92;
    if (v87 + v49 == 1)
    {
      v0 = v95;
      v69 = v82;
      v51 = v85;
      goto LABEL_41;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return MEMORY[0x28213AEC8](isUniquelyReferenced_nonNull_native, v7, v8, v9);
}

uint64_t sub_221EF0B9C()
{
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[46];
  v4 = v0[41];
  v5 = v0[39];
  swift_willThrow();

  v6 = sub_221FB64C8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;

  sub_221FA7A78(0, 0, v5, &unk_221FBACA8, v7);

  v8 = v0[1];
  v9 = v0[48];

  return v8();
}

void sub_221EF0CC0()
{
  v2 = *v1;
  v3 = *(*v1 + 424);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {
    v5 = v2[51];
    v6 = v2[52];
    v7 = v2[49];

    MEMORY[0x2822009F8](sub_221EF0E10, 0, 0);
  }
}

uint64_t sub_221EF0E10()
{
  v1 = v0[51];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v1 + 32;
    do
    {
      v4 = v0[50];
      sub_221EA4AB4(v3, (v0 + 24));
      v5 = v0[27];
      v6 = v0[28];
      __swift_project_boxed_opaque_existential_0Tm(v0 + 24, v5);
      (*(v6 + 32))(v4, v5, v6);
      __swift_destroy_boxed_opaque_existential_0(v0 + 24);
      v3 += 40;
      --v2;
    }

    while (v2);
  }

  v7 = v0[50];
  v8 = v0[41];
  v9 = v0[39];

  v10 = sub_221FB64C8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v8;

  sub_221FA7A78(0, 0, v9, &unk_221FBACC8, v11);

  v12 = v0[39];

  v13 = v0[1];

  return v13();
}

uint64_t sub_221EF0F94(uint64_t a1)
{
  v30 = *(a1 + 16);
  if (!v30)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = 0;
  v29 = a1 + 40;
  v2 = MEMORY[0x277D84F90];
  v3 = &unk_27CFEC1C0;
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

      sub_221EB83D0(&qword_27CFEC1C8, v3, &qword_221FBACD0);
      for (i = 0; i != v15; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v3, &qword_221FBACD0);
        v19 = v3;
        v20 = sub_221F12454(v33, i, v5);
        v22 = *v21;
        (v20)(v33, 0);
        v3 = v19;
        *(v17 + 8 * i) = v22;
      }
    }

    else
    {
      sub_221E9D138(0, &qword_281306F20, 0x277CBC5D0);
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

void sub_221EF1294(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_221F93428(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_221EF1300(v4);
  *a1 = v2;
}

void sub_221EF1300(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_221FB6AF8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_221FB6468();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_221EF173C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_221EF13F8(0, v2, 1, a1);
  }
}

void sub_221EF13F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v53 = sub_221FB5C38();
  v8 = *(*(v53 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v53);
  v52 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v45 - v12;
  v46 = a2;
  if (a3 != a2)
  {
    v50 = *a4;
    v51 = (v11 + 8);
    v13 = v50 + 48 * a3 - 48;
    v14 = a1 - a3;
LABEL_5:
    v48 = v13;
    v49 = a3;
    v47 = v14;
    v54 = v14;
    while (1)
    {
      v16 = (v13 + 48);
      v15 = *(v13 + 48);
      v18 = *(v13 + 56);
      v17 = *(v13 + 64);
      v19 = *(v13 + 72);
      v20 = *(v13 + 80);
      v66 = *(v13 + 88);
      v21 = *v13;
      v22 = *(v13 + 8);
      v23 = *(v13 + 24);
      v63 = *(v13 + 16);
      v64 = v19;
      v24 = *(v13 + 32);
      v25 = *(v13 + 40);
      v61 = v15;

      v60 = v18;

      v26 = v17;
      v57 = v21;

      v56 = v22;

      v63 = v63;
      v27 = v20;
      sub_221ED4904(v64, v20, v66);
      v58 = v24;
      v59 = v23;
      v65 = v25;
      v28 = v25;
      v29 = v26;
      sub_221ED4904(v23, v24, v28);
      v30 = [v26 UUID];
      if (!v30)
      {
        break;
      }

      v31 = v30;
      sub_221FB5C18();

      v32 = [v63 UUID];
      if (!v32)
      {
        goto LABEL_14;
      }

      v33 = v32;
      v34 = v52;
      sub_221FB5C18();

      sub_221EF29B8();
      v35 = v62;
      v36 = v53;
      v55 = sub_221FB62C8();
      v37 = *v51;
      (*v51)(v34, v36);
      v37(v35, v36);

      sub_221ED4948(v59, v58, v65);

      sub_221ED4948(v64, v27, v66);
      if (v55)
      {
        if (!v50)
        {
          goto LABEL_15;
        }

        v38 = *(v13 + 64);
        v39 = *(v13 + 72);
        v40 = *(v13 + 16);
        v42 = *(v13 + 32);
        v41 = *(v13 + 48);
        *v16 = *v13;
        *(v13 + 64) = v40;
        v43 = *(v13 + 88);
        *v13 = v41;
        *(v13 + 16) = v38;
        *(v13 + 24) = v39;
        *(v13 + 40) = v43;
        v13 -= 48;
        v16[2] = v42;
        if (!__CFADD__(v54++, 1))
        {
          continue;
        }
      }

      a3 = v49 + 1;
      v13 = v48 + 48;
      v14 = v47 - 1;
      if (v49 + 1 == v46)
      {
        return;
      }

      goto LABEL_5;
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
  }
}

void sub_221EF173C(void ***a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v146 = a1;
  v153 = sub_221FB5C38();
  v8 = *(*(v153 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v153);
  v148 = &v137 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v141 = &v137 - v13;
  MEMORY[0x28223BE20](v12);
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_85:
    a4 = *v146;
    if (!*v146)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_117:
      v19 = sub_221F93414(v19);
    }

    v166 = v19;
    v133 = *(v19 + 2);
    if (v133 < 2)
    {
      goto LABEL_95;
    }

    while (*a3)
    {
      v134 = *&v19[16 * v133];
      v135 = *&v19[16 * v133 + 24];
      sub_221EF2118((*a3 + 48 * v134), (*a3 + 48 * *&v19[16 * v133 + 16]), (*a3 + 48 * v135), a4);
      if (v5)
      {
        goto LABEL_95;
      }

      if (v135 < v134)
      {
        goto LABEL_110;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_221F93414(v19);
      }

      if (v133 - 2 >= *(v19 + 2))
      {
        goto LABEL_111;
      }

      v136 = &v19[16 * v133];
      *v136 = v134;
      *(v136 + 1) = v135;
      v166 = v19;
      sub_221F93388(v133 - 1);
      v19 = v166;
      v133 = *(v166 + 2);
      if (v133 <= 1)
      {
        goto LABEL_95;
      }
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
  }

  else
  {
    v140 = &v137 - v15;
    v147 = v16;
    v138 = a4;
    v18 = 0;
    v152 = (v14 + 8);
    v19 = MEMORY[0x277D84F90];
    v139 = a3;
    while (1)
    {
      v20 = v18;
      v21 = v18 + 1;
      if (v18 + 1 >= v17)
      {
        v50 = v18 + 1;
        goto LABEL_23;
      }

      v151 = v17;
      v143 = v19;
      v144 = v5;
      v22 = *a3;
      v23 = *a3 + 48 * v21;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 16);
      v27 = *(v23 + 24);
      v28 = *(v23 + 32);
      v29 = *(v23 + 40);
      v145 = v20;
      v30 = v22 + 48 * v20;
      v32 = *v30;
      v31 = *(v30 + 8);
      v33 = *(v30 + 16);
      v34 = *(v30 + 24);
      v163 = v24;
      v164 = v33;
      v35 = *(v30 + 32);
      v165 = *(v30 + 40);

      v162 = v25;

      v36 = v26;
      v159 = v32;

      v158 = v31;

      v37 = v164;
      LODWORD(v164) = v29;
      sub_221ED4904(v27, v28, v29);
      v160 = v35;
      v161 = v34;
      v38 = v35;
      v39 = v165;
      sub_221ED4904(v34, v38, v165);
      v40 = [v36 UUID];
      if (!v40)
      {
        break;
      }

      v41 = v40;
      v156 = v28;
      v157 = v22;
      v42 = v140;
      sub_221FB5C18();

      v43 = [v37 UUID];
      if (!v43)
      {
        goto LABEL_125;
      }

      v44 = v43;
      v45 = v141;
      sub_221FB5C18();

      v46 = sub_221EF29B8();
      v47 = v153;
      v150 = v46;
      v154 = sub_221FB62C8();
      v48 = *v152;
      (*v152)(v45, v47);
      v149 = v48;
      v48(v42, v47);

      sub_221ED4948(v161, v160, v39);

      sub_221ED4948(v27, v156, v164);
      v49 = v145 + 2;
      v142 = 48 * v145;
      a4 = v157 + 48 * v145 + 136;
      do
      {
        v50 = v151;
        if (v151 == v49)
        {
          goto LABEL_13;
        }

        v51 = *(a4 - 40);
        v52 = *(a4 - 32);
        v53 = *(a4 - 24);
        v54 = *(a4 - 16);
        v55 = *(a4 - 8);
        v56 = *a4;
        v57 = *(a4 - 88);
        v58 = *(a4 - 80);
        v59 = *(a4 - 64);
        v60 = *(a4 - 56);
        v163 = *(a4 - 72);
        v164 = v60;
        v165 = *(a4 - 48);
        v161 = v51;

        v160 = v52;

        v61 = v53;
        v158 = v57;

        v157 = v58;

        v62 = v163;
        v163 = v55;
        LODWORD(v162) = v56;
        sub_221ED4904(v54, v55, v56);
        v159 = v59;
        v63 = v59;
        v64 = v164;
        sub_221ED4904(v63, v164, v165);
        v156 = v61;
        v65 = [v61 UUID];
        if (!v65)
        {
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        v66 = v65;
        v155 = v49;
        v67 = v147;
        sub_221FB5C18();

        v68 = [v62 UUID];
        if (!v68)
        {
          goto LABEL_119;
        }

        v69 = v68;
        v70 = v148;
        sub_221FB5C18();

        v71 = v153;
        v72 = sub_221FB62C8() & 1;
        v73 = v149;
        v149(v70, v71);
        v73(v67, v71);

        sub_221ED4948(v159, v64, v165);

        sub_221ED4948(v54, v163, v162);
        v49 = v155 + 1;
        a4 += 48;
      }

      while ((v154 & 1) == v72);
      v50 = v155;
LABEL_13:
      v5 = v144;
      a3 = v139;
      v19 = v143;
      v20 = v145;
      v74 = v142;
      if (v154)
      {
        if (v50 < v145)
        {
          goto LABEL_114;
        }

        if (v145 < v50)
        {
          v75 = 48 * v50 - 48;
          v76 = v50;
          v77 = v145;
          do
          {
            if (v77 != --v76)
            {
              v86 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v78 = v86 + v74;
              v79 = *(v86 + v74 + 16);
              v80 = v86 + v75;
              v81 = *(v78 + 40);
              v82 = *(v78 + 24);
              v83 = *v78;
              v85 = *(v80 + 16);
              v84 = *(v80 + 32);
              *v78 = *v80;
              *(v78 + 16) = v85;
              *(v78 + 32) = v84;
              *v80 = v83;
              *(v80 + 16) = v79;
              *(v80 + 24) = v82;
              *(v80 + 40) = v81;
            }

            ++v77;
            v75 -= 48;
            v74 += 48;
          }

          while (v77 < v76);
        }
      }

LABEL_23:
      v87 = a3[1];
      if (v50 >= v87)
      {
        goto LABEL_33;
      }

      if (__OFSUB__(v50, v20))
      {
        goto LABEL_113;
      }

      if (v50 - v20 >= v138)
      {
LABEL_33:
        v18 = v50;
        goto LABEL_34;
      }

      if (__OFADD__(v20, v138))
      {
        goto LABEL_115;
      }

      if (v20 + v138 >= v87)
      {
        v18 = a3[1];
      }

      else
      {
        v18 = v20 + v138;
      }

      if (v18 < v20)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      sub_221EF13F8(v20, v18, v50, a3);
      if (v5)
      {
LABEL_95:

        return;
      }

LABEL_34:
      if (v18 < v20)
      {
        goto LABEL_112;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_221EF3710(0, *(v19 + 2) + 1, 1, v19);
      }

      a4 = *(v19 + 2);
      v88 = *(v19 + 3);
      v89 = a4 + 1;
      if (a4 >= v88 >> 1)
      {
        v19 = sub_221EF3710((v88 > 1), a4 + 1, 1, v19);
      }

      *(v19 + 2) = v89;
      v90 = &v19[16 * a4];
      *(v90 + 4) = v20;
      *(v90 + 5) = v18;
      v91 = *v146;
      if (!*v146)
      {
        goto LABEL_123;
      }

      if (a4)
      {
        while (1)
        {
          v92 = v89 - 1;
          if (v89 >= 4)
          {
            break;
          }

          if (v89 == 3)
          {
            v93 = *(v19 + 4);
            v94 = *(v19 + 5);
            v103 = __OFSUB__(v94, v93);
            v95 = v94 - v93;
            v96 = v103;
LABEL_54:
            if (v96)
            {
              goto LABEL_101;
            }

            v109 = &v19[16 * v89];
            v111 = *v109;
            v110 = *(v109 + 1);
            v112 = __OFSUB__(v110, v111);
            v113 = v110 - v111;
            v114 = v112;
            if (v112)
            {
              goto LABEL_104;
            }

            v115 = &v19[16 * v92 + 32];
            v117 = *v115;
            v116 = *(v115 + 1);
            v103 = __OFSUB__(v116, v117);
            v118 = v116 - v117;
            if (v103)
            {
              goto LABEL_107;
            }

            if (__OFADD__(v113, v118))
            {
              goto LABEL_108;
            }

            if (v113 + v118 >= v95)
            {
              if (v95 < v118)
              {
                v92 = v89 - 2;
              }

              goto LABEL_75;
            }

            goto LABEL_68;
          }

          v119 = &v19[16 * v89];
          v121 = *v119;
          v120 = *(v119 + 1);
          v103 = __OFSUB__(v120, v121);
          v113 = v120 - v121;
          v114 = v103;
LABEL_68:
          if (v114)
          {
            goto LABEL_103;
          }

          v122 = &v19[16 * v92];
          v124 = *(v122 + 4);
          v123 = *(v122 + 5);
          v103 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v103)
          {
            goto LABEL_106;
          }

          if (v125 < v113)
          {
            goto LABEL_3;
          }

LABEL_75:
          a4 = v92 - 1;
          if (v92 - 1 >= v89)
          {
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_120;
          }

          v130 = *&v19[16 * a4 + 32];
          v131 = *&v19[16 * v92 + 40];
          sub_221EF2118((*a3 + 48 * v130), (*a3 + 48 * *&v19[16 * v92 + 32]), (*a3 + 48 * v131), v91);
          if (v5)
          {
            goto LABEL_95;
          }

          if (v131 < v130)
          {
            goto LABEL_97;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = sub_221F93414(v19);
          }

          if (a4 >= *(v19 + 2))
          {
            goto LABEL_98;
          }

          v132 = &v19[16 * a4];
          *(v132 + 4) = v130;
          *(v132 + 5) = v131;
          v166 = v19;
          sub_221F93388(v92);
          v19 = v166;
          v89 = *(v166 + 2);
          if (v89 <= 1)
          {
            goto LABEL_3;
          }
        }

        v97 = &v19[16 * v89 + 32];
        v98 = *(v97 - 64);
        v99 = *(v97 - 56);
        v103 = __OFSUB__(v99, v98);
        v100 = v99 - v98;
        if (v103)
        {
          goto LABEL_99;
        }

        v102 = *(v97 - 48);
        v101 = *(v97 - 40);
        v103 = __OFSUB__(v101, v102);
        v95 = v101 - v102;
        v96 = v103;
        if (v103)
        {
          goto LABEL_100;
        }

        v104 = &v19[16 * v89];
        v106 = *v104;
        v105 = *(v104 + 1);
        v103 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v103)
        {
          goto LABEL_102;
        }

        v103 = __OFADD__(v95, v107);
        v108 = v95 + v107;
        if (v103)
        {
          goto LABEL_105;
        }

        if (v108 >= v100)
        {
          v126 = &v19[16 * v92 + 32];
          v128 = *v126;
          v127 = *(v126 + 1);
          v103 = __OFSUB__(v127, v128);
          v129 = v127 - v128;
          if (v103)
          {
            goto LABEL_109;
          }

          if (v95 < v129)
          {
            v92 = v89 - 2;
          }

          goto LABEL_75;
        }

        goto LABEL_54;
      }

LABEL_3:
      v17 = a3[1];
      if (v18 >= v17)
      {
        goto LABEL_85;
      }
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}