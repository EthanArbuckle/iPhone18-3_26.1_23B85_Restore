void sub_29E6EE178()
{
  if (!qword_2A1859DB8)
  {
    v0 = sub_29E753278();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859DB8);
    }
  }
}

unint64_t sub_29E6EE1D0()
{
  result = qword_2A1859DC0;
  if (!qword_2A1859DC0)
  {
    sub_29E6EE000();
    sub_29E6EE280();
    sub_29E6EE454(&qword_2A1859DE8, sub_29E6EE178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DC0);
  }

  return result;
}

unint64_t sub_29E6EE280()
{
  result = qword_2A1859DC8;
  if (!qword_2A1859DC8)
  {
    sub_29E6EE068();
    sub_29E6EE300();
    sub_29E6EE3CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DC8);
  }

  return result;
}

unint64_t sub_29E6EE300()
{
  result = qword_2A1859DD0;
  if (!qword_2A1859DD0)
  {
    sub_29E6EE11C(255, &qword_2A1859DA8, MEMORY[0x29EDC6A50]);
    sub_29E6EE454(&qword_2A1859DD8, MEMORY[0x29EDC6A50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DD0);
  }

  return result;
}

unint64_t sub_29E6EE3CC()
{
  result = qword_2A1859DE0;
  if (!qword_2A1859DE0)
  {
    sub_29E6EE5FC(255, &qword_2A1859DB0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DE0);
  }

  return result;
}

uint64_t sub_29E6EE454(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_29E6EE49C()
{
  if (!qword_2A1859DF0)
  {
    sub_29E6EE11C(255, &qword_2A1859D88, sub_29E6EDF68);
    sub_29E6EE51C();
    v0 = sub_29E752BC8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859DF0);
    }
  }
}

unint64_t sub_29E6EE51C()
{
  result = qword_2A1859DF8;
  if (!qword_2A1859DF8)
  {
    sub_29E6EE11C(255, &qword_2A1859D88, sub_29E6EDF68);
    sub_29E6EE000();
    sub_29E6EE1D0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859DF8);
  }

  return result;
}

void sub_29E6EE5FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_29E6EE660()
{
  result = qword_2A1859E18;
  if (!qword_2A1859E18)
  {
    sub_29E6EE5FC(255, &qword_2A1859E10, MEMORY[0x29EDC6A40], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859E18);
  }

  return result;
}

uint64_t sub_29E6EE6E8(uint64_t a1)
{
  v2 = sub_29E752A38();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D98();
}

uint64_t sub_29E6EE7B0(uint64_t a1)
{
  sub_29E6EE000();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E6EE80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v60 = a3;
  v61 = sub_29E74F6D8();
  v55 = *(v61 - 8);
  v4 = *(v55 + 64);
  MEMORY[0x2A1C7C4A8](v61);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E74F4A8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v51 - v12;
  v14 = sub_29E752098();
  v56 = *(v14 - 8);
  v57 = v14;
  v15 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v18 = *(v7 + 16);
  v18(v13, a1, v6);
  v19 = sub_29E752088();
  v54 = sub_29E7546C8();
  v20 = v19;
  v21 = os_log_type_enabled(v19, v54);
  v58 = v18;
  v59 = v7 + 16;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v68[0] = v52;
    *v22 = 136446466;
    *(v22 + 4) = sub_29E6B9C90(0xD000000000000017, 0x800000029E75F6E0, v68);
    *(v22 + 12) = 2082;
    v18(v11, v13, v6);
    v23 = sub_29E7541F8();
    v53 = a1;
    v24 = v23;
    v26 = v25;
    (*(v7 + 8))(v13, v6);
    v27 = v24;
    a1 = v53;
    v28 = sub_29E6B9C90(v27, v26, v68);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_29E5ED000, v20, v54, "[%{public}s] Presenting sleep onboarding with context %{public}s", v22, 0x16u);
    v29 = v52;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v29, -1, -1);
    MEMORY[0x29ED98410](v22, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v13, v6);
  }

  (*(v56 + 8))(v17, v57);
  sub_29E698700(&v66);
  if (v67)
  {
    sub_29E5FAEE4(&v66, v68);
  }

  else
  {
    v30 = *(v64 + qword_2A1869340);
    v31 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v32 = v30;
    v33 = sub_29E754198();
    v34 = [v31 initWithIdentifier:v33 healthStore:v32 options:0];

    v35 = sub_29E74F4C8();
    v36 = v34;
    v37 = sub_29E74F4B8();
    v68[3] = v35;
    v68[4] = MEMORY[0x29EDC6A70];

    v68[0] = v37;
    if (v67)
    {
      sub_29E6F5FF8(&v66, &qword_2A1A7CF90, &unk_2A1A7CFA0, MEMORY[0x29EDC6A80], sub_29E609CF8);
    }
  }

  v38 = [objc_allocWithZone(MEMORY[0x29EDC4760]) init];
  sub_29E602E20(v68, &v66);
  v58(v11, a1, v6);
  v39 = MEMORY[0x29EDC6AD8];
  sub_29E6F5D58(0, &qword_2A1859E30, MEMORY[0x29EDC6AD8], MEMORY[0x29EDC9E90]);
  v40 = *(v55 + 72);
  v41 = (*(v55 + 80) + 32) & ~*(v55 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_29E762F30;
  v43 = v38;
  sub_29E74F6C8();
  v65 = v42;
  sub_29E6F5F98(&qword_2A1859E38, MEMORY[0x29EDC6AD8]);
  sub_29E6F5D58(0, &qword_2A1859E40, v39, MEMORY[0x29EDC9A40]);
  sub_29E6F5EBC(&qword_2A1859E48, &qword_2A1859E40, v39);
  sub_29E754C58();
  v44 = sub_29E74F6E8();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  sub_29E74F6B8();
  v47 = swift_allocObject();
  v48 = v63;
  v49 = v60;
  *(v47 + 16) = v63;
  *(v47 + 24) = v49;
  sub_29E5F51BC(v48);
  sub_29E74F6A8();

  return sub_29E5FECBC(v68);
}

uint64_t sub_29E6EEEBC(unint64_t a1)
{
  v9 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
LABEL_15:
    sub_29E754C98();
    sub_29E754E08();
    v3 = sub_29E754C98();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E754E08();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x29ED976A0](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            sub_29E751758();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_29E754DE8();
        v7 = *(v9 + 16);
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_29E6EF030(unint64_t a1)
{
  v9 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
LABEL_15:
    sub_29E754C98();
    sub_29E754E08();
    v3 = sub_29E754C98();
    if (v3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_29E754E08();
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
LABEL_3:
      v4 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x29ED976A0](v4, a1);
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            sub_29E751758();

            return 0;
          }
        }

        else
        {
          if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v5 = *(a1 + 8 * v4 + 32);
          swift_unknownObjectRetain();
          v6 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            goto LABEL_12;
          }
        }

        sub_29E753EE8();
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_29E754DE8();
        v7 = *(v9 + 16);
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
        ++v4;
      }

      while (v6 != v3);
    }
  }

  return v9;
}

uint64_t sub_29E6EF1A0(uint64_t a1)
{
  v7 = MEMORY[0x29EDCA190];
  v2 = *(a1 + 16);
  sub_29E754E08();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 40)
  {
    sub_29E602E20(i, v6);
    sub_29E609CF8(0, &qword_2A1856FF0);
    sub_29E750088();
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_29E754DE8();
    v4 = *(v7 + 16);
    sub_29E754E18();
    sub_29E754E28();
    sub_29E754DF8();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_29E6EF2B0(unint64_t a1)
{
  v10 = MEMORY[0x29EDCA190];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  sub_29E754E08();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_29E754C98())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x29ED976A0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_29E754DE8();
      v8 = *(v10 + 16);
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      if (v7 == i)
      {
        return v10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_29E754C98();
    sub_29E754E08();
  }

  return v10;
}

uint64_t sub_29E6EF418(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  swift_getObjectType();
  v8 = sub_29E752098();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v13 = a1;
  v14 = sub_29E752088();
  v15 = sub_29E7546C8();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = a2;
    v17 = v16;
    v43 = swift_slowAlloc();
    v46 = v43;
    *v17 = 136446466;
    v18 = sub_29E755178();
    v20 = sub_29E6B9C90(v18, v19, &v46);
    v44 = v8;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = v13;
    v23 = [v22 description];
    v24 = sub_29E7541D8();
    v42 = v14;
    v25 = v13;
    v26 = v4;
    v27 = v24;
    HIDWORD(v41) = v15;
    v28 = v9;
    v29 = a3;
    v31 = v30;

    v32 = v27;
    v4 = v26;
    v13 = v25;
    v33 = sub_29E6B9C90(v32, v31, &v46);
    a3 = v29;

    *(v17 + 14) = v33;
    v34 = v42;
    _os_log_impl(&dword_29E5ED000, v42, BYTE4(v41), "[%{public}s] Received request to open NSUserActivity: %{public}s", v17, 0x16u);
    v35 = v43;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v35, -1, -1);
    v36 = v17;
    a2 = v45;
    MEMORY[0x29ED98410](v36, -1, -1);

    (*(v28 + 8))(v12, v44);
  }

  else
  {

    (*(v9 + 8))(v12, v8);
  }

  v37 = a3[3];
  v38 = a3[4];
  v39 = sub_29E601938(a3, v37);
  return sub_29E6F4664(v13, a2, v39, v4, v37, v38);
}

void sub_29E6EF6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v79 = v3;
  ObjectType = swift_getObjectType();
  v7 = sub_29E7513C8();
  v77 = *(v7 - 1);
  v78 = v7;
  v8 = *(v77 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v76 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E74ED88();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E752098();
  v75 = *(v15 - 8);
  v16 = *(v75 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v74 = &v70 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v70 - v19;
  sub_29E752048();
  v21 = *(v11 + 16);
  v73 = a1;
  v21(v14, a1, v10);
  v22 = sub_29E752088();
  v23 = sub_29E7546C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v72 = a2;
    v25 = v24;
    v26 = swift_slowAlloc();
    v70 = v15;
    v27 = v26;
    aBlock[0] = v26;
    *v25 = 136446466;
    v28 = sub_29E755178();
    v30 = sub_29E6B9C90(v28, v29, aBlock);
    v71 = ObjectType;
    v31 = v30;

    *(v25 + 4) = v31;
    *(v25 + 12) = 2080;
    v32 = sub_29E74ED48();
    v34 = v33;
    (*(v11 + 8))(v14, v10);
    v35 = sub_29E6B9C90(v32, v34, aBlock);
    ObjectType = v71;

    *(v25 + 14) = v35;
    _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s] Attempting to open breathing disturbances room with sample with UUID of %s", v25, 0x16u);
    swift_arrayDestroy();
    v36 = v27;
    v15 = v70;
    MEMORY[0x29ED98410](v36, -1, -1);
    MEMORY[0x29ED98410](v25, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v14, v10);
  }

  v37 = *(v75 + 8);
  v37(v20, v15);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v38 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v39 = v76;
  sub_29E750FA8();
  v40 = sub_29E6A1530(v38, v39);

  (*(v77 + 8))(v39, v78);
  if (v40)
  {
    sub_29E751AB8();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v42 = v41;
      v43 = objc_opt_self();
      v44 = sub_29E74ED58();
      v45 = [v43 predicateForObjectWithUUID_];
      v79 = v45;

      sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
      v46 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
      v47 = [objc_allocWithZone(MEMORY[0x29EDBAD40]) initWithSampleType:v46 predicate:v45];
      v48 = ObjectType;
      v49 = v47;

      v50 = sub_29E750FC8();
      v51 = sub_29E750FD8();
      sub_29E6163F8();
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_29E764160;
      *(v52 + 32) = v49;
      v53 = swift_allocObject();
      v53[2] = v42;
      v53[3] = v50;
      v53[4] = v51;
      v53[5] = v48;
      v54 = objc_allocWithZone(MEMORY[0x29EDBAD70]);
      sub_29E609B5C(0, &qword_2A1858468, 0x29EDBAD40);
      v78 = v49;
      v55 = v40;
      v56 = v50;
      v57 = v51;
      v58 = sub_29E7543D8();

      aBlock[4] = sub_29E6F5FE0;
      aBlock[5] = v53;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29E6F3DE8;
      aBlock[3] = &unk_2A2502730;
      v59 = _Block_copy(aBlock);
      v60 = [v54 initWithQueryDescriptors:v58 limit:1 resultsHandler:v59];

      _Block_release(v59);

      v61 = sub_29E750FC8();
      [v61 executeQuery_];

      return;
    }
  }

  v62 = v74;
  sub_29E752048();
  v63 = sub_29E752088();
  v64 = sub_29E7546A8();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    aBlock[0] = v66;
    *v65 = 136446210;
    v67 = sub_29E755178();
    v69 = sub_29E6B9C90(v67, v68, aBlock);

    *(v65 + 4) = v69;
    _os_log_impl(&dword_29E5ED000, v63, v64, "[%{public}s] Could not get view controller, not opening breathing disturbances room.", v65, 0xCu);
    sub_29E5FECBC(v66);
    MEMORY[0x29ED98410](v66, -1, -1);
    MEMORY[0x29ED98410](v65, -1, -1);
  }

  v37(v62, v15);
}

void *sub_29E6EFE48(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = sub_29E601938(a3, v6);

  return sub_29E6F3EA0(a1, a2, v8, v3, v6, v7);
}

void sub_29E6EFEB4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_29E7513C8();
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v44 = *(v5 - 8);
  v6 = *(v44 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = &v38 - v10;
  sub_29E752048();
  v12 = sub_29E752088();
  v13 = sub_29E7546C8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v38 = v1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v39 = v9;
    v17 = v16;
    v45 = v16;
    *v15 = 136446210;
    v18 = sub_29E755178();
    v20 = v5;
    v21 = sub_29E6B9C90(v18, v19, &v45);

    *(v15 + 4) = v21;
    v5 = v20;
    v22 = v44;
    _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Attempting to open breathing disturbances room", v15, 0xCu);
    sub_29E5FECBC(v17);
    v23 = v17;
    v9 = v39;
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v15, -1, -1);

    v24 = *(v22 + 8);
    v24(v11, v20);
  }

  else
  {

    v24 = *(v44 + 8);
    v24(v11, v5);
  }

  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v25 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v26 = v41;
  sub_29E750FA8();
  v27 = sub_29E6A1530(v25, v26);

  (*(v42 + 8))(v26, v43);
  if (v27)
  {
    sub_29E751AB8();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = v28;
      v30 = sub_29E750FD8();
      [v30 showViewController:v29 sender:0];

      return;
    }
  }

  sub_29E752048();
  v31 = sub_29E752088();
  v32 = sub_29E7546A8();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v45 = v34;
    *v33 = 136446210;
    v35 = sub_29E755178();
    v37 = sub_29E6B9C90(v35, v36, &v45);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Could not get view controller, not opening breathing disturbances room.", v33, 0xCu);
    sub_29E5FECBC(v34);
    MEMORY[0x29ED98410](v34, -1, -1);
    MEMORY[0x29ED98410](v33, -1, -1);
  }

  v24(v9, v5);
}

void sub_29E6F030C(uint64_t a1)
{
  v42 = a1;
  ObjectType = swift_getObjectType();
  v41 = sub_29E7513C8();
  v1 = *(v41 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v41);
  v4 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v37 - v11;
  sub_29E752048();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v38 = v10;
    v16 = v15;
    v17 = swift_slowAlloc();
    v39 = v6;
    v37 = v5;
    v18 = v17;
    v43 = v17;
    *v16 = 136446210;
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, &v43);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] Attempting to open sleep apnea notifications room", v16, 0xCu);
    sub_29E5FECBC(v18);
    v22 = v18;
    v5 = v37;
    v6 = v39;
    MEMORY[0x29ED98410](v22, -1, -1);
    v23 = v16;
    v10 = v38;
    MEMORY[0x29ED98410](v23, -1, -1);
  }

  v24 = *(v6 + 8);
  v24(v12, v5);
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v25 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  sub_29E750FA8();
  v26 = sub_29E6A1530(v25, v4);

  (*(v1 + 8))(v4, v41);
  if (v26)
  {
    v27 = sub_29E750FD8();
    [v27 showViewController:v26 sender:0];
  }

  else
  {
    sub_29E752048();
    v28 = sub_29E752088();
    v29 = sub_29E7546A8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = v10;
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v43 = v32;
      *v31 = 136446210;
      v33 = sub_29E755178();
      v35 = sub_29E6B9C90(v33, v34, &v43);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_29E5ED000, v28, v29, "[%{public}s] Could not get view controller, not opening sleep apnea notifications room.", v31, 0xCu);
      sub_29E5FECBC(v32);
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v31, -1, -1);

      v36 = v30;
    }

    else
    {

      v36 = v10;
    }

    v24(v36, v5);
  }
}

void sub_29E6F0720(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v4 = sub_29E752098();
  v72 = *(v4 - 8);
  v73 = v4;
  v5 = *(v72 + 64);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v67 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v67 - v12;
  sub_29E6F5D58(0, &qword_2A1859CC8, MEMORY[0x29EDC6B38], MEMORY[0x29EDC9C68]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v17 = &v67 - v16;
  v18 = sub_29E74F7F8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E754718();
  v23 = v18;
  v24 = v19;
  if ((*(v19 + 48))(v17, 1, v23) == 1)
  {
    sub_29E6F5F28(v17, &qword_2A1859CC8, MEMORY[0x29EDC6B38]);
    sub_29E752048();
    v25 = sub_29E752088();
    v26 = sub_29E7546A8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v75[0] = v28;
      *v27 = 136446210;
      v29 = sub_29E755178();
      v30 = v72;
      v32 = sub_29E6B9C90(v29, v31, v75);

      *(v27 + 4) = v32;
      _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Unable to open article. Couldn't parse article URL and identifier", v27, 0xCu);
      sub_29E5FECBC(v28);
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);

      (*(v30 + 8))(v8, v73);
    }

    else
    {

      (*(v72 + 8))(v8, v73);
    }
  }

  else
  {
    v69 = ObjectType;
    v70 = v11;
    v33 = *(v19 + 32);
    v71 = v23;
    v33(v22, v17, v23);
    sub_29E746094(v75);
    sub_29E601938(v75, v76);
    sub_29E750148();
    sub_29E5FECBC(v75);
    sub_29E746094(v75);
    sub_29E601938(v75, v76);
    sub_29E750138();
    sub_29E5FECBC(v75);
    v34 = objc_allocWithZone(sub_29E750128());
    v35 = sub_29E750118();
    v36 = [a2 navigationController];
    sub_29E752048();
    v37 = v36;
    v38 = sub_29E752088();
    v39 = sub_29E7546C8();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75[0] = v41;
      *v40 = 136446466;
      v42 = sub_29E755178();
      v68 = v35;
      v44 = sub_29E6B9C90(v42, v43, v75);
      v67 = v24;
      v45 = v44;

      *(v40 + 4) = v45;
      *(v40 + 12) = 2080;
      v74 = v37;
      sub_29E6F5DBC(0, &qword_2A1859CF0, &qword_2A185A670, 0x29EDC7DA8, sub_29E609B5C);
      v46 = v37;
      v47 = sub_29E7541F8();
      v49 = sub_29E6B9C90(v47, v48, v75);
      v35 = v68;

      *(v40 + 14) = v49;
      v24 = v67;
      _os_log_impl(&dword_29E5ED000, v38, v39, "[%{public}s] Determining whether we can open article on presented vc %s)", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v41, -1, -1);
      MEMORY[0x29ED98410](v40, -1, -1);
    }

    v50 = *(v72 + 8);
    v50(v13, v73);
    v51 = v70;
    if (v36)
    {
      v67 = v50;
      v52 = v37;
      v53 = [v52 presentedViewController];
      v54 = v52;
      if (v53)
      {
        v55 = v52;
        do
        {
          v54 = v53;

          v53 = [v54 presentedViewController];
          v55 = v54;
        }

        while (v53);
      }

      objc_opt_self();
      v56 = swift_dynamicCastObjCClass();
      if (v56)
      {
        [v56 pushViewController:v35 animated:1];
      }

      else
      {
        v57 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
        [v54 presentViewController:v57 animated:1 completion:0];
      }

      sub_29E752048();
      v58 = sub_29E752088();
      v59 = v51;
      v60 = sub_29E7546C8();
      if (os_log_type_enabled(v58, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v68 = v35;
        v63 = v62;
        v75[0] = v62;
        *v61 = 136446210;
        v64 = sub_29E755178();
        v66 = sub_29E6B9C90(v64, v65, v75);

        *(v61 + 4) = v66;
        _os_log_impl(&dword_29E5ED000, v58, v60, "[%{public}s] Displaying article in current modal", v61, 0xCu);
        sub_29E5FECBC(v63);
        MEMORY[0x29ED98410](v63, -1, -1);
        MEMORY[0x29ED98410](v61, -1, -1);

        v67(v70, v73);
      }

      else
      {

        v67(v59, v73);
      }

      (*(v24 + 1))(v22, v71);
    }

    else
    {
      (*(v24 + 1))(v22, v71);
    }
  }
}

id sub_29E6F0F4C(void *a1, uint64_t a2)
{
  v4 = sub_29E7513C8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 resolvedHealthToolbox];
  sub_29E6E62F8();
  v13[1] = a2;
  sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
  v9 = sub_29E74F918();
  v10 = objc_allocWithZone(type metadata accessor for SleepRoomViewController());
  v11 = sub_29E69F6AC(v8, v7, v9);

  return v11;
}

void sub_29E6F10A0(void *a1, void *a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v207 = sub_29E74F488();
  v206 = *(v207 - 8);
  v6 = *(v206 + 64);
  MEMORY[0x2A1C7C4A8](v207);
  v205 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = sub_29E74F4A8();
  v209 = *(v210 - 8);
  v8 = *(v209 + 64);
  MEMORY[0x2A1C7C4A8](v210);
  v208 = &v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753CF8();
  v218 = *(v10 - 8);
  v219 = v10;
  v11 = *(v218 + 64);
  MEMORY[0x2A1C7C4A8](v10);
  v216 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = sub_29E753D18();
  v215 = *(v217 - 8);
  v13 = *(v215 + 64);
  MEMORY[0x2A1C7C4A8](v217);
  v214 = &v201 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_29E753D38();
  v213 = *(v221 - 8);
  v15 = *(v213 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v221);
  v18 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v212 = &v201 - v19;
  v20 = sub_29E752098();
  v21 = *(v20 - 8);
  v225 = v20;
  v226 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x2A1C7C4A8](v20);
  v204 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v202 = &v201 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v211 = &v201 - v28;
  v29 = MEMORY[0x2A1C7C4A8](v27);
  v203 = &v201 - v30;
  v31 = MEMORY[0x2A1C7C4A8](v29);
  v33 = &v201 - v32;
  v34 = MEMORY[0x2A1C7C4A8](v31);
  v36 = &v201 - v35;
  v37 = MEMORY[0x2A1C7C4A8](v34);
  v39 = &v201 - v38;
  MEMORY[0x2A1C7C4A8](v37);
  v41 = &v201 - v40;
  v42 = [a2 presentedViewController];
  if (!v42)
  {
    v228 = 0;
    v45 = 0;
    goto LABEL_14;
  }

  v43 = v42;
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  v45 = v44;
  if (!v44)
  {

LABEL_13:
    v228 = 0;
    goto LABEL_14;
  }

  v46 = [v44 viewControllers];
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  v47 = sub_29E7543F8();

  if (v47 >> 62)
  {
    if (sub_29E754C98())
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

  if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_12:

    goto LABEL_13;
  }

LABEL_5:
  if ((v47 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x29ED976A0](0, v47);
  }

  else
  {
    if (!*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v48 = *(v47 + 32);
  }

  v228 = v48;

LABEL_14:
  v227 = a3;
  v49 = [a3 navigationController];
  v50 = [v49 topViewController];

  v51 = sub_29E754748();
  if (v51)
  {
    v52 = v51;
    v222 = v50;
    v223 = v45;
    v224 = a1;
    v53 = *MEMORY[0x29EDC6818];
    v54 = sub_29E7541D8();
    v56 = v55;
    if (v54 == sub_29E7541D8() && v56 == v57)
    {

LABEL_24:
      v61 = v223;
      v62 = v224;
      v63 = v222;
      if (v222 && (type metadata accessor for ManageScheduleViewController(), (v64 = swift_dynamicCastClass()) != 0))
      {
        v65 = v64;
        v66 = v63;
      }

      else
      {
        sub_29E752048();
        v67 = sub_29E752088();
        v68 = sub_29E7546C8();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          v70 = swift_slowAlloc();
          *&aBlock = v70;
          *v69 = 136446210;
          v71 = sub_29E755178();
          v73 = sub_29E6B9C90(v71, v72, &aBlock);

          *(v69 + 4) = v73;
          _os_log_impl(&dword_29E5ED000, v67, v68, "[%{public}s] Presenting the manage schedule view controller", v69, 0xCu);
          sub_29E5FECBC(v70);
          MEMORY[0x29ED98410](v70, -1, -1);
          MEMORY[0x29ED98410](v69, -1, -1);
        }

        (*(v226 + 8))(v41, v225);
        v74 = v227;
        v75 = *&v227[qword_2A1869340];
        if ((sub_29E754618() & 1) == 0)
        {
          goto LABEL_32;
        }

        v65 = sub_29E69DE90();
        [v74 showViewController:v65 sender:v74];
      }

      [v65 restoreUserActivityState_];

LABEL_32:
LABEL_33:

      return;
    }

    v59 = sub_29E755028();

    v60 = v227;
    if (v59)
    {

      goto LABEL_24;
    }

    v76 = *MEMORY[0x29EDC6860];
    v77 = sub_29E7541D8();
    v79 = v78;
    if (v77 == sub_29E7541D8() && v79 == v80)
    {

LABEL_39:
      sub_29E752048();
      v82 = sub_29E752088();
      v83 = sub_29E7546C8();
      if (os_log_type_enabled(v82, v83))
      {
        v84 = swift_slowAlloc();
        v85 = swift_slowAlloc();
        *&aBlock = v85;
        *v84 = 136446210;
        v86 = sub_29E755178();
        v88 = sub_29E6B9C90(v86, v87, &aBlock);

        *(v84 + 4) = v88;
        _os_log_impl(&dword_29E5ED000, v82, v83, "[%{public}s] Scrolling to the schedule view", v84, 0xCu);
        sub_29E5FECBC(v85);
        MEMORY[0x29ED98410](v85, -1, -1);
        MEMORY[0x29ED98410](v84, -1, -1);
      }

      (*(v226 + 8))(v39, v225);
      v89 = sub_29E754738();
      sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
      v90 = sub_29E754908();
      sub_29E753D28();
      v91 = v212;
      sub_29E753D98();
      v226 = *(v213 + 8);
      (v226)(v18, v221);
      v92 = swift_allocObject();
      *(v92 + 16) = v60;
      *(v92 + 24) = v89 & 1;
      v231 = sub_29E6F5EB0;
      v232 = v92;
      *&aBlock = MEMORY[0x29EDCA5F8];
      *(&aBlock + 1) = 1107296256;
      *&v230 = sub_29E6A1514;
      *(&v230 + 1) = &unk_2A25026B8;
      v93 = _Block_copy(&aBlock);
      v94 = v60;
      v95 = v214;
      sub_29E753D08();
      v233 = MEMORY[0x29EDCA190];
      sub_29E6F5F98(&qword_2A18569F8, MEMORY[0x29EDCA248]);
      v96 = MEMORY[0x29EDCA248];
      sub_29E6F5D58(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
      sub_29E6F5EBC(&qword_2A1856A00, &unk_2A1858A50, v96);
      v97 = v216;
      v98 = v219;
      sub_29E754C58();
      MEMORY[0x29ED971D0](v91, v95, v97, v93);
      _Block_release(v93);

      (*(v218 + 8))(v97, v98);
      (*(v215 + 8))(v95, v217);
      (v226)(v91, v221);

      return;
    }

    v81 = sub_29E755028();

    if (v81)
    {

      goto LABEL_39;
    }

    v99 = *MEMORY[0x29EDC6850];
    v100 = sub_29E7541D8();
    v102 = v101;
    v103 = sub_29E7541D8();
    v105 = v223;
    if (v100 == v103 && v102 == v104)
    {
LABEL_44:

      v106 = v228;
      if (!v228)
      {
        goto LABEL_53;
      }

LABEL_48:
      v228 = v106;
      sub_29E74FA38();
      v108 = swift_dynamicCastClass();
      if (v108)
      {
        v109 = v108;
        sub_29E752048();
        v110 = sub_29E752088();
        v111 = sub_29E7546C8();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *&aBlock = v113;
          *v112 = 136446210;
          v114 = sub_29E755178();
          v116 = sub_29E6B9C90(v114, v115, &aBlock);

          *(v112 + 4) = v116;
          _os_log_impl(&dword_29E5ED000, v110, v111, "[%{public}s] Updating override schedule", v112, 0xCu);
          sub_29E5FECBC(v113);
          MEMORY[0x29ED98410](v113, -1, -1);
          MEMORY[0x29ED98410](v112, -1, -1);
        }

        (*(v226 + 8))(v36, v225);
        [v109 restoreUserActivityState_];

LABEL_52:
        return;
      }

LABEL_53:
      sub_29E752048();
      v117 = sub_29E752088();
      v118 = sub_29E7546C8();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&aBlock = v120;
        *v119 = 136446210;
        v121 = sub_29E755178();
        v123 = sub_29E6B9C90(v121, v122, &aBlock);

        *(v119 + 4) = v123;
        _os_log_impl(&dword_29E5ED000, v117, v118, "[%{public}s] Presenting the override schedule view controller", v119, 0xCu);
        sub_29E5FECBC(v120);
        MEMORY[0x29ED98410](v120, -1, -1);
        MEMORY[0x29ED98410](v119, -1, -1);
      }

      (*(v226 + 8))(v33, v225);
      v124 = swift_allocObject();
      v125 = v224;
      *(v124 + 16) = v224;
      v126 = v125;
      sub_29E69D984(sub_29E6F5EA0, v124);

      goto LABEL_33;
    }

    v107 = sub_29E755028();

    if (v107)
    {
      goto LABEL_47;
    }

    v127 = *MEMORY[0x29EDC6858];
    v128 = sub_29E7541D8();
    v130 = v129;
    if (v128 == sub_29E7541D8() && v130 == v131)
    {
      goto LABEL_44;
    }

    v132 = sub_29E755028();

    if (v132)
    {
LABEL_47:

      v106 = v228;
      if (!v228)
      {
        goto LABEL_53;
      }

      goto LABEL_48;
    }

    v133 = *MEMORY[0x29EDC6828];
    v134 = sub_29E7541D8();
    v136 = v135;
    if (v134 == sub_29E7541D8() && v136 == v137)
    {

      v138 = v211;
      goto LABEL_64;
    }

    v139 = sub_29E755028();

    v138 = v211;
    if (v139)
    {

LABEL_64:
      v140 = sub_29E754708();
      if (!v140)
      {
        goto LABEL_73;
      }

      v141 = v140;
      v142 = *MEMORY[0x29EDC67C8];
      v143 = sub_29E7541D8();
      v145 = v144;
      if (v143 == sub_29E7541D8() && v145 == v146)
      {
      }

      else
      {
        v153 = sub_29E755028();

        if ((v153 & 1) == 0)
        {
          goto LABEL_73;
        }
      }

      v154 = [objc_opt_self() hksp_internalUserDefaults];
      [v154 setBool:1 forKey:*MEMORY[0x29EDC6810]];

LABEL_73:
      if (v228 && (v233 = v228, sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8), sub_29E609CF8(0, &qword_2A1859E28), v155 = v228, (swift_dynamicCast() & 1) != 0))
      {
        v156 = *(&v230 + 1);
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
        if (v156)
        {
          v157 = v203;
          sub_29E752048();
          v158 = sub_29E752088();
          v159 = sub_29E7546C8();
          if (os_log_type_enabled(v158, v159))
          {
            v160 = swift_slowAlloc();
            v161 = swift_slowAlloc();
            *&aBlock = v161;
            *v160 = 136446210;
            v162 = sub_29E755178();
            v164 = sub_29E6B9C90(v162, v163, &aBlock);

            *(v160 + 4) = v164;
            _os_log_impl(&dword_29E5ED000, v158, v159, "[%{public}s] Resuming sleep coaching onboarding", v160, 0xCu);
            sub_29E5FECBC(v161);
            MEMORY[0x29ED98410](v161, -1, -1);
            MEMORY[0x29ED98410](v160, -1, -1);
          }

          (*(v226 + 8))(v157, v225);
          v165 = v155;
          [v165 restoreUserActivityState_];

          goto LABEL_52;
        }
      }

      else
      {
        v231 = 0;
        aBlock = 0u;
        v230 = 0u;
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
      }

      sub_29E752048();
      v166 = sub_29E752088();
      v167 = sub_29E7546C8();
      if (os_log_type_enabled(v166, v167))
      {
        v168 = swift_slowAlloc();
        v169 = swift_slowAlloc();
        *&aBlock = v169;
        *v168 = 136446210;
        v170 = sub_29E755178();
        v172 = sub_29E6B9C90(v170, v171, &aBlock);

        *(v168 + 4) = v172;
        _os_log_impl(&dword_29E5ED000, v166, v167, "[%{public}s] Presenting sleep coaching onboarding.", v168, 0xCu);
        sub_29E5FECBC(v169);
        MEMORY[0x29ED98410](v169, -1, -1);
        MEMORY[0x29ED98410](v168, -1, -1);
      }

      (*(v226 + 8))(v138, v225);
      v173 = v210;
      v174 = v209;
      v175 = v208;
      v176 = v224;
      *&aBlock = v224;
      sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
      sub_29E74F918();
      (*(v206 + 104))(v205, *MEMORY[0x29EDC6A60], v207);
      sub_29E74F498();
      v177 = swift_allocObject();
      *(v177 + 16) = v176;
      v178 = v176;
      v179 = sub_29E6F5E88;
LABEL_83:
      sub_29E6EE80C(v175, v179, v177);

      (*(v174 + 8))(v175, v173);
      return;
    }

    v147 = *MEMORY[0x29EDC6830];
    v148 = sub_29E7541D8();
    v150 = v149;
    if (v148 == sub_29E7541D8() && v150 == v151)
    {

      v152 = v204;
LABEL_85:
      if (v228 && (v233 = v228, sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8), sub_29E609CF8(0, &qword_2A1859E28), v181 = v228, (swift_dynamicCast() & 1) != 0))
      {
        v182 = *(&v230 + 1);
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
        if (v182)
        {
          v183 = v202;
          sub_29E752048();
          v184 = sub_29E752088();
          v185 = sub_29E7546C8();
          if (os_log_type_enabled(v184, v185))
          {
            v186 = swift_slowAlloc();
            v187 = swift_slowAlloc();
            *&aBlock = v187;
            *v186 = 136446210;
            v188 = sub_29E755178();
            v190 = sub_29E6B9C90(v188, v189, &aBlock);

            *(v186 + 4) = v190;
            _os_log_impl(&dword_29E5ED000, v184, v185, "[%{public}s] Resuming sleep tracking onboarding", v186, 0xCu);
            sub_29E5FECBC(v187);
            MEMORY[0x29ED98410](v187, -1, -1);
            MEMORY[0x29ED98410](v186, -1, -1);
          }

          (*(v226 + 8))(v183, v225);
          v191 = v181;
          [v191 restoreUserActivityState_];

          return;
        }
      }

      else
      {
        v231 = 0;
        aBlock = 0u;
        v230 = 0u;
        sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
      }

      sub_29E752048();
      v192 = sub_29E752088();
      v193 = sub_29E7546C8();
      if (os_log_type_enabled(v192, v193))
      {
        v194 = swift_slowAlloc();
        v195 = swift_slowAlloc();
        *&aBlock = v195;
        *v194 = 136446210;
        v196 = sub_29E755178();
        v198 = sub_29E6B9C90(v196, v197, &aBlock);

        *(v194 + 4) = v198;
        _os_log_impl(&dword_29E5ED000, v192, v193, "[%{public}s] Presenting sleep tracking onboarding", v194, 0xCu);
        sub_29E5FECBC(v195);
        MEMORY[0x29ED98410](v195, -1, -1);
        MEMORY[0x29ED98410](v194, -1, -1);
      }

      (*(v226 + 8))(v152, v225);
      v173 = v210;
      v174 = v209;
      v175 = v208;
      v199 = v224;
      *&aBlock = v224;
      sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
      sub_29E74F918();
      (*(v206 + 104))(v205, *MEMORY[0x29EDC6A68], v207);
      sub_29E74F498();
      v177 = swift_allocObject();
      *(v177 + 16) = v199;
      v200 = v199;
      v179 = sub_29E6F6068;
      goto LABEL_83;
    }

    v180 = sub_29E755028();

    v152 = v204;
    if (v180)
    {
      goto LABEL_85;
    }
  }

  else
  {
  }

  v58 = v228;
}

void sub_29E6F29F0(uint64_t a1, void *a2, void *a3, void (*a4)(void), uint64_t a5)
{
  v98 = a4;
  v99 = a5;
  v100 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_29E752098();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = *(v96 + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v93 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v92 - v10;
  v12 = sub_29E754728();
  if (v12 == 2)
  {
    v13 = [objc_opt_self() sharedApplication];
    v14 = [v13 applicationState];

    LODWORD(v15) = v14 == 0;
  }

  else
  {
    LODWORD(v15) = v12;
  }

  v16 = &selRef_restoreUserActivityState_;
  v17 = [v100 topViewController];
  v95 = a3;
  if (v17)
  {
    v18 = v17;
    sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
    v19 = a3;
    v20 = sub_29E754B88();
  }

  else
  {
    v20 = 0;
  }

  v21 = [v100 presentedViewController];
  if (!v21)
  {
    v30 = 0;
    goto LABEL_40;
  }

  v22 = v21;
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  v92 = __PAIR64__(v15, v20);
  if (!v23)
  {
    v27 = v11;
LABEL_19:
    v29 = 0;
    goto LABEL_20;
  }

  v24 = v22;
  v25 = [v23 viewControllers];
  sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
  v26 = sub_29E7543F8();

  if (v26 >> 62)
  {
    if (sub_29E754C98())
    {
      goto LABEL_11;
    }

    goto LABEL_18;
  }

  if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_18:
    v27 = v11;

    goto LABEL_19;
  }

LABEL_11:
  if ((v26 & 0xC000000000000001) != 0)
  {
    v27 = v11;
    v28 = MEMORY[0x29ED976A0](0, v26);
  }

  else
  {
    if (!*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v27 = v11;
    v28 = *(v26 + 32);
  }

  v29 = v28;

LABEL_20:
  v31 = sub_29E754748();
  if (!v31)
  {

    LOBYTE(v15) = BYTE4(v92);
    if (!v29)
    {
      goto LABEL_38;
    }

LABEL_36:
    v101 = v29;
    sub_29E609B5C(0, &qword_2A185A670, 0x29EDC7DA8);
    sub_29E609CF8(0, &qword_2A1859E28);
    if (swift_dynamicCast())
    {
      v30 = *(&v103 + 1) == 0;
LABEL_39:
      v11 = v27;
      v20 = v92;
      sub_29E6F5FF8(&aBlock, &qword_2A1859E20, &qword_2A1859E28, MEMORY[0x29EDC6B00], sub_29E609CF8);
      goto LABEL_40;
    }

LABEL_38:
    v104 = 0;
    aBlock = 0u;
    v103 = 0u;
    v30 = 1;
    goto LABEL_39;
  }

  v32 = v31;
  v33 = *MEMORY[0x29EDC6818];
  v34 = sub_29E7541D8();
  v36 = v35;
  if (v34 == sub_29E7541D8() && v36 == v37)
  {

LABEL_28:

LABEL_29:
    v30 = 1;
    v11 = v27;
    v20 = v92;
    LOBYTE(v15) = BYTE4(v92);
    v16 = &selRef_restoreUserActivityState_;
    goto LABEL_40;
  }

  v38 = sub_29E755028();

  if (v38)
  {

    goto LABEL_28;
  }

  v39 = *MEMORY[0x29EDC6828];
  v40 = sub_29E7541D8();
  v42 = v41;
  if (v40 == sub_29E7541D8() && v42 == v43)
  {
    goto LABEL_32;
  }

  v44 = sub_29E755028();

  if (v44)
  {
LABEL_34:

LABEL_35:
    v16 = &selRef_restoreUserActivityState_;
    LOBYTE(v15) = BYTE4(v92);
    if (!v29)
    {
      goto LABEL_38;
    }

    goto LABEL_36;
  }

  v74 = *MEMORY[0x29EDC6830];
  v75 = sub_29E7541D8();
  v77 = v76;
  if (v75 == sub_29E7541D8() && v77 == v78)
  {
    goto LABEL_32;
  }

  v79 = sub_29E755028();

  if (v79)
  {
    goto LABEL_34;
  }

  v80 = *MEMORY[0x29EDC6860];
  v81 = sub_29E7541D8();
  v83 = v82;
  if (v81 == sub_29E7541D8() && v83 == v84)
  {
LABEL_32:

    goto LABEL_35;
  }

  v85 = sub_29E755028();

  if (v85)
  {
    goto LABEL_34;
  }

  v86 = *MEMORY[0x29EDC6850];
  v87 = sub_29E7541D8();
  v89 = v88;
  if (v87 == sub_29E7541D8() && v89 == v90)
  {
  }

  else
  {
    v91 = sub_29E755028();

    if ((v91 & 1) == 0)
    {

      goto LABEL_29;
    }
  }

  v16 = &selRef_restoreUserActivityState_;

  v30 = 1;
  v11 = v27;
  v20 = v92;
  LOBYTE(v15) = BYTE4(v92);
LABEL_40:
  v45 = [v100 v16[89]];
  if (v45)
  {
    v46 = v45;
    v47 = sub_29E754748();
    if (v47)
    {
      v48 = v47;
      v49 = *MEMORY[0x29EDC6818];
      v50 = sub_29E7541D8();
      v52 = v51;
      if (v50 == sub_29E7541D8() && v52 == v53)
      {

        goto LABEL_46;
      }

      v54 = sub_29E755028();

      if (v54)
      {
LABEL_46:
        type metadata accessor for ManageScheduleViewController();
        v55 = swift_dynamicCastClass() != 0;

        if (((v55 | v20) & 1) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_53;
      }
    }
  }

  if ((v20 & 1) == 0)
  {
LABEL_47:
    v56 = v15 & !v30;
    sub_29E752048();
    v57 = sub_29E752088();
    v58 = sub_29E7546C8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&aBlock = v60;
      *v59 = 136446466;
      v61 = sub_29E755178();
      v63 = v15;
      v15 = sub_29E6B9C90(v61, v62, &aBlock);

      *(v59 + 4) = v15;
      LOBYTE(v15) = v63;
      *(v59 + 12) = 1026;
      *(v59 + 14) = v56 & 1;
      _os_log_impl(&dword_29E5ED000, v57, v58, "[%{public}s] Popping navigation stack back to room view controller with animation: %{BOOL,public}d", v59, 0x12u);
      sub_29E5FECBC(v60);
      MEMORY[0x29ED98410](v60, -1, -1);
      MEMORY[0x29ED98410](v59, -1, -1);
    }

    (*(v96 + 8))(v11, v97);
    if (!v30)
    {
      goto LABEL_58;
    }

    goto LABEL_54;
  }

LABEL_53:
  if (!v30)
  {
LABEL_58:
    v98();
    return;
  }

LABEL_54:
  v64 = [v100 presentedViewController];
  if (!v64)
  {
    goto LABEL_58;
  }

  v65 = v93;
  sub_29E752048();
  v66 = sub_29E752088();
  v67 = sub_29E7546C8();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&aBlock = v69;
    *v68 = 136446466;
    v70 = sub_29E755178();
    v72 = v15;
    v15 = sub_29E6B9C90(v70, v71, &aBlock);

    *(v68 + 4) = v15;
    LOBYTE(v15) = v72;
    *(v68 + 12) = 1026;
    *(v68 + 14) = v72 & 1;
    _os_log_impl(&dword_29E5ED000, v66, v67, "[%{public}s] Dimissing presented view controller with animation: %{BOOL,public}d", v68, 0x12u);
    sub_29E5FECBC(v69);
    MEMORY[0x29ED98410](v69, -1, -1);
    MEMORY[0x29ED98410](v68, -1, -1);
  }

  (*(v96 + 8))(v65, v97);
  v104 = v98;
  v105 = v99;
  *&aBlock = MEMORY[0x29EDCA5F8];
  *(&aBlock + 1) = 1107296256;
  *&v103 = sub_29E6A1514;
  *(&v103 + 1) = &unk_2A25025F0;
  v73 = _Block_copy(&aBlock);

  [v100 dismissViewControllerAnimated:v15 & 1 completion:v73];
  _Block_release(v73);
}

uint64_t sub_29E6F343C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v56 = a7;
  v57 = a6;
  v11 = sub_29E753CF8();
  v61 = *(v11 - 8);
  v12 = *(v61 + 64);
  MEMORY[0x2A1C7C4A8](v11);
  v60 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E753D18();
  v58 = *(v14 - 8);
  v59 = v14;
  v15 = *(v58 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E752098();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v18);
  v22 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v55 = a2;
    v23 = a3;
    sub_29E752048();
    v24 = a3;
    v25 = sub_29E752088();
    v26 = sub_29E7546A8();

    v54 = v25;
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v53 = a4;
      v28 = v27;
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      aBlock[0] = v51;
      *v28 = 136446466;
      v29 = sub_29E755178();
      v56 = v18;
      v31 = sub_29E6B9C90(v29, v30, aBlock);
      v52 = v19;
      v32 = v11;
      v33 = v31;

      *(v28 + 4) = v33;
      v11 = v32;
      *(v28 + 12) = 2112;
      v34 = a3;
      v35 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v35;
      v36 = v50;
      *v50 = v35;
      v37 = v54;
      _os_log_impl(&dword_29E5ED000, v54, v26, "[%{public}s] Error querying for event sample: %@", v28, 0x16u);
      sub_29E6F5FF8(v36, &qword_2A1A7D0A8, &qword_2A1A7D0B0, 0x29EDC9738, sub_29E609B5C);
      MEMORY[0x29ED98410](v36, -1, -1);
      v38 = v51;
      sub_29E5FECBC(v51);
      MEMORY[0x29ED98410](v38, -1, -1);
      v39 = v28;
      a4 = v53;
      MEMORY[0x29ED98410](v39, -1, -1);

      (*(v52 + 8))(v22, v56);
    }

    else
    {

      (*(v19 + 8))(v22, v18);
    }

    a2 = v55;
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v40 = sub_29E754908();
  v41 = swift_allocObject();
  v41[2] = a2;
  v41[3] = a4;
  v42 = v57;
  v41[4] = a5;
  v41[5] = v42;
  aBlock[4] = sub_29E6F5FEC;
  aBlock[5] = v41;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29E6A1514;
  aBlock[3] = &unk_2A2502780;
  v43 = _Block_copy(aBlock);

  v44 = a4;
  v45 = a5;
  v46 = v42;
  sub_29E753D08();
  v62 = MEMORY[0x29EDCA190];
  sub_29E6F5F98(&qword_2A18569F8, MEMORY[0x29EDCA248]);
  v47 = MEMORY[0x29EDCA248];
  sub_29E6F5D58(0, &unk_2A1858A50, MEMORY[0x29EDCA248], MEMORY[0x29EDC9A40]);
  sub_29E6F5EBC(&qword_2A1856A00, &unk_2A1858A50, v47);
  v48 = v60;
  sub_29E754C58();
  MEMORY[0x29ED97230](0, v17, v48, v43);
  _Block_release(v43);

  (*(v61 + 8))(v48, v11);
  (*(v58 + 8))(v17, v59);
}

unint64_t sub_29E6F39C0(unint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_29E6F5D58(0, &qword_2A1859CB0, MEMORY[0x29EDC2B18], MEMORY[0x29EDC9C68]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = &v22 - v10;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (!a1)
  {
    goto LABEL_13;
  }

  result = sub_29E6EF2B0(a1);
  if (!result)
  {
    goto LABEL_13;
  }

  v13 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_12:

    goto LABEL_13;
  }

  v20 = result;
  v21 = sub_29E754C98();
  result = v20;
  if (!v21)
  {
    goto LABEL_12;
  }

LABEL_7:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x29ED976A0](0);
    goto LABEL_10;
  }

  if (*(v13 + 16))
  {
    v14 = *(result + 32);
LABEL_10:
    v15 = v14;

    sub_29E751A98();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = a3;
    v17 = v15;
    v18 = a3;
    sub_29E751A68();
    v19 = sub_29E751A78();
    (*(*(v19 - 8) + 56))(v11, 0, 1, v19);
    sub_29E751A88();

LABEL_13:
    [a4 showViewController:a2 sender:0];
  }

  __break(1u);
  return result;
}

id sub_29E6F3C24()
{
  v0 = sub_29E7513C8();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E750FA8();
  v4 = objc_allocWithZone(type metadata accessor for SleepScoreRoomViewController());
  return SleepScoreRoomViewController.init(context:)(v3);
}

uint64_t sub_29E6F3CAC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x29EDC1E10];
  v3 = sub_29E750738();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_29E6F3D20(uint64_t a1, char a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E67037C(0xD00000000000001BLL, 0x800000029E75A340, a2 & 1);
}

uint64_t sub_29E6F3DE8(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_29E609B5C(0, &qword_2A1858478, 0x29EDBAD60);
    v5 = sub_29E7543F8();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

void *sub_29E6F3EA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v81 = a6;
  v84 = a2;
  ObjectType = swift_getObjectType();
  sub_29E6F5D58(0, &qword_2A1859098, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v78 = &v73 - v12;
  v13 = sub_29E74ED88();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_29E74EAF8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_29E752098();
  v87 = *(v85 - 8);
  v21 = *(v87 + 64);
  v22 = MEMORY[0x2A1C7C4A8](v85);
  v76 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v22);
  v26 = &v73 - v25;
  v27 = *(*(a5 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v82 = &v73 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = v29;
  (*(v29 + 16))();
  sub_29E752048();
  v30 = *(v17 + 16);
  v86 = a1;
  v30(v20, a1, v16);
  v31 = sub_29E752088();
  v32 = sub_29E7546C8();
  v33 = os_log_type_enabled(v31, v32);
  v75 = ObjectType;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v73 = a4;
    v35 = v34;
    v36 = swift_slowAlloc();
    v88 = v36;
    *v35 = 136446466;
    v37 = sub_29E755178();
    v39 = sub_29E6B9C90(v37, v38, &v88);
    v74 = a5;
    v40 = v39;

    *(v35 + 4) = v40;
    *(v35 + 12) = 2082;
    sub_29E6F5F98(&qword_2A18590A0, MEMORY[0x29EDB9B18]);
    v41 = sub_29E754FD8();
    v43 = v42;
    (*(v17 + 8))(v20, v16);
    v44 = sub_29E6B9C90(v41, v43, &v88);
    a5 = v74;

    *(v35 + 14) = v44;
    _os_log_impl(&dword_29E5ED000, v31, v32, "[%{public}s] Received request to open URL: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v36, -1, -1);
    v45 = v35;
    a4 = v73;
    MEMORY[0x29ED98410](v45, -1, -1);
  }

  else
  {

    (*(v17 + 8))(v20, v16);
  }

  v46 = *(v87 + 8);
  v47 = v85;
  v46(v26, v85);
  v48 = *(sub_29E74EAA8() + 16);

  if (v48 != 3)
  {
    goto LABEL_13;
  }

  result = sub_29E74EAA8();
  if (result[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v51 = result[6];
    v50 = result[7];

    v52 = *MEMORY[0x29EDC6998];
    if (v51 == sub_29E7541D8() && v50 == v53)
    {
    }

    else
    {
      v54 = sub_29E755028();

      if ((v54 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    result = sub_29E74EAA8();
    if (result[2] >= 3uLL)
    {
      v55 = result[8];
      v56 = result[9];

      v57 = v78;
      sub_29E74ED38();
      v58 = v57;

      v60 = v79;
      v59 = v80;
      if ((*(v79 + 48))(v58, 1, v80) != 1)
      {
        (*(v60 + 32))(v77, v58, v59);
        v63 = v76;
        sub_29E752048();
        v64 = sub_29E752088();
        v65 = sub_29E7546C8();
        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v88 = v67;
          *v66 = 136446210;
          v68 = sub_29E755178();
          v70 = sub_29E6B9C90(v68, v69, &v88);

          *(v66 + 4) = v70;
          _os_log_impl(&dword_29E5ED000, v64, v65, "[%{public}s] URL contains sufficient components to open breathing disturbances room", v66, 0xCu);
          sub_29E5FECBC(v67);
          MEMORY[0x29ED98410](v67, -1, -1);
          MEMORY[0x29ED98410](v66, -1, -1);

          v71 = v76;
        }

        else
        {

          v71 = v63;
        }

        v46(v71, v47);
        v72 = v77;
        sub_29E6EF6DC(v77, v84);
        (*(v79 + 8))(v72, v80);
        v62 = v82;
        return (*(v83 + 8))(v62, a5);
      }

      sub_29E6F5F28(v58, &qword_2A1859098, MEMORY[0x29EDB9C08]);
LABEL_13:
      v61 = sub_29E74EA68();
      v62 = v82;
      sub_29E6F4664(v61, v84, v82, a4, a5, v81);

      return (*(v83 + 8))(v62, a5);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6F4664(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v11 = *(a5 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x2A1C7C4A8](a1);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, v15, v16);
  v17 = sub_29E754748();
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = v17;
  v19 = *MEMORY[0x29EDC6820];
  v20 = sub_29E7541D8();
  v22 = v21;
  if (v20 == sub_29E7541D8() && v22 == v23)
  {

    goto LABEL_16;
  }

  v54 = a6;
  v25 = sub_29E755028();

  if (v25)
  {
LABEL_16:
    sub_29E6F5190(a2);
    goto LABEL_33;
  }

  v26 = *MEMORY[0x29EDC6838];
  v27 = sub_29E7541D8();
  v29 = v28;
  if (v27 == sub_29E7541D8() && v29 == v30)
  {
  }

  else
  {
    v32 = sub_29E755028();

    if ((v32 & 1) == 0)
    {
      v33 = *MEMORY[0x29EDC6840];
      v34 = sub_29E7541D8();
      v36 = v35;
      if (v34 == sub_29E7541D8() && v36 == v37)
      {

LABEL_20:
        sub_29E6F030C(a2);
        goto LABEL_33;
      }

      v38 = sub_29E755028();

      if (v38)
      {
        goto LABEL_20;
      }

      v39 = *MEMORY[0x29EDC6868];
      v40 = sub_29E7541D8();
      v42 = v41;
      if (v40 == sub_29E7541D8() && v42 == v43)
      {

LABEL_25:
        v45 = sub_29E750FD8();
        sub_29E6F0720(a1, v45);

        v18 = v45;
        goto LABEL_33;
      }

      v44 = sub_29E755028();

      if (v44)
      {
        goto LABEL_25;
      }

      v46 = *MEMORY[0x29EDC6848];
      v47 = sub_29E7541D8();
      v49 = v48;
      if (v47 == sub_29E7541D8() && v49 == v50)
      {

LABEL_30:
        sub_29E6F5A2C(a2, v14, a5, v54);
        goto LABEL_33;
      }

      v51 = sub_29E755028();

      if (v51)
      {
        goto LABEL_30;
      }

      a6 = v54;
LABEL_32:
      v18 = sub_29E750FD8();
      sub_29E6F4A60(a1, v18, v14, a4, a5, a6);
      goto LABEL_33;
    }
  }

  sub_29E6EFEB4();
LABEL_33:

  return (*(v11 + 8))(v14, a5);
}

uint64_t sub_29E6F4A60(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t a6)
{
  v83 = a1;
  v84 = a2;
  v81 = a4;
  ObjectType = swift_getObjectType();
  v9 = sub_29E752098();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v78 = &ObjectType - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E7513C8();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v74 = &ObjectType - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_29E750738();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v75 = &ObjectType - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29E750748();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = (&ObjectType - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(*(a5 - 1) + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v26 = &ObjectType - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = v27;
  (*(v27 + 16))(v26, a3, a5);
  *v23 = 5;
  v28 = *MEMORY[0x29EDC1E18];
  v29 = v19[13];
  v29(v23, v28, v18);
  v82 = a6;
  v30 = sub_29E750838();
  v31 = v19[1];
  v31(v23, v18);
  if (v30)
  {

    *v23 = 5;
    v29(v23, v28, v18);
    v32 = type metadata accessor for SleepRoomViewController();
    v33 = sub_29E750848();
    v31(v23, v18);
    v34 = a5;
    v35 = v26;
    if (v33)
    {
      v36 = 1;
      v38 = v83;
      v37 = v84;
    }

    else
    {
      v37 = v84;
      v45 = [v84 resolvedHealthToolbox];
      v46 = v74;
      sub_29E6E62F8();
      v38 = v83;
      v86 = v83;
      sub_29E609B5C(0, &qword_2A1857A78, 0x29EDB9410);
      v47 = sub_29E74F918();
      v48 = objc_allocWithZone(v32);
      v33 = sub_29E69F6AC(v45, v46, v47);

      v36 = 0;
    }
  }

  else
  {
    v40 = v75;
    v39 = v76;
    v41 = v77;
    v42 = (*(v76 + 104))(v75, *MEMORY[0x29EDC1E10], v77);
    MEMORY[0x2A1C7C4A8](v42);
    v38 = v83;
    v37 = v84;
    *(&ObjectType - 2) = v84;
    *(&ObjectType - 1) = v38;
    type metadata accessor for SleepRoomViewController();
    v43 = sub_29E750858();
    v33 = v44;
    (*(v39 + 8))(v40, v41);
    v36 = v43 ^ 1;
    v34 = a5;
    v35 = v26;
  }

  v49 = [v33 navigationController];
  if (v49)
  {
    v50 = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = v33;
    *(v51 + 24) = v38;
    *(v51 + 32) = v36 & 1;
    v52 = v81;
    *(v51 + 40) = v81;
    *(v51 + 48) = v37;
    v53 = v33;
    v54 = v38;
    v52;
    v55 = v37;
    sub_29E6F29F0(v54, v50, v53, sub_29E6F5E18, v51);
  }

  else
  {
    v56 = v78;
    sub_29E752058();
    v57 = v33;
    v58 = sub_29E752088();
    v59 = sub_29E7546A8();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v86 = v61;
      *v60 = 136315394;
      v62 = sub_29E755178();
      v84 = v34;
      v63 = v35;
      v65 = sub_29E6B9C90(v62, v64, &v86);

      *(v60 + 4) = v65;
      *(v60 + 12) = 2080;
      v66 = v57;
      v67 = [v66 description];
      v68 = sub_29E7541D8();
      v70 = v69;

      v71 = sub_29E6B9C90(v68, v70, &v86);

      *(v60 + 14) = v71;
      v35 = v63;
      v34 = v84;
      _os_log_impl(&dword_29E5ED000, v58, v59, "[%s]: No navigation controller provided to open sleep room: %s", v60, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v61, -1, -1);
      MEMORY[0x29ED98410](v60, -1, -1);
    }

    else
    {
    }

    (*(v79 + 8))(v56, v80);
  }

  return (*(v85 + 8))(v35, v34);
}

void sub_29E6F5190(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_29E6F5D58(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v68 = &v65 - v4;
  v5 = sub_29E752098();
  v71 = *(v5 - 8);
  v72 = v5;
  v6 = *(v71 + 64);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v65 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v65 - v13;
  v15 = sub_29E7513C8();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v20 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v73 = a1;
  sub_29E750FA8();
  v21 = sub_29E6A1530(v20, v19);
  (*(v16 + 8))(v19, v15);
  v70 = v21;
  if (v21)
  {
    v67 = v20;
    sub_29E752048();
    v22 = sub_29E752088();
    v23 = sub_29E7546C8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v75 = v25;
      *v24 = 136446466;
      v26 = sub_29E755178();
      v28 = sub_29E6B9C90(v26, v27, &v75);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2082;
      *(v24 + 14) = sub_29E6B9C90(0xD000000000000031, 0x800000029E75F640, &v75);
      _os_log_impl(&dword_29E5ED000, v22, v23, "[%{public}s.%{public}s]: Pushing breathing disturbance view", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v24, -1, -1);
    }

    v29 = *(v71 + 8);
    v29(v14, v72);
    v30 = sub_29E750FD8();
    v31 = [v30 navigationController];

    if (v31)
    {
      [v31 pushViewController:v70 animated:0];
    }

    v32 = sub_29E750FC8();
    v33 = objc_allocWithZone(MEMORY[0x29EDC68C8]);
    v34 = sub_29E754198();
    v35 = [v33 initWithIdentifier:v34 healthStore:v32];

    v36 = v35;
    v37 = sub_29E750FC8();
    v38 = [objc_allocWithZone(MEMORY[0x29EDC68B0]) initWithSleepStore:v36 healthDataSource:v37];

    sub_29E752048();
    v39 = sub_29E752088();
    v40 = sub_29E7546C8();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v65 = v29;
      v42 = v41;
      v43 = swift_slowAlloc();
      v66 = v38;
      v44 = v43;
      v75 = v43;
      *v42 = 136446466;
      v45 = sub_29E755178();
      v47 = sub_29E6B9C90(v45, v46, &v75);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2082;
      *(v42 + 14) = sub_29E6B9C90(0xD000000000000031, 0x800000029E75F640, &v75);
      _os_log_impl(&dword_29E5ED000, v39, v40, "[%{public}s.%{public}s] Presenting sleep apnea notifications onboarding", v42, 0x16u);
      swift_arrayDestroy();
      v48 = v44;
      v38 = v66;
      MEMORY[0x29ED98410](v48, -1, -1);
      MEMORY[0x29ED98410](v42, -1, -1);

      v65(v12, v72);
    }

    else
    {

      v29(v12, v72);
    }

    v56 = v67;
    v57 = sub_29E74FFA8();
    v58 = v68;
    (*(*(v57 - 8) + 56))(v68, 1, 1, v57);
    v59 = v38;
    v60 = sub_29E750FC8();
    v61 = type metadata accessor for SleepApneaOnboardingNavigationController();
    v62 = objc_allocWithZone(v61);
    *&v62[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController____lazy_storage___coordinator] = 0;
    sub_29E6F5CC4(v58, &v62[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_countryRecord]);
    *&v62[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthDataSource] = v59;
    *&v62[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_healthStore] = v60;
    v62[OBJC_IVAR____TtC20SleepHealthAppPlugin40SleepApneaOnboardingNavigationController_analyticsContextType] = 5;
    v74.receiver = v62;
    v74.super_class = v61;
    v63 = objc_msgSendSuper2(&v74, sel_initWithNibName_bundle_, 0, 0);
    sub_29E6F5F28(v58, &qword_2A1A7CF50, MEMORY[0x29EDC3A58]);
    sub_29E718D68();
    sub_29E7195BC();

    [v63 setModalPresentationStyle_];
    v64 = v70;
    [v70 presentViewController:v63 animated:1 completion:0];
  }

  else
  {
    sub_29E752048();
    v49 = sub_29E752088();
    v50 = sub_29E7546A8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v75 = v52;
      *v51 = 136446466;
      v53 = sub_29E755178();
      v55 = sub_29E6B9C90(v53, v54, &v75);

      *(v51 + 4) = v55;
      *(v51 + 12) = 2082;
      *(v51 + 14) = sub_29E6B9C90(0xD000000000000031, 0x800000029E75F640, &v75);
      _os_log_impl(&dword_29E5ED000, v49, v50, "[%{public}s.%{public}s]: No data type detail view controller found", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v52, -1, -1);
      MEMORY[0x29ED98410](v51, -1, -1);
    }

    else
    {
    }

    (*(v71 + 8))(v9, v72);
  }
}

void sub_29E6F5A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_29E750738();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v24[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a3;
  v26 = a4;
  v13 = sub_29E5FEBF4(v24);
  (*(*(a3 - 8) + 16))(v13, a2, a3);
  v14 = [objc_opt_self() sharedBehavior];
  if (!v14)
  {
    __break(1u);
    goto LABEL_9;
  }

  v15 = v14;
  v16 = [v14 features];

  if (!v16)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v17 = [v16 sleepDetails];

  if (v17)
  {
    v18 = sub_29E601938(v24, v25);
    MEMORY[0x2A1C7C4A8](v18);
    *(&v23 - 2) = a1;
    type metadata accessor for SleepScoreRoomViewController();
    (*(v9 + 104))(v12, *MEMORY[0x29EDC1E10], v8);
    sub_29E750858();
    v20 = v19;
    (*(v9 + 8))(v12, v8);
    v21 = sub_29E750FD8();
    v22 = [v21 navigationController];

    if (v22)
    {
    }

    sub_29E6B93B4();
  }

  sub_29E5FECBC(v24);
}

uint64_t sub_29E6F5CC4(uint64_t a1, uint64_t a2)
{
  sub_29E6F5D58(0, &qword_2A1A7CF50, MEMORY[0x29EDC3A58], MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E6F5D58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6F5DBC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_29E754BD8();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6F5E18()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  sub_29E69B970(v2, *(v0 + 32));
  sub_29E6F10A0(v2, v4, v1);
}

uint64_t sub_29E6F5E70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_29E6F5E88(id result)
{
  if (result)
  {
    return [result restoreUserActivityState_];
  }

  return result;
}

uint64_t sub_29E6F5EBC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E6F5D58(255, a2, a3, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6F5F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6F5D58(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E6F5F98(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_29E6F5FF8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_29E6F5DBC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_29E6F6090(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6F6128()
{
  type metadata accessor for SleepApneaEventSummaryViewModel();
  if (v0 <= 0x3F)
  {
    sub_29E6F6090(319, &qword_2A1856AE8, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC390]);
    if (v1 <= 0x3F)
    {
      sub_29E6F6090(319, qword_2A1A7D0D0, MEMORY[0x29EDBC518], MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E6F6240(uint64_t a1)
{
  sub_29E6F7B18();
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  v14[-2] = a1;
  sub_29E753388();
  sub_29E6FE8A4(0, &qword_2A1859E78, sub_29E6F7BA0);
  sub_29E6F7D58();
  v9 = sub_29E752A08();
  MEMORY[0x2A1C7C4A8](v9);
  v14[-2] = a1;
  sub_29E6F7E2C();
  sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18);
  sub_29E6F7EE0();
  v11 = v10;
  v12 = sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0);
  v14[0] = v11;
  v14[1] = v12;
  swift_getOpaqueTypeConformance2();
  sub_29E753898();
  (*(v4 + 8))(v7, v3);
}

double sub_29E6F6520@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_29E752FE8();
  *(a2 + 8) = 0x403A000000000000;
  *(a2 + 16) = 0;
  sub_29E6FE7D8(0, &qword_2A1859EF0, sub_29E6F7C34);
  sub_29E6F6654(a1, (a2 + *(v4 + 44)));
  v5 = sub_29E7533A8();

  sub_29E6FE8A4(0, &qword_2A1859E78, sub_29E6F7BA0);
  v7 = a2 + *(v6 + 36);
  *v7 = v5;
  *(v7 + 8) = xmmword_29E76B2C0;
  result = 34.0;
  *(v7 + 24) = xmmword_29E76B2D0;
  *(v7 + 40) = 0;
  return result;
}

uint64_t sub_29E6F6654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v41 = a2;
  v40 = type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid(0);
  v3 = *(*(v40 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v40);
  v35 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A1859EF8, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid, MEMORY[0x29EDBC7E8]);
  v37 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v34 - v7;
  v39 = type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid(0);
  v9 = *(*(v39 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v39);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752BF8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6F7CD0(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v23 = &v34 - v22;
  sub_29E7544C8();
  v38 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6FD108();
  v24 = *(type metadata accessor for SleepApneaEventSummaryViewModel() + 20);
  v36 = sub_29E754A08();
  v26 = v25;
  v27 = a1 + *(type metadata accessor for SleepApneaEventSummaryView(0) + 24);
  sub_29E658B34(v16);
  LOBYTE(v27) = sub_29E752BD8();
  (*(v13 + 8))(v16, v12);
  if (v27)
  {
    sub_29E6FD154(a1, v11, type metadata accessor for SleepApneaEventSummaryViewModel);
    sub_29E6FD154(v11, v8, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid);
    swift_storeEnumTagMultiPayload();
    sub_29E6FFF1C(&qword_2A1859F00, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid);
    sub_29E6FFF1C(&qword_2A1859F08, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid);
    sub_29E753118();
    v28 = type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid;
    v29 = v11;
  }

  else
  {
    v30 = v35;
    sub_29E6FD154(a1, v35, type metadata accessor for SleepApneaEventSummaryViewModel);
    sub_29E6FD154(v30, v8, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid);
    swift_storeEnumTagMultiPayload();
    sub_29E6FFF1C(&qword_2A1859F00, type metadata accessor for SleepApneaSummaryTextAndActionVerticalGrid);
    sub_29E6FFF1C(&qword_2A1859F08, type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid);
    sub_29E753118();
    v28 = type metadata accessor for SleepApneaSummaryTextAndActionHorizontalGrid;
    v29 = v30;
  }

  sub_29E6FF064(v29, v28);
  sub_29E6FD154(v23, v21, sub_29E6F7CD0);
  v31 = v41;
  *v41 = v36;
  v31[1] = v26;
  sub_29E6F7C68();
  sub_29E6FD154(v21, v31 + *(v32 + 48), sub_29E6F7CD0);

  sub_29E6FF064(v23, sub_29E6F7CD0);
  sub_29E6FF064(v21, sub_29E6F7CD0);
}

uint64_t sub_29E6F6BE0(uint64_t a1)
{
  v2 = sub_29E753178();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E6F7EE0();
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_29E753168();
  MEMORY[0x2A1C7C4A8](v10);
  *(&v13 - 2) = a1;
  sub_29E6F7F88(0, &qword_2A1859EC8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC0A8]);
  sub_29E6F8014();
  sub_29E752A68();
  v11 = sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0);
  MEMORY[0x29ED95AD0](v9, v5, v11);
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_29E6F6E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v32 = a2;
  v31 = sub_29E74F698();
  v2 = *(v31 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SleepApneaEventSummaryView(0);
  v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = sub_29E74F8B8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF708(0, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v29 = *(v13 - 8);
  v30 = v13;
  v14 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v25 - v15;
  sub_29E7544C8();
  v27 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v17 = sub_29E74F7C8();
  v19 = v18;
  (*(v9 + 8))(v12, v8);
  v33 = v17;
  v34 = v19;
  sub_29E6FD154(v28, &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepApneaEventSummaryView);
  v20 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v21 = swift_allocObject();
  sub_29E6FE83C(&v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SleepApneaEventSummaryView);
  sub_29E60DE10();
  sub_29E753A48();
  v22 = v31;
  (*(v2 + 104))(v5, *MEMORY[0x29EDC6AB8], v31);
  sub_29E754238();
  (*(v2 + 8))(v5, v22);
  sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, MEMORY[0x29EDBC270]);
  v23 = v30;
  sub_29E753848();

  (*(v29 + 8))(v16, v23);
}

uint64_t sub_29E6F730C(uint64_t a1)
{
  v2 = sub_29E752AD8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = a1 + *(type metadata accessor for SleepApneaEventSummaryView(0) + 20);
  sub_29E658B00(v6);
  sub_29E752AC8();
  (*(v3 + 8))(v6, v2);
}

uint64_t sub_29E6F745C(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v3 = *(a1 + *(v2 + 28));
  type metadata accessor for BreathingDisturbancesRoomInteractionAnalyticsEvent();
  v4 = swift_allocObject();
  *(v4 + 16) = 2;
  *(v4 + 17) = v3;
  v5 = *(a1 + *(v2 + 32));
  v8[4] = sub_29E6DE8B4;
  v8[5] = 0;
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 1107296256;
  v8[2] = sub_29E5FE860;
  v8[3] = &unk_2A25027F8;
  v6 = _Block_copy(v8);

  [v5 submitEvent:v4 completion:v6];
  _Block_release(v6);
}

uint64_t sub_29E6F7564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = *(a1 - 8);
  v24 = v2;
  v25 = v3;
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8);
  sub_29E6F7888();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = v2;
  sub_29E6F79DC();
  sub_29E6F7B18();
  v12 = v11;
  sub_29E6F7E2C();
  v14 = v13;
  v15 = sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18);
  sub_29E6F7EE0();
  v17 = v16;
  v18 = sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0);
  v28 = v17;
  v29 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = v12;
  v29 = v14;
  v30 = v15;
  v31 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_29E752B88();
  sub_29E6FD154(v24, &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepApneaEventSummaryView);
  v20 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v21 = swift_allocObject();
  sub_29E6FE83C(&v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v21 + v20, type metadata accessor for SleepApneaEventSummaryView);
  sub_29E6FFF1C(&qword_2A1859EE8, sub_29E6F7888);
  sub_29E753618();

  return (*(v7 + 8))(v10, v6);
}

void sub_29E6F7888()
{
  if (!qword_2A1859E60)
  {
    sub_29E6F79DC();
    sub_29E6F7B18();
    sub_29E6F7E2C();
    sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18);
    sub_29E6F7EE0();
    sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v0 = sub_29E752B98();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859E60);
    }
  }
}

void sub_29E6F79DC()
{
  if (!qword_2A1859E68)
  {
    sub_29E6F7B18();
    sub_29E6F7E2C();
    sub_29E6FFF1C(&qword_2A1859EE0, sub_29E6F7B18);
    sub_29E6F7EE0();
    sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859E68);
    }
  }
}

void sub_29E6F7B18()
{
  if (!qword_2A1859E70)
  {
    sub_29E6FE8A4(255, &qword_2A1859E78, sub_29E6F7BA0);
    sub_29E6F7D58();
    v0 = sub_29E7529F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859E70);
    }
  }
}

void sub_29E6F7BA0()
{
  if (!qword_2A1859E80)
  {
    sub_29E6F7C34(255);
    sub_29E6FFF1C(&qword_2A1859EA0, sub_29E6F7C34);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859E80);
    }
  }
}

void sub_29E6F7C68()
{
  if (!qword_2A1859E90)
  {
    sub_29E6F7CD0(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1859E90);
    }
  }
}

unint64_t sub_29E6F7D58()
{
  result = qword_2A1859EA8;
  if (!qword_2A1859EA8)
  {
    sub_29E6FE8A4(255, &qword_2A1859E78, sub_29E6F7BA0);
    sub_29E6FFF1C(&qword_2A1859EB0, sub_29E6F7BA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859EA8);
  }

  return result;
}

void sub_29E6F7E2C()
{
  if (!qword_2A1859EB8)
  {
    sub_29E6F7EE0();
    sub_29E6FFF1C(&qword_2A1859ED8, sub_29E6F7EE0);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1859EB8);
    }
  }
}

void sub_29E6F7EE0()
{
  if (!qword_2A1859EC0)
  {
    sub_29E6F7F88(255, &qword_2A1859EC8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC0A8]);
    sub_29E6F8014();
    v0 = sub_29E752A78();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859EC0);
    }
  }
}

void sub_29E6F7F88(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(void, uint64_t, uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6FF708(255, a3, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], a4);
    a5(255);
    v7 = sub_29E752C28();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_29E6F8014()
{
  result = qword_2A1859ED0;
  if (!qword_2A1859ED0)
  {
    v1 = MEMORY[0x29EDBC270];
    sub_29E6F7F88(255, &qword_2A1859EC8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC0A8]);
    sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v1);
    sub_29E6FFF1C(&qword_2A1857F58, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859ED0);
  }

  return result;
}

uint64_t sub_29E6F8164(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_29E6F8194()
{
  v1 = type metadata accessor for SleepApneaEventSummaryView(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = v0 + v3;
  v6 = sub_29E74ED28();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v7(v0 + v3 + v8[5], v6);

  v9 = *(v1 + 20);
  sub_29E6F6090(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_29E752AD8();
    (*(*(v10 - 8) + 8))(v5 + v9, v10);
  }

  else
  {
    v11 = *(v5 + v9);
  }

  v12 = *(v1 + 24);
  sub_29E6F6090(0, &qword_2A1A7BF00, MEMORY[0x29EDBC518], MEMORY[0x29EDBC388]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29E752BF8();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E6F8418(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

uint64_t sub_29E6F8494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E6FD480();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v20 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v20 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v20 - v16;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v17 = sub_29E752ED8();
  v17[8] = 0;
  sub_29E6F89E4(a1, 50, MEMORY[0x29EDC6BB8], sub_29E6F8704, &v17[*(v5 + 36)]);
  *v15 = sub_29E752ED8();
  v15[8] = 0;
  sub_29E6F89E4(a1, 54, MEMORY[0x29EDC6BB0], sub_29E6F8CB0, &v15[*(v5 + 36)]);
  sub_29E6FD154(v17, v12, sub_29E6FD480);
  sub_29E6FD154(v15, v9, sub_29E6FD480);
  sub_29E6FD154(v12, a2, sub_29E6FD480);
  sub_29E6FD41C();
  sub_29E6FD154(v9, a2 + *(v18 + 48), sub_29E6FD480);
  sub_29E6FF064(v15, sub_29E6FD480);
  sub_29E6FF064(v17, sub_29E6FD480);
  sub_29E6FF064(v9, sub_29E6FD480);
  sub_29E6FF064(v12, sub_29E6FD480);
}

uint64_t sub_29E6F8704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v29 = a1;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF494(0, &qword_2A1859F48, &type metadata for SleepApneaSummaryDescriptionString, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E764170;
  v27 = 0x800000029E75F7D0;
  v8 = *MEMORY[0x29EDC6AB8];
  v9 = v3[13];
  v9(v6, v8, v2);
  v10 = sub_29E754238();
  v12 = v11;
  v13 = v3[1];
  v13(v6, v2);
  v14 = v27;
  *(v7 + 32) = 0xD000000000000028;
  *(v7 + 40) = v14;
  *(v7 + 48) = v10;
  *(v7 + 56) = v12;
  v27 = 0x800000029E75F800;
  v9(v6, v8, v2);
  v15 = sub_29E754238();
  v17 = v16;
  v13(v6, v2);
  *(v7 + 64) = 0xD000000000000030;
  *(v7 + 72) = v27;
  *(v7 + 80) = v15;
  *(v7 + 88) = v17;
  v9(v6, v8, v2);
  v18 = sub_29E754238();
  v20 = v19;
  v13(v6, v2);
  *(v7 + 96) = 0xD000000000000030;
  *(v7 + 104) = 0x800000029E75F840;
  *(v7 + 112) = v18;
  *(v7 + 120) = v20;
  v21 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v22 = *(v21 + 20);
  v23 = v28;
  sub_29E6FD154(v29, v28 + v22, type metadata accessor for SleepApneaEventSummaryViewModel);
  v24 = type metadata accessor for SleepApneaEventSummaryViewModel();
  result = (*(*(v24 - 8) + 56))(v23 + v22, 0, 1, v24);
  *v23 = v7;
  *(v23 + *(v21 + 24)) = 0;
  return result;
}

uint64_t sub_29E6F89E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int *a3@<X2>, void (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v26 = a2;
  v27 = a4;
  v8 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v26 - v13;
  v15 = type metadata accessor for SymbolView(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v26 - v20;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v22 = *a3;
  v23 = sub_29E74FA88();
  (*(*(v23 - 8) + 104))(v21, v22, v23);
  v27(a1);
  sub_29E6FD154(v21, v19, type metadata accessor for SymbolView);
  sub_29E6FD154(v14, v12, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FD154(v19, a5, type metadata accessor for SymbolView);
  sub_29E6FE2B4(0, &qword_2A1859F78, type metadata accessor for SymbolView, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FD154(v12, a5 + *(v24 + 48), type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v14, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v21, type metadata accessor for SymbolView);
  sub_29E6FF064(v12, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v19, type metadata accessor for SymbolView);
}

uint64_t sub_29E6F8CB0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v24 = a2;
  v25 = a1;
  v2 = sub_29E74F698();
  v3 = *(v2 - 8);
  v4 = v3[8];
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF494(0, &qword_2A1859F48, &type metadata for SleepApneaSummaryDescriptionString, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E762F40;
  v23 = 0x800000029E75F770;
  v8 = *MEMORY[0x29EDC6AB8];
  v9 = v3[13];
  v9(v6, v8, v2);
  v10 = sub_29E754238();
  v12 = v11;
  v13 = v3[1];
  v13(v6, v2);
  *(v7 + 32) = 0xD000000000000026;
  *(v7 + 40) = v23;
  *(v7 + 48) = v10;
  *(v7 + 56) = v12;
  v9(v6, v8, v2);
  v14 = sub_29E754238();
  v16 = v15;
  v13(v6, v2);
  *(v7 + 64) = 0xD00000000000002CLL;
  *(v7 + 72) = 0x800000029E75F7A0;
  *(v7 + 80) = v14;
  *(v7 + 88) = v16;
  v17 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v18 = *(v17 + 20);
  v19 = v24;
  sub_29E6FD154(v25, v24 + v18, type metadata accessor for SleepApneaEventSummaryViewModel);
  v20 = type metadata accessor for SleepApneaEventSummaryViewModel();
  result = (*(*(v20 - 8) + 56))(v19 + v18, 0, 1, v20);
  *v19 = v7;
  *(v19 + *(v17 + 24)) = 1;
  return result;
}

uint64_t sub_29E6F8F28@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E753C48();
  *(a1 + 8) = v3;
  *(a1 + 16) = 0x4014000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0x403A000000000000;
  *(a1 + 40) = 0;
  sub_29E6FD37C();
  return sub_29E6F8494(v1, a1 + *(v4 + 44));
}

uint64_t sub_29E6F8F80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a1;
  v3 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v49 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v47 = &v40 - v8;
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v46 = (&v40 - v10);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v40 - v11);
  v13 = type metadata accessor for SymbolView(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x2A1C7C4A8](v13 - 8);
  v44 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v40 - v18;
  v20 = MEMORY[0x2A1C7C4A8](v17);
  v22 = &v40 - v21;
  MEMORY[0x2A1C7C4A8](v20);
  v24 = &v40 - v23;
  sub_29E7544C8();
  v48 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = *MEMORY[0x29EDC6BB8];
  v26 = sub_29E74FA88();
  v27 = *(*(v26 - 8) + 104);
  v43 = v24;
  v27(v24, v25, v26);
  v41 = v12;
  v28 = v45;
  sub_29E6F8704(v45, v12);
  v27(v22, *MEMORY[0x29EDC6BB0], v26);
  v29 = v46;
  sub_29E6F8CB0(v28, v46);
  v30 = v19;
  v42 = v19;
  sub_29E6FD154(v24, v19, type metadata accessor for SymbolView);
  v31 = v47;
  sub_29E6FD154(v12, v47, type metadata accessor for SleepApneaSummaryTextAndAction);
  v32 = v44;
  sub_29E6FD154(v22, v44, type metadata accessor for SymbolView);
  v33 = v49;
  sub_29E6FD154(v29, v49, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FD154(v30, a2, type metadata accessor for SymbolView);
  sub_29E6FD2A4();
  v35 = v34;
  v36 = a2 + v34[12];
  *v36 = 0x4014000000000000;
  *(v36 + 8) = 0;
  sub_29E6FD154(v31, a2 + v34[16], type metadata accessor for SleepApneaSummaryTextAndAction);
  v37 = a2 + v35[20];
  *v37 = 0x403A000000000000;
  *(v37 + 8) = 0;
  sub_29E6FD154(v32, a2 + v35[24], type metadata accessor for SymbolView);
  v38 = a2 + v35[28];
  *v38 = 0x4014000000000000;
  *(v38 + 8) = 0;
  sub_29E6FD154(v33, a2 + v35[32], type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v29, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v22, type metadata accessor for SymbolView);
  sub_29E6FF064(v41, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v43, type metadata accessor for SymbolView);
  sub_29E6FF064(v33, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v32, type metadata accessor for SymbolView);
  sub_29E6FF064(v31, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF064(v42, type metadata accessor for SymbolView);
}

uint64_t sub_29E6F93C0@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_29E752FF8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E6FE7D8(0, &qword_2A1859F30, sub_29E6FD270);
  return sub_29E6F8F80(v1, a1 + *(v3 + 44));
}

uint64_t sub_29E6F9424@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29E6FD6A4();
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x2A1C7C4A8](v6 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v22 - v11;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v13 = qword_2A1A7FA18;
  v14 = sub_29E7539E8();
  *v12 = sub_29E752FE8();
  *(v12 + 1) = 0x402E000000000000;
  v12[16] = 0;
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6FDB38();
  v16 = &v12[*(v15 + 44)];
  sub_29E6F9714(a1, a2, v16);
  v17 = [objc_opt_self() labelColor];
  v18 = sub_29E7538E8();

  sub_29E6FD740(0, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
  *(v16 + *(v19 + 36)) = v18;
  sub_29E6FD154(v12, v10, sub_29E6FD6A4);
  *a3 = v14;
  *(a3 + 8) = 0x4034000000000000;
  *(a3 + 16) = 0;
  sub_29E6FD634();
  sub_29E6FD154(v10, a3 + *(v20 + 64), sub_29E6FD6A4);

  sub_29E6FF064(v12, sub_29E6FD6A4);
  sub_29E6FF064(v10, sub_29E6FD6A4);
}

uint64_t sub_29E6F9714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v108 = a2;
  v107 = a1;
  v114 = a3;
  sub_29E64D80C();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v115 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v113 = &v99 - v7;
  v8 = sub_29E74F698();
  v9 = *(v8 - 8);
  v123 = v8;
  v124 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v109 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74F8B8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FD8B0(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x2A1C7C4A8](v17 - 8);
  v112 = &v99 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v111 = &v99 - v22;
  v23 = MEMORY[0x2A1C7C4A8](v21);
  v122 = &v99 - v24;
  MEMORY[0x2A1C7C4A8](v23);
  v121 = &v99 - v25;
  sub_29E7544C8();
  v110 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v106 = qword_2A1A7FA18;
  v100 = v16;
  sub_29E74F8A8();
  v26 = sub_29E74F7C8();
  v28 = v27;
  v29 = *(v13 + 8);
  v103 = v13 + 8;
  v105 = v29;
  v29(v16, v12);
  v125 = v26;
  v126 = v28;
  v120 = sub_29E60DE10();
  v30 = sub_29E753608();
  v32 = v31;
  v104 = v12;
  v34 = v33;
  sub_29E753408();
  v35 = sub_29E7535D8();
  v37 = v36;
  v39 = v38;

  sub_29E60DB44(v30, v32, v34 & 1);

  v40 = sub_29E7535C8();
  v42 = v41;
  LOBYTE(v30) = v43;
  v45 = v44;
  v99 = v44;
  sub_29E60DB44(v35, v37, v39 & 1);

  KeyPath = swift_getKeyPath();
  v125 = v40;
  v126 = v42;
  v47 = v30 & 1;
  v127 = v30 & 1;
  v128 = v45;
  v129 = KeyPath;
  v130 = 1;
  v119 = *MEMORY[0x29EDC6AB8];
  v48 = v123;
  v49 = v124;
  v50 = *(v124 + 104);
  v117 = v124 + 104;
  v118 = v50;
  v51 = v109;
  v50(v109);
  sub_29E754238();
  v52 = v100;
  v53 = *(v49 + 8);
  v124 = v49 + 8;
  v116 = v53;
  v53(v51, v48);
  sub_29E6FD8F8();
  v102 = v54;
  v101 = sub_29E6FDBDC();
  sub_29E753848();

  sub_29E60DB44(v40, v42, v47);

  sub_29E74F8A8();
  v55 = sub_29E74F7C8();
  v57 = v56;
  v105(v52, v104);
  v125 = v55;
  v126 = v57;
  v58 = sub_29E753608();
  v60 = v59;
  v62 = v61;
  sub_29E753428();
  v63 = sub_29E7535D8();
  v65 = v64;
  v67 = v66;
  v69 = v68;

  sub_29E60DB44(v58, v60, v62 & 1);

  v70 = swift_getKeyPath();
  v125 = v63;
  v126 = v65;
  v71 = v67 & 1;
  v127 = v67 & 1;
  v128 = v69;
  v129 = v70;
  v130 = 1;
  v72 = v51;
  v73 = v123;
  v118(v51, v119, v123);
  sub_29E754238();
  v116(v51, v73);
  sub_29E753848();

  sub_29E60DB44(v63, v65, v71);

  v125 = v107;
  v126 = v108;

  v74 = sub_29E753608();
  v76 = v75;
  LOBYTE(v63) = v77;
  sub_29E753428();
  v78 = sub_29E7535D8();
  v80 = v79;
  LOBYTE(v51) = v81;

  sub_29E60DB44(v74, v76, v63 & 1);

  v82 = sub_29E7535C8();
  v84 = v83;
  LOBYTE(v76) = v85;
  v87 = v86;
  sub_29E60DB44(v78, v80, v51 & 1);

  v125 = v82;
  v126 = v84;
  LOBYTE(v60) = v76 & 1;
  v127 = v76 & 1;
  v128 = v87;
  v88 = v123;
  v118(v72, v119, v123);
  sub_29E754238();
  v116(v72, v88);
  v89 = v113;
  sub_29E753848();

  sub_29E60DB44(v82, v84, v60);

  v90 = v121;
  v91 = v111;
  sub_29E6FD154(v121, v111, sub_29E6FD8B0);
  v92 = v122;
  v93 = v112;
  sub_29E6FD154(v122, v112, sub_29E6FD8B0);
  v94 = v115;
  sub_29E6FD154(v89, v115, sub_29E64D80C);
  v95 = v114;
  sub_29E6FD154(v91, v114, sub_29E6FD8B0);
  sub_29E6FD83C();
  v97 = v96;
  sub_29E6FD154(v93, v95 + *(v96 + 48), sub_29E6FD8B0);
  sub_29E6FD154(v94, v95 + *(v97 + 64), sub_29E64D80C);
  sub_29E6FF064(v89, sub_29E64D80C);
  sub_29E6FF064(v92, sub_29E6FD8B0);
  sub_29E6FF064(v90, sub_29E6FD8B0);
  sub_29E6FF064(v94, sub_29E64D80C);
  sub_29E6FF064(v93, sub_29E6FD8B0);
  sub_29E6FF064(v91, sub_29E6FD8B0);
}

uint64_t sub_29E6FA0F0@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  *a1 = sub_29E752FE8();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_29E6FE7D8(0, &qword_2A1859F90, sub_29E6FD600);
  return sub_29E6F9424(v4, v3, a1 + *(v5 + 44));
}

uint64_t sub_29E6FA164()
{
  sub_29E74FA58();
  sub_29E753918();
  sub_29E753428();
  swift_getKeyPath();
  sub_29E753478();
  sub_29E6FF7F4(0, &qword_2A185A190, sub_29E6FF144, sub_29E6FE75C, MEMORY[0x29EDBC558]);
  sub_29E6FF1D0();
  sub_29E753718();
}

__n128 sub_29E6FA26C@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E6FE1E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = sub_29E752FF8();
  *(v7 + 1) = 0;
  v7[16] = 1;
  sub_29E6FE7D8(0, &qword_2A185A120, sub_29E6FE278);
  sub_29E6FA3E4(v2, &v7[*(v8 + 44)]);
  sub_29E753C58();
  sub_29E752CA8();
  sub_29E6FE83C(v7, a1, sub_29E6FE1E4);
  sub_29E6FE8A4(0, &qword_2A185A128, sub_29E6FE1E4);
  v10 = a1 + *(v9 + 36);
  v11 = v14[5];
  *(v10 + 64) = v14[4];
  *(v10 + 80) = v11;
  *(v10 + 96) = v14[6];
  v12 = v14[1];
  *v10 = v14[0];
  *(v10 + 16) = v12;
  result = v14[3];
  *(v10 + 32) = v14[2];
  *(v10 + 48) = result;
  return result;
}

uint64_t sub_29E6FA3E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v142 = a2;
  sub_29E6FE690();
  v115 = v3;
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v116 = &v109 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDBC0A8];
  v7 = MEMORY[0x29EDBC558];
  sub_29E6FF7F4(0, &qword_2A185A0F8, sub_29E6FE690, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  v131 = *(v8 - 8);
  v132 = v8;
  v9 = *(v131 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v114 = &v109 - v10;
  v123 = sub_29E74F8B8();
  v122 = *(v123 - 8);
  v11 = *(v122 + 64);
  MEMORY[0x2A1C7C4A8](v123);
  v121 = &v109 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FE908(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v120 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_29E74EAF8();
  v126 = *(v129 - 8);
  v16 = *(v126 + 64);
  v17 = MEMORY[0x2A1C7C4A8](v129);
  v113 = &v109 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v124 = &v109 - v19;
  sub_29E6FE668(0);
  v141 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v20);
  v130 = &v109 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A185A130, sub_29E6FE59C, sub_29E6FE668, MEMORY[0x29EDBC7E8]);
  v138 = v23;
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v140 = &v109 - v25;
  v26 = sub_29E74F698();
  v127 = *(v26 - 8);
  v128 = v26;
  v27 = *(v127 + 64);
  MEMORY[0x2A1C7C4A8](v26);
  v125 = &v109 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for SleepApneaSummaryShareButtonView(0);
  v29 = *(*(v111 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v111);
  v112 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A185A0E8, type metadata accessor for SleepApneaSummaryShareButtonView, v6, v7);
  v119 = v31;
  v118 = *(v31 - 8);
  v32 = *(v118 + 64);
  MEMORY[0x2A1C7C4A8](v31);
  v110 = &v109 - v33;
  sub_29E6FDCFC(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v34 - 8);
  v37 = &v109 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  MEMORY[0x2A1C7C4A8](v38);
  v109 = &v109 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FE59C(0);
  v134 = v42;
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v42);
  v117 = &v109 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FE554(0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x2A1C7C4A8](v45 - 8);
  v139 = &v109 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v47);
  v143 = &v109 - v49;
  v50 = type metadata accessor for SleepApneaSummaryTextAndAction(0);
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x2A1C7C4A8](v50);
  sub_29E6FE330();
  v136 = *(v53 - 8);
  v137 = v53;
  v54 = *(v136 + 64);
  v55 = MEMORY[0x2A1C7C4A8](v53);
  v135 = &v109 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v55);
  v144 = &v109 - v57;
  sub_29E7544C8();
  v133 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v58 = *(*a1 + 16);
  v146 = 0;
  v147 = v58;
  swift_getKeyPath();
  sub_29E6FD154(a1, &v109 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepApneaSummaryTextAndAction);
  v59 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v60 = swift_allocObject();
  sub_29E6FE83C(&v109 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0), v60 + v59, type metadata accessor for SleepApneaSummaryTextAndAction);
  sub_29E6FF708(0, &qword_2A1859818, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
  sub_29E6FF000(0, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
  sub_29E6FE4A8();
  sub_29E6FE9BC();
  sub_29E753B38();
  if (*(a1 + *(v50 + 24)))
  {
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    v61 = v121;
    sub_29E74F8A8();
    sub_29E74F7C8();
    v62 = *(v122 + 8);
    v63 = v123;
    v62(v61, v123);
    v64 = v120;
    sub_29E74EAE8();

    v65 = v126;
    v66 = v129;
    v67 = (*(v126 + 48))(v64, 1, v129);
    v68 = v143;
    if (v67 == 1)
    {
      sub_29E6FF064(v64, sub_29E6FE908);
      v69 = 1;
      v70 = v130;
    }

    else
    {
      v72 = v124;
      (*(v65 + 32))();
      sub_29E74F8A8();
      v73 = sub_29E74F7C8();
      v75 = v74;
      v62(v61, v63);
      v146 = v73;
      v147 = v75;
      v76 = v72;
      v68 = v143;
      (*(v65 + 16))(v113, v76, v66);
      sub_29E60DE10();
      v77 = v66;
      v78 = v116;
      sub_29E753558();
      v79 = sub_29E753428();
      KeyPath = swift_getKeyPath();
      sub_29E6F7F88(0, &qword_2A185A108, &qword_2A185A110, MEMORY[0x29EDBC0E0], sub_29E6FE75C);
      v82 = (v78 + *(v81 + 36));
      *v82 = KeyPath;
      v82[1] = v79;
      *(v78 + *(v115 + 36)) = sub_29E753918();
      v84 = v127;
      v83 = v128;
      v85 = v125;
      (*(v127 + 104))(v125, *MEMORY[0x29EDC6AB8], v128);
      sub_29E754238();
      (*(v84 + 8))(v85, v83);
      sub_29E6FED08();
      v86 = v114;
      sub_29E753848();

      sub_29E6FF064(v78, sub_29E6FE690);
      (*(v65 + 8))(v124, v77);
      v70 = v130;
      sub_29E6FEF34(v86, v130, &qword_2A185A0F8, sub_29E6FE690);
      v69 = 0;
    }

    (*(v131 + 56))(v70, v69, 1, v132);
    sub_29E6FD154(v70, v140, sub_29E6FE668);
    swift_storeEnumTagMultiPayload();
    sub_29E6FEBA4(&qword_2A185A148, sub_29E6FE59C, sub_29E6FEA80);
    sub_29E6FEBA4(&qword_2A185A160, sub_29E6FE668, sub_29E6FEC14);
    sub_29E753118();
    v87 = sub_29E6FE668;
  }

  else
  {
    sub_29E6FD154(a1 + *(v50 + 20), v37, sub_29E6FDCFC);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_29E6FF064(v37, sub_29E6FDCFC);
      v71 = 1;
      v68 = v143;
      v70 = v117;
    }

    else
    {
      v88 = v109;
      sub_29E6FE83C(v37, v109, type metadata accessor for SleepApneaEventSummaryViewModel);
      v89 = v112;
      sub_29E6FD154(v88, v112, type metadata accessor for SleepApneaEventSummaryViewModel);
      v90 = swift_getKeyPath();
      v91 = v111;
      *(v89 + *(v111 + 24)) = v90;
      sub_29E6FEFCC(0);
      swift_storeEnumTagMultiPayload();
      v92 = v89 + *(v91 + 20);
      v145 = 0;
      sub_29E7539F8();
      v93 = v147;
      *v92 = v146;
      *(v92 + 8) = v93;
      v95 = v127;
      v94 = v128;
      v96 = v125;
      (*(v127 + 104))(v125, *MEMORY[0x29EDC6AB8], v128);
      sub_29E754238();
      (*(v95 + 8))(v96, v94);
      sub_29E6FFF1C(&qword_2A185A158, type metadata accessor for SleepApneaSummaryShareButtonView);
      v97 = v110;
      sub_29E753848();

      sub_29E6FF064(v89, type metadata accessor for SleepApneaSummaryShareButtonView);
      sub_29E6FF064(v88, type metadata accessor for SleepApneaEventSummaryViewModel);
      v98 = v97;
      v70 = v117;
      sub_29E6FEF34(v98, v117, &qword_2A185A0E8, type metadata accessor for SleepApneaSummaryShareButtonView);
      v71 = 0;
      v68 = v143;
    }

    (*(v118 + 56))(v70, v71, 1, v119);
    sub_29E6FD154(v70, v140, sub_29E6FE59C);
    swift_storeEnumTagMultiPayload();
    sub_29E6FEBA4(&qword_2A185A148, sub_29E6FE59C, sub_29E6FEA80);
    sub_29E6FEBA4(&qword_2A185A160, sub_29E6FE668, sub_29E6FEC14);
    sub_29E753118();
    v87 = sub_29E6FE59C;
  }

  sub_29E6FF064(v70, v87);
  v100 = v135;
  v99 = v136;
  v101 = *(v136 + 16);
  v102 = v144;
  v103 = v137;
  v101(v135, v144, v137);
  v104 = v139;
  sub_29E6FD154(v68, v139, sub_29E6FE554);
  v105 = v142;
  v101(v142, v100, v103);
  sub_29E6FE2B4(0, &qword_2A185A0A8, sub_29E6FE330, sub_29E6FE554);
  sub_29E6FD154(v104, &v105[*(v106 + 48)], sub_29E6FE554);
  sub_29E6FF064(v68, sub_29E6FE554);
  v107 = *(v99 + 8);
  v107(v102, v103);
  sub_29E6FF064(v104, sub_29E6FE554);
  v107(v100, v103);
}

uint64_t sub_29E6FB684@<X0>(unint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v104 = a3;
  sub_29E6FF000(0, &qword_2A185A188, MEMORY[0x29EDBC7E8]);
  v100 = v5;
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v94 - v7;
  sub_29E6FE40C(0);
  v10 = v9;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_29E74F8B8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v94 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E64D80C();
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x2A1C7C4A8](v19 - 8);
  v96 = &v94 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v21);
  v99 = &v94 - v23;
  sub_29E6FF000(0, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24 - 8);
  v98 = &v94 - v26;
  v27 = *a1;
  sub_29E7544C8();
  v97 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = *a2;
  v102 = v10;
  v103 = v8;
  v101 = v13;
  v105 = v28;
  if (v27)
  {
    v29 = v27;
    if ((v27 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v27 < v28[2])
    {
      v30 = &v28[4 * v27];
      v32 = v30[4];
      v31 = v30[5];
      v13 = (v30 + 4);
      v33 = qword_2A1A7D6F0;
      v95 = v29;

      if (v33 == -1)
      {
LABEL_7:
        sub_29E74F8A8();
        v34 = sub_29E74F7C8();
        v36 = v35;

        (*(v15 + 8))(v18, v14);
        v106 = v34;
        v107 = v36;
        sub_29E60DE10();
        v37 = sub_29E753608();
        v39 = v38;
        v41 = v40;
        sub_29E753428();
        v42 = sub_29E7535D8();
        v18 = v43;
        v45 = v44;

        sub_29E60DB44(v37, v39, v41 & 1);

        v46 = [objc_opt_self() secondaryLabelColor];
        v15 = sub_29E7538E8();
        v106 = v15;
        v47 = sub_29E7535B8();
        v49 = v48;
        v51 = v50;
        v53 = v52;
        sub_29E60DB44(v42, v18, v45 & 1);

        v106 = v47;
        v107 = v49;
        v14 = v51 & 1;
        v108 = v51 & 1;
        v109 = v53;
        if (v95 < v105[2])
        {
          v54 = *(v13 + 2);
          v55 = *(v13 + 3);

          v56 = v99;
          sub_29E753848();

          sub_29E60DB44(v47, v49, v14);

          v57 = 0x4028000000000000;
LABEL_13:
          v89 = v96;
          sub_29E6FD154(v56, v96, sub_29E64D80C);
          v90 = v101;
          sub_29E6FD154(v89, v101, sub_29E64D80C);
          sub_29E6FE440();
          v92 = v90 + *(v91 + 48);
          *v92 = v57;
          *(v92 + 8) = 0;
          sub_29E6FF064(v89, sub_29E64D80C);
          sub_29E6FD154(v90, v103, sub_29E6FE40C);
          swift_storeEnumTagMultiPayload();
          sub_29E6FFF1C(&qword_2A185A140, sub_29E6FE40C);
          v93 = v98;
          sub_29E753118();
          sub_29E6FF064(v90, sub_29E6FE40C);
          sub_29E6FF064(v56, sub_29E64D80C);
          sub_29E6FF0C4(v93, v104);
        }

        __break(1u);
        goto LABEL_18;
      }

LABEL_16:
      swift_once();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v28[2])
  {
    v59 = v28[4];
    v58 = v28[5];
    v60 = qword_2A1A7D6F0;

    if (v60 == -1)
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

LABEL_18:
  __break(1u);
LABEL_19:
  swift_once();
LABEL_11:
  sub_29E74F8A8();
  v61 = sub_29E74F7C8();
  v63 = v62;

  (*(v15 + 8))(v18, v14);
  v106 = v61;
  v107 = v63;
  sub_29E60DE10();
  v64 = sub_29E753608();
  v66 = v65;
  LOBYTE(v61) = v67;
  sub_29E753428();
  v68 = sub_29E7535D8();
  v70 = v69;
  v72 = v71;

  sub_29E60DB44(v64, v66, v61 & 1);

  sub_29E753478();
  v73 = sub_29E753598();
  v75 = v74;
  v77 = v76;
  sub_29E60DB44(v68, v70, v72 & 1);

  v78 = [objc_opt_self() labelColor];
  v106 = sub_29E7538E8();
  v79 = sub_29E7535B8();
  v81 = v80;
  LOBYTE(v70) = v82;
  v84 = v83;
  sub_29E60DB44(v73, v75, v77 & 1);

  v106 = v79;
  v107 = v81;
  v86 = v70 & 1;
  v108 = v70 & 1;
  v109 = v84;
  if (v105[2])
  {
    v87 = v105[6];
    v88 = v105[7];

    v56 = v99;
    sub_29E753848();

    sub_29E60DB44(v79, v81, v86);

    v57 = 0x4018000000000000;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E6FBF24@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E752EB8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FEFCC(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for SleepApneaSummaryShareButtonView(0);
  sub_29E6FD154(v1 + *(v12 + 24), v11, sub_29E6FEFCC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_29E752A38();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_29E7546B8();
    v16 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_29E6FC120@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v95 = a1;
  v93 = sub_29E752A38();
  v3 = *(v93 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v93);
  v92 = &v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v87 = &v74 - v7;
  v81 = sub_29E752FD8();
  v83 = *(v81 - 8);
  v8 = *(v83 + 64);
  MEMORY[0x2A1C7C4A8](v81);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepApneaSummaryShareButtonView(0);
  v12 = *(v11 - 8);
  v94 = v11 - 8;
  v13 = *(v12 + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v90 = v14;
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x29EDBC270];
  sub_29E6FF708(0, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
  v75 = v17;
  v76 = *(v17 - 8);
  v18 = *(v76 + 64);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v74 - v19;
  sub_29E6FF5D4();
  v84 = v21;
  v82 = *(v21 - 8);
  v22 = *(v82 + 64);
  MEMORY[0x2A1C7C4A8](v21);
  v74 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FD740(0, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
  v25 = v24 - 8;
  v26 = *(*(v24 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v24);
  v77 = &v74 - v27;
  sub_29E6FF75C();
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v79 = &v74 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6FF7F4(0, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
  v80 = v32;
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v32);
  v78 = &v74 - v34;
  v91 = type metadata accessor for SleepApneaSummaryShareButtonView;
  v85 = v15;
  sub_29E6FD154(v2, v15, type metadata accessor for SleepApneaSummaryShareButtonView);
  v89 = *(v12 + 80);
  v35 = (v89 + 16) & ~v89;
  v86 = v35;
  v36 = swift_allocObject();
  v88 = type metadata accessor for SleepApneaSummaryShareButtonView;
  sub_29E6FE83C(v15, v36 + v35, type metadata accessor for SleepApneaSummaryShareButtonView);
  sub_29E753A28();
  sub_29E752FC8();
  sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v16);
  sub_29E6FFF1C(&qword_2A185A1D8, MEMORY[0x29EDBBFE0]);
  v37 = v74;
  v38 = v75;
  v39 = v81;
  sub_29E753728();
  (*(v83 + 8))(v10, v39);
  (*(v76 + 8))(v20, v38);
  v40 = v87;
  sub_29E6FBF24(v87);
  v41 = v92;
  v42 = v93;
  (*(v3 + 104))(v92, *MEMORY[0x29EDBC360], v93);
  LOBYTE(v20) = sub_29E752A28();
  v43 = *(v3 + 8);
  v43(v41, v42);
  v43(v40, v42);
  v44 = objc_opt_self();
  v45 = &selRef_systemGray4Color;
  if ((v20 & 1) == 0)
  {
    v45 = &selRef_systemGray6Color;
  }

  v46 = [v44 *v45];
  v47 = sub_29E7538E8();
  v48 = sub_29E7533A8();
  v49 = v77;
  (*(v82 + 32))(v77, v37, v84);
  v50 = v49 + *(v25 + 44);
  *v50 = v47;
  *(v50 + 8) = v48;
  sub_29E753C58();
  sub_29E752CA8();
  v51 = v79;
  sub_29E5F86B4(v49, v79);
  v52 = (v51 + *(v29 + 44));
  v53 = v103;
  v52[4] = v102;
  v52[5] = v53;
  v52[6] = v104;
  v54 = v99;
  *v52 = v98;
  v52[1] = v54;
  v55 = v101;
  v52[2] = v100;
  v52[3] = v55;
  v56 = v78;
  v57 = &v78[*(v80 + 36)];
  v58 = *(sub_29E752C98() + 20);
  v59 = *MEMORY[0x29EDBC6F8];
  v60 = sub_29E752F78();
  (*(*(v60 - 8) + 104))(&v57[v58], v59, v60);
  __asm { FMOV            V0.2D, #6.0 }

  *v57 = _Q0;
  sub_29E6FF878();
  *&v57[*(v66 + 36)] = 256;
  sub_29E5F8750(v51, v56);
  v67 = v2 + *(v94 + 28);
  v68 = *v67;
  v69 = *(v67 + 8);
  v96 = v68;
  v97 = v69;
  sub_29E6FF494(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A18();
  v70 = v85;
  sub_29E6FD154(v2, v85, v91);
  v71 = v86;
  v72 = swift_allocObject();
  sub_29E6FE83C(v70, v72 + v71, v88);
  sub_29E6FFB48();
  sub_29E6FFBDC();
  sub_29E6FFF1C(&qword_2A185A238, sub_29E6FFB48);
  sub_29E753868();

  return sub_29E5F87B8(v56);
}

uint64_t sub_29E6FCB18(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for SleepApneaSummaryShareButtonView(0) + 20));
  v4 = *v2;
  v5 = *(v2 + 1);
  sub_29E6FF494(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A08();
}

uint64_t sub_29E6FCC10@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74F8B8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v30 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  v7 = sub_29E74F7C8();
  v9 = v8;
  (*(v3 + 8))(v6, v2);
  v31 = v7;
  v32 = v9;
  sub_29E60DE10();
  v10 = sub_29E753608();
  v12 = v11;
  LOBYTE(v7) = v13;
  sub_29E753428();
  v14 = sub_29E7535D8();
  v16 = v15;
  v18 = v17;

  sub_29E60DB44(v10, v12, v7 & 1);

  sub_29E753468();
  v19 = sub_29E753598();
  v21 = v20;
  LOBYTE(v7) = v22;
  sub_29E60DB44(v14, v16, v18 & 1);

  v31 = sub_29E753918();
  v23 = sub_29E7535B8();
  v25 = v24;
  LOBYTE(v16) = v26;
  v28 = v27;
  sub_29E60DB44(v19, v21, v7 & 1);

  *a1 = v23;
  *(a1 + 8) = v25;
  *(a1 + 16) = v16 & 1;
  *(a1 + 24) = v28;
  return result;
}

uint64_t sub_29E6FCF00(uint64_t a1)
{
  v2 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E6FD154(a1, v5, type metadata accessor for SleepApneaEventSummaryViewModel);
  v6 = type metadata accessor for SleepApneaEventPDFProvider();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v10 = v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel;
  sub_29E6FD154(v5, v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_viewModel, type metadata accessor for SleepApneaEventSummaryViewModel);
  sub_29E751068();
  v11 = *(v10 + *(v2 + 24));
  v12 = sub_29E751048();
  sub_29E6FF064(v5, type metadata accessor for SleepApneaEventSummaryViewModel);
  *(v9 + OBJC_IVAR____TtC20SleepHealthAppPlugin26SleepApneaEventPDFProvider_characteristicsProvider) = v12;
  v14[1] = v9;
  sub_29E6FFF1C(&qword_2A185A210, type metadata accessor for SleepApneaEventPDFProvider);
  sub_29E750808();
}

unint64_t sub_29E6FD108()
{
  result = qword_2A1858550;
  if (!qword_2A1858550)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1858550);
  }

  return result;
}

uint64_t sub_29E6FD154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E6FD2A4()
{
  if (!qword_2A1859F40)
  {
    type metadata accessor for SymbolView(255);
    type metadata accessor for SleepApneaSummaryTextAndAction(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_2A1859F40);
    }
  }
}

void sub_29E6FD37C()
{
  if (!qword_2A1859F50)
  {
    sub_29E6FD3E8(255);
    sub_29E6FD5AC();
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859F50);
    }
  }
}

void sub_29E6FD41C()
{
  if (!qword_2A1859F60)
  {
    sub_29E6FD480();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1859F60);
    }
  }
}

void sub_29E6FD480()
{
  if (!qword_2A1859F68)
  {
    sub_29E6FD514(255);
    sub_29E6FFF1C(&qword_2A1859F80, sub_29E6FD514);
    v0 = sub_29E753B68();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859F68);
    }
  }
}

void sub_29E6FD550(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6FE2B4(255, a3, a4, a5);
    v6 = sub_29E753C78();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_29E6FD5AC()
{
  result = qword_2A1859F88;
  if (!qword_2A1859F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859F88);
  }

  return result;
}

void sub_29E6FD634()
{
  if (!qword_2A1859FA0)
  {
    sub_29E6FD6A4();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1859FA0);
    }
  }
}

void sub_29E6FD6A4()
{
  if (!qword_2A1859FA8)
  {
    sub_29E6FD740(255, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    sub_29E6FD97C();
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859FA8);
    }
  }
}

void sub_29E6FD740(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E6FF708(255, a4, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], a5);
    v8 = sub_29E752C28();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E6FD83C()
{
  if (!qword_2A1859FC8)
  {
    sub_29E6FD8B0(255);
    sub_29E64D80C();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_2A1859FC8);
    }
  }
}

void sub_29E6FD8F8()
{
  if (!qword_2A1859FD8)
  {
    sub_29E6FF494(255, &qword_2A1859FE0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1859FD8);
    }
  }
}

unint64_t sub_29E6FD97C()
{
  result = qword_2A1859FE8;
  if (!qword_2A1859FE8)
  {
    v1 = MEMORY[0x29EDBC8E8];
    sub_29E6FD740(255, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    sub_29E6FEBA4(&qword_2A1859FF0, sub_29E6FD7D4, sub_29E6FDAAC);
    sub_29E6FDAE0(&qword_2A18578C0, &qword_2A1857890, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1859FE8);
  }

  return result;
}

uint64_t sub_29E6FDAE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E6FF708(255, a2, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29E6FDB38()
{
  if (!qword_2A185A000)
  {
    sub_29E6FD740(255, &qword_2A1859FB0, sub_29E6FD7D4, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    v0 = sub_29E752B08();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A000);
    }
  }
}

unint64_t sub_29E6FDBDC()
{
  result = qword_2A185A008;
  if (!qword_2A185A008)
  {
    sub_29E6FD8F8();
    sub_29E6FDC5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A008);
  }

  return result;
}

unint64_t sub_29E6FDC5C()
{
  result = qword_2A185A010;
  if (!qword_2A185A010)
  {
    sub_29E6FF494(255, &qword_2A1859FE0, MEMORY[0x29EDBC400], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A010);
  }

  return result;
}

void sub_29E6FDD44()
{
  sub_29E6FF494(319, &qword_2A185A030, &type metadata for SleepApneaSummaryDescriptionString, MEMORY[0x29EDC9A40]);
  if (v0 <= 0x3F)
  {
    sub_29E6FDCFC(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29E6FDE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4(0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_29E6FDE9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_29E6FDF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_29E6FDF98()
{
  if (!qword_2A185A050)
  {
    sub_29E6FD270(255);
    sub_29E6FFF1C(&qword_2A185A058, sub_29E6FD270);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A050);
    }
  }
}

void sub_29E6FE02C()
{
  if (!qword_2A185A068)
  {
    sub_29E6FD3E8(255);
    sub_29E6FFF1C(&qword_2A185A070, sub_29E6FD3E8);
    v0 = sub_29E753548();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A068);
    }
  }
}

void sub_29E6FE0C0()
{
  if (!qword_2A185A080)
  {
    sub_29E6FD600(255);
    sub_29E6FFF1C(&qword_2A185A088, sub_29E6FD600);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A080);
    }
  }
}

unint64_t sub_29E6FE174()
{
  result = qword_2A185A090;
  if (!qword_2A185A090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A090);
  }

  return result;
}

void sub_29E6FE1E4()
{
  if (!qword_2A185A098)
  {
    sub_29E6FE278(255);
    sub_29E6FFF1C(&qword_2A185A118, sub_29E6FE278);
    v0 = sub_29E753AA8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A098);
    }
  }
}

void sub_29E6FE2B4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_29E6FE330()
{
  if (!qword_2A185A0B0)
  {
    sub_29E6FF708(255, &qword_2A1859818, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29E6FF000(255, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
    sub_29E6FE4A8();
    v0 = sub_29E753B58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A0B0);
    }
  }
}

void sub_29E6FE440()
{
  if (!qword_2A185A0C8)
  {
    sub_29E64D80C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185A0C8);
    }
  }
}

unint64_t sub_29E6FE4A8()
{
  result = qword_2A185A0D0;
  if (!qword_2A185A0D0)
  {
    sub_29E6FF708(255, &qword_2A1859818, MEMORY[0x29EDC9BA8], MEMORY[0x29EDC9BC0], MEMORY[0x29EDC9C30]);
    sub_29E659C70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A0D0);
  }

  return result;
}

void sub_29E6FE5C4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_29E6FF7F4(255, a3, a4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    v5 = sub_29E754BD8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_29E6FE690()
{
  if (!qword_2A185A100)
  {
    sub_29E6F7F88(255, &qword_2A185A108, &qword_2A185A110, MEMORY[0x29EDBC0E0], sub_29E6FE75C);
    sub_29E6FF708(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A100);
    }
  }
}

void sub_29E6FE75C()
{
  if (!qword_2A1857518)
  {
    sub_29E6FF494(255, &qword_2A1857520, MEMORY[0x29EDBC9F0], MEMORY[0x29EDC9C68]);
    v0 = sub_29E7532E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857518);
    }
  }
}

void sub_29E6FE7D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752B08();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6FE83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_29E6FE8A4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E752C28();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6FE93C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for SleepApneaSummaryTextAndAction(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_29E6FB684(a1, v6, a2);
}

unint64_t sub_29E6FE9BC()
{
  result = qword_2A185A138;
  if (!qword_2A185A138)
  {
    sub_29E6FF000(255, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
    sub_29E6FFF1C(&qword_2A185A140, sub_29E6FE40C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A138);
  }

  return result;
}

unint64_t sub_29E6FEA80()
{
  result = qword_2A185A150;
  if (!qword_2A185A150)
  {
    sub_29E6FF7F4(255, &qword_2A185A0E8, type metadata accessor for SleepApneaSummaryShareButtonView, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E6FFF1C(&qword_2A185A158, type metadata accessor for SleepApneaSummaryShareButtonView);
    sub_29E6FFF1C(&qword_2A1857F58, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A150);
  }

  return result;
}

uint64_t sub_29E6FEBA4(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_29E6FEC14()
{
  result = qword_2A185A168;
  if (!qword_2A185A168)
  {
    sub_29E6FF7F4(255, &qword_2A185A0F8, sub_29E6FE690, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
    sub_29E6FED08();
    sub_29E6FFF1C(&qword_2A1857F58, MEMORY[0x29EDBC0A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A168);
  }

  return result;
}

unint64_t sub_29E6FED08()
{
  result = qword_2A185A170;
  if (!qword_2A185A170)
  {
    sub_29E6FE690();
    sub_29E6FEDC0();
    sub_29E6FDAE0(&qword_2A18578C0, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A170);
  }

  return result;
}

unint64_t sub_29E6FEDC0()
{
  result = qword_2A185A178;
  if (!qword_2A185A178)
  {
    v1 = MEMORY[0x29EDBC0E0];
    sub_29E6F7F88(255, &qword_2A185A108, &qword_2A185A110, MEMORY[0x29EDBC0E0], sub_29E6FE75C);
    sub_29E6FEEDC(&qword_2A185A180, &qword_2A185A110, v1);
    sub_29E6FFF1C(&qword_2A1857550, sub_29E6FE75C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A178);
  }

  return result;
}

uint64_t sub_29E6FEEDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_29E6FF708(255, a2, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E6FEF34(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E6FF7F4(0, a3, a4, MEMORY[0x29EDBC0A8], MEMORY[0x29EDBC558]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_29E6FF000(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_29E6FE40C(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29E6FF064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E6FF0C4(uint64_t a1, uint64_t a2)
{
  sub_29E6FF000(0, &qword_2A185A0B8, MEMORY[0x29EDBC7F0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E6FF144()
{
  if (!qword_2A185A198)
  {
    sub_29E6FF708(255, &qword_2A1857890, MEMORY[0x29EDBCA98], MEMORY[0x29EDBCA88], MEMORY[0x29EDBC8E8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A198);
    }
  }
}

unint64_t sub_29E6FF1D0()
{
  result = qword_2A185A1A0;
  if (!qword_2A185A1A0)
  {
    sub_29E6FF7F4(255, &qword_2A185A190, sub_29E6FF144, sub_29E6FE75C, MEMORY[0x29EDBC558]);
    sub_29E6FF2C4();
    sub_29E6FFF1C(&qword_2A1857550, sub_29E6FE75C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A1A0);
  }

  return result;
}

unint64_t sub_29E6FF2C4()
{
  result = qword_2A185A1A8;
  if (!qword_2A185A1A8)
  {
    sub_29E6FF144();
    sub_29E6FDAE0(&qword_2A18578C0, &qword_2A1857890, MEMORY[0x29EDBC8E8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A1A8);
  }

  return result;
}

void sub_29E6FF3A4()
{
  type metadata accessor for SleepApneaEventSummaryViewModel();
  if (v0 <= 0x3F)
  {
    sub_29E6FF494(319, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
    if (v1 <= 0x3F)
    {
      sub_29E6F6090(319, &qword_2A1856AF0, MEMORY[0x29EDBC370], MEMORY[0x29EDBC390]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29E6FF494(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E6FF4E4()
{
  result = qword_2A185A1C0;
  if (!qword_2A185A1C0)
  {
    sub_29E6FE8A4(255, &qword_2A185A128, sub_29E6FE1E4);
    sub_29E6FFF1C(&qword_2A185A1C8, sub_29E6FE1E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A1C0);
  }

  return result;
}

void sub_29E6FF5D4()
{
  if (!qword_2A185A1D0)
  {
    v0 = MEMORY[0x29EDBC270];
    sub_29E6FF708(255, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E752FD8();
    sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v0);
    sub_29E6FFF1C(&qword_2A185A1D8, MEMORY[0x29EDBBFE0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A185A1D0);
    }
  }
}

void sub_29E6FF708(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E6FF75C()
{
  if (!qword_2A185A1E8)
  {
    sub_29E6FD740(255, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A1E8);
    }
  }
}

void sub_29E6FF7F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E6FF878()
{
  if (!qword_2A185A1F8)
  {
    sub_29E752C98();
    sub_29E6FFF1C(&qword_2A185A200, MEMORY[0x29EDBC5C0]);
    v0 = sub_29E752A88();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A1F8);
    }
  }
}

uint64_t sub_29E6FF938()
{
  v1 = (type metadata accessor for SleepApneaSummaryShareButtonView(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = v0 + v3;
  v6 = sub_29E74ED28();
  v7 = *(*(v6 - 8) + 8);
  v7(v0 + v3, v6);
  v8 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v7(v0 + v3 + v8[5], v6);

  v9 = *(v0 + v3 + v1[7] + 8);

  v10 = v1[8];
  sub_29E6FEFCC(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_29E752A38();
    (*(*(v11 - 8) + 8))(v5 + v10, v11);
  }

  else
  {
    v12 = *(v5 + v10);
  }

  return MEMORY[0x2A1C733A0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_29E6FFAD8()
{
  v1 = *(type metadata accessor for SleepApneaSummaryShareButtonView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E6FCF00(v2);
}

void sub_29E6FFB48()
{
  if (!qword_2A185A208)
  {
    type metadata accessor for SleepApneaEventPDFProvider();
    sub_29E6FFF1C(&qword_2A185A210, type metadata accessor for SleepApneaEventPDFProvider);
    v0 = sub_29E7507F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A208);
    }
  }
}

unint64_t sub_29E6FFBDC()
{
  result = qword_2A185A218;
  if (!qword_2A185A218)
  {
    sub_29E6FF7F4(255, &qword_2A185A1F0, sub_29E6FF75C, sub_29E6FF878, MEMORY[0x29EDBC558]);
    sub_29E6FFCD0();
    sub_29E6FFF1C(&qword_2A185A230, sub_29E6FF878);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A218);
  }

  return result;
}

unint64_t sub_29E6FFCD0()
{
  result = qword_2A185A220;
  if (!qword_2A185A220)
  {
    sub_29E6FF75C();
    sub_29E6FFD50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A220);
  }

  return result;
}

unint64_t sub_29E6FFD50()
{
  result = qword_2A185A228;
  if (!qword_2A185A228)
  {
    v1 = MEMORY[0x29EDBC8D8];
    sub_29E6FD740(255, &qword_2A185A1E0, sub_29E6FF5D4, &qword_2A1859DB8, MEMORY[0x29EDBC8D8]);
    v2 = MEMORY[0x29EDBC270];
    sub_29E6FF708(255, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E752FD8();
    sub_29E6FEEDC(&qword_2A18573E8, &qword_2A1857070, v2);
    sub_29E6FFF1C(&qword_2A185A1D8, MEMORY[0x29EDBBFE0]);
    swift_getOpaqueTypeConformance2();
    sub_29E6FDAE0(&qword_2A1859DE8, &qword_2A1859DB8, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A228);
  }

  return result;
}

uint64_t sub_29E6FFF1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for SleepApneaEventListDataSource()
{
  result = qword_2A185A260;
  if (!qword_2A185A260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E700028(void *a1, uint64_t *a2)
{
  v3 = v2;
  v95 = *v2;
  v74 = sub_29E752098();
  v73 = *(v74 - 8);
  v6 = *(v73 + 64);
  MEMORY[0x2A1C7C4A8](v74);
  v94 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6894C4();
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = *(v91 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v90 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7035C8(0, &qword_2A1856860, MEMORY[0x29EDCA298], MEMORY[0x29EDC9C68]);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v89 = &v73 - v13;
  v81 = sub_29E754668();
  v79 = *(v81 - 8);
  v14 = *(v79 + 64);
  MEMORY[0x2A1C7C4A8](v81);
  v77 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7037C8();
  v82 = v16;
  v80 = *(v16 - 1);
  v17 = *(v80 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v78 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E703A08();
  v85 = v19;
  v84 = *(v19 - 8);
  v20 = *(v84 + 64);
  MEMORY[0x2A1C7C4A8](v19);
  v83 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E703A9C();
  v87 = *(v22 - 8);
  v88 = v22;
  v23 = *(v87 + 64);
  MEMORY[0x2A1C7C4A8](v22);
  v86 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_29E74ED88();
  v75 = *(v76 - 8);
  v25 = *(v75 + 64);
  MEMORY[0x2A1C7C4A8](v76);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E751D98();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x29EDCA190];
  *(v2 + qword_2A185A240) = MEMORY[0x29EDCA190];
  v34 = qword_2A185A248;
  v98[0] = v33;
  sub_29E703B68(0, &qword_2A1858FA0, sub_29E7039A0, MEMORY[0x29EDB8A60]);
  v36 = *(v35 + 48);
  v37 = *(v35 + 52);
  swift_allocObject();
  *(v2 + v34) = sub_29E7527E8();
  *(v2 + qword_2A185A250) = a1;
  v38 = a2[3];
  v39 = a2[4];
  v93 = a2;
  sub_29E601938(a2, v38);
  v96 = a1;
  sub_29E751DB8();
  v40 = *MEMORY[0x29EDBA5A0];
  v41 = sub_29E751DA8();
  LOBYTE(a1) = [v41 areAllRequirementsSatisfied];

  (*(v29 + 8))(v32, v28);
  *(v3 + qword_2A185A258) = a1;
  v98[0] = 0;
  v98[1] = 0xE000000000000000;
  sub_29E754D78();

  strcpy(v98, "MutableArray<");
  HIWORD(v98[1]) = -4864;
  sub_29E74ED78();
  v42 = sub_29E74ED48();
  v44 = v43;
  (*(v75 + 8))(v27, v76);
  MEMORY[0x29ED96C20](v42, v44);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v45 = MEMORY[0x29EDCA190];
  v46 = sub_29E750D08();
  sub_29E6163F8();
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_29E764160;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v48 = *MEMORY[0x29EDBA4D8];
  swift_retain_n();
  *(v47 + 32) = MEMORY[0x29ED96FF0](v48);
  v49 = v77;
  sub_29E754678();

  sub_29E7526E8();
  sub_29E703934();
  sub_29E7038B4();
  sub_29E703D1C(&qword_2A185A298, MEMORY[0x29EDC2E88]);
  sub_29E703D1C(&qword_2A185A290, sub_29E7038B4);
  v50 = v78;
  v51 = v81;
  sub_29E752958();

  (*(v79 + 8))(v49, v51);
  v98[0] = v45;
  v98[1] = 0;
  sub_29E703D1C(&qword_2A185A2A8, sub_29E7037C8);
  v52 = v83;
  v53 = v82;
  sub_29E752908();
  (*(v80 + 8))(v50, v53);
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  v54 = sub_29E754908();
  v98[0] = v54;
  v55 = sub_29E7548D8();
  v56 = *(v55 - 8);
  v80 = *(v56 + 56);
  v81 = v56 + 56;
  v57 = v89;
  (v80)(v89, 1, 1, v55);
  sub_29E703D1C(&qword_2A185A2B8, sub_29E703A08);
  v94 = sub_29E63FE6C();
  v58 = v85;
  v59 = v86;
  sub_29E752968();
  v82 = MEMORY[0x29EDCA298];
  sub_29E703BE4(v57, &qword_2A1856860, MEMORY[0x29EDCA298]);

  (*(v84 + 8))(v52, v58);
  v60 = swift_allocObject();
  swift_weakInit();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_29E703C54;
  *(v61 + 24) = v60;
  v85 = MEMORY[0x29EDB89E8];
  sub_29E703D1C(&qword_2A185A2C0, sub_29E703A9C);
  v62 = v88;
  sub_29E7529A8();

  (*(v87 + 8))(v59, v62);
  swift_beginAccess();
  sub_29E7035C8(0, &qword_2A185A2C8, MEMORY[0x29EDB8A18], MEMORY[0x29EDC9A40]);
  v88 = v63;
  v87 = sub_29E703C8C();
  sub_29E752718();
  swift_endAccess();

  v64 = v93;
  v65 = v93[4];
  sub_29E601938(v93, v93[3]);
  v98[0] = sub_29E751DC8();
  v66 = sub_29E754908();
  v97 = v66;
  (v80)(v57, 1, 1, v55);
  sub_29E703B68(0, &qword_2A1A7BF98, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
  sub_29E703740();
  v67 = v90;
  sub_29E752968();
  sub_29E703BE4(v57, &qword_2A1856860, v82);

  v68 = swift_allocObject();
  swift_weakInit();

  v69 = swift_allocObject();
  v70 = v95;
  *(v69 + 16) = v68;
  *(v69 + 24) = v70;
  sub_29E703D1C(&qword_2A18585D0, sub_29E6894C4);
  v71 = v92;
  sub_29E7529A8();

  (*(v91 + 8))(v67, v71);
  swift_beginAccess();
  sub_29E752718();
  swift_endAccess();

  sub_29E5FECBC(v64);
  return v46;
}

uint64_t sub_29E700FA4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_29E7515C8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  [objc_allocWithZone(MEMORY[0x29EDBAE60]) initWithHealthStore_];
  *v8 = 0;
  (*(v5 + 104))(v8, *MEMORY[0x29EDC2858], v4);
  v9 = sub_29E7515E8();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_29E7515B8();
  v12 = sub_29E7515D8();

  *a2 = v12;
  return result;
}

uint64_t sub_29E70113C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  v7[2] = a3;
  v7[3] = a1;
  sub_29E607C50(sub_29E703D64, v7);
}

uint64_t sub_29E701234(uint64_t a1, unint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E70148C(a2);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + qword_2A185A248);

    sub_29E7527C8();
  }
}

uint64_t sub_29E701374()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *MEMORY[0x29EDBA5A0];
    v3 = sub_29E751DA8();
    v4 = [v3 areAllRequirementsSatisfied];

    *(v1 + qword_2A185A258) = v4;
    sub_29E750CF8();
  }
}

uint64_t sub_29E70148C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74ED88();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_29E750EE8();
  v9 = *(v53 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x2A1C7C4A8](v53);
  v51 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E74F8B8();
  v13 = *(v12 - 1);
  v14 = *(v13 + 64);
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = v8;
  v54 = a1;
  if (a1 >> 62)
  {
    if (sub_29E754C98())
    {
      v17 = sub_29E754C98();
      if (!v17)
      {
        v47 = v9;
        v18 = MEMORY[0x29EDCA190];
        goto LABEL_14;
      }

LABEL_3:
      v58 = MEMORY[0x29EDCA190];
      sub_29E6DBD4C(0, v17 & ~(v17 >> 63), 0);
      if (v17 < 0)
      {
        __break(1u);
LABEL_30:
        v12 = sub_29E6DAD84(0, v12[2] + 1, 1, v12);
LABEL_19:
        v36 = v47;
        v38 = v12[2];
        v37 = v12[3];
        if (v38 >= v37 >> 1)
        {
          v12 = sub_29E6DAD84((v37 > 1), v38 + 1, 1, v12);
        }

        v39 = v53;
        v56 = v53;
        v57 = sub_29E703D1C(&qword_2A1858328, MEMORY[0x29EDC23F8]);
        v40 = sub_29E5FEBF4(&v55);
        v41 = v51;
        (*(v36 + 16))(v40, v51, v39);
        v12[2] = v38 + 1;
        sub_29E5FAEE4(&v55, &v12[5 * v38 + 4]);
        (*(v36 + 8))(v41, v39);
        v18 = v12;
        goto LABEL_28;
      }

      v47 = v9;
      v48 = v5;
      v49 = v4;
      v18 = v58;
      sub_29E7544C8();
      v19 = 0;
      v50 = v2;
      v20 = *(v2 + qword_2A185A250);
      v21 = v54 & 0xC000000000000001;
      do
      {
        if (v21)
        {
          v22 = MEMORY[0x29ED976A0](v19, v54);
        }

        else
        {
          v22 = *(v54 + 8 * v19 + 32);
        }

        v23 = v22;
        sub_29E7544B8();
        sub_29E754468();
        if ((swift_task_isCurrentExecutor() & 1) == 0)
        {
          swift_task_reportUnexpectedExecutor();
        }

        v56 = v53;
        v57 = sub_29E703D1C(&qword_2A1858328, MEMORY[0x29EDC23F8]);
        v24 = sub_29E5FEBF4(&v55);
        sub_29E681ED0(v23, 0, v20, v24);

        v58 = v18;
        v26 = v18[2];
        v25 = v18[3];
        if (v26 >= v25 >> 1)
        {
          sub_29E6DBD4C((v25 > 1), v26 + 1, 1);
        }

        ++v19;
        v27 = v56;
        v28 = v57;
        v29 = sub_29E613218(&v55, v56);
        v30 = *(*(v27 - 8) + 64);
        MEMORY[0x2A1C7C4A8](v29);
        v32 = &v47 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v33 + 16))(v32);
        sub_29E6CE380(v26, v32, &v58, v27, v28);
        sub_29E5FECBC(&v55);
        v18 = v58;
      }

      while (v17 != v19);
      v4 = v49;
      v5 = v48;
LABEL_14:
      v34 = v18[2];
      v17 = 0x29E762000;
      if (!v34)
      {
        goto LABEL_28;
      }

      if (v34 <= 6)
      {

        v12 = v18;
      }

      else
      {
        sub_29E703634(v18, (v18 + 4), 0, 0xDuLL);
        v12 = v35;
      }

      sub_29E701C84(v18, v51);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_19;
      }

      goto LABEL_30;
    }
  }

  else
  {
    v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v17)
    {
      goto LABEL_3;
    }
  }

  sub_29E6DD09C(0, &qword_2A18568D0, &qword_2A1858310);
  v18 = swift_allocObject();
  v17 = "DISABLED_SLEEP_SCHEDULE_DETAIL";
  *(v18 + 1) = xmmword_29E762F30;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v13 + 8))(v16, v12);
  v18[7] = sub_29E751968();
  v18[8] = sub_29E703D1C(&qword_2A185A270, MEMORY[0x29EDC2A68]);
  sub_29E5FEBF4(v18 + 4);
  sub_29E751958();
LABEL_28:
  sub_29E7035C8(0, &qword_2A1856858, MEMORY[0x29EDC2240], MEMORY[0x29EDC9E90]);
  v42 = *(sub_29E750CA8() - 8);
  v43 = *(v42 + 72);
  v44 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  *(swift_allocObject() + 16) = *(v17 + 3888);
  sub_29E6CC108(v18);

  v45 = v52;
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v5 + 8))(v45, v4);
  sub_29E750C98();
  sub_29E750D18();
}

uint64_t sub_29E701C84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_29E751908();
  v60 = *(v3 - 8);
  v61 = v3;
  v4 = *(v60 + 64);
  MEMORY[0x2A1C7C4A8](v3);
  v59 = v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E750DC8();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = *(v56 + 64);
  MEMORY[0x2A1C7C4A8](v6);
  v58 = v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x29EDC9C68];
  sub_29E7035C8(0, &qword_2A1856A90, MEMORY[0x29EDC77B8], MEMORY[0x29EDC9C68]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v55 = v50 - v12;
  sub_29E7035C8(0, &qword_2A1856A98, MEMORY[0x29EDC7770], v9);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v52 = v50 - v15;
  v16 = sub_29E752108();
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = *(v53 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v51 = v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50[0] = sub_29E7520C8();
  v19 = *(v50[0] - 8);
  v20 = *(v19 + 64);
  MEMORY[0x2A1C7C4A8](v50[0]);
  v22 = v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_29E74ED88();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x2A1C7C4A8](v23);
  v27 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_29E752258();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = v50 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E683988(a1);
  v63 = 0;
  v64 = 0xE000000000000000;
  sub_29E754D78();

  v63 = 0xD000000000000017;
  v64 = 0x800000029E75FB20;
  sub_29E74ED78();
  sub_29E703D1C(&qword_2A1858FE8, MEMORY[0x29EDB9C08]);
  v33 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v33);

  v34 = v27;
  v35 = v28;
  v36 = v29;
  (*(v24 + 8))(v34, v23);
  v50[1] = v64;
  v50[2] = v63;
  v65 = v35;
  v66 = MEMORY[0x29EDC7800];
  v37 = sub_29E5FEBF4(&v63);
  (*(v29 + 16))(v37, v32, v35);
  sub_29E7035C8(0, &qword_2A1856AA0, MEMORY[0x29EDC7780], MEMORY[0x29EDC9E90]);
  v38 = *(sub_29E752128() - 8);
  v39 = *(v38 + 72);
  v40 = (*(v38 + 80) + 32) & ~*(v38 + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  v41 = v50[0];
  (*(v19 + 104))(v22, *MEMORY[0x29EDC7768], v50[0]);
  v42 = sub_29E7520D8();
  (*(*(v42 - 8) + 56))(v52, 1, 1, v42);
  v43 = v51;
  sub_29E7520F8();
  sub_29E7520E8();
  v44 = v43;
  v45 = v55;
  (*(v53 + 8))(v44, v54);
  (*(v19 + 8))(v22, v41);
  v46 = sub_29E752178();
  (*(*(v46 - 8) + 56))(v45, 1, 1, v46);

  v47 = sub_29E7543D8();
  v48 = HKUIJoinStringsForAutomationIdentifier();

  if (v48)
  {
    sub_29E7541D8();
  }

  (*(v56 + 104))(v58, *MEMORY[0x29EDC22C8], v57);
  (*(v60 + 104))(v59, *MEMORY[0x29EDC2A38], v61);
  sub_29E750ED8();
  return (*(v36 + 8))(v32, v35);
}

void sub_29E702440(void *a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a2 + qword_2A185A248);
  v5 = *(a2 + qword_2A185A250);
  v6 = objc_allocWithZone(type metadata accessor for SleepApneaEventAllDataViewController());

  v7 = sub_29E6B3D0C(v4, v5);
  [a1 showViewController:v7 sender:a1];
}

void sub_29E702554()
{
  v1 = v0;
  v39 = *v0;
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x2A1C7C4A8](v2);
  MEMORY[0x2A1C7C4A8](v5);
  v7 = v37 - v6;
  v8 = sub_29E74F8B8();
  v40 = *(v8 - 8);
  v41 = v8;
  v9 = *(v40 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7035C8(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v15 = v37 - v14;
  v16 = sub_29E74ED28();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + qword_2A185A258) != 1)
  {
    sub_29E752068();
    v23 = sub_29E752088();
    v24 = sub_29E7546C8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = v2;
      v27 = swift_slowAlloc();
      v42 = v27;
      *v25 = 136446210;
      v28 = sub_29E755178();
      v30 = sub_29E6B9C90(v28, v29, &v42);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_29E5ED000, v23, v24, "[%{public}s] Feature is off, returning default string.", v25, 0xCu);
      sub_29E5FECBC(v27);
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v25, -1, -1);

      (*(v3 + 8))(v7, v26);
    }

    else
    {

      (*(v3 + 8))(v7, v2);
    }

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();
    goto LABEL_13;
  }

  v37[1] = v2;
  v21 = [objc_allocWithZone(MEMORY[0x29EDBAC18]) initWithCategory:2 domainName:*MEMORY[0x29EDC6990] healthStore:*(v1 + qword_2A185A250)];
  v22 = *MEMORY[0x29EDC6978];
  sub_29E7541D8();
  v38 = v21;
  sub_29E754788();

  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_29E703BE4(v15, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8]);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();

LABEL_13:
    (*(v40 + 8))(v11, v41);
    return;
  }

  (*(v17 + 32))(v20, v15, v16);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v40 + 8))(v11, v41);
  sub_29E6DD09C(0, &qword_2A1A7D3D8, &qword_2A1A7D3D0);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_29E762F30;
  v32 = sub_29E74EC98();
  v33 = HKLocalizedStringForDateAndTemplate();

  if (v33)
  {
    v34 = sub_29E7541D8();
    v36 = v35;

    *(v31 + 56) = MEMORY[0x29EDC99B0];
    *(v31 + 64) = sub_29E67E9AC();
    *(v31 + 32) = v34;
    *(v31 + 40) = v36;
    sub_29E7541A8();

    (*(v17 + 8))(v20, v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E702E58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_29E74ED88();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E752258();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v34 = sub_29E74F8B8();
  v14 = *(v34 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x2A1C7C4A8](v34);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *MEMORY[0x29EDC8048];
  if (sub_29E7541D8() == a1 && v19 == a2)
  {

    goto LABEL_13;
  }

  v32[1] = v3;
  v33 = v7;
  v21 = sub_29E755028();

  if (v21)
  {
LABEL_13:
    v27 = sub_29E750458();
    sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
    MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74F8A8();
    sub_29E74F7C8();
    (*(v14 + 8))(v17, v34);
    sub_29E7521F8();
    v28 = sub_29E750448();
    a3[3] = v27;
    result = sub_29E703D1C(&qword_2A1856FE0, MEMORY[0x29EDC1C30]);
    a3[4] = result;
    *a3 = v28;
    return result;
  }

  v22 = *MEMORY[0x29EDC8040];
  if (sub_29E7541D8() == a1 && v23 == a2)
  {
  }

  else
  {
    v25 = sub_29E755028();

    if ((v25 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E703D1C(&qword_2A1856D80, MEMORY[0x29EDC1EC0]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  sub_29E702554();
  v35 = 0x74497265746F6F46;
  v36 = 0xEB000000005F6D65;
  sub_29E74ED78();
  v29 = sub_29E74ED48();
  v31 = v30;
  (*(v8 + 8))(v11, v33);
  MEMORY[0x29ED96C20](v29, v31);

  a3[3] = sub_29E751628();
  a3[4] = sub_29E703D1C(&qword_2A1856D88, MEMORY[0x29EDC28B0]);
  sub_29E5FEBF4(a3);
  return sub_29E751618();
}

void sub_29E703340()
{
  v1 = *(v0 + qword_2A185A240);

  v2 = *(v0 + qword_2A185A248);

  v3 = *(v0 + qword_2A185A250);
}

uint64_t sub_29E703390()
{
  v0 = sub_29E750D58();
  v1 = *(v0 + qword_2A185A240);

  v2 = *(v0 + qword_2A185A248);

  v3 = *(v0 + qword_2A185A250);

  return swift_deallocClassInstance();
}

uint64_t sub_29E70343C()
{
  sub_29E751768();
  sub_29E7547D8();
  sub_29E751A58();
  return sub_29E7547D8();
}

uint64_t sub_29E70348C()
{
  v0 = sub_29E750E78();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x2A1C7C4A8](v0);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = v11 - v6;
  sub_29E750E28();
  sub_29E750E18();
  v8 = *(v1 + 8);
  v8(v7, v0);
  sub_29E751098();
  v9 = sub_29E750E68();
  sub_29E751758();
  v8(v5, v0);
  return v9;
}

void sub_29E7035C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E703634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      sub_29E6DD09C(0, &qword_2A18568D0, &qword_2A1858310);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
      if (v4 != a3)
      {
LABEL_5:
        sub_29E609CF8(0, &qword_2A1858310);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

unint64_t sub_29E703740()
{
  result = qword_2A1A7BFA0;
  if (!qword_2A1A7BFA0)
  {
    sub_29E703B68(255, &qword_2A1A7BF98, MEMORY[0x29EDC2D78], MEMORY[0x29EDB89F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BFA0);
  }

  return result;
}

void sub_29E7037C8()
{
  if (!qword_2A185A278)
  {
    sub_29E7038B4();
    sub_29E754668();
    sub_29E703D1C(&qword_2A185A290, sub_29E7038B4);
    sub_29E703D1C(&qword_2A185A298, MEMORY[0x29EDC2E88]);
    v0 = sub_29E7526A8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A278);
    }
  }
}

void sub_29E7038B4()
{
  if (!qword_2A185A280)
  {
    sub_29E703934();
    sub_29E609CF8(255, &qword_2A1A7BCD0);
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A280);
    }
  }
}

void sub_29E703934()
{
  if (!qword_2A185A288)
  {
    sub_29E7039A0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A185A288);
    }
  }
}

void sub_29E7039A0()
{
  if (!qword_2A1858FA8)
  {
    sub_29E609B5C(255, &qword_2A1858478, 0x29EDBAD60);
    v0 = sub_29E754448();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858FA8);
    }
  }
}

void sub_29E703A08()
{
  if (!qword_2A185A2A0)
  {
    sub_29E7037C8();
    sub_29E703D1C(&qword_2A185A2A8, sub_29E7037C8);
    v0 = sub_29E752618();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A2A0);
    }
  }
}

void sub_29E703A9C()
{
  if (!qword_2A185A2B0)
  {
    sub_29E703A08();
    sub_29E609B5C(255, &qword_2A1A7D470, 0x29EDCA548);
    sub_29E703D1C(&qword_2A185A2B8, sub_29E703A08);
    sub_29E63FE6C();
    v0 = sub_29E7526C8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A185A2B0);
    }
  }
}

void sub_29E703B68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, void, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7, MEMORY[0x29EDC9F80], MEMORY[0x29EDC9F90]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_29E703BE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E7035C8(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E703C5C(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

unint64_t sub_29E703C8C()
{
  result = qword_2A185A2D0;
  if (!qword_2A185A2D0)
  {
    sub_29E7035C8(255, &qword_2A185A2C8, MEMORY[0x29EDB8A18], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A2D0);
  }

  return result;
}

uint64_t sub_29E703D14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E701374();
}

uint64_t sub_29E703D1C(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_29E703D80()
{
  v1 = v0;
  v2 = sub_29E74EFE8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == *MEMORY[0x29EDC6908])
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDC4870]) init];
    v9 = objc_opt_self();
    v10 = [v9 hk_sleepScoreDurationComponentColor];
    [v8 setKeyColor_];

    v11 = [v9 hk_chartOverlayPillLightColor];
    [v8 setContextViewPrimaryTextColor_];

    v12 = [v9 hk_defaultSecondaryTextColor];
  }

  else if (v7 == *MEMORY[0x29EDC6900])
  {
    v8 = [objc_allocWithZone(MEMORY[0x29EDC4870]) init];
    v13 = objc_opt_self();
    v14 = [v13 hk_sleepScoreBedtimeComponentColor];
    [v8 setKeyColor_];

    v15 = [v13 hk_chartOverlayPillDarkColor];
    [v8 setContextViewPrimaryTextColor_];

    v12 = [v13 hk_defaultSecondaryTextColor];
  }

  else
  {
    if (v7 != *MEMORY[0x29EDC68F8])
    {
      v21 = [objc_opt_self() sleepColors];
      (*(v3 + 8))(v6, v2);
      return v21;
    }

    v8 = [objc_allocWithZone(MEMORY[0x29EDC4870]) init];
    v16 = objc_opt_self();
    v17 = [v16 hk_sleepScoreInterruptionsComponentColor];
    [v8 setKeyColor_];

    v18 = [v16 hk_chartOverlayPillDarkColor];
    [v8 setContextViewPrimaryTextColor_];

    v12 = [v16 hk_defaultSecondaryTextColor];
  }

  v19 = v12;
  [v8 setContextViewSecondaryTextColor_];

  return v8;
}

id sub_29E7040F8(uint64_t a1)
{
  v1 = sub_29E7287C4(sub_29E705DB0, &v6, a1);
  v2 = sub_29E704640(v1);
  v4 = v3;

  return sub_29E70554C(v2, v4 & 1);
}

id sub_29E704170(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis_maxValue] = a1;
  *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreComponentYAxis_increment] = a2;
  v6 = [objc_allocWithZone(MEMORY[0x29EDC4770]) init];
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 preferredAxisStyle];
  [v8 setPreferredStyle_];

  type metadata accessor for SleepScoreComponentLabelDimension();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  [v8 setLabelDimension_];

  v13.receiver = v2;
  v13.super_class = ObjectType;
  v11 = objc_msgSendSuper2(&v13, sel_initWithConfiguration_, v8);

  return v11;
}

void sub_29E704294(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  sub_29E6163F8();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E7655E0;
  sub_29E7045EC();
  sub_29E754C28();
  v4 = [objc_allocWithZone(MEMORY[0x29EDC4418]) init];
  [v4 setLabelType_];
  v5 = sub_29E74F188();
  [v4 setLocation_];

  v6 = sub_29E754198();

  [v4 setText_];

  *(v3 + 32) = v4;
  v7 = [objc_allocWithZone(MEMORY[0x29EDC4418]) init];
  [v7 setLabelType_];
  v8 = sub_29E74F188();
  [v7 setLocation_];

  *(v3 + 40) = v7;
  *a2 = v3;
}

unint64_t sub_29E7045EC()
{
  result = qword_2A185A348;
  if (!qword_2A185A348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A348);
  }

  return result;
}

uint64_t sub_29E704640(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v4 = a1;

  sub_29E7046D8(&v4);
  if (v1 >> 1 < *(v4 + 2))
  {
    v2 = *&v4[8 * (v1 >> 1) + 32];

    return v2;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_29E7046D8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_29E705088(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_29E754FC8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_29E754428();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x29EDCA190];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_29E70480C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_29E70480C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x29EDCA190];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_29E704F4C(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_29E704D58((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29E6DAFDC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_29E6DAFDC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_29E704D58((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_29E704D58(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

char *sub_29E704F60(char *result, int64_t a2, char a3, char *a4)
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
    sub_29E705DF4(0, &qword_2A1859810, sub_29E6DD268, MEMORY[0x29EDC9E90]);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x29EDCA190];
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

void sub_29E70509C(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_29E753F18();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v6);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v51 = &v46 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v46 - v14;
  v16 = sub_29E74EFA8();
  v17 = [a2 generateLineSeriesWithColor:v16 timeScope:5];

  v18 = sub_29E74EFD8();
  if (v18 < 0)
  {
    __break(1u);
  }

  else
  {
    v19 = v18;
    v47 = v11;
    v49 = a2;
    v20 = sub_29E754598();
    v21 = sub_29E754598();
    v22 = a1;
    v23 = [objc_opt_self() valueRangeWithMinValue:v20 maxValue:v21];

    v24 = objc_allocWithZone(type metadata accessor for SleepScoreComponentYAxis());
    v25 = sub_29E704170(v19, 10);
    [v17 setYAxis_];

    v26 = objc_opt_self();
    v27 = v23;
    v48 = v23;
    v28 = v23;
    v29 = v17;
    v30 = [v26 ruleWithDefaultAxisBounds:v27 axisBoundsOverrides:0 noDataAxisBounds:v28];
    [v17 setAxisScalingRule_];

    v31 = sub_29E74EFE8();
    (*(*(v31 - 8) + 16))(v15, a3, v31);
    (*(v7 + 104))(v15, *MEMORY[0x29EDC43A0], v6);
    v50 = v7;
    v32 = v15;
    v33 = *(v7 + 16);
    v34 = v51;
    v35 = v32;
    v33(v51);
    [v29 setSeriesDataSourceContext_];
    sub_29E751758();
    v36 = [v22 displayTypeController];
    v37 = [objc_opt_self() appleSleepScoreType];
    v38 = [v36 displayTypeForObjectType_];

    v39 = [v22 chartDataCacheController];
    v46 = v38;
    v40 = [v39 interactiveChartsCacheForDisplayType:v38 timeScope:5];

    if (v40)
    {
      v41 = [objc_allocWithZone(MEMORY[0x29EDC4430]) init];
      [v41 setChartCache_];
      [v29 setDataSource_];
      (v33)(v34, v35, v6);
      v42 = objc_allocWithZone(type metadata accessor for SleepScoreChartTapOutFormatter());
      (v33)(v47, v34, v6);
      v43 = sub_29E753EC8();
      v44 = *(v50 + 8);
      v44(v34, v6);
      v45 = objc_allocWithZone(MEMORY[0x29EDC4700]);
      [v45 initWithGraphSeries:v29 baseDisplayType:v49 valueFormatter:v43 dataTypeCode:341];

      v44(v35, v6);
      return;
    }
  }

  __break(1u);
}

id sub_29E70554C(uint64_t a1, char a2)
{
  v4 = sub_29E754188();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E754168();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  if (a2)
  {
    v11 = sub_29E754198();
    v12 = HKUILocalizedString();

    if (v12)
    {
      sub_29E7541D8();
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    sub_29E754158();
    sub_29E754148();
    v23 = a1;
    sub_29E754128();
    sub_29E754148();
    v23 = sub_29E74EFD8();
    sub_29E754128();
    sub_29E754148();
    sub_29E754178();
    sub_29E65B0B4(v8);
    v14 = v15;
    (*(v5 + 8))(v8, v4);
  }

  v16 = [objc_allocWithZone(MEMORY[0x29EDC4680]) init];
  sub_29E74EFB8();
  v17 = sub_29E754198();

  [v16 setTitle_];

  v18 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v16 setMetricColors_];

  v19 = sub_29E703D80();
  [v16 setSelectedMetricColors_];

  if (v14)
  {
    v20 = sub_29E754198();
  }

  else
  {
    v20 = 0;
  }

  [v16 setValue_];

  [v16 setUnit_];
  return v16;
}

uint64_t sub_29E70588C(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v30 = 0;
  v32 = 0;
  v31 = 0;
  v27 = (a3 >> 63) ^ 0x7FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x29EDCA190];
  for (i = a2; ; a2 = i)
  {
    v6 = result <= a2;
    if (v4 > 0)
    {
      v6 = result >= a2;
    }

    if (v6)
    {
      if ((result != a2) | v30 & 1 || !(v31 & 1 | (v32 != 0x8000000000000000)))
      {
        return v5;
      }

      v30 = 1;
      v7 = result;
    }

    else
    {
      v7 = result + v4;
      if (__OFADD__(result, v4))
      {
        v31 = 0;
        v32 = 0x8000000000000000;
        v7 = v27;
      }

      else
      {
        v32 = 0;
        v31 = 1;
      }
    }

    v37 = result;
    sub_29E704294(&v37, &v36);
    if (v3)
    {
      goto LABEL_44;
    }

    v8 = v36;
    v9 = v36 >> 62;
    v10 = v36 >> 62 ? sub_29E754C98() : *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = v5 >> 62;
    if (v5 >> 62)
    {
      v26 = sub_29E754C98();
      v13 = v26 + v10;
      if (__OFADD__(v26, v10))
      {
LABEL_43:
        __break(1u);
LABEL_44:

        return v5;
      }
    }

    else
    {
      v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v12 + v10;
      if (__OFADD__(v12, v10))
      {
        goto LABEL_43;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v33 = v7;
    if (result)
    {
      if (v11)
      {
        goto LABEL_25;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
      if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v11)
      {
LABEL_25:
        sub_29E754C98();
        goto LABEL_26;
      }

      v14 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    v15 = *(v14 + 16);
LABEL_26:
    result = sub_29E754D98();
    v5 = result;
    v14 = result & 0xFFFFFFFFFFFFFF8;
LABEL_27:
    v34 = v10;
    v16 = *(v14 + 16);
    v17 = *(v14 + 24);
    if (v9)
    {
      break;
    }

    v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_2;
    }

LABEL_31:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_47;
    }

    if (v9)
    {
      if (v18 < 1)
      {
        goto LABEL_49;
      }

      sub_29E705DF4(0, &qword_2A185A358, sub_29E705BFC, MEMORY[0x29EDC9A40]);
      sub_29E705C48();
      for (j = 0; j != v18; ++j)
      {
        v20 = sub_29E6D4D28(v35, j, v8);
        v22 = *v21;
        (v20)(v35, 0);
        *(v14 + 8 * v16 + 32 + 8 * j) = v22;
      }
    }

    else
    {
      sub_29E705BFC();
      swift_arrayInitWithCopy();
    }

    result = v33;
    v4 = a3;
    if (v34 >= 1)
    {
      v23 = *(v14 + 16);
      v24 = __OFADD__(v23, v34);
      v25 = v23 + v34;
      if (v24)
      {
        goto LABEL_48;
      }

      *(v14 + 16) = v25;
    }

LABEL_3:
    ;
  }

  result = sub_29E754C98();
  v18 = result;
  if (result)
  {
    goto LABEL_31;
  }

LABEL_2:

  result = v33;
  if (v34 <= 0)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

unint64_t sub_29E705BFC()
{
  result = qword_2A185A350;
  if (!qword_2A185A350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A185A350);
  }

  return result;
}

unint64_t sub_29E705C48()
{
  result = qword_2A185A360;
  if (!qword_2A185A360)
  {
    sub_29E705DF4(255, &qword_2A185A358, sub_29E705BFC, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A360);
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreComponentOverlayContext()
{
  result = qword_2A185A368;
  if (!qword_2A185A368)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E705D44()
{
  result = sub_29E74EFE8();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E705DB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_29E753E98();
  *a1 = result;
  return result;
}

void sub_29E705DF4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t type metadata accessor for SleepApneaEventPDFSectionProvider()
{
  result = qword_2A185A378;
  if (!qword_2A185A378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E705ECC()
{
  result = sub_29E609CF8(319, &qword_2A185A388);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SleepApneaEventSummaryViewModel();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E705F60(uint64_t a1)
{
  v2[24] = a1;
  v2[25] = v1;
  sub_29E70A6D4(0, &qword_2A185A390, MEMORY[0x29EDC1C50]);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[26] = swift_task_alloc();
  v5 = sub_29E74ED28();
  v2[27] = v5;
  v6 = *(v5 - 8);
  v2[28] = v6;
  v7 = *(v6 + 64) + 15;
  v2[29] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E706068, 0, 0);
}

uint64_t sub_29E706068()
{
  v2 = v0[28];
  v1 = v0[29];
  v3 = v0[27];
  v4 = v0[25];
  sub_29E602E20(v4, (v0 + 2));
  sub_29E609B5C(0, &qword_2A1858550, 0x29EDB9F88);
  v5 = v4 + *(type metadata accessor for SleepApneaEventPDFSectionProvider() + 20);
  v6 = *(type metadata accessor for SleepApneaEventSummaryViewModel() + 20);
  sub_29E74EC68();
  v7 = sub_29E754A08();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  v0[7] = v7;
  v0[8] = v9;
  sub_29E709F88();
  v0[30] = sub_29E750C48();
  sub_29E709FDC((v0 + 2));
  v10 = sub_29E751D08();
  v0[31] = v10;
  v11 = MEMORY[0x29EDC2C70];
  v0[12] = v10;
  v0[13] = v11;
  sub_29E5FEBF4(v0 + 9);
  sub_29E751CF8();
  v12 = swift_task_alloc();
  v0[32] = v12;
  *v12 = v0;
  v12[1] = sub_29E706228;
  v13 = v0[25];

  return sub_29E7068A0((v0 + 14));
}

uint64_t sub_29E706228()
{
  v2 = *(*v1 + 256);
  v5 = *v1;
  *(*v1 + 264) = v0;

  if (v0)
  {
    v3 = sub_29E706790;
  }

  else
  {
    v3 = sub_29E70633C;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E70633C()
{
  v1 = v0[31];
  v2 = v0[26];
  v3 = swift_task_alloc();
  *(v3 + 16) = v0 + 9;
  *(v3 + 24) = v0 + 14;
  v4 = MEMORY[0x29EDC2C70];
  v0[22] = v1;
  v0[23] = v4;
  sub_29E5FEBF4(v0 + 19);
  sub_29E751CE8();

  v5 = sub_29E750488();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  v6 = *(MEMORY[0x29EDC1B38] + 4);
  v7 = swift_task_alloc();
  v0[34] = v7;
  *v7 = v0;
  v7[1] = sub_29E706488;
  v8 = v0[30];

  return MEMORY[0x2A1C60DE8]();
}

uint64_t sub_29E706488(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 272);
  v6 = *v2;
  *(*v2 + 280) = v1;

  if (v1)
  {
    sub_29E70A038(*(v4 + 208));
    v7 = sub_29E706810;
  }

  else
  {
    *(v4 + 288) = a1;
    v7 = sub_29E7065B8;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

uint64_t sub_29E7065B8()
{
  v1 = v0[30];
  v2 = v0[31];
  v3 = v0[29];
  v4 = v0[26];
  v5 = v0[24];
  if (v0[36])
  {
    v6 = v0[36];
  }

  sub_29E70A200(0, &qword_2A1858F38, MEMORY[0x29EDC9E90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_29E762F30;
  sub_29E602E20((v0 + 19), v7 + 32);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_29E762F30;
  v9 = MEMORY[0x29EDC2C70];
  *(v8 + 56) = v2;
  *(v8 + 64) = v9;
  sub_29E5FEBF4((v8 + 32));
  sub_29E751CF8();
  sub_29E7504C8();

  sub_29E5FECBC(v0 + 19);
  sub_29E5FECBC(v0 + 14);
  sub_29E5FECBC(v0 + 9);
  v10 = sub_29E7504D8();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_29E706790()
{
  v1 = v0[30];

  sub_29E5FECBC(v0 + 9);
  v2 = v0[33];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_29E706810()
{
  v1 = v0[30];

  sub_29E5FECBC(v0 + 19);
  sub_29E5FECBC(v0 + 14);
  sub_29E5FECBC(v0 + 9);
  v2 = v0[35];
  v3 = v0[29];
  v4 = v0[26];

  v5 = v0[1];

  return v5();
}

uint64_t sub_29E7068A0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = swift_task_alloc();
  v2[14] = v3;
  *v3 = v2;
  v3[1] = sub_29E706938;

  return sub_29E707E2C((v2 + 2));
}

uint64_t sub_29E706938()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  v3[15] = v0;

  if (v0)
  {

    return MEMORY[0x2A1C73D48](sub_29E706C98, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[16] = v4;
    *v4 = v3;
    v4[1] = sub_29E706AAC;
    v5 = v3[13];

    return sub_29E708B0C((v3 + 7));
  }
}

uint64_t sub_29E706AAC()
{
  v2 = *(*v1 + 128);
  v5 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = sub_29E706CB0;
  }

  else
  {
    v3 = sub_29E706BC0;
  }

  return MEMORY[0x2A1C73D48](v3, 0, 0);
}

uint64_t sub_29E706BC0()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  *(v2 + 16) = v0 + 7;
  *(v2 + 24) = v0 + 2;
  v3 = sub_29E751D08();
  v4 = MEMORY[0x29EDC2C70];
  v1[3] = v3;
  v1[4] = v4;
  sub_29E5FEBF4(v1);
  sub_29E751CF8();

  sub_29E5FECBC(v0 + 7);
  sub_29E5FECBC(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_29E706CB0()
{
  sub_29E5FECBC(v0 + 2);
  v1 = v0[17];
  v2 = v0[1];

  return v2();
}

uint64_t sub_29E706D14()
{
  sub_29E70A6D4(0, &qword_2A1858F58, MEMORY[0x29EDC2C48]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v3 = &v16[-1] - v2;
  v4 = sub_29E751CA8();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = sub_29E751C88();
  v7 = *(*(v6 - 8) + 56);
  v7(v3, 1, 1, v6);
  sub_29E7505B8();
  sub_29E751C98();
  v8 = sub_29E751CD8();
  v9 = MEMORY[0x29EDC2C50];
  v17 = v8;
  v18 = MEMORY[0x29EDC2C50];
  sub_29E5FEBF4(v16);
  sub_29E751CC8();
  v10 = sub_29E750B38();
  sub_29E5FECBC(v16);
  v7(v3, 1, 1, v6);
  sub_29E7505B8();
  sub_29E751C98();
  v17 = v8;
  v18 = v9;
  sub_29E5FEBF4(v16);
  sub_29E751CC8();
  v11 = sub_29E750B38();
  sub_29E5FECBC(v16);
  sub_29E70A18C();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_29E762F40;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  v13 = MEMORY[0x29ED93440]();

  return v13;
}

uint64_t sub_29E706F54()
{
  v0 = sub_29E751D08();
  v1 = MEMORY[0x29EDC2C70];
  v9 = v0;
  v10 = MEMORY[0x29EDC2C70];
  sub_29E5FEBF4(v8);
  sub_29E751CF8();
  v2 = sub_29E750B38();
  sub_29E5FECBC(v8);
  v9 = v0;
  v10 = v1;
  sub_29E5FEBF4(v8);
  sub_29E751CF8();
  v3 = sub_29E750B38();
  sub_29E5FECBC(v8);
  v9 = v0;
  v10 = v1;
  sub_29E5FEBF4(v8);
  sub_29E751CF8();
  v4 = sub_29E750B38();
  sub_29E5FECBC(v8);
  sub_29E70A18C();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_29E764170;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
  *(v5 + 48) = v4;
  v6 = MEMORY[0x29ED93440]();

  return v6;
}

uint64_t sub_29E7070A0()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_29E750568();
  v6 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v7 = sub_29E754198();
  v21 = v0;
  v8 = v7;

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v9 = sub_29E754068();

  v10 = [v6 initWithString:v8 attributes:v9];

  v11 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v23 = v11;
  v24 = MEMORY[0x29EDC2CE0];
  v22[0] = v10;
  v12 = sub_29E750B38();
  sub_29E5FECBC(v22);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v5(v4, v21);
  sub_29E750588();
  v13 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v14 = sub_29E754198();

  v15 = sub_29E754068();

  v16 = [v13 initWithString:v14 attributes:v15];

  v23 = v11;
  v24 = MEMORY[0x29EDC2CE0];
  v22[0] = v16;
  v17 = sub_29E750B38();
  sub_29E5FECBC(v22);
  sub_29E70A18C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E762F40;
  *(v18 + 32) = v12;
  *(v18 + 40) = v17;
  v19 = MEMORY[0x29ED93440]();

  return v19;
}

uint64_t sub_29E707440()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v22[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  v5 = *(v1 + 8);
  v5(v4, v0);
  sub_29E750568();
  v6 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v7 = sub_29E754198();
  v21 = v0;
  v8 = v7;

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v9 = sub_29E754068();

  v10 = [v6 initWithString:v8 attributes:v9];

  v11 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v23 = v11;
  v24 = MEMORY[0x29EDC2CE0];
  v22[0] = v10;
  v12 = sub_29E750B38();
  sub_29E5FECBC(v22);
  sub_29E74F8A8();
  sub_29E74F7C8();
  v5(v4, v21);
  sub_29E750588();
  v13 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v14 = sub_29E754198();

  v15 = sub_29E754068();

  v16 = [v13 initWithString:v14 attributes:v15];

  v23 = v11;
  v24 = MEMORY[0x29EDC2CE0];
  v22[0] = v16;
  v17 = sub_29E750B38();
  sub_29E5FECBC(v22);
  sub_29E70A18C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_29E762F40;
  *(v18 + 32) = v12;
  *(v18 + 40) = v17;
  v19 = MEMORY[0x29ED93440]();

  return v19;
}

uint64_t sub_29E7077E0()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v15[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  sub_29E750568();
  v5 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v6 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v7 = sub_29E754068();

  v8 = [v5 initWithString:v6 attributes:v7];

  v16 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v17 = MEMORY[0x29EDC2CE0];
  v15[0] = v8;
  v9 = sub_29E750B38();
  sub_29E5FECBC(v15);
  v16 = sub_29E751D08();
  v17 = MEMORY[0x29EDC2C70];
  sub_29E5FEBF4(v15);
  sub_29E751CF8();
  v10 = sub_29E750B38();
  sub_29E5FECBC(v15);
  sub_29E70A18C();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_29E762F40;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v12 = MEMORY[0x29ED93440]();

  return v12;
}

void sub_29E707AAC()
{
  v0 = sub_29E74F8B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x2A1C7C4A8](v0);
  v4 = &v21[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v1 + 8))(v4, v0);
  sub_29E750588();
  v6 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v7 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v8 = sub_29E754068();

  v9 = [v6 initWithString:v7 attributes:v8];

  v22 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v23 = MEMORY[0x29EDC2CE0];
  v21[0] = v9;
  v10 = sub_29E750B38();
  sub_29E5FECBC(v21);
  v11 = v5;
  v12 = sub_29E754198();
  v13 = [objc_opt_self() imageNamed:v12 inBundle:v11];

  if (v13)
  {
    sub_29E750538();
    v14 = *MEMORY[0x29EDC80C8];
    v15 = *(MEMORY[0x29EDC80C8] + 8);
    v16 = *(MEMORY[0x29EDC80C8] + 16);
    v17 = *(MEMORY[0x29EDC80C8] + 24);
    v22 = sub_29E751C18();
    v23 = MEMORY[0x29EDC2C28];
    sub_29E5FEBF4(v21);
    sub_29E751C08();
    v18 = sub_29E750B38();
    sub_29E5FECBC(v21);
    sub_29E70A18C();
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_29E762F40;
    *(v19 + 32) = v10;
    *(v19 + 40) = v18;
    MEMORY[0x29ED93440]();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E707E2C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_29E74F8B8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_29E74ED28();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_29E70A278(0, &qword_2A185A3E0, &qword_2A185A3E8, 0x29EDBAD10, MEMORY[0x29EDBA238]);
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E70802C, 0, 0);
}

uint64_t sub_29E70802C()
{
  v29 = *(v0 + 120);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v27 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = MEMORY[0x29EDBA210];
  sub_29E70A358(0, &qword_2A185A3F0, &qword_2A185A3F8, MEMORY[0x29EDBA210]);
  sub_29E70A278(0, &qword_2A185A3F8, &qword_2A185A3E8, 0x29EDBAD10, v4);
  v6 = *(*(v5 - 8) + 72);
  v26 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E609B5C(0, &qword_2A1A7BDB0, 0x29EDBAD20);
  v7 = MEMORY[0x29ED97000](*MEMORY[0x29EDBA850]);
  v8 = objc_opt_self();
  v9 = *(type metadata accessor for SleepApneaEventPDFSectionProvider() + 20);
  *(v0 + 152) = v9;
  v10 = v3 + v9;
  v28 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v11 = *(v28 + 20);
  sub_29E74EC68();
  v12 = sub_29E74EC98();
  (*(v2 + 8))(v1, v27);
  v13 = sub_29E74EC98();
  v14 = [v8 predicateForSamplesWithStartDate:v12 endDate:v13 options:0];

  sub_29E609B5C(0, &qword_2A185A3E8, 0x29EDBAD10);
  sub_29E753F88();

  v15 = MEMORY[0x29EDB9980];
  sub_29E70A358(0, &qword_2A185A400, &qword_2A185A408, MEMORY[0x29EDB9980]);
  sub_29E70A278(0, &qword_2A185A408, &qword_2A185A3E8, 0x29EDBAD10, v15);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED91220](KeyPath, 1);
  sub_29E753FA8();
  v20 = *(v10 + *(v28 + 24));
  v21 = *(MEMORY[0x29EDBA230] + 4);
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  *v22 = v0;
  v22[1] = sub_29E7083F4;
  v23 = *(v0 + 120);
  v24 = *(v0 + 104);

  return MEMORY[0x2A1C5B578](v20, v24);
}

uint64_t sub_29E7083F4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  *(*v2 + 136) = v1;

  if (v1)
  {
    v7 = sub_29E708A64;
  }

  else
  {
    *(v4 + 144) = a1;
    v7 = sub_29E70851C;
  }

  return MEMORY[0x2A1C73D48](v7, 0, 0);
}

size_t sub_29E70851C()
{
  v1 = *(v0 + 24);
  v2 = sub_29E709A80(*(v0 + 144));

  if (v2 >> 62)
  {
    v3 = sub_29E754C98();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x29EDCA190];
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v4 = v2;
  v53 = MEMORY[0x29EDCA190];
  result = sub_29E6DBD84(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v6 = *(v0 + 88);
  v7 = *(v0 + 32);
  v47 = *(v0 + 40);
  v8 = v53;
  v9 = objc_opt_self();
  v10 = 0;
  v11 = v4;
  v43 = v4 & 0xC000000000000001;
  v45 = v9;
  v12 = (v6 + 16);
  v49 = v3;
  v51 = v11;
  do
  {
    if (v43)
    {
      v13 = MEMORY[0x29ED976A0](v10);
    }

    else
    {
      v13 = *(v11 + 8 * v10 + 32);
    }

    v14 = v13;
    v15 = *(v0 + 80);
    v16 = *(v0 + 48);
    v17 = [v13 quantity];
    v18 = [v45 countUnit];
    [v17 doubleValueForUnit_];
    v20 = v19;

    v21 = [v14 endDate];
    sub_29E74ECD8();

    *(v16 + *(v7 + 20)) = v20;
    (*v12)(v16 + *(v7 + 24), v16, v15);
    v23 = *(v53 + 16);
    v22 = *(v53 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_29E6DBD84(v22 > 1, v23 + 1, 1);
    }

    v24 = *(v0 + 48);
    ++v10;
    *(v53 + 16) = v23 + 1;
    sub_29E70A3C4(v24, v53 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v23, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChartPoint);
    v11 = v51;
  }

  while (v49 != v10);

LABEL_14:
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v42 = *(v0 + 152);
  v44 = *(v0 + 112);
  v46 = *(v0 + 104);
  v48 = *(v0 + 120);
  v25 = *(v0 + 64);
  v26 = *(v0 + 72);
  v27 = *(v0 + 56);
  v50 = *(v0 + 96);
  v52 = *(v0 + 48);
  v28 = *(v0 + 16);
  v41 = *(v0 + 24);
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v25 + 8))(v26, v27);
  sub_29E750578();
  v29 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v30 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v31 = sub_29E754068();

  v32 = [v29 initWithString:v30 attributes:v31];

  v28[3] = &type metadata for SleepApneaEventPDFChartRenderable;
  v28[4] = sub_29E6EC3E0();
  v33 = swift_allocObject();
  *v28 = v33;
  v34 = type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart();
  v33[10] = v34;
  v33[11] = sub_29E70A42C(&qword_2A1858E98, type metadata accessor for SleepApneaEventPDFBreathingDisturbancesChart);
  v35 = sub_29E5FEBF4(v33 + 7);
  sub_29E5FEC58(v41 + v42, v35 + v34[5]);
  *v35 = v8;
  v36 = v35 + v34[6];
  *v36 = 0x4085680000000000;
  v36[8] = 0;
  v37 = v35 + v34[7];
  *v37 = 0x4064000000000000;
  v37[8] = 0;
  v38 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v39 = MEMORY[0x29EDC2CE0];
  v33[5] = v38;
  v33[6] = v39;
  v33[2] = v32;
  (*(v44 + 8))(v48, v46);

  v40 = *(v0 + 8);

  return v40();
}

uint64_t sub_29E708A64()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v4 = v0[1];
  v5 = v0[17];

  return v4();
}

uint64_t sub_29E708B0C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SleepApneaEventPDFAlertsChartPoint();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = sub_29E74F8B8();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = sub_29E74ED28();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  sub_29E70A278(0, &qword_2A185A3A8, &qword_2A185A3B0, 0x29EDBAA60, MEMORY[0x29EDBA238]);
  v2[13] = v12;
  v13 = *(v12 - 8);
  v2[14] = v13;
  v14 = *(v13 + 64) + 15;
  v2[15] = swift_task_alloc();

  return MEMORY[0x2A1C73D48](sub_29E708D0C, 0, 0);
}

uint64_t sub_29E708D0C()
{
  v29 = *(v0 + 120);
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v27 = *(v0 + 80);
  v3 = *(v0 + 24);
  v4 = MEMORY[0x29EDBA210];
  sub_29E70A2E0(0, &qword_2A185A3B8, &qword_2A185A3C0, MEMORY[0x29EDBA210]);
  sub_29E70A278(0, &qword_2A185A3C0, &qword_2A185A3B0, 0x29EDBAA60, v4);
  v6 = *(*(v5 - 8) + 72);
  v26 = (*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  sub_29E609B5C(0, &qword_2A1A7BDB8, 0x29EDBAA68);
  v7 = MEMORY[0x29ED96FF0](*MEMORY[0x29EDBA4D8]);
  v8 = objc_opt_self();
  v9 = *(type metadata accessor for SleepApneaEventPDFSectionProvider() + 20);
  *(v0 + 152) = v9;
  v10 = v3 + v9;
  v28 = type metadata accessor for SleepApneaEventSummaryViewModel();
  v11 = *(v28 + 20);
  sub_29E74EC68();
  v12 = sub_29E74EC98();
  (*(v2 + 8))(v1, v27);
  v13 = sub_29E74EC98();
  v14 = [v8 predicateForSamplesWithStartDate:v12 endDate:v13 options:0];

  sub_29E609B5C(0, &qword_2A185A3B0, 0x29EDBAA60);
  sub_29E753F88();

  v15 = MEMORY[0x29EDB9980];
  sub_29E70A2E0(0, &qword_2A185A3C8, &qword_2A185A3D0, MEMORY[0x29EDB9980]);
  sub_29E70A278(0, &qword_2A185A3D0, &qword_2A185A3B0, 0x29EDBAA60, v15);
  v17 = *(*(v16 - 8) + 72);
  v18 = (*(*(v16 - 8) + 80) + 32) & ~*(*(v16 - 8) + 80);
  *(swift_allocObject() + 16) = xmmword_29E762F30;
  KeyPath = swift_getKeyPath();
  MEMORY[0x29ED91220](KeyPath, 0);
  sub_29E753FA8();
  v20 = *(v10 + *(v28 + 24));
  v21 = *(MEMORY[0x29EDBA230] + 4);
  v22 = swift_task_alloc();
  *(v0 + 128) = v22;
  *v22 = v0;
  v22[1] = sub_29E7090D4;
  v23 = *(v0 + 120);
  v24 = *(v0 + 104);

  return MEMORY[0x2A1C5B578](v20, v24);
}

uint64_t sub_29E7090D4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = sub_29E7096CC;
  }

  else
  {
    v5 = sub_29E7091E8;
  }

  return MEMORY[0x2A1C73D48](v5, 0, 0);
}

size_t sub_29E7091E8()
{
  v1 = *(v0 + 136);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v20 = *(v0 + 136);
    }

    v2 = sub_29E754C98();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_15:
    v21 = *(v0 + 136);

    v7 = MEMORY[0x29EDCA190];
    goto LABEL_16;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_15;
  }

LABEL_3:
  v48 = MEMORY[0x29EDCA190];
  result = sub_29E6DBDD4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = v48;
  v42 = *(v0 + 136) + 32;
  v44 = v1 & 0xC000000000000001;
  v8 = (*(v0 + 88) + 16);
  v46 = v2;
  do
  {
    if (v44)
    {
      v9 = MEMORY[0x29ED976A0](v4, *(v0 + 136));
    }

    else
    {
      v9 = *(v42 + 8 * v4);
    }

    v10 = v9;
    v11 = *(v0 + 80);
    v12 = *(v0 + 48);
    v13 = [v9 startDate];
    v14 = v12 + *(v6 + 20);
    sub_29E74ECD8();

    v15 = [v10 endDate];
    sub_29E74ECD8();

    (*v8)(v12 + *(v6 + 24), v12, v11);
    v17 = *(v48 + 16);
    v16 = *(v48 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_29E6DBDD4(v16 > 1, v17 + 1, 1);
    }

    v18 = *(v0 + 48);
    ++v4;
    *(v48 + 16) = v17 + 1;
    sub_29E70A3C4(v18, v48 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v17, type metadata accessor for SleepApneaEventPDFAlertsChartPoint);
  }

  while (v46 != v4);
  v19 = *(v0 + 136);

LABEL_16:
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 112);
  v41 = *(v0 + 104);
  v43 = *(v0 + 120);
  v23 = *(v0 + 64);
  v22 = *(v0 + 72);
  v24 = *(v0 + 56);
  v45 = *(v0 + 96);
  v47 = *(v0 + 48);
  v25 = *(v0 + 16);
  v38 = *(v0 + 24);
  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v23 + 8))(v22, v24);
  sub_29E750578();
  v26 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v27 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v28 = sub_29E754068();

  v29 = [v26 initWithString:v27 attributes:v28];

  v25[3] = &type metadata for SleepApneaEventPDFChartRenderable;
  v25[4] = sub_29E6EC3E0();
  v30 = swift_allocObject();
  *v25 = v30;
  v31 = type metadata accessor for SleepApneaEventPDFAlertsChart();
  v30[10] = v31;
  v30[11] = sub_29E70A42C(&qword_2A185A3D8, type metadata accessor for SleepApneaEventPDFAlertsChart);
  v32 = sub_29E5FEBF4(v30 + 7);
  sub_29E5FEC58(v38 + v39, v32);
  *(v32 + v31[5]) = v7;
  v33 = v32 + v31[6];
  *v33 = 0x4085680000000000;
  v33[8] = 0;
  v34 = v32 + v31[7];
  *v34 = 0x4034000000000000;
  v34[8] = 0;
  v35 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v36 = MEMORY[0x29EDC2CE0];
  v30[5] = v35;
  v30[6] = v36;
  v30[2] = v29;
  (*(v40 + 8))(v43, v41);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_29E7096CC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[6];
  (*(v0[14] + 8))(v0[15], v0[13]);

  v4 = v0[1];
  v5 = v0[18];

  return v4();
}

uint64_t sub_29E709774(uint64_t a1, uint64_t a2)
{
  v4 = sub_29E74F8B8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74F8A8();
  sub_29E74F7C8();
  (*(v5 + 8))(v8, v4);
  sub_29E750568();
  v9 = objc_allocWithZone(MEMORY[0x29EDB9F30]);
  v10 = sub_29E754198();

  type metadata accessor for Key(0);
  sub_29E70A42C(&qword_2A1856640, type metadata accessor for Key);
  v11 = sub_29E754068();

  v12 = [v9 initWithString:v10 attributes:v11];

  v21 = sub_29E609B5C(0, &qword_2A185A3A0, 0x29EDB9F30);
  v22 = MEMORY[0x29EDC2CE0];
  v20[0] = v12;
  v13 = sub_29E750B38();
  sub_29E5FECBC(v20);
  sub_29E70A200(0, &qword_2A1858F38, MEMORY[0x29EDC9E90]);
  v14 = swift_allocObject();
  v19 = xmmword_29E762F40;
  *(v14 + 16) = xmmword_29E762F40;
  sub_29E602E20(a1, v14 + 32);
  sub_29E602E20(a2, v14 + 72);
  v21 = &type metadata for SleepApneaEventPDFChartSectionRenderable;
  v22 = sub_29E603664();
  v20[0] = v14;
  v15 = sub_29E750B38();
  sub_29E5FECBC(v20);
  sub_29E70A18C();
  v16 = swift_allocObject();
  *(v16 + 16) = v19;
  *(v16 + 32) = v13;
  *(v16 + 40) = v15;
  v17 = MEMORY[0x29ED93440]();

  return v17;
}

id sub_29E709A80(unint64_t a1)
{
  v2 = sub_29E74EE78();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x2A1C7C4A8](v2);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_26:
    v26 = v5;
    v8 = sub_29E754C98();
    v5 = v26;
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x29EDCA190];
  if (!v8)
  {
    return v9;
  }

  v33 = a1 & 0xC000000000000001;
  v27 = v3;
  v28 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x29ED976A0](0, a1);
    v29 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_7:
    v35 = v9;
    v11 = [objc_opt_self() hk_gregorianCalendar];
    sub_29E74EE28();

    v12 = 0;
    v3 = &off_29F370000;
    v31 = v7;
    v32 = v8;
    v13 = v10;
    v30 = a1;
    do
    {
      if (v33)
      {
        v5 = MEMORY[0x29ED976A0](v12, a1);
      }

      else
      {
        if (v12 >= *(v29 + 16))
        {
          goto LABEL_25;
        }

        v5 = *(a1 + 8 * v12 + 32);
      }

      v34 = v5;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
      result = [v13 v3[360]];
      if (!result)
      {
        __break(1u);
LABEL_31:
        __break(1u);
        return result;
      }

      v18 = result;
      v19 = sub_29E74EE08();
      v20 = [v18 0x1FBD87CC3];

      v21 = v3;
      result = [v34 v3[360]];
      if (!result)
      {
        goto LABEL_31;
      }

      v22 = result;
      v23 = sub_29E74EE08();
      v24 = [v22 0x1FBD87CC3];

      if (v20 == v24)
      {
        v14 = v34;
        v13 = sub_29E70A474(v16, v34);
      }

      else
      {
        v14 = v16;
        MEMORY[0x29ED96CE0]();
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v25 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_29E754418();
        }

        sub_29E754438();
        v13 = v34;
      }

      v3 = v21;

      ++v12;
      v7 = v31;
      a1 = v30;
    }

    while (v15 != v32);
    v3 = v13;
    MEMORY[0x29ED96CE0]();
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  v29 = a1 & 0xFFFFFFFFFFFFFF8;
  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(a1 + 32);
    goto LABEL_7;
  }

  __break(1u);
LABEL_29:
  sub_29E754418();
LABEL_22:
  sub_29E754438();

  (v27[1])(v7, v28);
  return v35;
}

void sub_29E709E18(id *a1)
{
  v1 = [*a1 endDate];
  sub_29E74ECD8();
}

uint64_t sub_29E709E78()
{
  v0 = sub_29E750B38();
  v1 = sub_29E750B38();
  sub_29E70A18C();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_29E762F40;
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = MEMORY[0x29ED93440]();

  return v3;
}

uint64_t sub_29E709EF0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_29E605728;

  return sub_29E705F60(a1);
}

unint64_t sub_29E709F88()
{
  result = qword_2A185A398;
  if (!qword_2A185A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A185A398);
  }

  return result;
}

uint64_t sub_29E70A030()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_29E709E78();
}

uint64_t sub_29E70A038(uint64_t a1)
{
  sub_29E70A6D4(0, &qword_2A185A390, MEMORY[0x29EDC1C50]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E70A0B0()
{
  sub_29E750558();
  v0 = sub_29E750548();
  v1 = [v0 CGColor];

  v6[3] = sub_29E750DA8();
  v6[4] = MEMORY[0x29EDC2290];
  sub_29E5FEBF4(v6);
  sub_29E750D98();
  v2 = sub_29E750B38();
  sub_29E5FECBC(v6);
  sub_29E70A18C();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_29E762F30;
  *(v3 + 32) = v2;
  v4 = MEMORY[0x29ED93440]();

  return v4;
}

void sub_29E70A18C()
{
  if (!qword_2A1858F48)
  {
    sub_29E70A200(255, &qword_2A1858F50, MEMORY[0x29EDC9A40]);
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1858F48);
    }
  }
}