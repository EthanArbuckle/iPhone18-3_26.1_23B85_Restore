unint64_t sub_1BAF61B7C()
{
  result = qword_1EBC36E00;
  if (!qword_1EBC36E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E00);
  }

  return result;
}

uint64_t _s12APFoundation16JSONParsingErrorO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  v6 = *(a2 + 16);
  if ((a1[2] & 1) == 0)
  {
    if ((a2[2] & 1) == 0)
    {
      v12 = *a1;
      if (v3 != v5 || v2 != v4)
      {
        goto LABEL_14;
      }

      goto LABEL_15;
    }

LABEL_9:
    v9 = *a2;
    v10 = a2[1];
    sub_1BAF61E1C();
    sub_1BAF61E1C();
    sub_1BAF61E24();
    sub_1BAF61E24();
    return 0;
  }

  if ((a2[2] & 1) == 0)
  {
    goto LABEL_9;
  }

  v7 = *a1;
  if (v3 != v5 || v2 != v4)
  {
LABEL_14:
    v14 = sub_1BAF8F4C8();
    sub_1BAF61E1C();
    sub_1BAF61E1C();
    sub_1BAF61E24();
    sub_1BAF61E24();
    return v14 & 1;
  }

LABEL_15:
  sub_1BAF61E1C();
  sub_1BAF61E1C();
  sub_1BAF61E24();
  sub_1BAF61E24();
  return 1;
}

unint64_t sub_1BAF61DAC()
{
  result = qword_1EBC36E08;
  if (!qword_1EBC36E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E08);
  }

  return result;
}

uint64_t OSInstallation.hashValue.getter(char a1)
{
  sub_1BAF8F5A8();
  MEMORY[0x1BFB05110](a1 & 1);
  return sub_1BAF8F5E8();
}

unint64_t sub_1BAF61EB0()
{
  result = qword_1EBC36E10;
  if (!qword_1EBC36E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E10);
  }

  return result;
}

void *DatabaseQueueStore.__allocating_init(database:tableName:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  type metadata accessor for DatabaseManager();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  v8[2] = v9;
  v8[3] = a2;
  v8[4] = a3;
  return v8;
}

void *DatabaseQueueStore.init(database:tableName:log:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DatabaseManager();
  v9 = swift_allocObject();
  *(v9 + 16) = a4;
  *(v9 + 24) = a1;
  v4[2] = v9;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

uint64_t sub_1BAF62004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = v4;
  v9[4] = a2;
  v9[5] = a3;

  sub_1BAF5FDB8(sub_1BAF62E4C, v9);
}

void sub_1BAF620B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v8 = *(*a2 + 80);
  v9 = *(v7 + 88);
  v10 = *(v7 + 96);
  type metadata accessor for QueueMessage();
  v11 = sub_1BAF8EF28();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1BFB04740](&v13, v11, WitnessTable);
  sub_1BAF8F378();
  swift_getWitnessTable();
  sub_1BAF8EE88();

  sub_1BAF6226C(a3, a4);
  if (v4)
  {
  }
}

void sub_1BAF62234(void *a1)
{
  sub_1BAF62A30(a1, 0);
  if (v1)
  {
  }
}

uint64_t sub_1BAF6226C(uint64_t a1, uint64_t a2)
{
  sub_1BAF8F268();

  strcpy(v12, "DELETE FROM ");
  BYTE5(v12[1]) = 0;
  HIWORD(v12[1]) = -5120;
  MEMORY[0x1BFB048C0](v2[3], v2[4]);
  MEMORY[0x1BFB048C0](0x6920455245485720, 0xEB000000003F3D64);
  v6 = v12[0];
  v5 = v12[1];
  v7 = v2[2];
  sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BAF95190;
  *(inited + 56) = MEMORY[0x1E69E6158];
  *(inited + 64) = &protocol witness table for String;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  LOBYTE(v7) = sub_1BADC826C(v6, v5, inited);

  swift_setDeallocating();
  v9 = *(inited + 16);
  sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
  result = swift_arrayDestroy();
  if ((v7 & 1) == 0)
  {
    sub_1BAF62E6C();
    swift_allocError();
    *v11 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1BAF62400@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1BAF8F268();

  strcpy(v13, "SELECT * FROM ");
  HIBYTE(v13[1]) = -18;
  MEMORY[0x1BFB048C0](v1[3], v1[4]);
  MEMORY[0x1BFB048C0](0xD000000000000016, 0x80000001BAFA31D0);
  v5 = v13[0];
  v4 = v13[1];
  v6 = sub_1BAF8E368();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v9 = sub_1BAF8E358();
  v10 = v1[2];
  v11 = swift_allocObject();
  v11[2] = v3[10];
  v11[3] = v3[11];
  v11[4] = v3[12];
  v11[5] = v9;
  type metadata accessor for QueueMessage();

  sub_1BAF5F1D0(v5, v4, 0, sub_1BAF62EC0, v11, a1);
}

uint64_t sub_1BAF625B0@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v54 = a5;
  v55 = a6;
  v59 = a2;
  v60 = a3;
  v56 = *(a3 - 8);
  v57 = a4;
  v8 = *(v56 + 64);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v50 - v12;
  v14 = sub_1BAF8EC78();
  v58 = *(v14 - 8);
  v15 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v19 = a1[4];
  sub_1BADC8524(a1, v18);
  result = (*(v19 + 80))(4, v18, v19);
  if (!v6)
  {
    v21 = a1;
    v52 = v11;
    v53 = 0;
    v22 = v60;
    sub_1BAF8EC68();
    v23 = sub_1BAF8EC48();
    v25 = v24;

    (*(v58 + 8))(v17, v14);
    if (v25 >> 60 == 15)
    {
      sub_1BAF62E6C();
      swift_allocError();
      *v26 = 1;
      return swift_willThrow();
    }

    else
    {
      v27 = v13;
      v28 = v22;
      v29 = v53;
      sub_1BAF8E348();
      if (v29)
      {
        return sub_1BAF3B72C(v23, v25);
      }

      else
      {
        v58 = v23;
        v59 = v25;
        v30 = v21;
        v31 = v21[3];
        v32 = v30[4];
        sub_1BADC8524(v30, v31);
        v33 = (*(v32 + 80))(0, v31, v32);
        v51 = v34;
        v35 = v30[3];
        v36 = v30[4];
        sub_1BADC8524(v30, v35);
        v37 = (*(v36 + 88))(3, v35, v36);
        v39 = v38;
        v40 = v30;
        v41 = v30[3];
        v42 = v30[4];
        sub_1BADC8524(v40, v41);
        v43 = (*(v42 + 80))(2, v41, v42);
        v53 = 0;
        v44 = v43;
        v46 = v45;
        sub_1BAF3B72C(v58, v59);
        v47 = v52;
        (*(v56 + 32))(v52, v27, v28);
        v48 = v55;
        sub_1BAF4FD60(v33, v51, v37, v39, v44, v46, v47, v28, v55);
        v49 = type metadata accessor for QueueMessage();
        return (*(*(v49 - 8) + 56))(v48, 0, 1, v49);
      }
    }
  }

  return result;
}

uint64_t sub_1BAF62A30(void *a1, char a2)
{
  v4 = v2;
  v7 = *v4;
  v8 = sub_1BAF8EC78();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1BAF8F268();
  MEMORY[0x1BFB048C0](0x4920545245534E49, 0xEC000000204F544ELL);
  v10 = v4[3];
  v11 = v4[4];
  MEMORY[0x1BFB048C0](v10, v11);
  if (a2)
  {
    v12 = " (id, position, type, assignedListener, payload)\nVALUES (?,(SELECT COALESCE(MAX(position), 0) + 1 FROM ";
  }

  else
  {
    v12 = " (id, position, type, assignedListener, payload)\nVALUES (?,(SELECT COALESCE(MIN(position), 0) - 1 FROM ";
  }

  MEMORY[0x1BFB048C0](0xD000000000000067, (v12 - 32) | 0x8000000000000000);
  MEMORY[0x1BFB048C0](v10, v11);
  MEMORY[0x1BFB048C0](0x293F2C3F2C3F2C29, 0xE90000000000003BLL);
  v13 = sub_1BAF8E398();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_1BAF8E388();
  v17 = v7[10];
  v16 = v7[11];
  v18 = v7[12];
  v19 = type metadata accessor for QueueMessage();
  v20 = *(v19 + 48);
  v21 = sub_1BAF8E378();
  if (v3)
  {

    sub_1BAF62E6C();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  else
  {
    v24 = v22;
    v25 = v21;
    sub_1BAF8EC68();
    v48 = v24;
    v47 = sub_1BAF8EC58();
    v27 = v26;
    sub_1BAF2DB10(&unk_1EBC36CB0, &unk_1BAF97CD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BAF97CC0;
    v29 = a1[1];
    *(inited + 32) = *a1;
    v30 = MEMORY[0x1E69E6158];
    v31 = &protocol witness table for String;
    *(inited + 56) = MEMORY[0x1E69E6158];
    *(inited + 64) = &protocol witness table for String;
    *(inited + 40) = v29;
    v32 = a1[2];
    v33 = a1[3];
    *(inited + 96) = v30;
    *(inited + 104) = &protocol witness table for String;
    *(inited + 72) = v32;
    *(inited + 80) = v33;
    v34 = (a1 + *(v19 + 52));
    v35 = v34[1];
    if (v35)
    {
      v36 = *v34;
      v37 = v35;
      v38 = MEMORY[0x1E69E6158];
    }

    else
    {
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v31 = 0;
      *(inited + 128) = 0;
    }

    *(inited + 112) = v36;
    *(inited + 120) = v37;
    *(inited + 136) = v38;
    *(inited + 144) = v31;
    if (v27)
    {
      v39 = &protocol witness table for String;
      v40 = MEMORY[0x1E69E6158];
      v41 = v47;
    }

    else
    {
      v41 = 0;
      v40 = 0;
      v39 = 0;
      *(inited + 168) = 0;
    }

    *(inited + 152) = v41;
    *(inited + 160) = v27;
    *(inited + 176) = v40;
    *(inited + 184) = v39;
    v42 = v4[2];

    v43 = sub_1BADC826C(0, 0xE000000000000000, inited);

    swift_setDeallocating();
    v44 = *(inited + 16);
    sub_1BAF2DB10(&qword_1EBC36760, &qword_1BAF955B0);
    swift_arrayDestroy();
    if ((v43 & 1) == 0)
    {
      sub_1BAF62E6C();
      swift_allocError();
      *v45 = 0;
      swift_willThrow();
    }

    sub_1BAF2DABC(v25, v48);
  }
}

unint64_t sub_1BAF62E6C()
{
  result = qword_1EBC36E18;
  if (!qword_1EBC36E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E18);
  }

  return result;
}

uint64_t DatabaseQueueStore.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t DatabaseQueueStore.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1BAF63160()
{
  result = qword_1EBC36E20;
  if (!qword_1EBC36E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E20);
  }

  return result;
}

void sub_1BAF631D0()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock(v1 + 4);
  swift_beginAccess();
  if (*(v0 + 40) == 2 && *(v0 + 32) == 0)
  {
    *(v0 + 32) = 0;
    *(v0 + 40) = 0;
    swift_beginAccess();
    v3 = *(v0 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    *(v0 + 16) = MEMORY[0x1E69E7CC0];
    v5 = *(v0 + 56);
    *(v0 + 56) = 0;
    swift_beginAccess();
    v6 = *(v0 + 24);
    *(v0 + 24) = v4;

    os_unfair_lock_unlock(v1 + 4);
    if (v5)
    {

      sub_1BAF8E9C8();
    }

    v7 = *(v3 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = (v3 + 40);
      while (v8 < *(v3 + 16))
      {
        ++v8;
        v11 = *(v9 - 1);
        v10 = *v9;

        v11(v12);

        v9 += 2;
        if (v7 == v8)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_12:
    }
  }

  else
  {
    os_unfair_lock_unlock(v1 + 4);
  }
}

void sub_1BAF63320(void *a1)
{
  v3 = *(v1 + 48);
  os_unfair_lock_lock(v3 + 4);
  swift_beginAccess();
  if (*(v1 + 40) == 2 && *(v1 + 32) == 0)
  {
    *(v1 + 32) = a1;
    *(v1 + 40) = 1;
    swift_beginAccess();
    v5 = *(v1 + 24);
    v6 = MEMORY[0x1E69E7CC0];
    *(v1 + 24) = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v7 = *(v1 + 16);
    *(v1 + 16) = v6;
    v8 = a1;

    os_unfair_lock_unlock(v3 + 4);
    v9 = *(v5 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (v5 + 40);
      while (v10 < *(v5 + 16))
      {
        ++v10;
        v13 = *(v11 - 1);
        v12 = *v11;
        v14 = a1;

        v13(&v14);

        v11 += 2;
        if (v9 == v10)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_10:
    }
  }

  else
  {
    os_unfair_lock_unlock(v3 + 4);
  }
}

uint64_t sub_1BAF63460(void *a1)
{
  v2 = v1;
  v39 = sub_1BAF8E9A8();
  v4 = *(v39 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v39);
  v38 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v34 - v8;
  v36 = sub_1BAF8E958();
  v10 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v37 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BAF8F098();
  v35 = *(v12 - 8);
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BAF8F078();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = sub_1BAF8E988();
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v21 = a1;
  }

  else
  {
    v22 = sub_1BAF4F388();
    v34[2] = "Storage";
    v34[3] = v22;
    sub_1BAF8E968();
    aBlock[0] = v20;
    v34[1] = sub_1BAF3B7AC(&qword_1EDBA2080, MEMORY[0x1E69E8030]);
    sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
    sub_1BAF55F7C(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
    a1 = 0;
    v20 = MEMORY[0x1E69E7CC0];
    sub_1BAF8F198();
    (*(v35 + 104))(v15, *MEMORY[0x1E69E8090], v12);
    v21 = sub_1BAF8F0B8();
  }

  v23 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1BAF64560;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F7220;
  _Block_copy(aBlock);
  v40 = v20;
  sub_1BAF3B7AC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  v24 = a1;

  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF55F7C(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  v25 = sub_1BAF8E9D8();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = sub_1BAF8E9B8();

  v29 = *(v1 + 56);
  *(v2 + 56) = v28;

  v30 = v38;
  sub_1BAF8E998();
  sub_1BAF8E9F8();
  v31 = *(v4 + 8);
  v32 = v39;
  v31(v30, v39);
  sub_1BAF8F088();

  return (v31)(v9, v32);
}

uint64_t sub_1BAF639D4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1BAF2DB10(&qword_1EBC36E38, qword_1BAF97E48);
    sub_1BAF55F7C(&qword_1EBC36E40, &qword_1EBC36E38, qword_1BAF97E48);
    v1 = swift_allocError();
    sub_1BAF63320(v1);
  }

  return result;
}

uint64_t sub_1BAF63A9C(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v5 + 48);
  swift_retain_n();

  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    if (*(v5 + 40) == 1)
    {
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1BAF5DCB0;
      *(v8 + 24) = v6;
      swift_beginAccess();
      v9 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1BAF4F8CC(0, v9[2] + 1, 1, v9);
        *(v5 + 16) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1BAF4F8CC((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_1BAF6409C;
      v13[5] = v8;
      *(v5 + 16) = v9;
      swift_endAccess();
    }

    os_unfair_lock_unlock((*(v5 + 48) + 16));
  }

  else
  {

    os_unfair_lock_unlock((*(v5 + 48) + 16));
    a1();
  }
}

id APPromiseBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id APPromiseBridge.init()()
{
  v1 = OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise;
  sub_1BAF2DB10(&qword_1EBC36E30, &qword_1BAF97E18);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 0;
  *(v2 + 40) = 2;
  sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v2 + 48) = v4;
  *(v2 + 56) = 0;
  *&v0[v1] = v2;
  v6.receiver = v0;
  v6.super_class = type metadata accessor for APPromiseBridge();
  return objc_msgSendSuper2(&v6, sel_init);
}

id APPromiseBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for APPromiseBridge();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1BAF6409C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BAF640C4(void (*a1)(void *), uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 48);
  os_unfair_lock_lock(v6 + 4);
  swift_beginAccess();
  if (!*(v2 + 40))
  {
LABEL_9:
    os_unfair_lock_unlock(v6 + 4);
    return v3;
  }

  if (*(v2 + 40) != 1)
  {
    v9 = swift_allocObject();
    *(v9 + 16) = a1;
    *(v9 + 24) = a2;
    swift_beginAccess();
    v10 = *(v3 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 24) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1BAF4F33C(0, v10[2] + 1, 1, v10);
      *(v3 + 24) = v10;
    }

    v13 = v10[2];
    v12 = v10[3];
    if (v13 >= v12 >> 1)
    {
      v10 = sub_1BAF4F33C((v12 > 1), v13 + 1, 1, v10);
    }

    v10[2] = v13 + 1;
    v14 = &v10[2 * v13];
    v14[4] = sub_1BAF64580;
    v14[5] = v9;
    *(v3 + 24) = v10;
    swift_endAccess();
    goto LABEL_9;
  }

  v7 = *(v2 + 32);
  v8 = v7;
  os_unfair_lock_unlock(v6 + 4);
  a1(v7);
  sub_1BAF4FC58(v7, 1);
  return v3;
}

uint64_t sub_1BAF64348(uint64_t a1, void (**a2)(void))
{
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  v5 = *(a1 + OBJC_IVAR____TtC12APFoundation15APPromiseBridge_promise);
  v6 = swift_allocObject();
  *(v6 + 16) = sub_1BAF64550;
  *(v6 + 24) = v4;
  v7 = *(v5 + 48);
  swift_retain_n();
  _Block_copy(a2);

  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  if (*(v5 + 40))
  {
    if (*(v5 + 40) == 1)
    {
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = sub_1BAF6458C;
      *(v8 + 24) = v6;
      swift_beginAccess();
      v9 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 16) = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_1BAF4F8CC(0, v9[2] + 1, 1, v9);
        *(v5 + 16) = v9;
      }

      v12 = v9[2];
      v11 = v9[3];
      if (v12 >= v11 >> 1)
      {
        v9 = sub_1BAF4F8CC((v11 > 1), v12 + 1, 1, v9);
      }

      v9[2] = v12 + 1;
      v13 = &v9[2 * v12];
      v13[4] = sub_1BAF64588;
      v13[5] = v8;
      *(v5 + 16) = v9;
      swift_endAccess();
    }

    os_unfair_lock_unlock((*(v5 + 48) + 16));
  }

  else
  {

    os_unfair_lock_unlock((*(v5 + 48) + 16));
    a2[2](a2);
  }
}

uint64_t sub_1BAF64568(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BAF6466C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1BAF646A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1BAF646C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1BAF6470C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_1BAF64778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF65104;
}

uint64_t (*sub_1BAF648A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF6509C;
}

uint64_t (*sub_1BAF649D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF65034;
}

uint64_t (*sub_1BAF64AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF64FCC;
}

uint64_t (*sub_1BAF64C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 2) = a2;
  *(v11 + 3) = a3;
  *(v11 + 4) = a4;
  (*(v7 + 32))(&v11[v10], v9, a3);
  return sub_1BAF64F64;
}

uint64_t sub_1BAF64D54()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  return v1();
}

uint64_t sub_1BAF64D7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BAF64DA4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_1BAF64DCC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  return v1();
}

uint64_t sub_1BAF64DF4()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  return v1();
}

uint64_t (*sub_1BAF64E80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (**a5)()@<X8>))()
{
  v10 = sub_1BAF64778(a1, a2, a3, a4);
  v23 = v11;
  v24 = v10;
  v22 = sub_1BAF648A4(a1, a2, a3, a4);
  v13 = v12;
  v14 = sub_1BAF649D0(a1, a2, a3, a4);
  v16 = v15;
  v17 = sub_1BAF64AFC(a1, a2, a3, a4);
  v19 = v18;
  result = sub_1BAF64C28(a1, a2, a3, a4);
  *a5 = v24;
  a5[1] = v23;
  a5[2] = v22;
  a5[3] = v13;
  a5[4] = v14;
  a5[5] = v16;
  a5[6] = v17;
  a5[7] = v19;
  a5[8] = result;
  a5[9] = v21;
  return result;
}

uint64_t sub_1BAF64F64()
{
  v1 = *(v0 + 32);
  v2 = v0 + ((*(*(*(v0 + 24) - 8) + 80) + 40) & ~*(*(*(v0 + 24) - 8) + 80));
  return (*(v1 + 64))();
}

uint64_t StoredCohortCandidateSource.__allocating_init(store:fallback:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BADC5B38(a1, v4 + 16);
  sub_1BADC5B38(a2, v4 + 56);
  return v4;
}

APFoundation::CohortCandidate __swiftcall StoredCohortCandidateSource.candidate()()
{
  v2 = v0;
  v3 = v1[5];
  v4 = v1[6];
  sub_1BADC8524(v1 + 2, v3);
  (*(v4 + 8))(&v11, v3, v4);
  if (v12)
  {
    v6 = v1[10];
    v7 = v1[11];
    sub_1BADC8524(v1 + 7, v6);
    (*(v7 + 8))(&v11, v6, v7);
    v8 = v11;
    v9 = v1[5];
    v10 = v1[6];
    sub_1BADC8524(v1 + 2, v9);
    v11 = v8;
    (*(v10 + 16))(&v11, v9, v10);
  }

  else
  {
    v8 = v11;
  }

  *v2 = v8;
  return result;
}

uint64_t StoredCohortCandidateSource.deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));
  return v0;
}

uint64_t StoredCohortCandidateSource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t EntropyLimitedString.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static EntropyLimitedString.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8();
  }
}

uint64_t Data.init(base64URLEncoded:)()
{
  sub_1BAF2DB58();
  sub_1BAF8F148();

  sub_1BAF8F148();

  while ((sub_1BAF8ED28() & 3) != 0)
  {
    MEMORY[0x1BFB048C0](61, 0xE100000000000000);
  }

  v0 = sub_1BAF8E5B8();
  v2 = v1;
  sub_1BAF3B664(v0, v1);

  if (v2 >> 60 != 15)
  {
    sub_1BAF3B72C(v0, v2);
  }

  return v0;
}

Swift::String __swiftcall Data.base64URLEncodedString()()
{
  sub_1BAF8E5E8();
  sub_1BAF2DB58();
  sub_1BAF8F148();

  sub_1BAF8F148();

  v0 = sub_1BAF8F148();
  v2 = v1;

  v3 = v0;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

uint64_t Passthrough<A>.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
    v3 = sub_1BAF8F3A8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  sub_1BAF6593C(v4, 1, &v6);

  *a2 = v6;
  return result;
}

id static Passthrough<A>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_1BAF44DB0(*a1);
  v3 = objc_allocWithZone(MEMORY[0x1E695DF20]);
  v4 = sub_1BAF8EB78();

  v5 = [v3 initWithDictionary_];

  sub_1BAF44DB0(v2);
  v6 = sub_1BAF8EB78();

  v7 = [v5 isEqualToDictionary_];

  return v7;
}

uint64_t sub_1BAF65880@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
    v3 = sub_1BAF8F3A8();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;

  sub_1BAF6593C(v4, 1, &v6);

  *a2 = v6;
  return result;
}

void sub_1BAF6593C(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_22;
  }

  sub_1BAF65CF8(a1 + 32, &v46);
  v8 = v46;
  v7 = v47;
  v44 = v46;
  v45 = v47;
  sub_1BAF32E44(v48, v43);
  v9 = *a3;
  v10 = sub_1BAF31DBC(v8, v7);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_1BAF669F0(v15, a2 & 1);
    v17 = *a3;
    v10 = sub_1BAF31DBC(v8, v7);
    if ((v16 & 1) != (v18 & 1))
    {
LABEL_5:
      sub_1BAF8F538();
      __break(1u);
      goto LABEL_22;
    }

LABEL_8:
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v21 = v10;
  sub_1BAF6783C();
  v10 = v21;
  if (v16)
  {
LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v49 = v19;
    v20 = v19;
    sub_1BAF2DB10(&qword_1EBC36890, &qword_1BAF97140);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1BADC5BE0(v43);

      return;
    }

    goto LABEL_26;
  }

LABEL_12:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v8;
  v23[1] = v7;
  sub_1BAF32E44(v43, (v22[7] + 32 * v10));
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v14)
  {
    v22[2] = v25;
    if (v4 == 1)
    {
LABEL_22:

      return;
    }

    v26 = a1 + 80;
    v27 = 1;
    while (v27 < *(a1 + 16))
    {
      sub_1BAF65CF8(v26, &v46);
      v29 = v46;
      v28 = v47;
      v44 = v46;
      v45 = v47;
      sub_1BAF32E44(v48, v43);
      v30 = *a3;
      v31 = sub_1BAF31DBC(v29, v28);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v36 = v32;
      if (v30[3] < v35)
      {
        sub_1BAF669F0(v35, 1);
        v37 = *a3;
        v31 = sub_1BAF31DBC(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v39 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v40 = (v39[6] + 16 * v31);
      *v40 = v29;
      v40[1] = v28;
      sub_1BAF32E44(v43, (v39[7] + 32 * v31));
      v41 = v39[2];
      v14 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v27;
      v39[2] = v42;
      v26 += 48;
      if (v4 == v27)
      {
        goto LABEL_22;
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1BAF8F268();
  MEMORY[0x1BFB048C0](0xD00000000000001BLL, 0x80000001BAFA33C0);
  sub_1BAF8F318();
  MEMORY[0x1BFB048C0](39, 0xE100000000000000);
  sub_1BAF8F368();
  __break(1u);
}

uint64_t sub_1BAF65CF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&unk_1EBC36810, &qword_1BAF95248);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BAF65D94()
{
  v0 = sub_1BAF8E768();
  v1 = v0;
  v3 = v2;
  v4 = v0 >> 8;
  v5 = v0 >> 16;
  v6 = v0 >> 24;
  v7 = HIDWORD(v0);
  v8 = v0 >> 40;
  v9 = HIWORD(v0);
  v10 = HIBYTE(v0);
  v14 = v2 >> 8;
  v15 = v2 >> 16;
  v16 = v2 >> 24;
  v17 = HIDWORD(v2);
  v18 = v2 >> 40;
  v19 = HIWORD(v2);
  v20 = HIBYTE(v2);
  sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1BAF98060;
  *(v11 + 32) = v1;
  *(v11 + 33) = v4;
  *(v11 + 34) = v5;
  *(v11 + 35) = v6;
  *(v11 + 36) = v7;
  *(v11 + 37) = v8;
  *(v11 + 38) = v9;
  *(v11 + 39) = v10;
  *(v11 + 40) = v3;
  *(v11 + 41) = v14;
  *(v11 + 42) = v15;
  *(v11 + 43) = v16;
  *(v11 + 44) = v17;
  *(v11 + 45) = v18;
  *(v11 + 46) = v19;
  *(v11 + 47) = v20;
  v12 = sub_1BAF2EF34(v11);

  return v12;
}

uint64_t PopulatedArray.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v6 = sub_1BAF6612C(a2, a2);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = *(a2 - 8);
  v10 = *(v9 + 72);
  v11 = *(v9 + 80);
  swift_allocObject();
  sub_1BAF8EEB8();
  (*(v9 + 16))(v12, a1, a2);
  sub_1BAF8EF28();
  v13 = sub_1BAF8EEC8();

  result = (*(v9 + 8))(a1, a2);
  *a3 = v13;
  return result;
}

uint64_t PopulatedArray.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1BAF8EF28();
  swift_getWitnessTable();
  result = Collection.isPopulated.getter();
  if ((result & 1) == 0)
  {

    a1 = 0;
  }

  *a2 = a1;
  return result;
}

uint64_t sub_1BAF660A4(void *a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v3 = *(a3 + 24);
  return static PopulatedArray.== infix(_:_:)(a1, a2);
}

uint64_t PopulatedArray.debugDescription.getter(uint64_t a1)
{
  v4 = *v1;
  v2 = *(a1 + 16);
  sub_1BAF8EF28();
  swift_getWitnessTable();
  sub_1BAF8F4A8();
  return 0;
}

uint64_t sub_1BAF6612C(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return sub_1BAF2DB10(&qword_1EBC36E48, &qword_1BAF98128);
  }

  else
  {

    return MEMORY[0x1EEE6AEE8](0, a2);
  }
}

uint64_t CachingPurposeConfigurationStore.__allocating_init(backingStore:)(__int128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 56) = sub_1BAF32B24(MEMORY[0x1E69E7CC0]);
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

uint64_t CachingPurposeConfigurationStore.init(backingStore:)(__int128 *a1)
{
  *(v1 + 56) = sub_1BAF32B24(MEMORY[0x1E69E7CC0]);
  sub_1BADC5B38(a1, v1 + 16);
  return v1;
}

uint64_t CachingPurposeConfigurationStore.deinit()
{
  sub_1BADC5BE0((v0 + 16));
  v1 = *(v0 + 56);

  return v0;
}

uint64_t CachingPurposeConfigurationStore.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));
  v1 = *(v0 + 56);

  return swift_deallocClassInstance();
}

uint64_t CachingPurposeConfigurationStore.configurationFor(_:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  v6 = v2[7];
  if (*(v6 + 16) && (result = sub_1BAF32FCC(a1), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + result);
  }

  else
  {
    v10 = v3[5];
    v11 = v3[6];
    sub_1BADC8524(v3 + 2, v10);
    (*(v11 + 8))(v15, a1, v10, v11);
    v9 = v15[0];
    swift_beginAccess();
    v12 = v3[7];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = v3[7];
    v3[7] = 0x8000000000000000;
    sub_1BAF671E4(v9, a1, isUniquelyReferenced_nonNull_native);
    v3[7] = v14;
    result = swift_endAccess();
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1BAF663C8(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_1BAF8E908();
  v6 = *(v45 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1BAF2DB10(&qword_1EBC366F8, &qword_1BAF95270);
  v43 = a2;
  result = sub_1BAF8F398();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v19 = (v6 + 32);
    v20 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = *(*(v9 + 48) + 8 * v25);
      v28 = *(v42 + 72);
      v29 = v26 + v28 * v25;
      if (v43)
      {
        (*v19)(v44, v29, v45);
      }

      else
      {
        (*v40)(v44, v29, v45);
      }

      v30 = *(v12 + 40);
      sub_1BAF8F5A8();
      MEMORY[0x1BFB05110](v27);
      result = sub_1BAF8F5E8();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v21 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v12 + 48) + 8 * v21) = v27;
      result = (*v19)(*(v12 + 56) + v28 * v21, v44, v45);
      ++*(v12 + 16);
      v9 = v41;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v3 = v39;
    if (v38 >= 64)
    {
      bzero(v14, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1BAF6672C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAF2DB10(&qword_1EBC366E8, &qword_1BAF95260);
  v36 = a2;
  result = sub_1BAF8F398();
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
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_1BADC5B38(v25, v37);
      }

      else
      {
        sub_1BAF3BB60(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1BAF8F5A8();
      sub_1BAF8ED18();
      result = sub_1BAF8F5E8();
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
      result = sub_1BADC5B38(v37, *(v8 + 56) + 40 * v16);
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

uint64_t sub_1BAF669F0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
  v36 = a2;
  result = sub_1BAF8F398();
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
        sub_1BAF32E44(v25, v37);
      }

      else
      {
        sub_1BAF45388(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1BAF8F5A8();
      sub_1BAF8ED18();
      result = sub_1BAF8F5E8();
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
      result = sub_1BAF32E44(v37, (*(v8 + 56) + 32 * v16));
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

uint64_t sub_1BAF66CA8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1BAF2DB10(&qword_1EBC366D8, &qword_1BAF95250);
  result = sub_1BAF8F398();
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
      v22 = *(*(v5 + 56) + v20);
      v23 = *(v8 + 40);
      sub_1BAF8F5A8();
      MEMORY[0x1BFB05110](v21);
      result = sub_1BAF8F5E8();
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
      *(*(v8 + 56) + v16) = v22;
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

    if ((v32 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v33;
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

LABEL_33:
  *v3 = v8;
  return result;
}

uint64_t sub_1BAF66F28(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1BAF32FCC(a2);
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
      sub_1BAF6742C();
      goto LABEL_7;
    }

    sub_1BAF663C8(v13, a3 & 1);
    v24 = *v4;
    v25 = sub_1BAF32FCC(a2);
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
    type metadata accessor for APLogCategory(0);
    result = sub_1BAF8F538();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = sub_1BAF8E908();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_1BAF67310(v10, a2, a1, v16);
}

uint64_t sub_1BAF67090(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1BAF31DBC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1BAF67694();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1BAF6672C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1BAF31DBC(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1BAF8F538();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 40 * v11);
    sub_1BADC5BE0(v23);

    return sub_1BADC5B38(a1, v23);
  }

  else
  {
    sub_1BAF673BC(v11, a2, a3, a1, v22);
  }
}

unint64_t sub_1BAF671E4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1BAF32FCC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1BAF679E0();
    result = v17;
    goto LABEL_8;
  }

  sub_1BAF66CA8(v14, a3 & 1);
  v18 = *v4;
  result = sub_1BAF32FCC(a2);
  if ((v15 & 1) == (v19 & 1))
  {
LABEL_8:
    v20 = *v4;
    if (v15)
    {
      *(v20[7] + result) = a1 & 1;
      return result;
    }

    v20[(result >> 6) + 8] |= 1 << result;
    *(v20[6] + 8 * result) = a2;
    *(v20[7] + result) = a1 & 1;
    v21 = v20[2];
    v13 = __OFADD__(v21, 1);
    v22 = v21 + 1;
    if (!v13)
    {
      v20[2] = v22;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  type metadata accessor for APMetricPurposeType(0);
  result = sub_1BAF8F538();
  __break(1u);
  return result;
}

uint64_t sub_1BAF67310(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = sub_1BAF8E908();
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

uint64_t sub_1BAF673BC(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1BADC5B38(a4, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_1BAF6742C()
{
  v1 = v0;
  v30 = sub_1BAF8E908();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF2DB10(&qword_1EBC366F8, &qword_1BAF95270);
  v4 = *v0;
  v5 = sub_1BAF8F388();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v10;
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v4 + 64;
    for (i = v32 + 32; v13; result = (*(v20 + 32))(*(v24 + 56) + v21, v23, v22))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(*(v4 + 48) + 8 * v18);
      v20 = v32;
      v21 = *(v32 + 72) * v18;
      v23 = v29;
      v22 = v30;
      (*(v32 + 16))(v29, *(v4 + 56) + v21, v30);
      v24 = v31;
      *(*(v31 + 48) + 8 * v18) = v19;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v25;
        v6 = v31;
        goto LABEL_18;
      }

      v17 = *(v26 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_1BAF67694()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC366E8, &qword_1BAF95260);
  v2 = *v0;
  v3 = sub_1BAF8F388();
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
        v22 = 40 * v17;
        sub_1BAF3BB60(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BADC5B38(v25, *(v4 + 56) + v22);
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

void *sub_1BAF6783C()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC366D0, &qword_1BAF95240);
  v2 = *v0;
  v3 = sub_1BAF8F388();
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
        sub_1BAF45388(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1BAF32E44(v25, (*(v4 + 56) + v22));
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

void *sub_1BAF679E0()
{
  v1 = v0;
  sub_1BAF2DB10(&qword_1EBC366D8, &qword_1BAF95250);
  v2 = *v0;
  v3 = sub_1BAF8F388();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + v14);
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

uint64_t sub_1BAF67BAC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t MessageQueue.__allocating_init<A>(queueStore:log:timeout:processingQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  swift_allocObject();
  v12 = sub_1BAF6C6B4(a1, a2, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v12;
}

uint64_t MessageQueue.init<A>(queueStore:log:timeout:processingQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v8 = sub_1BAF6C6B4(a1, a2, a3, a4, a5, a6);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

void sub_1BAF67CF8(uint64_t a1)
{
  if (sub_1BAF6BB1C())
  {
    sub_1BAF8F048();
    v2 = *(a1 + 128);
    sub_1BAF8E8B8();
  }

  else
  {
    sub_1BAF6C360();
  }
}

uint64_t sub_1BAF67DB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1BAF8E958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAF8E988();
  v10 = *(v17 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *(v2 + 112);
  aBlock[4] = a1;
  v20 = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = a2;
  v14 = _Block_copy(aBlock);

  sub_1BAF8E968();
  v18 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v13, v9, v14);
  _Block_release(v14);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v17);
}

uint64_t sub_1BAF68040(uint64_t a1)
{
  sub_1BAF8F048();
  v2 = *(a1 + 128);
  sub_1BAF8E8B8();

  *(a1 + 121) = 1;
  return sub_1BAF68638();
}

uint64_t sub_1BAF680B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_1BAF3DA9C(a1, *(*v3 + 80), a2, a3, v8);
  swift_beginAccess();
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  type metadata accessor for AnyMessageQueueListener();
  sub_1BAF8EF28();
  sub_1BAF8EF08();
  return swift_endAccess();
}

uint64_t sub_1BAF68180(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BAF8E958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1BAF8E988();
  v45 = *(v10 - 8);
  v46 = v10;
  v11 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v44 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = v4[10];
  v14 = v4[11];
  v15 = v4[12];
  v16 = type metadata accessor for QueueMessage();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39[-v19];
  v21 = sub_1BAF8F018();
  v22 = *(v2 + 128);
  (*(v17 + 16))(v20, a1, v16);
  if (os_log_type_enabled(v22, v21))
  {
    v41 = v22;
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v40 = v21;
    v25 = v24;
    aBlock[0] = v24;
    *v23 = 136446210;
    v26 = QueueMessage.debugDescription.getter(v16);
    v42 = a1;
    v43 = v9;
    v27 = v6;
    v28 = v5;
    v29 = v26;
    v31 = v30;
    (*(v17 + 8))(v20, v16);
    v32 = v29;
    v5 = v28;
    v6 = v27;
    v9 = v43;
    v33 = sub_1BAF49CF8(v32, v31, aBlock);

    *(v23 + 4) = v33;
    v34 = v41;
    _os_log_impl(&dword_1BADC1000, v41, v40, "Adding message %{public}s to the queue.", v23, 0xCu);
    sub_1BADC5BE0(v25);
    MEMORY[0x1BFB06160](v25, -1, -1);
    MEMORY[0x1BFB06160](v23, -1, -1);
  }

  else
  {
    (*(v17 + 8))(v20, v16);
  }

  sub_1BAF6BEC0();
  v35 = *(v2 + 112);
  aBlock[4] = sub_1BAF6CE60;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F74D8;
  v36 = _Block_copy(aBlock);

  v37 = v44;
  sub_1BAF8E968();
  v47 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v37, v9, v36);
  _Block_release(v36);
  (*(v6 + 8))(v9, v5);
  (*(v45 + 8))(v37, v46);
}

uint64_t sub_1BAF68638()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 96);
  v4 = type metadata accessor for QueueMessage();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - v7;
  v9 = sub_1BAF8F0D8();
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = *(v40 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - v14;
  v16 = sub_1BAF8E9E8();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v0 + 112);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = sub_1BAF8EA08();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    if ((*(v0 + 120) & 1) == 0 && *(v0 + 121) == 1 && (*(v0 + 144) & 1) == 0)
    {
      v24 = v5;
      (*(v5 + 56))(v15, 1, 1, v4);
      v25 = *(v0 + 104);
      v26 = *(v25 + 16);
      v27 = *(v25 + 24);
      os_unfair_lock_lock_with_options();
      sub_1BAF68A8C(v15, v0);
      os_unfair_lock_unlock(*(v25 + 16));
      v29 = v40;
      v28 = v41;
      (*(v40 + 16))(v13, v15, v41);
      if ((*(v24 + 48))(v13, 1, v4) == 1)
      {
        v30 = *(v29 + 8);
        v30(v13, v28);
        v31 = *(v0 + 168);
        *(v0 + 160) = 0;
        *(v0 + 168) = 0;

        return (v30)(v15, v28);
      }

      else
      {
        (*(v24 + 32))(v8, v13, v4);
        v32 = *(v0 + 168);
        if (v32 && (*(v0 + 160) == *v8 ? (v33 = v32 == *(v8 + 1)) : (v33 = 0), v33 || (sub_1BAF8F4C8() & 1) != 0))
        {
          sub_1BAF6C280();
        }

        else
        {
          v34 = *(v8 + 1);
          v35 = *(v0 + 168);
          *(v0 + 160) = *v8;
          *(v0 + 168) = v34;

          v36 = *(v0 + 176);
          if (v36)
          {
            v37 = *(v0 + 184);
            sub_1BAEFD9BC(*(v0 + 176));
            v36(v8);
            sub_1BAEFD9A4(v36);
          }

          v38 = &v8[*(v4 + 52)];
          v39 = v38[1];
          if (v39)
          {
            sub_1BAF695B8(*v38, v39, v8);
          }

          else
          {
            sub_1BAF68BF8(v8);
          }
        }

        (*(v24 + 8))(v8, v4);
        return (*(v29 + 8))(v15, v28);
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BAF68A8C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  v5 = *(*a2 + 88);
  v6 = *(*a2 + 96);
  type metadata accessor for QueueMessage();
  v7 = sub_1BAF8F0D8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v15 - v10;
  v12 = *(a2 + 40);
  v13 = *(a2 + 72);
  v15[2] = *(a2 + 56);
  v15[3] = v13;
  v15[4] = *(a2 + 88);
  v15[0] = *(a2 + 24);
  v15[1] = v12;
  type metadata accessor for AnyMessageQueueStore();
  sub_1BAF64DF4();
  return (*(v8 + 40))(a1, v11, v7);
}

void sub_1BAF68BF8(NSObject *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_1BAF8E958();
  v72 = *(v5 - 8);
  v6 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v70 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1BAF8E988();
  v69 = *(v71 - 8);
  v8 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v4[10];
  v11 = v4[12];
  v73 = v4[11];
  v12 = type metadata accessor for QueueMessage();
  v13 = *(v12 - 8);
  v14 = v13[8];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v60 - v17;
  v19 = sub_1BAF8F018();
  v20 = v2[16];
  v21 = v13[2];
  v74 = a1;
  v65 = v13 + 2;
  v63 = v21;
  v21(v18, a1, v12);
  v22 = os_log_type_enabled(v20, v19);
  v67 = v13;
  if (v22)
  {
    v60 = v20;
    v23 = swift_slowAlloc();
    v61 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    v62 = v5;
    v26 = v25;
    aBlock[0] = v25;
    *v24 = 136446210;
    v27 = QueueMessage.debugDescription.getter(v12);
    v29 = v28;
    v64 = v13[1];
    v64(v18, v12);
    v30 = sub_1BAF49CF8(v27, v29, aBlock);

    *(v24 + 4) = v30;
    v31 = v60;
    _os_log_impl(&dword_1BADC1000, v60, v19, "Processing message %{public}s", v24, 0xCu);
    sub_1BADC5BE0(v26);
    v32 = v26;
    v5 = v62;
    MEMORY[0x1BFB06160](v32, -1, -1);
    v33 = v24;
    v10 = v61;
    MEMORY[0x1BFB06160](v33, -1, -1);
  }

  else
  {
    v64 = v13[1];
    v64(v18, v12);
  }

  v77 = -1;
  v34 = swift_beginAccess();
  aBlock[0] = v2[2];
  MEMORY[0x1EEE9AC00](v34);
  v35 = v73;
  v36 = v74;
  *(&v60 - 6) = v10;
  *(&v60 - 5) = v35;
  *(&v60 - 4) = v11;
  *(&v60 - 3) = v36;
  *(&v60 - 2) = &v77;
  type metadata accessor for AnyMessageQueueListener();
  sub_1BAF8EF28();

  swift_getWitnessTable();
  v37 = sub_1BAF8EE48();

  aBlock[0] = v37;
  sub_1BAF8EF28();
  swift_getWitnessTable();
  if (sub_1BAF8EFC8())
  {

    v38 = sub_1BAF8F018();
    v39 = v2[16];
    v40 = v66;
    v63(v66, v36, v12);
    if (os_log_type_enabled(v39, v38))
    {
      v41 = v39;
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136446210;
      v44 = v40;
      v45 = QueueMessage.debugDescription.getter(v12);
      v47 = v46;
      v64(v44, v12);
      v48 = sub_1BAF49CF8(v45, v47, aBlock);

      *(v42 + 4) = v48;
      _os_log_impl(&dword_1BADC1000, v41, v38, "No listeners for message %{public}s was found. Dropping the message.", v42, 0xCu);
      sub_1BADC5BE0(v43);
      MEMORY[0x1BFB06160](v43, -1, -1);
      v36 = v74;
      MEMORY[0x1BFB06160](v42, -1, -1);
    }

    else
    {
      v64(v40, v12);
    }

    v58.isa = v36->isa;
    isa = v36[1].isa;
    if ((sub_1BAF6B734() & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v49.isa = v36->isa;
    v50 = v36[1].isa;
    v51 = sub_1BAF6B32C();

    if ((v51 & 1) == 0)
    {
LABEL_13:
      sub_1BAF6C360();
      return;
    }
  }

  v52 = v2[24];
  if (v52)
  {
    v53 = v2[25];
    sub_1BAEFD9BC(v2[24]);
    v52(v36);
    sub_1BAEFD9A4(v52);
  }

  v54 = v2[14];
  aBlock[4] = sub_1BAF6CE60;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F7720;
  v55 = _Block_copy(aBlock);

  v56 = v68;
  sub_1BAF8E968();
  v75 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  v57 = v70;
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v56, v57, v55);
  _Block_release(v55);
  (*(v72 + 8))(v57, v5);
  (*(v69 + 8))(v56, v71);
}

uint64_t sub_1BAF69400@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v18 = a3;
  v9 = type metadata accessor for QueueMessage();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  v14 = a1[1];
  v19 = *a1;
  v20 = v14;
  v21 = a1[2];
  type metadata accessor for AnyMessageQueueListener();
  result = sub_1BAF3DA40();
  if ((result & 1) == 0)
  {
    return (*(v10 + 56))(a5, 1, 1, v9);
  }

  if (__OFADD__(*v18, 1))
  {
    __break(1u);
  }

  else
  {
    ++*v18;
    (*(v10 + 16))(v13, a2, v9);
    v16 = v19;

    sub_1BAF4FF94(v13, v16, *(&v16 + 1), a4, a5);
    return (*(v10 + 56))(a5, 0, 1, v9);
  }

  return result;
}

void sub_1BAF695B8(uint64_t a1, unint64_t a2, char *a3)
{
  v154 = a1;
  v155 = a2;
  v5 = *v3;
  v142 = sub_1BAF8E958();
  v141 = *(v142 - 8);
  v6 = *(v141 + 64);
  MEMORY[0x1EEE9AC00](v142);
  v140 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BAF8F098();
  v130 = *(v8 - 8);
  v9 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BAF8F078();
  v11 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v134 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1BAF8E988();
  v138 = *(v139 - 8);
  v13 = *(v138 + 64);
  MEMORY[0x1EEE9AC00](v139);
  v137 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v5[10];
  v16 = v5[11];
  v17 = v5[12];
  v157 = v15;
  v158 = v16;
  v153 = type metadata accessor for QueueMessage();
  v156 = *(v153 - 8);
  v18 = v156[8];
  v19 = MEMORY[0x1EEE9AC00](v153);
  v132 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v151 = &v118 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v131 = &v118 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v152 = &v118 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v144 = &v118 - v26;
  v27 = sub_1BAF8E9E8();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v118 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = v3;
  v33 = *(v3 + 112);
  *v31 = v33;
  (*(v28 + 104))(v31, *MEMORY[0x1E69E8020], v27);
  v136 = v33;
  v34 = sub_1BAF8EA08();
  (*(v28 + 8))(v31, v27);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_31;
  }

  v129 = v8;
  v35 = swift_beginAccess();
  v161 = *(v3 + 16);
  MEMORY[0x1EEE9AC00](v35);
  v36 = v158;
  *(&v118 - 4) = v157;
  *(&v118 - 3) = v36;
  *(&v118 - 2) = v17;
  *(&v118 - 1) = a3;
  type metadata accessor for AnyMessageQueueListener();
  sub_1BAF8EF28();
  v37 = a3;

  swift_getWitnessTable();
  sub_1BAF8EE78();

  if (v163)
  {
    v128 = v163;
    v127 = v166;
    v148 = v165;
    v125 = aBlock;
    v126 = v164;
    v38 = v3;
    *(v3 + 120) = 1;
    sub_1BAF2DB10(&qword_1EBC36E30, &qword_1BAF97E18);
    v39 = swift_allocObject();
    v40 = MEMORY[0x1E69E7CC0];
    *(v39 + 16) = MEMORY[0x1E69E7CC0];
    v119 = (v39 + 16);
    *(v39 + 24) = v40;
    v120 = (v39 + 24);
    *(v39 + 32) = 0;
    v121 = v39 + 32;
    *(v39 + 40) = 2;
    sub_1BAF2DB10(&qword_1EBC36B50, &qword_1BAF97720);
    v41 = swift_allocObject();
    *(v41 + 16) = 0;
    *(v39 + 48) = v41;
    *(v39 + 56) = 0;
    v42 = v156;
    v44 = v156 + 2;
    v43 = v156[2];
    v45 = v144;
    v150 = v37;
    v46 = v37;
    v47 = v153;
    v43(v144, v46, v153);
    v147 = v44;
    v146 = v43;
    v43(v152, v45, v47);
    v48 = *(v42 + 80);
    v49 = v17;
    v50 = (v48 + 48) & ~v48;
    v124 = v18 + 7;
    v51 = (v18 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
    v145 = v48;
    v52 = swift_allocObject();
    v53 = v158;
    *(v52 + 2) = v157;
    *(v52 + 3) = v53;
    v149 = v49;
    *(v52 + 4) = v49;
    *(v52 + 5) = v38;
    v54 = v42[4];
    v122 = v50;
    v144 = (v42 + 4);
    v143 = v54;
    v54(&v52[v50], v45, v47);
    v123 = v51;
    v55 = &v52[v51];
    v56 = v155;
    *v55 = v154;
    *(v55 + 1) = v56;
    v57 = *(v39 + 48);
    v58 = v38;
    swift_retain_n();
    swift_bridgeObjectRetain_n();

    os_unfair_lock_lock(v57 + 4);
    swift_beginAccess();
    v159 = v39;
    if (!*(v39 + 40))
    {

      os_unfair_lock_unlock((v159[6] + 16));
      v32 = v38;
      sub_1BAF6A958(v152, v154, v155, 0);
LABEL_17:
      v59 = v153;
      goto LABEL_18;
    }

    if (*(v39 + 40) == 1)
    {

      os_unfair_lock_unlock((v159[6] + 16));
      v59 = v153;
      v32 = v38;
LABEL_18:
      v78 = v145;
      v79 = ~v145;

      v80 = v156[1];
      ++v156;
      v80(v152, v59);
      v81 = v155;

      v82 = v131;
      v83 = v146;
      v146(v131, v150, v59);
      v83(v151, v82, v59);
      v84 = v123;
      v85 = swift_allocObject();
      v86 = v158;
      *(v85 + 2) = v157;
      *(v85 + 3) = v86;
      *(v85 + 4) = v149;
      *(v85 + 5) = v32;
      v143(&v85[v122], v82, v59);
      v87 = &v85[v84];
      *v87 = v154;
      *(v87 + 1) = v81;
      v88 = v159;
      v89 = v159[6];

      os_unfair_lock_lock(v89 + 4);
      if (*(v88 + 40))
      {
        if (*(v88 + 40) == 1)
        {
          v90 = ~v78;
          v91 = v59;
          v92 = v159[4];
          v93 = v159[6];
          v94 = v92;
          os_unfair_lock_unlock(v93 + 4);
          v95 = v151;
          sub_1BAF6A958(v151, v154, v155, 1);
          sub_1BAF4FC58(v92, 1);

          v80(v95, v91);
          v96 = v130;
        }

        else
        {
          v80(v151, v59);
          v97 = swift_allocObject();
          *(v97 + 16) = sub_1BAF6CC40;
          *(v97 + 24) = v85;
          v98 = v120;
          swift_beginAccess();
          v99 = *v98;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v98 = v99;
          v90 = v79;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v99 = sub_1BAF4F33C(0, v99[2] + 1, 1, v99);
            *v98 = v99;
          }

          v96 = v130;
          v102 = v99[2];
          v101 = v99[3];
          if (v102 >= v101 >> 1)
          {
            v99 = sub_1BAF4F33C((v101 > 1), v102 + 1, 1, v99);
          }

          v99[2] = v102 + 1;
          v103 = &v99[2 * v102];
          v103[4] = sub_1BAF64580;
          v103[5] = v97;
          v104 = v159;
          v159[3] = v99;
          swift_endAccess();
          os_unfair_lock_unlock((v104[6] + 16));

          v91 = v153;
        }
      }

      else
      {
        v90 = ~v78;
        v80(v151, v59);
        os_unfair_lock_unlock((v159[6] + 16));

        v96 = v130;
        v91 = v59;
      }

      v105 = v32[19];
      sub_1BAF63460(v136);
      sub_1BAF30DFC(0, &qword_1EDBA2078, 0x1E69E9610);
      v106 = v137;
      sub_1BAF8E968();
      aBlock = MEMORY[0x1E69E7CC0];
      sub_1BAF6CCDC(&qword_1EDBA2080, MEMORY[0x1E69E8030]);
      sub_1BAF2DB10(&qword_1EBC36768, &qword_1BAF955B8);
      sub_1BAF3B7F4(&qword_1EDBA20C0, &qword_1EBC36768, &qword_1BAF955B8);
      sub_1BAF8F198();
      (*(v96 + 104))(v135, *MEMORY[0x1E69E8090], v129);
      v156 = sub_1BAF8F0B8();
      v107 = v132;
      v146(v132, v150, v91);
      v108 = (v145 + 88) & v90;
      v109 = (v124 + v108) & 0xFFFFFFFFFFFFFFF8;
      v110 = swift_allocObject();
      v111 = v158;
      *(v110 + 16) = v157;
      *(v110 + 24) = v111;
      v112 = v125;
      *(v110 + 32) = v149;
      *(v110 + 40) = v112;
      v113 = v126;
      *(v110 + 48) = v128;
      *(v110 + 56) = v113;
      *(v110 + 64) = v148;
      *(v110 + 80) = v127;
      v143((v110 + v108), v107, v91);
      *(v110 + v109) = v159;
      *(&v165 + 1) = sub_1BAF6CD24;
      v166 = v110;
      aBlock = MEMORY[0x1E69E9820];
      v163 = 1107296256;
      v164 = sub_1BAF4CF6C;
      *&v165 = &unk_1F38F76A8;
      v114 = _Block_copy(&aBlock);

      sub_1BAF8E968();
      v160 = MEMORY[0x1E69E7CC0];
      sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
      sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
      sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
      v115 = v140;
      v116 = v142;
      sub_1BAF8F198();
      v117 = v156;
      MEMORY[0x1BFB04C00](0, v106, v115, v114);
      _Block_release(v114);

      (*(v141 + 8))(v115, v116);
      (*(v138 + 8))(v106, v139);
LABEL_28:

      return;
    }

    v31 = swift_allocObject();
    v31[2] = sub_1BAF6CA7C;
    v31[3] = v52;
    v17 = v119;
    swift_beginAccess();
    v34 = *v17;
    v73 = swift_isUniquelyReferenced_nonNull_native();
    *v17 = v34;
    v32 = v58;
    if (v73)
    {
LABEL_14:
      v75 = *(v34 + 16);
      v74 = *(v34 + 24);
      if (v75 >= v74 >> 1)
      {
        v34 = sub_1BAF4F8CC((v74 > 1), v75 + 1, 1, v34);
      }

      *(v34 + 16) = v75 + 1;
      v76 = v34 + 16 * v75;
      *(v76 + 32) = sub_1BAF6CE18;
      *(v76 + 40) = v31;
      v77 = v159;
      v159[2] = v34;
      swift_endAccess();
      os_unfair_lock_unlock((v77[6] + 16));
      goto LABEL_17;
    }

LABEL_31:
    v34 = sub_1BAF4F8CC(0, *(v34 + 16) + 1, 1, v34);
    *v17 = v34;
    goto LABEL_14;
  }

  v60 = sub_1BAF8F038();
  v61 = v32[16];
  if (os_log_type_enabled(v61, v60))
  {
    v62 = v61;
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    aBlock = v64;
    *v63 = 136446210;
    *(v63 + 4) = sub_1BAF49CF8(v154, v155, &aBlock);
    _os_log_impl(&dword_1BADC1000, v62, v60, "Can't find assigned listener %{public}s, that doesn't seem right. The listener disappeared?", v63, 0xCu);
    sub_1BADC5BE0(v64);
    MEMORY[0x1BFB06160](v64, -1, -1);
    MEMORY[0x1BFB06160](v63, -1, -1);
  }

  v65 = *a3;
  v66 = *(a3 + 1);
  if (sub_1BAF6B734())
  {
    v67 = v32[24];
    if (v67)
    {
      v68 = v32[25];
      sub_1BAEFD9BC(v32[24]);
      v67(a3);
      sub_1BAEFD9A4(v67);
    }

    *(&v165 + 1) = sub_1BAF6CA78;
    v166 = v32;
    aBlock = MEMORY[0x1E69E9820];
    v163 = 1107296256;
    v164 = sub_1BAF4CF6C;
    *&v165 = &unk_1F38F7608;
    v69 = _Block_copy(&aBlock);

    v70 = v137;
    sub_1BAF8E968();
    v161 = MEMORY[0x1E69E7CC0];
    sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
    sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
    sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
    v71 = v140;
    v72 = v142;
    sub_1BAF8F198();
    MEMORY[0x1BFB04C00](0, v70, v71, v69);
    _Block_release(v69);
    (*(v141 + 8))(v71, v72);
    (*(v138 + 8))(v70, v139);
    goto LABEL_28;
  }

  sub_1BAF6C360();
}

uint64_t sub_1BAF6A840(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (a2 + *(type metadata accessor for QueueMessage() + 52));
  v5 = v4[1];
  if (!v5)
  {
    return 0;
  }

  if (v2 == *v4 && v5 == v3)
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8() & 1;
  }
}

uint64_t sub_1BAF6A8CC()
{
  type metadata accessor for AnyMessageQueueListener();

  sub_1BAF3DA6C();
}

uint64_t sub_1BAF6A958(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v32 = a4;
  v33 = a2;
  v34 = a3;
  v7 = *v4;
  v38 = sub_1BAF8E958();
  v40 = *(v38 - 8);
  v8 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v36 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1BAF8E988();
  v37 = *(v39 - 8);
  v10 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v7[10];
  v12 = v7[11];
  v13 = v7[12];
  v14 = type metadata accessor for QueueMessage();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - v17;
  v35 = v5[14];
  (*(v15 + 16))(&v30 - v17, a1, v14);
  v19 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v20 = v19 + v16;
  v21 = (v19 + v16) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 2) = v30;
  *(v22 + 3) = v12;
  *(v22 + 4) = v13;
  *(v22 + 5) = v5;
  (*(v15 + 32))(&v22[v19], v18, v14);
  v22[v20] = v32;
  v23 = &v22[v21];
  v24 = v34;
  *(v23 + 1) = v33;
  *(v23 + 2) = v24;
  aBlock[4] = sub_1BAF6C9B8;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BAF4CF6C;
  aBlock[3] = &unk_1F38F75E0;
  v25 = _Block_copy(aBlock);

  v26 = v31;
  sub_1BAF8E968();
  v41 = MEMORY[0x1E69E7CC0];
  sub_1BAF6CCDC(&qword_1EDBA2128, MEMORY[0x1E69E7F60]);
  sub_1BAF2DB10(&unk_1EBC36770, &qword_1BAF955C0);
  sub_1BAF3B7F4(&qword_1EDBA20D8, &unk_1EBC36770, &qword_1BAF955C0);
  v27 = v36;
  v28 = v38;
  sub_1BAF8F198();
  MEMORY[0x1BFB04C00](0, v26, v27, v25);
  _Block_release(v25);
  (*(v40 + 8))(v27, v28);
  (*(v37 + 8))(v26, v39);
}

void sub_1BAF6AD78(uint64_t a1, void *a2, char a3, uint64_t a4, unint64_t a5)
{
  v10 = *(*a1 + 80);
  v11 = *(*a1 + 88);
  v12 = *(*a1 + 96);
  v13 = type metadata accessor for QueueMessage();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v56 - v19;
  *(a1 + 120) = 0;
  v21 = *a2;
  v22 = a2[1];
  if ((sub_1BAF6B734() & 1) == 0)
  {
    sub_1BAF6C360();
    return;
  }

  v59 = a5;
  v23 = (v14 + 16);
  if (a3)
  {
    v24 = sub_1BAF8F038();
    v25 = *(a1 + 128);
    (*v23)(v20, a2, v13);
    if (os_log_type_enabled(v25, v24))
    {
      v57 = v25;
      v26 = swift_slowAlloc();
      v58 = a2;
      v27 = v26;
      v56 = swift_slowAlloc();
      v60[0] = v56;
      *v27 = 136446466;
      v28 = v59;
      *(v27 + 4) = sub_1BAF49CF8(a4, v59, v60);
      *(v27 + 12) = 2080;
      v29 = QueueMessage.debugDescription.getter(v13);
      v31 = v30;
      (*(v14 + 8))(v20, v13);
      v32 = a4;
      v33 = sub_1BAF49CF8(v29, v31, v60);

      *(v27 + 14) = v33;
      v34 = v57;
      _os_log_impl(&dword_1BADC1000, v57, v24, "Listener %{public}s has timed out processing message %s", v27, 0x16u);
      v35 = v56;
      swift_arrayDestroy();
      MEMORY[0x1BFB06160](v35, -1, -1);
      v36 = v27;
      a2 = v58;
      MEMORY[0x1BFB06160](v36, -1, -1);
    }

    else
    {
      (*(v14 + 8))(v20, v13);
      v32 = a4;
      v28 = v59;
    }

    v50 = sub_1BAF8EC28();
    sub_1BAF2DB10(&qword_1EBC36E68, &unk_1BAF98270);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BAF95190;
    v60[0] = 0x6E657473696C716DLL;
    v60[1] = 0xEA00000000007265;
    v52 = MEMORY[0x1E69E6158];
    sub_1BAF8F1F8();
    *(inited + 96) = v52;
    *(inited + 72) = v32;
    *(inited + 80) = v28;

    sub_1BAF32D08(inited);
    swift_setDeallocating();
    sub_1BAF32F04(inited + 32, &qword_1EBC366C8, &qword_1BAF95238);
    v53 = sub_1BAF8EB78();

    v54 = sub_1BAF8EC28();
    CreateDiagnosticReport(v50, v53, v54);

    sub_1BAF6C510(5u);
    v49 = *(a1 + 192);
    if (!v49)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v37 = sub_1BAF8F018();
    v38 = *(a1 + 128);
    (*v23)(v18, a2, v13);
    if (os_log_type_enabled(v38, v37))
    {
      v39 = v38;
      v40 = swift_slowAlloc();
      v58 = a2;
      v41 = v40;
      v42 = swift_slowAlloc();
      v60[0] = v42;
      *v41 = 136446466;
      *(v41 + 4) = sub_1BAF49CF8(a4, v59, v60);
      *(v41 + 12) = 2080;
      v43 = QueueMessage.debugDescription.getter(v13);
      v45 = v44;
      (*(v14 + 8))(v18, v13);
      v46 = sub_1BAF49CF8(v43, v45, v60);

      *(v41 + 14) = v46;
      _os_log_impl(&dword_1BADC1000, v39, v37, "Listener %{public}s has processed message %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1BFB06160](v42, -1, -1);
      v47 = v41;
      a2 = v58;
      MEMORY[0x1BFB06160](v47, -1, -1);

      v49 = *(a1 + 192);
      if (!v49)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v48 = (*(v14 + 8))(v18, v13);
      v49 = *(a1 + 192);
      if (!v49)
      {
        goto LABEL_12;
      }
    }
  }

  v55 = *(a1 + 200);
  sub_1BAEFD9BC(v49);
  v49(a2);
  v48 = sub_1BAEFD9A4(v49);
LABEL_12:
  sub_1BAF68638(v48);
}

uint64_t sub_1BAF6B32C()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_lock_with_options();
  sub_1BAF6B66C(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return 1;
}

uint64_t sub_1BAF6B66C(uint64_t a1)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  type metadata accessor for AnyMessageQueueStore();
  return sub_1BAF64DA4();
}

uint64_t sub_1BAF6B734()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_lock_with_options();
  sub_1BAF6BA64(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return 1;
}

uint64_t sub_1BAF6BA64(uint64_t a1)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  type metadata accessor for AnyMessageQueueStore();
  return sub_1BAF64DCC();
}

uint64_t sub_1BAF6BB1C()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_lock_with_options();
  sub_1BAF6BE24(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return 1;
}

uint64_t sub_1BAF6BE24(uint64_t a1)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  type metadata accessor for AnyMessageQueueStore();
  return sub_1BAF64D54();
}

uint64_t sub_1BAF6BEC0()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  os_unfair_lock_lock_with_options();
  sub_1BAF6C1D0(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return 1;
}

uint64_t sub_1BAF6C1D0(uint64_t a1)
{
  v7 = *(a1 + 56);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v5 = *(a1 + 24);
  v6 = *(a1 + 40);
  v1 = *(*a1 + 80);
  v2 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  type metadata accessor for AnyMessageQueueStore();
  return sub_1BAF64D7C();
}

void sub_1BAF6C280()
{
  *(v0 + 144) = 1;
  sub_1BAF8F038();
  v1 = *(v0 + 128);
  sub_1BAF8E8B8();

  v2 = sub_1BAF8EC28();
  v3 = sub_1BAF8EC28();
  CreateDiagnosticReport(v2, 0, v3);

  sub_1BAF6C510(4u);
}

void sub_1BAF6C360()
{
  *(v0 + 144) = 1;
  sub_1BAF8F038();
  v1 = *(v0 + 128);
  sub_1BAF8E8B8();

  v2 = sub_1BAF8EC28();
  v3 = sub_1BAF8EC28();
  CreateDiagnosticReport(v2, 0, v3);

  sub_1BAF6C510(3u);
}

uint64_t MessageQueue.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  v6 = *(v0 + 96);

  v7 = *(v0 + 104);

  v8 = *(v0 + 168);

  v9 = *(v0 + 184);
  sub_1BAEFD9A4(*(v0 + 176));
  v10 = *(v0 + 200);
  sub_1BAEFD9A4(*(v0 + 192));
  return v0;
}

uint64_t MessageQueue.__deallocating_deinit()
{
  MessageQueue.deinit();

  return swift_deallocClassInstance();
}

void sub_1BAF6C510(unsigned __int8 a1)
{
  v2 = [objc_opt_self() processInfo];
  v3 = [v2 isRunningTests];

  if ((v3 & 1) == 0)
  {
    v4 = objc_opt_self();
    v5 = sub_1BAF8EC28();
    sub_1BAF2DB10(&qword_1EBC36E50, &qword_1BAF98260);
    inited = swift_initStackObject();
    *(inited + 32) = 0x707954726F727245;
    *(inited + 16) = xmmword_1BAF95190;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1BAF32C04(inited);
    swift_setDeallocating();
    sub_1BAF32F04(inited + 32, &qword_1EBC36E58, &qword_1BAF98268);
    sub_1BAF30DFC(0, &qword_1EBC36E60, 0x1E69E58C0);
    v7 = sub_1BAF8EB78();

    [v4 sendEvent:v5 customPayload:v7];
  }
}

uint64_t sub_1BAF6C6B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = *(*v6 + 80);
  v14 = *(*v6 + 88);
  v15 = *(*v6 + 96);
  type metadata accessor for AnyMessageQueueListener();
  *(v6 + 16) = sub_1BAF8EB68();
  type metadata accessor for UnfairLock();
  v16 = swift_allocObject();
  v17 = swift_slowAlloc();
  *(v16 + 16) = v17;
  *v17 = 0;
  *(v16 + 24) = 0x10000;
  *(v6 + 104) = v16;
  *(v6 + 120) = 0;
  *(v6 + 136) = 3;
  *(v6 + 144) = 0;
  *(v6 + 160) = 0u;
  *(v6 + 176) = 0u;
  *(v6 + 192) = 0u;
  sub_1BAF64E80(a1, v13, a4, a5, v21);
  v18 = v21[0];
  *(v6 + 40) = v21[1];
  v19 = v21[3];
  *(v6 + 56) = v21[2];
  *(v6 + 72) = v19;
  *(v6 + 88) = v21[4];
  *(v6 + 24) = v18;
  *(v6 + 128) = a2;
  *(v6 + 152) = a6;
  *(v6 + 112) = a3;
  return v6;
}

uint64_t sub_1BAF6C808(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1BAF6C9B8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for QueueMessage() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v0[5];
  v8 = *(v0 + v6);
  v9 = v0 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v10 = *(v9 + 1);
  v11 = *(v9 + 2);

  sub_1BAF6AD78(v7, (v0 + v5), v8, v10, v11);
}

uint64_t sub_1BAF6CA54(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1BAF6A840(a1, v1[5]) & 1;
}

uint64_t sub_1BAF6CA7C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for QueueMessage() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = v0 + v5;
  v8 = v0[5];
  return sub_1BAF6A958(v7, *v6, v6[1], 0);
}

uint64_t sub_1BAF6CB1C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = (type metadata accessor for QueueMessage() - 8);
  v5 = *(*v4 + 80);
  v6 = (v5 + 48) & ~v5;
  v7 = (*(*v4 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v0[5];

  v9 = v0 + v6;
  v10 = *(v9 + 1);

  v11 = *(v9 + 3);

  (*(*(v2 - 8) + 8))(&v9[v4[14]], v2);
  v12 = *&v9[v4[15] + 8];

  v13 = *(v0 + v7 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 16, v5 | 7);
}

uint64_t sub_1BAF6CC40()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for QueueMessage() - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v0[5];
  v7 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1BAF6CDE4(v6, v0 + v5, v8, v9);
}

uint64_t sub_1BAF6CCDC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BAF6CD24()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = *(type metadata accessor for QueueMessage() - 8);
  v5 = *(v0 + ((*(v4 + 64) + ((*(v4 + 80) + 88) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1BAF6A8CC();
}

uint64_t sub_1BAF6CE24@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  return sub_1BAF69400(a1, *(v2 + 40), *(v2 + 48), *(v2 + 16), a2);
}

APFoundation::CountryCode_optional __swiftcall CountryCode.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v5 = sub_1BAF8E3E8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v21 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v21 - v14;
  if (sub_1BAF8ED28() != 2)
  {
    goto LABEL_6;
  }

  if (qword_1EBC36550 != -1)
  {
    swift_once();
  }

  sub_1BADC4BA8(v5, qword_1EBC368D0);
  sub_1BAF8E3A8();
  (*(v6 + 16))(v10, v15, v5);
  sub_1BAF3C940(&qword_1EBC36578);
  sub_1BAF8F178();
  sub_1BAF3C940(&qword_1EBC36580);
  v16 = sub_1BAF8EC18();
  v17 = *(v6 + 8);
  v17(v13, v5);
  v18 = (v17)(v15, v5);
  if (v16)
  {
    *v4 = countAndFlagsBits;
    v4[1] = object;
  }

  else
  {
LABEL_6:

    *v4 = 0;
    v4[1] = 0;
  }

  result.value.value._object = v19;
  result.value.value._countAndFlagsBits = v18;
  result.is_nil = v20;
  return result;
}

APFoundation::CountrySubdivisionCode_optional __swiftcall CountrySubdivisionCode.init(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = v1;
  v21[0] = 45;
  v21[1] = 0xE100000000000000;
  v20[2] = v21;

  v6 = sub_1BAF6D974(1, 0, sub_1BAF6E13C, v20, countAndFlagsBits, object, v5);
  v7 = v6;
  if (v6[2] != 2)
  {
    goto LABEL_6;
  }

  v8 = v6[4];
  v9 = v6[5];
  v10 = v6[6];
  v11 = v6[7];

  MEMORY[0x1BFB04820](v8, v9, v10, v11);

  LOBYTE(v8) = sub_1BAF6D240();

  if ((v8 & 1) == 0)
  {
LABEL_6:

    goto LABEL_7;
  }

  if (v7[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v7[8];
  v16 = v7[9];
  v17 = v7[10];
  v18 = v7[11];

  MEMORY[0x1BFB04820](v15, v16, v17, v18);

  v19 = sub_1BAF6D748();

  if ((v19 & 1) == 0)
  {
LABEL_7:

    *v4 = 0;
    v4[1] = 0;
    goto LABEL_11;
  }

  *v4 = countAndFlagsBits;
  v4[1] = object;
LABEL_11:
  result.value.value._object = v13;
  result.value.value._countAndFlagsBits = v12;
  result.is_nil = v14;
  return result;
}

uint64_t sub_1BAF6D240()
{
  v0 = sub_1BAF8E3E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  if (sub_1BAF8ED28() == 2)
  {
    if (qword_1EBC36550 != -1)
    {
      swift_once();
    }

    sub_1BADC4BA8(v0, qword_1EBC368D0);
    sub_1BAF8E3A8();
    (*(v1 + 16))(v5, v10, v0);
    sub_1BAF3C940(&qword_1EBC36578);
    sub_1BAF8F178();
    sub_1BAF3C940(&qword_1EBC36580);
    v11 = sub_1BAF8EC18();
    v12 = *(v1 + 8);
    v12(v8, v0);
    v12(v10, v0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t CountryCode.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1BAF8ED18();
}

uint64_t CountryCode.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CountrySubdivisionCode.countryCode.getter@<X0>(uint64_t *a1@<X8>)
{
  v30 = a1;
  v2 = sub_1BAF8E3E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v14 = *v1;
  v13 = v1[1];

  v15 = sub_1BAF6E194(2);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v22 = MEMORY[0x1BFB04820](v15, v17, v19, v21);
  v24 = v23;

  if (sub_1BAF8ED28() == 2)
  {
    if (qword_1EBC36550 != -1)
    {
      swift_once();
    }

    sub_1BADC4BA8(v2, qword_1EBC368D0);
    sub_1BAF8E3A8();
    (*(v3 + 16))(v7, v12, v2);
    sub_1BAF3C940(&qword_1EBC36578);
    sub_1BAF8F178();
    sub_1BAF3C940(&qword_1EBC36580);
    v25 = sub_1BAF8EC18();
    v26 = *(v3 + 8);
    v26(v10, v2);
    result = (v26)(v12, v2);
    if (v25)
    {
      v28 = v30;
      *v30 = v22;
      v28[1] = v24;
      return result;
    }
  }

  else
  {

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BAF6D748()
{
  v0 = sub_1BAF8E3E8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v14 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  if ((sub_1BAF8ED28() - 4) >= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (qword_1EBC36558 != -1)
    {
      swift_once();
    }

    sub_1BADC4BA8(v0, qword_1EBC368E8);
    sub_1BAF8E3A8();
    (*(v1 + 16))(v5, v10, v0);
    sub_1BAF3C940(&qword_1EBC36578);
    sub_1BAF8F178();
    sub_1BAF3C940(&qword_1EBC36580);
    v11 = sub_1BAF8EC18();
    v12 = *(v1 + 8);
    v12(v8, v0);
    v12(v10, v0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

unint64_t sub_1BAF6D974@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1BAF8EE18();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1BAF4F230(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1BAF4F230((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1BAF8EDF8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1BAF8ED38();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1BAF8ED38();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1BAF8EE18();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1BAF4F230(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1BAF8EE18();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1BAF4F230(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1BAF4F230((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1BAF8ED38();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_1BAF6DD34@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = sub_1BAF8F108();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = sub_1BAF8F0E8() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = sub_1BAF8F0E8();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = sub_1BAF8F118();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1BAF4F230(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = sub_1BAF4F230((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = sub_1BAF8F0E8();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = sub_1BAF8F118();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = sub_1BAF4F230((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = sub_1BAF4F230(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = sub_1BAF8F118();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = sub_1BAF4F230(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BAF6E13C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1BAF8F4C8() & 1;
  }
}

uint64_t sub_1BAF6E194(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1BAF8ED48();

    return sub_1BAF8EE18();
  }

  return result;
}

unint64_t sub_1BAF6E234()
{
  result = qword_1EBC36E70;
  if (!qword_1EBC36E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E70);
  }

  return result;
}

unint64_t sub_1BAF6E28C()
{
  result = qword_1EBC36E78;
  if (!qword_1EBC36E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBC36E78);
  }

  return result;
}

uint64_t CurrentTerritorySource.__allocating_init(countryCodeSource:subdivisionCodeSource:)(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_1BADC5B38(a1, v4 + 16);
  sub_1BADC5B38(a2, v4 + 56);
  return v4;
}

uint64_t CurrentTerritorySource.init(countryCodeSource:subdivisionCodeSource:)(__int128 *a1, __int128 *a2)
{
  sub_1BADC5B38(a1, v2 + 16);
  sub_1BADC5B38(a2, v2 + 56);
  return v2;
}

void __swiftcall CurrentTerritorySource.territory()(APFoundation::Territory_optional *__return_ptr retstr)
{
  v3 = sub_1BAF8E3E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v35 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v35 - v12;
  v14 = v1[10];
  v15 = v1[11];
  sub_1BADC8524(v1 + 7, v14);
  (*(v15 + 8))(&v37, v14, v15);
  v16 = v38;
  if (v38)
  {
    v36 = retstr;
    v17 = v37;
    swift_bridgeObjectRetain_n();
    v35 = v17;
    v18 = sub_1BAF6E194(2);
    v20 = v19;
    v22 = v21;
    v24 = v23;

    v25 = MEMORY[0x1BFB04820](v18, v20, v22, v24);
    v27 = v26;

    if (sub_1BAF8ED28() == 2)
    {
      if (qword_1EBC36550 != -1)
      {
        swift_once();
      }

      sub_1BADC4BA8(v3, qword_1EBC368D0);
      sub_1BAF8E3A8();
      (*(v4 + 16))(v8, v13, v3);
      sub_1BAF3C940(&qword_1EBC36578);
      sub_1BAF8F178();
      sub_1BAF3C940(&qword_1EBC36580);
      v28 = sub_1BAF8EC18();
      v29 = *(v4 + 8);
      v29(v11, v3);
      v29(v13, v3);
      if (v28)
      {

        v31 = v35;
        v30 = v36;
        v36->value.country.value._countAndFlagsBits = v25;
        v30->value.country.value._object = v27;
        v30->value.administrativeArea.value.value._countAndFlagsBits = v31;
        v30->value.administrativeArea.value.value._object = v16;
        return;
      }
    }

    else
    {

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    v32 = v1[5];
    v33 = v1[6];
    sub_1BADC8524(v1 + 2, v32);
    (*(v33 + 8))(&v37, v32, v33);
    v34 = v38;
    if (v38)
    {
      retstr->value.country.value._countAndFlagsBits = v37;
      retstr->value.country.value._object = v34;
      retstr->value.administrativeArea.value.value._countAndFlagsBits = 0;
      retstr->value.administrativeArea.value.value._object = 0;
    }

    else
    {
      retstr->value.country = 0u;
      retstr->value.administrativeArea.value = 0u;
    }
  }
}

uint64_t CurrentTerritorySource.deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));
  return v0;
}

uint64_t CurrentTerritorySource.__deallocating_deinit()
{
  sub_1BADC5BE0((v0 + 16));
  sub_1BADC5BE0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_1BAF6E7F8(uint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1BAF8F2B8();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1BAF2DC88(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void __swiftcall SemanticVersion.init(major:minor:patch:prereleaseIdentifiers:)(APFoundation::SemanticVersion *__return_ptr retstr, Swift::UInt major, Swift::UInt minor, Swift::UInt patch, Swift::OpaquePointer_optional prereleaseIdentifiers)
{
  retstr->major = major;
  retstr->minor = minor;
  retstr->patch = patch;
  retstr->prereleaseIdentifiers.value._rawValue = prereleaseIdentifiers.value._rawValue;
}

void __swiftcall SemanticVersion.init(_:)(APFoundation::SemanticVersion_optional *__return_ptr retstr, Swift::String a2)
{
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v80 = retstr;
  v79 = sub_1BAF2DB10(&qword_1EBC36E80, &qword_1BAF98458);
  v4 = *(v79 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v79);
  v7 = &v66 - v6;
  v8 = sub_1BAF2DB10(&qword_1EBC36E88, &qword_1BAF98460);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v66 - v11;
  *&v82 = countAndFlagsBits;
  *(&v82 + 1) = object;
  sub_1BAF2DB10(&qword_1EBC36E90, &qword_1BAF98468);
  sub_1BAF8E898();
  sub_1BAF6F250();
  sub_1BAF55F7C(qword_1EDBA2130, &qword_1EBC36E88, &qword_1BAF98460);
  v13 = sub_1BAF8EBD8();
  (*(v9 + 8))(v12, v8);

  if (!*(v13 + 16))
  {
    goto LABEL_5;
  }

  v14 = v79;
  (*(v4 + 16))(v7, v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v79);

  sub_1BAF8E8A8();
  v90 = v81[8];
  v91 = v81[9];
  v92 = v81[10];
  v93 = v81[11];
  v86 = v81[4];
  v87 = v81[5];
  v88 = v81[6];
  v89 = v81[7];
  v82 = v81[0];
  v83 = v81[1];
  v84 = v81[2];
  v85 = v81[3];
  (*(v4 + 8))(v7, v14);
  v15 = *(&v83 + 1);
  v16 = v84;
  v17 = v85;
  v75 = *(&v86 + 1);
  v76 = v86;
  v18 = *(&v87 + 1);
  v73 = v88;
  v74 = v87;
  v71 = v89;
  v72 = *(&v88 + 1);
  v19 = *(&v89 + 1);
  v68 = *(&v90 + 1);
  v69 = v90;
  v20 = *(&v91 + 1);
  v67 = v91;
  v21 = *(&v93 + 1);
  sub_1BAF6F2A4(&v82, v81);
  v79 = v15;

  v22 = v18;

  v78 = v19;

  v77 = v21;

  if (!((*(&v16 + 1) ^ v16) >> 14))
  {
    goto LABEL_32;
  }

  v23 = sub_1BAF70470(v16, *(&v16 + 1), v17, *(&v17 + 1), 10);
  if ((v24 & 0x100) != 0)
  {
    v70 = sub_1BAF6FEE0(v16, *(&v16 + 1), v17, *(&v17 + 1), 10);
    v25 = v26;
  }

  else
  {
    v25 = v24;
    v70 = v23;
  }

  if (v25)
  {
    goto LABEL_8;
  }

  v28 = v22;
  v29 = v75;
  sub_1BAF6F2A4(&v82, v81);

  v30 = v78;

  v31 = v76;
  v32 = v74;
  if (!((v29 ^ v76) >> 14))
  {
LABEL_32:
    sub_1BAF32F04(&v82, &qword_1EBC36E90, &qword_1BAF98468);
LABEL_5:

LABEL_9:
    v27 = v80;
    v80->value.major = 0;
    v27->value.minor = 0;
    v27->value.patch = 0;
    v27->value.prereleaseIdentifiers.value._rawValue = 1;
    return;
  }

  v33 = sub_1BAF70470(v76, v29, v74, v28, 10);
  if ((v34 & 0x100) != 0)
  {
    v76 = sub_1BAF6FEE0(v31, v29, v32, v28, 10);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_8:
    sub_1BAF32F04(&v82, &qword_1EBC36E90, &qword_1BAF98468);
    goto LABEL_9;
  }

  v35 = v34;
  v76 = v33;

  if (v35)
  {
    goto LABEL_8;
  }

LABEL_15:
  sub_1BAF6F2A4(&v82, v81);

  v39 = v72;
  v38 = v73;
  v40 = v71;
  if (!((v72 ^ v73) >> 14))
  {
    goto LABEL_32;
  }

  v41 = sub_1BAF70470(v73, v72, v71, v30, 10);
  if ((v42 & 0x100) != 0)
  {
    v75 = sub_1BAF6FEE0(v38, v39, v40, v30, 10);
    v43 = v44;
  }

  else
  {
    v43 = v42;
    v75 = v41;
  }

  if (v43)
  {
    goto LABEL_8;
  }

  if (v20)
  {
    *&v81[0] = 46;
    *(&v81[0] + 1) = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v45);
    *(&v66 - 2) = v81;
    v46 = sub_1BAF6DD34(0x7FFFFFFFFFFFFFFFLL, 1, sub_1BAF6E13C, (&v66 - 4), v69, v68, v67, &v66);
    v47 = *(v46 + 2);
    if (v47)
    {
      *&v81[0] = MEMORY[0x1E69E7CC0];
      v48 = v46;
      sub_1BAF6FB8C(0, v47, 0);
      v49 = v48;
      v50 = 0;
      v51 = *&v81[0];
      v52 = (v48 + 56);
      v79 = v49;
      while (v50 < *(v49 + 16))
      {
        v53 = *(v52 - 3);
        v54 = *(v52 - 2);
        v55 = *(v52 - 1);
        v56 = *v52;

        v57 = MEMORY[0x1BFB04820](v53, v54, v55, v56);
        v59 = v58;

        *&v81[0] = v51;
        v61 = v51[2];
        v60 = v51[3];
        if (v61 >= v60 >> 1)
        {
          sub_1BAF6FB8C((v60 > 1), v61 + 1, 1);
          v51 = *&v81[0];
        }

        ++v50;
        v51[2] = v61 + 1;
        v62 = &v51[2 * v61];
        v62[4] = v57;
        v62[5] = v59;
        v52 += 4;
        v49 = v79;
        if (v47 == v50)
        {

          goto LABEL_30;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    v51 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v51 = 0;
  }

LABEL_30:
  v63 = v80;
  v64 = v75;
  v65 = v76;
  v80->value.major = v70;
  v63->value.minor = v65;
  v63->value.patch = v64;
  v63->value.prereleaseIdentifiers.value._rawValue = v51;
}

unint64_t sub_1BAF6F250()
{
  result = qword_1EDBA2118;
  if (!qword_1EDBA2118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA2118);
  }

  return result;
}

uint64_t sub_1BAF6F2A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36E90, &qword_1BAF98468);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void __swiftcall SemanticVersion.splitPrereleaseIdentifiers()(Swift::tuple_version_APFoundation_SemanticVersion_prereleaseIdentifiers_OpaquePointer_optional *__return_ptr retstr)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  *v1 = *v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = 0;
}

unint64_t sub_1BAF6F32C()
{
  v1 = 0x726F6A616DLL;
  v2 = 0x6863746170;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0)
  {
    v1 = 0x726F6E696DLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1BAF6F3A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BAF712B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BAF6F3D4(uint64_t a1)
{
  v2 = sub_1BAF7053C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BAF6F410(uint64_t a1)
{
  v2 = sub_1BAF7053C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SemanticVersion.encode(to:)(void *a1)
{
  v4 = sub_1BAF2DB10(&qword_1EBC36E98, &qword_1BAF98470);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v15 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v15[1] = v1[2];
  v15[2] = v9;
  v15[0] = v11;
  v12 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF7053C();
  sub_1BAF8F648();
  v19 = 0;
  sub_1BAF8F448();
  if (!v2)
  {
    v13 = v15[0];
    v18 = 1;
    sub_1BAF8F448();
    v17 = 2;
    sub_1BAF8F448();
    v15[3] = v13;
    v16 = 3;
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF3CF88(&qword_1EDBA20D0);
    sub_1BAF8F428();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t SemanticVersion.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1BAF2DB10(&qword_1EBC36EA0, &qword_1BAF98478);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  sub_1BADC8524(a1, a1[3]);
  sub_1BAF7053C();
  sub_1BAF8F628();
  if (!v2)
  {
    v20 = 0;
    v11 = sub_1BAF8F3E8();
    v19 = 1;
    v12 = sub_1BAF8F3E8();
    v18 = 2;
    v16[0] = sub_1BAF8F3E8();
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    v17 = 3;
    sub_1BAF3CF88(&qword_1EDBA20C8);
    sub_1BAF8F3C8();
    (*(v6 + 8))(v9, v5);
    v14 = v16[0];
    v15 = v16[1];
    *a2 = v11;
    a2[1] = v12;
    a2[2] = v14;
    a2[3] = v15;
  }

  return sub_1BADC5BE0(a1);
}

BOOL sub_1BAF6F91C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return !_s12APFoundation15SemanticVersionV1loiySbAC_ACtFZ_0(v5, v6);
}

BOOL sub_1BAF6F95C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return !_s12APFoundation15SemanticVersionV1loiySbAC_ACtFZ_0(v6, v5);
}

BOOL sub_1BAF6F99C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return _s12APFoundation15SemanticVersionV1loiySbAC_ACtFZ_0(v5, v6);
}

uint64_t SemanticVersion.description.getter()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v8 = *v0;
  v9 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v4 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v4);

  MEMORY[0x1BFB048C0](46, 0xE100000000000000);
  v5 = sub_1BAF8F478();
  MEMORY[0x1BFB048C0](v5);

  result = v9;
  if (v2)
  {
    MEMORY[0x1BFB048C0](45, 0xE100000000000000);
    sub_1BAF2DB10(&qword_1EBC367E0, &qword_1BAF956D8);
    sub_1BAF55F7C(&qword_1EBC36898, &qword_1EBC367E0, &qword_1BAF956D8);
    v7 = sub_1BAF8EBF8();
    MEMORY[0x1BFB048C0](v7);

    return v9;
  }

  return result;
}

void *sub_1BAF6FB4C(void *a1, int64_t a2, char a3)
{
  result = sub_1BAF6FBAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAF6FB6C(char *a1, int64_t a2, char a3)
{
  result = sub_1BAF6FCE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1BAF6FB8C(char *a1, int64_t a2, char a3)
{
  result = sub_1BAF6FDD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1BAF6FBAC(void *result, int64_t a2, char a3, void *a4)
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
    sub_1BAF2DB10(&qword_1EBC36EA8, &qword_1BAF986C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BAF2DB10(qword_1EBC36EB0, &unk_1BAF986D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1BAF6FCE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC36688, &qword_1BAF950D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1BAF6FDD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1BAF2DB10(&qword_1EBC367D8, &qword_1BAF956D0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unsigned __int8 *sub_1BAF6FEE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int64_t a5)
{
  v70 = a1;
  v71 = a2;
  v72 = a3;
  v73 = a4;
  sub_1BAF71410();

  result = sub_1BAF8EE08();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1BAF2E928();
    v40 = v39;

    v7 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1BAF8F2B8();
      v9 = v69;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v23 = v9 - 1;
        if (v23)
        {
          v24 = a5 + 48;
          v25 = a5 + 55;
          v26 = a5 + 87;
          if (a5 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v15 = 0;
            v27 = result + 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              if (!is_mul_ok(v15, a5))
              {
                goto LABEL_128;
              }

              v30 = v15 * a5;
              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v15 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_66:
            v19 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v32 = a5 + 48;
        v33 = a5 + 55;
        v34 = a5 + 87;
        if (a5 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v15 = 0;
          while (1)
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v33)
              {
                v19 = 0;
                if (v35 < 0x61 || v35 >= v34)
                {
                  goto LABEL_129;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v37 = v15 * a5;
            v38 = v35 + v36;
            v22 = __CFADD__(v37, v38);
            v15 = v37 + v38;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v19 = 0;
      goto LABEL_129;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            if (!is_mul_ok(v15, a5))
            {
              goto LABEL_128;
            }

            v20 = v15 * a5;
            v21 = v17 + v18;
            v22 = v20 >= v21;
            v15 = v20 - v21;
            if (!v22)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v19 = 0;
LABEL_129:

        return v19;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v70 = v8;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a5 + 48;
        v62 = a5 + 55;
        v63 = a5 + 87;
        if (a5 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v19 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_129;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v67 = v43 * a5;
          v68 = v65 + v66;
          v22 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v22)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a5 + 48;
        v45 = a5 + 55;
        v46 = a5 + 87;
        if (a5 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v19 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_129;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          if (!is_mul_ok(v43, a5))
          {
            goto LABEL_128;
          }

          v50 = v43 * a5;
          v51 = v48 + v49;
          v22 = v50 >= v51;
          v43 = v50 - v51;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a5 + 48;
      v54 = a5 + 55;
      v55 = a5 + 87;
      if (a5 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v19 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_129;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        if (!is_mul_ok(v43, a5))
        {
          goto LABEL_128;
        }

        v59 = v43 * a5;
        v60 = v57 + v58;
        v22 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v19 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t sub_1BAF70470(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1BAF8F2B8();
  }

  result = sub_1BAF70E44(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1BAF7053C()
{
  result = qword_1EDBA3938[0];
  if (!qword_1EDBA3938[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBA3938);
  }

  return result;
}

BOOL _s12APFoundation15SemanticVersionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    return v6 && (sub_1BAF3D528(v5, v6) & 1) != 0;
  }

  return !v6;
}

uint64_t sub_1BAF705F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BAF2DB10(&qword_1EBC367A0, &qword_1BAF955D8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v55 - v6;
  v8 = *(a1 + 16);
  v9 = *(a2 + 16);
  result = v9 == 0;
  if ((v8 != 0) != result)
  {
    if (!v8)
    {
      return v8 < v9;
    }

    v11 = 0;
    v12 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      if (v9 == v11)
      {
        return v8 < v9;
      }

      v14 = *(v12 - 1);
      v15 = *v12;
      v17 = *(i - 1);
      v16 = *i;
      if (v14 != v17 || v15 != v16)
      {
        v19 = *(v12 - 1);
        v20 = *v12;
        v21 = *(i - 1);
        v22 = *i;
        result = sub_1BAF8F4C8();
        if ((result & 1) == 0)
        {
          break;
        }
      }

      ++v11;
      v12 += 2;
      if (v8 == v11)
      {
        return v8 < v9;
      }
    }

    if (v8 != v9)
    {
      return 1;
    }

    v23 = HIBYTE(v15) & 0xF;
    v24 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v15 & 0x2000000000000000) != 0)
    {
      v25 = HIBYTE(v15) & 0xF;
    }

    else
    {
      v25 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {

      goto LABEL_78;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      swift_bridgeObjectRetain_n();

      v27 = sub_1BAF2DC88(v14, v15, 10);
      v54 = v53;

      if ((v54 & 1) == 0)
      {
LABEL_77:

        v46 = sub_1BAF6E7F8(v17, v16);
        if ((v47 & 1) == 0)
        {
          v52 = v46;

          return v27 < v52;
        }
      }

LABEL_78:

      sub_1BAF6E7F8(v14, v15);
      if (v48)
      {

        sub_1BAF6E7F8(v17, v16);
        if (v49)
        {
          v56 = v14;
          v57 = v15;
          v55[0] = v17;
          v55[1] = v16;
          v50 = sub_1BAF8E7C8();
          (*(*(v50 - 8) + 56))(v7, 1, 1, v50);
          sub_1BAF2DB58();
          v51 = sub_1BAF8F158();
          sub_1BAF32F04(v7, &qword_1EBC367A0, &qword_1BAF955D8);

          return v51 == -1;
        }

        else
        {

          return 0;
        }
      }

      else
      {

        return 1;
      }
    }

    if ((v15 & 0x2000000000000000) != 0)
    {
      v56 = v14;
      v57 = v15 & 0xFFFFFFFFFFFFFFLL;
      if (v14 == 43)
      {
        if (v23)
        {
          if (--v23)
          {
            v27 = 0;
            v37 = &v56 + 1;
            while (1)
            {
              v38 = *v37 - 48;
              if (v38 > 9)
              {
                break;
              }

              v39 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                break;
              }

              v27 = v39 + v38;
              if (__OFADD__(v39, v38))
              {
                break;
              }

              ++v37;
              if (!--v23)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_91:
        __break(1u);
        return result;
      }

      if (v14 != 45)
      {
        if (v23)
        {
          v27 = 0;
          v42 = &v56;
          while (1)
          {
            v43 = *v42 - 48;
            if (v43 > 9)
            {
              break;
            }

            v44 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v44 + v43;
            if (__OFADD__(v44, v43))
            {
              break;
            }

            v42 = (v42 + 1);
            if (!--v23)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }

      if (v23)
      {
        if (--v23)
        {
          v27 = 0;
          v31 = &v56 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v27;
            if ((v27 * 10) >> 64 != (10 * v27) >> 63)
            {
              break;
            }

            v27 = v33 - v32;
            if (__OFSUB__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v23)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        result = (v15 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1BAF8F2B8();
      }

      v26 = *result;
      if (v26 == 43)
      {
        if (v24 >= 1)
        {
          v23 = v24 - 1;
          if (v24 != 1)
          {
            v27 = 0;
            if (result)
            {
              v34 = (result + 1);
              while (1)
              {
                v35 = *v34 - 48;
                if (v35 > 9)
                {
                  goto LABEL_75;
                }

                v36 = 10 * v27;
                if ((v27 * 10) >> 64 != (10 * v27) >> 63)
                {
                  goto LABEL_75;
                }

                v27 = v36 + v35;
                if (__OFADD__(v36, v35))
                {
                  goto LABEL_75;
                }

                ++v34;
                if (!--v23)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_67;
          }

          goto LABEL_75;
        }

        goto LABEL_90;
      }

      if (v26 != 45)
      {
        if (v24)
        {
          v27 = 0;
          if (result)
          {
            while (1)
            {
              v40 = *result - 48;
              if (v40 > 9)
              {
                goto LABEL_75;
              }

              v41 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_75;
              }

              v27 = v41 + v40;
              if (__OFADD__(v41, v40))
              {
                goto LABEL_75;
              }

              ++result;
              if (!--v24)
              {
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

LABEL_75:
        v27 = 0;
        LOBYTE(v23) = 1;
LABEL_76:
        LOBYTE(v55[0]) = v23;
        v45 = v23;

        if ((v45 & 1) == 0)
        {
          goto LABEL_77;
        }

        goto LABEL_78;
      }

      if (v24 >= 1)
      {
        v23 = v24 - 1;
        if (v24 != 1)
        {
          v27 = 0;
          if (result)
          {
            v28 = (result + 1);
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                goto LABEL_75;
              }

              v30 = 10 * v27;
              if ((v27 * 10) >> 64 != (10 * v27) >> 63)
              {
                goto LABEL_75;
              }

              v27 = v30 - v29;
              if (__OFSUB__(v30, v29))
              {
                goto LABEL_75;
              }

              ++v28;
              if (!--v23)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_67:
          LOBYTE(v23) = 0;
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  return result;
}

BOOL _s12APFoundation15SemanticVersionV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1 >= *a2;
  if (*a1 != *a2)
  {
    return !v2;
  }

  v3 = a1[1];
  v4 = a2[1];
  v2 = v3 >= v4;
  if (v3 != v4)
  {
    return !v2;
  }

  v5 = a1[2];
  v6 = a2[2];
  v2 = v5 >= v6;
  if (v5 != v6)
  {
    return !v2;
  }

  v7 = a1[3];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  if (a2[3])
  {
    v9 = a2[3];
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1BAF705F8(v8, v9);

  return v10 & 1;
}

unint64_t sub_1BAF70C18()
{
  result = qword_1EDBA31E8;
  if (!qword_1EDBA31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA31E8);
  }

  return result;
}

uint64_t sub_1BAF70C6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1BAF70CC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1BAF70D40()
{
  result = qword_1EDBA31F0;
  if (!qword_1EDBA31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA31F0);
  }

  return result;
}

unint64_t sub_1BAF70D98()
{
  result = qword_1EDBA3928;
  if (!qword_1EDBA3928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3928);
  }

  return result;
}

unint64_t sub_1BAF70DF0()
{
  result = qword_1EDBA3930;
  if (!qword_1EDBA3930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA3930);
  }

  return result;
}

uint64_t sub_1BAF70E44(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, int64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1BAF2ED20(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_96;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1BAF8EDC8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1BAF2ED20(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1BAF2ED20(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_92;
  }

  if (v25 < a3 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1BAF8EDC8();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v26 < v13)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 48;
        v42 = a6 + 55;
        v43 = a6 + 87;
        if (a6 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v41)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                if (v46 < 0x61 || v46 >= v43)
                {
                  return v37;
                }

                v47 = -87;
              }

              else
              {
                v47 = -55;
              }
            }

            else
            {
              v47 = -48;
            }

            if (!is_mul_ok(v32, a6))
            {
              return 0;
            }

            v48 = v32 * a6;
            v49 = v46 + v47;
            v40 = __CFADD__(v48, v49);
            v32 = v48 + v49;
            if (v40)
            {
              return 0;
            }

            ++v44;
            --v45;
          }

          while (v45);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 48;
      v51 = a6 + 55;
      v52 = a6 + 87;
      if (a6 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v50)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              if (v53 < 0x61 || v53 >= v52)
              {
                return v37;
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v55 = v32 * a6;
          v56 = v53 + v54;
          v40 = __CFADD__(v55, v56);
          v32 = v55 + v56;
          if (v40)
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          if (!is_mul_ok(v32, a6))
          {
            return 0;
          }

          v38 = v32 * a6;
          v39 = v35 + v36;
          v40 = v38 >= v39;
          v32 = v38 - v39;
          if (!v40)
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1BAF712B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6863746170 && a2 == 0xE500000000000000 || (sub_1BAF8F4C8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001BAFA37F0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1BAF8F4C8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1BAF71410()
{
  result = qword_1EDBA2100;
  if (!qword_1EDBA2100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBA2100);
  }

  return result;
}

uint64_t JSONKeyValueSource.__allocating_init(jsonSource:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1BADC5B38(a1, v2 + 16);
  return v2;
}

Swift::Bool_optional __swiftcall JSONKeyValueSource.BOOLFor(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  sub_1BADC8524(v1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!v6)
  {
    return 2;
  }

  v7 = v6;
  if (!*(v6 + 16) || (v8 = sub_1BAF31DBC(countAndFlagsBits, object), (v9 & 1) == 0))
  {

    return 2;
  }

  sub_1BAF45388(*(v7 + 56) + 32 * v8, v12);

  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 2;
  }
}

Swift::Double_optional __swiftcall JSONKeyValueSource.doubleFor(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  sub_1BADC8524(v1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (v6)
  {
    v8 = v6;
    if (*(v6 + 16) && (v9 = sub_1BAF31DBC(countAndFlagsBits, object), (v10 & 1) != 0))
    {
      sub_1BAF45388(*(v8 + 56) + 32 * v9, v12);

      if (swift_dynamicCast())
      {
        LOBYTE(v6) = v11;
      }

      else
      {
        LOBYTE(v6) = 0;
      }
    }

    else
    {

      LOBYTE(v6) = 0;
    }
  }

  result.value = v7;
  result.is_nil = v6;
  return result;
}

Swift::String_optional __swiftcall JSONKeyValueSource.stringFor(key:)(Swift::String key)
{
  object = key._object;
  countAndFlagsBits = key._countAndFlagsBits;
  v4 = v1[5];
  v5 = v1[6];
  sub_1BADC8524(v1 + 2, v4);
  v6 = (*(v5 + 8))(v4, v5);
  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = v6;
  if (!*(v6 + 16) || (v8 = sub_1BAF31DBC(countAndFlagsBits, object), (v9 & 1) == 0))
  {

    v6 = 0;
LABEL_11:
    v12 = 0;
    goto LABEL_12;
  }

  sub_1BAF45388(*(v7 + 56) + 32 * v8, v16);

  v10 = swift_dynamicCast();
  v11 = v10 == 0;
  if (v10)
  {
    v6 = v14;
  }

  else
  {
    v6 = 0;
  }

  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = v15;
  }

LABEL_12:
  result.value._object = v12;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1BAF7184C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v6 = v5;
  v55 = a2;
  v56 = a4;
  v53 = a1;
  v54 = a3;
  v8 = sub_1BAF2DB10(&unk_1EBC36750, &qword_1BAF95590);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v46 - v10;
  v12 = sub_1BAF8E728();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1BAF8E788();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BAF8E778();
  v22 = sub_1BAF8E748();
  v51 = v23;
  v52 = v22;
  (*(v18 + 8))(v21, v17);
  sub_1BAF400F4(v5 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created, v11);
  v24 = *(v13 + 48);
  v25 = v24(v11, 1, v12);
  v49 = v16;
  v50 = v12;
  if (v25 == 1)
  {
    sub_1BAF8E718();
    if (v24(v11, 1, v12) != 1)
    {
      sub_1BAF55EA4(v11);
    }
  }

  else
  {
    (*(v13 + 32))(v16, v11, v12);
  }

  v26 = v5[3];
  v48 = v5[2];
  v47 = *(v5 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_state);
  v27 = *(v5 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState + 8);
  v46 = *(v5 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState);
  v28 = OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime;
  swift_beginAccess();
  v29 = type metadata accessor for WorkOrder();
  sub_1BAF400F4(v5 + v28, &a5[v29[9]]);
  v30 = v5[4];
  v32 = *(v5 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId);
  v31 = *(v6 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId + 8);
  v34 = *(v6 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData);
  v33 = *(v6 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData + 8);
  v35 = v51;
  *a5 = v52;
  *(a5 + 1) = v35;
  (*(v13 + 32))(&a5[v29[5]], v49, v50);
  v36 = &a5[v29[6]];
  *v36 = v48;
  *(v36 + 1) = v26;
  a5[v29[7]] = v47;
  v37 = &a5[v29[8]];
  *v37 = v46;
  *(v37 + 1) = v27;
  *&a5[v29[10]] = v30;
  v38 = &a5[v29[11]];
  v39 = v54;
  v41 = v55;
  v40 = v56;
  *v38 = v53;
  *(v38 + 1) = v41;
  v42 = &a5[v29[12]];
  *v42 = v39;
  *(v42 + 1) = v40;
  v43 = &a5[v29[13]];
  *v43 = v32;
  *(v43 + 1) = v31;
  v44 = &a5[v29[14]];
  *v44 = v34;
  *(v44 + 1) = v33;
}

uint64_t sub_1BAF71BE4()
{
  v1 = v0[3];

  sub_1BAF55EA4(v0 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_scheduledTime);
  v2 = *(v0 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorId + 8);

  v3 = *(v0 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_requestorData + 8);

  sub_1BAF55EA4(v0 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_created);
  v4 = *(v0 + OBJC_IVAR____TtC12APFoundation16WorkOrderBuilder_retryState + 8);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkOrderBuilder()
{
  result = qword_1EDBA3078;
  if (!qword_1EDBA3078)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BAF71CF0()
{
  sub_1BAF6081C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

APFoundation::BundleID __swiftcall BundleID.init(bundle:)(NSBundle bundle)
{
  v3 = v1;
  v4 = [(objc_class *)bundle.super.isa bundleIdentifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BAF8EC38();
    v8 = v7;
  }

  else
  {

    v8 = 0xE700000000000000;
    v6 = 0x6E776F6E6B6E75;
  }

  *v3 = v6;
  v3[1] = v8;
  result.value._object = v10;
  result.value._countAndFlagsBits = v9;
  return result;
}

uint64_t sub_1BAF71EB4(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FD8) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + dword_1EBC36FD8) ^ 0x88))] ^ 0x4F]) - 74);
  v2 = *(v1 - 4);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9A770[byte_1BAF99060[(127 * (v2 ^ dword_1EBC36FA0 ^ 0x88))] ^ 0x11] ^ (127 * (v2 ^ dword_1EBC36FA0 ^ 0x88))));
  v4 = &v10[*v3 ^ v2];
  *(v1 - 4) = 2140301951 * v4 + 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FD8 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * (dword_1EBC36FD8 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x2D]) - 161);
  v6 = 663017543 * ((-2 - ((~&v11 | 0x6CA43041D842A3C3) + (&v11 | 0x935BCFBE27BD5C3CLL))) ^ 0x752850828552FEE7);
  v7 = *(v5 + 1624) - v6;
  v11 = 1231722968 - v6;
  v12 = a1;
  v13 = v7;
  (*(v5 + 8 * (((127 * ((*v3 - *(v1 - 4)) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((*v3 - *(v1 - 4)) ^ 0x88))] ^ 0x4E]) + 2636)))(&v11);
  result = v14;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF720D4(uint64_t a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37060) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - dword_1EBC37060) ^ 0x88))] ^ 0x6B]) - 88);
  v3 = *(v2 - 4);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9A674[(byte_1BAF98F6C[(127 * ((dword_1EBC36FA0 + v3) ^ 0x88)) - 12] ^ 0x66) - 4] ^ (127 * ((dword_1EBC36FA0 + v3) ^ 0x88))) + 28);
  v5 = (*v4 + v3) ^ &v11;
  *(v2 - 4) = 2140301951 * v5 + 0x3D3AC77DA7219688;
  *v4 = 2140301951 * (v5 ^ 0x3D3AC77DA7219688);
  v6 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37060) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 - dword_1EBC37060) ^ 0x88))] ^ 0x12]) - 132);
  v7 = 398614211 * (&v12 ^ 0x5365D0A976C72DABLL);
  v12 = *(v6 + 1208) + v7;
  v13 = v7 ^ a2;
  v14 = v7 ^ 0xD19B2ADA;
  v16 = a1;
  v8 = 127 * ((*v4 + *(v2 - 4)) ^ 0x88);
  (*(v6 + 8 * ((byte_1BAF9DAE8[(byte_1BAF9CAF8[v8 - 8] ^ 0x2D) - 8] ^ v8) + 2453)))(&v12);
  result = v15;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF722D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37038) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((dword_1EBC36FA0 - dword_1EBC37038) ^ 0x88))] ^ 0xF9]) - 176);
  v6 = *(v5 - 4);
  v7 = *(&off_1E7F1D8C0 + (byte_1BAF9A57C[(byte_1BAF98D6C[(127 * ((dword_1EBC36FA0 + v6) ^ 0x88)) - 12] ^ 0xF9) - 12] ^ (127 * ((dword_1EBC36FA0 + v6) ^ 0x88))) - 170);
  v8 = (*v7 ^ v6) - &v15;
  *(v5 - 4) = 2140301951 * v8 - 0x2DAA06A0DC720288;
  *v7 = 2140301951 * (v8 ^ 0x3D3AC77DA7219688);
  v9 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC37038) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 + dword_1EBC37038) ^ 0x88))] ^ 0x4E]) - 18);
  v10 = *(v9 + 1440);
  v11 = 1704084847 * (((v16 | 0xCEC0B4E2C6878310) - (v16 | 0x313F4B1D39787CEFLL) + 0x313F4B1D39787CEFLL) ^ 0x836378271B3C6227);
  v20 = v11 ^ a3;
  v21 = a4;
  v16[1] = a2;
  v16[2] = a1;
  v18 = v11 - 535688854;
  v19 = v10 - v11;
  v16[0] = a5;
  v12 = 127 * ((*v7 + *(v5 - 4)) ^ 0x88);
  (*(v9 + 8 * ((byte_1BAF9A774[(byte_1BAF99064[v12 - 4] ^ 0x4F) - 4] ^ v12) + 2657)))(v16);
  result = v17;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF72510(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36EE0) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36EE0) ^ 0x88))] ^ 0xBE]) - 48);
  v6 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + *v5) ^ 0x88))] ^ 0x2D] ^ (127 * ((dword_1EBC36FA0 + *v5) ^ 0x88))) - 200);
  v7 = 2140301951 * (*v5 ^ &v13 ^ 0x3D3AC77DA7219688 ^ *v6);
  *v5 = v7;
  *v6 = v7;
  v8 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36EE0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * (dword_1EBC36EE0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x27]) - 104);
  v9 = *(v8 + 1096);
  v10 = 1704084847 * (v14 ^ 0x4DA3CCC5DDBBE137);
  v19 = a4;
  v14[1] = a2;
  v14[2] = a1;
  v18 = v10 ^ a3;
  v17 = v9 - v10;
  v16 = v10 - 535688854;
  v14[0] = a5;
  (*(v8 + 8 * (((127 * ((*v6 + *v5) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((*v6 + *v5) ^ 0x88))] ^ 0xC0]) + 2658)))(v14);
  result = v15;
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF7270C(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36F78 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36F78 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x4E]) - 10);
  v2 = 127 * (*v1 ^ dword_1EBC36FA0 ^ 0x88);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9A674[(byte_1BAF98F6C[v2 - 12] ^ 0xBE) - 4] ^ v2) - 85);
  v4 = *v1 ^ &v11 ^ *v3;
  *v1 = (2140301951 * v4) ^ 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36F78) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC36F78) ^ 0x88))] ^ 0x2D]) - 161);
  v6 = *(v5 + 1184);
  v7 = 663017543 * ((&v12 - 2 * (&v12 & 0xA6B16BB7FDEA1E87) - 0x594E94480215E179) ^ 0xBF3D0B74A0FA43A3);
  v12 = 1231722968 - v7;
  v13 = a1;
  v14 = v6 - v7;
  v8 = 127 * (*v1 ^ 0x88 ^ *v3);
  (*(v5 + 8 * ((byte_1BAF9A774[(byte_1BAF99064[v8 - 4] ^ 0x23) - 4] ^ v8) + 2551)))(&v12);
  result = v15;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1BAF72924(int a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC37058) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 + dword_1EBC37058) ^ 0x88))] ^ 0x2D]) - 219);
  v3 = 127 * (*v2 ^ dword_1EBC36FA0 ^ 0x88);
  v4 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[v3 - 8] ^ 0x6B) - 8] ^ v3) - 114);
  v5 = 2140301951 * ((*v4 + *v2) ^ &v8 ^ 0x3D3AC77DA7219688);
  *v2 = v5;
  *v4 = v5;
  v20 = 407104343 * (((v19 | 0x978A4CBE) - (v19 & 0x978A4CBE)) ^ 0xD51B0716) + 1644606322;
  v6 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37058) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 - dword_1EBC37058) ^ 0x88))] ^ 0x4F]) + 10);
  (*(v6 + 8 * ((byte_1BAF9A770[byte_1BAF99060[(127 * ((*v4 + *v2) ^ 0x88))] ^ 0x23] ^ (127 * ((*v4 + *v2) ^ 0x88))) + 2468)))(v19);
  v9 = 0x23EBEE970F30E96ELL;
  v11 = 0;
  v12 = 0xB2C8811167FCF552;
  v13 = 0xABCF1EB1C778095;
  v14 = 0x23EBEE970F30E96ELL;
  v10 = -1874706694;
  v15 = a1 - ((2 * a1) & 0x42087B1C) - 1593557618;
  v16 = 0;
  v17 = 0xB2C8811141DDBF59;
  v18 = 0xABCF1EB1C778095;
  v7 = *(v6 + 8 * ((43 * ((*(v6 + 8 * (((127 * (*v2 ^ 0x88 ^ *v4)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (*v2 ^ 0x88 ^ *v4))] ^ 0x12]) + 2474)))(128) != 0)) ^ 0xA55u));
  __asm { BRAA            X9, X17 }
}

uint64_t sub_1BAF72D10(uint64_t a1)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (v1)
  {
    v3 = a1 == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  return (*(v2 + 8 * ((1926 * v4) ^ 0x3F9)))();
}

uint64_t sub_1BAF72DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  *(v36 + 16) = *a1;
  *(v36 + 88) = *(a1 + 72);
  *(v36 + 92) = *(a1 + 76);
  *(v36 + 96) = *(a1 + 80);
  *(v36 + 97) = *(a1 + 81);
  *(v36 + 120) = *(a1 + 104);
  *(v36 + 100) = *(a1 + 84);
  *(v36 + 124) = *(a1 + 108) & 1 | 0x28;
  return (*(v37 + 8 * v35))(a1, v36 + 24, -3917399019, -888267117, 0xFFFFFFFFLL, a6, 57, (v35 - 671), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1BAF72E64(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5, uint64_t a6, char a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v54 = v52 + a4;
  *(a2 + v54) = (127 * (v54 & 0xF)) ^ *(*(v48 + 8 * a8) + (v54 & 0xF)) ^ *((v54 & 0xF) + *(v48 + 8 * v50)) ^ *((v54 & 0xF) + *(v48 + 8 * v49) - 4 + 5) ^ (v46 + ((*(v45 + v52 + a4) ^ 0x44) - ((a5 ^ (2 * *(v45 + v52 + a4))) & 0x88)) * a7);
  return (*(a44 + 8 * (((((v53 + v44 - 681) ^ a3) + v52 == v47) * v51) ^ v44)))();
}

uint64_t sub_1BAF72FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43)
{
  *(a43 + 119) = *(a1 + 103);
  *(a43 + 118) = *(a1 + 102);
  *(a43 + 117) = *(a1 + 101);
  *(a43 + 116) = *(a1 + 100);
  *(a43 + 115) = *(a1 + 99);
  *(a43 + 114) = *(a1 + 98);
  *(a43 + 113) = *(a1 + 97);
  *(a43 + 112) = *(a1 + 96);
  *(a43 + 111) = *(a1 + 95);
  *(a43 + 110) = *(a1 + 94);
  *(a43 + 109) = *(a1 + 93);
  *(a43 + 108) = *(a1 + 92);
  *(a43 + 107) = *(a1 + 91);
  *(a43 + 106) = *(a1 + 90);
  *(a43 + 105) = *(a1 + 89);
  *(a43 + 104) = *(a1 + 88);
  v46 = *(a1 + 4);
  *(a43 + 20) = v46;
  return (*(v45 + 8 * ((101 * (v46 == v44 + ((v43 + 404415438) & 0x27E51D37) + 1805380828)) ^ v43)))();
}

uint64_t sub_1BAF731F4(void *a1)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v1 + 8) = a1 + v2;
  return (*(v4 + 8 * (((3 * (((v3 + 875) | 0x22C) ^ 0x60B) + (((v3 + 875) | 0x22C) ^ 0xFFFFF988)) * (v1 == 0)) ^ ((v3 + 875) | 0x22C))))();
}

uint64_t sub_1BAF732D8(void *a1)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v1 = a1 + v3;
  return (*(v7 + 8 * ((((v4 + ((v2 - 1806) ^ (v5 + 9)) - 623) ^ ((v2 - 1806) | 0x22)) * (v6 == 192)) ^ v2)))();
}

uint64_t sub_1BAF733EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W8>)
{
  v14 = *v8;
  v12 = *(v11 + 8 * a7);
  return (*(v11 + 8 * (((((v9 + v7 - 128) | 0x80) ^ 0x2AC) * (v10 != 192)) ^ (v9 + v7 + 1190))))(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1BAF73588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  *(v46 - 104) = v45 - 36 - 2138855791 * ((-1190335241 - ((v46 - 112) | 0xB90CECF7) + ((v46 - 112) | 0x46F31308)) ^ 0x49452B89) + 2111;
  v48 = (*(v47 + 8 * (v45 + 2556)))(v46 - 112);
  v51 = *(v46 - 112) ^ (v45 + 1388063125);
  v49 = *(v44 - 0x4BCC923D0A7CA638);
  return (*(a44 + 8 * ((v45 - 36) | 0x37E)))(v48);
}

uint64_t sub_1BAF73728@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  v53 = v49 + 54;
  v54 = (v49 + 54) ^ (v50 - 185);
  v55 = (v49 - 101) | 0x329;
  a45 = *(v52 + 8 * (v49 + 54));
  a47 = a1;
  a49 = a27;
  *(v51 - 112) = &a45;
  *(v51 - 104) = v49 + 54 - 385730383 * (((v51 - 112) & 0x380A9227 | ~((v51 - 112) | 0x380A9227)) ^ 0xBE640609) - 1310139384;
  v56 = (*(v52 + 8 * (v49 + 2526)))(v51 - 112);
  return (*(a37 + 8 * ((1377 * (*(v51 - 100) == v55 - 346023524)) ^ ((v54 ^ (v50 - 620)) + v53))))(v56);
}

uint64_t sub_1BAF73A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  LODWORD(a26) = v34;
  HIDWORD(a15) = v38;
  HIDWORD(v42) = a1 - 1096719702;
  LODWORD(v42) = v39 - 1995336735;
  return (*(v40 + 8 * v35))(a1, 11975039, 0x4E57CE6D5C1D29D7, 0x4D7C3013B6750271, 0x4B876952F452CECFLL, 0x3283CFEC498AFD8ELL, a7, 0x1380784254EB2752, a9, a10, a11, a12, a2 + (((v35 - 1325) | 0x181u) ^ 0x1D0C208B337C3B9ALL), a14, a15, a16, a17, v42, a19, a20, v36, a22, v37, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34);
}

uint64_t sub_1BAF7410C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, int a6@<W6>, uint64_t a7@<X8>)
{
  v16 = v13 + v14 - 0x581B24B4097EEEB6;
  v17 = __ROR8__(v16 & 0xFFFFFFFFFFFFFFF8, 8);
  v18 = ((a3 - v17) & a1) + v17 + a5 - ((v17 + a5) & 0x73530549AD230FB7);
  v19 = __ROR8__(v18 ^ 0x6B165CB7EFD148A9, 8);
  v18 ^= 0xFF0823D5A386A4D8;
  v20 = (v10 - ((v19 + v18) | v10) + ((v19 + v18) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = __ROR8__(v20, 8);
  v23 = (((2 * (v22 + v21)) & 0x69C1C0D9ABA5C00ALL) - (v22 + v21) + 0x4B1F1F932A2D1FFALL) ^ 0x4F8F3A911994FAC8;
  v24 = v23 ^ __ROR8__(v21, 61);
  v25 = (__ROR8__(v23, 8) + v24) ^ v7;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) | 0x683C63A725393F58) - (v27 + v26) - 0x341E31D3929C9FACLL) ^ 0xC80B8ADABB55473CLL;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (a2 - ((v30 + v29) | a2) + ((v30 + v29) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v11;
  v34 = __ROR8__((v16 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v32) = (((__ROR8__(v33, 8) + (v33 ^ __ROR8__(v32, 61))) ^ v8) >> (8 * ((v13 + v14 + 74) & 7))) ^ *v16;
  v35 = a7 - (((a3 - v34) | 0x80ECD30D5A457A12) + ((v34 + a5) | 0x7F132CF2A5BA85EDLL));
  v36 = v35 ^ 0x9CA98AF318B73D0CLL;
  v35 ^= 0x8B7F59154E0D17DuLL;
  v37 = (__ROR8__(v36, 8) + v35) ^ v9;
  v38 = v37 ^ __ROR8__(v35, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v12;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = (__ROR8__(v39, 8) + v40) ^ v7;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0x918D3AB85B7434E0) - (v43 + v42) + 0x373962A3D245E58FLL) ^ 0xCB2CD9AAFB8C3D1FLL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ a4;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v11;
  LODWORD(v47) = (((__ROR8__(v48, 8) + (v48 ^ __ROR8__(v47, 61))) ^ v8) >> (8 * ((v16 + 1) & 7))) ^ *(v16 + 1);
  v49 = *(v16 + 2);
  v50 = *(v16 + 3);
  return (*(v15 + 8 * a6))();
}

uint64_t sub_1BAF74734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, unint64_t a43)
{
  v47 = v44 + v45 + 1278;
  v48 = (v43 ^ 0x80B6B977) + a31 - 0x3B0F042835DE8A4ALL;
  v49 = v48 < 0xA0242A49;
  v50 = v48 > a43;
  if (a43 < 0xA0242A49 != v49)
  {
    v51 = v49;
  }

  else
  {
    v51 = v50;
  }

  return (*(v46 + 8 * (v47 ^ (112 * !v51))))(a1, a2, a3, a4, a5, a6, 3917399018);
}

uint64_t sub_1BAF74D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v43 + v41) = a16;
  *(v43 - 0xF2C67B766E067CBLL) = a16;
  return (*(v44 + 8 * v42))(a1, a2, a41);
}

uint64_t sub_1BAF75200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  (*(v47 + 8 * (v45 ^ 0xE5E)))(v46 - 0xF2C67B766E067CBLL);
  *v44 = 0xF2C67B766E067CBLL;
  return (*(a44 + 8 * v45))(a43);
}

uint64_t sub_1BAF75348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v47 = (*(v46 + 8 * (v45 + 2107066806)))();
  *(v44 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a44 + 8 * (((((v45 + 2107064351) | 0x454) ^ 0x7D974672) + v45) ^ (3153 * (v45 < 0x40B41D18)))))(v47);
}

uint64_t sub_1BAF7561C()
{
  v2 = *(v1 - 96);
  v3 = *MEMORY[0x1E69E9840];
  return v0 ^ 0xEB601D05;
}

uint64_t sub_1BAF75D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v21 = v18 + 40 * v17;
  v22 = *(v21 + 24);
  v24 = *(v21 + 8);
  return (*(v20 + 8 * ((v19 + 767) | v19)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);
}

uint64_t sub_1BAF75E5C(uint64_t a1, int a2)
{
  v7 = *(v6 + 8 * v2);
  v9 = v4 != v5 && a2 - 477593745 < (v3 - 334);
  return (*(v6 + 8 * ((v9 * (v3 + 557)) ^ v3)))();
}

uint64_t sub_1BAF75E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  v55 = v37;
  LODWORD(a13) = v36;
  LODWORD(a33) = v38;
  v54 = v34;
  v56 = v39;
  v41 = v35 + 1215;
  v42 = v35 + 359;
  v43 = v35 + 498;
  v57 = (*(v40 + 8 * ((v35 + 1215) ^ 0xC81)))(32);
  return (*(v40 + 8 * (((((v43 ^ (v57 == 0)) & 1) == 0) * (v42 ^ 0x2A1)) ^ v41)))(v57, v44, v45, v46, v47, v48, v49, v50, a9, a4, a11, a1, a13, a14, a15, v57 + 0x785FEF64C8799D66, a17, a18, a19, a20, a21, a22, a23, v54, a25, a26, v55, a28, a29, a30, a31, v56, a33, a34);
}

uint64_t sub_1BAF75F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39)
{
  *a37 = 0x785FEF64C8799D66;
  *(a37 + 8) = 0x785FEF64C8799D66;
  *(a37 + 16) = a39 + 119306422 + ((v39 - 683) | 0x220);
  v42 = (*(v41 + 8 * (v39 ^ 0x9B4)))((v40 + a39 + 10));
  *(a37 + 24) = v42;
  return (*(v41 + 8 * ((114 * (v42 == 0)) ^ v39)))();
}

uint64_t sub_1BAF75FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v46 = (*(v45 + 8 * (v44 ^ 0x841)))();
  *(a16 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a44 + 8 * v44))(v46);
}

uint64_t sub_1BAF76354(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = v4 + 40 * v3;
  v9 = *(v8 + 24);
  return (*(v7 + 8 * (((v5 + 759021402) & 0xD2C2415D ^ 0x309) + v5)))(v6 + 0x27DB1ED5A73C4037, *(v8 + 32), a3, 0x23EBEE970F30E96ELL);
}

uint64_t sub_1BAF765B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19, uint64_t a20, uint64_t a21, unsigned int a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, char a28)
{
  v37 = *(a6 + 24);
  v38 = (__ROR8__((v37 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + ((v30 - 771) ^ 0x705)) & 0xF9FFFFFFFFFFFFFFLL;
  v39 = v38 ^ 0x1E4559FE42F2471ELL;
  v38 ^= 0x8A5B269C0EA5AB6FLL;
  v40 = (__ROR8__(v39, 8) + v38) ^ v32;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = (__ROR8__(v40, 8) + v41) ^ v29;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = (__ROR8__(v42, 8) + v43) ^ v36;
  v45 = v44 ^ __ROR8__(v43, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v34;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v28;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (((2 * (v49 + v50)) & 0xAAAA746556851DE8) - (v49 + v50) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = __ROR8__(v51, 8);
  *(v37 + 4) = (((((2 * (v53 + v52)) | 0xC5585AB08F272530) - (v53 + v52) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v37 + 4) & 7))) ^ a28 ^ 0xA8;
  v54 = __ROR8__((v37 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = (v54 + v30) ^ 0x885B269C0EA5AB6FLL;
  v56 = (__ROR8__((v54 + v30) ^ 0x1C4559FE42F2471ELL, 8) + v55) ^ v32;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v29;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (v60 + v59 - ((2 * (v60 + v59)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = (__ROR8__(v61, 8) + v62) ^ v34;
  v64 = v63 ^ __ROR8__(v62, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v28;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (0x964AD0183F74BFF6 - ((v67 + v66) | 0x964AD0183F74BFF6) + ((v67 + v66) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v37 + 5) = a19 ^ (((__ROR8__(v68, 8) + (v68 ^ __ROR8__(v66, 61))) ^ v31) >> (8 * ((v37 + 5) & 7)));
  return (*(v33 + 8 * (v35 + 377570200)))(a1, a2, a22);
}

uint64_t sub_1BAF76870@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v20 = *(a6 + 24) + v15 - 0x1E06D87D68ADC517;
  v21 = __ROR8__(v20 & 0xFFFFFFFFFFFFFFF8, 8);
  v22 = ((v21 + v10) | 0x7E054FB39FC80770) - ((v21 + v10) | v19) + v19;
  v23 = __ROR8__(v22 ^ 0x6240164DDD3A406ELL, 8);
  v22 ^= 0xF65E692F916DAC1FLL;
  v24 = (v23 + v22) ^ a7;
  v25 = v24 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v24, 8) + v25) ^ v9;
  v27 = *(v16 + 8 * v14);
  v28 = v26 ^ __ROR8__(v25, 61);
  v29 = (__ROR8__(v26, 8) + v28) ^ v18;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = (__ROR8__(v29, 8) + v30) ^ v17;
  v32 = v31 ^ __ROR8__(v30, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v8;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v13;
  *v20 = (((__ROR8__(v35, 8) + (v35 ^ __ROR8__(v34, 61))) ^ v11) >> (8 * (v20 & 7u))) ^ HIBYTE(a3) ^ 0x4F;
  v36 = __ROR8__((v20 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v37 = ((0x4D7C3013B6750271 - v36) & 0x7C0A1F12C3784FEDLL) + v36 + v10 - ((v36 + v10) & 0x7A0A1F12C3784FEDLL);
  v38 = v37 ^ 0x624F46EC818A08F3;
  v37 ^= 0xF651398ECDDDE482;
  v39 = __ROR8__(v38, 8);
  v40 = (a1 - ((v39 + v37) | a1) + ((v39 + v37) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v41 = v40 ^ __ROR8__(v37, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (a2 - ((v42 + v41) | a2) + ((v42 + v41) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (a5 - ((v45 + v44) | a5) + ((v45 + v44) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (v48 + v47 - ((2 * (v48 + v47)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = __ROR8__(v49, 8);
  v52 = __ROR8__((v51 + v50 - ((2 * (v51 + v50)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v53 = (v51 + v50 - ((2 * (v51 + v50)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v50, 61);
  *(v20 + 1) = (((__ROR8__((v52 + v53) ^ v13, 8) + ((v52 + v53) ^ v13 ^ __ROR8__(v53, 61))) ^ v11) >> (8 * ((v20 + 1) & 7))) ^ BYTE2(a3) ^ 0xCB;
  v54 = __ROR8__((v20 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v55 = v54 - ((2 * v54 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v56 = __ROR8__(v55 ^ 0x24709F6C17CEA06BLL, 8);
  v55 ^= 0xB06EE00E5B994C1ALL;
  v57 = (((2 * (v56 + v55)) | 0x84A35F8B8F02A07ELL) - (v56 + v55) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (((2 * (v59 + v58)) | 0x5AE37AFB8B700D10) - (v59 + v58) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = __ROR8__((((2 * (v62 + v61)) | 0xA0645171747853D8) - (v62 + v61) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v64 = (((2 * (v62 + v61)) | 0xA0645171747853D8) - (v62 + v61) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v61, 61);
  v65 = (((2 * (v63 + v64)) & 0xC0FA970E03639268) - (v63 + v64) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) & 0x3F1A3AC322107E48) - (v67 + v66) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v69 = v68 ^ __ROR8__(v66, 61);
  v70 = __ROR8__(v68, 8);
  v71 = (((2 * (v70 + v69)) | 0xA1336988A728D0CALL) - (v70 + v69) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v72 = __ROR8__(v71, 8);
  v73 = __ROR8__(v69, 61);
  *(v20 + 2) = (((a4 - ((v72 + (v71 ^ v73)) | a4) + ((v72 + (v71 ^ v73)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v20 + 2) & 7))) ^ BYTE1(a3) ^ 0x10;
  v74 = __ROR8__((v20 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v75 = v74 - ((2 * v74 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v76 = v75 ^ 0xCFE61775360C1323;
  v75 ^= 0x5BF868177A5BFF52uLL;
  v77 = __ROR8__(v76, 8);
  v78 = (((2 * (v77 + v75)) & 0x3185DFB098D2C9E8) - (v77 + v75) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v79 = v78 ^ __ROR8__(v75, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v9;
  v81 = __ROR8__(v80, 8);
  v82 = v80 ^ __ROR8__(v79, 61);
  v83 = (a8 - ((v81 + v82) | a8) + ((v81 + v82) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v86 = (((2 * (v85 + v84)) & 0xDC1EDE556F26AEE8) - (v85 + v84) - 0x6E0F6F2AB7935775) ^ 0x6DE52BDC61A5701BLL;
  v87 = v86 ^ __ROR8__(v84, 61);
  v88 = (__ROR8__(v86, 8) + v87) ^ v8;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = (__ROR8__(v88, 8) + v89) ^ v13;
  *(v20 + 3) = a3 ^ v12 ^ (((__ROR8__(v90, 8) + (v90 ^ __ROR8__(v89, 61))) ^ v11) >> (8 * ((v20 + 3) & 7)));
  return v27();
}

uint64_t sub_1BAF770E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = *(v7 + v6);
  v10 = *(v4 + 40 * v3 + 24);
  return (*(v8 + 8 * (((v5 - 1168534842) & 0x45A66DE4 ^ 0x304) + v5)))(0x27DB1ED5A73C4037, 477593753, a3, v9);
}

uint64_t sub_1BAF77228@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  v38 = (a2 - 8393862) & 0xE9FED7FE;
  v39 = *(a31 + 24);
  v40 = a4 - (((v38 ^ 0x382822D108E0EECELL) + 2 * a4) & 0x2C65C7A2CEED3AA6) - 0xDB90AC5A7BA4C1BLL;
  v41 = __ROR8__((v39 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((v41 + v32) | 0x8EF30571B3E03BF9) - ((v41 + v32) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v43 = v42 ^ 0x92B65C8FF1127CE7;
  v42 ^= 0x6A823EDBD459096uLL;
  v44 = (__ROR8__(v43, 8) + v42) ^ a1;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = (__ROR8__(v44, 8) + v45) ^ v31;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = __ROR8__(v46, 8);
  v49 = (((v48 + v47) | 0x6257A18AC6AFEA71) - ((v48 + v47) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v50 = v49 ^ __ROR8__(v47, 61);
  v51 = (__ROR8__(v49, 8) + v50) ^ 0xFC15BB0929C9D890;
  v52 = __ROR8__(v51, 8);
  v53 = v51 ^ __ROR8__(v50, 61);
  v54 = (((2 * (v52 + v53)) | 0x73433184586818C6) - (v52 + v53) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) & 0x2E6D9124F850C1CLL) - (v56 + v55) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v39[10] = (((((v59 + v58) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v59 + v58) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v39 + 10) & 7u))) ^ HIBYTE(v40) ^ 0x16;
  v60 = __ROR8__((v39 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v61 = ((v60 + v32) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v60 + v32) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v62 = v61 ^ 0x5BE668DB5A344230;
  v61 ^= 0xCFF817B91663AE41;
  v63 = (__ROR8__(v62, 8) + v61) ^ a1;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v31;
  v66 = v65 ^ __ROR8__(v64, 61);
  v67 = (__ROR8__(v65, 8) + v66) ^ v37;
  v68 = v67 ^ __ROR8__(v66, 61);
  v69 = __ROR8__(v67, 8);
  v70 = (v69 + v68 - ((2 * (v69 + v68)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v71 = v70 ^ __ROR8__(v68, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (v72 + v71 - ((2 * (v72 + v71)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xFED65BFA7285710) - (v75 + v74) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v77 = v76 ^ __ROR8__(v74, 61);
  v78 = __ROR8__(v76, 8);
  v39[11] = (((((v78 + v77) | 0x21983AC56B0BB129) - ((v78 + v77) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v39 + 11) & 7u))) ^ BYTE6(v40) ^ 0x32;
  v79 = __ROR8__((v39 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = -2 - (((0xD7C3013B6750271 - v79) | 0xEFC9086FACD320D4) + ((v79 + v32) | 0x1036F790532CDF2BLL));
  v81 = v80 ^ 0xF38C5191EE2167CALL;
  v80 ^= 0x67922EF3A2768BBBuLL;
  v82 = (__ROR8__(v81, 8) + v80) ^ a1;
  v83 = __ROR8__(v82, 8);
  v84 = v82 ^ __ROR8__(v80, 61);
  v85 = (((2 * (v83 + v84)) & 0xA44BB63E2DDF8B52) - (v83 + v84) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ v37;
  v88 = v87 ^ __ROR8__(v86, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ 0xFC15BB0929C9D890;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0xD2E383F95083B686) - ((v91 + v90) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ v34;
  v39[12] = (((__ROR8__(v94, 8) + (v94 ^ __ROR8__(v93, 61))) ^ v33) >> (8 * ((v39 + 12) & 7u))) ^ BYTE5(v40) ^ 0xE3;
  v95 = __ROR8__((v39 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v96 = ((2 * (v95 + v32)) | 0xA4234159906F106ALL) - (v95 + v32) + 0x2DEE5F5337C877CBLL;
  v97 = v96 ^ 0xCE54F9528AC5CF2BLL;
  v96 ^= 0x5A4A8630C692235AuLL;
  v98 = __ROR8__(v97, 8);
  v99 = (((v98 + v96) | 0xD738201BC43E983BLL) - ((v98 + v96) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v100 = v99 ^ __ROR8__(v96, 61);
  v101 = __ROR8__(v99, 8);
  v102 = (((v101 + v100) ^ 0x70783716B7118F26) - ((2 * ((v101 + v100) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v103 = v102 ^ __ROR8__(v100, 61);
  v104 = (__ROR8__(v102, 8) + v103) ^ v37;
  v105 = v104 ^ __ROR8__(v103, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (v106 + v105 - ((2 * (v106 + v105)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v35;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ v34;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = __ROR8__(v111, 8);
  v39[13] = (((v113 + v112 - ((2 * (v113 + v112)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v39 + 13) & 7u))) ^ BYTE4(v40) ^ 0xD1;
  v114 = __ROR8__((v39 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v115 = (0xCD7C3013B6750271 - v114) & 0xF050E761A6289A68 | (v114 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v116 = v115 ^ 0xEE15BE9FE4DADD76;
  v115 ^= 0x7A0BC1FDA88D3107uLL;
  v117 = (__ROR8__(v116, 8) + v115) ^ a1;
  v118 = v117 ^ __ROR8__(v115, 61);
  v119 = __ROR8__(v117, 8);
  v120 = (((v119 + v118) | 0x349C4C6A3E574525) - ((v119 + v118) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = (__ROR8__(v120, 8) + v121) ^ v37;
  v123 = v122 ^ __ROR8__(v121, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ 0xFC15BB0929C9D890;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = (__ROR8__(v124, 8) + v125) ^ v35;
  v127 = v126 ^ __ROR8__(v125, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0x749128A0D39CA49CLL) - (v128 + v127) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v39[14] = (((__ROR8__(v129, 8) + (v129 ^ __ROR8__(v127, 61))) ^ v33) >> (8 * ((v39 + 14) & 7u))) ^ ((a4 - (((v38 ^ 0x8E0EECE) + 2 * a4) & 0xCEED3AA6) + 1480963045) >> 24) ^ 0x67;
  v130 = __ROR8__((v39 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v131 = (0x57C3013B6750271 - v130) & 0x5D98955B3706B30 | (v130 + v32) & 0xFA2676AA4C8F94CFLL;
  v132 = v131 ^ 0x199CD0ABF1822C2ELL;
  v131 ^= 0x8D82AFC9BDD5C05FLL;
  v133 = (__ROR8__(v132, 8) + v131) ^ a1;
  v134 = v133 ^ __ROR8__(v131, 61);
  v135 = __ROR8__(v133, 8);
  v136 = (((2 * (v135 + v134)) | 0x86D73428622BDA3ALL) - (v135 + v134) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v137 = v136 ^ __ROR8__(v134, 61);
  v138 = (__ROR8__(v136, 8) + v137) ^ v37;
  v139 = v138 ^ __ROR8__(v137, 61);
  v140 = __ROR8__(v138, 8);
  v141 = (((2 * (v140 + v139)) & 0x407F7AAF3D2F06C8) - (v140 + v139) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v142 = v141 ^ __ROR8__(v139, 61);
  v143 = (__ROR8__(v141, 8) + v142) ^ v35;
  v144 = v143 ^ __ROR8__(v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ v34;
  v39[15] = (((__ROR8__(v145, 8) + (v145 ^ __ROR8__(v144, 61))) ^ v33) >> (8 * ((v39 + 15) & 7u))) ^ BYTE2(v40) ^ 0x76;
  v146 = __ROR8__((v39 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v147 = ((2 * v146 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v146 + 0x5649FDBD14324CA8;
  v148 = v147 ^ 0x948894571F4F0D28;
  v147 ^= 0x96EB355318E159uLL;
  v149 = __ROR8__(v148, 8);
  v150 = (((2 * (v149 + v147)) & 0xA1738BF9A2E70742) - (v149 + v147) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v151 = v150 ^ __ROR8__(v147, 61);
  v152 = (__ROR8__(v150, 8) + v151) ^ v31;
  v153 = v152 ^ __ROR8__(v151, 61);
  v154 = __ROR8__(v152, 8);
  v155 = (((2 * (v154 + v153)) & 0x2D730DB5B3BDACF8) - (v154 + v153) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = __ROR8__(v155, 8);
  v158 = (((2 * (v157 + v156)) | 0x4D17F792C6A75DEALL) - (v157 + v156) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v159 = v158 ^ __ROR8__(v156, 61);
  v160 = __ROR8__(v158, 8);
  v161 = (((2 * (v160 + v159)) & 0x305CE5312BE34172) - (v160 + v159) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v162 = __ROR8__(v159, 61);
  v163 = (__ROR8__(v161, 8) + (v161 ^ v162)) ^ v34;
  v164 = v163 ^ __ROR8__(v161 ^ v162, 61);
  v165 = __ROR8__(v163, 8);
  v39[16] = (((v165 + v164 - ((2 * (v165 + v164)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v39 + 16) & 7u))) ^ BYTE1(v40) ^ 0x9D;
  v166 = __ROR8__((v39 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v167 = ((2 * ((v166 + v32) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v166 + v32) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v168 = v167 ^ 0xD9CC90F52308FB19;
  v167 ^= 0x4DD2EF976F5F1768uLL;
  v169 = __ROR8__(v168, 8);
  v170 = (((2 * (v169 + v167)) | 0xC93FF3953A26D81ALL) - (v169 + v167) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v171 = __ROR8__(v167, 61);
  v172 = (__ROR8__(v170, 8) + (v170 ^ v171)) ^ v31;
  v173 = v172 ^ __ROR8__(v170 ^ v171, 61);
  v174 = (__ROR8__(v172, 8) + v173) ^ v37;
  v175 = v174 ^ __ROR8__(v173, 61);
  v176 = __ROR8__(v174, 8);
  v177 = (((2 * (v176 + v175)) | 0x9AD9A558F1F83E32) - (v176 + v175) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v178 = v177 ^ __ROR8__(v175, 61);
  v179 = (__ROR8__(v177, 8) + v178) ^ v35;
  v180 = v179 ^ __ROR8__(v178, 61);
  v181 = __ROR8__(v179, 8);
  v182 = (v181 + v180 - ((2 * (v181 + v180)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v39[17] = (((__ROR8__(v182, 8) + (v182 ^ __ROR8__(v180, 61))) ^ v33) >> (8 * ((v39 + 17) & 7u))) ^ (a4 - ((((a2 + 122) & 0xFE ^ 0xCE) + 2 * a4) & 0xA6) - 27) ^ 0x53;
  return (*(v36 + 8 * a2))();
}

uint64_t sub_1BAF78138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, int a40)
{
  v42 = a40 - ((((v40 - 1994475049) ^ 0x606001A0) + 1401072670) & (a10 + 118554334)) - 2113325197;
  v43 = (((v40 - 1994475049) | 0x606001A0) ^ 0x2463C43B ^ v42) - 1074792449 + ((2 * v42) & 0xA73B7FAA ^ 0x25017008) == 328054740;
  return (*(v41 + 8 * ((v43 | (4 * v43)) ^ v40)))(377568950);
}

uint64_t sub_1BAF7830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = (v11 - 1);
  v25 = v24 == v21;
  v26 = (v24 | ((v24 < v21) << 32)) + a1;
  v27 = v26 + v12 + 10;
  v28 = __ROR8__(v27 & 0xFFFFFFFFFFFFFFF8, 8) + v10;
  v29 = v22;
  v30 = __ROR8__(v28 ^ 0x1C4559FE42F2471ELL, 8);
  v28 ^= 0x885B269C0EA5AB6FLL;
  v31 = (((v30 + v28) & a2 ^ a4) + ((v30 + v28) & a5 ^ a6) - 1) ^ a7;
  v32 = v31 ^ __ROR8__(v28, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ v9;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ v29;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xFC15BB0929C9D890;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ v8;
  v40 = __ROR8__(v39, 8);
  v41 = v39 ^ __ROR8__(v38, 61);
  v42 = (((v40 + v41) & v13 ^ v16) + ((v40 + v41) ^ a8) - (((v40 + v41) ^ a8) & v13)) ^ v17;
  v43 = v42 ^ __ROR8__(v41, 61);
  v44 = __ROR8__(v42, 8);
  *v27 = ((((v18 & (2 * (v44 + v43))) - (v44 + v43) + v19) ^ v23) >> (8 * (v27 & 7u))) ^ *(v15 + v26);
  v45 = !v25;
  return (*(v20 + 8 * ((62 * v45) ^ (v14 + 831))))();
}

void sub_1BAF784EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = v4 || a4 == 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1BAF78584()
{
  *(v1 - 108) = 407104343 * ((((v1 - 112) | 0x474D29A8) - (v1 - 112) + ((v1 - 112) & 0xB8B2D650)) ^ 0x5DC6200) + 1644606322;
  v4 = v0;
  v2 = (*(v0 + 21240))(v1 - 112);
  return (*(v4 + 5552))(v2);
}

uint64_t sub_1BAF787B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16)
{
  *a15 = 1;
  *a16 = 13;
  return (*(v17 + 8 * v16))();
}

uint64_t sub_1BAF788D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  (*(v60 + 8 * (v61 ^ 0x91E)))(v62 - 152, 0, 24);
  *(v62 - 144) = 1168152686;
  *(v62 - 128) = 0x1269E57FCLL;
  *(v62 - 120) = 0x200000004;
  *(v62 - 220) = 0;
  v63 = (*(a60 + 8 * (v61 ^ 0x91B)))(128);
  return (*(a60 + 8 * (((v63 == 0) * (((v61 + 1131) | 0x170) ^ 0x92E)) ^ v61)))(v63, v64, v65, v66);
}

uint64_t sub_1BAF78A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (v6)
  {
    v7 = a1 == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = !v7;
  return (*(v4 + 8 * (((126 * (v5 ^ 0x22A) + 1242) * v8) ^ v5)))(a1, a2, a3, a4);
}

uint64_t sub_1BAF78AC0(uint64_t a1)
{
  *(v3 + 16) = *a1;
  *(v3 + 88) = *(a1 + 72);
  *(v3 + 92) = *(a1 + 76);
  *(v3 + 96) = *(a1 + 80);
  *(v3 + 97) = *(a1 + 81);
  *(v3 + 120) = *(a1 + 104);
  *(v3 + 100) = *(a1 + 84);
  *(v3 + 124) = *(a1 + 108) & 1 | 0x28;
  return (*(v1 + 8 * (v2 ^ 0x456)))();
}

uint64_t sub_1BAF78B5C(uint64_t a1, char a2, char a3, uint64_t a4, char a5, int a6, uint64_t a7, int a8)
{
  v17 = (v9 - 1) & 0xF;
  *(v11 + v9) = (127 * v17) ^ *(*(a7 + 8 * a6) + v17) ^ *(v17 + *(a7 + 8 * a8) - 4 + 5) ^ *(v17 + *(a7 + 8 * v13)) ^ (v8 + ((*(v12 + v9) ^ 0x44) - (v10 ^ (v16 + 25) ^ a3 ^ a2 & (2 * *(v12 + v9)))) * a5);
  return (*(v15 + 8 * (((v9 == -31) * v14) ^ v10)))();
}

uint64_t sub_1BAF78C98(uint64_t a1)
{
  *(v4 + 119) = *(a1 + 103);
  *(v4 + 118) = *(a1 + 102);
  *(v4 + 117) = *(a1 + 101);
  *(v4 + 116) = *(a1 + 100);
  *(v4 + 115) = *(a1 + 99);
  *(v4 + 114) = *(a1 + 98);
  *(v4 + 113) = *(a1 + 97);
  *(v4 + 112) = *(a1 + 96);
  *(v4 + 111) = *(a1 + 95);
  *(v4 + 110) = *(a1 + 94);
  *(v4 + 109) = *(a1 + 93);
  *(v4 + 108) = *(a1 + 92);
  *(v4 + 107) = *(a1 + 91);
  *(v4 + 106) = *(a1 + 90);
  *(v4 + 105) = *(a1 + 89);
  *(v4 + 104) = *(a1 + 88);
  v5 = *(a1 + 4);
  *(v4 + 20) = v5;
  return (*(v3 + 8 * ((2051 * (v5 == ((v1 - v2 + 15) ^ 0x8587C35E))) ^ v1)))();
}

uint64_t sub_1BAF78E80(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v6 + 8) = a1 + v7;
  return (*(v4 + 8 * (((v6 != 0) * (((v5 - 400225947) & 0x17DAF17E) - 301)) ^ v5)))(a1, a2, a3, a4);
}

uint64_t sub_1BAF78EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v62 = (v61 + 2135785633) & 0x80B27FFE;
  v63 = (*(v60 + 8 * (v62 ^ 0xDB4)))(16);
  return (*(a60 + 8 * ((67 * (((v63 == 0) ^ (((v61 - 95) & 0xFE) - 28 + ((v61 - 95) & 0xFE) - 114 + 1)) & 1)) ^ v62)))(v63, v64, v65, v66);
}

uint64_t sub_1BAF78F74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v13 = a1 + v14;
  return (*(v11 + 8 * (v12 | 2)))(a1, 2818255062, 1476712926, 696634820, 1476712926, a6, a7, 1179498539, a9, a10, a11, v15 - 152);
}

uint64_t sub_1BAF79218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  *(v63 - 104) = v62 - 2138855791 * ((~((v63 - 112) | 0x87D4437D) + ((v63 - 112) & 0x87D4437D)) ^ 0x779D8403) + 1165;
  v64 = v60;
  v65 = (*(v61 + 8 * (v62 + 1646)))(v63 - 112);
  v67 = v62 ^ 0xD30 ^ *(v63 - 112) ^ 0x8BC906D5;
  v68 = *(v64 - 0x4BCC923D0A7CA638);
  return (*(a60 + 8 * v62))(v65);
}

uint64_t sub_1BAF79448@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  *(v55 - 216) = *(v53 + 8 * v54);
  *(v55 - 200) = a1;
  *(v55 - 184) = a37;
  *(v55 - 104) = v54 - 385730383 * ((~((v55 - 112) | 0x1F2CDD75) + ((v55 - 112) & 0x1F2CDD75)) ^ 0x9942495B) - 1310139384;
  *(v55 - 112) = v55 - 216;
  v56 = (*(v53 + 8 * (v54 ^ 0xA58)))(v55 - 112);
  return (*(a53 + 8 * (v54 ^ 0x1A1 ^ (206 * (*(v55 - 100) == (v54 ^ 0x3BFD676D ^ ((v54 - 1072607305) | 0x108C2A21)))))))(v56);
}

uint64_t sub_1BAF79574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  HIDWORD(a52) = a9;
  HIDWORD(a43) = v57;
  return (*(v55 + 8 * v56))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAF79760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, _DWORD *a15, _DWORD *a16)
{
  *a15 = *(v18 - 224);
  *a16 = *(v18 - 240);
  v19 = *(v18 - 236);
  return (*(v17 + 8 * v16))();
}

uint64_t sub_1BAF79A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  (*(v60 + 8 * (v63 + 643)))(v62 - 0xF2C67B766E067CBLL);
  *v61 = 0xF2C67B766E067CBLL;
  return (*(a60 + 8 * v63))(a59);
}

uint64_t sub_1BAF79B78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = (*(v60 + 8 * (v61 ^ 0xFF9)))();
  *(v62 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a60 + 8 * v61))(v63);
}

uint64_t sub_1BAF79F70(uint64_t a1)
{
  v8 = *(v4 + 8 * v1);
  v9 = *v3;
  *(v7 - 232) = 0x785FEF64C8799D66;
  v11 = v9 == v6 || a1 == 0x1043AE88C2650F0FLL;
  return (*(v4 + 8 * (v2 | (32 * ((((v2 ^ 0xFB) - v5 + 1) ^ v11) & 1)))))(a1, v8, 0xF90A6CB98EB39A9);
}

uint64_t sub_1BAF7A8C8()
{
  v5 = v2 + v3 - 0x581B24B4097EEEB6;
  v6 = __ROR8__(v5 & 0xFFFFFFFFFFFFFFF8, 8);
  v7 = ((0x4D7C3013B6750271 - v6) & 0x75530549AD230FB7) + v6 + 0x3283CFEC498AFD8ELL - ((v6 + 0x3283CFEC498AFD8ELL) & 0x73530549AD230FB7);
  v8 = __ROR8__(v7 ^ 0x6B165CB7EFD148A9, 8);
  v7 ^= 0xFF0823D5A386A4D8;
  v9 = (0x61C2C849B785CFCLL - ((v8 + v7) | 0x61C2C849B785CFCLL) + ((v8 + v7) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v10 = v9 ^ __ROR8__(v7, 61);
  v11 = __ROR8__(v9, 8);
  v12 = (((2 * (v11 + v10)) & 0x69C1C0D9ABA5C00ALL) - (v11 + v10) + 0x4B1F1F932A2D1FFALL) ^ 0x4F8F3A911994FAC8;
  v13 = v12 ^ __ROR8__(v10, 61);
  v14 = (__ROR8__(v12, 8) + v13) ^ 0xFD1C75332F7F0C87;
  v15 = v14 ^ __ROR8__(v13, 61);
  v16 = __ROR8__(v14, 8);
  v17 = (((2 * (v16 + v15)) | 0x683C63A725393F58) - (v16 + v15) - 0x341E31D3929C9FACLL) ^ 0xC80B8ADABB55473CLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (0x4E57CE6D5C1D29D7 - ((v19 + v18) | 0x4E57CE6D5C1D29D7) + ((v19 + v18) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0xC809DE93B29A9CA6;
  v23 = __ROR8__((v5 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  LODWORD(v21) = (((__ROR8__(v22, 8) + (v22 ^ __ROR8__(v21, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v5 & 7u))) ^ *v5;
  v24 = v0 - (((0x4D7C3013B6750271 - v23) | 0x80ECD30D5A457A12) + ((v23 + 0x3283CFEC498AFD8ELL) | 0x7F132CF2A5BA85EDLL));
  v25 = v24 ^ 0x9CA98AF318B73D0CLL;
  v24 ^= 0x8B7F59154E0D17DuLL;
  v26 = (__ROR8__(v25, 8) + v24) ^ 0xE13500AF98B0C0DCLL;
  v27 = v26 ^ __ROR8__(v24, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ 0x490250233B9E532;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0xFD1C75332F7F0C87;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = __ROR8__(v30, 8);
  v33 = (((2 * (v32 + v31)) & 0x918D3AB85B7434E0) - (v32 + v31) + 0x373962A3D245E58FLL) ^ 0xCB2CD9AAFB8C3D1FLL;
  v34 = v33 ^ __ROR8__(v31, 61);
  v35 = (__ROR8__(v33, 8) + v34) ^ 0x4B876952F452CECFLL;
  v36 = v35 ^ __ROR8__(v34, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ 0xC809DE93B29A9CA6;
  LODWORD(v22) = (((__ROR8__(v37, 8) + (v37 ^ __ROR8__(v36, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v5 + 1) & 7))) ^ *(v5 + 1);
  v38 = *(v5 + 2);
  v39 = *(v5 + 3);
  return (*(v1 + 8 * v4))();
}

uint64_t sub_1BAF7AF70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, unint64_t a59)
{
  v63 = (v61 ^ a31) + a49 - 0xF90A6CB95755C05;
  v64 = v63 < 0x375DD9A;
  v65 = v63 > a59;
  if (a59 < 0x375DD9A != v64)
  {
    v66 = v64;
  }

  else
  {
    v66 = v65;
  }

  return (*(v60 + 8 * ((46 * !v66) ^ (v62 + v59 + 1464))))(a1, a2, a59, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1BAF7B438@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  v22 = *(v21 - 248);
  v23 = *(v22 - 0x785FEF64C8799D5ELL);
  *(a20 - 0x785FEF64C8799D5ELL) = v23;
  *(a20 - 0x785FEF64C8799D66) = *(v22 - 0x785FEF64C8799D66);
  return (*(v20 + 8 * (((v23 == 0x785FEF64C8799D66) * (((3 * (a1 ^ 0x268) + 1168123388) & 0xBA5FDDDE) - 1218)) ^ a1 ^ 0x3EF)))();
}

uint64_t sub_1BAF7B4D0(uint64_t a1)
{
  *(v2 - 0x785FEF64C8799D66) = a1;
  v4 = *(a1 - 0x785FEF64C8799D66);
  return (*(v3 + 8 * v1))();
}

uint64_t sub_1BAF7B6DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = (*(v60 + 8 * (v62 ^ 0x33A)))();
  *(v61 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a60 + 8 * v62))(v63);
}

uint64_t sub_1BAF7B774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v64 = (*(v60 + 8 * (v61 ^ 0xBCB)))(v62 - 0x785FEF64C8799D66);
  *(v63 - 248) = 0x785FEF64C8799D66;
  return (*(a60 + 8 * v61))(v64);
}

uint64_t sub_1BAF7BC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v29 + v27) = a27;
  *(v29 - 0xF2C67B766E067CBLL) = a27;
  return (*(v30 + 8 * v28))(a1, a2, a3, a4, a5, a6, a7, 1179498539);
}

uint64_t sub_1BAF7BC78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W8>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  *(v28 - 0x785FEF64C8799D66) = a27;
  *(a27 - 0x785FEF64C8799D5ELL) = *(v29 + v27);
  *(v29 + v27) = a27;
  return (*(v30 + 8 * a8))(a1, a2, a3, a4, a5, a6, a7, 1179498539);
}

uint64_t sub_1BAF7BFAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = (*(v5 + 24) ^ 0x77EFEBFF) - 623388936 + ((*(v5 + 24) << ((3 * ((v6 + 49) ^ 0x32)) ^ 2)) & 0xEFDFD7FE);
  v9 = *(v5 + 8) + 2020677730 - ((2 * *(v5 + 8)) & 0xF0E230C4);
  return (*(v7 + 8 * (v6 + 817)))(a1, a2, a3, a4, a5, v5);
}

uint64_t sub_1BAF7C130(uint64_t a1)
{
  v5 = v3 + 0x27DB1ED5A73C4037;
  v6 = (*(v1 + 32) ^ 0x3FCC7FDC) - 595869700 + ((2 * *(v1 + 32)) & 0x7F98FFB8u);
  return (*(v4 + 8 * (v2 ^ 0x7A5)))(a1, ((((v2 - 16) | 0x143) - 136318324) ^ *(v1 + 24)) + ((2 * *(v1 + 24)) & 0xEFBFE7EE) + 1525141248, 0x93110A554F8E721, v5);
}

uint64_t sub_1BAF7C480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  v39 = *(v33 + 8 * v29);
  v37 = v32 != v34 && ((v30 + 2038462724) & 0x867F8798) + v31 - 474497504 < 0xFFFFFFF6;
  return (*(v33 + 8 * ((v37 * (((v30 - 1072101048) | 0x10847000) ^ (v35 + 532))) ^ v30)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29);
}

uint64_t sub_1BAF7C4F8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49)
{
  LODWORD(a33) = a2;
  v53 = v49;
  v54 = (*(v49 + 8 * (v50 ^ 0x88A)))(32);
  return (*(v53 + 8 * (((v54 == 0) * (((v50 - 426) | 0x800) ^ 0x86F)) | v50)))(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, v54 + 0x785FEF64C8799D66, a28, a29, a30, a3, a4, a33, a34, a35, v52, a37, a38, a39, v51, a41, a42, a43, a44, a45, a46, a47, a48, a49);
}

uint64_t sub_1BAF7C588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  *a1 = 0x785FEF64C8799D66;
  *(a1 + 8) = 0x785FEF64C8799D66;
  *(a1 + 16) = a58 + 122401862 + v58 - 138;
  v61 = (*(v59 + 8 * (v58 ^ 0x2DC)))((a58 - 474496974));
  *(a1 + 24) = v61;
  return (*(v59 + 8 * (((v61 != 0) * ((v58 - 1998) ^ 0x49)) ^ v58)))();
}

uint64_t sub_1BAF7C60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, int a58)
{
  HIDWORD(a30) = 2 * a58;
  HIDWORD(a35) = a58 - ((2 * a58 - 948993968) & 0x9F9621CC) + 864211214;
  LODWORD(a34) = v59 ^ 0x37BA0884;
  return (*(v61 + 8 * (v58 | 0x22F)))(230, v60, 0x3185DFB098D2C9E8, 0xE73D1027B3969B0BLL, 0x60810882B265BD7, 0xBD3AA96CA92701DDLL, 0xDC1EDE556F26AEE8, 0x4026DC5F86580D5ALL, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35);
}

uint64_t sub_1BAF7C77C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, char a60)
{
  v66 = *(a2 + 24);
  v67 = (__ROR8__((v66 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + 0x3283CFEC498AFD8ELL) & 0xF9FFFFFFFFFFFFFFLL;
  v68 = v67 ^ 0x1E4559FE42F2471ELL;
  v67 ^= 0x8A5B269C0EA5AB6FLL;
  v69 = (__ROR8__(v68, 8) + v67) ^ 0xE13500AF98B0C0DCLL;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = (__ROR8__(v69, 8) + v70) ^ v64;
  v72 = v71 ^ __ROR8__(v70, 61);
  v73 = (__ROR8__(v71, 8) + v72) ^ v61;
  v74 = v73 ^ __ROR8__(v72, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v62;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v60;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = __ROR8__(v77, 8);
  v80 = (((2 * (v79 + v78)) & 0xAAAA746556851DE8) - (v79 + v78) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v81 = v80 ^ __ROR8__(v78, 61);
  v82 = __ROR8__(v80, 8);
  *(v66 + 4) = (((((2 * (v82 + v81)) | 0xC5585AB08F272530) - (v82 + v81) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v66 + 4) & 7))) ^ a60 ^ 0xCF;
  v83 = __ROR8__((v66 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v84 = (v83 + 0x3283CFEC498AFD8ELL) ^ 0x885B269C0EA5AB6FLL;
  v85 = (__ROR8__((v83 + 0x3283CFEC498AFD8ELL) ^ 0x1C4559FE42F2471ELL, 8) + v84) ^ 0xE13500AF98B0C0DCLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ v64;
  v88 = __ROR8__(v87, 8);
  v89 = v87 ^ __ROR8__(v86, 61);
  v90 = (v88 + v89 - ((2 * (v88 + v89)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v91 = v90 ^ __ROR8__(v89, 61);
  v92 = (__ROR8__(v90, 8) + v91) ^ v62;
  v93 = v92 ^ __ROR8__(v91, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ v60;
  v95 = __ROR8__(v94, 8);
  v96 = v94 ^ __ROR8__(v93, 61);
  v97 = (0x964AD0183F74BFF6 - ((v95 + v96) | 0x964AD0183F74BFF6) + ((v95 + v96) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v66 + 5) = v63 ^ (((__ROR8__(v97, 8) + (v97 ^ __ROR8__(v96, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v66 + 5) & 7)));
  return (*(v65 + 8992))();
}

uint64_t sub_1BAF7CA80(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = *(a2 + 24) + v14 - 0x1E06D87D68ADC517;
  v18 = __ROR8__(v17 & 0xFFFFFFFFFFFFFFF8, 8);
  v19 = ((v18 + 0x3283CFEC498AFD8ELL) | 0x7E054FB39FC80770) - ((v18 + 0x3283CFEC498AFD8ELL) | 0x81FAB04C6037F88FLL) - 0x7E054FB39FC80771;
  v20 = __ROR8__(v19 ^ 0x6240164DDD3A406ELL, 8);
  v19 ^= 0xF65E692F916DAC1FLL;
  v21 = (v20 + v19) ^ 0xE13500AF98B0C0DCLL;
  v22 = v21 ^ __ROR8__(v19, 61);
  v23 = (__ROR8__(v21, 8) + v22) ^ v10;
  v24 = *(v15 + 8 * v11);
  v25 = v23 ^ __ROR8__(v22, 61);
  v26 = (__ROR8__(v23, 8) + v25) ^ v8;
  v27 = v26 ^ __ROR8__(v25, 61);
  v28 = (__ROR8__(v26, 8) + v27) ^ v9;
  v29 = v28 ^ __ROR8__(v27, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ 0x4B876952F452CECFLL;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ 0xC809DE93B29A9CA6;
  *v17 = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * (v17 & 7u))) ^ HIBYTE(v12) ^ 0x4F;
  v33 = __ROR8__((v17 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = ((0x4D7C3013B6750271 - v33) & 0x7C0A1F12C3784FEDLL) + v33 + 0x3283CFEC498AFD8ELL - ((v33 + 0x3283CFEC498AFD8ELL) & 0x7A0A1F12C3784FEDLL);
  v35 = v34 ^ 0x624F46EC818A08F3;
  v34 ^= 0xF651398ECDDDE482;
  v36 = __ROR8__(v35, 8);
  v37 = (0x74F472E448216F49 - ((v36 + v34) | 0x74F472E448216F49) + ((v36 + v34) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v38 = v37 ^ __ROR8__(v34, 61);
  v39 = __ROR8__(v37, 8);
  v40 = (0x5D587E53351E1BD7 - ((v39 + v38) | 0x5D587E53351E1BD7) + ((v39 + v38) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v41 = v40 ^ __ROR8__(v38, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (0xFE5951FB672C4BC9 - ((v42 + v41) | 0xFE5951FB672C4BC9) + ((v42 + v41) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = __ROR8__(v43, 8);
  v46 = (v45 + v44 - ((2 * (v45 + v44)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v47 = v46 ^ __ROR8__(v44, 61);
  v48 = __ROR8__(v46, 8);
  v49 = __ROR8__((v48 + v47 - ((2 * (v48 + v47)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v50 = (v48 + v47 - ((2 * (v48 + v47)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v47, 61);
  *(v17 + 1) = (((__ROR8__((v49 + v50) ^ 0xC809DE93B29A9CA6, 8) + ((v49 + v50) ^ 0xC809DE93B29A9CA6 ^ __ROR8__(v50, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v17 + 1) & 7))) ^ BYTE2(v12) ^ 0xCB;
  v51 = __ROR8__((v17 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = v51 - ((2 * v51 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v53 = __ROR8__(v52 ^ 0x24709F6C17CEA06BLL, 8);
  v52 ^= 0xB06EE00E5B994C1ALL;
  v54 = (((2 * (v53 + v52)) | 0x84A35F8B8F02A07ELL) - (v53 + v52) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (((2 * (v56 + v55)) | 0x5AE37AFB8B700D10) - (v56 + v55) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = __ROR8__((((2 * (v59 + v58)) | 0xA0645171747853D8) - (v59 + v58) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v61 = (((2 * (v59 + v58)) | 0xA0645171747853D8) - (v59 + v58) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v58, 61);
  v62 = (((2 * (v60 + v61)) & 0xC0FA970E03639268) - (v60 + v61) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v63 = v62 ^ __ROR8__(v61, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) & 0x3F1A3AC322107E48) - (v64 + v63) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = (((2 * (v67 + v66)) | 0xA1336988A728D0CALL) - (v67 + v66) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v69 = __ROR8__(v68, 8);
  v70 = __ROR8__(v66, 61);
  *(v17 + 2) = (((0x7C4FE0556218D93DLL - ((v69 + (v68 ^ v70)) | 0x7C4FE0556218D93DLL) + ((v69 + (v68 ^ v70)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v17 + 2) & 7))) ^ BYTE1(v12) ^ 0x10;
  v71 = __ROR8__((v17 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v72 = v71 - ((2 * v71 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v73 = v72 ^ 0xCFE61775360C1323;
  v72 ^= 0x5BF868177A5BFF52uLL;
  v74 = __ROR8__(v73, 8);
  v75 = ((a3 & (2 * (v74 + v72))) - (v74 + v72) + a4) ^ a5;
  v76 = v75 ^ __ROR8__(v72, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v10;
  v78 = __ROR8__(v77, 8);
  v79 = v77 ^ __ROR8__(v76, 61);
  v80 = (0x42C5569356D8FE22 - ((v78 + v79) | 0x42C5569356D8FE22) + ((v78 + v79) | a6)) ^ a8;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = __ROR8__(v80, 8);
  v83 = ((a7 & (2 * (v82 + v81))) - (v82 + v81) + v13) ^ v16;
  v84 = v83 ^ __ROR8__(v81, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ 0x4B876952F452CECFLL;
  v86 = v85 ^ __ROR8__(v84, 61);
  v87 = (__ROR8__(v85, 8) + v86) ^ 0xC809DE93B29A9CA6;
  *(v17 + 3) = v12 ^ a1 ^ (((__ROR8__(v87, 8) + (v87 ^ __ROR8__(v86, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v17 + 3) & 7)));
  return v24();
}

uint64_t sub_1BAF7D594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v23 = (v10 - 1);
  v24 = v23 == v20;
  v25 = (v23 | ((v23 < v20) << 32)) + v14;
  v26 = v25 + v11 + 10;
  v27 = __ROR8__(v26 & 0xFFFFFFFFFFFFFFF8, 8) + ((v9 - 794987398) ^ v15);
  v28 = v27 ^ 0x1C4559FE42F2471ELL;
  v27 ^= 0x885B269C0EA5AB6FLL;
  v29 = __ROR8__(v28, 8);
  v30 = __ROR8__((((v29 + v27) & v16 ^ a1) + ((v29 + v27) & a2 ^ a3) - 1) ^ a4, 8);
  v31 = (((v29 + v27) & v16 ^ a1) + ((v29 + v27) & a2 ^ a3) - 1) ^ a4 ^ __ROR8__(v27, 61);
  v32 = (v30 + v31) ^ a9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ 0xFD1C75332F7F0C87;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xFC15BB0929C9D890;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v22;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = __ROR8__((((v40 + v39) & v12 ^ a6) + ((v40 + v39) ^ a5) - (((v40 + v39) ^ a5) & v12)) ^ a7, 8) + ((((v40 + v39) & v12 ^ a6) + ((v40 + v39) ^ a5) - (((v40 + v39) ^ a5) & v12)) ^ a7 ^ __ROR8__(v39, 61));
  *v26 = ((((a8 & (2 * v41)) - v41 + v17) ^ v18) >> (8 * (v26 & 7u))) ^ *(v13 + v25);
  v42 = v24;
  return (*(v21 + 8 * ((v42 * v19) ^ v9)))();
}

uint64_t sub_1BAF7D79C@<X0>(uint64_t a1@<X1>, unsigned int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v26 = *(a1 + 24);
  v27 = 0x9D9E81BF939E40DDLL * a25 - ((0x3B3D037F273C81BALL * a25 + 0x237B623A3F47106) & 0x2C65C7A2CEED3AA6) + (a2 ^ 0xF74EBEE33970D368);
  v28 = __ROR8__((v26 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v29 = ((v28 + 0x3283CFEC498AFD8ELL) | 0x8EF30571B3E03BF9) - ((v28 + 0x3283CFEC498AFD8ELL) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v30 = v29 ^ 0x92B65C8FF1127CE7;
  v29 ^= 0x6A823EDBD459096uLL;
  v31 = (__ROR8__(v30, 8) + v29) ^ 0xE13500AF98B0C0DCLL;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0x490250233B9E532;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = (((v35 + v34) | 0x6257A18AC6AFEA71) - ((v35 + v34) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ 0xFC15BB0929C9D890;
  v39 = __ROR8__(v38, 8);
  v40 = v38 ^ __ROR8__(v37, 61);
  v41 = (((2 * (v39 + v40)) | 0x73433184586818C6) - (v39 + v40) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v42 = v41 ^ __ROR8__(v40, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (((2 * (v43 + v42)) & 0x2E6D9124F850C1CLL) - (v43 + v42) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v26[10] = (((((v46 + v45) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v46 + v45) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v26 + 10) & 7u))) ^ HIBYTE(v27) ^ 0x16;
  v47 = __ROR8__((v26 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v48 = ((v47 + 0x3283CFEC498AFD8ELL) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v47 + 0x3283CFEC498AFD8ELL) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v49 = v48 ^ 0x5BE668DB5A344230;
  v48 ^= 0xCFF817B91663AE41;
  v50 = (__ROR8__(v49, 8) + v48) ^ 0xE13500AF98B0C0DCLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = (__ROR8__(v50, 8) + v51) ^ 0x490250233B9E532;
  v53 = v52 ^ __ROR8__(v51, 61);
  v54 = (__ROR8__(v52, 8) + v53) ^ 0xFD1C75332F7F0C87;
  v55 = v54 ^ __ROR8__(v53, 61);
  v56 = __ROR8__(v54, 8);
  v57 = (v56 + v55 - ((2 * (v56 + v55)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v58 = v57 ^ __ROR8__(v55, 61);
  v59 = __ROR8__(v57, 8);
  v60 = (v59 + v58 - ((2 * (v59 + v58)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v61 = v60 ^ __ROR8__(v58, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((2 * (v62 + v61)) | 0xFED65BFA7285710) - (v62 + v61) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = __ROR8__(v63, 8);
  v26[11] = (((((v65 + v64) | 0x21983AC56B0BB129) - ((v65 + v64) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v26 + 11) & 7u))) ^ BYTE6(v27) ^ 0x32;
  v66 = __ROR8__((v26 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v67 = -2 - (((0xD7C3013B6750271 - v66) | 0xEFC9086FACD320D4) + ((v66 + 0x3283CFEC498AFD8ELL) | 0x1036F790532CDF2BLL));
  v68 = v67 ^ 0xF38C5191EE2167CALL;
  v67 ^= 0x67922EF3A2768BBBuLL;
  v69 = (__ROR8__(v68, 8) + v67) ^ 0xE13500AF98B0C0DCLL;
  v70 = __ROR8__(v69, 8);
  v71 = v69 ^ __ROR8__(v67, 61);
  v72 = (((2 * (v70 + v71)) & 0xA44BB63E2DDF8B52) - (v70 + v71) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v73 = v72 ^ __ROR8__(v71, 61);
  v74 = (__ROR8__(v72, 8) + v73) ^ 0xFD1C75332F7F0C87;
  v75 = v74 ^ __ROR8__(v73, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ 0xFC15BB0929C9D890;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (((v78 + v77) | 0xD2E383F95083B686) - ((v78 + v77) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ 0xC809DE93B29A9CA6;
  v26[12] = (((__ROR8__(v81, 8) + (v81 ^ __ROR8__(v80, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 12) & 7u))) ^ BYTE5(v27) ^ 0xE3;
  v82 = __ROR8__((v26 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v83 = ((2 * (v82 + 0x3283CFEC498AFD8ELL)) | 0xA4234159906F106ALL) - (v82 + 0x3283CFEC498AFD8ELL) + 0x2DEE5F5337C877CBLL;
  v84 = v83 ^ 0xCE54F9528AC5CF2BLL;
  v83 ^= 0x5A4A8630C692235AuLL;
  v85 = __ROR8__(v84, 8);
  v86 = (((v85 + v83) | 0xD738201BC43E983BLL) - ((v85 + v83) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v87 = v86 ^ __ROR8__(v83, 61);
  v88 = __ROR8__(v86, 8);
  v89 = (((v88 + v87) ^ 0x70783716B7118F26) - ((2 * ((v88 + v87) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ 0xFD1C75332F7F0C87;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = __ROR8__(v91, 8);
  v94 = (v93 + v92 - ((2 * (v93 + v92)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v95 = v94 ^ __ROR8__(v92, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0x4B876952F452CECFLL;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ 0xC809DE93B29A9CA6;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v26[13] = (((v100 + v99 - ((2 * (v100 + v99)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v26 + 13) & 7u))) ^ BYTE4(v27) ^ 0xD1;
  v101 = __ROR8__((v26 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (0xCD7C3013B6750271 - v101) & 0xF050E761A6289A68 | (v101 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v103 = v102 ^ 0xEE15BE9FE4DADD76;
  v102 ^= 0x7A0BC1FDA88D3107uLL;
  v104 = (__ROR8__(v103, 8) + v102) ^ 0xE13500AF98B0C0DCLL;
  v105 = __ROR8__(v104, 8);
  v106 = v104 ^ __ROR8__(v102, 61);
  v107 = (((v105 + v106) | 0x349C4C6A3E574525) - ((v105 + v106) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v108 = v107 ^ __ROR8__(v106, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ 0xFD1C75332F7F0C87;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = (__ROR8__(v109, 8) + v110) ^ 0xFC15BB0929C9D890;
  v112 = v111 ^ __ROR8__(v110, 61);
  v113 = (__ROR8__(v111, 8) + v112) ^ 0x4B876952F452CECFLL;
  v114 = v113 ^ __ROR8__(v112, 61);
  v115 = __ROR8__(v113, 8);
  v116 = (((2 * (v115 + v114)) | 0x749128A0D39CA49CLL) - (v115 + v114) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v26[14] = (((__ROR8__(v116, 8) + (v116 ^ __ROR8__(v114, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 14) & 7u))) ^ ((-1818345251 * a25 - ((658276794 * a25 - 1544261370) & 0xCEED3AA6) + (a2 ^ 0x3970D368)) >> 24) ^ 0x67;
  v117 = __ROR8__((v26 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = (0x57C3013B6750271 - v117) & 0x5D98955B3706B30 | (v117 + 0x3283CFEC498AFD8ELL) & 0xFA2676AA4C8F94CFLL;
  v119 = v118 ^ 0x199CD0ABF1822C2ELL;
  v118 ^= 0x8D82AFC9BDD5C05FLL;
  v120 = (__ROR8__(v119, 8) + v118) ^ 0xE13500AF98B0C0DCLL;
  v121 = v120 ^ __ROR8__(v118, 61);
  v122 = __ROR8__(v120, 8);
  v123 = (((2 * (v122 + v121)) | 0x86D73428622BDA3ALL) - (v122 + v121) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v124 = v123 ^ __ROR8__(v121, 61);
  v125 = (__ROR8__(v123, 8) + v124) ^ 0xFD1C75332F7F0C87;
  v126 = v125 ^ __ROR8__(v124, 61);
  v127 = __ROR8__(v125, 8);
  v128 = __ROR8__((((2 * (v127 + v126)) & 0x407F7AAF3D2F06C8) - (v127 + v126) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL, 8);
  v129 = (((2 * (v127 + v126)) & 0x407F7AAF3D2F06C8) - (v127 + v126) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL ^ __ROR8__(v126, 61);
  v130 = (v128 + v129) ^ 0x4B876952F452CECFLL;
  v131 = v130 ^ __ROR8__(v129, 61);
  v132 = (__ROR8__(v130, 8) + v131) ^ 0xC809DE93B29A9CA6;
  v26[15] = (((__ROR8__(v132, 8) + (v132 ^ __ROR8__(v131, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 15) & 7u))) ^ ((-1818345251 * a25 - ((658276794 * a25 - 1544261370) & 0xCEED3AA6) + (a2 ^ 0x3970D368)) >> 16) ^ 0x76;
  v133 = __ROR8__((v26 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v134 = ((2 * v133 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v133 + 0x5649FDBD14324CA8;
  v135 = v134 ^ 0x948894571F4F0D28;
  v134 ^= 0x96EB355318E159uLL;
  v136 = __ROR8__(v135, 8);
  v137 = (((2 * (v136 + v134)) & 0xA1738BF9A2E70742) - (v136 + v134) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v138 = v137 ^ __ROR8__(v134, 61);
  v139 = (__ROR8__(v137, 8) + v138) ^ 0x490250233B9E532;
  v140 = v139 ^ __ROR8__(v138, 61);
  v141 = __ROR8__(v139, 8);
  v142 = (((2 * (v141 + v140)) & 0x2D730DB5B3BDACF8) - (v141 + v140) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v143 = v142 ^ __ROR8__(v140, 61);
  v144 = __ROR8__(v142, 8);
  v145 = __ROR8__((((2 * (v144 + v143)) | 0x4D17F792C6A75DEALL) - (v144 + v143) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665, 8);
  v146 = (((2 * (v144 + v143)) | 0x4D17F792C6A75DEALL) - (v144 + v143) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665 ^ __ROR8__(v143, 61);
  v147 = (((2 * (v145 + v146)) & 0x305CE5312BE34172) - (v145 + v146) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v148 = v147 ^ __ROR8__(v146, 61);
  v149 = (__ROR8__(v147, 8) + v148) ^ 0xC809DE93B29A9CA6;
  v150 = v149 ^ __ROR8__(v148, 61);
  v151 = __ROR8__(v149, 8);
  v26[16] = (((v151 + v150 - ((2 * (v151 + v150)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CLL) >> (8 * ((v26 + 16) & 7u))) ^ BYTE1(v27) ^ 0x9D;
  v152 = __ROR8__((v26 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v153 = ((2 * ((v152 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v152 + 0x3283CFEC498AFD8ELL) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v154 = __ROR8__(v153 ^ 0xD9CC90F52308FB19, 8);
  v153 ^= 0x4DD2EF976F5F1768uLL;
  v155 = (((2 * (v154 + v153)) | 0xC93FF3953A26D81ALL) - (v154 + v153) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v156 = v155 ^ __ROR8__(v153, 61);
  v157 = (__ROR8__(v155, 8) + v156) ^ 0x490250233B9E532;
  v158 = v157 ^ __ROR8__(v156, 61);
  v159 = (__ROR8__(v157, 8) + v158) ^ 0xFD1C75332F7F0C87;
  v160 = v159 ^ __ROR8__(v158, 61);
  v161 = __ROR8__(v159, 8);
  v162 = (((2 * (v161 + v160)) | 0x9AD9A558F1F83E32) - (v161 + v160) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v163 = v162 ^ __ROR8__(v160, 61);
  v164 = (__ROR8__(v162, 8) + v163) ^ 0x4B876952F452CECFLL;
  v165 = v164 ^ __ROR8__(v163, 61);
  v166 = __ROR8__(v164, 8);
  v26[17] = (((__ROR8__((v166 + v165 - ((2 * (v166 + v165)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607, 8) + ((v166 + v165 - ((2 * (v166 + v165)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607 ^ __ROR8__(v165, 61))) ^ 0xE4D0E5BA227E4CA0) >> (8 * ((v26 + 17) & 7u))) ^ (-35 * a25 - ((-70 * a25 + 6) & 0xA6) + (a2 ^ 0x68)) ^ 0x53;
  return (*(v25 + 8 * a2))();
}

uint64_t sub_1BAF7E7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60)
{
  v63 = 2 * (v61 ^ 0x49D);
  v64 = (*(v60 + 8 * (v63 ^ 0xC32)))();
  *(v62 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a60 + 8 * v63))(v64);
}

void sub_1BAF7EAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = a3 == 0;
  }

  else
  {
    v4 = 1;
  }

  v6 = !v4 && a4 != 0;
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1BAF7EB7C(uint64_t a1, uint64_t a2)
{
  STACK[0x218] = &STACK[0x1D89DE2B680DD389];
  STACK[0x220] = v3 + 0x5128F3C4919EC5A8;
  STACK[0x290] = &STACK[0x5128F3C4919EC9E8];
  STACK[0x228] = &STACK[0x5128F3C4919EC868];
  *(v4 - 172) = 407104343 * ((-106825906 - ((v4 - 176) | 0xF9A1F74E) + ((v4 - 176) | 0x65E08B1)) ^ 0x44CF4319) + 1644606322;
  v6 = *(v2 + 21240);
  STACK[0x298] = v2;
  v7 = v6(v4 - 176);
  return (*(STACK[0x298] + 8 * ((1106 * (a2 == 0)) ^ 0x2CDu)))(v7);
}

uint64_t sub_1BAF7ED00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[45] = *(a6 + 1616);
  v7[47] = &STACK[0x2E0];
  v7[63] = &STACK[0x490];
  *(v8 - 168) = -1310139165 - 385730383 * ((1430786968 - ((v8 - 176) | 0x55481398) + ((v8 - 176) | 0xAAB7EC67)) ^ 0xD32687B6);
  v9 = (*(a6 + 21528))(v8 - 176);
  v10 = *(v8 - 164) == v6 - 1474212029;
  return (*(STACK[0x298] + 8 * (((2 * v10) | (16 * v10)) ^ 0x621u)))(v9);
}

uint64_t sub_1BAF7EE00@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  LOBYTE(STACK[0x42B]) = v4 == 0;
  v8[53] = v5;
  v8[55] = 0;
  *(v10 - 248) = -28192457;
  *(v10 - 232) = -2089713703;
  *(v10 - 228) = v6;
  v8[58] = v5;
  *(v10 - 224) = v9;
  *(v10 - 220) = 1517382207;
  *(v10 - 208) = 542555936;
  v8[60] = a2;
  *(v10 - 192) = 310171382;
  *(v10 - 188) = v6 - 2;
  *(v10 - 184) = v9 + 28;
  *(v10 - 180) = 1517382207;
  v8[26] = v10 - 256 + v2;
  LODWORD(STACK[0x40C]) = 0;
  v11 = (*(a1 + 8 * (v7 + v3 + 2208)))(128);
  v12 = STACK[0x298];
  v8[11] = v11 + 0x4BCC923D0A7CA640;
  return (*(v12 + 8 * (((((v7 + v3 + 107) ^ (v11 == 0)) & 1) * (((v3 - 2042653574) & 0xD19F1E77) - 1034)) ^ (v7 + v3 + 2133))))();
}

uint64_t sub_1BAF7EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v6 + 1643)))(112);
  v9 = STACK[0x298];
  *(v7 + 96) = v8 + 0xE81173800FA8871;
  return (*(v9 + 8 * (((v8 == 0) * (((v6 - 723) | 0x10) - 332)) | v6)))();
}

uint64_t sub_1BAF7EFF8@<X0>(void *a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  *a1 = 0x551AB9ED161FA3A6;
  a1[1] = 0x1717171717171717;
  a1[2] = 0x1717171717171717;
  a1[3] = 0x1717171717171717;
  a1[4] = 0x1717171717171717;
  a1[5] = 0x1717171717171717;
  a1[6] = 0x1717171717171717;
  a1[7] = 0x1717171717171717;
  a1[8] = 0x1717171717171717;
  qmemcpy(a1 + 9, "EhMFEhMFp/", 10);
  v5 = *(v4 + 88);
  v6 = *(v4 + 96);
  *(v6 - 0xE81173800FA881DLL) = -1792230792;
  *(v6 - 0xE81173800FA8809) = 114237931;
  *(v6 - 0xE81173800FA8819) = 0x1717171717171717;
  *(v6 - 0xE81173800FA8811) = 0x1717171717171717;
  *(v6 - 0xE81173800FA8805) = 75;
  v8 = v6 != a3 && v5 != 0x4BCC923D0A7CA640;
  return (*(a2 + 8 * ((v8 * ((((v3 - 4) | 4) - 217) ^ (v3 + 55687585) & 0xFCAE47DB)) ^ (v3 + 923))))();
}

uint64_t sub_1BAF7F11C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 - 0x4BCC923D0A7CA630) = *(v6 - 0xE81173800FA8871);
  *(a1 - 0x4BCC923D0A7CA5E8) = *(v6 - 0xE81173800FA8829);
  *(a1 - 0x4BCC923D0A7CA5E4) = *(v6 - 0xE81173800FA8825);
  *(a1 - 0x4BCC923D0A7CA5E0) = *(v6 - 0xE81173800FA8821);
  *(a1 - 0x4BCC923D0A7CA5DFLL) = *(v6 - 0xE81173800FA8820);
  *(a1 - 0x4BCC923D0A7CA5C8) = *(v6 + v7);
  *(a1 - 0x4BCC923D0A7CA5DCLL) = *(v6 + v8);
  *(a1 - 0x4BCC923D0A7CA5C4) = *(v6 + v10) & 1 | 0x28;
  return (*(a6 + 8 * v9))(4294967176, 232, v9 ^ 0x2DBu, &off_1E7F1D8C0, (v9 - 624), v9 ^ 0x28Au, 312);
}

uint64_t sub_1BAF7F2A4(char a1, char a2, int a3, uint64_t a4, int a5, int a6, int a7)
{
  v14 = (v12 - 1) & 0xF;
  *(v8 + v12) = (127 * v14) ^ *(*(a4 + 8 * a3) + v14) ^ *(v14 + *(a4 + 8 * a5) - 4 + 5) ^ *(v14 + *(a4 + 8 * a6)) ^ (v13 + ((*(v10 + v12) ^ 0x44) - ((v9 - 113) ^ a2 ^ a1 & (2 * *(v10 + v12)))) * v7);
  return (*(v11 + 8 * (((v12 == -31) * a7) ^ v9)))();
}

uint64_t sub_1BAF7F378(uint64_t a1, char a2, char a3, char a4, int a5)
{
  v12 = (v8 - 1) & 0xF;
  v13 = STACK[0x298];
  *(v5 + v8) = *(v12 + v6 + 5) ^ *(v11 + v12) ^ (127 * v12) ^ *(v12 + v7 + 4) ^ (v9 + (((v10 - 102) ^ a3 ^ *(a1 + v8)) - ((a2 ^ (2 * *(a1 + v8))) & 0x88)) * a4);
  return (*(v13 + 8 * (((v8 == -31) * a5) ^ v10)))();
}

uint64_t sub_1BAF7F3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7;
  *(v7 - 0x4BCC923D0A7CA5C9) = *(v6 - 0xE81173800FA880ALL);
  *(v7 - 0x4BCC923D0A7CA5CALL) = *(v6 - 0xE81173800FA880BLL);
  *(v7 - 0x4BCC923D0A7CA5CBLL) = *(v6 - 0xE81173800FA880CLL);
  *(v7 - 0x4BCC923D0A7CA5CCLL) = *(v6 - 0xE81173800FA880DLL);
  *(v7 - 0x4BCC923D0A7CA5CDLL) = *(v6 - 0xE81173800FA880ELL);
  *(v7 - 0x4BCC923D0A7CA5CELL) = *(v6 - 0xE81173800FA880FLL);
  *(v7 - 0x4BCC923D0A7CA5CFLL) = *(v6 - 0xE81173800FA8810);
  *(v7 - 0x4BCC923D0A7CA5D0) = *(v6 + v8);
  *(v7 - 0x4BCC923D0A7CA5D1) = *(v6 - 0xE81173800FA8812);
  *(v7 - 0x4BCC923D0A7CA5D2) = *(v6 - 0xE81173800FA8813);
  *(v7 - 0x4BCC923D0A7CA5D3) = *(v6 - 0xE81173800FA8814);
  *(v7 - 0x4BCC923D0A7CA5D4) = *(v6 - 0xE81173800FA8815);
  *(v7 - 0x4BCC923D0A7CA5D5) = *(v6 - 0xE81173800FA8816);
  *(v7 - 0x4BCC923D0A7CA5D6) = *(v6 - 0xE81173800FA8817);
  *(v7 - 0x4BCC923D0A7CA5D7) = *(v6 - 0xE81173800FA8818);
  *(v7 - 0x4BCC923D0A7CA5D8) = *(v6 - 0xE81173800FA8819);
  v11 = *(v6 - 0xE81173800FA886DLL);
  *(v10 - 0x4BCC923D0A7CA62CLL) = v11;
  return (*(a6 + 8 * (((v11 != 1427814893) * (((v9 + 55) | 6) - 595)) ^ v9)))();
}

uint64_t sub_1BAF7F834(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(v9 - 0x4BCC923D0A7CA638) = a1 + a8;
  return (*(a6 + 8 * (((7 * (v8 ^ 0x867) + 68 * (v8 ^ 0x8FF) - 949) * (v9 != 0x4BCC923D0A7CA640)) ^ v8)))();
}

uint64_t sub_1BAF7F928(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *v8 = a1 + a8;
  return (*(a6 + 8 * (((*(v11 + 208) == 0x47C897C46C26D327) * (((v9 + 134232014) | 0xA0211005) ^ (v10 - 35))) ^ v9)))();
}

uint64_t sub_1BAF7FA14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *(v8 + 88) - 0x4BCC923D0A7CA640;
  v10 = *(v8 + 208);
  return (*(a6 + 8 * (((v6 == 2010884030) * (v7 + v6 + 1474213357)) ^ (v6 + 700))))(a1, a2, 83860369);
}

uint64_t sub_1BAF7FA80@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v9 = *v5;
  v8[17] = *(a1 + 8 * v3);
  v8[36] = v9;
  LODWORD(STACK[0x344]) = v4;
  v8[2] = v2;
  return (*(a1 + 8 * (((v2 == 0x47C897C46C26D327) * ((2 * (a2 ^ (v7 + 165))) ^ 0x2F4)) ^ (v6 + a2 - 39))))();
}

uint64_t sub_1BAF7FB50@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *(v64 + 40) = *(v65 - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0x3E4]) = 1399420443;
  *(v64 + 144) = a63;
  LODWORD(STACK[0x42C]) = 1580434300;
  return (*(a1 + 8 * (v63 + a2 + 1019)))();
}

uint64_t sub_1BAF7FBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3A4]) = v7;
  v10 = *(v9 + 88);
  return (*(a6 + 8 * ((866 * (v7 == ((v8 + ((2 * (v6 - 2180)) ^ 0x8E4) - 2476) ^ (v6 + 1294515937) & 0xB2D737E6))) ^ (v6 - 2180))))();
}

uint64_t sub_1BAF7FC44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v8 - 168) = v6 - 2138855791 * ((((v8 - 176) | 0x9C46E313) - (v8 - 176) + ((v8 - 176) & 0x63B91CE8)) ^ 0x93F0DB92) + 2030;
  v9 = (*(a6 + 8 * (v6 + 2511)))(v8 - 176);
  v10 = STACK[0x298];
  v11 = (v6 + 1631) ^ *(v8 - 176) ^ 0xD3EEAFA5;
  STACK[0x2E8] = *(*(v7 + 88) - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0x35C]) = 1399420443;
  LODWORD(STACK[0x3D4]) = v11;
  LODWORD(STACK[0x37C]) = 1604909828;
  return (*(v10 + 8 * v6))(v9);
}

uint64_t sub_1BAF7FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3A4]) = v7;
  v9 = *(v8 + 88);
  return (*(a6 + 2264 * (v6 ^ (v7 + 2))))();
}

uint64_t sub_1BAF7FDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LODWORD(STACK[0x3A4]) = v6;
  v9 = *(v8 + 88);
  return (*(a6 + 8 * v7))();
}

uint64_t sub_1BAF7FDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 88) = 0x4BCC923D0A7CA640;
  v8 = LODWORD(STACK[0x3A4]);
  return (*(a6 + 8 * (v6 - 1474211463)))();
}

uint64_t sub_1BAF7FEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = v9[35];
  v9[45] = *(a6 + 8 * v7);
  v9[47] = v11;
  v9[49] = STACK[0x228];
  *(v10 - 168) = -1310139384 - 385730383 * ((2 * ((v10 - 176) & 0x6BA5C020) - (v10 - 176) + 341458906) ^ 0x6DCB540B) + v7;
  v9[63] = &STACK[0x490];
  v12 = (*(a6 + 8 * (v7 ^ 0xA58)))(v10 - 176);
  return (*(STACK[0x298] + 8 * ((((v6 ^ (*(v10 - 164) == v8)) & 1) * (((v7 - 299704924) & 0x11DD21CE) + 923)) ^ (v7 + 1305))))(v12);
}

uint64_t sub_1BAF8006C@<X0>(uint64_t a1@<X5>, unint64_t a2@<X8>)
{
  *(v7 + 216) = *(a1 + 8 * v5);
  LODWORD(STACK[0x3C4]) = v4;
  *(v7 + 104) = v2;
  STACK[0x2D8] = a2;
  v9 = v2 == 0x52C24C17146331D3 || a2 == 0x4BCC923D0A7CA640;
  return (*(a1 + 8 * ((v9 * (v3 - 1474212592 + (((v3 + 5) | 0x158) ^ (v6 - 1407)) - 107)) | v3)))();
}

uint64_t sub_1BAF800F0@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  *(v5 + 40) = *(a2 - 0x4BCC923D0A7CA638);
  LODWORD(STACK[0x3E4]) = v4;
  *(v5 + 144) = v2;
  LODWORD(STACK[0x42C]) = -1345158841;
  return (*(a1 + 8 * v3))();
}

uint64_t sub_1BAF80168(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x2C0];
  STACK[0x2B0] = STACK[0x2C0];
  return (*(a6 + 8 * ((27 * ((((241 * ((v6 + 1655771469) & 0x9D4EE8E7 ^ 0x60)) ^ (v7 == 0x4BCC923D0A7CA640)) & 1) == 0)) ^ v6)))();
}

uint64_t sub_1BAF80290@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, int a3@<W8>)
{
  v7 = *(a1 + 8 * a3);
  v8 = *v4;
  *(v6 + 272) = v7;
  return (*(a1 + 8 * (((v8 == a2) * (v3 ^ 0xFF6 ^ (v5 + 909) ^ (v3 - 131731503) & 0xAFFB57AF)) ^ v3)))();
}

uint64_t sub_1BAF802EC@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v4 + 296) = 0x785FEF64C8799D66;
  STACK[0x2F8] = 0;
  *(v4 + 160) = 0xBA9E7370BFF99ELL;
  return (*(a1 + 8 * ((((v3 ^ 0x161) - 1629) * (a3 == a2)) ^ v3)))();
}

uint64_t sub_1BAF8045C@<X0>(uint64_t a1@<X5>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  *a64 = LODWORD(STACK[0x2A4]);
  *a65 = *(v66 + 232);
  *a66 = ((a2 + 20291) | 0xA8210000) ^ LODWORD(STACK[0x3F0]) ^ 0x2897E852;
  v67 = LOBYTE(STACK[0x42B]);
  return (*(a1 + 8 * a2))();
}

uint64_t sub_1BAF804B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(STACK[0x3AB]) = v6;
  LODWORD(STACK[0x2BC]) = v8;
  return (*(a6 + 8 * (v9 + v7 - 336 + ((v7 - 1644307752) & 0xB9E0DCDF) - 1547)))(a1, a2, a3, STACK[0x228]);
}

uint64_t sub_1BAF804F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a6 + 8 * v6);
  LODWORD(STACK[0x288]) = -1474215931;
  return v7(640, 961, 123, a4, 2077);
}

uint64_t sub_1BAF805B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (v6 + 2232) | LODWORD(STACK[0x288]);
  v10 = *(a4 - 0x5128F3C4919EC5A8);
  *(v8 + 240) = v10;
  return (*(a6 + 8 * (v6 ^ (4 * (((v10 == 0x4BCC923D0A7CA640) ^ (v7 + v9 + 61)) & 1)))))();
}

uint64_t sub_1BAF80614@<X0>(unint64_t a1@<X3>, uint64_t a2@<X5>, int a3@<W8>)
{
  STACK[0x270] = a1;
  STACK[0x308] = v3 - 0x4BCC923D0A7CA638;
  LODWORD(STACK[0x3F4]) = 1442154710;
  return (*(a2 + 8 * a3))();
}

uint64_t sub_1BAF80658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  STACK[0x308] = *(v8 + 240) - 0x4BCC923D0A7CA640;
  LODWORD(STACK[0x3F4]) = v7;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_1BAF806E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *v9;
  *(v10 + 112) = *v9;
  return (*(a6 + 8 * (((v12 == a8) * (((v8 - 1950) | v11) ^ 0xDB8)) ^ v8)))();
}

uint64_t sub_1BAF80858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = (*(a6 + 8 * (v7 ^ 0xA53FA8DB)))();
  v9 = STACK[0x298];
  *(v6 - 0x785FEF64C8799D4ELL) = 0;
  return (*(v9 + 8 * (v7 ^ 0xA53FA5EC ^ v7 ^ 0xA53FA4CD ^ (1366 * (v7 != 675491132)))))(v8);
}

uint64_t sub_1BAF808F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 8 * (v7 ^ 0xE06)))(v6 - 0xF2C67B766E067CBLL);
  v9 = STACK[0x298];
  *v8 = 0xF2C67B766E067CBLL;
  v10 = LODWORD(STACK[0x3F4]);
  return (*(v9 + 8 * v7))(640, 961, 123);
}

uint64_t sub_1BAF80A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6 - 165;
  v9 = (v6 - 1476331305) | 0x205005;
  v10 = (v6 - 2013202216) | 0x20205004;
  (*(a6 + 8 * (v6 + 599)))(*(v7 + 240) - 0x4BCC923D0A7CA640);
  return (*(STACK[0x298] + 8 * ((((v9 + 27) ^ v10) * (STACK[0x270] == 0x5128F3C4919EC5A8)) ^ v8)))(640, 961, 123);
}

uint64_t sub_1BAF80C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[45] = *(a6 + 8 * v6);
  v7[47] = &STACK[0x2E0];
  *(v8 - 168) = -1310139384 - 385730383 * ((-891990692 - ((v8 - 176) | 0xCAD54D5C) + ((v8 - 176) | 0x352AB2A3)) ^ 0x4CBBD972) + v6 + 34;
  v7[63] = &STACK[0x490];
  v9 = (*(a6 + 8 * (v6 + 2506)))(v8 - 176);
  return (*(STACK[0x298] + 8 * ((1823 * (((9 * (v6 ^ 0x6E)) ^ 0xEC48866C) + v6 > 0xE0EABF6B)) ^ (v6 + 391))))(v9);
}

uint64_t sub_1BAF80DBC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = v2 + 39;
  v6 = (*(a1 + 8 * (a2 ^ (v3 + 2656))))();
  return (*(a1 + 8 * v4))(v6);
}

uint64_t sub_1BAF80E30()
{
  v3 = *(v2 - 160);
  v4 = *MEMORY[0x1E69E9840];
  return v0 ^ v1;
}

uint64_t sub_1BAF80ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v7[13];
  v7[5] = *(STACK[0x2D8] - 0x4BCC923D0A7CA640);
  LODWORD(STACK[0x3E4]) = STACK[0x3C4];
  v7[18] = v8;
  LODWORD(STACK[0x42C]) = 211060145;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_1BAF80F38@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v6 + 264) = v3;
  STACK[0x2D0] = 0x785FEF64C8799D66;
  LODWORD(STACK[0x324]) = -2135508617;
  *(v6 + 72) = 0x58410583CA653C4DLL;
  v8 = a3 != a2 && v3 != 0x52C24C17146331D3;
  return (*(a1 + 8 * ((v8 * ((v5 + ((v4 - 911) | 2) - 40) ^ (v4 - 1171170336) & 0xEDEFF1A5)) ^ v4)))();
}

uint64_t sub_1BAF81074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *v6;
  *(v10 + 32) = *v6;
  return (*(a6 + 8 * (((v11 == 0x785FEF64C8799D66) * (143 * (v7 ^ (v9 - 5)) + ((v8 + v7 - 437) | 0x42) - 801)) ^ (v8 + v7 + 1773))))();
}

uint64_t sub_1BAF810DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, int a3@<W8>)
{
  *(a1 - 0x1D89DE2B680DD0B9) = v3;
  v4 = STACK[0x2F0];
  return (*(a2 + 8 * a3))();
}

uint64_t sub_1BAF81158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(STACK[0x2D0] - 0x785FEF64C8799D4ELL);
  v9 = *(STACK[0x2D0] - 0x785FEF64C8799D56);
  STACK[0x2C8] = v8;
  return (*(a6 + 8 * (((v8 == 0) * ((v6 - 1474212823) ^ (v7 + 405) ^ 0x251)) ^ v6)))();
}

uint64_t sub_1BAF811CC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0x2393FBE8) << 32)) + 0x310502E61A8144BELL;
  v5 = v3[9];
  v3[41] = v4;
  v3[42] = v5;
  return (*(a1 + 8 * ((1379 * (v4 - v5 + 0x273C029D8C4FFB9DLL < (a2 - 858) - 2820755828 + (a2 - 1474212474))) ^ a2)))();
}

uint64_t sub_1BAF812FC@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v3 = *(v2 + 296);
  v4 = *(v3 - 0x785FEF64C8799D4ELL);
  v5 = *(v3 - 0x785FEF64C8799D56);
  *(v2 + 192) = v4;
  return (*(a1 + 8 * (a2 ^ (2 * (((v4 == 0) ^ (a2 - 11)) & 1u)))))();
}

uint64_t sub_1BAF81360@<X0>(uint64_t a1@<X5>, unsigned int a2@<W8>)
{
  v4 = (v2 | ((v2 < 0x2393FBE8) << 32)) + 0x4ECB063D75ACD7CCLL;
  v5 = v3[20];
  v3[43] = v4;
  v3[44] = v5;
  return (*(a1 + 8 * ((3913 * (v4 - v5 - 0x4E1067CA2880DA20 < ((a2 - 1468) ^ a2 ^ 0x11F ^ 0xFFFFFFFFFFFFF8B5))) ^ a2)))();
}

uint64_t sub_1BAF814D0()
{
  v2 = *(v1 + 8);
  v3 = *(v2 - 0x785FEF64C8799D5ELL);
  v4 = *(v1 + 64);
  *(v4 - 0x785FEF64C8799D5ELL) = v3;
  *(v4 - 0x785FEF64C8799D66) = *(v2 - 0x785FEF64C8799D66);
  return (*(STACK[0x298] + 8 * (((v3 == 0x785FEF64C8799D66) * ((v0 ^ 0xD8E) + ((v0 - 224393863) & 0xD5FF7F7) - 2801)) ^ v0)))();
}

uint64_t sub_1BAF81564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(v3 + a1) = a2;
  v5 = *(a2 + a1);
  return (*(v4 + 8 * v2))();
}

uint64_t sub_1BAF8175C()
{
  v3 = (*(v0 + 8 * (v1 + 1506)))();
  v4 = STACK[0x298];
  *(*(v2 + 8) - 0x785FEF64C8799D4ELL) = 0;
  v5 = *(v2 + 8);
  return (*(v4 + 8 * v1))(v3);
}

uint64_t sub_1BAF817E4@<X0>(uint64_t a1@<X8>)
{
  v3 = STACK[0x298];
  v4 = (*(STACK[0x298] + 8 * (v1 ^ 0x91D)))(a1 - 0x785FEF64C8799D66);
  *(v2 + 8) = 0x785FEF64C8799D66;
  return (*(v3 + 8 * ((2918 * (LODWORD(STACK[0x458]) == ((v1 + 1504) ^ 0xEB601498))) ^ v1)))(v4);
}

uint64_t sub_1BAF8186C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55)
{
  LODWORD(STACK[0x200]) = v57;
  v58 = *(v55 - 0x785FEF64C8799D4ELL);
  return (*(a6 + 8 * (v56 + v56 + 1688 - 262)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48, a49, a50, a51, a52, a53, a54, a55);
}

uint64_t sub_1BAF818B0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v4 = v3[44] - 0xBA9E7370C000C7;
  STACK[0x288] = ((v3[44] - 0xBA9E7370BFF99ALL) ^ ((a2 - v2 - 1317) + 0x7FAD3B7D379BEE92)) + ((2 * (v3[44] - 0xBA9E7370BFF99ALL)) & 0xFF5A76FBBF7A7F6ELL) - 0x1124200C9C392022;
  v5 = v3[41];
  v6 = v3[42];
  STACK[0x270] = v6;
  STACK[0x260] = ((v6 - 0x58410583CA653C49) ^ 0xFED9FB77F3A6DFFFLL) + 0x6FAF1FF94FDD3F96 + ((2 * (v6 - 0x58410583CA653C49)) & 0xFDB3F6EFE74DBFFELL);
  STACK[0x250] = ((v4 + 1839) ^ 0x7A1B35FC2D7FFFFFLL) - 0x2200114824011149 + ((2 * (v4 + 1839)) & 0xF4366BF85AFFFFFELL);
  STACK[0x240] = ((v6 - 0x58410583CA653C47) ^ 0x7DBB37B4B9FFFEF7) - 0x25A01300B0811041 + ((2 * (v6 - 0x58410583CA653C47)) & 0xFB766F6973FFFDEELL);
  STACK[0x230] = ((v6 - 0x58410583CA653C43) ^ 0xFF9BFDB65F7EFEB7) + 0x587F26FDA9FFEFFFLL + ((2 * (v6 - 0x58410583CA653C43)) & 0xFF37FB6CBEFDFD6ELL);
  v7 = v3[24];
  v8 = STACK[0x2C8];
  return (*(a1 + 8 * a2))(LOWORD(STACK[0x45E]), -2, 0x4E57CE6D5C1D29D7, 0x4D7C3013B6750271, 0x4B876952F452CECFLL, 0x3283CFEC498AFD8ELL, 0x1380784254EB2752, 0x12BED15EDE5DCB03);
}

uint64_t sub_1BAF81B64()
{
  LOWORD(STACK[0x45E]) = v0;
  v3 = STACK[0x240];
  return (*(v2 + 8 * ((v1 + 1474211631) ^ 0x1DF)))();
}

uint64_t sub_1BAF81BC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v15 = v10 + v11 - 0x581B24B4097EEEB6;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((a3 - v16) & 0x75530549AD230FB7) + v16 + a5 - ((v16 + a5) & 0x73530549AD230FB7);
  v18 = __ROR8__(v17 ^ 0x6B165CB7EFD148A9, 8);
  v17 ^= 0xFF0823D5A386A4D8;
  v19 = (v12 - ((v18 + v17) | v12) + ((v18 + v17) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x69C1C0D9ABA5C00ALL) - (v21 + v20) + 0x4B1F1F932A2D1FFALL) ^ 0x4F8F3A911994FAC8;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v6;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x683C63A725393F58) - (v26 + v25) - 0x341E31D3929C9FACLL) ^ 0xC80B8ADABB55473CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a2 - ((v29 + v28) | a2) + ((v29 + v28) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v13;
  LODWORD(v31) = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ v8) >> (8 * (v15 & 7u))) ^ *v15;
  v33 = __ROR8__((v15 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v34 = a1 - (((a3 - v33) | 0x80ECD30D5A457A12) + ((v33 + a5) | 0x7F132CF2A5BA85EDLL));
  v35 = v34 ^ 0x9CA98AF318B73D0CLL;
  v34 ^= 0x8B7F59154E0D17DuLL;
  v36 = (__ROR8__(v35, 8) + v34) ^ v9;
  v37 = v36 ^ __ROR8__(v34, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ a6;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v6;
  v41 = v40 ^ __ROR8__(v39, 61);
  v42 = __ROR8__(v40, 8);
  v43 = (((2 * (v42 + v41)) & 0x918D3AB85B7434E0) - (v42 + v41) + 0x373962A3D245E58FLL) ^ 0xCB2CD9AAFB8C3D1FLL;
  v44 = v43 ^ __ROR8__(v41, 61);
  v45 = (__ROR8__(v43, 8) + v44) ^ a4;
  v46 = v45 ^ __ROR8__(v44, 61);
  v47 = (__ROR8__(v45, 8) + v46) ^ v13;
  LODWORD(v32) = (((__ROR8__(v47, 8) + (v47 ^ __ROR8__(v46, 61))) ^ v8) >> (8 * ((v15 + 1) & 7))) ^ *(v15 + 1);
  v48 = (__ROR8__((v15 + 2) & 0xFFFFFFFFFFFFFFF8, 8) + a5) & 0xF9FFFFFFFFFFFFFFLL;
  v49 = v48 ^ 0x1E4559FE42F2471ELL;
  v48 ^= 0x8A5B269C0EA5AB6FLL;
  v50 = __ROR8__(v49, 8);
  v51 = (v50 + v48 - ((2 * (v50 + v48)) & 0x94DA847B6A78BD3CLL) - 0x3592BDC24AC3A162) ^ 0x2B5842922D8C9E42;
  v52 = v51 ^ __ROR8__(v48, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ a6;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = __ROR8__(v53, 8);
  v56 = (((2 * (v55 + v54)) & 0x55D206C00BA16EBELL) - (v55 + v54) - 0x2AE9036005D0B760) ^ 0x280A89ACD5504427;
  v57 = v56 ^ __ROR8__(v54, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ 0xFC15BB0929C9D890;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ a4;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = (__ROR8__(v60, 8) + v61) ^ v13;
  v63 = (((__ROR8__(v62, 8) + (v62 ^ __ROR8__(v61, 61))) ^ v8) >> (8 * ((v15 + 2) & 7))) ^ *(v15 + 2);
  v64 = *(v15 + 3);
  return (*(v14 + 8 * v7))();
}

uint64_t sub_1BAF821F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = (v6 ^ 0x80B6B977) + STACK[0x270];
  STACK[0x460] = v8 + 10;
  v8 -= 0x584105839B30B152;
  v9 = v8 < 0x2F348AF1;
  v10 = v8 > v5;
  if (v5 < 0x2F348AF1 != v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  return (*(v7 + 8 * ((1975 * v11) ^ 0x3A2)))(a1, a2, a3, a4, a5, 0x3283CFEC498AFD8ELL);
}

uint64_t sub_1BAF82410()
{
  v4 = (v1 + v2 - 0x6E891B7143841F95);
  v5 = *v4;
  v6 = v4[1];
  return (*(v3 + 8 * v0))();
}

uint64_t sub_1BAF827BC()
{
  LOWORD(STACK[0x46E]) = v0;
  v3 = STACK[0x250];
  return (*(v2 + 8 * ((660 * (((v1 + 1474211614) ^ 0xD9EF121D) < 0x8838953B)) ^ (v1 + 1474211942))))();
}

uint64_t sub_1BAF828C8@<X0>(uint64_t a1@<X8>)
{
  *(a1 + v1) = v2;
  *(a1 - 0xF2C67B766E067CBLL) = v2;
  return (*(v4 + 8 * v3))();
}

uint64_t sub_1BAF829F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = STACK[0x488] + (v7 ^ 0x80B6B977) - 0xBA9E7287FD0DA0;
  v10 = STACK[0x480] - 0x4ECB063CB07DE7C0;
  v11 = (v9 < 0xE8C2EBF4) ^ (v10 < 0xE8C2EBF4);
  v12 = v9 > v10;
  if (v11)
  {
    v12 = v9 < 0xE8C2EBF4;
  }

  return (*(v8 + 8 * ((21 * v12) | 0x742)))(a1, a2, a3, a4, a5, v8, a7, 0xF2C67B766E067CBLL);
}

uint64_t sub_1BAF82AC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 232) = 0;
  LODWORD(STACK[0x3F0]) = -2135508617;
  return (*(a6 + 8 * v6))();
}

uint64_t sub_1BAF82AEC()
{
  LODWORD(STACK[0x324]) = v0;
  v2 = STACK[0x460];
  return (*(v1 + 3328))(LOWORD(STACK[0x45E]));
}

uint64_t sub_1BAF82E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v7 + 40);
  v9 = LODWORD(STACK[0x3E4]);
  v10 = *(v7 + 144);
  return (*(a6 + 8 * v6))();
}

uint64_t sub_1BAF82EB0@<X0>(uint64_t a1@<X5>, int a2@<W8>)
{
  v2 = a2 + 1768;
  v3 = SLOWORD(STACK[0x46E]);
  return (*(a1 + 8 * v2))();
}

uint64_t sub_1BAF82F84@<X0>(uint64_t a1@<X8>)
{
  *(v4 - 0x785FEF64C8799D66) = v2;
  *(v2 - 0x785FEF64C8799D5ELL) = *(a1 + v1);
  *(a1 + v1) = v2;
  return (*(v5 + 8 * v3))();
}

uint64_t sub_1BAF83094@<X0>(uint64_t a1@<X5>, unsigned __int16 a2@<W8>)
{
  *(v5 + 160) = v2;
  LODWORD(STACK[0x3F0]) = v4;
  return (*(a1 + 8 * ((1656 * (a2 == (((97 * (v3 ^ 0x26C)) ^ 0x196) - 19993))) ^ v3)))();
}

uint64_t sub_1BAF831CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (LODWORD(STACK[0x3F0]) ^ 0x80B6B977) - (((LODWORD(STACK[0x3F0]) ^ 0x80B6B977) << (((v6 + 121) | 0x31) ^ 0x32)) & 0x4B145DA4) + 629812946;
  v8 = ((v7 << (((v6 + 121) ^ 0xEF) + 20)) & 0xBF73FB92 ^ 0xB105980) + (v7 ^ 0x7A33D31B) - 1107349824;
  return (*(a6 + 8 * ((84 * (((v8 - v6) | (v6 - v8)) >> 31)) ^ (v6 - 498673109))))();
}

uint64_t sub_1BAF8329C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v10 = v8 - a1 < 0x10 || (v7 + a5 - 1606024649) < 8;
  v11 = *(a6 + 8 * ((((v10 ^ (v6 + 18)) & 1) * ((v6 - 1946226286) & 0xFF57FBEF ^ 0x8B56F36C)) ^ v6));
  STACK[0x288] = a1;
  return v11();
}

uint64_t sub_1BAF833B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  v36 = *(a6 + 8 * v32);
  *&STACK[0x250] = vdupq_n_s64(0x38uLL);
  *&STACK[0x260] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x230] = vdupq_n_s64(0x1C4559FE42F2471EuLL);
  *&STACK[0x240] = vdupq_n_s64(v34);
  *&STACK[0x200] = vdupq_n_s64(0x885B269C0EA5AB6FLL);
  v53 = vdupq_n_s64(0xC809DE93B29A9CA6);
  v52 = vdupq_n_s64(0xC3A45B3224F8E4BDLL);
  v38 = *&STACK[0x230];
  v37 = *&STACK[0x240];
  v39 = *&STACK[0x200];
  v41 = vdupq_n_s64(v35);
  v40 = vdupq_n_s64(0x490250233B9E532uLL);
  v43 = vdupq_n_s64(0xF2478EF55D5677EuLL);
  v42 = vdupq_n_s64(0x1714E4FD2C290A36uLL);
  v45 = vdupq_n_s64(0x847878817CDC94D0);
  v44 = vdupq_n_s64(0x786DC38855154C40uLL);
  v47 = vdupq_n_s64(0x8A81072F436C2241);
  v46 = vdupq_n_s64(0x3172E8D0BC90C0AEuLL);
  v48 = vdupq_n_s64(0xE136266DBFBEAC04);
  v49 = vdupq_n_s64(0x2774BE880686A81DuLL);
  v50 = *&STACK[0x250];
  return v36(a1, (v33 + a5 - 1606024656), (v33 + a5 - 1606024655), (v33 + a5 - 1606024654), (v33 + a5 - 1606024653), (v33 + a5 - 1606025086), (v33 + a5 - 1606024651), (v33 + a5 - 1606024650), a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, v52.i64[0], v52.i64[1], v49.i64[0], v49.i64[1], v53.i64[0], v53.i64[1], v48.i64[0], v48.i64[1], v47.i64[0], v47.i64[1], v46.i64[0], v46.i64[1], v45.i64[0], v45.i64[1], v44.i64[0], v44.i64[1], v43.i64[0], v43.i64[1], v42.i64[0], v42.i64[1], v41.i64[0], v41.i64[1], v40.i64[0], v40.i64[1]);
}

uint64_t sub_1BAF835E8(double a1, double a2, int8x16_t a3, int8x16_t a4, int64x2_t a5, int8x16_t a6, int8x16_t a7, int8x16_t a8, uint64_t a9, int a10, int a11, int a12, int a13, int a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v92 = (a16 + v71 + 8);
  v93.i64[0] = v75 + v92;
  v93.i64[1] = v75 + (a15 + v71 + 8);
  v94.i64[0] = v75 + (a14 + v71 + v72 + 8);
  v95.i64[0] = v75 + (a12 + v71 + 8);
  v95.i64[1] = v75 + (a11 + v71 + 8);
  v94.i64[1] = v75 + (a13 + v71 + 8);
  v96.i64[0] = v75 + (a10 + v71 + 8);
  v96.i64[1] = v75 + (v73 + v71 + 8);
  v97 = vandq_s8(v96, *&STACK[0x260]);
  v98 = vandq_s8(v95, *&STACK[0x260]);
  v99 = vandq_s8(v93, *&STACK[0x260]);
  v100 = vandq_s8(v94, *&STACK[0x260]);
  v101 = vsraq_n_u64(vshlq_n_s64(v99, 0x38uLL), v99, 8uLL);
  *&STACK[0x270] = vsraq_n_u64(vshlq_n_s64(v100, 0x38uLL), v100, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), a5);
  v103 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL), a5);
  v104 = veorq_s8(v103, v76);
  v105 = veorq_s8(v102, v76);
  v106 = veorq_s8(v102, a6);
  v107 = veorq_s8(v103, a6);
  v108 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v104, 0x38uLL), v104, 8uLL), v107);
  v109 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v105, 0x38uLL), v105, 8uLL), v106);
  v110 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v109, v109), v78), v109), v79), v80);
  v111 = vsraq_n_u64(vshlq_n_s64(v106, 3uLL), v106, 0x3DuLL);
  v112 = vsraq_n_u64(vshlq_n_s64(v107, 3uLL), v107, 0x3DuLL);
  v113 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v108, v108), v78), v108), v79), v80);
  v114 = veorq_s8(v113, v112);
  v115 = veorq_s8(v110, v111);
  v116 = vsraq_n_u64(vshlq_n_s64(v113, 0x38uLL), v113, 8uLL);
  v117 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL), v115);
  v118 = veorq_s8(vaddq_s64(v116, v114), v81);
  v119 = vsraq_n_u64(vshlq_n_s64(v114, 3uLL), v114, 0x3DuLL);
  v120 = veorq_s8(v117, v81);
  v121 = veorq_s8(v120, vsraq_n_u64(vshlq_n_s64(v115, 3uLL), v115, 0x3DuLL));
  v122 = veorq_s8(v118, v119);
  v123 = vsraq_n_u64(vshlq_n_s64(v120, 0x38uLL), v120, 8uLL);
  v124 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v118, 0x38uLL), v118, 8uLL), v122);
  v125 = vaddq_s64(v123, v121);
  v126 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, v82), vorrq_s8(v124, a7)), a7), v83);
  v127 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v125, v82), vorrq_s8(v125, a7)), a7), v83);
  v128 = veorq_s8(v127, vsraq_n_u64(vshlq_n_s64(v121, 3uLL), v121, 0x3DuLL));
  v129 = veorq_s8(v126, vsraq_n_u64(vshlq_n_s64(v122, 3uLL), v122, 0x3DuLL));
  v130 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v126, 0x38uLL), v126, 8uLL), v129);
  v131 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v127, 0x38uLL), v127, 8uLL), v128);
  v132 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v131, v131), v84), v131), v85), v86);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v130, v130), v84), v130), v85), v86);
  v134 = vsraq_n_u64(vshlq_n_s64(v128, 3uLL), v128, 0x3DuLL);
  v135 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v136 = veorq_s8(v132, v134);
  v137 = vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL);
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v132, 0x38uLL), v132, 8uLL), v136);
  v139 = vaddq_s64(v137, v135);
  v140 = veorq_s8(v139, v87);
  v141 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v139, a8), v88), v140), vandq_s8(v140, a8));
  v142 = veorq_s8(v138, v87);
  v143 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v138, a8), v88), v142), vandq_s8(v142, a8)), v89);
  v144 = veorq_s8(v141, v89);
  v145 = veorq_s8(v144, vsraq_n_u64(vshlq_n_s64(v135, 3uLL), v135, 0x3DuLL));
  v146 = veorq_s8(v143, vsraq_n_u64(vshlq_n_s64(v136, 3uLL), v136, 0x3DuLL));
  v147 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v144, 0x38uLL), v144, 8uLL), v145), v90);
  v148 = vsraq_n_u64(vshlq_n_s64(v145, 3uLL), v145, 0x3DuLL);
  v149 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v143, 0x38uLL), v143, 8uLL), v146), v90);
  v150 = veorq_s8(v149, vsraq_n_u64(vshlq_n_s64(v146, 3uLL), v146, 0x3DuLL));
  v151 = veorq_s8(v147, v148);
  v152 = vsraq_n_u64(vshlq_n_s64(v149, 0x38uLL), v149, 8uLL);
  v153 = vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL);
  v154 = vaddq_s64(v101, a5);
  v155 = vaddq_s64(v153, v151);
  v156 = vaddq_s64(v152, v150);
  v197.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v156, v91), vorrq_s8(v156, v77)), v77), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v96, 3uLL), a3)));
  v197.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v155, v91), vorrq_s8(v155, v77)), v77), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v95, 3uLL), a3)));
  v157 = veorq_s8(v154, v76);
  v158 = veorq_s8(v154, a6);
  v159 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v157, 0x38uLL), v157, 8uLL), v158);
  v160 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v159, v159), v78), v159), v79), v80);
  v161 = veorq_s8(v160, vsraq_n_u64(vshlq_n_s64(v158, 3uLL), v158, 0x3DuLL));
  v162 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v160, 0x38uLL), v160, 8uLL), v161), v81);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v161, 3uLL), v161, 0x3DuLL));
  v164 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163);
  v165 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v164, v82), vorrq_s8(v164, a7)), a7), v83);
  v166 = veorq_s8(v165, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v167 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v165, 0x38uLL), v165, 8uLL), v166);
  v168 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v167, v167), v84), v167), v85), v86);
  v169 = veorq_s8(v168, vsraq_n_u64(vshlq_n_s64(v166, 3uLL), v166, 0x3DuLL));
  v170 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v168, 0x38uLL), v168, 8uLL), v169);
  v171 = veorq_s8(v170, v87);
  v172 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v170, a8), v88), v171), vandq_s8(v171, a8)), v89);
  v173 = veorq_s8(v172, vsraq_n_u64(vshlq_n_s64(v169, 3uLL), v169, 0x3DuLL));
  v174 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v172, 0x38uLL), v172, 8uLL), v173), v90);
  v175 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v174, 0x38uLL), v174, 8uLL), veorq_s8(v174, vsraq_n_u64(vshlq_n_s64(v173, 3uLL), v173, 0x3DuLL)));
  v176 = vaddq_s64(*&STACK[0x270], a5);
  v197.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v175, v91), vorrq_s8(v175, v77)), v77), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v93, 3uLL), a3)));
  v177 = veorq_s8(v176, v76);
  v178 = veorq_s8(v176, a6);
  v179 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v177, 0x38uLL), v177, 8uLL), v178);
  v180 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v179, v179), v78), v179), v79), v80);
  v181 = veorq_s8(v180, vsraq_n_u64(vshlq_n_s64(v178, 3uLL), v178, 0x3DuLL));
  v182 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v180, 0x38uLL), v180, 8uLL), v181), v81);
  v183 = veorq_s8(v182, vsraq_n_u64(vshlq_n_s64(v181, 3uLL), v181, 0x3DuLL));
  v184 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v182, 0x38uLL), v182, 8uLL), v183);
  v185 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v184, v82), vorrq_s8(v184, a7)), a7), v83);
  v186 = veorq_s8(v185, vsraq_n_u64(vshlq_n_s64(v183, 3uLL), v183, 0x3DuLL));
  v187 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v185, 0x38uLL), v185, 8uLL), v186);
  v188 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v187, v187), v84), v187), v85), v86);
  v189 = veorq_s8(v188, vsraq_n_u64(vshlq_n_s64(v186, 3uLL), v186, 0x3DuLL));
  v190 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v188, 0x38uLL), v188, 8uLL), v189);
  v191 = veorq_s8(v190, v87);
  v192 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v190, a8), v88), v191), vandq_s8(v191, a8)), v89);
  v193 = veorq_s8(v192, vsraq_n_u64(vshlq_n_s64(v189, 3uLL), v189, 0x3DuLL));
  v194 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v192, 0x38uLL), v192, 8uLL), v193), v90);
  v195 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v193, 3uLL), v193, 0x3DuLL)));
  v197.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v195, v91), vorrq_s8(v195, v77)), v77), a4), vnegq_s64(vandq_s8(vshlq_n_s64(v94, 3uLL), a3)));
  *(v69 + v92) = veor_s8(vrev64_s8(*&vqtbl4q_s8(v197, a68)), *(v75 + v92 - 7));
  return (*(v74 + 8 * (((4 * (v70 == v71)) | (32 * (v70 == v71))) ^ v68)))();
}

uint64_t sub_1BAF83C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v11 = v6 - 163;
  v12 = ((5 * (v11 ^ 0x441)) ^ 0xFFFFFAB1) & v9;
  v13 = *(a6 + 8 * v11);
  *&STACK[0x230] = vdupq_n_s64(0xFFFFFFFFFFFFFFF8);
  *&STACK[0x200] = vdupq_n_s64(0x38uLL);
  *&STACK[0x270] = vdupq_n_s64(v10);
  return v13(a1 - 15, a2, (v8 + a5 + v7 - 1), (v8 + a5 + v7 + 1), (v8 + a5 + v7 + 2), (v8 + a5 + v7 + 3), v12);
}

uint64_t sub_1BAF83EDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int8x16_t a16, int8x16_t a17, int8x16_t a18, int64x2_t a19, int8x16_t a20, int8x16_t a21, uint64_t a22, uint64_t a23, int8x16_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int8x16_t a29, int8x16_t a30, uint64_t a31, uint64_t a32, int8x16_t a33, int64x2_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int64x2_t a39, int8x16_t a40, int8x16_t a41, int8x16_t a42, int8x16_t a43, int8x16_t a44, int8x16_t a45, int64x2_t a46)
{
  v59.i64[0] = v55 + (v48 + v50 + 16);
  v59.i64[1] = v55 + (v46 + v50 + 16);
  v60.i64[0] = v55 + (a6 + v50 + 16);
  v60.i64[1] = v55 + (a5 + v50 + 16);
  v61.i64[0] = v55 + (a4 + v50 + 16);
  v61.i64[1] = v55 + (v47 + v50 + 16);
  v62 = (v49 + v50 + 16);
  v63.i64[0] = v55 + (a3 + v50 + 16);
  v63.i64[1] = v55 + (v56 + v50 + 16);
  *&STACK[0x260] = v63;
  v63.i64[0] = v55 + (v52 + v50 + 16);
  v63.i64[1] = v55 + (HIDWORD(a23) + v50 + 16);
  *&STACK[0x250] = v63;
  v63.i64[0] = v55 + v62;
  v63.i64[1] = v55 + a2 + v50 + (v51 ^ (a9 + 862)) + 16;
  v64 = v63;
  v226 = v63;
  v65 = vandq_s8(v61, *&STACK[0x230]);
  v66 = vandq_s8(v60, *&STACK[0x230]);
  v67 = vandq_s8(v59, *&STACK[0x230]);
  v68 = vandq_s8(v64, *&STACK[0x230]);
  v69 = vsraq_n_u64(vshlq_n_s64(v67, 0x38uLL), v67, 8uLL);
  v227 = vsraq_n_u64(vshlq_n_s64(v68, 0x38uLL), v68, 8uLL);
  v70 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v65, 0x38uLL), v65, 8uLL), a34);
  v71 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v66, 0x38uLL), v66, 8uLL), a34);
  v72 = veorq_s8(v71, a33);
  v73 = veorq_s8(v70, a33);
  v74 = veorq_s8(v70, a30);
  v75 = veorq_s8(v71, a30);
  v76 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v72, 0x38uLL), v72, 8uLL), v75);
  v77 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v73, 0x38uLL), v73, 8uLL), v74);
  v78 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v77, v77), a29), v77), a46), a24);
  v79 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v76, v76), a29), v76), a46), a24);
  v80 = veorq_s8(v79, vsraq_n_u64(vshlq_n_s64(v75, 3uLL), v75, 0x3DuLL));
  v81 = veorq_s8(v78, vsraq_n_u64(vshlq_n_s64(v74, 3uLL), v74, 0x3DuLL));
  v82 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v79, 0x38uLL), v79, 8uLL), v80), a21);
  v83 = vsraq_n_u64(vshlq_n_s64(v80, 3uLL), v80, 0x3DuLL);
  v84 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v78, 0x38uLL), v78, 8uLL), v81), a21);
  v85 = veorq_s8(v84, vsraq_n_u64(vshlq_n_s64(v81, 3uLL), v81, 0x3DuLL));
  v86 = veorq_s8(v82, v83);
  v87 = vsraq_n_u64(vshlq_n_s64(v84, 0x38uLL), v84, 8uLL);
  v88 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v82, 0x38uLL), v82, 8uLL), v86);
  v89 = vaddq_s64(v87, v85);
  v90 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v88, *&STACK[0x270]), vorrq_s8(v88, a39)), a39), a45);
  v91 = vsraq_n_u64(vshlq_n_s64(v86, 3uLL), v86, 0x3DuLL);
  v92 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v89, *&STACK[0x270]), vorrq_s8(v89, a39)), a39), a45);
  v93 = veorq_s8(v92, vsraq_n_u64(vshlq_n_s64(v85, 3uLL), v85, 0x3DuLL));
  v94 = veorq_s8(v90, v91);
  v95 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v90, 0x38uLL), v90, 8uLL), v94);
  v96 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v92, 0x38uLL), v92, 8uLL), v93);
  v97 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v96, v96), a20), v96), a19), a18);
  v98 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v95, v95), a20), v95), a19), a18);
  v99 = veorq_s8(v98, vsraq_n_u64(vshlq_n_s64(v94, 3uLL), v94, 0x3DuLL));
  v100 = veorq_s8(v97, vsraq_n_u64(vshlq_n_s64(v93, 3uLL), v93, 0x3DuLL));
  v101 = vsraq_n_u64(vshlq_n_s64(v98, 0x38uLL), v98, 8uLL);
  v102 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v97, 0x38uLL), v97, 8uLL), v100);
  v103 = vaddq_s64(v101, v99);
  v104 = veorq_s8(v103, a17);
  v105 = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v103, v58), a44), v104), vandq_s8(v104, v58));
  v106 = veorq_s8(v102, a17);
  v107 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v102, v58), a44), v106), vandq_s8(v106, v58)), a43);
  v108 = vsraq_n_u64(vshlq_n_s64(v100, 3uLL), v100, 0x3DuLL);
  v109 = vsraq_n_u64(vshlq_n_s64(v99, 3uLL), v99, 0x3DuLL);
  v110 = veorq_s8(v105, a43);
  v111 = veorq_s8(v110, v109);
  v112 = veorq_s8(v107, v108);
  v113 = vsraq_n_u64(vshlq_n_s64(v110, 0x38uLL), v110, 8uLL);
  v114 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v107, 0x38uLL), v107, 8uLL), v112);
  v115 = veorq_s8(vaddq_s64(v113, v111), a42);
  v116 = vsraq_n_u64(vshlq_n_s64(v111, 3uLL), v111, 0x3DuLL);
  v117 = veorq_s8(v114, a42);
  v118 = veorq_s8(v117, vsraq_n_u64(vshlq_n_s64(v112, 3uLL), v112, 0x3DuLL));
  v119 = veorq_s8(v115, v116);
  v120 = vsraq_n_u64(vshlq_n_s64(v117, 0x38uLL), v117, 8uLL);
  v121 = vsraq_n_u64(vshlq_n_s64(v115, 0x38uLL), v115, 8uLL);
  v115.i64[0] = v55 + (HIDWORD(a26) + v50 + 16);
  v115.i64[1] = v55 + (a27 + v50 + 16);
  *&STACK[0x240] = v115;
  v122 = vaddq_s64(v69, a34);
  v123 = vaddq_s64(v121, v119);
  v124 = vaddq_s64(v120, v118);
  v228.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v124, a41), vorrq_s8(v124, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v61, 3uLL), *&STACK[0x200])));
  v228.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v123, a41), vorrq_s8(v123, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v60, 3uLL), *&STACK[0x200])));
  v125 = veorq_s8(v122, a33);
  v126 = veorq_s8(v122, a30);
  v127 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v125, 0x38uLL), v125, 8uLL), v126);
  v128 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v127, v127), a29), v127), a46), a24);
  v129 = veorq_s8(v128, vsraq_n_u64(vshlq_n_s64(v126, 3uLL), v126, 0x3DuLL));
  v130 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v128, 0x38uLL), v128, 8uLL), v129), a21);
  v131 = veorq_s8(v130, vsraq_n_u64(vshlq_n_s64(v129, 3uLL), v129, 0x3DuLL));
  v132 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v130, 0x38uLL), v130, 8uLL), v131);
  v133 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v132, *&STACK[0x270]), vorrq_s8(v132, a39)), a39), a45);
  v134 = veorq_s8(v133, vsraq_n_u64(vshlq_n_s64(v131, 3uLL), v131, 0x3DuLL));
  v135 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v133, 0x38uLL), v133, 8uLL), v134);
  v136 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v135, v135), a20), v135), a19), a18);
  v137 = veorq_s8(v136, vsraq_n_u64(vshlq_n_s64(v134, 3uLL), v134, 0x3DuLL));
  v138 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v136, 0x38uLL), v136, 8uLL), v137);
  v139 = veorq_s8(v138, a17);
  v140 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v138, v58), a44), v139), vandq_s8(v139, v58)), a43);
  v141 = veorq_s8(v140, vsraq_n_u64(vshlq_n_s64(v137, 3uLL), v137, 0x3DuLL));
  v142 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v140, 0x38uLL), v140, 8uLL), v141), a42);
  v143 = veorq_s8(v142, vsraq_n_u64(vshlq_n_s64(v141, 3uLL), v141, 0x3DuLL));
  v141.i64[0] = v55 + (a31 + v50 + 16);
  v141.i64[1] = v55 + (v54 + v50 + 16);
  v144 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v142, 0x38uLL), v142, 8uLL), v143);
  v145 = vandq_s8(v141, *&STACK[0x230]);
  v146 = vaddq_s64(v227, a34);
  v228.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v144, a41), vorrq_s8(v144, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v59, 3uLL), *&STACK[0x200])));
  v147 = veorq_s8(v146, a33);
  v148 = veorq_s8(v146, a30);
  v149 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v147, 0x38uLL), v147, 8uLL), v148);
  v150 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v149, v149), a29), v149), a46), a24);
  v151 = veorq_s8(v150, vsraq_n_u64(vshlq_n_s64(v148, 3uLL), v148, 0x3DuLL));
  v152 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v150, 0x38uLL), v150, 8uLL), v151), a21);
  v153 = veorq_s8(v152, vsraq_n_u64(vshlq_n_s64(v151, 3uLL), v151, 0x3DuLL));
  v154 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v152, 0x38uLL), v152, 8uLL), v153);
  v155 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v154, *&STACK[0x270]), vorrq_s8(v154, a39)), a39), a45);
  v156 = veorq_s8(v155, vsraq_n_u64(vshlq_n_s64(v153, 3uLL), v153, 0x3DuLL));
  v157 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v155, 0x38uLL), v155, 8uLL), v156);
  v158 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v157, v157), a20), v157), a19), a18);
  v159 = veorq_s8(v158, vsraq_n_u64(vshlq_n_s64(v156, 3uLL), v156, 0x3DuLL));
  v160 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v158, 0x38uLL), v158, 8uLL), v159);
  v161 = veorq_s8(v160, a17);
  v162 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v160, v58), a44), v161), vandq_s8(v161, v58)), a43);
  v163 = veorq_s8(v162, vsraq_n_u64(vshlq_n_s64(v159, 3uLL), v159, 0x3DuLL));
  v164 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v162, 0x38uLL), v162, 8uLL), v163), a42);
  v165 = veorq_s8(v164, vsraq_n_u64(vshlq_n_s64(v163, 3uLL), v163, 0x3DuLL));
  v166 = vsraq_n_u64(vshlq_n_s64(v164, 0x38uLL), v164, 8uLL);
  v167 = vandq_s8(*&STACK[0x240], *&STACK[0x230]);
  v168 = vaddq_s64(v166, v165);
  v169 = vandq_s8(*&STACK[0x250], *&STACK[0x230]);
  v228.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v168, a41), vorrq_s8(v168, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v226, 3uLL), *&STACK[0x200])));
  v170 = vandq_s8(*&STACK[0x260], *&STACK[0x230]);
  v171 = vsraq_n_u64(vshlq_n_s64(v169, 0x38uLL), v169, 8uLL);
  v172 = vsraq_n_u64(vshlq_n_s64(v167, 0x38uLL), v167, 8uLL);
  v173 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v145, 0x38uLL), v145, 8uLL), a34);
  v174 = vaddq_s64(v172, a34);
  v227.i64[0] = vqtbl4q_s8(v228, a40).u64[0];
  v228.val[0] = veorq_s8(v174, a33);
  v228.val[1] = veorq_s8(v173, a33);
  v228.val[2] = veorq_s8(v173, a30);
  v228.val[3] = veorq_s8(v174, a30);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[2]);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228.val[1], v228.val[1]), a29), v228.val[1]), a46), a24);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v228.val[0], v228.val[0]), a29), v228.val[0]), a46), a24);
  v175 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v175);
  v176 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = veorq_s8(vaddq_s64(v176, v228.val[2]), a21);
  v177 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[0] = veorq_s8(v228.val[0], a21);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v177);
  v178 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(v178, v228.val[2]);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], *&STACK[0x270]), vorrq_s8(v228.val[0], a39)), a39), a45);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], *&STACK[0x270]), vorrq_s8(v228.val[1], a39)), a39), a45);
  v228.val[2] = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[2]);
  v228.val[1] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228.val[1], v228.val[1]), a20), v228.val[1]), a19), a18);
  v179 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[0] = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v228.val[0], v228.val[0]), a20), v228.val[0]), a19), a18);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v179);
  v180 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(v180, v228.val[2]);
  v181 = veorq_s8(v228.val[1], a17);
  v228.val[1] = vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v228.val[1], v58), a44), v181), vandq_s8(v181, v58));
  v182 = veorq_s8(v228.val[0], a17);
  v228.val[0] = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v228.val[0], v58), a44), v182), vandq_s8(v182, v58)), a43);
  v228.val[1] = veorq_s8(v228.val[1], a43);
  v228.val[2] = veorq_s8(v228.val[1], vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[1] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[2]), a42);
  v183 = vsraq_n_u64(vshlq_n_s64(v228.val[2], 3uLL), v228.val[2], 0x3DuLL);
  v228.val[0] = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL), v228.val[3]), a42);
  v228.val[2] = veorq_s8(v228.val[0], vsraq_n_u64(vshlq_n_s64(v228.val[3], 3uLL), v228.val[3], 0x3DuLL));
  v228.val[3] = veorq_s8(v228.val[1], v183);
  v184 = vsraq_n_u64(vshlq_n_s64(v228.val[0], 0x38uLL), v228.val[0], 8uLL);
  v185 = vaddq_s64(v171, a34);
  v228.val[0] = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v228.val[1], 0x38uLL), v228.val[1], 8uLL), v228.val[3]);
  v228.val[1] = vaddq_s64(v184, v228.val[2]);
  v228.val[3] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[1], a41), vorrq_s8(v228.val[1], v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(v141, 3uLL), *&STACK[0x200])));
  v228.val[2] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v228.val[0], a41), vorrq_s8(v228.val[0], v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x240], 3uLL), *&STACK[0x200])));
  v186 = veorq_s8(v185, a33);
  v187 = veorq_s8(v185, a30);
  v188 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v186, 0x38uLL), v186, 8uLL), v187);
  v189 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v188, v188), a29), v188), a46), a24);
  v190 = veorq_s8(v189, vsraq_n_u64(vshlq_n_s64(v187, 3uLL), v187, 0x3DuLL));
  v191 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v189, 0x38uLL), v189, 8uLL), v190), a21);
  v192 = veorq_s8(v191, vsraq_n_u64(vshlq_n_s64(v190, 3uLL), v190, 0x3DuLL));
  v193 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v191, 0x38uLL), v191, 8uLL), v192);
  v194 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v193, *&STACK[0x270]), vorrq_s8(v193, a39)), a39), a45);
  v195 = veorq_s8(v194, vsraq_n_u64(vshlq_n_s64(v192, 3uLL), v192, 0x3DuLL));
  v196 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v194, 0x38uLL), v194, 8uLL), v195);
  v197 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v196, v196), a20), v196), a19), a18);
  v198 = veorq_s8(v197, vsraq_n_u64(vshlq_n_s64(v195, 3uLL), v195, 0x3DuLL));
  v199 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v197, 0x38uLL), v197, 8uLL), v198);
  v200 = veorq_s8(v199, a17);
  v201 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v199, v58), a44), v200), vandq_s8(v200, v58)), a43);
  v202 = veorq_s8(v201, vsraq_n_u64(vshlq_n_s64(v198, 3uLL), v198, 0x3DuLL));
  v203 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v201, 0x38uLL), v201, 8uLL), v202), a42);
  v204 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v203, 0x38uLL), v203, 8uLL), veorq_s8(v203, vsraq_n_u64(vshlq_n_s64(v202, 3uLL), v202, 0x3DuLL)));
  v205 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v170, 0x38uLL), v170, 8uLL), a34);
  v228.val[1] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v204, a41), vorrq_s8(v204, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x250], 3uLL), *&STACK[0x200])));
  v206 = veorq_s8(v205, a33);
  v207 = veorq_s8(v205, a30);
  v208 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v206, 0x38uLL), v206, 8uLL), v207);
  v209 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(vaddq_s64(v208, v208), a29), v208), a46), a24);
  v210 = veorq_s8(v209, vsraq_n_u64(vshlq_n_s64(v207, 3uLL), v207, 0x3DuLL));
  v211 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v209, 0x38uLL), v209, 8uLL), v210), a21);
  v212 = veorq_s8(v211, vsraq_n_u64(vshlq_n_s64(v210, 3uLL), v210, 0x3DuLL));
  v213 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v211, 0x38uLL), v211, 8uLL), v212);
  v214 = veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v213, *&STACK[0x270]), vorrq_s8(v213, a39)), a39), a45);
  v215 = veorq_s8(v214, vsraq_n_u64(vshlq_n_s64(v212, 3uLL), v212, 0x3DuLL));
  v216 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v214, 0x38uLL), v214, 8uLL), v215);
  v217 = veorq_s8(vaddq_s64(vsubq_s64(vandq_s8(vaddq_s64(v216, v216), a20), v216), a19), a18);
  v218 = veorq_s8(v217, vsraq_n_u64(vshlq_n_s64(v215, 3uLL), v215, 0x3DuLL));
  v219 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v217, 0x38uLL), v217, 8uLL), v218);
  v220 = veorq_s8(v219, a17);
  v221 = veorq_s8(vsubq_s64(vaddq_s64(veorq_s8(vandq_s8(v219, v58), a44), v220), vandq_s8(v220, v58)), a43);
  v222 = veorq_s8(v221, vsraq_n_u64(vshlq_n_s64(v218, 3uLL), v218, 0x3DuLL));
  v223 = veorq_s8(vaddq_s64(vsraq_n_u64(vshlq_n_s64(v221, 0x38uLL), v221, 8uLL), v222), a42);
  v224 = vaddq_s64(vsraq_n_u64(vshlq_n_s64(v223, 0x38uLL), v223, 8uLL), veorq_s8(v223, vsraq_n_u64(vshlq_n_s64(v222, 3uLL), v222, 0x3DuLL)));
  v228.val[0] = vshlq_u64(veorq_s8(vaddq_s64(vsubq_s64(vorrq_s8(v224, a41), vorrq_s8(v224, v57)), v57), a16), vnegq_s64(vandq_s8(vshlq_n_s64(*&STACK[0x260], 3uLL), *&STACK[0x200])));
  v228.val[0].i64[0] = vqtbl4q_s8(v228, a40).u64[0];
  v228.val[1].i64[0] = v227.i64[0];
  v228.val[1].i64[1] = v228.val[0].i64[0];
  v228.val[1] = vrev64q_s8(v228.val[1]);
  *(a1 + v62) = veorq_s8(vextq_s8(v228.val[1], v228.val[1], 8uLL), *(v55 + v62 - 15));
  return (*(v53 + 8 * ((13 * (a7 + v50 != 0)) ^ a8)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16.i64[0], a16.i64[1], a17.i64[0], a17.i64[1], a18.i64[0], a18.i64[1], a19.i64[0], a19.i64[1], a20.i64[0], a20.i64[1], a21.i64[0], a21.i64[1], a22, a23, a24.i64[0], a24.i64[1], a25, a26, a27, a28, a29.i64[0], a29.i64[1], a30.i64[0], a30.i64[1], a31, a32);
}

uint64_t sub_1BAF84CA4@<X0>(uint64_t a1@<X1>, int a2@<W2>, uint64_t a3@<X8>)
{
  v16 = (v3 + v15);
  v17 = __ROR8__((v14 + v16) & 0xFFFFFFFFFFFFFFF8, 8) + v11;
  v18 = __ROR8__(a1 ^ v17, 8);
  v19 = v17 ^ v6;
  v20 = ((v10 | (2 * (v18 + v19))) - (v18 + v19) + v12) ^ a3;
  v21 = v20 ^ __ROR8__(v19, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ 0x490250233B9E532;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (v7 - ((v23 + v24) | v7) + ((v23 + v24) | v13)) ^ 0x1714E4FD2C290A36;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0xF2478EF55D5677ELL) - (v27 + v26) + 0x786DC38855154C40) ^ 0x847878817CDC94D0;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v31 = (((v30 + v29) & v5 ^ 0x8A81072F436C2241) + ((v30 + v29) ^ 0x3172E8D0BC90C0AELL) - (((v30 + v29) ^ 0x3172E8D0BC90C0AELL) & v5)) ^ 0xE136266DBFBEAC04;
  v32 = v31 ^ __ROR8__(v29, 61);
  v33 = (__ROR8__(v31, 8) + v32) ^ 0xC809DE93B29A9CA6;
  v34 = v33 ^ __ROR8__(v32, 61);
  v35 = __ROR8__(v33, 8);
  v36 = STACK[0x298];
  *(STACK[0x288] + v16) = (((v4 - ((v35 + v34) | v4) + ((v35 + v34) | 0x2774BE880686A81DLL)) ^ 0xC3A45B3224F8E4BDLL) >> (8 * ((v14 + v3 + v15) & 7))) ^ *(v14 + v16);
  return (*(v36 + 8 * (((v3 - 1 == a2) * v9) ^ v8)))();
}

uint64_t sub_1BAF85060@<X0>(int a1@<W2>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  v9 = v7 ^ 0x77A;
  v10 = *(v6 + v5);
  v11 = *(v4 + 40 * v3 + 24);
  *(v8 + 248) = a3;
  LODWORD(STACK[0x200]) = v11;
  LODWORD(STACK[0x378]) = v11;
  LODWORD(STACK[0x270]) = 34523;
  LOWORD(STACK[0x322]) = -31013;
  LODWORD(STACK[0x2A8]) = a1 + 4;
  LODWORD(STACK[0x2AC]) = 542555936;
  STACK[0x250] = v10;
  STACK[0x318] = v10;
  STACK[0x240] = 0x27DB1ED5A73C4037;
  *(v8 + 176) = 0x27DB1ED5A73C4037;
  LODWORD(STACK[0x300]) = -834235651;
  return (*(a2 + 8 * v9))();
}

uint64_t sub_1BAF85160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = v7 + 40 * v6;
  v11 = *(v10 + 24);
  v12 = *(v10 + 8);
  STACK[0x2E8] = *(v9 + 288);
  LODWORD(STACK[0x35C]) = v11;
  LODWORD(STACK[0x3D4]) = v12;
  LODWORD(STACK[0x37C]) = -1985697501;
  return (*(a6 + 8 * v8))();
}

uint64_t sub_1BAF85298@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v7 = v3 + 40 * v2;
  v8 = *(v7 + 32);
  v9 = v5 + 0x27DB1ED5A73C4037;
  LODWORD(v7) = *(v7 + 24);
  *(v6 + 248) = a2;
  LODWORD(STACK[0x200]) = v7;
  LODWORD(STACK[0x378]) = v7;
  LODWORD(STACK[0x270]) = 56045;
  LOWORD(STACK[0x322]) = -9491;
  LODWORD(STACK[0x2A8]) = v8;
  LODWORD(STACK[0x2AC]) = 542555936;
  STACK[0x318] = 0x4D110E80B61FDFECLL;
  STACK[0x240] = v9;
  *(v6 + 176) = v9;
  LODWORD(STACK[0x300]) = 805052907;
  v10 = *(a1 + 8 * (v4 + 169));
  STACK[0x250] = 0x4D110E80B61FDFECLL;
  return v10();
}

uint64_t sub_1BAF854A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = LODWORD(STACK[0x2A8]);
  v9 = *(v7 + 248);
  LODWORD(STACK[0x200]) = STACK[0x378];
  LODWORD(STACK[0x270]) = LOWORD(STACK[0x322]);
  v10 = LODWORD(STACK[0x2AC]);
  STACK[0x250] = STACK[0x318];
  STACK[0x240] = *(v7 + 176);
  return (*(a6 + 8 * (v6 ^ 0xB1BB4143 ^ (561 * (v6 >= v6 - 662876772)))))();
}

uint64_t sub_1BAF85510@<X0>(uint64_t a1@<X5>, uint64_t a2@<X7>, uint64_t a3@<X8>)
{
  *(v5 + 56) = a3;
  LODWORD(STACK[0x288]) = v4;
  v7 = a3 != a2 && v4 + (((v3 - 412) | 0x6A8) ^ 0xFB0062DB) < 0xFFFFFFF6;
  return (*(a1 + 8 * (v7 | (32 * v7) | v3)))();
}

uint64_t sub_1BAF8555C()
{
  v2 = v0 + 2030;
  v3 = v0 + 1;
  v4 = STACK[0x298];
  v5 = (*(STACK[0x298] + 8 * (v0 + 2278)))(32);
  *(v1 + 64) = v5 + 0x785FEF64C8799D66;
  STACK[0x260] = v5;
  return (*(v4 + 8 * ((((v3 ^ (v5 == 0)) & 1) * (v2 ^ 0x9AA)) ^ v2)))();
}

uint64_t sub_1BAF855E4()
{
  v1 = STACK[0x260];
  *v1 = 0x785FEF64C8799D66;
  *(v1 + 8) = 0x785FEF64C8799D66;
  v2 = STACK[0x288];
  *(v1 + 16) = ((((v0 ^ 0xA37) - 553) | 0x809) ^ 0x1E9469F8) + LODWORD(STACK[0x288]);
  v3 = STACK[0x298];
  v4 = (*(STACK[0x298] + 8 * (v0 ^ 0x308)))(((6 * (v0 ^ 0x997)) ^ 0xFB0064D3) + v2);
  *(v1 + 24) = v4;
  return (*(v3 + 8 * ((1982 * (v4 != 0)) ^ v0 ^ 0xA37)))();
}

uint64_t sub_1BAF85698()
{
  v1 = LODWORD(STACK[0x200]) - ((2 * LODWORD(STACK[0x200]) + 1180282950) & 0x9F9621CC) + 1255577572 + ((v0 - 2013180042) | 0x20200101);
  v5 = LODWORD(STACK[0x288]) - ((2 * LODWORD(STACK[0x288]) - 167720730) & 0x9F9621CC) + 1254847833;
  v2 = *(STACK[0x298] + 8 * (v0 + 37));
  LODWORD(STACK[0x230]) = ((10458 * LODWORD(STACK[0x270]) + 26743) | 0xFFFFAE35) + 27539 * LODWORD(STACK[0x270]) + 13482;
  v3 = STACK[0x260];
  return v2(0x74F472E448216F49, 0x91F090D5486CA88BLL, v1, 0xFE5951FB672C4BC9, 0xE13500AF98B0C0DCLL);
}

uint64_t sub_1BAF85888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, unsigned int a63)
{
  v72 = *(v67 + 24);
  v73 = (__ROR8__((v72 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + v65) & 0xF9FFFFFFFFFFFFFFLL;
  v74 = v73 ^ 0x1E4559FE42F2471ELL;
  v73 ^= 0x8A5B269C0EA5AB6FLL;
  v75 = (__ROR8__(v74, 8) + v73) ^ a5;
  v76 = v75 ^ __ROR8__(v73, 61);
  v77 = (__ROR8__(v75, 8) + v76) ^ v64;
  v78 = v77 ^ __ROR8__(v76, 61);
  v79 = (__ROR8__(v77, 8) + v78) ^ v71;
  v80 = v79 ^ __ROR8__(v78, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v68;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v63;
  v84 = __ROR8__(v83, 8);
  v85 = v83 ^ __ROR8__(v82, 61);
  v86 = (((2 * (v84 + v85)) & 0xAAAA746556851DE8) - (v84 + v85) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v87 = v86 ^ __ROR8__(v85, 61);
  v88 = __ROR8__(v86, 8);
  *(v72 + 4) = (((((2 * (v88 + v87)) | 0xC5585AB08F272530) - (v88 + v87) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v72 + 4) & 7))) ^ BYTE1(LODWORD(STACK[0x230])) ^ 0xA8;
  v89 = __ROR8__((v72 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v90 = (v89 + v65) ^ 0x885B269C0EA5AB6FLL;
  v91 = (__ROR8__((v89 + v65) ^ 0x1C4559FE42F2471ELL, 8) + v90) ^ a5;
  v92 = v91 ^ __ROR8__(v90, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v64;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = __ROR8__(v93, 8);
  v96 = (v95 + v94 - ((2 * (v95 + v94)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v97 = v96 ^ __ROR8__(v94, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ v68;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = (__ROR8__(v98, 8) + v99) ^ v63;
  v101 = v100 ^ __ROR8__(v99, 61);
  v102 = __ROR8__(v100, 8);
  v103 = (0x964AD0183F74BFF6 - ((v102 + v101) | 0x964AD0183F74BFF6) + ((v102 + v101) | 0x69B52FE7C08B4009)) ^ 0xA1BCF1747211DCAFLL;
  *(v72 + 5) = a61 ^ (((__ROR8__(v103, 8) + (v103 ^ __ROR8__(v101, 61))) ^ v66) >> (8 * ((v72 + 5) & 7)));
  return (*(STACK[0x298] + 8 * ((v69 + v70 - 328) ^ 0x22B ^ (1993 * (((v69 + v70 - 328) ^ 0x2EC2FF48u) > 0x400AE256)))))(a1, a2, a63);
}

uint64_t sub_1BAF85B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v21 = *(v14 + 24) + v17 - 0x1E06D87D68ADC517;
  v22 = __ROR8__(v21 & 0xFFFFFFFFFFFFFFF8, 8);
  v23 = ((v22 + v10) | 0x7E054FB39FC80770) - ((v22 + v10) | a7) + a7;
  v24 = __ROR8__(v23 ^ 0x6240164DDD3A406ELL, 8);
  v23 ^= 0xF65E692F916DAC1FLL;
  v25 = (v24 + v23) ^ a5;
  v26 = v25 ^ __ROR8__(v23, 61);
  v27 = (__ROR8__(v25, 8) + v26) ^ v9;
  v28 = *(STACK[0x298] + 8 * v16);
  v29 = v27 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v27, 8) + v29) ^ v19;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v18;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v8;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v13;
  *v21 = (((__ROR8__(v36, 8) + (v36 ^ __ROR8__(v35, 61))) ^ v11) >> (8 * (v21 & 7u))) ^ HIBYTE(a3) ^ 0x4F;
  v37 = __ROR8__((v21 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v38 = ((0x4D7C3013B6750271 - v37) & 0x7C0A1F12C3784FEDLL) + v37 + v10 - ((v37 + v10) & 0x7A0A1F12C3784FEDLL);
  v39 = v38 ^ 0x624F46EC818A08F3;
  v38 ^= 0xF651398ECDDDE482;
  v40 = __ROR8__(v39, 8);
  v41 = (a1 - ((v40 + v38) | a1) + ((v40 + v38) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v42 = v41 ^ __ROR8__(v38, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (a6 - ((v43 + v42) | a6) + ((v43 + v42) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (a4 - ((v46 + v45) | a4) + ((v46 + v45) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v50 = (v49 + v48 - ((2 * (v49 + v48)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v51 = v50 ^ __ROR8__(v48, 61);
  v52 = __ROR8__(v50, 8);
  v53 = __ROR8__((v52 + v51 - ((2 * (v52 + v51)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v54 = (v52 + v51 - ((2 * (v52 + v51)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v51, 61);
  *(v21 + 1) = (((__ROR8__((v53 + v54) ^ v13, 8) + ((v53 + v54) ^ v13 ^ __ROR8__(v54, 61))) ^ v11) >> (8 * ((v21 + 1) & 7))) ^ BYTE2(a3) ^ 0xCB;
  v55 = __ROR8__((v21 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v56 = v55 - ((2 * v55 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v57 = __ROR8__(v56 ^ 0x24709F6C17CEA06BLL, 8);
  v56 ^= 0xB06EE00E5B994C1ALL;
  v58 = (((2 * (v57 + v56)) | 0x84A35F8B8F02A07ELL) - (v57 + v56) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v59 = v58 ^ __ROR8__(v56, 61);
  v60 = __ROR8__(v58, 8);
  v61 = (((2 * (v60 + v59)) | 0x5AE37AFB8B700D10) - (v60 + v59) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v62 = v61 ^ __ROR8__(v59, 61);
  v63 = __ROR8__(v61, 8);
  v64 = __ROR8__((((2 * (v63 + v62)) | 0xA0645171747853D8) - (v63 + v62) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v65 = (((2 * (v63 + v62)) | 0xA0645171747853D8) - (v63 + v62) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v62, 61);
  v66 = (((2 * (v64 + v65)) & 0xC0FA970E03639268) - (v64 + v65) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v67 = v66 ^ __ROR8__(v65, 61);
  v68 = __ROR8__(v66, 8);
  v69 = (((2 * (v68 + v67)) & 0x3F1A3AC322107E48) - (v68 + v67) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v70 = v69 ^ __ROR8__(v67, 61);
  v71 = __ROR8__(v69, 8);
  v72 = (((2 * (v71 + v70)) | 0xA1336988A728D0CALL) - (v71 + v70) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v73 = __ROR8__(v72, 8);
  v74 = __ROR8__(v70, 61);
  *(v21 + 2) = (((v20 - ((v73 + (v72 ^ v74)) | v20) + ((v73 + (v72 ^ v74)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v21 + 2) & 7))) ^ BYTE1(a3) ^ 0x10;
  v75 = __ROR8__((v21 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v76 = v75 - ((2 * v75 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v77 = v76 ^ 0xCFE61775360C1323;
  v76 ^= 0x5BF868177A5BFF52uLL;
  v78 = __ROR8__(v77, 8);
  v79 = (((2 * (v78 + v76)) & 0x3185DFB098D2C9E8) - (v78 + v76) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v80 = v79 ^ __ROR8__(v76, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v9;
  v82 = __ROR8__(v81, 8);
  v83 = v81 ^ __ROR8__(v80, 61);
  v84 = (a8 - ((v82 + v83) | a8) + ((v82 + v83) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v85 = v84 ^ __ROR8__(v83, 61);
  v86 = __ROR8__(v84, 8);
  v87 = (((2 * (v86 + v85)) & 0xDC1EDE556F26AEE8) - (v86 + v85) + a2) ^ v15;
  v88 = v87 ^ __ROR8__(v85, 61);
  v89 = (__ROR8__(v87, 8) + v88) ^ v8;
  v90 = v89 ^ __ROR8__(v88, 61);
  v91 = (__ROR8__(v89, 8) + v90) ^ v13;
  *(v21 + 3) = a3 ^ v12 ^ (((__ROR8__(v91, 8) + (v91 ^ __ROR8__(v90, 61))) ^ v11) >> (8 * ((v21 + 3) & 7)));
  return v28();
}

uint64_t sub_1BAF864C8@<X0>(uint64_t a1@<X4>, int a2@<W8>)
{
  v10 = *(*(v8 + 64) - 0x785FEF64C8799D4ELL);
  v11 = 0xDF474C4232143659 * STACK[0x250] - (((((a2 - 1149406622) & 0xECA3DD3D) + 0x3E8E9883BC071B8DLL) * STACK[0x250] + 0x3A791F88BE7EBDE8) & 0x2C65C7A2CEED3AA6) + 0x536F7395C6B5FC47;
  v12 = __ROR8__((v10 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v13 = ((v12 + v4) | 0x8EF30571B3E03BF9) - ((v12 + v4) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v14 = v13 ^ 0x92B65C8FF1127CE7;
  v13 ^= 0x6A823EDBD459096uLL;
  v15 = (__ROR8__(v14, 8) + v13) ^ a1;
  v16 = v15 ^ __ROR8__(v13, 61);
  v17 = (__ROR8__(v15, 8) + v16) ^ v3;
  v18 = v17 ^ __ROR8__(v16, 61);
  v19 = __ROR8__(v17, 8);
  v20 = (((v19 + v18) | 0x6257A18AC6AFEA71) - ((v19 + v18) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v21 = v20 ^ __ROR8__(v18, 61);
  v22 = (__ROR8__(v20, 8) + v21) ^ v7;
  v23 = __ROR8__(v22, 8);
  v24 = v22 ^ __ROR8__(v21, 61);
  v25 = (((2 * (v23 + v24)) | 0x73433184586818C6) - (v23 + v24) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL;
  v26 = v25 ^ __ROR8__(v24, 61);
  v27 = __ROR8__(v25, 8);
  v28 = (((2 * (v27 + v26)) & 0x2E6D9124F850C1CLL) - (v27 + v26) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = __ROR8__(v28, 8);
  v10[10] = (((((v30 + v29) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v30 + v29) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v10 + 10) & 7u))) ^ HIBYTE(v11) ^ 0x16;
  v31 = __ROR8__((v10 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v32 = ((v31 + v4) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v31 + v4) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v33 = v32 ^ 0x5BE668DB5A344230;
  v32 ^= 0xCFF817B91663AE41;
  v34 = (__ROR8__(v33, 8) + v32) ^ a1;
  v35 = v34 ^ __ROR8__(v32, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v3;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v9;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (v40 + v39 - ((2 * (v40 + v39)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  v44 = (v43 + v42 - ((2 * (v43 + v42)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v45 = v44 ^ __ROR8__(v42, 61);
  v46 = __ROR8__(v44, 8);
  v47 = (((2 * (v46 + v45)) | 0xFED65BFA7285710) - (v46 + v45) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v48 = v47 ^ __ROR8__(v45, 61);
  v49 = __ROR8__(v47, 8);
  v10[11] = (((((v49 + v48) | 0x21983AC56B0BB129) - ((v49 + v48) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v10 + 11) & 7u))) ^ BYTE6(v11) ^ 0x32;
  v50 = __ROR8__((v10 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v51 = -2 - (((0xD7C3013B6750271 - v50) | 0xEFC9086FACD320D4) + ((v50 + v4) | 0x1036F790532CDF2BLL));
  v52 = v51 ^ 0xF38C5191EE2167CALL;
  v51 ^= 0x67922EF3A2768BBBuLL;
  v53 = (__ROR8__(v52, 8) + v51) ^ a1;
  v54 = __ROR8__(v53, 8);
  v55 = v53 ^ __ROR8__(v51, 61);
  v56 = (((2 * (v54 + v55)) & 0xA44BB63E2DDF8B52) - (v54 + v55) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v57 = v56 ^ __ROR8__(v55, 61);
  v58 = (__ROR8__(v56, 8) + v57) ^ v9;
  v59 = v58 ^ __ROR8__(v57, 61);
  v60 = (__ROR8__(v58, 8) + v59) ^ v7;
  v61 = v60 ^ __ROR8__(v59, 61);
  v62 = __ROR8__(v60, 8);
  v63 = (((v62 + v61) | 0xD2E383F95083B686) - ((v62 + v61) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v64 = v63 ^ __ROR8__(v61, 61);
  v65 = (__ROR8__(v63, 8) + v64) ^ v6;
  v10[12] = (((__ROR8__(v65, 8) + (v65 ^ __ROR8__(v64, 61))) ^ v5) >> (8 * ((v10 + 12) & 7u))) ^ BYTE5(v11) ^ 0xE3;
  v66 = __ROR8__((v10 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v67 = ((2 * (v66 + v4)) | 0xA4234159906F106ALL) - (v66 + v4) + 0x2DEE5F5337C877CBLL;
  v68 = v67 ^ 0xCE54F9528AC5CF2BLL;
  v67 ^= 0x5A4A8630C692235AuLL;
  v69 = __ROR8__(v68, 8);
  v70 = (((v69 + v67) | 0xD738201BC43E983BLL) - ((v69 + v67) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v71 = v70 ^ __ROR8__(v67, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((v72 + v71) ^ 0x70783716B7118F26) - ((2 * ((v72 + v71) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = (__ROR8__(v73, 8) + v74) ^ v9;
  v76 = v75 ^ __ROR8__(v74, 61);
  v77 = __ROR8__(v75, 8);
  v78 = (v77 + v76 - ((2 * (v77 + v76)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v79 = v78 ^ __ROR8__(v76, 61);
  v80 = (__ROR8__(v78, 8) + v79) ^ v2;
  v81 = v80 ^ __ROR8__(v79, 61);
  v82 = (__ROR8__(v80, 8) + v81) ^ v6;
  v83 = v82 ^ __ROR8__(v81, 61);
  v84 = __ROR8__(v82, 8);
  v10[13] = (((v84 + v83 - ((2 * (v84 + v83)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v10 + 13) & 7u))) ^ BYTE4(v11) ^ 0xD1;
  v85 = __ROR8__((v10 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v86 = (0xCD7C3013B6750271 - v85) & 0xF050E761A6289A68 | (v85 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v87 = v86 ^ 0xEE15BE9FE4DADD76;
  v86 ^= 0x7A0BC1FDA88D3107uLL;
  v88 = (__ROR8__(v87, 8) + v86) ^ a1;
  v89 = v88 ^ __ROR8__(v86, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((v90 + v89) | 0x349C4C6A3E574525) - ((v90 + v89) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v9;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v7;
  v96 = v95 ^ __ROR8__(v94, 61);
  v97 = (__ROR8__(v95, 8) + v96) ^ v2;
  v98 = v97 ^ __ROR8__(v96, 61);
  v99 = __ROR8__(v97, 8);
  v100 = (((2 * (v99 + v98)) | 0x749128A0D39CA49CLL) - (v99 + v98) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v10[14] = (((__ROR8__(v100, 8) + (v100 ^ __ROR8__(v98, 61))) ^ v5) >> (8 * ((v10 + 14) & 7u))) ^ BYTE3(v11) ^ 0x67;
  v101 = __ROR8__((v10 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v102 = (0x57C3013B6750271 - v101) & 0x5D98955B3706B30 | (v101 + v4) & 0xFA2676AA4C8F94CFLL;
  v103 = v102 ^ 0x199CD0ABF1822C2ELL;
  v102 ^= 0x8D82AFC9BDD5C05FLL;
  v104 = (__ROR8__(v103, 8) + v102) ^ a1;
  v105 = v104 ^ __ROR8__(v102, 61);
  v106 = __ROR8__(v104, 8);
  v107 = (((2 * (v106 + v105)) | 0x86D73428622BDA3ALL) - (v106 + v105) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v108 = v107 ^ __ROR8__(v105, 61);
  v109 = (__ROR8__(v107, 8) + v108) ^ v9;
  v110 = v109 ^ __ROR8__(v108, 61);
  v111 = __ROR8__(v109, 8);
  v112 = (((2 * (v111 + v110)) & 0x407F7AAF3D2F06C8) - (v111 + v110) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v113 = v112 ^ __ROR8__(v110, 61);
  v114 = (__ROR8__(v112, 8) + v113) ^ v2;
  v115 = v114 ^ __ROR8__(v113, 61);
  v116 = (__ROR8__(v114, 8) + v115) ^ v6;
  v10[15] = (((__ROR8__(v116, 8) + (v116 ^ __ROR8__(v115, 61))) ^ v5) >> (8 * ((v10 + 15) & 7u))) ^ BYTE2(v11) ^ 0x76;
  v117 = __ROR8__((v10 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v118 = ((2 * v117 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v117 + 0x5649FDBD14324CA8;
  v119 = v118 ^ 0x948894571F4F0D28;
  v118 ^= 0x96EB355318E159uLL;
  v120 = __ROR8__(v119, 8);
  v121 = (((2 * (v120 + v118)) & 0xA1738BF9A2E70742) - (v120 + v118) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v122 = v121 ^ __ROR8__(v118, 61);
  v123 = (__ROR8__(v121, 8) + v122) ^ v3;
  v124 = v123 ^ __ROR8__(v122, 61);
  v125 = __ROR8__(v123, 8);
  v126 = (((2 * (v125 + v124)) & 0x2D730DB5B3BDACF8) - (v125 + v124) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v127 = v126 ^ __ROR8__(v124, 61);
  v128 = __ROR8__(v126, 8);
  v129 = (((2 * (v128 + v127)) | 0x4D17F792C6A75DEALL) - (v128 + v127) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v130 = v129 ^ __ROR8__(v127, 61);
  v131 = __ROR8__(v129, 8);
  v132 = (((2 * (v131 + v130)) & 0x305CE5312BE34172) - (v131 + v130) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189;
  v133 = __ROR8__(v130, 61);
  v134 = (__ROR8__(v132, 8) + (v132 ^ v133)) ^ v6;
  v135 = v134 ^ __ROR8__(v132 ^ v133, 61);
  v136 = __ROR8__(v134, 8);
  v10[16] = (((v136 + v135 - ((2 * (v136 + v135)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v10 + 16) & 7u))) ^ BYTE1(v11) ^ 0x9D;
  v137 = __ROR8__((v10 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v138 = ((2 * ((v137 + v4) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v137 + v4) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v139 = v138 ^ 0xD9CC90F52308FB19;
  v138 ^= 0x4DD2EF976F5F1768uLL;
  v140 = __ROR8__(v139, 8);
  v141 = (((2 * (v140 + v138)) | 0xC93FF3953A26D81ALL) - (v140 + v138) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v142 = __ROR8__(v138, 61);
  v143 = (__ROR8__(v141, 8) + (v141 ^ v142)) ^ v3;
  v144 = v143 ^ __ROR8__(v141 ^ v142, 61);
  v145 = (__ROR8__(v143, 8) + v144) ^ v9;
  v146 = v145 ^ __ROR8__(v144, 61);
  v147 = __ROR8__(v145, 8);
  v148 = (((2 * (v147 + v146)) | 0x9AD9A558F1F83E32) - (v147 + v146) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v149 = v148 ^ __ROR8__(v146, 61);
  v150 = (__ROR8__(v148, 8) + v149) ^ v2;
  v151 = v150 ^ __ROR8__(v149, 61);
  v152 = __ROR8__(v150, 8);
  v153 = (v152 + v151 - ((2 * (v152 + v151)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v10[17] = (((__ROR8__(v153, 8) + (v153 ^ __ROR8__(v151, 61))) ^ v5) >> (8 * ((v10 + 17) & 7u))) ^ v11 ^ 0x53;
  return (*(STACK[0x298] + 8 * a2))();
}

uint64_t sub_1BAF874B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(*(v4 + 64) - 0x785FEF64C8799D4ELL);
  v6 = STACK[0x240] - 0x27DB1ED5A73C4037;
  return (*(STACK[0x298] + 8 * (v3 + a3 + 1553)))(-328054740, 0x1A10D85A16CC1CF5);
}

uint64_t sub_1BAF875DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, unint64_t a8@<X8>)
{
  v23 = (v11 - 1);
  v24 = (v23 | ((v23 < v22) << 32)) + a1;
  v25 = v24 + v12 + 10;
  v26 = __ROR8__(v25 & 0xFFFFFFFFFFFFFFF8, 8) + v10;
  v27 = __ROR8__(v26 ^ 0x1C4559FE42F2471ELL, 8);
  v26 ^= 0x885B269C0EA5AB6FLL;
  v28 = (((v27 + v26) & a2 ^ a3) + ((v27 + v26) & a4 ^ a5) - 1) ^ a6;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v9;
  v31 = v30 ^ __ROR8__(v29, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v21;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ v20;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v8;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = __ROR8__(v36, 8);
  v39 = __ROR8__((((v38 + v37) & v13 ^ v16) + ((v38 + v37) ^ a7) - (((v38 + v37) ^ a7) & v13)) ^ v17, 8) + ((((v38 + v37) & v13 ^ v16) + ((v38 + v37) ^ a7) - (((v38 + v37) ^ a7) & v13)) ^ v17 ^ __ROR8__(v37, 61));
  *v25 = ((((v18 & (2 * v39)) - v39 + v19) ^ a8) >> (8 * (v25 & 7u))) ^ *(v15 + v24);
  return (*(STACK[0x298] + 8 * ((4095 * (v23 == v22)) ^ v14)))();
}

uint64_t sub_1BAF8772C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = v65 + a3 - 431;
  *(v66 + 8) = 0x785FEF64C8799D66;
  v68 = *(v66 + 56);
  v69 = STACK[0x298];
  STACK[0x2F0] = *(STACK[0x298] + 8 * v67);
  v70 = LODWORD(STACK[0x200]);
  return (*(v69 + 8 * (v67 + ((a3 - 1622919846) & 0xB89A7BCD) + 66)))(a65);
}

uint64_t sub_1BAF87818@<X0>(int a1@<W8>)
{
  v3 = a1 & 0xA3F30EFF;
  v4 = (*(v1 + 8 * ((a1 & 0xA3F30EFF) + 930)))();
  v5 = STACK[0x298];
  *(v2 - 0x785FEF64C8799D4ELL) = 0;
  return (*(v5 + 8 * v3))(v4);
}

uint64_t sub_1BAF878A0()
{
  v2 = STACK[0x298];
  v3 = (*(STACK[0x298] + 8 * (v1 + 602)))(v0 - 0x785FEF64C8799D66);
  return (*(v2 + 8 * v1))(v3);
}

uint64_t sub_1BAF87BC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = STACK[0x2E8];
  v8 = LODWORD(STACK[0x35C]);
  v9 = LODWORD(STACK[0x3D4]);
  return (*(a6 + 8 * v6))();
}

uint64_t sub_1BAF87BEC@<X0>(int a1@<W2>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  *(v7 + 248) = a3;
  LODWORD(STACK[0x200]) = v4;
  LODWORD(STACK[0x378]) = v4;
  LODWORD(STACK[0x270]) = 13153;
  LOWORD(STACK[0x322]) = 13153;
  LODWORD(STACK[0x2A8]) = a1;
  LODWORD(STACK[0x2AC]) = v6;
  STACK[0x318] = v5;
  STACK[0x240] = 0x27DB1ED5A73C4037;
  *(v7 + 176) = 0x27DB1ED5A73C4037;
  STACK[0x250] = v5;
  LODWORD(STACK[0x300]) = 2132892276;
  return (*(a2 + 8 * v3))();
}

void sub_1BAF87C54(uint64_t a1)
{
  v1 = *MEMORY[0x1E69E9840];
  __asm { BRAA            X8, X17 }
}

uint64_t sub_1BAF87CE0(int a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  *(v43 - 108) = 407104343 * ((((v43 - 112) | 0x95A36244) - ((v43 - 112) & 0x95A36244)) ^ 0xD73229EC) + 1644606322;
  v46 = a1 + 353013743 - ((2 * a1) & 0x2A151FDE);
  v56 = v41;
  (*(v41 + 21240))(v43 - 112);
  *(v43 - 232) = 0xDDBE10913B6226BELL;
  *(v43 - 216) = 0;
  *(v43 - 224) = 1322271599;
  *(v43 - 208) = 807257560;
  *(v43 - 200) = 0x13773EB605DB3FC9;
  *(v43 - 192) = 0xDDBE10913B6226BELL;
  *(v43 - 204) = 2032989188;
  *(v43 - 184) = v46;
  *(v43 - 176) = 0;
  *(v43 - 168) = -455185764;
  *(v43 - 164) = 2032989188;
  *(v43 - 160) = 0x13773EB605DB3FC9;
  *(v43 - 152) = 0xDDBE10913B6226BELL;
  *(v43 - 136) = a2;
  *(v43 - 128) = 0x792CF406FD699315;
  *(v43 - 144) = 353013743;
  *(v43 - 120) = ((2 * a3) & 0x7BF7FFBE) + (a3 ^ 0x3DFBFFDF) - 941670426;
  *(v43 - 116) = 326581942;
  v47 = (*(v56 + 21520))(128);
  HIDWORD(a30) = v42 - 2;
  return (*(v56 + 8 * ((467 * (v47 != 0)) ^ 0x2B2u)))(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, &STACK[0x192C4C9FBB13CC5D], a22, a23, a24, &STACK[0x192C4C9FBB13CC45], a26, a27, a28, a29, a30, a31, a32, a33, a34, v43 + 0x2463A67169D8FE7FLL, &STACK[0x5128F3C4919EC710], a37, &STACK[0x5128F3C4919EC708], a39, a40, a41);
}

uint64_t sub_1BAF87F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *a1 = 0x551AB9ED161FA3A6;
  *(a1 + 8) = 0x1717171717171717;
  *(a1 + 16) = 0x1717171717171717;
  *(a1 + 24) = 0x1717171717171717;
  *(a1 + 32) = 0x1717171717171717;
  *(a1 + 40) = 0x1717171717171717;
  *(a1 + 48) = 0x1717171717171717;
  *(a1 + 56) = 0x1717171717171717;
  *(a1 + 64) = 0x1717171717171717;
  qmemcpy((a1 + 72), "EhMFEhMFp/", 10);
  *(a1 + 84) = -1792230792;
  *(a1 + 104) = 114237931;
  *(a1 + 88) = 0x1717171717171717;
  *(a1 + 96) = 0x1717171717171717;
  *(a1 + 108) = 75;
  if (a47)
  {
    v49 = a1 == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = !v49;
  return (*(v48 + 8 * ((((v47 ^ 0x2A1) + ((v47 - 462) | 0x109) - 420) * v50) ^ v47)))();
}

uint64_t sub_1BAF88010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *(a47 + 16) = *a1;
  *(a47 + 88) = *(a1 + 72);
  *(a47 + 92) = *(a1 + 76);
  *(a47 + 96) = *(a1 + 80);
  *(a47 + 97) = *(a1 + 81);
  *(a47 + 120) = *(a1 + 104);
  *(a47 + 100) = *(a1 + 84);
  *(a47 + 124) = ((v47 - 79) & 0x7D) + (*(a1 + 108) & 1) - 68;
  return (*(v48 + 8 * v47))();
}

uint64_t sub_1BAF880F4(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, char a6, int a7, uint64_t a8)
{
  v14 = (v9 - 1) & 0xF;
  *(v10 + v9) = (127 * v14) ^ *(*(a8 + 8 * a7) + v14) ^ *(v14 + *(a8 + 8 * (a7 + 87)) - 4 + 5) ^ *(v14 + *(a8 + 8 * (a7 + 81))) ^ (v8 + ((*(v11 + v9) ^ 0x44) - (a2 ^ a5 & (2 * *(v11 + v9)) ^ 0xE)) * a6);
  return (*(v13 + 8 * (((((a4 + v9) | a3) >= 0) * v12) ^ (a7 + 307))))();
}

uint64_t sub_1BAF881DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v13 = (v10 + v6 + 85) & 0xF;
  *(a3 + v6) = *(v13 + v8 + 5) ^ *(v7 + v13) ^ *(v13 + v9 + 4) ^ (127 * v13) ^ (v5 + ((*(a2 + v10) ^ 0x44) - ((a4 ^ (2 * *(a2 + v10))) & 0x88)) * a5);
  return (*(v12 + 8 * (((v10 != -31) | (8 * (v10 != -31))) ^ (v11 + 1950))))();
}

uint64_t sub_1BAF88258@<X0>(uint64_t a1@<X0>, int a2@<W8>)
{
  *(v3 + 119) = *(a1 + 103);
  *(v3 + 118) = *(a1 + 102);
  *(v3 + 117) = *(a1 + 101);
  *(v3 + 116) = *(a1 + 100);
  *(v3 + 115) = *(a1 + 99);
  *(v3 + 114) = *(a1 + 98);
  *(v3 + 113) = *(a1 + 97);
  *(v3 + 112) = *(a1 + 96);
  *(v3 + 111) = *(a1 + 95);
  *(v3 + 110) = *(a1 + 94);
  *(v3 + 109) = *(a1 + 93);
  *(v3 + 108) = *(a1 + 92);
  *(v3 + 107) = *(a1 + 91);
  *(v3 + 106) = *(a1 + 90);
  *(v3 + 105) = *(a1 + 89);
  *(v3 + 104) = *(a1 + 88);
  v5 = *(a1 + 4);
  *(v3 + 20) = v5;
  return (*(v4 + 8 * (((v5 == a2) * ((v2 + 115894325) & 0xF91799BE ^ 0x920)) ^ v2)))();
}

uint64_t sub_1BAF88424(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *(a47 + 8) = a1 + v48;
  return (*(v49 + 8 * ((((v47 - 1611708497) & 0x6010B7FD ^ 0x6E6) * (a47 == 0)) ^ v47)))();
}

uint64_t sub_1BAF884E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47)
{
  *a1 = 0x785FEF64C8799D66;
  a1[1] = 0x785FEF64C8799D66;
  *a47 = a1 + v49;
  return (*(v51 + 8 * ((((((((v47 - 1737) | 0x323) - 1616971953) & 0xEE77D7F7) - v48 + 96) ^ 8) * (v50 != 232)) ^ ((v47 - 1737) | 0x323))))();
}

uint64_t sub_1BAF887F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  *(v50 - 104) = v48 - 2138855791 * (((v50 - 112) & 0x33C1E0AE | ~((v50 - 112) | 0x33C1E0AE)) ^ 0xC38827D0) + 774;
  v52 = (*(v51 + 8 * (v48 ^ 0xF1B)))(v50 - 112);
  v54 = *(v50 - 112) ^ (((v48 + 1094) | 3) - 424505768);
  v55 = *(v49 - 0x4BCC923D0A7CA638);
  return (*(a48 + 8 * v48))(v52);
}

uint64_t sub_1BAF88998@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  a49 = *(v57 + 8 * v53);
  a51 = a1;
  a53 = a31;
  *(v56 - 112) = &a49;
  *(v56 - 104) = v53 - 385730383 * (((v56 - 112) & 0x5B49292B | ~((v56 - 112) | 0x5B49292B)) ^ 0xDD27BD05) - 1310139384;
  v58 = (*(v57 + 8 * (v53 ^ 0xA58)))(v56 - 112);
  return (*(a41 + 8 * ((1286 * (*(v56 - 100) == -346022651)) ^ (v53 + v55 + (v53 ^ (v54 - 41)) + 379 - 219))))(v58);
}

uint64_t sub_1BAF88A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, int a52, char a53, uint64_t a54)
{
  if (&a53)
  {
    v58 = a54 == v56;
  }

  else
  {
    v58 = 1;
  }

  v59 = v58;
  return (*(v57 + 8 * ((((((v55 + v54 - 640) ^ v59) & 1) == 0) * (v54 - 622)) | v54)))(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1BAF88BF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, int a9@<W8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42)
{
  v47 = *v43;
  v48 = *(v46 + 8 * a9);
  v50 = v44 == 0x192C4C9FBB13CB01 || v47 == 0xF2C67B766E067CBLL;
  return (*(v46 + 8 * ((v50 * (((v42 - 1978368208) | 0x4025002) ^ (v45 + 43))) ^ v42)))(a1, a2, a3, a4, a5, a6, a7, a8, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, a32, a33, a34, a35, a36, a37, a38, a39, a40, a41, a42, v44);
}

uint64_t sub_1BAF88F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  (*(v51 + 8 * (v50 + 1620)))(v49 - 0xF2C67B766E067CBLL);
  *v48 = 0xF2C67B766E067CBLL;
  return (*(a48 + 8 * v50))(a47);
}

uint64_t sub_1BAF890B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v49 ^ 0xE7F)))();
  *(v48 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a48 + 8 * v49))(v51);
}

uint64_t sub_1BAF89250()
{
  v2 = *(v1 - 96);
  v3 = *MEMORY[0x1E69E9840];
  return v0 ^ 0xEB601D05;
}

uint64_t sub_1BAF899A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = v13 + v12 - 0x581B24B4097EEEB6;
  v16 = __ROR8__(v15 & 0xFFFFFFFFFFFFFFF8, 8);
  v17 = ((a3 - v16) & 0x75530549AD230FB7) + v16 + a5 - ((v16 + a5) & 0x73530549AD230FB7);
  v18 = __ROR8__(v17 ^ 0x6B165CB7EFD148A9, 8);
  v17 ^= 0xFF0823D5A386A4D8;
  v19 = (a8 - ((v18 + v17) | a8) + ((v18 + v17) | 0xF9E3D37B6487A303)) ^ 0x18D6D3D4FC3763DFLL;
  v20 = v19 ^ __ROR8__(v17, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((2 * (v21 + v20)) & 0x69C1C0D9ABA5C00ALL) - (v21 + v20) + 0x4B1F1F932A2D1FFALL) ^ 0x4F8F3A911994FAC8;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ v9;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = (((2 * (v26 + v25)) | 0x683C63A725393F58) - (v26 + v25) - 0x341E31D3929C9FACLL) ^ 0xC80B8ADABB55473CLL;
  v28 = v27 ^ __ROR8__(v25, 61);
  v29 = __ROR8__(v27, 8);
  v30 = (a2 - ((v29 + v28) | a2) + ((v29 + v28) | 0xB1A83192A3E2D628)) ^ 0xFA2F58C057B018E7;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v11;
  v33 = *(v15 + 1);
  LODWORD(v31) = (((__ROR8__(v32, 8) + (v32 ^ __ROR8__(v31, 61))) ^ v10) >> (8 * ((v13 + v12 + 74) & 7))) ^ *v15;
  v34 = *(v15 + 2);
  v35 = *(v15 + 3);
  return (*(v14 + 8 * v8))();
}

uint64_t sub_1BAF89FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, unint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  v30 = (v28 ^ 0x80B6B977) + a27 - 0xB9AEDA92530F523;
  v31 = v30 < 0xAA88105C;
  v32 = v30 > a24;
  if (a24 < 0xAA88105C != v31)
  {
    v33 = v31;
  }

  else
  {
    v33 = v32;
  }

  return (*(v29 + 8 * ((a1 + v27 + 866) ^ (233 * v33))))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_1BAF8A3C0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  v45 = *(a44 - 0x785FEF64C8799D5ELL);
  *(a25 - 0x785FEF64C8799D5ELL) = v45;
  *(a25 - 0x785FEF64C8799D66) = *(a44 - 0x785FEF64C8799D66);
  return (*(v44 + 8 * ((29 * (v45 != 0x785FEF64C8799D66)) ^ a1)))();
}

uint64_t sub_1BAF8A43C@<X0>(int a1@<W8>)
{
  *(v1 - 0x785FEF64C8799D66) = v2;
  v4 = *(v2 - 0x785FEF64C8799D66);
  return (*(v3 + 8 * a1))();
}

uint64_t sub_1BAF8A644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v49 + 621)))();
  *(v48 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a48 + 8 * v49))(v51);
}

uint64_t sub_1BAF8A6E0@<X0>(int a1@<W8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41)
{
  v43 = a1 + 973;
  v44 = (*(v42 + 8 * (a1 + 2459)))(v41 - 0x785FEF64C8799D66);
  return (*(a41 + 8 * v43))(v44);
}

uint64_t sub_1BAF8A7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v35 - 0x785FEF64C8799D66) = a32;
  *(a32 - 0x785FEF64C8799D5ELL) = *(v36 + v34);
  *(v36 + v34) = a32;
  return (*(v37 + 8 * (v33 ^ v32 ^ ((((v33 + 1899705001) | 0x86124204) ^ 0x8E16DFFF) * (v33 == -293625109)))))();
}

uint64_t sub_1BAF8A910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  *(v34 + v32) = a32;
  *(v34 - 0xF2C67B766E067CBLL) = a32;
  return (*(v35 + 8 * (v33 - 412)))();
}

uint64_t sub_1BAF8AD74()
{
  v6 = *(v4 + v3);
  v7 = *(v1 + 40 * v0 + 24);
  return (*(v5 + 8 * (v2 + ((v2 + 483) | 0x132) - 486)))(0x27DB1ED5A73C4037, 42512);
}

uint64_t sub_1BAF8AE2C(uint64_t a1, uint64_t a2)
{
  v6 = v3 + 40 * v2;
  v8 = *(v6 + 24);
  v9 = *(v6 + 8);
  return (*(v5 + 8 * v4))(a1, a2, 2638976312);
}

uint64_t sub_1BAF8AF6C()
{
  v5 = v1 + 40 * v0;
  v6 = *(v5 + 32);
  v7 = v3 + 0x27DB1ED5A73C4037;
  v8 = *(v5 + 24);
  return (*(v4 + 8 * (v2 ^ 0x247 ^ (v2 + 790))))(v7, 29286);
}

uint64_t sub_1BAF8B0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v35 = *(v31 + 8 * v26);
  v33 = v28 != v30 && ((v27 - 1086917435) & 0xCEDFDA8E) + v29 + 1812852149 < 0xFFFFFFF6;
  return (*(v31 + 8 * ((v33 * ((v27 - 947788085) & 0x387E1FD7 ^ 0x3A2)) ^ v27)))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v28, a24, a25, a26);
}

uint64_t sub_1BAF8B170(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  LODWORD(a22) = a2;
  v54 = v40;
  LODWORD(a24) = v41;
  HIDWORD(a26) = v39;
  v44 = (*(v43 + 8 * (v42 + 173)))(32);
  return (*(v43 + 8 * ((853 * (((v42 + 57) ^ 0x79 ^ (v44 == 0)) & 1)) ^ v42)))(v44, v45, v46, v47, v48, v49, v50, v51, a9, a10, a1, v54, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31, v44 + 0x785FEF64C8799D66, a33, a34, a35, a36, a37, a38, a39);
}

uint64_t sub_1BAF8B1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int a24)
{
  *a1 = 0x785FEF64C8799D66;
  *(a1 + 8) = 0x785FEF64C8799D66;
  *(a1 + 16) = a24 + 498646061;
  v28 = (*(v26 + 8 * (v24 + 372)))((a24 - 98256946 + v25));
  *(a1 + 24) = v28;
  return (*(v26 + 8 * (((v28 == 0) * (((v24 - 2301) | 0x24) - 18)) ^ v24)))();
}

uint64_t sub_1BAF8B2B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v51 = (*(v50 + 8 * (v49 ^ 0x2D7)))();
  *(v48 - 0x785FEF64C8799D4ELL) = 0;
  return (*(a48 + 8 * v49))(v51);
}

uint64_t sub_1BAF8B36C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48)
{
  v50 = v48 - 416;
  v51 = (*(v49 + 8 * (v50 + 1902)))(a32 - 0x785FEF64C8799D66);
  return (*(a48 + 8 * v50))(v51);
}

uint64_t sub_1BAF8B3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, uint64_t a23, int a24)
{
  HIDWORD(a10) = 2 * a24;
  HIDWORD(v30) = a24 - ((2 * a24 - 196509578) & 0x9F9621CC) + 1240453409;
  LODWORD(v29) = v24 ^ 0x5AC19F09;
  LODWORD(v30) = ((v25 + 1963076974) & 0xFCE709EF) - 20706;
  LODWORD(a18) = a22 - ((2 * a22 + 15594) & 0x51CA) - 30886;
  HIDWORD(v29) = a18 ^ 0xE5;
  return (*(v27 + 8 * ((1409 * ((v26 ^ 0x46517E2Au) < 0xB0F57D4B)) ^ (v26 + 548))))(0x5D587E53351E1BD7, 0x42C5569356D8FE22, 0x74F472E448216F49, 0xFE5951FB672C4BC9, 2383860358, a6, 0xFC15BB0929C9D890, 0x81FAB04C6037F88FLL, a9, a10, a11, a12, a13, v29, v30, a16, a17, a18, a19);
}

uint64_t sub_1BAF8B60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, char a20)
{
  v27 = *(v24 + 24);
  v28 = (__ROR8__((v27 + 4) & 0xFFFFFFFFFFFFFFF8, 8) + v23) & 0xF9FFFFFFFFFFFFFFLL;
  v29 = v28 ^ 0x1E4559FE42F2471ELL;
  v28 ^= 0x8A5B269C0EA5AB6FLL;
  v30 = (__ROR8__(v29, 8) + v28) ^ a6;
  v31 = v30 ^ __ROR8__(v28, 61);
  v32 = (__ROR8__(v30, 8) + v31) ^ v21;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ v25;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v20;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((2 * (v40 + v39)) & 0xAAAA746556851DE8) - (v40 + v39) - 0x55553A32AB428EF5) ^ 0x62A31B5EE627EDADLL;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *(v27 + 4) = (((((2 * (v43 + v42)) | 0xC5585AB08F272530) - (v43 + v42) - 0x62AC2D5847939298) ^ 0x867CC8E265EDDE38) >> (8 * ((v27 + 4) & 7))) ^ a20 ^ 0xA8;
  v44 = __ROR8__((v27 + 5) & 0xFFFFFFFFFFFFFFF8, 8);
  v45 = (v44 + v23) ^ 0x885B269C0EA5AB6FLL;
  v46 = (__ROR8__((v44 + v23) ^ 0x1C4559FE42F2471ELL, 8) + v45) ^ a6;
  v47 = v46 ^ __ROR8__(v45, 61);
  v48 = (__ROR8__(v46, 8) + v47) ^ v21;
  v49 = __ROR8__(v48, 8);
  v50 = v48 ^ __ROR8__(v47, 61);
  v51 = (v49 + v50 - ((2 * (v49 + v50)) & 0xAADD75A8558035C0) - 0x2A91452BD53FE520) ^ 0x2872CFE705BF1667;
  v52 = v51 ^ __ROR8__(v50, 61);
  v53 = (__ROR8__(v51, 8) + v52) ^ v25;
  v54 = v53 ^ __ROR8__(v52, 61);
  v55 = (__ROR8__(v53, 8) + v54) ^ v20;
  v56 = __ROR8__(v55, 8);
  v57 = v55 ^ __ROR8__(v54, 61);
  v58 = 0x964AD0183F74BFF6 - ((v56 + v57) | 0x964AD0183F74BFF6) + ((v56 + v57) | 0x69B52FE7C08B4009);
  *(v27 + 5) = a15 ^ (((__ROR8__(v58 ^ 0xA1BCF1747211DCAFLL, 8) + (v58 ^ 0xA1BCF1747211DCAFLL ^ __ROR8__(v57, 61))) ^ v22) >> (8 * ((v27 + 5) & 7)));
  return (*(v26 + 8 * (a5 + 1911107540)))();
}

uint64_t sub_1BAF8B8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = *(v16 + 24) + v17 - 0x1E06D87D68ADC517;
  v25 = __ROR8__(v24 & 0xFFFFFFFFFFFFFFF8, 8);
  v26 = ((v25 + v12) | 0x7E054FB39FC80770) - ((v25 + v12) | a8) + a8;
  v27 = __ROR8__(v26 ^ 0x6240164DDD3A406ELL, 8);
  v26 ^= 0xF65E692F916DAC1FLL;
  v28 = (v27 + v26) ^ v18;
  v29 = v28 ^ __ROR8__(v26, 61);
  v30 = (__ROR8__(v28, 8) + v29) ^ v9;
  v31 = __ROR8__(v30, 8);
  v32 = *(v21 + 8 * v20);
  v33 = v30 ^ __ROR8__(v29, 61);
  v34 = (v31 + v33) ^ v19;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ a7;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v8;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = (__ROR8__(v38, 8) + v39) ^ v13;
  *v24 = (((__ROR8__(v40, 8) + (v40 ^ __ROR8__(v39, 61))) ^ v10) >> (8 * (v24 & 7u))) ^ HIBYTE(v22) ^ 0x4F;
  v41 = __ROR8__((v24 + 1) & 0xFFFFFFFFFFFFFFF8, 8);
  v42 = ((0x4D7C3013B6750271 - v41) & 0x7C0A1F12C3784FEDLL) + v41 + v12 - ((v41 + v12) & 0x7A0A1F12C3784FEDLL);
  v43 = v42 ^ 0x624F46EC818A08F3;
  v42 ^= 0xF651398ECDDDE482;
  v44 = __ROR8__(v43, 8);
  v45 = (a3 - ((v44 + v42) | a3) + ((v44 + v42) | 0x8B0B8D1BB7DE90B6)) ^ 0x6A3E8DB42F6E506ALL;
  v46 = v45 ^ __ROR8__(v42, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (a1 - ((v47 + v46) | a1) + ((v47 + v46) | 0xA2A781ACCAE1E428)) ^ 0xA637A4AEF958011ALL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v51 = (a4 - ((v50 + v49) | a4) + ((v50 + v49) | 0x1A6AE0498D3B436)) ^ 0xFCBADB37B7ACB8B1;
  v52 = v51 ^ __ROR8__(v49, 61);
  v53 = __ROR8__(v51, 8);
  v54 = (v53 + v52 - ((2 * (v53 + v52)) & 0x21AE5081A9A9FA1ELL) - 0x6F28D7BF2B2B02F1) ^ 0x6CC29349FD1D259FLL;
  v55 = v54 ^ __ROR8__(v52, 61);
  v56 = __ROR8__(v54, 8);
  v57 = __ROR8__((v56 + v55 - ((2 * (v56 + v55)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL, 8);
  v58 = (v56 + v55 - ((2 * (v56 + v55)) & 0x2FD78AA7B8B2BCC6) - 0x68143AAC23A6A19DLL) ^ 0xDC6CAC01280B90ACLL ^ __ROR8__(v55, 61);
  *(v24 + 1) = (((__ROR8__((v57 + v58) ^ v13, 8) + ((v57 + v58) ^ v13 ^ __ROR8__(v58, 61))) ^ v10) >> (8 * ((v24 + 1) & 7))) ^ BYTE2(v22) ^ 0xCB;
  v59 = __ROR8__((v24 + 2) & 0xFFFFFFFFFFFFFFF8, 8);
  v60 = v59 - ((2 * v59 + 0x65079FD89315FB1CLL) & 0x706B8D24AA79CEEALL) + 0x6AB9967E9EC7E503;
  v61 = __ROR8__(v60 ^ 0x24709F6C17CEA06BLL, 8);
  v60 ^= 0xB06EE00E5B994C1ALL;
  v62 = (((2 * (v61 + v60)) | 0x84A35F8B8F02A07ELL) - (v61 + v60) - 0x4251AFC5C781503FLL) ^ 0xA364AF6A5F3190E3;
  v63 = v62 ^ __ROR8__(v60, 61);
  v64 = __ROR8__(v62, 8);
  v65 = (((2 * (v64 + v63)) | 0x5AE37AFB8B700D10) - (v64 + v63) + 0x528E42823A47F978) ^ 0xA9E1987FF601E3BALL;
  v66 = v65 ^ __ROR8__(v63, 61);
  v67 = __ROR8__(v65, 8);
  v68 = __ROR8__((((2 * (v67 + v66)) | 0xA0645171747853D8) - (v67 + v66) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL, 8);
  v69 = (((2 * (v67 + v66)) | 0xA0645171747853D8) - (v67 + v66) - 0x503228B8BA3C29ECLL) ^ 0xAD2E5D8B9543256BLL ^ __ROR8__(v66, 61);
  v70 = (((2 * (v68 + v69)) & 0xC0FA970E03639268) - (v68 + v69) - 0x607D4B8701B1C935) ^ 0x63970F71D787EE5BLL;
  v71 = v70 ^ __ROR8__(v69, 61);
  v72 = __ROR8__(v70, 8);
  v73 = (((2 * (v72 + v71)) & 0x3F1A3AC322107E48) - (v72 + v71) - 0x1F8D1D6191083F25) ^ 0xABF58BCC9AA50E14;
  v74 = v73 ^ __ROR8__(v71, 61);
  v75 = __ROR8__(v73, 8);
  v76 = (((2 * (v75 + v74)) | 0xA1336988A728D0CALL) - (v75 + v74) - 0x5099B4C453946865) ^ 0x98906A57E10EF4C3;
  v77 = __ROR8__(v76, 8);
  v78 = __ROR8__(v74, 61);
  *(v24 + 2) = (((v23 - ((v77 + (v76 ^ v78)) | v23) + ((v77 + (v76 ^ v78)) | 0x83B01FAA9DE726C2)) ^ 0x6760FA10BF996A62) >> (8 * ((v24 + 2) & 7))) ^ BYTE1(v22) ^ 0x10;
  v79 = __ROR8__((v24 + 3) & 0xFFFFFFFFFFFFFFF8, 8);
  v80 = v79 - ((2 * v79 + 0x65079FD89315FB1CLL) & 0xA7469D16E9FCA87ALL) + 0x6271E77BE8951CBLL;
  v81 = v80 ^ 0xCFE61775360C1323;
  v80 ^= 0x5BF868177A5BFF52uLL;
  v82 = __ROR8__(v81, 8);
  v83 = (((2 * (v82 + v80)) & 0x3185DFB098D2C9E8) - (v82 + v80) - 0x18C2EFD84C6964F5) ^ 0x60810882B265BD7;
  v84 = v83 ^ __ROR8__(v80, 61);
  v85 = (__ROR8__(v83, 8) + v84) ^ v9;
  v86 = __ROR8__(v85, 8);
  v87 = v85 ^ __ROR8__(v84, 61);
  v88 = (a2 - ((v86 + v87) | a2) + ((v86 + v87) | 0xBD3AA96CA92701DDLL)) ^ 0x4026DC5F86580D5ALL;
  v89 = v88 ^ __ROR8__(v87, 61);
  v90 = __ROR8__(v88, 8);
  v91 = (((2 * (v90 + v89)) & 0xDC1EDE556F26AEE8) - (v90 + v89) + v11) ^ v14;
  v92 = v91 ^ __ROR8__(v89, 61);
  v93 = (__ROR8__(v91, 8) + v92) ^ v8;
  v94 = v93 ^ __ROR8__(v92, 61);
  v95 = (__ROR8__(v93, 8) + v94) ^ v13;
  *(v24 + 3) = v22 ^ v15 ^ (((__ROR8__(v95, 8) + (v95 ^ __ROR8__(v94, 61))) ^ v10) >> (8 * ((v24 + 3) & 7)));
  return v32();
}

uint64_t sub_1BAF8C260@<X0>(uint64_t a1@<X6>, int a2@<W8>, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v13 = *(v11 + 24);
  v14 = __ROR8__((v13 + 10) & 0xFFFFFFFFFFFFFFF8, 8);
  v15 = ((v14 + v9) | 0x8EF30571B3E03BF9) - ((v14 + v9) | 0x710CFA8E4C1FC406) + 0x710CFA8E4C1FC406;
  v16 = v15 ^ 0x92B65C8FF1127CE7;
  v15 ^= 0x6A823EDBD459096uLL;
  v17 = (__ROR8__(v16, 8) + v15) ^ 0xE13500AF98B0C0DCLL;
  v18 = v17 ^ __ROR8__(v15, 61);
  v19 = (__ROR8__(v17, 8) + v18) ^ v7;
  v20 = v19 ^ __ROR8__(v18, 61);
  v21 = __ROR8__(v19, 8);
  v22 = (((v21 + v20) | 0x6257A18AC6AFEA71) - ((v21 + v20) | 0x9DA85E753950158ELL) - 0x6257A18AC6AFEA72) ^ 0x9F4BD4B9E9D0E6F6;
  v23 = v22 ^ __ROR8__(v20, 61);
  v24 = (__ROR8__(v22, 8) + v23) ^ 0xFC15BB0929C9D890;
  v25 = v24 ^ __ROR8__(v23, 61);
  v26 = __ROR8__(v24, 8);
  v27 = __ROR8__((((2 * (v26 + v25)) | 0x73433184586818C6) - (v26 + v25) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL, 8);
  v28 = (((2 * (v26 + v25)) | 0x73433184586818C6) - (v26 + v25) - 0x39A198C22C340C63) ^ 0x7226F190D866C2ACLL ^ __ROR8__(v25, 61);
  v29 = (((2 * (v27 + v28)) & 0x2E6D9124F850C1CLL) - (v27 + v28) - 0x1736C8927C2860FLL) ^ 0x36854DE56AA7E557;
  v30 = v29 ^ __ROR8__(v28, 61);
  v31 = __ROR8__(v29, 8);
  v13[10] = (((((v31 + v30) ^ 0x925E7C0EFFCC6FF1 | 0xFC3CC5473DDD44E5) - ((v31 + v30) ^ 0x925E7C0EFFCC6FF1 | 0x3C33AB8C222BB1ALL) + 0x3C33AB8C222BB1ALL) ^ 0x8AB25CF3E06F67B4) >> (8 * ((v13 + 10) & 7u))) ^ (a6 >> ((a2 - 61) & 0xA6 ^ 0xBEu)) ^ 0xDD;
  v32 = __ROR8__((v13 + 11) & 0xFFFFFFFFFFFFFFF8, 8);
  v33 = ((v32 + v9) & 0x5914460E7C6C43D9 ^ 0x4100000418440108) + ((v32 + v9) & 0xA0EBB9F18393BC26 ^ 0x4A3312100820427) - 1;
  v34 = v33 ^ 0x5BE668DB5A344230;
  v33 ^= 0xCFF817B91663AE41;
  v35 = (__ROR8__(v34, 8) + v33) ^ 0xE13500AF98B0C0DCLL;
  v36 = v35 ^ __ROR8__(v33, 61);
  v37 = (__ROR8__(v35, 8) + v36) ^ v7;
  v38 = v37 ^ __ROR8__(v36, 61);
  v39 = (__ROR8__(v37, 8) + v38) ^ a1;
  v40 = v39 ^ __ROR8__(v38, 61);
  v41 = __ROR8__(v39, 8);
  v42 = (v41 + v40 - ((2 * (v41 + v40)) & 0x3B57AD3684D86B7ALL) - 0x62542964BD93CA43) ^ 0x61BE6D926BA5ED2DLL;
  v43 = v42 ^ __ROR8__(v40, 61);
  v44 = __ROR8__(v42, 8);
  v45 = (v44 + v43 - ((2 * (v44 + v43)) & 0x6EEDA84EBE2C2B7ELL) - 0x48892BD8A0E9EA41) ^ 0xFCF1BD75AB44DB70;
  v46 = v45 ^ __ROR8__(v43, 61);
  v47 = __ROR8__(v45, 8);
  v48 = (((2 * (v47 + v46)) | 0xFED65BFA7285710) - (v47 + v46) - 0x7F6B2DFD3942B88) ^ 0xCFFF6C4C610EB72ELL;
  v49 = v48 ^ __ROR8__(v46, 61);
  v50 = __ROR8__(v48, 8);
  v13[11] = (((((v50 + v49) | 0x21983AC56B0BB129) - ((v50 + v49) | 0xDE67C53A94F44ED6) - 0x21983AC56B0BB12ALL) ^ 0xC548DF7F4975FD89) >> (8 * ((v13 + 11) & 7u))) ^ BYTE6(a6) ^ 0xBE;
  v51 = __ROR8__((v13 + 12) & 0xFFFFFFFFFFFFFFF8, 8);
  v52 = -2 - (((0xD7C3013B6750271 - v51) | 0xEFC9086FACD320D4) + ((v51 + v9) | 0x1036F790532CDF2BLL));
  v53 = v52 ^ 0xF38C5191EE2167CALL;
  v52 ^= 0x67922EF3A2768BBBuLL;
  v54 = (__ROR8__(v53, 8) + v52) ^ 0xE13500AF98B0C0DCLL;
  v55 = __ROR8__(v54, 8);
  v56 = v54 ^ __ROR8__(v52, 61);
  v57 = (((2 * (v55 + v56)) & 0xA44BB63E2DDF8B52) - (v55 + v56) - 0x5225DB1F16EFC5AALL) ^ 0xA94A01E2DAA9DF64;
  v58 = v57 ^ __ROR8__(v56, 61);
  v59 = (__ROR8__(v57, 8) + v58) ^ a1;
  v60 = v59 ^ __ROR8__(v58, 61);
  v61 = (__ROR8__(v59, 8) + v60) ^ 0xFC15BB0929C9D890;
  v62 = v61 ^ __ROR8__(v60, 61);
  v63 = __ROR8__(v61, 8);
  v64 = (((v63 + v62) | 0xD2E383F95083B686) - ((v63 + v62) | 0x2D1C7C06AF7C4979) + 0x2D1C7C06AF7C4979) ^ 0x9964EAABA4D17849;
  v65 = v64 ^ __ROR8__(v62, 61);
  v66 = (__ROR8__(v64, 8) + v65) ^ v10;
  v13[12] = (((__ROR8__(v66, 8) + (v66 ^ __ROR8__(v65, 61))) ^ v8) >> (8 * ((v13 + 12) & 7u))) ^ BYTE5(a6) ^ 0x10;
  v67 = __ROR8__((v13 + 13) & 0xFFFFFFFFFFFFFFF8, 8);
  v68 = ((2 * (v67 + v9)) | 0xA4234159906F106ALL) - (v67 + v9) + 0x2DEE5F5337C877CBLL;
  v69 = v68 ^ 0xCE54F9528AC5CF2BLL;
  v68 ^= 0x5A4A8630C692235AuLL;
  v70 = __ROR8__(v69, 8);
  v71 = (((v70 + v68) | 0xD738201BC43E983BLL) - ((v70 + v68) | 0x28C7DFE43BC167C4) + 0x28C7DFE43BC167C4) ^ 0x360D20B45C8E58E7;
  v72 = v71 ^ __ROR8__(v68, 61);
  v73 = __ROR8__(v71, 8);
  v74 = (((v73 + v72) ^ 0x70783716B7118F26) - ((2 * ((v73 + v72) ^ 0x70783716B7118F26)) & 0xBAA694FE21B0C1B2) + 0x5D534A7F10D860D9) ^ 0x29BB586B94700ACDLL;
  v75 = v74 ^ __ROR8__(v72, 61);
  v76 = (__ROR8__(v74, 8) + v75) ^ a1;
  v77 = v76 ^ __ROR8__(v75, 61);
  v78 = __ROR8__(v76, 8);
  v79 = (v78 + v77 - ((2 * (v78 + v77)) & 0x17A08F8C8FAF1288) - 0x742FB839B82876BCLL) ^ 0x77C5FCCF6E1E51D4;
  v80 = v79 ^ __ROR8__(v77, 61);
  v81 = (__ROR8__(v79, 8) + v80) ^ v6;
  v82 = v81 ^ __ROR8__(v80, 61);
  v83 = (__ROR8__(v81, 8) + v82) ^ v10;
  v84 = v83 ^ __ROR8__(v82, 61);
  v85 = __ROR8__(v83, 8);
  v13[13] = (((v85 + v84 - ((2 * (v85 + v84)) & 0xB495371DE105E9CELL) - 0x25B564710F7D0B19) ^ 0x3E9A7E34D2FCB847) >> (8 * ((v13 + 13) & 7u))) ^ BYTE4(a6) ^ 0x91;
  v86 = __ROR8__((v13 + 14) & 0xFFFFFFFFFFFFFFF8, 8);
  v87 = (0xCD7C3013B6750271 - v86) & 0xF050E761A6289A68 | (v86 + 0x283CFEC498AFD8ELL) & 0x9AF189E59D76597;
  v88 = v87 ^ 0xEE15BE9FE4DADD76;
  v87 ^= 0x7A0BC1FDA88D3107uLL;
  v89 = (__ROR8__(v88, 8) + v87) ^ 0xE13500AF98B0C0DCLL;
  v90 = v89 ^ __ROR8__(v87, 61);
  v91 = __ROR8__(v89, 8);
  v92 = (((v91 + v90) | 0x349C4C6A3E574525) - ((v91 + v90) | 0xCB63B395C1A8BADALL) - 0x349C4C6A3E574526) ^ 0x300C69680DEEA017;
  v93 = v92 ^ __ROR8__(v90, 61);
  v94 = (__ROR8__(v92, 8) + v93) ^ a1;
  v95 = v94 ^ __ROR8__(v93, 61);
  v96 = (__ROR8__(v94, 8) + v95) ^ 0xFC15BB0929C9D890;
  v97 = v96 ^ __ROR8__(v95, 61);
  v98 = (__ROR8__(v96, 8) + v97) ^ v6;
  v99 = v98 ^ __ROR8__(v97, 61);
  v100 = __ROR8__(v98, 8);
  v101 = (((2 * (v100 + v99)) | 0x749128A0D39CA49CLL) - (v100 + v99) + 0x45B76BAF9631ADB2) ^ 0x72414AC3DB54CEE8;
  v13[14] = (((__ROR8__(v101, 8) + (v101 ^ __ROR8__(v99, 61))) ^ v8) >> (8 * ((v13 + 14) & 7u))) ^ BYTE3(a6) ^ 0x3B;
  v102 = __ROR8__((v13 + 15) & 0xFFFFFFFFFFFFFFF8, 8);
  v103 = (0x57C3013B6750271 - v102) & 0x5D98955B3706B30 | (v102 + v9) & 0xFA2676AA4C8F94CFLL;
  v104 = v103 ^ 0x199CD0ABF1822C2ELL;
  v103 ^= 0x8D82AFC9BDD5C05FLL;
  v105 = (__ROR8__(v104, 8) + v103) ^ 0xE13500AF98B0C0DCLL;
  v106 = v105 ^ __ROR8__(v103, 61);
  v107 = __ROR8__(v105, 8);
  v108 = (((2 * (v107 + v106)) | 0x86D73428622BDA3ALL) - (v107 + v106) - 0x436B9A143115ED1DLL) ^ 0x47FBBF1602AC082FLL;
  v109 = v108 ^ __ROR8__(v106, 61);
  v110 = (__ROR8__(v108, 8) + v109) ^ a1;
  v111 = v110 ^ __ROR8__(v109, 61);
  v112 = __ROR8__(v110, 8);
  v113 = (((2 * (v112 + v111)) & 0x407F7AAF3D2F06C8) - (v112 + v111) - 0x203FBD579E978365) ^ 0x23D5F9A148A1A40BLL;
  v114 = v113 ^ __ROR8__(v111, 61);
  v115 = (__ROR8__(v113, 8) + v114) ^ v6;
  v116 = v115 ^ __ROR8__(v114, 61);
  v117 = (__ROR8__(v115, 8) + v116) ^ v10;
  v13[15] = (((__ROR8__(v117, 8) + (v117 ^ __ROR8__(v116, 61))) ^ v8) >> (8 * ((v13 + 15) & 7u))) ^ BYTE2(a6) ^ 0x62;
  v118 = __ROR8__((v13 + 16) & 0xFFFFFFFFFFFFFFF8, 8);
  v119 = ((2 * v118 + 0x65079FD89315FB1CLL) & 0xE66464AD44856B92) - v118 + 0x5649FDBD14324CA8;
  v120 = v119 ^ 0x948894571F4F0D28;
  v119 ^= 0x96EB355318E159uLL;
  v121 = __ROR8__(v120, 8);
  v122 = (((2 * (v121 + v119)) & 0xA1738BF9A2E70742) - (v121 + v119) + 0x2F463A032E8C7C5ELL) ^ 0xCE733AACB63CBC82;
  v123 = v122 ^ __ROR8__(v119, 61);
  v124 = (__ROR8__(v122, 8) + v123) ^ v7;
  v125 = v124 ^ __ROR8__(v123, 61);
  v126 = __ROR8__(v124, 8);
  v127 = (((2 * (v126 + v125)) & 0x2D730DB5B3BDACF8) - (v126 + v125) - 0x16B986DAD9DED67DLL) ^ 0x145A0C16095E2504;
  v128 = v127 ^ __ROR8__(v125, 61);
  v129 = __ROR8__(v127, 8);
  v130 = (((2 * (v129 + v128)) | 0x4D17F792C6A75DEALL) - (v129 + v128) - 0x268BFBC96353AEF5) ^ 0xDA9E40C04A9A7665;
  v131 = v130 ^ __ROR8__(v128, 61);
  v132 = __ROR8__(v130, 8);
  v133 = __ROR8__((((2 * (v132 + v131)) & 0x305CE5312BE34172) - (v132 + v131) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189, 8);
  v134 = (((2 * (v132 + v131)) & 0x305CE5312BE34172) - (v132 + v131) + 0x67D18D676A0E5F46) ^ 0x2C56E4359E5C9189 ^ __ROR8__(v131, 61);
  v135 = (v133 + v134) ^ v10;
  v136 = v135 ^ __ROR8__(v134, 61);
  v137 = __ROR8__(v135, 8);
  v13[16] = (((v137 + v136 - ((2 * (v137 + v136)) & 0x20DC9317F93159D8) - 0x6F91B67403675314) ^ 0x74BEAC31DEE6E04CuLL) >> (8 * ((v13 + 16) & 7u))) ^ BYTE1(a6) ^ 0x26;
  v138 = __ROR8__((v13 + 17) & 0xFFFFFFFFFFFFFFF8, 8);
  v139 = ((2 * ((v138 + v9) ^ 0x2CEA70879027C9CDLL)) & 0x2D388CE61C45146ALL) - ((v138 + v9) ^ 0x2CEA70879027C9CDLL) - 0x169C46730E228A36;
  v140 = v139 ^ 0xD9CC90F52308FB19;
  v139 ^= 0x4DD2EF976F5F1768uLL;
  v141 = __ROR8__(v140, 8);
  v142 = (((2 * (v141 + v139)) | 0xC93FF3953A26D81ALL) - (v141 + v139) + 0x1B60063562EC93F3) ^ 0x5AAF96505A3ACD1;
  v143 = __ROR8__(v139, 61);
  v144 = (__ROR8__(v142, 8) + (v142 ^ v143)) ^ v7;
  v145 = v144 ^ __ROR8__(v142 ^ v143, 61);
  v146 = (__ROR8__(v144, 8) + v145) ^ a1;
  v147 = v146 ^ __ROR8__(v145, 61);
  v148 = __ROR8__(v146, 8);
  v149 = (((2 * (v148 + v147)) | 0x9AD9A558F1F83E32) - (v148 + v147) - 0x4D6CD2AC78FC1F19) ^ 0xB17969A55135C789;
  v150 = v149 ^ __ROR8__(v147, 61);
  v151 = (__ROR8__(v149, 8) + v150) ^ v6;
  v152 = v151 ^ __ROR8__(v150, 61);
  v153 = __ROR8__(v151, 8);
  v154 = (v153 + v152 - ((2 * (v153 + v152)) & 0x8BC8E87C0324D542) + 0x45E4743E01926AA1) ^ 0x8DEDAAADB308F607;
  v13[17] = (((__ROR8__(v154, 8) + (v154 ^ __ROR8__(v152, 61))) ^ v8) >> (8 * ((v13 + 17) & 7u))) ^ a6 ^ 0xBE;
  return (*(v12 + 8 * a2))();
}

uint64_t sub_1BAF8D324(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = (v10 - 1);
  v25 = v24 == a1;
  v26 = (v24 | ((v24 < a1) << 32)) + a2;
  v27 = __ROR8__((v26 + v11 + 10) & 0xFFFFFFFFFFFFFFF8, 8) + ((v15 | 0x2120200u) ^ 0x3283CFECC79C2F08);
  v28 = v27 ^ 0x1C4559FE42F2471ELL;
  v27 ^= 0x885B269C0EA5AB6FLL;
  v29 = __ROR8__(v28, 8);
  v30 = __ROR8__((((v29 + v27) & 0x1A10D85A16CC1CF5 ^ a5) + ((v29 + v27) & a6 ^ a4) - 1) ^ a8, 8);
  v31 = (((v29 + v27) & 0x1A10D85A16CC1CF5 ^ a5) + ((v29 + v27) & a6 ^ a4) - 1) ^ a8 ^ __ROR8__(v27, 61);
  v32 = (v30 + v31) ^ v9;
  v33 = v32 ^ __ROR8__(v31, 61);
  v34 = (__ROR8__(v32, 8) + v33) ^ a7;
  v35 = v34 ^ __ROR8__(v33, 61);
  v36 = (__ROR8__(v34, 8) + v35) ^ 0xFC15BB0929C9D890;
  v37 = v36 ^ __ROR8__(v35, 61);
  v38 = (__ROR8__(v36, 8) + v37) ^ v8;
  v39 = v38 ^ __ROR8__(v37, 61);
  v40 = __ROR8__(v38, 8);
  v41 = (((v40 + v39) & v12 ^ v17) + ((v40 + v39) ^ v16) - (((v40 + v39) ^ v16) & v12)) ^ v18;
  v42 = v41 ^ __ROR8__(v39, 61);
  v43 = __ROR8__(v41, 8);
  *(v26 + v11 + 10) = ((((v19 & (2 * (v43 + v42))) - (v43 + v42) + v20) ^ v21) >> (8 * ((v26 + v11 + 10) & 7))) ^ *(v14 + v26);
  v44 = !v25;
  return (*(v23 + 8 * ((v44 * v22) ^ v13)))(328054740);
}

uint64_t sub_1BAF8D67C(uint64_t a1, int a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC36FC8) ^ 0x88)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * ((dword_1EBC36FA0 - dword_1EBC36FC8) ^ 0x88))] ^ 0x66]) + 1);
  v5 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - *v4) ^ 0x88)) ^ byte_1BAF9A470[byte_1BAF98C60[(127 * ((dword_1EBC36FA0 - *v4) ^ 0x88))] ^ 0x27]) - 143);
  v6 = *v4 - &v13 + *v5;
  *v4 = 2140301951 * v6 - 0x2DAA06A0DC720288;
  *v5 = 2140301951 * (v6 ^ 0x3D3AC77DA7219688);
  HIDWORD(v14) = 407104343 * ((&v14 + 446047947 - 2 * (&v14 & 0x1A9626CB)) ^ 0x58076D63) + 1644606322;
  v7 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 + dword_1EBC36FC8) ^ 0x88)) ^ byte_1BAF9A570[byte_1BAF98D60[(127 * ((dword_1EBC36FA0 + dword_1EBC36FC8) ^ 0x88))] ^ 0xF9]) - 131);
  (*(v7 + 8 * ((byte_1BAF9A474[(byte_1BAF98C60[(127 * ((*v5 - *v4) ^ 0x88))] ^ 0x20) - 4] ^ (127 * ((*v5 - *v4) ^ 0x88))) + 2497)))(&v14);
  v8 = *(v7 + 1744);
  v9 = 398614211 * ((~&v14 & 0xEDDE9C45E09BC93ELL | &v14 & 0x122163BA1F6436C1) ^ 0xBEBB4CEC965CE495);
  v18 = a1;
  v14 = v8 + v9;
  v15 = v9 ^ ((a2 ^ 0x7FFFBB29) - 1090793512 + ((2 * a2) & 0xFFFF7652));
  v16 = v9 ^ 0xD19B2ADA;
  v10 = 127 * ((*v5 + *v4) ^ 0x88);
  (*(v7 + 8 * ((byte_1BAF9A674[(byte_1BAF98F6C[v10 - 12] ^ 0x72) - 4] ^ v10) + 2454)))(&v14);
  v11 = *MEMORY[0x1E69E9840];
  return (v17 - 335305226);
}

uint64_t sub_1BAF8D990(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FD0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * (dword_1EBC36FD0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x4F]) - 68);
  v2 = *(v1 - 4);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9DAE8[(byte_1BAF9CAF8[(127 * ((dword_1EBC36FA0 + v2) ^ 0x88)) - 8] ^ 0x2D) - 8] ^ (127 * ((dword_1EBC36FA0 + v2) ^ 0x88))) - 200);
  v4 = &v11[v2 + *v3];
  *(v1 - 4) = 2140301951 * (v4 - 0x3D3AC77DA7219688);
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E7F1D8C0 + ((127 * (dword_1EBC36FD0 ^ 0x88 ^ dword_1EBC36FA0)) ^ byte_1BAF9A670[byte_1BAF98F60[(127 * (dword_1EBC36FD0 ^ 0x88 ^ dword_1EBC36FA0))] ^ 0x72]) - 160);
  v6 = 663017543 * (&v12 ^ 0x198C60C35D105D24);
  v7 = *(v5 + 1736) - v6;
  v13 = a1;
  v14 = v7;
  v12 = 1231722968 - v6;
  v8 = 127 * ((*v3 + *(v1 - 4)) ^ 0x88);
  (*(v5 + 8 * ((byte_1BAF98E68[(byte_1BAF9D9E4[v8 - 4] ^ 0x30) - 8] ^ v8) + 2607)))(&v12);
  result = v15;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF8DB88(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v1 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37050) ^ 0x88)) ^ byte_1BAF9DAE0[byte_1BAF9CAF0[(127 * ((dword_1EBC36FA0 - dword_1EBC37050) ^ 0x88))] ^ 0x6B]) - 80);
  v2 = 127 * (*v1 ^ dword_1EBC36FA0 ^ 0x88);
  v3 = *(&off_1E7F1D8C0 + (byte_1BAF9A674[(byte_1BAF98F6C[v2 - 12] ^ 0x72) - 4] ^ v2) - 199);
  v4 = &v11[*v3 ^ *v1];
  *v1 = 2140301951 * v4 + 0x3D3AC77DA7219688;
  *v3 = 2140301951 * (v4 ^ 0x3D3AC77DA7219688);
  v5 = *(&off_1E7F1D8C0 + ((127 * ((dword_1EBC36FA0 - dword_1EBC37050) ^ 0x88)) ^ byte_1BAF9A770[byte_1BAF99060[(127 * ((dword_1EBC36FA0 - dword_1EBC37050) ^ 0x88))] ^ 0x4F]) + 10);
  v6 = *(v5 + 1504);
  v7 = 663017543 * (((&v12 | 0xF50935832F1B73D7) - (&v12 | 0xAF6CA7CD0E48C28) + 0xAF6CA7CD0E48C28) ^ 0xEC855540720B2EF3);
  v12 = 1231722968 - v7;
  v13 = a1;
  v14 = v6 - v7;
  v8 = 127 * (*v1 ^ 0x88 ^ *v3);
  (*(v5 + 8 * ((byte_1BAF9A774[(byte_1BAF99064[v8 - 4] ^ 0x4F) - 4] ^ v8) + 2664)))(&v12);
  result = v15;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1BAF8DE54(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (!v3)
    {
      goto LABEL_6;
    }

    v4 = *(a1 + 16);
    v5 = v3[2];
    if (v4 < v5)
    {
      a1 = -1;
      goto LABEL_10;
    }

    if (v4 > v5)
    {
LABEL_6:
      a1 = 1;
      goto LABEL_10;
    }

    if (*(a1 + 32) > *(v3 + 4))
    {
      a1 = 1;
    }

    else
    {
      a1 = -1;
    }
  }

LABEL_10:

  return a1;
}

void sub_1BAF8DEC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

uint64_t sub_1BAF8DED0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v8 = objc_msgSend_name(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *(a1 + 32), v10);

  return isEqualToString;
}

void sub_1BAF8DF34(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6)
  {
    v7 = v6[3];
  }

  else
  {
    v7 = 0.0;
  }

  if (*(a1 + 56) - v7 >= *(a1 + 64))
  {
    v10 = v6;
    if (sub_1BAF8DE54(v6, *(*(*(a1 + 40) + 8) + 40)) == 1)
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *(*(*(a1 + 48) + 8) + 24) = a3;
    }

    objc_msgSend_addIndex_(*(a1 + 32), v8, a3, v9);
    v6 = v10;
  }
}

void sub_1BAF8DFF4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 16) = 0;
  }
}

uint64_t sub_1BAF8E000(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 8);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v8 = objc_msgSend_name(v4, v5, v6, v7);
  isEqualToString = objc_msgSend_isEqualToString_(v8, v9, *(a1 + 32), v10);

  return isEqualToString ^ 1u;
}

void sub_1BAF8E064(void *a1, void *a2, APServiceItem **a3, double a4)
{
  v8 = objc_alloc_init(APServiceItem);
  v9 = v8;
  *a3 = v8;
  if (v8)
  {
    v8->_counter = 1;
    v8->_createdAt = a4;
    v8->_lastAccessedAt = a4;
  }

  sub_1BAF8DEC0(v8, a1);
  v13 = objc_msgSend_sessions(a2, v10, v11, v12);
  objc_msgSend_addObject_(v13, v14, v9, v15);
}

void sub_1BAF8E0EC(void *a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_sessions(a1, a2, a3, a4);
  v8 = objc_msgSend_firstObject(v4, v5, v6, v7);
  if (v8)
  {
    v8[2] = 1;
  }
}

uint64_t sub_1BAF8E130(void *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_msgSend_sessions(a1, a2, a3, a4);
  v9 = objc_msgSend_firstObject(v5, v6, v7, v8);
  if (v9)
  {
    v9[2] = 0;
  }

  return objc_msgSend_unlock(a2, v10, v11, v12);
}

void sub_1BAF8E188(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = a1;
  v5 = 2048;
  v6 = a2;
  _os_log_fault_impl(&dword_1BADC1000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Simulating crash with description: %@ and exception code: %lld", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1BAF8E214(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  v4 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Simulating crash with description: %@ and exception code: %lld", a4, a1, a2);
  v5 = v4;
  objc_msgSend_UTF8String(v5, v6, v7, v8);

  _os_crash();
  __break(1u);
}