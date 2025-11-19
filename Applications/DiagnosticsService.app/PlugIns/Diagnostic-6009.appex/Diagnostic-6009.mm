uint64_t sub_1000017F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000204B4();
  v29 = 0;
  sub_100001964(v2, &v23);
  v31 = v24;
  v32 = v25;
  v33 = v26;
  v34 = v27;
  v30 = v23;
  v35[1] = v24;
  v35[2] = v25;
  v35[3] = v26;
  v36 = v27;
  v35[0] = v23;
  sub_10000232C(&v30, v22);
  sub_100002494(v35, &qword_1000315E0, &unk_100022AB0);
  *&v28[23] = v31;
  *&v28[39] = v32;
  *&v28[55] = v33;
  v28[71] = v34;
  *&v28[7] = v30;
  v5 = v29;
  LOBYTE(v2) = sub_100020564();
  sub_1000202D4();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  LOBYTE(v23) = 0;
  v14 = sub_100020594();
  result = sub_1000202D4();
  v16 = *v28;
  *(a1 + 33) = *&v28[16];
  v17 = *&v28[48];
  *(a1 + 49) = *&v28[32];
  *(a1 + 65) = v17;
  *a1 = v4;
  *(a1 + 8) = 0x4010000000000000;
  *(a1 + 16) = v5;
  *(a1 + 81) = *&v28[64];
  *(a1 + 17) = v16;
  *(a1 + 96) = v2;
  *(a1 + 104) = v7;
  *(a1 + 112) = v9;
  *(a1 + 120) = v11;
  *(a1 + 128) = v13;
  *(a1 + 136) = 0;
  *(a1 + 144) = v14;
  *(a1 + 152) = v18;
  *(a1 + 160) = v19;
  *(a1 + 168) = v20;
  *(a1 + 176) = v21;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_100001964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(sub_10000239C(&qword_1000315E8, &qword_100022FD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v6 = &v30 - v5;
  sub_100020914();
  v7 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = *(a1 + 72);

    v10 = sub_1000206A4();
    if (*(a1 + 80))
    {
LABEL_5:
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      KeyPath = 0;
      v16 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
    if (*(a1 + 80))
    {
      goto LABEL_5;
    }
  }

  v33 = v10;
  v34 = v7;
  v17 = *(a1 + 64);
  v32 = v8;
  if (v17)
  {
    v18 = *(a1 + 56);
    v19 = v17;
  }

  else
  {
    v18 = 0;
    v19 = 0xE000000000000000;
  }

  v36 = *(a1 + 40);
  v37 = v36;

  sub_1000023E4(&v37, v35);
  v38._countAndFlagsBits = v18;
  v38._object = v19;
  sub_1000208C4(v38);

  sub_100002440();
  v20 = sub_100020634();
  v22 = v21;
  v24 = v23;
  sub_1000205C4();
  v25 = sub_1000205A4();
  v16 = 1;
  (*(*(v25 - 8) + 56))(v6, 1, 1, v25);
  sub_1000205D4();
  sub_100002494(v6, &qword_1000315E8, &qword_100022FD0);
  v11 = sub_100020614();
  v12 = v26;
  v31 = v27;
  v14 = v28;

  sub_1000024F4(v20, v22, v24 & 1);

  KeyPath = swift_getKeyPath();
  v13 = v31 & 1;
  sub_100002504(v11, v12, v31 & 1);

  v10 = v33;
  v8 = v32;
LABEL_11:
  sub_100002514(v8);
  sub_100002554(v11, v12, v13, v14);
  sub_1000025A4(v11, v12, v13, v14);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = KeyPath;
  *(a2 + 56) = v16;
  *(a2 + 64) = 0;
  sub_1000025A4(v11, v12, v13, v14);
  sub_1000025F4(v8);
}

uint64_t sub_100001CE4@<X0>(uint64_t a1@<X8>)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return sub_1000017F0(a1);
}

uint64_t sub_100001D30@<X0>(uint64_t a1@<X8>)
{
  result = sub_100020474();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_100001D64(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_100020484();
}

__n128 sub_100001D94@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  LOBYTE(v27) = 0;
  sub_100020704();
  v6 = *(a1 + 16);
  v48 = *a1;
  v49 = v6;
  LOBYTE(v50) = *(a1 + 32);
  LOBYTE(v27) = a2;
  sub_100002100(a1, v34);
  sub_100020704();

  v7 = v34[0];
  v8 = *(&v34[0] + 1);
  v9 = *a1;
  v10 = *(a1 + 8);
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (*(a1 + 32) && *(a1 + 32) != 1)
  {
    if (!(v12 | v10 | v9 | v11))
    {
      v23 = [objc_opt_self() mainBundle];
      v26._countAndFlagsBits = 0xE000000000000000;
      v53._object = 0x8000000100021780;
      v53._countAndFlagsBits = 0xD000000000000014;
      v55.value._countAndFlagsBits = 0;
      v55.value._object = 0;
      v24.super.isa = v23;
      v57._countAndFlagsBits = 0;
      v57._object = 0xE000000000000000;
      v9 = sub_100020054(v53, v55, v24, v57, v26);
      v10 = v25;

      v15 = sub_1000206F4();
      v13 = 0;
      v14 = 0;
      v19 = 1;
      goto LABEL_7;
    }

    v16 = [objc_opt_self() mainBundle];
    v52._countAndFlagsBits = 0xD000000000000012;
    v26._countAndFlagsBits = 0xE000000000000000;
    v52._object = 0x8000000100021710;
    v54.value._countAndFlagsBits = 0;
    v54.value._object = 0;
    v17.super.isa = v16;
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v9 = sub_100020054(v52, v54, v17, v56, v26);
    v10 = v18;

    v15 = sub_1000206F4();
    v13 = 0;
    v14 = 0;
  }

  else
  {
    *&v34[0] = 32;
    *(&v34[0] + 1) = 0xE100000000000000;

    v51._countAndFlagsBits = v12;
    v51._object = v11;
    sub_1000208C4(v51);
    v14 = *(&v34[0] + 1);
    v13 = *&v34[0];
    v15 = sub_1000206F4();
    sub_1000021C4(a1);
  }

  v19 = 0;
LABEL_7:
  v27 = v48;
  v28 = v49;
  *(&v32 + 1) = *v47;
  DWORD1(v32) = *&v47[3];
  *(&v32 + 9) = *v46;
  HIDWORD(v32) = *&v46[3];
  *&v29 = v50;
  *(&v29 + 1) = v9;
  v30.n128_u64[0] = v10;
  v30.n128_u64[1] = v13;
  *&v31 = v14;
  *(&v31 + 1) = v15;
  LOBYTE(v32) = v19;
  BYTE8(v32) = v7;
  v33 = v8;
  v34[0] = v48;
  v34[1] = v49;
  v35 = v50;
  v36 = v9;
  v37 = v10;
  v38 = v13;
  v39 = v14;
  v40 = v15;
  v41 = v19;
  *&v42[3] = *&v47[3];
  *v42 = *v47;
  v43 = v7;
  *&v44[3] = *&v46[3];
  *v44 = *v46;
  v45 = v8;
  sub_10000215C(&v27, &v26._object);
  sub_100002194(v34);
  v20 = v32;
  *(a3 + 64) = v31;
  *(a3 + 80) = v20;
  *(a3 + 96) = v33;
  v21 = v28;
  *a3 = v27;
  *(a3 + 16) = v21;
  result = v30;
  *(a3 + 32) = v29;
  *(a3 + 48) = result;
  return result;
}

uint64_t sub_100002218(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

__n128 sub_100002234(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100002260(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000022A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10000232C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000239C(&qword_1000315E0, &unk_100022AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000239C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_100002440()
{
  result = qword_1000315F0;
  if (!qword_1000315F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000315F0);
  }

  return result;
}

uint64_t sub_100002494(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000239C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1000024F4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100002504(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100002514(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002554(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_100002504(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000025A4(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_1000024F4(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_1000025F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100002678(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000026F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100002678(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100002774()
{
  result = qword_100031618;
  if (!qword_100031618)
  {
    sub_100002678(&qword_100031620, &qword_100022B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031618);
  }

  return result;
}

void *sub_1000027D8(uint64_t a1)
{
  v1[2] = 0;
  v1[3] = sub_10001AB58(&_swiftEmptyArrayStorage);
  v1[4] = 1701736270;
  v1[5] = 0xE400000000000000;
  v3 = sub_1000049CC(&off_10002D208);
  swift_arrayDestroy();
  v1[6] = v3;
  v4 = v1[2];
  v1[2] = a1;

  sub_1000032E8();
  return v1;
}

uint64_t sub_100002864()
{
  swift_beginAccess();
  if (!*(*(v0 + 24) + 16))
  {
    return 0;
  }

  v47 = sub_10001AB58(&_swiftEmptyArrayStorage);
  v1 = *(v0 + 24);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 24) + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v2;
  v8 = (v5 + 63) >> 6;
  v49 = *(v0 + 24);

  v9 = 0;
  v48 = v0;
LABEL_7:
  while (2)
  {
    while (2)
    {
      v12 = v9;
      if (!v7)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v9 = v12;
LABEL_12:
        v13 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
        v14 = v13 | (v9 << 6);
        v15 = (*(v49 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(v49 + 56) + 8 * v14);
        v19 = *(v0 + 48);
        v50 = v18;
        if (*(v19 + 16))
        {
          v20 = *(v19 + 40);
          sub_100020B64();

          v46 = v18;
          sub_1000208B4();
          v21 = sub_100020B84();
          v22 = -1 << *(v19 + 32);
          v23 = v21 & ~v22;
          if ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
          {
            v24 = ~v22;
            while (1)
            {
              v25 = (*(v19 + 48) + 16 * v23);
              v26 = *v25 == v17 && v25[1] == v16;
              if (v26 || (sub_100020B34() & 1) != 0)
              {
                break;
              }

              v23 = (v23 + 1) & v24;
              if (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            v10 = v46;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            sub_1000046E8(v10, v17, v16, isUniquelyReferenced_nonNull_native);

            v0 = v48;
            goto LABEL_7;
          }
        }

        else
        {

          v27 = v18;
        }

LABEL_23:
        sub_100002440();
        v28 = sub_100020A44();

        if (v28)
        {
          break;
        }

        v12 = v9;
        v0 = v48;
        if (!v7)
        {
LABEL_9:
          while (1)
          {
            v9 = v12 + 1;
            if (__OFADD__(v12, 1))
            {
              break;
            }

            if (v9 >= v8)
            {

              return v47;
            }

            v7 = *(v3 + 8 * v9);
            ++v12;
            if (v7)
            {
              goto LABEL_12;
            }
          }

          __break(1u);
          goto LABEL_39;
        }
      }

      v29 = v50;
      v30 = swift_isUniquelyReferenced_nonNull_native();
      v31 = sub_10001A4E8(0x706D6F635F6E7361, 0xEB00000000796E61);
      v33 = v47[2];
      v34 = (v32 & 1) == 0;
      v35 = __OFADD__(v33, v34);
      v36 = v33 + v34;
      if (v35)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v37 = v32;
      if (v47[3] >= v36)
      {
        if ((v30 & 1) == 0)
        {
          v44 = v31;
          sub_100004860();
          v31 = v44;
        }
      }

      else
      {
        sub_100004444(v36, v30);
        v31 = sub_10001A4E8(0x706D6F635F6E7361, 0xEB00000000796E61);
        if ((v37 & 1) != (v38 & 1))
        {
          goto LABEL_41;
        }
      }

      if (v37)
      {
        v39 = v47[7];
        v40 = *(v39 + 8 * v31);
        *(v39 + 8 * v31) = v29;

        v0 = v48;
        continue;
      }

      break;
    }

    v47[(v31 >> 6) + 8] |= 1 << v31;
    v41 = (v47[6] + 16 * v31);
    *v41 = 0x706D6F635F6E7361;
    v41[1] = 0xEB00000000796E61;
    *(v47[7] + 8 * v31) = v29;

    v42 = v47[2];
    v35 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v35)
    {
      v47[2] = v43;
      v0 = v48;
      continue;
    }

    break;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  result = sub_100020B44();
  __break(1u);
  return result;
}

uint64_t sub_100002C84()
{
  v1 = v0;
  v2 = v0[2];
  if (!v2)
  {
    return v2;
  }

  v3 = v2 + 64;
  v4 = 1 << *(v2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v2 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v73 = v1;
  v74 = v7;
  v75 = v2;
  while (v6)
  {
LABEL_13:
    v12 = __clz(__rbit64(v6)) | (v8 << 6);
    v13 = (*(v2 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v2 + 56) + 8 * v12);
    sub_100002440();

    v17 = v16;
    v76 = v17;
    if (sub_100020A44())
    {
      v18 = v14;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v17;
        [v19 longLongValue];
      }

      v34.super.super.isa = sub_100020954().super.super.isa;
      swift_beginAccess();
      v35 = v1[3];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = v1[3];
      v1[3] = 0x8000000000000000;
      v38 = sub_10001A4E8(v18, v15);
      v40 = v37[2];
      v41 = (v39 & 1) == 0;
      v30 = __OFADD__(v40, v41);
      v42 = v40 + v41;
      if (v30)
      {
        goto LABEL_54;
      }

      v43 = v39;
      if (v37[3] < v42)
      {
        sub_100004444(v42, isUniquelyReferenced_nonNull_native);
        v38 = sub_10001A4E8(v18, v15);
        if ((v43 & 1) != (v44 & 1))
        {
          goto LABEL_60;
        }

        goto LABEL_28;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_28:
        if (v43)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v60 = v38;
        sub_100004860();
        v38 = v60;
        if (v43)
        {
          goto LABEL_5;
        }
      }

      v37[(v38 >> 6) + 8] |= 1 << v38;
      v45 = (v37[6] + 16 * v38);
      *v45 = v18;
      v45[1] = v15;
      *(v37[7] + 8 * v38) = v34;
      v46 = v37[2];
      v30 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v30)
      {
        goto LABEL_57;
      }

      goto LABEL_42;
    }

    if (sub_100020A44())
    {
      v21 = v14;
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v22 = v17;
        [v19 longLongValue];
      }

      v34.super.super.isa = sub_100020954().super.super.isa;
      swift_beginAccess();
      v50 = v1[3];
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v37 = v1[3];
      v1[3] = 0x8000000000000000;
      v38 = sub_10001A4E8(v21, v15);
      v53 = v37[2];
      v54 = (v52 & 1) == 0;
      v30 = __OFADD__(v53, v54);
      v55 = v53 + v54;
      if (v30)
      {
        goto LABEL_56;
      }

      v56 = v52;
      if (v37[3] < v55)
      {
        sub_100004444(v55, v51);
        v38 = sub_10001A4E8(v21, v15);
        if ((v56 & 1) != (v57 & 1))
        {
          goto LABEL_60;
        }

LABEL_40:
        if ((v56 & 1) == 0)
        {
          goto LABEL_41;
        }

LABEL_5:
        v9 = v37[7];
        v10 = *(v9 + 8 * v38);
        *(v9 + 8 * v38) = v34;

LABEL_6:
        v1 = v73;
        v73[3] = v37;
        swift_endAccess();

        goto LABEL_7;
      }

      if (v51)
      {
        goto LABEL_40;
      }

      v65 = v38;
      sub_100004860();
      v38 = v65;
      if (v56)
      {
        goto LABEL_5;
      }

LABEL_41:
      v37[(v38 >> 6) + 8] |= 1 << v38;
      v58 = (v37[6] + 16 * v38);
      *v58 = v21;
      v58[1] = v15;
      *(v37[7] + 8 * v38) = v34;
      v59 = v37[2];
      v30 = __OFADD__(v59, 1);
      v47 = v59 + 1;
      if (v30)
      {
        goto LABEL_59;
      }

LABEL_42:
      v37[2] = v47;
      goto LABEL_6;
    }

    swift_beginAccess();
    v72 = v17;
    v23 = v1[3];
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v25 = v1[3];
    v1[3] = 0x8000000000000000;
    v26 = sub_10001A4E8(v14, v15);
    v28 = v25[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_55;
    }

    v32 = v27;
    if (v25[3] < v31)
    {
      sub_100004444(v31, v24);
      v26 = sub_10001A4E8(v14, v15);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_60;
      }

LABEL_33:
      if ((v32 & 1) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_34;
    }

    if (v24)
    {
      goto LABEL_33;
    }

    v61 = v26;
    sub_100004860();
    v26 = v61;
    if ((v32 & 1) == 0)
    {
LABEL_46:
      v25[(v26 >> 6) + 8] |= 1 << v26;
      v62 = (v25[6] + 16 * v26);
      *v62 = v14;
      v62[1] = v15;
      *(v25[7] + 8 * v26) = v72;
      v63 = v25[2];
      v30 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v30)
      {
        goto LABEL_58;
      }

      v25[2] = v64;
      goto LABEL_48;
    }

LABEL_34:
    v48 = v25[7];
    v49 = *(v48 + 8 * v26);
    *(v48 + 8 * v26) = v72;

LABEL_48:
    v1[3] = v25;
    swift_endAccess();
LABEL_7:
    v2 = v75;
    v7 = v74;
    v6 &= v6 - 1;
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      v66 = v1[4];
      v67 = v1[5];

      v68 = sub_100020854();

      swift_beginAccess();
      v69 = v1[3];
      v70 = swift_isUniquelyReferenced_nonNull_native();
      v77 = v1[3];
      v1[3] = 0x8000000000000000;
      sub_1000046E8(v68, 0x676E69646E6966, 0xE700000000000000, v70);
      v2 = v77;
      v1[3] = v77;
      swift_endAccess();

      return v2;
    }

    v6 = *(v3 + 8 * v11);
    ++v8;
    if (v6)
    {
      v8 = v11;
      goto LABEL_13;
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
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_100020B44();
  __break(1u);
  return result;
}

void sub_1000032E8()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v2 + 16);

    if (!v3)
    {
      goto LABEL_44;
    }

    v4 = sub_10001A4E8(0xD00000000000001FLL, 0x80000001000214B0);
    if (v5)
    {
      v6 = *(*(v2 + 56) + 8 * v4);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v44 = 0;
        v45 = 0;
        v7 = v6;
        sub_100020864();
      }
    }

    if (!*(v2 + 16))
    {
      goto LABEL_44;
    }

    v8 = sub_10001A4E8(0xD00000000000001FLL, 0x80000001000214B0);
    if (v9)
    {
      v10 = *(*(v2 + 56) + 8 * v8);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v44 = 0;
        v45 = 0;
        v11 = v10;
        sub_100020864();
      }
    }

    if (!*(v2 + 16))
    {
      goto LABEL_44;
    }

    v12 = sub_10001A4E8(0xD00000000000001FLL, 0x80000001000214B0);
    if (v13)
    {
      v14 = *(*(v2 + 56) + 8 * v12);
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        v44 = 0;
        v45 = 0;
        v15 = v14;
        sub_100020864();
      }
    }

    if (!*(v2 + 16))
    {
      goto LABEL_44;
    }

    v16 = sub_10001A4E8(0xD000000000000013, 0x8000000100021600);
    if (v17)
    {
      v18 = *(*(v2 + 56) + 8 * v16);
      objc_opt_self();
      v19 = swift_dynamicCastObjCClass();
      if (v19)
      {
        v20 = v19;
        v21 = v18;
        if ([v20 integerValue] == -1009 && *(v2 + 16))
        {
          v22 = sub_10001A4E8(0xD000000000000011, 0x80000001000214F0);
          if (v23)
          {
            v24 = *(*(v2 + 56) + 8 * v22);
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              LOBYTE(v44) = 2;
              v25 = v24;
              sub_1000208E4();
            }
          }

          if (*(v2 + 16))
          {
            v26 = sub_10001A4E8(0xD000000000000018, 0x8000000100021510);
            if (v27)
            {
              v28 = *(*(v2 + 56) + 8 * v26);
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                LOBYTE(v44) = 2;
                v29 = v28;
                sub_1000208E4();
              }
            }

            if (*(v2 + 16))
            {
              v30 = sub_10001A4E8(0x7968705F69666977, 0xED000065646F6D5FLL);
              if (v31)
              {
                v32 = *(*(v2 + 56) + 8 * v30);
                objc_opt_self();
                if (swift_dynamicCastObjCClass())
                {
                  v44 = 0;
                  v45 = 0;
                  v33 = v32;
                  sub_100020864();
                }
              }
            }
          }
        }
      }
    }

    if (!*(v2 + 16))
    {
      goto LABEL_44;
    }

    v34 = sub_10001A4E8(0x62616E655F6E7076, 0xEB0000000064656CLL);
    if ((v35 & 1) == 0)
    {
      goto LABEL_44;
    }

    v36 = *(*(v2 + 56) + 8 * v34);
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (LOBYTE(v44) = 2, v37 = v36, sub_1000208E4(), v37, v38 = v44, v44 == 2) || !*(v2 + 16) || (v39 = sub_10001A4E8(0x746174735F6E7076, 0xEA00000000007375), (v40 & 1) == 0))
    {
LABEL_44:

      return;
    }

    v41 = *(*(v2 + 56) + 8 * v39);

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      return;
    }

    v44 = 0;
    v45 = 0;
    sub_100020864();

    if (v45)
    {
      if ((v38 & 1) != 0 && (v44 != 0x656E6E6F63736944 || v45 != 0xEC00000064657463))
      {
        v42 = sub_100020B34();

        if (v42)
        {
          return;
        }

        v43 = *(v1 + 40);
        strcpy((v1 + 32), "vpn_connected");
        *(v1 + 46) = -4864;
      }

      goto LABEL_44;
    }
  }
}

uint64_t sub_100004324()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[6];

  return _swift_deallocClassInstance(v0, 56, 7);
}

uint64_t sub_100004398(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_100004444(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000239C(&qword_100031770, &qword_1000236B0);
  v39 = a2;
  result = sub_100020AE4();
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
      sub_100020B64();
      sub_1000208B4();
      result = sub_100020B84();
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

uint64_t sub_1000046E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10001A4E8(a2, a3);
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
      sub_100004444(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_10001A4E8(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_100020B44();
        __break(1u);
        return _objc_release_x1();
      }
    }

    else
    {
      v19 = v11;
      sub_100004860();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

id sub_100004860()
{
  v1 = v0;
  sub_10000239C(&qword_100031770, &qword_1000236B0);
  v2 = *v0;
  v3 = sub_100020AD4();
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

Swift::Int sub_1000049CC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000239C(&qword_100031750, "Z ");
    v3 = sub_100020A94();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      sub_100020B64();

      sub_1000208B4();
      result = sub_100020B84();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = sub_100020B34();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_100004B34(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_100020AC4();
    if (result)
    {
LABEL_3:
      sub_10000239C(&qword_100031758, "\\ ");
      result = sub_100020A94();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_100020AC4();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = (v3 + 7);
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = sub_100020AB4();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    sub_1000200D4();
    sub_100004DA0(&qword_100031760);
    result = sub_100020834();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = *&v7[8 * (v12 >> 6)];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_100004DA0(&qword_100031768);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = sub_100020844();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *&v7[8 * (v12 >> 6)];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      *&v7[8 * v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100004DA0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000200D4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100004DE4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_100020B34() & 1;
  }
}

id sub_100004E64(uint64_t a1, SEL *a2, void *a3)
{
  result = [objc_opt_self() *a2];
  *a3 = result;
  return result;
}

uint64_t sub_100004EA8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000204A4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(sub_10000239C(&qword_100031778, &qword_100022BD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = (&v16 - v10);
  sub_10000B994(v2, &v16 - v10, &qword_100031778, &qword_100022BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1000202E4();
    return (*(*(v12 - 8) + 32))(a1, v11, v12);
  }

  else
  {
    v14 = *v11;
    sub_100020974();
    v15 = sub_100020554();
    sub_1000200A4();

    sub_100020494();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1000050A8()
{
  v1 = sub_1000204A4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v10[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0 + *(type metadata accessor for NetworkPerformanceDiagnosticUIView() + 20);
  v7 = *v6;
  if (*(v6 + 8) != 1)
  {

    sub_100020974();
    v8 = sub_100020554();
    sub_1000200A4();

    sub_100020494();
    swift_getAtKeyPath();
    sub_10000ADB8(v7, 0);
    (*(v2 + 8))(v5, v1);
    LOBYTE(v7) = v10[15];
  }

  return v7 & 1;
}

id sub_100005200()
{
  v0 = objc_allocWithZone(type metadata accessor for NetworkPerformanceDiagnosticViewModel());

  return [v0 init];
}

uint64_t sub_100005238()
{
  v0 = type metadata accessor for NetworkMonitorManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_10000D2C8();
}

uint64_t sub_100005270(double a1)
{
  if (a1 == 0.0)
  {
    return 2957357;
  }

  if (a1 < 1.0)
  {
    sub_100020964();
    return 0;
  }

  v2 = round(a1);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v2 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  return sub_100020B14();
}

uint64_t sub_100005348()
{
  v1 = (v0 + *(type metadata accessor for NetworkPerformanceDiagnosticUIView() + 24));
  v2 = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v5 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v6 = [objc_opt_self() mainBundle];
  v11._countAndFlagsBits = 0xE000000000000000;
  if (HIBYTE(v11._object) == 1)
  {
    v7._countAndFlagsBits = 0x64616F6C7055;
    v7._object = 0xE600000000000000;
  }

  else
  {
    v7._countAndFlagsBits = 0x64616F6C6E776F44;
    v7._object = 0xE800000000000000;
  }

  v12.value._countAndFlagsBits = 0;
  v12.value._object = 0;
  v8.super.isa = v6;
  v13._countAndFlagsBits = 0;
  v13._object = 0xE000000000000000;
  v9 = sub_100020054(v7, v12, v8, v13, v11);

  return v9;
}

uint64_t sub_1000054C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  sub_100020914();
  v17 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v15 = sub_100020774();
  v4 = v3;
  sub_100005980(a1, v32);
  v45 = v32[10];
  v46 = v32[11];
  v47[0] = v32[12];
  *(v47 + 9) = *(&v32[12] + 9);
  v41 = v32[6];
  v42 = v32[7];
  v43 = v32[8];
  v44 = v32[9];
  v37 = v32[2];
  v38 = v32[3];
  v39 = v32[4];
  v40 = v32[5];
  v35 = v32[0];
  v36 = v32[1];
  v48[10] = v32[10];
  v48[11] = v32[11];
  v49[0] = v32[12];
  *(v49 + 9) = *(&v32[12] + 9);
  v48[6] = v32[6];
  v48[7] = v32[7];
  v48[8] = v32[8];
  v48[9] = v32[9];
  v48[2] = v32[2];
  v48[3] = v32[3];
  v48[4] = v32[4];
  v48[5] = v32[5];
  v48[0] = v32[0];
  v48[1] = v32[1];
  sub_10000B994(&v35, v18, &qword_100031900, &qword_100022D28);
  sub_100002494(v48, &qword_100031900, &qword_100022D28);
  v29 = v45;
  v30 = v46;
  v31[0] = v47[0];
  *(v31 + 9) = *(v47 + 9);
  v25 = v41;
  v26 = v42;
  v27 = v43;
  v28 = v44;
  v21 = v37;
  v22 = v38;
  v23 = v39;
  v24 = v40;
  v19 = v35;
  v20 = v36;
  v5 = sub_100020574();
  v33 = 1;
  sub_100020774();
  sub_1000203E4();
  *&v34[55] = v49[5];
  *&v34[71] = v49[6];
  *&v34[87] = v49[7];
  *&v34[103] = v49[8];
  *&v34[7] = v49[2];
  *&v34[23] = v49[3];
  *&v34[39] = v49[4];
  v6 = [objc_opt_self() secondarySystemBackgroundColor];
  v7 = sub_1000206D4();
  v8 = sub_100020574();
  v9 = sub_1000203C4();
  v10 = sub_100020574();
  v14 = &v14;
  *&v18[0] = v15;
  *(&v18[0] + 1) = v4;
  v18[11] = v29;
  v18[12] = v30;
  v18[13] = v31[0];
  *(&v18[13] + 9) = *(v31 + 9);
  v18[7] = v25;
  v18[8] = v26;
  v18[9] = v27;
  v18[10] = v28;
  v18[3] = v21;
  v18[4] = v22;
  v18[5] = v23;
  v18[6] = v24;
  v18[1] = v19;
  v18[2] = v20;
  LOBYTE(v18[15]) = v5;
  *(&v18[16] + 8) = 0u;
  *(&v18[15] + 8) = 0u;
  BYTE8(v18[17]) = 1;
  *(&v18[21] + 9) = *&v34[64];
  *(&v18[22] + 9) = *&v34[80];
  *(&v18[23] + 9) = *&v34[96];
  *(&v18[17] + 9) = *v34;
  *(&v18[18] + 9) = *&v34[16];
  *(&v18[19] + 9) = *&v34[32];
  *(&v18[20] + 9) = *&v34[48];
  *(&v18[24] + 1) = *&v34[111];
  *&v18[25] = v7;
  BYTE8(v18[25]) = v8;
  *&v18[26] = v9;
  BYTE8(v18[26]) = v10;
  __chkstk_darwin(v10);
  sub_10000239C(&qword_100031870, &qword_100022C90);
  sub_10000239C(&qword_100031878, &qword_100022C98);
  sub_10000AAC8();
  v11 = sub_100002678(&qword_1000318D8, &qword_100022CC8);
  v12 = sub_10000BB0C(&qword_1000318E0, &qword_1000318D8, &qword_100022CC8);
  *&v32[0] = v11;
  *(&v32[0] + 1) = v12;
  swift_getOpaqueTypeConformance2();
  sub_100020684();
  memcpy(v32, v18, 0x1A9uLL);
  sub_100002494(v32, &qword_100031870, &qword_100022C90);
}

uint64_t sub_100005980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000AD50(a1, &v21[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10000ADDC(v7, v9 + v8);
  v10 = sub_1000204D4();
  v21[0] = 0;
  sub_100005D08(&v37);
  v29 = *&v38[80];
  v30 = *&v38[96];
  v25 = *&v38[16];
  v26 = *&v38[32];
  v27 = *&v38[48];
  v28 = *&v38[64];
  v23 = v37;
  v24 = *v38;
  v32[6] = *&v38[80];
  v32[7] = *&v38[96];
  v32[2] = *&v38[16];
  v32[3] = *&v38[32];
  v32[4] = *&v38[48];
  v32[5] = *&v38[64];
  v31 = v38[112];
  v33 = v38[112];
  v32[0] = v37;
  v32[1] = *v38;
  sub_10000B994(&v23, &v34, &qword_100031918, &qword_100022D80);
  sub_100002494(v32, &qword_100031918, &qword_100022D80);
  *(&v22[5] + 7) = v28;
  *(&v22[6] + 7) = v29;
  *(&v22[7] + 7) = v30;
  *(&v22[1] + 7) = v24;
  *(&v22[2] + 7) = v25;
  *(&v22[3] + 7) = v26;
  *(&v22[4] + 7) = v27;
  BYTE7(v22[8]) = v31;
  *(v22 + 7) = v23;
  v11 = v21[0];
  v12 = sub_100020574();
  *&v34 = v10;
  *(&v34 + 1) = 0x4038000000000000;
  LOBYTE(v35[0]) = v11;
  *(&v35[5] + 1) = v22[5];
  *(&v35[6] + 1) = v22[6];
  *(&v35[7] + 1) = v22[7];
  *(&v35[8] + 1) = *&v22[8];
  *(&v35[1] + 1) = v22[1];
  *(&v35[2] + 1) = v22[2];
  *(&v35[3] + 1) = v22[3];
  *(&v35[4] + 1) = v22[4];
  *(v35 + 1) = v22[0];
  LOBYTE(v36[0]) = v12;
  *(v36 + 8) = 0u;
  *(&v36[1] + 8) = 0u;
  BYTE8(v36[2]) = 1;
  v13 = v35[6];
  *(a2 + 112) = v35[5];
  *(a2 + 128) = v13;
  v14 = v35[8];
  *(a2 + 144) = v35[7];
  *(a2 + 160) = v14;
  v15 = v35[2];
  *(a2 + 48) = v35[1];
  *(a2 + 64) = v15;
  v16 = v35[4];
  *(a2 + 80) = v35[3];
  *(a2 + 96) = v16;
  v17 = v35[0];
  *(a2 + 16) = v34;
  *(a2 + 32) = v17;
  v18 = v36[1];
  *(a2 + 176) = v36[0];
  *(a2 + 192) = v18;
  *(a2 + 201) = *(&v36[1] + 9);
  *&v38[81] = v22[5];
  *&v38[97] = v22[6];
  *&v38[113] = v22[7];
  v19 = v22[0];
  *&v38[17] = v22[1];
  *&v38[33] = v22[2];
  *&v38[49] = v22[3];
  *&v38[65] = v22[4];
  *a2 = sub_10000AEDC;
  *(a2 + 8) = v9;
  *&v37 = v10;
  *(&v37 + 1) = 0x4038000000000000;
  v38[0] = v11;
  v39 = *&v22[8];
  *&v38[1] = v19;
  v40 = v12;
  v41 = 0u;
  v42 = 0u;
  v43 = 1;

  sub_10000B994(&v34, v21, &qword_100031920, &qword_100022D88);
  sub_100002494(&v37, &qword_100031920, &qword_100022D88);
}

uint64_t sub_100005D08@<X0>(uint64_t a1@<X8>)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100005E7C(&v11);
  v2 = v17;
  v21[6] = v17;
  v3 = v11;
  v4 = v12;
  v21[0] = v11;
  v21[1] = v12;
  v5 = v14;
  v21[2] = v13;
  v21[3] = v14;
  v19[2] = v13;
  v19[3] = v14;
  v19[0] = v11;
  v19[1] = v12;
  v19[6] = v17;
  v6 = v15;
  v7 = v16;
  v21[4] = v15;
  v21[5] = v16;
  v19[4] = v15;
  v19[5] = v16;
  v8 = v18;
  v22 = v18;
  v20 = v18;
  v10[120] = 1;
  *(a1 + 32) = v13;
  *(a1 + 48) = v5;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 80) = v7;
  *(a1 + 96) = v2;
  *(a1 + 64) = v6;
  *(a1 + 112) = v8;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  sub_10000B994(v19, v10, &qword_100031928, &qword_100022D90);
  sub_100002494(v21, &qword_100031928, &qword_100022D90);
}

void sub_100005E7C(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for NetworkPerformanceDiagnosticUIView() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v7 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  if (v17 == 1)
  {
    v8 = sub_100020304();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100020124();

    v24[0] = v17;
    v24[1] = v18;
    v25 = v19;
    sub_100001D94(v24, 0, &v17);
    v9 = v17;
    v10 = v18;
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v22;
    v15 = 0x403E000000000000;
    v16 = v23;
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v11;
  *(a1 + 48) = v12;
  *(a1 + 64) = v13;
  *(a1 + 80) = v14;
  *(a1 + 96) = v16;
  *(a1 + 104) = 0;
  *(a1 + 112) = v15;
}

uint64_t sub_100006060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12[1] = a2;
  v3 = sub_100020514();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_10000239C(&qword_1000318D8, &qword_100022CC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = sub_100020504();
  __chkstk_darwin(v10);
  v12[-2] = a1;
  sub_10000239C(&qword_100031908, &qword_100022D30);
  sub_10000BB0C(&qword_100031910, &qword_100031908, &qword_100022D30);
  sub_100020334();
  sub_10000BB0C(&qword_1000318E0, &qword_1000318D8, &qword_100022CC8);
  sub_100020524();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000062D4(uint64_t a1)
{
  v2 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000AD50(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_10000ADDC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_100020734();
}

void sub_100006468(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for NetworkPerformanceDiagnosticUIView() + 24));
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v6 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  if (v10 - 3 <= 4)
  {
    sub_10000AE58();
    v7 = sub_100020A34();
    sub_100020984();
    sub_100020094();

    v8 = sub_100020304();
    sub_100017A6C();
  }

  if (qword_1000315D0 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong cancel];
}

uint64_t sub_1000066A4@<X0>(uint64_t *a1@<X8>)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1000206F4();

  *a1 = v2;
  return result;
}

uint64_t sub_100006748()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000067E8();
}

void sub_1000067E8()
{
  v1 = v0;
  sub_10000AE58();
  v2 = sub_100020A34();
  sub_100020984();
  sub_100020094();

  v3 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v4 = (v1 + *(v3 + 32));
  v13 = *v4;
  v14 = v4[1];
  sub_10000239C(&qword_1000318F8, &qword_100022CD8);
  sub_100020724();
  v5 = (v1 + *(v3 + 24));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v9 = sub_100020304();
  v10 = [objc_opt_self() defaultConfiguration];
  v11 = dispatch_group_create();
  v12 = *(v9 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_iterationDispatchGroup);
  *(v9 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_iterationDispatchGroup) = v11;

  sub_100012CD4(v10, &off_10002D428, 1);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020134();
}

uint64_t sub_1000069A4@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *a2 = sub_100020774();
  a2[1] = v4;
  v5 = sub_10000239C(&qword_100031930, &qword_100022DE0);
  sub_100006AB8(a1, a2 + *(v5 + 44));
  sub_100020354();
  v7 = v6 * 0.5;
  sub_100020354();
  v9 = v8;

  result = sub_10000239C(&qword_100031938, &qword_100022DE8);
  v11 = (a2 + *(result + 36));
  *v11 = v7;
  v11[1] = v9 * 0.5;
  return result;
}

uint64_t sub_100006AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v134 = a2;
  v132 = sub_10000239C(&qword_100031940, &qword_100022DF0);
  v3 = *(*(v132 - 8) + 64);
  v4 = __chkstk_darwin(v132);
  v135 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v7 = &v115 - v6;
  v8 = sub_10000239C(&qword_100031948, &qword_100022DF8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v133 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v138 = &v115 - v12;
  v129 = sub_10000239C(&qword_100031950, &qword_100022E00);
  v13 = *(*(v129 - 8) + 64);
  __chkstk_darwin(v129);
  v123 = &v115 - v14;
  v125 = sub_10000239C(&qword_100031958, &qword_100022E08);
  v15 = *(*(v125 - 8) + 64);
  __chkstk_darwin(v125);
  v127 = &v115 - v16;
  v126 = sub_10000239C(&qword_100031960, &qword_100022E10);
  v17 = *(*(v126 - 8) + 64);
  __chkstk_darwin(v126);
  v122 = &v115 - v18;
  v19 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v118 = *(v19 - 8);
  v20 = *(v118 + 64);
  __chkstk_darwin(v19);
  v119 = v21;
  v120 = &v115 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_10000239C(&qword_100031968, &qword_100022E18);
  v22 = *(*(v117 - 8) + 64);
  v23 = __chkstk_darwin(v117);
  v121 = &v115 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v124 = (&v115 - v25);
  v26 = sub_10000239C(&qword_100031970, &qword_100022E20);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v131 = &v115 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v137 = &v115 - v30;
  sub_100020914();
  v130 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v128 = v19;
  v31 = (a1 + *(v19 + 24));
  v32 = *v31;
  v33 = v31[1];
  v34 = *(v31 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v35 = sub_100020304();
  swift_getKeyPath();
  v136 = a1;
  swift_getKeyPath();
  sub_100020124();
  v36 = v136;

  if (v164 != 1)
  {
    goto LABEL_9;
  }

  if (sub_1000050A8())
  {
    goto LABEL_9;
  }

  v37 = v36 + *(v128 + 28);
  v38 = *v37;
  v39 = *(v37 + 8);
  v40 = *(v37 + 16);
  type metadata accessor for NetworkMonitorManager();
  v116 = v7;
  sub_10000B32C(&qword_100031818, type metadata accessor for NetworkMonitorManager);
  v7 = v116;
  sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v36 = v136;

  if (v164 == 1)
  {
    v41 = *(sub_1000203D4() + 20);
    v42 = enum case for RoundedCornerStyle.continuous(_:);
    v43 = sub_1000204C4();
    v44 = v124;
    (*(*(v43 - 8) + 104))(v124->i64 + v41, v42, v43);
    *v44 = vdupq_n_s64(0x4049000000000000uLL);
    if (qword_1000315C0 != -1)
    {
      swift_once();
    }

    v45 = qword_100032D40;
    v46 = sub_1000206D4();
    *(v44->i64 + *(sub_10000239C(&qword_100031990, &qword_100022E40) + 36)) = v46;
    sub_100020774();
    sub_100020344();
    v47 = &v44->i8[*(sub_10000239C(&qword_100031998, &qword_100022E48) + 36)];
    v48 = v173;
    *v47 = v172;
    *(v47 + 1) = v48;
    *(v47 + 2) = v174;
    v49 = &v44->i8[*(v129 + 36)];
    *v49 = 0x4049000000000000;
    v49[8] = 0;
    v50 = (v36 + *(v128 + 32));
    v51 = *v50;
    v52 = v50[1];
    *&v164 = v51;
    *(&v164 + 1) = v52;
    sub_10000239C(&qword_1000318F8, &qword_100022CD8);
    sub_100020714();
    v53 = *&v156 * 0.0174532925;
    sub_1000207D4();
    v55 = v54;
    v57 = v56;
    v58 = &v44->i8[*(sub_10000239C(&qword_1000319D8, &qword_100022EA0) + 36)];
    *v58 = v53;
    *(v58 + 1) = v55;
    *(v58 + 2) = v57;
    v59 = v36;
    v60 = v120;
    sub_10000AD50(v59, v120);
    v61 = (*(v118 + 80) + 16) & ~*(v118 + 80);
    v62 = swift_allocObject();
    sub_10000ADDC(v60, v62 + v61);
    v63 = (v44->i64 + *(v117 + 36));
    *v63 = sub_10000B37C;
    v63[1] = v62;
    v63[2] = 0;
    v63[3] = 0;
    sub_100020304();
    v128 = sub_1000203B4();
    v123 = v64;
    *&v156 = 0x408F400000000000;
    sub_100020704();
    v65 = v164;
    *&v156 = 0;
    sub_100020704();
    v66 = v164;
    *&v156 = 0;
    sub_100020704();
    v67 = *(&v164 + 1);
    v68 = v164;
    *&v156 = 0;
    sub_100020704();
    v69 = *(&v164 + 1);
    v70 = v164;
    *&v156 = 0;
    sub_100020704();
    v71 = v164;
    LOBYTE(v156) = 1;
    sub_100020704();
    v72 = v164;
    v73 = *(&v164 + 1);
    LOBYTE(v156) = 0;
    sub_100020704();
    *&v148 = v128;
    *(&v148 + 1) = v123;
    v149 = v65;
    v150 = v66;
    v151 = __PAIR128__(v67, v68);
    v36 = v136;
    v152 = __PAIR128__(v69, v70);
    v153 = v71;
    LOBYTE(v154) = v72;
    *(&v154 + 1) = v73;
    LOBYTE(v155) = v164;
    *(&v155 + 1) = *(&v164 + 1);
    v74 = v121;
    sub_10000B994(v44, v121, &qword_100031968, &qword_100022E18);
    v144 = v152;
    v145 = v153;
    v146 = v154;
    v147 = v155;
    v140 = v148;
    v141 = v149;
    v142 = v150;
    v143 = v151;
    v75 = v122;
    sub_10000B994(v74, v122, &qword_100031968, &qword_100022E18);
    v76 = (v75 + *(sub_10000239C(&qword_1000319E0, &qword_100022EA8) + 48));
    v77 = v144;
    v78 = v145;
    v160 = v144;
    v161 = v145;
    v79 = v146;
    v80 = v147;
    v162 = v146;
    v163 = v147;
    v81 = v140;
    v82 = v141;
    v156 = v140;
    v157 = v141;
    v84 = v142;
    v83 = v143;
    v158 = v142;
    v159 = v143;
    v76[2] = v142;
    v76[3] = v83;
    *v76 = v81;
    v76[1] = v82;
    v76[6] = v79;
    v76[7] = v80;
    v76[4] = v77;
    v76[5] = v78;
    v168 = v77;
    v169 = v78;
    v170 = v79;
    v171 = v80;
    v164 = v81;
    v165 = v82;
    v166 = v84;
    v167 = v83;
    sub_10000B394(&v148, v139);
    sub_10000B394(&v156, v139);
    sub_10000B3F0(&v164);
    sub_100002494(v74, &qword_100031968, &qword_100022E18);
    sub_10000B994(v75, v127, &qword_100031960, &qword_100022E10);
    swift_storeEnumTagMultiPayload();
    sub_10000BB0C(&qword_1000319A0, &qword_100031960, &qword_100022E10);
    sub_10000B12C();
    v85 = v137;
    sub_1000204F4();
    sub_10000B3F0(&v148);
    sub_100002494(v75, &qword_100031960, &qword_100022E10);
    sub_100002494(v124, &qword_100031968, &qword_100022E18);
    v86 = sub_10000239C(&qword_100031978, &qword_100022E28);
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    v7 = v116;
  }

  else
  {
LABEL_9:
    v87 = sub_100020304();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100020124();

    if (v164 == 1 && (sub_1000050A8() & 1) != 0)
    {
      v88 = *(sub_1000203D4() + 20);
      v89 = enum case for RoundedCornerStyle.continuous(_:);
      v90 = sub_1000204C4();
      v91 = v123;
      (*(*(v90 - 8) + 104))(&v123[v88], v89, v90);
      __asm { FMOV            V0.2D, #20.0 }

      *v91 = _Q0;
      v85 = v137;
      if (qword_1000315C0 != -1)
      {
        swift_once();
      }

      v97 = qword_100032D40;
      v98 = sub_1000206D4();
      *(v91 + *(sub_10000239C(&qword_100031990, &qword_100022E40) + 36)) = v98;
      sub_100020774();
      sub_100020344();
      v99 = (v91 + *(sub_10000239C(&qword_100031998, &qword_100022E48) + 36));
      v100 = v157;
      *v99 = v156;
      v99[1] = v100;
      v99[2] = v158;
      v101 = v91 + *(v129 + 36);
      *v101 = 0x4049000000000000;
      v101[8] = 0;
      sub_10000B994(v91, v127, &qword_100031950, &qword_100022E00);
      swift_storeEnumTagMultiPayload();
      sub_10000BB0C(&qword_1000319A0, &qword_100031960, &qword_100022E10);
      sub_10000B12C();
      sub_1000204F4();
      sub_100002494(v91, &qword_100031950, &qword_100022E00);
      v102 = sub_10000239C(&qword_100031978, &qword_100022E28);
      (*(*(v102 - 8) + 56))(v85, 0, 1, v102);
    }

    else
    {
      v103 = sub_10000239C(&qword_100031978, &qword_100022E28);
      v85 = v137;
      (*(*(v103 - 8) + 56))(v137, 1, 1, v103);
    }
  }

  v104 = v138;
  sub_100007CB4(v138);
  *v7 = sub_1000204D4();
  *(v7 + 1) = 0x4028000000000000;
  v7[16] = 0;
  v105 = sub_10000239C(&qword_100031980, &qword_100022E30);
  sub_10000879C(v36, &v7[*(v105 + 44)]);
  sub_100020774();
  sub_100020344();
  v106 = v131;
  v107 = &v7[*(v132 + 36)];
  v108 = v165;
  *v107 = v164;
  *(v107 + 1) = v108;
  *(v107 + 2) = v166;
  sub_10000B994(v85, v106, &qword_100031970, &qword_100022E20);
  v109 = v7;
  v110 = v133;
  sub_10000B994(v104, v133, &qword_100031948, &qword_100022DF8);
  v111 = v135;
  sub_10000B994(v109, v135, &qword_100031940, &qword_100022DF0);
  v112 = v134;
  sub_10000B994(v106, v134, &qword_100031970, &qword_100022E20);
  v113 = sub_10000239C(&qword_100031988, &qword_100022E38);
  sub_10000B994(v110, v112 + *(v113 + 48), &qword_100031948, &qword_100022DF8);
  sub_10000B994(v111, v112 + *(v113 + 64), &qword_100031940, &qword_100022DF0);
  sub_100002494(v109, &qword_100031940, &qword_100022DF0);
  sub_100002494(v138, &qword_100031948, &qword_100022DF8);
  sub_100002494(v137, &qword_100031970, &qword_100022E20);
  sub_100002494(v111, &qword_100031940, &qword_100022DF0);
  sub_100002494(v110, &qword_100031948, &qword_100022DF8);
  sub_100002494(v106, &qword_100031970, &qword_100022E20);
}

uint64_t sub_100007AB4()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000207A4();
  sub_100020784();

  __chkstk_darwin(v0);
  sub_100020384();
}

uint64_t sub_100007BC0(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = (a1 + *(type metadata accessor for NetworkPerformanceDiagnosticUIView() + 32));
  v4 = *v2;
  v5 = v2[1];
  sub_10000239C(&qword_1000318F8, &qword_100022CD8);
  sub_100020724();
}

__n128 sub_100007CB4@<Q0>(uint64_t a1@<X8>)
{
  sub_100020774();
  sub_100020344();
  v2 = v53;
  v3 = v54;
  v4 = v55;
  v6 = v56;
  v5 = v57;
  v7 = a1 + *(sub_10000239C(&qword_100031A68, &qword_100023058) + 36);
  sub_100020754();
  *a1 = v52;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v6;
  *(a1 + 40) = v5;
  *&v97[0] = sub_1000206B4();
  sub_10000B9FC();
  sub_1000206E4();

  sub_10000239C(&qword_100031A78, &qword_100023060);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100022B70;
  v9 = objc_opt_self();
  v10 = [v9 systemBackgroundColor];
  *(v8 + 32) = sub_1000206D4();
  v11 = [v9 systemBackgroundColor];
  *(v8 + 40) = sub_1000206D4();
  sub_100020744();
  sub_100020394();
  sub_100020324();
  v61[0] = v58;
  v61[1] = v59;
  *v62 = v60;
  *&v62[8] = v87;
  *&v62[40] = v89;
  *&v62[24] = v88;
  LOWORD(v63) = 256;
  *(&v63 + 1) = sub_100020774();
  v64 = v12;
  v27 = v58;
  v28 = v59;
  v31 = *&v62[32];
  v32 = v63;
  *&v33 = v12;
  v29 = *v62;
  v30 = *&v62[16];
  v65[0] = v58;
  v65[1] = v59;
  v66 = v60;
  v69 = v89;
  v67 = v87;
  v68 = v88;
  v70 = 256;
  v71 = *(&v63 + 1);
  v72 = v12;
  sub_10000B994(v61, v97, &qword_100031A80, &qword_100023068);
  sub_100002494(v65, &qword_100031A80, &qword_100023068);
  *v74 = v33;
  v73[0] = v58;
  v73[1] = v59;
  v73[2] = v29;
  v73[3] = v30;
  *&v74[8] = xmmword_100022B80;
  v87 = v58;
  v88 = v59;
  v89 = v29;
  v90 = v30;
  v93 = *v74;
  v73[4] = v31;
  v73[5] = v32;
  v92 = v32;
  v91 = v31;
  *&v94 = 0x8000000000000000;
  v75[0] = v58;
  v75[1] = v59;
  v76 = v33;
  v75[4] = v31;
  v75[5] = v32;
  v75[2] = v29;
  v75[3] = v30;
  v77 = xmmword_100022B80;
  sub_10000B994(v73, v97, &qword_100031A88, &qword_100023070);
  sub_100002494(v75, &qword_100031A88, &qword_100023070);
  v78[4] = v91;
  v78[5] = v92;
  v78[6] = v93;
  v78[0] = v87;
  v78[1] = v88;
  v78[2] = v89;
  v78[3] = v90;
  *&v79 = v94;
  *(&v79 + 1) = 0x3FF0000000000000;
  v49 = v93;
  v50 = v79;
  v45 = v89;
  v46 = v90;
  v47 = v91;
  v48 = v92;
  v43 = v87;
  v44 = v88;
  v81[4] = v91;
  v81[5] = v92;
  v81[6] = v93;
  v81[0] = v87;
  v81[1] = v88;
  v80 = 0;
  v51 = 0;
  v81[2] = v89;
  v81[3] = v90;
  v82 = v94;
  v83 = 0x3FF0000000000000;
  v84 = 0;
  sub_10000B994(v78, v97, &qword_100031A90, &qword_100023078);
  sub_100002494(v81, &qword_100031A90, &qword_100023078);
  v13 = sub_100020774();
  v15 = v14;
  v85[6] = v49;
  v85[7] = v50;
  v85[2] = v45;
  v85[3] = v46;
  v85[5] = v48;
  v85[4] = v47;
  v85[1] = v44;
  v85[0] = v43;
  v86 = 0;
  LOBYTE(v42) = 0;
  v40 = v49;
  v41 = v50;
  *&v36[32] = v45;
  v37 = v46;
  v38 = v47;
  v39 = v48;
  *v36 = v43;
  *&v36[16] = v44;
  v93 = v49;
  v94 = v50;
  v89 = v45;
  v90 = v46;
  v92 = v48;
  v91 = v47;
  v88 = v44;
  v87 = v43;
  *&v95 = v42;
  *(&v95 + 1) = v13;
  v96 = v14;
  v16 = a1 + *(sub_10000239C(&qword_100031A98, &qword_100023080) + 36);
  v17 = v94;
  *(v16 + 96) = v93;
  *(v16 + 112) = v17;
  *(v16 + 128) = v95;
  *(v16 + 144) = v96;
  v18 = v90;
  *(v16 + 32) = v89;
  *(v16 + 48) = v18;
  v19 = v92;
  *(v16 + 64) = v91;
  *(v16 + 80) = v19;
  v20 = v88;
  *v16 = v87;
  *(v16 + 16) = v20;
  v97[6] = v40;
  v97[7] = v41;
  v97[2] = *&v36[32];
  v97[3] = v37;
  v97[5] = v39;
  v97[4] = v38;
  v97[1] = *&v36[16];
  v97[0] = *v36;
  v98 = v42;
  v99 = v13;
  v100 = v15;
  sub_10000B994(v85, &v27, &qword_100031AA0, &qword_100023088);
  sub_10000B994(&v87, &v27, &qword_100031AA8, &qword_100023090);
  sub_100002494(v97, &qword_100031AA8, &qword_100023090);
  v33 = v49;
  v34 = v50;
  v35 = v51;
  v29 = v45;
  v30 = v46;
  v31 = v47;
  v32 = v48;
  v27 = v43;
  v28 = v44;
  sub_100002494(&v27, &qword_100031AA0, &qword_100023088);
  v21 = sub_100020774();
  v23 = v22;
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100008378(v36);
  v24 = *v36;

  v25 = a1 + *(sub_10000239C(&qword_100031948, &qword_100022DF8) + 36);
  *v25 = v24;
  result = *&v36[8];
  *(v25 + 24) = *&v36[24];
  *(v25 + 8) = result;
  *(v25 + 40) = v21;
  *(v25 + 48) = v23;
  return result;
}

uint64_t sub_100008378@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000202E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100004EA8(v6);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for ColorScheme.light(_:))
  {
    sub_10000239C(&qword_100031A78, &qword_100023060);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100022B90;
    if (qword_1000315C0 != -1)
    {
      swift_once();
    }

    v9 = qword_100032D40;
    sub_1000206D4();
    v10 = sub_1000206C4();

    *(v8 + 32) = v10;
    v11 = objc_opt_self();
    v12 = [v11 systemBackgroundColor];
    sub_1000206D4();
    v13 = sub_1000206C4();

    *(v8 + 40) = v13;
    v14 = [v11 systemBackgroundColor];
    sub_1000206D4();
  }

  else
  {
    v15 = v7;
    v16 = enum case for ColorScheme.dark(_:);
    sub_10000239C(&qword_100031A78, &qword_100023060);
    if (v15 != v16)
    {
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_100022B70;
      v29 = objc_opt_self();
      v30 = [v29 systemBackgroundColor];
      sub_1000206D4();
      v31 = sub_1000206C4();

      *(v28 + 32) = v31;
      v32 = [v29 systemBackgroundColor];
      sub_1000206D4();
      v33 = sub_1000206C4();

      *(v28 + 40) = v33;
      sub_100020744();
      sub_100020394();
      v25 = v36;
      v34 = v38;
      v35 = v37;
      result = (*(v3 + 8))(v6, v2);
      v27 = v34;
      v26 = v35;
      goto LABEL_11;
    }

    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_100022B90;
    v17 = objc_opt_self();
    v18 = [v17 systemBackgroundColor];
    sub_1000206D4();
    v19 = sub_1000206C4();

    *(v8 + 32) = v19;
    v20 = [v17 systemBackgroundColor];
    sub_1000206D4();
    v21 = sub_1000206C4();

    *(v8 + 40) = v21;
    if (qword_1000315C0 != -1)
    {
      swift_once();
    }

    v22 = qword_100032D40;
    sub_1000206D4();
  }

  v23 = sub_1000206C4();

  *(v8 + 48) = v23;
  sub_100020744();
  result = sub_100020394();
  v25 = v36;
  v26 = v37;
  v27 = v38;
LABEL_11:
  *a1 = v25;
  *(a1 + 8) = v26;
  *(a1 + 24) = v27;
  return result;
}

uint64_t sub_10000879C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v54 = *(v3 - 8);
  v4 = *(v54 + 64);
  __chkstk_darwin(v3);
  v70 = v5;
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_10000239C(&qword_1000319E8, &qword_100022EB0);
  v7 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58);
  v9 = &v53 - v8;
  v68 = sub_10000239C(&qword_1000319F0, &qword_100022EB8);
  v66 = *(v68 - 8);
  v10 = *(v66 + 64);
  __chkstk_darwin(v68);
  v61 = &v53 - v11;
  v67 = sub_10000239C(&qword_1000319F8, &qword_100022EC0);
  v65 = *(v67 - 8);
  v12 = *(v65 + 64);
  __chkstk_darwin(v67);
  v59 = &v53 - v13;
  v57 = sub_10000239C(&qword_100031A00, &qword_100022EC8);
  v14 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v64 = &v53 - v15;
  v62 = sub_10000239C(&qword_100031A08, &qword_100022ED0);
  v16 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v63 = &v53 - v17;
  sub_100020914();
  v60 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  *v9 = sub_1000204D4();
  *(v9 + 1) = 0x4000000000000000;
  v9[16] = 0;
  v18 = *(sub_10000239C(&qword_100031A10, &qword_100022ED8) + 44);
  v55 = v9;
  sub_100008F9C(a1, &v9[v18]);
  v56 = v3;
  v19 = a1 + *(v3 + 24);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v23 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v24 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  sub_10000AD50(a1, v6);
  v25 = a1;
  v26 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v27 = swift_allocObject();
  sub_10000ADDC(v6, v27 + v26);
  v28 = sub_10000BB0C(&qword_100031A18, &qword_1000319E8, &qword_100022EB0);
  v29 = v61;
  v30 = v58;
  v31 = v55;
  sub_100020694();

  sub_100002494(v31, &qword_1000319E8, &qword_100022EB0);
  v32 = (v25 + *(v56 + 36));
  v33 = *v32;
  v34 = v32[1];
  *&v71 = v33;
  *(&v71 + 1) = v34;
  sub_10000239C(&qword_1000318F8, &qword_100022CD8);
  sub_100020714();
  sub_10000AD50(v25, v6);
  v35 = swift_allocObject();
  sub_10000ADDC(v6, v35 + v26);
  *&v71 = v30;
  *(&v71 + 1) = &type metadata for String;
  *&v72 = v28;
  *(&v72 + 1) = &protocol witness table for String;
  swift_getOpaqueTypeConformance2();
  v36 = v59;
  v37 = v68;
  sub_100020694();

  (*(v66 + 8))(v29, v37);
  v38 = sub_100020584();
  sub_1000202D4();
  v40 = v39;
  v42 = v41;
  v44 = v43;
  v46 = v45;
  v47 = v64;
  (*(v65 + 32))(v64, v36, v67);
  v48 = v47 + *(v57 + 36);
  *v48 = v38;
  *(v48 + 8) = v40;
  *(v48 + 16) = v42;
  *(v48 + 24) = v44;
  *(v48 + 32) = v46;
  *(v48 + 40) = 0;
  sub_100020764();
  sub_100020344();
  v49 = v63;
  sub_10000B92C(v47, v63, &qword_100031A00, &qword_100022EC8);
  v50 = (v49 + *(v62 + 36));
  v51 = v72;
  *v50 = v71;
  v50[1] = v51;
  v50[2] = v73;
  sub_10000B92C(v49, v69, &qword_100031A08, &qword_100022ED0);
}

uint64_t sub_100008F9C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v137 = a2;
  v131 = sub_10000239C(&qword_100031A20, &qword_100022FB8);
  v3 = (*(*(v131 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (__chkstk_darwin)();
  v134 = &v117 - v4;
  v133 = sub_10000239C(&qword_100031A28, &qword_100022FC0);
  v5 = *(*(v133 - 8) + 64);
  v6 = (__chkstk_darwin)();
  v136 = &v117 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v132 = &v117 - v9;
  __chkstk_darwin(v8);
  v146 = &v117 - v10;
  v129 = sub_100020414();
  v128 = *(v129 - 8);
  v11 = *(v128 + 64);
  __chkstk_darwin(v129);
  v127 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_10000239C(&qword_100031A30, &qword_100022FC8);
  v13 = *(*(v125 - 8) + 64);
  v14 = __chkstk_darwin(v125);
  v145 = &v117 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v126 = &v117 - v17;
  __chkstk_darwin(v16);
  v147 = &v117 - v18;
  v19 = sub_10000239C(&qword_1000315E8, &qword_100022FD0);
  v20 = (*(*(v19 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin(v19 - 8);
  v22 = &v117 - v21;
  sub_100020914();
  v135 = sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v148 = sub_100005348();
  v149 = v23;
  v140 = sub_100002440();
  v24 = sub_100020634();
  v26 = v25;
  v28 = v27;
  sub_1000205C4();
  v29 = sub_1000205A4();
  v30 = *(v29 - 8);
  v139 = *(v30 + 56);
  v139(v22, 1, 1, v29);
  sub_1000205D4();
  sub_100002494(v22, &qword_1000315E8, &qword_100022FD0);
  v31 = sub_100020614();
  v141 = v32;
  v142 = v31;
  v130 = v33;
  v143 = v34;

  sub_1000024F4(v24, v26, v28 & 1);

  v138 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v35 = *(v138 + 36);
  v144 = a1;
  v36 = (a1 + v35);
  v37 = *v36;
  v38 = v36[1];
  v148 = v37;
  v118 = v38;
  v149 = v38;
  v119 = sub_10000239C(&qword_1000318F8, &qword_100022CD8);
  sub_100020714();
  v148 = sub_100005270(v151);
  v149 = v39;
  v40 = sub_100020634();
  v42 = v41;
  v44 = v43;
  sub_1000205C4();
  v45 = *(v30 + 104);
  v121 = enum case for Font.Design.rounded(_:);
  v122 = v30 + 104;
  v120 = v45;
  v45(v22);
  v124 = v29;
  v123 = v30 + 56;
  v139(v22, 0, 1, v29);
  sub_1000205D4();
  sub_100002494(v22, &qword_1000315E8, &qword_100022FD0);
  v46 = sub_100020614();
  v48 = v47;
  LOBYTE(v29) = v49;

  sub_1000024F4(v40, v42, v44 & 1);

  v50 = sub_100020624();
  v52 = v51;
  LOBYTE(v40) = v53;
  sub_1000024F4(v46, v48, v29 & 1);

  v54 = sub_100020604();
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v52;
  v62 = v144;
  sub_1000024F4(v50, v61, v40 & 1);

  if (sub_1000050A8())
  {
    v63 = v127;
    sub_100020404();
  }

  else
  {
    v148 = v37;
    v149 = v118;
    sub_100020714();
    v64 = (v62 + *(v138 + 40));
    v65 = *v64;
    v66 = v64[1];
    v148 = v65;
    v149 = v66;
    sub_100020714();
    v63 = v127;
    sub_1000203F4();
  }

  KeyPath = swift_getKeyPath();
  v68 = v126;
  v69 = &v126[*(v125 + 36)];
  v70 = sub_10000239C(&qword_100031A38, &qword_100023008);
  (*(v128 + 32))(v69 + *(v70 + 28), v63, v129);
  *v69 = KeyPath;
  *v68 = v54;
  *(v68 + 8) = v56;
  *(v68 + 16) = v58 & 1;
  *(v68 + 24) = v60;
  sub_10000B79C(v68, v147);
  v148 = 1936745037;
  v149 = 0xE400000000000000;
  v71 = sub_100020634();
  v73 = v72;
  v75 = v74;
  sub_1000205C4();
  v76 = v124;
  v120(v22, v121, v124);
  v139(v22, 0, 1, v76);
  sub_1000205D4();
  sub_100002494(v22, &qword_1000315E8, &qword_100022FD0);
  v77 = sub_100020614();
  v79 = v78;
  v81 = v80;

  sub_1000024F4(v71, v73, v75 & 1);

  if (qword_1000315C8 != -1)
  {
    swift_once();
  }

  v82 = qword_100032D48;
  v148 = sub_1000206D4();
  v128 = sub_1000205F4();
  v139 = v83;
  LODWORD(v129) = v84;
  v140 = v85;
  sub_1000024F4(v77, v79, v81 & 1);

  v86 = sub_1000206F4();
  sub_10000B80C();
  v87 = sub_1000205E4();
  v88 = swift_getKeyPath();
  v148 = v86;
  v149 = v88;
  v150 = v87;
  sub_1000205B4();
  sub_10000239C(&qword_100031A40, &qword_100023040);
  sub_10000B874();
  v89 = v134;
  sub_100020664();

  v90 = v138;
  if (qword_1000315C0 != -1)
  {
    swift_once();
  }

  v91 = qword_100032D40;
  *(v89 + *(v131 + 36)) = sub_1000206D4();
  v92 = (v144 + *(v90 + 24));
  v93 = *v92;
  v94 = v92[1];
  v95 = *(v92 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v96 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  if (v148)
  {
    v97 = 3.14159265;
  }

  else
  {
    v97 = 0.0;
  }

  sub_1000207D4();
  v99 = v98;
  v101 = v100;
  v102 = v132;
  sub_10000B92C(v89, v132, &qword_100031A20, &qword_100022FB8);
  v103 = v102 + *(v133 + 36);
  *v103 = v97;
  *(v103 + 8) = v99;
  *(v103 + 16) = v101;
  v104 = v146;
  sub_10000B92C(v102, v146, &qword_100031A28, &qword_100022FC0);
  v105 = v130 & 1;
  LOBYTE(v148) = v130 & 1;
  v106 = v145;
  sub_10000B994(v147, v145, &qword_100031A30, &qword_100022FC8);
  v107 = v136;
  sub_10000B994(v104, v136, &qword_100031A28, &qword_100022FC0);
  v108 = v137;
  v109 = v141;
  v110 = v142;
  *v137 = v142;
  v108[1] = v109;
  *(v108 + 16) = v105;
  v108[3] = v143;
  v111 = sub_10000239C(&qword_100031A60, &qword_100023050);
  sub_10000B994(v106, v108 + v111[12], &qword_100031A30, &qword_100022FC8);
  v112 = v108 + v111[16];
  v113 = v128;
  v114 = v139;
  *v112 = v128;
  *(v112 + 1) = v114;
  v115 = v129 & 1;
  v112[16] = v129 & 1;
  *(v112 + 3) = v140;
  sub_10000B994(v107, v108 + v111[20], &qword_100031A28, &qword_100022FC0);
  sub_100002504(v110, v109, v105);

  sub_100002504(v113, v114, v115);

  sub_100002494(v146, &qword_100031A28, &qword_100022FC0);
  sub_100002494(v147, &qword_100031A30, &qword_100022FC8);
  sub_100002494(v107, &qword_100031A28, &qword_100022FC0);
  sub_1000024F4(v113, v114, v115);

  sub_100002494(v145, &qword_100031A30, &qword_100022FC8);
  sub_1000024F4(v142, v141, v148);
}

uint64_t sub_100009CFC()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  sub_1000207B4();
  sub_100020384();
}

uint64_t sub_100009DEC(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v3 = (a1 + *(v2 + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = *(v3 + 16);
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
  v7 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v8 = sub_100020304();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  sub_10000B034(v11, v13);

  v9 = (a1 + *(v2 + 36));
  v12 = *v9;
  v14 = v9[1];
  sub_10000239C(&qword_1000318F8, &qword_100022CD8);
  sub_100020724();
}

uint64_t sub_10000A070(uint64_t a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v3 = (a1 + *(v2 + 36));
  v6 = *v3;
  v8 = v3[1];
  sub_10000239C(&qword_1000318F8, &qword_100022CD8);
  sub_100020714();
  v4 = (a1 + *(v2 + 40));
  v7 = *v4;
  v9 = v4[1];
  sub_100020724();
}

double sub_10000A17C@<D0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  sub_10000239C(&qword_100031778, &qword_100022BD0);
  swift_storeEnumTagMultiPayload();
  v2 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v3 = a1 + v2[5];
  *v3 = swift_getKeyPath();
  v3[8] = 0;
  v4 = a1 + v2[6];
  *v4 = sub_100005200;
  *(v4 + 1) = 0;
  v4[16] = 0;
  v5 = a1 + v2[7];
  *v5 = sub_100005238;
  *(v5 + 1) = 0;
  v5[16] = 0;
  v6 = (a1 + v2[8]);
  sub_100020704();
  *v6 = v10;
  *(v6 + 1) = v11;
  v7 = (a1 + v2[9]);
  sub_100020704();
  *v7 = v10;
  *(v7 + 1) = v11;
  v8 = (a1 + v2[10]);
  sub_100020704();
  result = v10;
  *v8 = v10;
  *(v8 + 1) = v11;
  return result;
}

uint64_t sub_10000A2D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = a2;
  v13 = *(a1 - 8);
  v3 = *(v13 + 64);
  __chkstk_darwin(a1 - 8);
  v14 = v2;
  sub_10000239C(&qword_100031868, &qword_100022C88);
  v4 = sub_100002678(&qword_100031870, &qword_100022C90);
  v5 = sub_100002678(&qword_100031878, &qword_100022C98);
  v6 = sub_10000AAC8();
  sub_100002678(&qword_1000318D8, &qword_100022CC8);
  sub_10000BB0C(&qword_1000318E0, &qword_1000318D8, &qword_100022CC8);
  v15 = v4;
  v16 = v5;
  v17 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  v7 = v12;
  sub_1000203A4();
  sub_10000AD50(v2, &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v9 = swift_allocObject();
  sub_10000ADDC(&v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  result = sub_10000239C(&qword_1000318E8, &qword_100022CD0);
  v11 = (v7 + *(result + 36));
  *v11 = sub_10000AE40;
  v11[1] = v9;
  v11[2] = 0;
  v11[3] = 0;
  return result;
}

uint64_t type metadata accessor for NetworkPerformanceDiagnosticUIView()
{
  result = qword_1000317E0;
  if (!qword_1000317E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000A5C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100020444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_10000A604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000239C(&qword_100031780, &qword_100022C08);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_10000A6F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_10000239C(&qword_100031780, &qword_100022C08);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = a2;
  }

  return result;
}

void sub_10000A7B8()
{
  sub_10000A8D4();
  if (v0 <= 0x3F)
  {
    sub_10000AA54(319, &qword_1000317F8, &type metadata for Bool, &type metadata accessor for Environment);
    if (v1 <= 0x3F)
    {
      sub_10000A92C();
      if (v2 <= 0x3F)
      {
        sub_10000A9C0();
        if (v3 <= 0x3F)
        {
          sub_10000AA54(319, &unk_100031820, &type metadata for Double, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_10000A8D4()
{
  if (!qword_1000317F0)
  {
    sub_1000202E4();
    v0 = sub_1000202F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1000317F0);
    }
  }
}

void sub_10000A92C()
{
  if (!qword_100031800)
  {
    type metadata accessor for NetworkPerformanceDiagnosticViewModel();
    sub_10000B32C(&qword_100031808, type metadata accessor for NetworkPerformanceDiagnosticViewModel);
    v0 = sub_100020314();
    if (!v1)
    {
      atomic_store(v0, &qword_100031800);
    }
  }
}

void sub_10000A9C0()
{
  if (!qword_100031810)
  {
    type metadata accessor for NetworkMonitorManager();
    sub_10000B32C(&qword_100031818, type metadata accessor for NetworkMonitorManager);
    v0 = sub_100020314();
    if (!v1)
    {
      atomic_store(v0, &qword_100031810);
    }
  }
}

void sub_10000AA54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_10000AAC8()
{
  result = qword_100031880;
  if (!qword_100031880)
  {
    sub_100002678(&qword_100031870, &qword_100022C90);
    sub_10000AB54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031880);
  }

  return result;
}

unint64_t sub_10000AB54()
{
  result = qword_100031888;
  if (!qword_100031888)
  {
    sub_100002678(&qword_100031890, &qword_100022CA0);
    sub_10000AC0C();
    sub_10000BB0C(&qword_1000318C8, &qword_1000318D0, &qword_100022CC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031888);
  }

  return result;
}

unint64_t sub_10000AC0C()
{
  result = qword_100031898;
  if (!qword_100031898)
  {
    sub_100002678(&qword_1000318A0, &qword_100022CA8);
    sub_10000AC98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031898);
  }

  return result;
}

unint64_t sub_10000AC98()
{
  result = qword_1000318A8;
  if (!qword_1000318A8)
  {
    sub_100002678(&qword_1000318B0, &qword_100022CB0);
    sub_10000BB0C(&qword_1000318B8, &qword_1000318C0, &qword_100022CB8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000318A8);
  }

  return result;
}

uint64_t sub_10000AD50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000ADB8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_10000ADC4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return _objc_release_x1();
  }

  else
  {
  }
}

uint64_t sub_10000ADDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10000AE58()
{
  result = qword_1000318F0;
  if (!qword_1000318F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1000318F0);
  }

  return result;
}

uint64_t sub_10000AEDC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for NetworkPerformanceDiagnosticUIView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000069A4(v4, a1);
}

uint64_t sub_10000AF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

BOOL sub_10000B034(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_100020AA4();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_10000B12C()
{
  result = qword_1000319A8;
  if (!qword_1000319A8)
  {
    sub_100002678(&qword_100031950, &qword_100022E00);
    sub_10000B1B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000319A8);
  }

  return result;
}

unint64_t sub_10000B1B8()
{
  result = qword_1000319B0;
  if (!qword_1000319B0)
  {
    sub_100002678(&qword_100031998, &qword_100022E48);
    sub_10000B244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000319B0);
  }

  return result;
}

unint64_t sub_10000B244()
{
  result = qword_1000319B8;
  if (!qword_1000319B8)
  {
    sub_100002678(&qword_100031990, &qword_100022E40);
    sub_10000B32C(&qword_1000319C0, &type metadata accessor for RoundedRectangle);
    sub_10000BB0C(&qword_1000319C8, &qword_1000319D0, &qword_100022E50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000319B8);
  }

  return result;
}

uint64_t sub_10000B32C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000B488()
{
  v1 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  sub_10000239C(&qword_100031778, &qword_100022BD0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1000202E4();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  sub_10000ADB8(*(v5 + v1[5]), *(v5 + v1[5] + 8));
  sub_10000ADC4(*(v5 + v1[6]), *(v5 + v1[6] + 8), *(v5 + v1[6] + 16));
  v8 = v5 + v1[7];
  v9 = *v8;
  v10 = *(v8 + 1);
  v11 = v8[16];
  sub_10000ADD4();
  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = *(v5 + v1[10] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10000B620(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for NetworkPerformanceDiagnosticUIView() - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

_BYTE *sub_10000B6B8@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_10000B79C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000239C(&qword_100031A30, &qword_100022FC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10000B81C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100020454();
  *a1 = result;
  return result;
}

uint64_t sub_10000B848(uint64_t *a1)
{
  v1 = *a1;

  return sub_100020464();
}

unint64_t sub_10000B874()
{
  result = qword_100031A48;
  if (!qword_100031A48)
  {
    sub_100002678(&qword_100031A40, &qword_100023040);
    sub_10000BB0C(&qword_100031A50, &qword_100031A58, &qword_100023048);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031A48);
  }

  return result;
}

uint64_t sub_10000B92C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000239C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_10000B994(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000239C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_10000B9FC()
{
  result = qword_100031A70;
  if (!qword_100031A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031A70);
  }

  return result;
}

unint64_t sub_10000BA54()
{
  result = qword_100031AB0;
  if (!qword_100031AB0)
  {
    sub_100002678(&qword_1000318E8, &qword_100022CD0);
    sub_10000BB0C(&qword_100031AB8, &qword_100031AC0, qword_100023098);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031AB0);
  }

  return result;
}

uint64_t sub_10000BB0C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002678(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000BCE4(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = (&v15 - v9);
  v11 = type metadata accessor for NetworkPerformanceDiagnosticViewController();
  v15.receiver = v2;
  v15.super_class = v11;
  objc_msgSendSuper2(&v15, "viewDidAppear:", a1 & 1);
  if (qword_1000315D0 != -1)
  {
    swift_once();
  }

  swift_unknownObjectWeakAssign();
  sub_10000A17C(v10);
  sub_10000AD50(v10, v8);
  v12 = objc_allocWithZone(sub_10000239C(&qword_100031BD8, qword_100023160));
  v13 = sub_1000204E4();
  [v13 setModalInPresentation:1];
  [v2 presentViewController:v13 animated:1 completion:0];

  return sub_10000D120(v10);
}

uint64_t sub_10000C12C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_100020914();
  *(v4 + 24) = sub_100020904();
  v6 = sub_1000208F4();

  return _swift_task_switch(sub_10000C1C4, v6, v5);
}

uint64_t sub_10000C1C4()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = [v2 result];
  sub_10000D0D8(0, &qword_100031BD0, NSNumber_ptr);
  isa = sub_1000209F4(-900).super.super.isa;
  [v3 setStatusCode:isa];

  [v2 setFinished:1];
  v5 = v0[1];

  return v5();
}

uint64_t sub_10000C3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  sub_100020914();
  v6[5] = sub_100020904();
  v8 = sub_1000208F4();

  return _swift_task_switch(sub_10000C46C, v8, v7);
}

uint64_t sub_10000C46C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v0[3];

  v5 = [v3 result];
  [v5 setStatusCode:v4];

  v6 = [v3 result];
  v7 = v0[4];
  if (v2)
  {
    v8 = v0[4];
  }

  else
  {
    v8 = sub_10001AB58(&_swiftEmptyArrayStorage);
  }

  v9 = v0[2];

  sub_10000C5C8(v8);

  isa = sub_100020814().super.isa;

  [v6 setData:isa];

  [v9 setFinished:1];
  v11 = v0[1];

  return v11();
}

uint64_t sub_10000C5C8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000239C(&qword_100031BC0, &qword_100023130);
    v2 = sub_100020AF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
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
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + 8 * v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    v16;
    swift_dynamicCast();
    sub_10000D0D8(0, &unk_100032190, NSObject_ptr);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_10000CEE0(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_10000CEE0(v31, v32);
    result = sub_100020A64(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_10000CEE0(v32, (v2[7] + 32 * v10));
    ++v2[2];
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

unint64_t sub_10000C898(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000239C(&qword_100031BC8, &qword_100023138);
    v2 = sub_100020AF4();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v17 = *v16;
        v18 = v16[1];
        sub_10000CE84(*(a1 + 56) + 32 * v15, v31);
        *&v30 = v17;
        *(&v30 + 1) = v18;
        v28[2] = v30;
        v29[0] = v31[0];
        v29[1] = v31[1];
        v19 = v30;
        sub_10000CEE0(v29, &v24);

        sub_10000239C(&unk_1000321B0, &unk_100023140);
        swift_dynamicCast();
        sub_10000CEE0(&v25, v27);
        sub_10000CEE0(v27, v28);
        sub_10000CEE0(v28, &v26);
        result = sub_10001A4E8(v19, *(&v19 + 1));
        if (v20)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v19;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          sub_10000CE38(v12);
          result = sub_10000CEE0(&v26, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v19;
          result = sub_10000CEE0(&v26, (v2[7] + 32 * result));
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id sub_10000CD30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkPerformanceDiagnosticViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000CD98()
{
  type metadata accessor for NetworkPerformanceDiagnosticViewControllerManager();
  v0 = swift_allocObject();
  result = swift_unknownObjectWeakInit();
  qword_100032D50 = v0;
  return result;
}

uint64_t sub_10000CDDC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10000CE38(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_10000CE84(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_10000CEE0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_10000CEF0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000CF30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CFE4;

  return sub_10000C12C(a1, v4, v5, v6);
}

uint64_t sub_10000CFE4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10000D0D8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_10000D120(uint64_t a1)
{
  v2 = type metadata accessor for NetworkPerformanceDiagnosticUIView();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000D1D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();
}

uint64_t sub_10000D25C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  return v1;
}

uint64_t sub_10000D2C8()
{
  v1 = v0;
  v2 = sub_10000239C(&qword_100031EC8, &qword_1000233D0);
  v35 = *(v2 - 8);
  v36 = v2;
  v3 = *(v35 + 64);
  __chkstk_darwin(v2);
  v34 = &v32 - v4;
  v5 = sub_1000201D4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v11 = &v32 - v10;
  v12 = sub_10000239C(&qword_100031EC0, &qword_100023BC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v32 - v15;
  v17 = sub_100020244();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_100020234();
  v20 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConnectedToWiFi;
  v42 = 0;
  sub_100020114();
  v21 = *(v13 + 32);
  v21(v0 + v20, v16, v12);
  v22 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConnectedToCellular;
  v41 = 0;
  sub_100020114();
  v21(v0 + v22, v16, v12);
  v23 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConnectedToWiredEthernet;
  v40 = 0;
  sub_100020114();
  v21(v0 + v23, v16, v12);
  v24 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConstrainedConnection;
  v39 = 0;
  sub_100020114();
  v21(v0 + v24, v16, v12);
  v25 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isExpensiveConnection;
  v38 = 0;
  sub_100020114();
  v21(v0 + v25, v16, v12);
  v32 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__primaryInterface;
  (*(v6 + 104))(v11, enum case for NWInterface.InterfaceType.other(_:), v5);
  (*(v6 + 16))(v33, v11, v5);
  v26 = v34;
  sub_100020114();
  (*(v6 + 8))(v11, v5);
  (*(v35 + 32))(v1 + v32, v26, v36);
  v27 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isNetworkReachable;
  v37 = 0;
  sub_100020114();
  v21(v1 + v27, v16, v12);
  v28 = (v1 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager_networkReachableHandler);
  *v28 = 0;
  v28[1] = 0;
  v29 = (v1 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager_networkNotReachableHandler);
  *v29 = 0;
  v29[1] = 0;
  v30 = *(v1 + 16);
  swift_allocObject();
  swift_weakInit();

  sub_100020204();

  sub_10000ED38();
  return v1;
}

uint64_t sub_10000D758(uint64_t a1, uint64_t a2)
{
  v32 = a2;
  v34 = sub_1000207E4();
  v37 = *(v34 - 8);
  v3 = *(v37 + 64);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100020804();
  v35 = *(v5 - 8);
  v36 = v5;
  v6 = *(v35 + 64);
  __chkstk_darwin(v5);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1000202C4();
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v10 = sub_1000202A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v29 - v16;
  sub_1000202B4();
  (*(v11 + 104))(v15, enum case for NWPath.Status.satisfied(_:), v10);
  v18 = sub_100020294();
  v19 = *(v11 + 8);
  v19(v15, v10);
  v19(v17, v10);
  sub_10000F08C();
  v20 = sub_1000209C4();
  v21 = v30;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v30);
  v22 = (*(v8 + 80) + 25) & ~*(v8 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = v32;
  *(v23 + 24) = v18 & 1;
  (*(v8 + 32))(v23 + v22, &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v21);
  aBlock[4] = sub_10000F778;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C22C;
  aBlock[3] = &unk_10002D720;
  v24 = _Block_copy(aBlock);

  v25 = v31;
  sub_1000207F4();
  v38 = &_swiftEmptyArrayStorage;
  sub_10000F7F8(&qword_100031ED0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10000239C(&unk_100032170, &qword_100023610);
  sub_10000F840(&qword_100031ED8, &unk_100032170, &qword_100023610);
  v27 = v33;
  v26 = v34;
  sub_100020A54();
  sub_1000209D4();
  _Block_release(v24);

  (*(v37 + 8))(v27, v26);
  (*(v35 + 8))(v25, v36);
}

uint64_t sub_10000DC14(uint64_t a1, int a2, uint64_t a3)
{
  v63 = sub_1000201D4();
  v6 = *(v63 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v63);
  v61 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v62 = v45 - v10;
  v64 = sub_1000201F4();
  v60 = *(v64 - 8);
  v11 = *(v60 + 64);
  v12 = __chkstk_darwin(v64);
  v57 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v59 = v45 - v14;
  v15 = sub_100020914();
  v16 = sub_100020904();
  v58 = v15;
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v69 = a2 & 1;
    sub_100020134();
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    if (a2)
    {
      v45[1] = Strong;
      v46 = a2;
      v47 = v16;
      v48 = a1;
      v49 = a3;
      result = sub_100020284();
      v19 = result;
      v20 = *(result + 16);
      v50 = v6;
      if (v20)
      {
        v21 = 0;
        v56 = result + ((*(v60 + 80) + 32) & ~*(v60 + 80));
        v55 = v60 + 16;
        LODWORD(v54) = enum case for NWInterface.InterfaceType.wifi(_:);
        v53 = (v6 + 104);
        v22 = (v6 + 8);
        v52 = (v60 + 8);
        v51 = v20 - 1;
        v23 = v61;
        while (v21 < *(v19 + 16))
        {
          (*(v60 + 16))(v59, v56 + *(v60 + 72) * v21, v64);
          sub_100020904();
          sub_1000208F4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v24 = v62;
          v25 = v59;
          sub_1000201E4();
          v26 = v63;
          (*v53)(v23, v54, v63);
          v27 = sub_1000201C4();
          v28 = *v22;
          (*v22)(v23, v26);
          v28(v24, v26);
          (*v52)(v25, v64);

          if ((v27 & 1) == 0)
          {
            v29 = v51 == v21++;
            if (!v29)
            {
              continue;
            }
          }

          goto LABEL_18;
        }

        __break(1u);
        goto LABEL_49;
      }

      v27 = 0;
LABEL_18:

      v6 = v50;
      a3 = v49;
      a1 = v48;
      v16 = v47;
      a2 = v46;
    }

    else
    {
      v27 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v68 = v27 & 1;
    sub_100020134();
  }

  swift_beginAccess();
  v30 = swift_weakLoadStrong();
  if (v30)
  {
    if (a2)
    {
      v51 = v30;
      v46 = a2;
      v47 = v16;
      v48 = a1;
      v49 = a3;
      result = sub_100020284();
      v31 = result;
      v32 = *(result + 16);
      v50 = v6;
      if (v32)
      {
        v33 = 0;
        v59 = (result + ((*(v60 + 80) + 32) & ~*(v60 + 80)));
        v56 = v60 + 16;
        LODWORD(v55) = enum case for NWInterface.InterfaceType.cellular(_:);
        v54 = (v6 + 104);
        v34 = (v6 + 8);
        v53 = (v60 + 8);
        v52 = (v32 - 1);
        while (v33 < *(v31 + 16))
        {
          (*(v60 + 16))(v57, &v59[*(v60 + 72) * v33], v64);
          sub_100020904();
          sub_1000208F4();
          if ((swift_task_isCurrentExecutor() & 1) == 0)
          {
            swift_task_reportUnexpectedExecutor();
          }

          v35 = v62;
          v36 = v57;
          sub_1000201E4();
          v37 = v61;
          v38 = v63;
          (*v54)(v61, v55, v63);
          v39 = sub_1000201C4();
          v40 = *v34;
          (*v34)(v37, v38);
          v40(v35, v38);
          (*v53)(v36, v64);

          if ((v39 & 1) == 0)
          {
            v29 = v52 == v33++;
            if (!v29)
            {
              continue;
            }
          }

          goto LABEL_33;
        }

LABEL_49:
        __break(1u);
        return result;
      }

      v39 = 0;
LABEL_33:

      v6 = v50;
      LOBYTE(a2) = v46;
    }

    else
    {
      v39 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v67 = v39 & 1;
    sub_100020134();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v41 = sub_100020264();
    }

    else
    {
      v41 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v66 = v41 & 1;
    sub_100020134();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (a2)
    {
      v42 = sub_100020254();
    }

    else
    {
      v42 = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    v65 = v42 & 1;
    sub_100020134();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v43 = v62;
    sub_10000E598(v62);
    swift_getKeyPath();
    swift_getKeyPath();
    v44 = v63;
    (*(v6 + 16))(v61, v43, v63);
    sub_100020134();
    (*(v6 + 8))(v43, v44);
  }
}

uint64_t sub_10000E598@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1000201D4();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for NWInterface.InterfaceType.wifi(_:);
  v8 = v3[13];
  v8(v6, enum case for NWInterface.InterfaceType.wifi(_:), v2);
  v9 = sub_100020274();
  v10 = v3[1];
  v10(v6, v2);
  if ((v9 & 1) == 0)
  {
    v7 = enum case for NWInterface.InterfaceType.cellular(_:);
    v8(v6, enum case for NWInterface.InterfaceType.cellular(_:), v2);
    v11 = sub_100020274();
    v10(v6, v2);
    if ((v11 & 1) == 0)
    {
      LODWORD(v7) = enum case for NWInterface.InterfaceType.loopback(_:);
      v8(v6, enum case for NWInterface.InterfaceType.loopback(_:), v2);
      v12 = sub_100020274();
      v10(v6, v2);
      if (v12)
      {
        v7 = v7;
      }

      else
      {
        v7 = enum case for NWInterface.InterfaceType.other(_:);
      }
    }
  }

  return v8(a1, v7, v2);
}

uint64_t sub_10000E760()
{
  v1 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v17 - v3;
  v5 = sub_100020944();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  sub_10000FBD8(0, 0, v4, &unk_1000233C0, v7);

  v8 = *(v0 + 16);

  v9 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConnectedToWiFi;
  v10 = sub_10000239C(&qword_100031EC0, &qword_100023BC0);
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v9, v10);
  v11(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConnectedToCellular, v10);
  v11(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConnectedToWiredEthernet, v10);
  v11(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isConstrainedConnection, v10);
  v11(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isExpensiveConnection, v10);
  v12 = OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__primaryInterface;
  v13 = sub_10000239C(&qword_100031EC8, &qword_1000233D0);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);
  v11(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager__isNetworkReachable, v10);
  v14 = *(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager_networkReachableHandler + 8);
  sub_10000F69C(*(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager_networkReachableHandler));
  v15 = *(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager_networkNotReachableHandler + 8);
  sub_10000F69C(*(v0 + OBJC_IVAR____TtC15Diagnostic_600921NetworkMonitorManager_networkNotReachableHandler));
  return v0;
}

uint64_t sub_10000E9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10000EA04, 0, 0);
}

uint64_t sub_10000EA04()
{
  v1 = *(v0 + 48);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    sub_100020914();
    *(v0 + 64) = sub_100020904();
    v4 = sub_1000208F4();

    return _swift_task_switch(sub_10000EAFC, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10000EAFC()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  v3 = *(v2 + 16);
  sub_100020224();

  return _swift_task_switch(sub_10000EB74, 0, 0);
}

uint64_t sub_10000EB9C()
{
  sub_10000E760();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for NetworkMonitorManager()
{
  result = qword_100031C40;
  if (!qword_100031C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10000EC48()
{
  sub_10000EF98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    sub_10000EFE8();
    if (v4 <= 0x3F)
    {
      v5 = *(v3 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10000ED38()
{
  v11 = sub_1000209B4();
  v0 = *(v11 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v11);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1000209A4();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = sub_100020804();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v10 = sub_10000F08C();
  sub_1000207F4();
  v13 = &_swiftEmptyArrayStorage;
  sub_10000F7F8(&qword_100031EA8, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10000239C(&qword_100031EB0, &qword_1000231F8);
  sub_10000F840(&qword_100031EB8, &qword_100031EB0, &qword_1000231F8);
  sub_100020A54();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v11);
  v8 = sub_1000209E4();
  v9 = *(v12 + 16);
  sub_100020214();
}

void sub_10000EF98()
{
  if (!qword_100032150)
  {
    v0 = sub_100020144();
    if (!v1)
    {
      atomic_store(v0, &qword_100032150);
    }
  }
}

void sub_10000EFE8()
{
  if (!qword_100031C50)
  {
    sub_1000201D4();
    v0 = sub_100020144();
    if (!v1)
    {
      atomic_store(v0, &qword_100031C50);
    }
  }
}

uint64_t sub_10000F04C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworkMonitorManager();
  result = sub_1000200E4();
  *a1 = result;
  return result;
}

unint64_t sub_10000F08C()
{
  result = qword_100032160;
  if (!qword_100032160)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100032160);
  }

  return result;
}

uint64_t sub_10000F0D8(uint64_t *a1)
{
  v1 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();
}

uint64_t sub_10000F154(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1000201D4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v12(v9, v11, v4);

  sub_100020134();
  return (*(v5 + 8))(v11, v4);
}

uint64_t sub_10000F2D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  *a2 = v5;
  return result;
}

uint64_t sub_10000F390(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_100020134();
}

uint64_t sub_10000F570()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10000F5A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10000F5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000CFE4;

  return sub_10000E9E4(a1, v4, v5, v6);
}

uint64_t sub_10000F69C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10000F6B4()
{
  v1 = sub_1000202C4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10000F778()
{
  v1 = *(sub_1000202C4() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 25) & ~*(v1 + 80));

  return sub_10000DC14(v2, v3, v4);
}

uint64_t sub_10000F7E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000F7F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10000F840(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002678(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10000F894(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_10000F8A8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10000F8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpeedErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SpeedErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000FAB8()
{
  result = qword_100031EE0;
  if (!qword_100031EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031EE0);
  }

  return result;
}

Swift::Int sub_10000FB20()
{
  v1 = *v0;
  sub_100020B64();
  sub_100020B74(v1);
  return sub_100020B84();
}

Swift::Int sub_10000FB94()
{
  v1 = *v0;
  sub_100020B64();
  sub_100020B74(v1);
  return sub_100020B84();
}

uint64_t sub_10000FBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001B19C(a3, v27 - v11);
  v13 = sub_100020944();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002494(v12, &qword_1000321A0, &qword_1000233B0);
  }

  else
  {
    sub_100020934();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000208F4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000208A4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      sub_10000239C(&qword_1000322E8, &qword_100023C10);
      v23 = (v20 | v18);
      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v24 = swift_task_create();

      sub_100002494(a3, &qword_1000321A0, &qword_1000233B0);

      return v24;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002494(a3, &qword_1000321A0, &qword_1000233B0);
  v26 = swift_allocObject();
  *(v26 + 16) = a4;
  *(v26 + 24) = a5;
  sub_10000239C(&qword_1000322E8, &qword_100023C10);
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_10000FEDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_10001B19C(a3, v27 - v11);
  v13 = sub_100020944();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_100002494(v12, &qword_1000321A0, &qword_1000233B0);
  }

  else
  {
    sub_100020934();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1000208F4();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_1000208A4() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_100002494(a3, &qword_1000321A0, &qword_1000233B0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002494(a3, &qword_1000321A0, &qword_1000233B0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

uint64_t sub_1000101CC()
{
  type metadata accessor for ThrottleUpdates();
  v0 = swift_allocObject();
  v1 = sub_10000239C(&qword_1000321D8, &qword_100023A00);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 16) = sub_100020104();
  v4 = *(v1 + 48);
  v5 = *(v1 + 52);
  swift_allocObject();
  result = sub_100020104();
  *(v0 + 24) = result;
  qword_100032D68 = v0;
  return result;
}

uint64_t sub_1000102F8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  return v1;
}

uint64_t sub_10001036C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  return v1;
}

uint64_t sub_100010430()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  return v1;
}

uint64_t sub_1000104C0()
{
  sub_100020914();
  *(v0 + 24) = sub_100020904();
  v2 = sub_1000208F4();

  return _swift_task_switch(sub_100010554, v2, v1);
}

uint64_t sub_100010554()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100012988();
  v3 = v0[1];

  return v3();
}

double sub_1000105E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  return v1;
}

double sub_10001064C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_100010734()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  return v1;
}

uint64_t sub_1000107C8()
{
  v14 = sub_10000239C(&qword_100032210, &qword_100023B40);
  v16 = *(v14 - 8);
  v1 = *(v16 + 64);
  __chkstk_darwin(v14);
  v3 = &v12 - v2;
  v13 = sub_10000239C(&qword_100032218, &qword_100023B48);
  v15 = *(v13 - 8);
  v4 = *(v15 + 64);
  __chkstk_darwin(v13);
  v6 = &v12 - v5;
  v18 = *(*(v0 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_throttleUpdatesManager) + 16);
  sub_10000239C(&qword_1000321D8, &qword_100023A00);
  sub_10000BB0C(&qword_100032220, &qword_1000321D8, &qword_100023A00);
  v18 = sub_100020174();
  v12 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_throttleDuration;
  v7 = [objc_opt_self() mainRunLoop];
  v17 = v7;
  sub_10000239C(&qword_100032228, &qword_100023B50);
  sub_10000D0D8(0, &qword_100032230, NSRunLoop_ptr);
  sub_10000BB0C(&qword_100032238, &qword_100032228, &qword_100023B50);
  sub_10001BF3C(&qword_100032240, &qword_100032230, NSRunLoop_ptr);
  sub_100020194();

  sub_10000BB0C(&qword_100032248, &qword_100032210, &qword_100023B40);
  sub_10001BF3C(&qword_100032250, &qword_100032258, NPTSpeedMetric_ptr);
  v8 = v14;
  sub_1000201A4();
  (*(v16 + 8))(v3, v8);
  sub_10000BB0C(&qword_100032260, &qword_100032218, &qword_100023B48);
  v9 = v13;
  v10 = sub_100020154();
  (*(v15 + 8))(v6, v9);
  return v10;
}

uint64_t sub_100010B88()
{
  v14 = sub_10000239C(&qword_100032210, &qword_100023B40);
  v16 = *(v14 - 8);
  v1 = *(v16 + 64);
  __chkstk_darwin(v14);
  v3 = &v12 - v2;
  v13 = sub_10000239C(&qword_100032218, &qword_100023B48);
  v15 = *(v13 - 8);
  v4 = *(v15 + 64);
  __chkstk_darwin(v13);
  v6 = &v12 - v5;
  v18 = *(*(v0 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_throttleUpdatesManager) + 24);
  sub_10000239C(&qword_1000321D8, &qword_100023A00);
  sub_10000BB0C(&qword_100032220, &qword_1000321D8, &qword_100023A00);
  v18 = sub_100020174();
  v12 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_throttleDuration;
  v7 = [objc_opt_self() mainRunLoop];
  v17 = v7;
  sub_10000239C(&qword_100032228, &qword_100023B50);
  sub_10000D0D8(0, &qword_100032230, NSRunLoop_ptr);
  sub_10000BB0C(&qword_100032238, &qword_100032228, &qword_100023B50);
  sub_10001BF3C(&qword_100032240, &qword_100032230, NSRunLoop_ptr);
  sub_100020194();

  sub_10000BB0C(&qword_100032248, &qword_100032210, &qword_100023B40);
  sub_10001BF3C(&qword_100032250, &qword_100032258, NPTSpeedMetric_ptr);
  v8 = v14;
  sub_1000201A4();
  (*(v16 + 8))(v3, v8);
  sub_10000BB0C(&qword_100032260, &qword_100032218, &qword_100023B48);
  v9 = v13;
  v10 = sub_100020154();
  (*(v15 + 8))(v6, v9);
  return v10;
}

uint64_t sub_100010F48()
{
  v0 = sub_10000239C(&qword_1000321E0, &qword_100023B28);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v14 - v3;
  v5 = sub_10000239C(&qword_1000321E8, &qword_100023B30);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v14 - v8;
  v14[1] = sub_1000107C8();
  v14[0] = sub_100010B88();
  sub_10000239C(&qword_1000321F0, &qword_100023B38);
  sub_10000BB0C(&qword_1000321F8, &qword_1000321F0, &qword_100023B38);
  sub_1000200B4();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_10001BEFC;
  *(v11 + 24) = v10;
  sub_10000BB0C(&qword_100032200, &qword_1000321E0, &qword_100023B28);
  sub_100020164();

  (*(v1 + 8))(v4, v0);
  sub_10000BB0C(&qword_100032208, &qword_1000321E8, &qword_100023B30);
  v12 = sub_100020154();
  (*(v6 + 8))(v9, v5);
  return v12;
}

uint64_t sub_100011238(void *a1, void *a2)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_100020124();

    if (v12 == 6)
    {
      sub_10000239C(&qword_1000321A8, &qword_100023760);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_100023480;
      [a1 speed];
      *(v6 + 56) = &type metadata for Double;
      *(v6 + 64) = &protocol witness table for Double;
      *(v6 + 32) = v7;
LABEL_9:
      v10 = sub_100020884();

      return v10;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_100020124();

    if (v12 == 7)
    {
      sub_10000239C(&qword_1000321A8, &qword_100023760);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_100023480;
      [a2 speed];
      *(v8 + 56) = &type metadata for Double;
      *(v8 + 64) = &protocol witness table for Double;
      *(v8 + 32) = v9;
      goto LABEL_9;
    }
  }

  else
  {
  }

  return 0;
}

id sub_1000114AC()
{
  v1 = sub_10000239C(&qword_100032268, &qword_100023BA0);
  v97 = *(v1 - 8);
  v98 = v1;
  v2 = *(v97 + 64);
  __chkstk_darwin(v1);
  v96 = &v84 - v3;
  v4 = sub_10000239C(&qword_100032270, &qword_100023BA8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v106 = &v84 - v6;
  v105 = sub_10000239C(&qword_100032278, &qword_100023BB0);
  v93 = *(v105 - 8);
  v7 = *(v93 + 64);
  __chkstk_darwin(v105);
  v91 = &v84 - v8;
  v9 = sub_10000239C(&unk_100032280, &qword_100023BB8);
  v94 = *(v9 - 8);
  v95 = v9;
  v10 = *(v94 + 64);
  __chkstk_darwin(v9);
  v92 = &v84 - v11;
  v12 = sub_10000239C(&qword_100031EC0, &qword_100023BC0);
  v103 = *(v12 - 1);
  v104 = v12;
  v13 = *(v103 + 64);
  __chkstk_darwin(v12);
  v102 = &v84 - v14;
  v15 = sub_10000239C(&qword_100032290, &qword_100023BC8);
  v100 = *(v15 - 8);
  v101 = v15;
  v16 = *(v100 + 64);
  __chkstk_darwin(v15);
  v99 = &v84 - v17;
  v90 = sub_10000239C(&qword_100032298, &qword_100023BD0);
  v89 = *(v90 - 1);
  v18 = v89[8];
  __chkstk_darwin(v90);
  v88 = &v84 - v19;
  v87 = sub_10000239C(&qword_1000322A0, &qword_100023BD8);
  v86 = *(v87 - 8);
  v20 = *(v86 + 64);
  __chkstk_darwin(v87);
  v85 = &v84 - v21;
  v22 = sub_10000239C(&qword_1000322A8, &qword_100023BE0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v84 - v25;
  v84 = sub_10000239C(&qword_1000322B0, &qword_100023BE8);
  v27 = *(v84 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v84);
  v30 = &v84 - v29;
  v31 = sub_10000239C(&qword_1000322B8, &qword_100023BF0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  v35 = &v84 - v34;
  v36 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__state;
  LOBYTE(v109) = 0;
  sub_100020114();
  (*(v32 + 32))(&v0[v36], v35, v31);
  v37 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__iterationCount;
  *&v109 = 1;
  sub_100020114();
  (*(v27 + 32))(&v0[v37], v30, v84);
  v38 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__networkQualityError;
  *&v109 = 0;
  BYTE8(v109) = 0;
  sub_10000239C(&qword_100032130, &qword_1000234E8);
  sub_100020114();
  v39 = *(v23 + 32);
  v39(&v0[v38], v26, v22);
  v40 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__pingError;
  *&v109 = 0;
  BYTE8(v109) = 0;
  sub_100020114();
  v39(&v0[v40], v26, v22);
  v41 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__downloadError;
  *&v109 = 0;
  BYTE8(v109) = 0;
  sub_100020114();
  v39(&v0[v41], v26, v22);
  v42 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__uploadError;
  *&v109 = 0;
  BYTE8(v109) = 0;
  sub_100020114();
  v39(&v0[v42], v26, v22);
  v43 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__coreDataError;
  *&v109 = 0;
  BYTE8(v109) = 0;
  sub_100020114();
  v39(&v0[v43], v26, v22);
  *&v0[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest] = 0;
  v44 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_throttleUpdatesManager;
  if (qword_1000315D8 != -1)
  {
    swift_once();
  }

  *&v0[v44] = qword_100032D68;

  sub_100020A14();
  if (&_swiftEmptyArrayStorage >> 62 && sub_100020AC4())
  {
    v45 = sub_100004B34(&_swiftEmptyArrayStorage);
  }

  else
  {
    v45 = &_swiftEmptySetSingleton;
  }

  *&v0[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_cancellableSet] = v45;
  v46 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__throttledDownloadSpeed;
  *&v109 = 0;
  v47 = v85;
  sub_100020114();
  v48 = *(v86 + 32);
  v49 = v87;
  v48(&v0[v46], v47, v87);
  v50 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__throttledUploadSpeed;
  *&v109 = 0;
  sub_100020114();
  v48(&v0[v50], v47, v49);
  v51 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__interface;
  v109 = 0u;
  v110 = 0u;
  v111 = 2;
  v52 = v88;
  sub_100020114();
  (v89[4])(&v0[v51], v52, v90);
  v53 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__speedText;
  *&v109 = 2957357;
  *(&v109 + 1) = 0xE300000000000000;
  v54 = v99;
  sub_100020114();
  v55 = v101;
  v56 = *(v100 + 32);
  v56(&v0[v53], v54, v101);
  v57 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__pingLatencyText;
  *&v109 = 2957357;
  *(&v109 + 1) = 0xE300000000000000;
  sub_100020114();
  v56(&v0[v57], v54, v55);
  v58 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__pingLossPercentText;
  *&v109 = 2957357;
  *(&v109 + 1) = 0xE300000000000000;
  sub_100020114();
  v56(&v0[v58], v54, v55);
  v59 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__downloadSpeedText;
  *&v109 = 2957357;
  *(&v109 + 1) = 0xE300000000000000;
  sub_100020114();
  v56(&v0[v59], v54, v55);
  v60 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__uploadSpeedText;
  *&v109 = 2957357;
  *(&v109 + 1) = 0xE300000000000000;
  sub_100020114();
  v56(&v0[v60], v54, v55);
  v61 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__isAnimating;
  LOBYTE(v109) = 0;
  v62 = v102;
  sub_100020114();
  v63 = v104;
  v64 = *(v103 + 32);
  v64(&v0[v61], v62, v104);
  v65 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel__reverseAnimation;
  LOBYTE(v109) = 0;
  sub_100020114();
  v64(&v0[v65], v62, v63);
  *&v0[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_timelineImage] = 0;
  *&v0[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_testOrder] = &_swiftEmptyArrayStorage;
  *&v0[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_savedTestOrder] = &_swiftEmptyArrayStorage;
  v66 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_iterationDispatchGroup;
  *&v0[v66] = dispatch_group_create();
  v67 = type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  v108.receiver = v0;
  v108.super_class = v67;
  v68 = objc_msgSendSuper2(&v108, "init");
  v89 = sub_1000107C8();
  *&v109 = v89;
  v104 = objc_opt_self();
  v69 = [v104 mainRunLoop];
  v107 = v69;
  v102 = sub_100020A04();
  v70 = *(v102 - 1);
  v101 = *(v70 + 56);
  v103 = v70 + 56;
  v71 = v106;
  v101(v106, 1, 1, v102);
  v88 = sub_10000239C(&qword_1000321F0, &qword_100023B38);
  v100 = sub_10000D0D8(0, &qword_100032230, NSRunLoop_ptr);
  v90 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v87 = sub_10000BB0C(&qword_1000321F8, &qword_1000321F0, &qword_100023B38);
  v99 = sub_10001BF3C(&qword_100032240, &qword_100032230, NSRunLoop_ptr);
  v72 = v91;
  sub_100020184();
  v73 = v71;
  sub_100002494(v71, &qword_100032270, &qword_100023BA8);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v89 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  v86 = sub_10000BB0C(&qword_1000322C0, &qword_100032278, &qword_100023BB0);
  v74 = v92;
  v75 = v105;
  sub_100020164();

  v93 = *(v93 + 8);
  (v93)(v72, v75);
  swift_getKeyPath();
  *&v109 = v68;
  v85 = sub_10000BB0C(&qword_1000322C8, &unk_100032280, &qword_100023BB8);
  v76 = v95;
  sub_1000201B4();

  v94 = *(v94 + 8);
  (v94)(v74, v76);
  v84 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_cancellableSet;
  swift_beginAccess();
  sub_1000200C4();
  swift_endAccess();

  *&v109 = sub_100010B88();
  v77 = [v104 mainRunLoop];
  v107 = v77;
  v101(v73, 1, 1, v102);
  sub_100020184();
  sub_100002494(v73, &qword_100032270, &qword_100023BA8);

  swift_allocObject();
  swift_unknownObjectWeakInit();

  v78 = v105;
  sub_100020164();

  (v93)(v72, v78);
  swift_getKeyPath();
  *&v109 = v68;
  sub_1000201B4();

  (v94)(v74, v76);
  swift_beginAccess();
  sub_1000200C4();
  swift_endAccess();

  *&v109 = sub_100010F48();
  v79 = [v104 mainRunLoop];
  v107 = v79;
  v80 = v106;
  v101(v106, 1, 1, v102);
  sub_10000239C(&qword_1000322D0, &qword_100023BF8);
  sub_10000BB0C(&qword_1000322D8, &qword_1000322D0, &qword_100023BF8);
  v81 = v96;
  sub_100020184();
  sub_100002494(v80, &qword_100032270, &qword_100023BA8);

  swift_getKeyPath();
  *&v109 = v68;
  sub_10000BB0C(&qword_1000322E0, &qword_100032268, &qword_100023BA0);
  v82 = v98;
  sub_1000201B4();

  (*(v97 + 8))(v81, v82);
  swift_beginAccess();
  sub_1000200C4();
  swift_endAccess();

  return v68;
}

void sub_100012630(void **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [v3 speed];
    if (v6 != 0.0)
    {
      sub_10000239C(&qword_1000321A8, &qword_100023760);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_100023480;
      [v3 speed];
      *(v7 + 56) = &type metadata for Double;
      *(v7 + 64) = &protocol witness table for Double;
      *(v7 + 32) = v8;
      sub_100020884();
      swift_getKeyPath();
      swift_getKeyPath();
      v9 = v5;
      sub_100020134();
    }

    [v3 speed];
    v11 = v10;
  }

  else
  {

    v11 = 0;
  }

  *a2 = v11;
}

double sub_1000127FC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_100012878(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_100020134();
}

uint64_t sub_100012988()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = v5;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v7;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v10 = v9;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v11 = v10;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v11;
  return sub_100020134();
}

uint64_t sub_100012CD4(void *a1, char *a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000207E4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_100020804();
  v14 = *(*(v13 - 8) + 64);
  result = __chkstk_darwin(v13);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >= 1)
  {
    v49 = result;
    v50 = v16;
    v19 = sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
    v41 = a1;
    v47 = v19;
    v51 = v9;
    v20 = sub_1000209C4();
    v40 = a2;
    v21 = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = v4;
    *(v22 + 24) = a3;
    v39 = a3;
    v57 = sub_10001BDA8;
    v58 = v22;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v48 = &v55;
    v55 = sub_10001C22C;
    v56 = &unk_10002E158;
    v23 = _Block_copy(&aBlock);
    v24 = v4;
    sub_1000207F4();
    v52 = &_swiftEmptyArrayStorage;
    v44 = sub_100019C30();
    v43 = sub_10000239C(&unk_100032170, &qword_100023610);
    v42 = sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
    sub_100020A54();
    sub_1000209D4();
    _Block_release(v23);

    v25 = *(v51 + 8);
    v51 += 8;
    v46 = v25;
    v25(v12, v8);
    v26 = *(v50 + 8);
    v50 += 8;
    v45 = v26;
    v26(v18, v49);

    v27 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_iterationDispatchGroup;
    dispatch_group_enter(*&v24[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_iterationDispatchGroup]);
    v28 = v40;
    v29 = v41;
    sub_1000133A0(v41, v40);
    v30 = *&v24[v27];
    v31 = sub_1000209C4();
    v32 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v33 = swift_allocObject();
    v33[2] = v32;
    v33[3] = v29;
    v34 = v29;
    v35 = v39;
    v33[4] = v28;
    v33[5] = v35;
    v57 = sub_10001BDF8;
    v58 = v33;
    aBlock = _NSConcreteStackBlock;
    v54 = 1107296256;
    v55 = sub_10001C22C;
    v56 = &unk_10002E1A8;
    v36 = _Block_copy(&aBlock);

    v37 = v34;

    sub_1000207F4();
    v52 = &_swiftEmptyArrayStorage;
    sub_100020A54();
    sub_100020994();
    _Block_release(v36);

    v46(v12, v8);
    v45(v18, v49);
  }

  return result;
}

uint64_t sub_100013184(void *a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_100020134();
}

void sub_10001325C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (__OFSUB__(a4, 1))
    {
      __break(1u);
    }

    else
    {
      v8 = Strong;
      sub_100012CD4(a2, a3, a4 - 1);
    }
  }

  else
  {
  }
}

uint64_t sub_10001335C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

void sub_1000133A0(void *a1, char *a2)
{
  v67 = a2;
  v4 = sub_1000207E4();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  __chkstk_darwin(v4);
  v59 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_100020804();
  v58 = *(v60 - 8);
  v7 = *(v58 + 64);
  __chkstk_darwin(v60);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100020084();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v56 - v16;
  if (qword_1000315D8 != -1)
  {
    swift_once();
  }

  v18 = qword_100032D68;
  v19 = sub_100020944();
  v20 = *(v19 - 8);
  v65 = *(v20 + 56);
  v66 = v19;
  v64 = v20 + 56;
  v65(v17, 1, 1);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v2;
  v63 = v2;
  sub_10000FEDC(0, 0, v17, &unk_1000239B8, v21);

  v22 = sub_100020854();
  [a1 setClientName:v22];

  [a1 setLegacyMode:0];
  [a1 setCollectWRMMetrics:1];
  [a1 setTestDuration:10];
  [a1 setDownloadSize:500];
  [a1 setUploadSize:100];
  [a1 setStopAtFileSize:1];
  v23 = v18;
  v24 = *(v18 + 16);

  sub_100020074();
  v25 = objc_allocWithZone(NPTSpeedMetric);
  isa = sub_100020064().super.isa;
  v27 = *(v10 + 8);
  v27(v13, v9);
  v28 = [v25 initWithPointInTime:isa timeSinceStart:0 bytesTransferred:1 totalBytesExpected:0.01];

  if (!v28)
  {
    __break(1u);
    goto LABEL_9;
  }

  aBlock = v28;
  sub_1000200F4();

  v29 = *(v23 + 24);

  sub_100020074();
  v30 = objc_allocWithZone(NPTSpeedMetric);
  v31 = sub_100020064().super.isa;
  v27(v13, v9);
  v32 = [v30 initWithPointInTime:v31 timeSinceStart:0 bytesTransferred:1 totalBytesExpected:0.01];

  if (!v32)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  aBlock = v32;
  sub_1000200F4();

  v34 = v65;
  v33 = v66;
  (v65)(v17, 1, 1, v66);
  v35 = swift_allocObject();
  v35[2] = 0;
  v35[3] = 0;
  v36 = v63;
  v37 = v67;
  v35[4] = v63;
  v35[5] = v37;
  v38 = v36;

  sub_10000FEDC(0, 0, v17, &unk_1000239C8, v35);

  v39 = [objc_allocWithZone(NPTPerformanceTest) initWithConfiguration:a1];
  v40 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest;
  v41 = *&v38[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
  *&v38[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest] = v39;
  v42 = v39;

  v34(v17, 1, 1, v33);
  v43 = swift_allocObject();
  v43[2] = 0;
  v43[3] = 0;
  v43[4] = v38;
  v44 = v38;
  sub_10000FEDC(0, 0, v17, &unk_1000239D8, v43);

  v45 = *&v38[v40];
  if (!v45)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  [v45 setDelegate:v44];
  sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
  v46 = sub_1000209C4();
  v47 = swift_allocObject();
  *(v47 + 16) = v44;
  v73 = sub_10001BBA0;
  v74 = v47;
  aBlock = _NSConcreteStackBlock;
  v70 = 1107296256;
  v71 = sub_10001C22C;
  v72 = &unk_10002DFF0;
  v48 = _Block_copy(&aBlock);
  v67 = v44;
  v49 = v57;
  sub_1000207F4();
  v68 = &_swiftEmptyArrayStorage;
  sub_100019C30();
  sub_10000239C(&unk_100032170, &qword_100023610);
  sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
  v50 = v59;
  v51 = v62;
  sub_100020A54();
  sub_1000209D4();
  _Block_release(v48);

  (*(v61 + 8))(v50, v51);
  (*(v58 + 8))(v49, v60);

  v52 = *&v38[v40];
  if (v52)
  {
    v53 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v73 = sub_10001BBC4;
    v74 = v53;
    aBlock = _NSConcreteStackBlock;
    v70 = 1107296256;
    v71 = sub_1000149AC;
    v72 = &unk_10002E018;
    v54 = _Block_copy(&aBlock);
    v55 = v52;

    [v55 startMetadataCollectionWithCompletion:v54];
    _Block_release(v54);

    return;
  }

LABEL_11:
  __break(1u);
}

uint64_t sub_100013C2C()
{
  *(v0 + 24) = sub_100020914();
  *(v0 + 32) = sub_100020904();
  v2 = sub_1000208F4();

  return _swift_task_switch(sub_100013CC4, v2, v1);
}

uint64_t sub_100013CC4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  *(v0 + 49) = *(v0 + 48);

  return _swift_task_switch(sub_100013D84, 0, 0);
}

uint64_t sub_100013D84()
{
  if (*(v0 + 49) - 3 >= 5)
  {
    v3 = *(v0 + 24);
    *(v0 + 40) = sub_100020904();
    v5 = sub_1000208F4();

    return _swift_task_switch(sub_100013E50, v5, v4);
  }

  else
  {
    v1 = *(v0 + 8);

    return v1();
  }
}

uint64_t sub_100013E50()
{
  v1 = *(v0 + 40);

  sub_10001ACFC(1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100013EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return _swift_task_switch(sub_100013ED8, 0, 0);
}

uint64_t sub_100013ED8()
{
  v1 = v0[6];

  v0[7] = sub_100014030(v2);
  sub_100020914();
  v0[8] = sub_100020904();
  v4 = sub_1000208F4();

  return _swift_task_switch(sub_100013F7C, v4, v3);
}

uint64_t sub_100013F7C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];

  v4 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_testOrder;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;

  v6 = *(v3 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_savedTestOrder);
  *(v3 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_savedTestOrder) = v2;

  v7 = v0[1];

  return v7();
}

uint64_t sub_100014030(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = v2 >> 1;
  v4 = v2 + 31;
  for (i = 32; ; ++i)
  {
    if (i == v4)
    {
      goto LABEL_5;
    }

    v6 = *(v1 + 16);
    if (i - 32 >= v6)
    {
      break;
    }

    if (v4 - 32 >= v6)
    {
      goto LABEL_12;
    }

    v7 = *(v1 + i);
    v8 = *(v1 + v4);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10001A848(v1);
      v1 = result;
    }

    *(v1 + i) = v8;
    *(v1 + v4) = v7;
LABEL_5:
    --v4;
    if (!--v3)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1000140E8(uint64_t a1)
{
  v2 = sub_1000207E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100020804();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v34 - v14;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v38 = v7;
    v39 = v3;
    v37 = v8;
    if (a1)
    {
      strcpy(v40, "device_states");
      HIWORD(v40[1]) = -4864;
      sub_100020A84();
      if (*(a1 + 16) && (v18 = sub_10001A5B4(&aBlock), (v19 & 1) != 0))
      {
        sub_10000CE84(*(a1 + 56) + 32 * v18, &v41);
        sub_10001B648(&aBlock);
        sub_10000239C(&qword_1000321D0, &qword_1000239F8);
        if (swift_dynamicCast())
        {
          v20 = v40[0];
          sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
          v35 = sub_1000209C4();
          v21 = swift_allocObject();
          *(v21 + 16) = v17;
          *(v21 + 24) = v20;
          v22 = swift_allocObject();
          v36 = sub_10001BD30;
          *(v22 + 16) = sub_10001BD30;
          *(v22 + 24) = v21;
          v23 = v21;
          v46 = sub_10001BD48;
          v47 = v22;
          aBlock = _NSConcreteStackBlock;
          v43 = 1107296256;
          v44 = sub_100014784;
          v45 = &unk_10002E108;
          v24 = _Block_copy(&aBlock);
          v25 = v17;

          v26 = v35;
          dispatch_sync(v35, v24);

          _Block_release(v24);
          LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

          if (v24)
          {
            __break(1u);
            return result;
          }

          v35 = v23;
          goto LABEL_10;
        }
      }

      else
      {
        sub_10001B648(&aBlock);
      }
    }

    v35 = 0;
    v36 = 0;
LABEL_10:
    v27 = sub_100020944();
    (*(*(v27 - 8) + 56))(v15, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v17;
    v29 = v17;
    sub_10000FEDC(0, 0, v15, &unk_1000239F0, v28);

    sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
    v30 = sub_1000209C4();
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    v46 = sub_10001BCC0;
    v47 = v31;
    aBlock = _NSConcreteStackBlock;
    v43 = 1107296256;
    v44 = sub_10001C22C;
    v45 = &unk_10002E090;
    v32 = _Block_copy(&aBlock);
    v33 = v29;
    sub_1000207F4();
    v41 = &_swiftEmptyArrayStorage;
    sub_100019C30();
    sub_10000239C(&unk_100032170, &qword_100023610);
    sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
    sub_100020A54();
    sub_1000209D4();
    _Block_release(v32);

    (*(v39 + 8))(v6, v2);
    (*(v37 + 8))(v11, v38);

    return sub_10000F69C(v36);
  }

  return result;
}

uint64_t sub_1000146C4(uint64_t a1, uint64_t a2)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = sub_10000C898(a2);
  sub_100017E30(v3);
}

uint64_t sub_1000147CC()
{
  sub_100020914();
  *(v0 + 24) = sub_100020904();
  v2 = sub_1000208F4();

  return _swift_task_switch(sub_100014860, v2, v1);
}

uint64_t sub_100014860()
{
  v2 = v0[2];
  v1 = v0[3];

  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001490C()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_100014DF4();
}

uint64_t sub_1000149AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = sub_100020824();
    if (!v3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = 0;
  if (a3)
  {
LABEL_3:
    sub_10000239C(&qword_1000321C8, &qword_1000239E0);
    v3 = sub_1000208D4();
  }

LABEL_4:

  v5(v6, v3);
}

void sub_100014A78(unsigned __int8 a1)
{
  if (a1 <= 2u)
  {
    if (!a1)
    {
      return;
    }

    if (a1 != 1)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v14) = 0;
      v10 = v1;
      sub_100020134();
      v11 = *&v10[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
      if (v11)
      {
        v12 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v13 = swift_allocObject();
        *(v13 + 16) = v12;
        *(v13 + 24) = 0;
        v18 = sub_10001C200;
        v19 = v13;
        v14 = _NSConcreteStackBlock;
        v15 = 1107296256;
        v16 = sub_10001C2BC;
        v17 = &unk_10002DE38;
        v4 = _Block_copy(&v14);
        v5 = v11;

        [v5 startDownloadWithCompletion:v4];
        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }

    v2 = *&v1[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
    if (v2)
    {
      v3 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v18 = sub_10001B6E0;
      v19 = v3;
      v14 = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = sub_10001C2BC;
      v17 = &unk_10002DE60;
      v4 = _Block_copy(&v14);
      v5 = v2;

      [v5 startPingWithCompletion:v4];
LABEL_14:
      _Block_release(v4);

      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a1 - 4 >= 2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    LOBYTE(v14) = 1;
    v6 = v1;
    sub_100020134();
    v7 = *&v6[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
    if (v7)
    {
      v8 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v9 = swift_allocObject();
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      v18 = sub_10001C1FC;
      v19 = v9;
      v14 = _NSConcreteStackBlock;
      v15 = 1107296256;
      v16 = sub_10001C2BC;
      v17 = &unk_10002DDE8;
      v4 = _Block_copy(&v14);
      v5 = v7;

      [v5 startUploadWithCompletion:v4];
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_1000174DC();
}

void sub_100014DF4()
{
  v1 = sub_1000207E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100020804();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_testOrder;
  swift_beginAccess();
  v12 = *&v0[v11];
  if (*(v12 + 2))
  {
    v13 = *&v0[v11];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v12 + 2);
      if (v14)
      {
LABEL_4:
        v15 = v14 - 1;
        *(v12 + 2) = v15;
        v16 = v12[v15 + 32];
        *&v0[v11] = v12;
        swift_endAccess();
        sub_100014A78(v16);
        return;
      }
    }

    else
    {
      v12 = sub_10001A848(v12);
      v14 = *(v12 + 2);
      if (v14)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  else
  {
    swift_endAccess();
    sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
    v23 = v2;
    v22 = sub_1000209C4();
    v17 = swift_allocObject();
    *(v17 + 16) = v0;
    aBlock[4] = sub_10001B4CC;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10001C22C;
    aBlock[3] = &unk_10002DD70;
    v18 = _Block_copy(aBlock);
    v19 = v0;
    sub_1000207F4();
    v24 = &_swiftEmptyArrayStorage;
    sub_100019C30();
    sub_10000239C(&unk_100032170, &qword_100023610);
    sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
    sub_100020A54();
    v20 = v22;
    sub_1000209D4();
    _Block_release(v18);

    (*(v23 + 8))(v5, v1);
    (*(v7 + 8))(v10, v6);
  }
}

void *sub_10001513C(void *a1)
{
  v2 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v24[-v4];
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v25 = 0;
  v6 = a1;
  sub_100020134();
  sub_10000D0D8(0, &qword_100031BD0, NSNumber_ptr);
  v7.super.super.isa = sub_1000209F4(-901).super.super.isa;
  v8 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest;
  result = *&v6[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
  if (!result)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v10 = [result getTransformedDataForCoreAnalytics];
  if (v10)
  {
    v11 = v10;
    sub_10000D0D8(0, &unk_100032190, NSObject_ptr);
    v12 = sub_100020824();
  }

  else
  {
    v12 = 0;
  }

  type metadata accessor for FilterResults();
  swift_initStackObject();
  sub_1000027D8(v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  if (v25 != 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v25 = 8;
    v13 = v6;
    sub_100020134();
    isa = sub_1000209F4(0).super.super.isa;

    v7.super.super.isa = isa;
  }

  result = *&v6[v8];
  if (!result)
  {
    goto LABEL_17;
  }

  [result stopMetadataCollection];
  sub_10001ACFC(0);
  v15 = sub_100002C84();
  sub_100017B9C(v15);

  dispatch_group_leave(*&v6[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_iterationDispatchGroup]);
  if (qword_1000315D0 != -1)
  {
    swift_once();
  }

  v16 = sub_100002864();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = sub_100020944();
    (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
    v20 = v18;
    v21 = v7.super.super.isa;
    v22 = sub_100020904();
    v23 = swift_allocObject();
    v23[2] = v22;
    v23[3] = &protocol witness table for MainActor;
    v23[4] = v20;
    v23[5] = v21;
    v23[6] = v16;

    sub_10000FEDC(0, 0, v5, &unk_1000238B8, v23);
  }

  else
  {
  }
}

id sub_10001556C(void *a1, uint64_t a2)
{
  v42 = a1;
  v3 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v38 - v5;
  v7 = sub_1000207E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100020804();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  __chkstk_darwin(v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v44 = result;
  if (result)
  {
    v41 = v6;
    if (a2)
    {
      sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
      v40 = sub_1000209C4();
      v17 = swift_allocObject();
      *(v17 + 16) = v44;
      *(v17 + 24) = a2;
      v50 = sub_10001B7F4;
      v51 = v17;
      aBlock = _NSConcreteStackBlock;
      v47 = 1107296256;
      v48 = sub_10001C22C;
      v49 = &unk_10002DF28;
      v39 = _Block_copy(&aBlock);
      v18 = v44;
      swift_errorRetain();
      sub_1000207F4();
      v55[0] = &_swiftEmptyArrayStorage;
      sub_100019C30();
      sub_10000239C(&unk_100032170, &qword_100023610);
      v19 = v43;
      sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
      sub_100020A54();
      v20 = v39;
      v21 = v40;
      sub_1000209D4();
      v22 = v20;
      v6 = v41;
      _Block_release(v22);

      (*(v8 + 8))(v11, v7);
      (*(v19 + 8))(v15, v12);
    }

    if (!v42)
    {
      goto LABEL_9;
    }

    v23 = v42;
    result = [v23 minLatency];
    v25 = v24 * 1000.0;
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -9.22337204e18)
    {
      if (v25 < 9.22337204e18)
      {
        v55[3] = &type metadata for Int;
        v55[0] = v25;
        sub_10000239C(&qword_1000321A8, &qword_100023760);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_100023480;
        [v23 percentLost];
        *(v26 + 56) = &type metadata for Double;
        *(v26 + 64) = &protocol witness table for Double;
        *(v26 + 32) = v27;
        v28 = sub_100020884();
        v54[3] = &type metadata for String;
        v54[0] = v28;
        v54[1] = v29;
        sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
        v42 = v23;
        v40 = sub_1000209C4();
        sub_10000CE84(v55, v53);
        sub_10000CE84(v54, v52);
        v30 = swift_allocObject();
        v31 = v44;
        *(v30 + 16) = v44;
        sub_10000D17C(v53, (v30 + 24));
        sub_10000D17C(v52, (v30 + 56));
        v50 = sub_10001B7E4;
        v51 = v30;
        aBlock = _NSConcreteStackBlock;
        v47 = 1107296256;
        v48 = sub_10001C22C;
        v49 = &unk_10002DED8;
        v32 = _Block_copy(&aBlock);
        v33 = v31;
        sub_1000207F4();
        v45 = &_swiftEmptyArrayStorage;
        sub_100019C30();
        sub_10000239C(&unk_100032170, &qword_100023610);
        sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
        sub_100020A54();
        v34 = v40;
        sub_1000209D4();
        v35 = v32;
        v6 = v41;
        _Block_release(v35);

        (*(v8 + 8))(v11, v7);
        (*(v43 + 8))(v15, v12);

        sub_10000CE38(v54);
        sub_10000CE38(v55);
LABEL_9:
        v36 = sub_100020944();
        (*(*(v36 - 8) + 56))(v6, 1, 1, v36);
        v37 = swift_allocObject();
        v37[2] = 0;
        v37[3] = 0;
        v37[4] = v44;
        sub_10000FEDC(0, 0, v6, &unk_1000238D0, v37);
      }

LABEL_13:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_100015CD4(void *a1, uint64_t a2)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (a2)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    swift_errorRetain();
    v5 = a1;
    sub_100020134();
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v5;
    sub_100020134();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100015E04(void *a1, void *a2, uint64_t a3)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_10001B84C(a2, a2[3]);
  sub_100020B24();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = 0;
  v10 = 0xE000000000000000;
  v6 = a1;
  sub_100020134();
  sub_10000CE84(a3, &v9);
  sub_10000239C(&unk_1000321B0, &unk_100023140);
  swift_dynamicCast();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  sub_100020134();
}

uint64_t sub_100015FB4()
{
  sub_100020914();
  *(v0 + 24) = sub_100020904();
  v2 = sub_1000208F4();

  return _swift_task_switch(sub_10001C228, v2, v1);
}

void sub_10001604C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a4;
  v6 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_1000207E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100020804();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a2)
    {
      v47 = v14;
      v48 = v16;
      v49 = v15;
      swift_getErrorValue();
      swift_errorRetain();
      aBlock = sub_100020B54();
      v53 = v22;
      v59 = 0x656C6C65636E6163;
      v60 = 0xE900000000000064;
      sub_100002440();
      v23 = sub_100020A44();

      if (v23)
      {

        return;
      }

      sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
      v46 = sub_1000209C4();
      v36 = swift_allocObject();
      *(v36 + 16) = v21;
      *(v36 + 24) = a2;
      v56 = sub_10001B424;
      v57 = v36;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10001C22C;
      v55 = &unk_10002DD20;
      v45 = _Block_copy(&aBlock);
      swift_errorRetain();
      v37 = v21;
      sub_1000207F4();
      v59 = &_swiftEmptyArrayStorage;
      v44 = sub_100019C30();
      sub_10000239C(&unk_100032170, &qword_100023610);
      sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
      v38 = v47;
      sub_100020A54();
      v39 = v45;
      v40 = v46;
      sub_1000209D4();
      _Block_release(v39);

      (*(v11 + 8))(v38, v10);
      v48[1](v19, v49);
    }

    else if (a1)
    {
      sub_10000239C(&qword_1000321A8, &qword_100023760);
      v24 = swift_allocObject();
      v49 = v15;
      v25 = v24;
      *(v24 + 16) = xmmword_100023480;
      v48 = a1;
      [v48 speed];
      v25[7] = &type metadata for Double;
      v25[8] = &protocol witness table for Double;
      v25[4] = v26;
      v27 = sub_100020884();
      v61 = &type metadata for String;
      v59 = v27;
      v60 = v28;
      sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
      v47 = sub_1000209C4();
      sub_10000CE84(&v59, v58);
      v29 = swift_allocObject();
      *(v29 + 16) = v21;
      sub_10000D17C(v58, (v29 + 24));
      v56 = sub_10001B3F0;
      v57 = v29;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10001C22C;
      v55 = &unk_10002DCD0;
      v46 = _Block_copy(&aBlock);
      v30 = v21;
      sub_1000207F4();
      v51 = &_swiftEmptyArrayStorage;
      v45 = sub_100019C30();
      v31 = v14;
      v32 = v11;
      v33 = v10;
      sub_10000239C(&unk_100032170, &qword_100023610);
      sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
      sub_100020A54();
      v34 = v46;
      v35 = v47;
      sub_1000209D4();

      _Block_release(v34);
      (*(v32 + 8))(v31, v33);
      (*(v16 + 8))(v19, v49);

      sub_10000CE38(&v59);
    }

    if (v50)
    {
      v41 = v50;
      dispatch_group_leave(v41);
    }

    else
    {
      v42 = sub_100020944();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v21;
      sub_10000FEDC(0, 0, v9, &unk_100023820, v43);
    }
  }
}

uint64_t sub_1000167B4(void *a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_errorRetain();
  v2 = a1;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_100020134();
}

void sub_100016930(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

void sub_1000169BC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v50 = a4;
  v6 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v44 - v8;
  v10 = sub_1000207E4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100020804();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    if (a2)
    {
      v47 = v14;
      v48 = v16;
      v49 = v15;
      swift_getErrorValue();
      swift_errorRetain();
      aBlock = sub_100020B54();
      v53 = v22;
      v59 = 0x656C6C65636E6163;
      v60 = 0xE900000000000064;
      sub_100002440();
      v23 = sub_100020A44();

      if (v23)
      {

        return;
      }

      sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
      v46 = sub_1000209C4();
      v36 = swift_allocObject();
      *(v36 + 16) = v21;
      *(v36 + 24) = a2;
      v56 = sub_10001B0F4;
      v57 = v36;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10001C22C;
      v55 = &unk_10002DC08;
      v45 = _Block_copy(&aBlock);
      swift_errorRetain();
      v37 = v21;
      sub_1000207F4();
      v59 = &_swiftEmptyArrayStorage;
      v44 = sub_100019C30();
      sub_10000239C(&unk_100032170, &qword_100023610);
      sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
      v38 = v47;
      sub_100020A54();
      v39 = v45;
      v40 = v46;
      sub_1000209D4();
      _Block_release(v39);

      (*(v11 + 8))(v38, v10);
      v48[1](v19, v49);
    }

    else if (a1)
    {
      sub_10000239C(&qword_1000321A8, &qword_100023760);
      v24 = swift_allocObject();
      v49 = v15;
      v25 = v24;
      *(v24 + 16) = xmmword_100023480;
      v48 = a1;
      [v48 speed];
      v25[7] = &type metadata for Double;
      v25[8] = &protocol witness table for Double;
      v25[4] = v26;
      v27 = sub_100020884();
      v61 = &type metadata for String;
      v59 = v27;
      v60 = v28;
      sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
      v47 = sub_1000209C4();
      sub_10000CE84(&v59, v58);
      v29 = swift_allocObject();
      *(v29 + 16) = v21;
      sub_10000D17C(v58, (v29 + 24));
      v56 = sub_10001B0A8;
      v57 = v29;
      aBlock = _NSConcreteStackBlock;
      v53 = 1107296256;
      v54 = sub_10001C22C;
      v55 = &unk_10002DBB8;
      v46 = _Block_copy(&aBlock);
      v30 = v21;
      sub_1000207F4();
      v51 = &_swiftEmptyArrayStorage;
      v45 = sub_100019C30();
      v31 = v14;
      v32 = v11;
      v33 = v10;
      sub_10000239C(&unk_100032170, &qword_100023610);
      sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
      sub_100020A54();
      v34 = v46;
      v35 = v47;
      sub_1000209D4();

      _Block_release(v34);
      (*(v32 + 8))(v31, v33);
      (*(v16 + 8))(v19, v49);

      sub_10000CE38(&v59);
    }

    if (v50)
    {
      v41 = v50;
      dispatch_group_leave(v41);
    }

    else
    {
      v42 = sub_100020944();
      (*(*(v42 - 8) + 56))(v9, 1, 1, v42);
      v43 = swift_allocObject();
      v43[2] = 0;
      v43[3] = 0;
      v43[4] = v21;
      sub_10000FEDC(0, 0, v9, &unk_100023758, v43);
    }
  }
}

uint64_t sub_100017124(void *a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  swift_errorRetain();
  v2 = a1;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  sub_100020134();
}

uint64_t sub_1000172A0(void *a1, uint64_t a2)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_10000CE84(a2, v6);
  sub_10000239C(&unk_1000321B0, &unk_100023140);
  swift_dynamicCast();
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;
  sub_100020134();
}

uint64_t sub_1000173E4()
{
  sub_100020914();
  *(v0 + 24) = sub_100020904();
  v2 = sub_1000208F4();

  return _swift_task_switch(sub_100017478, v2, v1);
}

uint64_t sub_100017478()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_100014DF4();
  v3 = v0[1];

  return v3();
}

void sub_1000174DC()
{
  v1 = v0;
  v2 = sub_1000207E4();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100020804();
  v30 = *(v6 - 8);
  v31 = v6;
  v7 = *(v30 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = dispatch_group_create();
  dispatch_group_enter(v10);
  v11 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest;
  v12 = *(v1 + OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest);
  if (v12)
  {
    v29 = v5;
    v13 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v39 = sub_10001AFD4;
    v40 = v14;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_10001C2BC;
    v38 = &unk_10002DAC8;
    v15 = _Block_copy(&aBlock);
    v16 = v10;
    v17 = v12;

    [v17 startDownloadWithCompletion:v15];
    _Block_release(v15);

    dispatch_group_enter(v16);
    v18 = *(v1 + v11);
    if (v18)
    {
      v19 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v20 + 24) = v10;
      v39 = sub_10001AFDC;
      v40 = v20;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10001C2BC;
      v38 = &unk_10002DB18;
      v21 = _Block_copy(&aBlock);
      v22 = v16;
      v23 = v18;

      [v23 startUploadWithCompletion:v21];
      _Block_release(v21);

      sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
      v24 = sub_1000209C4();
      v25 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v39 = sub_10001AFE4;
      v40 = v25;
      aBlock = _NSConcreteStackBlock;
      v36 = 1107296256;
      v37 = sub_10001C22C;
      v38 = &unk_10002DB40;
      v26 = _Block_copy(&aBlock);

      sub_1000207F4();
      v34 = &_swiftEmptyArrayStorage;
      sub_100019C30();
      sub_10000239C(&unk_100032170, &qword_100023610);
      sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
      v27 = v29;
      v28 = v33;
      sub_100020A54();
      sub_100020994();
      _Block_release(v26);

      (*(v32 + 8))(v27, v28);
      (*(v30 + 8))(v9, v31);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1000179A0()
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_100014DF4();
  }

  else
  {
  }
}

void *sub_100017A6C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v2 = v1;
  sub_100020134();
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_100020134();
  v4 = OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest;
  result = *&v3[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
  if (result)
  {
    [result cancelAllNetworking];
    result = *&v3[v4];
    if (result)
    {
      [result stopMetadataCollection];
      return sub_10001ACFC(0);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100017B9C(uint64_t a1)
{
  if (a1)
  {

    v2 = sub_100020854();
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    v6[4] = sub_10001A778;
    v6[5] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 1107296256;
    v6[2] = sub_100017D94;
    v6[3] = &unk_10002DA28;
    v5 = _Block_copy(v6);

    AnalyticsSendEventLazy();
    _Block_release(v5);
  }
}

unint64_t sub_100017CB4(uint64_t a1, unint64_t a2)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
  }

  else
  {
    a2 = sub_10001AB58(&_swiftEmptyArrayStorage);
  }

  return a2;
}

Class sub_100017D94(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000D0D8(0, &unk_100032190, NSObject_ptr);
    v5.super.isa = sub_100020814().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_100017E30(uint64_t a1)
{
  v3 = *&v1[OBJC_IVAR____TtC15Diagnostic_600937NetworkPerformanceDiagnosticViewModel_performanceTest];
  if (!v3)
  {
    __break(1u);
    goto LABEL_50;
  }

  v4 = [v3 configuration];
  v5 = [v4 interfaceType];

  if (v5)
  {
    if (v5 == 1)
    {

      sub_1000183BC(a1);
      return;
    }

    if (!*(a1 + 16))
    {
      return;
    }

    v6 = v1;
    v7 = sub_10001A4E8(0x6B726F7774656ELL, 0xE700000000000000);
    if ((v8 & 1) == 0)
    {
      return;
    }

    sub_10000CE84(*(a1 + 56) + 32 * v7, &v24);
    sub_10000239C(&unk_100032180, &qword_100023660);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v9 = v29;
    if (!*(v29 + 16) || (v10 = sub_10001A4E8(0x5F6C616974696E69, 0xED00006574617473), (v11 & 1) == 0) || (sub_10000CE84(*(v9 + 56) + 32 * v10, &v24), (swift_dynamicCast() & 1) == 0))
    {
LABEL_21:

      return;
    }

    v12 = v29;
    if (*(v29 + 16) && (v13 = sub_10001A4E8(0xD000000000000021, 0x8000000100022090), (v14 & 1) != 0) && (sub_10000CE84(*(v12 + 56) + 32 * v13, &v24), (swift_dynamicCast() & 1) != 0))
    {
      v15 = *(&v29 + 1);
      if (*(&v29 + 1))
      {
        goto LABEL_31;
      }
    }

    else
    {
      v29 = 0uLL;
    }

    v16 = *(v12 + 16);
    if (v16)
    {
      v17 = sub_10001A4E8(0xD000000000000021, 0x80000001000220C0);
      if (v18)
      {
        sub_10000CE84(*(v12 + 56) + 32 * v17, &v24);
        v19 = swift_dynamicCast();
        v16 = v27;
        v20 = v28;
        if (!v19)
        {
          v16 = 0;
          v20 = 0;
        }

LABEL_30:
        *&v29 = v16;
        *(&v29 + 1) = v20;

        v15 = *(&v29 + 1);
        if (!*(&v29 + 1))
        {

          goto LABEL_21;
        }

LABEL_31:
        *&v24 = v29;
        *(&v24 + 1) = v15;
        v27 = 0x69462D6957;
        v28 = 0xE500000000000000;
        sub_100002440();
        if (sub_100020A44())
        {
LABEL_34:

          sub_1000183BC(a1);
          goto LABEL_21;
        }

        if (*(&v29 + 1))
        {
          v24 = v29;
          v27 = 0x74726F50726941;
          v28 = 0xE700000000000000;
          if (sub_100020A44())
          {
            goto LABEL_34;
          }

          if (*(&v29 + 1))
          {
            v24 = v29;
            v27 = 0x746E65436D6D6F43;
            v28 = 0xEA00000000007265;
            if (sub_100020A44())
            {

              sub_1000186E4(a1);
              goto LABEL_21;
            }

            if (*(&v29 + 1))
            {
              v24 = v29;
              v27 = 0x74656E7265687445;
              v28 = 0xE800000000000000;
              if (sub_100020A44())
              {
LABEL_43:

                goto LABEL_44;
              }

              if (*(&v29 + 1))
              {
                v24 = v29;
                v27 = 4346709;
                v28 = 0xE300000000000000;
                if (sub_100020A44())
                {
                  goto LABEL_43;
                }

                v22 = *(&v29 + 1);
                if (*(&v29 + 1))
                {
                  v23 = v29;

                  *&v24 = v23;
                  *(&v24 + 1) = v22;
                  v27 = 5128524;
                  v28 = 0xE300000000000000;
                  LOBYTE(v23) = sub_100020A44();

                  if ((v23 & 1) == 0)
                  {
                    swift_getKeyPath();
                    swift_getKeyPath();
                    v24 = 0u;
                    v25 = 0u;
                    goto LABEL_45;
                  }

LABEL_44:
                  swift_getKeyPath();
                  swift_getKeyPath();
                  v24 = 1uLL;
                  v25 = 0uLL;
LABEL_45:
                  v26 = 2;
                  v21 = v6;
                  sub_100020134();
                  goto LABEL_21;
                }

LABEL_54:
                __break(1u);
                return;
              }

LABEL_53:
              __break(1u);
              goto LABEL_54;
            }

LABEL_52:
            __break(1u);
            goto LABEL_53;
          }

LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v16 = 0;
    }

    v20 = 0;
    goto LABEL_30;
  }

  sub_1000186E4(a1);
}

uint64_t sub_1000183BC(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    result = sub_10001A4E8(1768319351, 0xE400000000000000);
    if (v4)
    {
      sub_10000CE84(*(v3 + 56) + 32 * result, &v20);
      sub_10000239C(&unk_100032180, &qword_100023660);
      result = swift_dynamicCast();
      if (result)
      {
        v5 = v24;
        if (*(v24 + 16) && (v6 = sub_10001A4E8(0x5F6C616974696E69, 0xED00006574617473), (v7 & 1) != 0))
        {
          sub_10000CE84(*(v5 + 56) + 32 * v6, &v20);

          result = swift_dynamicCast();
          if (result)
          {
            v8 = v24;
            if (*(v24 + 16) && (v9 = sub_10001A4E8(0x6973735F69666977, 0xE900000000000064), (v10 & 1) != 0) && (sub_10000CE84(*(v8 + 56) + 32 * v9, &v20), (swift_dynamicCast() & 1) != 0))
            {
              v12 = v24;
              v11 = v25;
            }

            else
            {
              v11 = 0xE300000000000000;
              v12 = 2960685;
            }

            if (*(v8 + 16) && (v13 = sub_10001A4E8(0x7968705F69666977, 0xED000065646F6D5FLL), (v14 & 1) != 0) && (sub_10000CE84(*(v8 + 56) + 32 * v13, &v20), (swift_dynamicCast() & 1) != 0))
            {
              v15 = v24;
              v16 = v25;
            }

            else
            {
              v16 = 0xE100000000000000;
              v15 = 45;
            }

            v24 = v15;
            v25 = v16;
            if (*(v8 + 16) && (v17 = sub_10001A4E8(0xD000000000000011, 0x8000000100022070), (v18 & 1) != 0))
            {
              sub_10000CE84(*(v8 + 56) + 32 * v17, &v20);

              if (swift_dynamicCast())
              {
                v20._countAndFlagsBits = 2108704;
                v20._object = 0xE300000000000000;
                v26._countAndFlagsBits = sub_100020B14();
                sub_1000208C4(v26);

                v27._countAndFlagsBits = 2051557152;
                v27._object = 0xE400000000000000;
                sub_1000208C4(v27);
                sub_1000208C4(v20);

                v15 = v24;
                v16 = v25;
              }
            }

            else
            {
            }

            swift_getKeyPath();
            swift_getKeyPath();
            v20._countAndFlagsBits = v12;
            v20._object = v11;
            v21 = v15;
            v22 = v16;
            v23 = 0;
            v19 = v2;
            return sub_100020134();
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_1000186E4(uint64_t result)
{
  if (*(result + 16))
  {
    v2 = v1;
    v3 = result;
    result = sub_10001A4E8(0x72616C756C6C6563, 0xE800000000000000);
    if (v4)
    {
      sub_10000CE84(*(v3 + 56) + 32 * result, v26);
      sub_10000239C(&unk_100032180, &qword_100023660);
      result = swift_dynamicCast();
      if (result)
      {
        countAndFlagsBits = v28._countAndFlagsBits;
        if (*(v28._countAndFlagsBits + 16) && (v6 = sub_10001A4E8(0x5F6C616974696E69, 0xED00006574617473), (v7 & 1) != 0))
        {
          sub_10000CE84(*(countAndFlagsBits + 56) + 32 * v6, v26);

          result = swift_dynamicCast();
          if (result)
          {
            v8 = v28._countAndFlagsBits;
            if (*(v28._countAndFlagsBits + 16) && (v9 = sub_10001A4E8(0xD000000000000015, 0x80000001000214D0), (v10 & 1) != 0) && (sub_10000CE84(*(v8 + 56) + 32 * v9, v26), (swift_dynamicCast() & 1) != 0))
            {
              object = v28._object;
              v12 = v28._countAndFlagsBits;
            }

            else
            {
              object = 0xE300000000000000;
              v12 = 2960685;
            }

            if (*(v8 + 16) && (v13 = sub_10001A4E8(0xD000000000000020, 0x8000000100021590), (v14 & 1) != 0) && (sub_10000CE84(*(v8 + 56) + 32 * v13, v26), (swift_dynamicCast() & 1) != 0))
            {
              v16 = v28._object;
              v15 = v28._countAndFlagsBits;
            }

            else
            {
              v16 = 0xE100000000000000;
              v15 = 45;
            }

            v28._countAndFlagsBits = v15;
            v28._object = v16;
            if (*(v8 + 16))
            {
              v17 = sub_10001A4E8(0xD00000000000001BLL, 0x8000000100021570);
              if (v18)
              {
                sub_10000CE84(*(v8 + 56) + 32 * v17, v26);
                if (swift_dynamicCast())
                {
                  if (sub_100020894() == 0x6E776F6E6B6E75 && v19 == 0xE700000000000000)
                  {
                  }

                  else
                  {
                    v20 = sub_100020B34();

                    if ((v20 & 1) == 0)
                    {
                      v28 = v25;
                    }
                  }

                  if (*(v8 + 16))
                  {
                    v21 = sub_10001A4E8(0xD000000000000018, 0x8000000100022050);
                    if (v22)
                    {
                      sub_10000CE84(*(v8 + 56) + 32 * v21, v26);

                      if ((swift_dynamicCast() & 1) == 0)
                      {
LABEL_32:
                        v23 = v28;
                        swift_getKeyPath();
                        swift_getKeyPath();
                        v26[0]._countAndFlagsBits = v12;
                        v26[0]._object = object;
                        v26[1] = v23;
                        v27 = 1;
                        v24 = v2;
                        return sub_100020134();
                      }

                      v26[0]._countAndFlagsBits = 2108704;
                      v26[0]._object = 0xE300000000000000;
                      sub_1000208C4(v25);

                      sub_1000208C4(v26[0]);
                    }
                  }
                }
              }
            }

            goto LABEL_32;
          }
        }

        else
        {
        }
      }
    }
  }

  return result;
}

void sub_100018AC8(char a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = [objc_opt_self() sharedApplication];
  [v2 setIdleTimerDisabled:a1 & 1];
}

uint64_t sub_100018C38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000207E4();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100020804();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
  v14 = sub_1000209C4();
  v15 = swift_allocObject();
  *(v15 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C22C;
  aBlock[3] = a3;
  v16 = _Block_copy(aBlock);
  v17 = v3;
  sub_1000207F4();
  v22 = &_swiftEmptyArrayStorage;
  sub_100019C30();
  sub_10000239C(&unk_100032170, &qword_100023610);
  sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
  sub_100020A54();
  sub_1000209D4();
  _Block_release(v16);

  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

uint64_t sub_100018F58(void *a1)
{
  sub_100020914();
  sub_100020904();
  sub_1000208F4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  sub_100020134();
}

id sub_10001918C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for NetworkPerformanceDiagnosticViewModel()
{
  result = qword_100032108;
  if (!qword_100032108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100019640()
{
  sub_100019988(319, &qword_100032118);
  if (v1 <= 0x3F)
  {
    v16 = *(v0 - 8) + 64;
    sub_100019988(319, &qword_100032120);
    if (v3 <= 0x3F)
    {
      v17 = *(v2 - 8) + 64;
      sub_100019924();
      if (v5 <= 0x3F)
      {
        v18 = *(v4 - 8) + 64;
        v6 = sub_100020A24();
        if (v7 <= 0x3F)
        {
          v19 = *(v6 - 8) + 64;
          sub_100019988(319, &qword_100032138);
          if (v9 <= 0x3F)
          {
            v20 = *(v8 - 8) + 64;
            sub_100019988(319, &qword_100032140);
            if (v11 <= 0x3F)
            {
              v21 = *(v10 - 8) + 64;
              sub_100019988(319, &qword_100032148);
              if (v13 <= 0x3F)
              {
                v22 = *(v12 - 8) + 64;
                sub_100019988(319, &qword_100032150);
                if (v15 <= 0x3F)
                {
                  v23 = *(v14 - 8) + 64;
                  swift_updateClassMetadata2();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100019924()
{
  if (!qword_100032128)
  {
    sub_100002678(&qword_100032130, &qword_1000234E8);
    v0 = sub_100020144();
    if (!v1)
    {
      atomic_store(v0, &qword_100032128);
    }
  }
}

void sub_100019988(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_100020144();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for NetworkPerformanceDiagnosticViewModel.PerformanceTestState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NetworkPerformanceDiagnosticViewModel.PerformanceTestState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100019B24()
{
  result = qword_100032158;
  if (!qword_100032158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100032158);
  }

  return result;
}

uint64_t sub_100019B7C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NetworkPerformanceDiagnosticViewModel();
  result = sub_1000200E4();
  *a1 = result;
  return result;
}

uint64_t sub_100019BBC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100019C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_100019C30()
{
  result = qword_100031ED0;
  if (!qword_100031ED0)
  {
    sub_1000207E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100031ED0);
  }

  return result;
}

uint64_t sub_100019C88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  *a2 = v5;
  return result;
}

uint64_t sub_100019D0C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_100020134();
}

uint64_t sub_100019DC8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  *a2 = v5;
  return result;
}

uint64_t sub_100019E48(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_100020134();
}

uint64_t sub_100019EB8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  *a2 = v5;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_100019F3C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  swift_errorRetain();
  return sub_100020134();
}

double sub_100019FC4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10001A04C(uint64_t a1, void **a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a1 + 32);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_10001A568(v2, v3, v4, v5, v7);
  v8 = v6;
  return sub_100020134();
}

uint64_t sub_10001A130@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100020124();

  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_10001A1C0(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = v4;
  return sub_100020134();
}

uint64_t sub_10001A28C(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_100020134();
}

uint64_t sub_10001A2F8(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_10001A3F0;

  return v7(a1);
}

uint64_t sub_10001A3F0()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_10001A4E8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_100020B64();
  sub_1000208B4();
  v6 = sub_100020B84();

  return sub_10001A5F8(a1, a2, v6);
}

uint64_t sub_10001A568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
  }

  return result;
}

unint64_t sub_10001A5B4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100020A64(*(v2 + 40));

  return sub_10001A780(a1, v4);
}

unint64_t sub_10001A5F8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_100020B34())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_10001A6B0()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10001A714(void (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(v2 + 16);

  a1(*(v2 + 24));

  return a2(v2, 32, 7);
}

unint64_t sub_10001A780(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_10001B5EC(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_100020A74();
      sub_10001B648(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_10001A85C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000239C(&qword_1000321C0, &qword_1000238C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10001A950(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_10001AA44;

  return v6(v2 + 32);
}

uint64_t sub_10001AA44()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

unint64_t sub_10001AB58(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000239C(&qword_100031770, &qword_1000236B0);
    v3 = sub_100020AF4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_10001A4E8(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10001ACFC(char a1)
{
  v2 = sub_1000207E4();
  v16 = *(v2 - 8);
  v3 = *(v16 + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100020804();
  v6 = *(v15 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D0D8(0, &qword_100032160, OS_dispatch_queue_ptr);
  v10 = sub_1000209C4();
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  aBlock[4] = sub_10001AFC8;
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001C22C;
  aBlock[3] = &unk_10002DA78;
  v12 = _Block_copy(aBlock);
  sub_1000207F4();
  v17 = &_swiftEmptyArrayStorage;
  sub_100019C30();
  sub_10000239C(&unk_100032170, &qword_100023610);
  sub_10000BB0C(&qword_100031ED8, &unk_100032170, &qword_100023610);
  sub_100020A54();
  sub_1000209D4();
  _Block_release(v12);

  (*(v16 + 8))(v5, v2);
  (*(v6 + 8))(v9, v15);
}

uint64_t sub_10001AFF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C25C;

  return sub_1000173C4(a1, v4, v5, v6);
}

uint64_t sub_10001B19C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000239C(&qword_1000321A0, &qword_1000233B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001B20C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B244(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001C25C;

  return sub_10001A2F8(a1, v5);
}

uint64_t sub_10001B2FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C25C;

  return sub_100015F94(a1, v4, v5, v6);
}

uint64_t sub_10001B3B0()
{
  sub_10000CE38((v0 + 24));

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001B4D4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10001B524(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000CFE4;

  return sub_10000C3D0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10001B6A0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10001B6E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C25C;

  return sub_100015F94(a1, v4, v5, v6);
}

uint64_t sub_10001B79C()
{
  sub_10000CE38((v0 + 24));
  sub_10000CE38((v0 + 56));

  return _swift_deallocObject(v0, 88, 7);
}

void *sub_10001B84C(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_10001B930(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C25C;

  return sub_100013C0C(a1, v4, v5, v6);
}

uint64_t sub_10001B9E4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001BA2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10001C25C;

  return sub_100013EB8(a1, v4, v5, v7, v6);
}

uint64_t sub_10001BAEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10001C25C;

  return sub_1000104A0(a1, v4, v5, v6);
}

uint64_t sub_10001BBCC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}