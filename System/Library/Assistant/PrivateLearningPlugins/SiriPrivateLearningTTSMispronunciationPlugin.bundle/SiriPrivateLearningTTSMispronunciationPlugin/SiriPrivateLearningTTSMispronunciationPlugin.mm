double sub_1928(_BYTE *a1, _BYTE *a2, void *a3)
{
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v7 = sub_342A0();
  sub_3034(v7, qword_53A18);
  v8 = sub_34280();
  v9 = sub_345D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_0, v8, v9, "Start runP2P()", v10, 2u);
  }

  if (a1[OBJC_IVAR___PhonemeString_encoding] > 1u)
  {
    a1[OBJC_IVAR___PhonemeString_encoding];
  }

  else if (!a1[OBJC_IVAR___PhonemeString_encoding])
  {

    goto LABEL_10;
  }

  v11 = sub_34BC0();

  if ((v11 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  if (a2[OBJC_IVAR___PhonemeString_encoding] == 2)
  {

    goto LABEL_13;
  }

  v12 = sub_34BC0();

  if ((v12 & 1) == 0)
  {
LABEL_26:
    sub_34890(86);
    v54._countAndFlagsBits = 0xD000000000000049;
    v54._object = 0x8000000000038750;
    sub_34460(v54);
    v26 = [a1 description];
    v27 = sub_343B0();
    v29 = v28;

    v55._countAndFlagsBits = v27;
    v55._object = v29;
    sub_34460(v55);

    v56._countAndFlagsBits = 0x3A74656772617420;
    v56._object = 0xE900000000000020;
    sub_34460(v56);
    v30 = [a2 description];
    v31 = sub_343B0();
    v33 = v32;

    v57._countAndFlagsBits = v31;
    v57._object = v33;
    sub_34460(v57);

    sub_306C();
    swift_allocError();
    *v34 = 0;
    *(v34 + 8) = 0xE000000000000000;
    *(v34 + 16) = 0;
LABEL_31:
    swift_willThrow();
    goto LABEL_32;
  }

LABEL_13:
  v13 = *&a1[OBJC_IVAR___PhonemeString_symbols + 8];
  if ((v13 & 0x2000000000000000) != 0)
  {
    v14 = HIBYTE(v13) & 0xF;
  }

  else
  {
    v14 = *&a1[OBJC_IVAR___PhonemeString_symbols] & 0xFFFFFFFFFFFFLL;
  }

  if (!v14)
  {
    sub_34890(67);
    v58._object = 0x80000000000387F0;
    v58._countAndFlagsBits = 0xD000000000000041;
    sub_34460(v58);
    v35 = [a1 description];
LABEL_29:
    v36 = v35;
    v37 = sub_343B0();
    v39 = v38;

    v60._countAndFlagsBits = v37;
    v60._object = v39;
    sub_34460(v60);

    sub_306C();
    swift_allocError();
    *v40 = 0;
    *(v40 + 8) = 0xE000000000000000;
    v41 = 2;
LABEL_30:
    *(v40 + 16) = v41;
    goto LABEL_31;
  }

  v15 = *&a2[OBJC_IVAR___PhonemeString_symbols + 8];
  if ((v15 & 0x2000000000000000) != 0)
  {
    v16 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v16 = *&a2[OBJC_IVAR___PhonemeString_symbols] & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    sub_34890(67);
    v59._object = 0x80000000000387A0;
    v59._countAndFlagsBits = 0xD000000000000041;
    sub_34460(v59);
    v35 = [a2 description];
    goto LABEL_29;
  }

  v17 = *sub_30C0(a3, a3[3]);
  v18 = sub_29BA4(a1, 2, 0);
  if (v53)
  {
    goto LABEL_32;
  }

  v19 = sub_20E0(a2, v18);

  if ((v19 & 1) == 0)
  {
    v43 = *sub_30C0(a3, a3[3]);
    v44 = sub_29BA4(a2, 0, 0);
    v45 = sub_18BEC(v44);

    if (v45)
    {
      sub_21E8(v45);
      v3 = v50;
      v51 = v52[6];
      sub_30C0(v52 + 2, v52[5]);
      sub_33C40();

      goto LABEL_32;
    }

    v46 = [a2 description];
    v47 = sub_343B0();
    v49 = v48;

    v61._countAndFlagsBits = 0x5341766E206F7420;
    v61._object = 0xE900000000000052;
    sub_34460(v61);
    sub_306C();
    swift_allocError();
    *v40 = v47;
    *(v40 + 8) = v49;
    v41 = 4;
    goto LABEL_30;
  }

  v20 = a2;
  v21 = sub_34280();
  v22 = sub_345D0();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138412290;
    *(v23 + 4) = v20;
    *v24 = v20;
    v25 = v20;
    _os_log_impl(&dword_0, v21, v22, "Found exact match for %@, p2p distance is 0", v23, 0xCu);
    sub_319C(v24);
  }

  v3 = 0.0;
LABEL_32:
  sub_1FF8();
  return v3;
}

void sub_1FF8()
{
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v0 = sub_342A0();
  sub_3034(v0, qword_53A18);
  oslog = sub_34280();
  v1 = sub_345D0();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_0, oslog, v1, "End runP2P()", v2, 2u);
  }
}

uint64_t sub_20E0(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = sub_34810();
  }

  else if (*(a2 + 16) && (type metadata accessor for PhonemeString(), v5 = sub_34670(*(a2 + 40)), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v7);
      v4 = sub_34680();

      if (v4)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_21E8(void *a1)
{
  v3 = sub_155F4();
  v5 = v4;
  v68 = a1;
  v6 = sub_155F4();
  v8 = v7;
  v9 = sub_2A30(v6, v7, v3, v5);
  v11 = v10;

  sub_2A30(v9, v11, v6, v8);
  v13 = v12;

  sub_324C();
  v14 = sub_346E0();

  v15 = sub_346E0();

  v72 = v15;
  v73 = v14;
  v69 = *(v14 + 16);
  v16 = *(v15 + 16);
  v17 = sub_34520();
  v18 = v17;
  *(v17 + 2) = v16 + 1;
  *(v17 + 4) = 0;
  if (v16)
  {
    bzero(v17 + 40, 8 * v16);
  }

  v19 = sub_32C8(v18, v69 + 1);

  if (!v69)
  {
    goto LABEL_78;
  }

  v70 = v19;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_79;
  }

  while (1)
  {
    v20 = v70;
    if (v70[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v18 = v70[5];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v70[5] = v18;
      if (isUniquelyReferenced_nonNull_native)
      {
        if (!*(v18 + 2))
        {
          goto LABEL_82;
        }

        goto LABEL_8;
      }
    }

    v18 = sub_32A0(v18);
    v70[5] = v18;
    if (!*(v18 + 2))
    {
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_8:
    *(v18 + 4) = 0x3FF0000000000000;
    v20 = (v69 - 1);
    if (v69 != 1)
    {
      goto LABEL_47;
    }

LABEL_9:
    if (!v16)
    {
      goto LABEL_83;
    }

    if (v70[2])
    {
      v13 = (v70 + 4);
      v18 = v70[4];
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v70[4] = v18;
      if (v22)
      {
        goto LABEL_12;
      }

      goto LABEL_85;
    }

LABEL_84:
    __break(1u);
LABEL_85:
    v18 = sub_32A0(v18);
LABEL_12:
    if (*(v18 + 2) < 2uLL)
    {
      __break(1u);
LABEL_87:
      swift_once();
      goto LABEL_65;
    }

    *(v18 + 5) = 0x3FF0000000000000;
    *v13 = v18;
    v71 = v16 - 1;
    if (v16 == (&dword_0 + 1))
    {
      break;
    }

LABEL_55:
    v20 = (1 - v16);
    v52 = 6;
    while (v70[2])
    {
      v18 = *v13;
      v53 = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v18;
      if ((v53 & 1) == 0)
      {
        v18 = sub_32A0(v18);
        *v13 = v18;
      }

      if ((v52 - 4) >= *(v18 + 2))
      {
        goto LABEL_77;
      }

      *&v18[8 * v52] = (v52 - 4);
      ++v52;
      if (v20 + v52 == &dword_4 + 2)
      {
        goto LABEL_14;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    v70 = sub_32B4(v70);
  }

LABEL_14:
  v16 = v70;
  if (!*(v73 + 16))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    v49 = (v70 + 6);
    v50 = 2;
    while (v50 < v70[2])
    {
      v18 = *v49;
      v51 = swift_isUniquelyReferenced_nonNull_native();
      *v49 = v18;
      if (v51)
      {
        if (!*(v18 + 2))
        {
          goto LABEL_54;
        }
      }

      else
      {
        v18 = sub_32A0(v18);
        *v49 = v18;
        if (!*(v18 + 2))
        {
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }
      }

      *(v18 + 4) = v50++;
      ++v49;
      v20 = (v20 - 1);
      if (!v20)
      {
        goto LABEL_9;
      }
    }

LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v23 = 0;
  v24 = 1;
  v1 = 1.0;
  v75 = (v73 + 32);
  while (2)
  {
    v25 = 0;
    v26 = v23;
    v27 = (v72 + 40);
    v74 = v24;
    while (1)
    {
      if (v25 >= *(v72 + 16))
      {
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v28 = v13;
      v29 = *v75;
      v30 = v75[1];
      v13 = *(v27 - 1);
      v18 = *v27;
      v31 = 0.0;
      if (*v75 != v13 || v30 != v18)
      {
        v33 = *v75;
        v34 = v75[1];
        v35 = *(v27 - 1);
        v36 = *v27;
        if ((sub_34BC0() & 1) == 0)
        {
          v37 = qword_4E568;

          if (v37 != -1)
          {
            swift_once();
          }

          v38 = qword_539F0;
          v31 = 1.0;
          if (*(qword_539F0 + 16))
          {
            v39 = sub_2A684(v29, v30, v13, v18);
            if (v40)
            {
              v31 = *(*(v38 + 56) + 8 * v39);
            }
          }

          v16 = v70;
        }
      }

      v41 = v16[2];
      if (v26 >= v41)
      {
        goto LABEL_70;
      }

      v20 = (v25 + 1);
      v42 = v28[v26];
      if (v25 + 1 >= *(v42 + 2))
      {
        goto LABEL_71;
      }

      v13 = v28;
      v23 = v74;
      if (v74 >= v41)
      {
        goto LABEL_72;
      }

      v18 = v13[v74];
      if (v25 >= *(v18 + 2))
      {
        goto LABEL_73;
      }

      v43 = *&v42[8 * v25 + 40] + 1.0;
      v44 = &v18[8 * v25];
      v45 = *&v42[8 * v25 + 32];
      if (*(v44 + 4) + 1.0 < v43)
      {
        v43 = *(v44 + 4) + 1.0;
      }

      if (v31 + v45 >= v43)
      {
        v46 = v43;
      }

      else
      {
        v46 = v31 + v45;
      }

      v47 = v13[v74];
      v48 = swift_isUniquelyReferenced_nonNull_native();
      v13[v74] = v18;
      if ((v48 & 1) == 0)
      {
        v18 = sub_32A0(v18);
        v13[v74] = v18;
      }

      if (v20 >= *(v18 + 2))
      {
        goto LABEL_74;
      }

      *&v18[8 * v25 + 40] = v46;
      if (v71 == v25)
      {
        break;
      }

      ++v25;
      v27 += 2;
      if (v26 >= *(v73 + 16))
      {
        goto LABEL_46;
      }
    }

    if (v74 != v69)
    {
      v24 = v74 + 1;
      v75 = (v73 + 32 + 16 * v74);
      if (v74 < *(v73 + 16))
      {
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  v54 = v16[2];
  if (!v54 || (v55 = v13[v54 - 1], (v56 = *(v55 + 2)) == 0))
  {
    sub_34890(24);

    sub_3204(&qword_4E6E8, &qword_35758);
    v76._countAndFlagsBits = sub_34510();
    sub_34460(v76);

    sub_306C();
    swift_allocError();
    *v66 = 0xD000000000000016;
    *(v66 + 8) = 0x8000000000038840;
    *(v66 + 16) = 1;
    swift_willThrow();

    return;
  }

  v1 = *&v55[8 * v56 + 24];
  if (qword_4E5A8 != -1)
  {
    goto LABEL_87;
  }

LABEL_65:
  v57 = sub_342A0();
  sub_3034(v57, qword_53A18);
  v58 = v67;
  v59 = v68;
  v60 = sub_34280();
  v61 = sub_345D0();

  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    *v62 = 138412802;
    *(v62 + 4) = v58;
    *(v62 + 12) = 2112;
    *(v62 + 14) = v59;
    *v63 = v58;
    v63[1] = v59;
    *(v62 + 22) = 2048;
    *(v62 + 24) = v1;
    v64 = v58;
    v65 = v59;
    _os_log_impl(&dword_0, v60, v61, "Calculated Levenshtein Edit Distance between %@ and %@: %f", v62, 0x20u);
    sub_3204(&qword_4E6D8, &qword_35750);
    swift_arrayDestroy();
  }
}

uint64_t sub_29D4()
{
  sub_3364((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_2A30(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_4E570 != -1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v6 = qword_539F8;
    v7 = qword_539F8 + 64;
    v8 = 1 << *(qword_539F8 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(qword_539F8 + 64);
    v11 = (v8 + 63) >> 6;

    v12 = 0;
    v24 = v7;
    v25 = v6;
    v23 = v11;
LABEL_5:
    v26 = a3;
    v27 = a4;
    if (!v10)
    {
      break;
    }

    while (1)
    {
LABEL_10:
      v14 = __clz(__rbit64(v10)) | (v12 << 6);
      v15 = (*(v6 + 48) + 16 * v14);
      v16 = v15[1];
      v17 = *(*(v6 + 56) + 8 * v14);
      v10 &= v10 - 1;
      v28 = *v15;
      sub_324C();

      if ((sub_34730() & 1) == 0)
      {

        goto LABEL_18;
      }

      v18 = *(v17 + 16);

      if (v18)
      {
        break;
      }

LABEL_16:
      swift_bridgeObjectRelease_n();
      a3 = v26;
      a4 = v27;
      v7 = v24;
      v6 = v25;
      v11 = v23;
LABEL_18:

      if (!v10)
      {
        goto LABEL_6;
      }
    }

    a3 = 0;
    v19 = (v17 + 40);
    while (a3 < *(v17 + 16))
    {
      a4 = *(v19 - 1);
      v20 = *v19;

      if (sub_34730())
      {

        a3 = sub_34710();
        a4 = v21;

        v7 = v24;
        v6 = v25;
        v11 = v23;
        goto LABEL_5;
      }

      ++a3;
      v19 += 2;
      if (v18 == a3)
      {
        goto LABEL_16;
      }
    }

LABEL_23:
    __break(1u);
LABEL_24:
    swift_once();
  }

  while (1)
  {
LABEL_6:
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_23;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_10;
    }
  }

  return a3;
}

uint64_t sub_2CE4()
{
  v1 = *v0;
  sub_343B0();
  v2 = sub_344A0();

  return v2;
}

uint64_t sub_2D20()
{
  v1 = *v0;
  sub_343B0();
  sub_34430();
}

Swift::Int sub_2D74()
{
  v1 = *v0;
  sub_343B0();
  sub_34C40();
  sub_34430();
  v2 = sub_34C70();

  return v2;
}

uint64_t sub_2DF0(uint64_t a1, id *a2)
{
  result = sub_34390();
  *a2 = 0;
  return result;
}

uint64_t sub_2E68(uint64_t a1, id *a2)
{
  v3 = sub_343A0();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_2EE8@<X0>(void *a1@<X8>)
{
  sub_343B0();
  v2 = sub_34380();

  *a1 = v2;
  return result;
}

uint64_t sub_2F38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_343B0();
  v6 = v5;
  if (v4 == sub_343B0() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_34BC0();
  }

  return v9 & 1;
}

uint64_t sub_2FC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_34380();

  *a2 = v5;
  return result;
}

uint64_t sub_3008@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_343B0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_3034(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_306C()
{
  result = qword_4E6D0;
  if (!qword_4E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E6D0);
  }

  return result;
}

void *sub_30C0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_3104(uint64_t a1)
{
  v2 = sub_349C(&qword_4E710);
  v3 = sub_349C(&qword_4E718);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_319C(uint64_t a1)
{
  v2 = sub_3204(&qword_4E6D8, &qword_35750);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3204(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_324C()
{
  result = qword_4E6E0;
  if (!qword_4E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E6E0);
  }

  return result;
}

void *sub_32C8(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return &_swiftEmptyArrayStorage;
    }

    v3 = result;
    sub_3204(&qword_4E6E8, &qword_35758);
    v4 = sub_34520();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_3364(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void type metadata accessor for FileAttributeKey()
{
  if (!qword_4E6F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_4E6F0);
    }
  }
}

uint64_t sub_349C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_34E4()
{
  v1 = v0;
  sub_34890(295);
  v16._countAndFlagsBits = 0xD00000000000001DLL;
  v16._object = 0x80000000000389F0;
  sub_34460(v16);
  sub_33B90();
  sub_8114(&qword_4E9E8, 255, &type metadata accessor for UUID);
  v17._countAndFlagsBits = sub_34BB0();
  sub_34460(v17);

  v18._object = 0x8000000000038A10;
  v18._countAndFlagsBits = 0xD000000000000010;
  sub_34460(v18);
  v2 = type metadata accessor for TMDCGroundTruth();
  sub_34460(*(v0 + v2[6]));
  v19._countAndFlagsBits = 0xD000000000000012;
  v19._object = 0x8000000000038A30;
  sub_34460(v19);
  v15 = *(v0 + v2[7]);
  v20._countAndFlagsBits = sub_34BB0();
  sub_34460(v20);

  v21._countAndFlagsBits = 0xD000000000000015;
  v21._object = 0x8000000000038A50;
  sub_34460(v21);
  sub_34460(*(v0 + v2[8]));
  v22._countAndFlagsBits = 0xD00000000000001ELL;
  v22._object = 0x8000000000038A70;
  sub_34460(v22);
  v3 = [*(v0 + v2[9]) description];
  v4 = sub_343B0();
  v6 = v5;

  v23._countAndFlagsBits = v4;
  v23._object = v6;
  sub_34460(v23);

  v24._countAndFlagsBits = 0xD000000000000020;
  v24._object = 0x8000000000038A90;
  sub_34460(v24);
  v7 = *(v1 + v2[10]);
  sub_3204(&unk_4E9F0, &qword_35A58);
  v25._countAndFlagsBits = sub_34400();
  sub_34460(v25);

  v26._object = 0x8000000000038AC0;
  v26._countAndFlagsBits = 0xD000000000000010;
  sub_34460(v26);
  v8 = *(v1 + v2[11]);
  sub_34580();
  v27._countAndFlagsBits = 0x6F7320676F4C0A2CLL;
  v27._object = 0xEE00203A65637275;
  sub_34460(v27);
  LOBYTE(v15) = *(v1 + v2[5]);
  sub_34980();
  v28._countAndFlagsBits = 0xD000000000000021;
  v28._object = 0x8000000000038AE0;
  sub_34460(v28);
  v9 = (v1 + v2[13]);
  if (v9[1])
  {
    v10 = *v9;
    v11 = v9[1];
  }

  else
  {
    v11 = 0x8000000000038B10;
    v10 = 0xD000000000000014;
  }

  v29._countAndFlagsBits = v10;
  v29._object = v11;
  sub_34460(v29);

  v30._countAndFlagsBits = 0xD00000000000002DLL;
  v30._object = 0x8000000000038B30;
  sub_34460(v30);
  if (*(v1 + v2[12]))
  {
    v12._countAndFlagsBits = 0x6F6E6F727073696DLL;
  }

  else
  {
    v12._countAndFlagsBits = 0xD000000000000013;
  }

  if (*(v1 + v2[12]))
  {
    v13 = 0xED00006465636E75;
  }

  else
  {
    v13 = 0x8000000000038B60;
  }

  v12._object = v13;
  sub_34460(v12);

  v31._countAndFlagsBits = 0xD000000000000015;
  v31._object = 0x8000000000038B80;
  sub_34460(v31);
  return 0;
}

unint64_t sub_38EC(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x6174736944703270;
    v6 = 0xD00000000000001BLL;
    if (a1 == 8)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD00000000000001ALL;
    if (a1 == 5)
    {
      v7 = 0xD000000000000018;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x4E746361746E6F63;
    v3 = 0x69666E6F43727361;
    if (a1 != 3)
    {
      v3 = 0x656E6F6850727361;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x6372756F53676F6CLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_3AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_62E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_3AF4(uint64_t a1)
{
  v2 = sub_7F58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_3B30(uint64_t a1)
{
  v2 = sub_7F58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_3B6C(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EBB0, &unk_35D60);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_7F58();
  sub_34CA0();
  LOBYTE(v26) = 0;
  sub_33B90();
  sub_8114(&qword_4EBB8, 255, &type metadata accessor for UUID);
  sub_34B70();
  if (!v2)
  {
    v11 = type metadata accessor for TMDCGroundTruth();
    LOBYTE(v26) = *(v3 + v11[5]);
    v27 = 1;
    sub_80C0();
    sub_34B70();
    v12 = (v3 + v11[6]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v26) = 2;
    sub_34B40();
    v15 = *(v3 + v11[7]);
    LOBYTE(v26) = 3;
    sub_34B90();
    v16 = (v3 + v11[8]);
    v17 = *v16;
    v18 = v16[1];
    LOBYTE(v26) = 4;
    sub_34B40();
    v26 = *(v3 + v11[9]);
    v27 = 5;
    type metadata accessor for ContactPronunciation();
    sub_8114(&qword_4EBC8, 255, type metadata accessor for ContactPronunciation);
    sub_34B70();
    v26 = *(v3 + v11[10]);
    v27 = 6;
    type metadata accessor for CorrectedPronunciation();
    sub_8114(&qword_4EBD0, v19, type metadata accessor for CorrectedPronunciation);
    sub_34B20();
    v20 = *(v3 + v11[11]);
    LOBYTE(v26) = 7;
    sub_34B60();
    v21 = *(v3 + v11[12]);
    LOBYTE(v26) = 8;
    sub_34B50();
    v22 = (v3 + v11[13]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v26) = 9;
    sub_34B00();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_3F50(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_33B90();
  v42 = *(v4 - 8);
  v5 = *(v42 + 64);
  __chkstk_darwin();
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_3204(&qword_4EB80, &qword_35D58);
  v8 = *(v37 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v36 - v10;
  v41 = type metadata accessor for TMDCGroundTruth();
  v12 = *(*(v41 - 1) + 64);
  __chkstk_darwin();
  v40 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33B80();
  v14 = sub_33FF0();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_33FE0();
  sub_33FD0();

  v17 = a1[3];
  v18 = a1[4];
  v39 = a1;
  sub_30C0(a1, v17);
  sub_7F58();
  v38 = v11;
  sub_34C90();
  if (v2)
  {
    v20 = v40;
    sub_3364(v39);
    (*(v42 + 8))(v20, v4);
  }

  else
  {
    v19 = v36;
    LOBYTE(v43) = 0;
    sub_8114(&qword_4EB90, 255, &type metadata accessor for UUID);
    sub_34AB0();
    v21 = v40;
    (*(v42 + 40))(v40, v7, v4);
    v44 = 1;
    sub_7FAC();
    sub_34AB0();
    v22 = v41;
    v21[v41[5]] = v43;
    LOBYTE(v43) = 2;
    v23 = sub_34A80();
    v24 = &v21[v22[6]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v43) = 3;
    *&v21[v22[7]] = sub_34AD0();
    LOBYTE(v43) = 4;
    v26 = sub_34A80();
    v27 = &v21[v22[8]];
    *v27 = v26;
    v27[1] = v28;
    type metadata accessor for ContactPronunciation();
    v44 = 5;
    sub_8114(&qword_4EBA0, 255, type metadata accessor for ContactPronunciation);
    sub_34AB0();
    *&v21[v22[9]] = v43;
    type metadata accessor for CorrectedPronunciation();
    v44 = 6;
    sub_8114(&qword_4EBA8, v29, type metadata accessor for CorrectedPronunciation);
    sub_34A60();
    *&v21[v22[10]] = v43;
    LOBYTE(v43) = 7;
    sub_34AA0();
    *&v21[v41[11]] = v30;
    LOBYTE(v43) = 8;
    v21[v41[12]] = sub_34A90() & 1;
    LOBYTE(v43) = 9;
    v31 = sub_34A40();
    v33 = v32;
    (*(v8 + 8))(v38, v37);
    v34 = v40;
    v35 = &v40[v41[13]];
    *v35 = v31;
    v35[1] = v33;
    sub_8000(v34, v19);
    sub_3364(v39);
    sub_8064(v34);
  }
}

uint64_t sub_4710()
{
  sub_34890(96);
  v5._countAndFlagsBits = 0x656C61636F6C207BLL;
  v5._object = 0xEA0000000000203ALL;
  sub_34460(v5);
  sub_34460(*(v0 + OBJC_IVAR___CorrectedPronunciation_locale));
  v6._countAndFlagsBits = 0xD00000000000001ALL;
  v6._object = 0x8000000000038BF0;
  sub_34460(v6);
  v1 = *(v0 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
  sub_3204(&qword_4EA28, &qword_35A80);
  v7._countAndFlagsBits = sub_34400();
  sub_34460(v7);

  v8._object = 0x8000000000038C10;
  v8._countAndFlagsBits = 0xD000000000000019;
  sub_34460(v8);
  v2 = *(v0 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
  v9._countAndFlagsBits = sub_34400();
  sub_34460(v9);

  v10._object = 0x8000000000038C30;
  v10._countAndFlagsBits = 0xD000000000000019;
  sub_34460(v10);
  v3 = *(v0 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
  v11._countAndFlagsBits = sub_34400();
  sub_34460(v11);

  v12._countAndFlagsBits = 32032;
  v12._object = 0xE200000000000000;
  sub_34460(v12);
  return 0;
}

id sub_48C0(void *a1)
{
  v2 = v1;
  sub_7F10(0, &qword_4EA20, NSString_ptr);
  v4 = sub_34660();
  if (v4)
  {
    v5 = v4;
    v6 = sub_343B0();
    v8 = v7;

    v9 = &v2[OBJC_IVAR___CorrectedPronunciation_locale];
    *v9 = v6;
    v9[1] = v8;
    type metadata accessor for PhonemeString();
    *&v2[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString] = sub_34660();
    *&v2[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString] = sub_34660();
    *&v2[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString] = sub_34660();
    v12.receiver = v2;
    v12.super_class = type metadata accessor for CorrectedPronunciation();
    v10 = objc_msgSendSuper2(&v12, "init");
  }

  else
  {

    type metadata accessor for CorrectedPronunciation();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v10;
}

void sub_4A60(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___CorrectedPronunciation_locale);
  v4 = *(v1 + OBJC_IVAR___CorrectedPronunciation_locale + 8);
  v5 = sub_34380();
  v6 = sub_34380();
  [a1 encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
  v8 = sub_34380();
  [a1 encodeObject:v7 forKey:v8];

  v9 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
  v10 = sub_34380();
  [a1 encodeObject:v9 forKey:v10];

  v11 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
  v12 = sub_34380();
  [a1 encodeObject:v11 forKey:v12];
}

uint64_t sub_4C30(uint64_t a1)
{
  sub_7734(a1, v21);
  if (!v22)
  {
    sub_76CC(v21);
    goto LABEL_23;
  }

  type metadata accessor for CorrectedPronunciation();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    v17 = 0;
    return v17 & 1;
  }

  v2 = *(v1 + OBJC_IVAR___CorrectedPronunciation_locale) == *&v20[OBJC_IVAR___CorrectedPronunciation_locale] && *(v1 + OBJC_IVAR___CorrectedPronunciation_locale + 8) == *&v20[OBJC_IVAR___CorrectedPronunciation_locale + 8];
  if (!v2 && (sub_34BC0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v3 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
  v4 = *&v20[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString];
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_22;
    }

    type metadata accessor for PhonemeString();
    v5 = v4;
    v6 = v3;
    v7 = sub_34680();

    if ((v7 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v4)
  {
    goto LABEL_22;
  }

  v8 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
  v9 = *&v20[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString];
  if (!v8)
  {
    if (!v9)
    {
      goto LABEL_19;
    }

LABEL_22:

    goto LABEL_23;
  }

  if (!v9)
  {
    goto LABEL_22;
  }

  type metadata accessor for PhonemeString();
  v10 = v9;
  v11 = v8;
  v12 = sub_34680();

  if ((v12 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_19:
  v13 = *(v1 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
  v14 = *&v20[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString];
  if (!v13)
  {
    v19 = v14;

    if (!v14)
    {
      v17 = 1;
      return v17 & 1;
    }

    goto LABEL_23;
  }

  if (!v14)
  {
    goto LABEL_22;
  }

  type metadata accessor for PhonemeString();
  v15 = v14;
  v16 = v13;
  v17 = sub_34680();

  return v17 & 1;
}

unint64_t sub_4EC0()
{
  v1 = 0x656C61636F6CLL;
  *v0;
  if (*v0)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_4F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_6638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_4F74(uint64_t a1)
{
  v2 = sub_7678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_4FB0(uint64_t a1)
{
  v2 = sub_7678();

  return CodingKey.debugDescription.getter(a1, v2);
}

id sub_4FEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CorrectedPronunciation();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_50B4(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EA08, &unk_35A70);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_7678();
  sub_34CA0();
  v11 = *(v3 + OBJC_IVAR___CorrectedPronunciation_locale);
  v12 = *(v3 + OBJC_IVAR___CorrectedPronunciation_locale + 8);
  LOBYTE(v15) = 0;
  sub_34B40();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString);
    HIBYTE(v14) = 1;
    type metadata accessor for PhonemeString();
    sub_8114(&qword_4EA10, 255, type metadata accessor for PhonemeString);
    sub_34B20();
    v15 = *(v3 + OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString);
    HIBYTE(v14) = 2;
    sub_34B20();
    v15 = *(v3 + OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString);
    HIBYTE(v14) = 3;
    sub_34B20();
  }

  return (*(v6 + 8))(v9, v5);
}

id sub_5304(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4E9D0, &qword_35A50);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = v16 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_7678();
  sub_34C90();
  if (v2)
  {
    sub_3364(a1);
    type metadata accessor for CorrectedPronunciation();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v11 = sub_34A80();
    v13 = &v1[OBJC_IVAR___CorrectedPronunciation_locale];
    *v13 = v11;
    v13[1] = v14;
    v16[2] = v13;
    type metadata accessor for PhonemeString();
    v18 = 1;
    v16[1] = sub_8114(&qword_4E9E0, 255, type metadata accessor for PhonemeString);
    sub_34A60();
    *&v1[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString] = v19;
    v18 = 2;
    sub_34A60();
    *&v1[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString] = v19;
    v18 = 3;
    sub_34A60();
    *&v1[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString] = v19;
    v15 = type metadata accessor for CorrectedPronunciation();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, "init");
    (*(v6 + 8))(v9, v5);
    sub_3364(a1);
  }

  return v3;
}

id sub_5680@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for CorrectedPronunciation());
  result = sub_5304(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_57CC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_582C(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_3204(&qword_4EB58, &qword_35D38);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v27 = &v23 - v5;
  v6 = sub_3204(&qword_4EB60, &qword_35D40);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = (*(v25 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = sub_3204(&qword_4EB68, &qword_35D48);
  v24 = *(v10 - 8);
  v11 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v13 = &v23 - v12;
  v14 = sub_3204(&unk_4EB70, &qword_35D50);
  v15 = *(v14 - 8);
  v16 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_7DC0();
  sub_34CA0();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_7E68();
      sub_34AF0();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_7E14();
      v21 = v27;
      sub_34AF0();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_7EBC();
    sub_34AF0();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_5BB8(uint64_t a1)
{
  v2 = sub_7E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5BF4(uint64_t a1)
{
  v2 = sub_7E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5C30()
{
  v1 = 0x746E65696C63;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E75;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616E7265746E69;
  }
}

uint64_t sub_5C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_67A8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_5CC8(uint64_t a1)
{
  v2 = sub_7DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5D04(uint64_t a1)
{
  v2 = sub_7DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5D40@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_5D7C(uint64_t a1)
{
  v2 = sub_7EBC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5DB8(uint64_t a1)
{
  v2 = sub_7EBC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_5DF4(uint64_t a1)
{
  v2 = sub_7E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_5E30(uint64_t a1)
{
  v2 = sub_7E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_5E6C()
{
  v1 = *v0;
  sub_34C40();
  sub_34C50(v1);
  return sub_34C70();
}

Swift::Int sub_5EB4()
{
  v1 = *v0;
  sub_34C40();
  sub_34C50(v1);
  return sub_34C70();
}

uint64_t sub_5EF8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_68C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_5F40()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_34380();
  v2 = [v0 BOOLForKey:v1];

  byte_4E8A1 = v2;
}

uint64_t sub_6004(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_33B90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_33B80();
  v14 = sub_6E54(a1, v13, a2, a3, a4);
  if (!v4)
  {
    sub_73AC(v14);
  }

  return (*(v10 + 8))(v13, v9);
}

BOOL sub_6124(uint64_t a1, uint64_t a2)
{
  if ((sub_33B60() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TMDCGroundTruth();
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  v6 = *(v4 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_34BC0() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + v5[7]) != *(a2 + v5[7]))
  {
    return 0;
  }

  v11 = v5[8];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_34BC0() & 1) == 0)
  {
    return 0;
  }

  sub_7F10(0, &unk_4F9E0, NSObject_ptr);
  v16 = v5[9];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if ((sub_34680() & 1) == 0)
  {
    return 0;
  }

  v19 = v5[10];
  v20 = *(a1 + v19);
  v21 = *(a2 + v19);
  if (v20)
  {
    if (!v21)
    {
      return 0;
    }

    type metadata accessor for CorrectedPronunciation();
    v22 = v21;
    v23 = v20;
    v24 = sub_34680();

    if ((v24 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (*(a1 + v5[11]) != *(a2 + v5[11]) || *(a1 + v5[12]) != *(a2 + v5[12]))
  {
    return 0;
  }

  v26 = v5[13];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (!v28)
  {
    return !v30;
  }

  return v30 && (*v27 == *v29 && v28 == v30 || (sub_34BC0() & 1) != 0);
}

uint64_t sub_62E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6372756F53676F6CLL && a2 == 0xE900000000000065 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E746361746E6F63 && a2 == 0xEB00000000656D61 || (sub_34BC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69666E6F43727361 && a2 == 0xED000065636E6564 || (sub_34BC0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656E6F6850727361 && a2 == 0xEB0000000073656DLL || (sub_34BC0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000000038C80 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000038CA0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6174736944703270 && a2 == 0xEB0000000065636ELL || (sub_34BC0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000000038CC0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000000038CE0 == a2)
  {

    return 9;
  }

  else
  {
    v6 = sub_34BC0();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_6638(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000000000388D0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000000000388F0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000000038910 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_34BC0();

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

uint64_t sub_67A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C616E7265746E69 && a2 == 0xEE00656372756F53;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_34BC0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_68C4(uint64_t *a1)
{
  v36 = sub_3204(&qword_4EB10, &qword_35D10);
  v39 = *(v36 - 8);
  v2 = (*(v39 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v40 = &v33 - v3;
  v4 = sub_3204(&qword_4EB18, &qword_35D18);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = (*(v37 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v33 - v6;
  v8 = sub_3204(&qword_4EB20, &qword_35D20);
  v35 = *(v8 - 8);
  v9 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v33 - v10;
  v12 = sub_3204(&qword_4EB28, &qword_35D28);
  v41 = *(v12 - 8);
  v13 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v15 = &v33 - v14;
  v16 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_7DC0();
  v17 = v42;
  sub_34C90();
  if (v17)
  {
    goto LABEL_14;
  }

  v34 = v8;
  v18 = v40;
  v42 = a1;
  v19 = v15;
  v20 = sub_34AE0();
  v21 = *(v20 + 16);
  if (!v21 || ((v22 = *(v20 + 32), v21 == 1) ? (v23 = v22 == 3) : (v23 = 1), v23))
  {
    v24 = sub_348F0();
    swift_allocError();
    v26 = v25;
    v27 = v12;
    v28 = *(sub_3204(&qword_4EB38, &qword_35D30) + 48);
    *v26 = &type metadata for LogSource;
    sub_34A30();
    sub_348E0();
    (*(*(v24 - 8) + 104))(v26, enum case for DecodingError.typeMismatch(_:), v24);
    swift_willThrow();
    (*(v41 + 8))(v19, v27);
    swift_unknownObjectRelease();
    a1 = v42;
LABEL_14:
    sub_3364(a1);
    return 0;
  }

  v43 = *(v20 + 32);
  if (!v22)
  {
    v44 = 0;
    sub_7EBC();
    v29 = v15;
    sub_34A20();
    (*(v35 + 8))(v11, v34);
    v30 = v41;
    goto LABEL_15;
  }

  if (v22 == 1)
  {
    v45 = 1;
    sub_7E68();
    v29 = v15;
    sub_34A20();
    v30 = v41;
    (*(v37 + 8))(v7, v38);
LABEL_15:
    (*(v30 + 8))(v29, v12);
    goto LABEL_16;
  }

  v46 = 2;
  sub_7E14();
  sub_34A20();
  v31 = v41;
  (*(v39 + 8))(v18, v36);
  (*(v31 + 8))(v19, v12);
LABEL_16:
  swift_unknownObjectRelease();
  sub_3364(v42);
  return v43;
}

uint64_t sub_6E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_allocWithZone(PLUSSchemaPLUSClientEvent) init];
  if (!v10)
  {
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [objc_allocWithZone(PLUSSchemaPLUSClientEventMetadata) init];
  if (!v12)
  {
LABEL_17:

LABEL_18:
    sub_75D8();
    swift_allocError();
    *v41 = xmmword_35940;
    swift_willThrow();
    return a2;
  }

  v13 = v12;
  v59 = a5;
  v14 = [objc_allocWithZone(PLUSSchemaPLUSTMDCGroundTruthGenerated) init];
  if (!v14)
  {
    v15 = v13;
LABEL_16:

    v11 = v15;
    goto LABEL_17;
  }

  v15 = v14;
  v60 = a1;
  v16 = [objc_allocWithZone(PLUSSchemaPLUSTMDCGroundTruth) init];
  if (!v16)
  {

    v11 = v13;
    goto LABEL_16;
  }

  v17 = v16;
  v58 = v15;
  v18 = objc_allocWithZone(SISchemaUUID);
  isa = sub_33B50().super.isa;
  v57 = [v18 initWithNSUUID:isa];

  [v17 setAsrPostItnLinkId:a4];
  [v17 setAsrRawRecognitionLinkId:a3];
  v20 = [objc_allocWithZone(PLUSSchemaPLUSTMDCSiriCurrentPronunciationTier1) init];
  v21 = v60;
  if (v20)
  {
    v22 = v20;
    v56 = *(v60 + *(type metadata accessor for TMDCGroundTruth() + 36));
    v23 = (*(v56 + OBJC_IVAR___ContactPronunciation_phonemeString) + OBJC_IVAR___PhonemeString_symbols);
    v24 = *v23;
    v25 = v23[1];

    v26 = v17;
    v27 = sub_34380();
    v21 = v60;

    [v22 setPhonemes:v27];

    v17 = v26;
    if (*(v56 + OBJC_IVAR___ContactPronunciation_source))
    {
      v28 = 2 * (*(v56 + OBJC_IVAR___ContactPronunciation_source) == 2);
    }

    else
    {
      v28 = 1;
    }

    [v22 setSource:{v28, v56}];
    [v26 setSiriCurrentPronunciation:v22];
  }

  v29 = type metadata accessor for TMDCGroundTruth();
  v30 = *(v21 + v29[10]);
  if (v30)
  {
    v31 = objc_allocWithZone(PLUSSchemaPLUSTMDCCorrectedPronunciationTier1);
    v32 = v30;
    v33 = [v31 init];
    if (v33)
    {
      v34 = v33;
      v35 = v17;
      v36 = *&v32[OBJC_IVAR___CorrectedPronunciation_maybeFirstNamePhonemeString];
      if (v36)
      {
        v37 = (v36 + OBJC_IVAR___PhonemeString_symbols);
        v38 = *v37;
        v39 = v37[1];

        v40 = sub_34380();
      }

      else
      {
        v40 = 0;
      }

      [v34 setFirstNamePhonemes:v40];

      v43 = *&v32[OBJC_IVAR___CorrectedPronunciation_maybeLastNamePhonemeString];
      if (v43)
      {
        v44 = (v43 + OBJC_IVAR___PhonemeString_symbols);
        v45 = *v44;
        v46 = v44[1];

        v47 = sub_34380();
      }

      else
      {
        v47 = 0;
      }

      [v34 setLastNamePhonemes:v47];

      v48 = *&v32[OBJC_IVAR___CorrectedPronunciation_maybeNickNamePhonemeString];
      if (v48)
      {
        v49 = (v48 + OBJC_IVAR___PhonemeString_symbols);
        v50 = *v49;
        v51 = v49[1];

        v52 = sub_34380();
      }

      else
      {
        v52 = 0;
      }

      [v34 setNicknamePhonemes:v52];

      v17 = v35;
      [v35 setCorrectedPronunciation:v34];
    }

    else
    {
      v34 = v32;
    }
  }

  v53 = objc_allocWithZone(SISchemaUUID);
  v54 = sub_33B50().super.isa;
  v55 = [v53 initWithNSUUID:v54];

  [v17 setGroundTruthId:v55];
  [v17 setIsTTSMispronounced:*(v60 + v29[12])];
  [v17 setPhonemesToPhonemesDistance:*(v60 + v29[11])];
  [v58 setGroundTruth:v17];
  [v58 setOriginalRequestId:v59];
  [v13 setPlusId:v57];
  [v11 setTmdcGroundTruthGenerated:v58];
  [v11 setEventMetadata:v13];
  sub_3204(&unk_4F4B0, &qword_36C70);
  a2 = swift_allocObject();
  *(a2 + 16) = xmmword_35930;
  *(a2 + 32) = v11;

  return a2;
}

void sub_73AC(unint64_t a1)
{
  if (qword_4E550 != -1)
  {
    swift_once();
  }

  if (byte_4E8A1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v2 = sub_342A0();
    sub_3034(v2, qword_53A18);
    oslog = sub_34280();
    v3 = sub_345D0();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_0, oslog, v3, "Omitting SELF logging call as UsageLoggingDisabled flag present", v4, 2u);
    }
  }

  else
  {
    v6 = [objc_opt_self() sharedAnalytics];
    oslog = [v6 defaultMessageStream];

    if (a1 >> 62)
    {
      v7 = sub_349A0();
      v5 = oslog;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v7 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
      v5 = oslog;
      if (!v7)
      {
        goto LABEL_9;
      }
    }

    if (v7 < 1)
    {
      __break(1u);
      return;
    }

    v8 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = sub_348C0();
      }

      else
      {
        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      ++v8;
      isa = sub_33B50().super.isa;
      [oslog emitMessage:v10 isolatedStreamUUID:isa];
    }

    while (v7 != v8);
  }

  v5 = oslog;
LABEL_9:
}

unint64_t sub_75D8()
{
  result = qword_4E9C0;
  if (!qword_4E9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9C0);
  }

  return result;
}

uint64_t type metadata accessor for TMDCGroundTruth()
{
  result = qword_4EA88;
  if (!qword_4EA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_7678()
{
  result = qword_4E9D8;
  if (!qword_4E9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9D8);
  }

  return result;
}

uint64_t sub_76CC(uint64_t a1)
{
  v2 = sub_3204(&qword_4EA18, &qword_38170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_7734(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4EA18, &qword_38170);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for PhonemeFormat(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhonemeFormat(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_793C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_33B90();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_7A10(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_33B90();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

void sub_7ACC()
{
  sub_33B90();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ContactPronunciation();
    if (v1 <= 0x3F)
    {
      sub_7BBC();
      if (v2 <= 0x3F)
      {
        sub_7C10();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_7BBC()
{
  if (!qword_4EA98)
  {
    type metadata accessor for CorrectedPronunciation();
    v0 = sub_346A0();
    if (!v1)
    {
      atomic_store(v0, &qword_4EA98);
    }
  }
}

void sub_7C10()
{
  if (!qword_4EAA0)
  {
    v0 = sub_346A0();
    if (!v1)
    {
      atomic_store(v0, &qword_4EAA0);
    }
  }
}

unint64_t sub_7C64()
{
  result = qword_4EAF0;
  if (!qword_4EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAF0);
  }

  return result;
}

unint64_t sub_7CBC()
{
  result = qword_4EAF8;
  if (!qword_4EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EAF8);
  }

  return result;
}

unint64_t sub_7D14()
{
  result = qword_4EB00;
  if (!qword_4EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB00);
  }

  return result;
}

unint64_t sub_7D6C()
{
  result = qword_4EB08;
  if (!qword_4EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB08);
  }

  return result;
}

unint64_t sub_7DC0()
{
  result = qword_4EB30;
  if (!qword_4EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB30);
  }

  return result;
}

unint64_t sub_7E14()
{
  result = qword_4EB40;
  if (!qword_4EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB40);
  }

  return result;
}

unint64_t sub_7E68()
{
  result = qword_4EB48;
  if (!qword_4EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB48);
  }

  return result;
}

unint64_t sub_7EBC()
{
  result = qword_4EB50;
  if (!qword_4EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB50);
  }

  return result;
}

uint64_t sub_7F10(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_7F58()
{
  result = qword_4EB88;
  if (!qword_4EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB88);
  }

  return result;
}

unint64_t sub_7FAC()
{
  result = qword_4EB98;
  if (!qword_4EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB98);
  }

  return result;
}

uint64_t sub_8000(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TMDCGroundTruth();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_8064(uint64_t a1)
{
  v2 = type metadata accessor for TMDCGroundTruth();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_80C0()
{
  result = qword_4EBC0;
  if (!qword_4EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBC0);
  }

  return result;
}

uint64_t sub_8114(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for TMDCGroundTruth.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TMDCGroundTruth.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_82B0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_8344(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_8438()
{
  result = qword_4EBD8;
  if (!qword_4EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBD8);
  }

  return result;
}

unint64_t sub_8490()
{
  result = qword_4EBE0;
  if (!qword_4EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBE0);
  }

  return result;
}

unint64_t sub_84E8()
{
  result = qword_4EBE8;
  if (!qword_4EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBE8);
  }

  return result;
}

unint64_t sub_8540()
{
  result = qword_4EBF0;
  if (!qword_4EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBF0);
  }

  return result;
}

unint64_t sub_8598()
{
  result = qword_4EBF8;
  if (!qword_4EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBF8);
  }

  return result;
}

unint64_t sub_85F0()
{
  result = qword_4EC00;
  if (!qword_4EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC00);
  }

  return result;
}

unint64_t sub_8648()
{
  result = qword_4EC08;
  if (!qword_4EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC08);
  }

  return result;
}

unint64_t sub_86A0()
{
  result = qword_4EC10;
  if (!qword_4EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC10);
  }

  return result;
}

unint64_t sub_86F8()
{
  result = qword_4EC18;
  if (!qword_4EC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC18);
  }

  return result;
}

unint64_t sub_8750()
{
  result = qword_4EC20;
  if (!qword_4EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC20);
  }

  return result;
}

unint64_t sub_87A8()
{
  result = qword_4EC28;
  if (!qword_4EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC28);
  }

  return result;
}

unint64_t sub_8800()
{
  result = qword_4EC30;
  if (!qword_4EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC30);
  }

  return result;
}

uint64_t sub_887C()
{
  v1[3] = v0;
  v2 = *(*(sub_3204(&qword_4ED18, &qword_36298) - 8) + 64) + 15;
  v1[4] = swift_task_alloc();
  v3 = sub_33D80();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();
  v6 = sub_3204(&qword_4ED20, &qword_362A0);
  v1[8] = v6;
  v7 = *(v6 - 8);
  v1[9] = v7;
  v8 = *(v7 + 64) + 15;
  v1[10] = swift_task_alloc();
  v9 = sub_3204(&qword_4ED28, &qword_362A8);
  v1[11] = v9;
  v10 = *(v9 - 8);
  v1[12] = v10;
  v11 = *(v10 + 64) + 15;
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return _swift_task_switch(sub_8A50, 0, 0);
}

uint64_t sub_8A50()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[10];
  v6 = *sub_30C0((v0[3] + 16), *(v0[3] + 40));
  sub_13FF8();
  v0[2] = &_swiftEmptyArrayStorage;
  (*(v4 + 16))(v2, v1, v3);
  sub_A830(&qword_4ED30, &qword_4ED28, &qword_362A8);
  sub_34570();
  v7 = sub_A830(&qword_4ED38, &qword_4ED20, &qword_362A0);
  v8 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v9 = swift_task_alloc();
  v0[15] = v9;
  *v9 = v0;
  v9[1] = sub_8BCC;
  v10 = v0[10];
  v11 = v0[8];
  v12 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v12, v11, v7);
}

uint64_t sub_8BCC()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    (*(v2[9] + 8))(v2[10], v2[8]);
    v4 = v2[2];

    v5 = sub_8EC4;
  }

  else
  {
    v5 = sub_8D00;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_8D00()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[11];
    v7 = v0[12];
    v8 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);
    sub_A948(v3, &qword_4ED18, &qword_36298);
    v9 = v0[2];
    (*(v7 + 8))(v4, v6);

    v10 = v0[1];

    return v10(v9);
  }

  else
  {
    (*(v2 + 32))(v0[7], v3, v1);
    v12 = swift_task_alloc();
    v0[17] = v12;
    *v12 = v0;
    v12[1] = sub_8F80;
    v13 = v0[7];
    v14 = v0[3];

    return sub_9284((v0 + 2), v13, v14);
  }
}

uint64_t sub_8EC4()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_8F80()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v10 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v5 = v2[9];
    v4 = v2[10];
    v6 = v2[8];
    (*(v2[6] + 8))(v2[7], v2[5]);
    (*(v5 + 8))(v4, v6);
    v7 = v2[2];

    v8 = sub_91C8;
  }

  else
  {
    (*(v2[6] + 8))(v2[7], v2[5]);
    v8 = sub_90F0;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_90F0()
{
  v1 = sub_A830(&qword_4ED38, &qword_4ED20, &qword_362A0);
  v2 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_8BCC;
  v4 = v0[10];
  v5 = v0[8];
  v6 = v0[4];

  return dispatch thunk of AsyncIteratorProtocol.next()(v6, v5, v1);
}

uint64_t sub_91C8()
{
  v1 = v0[18];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[4];
  (*(v0[12] + 8))(v0[14], v0[11]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_9284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v4 = *(*(sub_3204(&qword_4ED40, &qword_362B8) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v5 = sub_33B90();
  v3[20] = v5;
  v6 = *(v5 - 8);
  v3[21] = v6;
  v7 = *(v6 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_93C8, 0, 0);
}

uint64_t sub_93C8()
{
  v137 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  sub_33D50();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_A948(*(v0 + 152), &qword_4ED40, &qword_362B8);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v5 = sub_342A0();
    sub_3034(v5, qword_53A18);
    v6 = sub_34280();
    v7 = sub_345D0();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_0, v6, v7, "Couldn't locate conversationID, skipping conversation", v8, 2u);
    }

    goto LABEL_38;
  }

  v9 = *(v0 + 144);
  v10 = *(v0 + 136);
  (*(*(v0 + 168) + 32))(*(v0 + 224), *(v0 + 152), *(v0 + 160));
  v11 = objc_autoreleasePoolPush();
  sub_A154(v10, v9, (v0 + 120), v136);
  v12 = *(v0 + 224);
  objc_autoreleasePoolPop(v11);
  v13 = v136[0];
  v14 = sub_1CACC(v12, v136[0]);
  if (v14 == 2)
  {

    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 224);
    v16 = *(v0 + 208);
    v17 = *(v0 + 160);
    v18 = *(v0 + 168);
    v19 = sub_342A0();
    sub_3034(v19, qword_53A18);
    (*(v18 + 16))(v16, v15, v17);
    v20 = sub_34280();
    v21 = sub_345D0();
    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 224);
    v24 = *(v0 + 208);
    v26 = *(v0 + 160);
    v25 = *(v0 + 168);
    if (v22)
    {
      v134 = *(v0 + 224);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v136[0] = v28;
      *v27 = 136315138;
      sub_A8F0();
      v29 = sub_34BB0();
      v31 = v30;
      v32 = *(v25 + 8);
      v32(v24, v26);
      v33 = sub_22960(v29, v31, v136);

      *(v27 + 4) = v33;
      _os_log_impl(&dword_0, v20, v21, "[%s]: Conversation doesn't belong to accepted domains", v27, 0xCu);
      sub_3364(v28);

      v32(v134, v26);
    }

    else
    {

      v60 = *(v25 + 8);
      v60(v24, v26);
      v60(v23, v26);
    }

    goto LABEL_38;
  }

  v35 = *(v0 + 144);
  v36 = v14 & 1;
  v37 = v35[22];
  v38 = v14;
  sub_30C0(v35 + 18, v35[21]);
  if (v38)
  {
    if ((sub_33C80() & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((sub_33C70() & 1) == 0)
  {
LABEL_14:

    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v39 = *(v0 + 224);
    v41 = *(v0 + 168);
    v40 = *(v0 + 176);
    v42 = *(v0 + 160);
    v43 = sub_342A0();
    sub_3034(v43, qword_53A18);
    (*(v41 + 16))(v40, v39, v42);
    v44 = sub_34280();
    v45 = sub_345D0();
    v46 = os_log_type_enabled(v44, v45);
    v47 = *(v0 + 224);
    v49 = *(v0 + 168);
    v48 = *(v0 + 176);
    v50 = *(v0 + 160);
    if (v46)
    {
      v130 = v36;
      v51 = swift_slowAlloc();
      v136[0] = swift_slowAlloc();
      *v51 = 136315394;
      sub_A8F0();
      v52 = sub_34BB0();
      v54 = v53;
      v55 = *(v49 + 8);
      v55(v48, v50);
      v56 = sub_22960(v52, v54, v136);

      *(v51 + 4) = v56;
      *(v51 + 12) = 2080;
      *(v0 + 65) = v130;
      v57 = sub_34400();
      v59 = sub_22960(v57, v58, v136);

      *(v51 + 14) = v59;
      _os_log_impl(&dword_0, v44, v45, "[%s]: %s is not enabled", v51, 0x16u);
      swift_arrayDestroy();

      v55(v47, v50);
    }

    else
    {

      v34 = *(v49 + 8);
      v34(v48, v50);
      v34(v47, v50);
    }

    goto LABEL_38;
  }

  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v61 = *(v0 + 224);
  v62 = *(v0 + 200);
  v64 = *(v0 + 160);
  v63 = *(v0 + 168);
  v65 = sub_342A0();
  sub_3034(v65, qword_53A18);
  log = *(v63 + 16);
  (log)(v62, v61, v64);
  v66 = sub_34280();
  v67 = sub_345D0();
  v68 = os_log_type_enabled(v66, v67);
  v69 = *(v0 + 200);
  v71 = *(v0 + 160);
  v70 = *(v0 + 168);
  if (v68)
  {
    v131 = v36;
    v72 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v136[0] = v128;
    *v72 = 136315138;
    sub_A8F0();
    v73 = sub_34BB0();
    v75 = v74;
    v135 = *(v70 + 8);
    v135(v69, v71);
    v76 = sub_22960(v73, v75, v136);

    *(v72 + 4) = v76;
    _os_log_impl(&dword_0, v66, v67, "[%s]: Begin fetching ConversationData for conversation", v72, 0xCu);
    sub_3364(v128);

    v36 = v131;
  }

  else
  {

    v135 = *(v70 + 8);
    v135(v69, v71);
  }

  v77 = *sub_30C0((*(v0 + 144) + 56), *(*(v0 + 144) + 80));
  sub_32474(v36, v13, v0 + 16);

  v78 = *(v0 + 16);
  v79 = *(v0 + 224);
  v80 = *(v0 + 160);
  if (v78)
  {
    v81 = *(v0 + 184);
    *(v0 + 72) = *(v0 + 24);
    *(v0 + 88) = *(v0 + 40);
    *(v0 + 97) = *(v0 + 49);
    (log)(v81, v79, v80);
    v82 = sub_34280();
    v83 = sub_345D0();
    v84 = os_log_type_enabled(v82, v83);
    v85 = *(v0 + 184);
    v86 = *(v0 + 160);
    v87 = *(v0 + 168);
    if (v84)
    {
      v88 = swift_slowAlloc();
      v132 = v78;
      v89 = swift_slowAlloc();
      v136[0] = v89;
      *v88 = 136315138;
      sub_A8F0();
      v90 = sub_34BB0();
      v92 = v91;
      v93 = v86;
      v94 = v135;
      v135(v85, v93);
      v95 = sub_22960(v90, v92, v136);

      *(v88 + 4) = v95;
      _os_log_impl(&dword_0, v82, v83, "[%s]: Finished fetching ConversationData", v88, 0xCu);
      sub_3364(v89);
      v78 = v132;
    }

    else
    {

      v109 = v86;
      v94 = v135;
      v135(v85, v109);
    }

    v110 = **(v0 + 128);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = sub_13388(0, *(v110 + 2) + 1, 1, v110);
    }

    v112 = *(v110 + 2);
    v111 = *(v110 + 3);
    if (v112 >= v111 >> 1)
    {
      v110 = sub_13388((v111 > 1), v112 + 1, 1, v110);
    }

    v113 = *(v0 + 128);
    v114 = *(v0 + 168) + 8;
    v94(*(v0 + 224), *(v0 + 160));
    *(v110 + 2) = v112 + 1;
    v115 = &v110[56 * v112];
    *(v115 + 4) = v78;
    v116 = *(v0 + 72);
    v117 = *(v0 + 88);
    *(v115 + 65) = *(v0 + 97);
    *(v115 + 56) = v117;
    *(v115 + 40) = v116;
    *v113 = v110;
  }

  else
  {
    (log)(*(v0 + 192), v79, v80);
    v96 = sub_34280();
    v97 = sub_345D0();
    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 224);
    v100 = *(v0 + 192);
    v102 = *(v0 + 160);
    v101 = *(v0 + 168);
    if (v98)
    {
      v133 = *(v0 + 224);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v136[0] = v104;
      *v103 = 136315138;
      sub_A8F0();
      v105 = sub_34BB0();
      v107 = v106;
      v135(v100, v102);
      v108 = sub_22960(v105, v107, v136);

      *(v103 + 4) = v108;
      _os_log_impl(&dword_0, v96, v97, "[%s]: ConversationData couldn't be fetched, skipping conversation", v103, 0xCu);
      sub_3364(v104);

      v135(v133, v102);
    }

    else
    {

      v135(v100, v102);
      v135(v99, v102);
    }
  }

LABEL_38:
  v119 = *(v0 + 216);
  v118 = *(v0 + 224);
  v121 = *(v0 + 200);
  v120 = *(v0 + 208);
  v123 = *(v0 + 184);
  v122 = *(v0 + 192);
  v124 = *(v0 + 176);
  v125 = *(v0 + 152);

  v126 = *(v0 + 8);

  return v126();
}

uint64_t sub_A154@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v52 = a3;
  v53 = a4;
  v7 = sub_3204(&qword_4ED48, &qword_362C0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v50 - v10;
  v12 = sub_33B30();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(v12, v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16, v19);
  v21 = &v50 - v20;
  sub_33D60();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_A948(v11, &qword_4ED48, &qword_362C0);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v22 = sub_342A0();
    sub_3034(v22, qword_53A18);
    v23 = sub_34280();
    v24 = sub_345E0();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v53;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_0, v23, v24, "No timestamp found in the conversation, skipping joining with CoreDuet events", v27, 2u);
    }

    sub_33D70();
    sub_34960();
    sub_349F0();
    v28 = v54;
    if (v54)
    {
      v29 = &_swiftEmptyArrayStorage;
      do
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = sub_134AC(0, v29[2] + 1, 1, v29);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_134AC((v30 > 1), v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        v32 = &v29[2 * v31];
        v32[4] = v28;
        v32[5] = &_swiftEmptyArrayStorage;
        sub_349F0();
        v28 = v54;
      }

      while (v54);
    }

    else
    {
      v29 = &_swiftEmptyArrayStorage;
    }

    *v26 = v29;
  }

  else
  {
    v51 = a1;
    (*(v13 + 32))(v21, v11, v12);
    sub_33B00();
    v33 = a2[17];
    sub_30C0(a2 + 13, a2[16]);
    v34 = sub_A878();
    v35 = *(v34 + 52);
    v36 = (*(v34 + 48) + 7) & 0x1FFFFFFF8;
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_361D0;
    *(v37 + 32) = sub_7F10(0, &qword_4ED50, INStartCallIntent_ptr);
    *(v37 + 40) = sub_7F10(0, &qword_4ED58, INSendMessageIntent_ptr);
    sub_33E90();
    if (v4)
    {

      v38 = *(v13 + 8);
      v38(v18, v12);
      result = (v38)(v21, v12);
      *v52 = v4;
    }

    else
    {
      v52 = 0;

      v40 = sub_34970();

      sub_33D70();
      sub_34970();

      sub_34020();
      sub_33DD0();
      v41 = sub_340E0();

      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v42 = sub_342A0();
      sub_3034(v42, qword_53A18);
      swift_bridgeObjectRetain_n();

      v43 = sub_34280();
      v44 = sub_345D0();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 134218240;
        LODWORD(v51) = v44;
        v46 = *(v40 + 16);

        *(v45 + 4) = v46;

        *(v45 + 12) = 2048;
        v47 = *(v41 + 16);

        *(v45 + 14) = v47;

        _os_log_impl(&dword_0, v43, v51, "Found %ld call/message events, grouped into %ld turnEventPairs", v45, 0x16u);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v48 = v53;
      v49 = *(v13 + 8);
      v49(v18, v12);
      result = (v49)(v21, v12);
      *v48 = v41;
    }
  }

  return result;
}

uint64_t sub_A76C()
{
  sub_3364(v0 + 2);
  sub_3364(v0 + 7);
  v1 = v0[12];

  sub_3364(v0 + 13);
  sub_3364(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_A7E8(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_A830(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_A7E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_A878()
{
  v0 = sub_3204(&qword_4ED60, &qword_362C8);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_4ED68;
    v3 = &unk_362D0;
  }

  else
  {
    v2 = &unk_4F4B0;
    v3 = &qword_36C70;
  }

  return sub_3204(v2, v3);
}

unint64_t sub_A8F0()
{
  result = qword_4E9E8;
  if (!qword_4E9E8)
  {
    sub_33B90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E9E8);
  }

  return result;
}

uint64_t sub_A948(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_3204(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_A9A8()
{
  v2 = sub_33D40();
  v76 = *(v2 - 8);
  v77 = v2;
  v3 = *(v76 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v7);
  v74 = &v67 - v8;
  v9 = sub_33B90();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v13 = __chkstk_darwin(v9, v12);
  v81 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v17 = &v67 - v16;
  v18 = *(v0 + 16);
  sub_34000();
  v19 = sub_33F00();
  v21 = v20;

  if (*(v19 + 16))
  {
    v78 = v21;
    sub_34010();
    v22 = sub_B188(v17, v19);
    v23 = v1;
    if (v1)
    {
      (*(v10 + 8))(v17, v9);
    }

    else
    {
      v36 = v22;
      v38 = *(v10 + 8);
      v37 = v10 + 8;
      v71 = v38;
      v38(v17, v9);

      if (qword_4E5A8 != -1)
      {
        swift_once();
      }

      v39 = sub_342A0();
      sub_3034(v39, qword_53A18);

      v40 = sub_34280();
      v41 = sub_345D0();
      v42 = os_log_type_enabled(v40, v41);
      v69 = v37;
      if (v42)
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        *(v43 + 4) = *(v36 + 2);

        _os_log_impl(&dword_0, v40, v41, "Fetched %ld asrContactTokens", v43, 0xCu);
        v23 = 0;
      }

      else
      {
      }

      v72 = v9;
      v44 = sub_34000();
      v45 = v44;
      v10 = v81;
      v70 = v44 >> 62;
      v75 = v23;
      v68 = v36;
      v46 = v44 & 0xFFFFFFFFFFFFFF8;
      if (v44 >> 62)
      {
        v47 = sub_349A0();
      }

      else
      {
        v47 = *(&dword_10 + (v44 & 0xFFFFFFFFFFFFFF8));
      }

      v48 = 0;
      v49 = v45 & 0xC000000000000001;
      v67 = v45 + 32;
      while (v47 != v48)
      {
        if (v49)
        {
          v50 = sub_348C0();
        }

        else
        {
          if (v48 >= *(v46 + 16))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v50 = *(v45 + 8 * v48 + 32);
        }

        v51 = v50;
        v23 = sub_33D10();

        if (v23)
        {
          v47 = v48;
          break;
        }

        if (__OFADD__(v48++, 1))
        {
          goto LABEL_46;
        }
      }

      if (v70)
      {
        goto LABEL_33;
      }

      result = *(v46 + 16);
      if (v47 == result)
      {
        goto LABEL_34;
      }

LABEL_28:
      if (v49)
      {
        while (1)
        {
          v53 = sub_348C0();
LABEL_31:
          v47 = v53;
          v54 = sub_33D10();

          if (!v54)
          {
            __break(1u);
LABEL_33:
            result = sub_349A0();
            if (v47 != result)
            {
              goto LABEL_28;
            }
          }

          v55 = *(v78 + 16);
          if (!v55)
          {
            goto LABEL_37;
          }

LABEL_34:
          v49 = v10;
          v57 = v76;
          v56 = v77;
          v58 = v74;
          (*(v76 + 16))(v74, v78 + ((*(v57 + 80) + 32) & ~*(v57 + 80)), v77);
          v59 = sub_33D30();
          v60 = v57;
          v10 = v49;
          (*(v60 + 8))(v58, v56);
          if (v59)
          {
            *(&v80 + 1) = sub_C67C();
            *&v79 = v59;
          }

          else
          {
LABEL_37:
            v59 = 0;
            v79 = 0u;
            v80 = 0u;
          }

          v61 = v59;
          sub_34010();
          sub_C3E8(&v79, 0xD000000000000014, 0x8000000000038ED0, v10);
          v71(v10, v72);
          sub_76CC(&v79);
          if (!v55)
          {
            break;
          }

          v46 = v78;
          if (*(v78 + 16))
          {
            v62 = v76;
            v63 = v77;
            v64 = v73;
            (*(v76 + 16))(v73, v78 + ((*(v62 + 80) + 32) & ~*(v62 + 80)), v77);

            v65 = sub_33D20();
            (*(v62 + 8))(v64, v63);
            v10 = v81;
            if (v65)
            {
              *(&v80 + 1) = sub_C67C();
              *&v79 = v65;
LABEL_44:
              v66 = v65;
              sub_34010();
              sub_C3E8(&v79, 0x4C4E544974736F70, 0xED000044496B6E69, v10);
              v71(v10, v72);
              sub_76CC(&v79);
              return v68;
            }

LABEL_43:
            v65 = 0;
            v79 = 0u;
            v80 = 0u;
            goto LABEL_44;
          }

          __break(1u);
        }

        goto LABEL_43;
      }

      if (v47 < *(v46 + 16))
      {
        v53 = *(v67 + 8 * v47);
        goto LABEL_31;
      }

      __break(1u);
    }
  }

  else
  {
    v75 = v1;
    v23 = v9;

    if (qword_4E5A8 != -1)
    {
LABEL_47:
      swift_once();
    }

    v25 = sub_342A0();
    sub_3034(v25, qword_53A18);

    v26 = sub_34280();
    v27 = sub_345E0();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *&v79 = v29;
      *v28 = 136315138;
      v30 = v81;
      sub_34010();
      sub_A8F0();
      v31 = v23;
      v32 = sub_34BB0();
      v34 = v33;
      (*(v10 + 8))(v30, v31);
      v35 = sub_22960(v32, v34, &v79);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_0, v26, v27, "[%s]: No ASR features found for turn", v28, 0xCu);
      sub_3364(v29);
    }

    return 0;
  }

  return result;
}

char *sub_B188(uint64_t a1, uint64_t a2)
{
  v6 = sub_33B90();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = v90 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_315A8(a2);
  if (!v12)
  {
    v20 = 0;
LABEL_26:
    v30 = sub_33B40();
    v32 = v31;
    sub_C2E4();
    swift_allocError();
    *v33 = v30;
    *(v33 + 8) = v32;
    *(v33 + 16) = v20;
    swift_willThrow();
    return v11;
  }

  v13 = v12;
  v100 = v7;
  v14 = *(v12 + 16);
  if (!v14)
  {
    v20 = 0;
LABEL_25:

    goto LABEL_26;
  }

  v99 = v6;
  v15 = sub_315C0(a2);
  if (!v15)
  {
    v20 = 1;
    goto LABEL_25;
  }

  v16 = v15;
  if (!*(v15 + 16))
  {
    v20 = 1;
LABEL_24:

    goto LABEL_25;
  }

  v17 = sub_317A4(a2);
  if (!v17)
  {
    v20 = 2;
    goto LABEL_24;
  }

  v94 = a1;
  v18 = *(v17 + 16);
  if (!v18)
  {
    v20 = 2;
LABEL_23:

    goto LABEL_24;
  }

  v19 = *(v16 + 16);
  v20 = 3;
  if (v19 != *(v13 + 16) || v18 != v19)
  {
    goto LABEL_23;
  }

  v95 = v2;
  v96 = v17;
  v90[1] = v3;
  v21 = 0;
  v97 = v16;
  v98 = v13 + 32;
  v102 = v13;
  v22 = (v13 + 40);
  v23 = &_swiftEmptyArrayStorage;
  do
  {
    v27 = *(v22 - 1);
    v26 = *v22;

    v28 = sub_BA34(&off_46DB8);

    sub_C338(&unk_46DD8);
    if (v28)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v104 = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2FAEC(0, v23[2] + 1, 1);
        v23 = v104;
      }

      v25 = v23[2];
      v24 = v23[3];
      if (v25 >= v24 >> 1)
      {
        sub_2FAEC((v24 > 1), v25 + 1, 1);
        v23 = v104;
      }

      v23[2] = v25 + 1;
      v23[v25 + 4] = v21;
    }

    ++v21;
    v22 += 2;
  }

  while (v14 != v21);
  if (qword_4E5A8 != -1)
  {
    goto LABEL_59;
  }

  while (1)
  {
    v35 = sub_342A0();
    v36 = sub_3034(v35, qword_53A18);

    v92 = v36;
    v37 = sub_34280();
    v38 = sub_345D0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v96;
    v41 = v94;
    if (v39)
    {
      v42 = swift_slowAlloc();
      *v42 = 134217984;
      *(v42 + 4) = v23[2];

      _os_log_impl(&dword_0, v37, v38, "Found %ld ASR indices containing contact tags", v42, 0xCu);
    }

    else
    {
    }

    v44 = v23[2];
    v45 = v100;
    if (!v44)
    {
      break;
    }

    v93 = v40 + 32;
    v94 = v97 + 32;
    v11 = &_swiftEmptyArrayStorage;
    *&v43 = 136315138;
    v91 = v43;
    v46 = 4;
    v101 = v23;
    while (1)
    {
      v47 = v23[v46];
      if ((v47 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (v47 >= *(v102 + 16))
      {
        goto LABEL_56;
      }

      v48 = (v98 + 16 * v47);
      v50 = *v48;
      v49 = v48[1];

      v51 = sub_BACC(v50, v49);
      v53 = v52;
      v23 = v54;

      if (v53)
      {
        if (v47 >= *(v97 + 16))
        {
          goto LABEL_57;
        }

        if (v47 >= *(v96 + 16))
        {
          goto LABEL_58;
        }

        v55 = (v94 + 16 * v47);
        v57 = *v55;
        v56 = v55[1];
        v99 = *(v93 + 8 * v47);
        v100 = v51;
        v58 = 24;
        if (*(v102 + 16) == *(v101 + 16))
        {
          v58 = 32;
        }

        v59 = *(v95 + v58);
        v60 = type metadata accessor for PhonemeString();
        v61 = objc_allocWithZone(v60);
        v62 = &v61[OBJC_IVAR___PhonemeString_symbols];
        *v62 = v57;
        v62[1] = v56;
        v61[OBJC_IVAR___PhonemeString_encoding] = 0;
        v63 = &v61[OBJC_IVAR___PhonemeString_boundary];
        *v63 = 32;
        v63[1] = 0xE100000000000000;
        v103.receiver = v61;
        v103.super_class = v60;

        v64 = objc_msgSendSuper2(&v103, "init");
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_130FC(0, *(v11 + 2) + 1, 1, v11);
        }

        v66 = *(v11 + 2);
        v65 = *(v11 + 3);
        if (v66 >= v65 >> 1)
        {
          v11 = sub_130FC((v65 > 1), v66 + 1, 1, v11);
        }

        v68 = v99;
        v67 = v100;
        v69 = v59 <= v99;
        *(v11 + 2) = v66 + 1;
        v70 = &v11[48 * v66];
        *(v70 + 4) = v67;
        *(v70 + 5) = v53;
        v70[48] = v23;
        *(v70 + 7) = v64;
        *(v70 + 8) = v68;
        v70[72] = v69;
      }

      else
      {

        v71 = sub_34280();
        v72 = sub_345E0();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v104 = v74;
          *v73 = v91;
          v75 = *v48;
          v76 = v48[1];

          v77 = sub_22960(v75, v76, &v104);

          *(v73 + 4) = v77;
          _os_log_impl(&dword_0, v71, v72, "Couldn't build ASRContactName from %s", v73, 0xCu);
          sub_3364(v74);
        }
      }

      v23 = v101;
      ++v46;
      if (!--v44)
      {

        return v11;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
  }

  v78 = v99;
  (*(v45 + 16))(v11, v41, v99);

  v79 = sub_34280();
  v80 = sub_345D0();

  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v104 = v101;
    *v81 = 136315394;
    sub_A8F0();
    v82 = sub_34BB0();
    v84 = v83;
    (*(v45 + 8))(v11, v78);
    v85 = sub_22960(v82, v84, &v104);

    *(v81 + 4) = v85;
    *(v81 + 12) = 2080;
    v86 = sub_34510();
    v88 = v87;

    v89 = sub_22960(v86, v88, &v104);

    *(v81 + 14) = v89;
    _os_log_impl(&dword_0, v79, v80, "[%s]: No contact found in ASR for %s", v81, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    (*(v45 + 8))(v11, v78);
  }

  return &_swiftEmptyArrayStorage;
}

BOOL sub_BA34(uint64_t a1)
{
  v1 = (a1 + 40);
  v2 = *(a1 + 16) + 1;
  do
  {
    if (!--v2)
    {
      break;
    }

    v3 = v1 + 2;
    v6 = *(v1 - 1);
    v7 = *v1;
    sub_324C();
    v4 = sub_34730();
    v1 = v3;
  }

  while ((v4 & 1) == 0);
  return v2 != 0;
}

uint64_t sub_BACC(uint64_t a1, unint64_t a2)
{
  v4 = sub_33AB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v10 = sub_342A0();
  sub_3034(v10, qword_53A18);

  v11 = sub_34280();
  v12 = sub_345D0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v66 = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_22960(a1, a2, &v66);
    _os_log_impl(&dword_0, v11, v12, "toASRContactName for ASR token %s", v13, 0xCu);
    sub_3364(v14);
  }

  v66 = a1;
  v67 = a2;
  v64 = 3158110;
  v65 = 0xE300000000000000;
  v15 = sub_324C();
  v16 = sub_346E0();
  if (v16[2] != 1)
  {

    v29 = sub_34280();
    v34 = sub_345D0();
    if (!os_log_type_enabled(v29, v34))
    {
LABEL_25:

      return 0;
    }

    v35 = swift_slowAlloc();
    *v35 = 0;
    v36 = "Multiple name parts not supported. Skipping this ASR token.";
    v37 = v34;
    v38 = v29;
    v39 = v35;
    v40 = 2;
    goto LABEL_14;
  }

  v18 = v16[4];
  v17 = v16[5];

  v66 = v18;
  v67 = v17;
  v64 = 0x746361746E6F635CLL;
  v65 = 0xE90000000000002DLL;
  v19 = &type metadata for String;
  v20 = sub_346E0();

  if (v20[2] == 2)
  {
    v21 = v20[5];
    v66 = v20[4];
    v67 = v21;
    v64 = 3158622;
    v65 = 0xE300000000000000;
    v62 = 32;
    v63 = 0xE100000000000000;
    v66 = sub_34710();
    v67 = v22;
    sub_33A80();
    v23 = sub_34700();
    v24 = v5;
    v26 = v25;
    v27 = *(v24 + 8);
    v60 = v24 + 8;
    v27(v9, v4);

    v61 = v23;
    v66 = v23;
    v67 = v26;
    v28 = v26;
    v64 = 32;
    v65 = 0xE100000000000000;
    if (sub_34730())
    {

      v29 = sub_34280();
      v30 = sub_345E0();

      if (!os_log_type_enabled(v29, v30))
      {

        goto LABEL_25;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v66 = v32;
      *v31 = 136315138;
      v33 = sub_22960(v61, v26, &v66);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_0, v29, v30, "Multiple words in name text %s not supported. Skipping this ASR token.", v31, 0xCu);
      sub_3364(v32);
      goto LABEL_23;
    }

    if (v20[2] < 2uLL)
    {
      __break(1u);
    }

    else
    {
      v44 = v20[6];
      v45 = v20[7];

      v66 = v44;
      v67 = v45;
      v64 = 3158622;
      v65 = 0xE300000000000000;
      v62 = 32;
      v63 = 0xE100000000000000;
      v46 = sub_34710();
      v48 = v47;

      v66 = v46;
      v67 = v48;
      sub_33A80();
      v19 = sub_34700();
      v15 = v49;
      v27(v9, v4);

      if (qword_4E558 == -1)
      {
        goto LABEL_17;
      }
    }

    swift_once();
LABEL_17:
    v50 = off_4ED70;
    if (*(&dword_10 + off_4ED70))
    {
      v51 = sub_2A60C(v19, v15);
      if (v52)
      {
        v53 = v51;

        v54 = *(*&stru_20.segname[v50 + 16] + v53);
        return v61;
      }
    }

    v29 = sub_34280();
    v56 = sub_345E0();

    if (!os_log_type_enabled(v29, v56))
    {

      goto LABEL_25;
    }

    v57 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    *v57 = 136315394;
    v58 = sub_22960(v19, v15, &v66);

    *(v57 + 4) = v58;
    *(v57 + 12) = 2080;
    v59 = sub_22960(v61, v28, &v66);

    *(v57 + 14) = v59;
    _os_log_impl(&dword_0, v29, v56, "Name part %s invalid for name %s. Skipping this ASR token.", v57, 0x16u);
    swift_arrayDestroy();
LABEL_23:

    goto LABEL_24;
  }

  v29 = sub_34280();
  v41 = sub_345D0();
  if (os_log_type_enabled(v29, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    v43 = v20[2];

    *(v42 + 4) = v43;

    v36 = "Invalid token format. Expected 2 components, actual: %ld. Skipping this ASR token.";
    v37 = v41;
    v38 = v29;
    v39 = v42;
    v40 = 12;
LABEL_14:
    _os_log_impl(&dword_0, v38, v37, v36, v39, v40);
LABEL_24:

    goto LABEL_25;
  }

  swift_bridgeObjectRelease_n();
  return 0;
}

uint64_t sub_C288()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_C2E4()
{
  result = qword_4EE48;
  if (!qword_4EE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EE48);
  }

  return result;
}

uint64_t sub_C38C()
{
  v0 = sub_1AAAC(&off_46D50);
  sub_3204(&qword_4EE50, qword_36390);
  result = swift_arrayDestroy();
  off_4ED70 = v0;
  return result;
}

void sub_C3E8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = sub_33B90();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 24))
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v14 = sub_342A0();
    sub_3034(v14, qword_53A18);
    (*(v9 + 16))(v13, a4, v8);

    v15 = sub_34280();
    v16 = sub_345E0();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v23 = a2;
      v18 = v17;
      v24 = swift_slowAlloc();
      *v18 = 136315394;
      sub_A8F0();
      v19 = sub_34BB0();
      v21 = v20;
      (*(v9 + 8))(v13, v8);
      v22 = sub_22960(v19, v21, &v24);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_22960(v23, a3, &v24);
      _os_log_impl(&dword_0, v15, v16, "[%s]: Failed to extract link ID '%s' for turn", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      (*(v9 + 8))(v13, v8);
    }
  }
}

unint64_t sub_C67C()
{
  result = qword_4F380;
  if (!qword_4F380)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_4F380);
  }

  return result;
}

id sub_C6C8(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v10 = sub_342D0();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = *(v62 + 64);
  v13 = __chkstk_darwin(v10, v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v16);
  v18 = v59 - v17;
  v19 = objc_allocWithZone(sub_33C10());

  v61._countAndFlagsBits = a3;
  v61._object = a4;
  sub_33C00();
  v20 = objc_allocWithZone(sub_33BF0());
  v60._countAndFlagsBits = a1;
  v60._object = a2;
  v64 = sub_33BE0();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  v22 = v21 + 16;
  v66 = v21;
  *(v21 + 24) = 0xE000000000000000;
  v23 = swift_allocObject();
  v65 = v23;
  *(v23 + 16) = 0;
  v24 = (v23 + 16);
  v25 = dispatch_semaphore_create(0);
  v59[0] = v22;
  if (a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = *(v59[2] + OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_sharedSession);
  }

  v27 = swift_allocObject();
  v28 = v65;
  v27[2] = v66;
  v27[3] = v28;
  v27[4] = v25;
  v29 = a5;

  v30 = v25;
  v31 = v64;
  sub_33BC0();

  sub_342C0();
  sub_342E0();
  v32 = v63;
  v33 = *(v62 + 8);
  v33(v15, v63);
  sub_34620();
  v33(v18, v32);
  if (sub_342B0())
  {
    v71 = 0;
    v72 = 0xE000000000000000;
    sub_34890(28);

    v71 = 0x7478657420726F66;
    v72 = 0xE900000000000020;
    sub_34460(v60);
    v73._countAndFlagsBits = 0x6175676E616C202CLL;
    v73._object = 0xEF2065646F436567;
    sub_34460(v73);
    sub_34460(v61);
    v34 = v71;
    v35 = v72;
    sub_D0A8();
    swift_allocError();
    *v36 = v34;
    *(v36 + 8) = v35;
    *(v36 + 16) = 2;
    swift_willThrow();
LABEL_8:
    v41 = v66;

    return v41;
  }

  swift_beginAccess();
  v37 = *v24;
  if (*v24)
  {
    v69 = 0;
    v70 = 0xE000000000000000;
    swift_errorRetain();
    sub_34890(49);
    v74._countAndFlagsBits = 0x7478657420726F66;
    v74._object = 0xE900000000000020;
    sub_34460(v74);
    sub_34460(v60);
    v75._countAndFlagsBits = 0x6175676E616C202CLL;
    v75._object = 0xEF2065646F436567;
    sub_34460(v75);
    sub_34460(v61);
    v76._object = 0x8000000000038F60;
    v76._countAndFlagsBits = 0xD000000000000013;
    sub_34460(v76);
    v67 = v37;
    sub_3204(&qword_4EF28, &qword_36CC0);
    sub_34980();
    v38 = v69;
    v39 = v70;
    sub_D0A8();
    swift_allocError();
    *v40 = v38;
    *(v40 + 8) = v39;
    *(v40 + 16) = 1;
    swift_willThrow();

    goto LABEL_8;
  }

  v43 = v66;
  if (qword_4E5A8 != -1)
  {
    swift_once();
  }

  v44 = sub_342A0();
  sub_3034(v44, qword_53A18);

  v45 = sub_34280();
  v46 = sub_345D0();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = v30;
    v49 = swift_slowAlloc();
    v69 = v49;
    *v47 = 136315138;
    swift_beginAccess();
    v50 = v43[2];
    v51 = v43[3];

    v52 = sub_22960(v50, v51, &v69);
    v31 = v64;

    *(v47 + 4) = v52;
    _os_log_impl(&dword_0, v45, v46, "Successfully fetched phonemes from TTS: %s", v47, 0xCu);
    sub_3364(v49);
    v30 = v48;
  }

  else
  {
  }

  swift_beginAccess();
  v54 = v43[2];
  v53 = v43[3];
  v55 = type metadata accessor for PhonemeString();
  v56 = objc_allocWithZone(v55);
  v57 = &v56[OBJC_IVAR___PhonemeString_symbols];
  *v57 = v54;
  v57[1] = v53;
  v56[OBJC_IVAR___PhonemeString_encoding] = 2;
  v58 = &v56[OBJC_IVAR___PhonemeString_boundary];
  *v58 = 32;
  v58[1] = 0xE100000000000000;
  v68.receiver = v56;
  v68.super_class = v55;

  v41 = objc_msgSendSuper2(&v68, "init", v59[0]);

  return v41;
}

Swift::Int sub_CD8C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v8 = a1;
  }

  else
  {
    v8 = 0;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  swift_beginAccess();
  v10 = *(a4 + 24);
  *(a4 + 16) = v8;
  *(a4 + 24) = v9;

  swift_beginAccess();
  v11 = *(a5 + 16);
  *(a5 + 16) = a3;
  swift_errorRetain();

  return sub_34630();
}

uint64_t sub_CE48()
{
  v1 = OBJC_IVAR____TtC44SiriPrivateLearningTTSMispronunciationPlugin20TTSPhonemesGenerator_currentLocale;
  v2 = sub_34070();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TTSPhonemesGenerator()
{
  result = qword_4EE80;
  if (!qword_4EE80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_CF48()
{
  result = sub_34070();
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

uint64_t sub_CFE4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_D01C()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_D054()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_D0A8()
{
  result = qword_4EF30;
  if (!qword_4EF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF30);
  }

  return result;
}

uint64_t sub_D0FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
  if (!*(a1 + 16))
  {

    goto LABEL_5;
  }

  v6 = sub_2A60C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_5:
    v14 = 0;
    v23 = xmmword_36420;
    v21 = 0uLL;
    v22 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    goto LABEL_6;
  }

  v10 = *(a1 + 56) + 120 * v6;
  v12 = *(v10 + 32);
  v11 = *(v10 + 48);
  v13 = *(v10 + 16);
  v32[0] = *v10;
  v32[1] = v13;
  v33 = v12;
  v34 = v11;
  v14 = *(v10 + 112);
  v16 = *(v10 + 80);
  v15 = *(v10 + 96);
  v35 = *(v10 + 64);
  v36 = v16;
  v37 = v15;
  v38 = v14;
  v29 = v13;
  v30 = v32[0];
  v27 = v34;
  v28 = v33;
  v25 = v16;
  v26 = v35;
  v24 = v15;
  result = sub_D934(v32, v31);
  v18 = v24;
  v17 = v25;
  v20 = v26;
  v19 = v27;
  v22 = v28;
  v21 = v29;
  v23 = v30;
LABEL_6:
  *a2 = v23;
  *(a2 + 16) = v21;
  *(a2 + 32) = v22;
  *(a2 + 48) = v19;
  *(a2 + 64) = v20;
  *(a2 + 80) = v17;
  *(a2 + 96) = v18;
  *(a2 + 112) = v14;
  return result;
}

uint64_t sub_D224(uint64_t a1, uint64_t a2)
{
  v4 = sub_34070();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_D0FC(a2, &v21);
  if (v21 == 1)
  {
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v10 = sub_342A0();
    sub_3034(v10, qword_53A18);
    (*(v5 + 16))(v9, a1, v4);
    v11 = sub_34280();
    v12 = sub_345D0();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      v15 = _s28SiriPrivateLearningAnalytics6LocaleV0abC25TTSMispronunciationPluginE17phonemeDataFormatSSvg_0();
      v17 = v16;
      (*(v5 + 8))(v9, v4);
      v18 = sub_22960(v15, v17, &v28);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_0, v11, v12, "No phonemeData entry for locale %s", v13, 0xCu);
      sub_3364(v14);
    }

    else
    {

      (*(v5 + 8))(v9, v4);
    }

    v19 = 1;
  }

  else
  {
    v28 = v21;
    v32 = v25;
    v33 = v26;
    v34[0] = v27[0];
    *(v34 + 9) = *(v27 + 9);
    v29 = v22;
    v30 = v23;
    v31 = v24;
    v19 = sub_D4EC();
    sub_D8CC(&v21);
  }

  return v19 & 1;
}

uint64_t sub_D4EC()
{
  v1 = sub_33AB0();
  v34 = *(v1 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v1, v3);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v0;
  v6 = v0[10];
  if (v6 && (v7 = *(v6 + 16)) != 0)
  {
    v8 = (v34 + 8);
    v9 = (v6 + 56);
    while (1)
    {
      v10 = *v9;
      if (*v9)
      {
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(v9 - 1) & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          v36 = *(v9 - 1);
          v37 = v10;
          v12 = qword_4E5A0;

          if (v12 != -1)
          {
            swift_once();
          }

          sub_3034(v1, qword_4FA60);
          sub_33AA0();
          sub_324C();
          sub_346F0();
          v14 = v13;
          (*v8)(v5, v1);

          if ((v14 & 1) == 0)
          {
            break;
          }
        }
      }

      v9 += 8;
      if (!--v7)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    v15 = *v35;
    if (*v35 && (v16 = *(v15 + 16)) != 0)
    {
      v17 = (v34 + 8);
      v18 = (v15 + 56);
      while (1)
      {
        v19 = *v18;
        if (*v18)
        {
          v20 = HIBYTE(v19) & 0xF;
          if ((v19 & 0x2000000000000000) == 0)
          {
            v20 = *(v18 - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v20)
          {
            v36 = *(v18 - 1);
            v37 = v19;
            v21 = qword_4E5A0;

            if (v21 != -1)
            {
              swift_once();
            }

            sub_3034(v1, qword_4FA60);
            sub_33AA0();
            sub_324C();
            sub_346F0();
            v23 = v22;
            (*v17)(v5, v1);

            if ((v23 & 1) == 0)
            {
              break;
            }
          }
        }

        v18 += 8;
        if (!--v16)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v24 = v35[5];
      if (!v24)
      {
        return 1;
      }

      v25 = *(v24 + 16);
      if (!v25)
      {
        return 1;
      }

      v26 = (v34 + 8);
      for (i = (v24 + 56); ; i += 8)
      {
        v28 = *i;
        if (*i)
        {
          v29 = HIBYTE(v28) & 0xF;
          if ((v28 & 0x2000000000000000) == 0)
          {
            v29 = *(i - 1) & 0xFFFFFFFFFFFFLL;
          }

          if (v29)
          {
            v36 = *(i - 1);
            v37 = v28;
            v30 = qword_4E5A0;

            if (v30 != -1)
            {
              swift_once();
            }

            sub_3034(v1, qword_4FA60);
            sub_33AA0();
            sub_324C();
            sub_346F0();
            v32 = v31;
            (*v26)(v5, v1);

            if ((v32 & 1) == 0)
            {
              break;
            }
          }
        }

        if (!--v25)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

uint64_t sub_D8CC(uint64_t a1)
{
  v2 = sub_3204(&qword_4F4E0, &unk_36430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_D990(void *a1, uint64_t a2)
{
  v5 = sub_3204(&qword_4EF60, &qword_366A8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_F0C8();
  sub_34CA0();
  v13 = a2;
  v12[15] = 0;
  sub_3204(&qword_4EF48, &qword_366A0);
  sub_F170(&qword_4EF68, sub_F1F4);
  sub_34B70();
  if (!v2)
  {
    v12[14] = 1;
    sub_34B80();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_DB94()
{
  if (*v0)
  {
    result = 0x63656843656D616ELL;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_DBDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x8000000000038F80 == a2 || (sub_34BC0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x63656843656D616ELL && a2 == 0xEC0000006D75736BLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_34BC0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_DCD4(uint64_t a1)
{
  v2 = sub_F0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_DD10(uint64_t a1)
{
  v2 = sub_F0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_DD4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_EEB8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_DD9C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = "ntact#Person#firstName";
  if (v2 == 1)
  {
    v4 = "ntact#Person#firstName";
  }

  else
  {
    v4 = "ntact#Person#lastName";
  }

  if (*a1)
  {
    v5 = 0xD000000000000025;
  }

  else
  {
    v5 = 0xD000000000000026;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = &unk_385E0;
  }

  if (*a2 != 1)
  {
    v3 = "ntact#Person#lastName";
  }

  if (*a2)
  {
    v7 = 0xD000000000000025;
  }

  else
  {
    v7 = 0xD000000000000026;
  }

  if (*a2)
  {
    v8 = v3;
  }

  else
  {
    v8 = &unk_385E0;
  }

  if (v5 == v7 && (v6 | 0x8000000000000000) == (v8 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_34BC0();
  }

  return v9 & 1;
}

Swift::Int sub_DE64()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_DEF4()
{
  *v0;
  *v0;
  sub_34430();
}

Swift::Int sub_DF70()
{
  v1 = *v0;
  sub_34C40();
  sub_34430();

  return sub_34C70();
}

uint64_t sub_DFFC(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EFA8, &qword_366C8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_FEF0();
  sub_34CA0();
  v11 = v3[1];
  v17 = *v3;
  v18 = v11;
  v19 = *(v3 + 32);
  v16 = 0;
  sub_10008();
  sub_34B20();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = *(v3 + 56);
  v17 = *(v3 + 40);
  v18 = v12;
  v19 = *(v3 + 72);
  v16 = 1;
  sub_34B20();
  v14 = v3[6];
  v17 = v3[5];
  v18 = v14;
  v19 = *(v3 + 112);
  v16 = 2;
  sub_34B20();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_E1FC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_F248(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_E22C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000025;
  v3 = "ntact#Person#firstName";
  if (*v1 != 1)
  {
    v3 = "ntact#Person#lastName";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD000000000000026;
    v4 = &unk_385E0;
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

unint64_t sub_E27C()
{
  *v0;
  if (*v0)
  {
    result = 0xD000000000000025;
  }

  else
  {
    result = 0xD000000000000026;
  }

  *v0;
  return result;
}

uint64_t sub_E2C8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F248(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E2F0(uint64_t a1)
{
  v2 = sub_FEF0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E32C(uint64_t a1)
{
  v2 = sub_FEF0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_E368@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F294(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

uint64_t sub_E3E8(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4F028, &qword_36AD8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_105A0();
  sub_34CA0();
  v17 = *v3;
  v16[7] = 0;
  sub_3204(&qword_4F010, &qword_36AD0);
  sub_10648(&qword_4F030, sub_106C0);
  sub_34B70();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = v3[1];
  v12 = v3[2];
  v16[6] = 1;
  sub_34B40();
  v14 = v3[3];
  v15 = *(v3 + 32);
  v16[5] = 2;
  sub_34B30();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_E5E8()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6D617473656D6974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_E648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_F62C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E670(uint64_t a1)
{
  v2 = sub_105A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E6AC(uint64_t a1)
{
  v2 = sub_105A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_E6E8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_F754(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_E748(void *a1)
{
  v3 = v1;
  v5 = sub_3204(&qword_4EF88, &qword_366B8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_FE34();
  sub_34CA0();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  sub_34B00();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  sub_34B00();
  v15 = v3[4];
  v16 = *(v3 + 40);
  v20[13] = 2;
  sub_34B10();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  sub_34B00();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_E90C()
{
  v1 = 0x6449677061;
  v2 = 0x66664F6E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x6172676F6874726FLL;
  }

  if (*v0)
  {
    v1 = 0x61746144737474;
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

uint64_t sub_E994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_FA00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_E9BC(uint64_t a1)
{
  v2 = sub_FE34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_E9F8(uint64_t a1)
{
  v2 = sub_FE34();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_EA34@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_FB68(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_EA90(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  LODWORD(v5) = 0;
  v6 = 0;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v15[0] = a1;
      v15[1] = v7;
      v12 = v15 + v6;
    }

    else
    {
      v11 = v8;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v11 = sub_34900();
      }

      v12 = (v11 + v6);
    }

    v9 = *v12;
    if ((*v12 & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    v13 = (__clz(v9 ^ 0xFF) - 24);
    if (v13 > 2)
    {
      if (v13 == 3)
      {
        v9 = ((v9 & 0xF) << 12) | ((v12[1] & 0x3F) << 6) | v12[2] & 0x3F;
        v10 = 3;
      }

      else
      {
        v9 = ((v9 & 0xF) << 18) | ((v12[1] & 0x3F) << 12) | ((v12[2] & 0x3F) << 6) | v12[3] & 0x3F;
        v10 = 4;
      }

      goto LABEL_7;
    }

    if (v13 == 1)
    {
LABEL_15:
      v10 = 1;
    }

    else
    {
      v10 = 2;
      v9 = v12[1] & 0x3F | ((v9 & 0x1F) << 6);
    }

LABEL_7:
    v6 += v10;
    v5 = (v9 - v5 + 32 * v5);
    if (v6 >= v2)
    {
      return v5;
    }
  }

  v9 = sub_34880();
  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_7;
  }

  __break(1u);
  return 0;
}

__n128 sub_EC04(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_EC18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_EC74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_ECE8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_ECFC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
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

uint64_t sub_ED44(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_ED94(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_EDAC(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_EDD8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 113))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_EE34(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_EEB8(uint64_t *a1)
{
  v3 = sub_3204(&qword_4EF38, &qword_36698);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_30C0(a1, v8);
  sub_F0C8();
  sub_34C90();
  if (!v1)
  {
    sub_3204(&qword_4EF48, &qword_366A0);
    v10[7] = 0;
    sub_F170(&qword_4EF50, sub_F11C);
    sub_34AB0();
    v8 = v11;
    v10[6] = 1;
    sub_34AC0();
    (*(v4 + 8))(v7, v3);
  }

  sub_3364(a1);
  return v8;
}

unint64_t sub_F0C8()
{
  result = qword_4EF40;
  if (!qword_4EF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF40);
  }

  return result;
}

unint64_t sub_F11C()
{
  result = qword_4EF58;
  if (!qword_4EF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF58);
  }

  return result;
}

uint64_t sub_F170(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_A7E8(&qword_4EF48, &qword_366A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F1F4()
{
  result = qword_4EF70;
  if (!qword_4EF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF70);
  }

  return result;
}

uint64_t sub_F248(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_46DE8;
  v6._object = a2;
  v4 = sub_34A10(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_F294@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = sub_3204(&qword_4EF90, &qword_366C0);
  v5 = *(v33 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v8 = &v21 - v7;
  v9 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_FEF0();
  sub_34C90();
  if (v2)
  {
    return sub_3364(a1);
  }

  v10 = v5;
  v32 = a2;
  LOBYTE(v34) = 0;
  sub_FF44();
  v11 = v33;
  sub_34A60();
  v30 = *v42;
  v31 = *&v42[16];
  v56 = v43;
  LOBYTE(v34) = 1;
  sub_34A60();
  v27 = *v42;
  v28 = *&v42[8];
  v29 = *&v42[24];
  v26 = v43;
  v57 = 2;
  sub_34A60();
  (*(v10 + 8))(v8, v11);
  v24 = v54;
  v25 = *(&v53 + 1);
  v23 = *(&v54 + 1);
  v22 = v55;
  v12 = v30;
  v33 = v53;
  v34 = v30;
  v13 = v31;
  v35 = v31;
  v14 = v56;
  LOBYTE(v36) = v56;
  *(&v36 + 1) = v27;
  v37 = v28;
  *&v38 = v29;
  v15 = v26;
  BYTE8(v38) = v26;
  v39 = v53;
  v40 = v54;
  v41 = v55;
  sub_D934(&v34, v42);
  sub_3364(a1);
  *v42 = v12;
  *&v42[16] = v13;
  v43 = v14;
  v44 = v27;
  v45 = v28;
  v46 = v29;
  v47 = v15;
  v48 = v33;
  v49 = v25;
  v50 = v24;
  v51 = v23;
  v52 = v22;
  result = sub_FFD8(v42);
  v17 = v39;
  v18 = v32;
  *(v32 + 64) = v38;
  *(v18 + 80) = v17;
  *(v18 + 96) = v40;
  *(v18 + 112) = v41;
  v19 = v35;
  *v18 = v34;
  *(v18 + 16) = v19;
  v20 = v37;
  *(v18 + 32) = v36;
  *(v18 + 48) = v20;
  return result;
}

uint64_t sub_F62C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x8000000000038FA0 == a2 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 2;
  }

  else
  {
    v5 = sub_34BC0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_F754@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_3204(&qword_4F000, &qword_36AC8);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_105A0();
  sub_34C90();
  if (v2)
  {
    return sub_3364(a1);
  }

  sub_3204(&qword_4F010, &qword_36AD0);
  v26 = 0;
  sub_10648(&qword_4F018, sub_105F4);
  sub_34AB0();
  v23 = a2;
  v11 = v27;
  v25 = 1;
  v12 = sub_34A80();
  v22 = v13;
  v24 = 2;
  v14 = sub_34A70();
  v15 = v9;
  v17 = v16;
  (*(v6 + 8))(v15, v5);
  result = sub_3364(a1);
  v19 = v22;
  v20 = v23;
  *v23 = v11;
  v20[1] = v12;
  v20[2] = v19;
  v20[3] = v14;
  *(v20 + 32) = v17 & 1;
  return result;
}

uint64_t sub_FA00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449677061 && a2 == 0xE500000000000000;
  if (v4 || (sub_34BC0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61746144737474 && a2 == 0xE700000000000000 || (sub_34BC0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x66664F6E656B6F74 && a2 == 0xEB00000000746573 || (sub_34BC0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6172676F6874726FLL && a2 == 0xEB00000000796870)
  {

    return 3;
  }

  else
  {
    v6 = sub_34BC0();

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

uint64_t sub_FB68@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_3204(&qword_4EF78, &qword_366B0);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v26 - v8;
  v10 = a1[4];
  sub_30C0(a1, a1[3]);
  sub_FE34();
  sub_34C90();
  if (v2)
  {
    return sub_3364(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = sub_34A40();
  v13 = v12;
  v29 = v11;
  LOBYTE(v34[0]) = 1;
  *&v28 = sub_34A40();
  *(&v28 + 1) = v14;
  LOBYTE(v34[0]) = 2;
  v27 = sub_34A50();
  v40 = v15 & 1;
  v41 = 3;
  v16 = sub_34A40();
  v17 = v9;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v20 = v29;
  *&v30 = v29;
  *(&v30 + 1) = v13;
  v31 = v28;
  v21 = v27;
  *&v32 = v27;
  v22 = v40;
  BYTE8(v32) = v40;
  *&v33 = v16;
  *(&v33 + 1) = v19;
  sub_FE88(&v30, v34);
  sub_3364(a1);
  v34[0] = v20;
  v34[1] = v13;
  v35 = v28;
  v36 = v21;
  v37 = v22;
  v38 = v16;
  v39 = v19;
  result = sub_FEC0(v34);
  v24 = v31;
  *a2 = v30;
  a2[1] = v24;
  v25 = v33;
  a2[2] = v32;
  a2[3] = v25;
  return result;
}

unint64_t sub_FE34()
{
  result = qword_4EF80;
  if (!qword_4EF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF80);
  }

  return result;
}

unint64_t sub_FEF0()
{
  result = qword_4EF98;
  if (!qword_4EF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EF98);
  }

  return result;
}

unint64_t sub_FF44()
{
  result = qword_4EFA0;
  if (!qword_4EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFA0);
  }

  return result;
}

uint64_t sub_FF98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_10008()
{
  result = qword_4EFB0;
  if (!qword_4EFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFB0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhonemeData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PhonemeData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 sub_101D8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_101EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_10234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1028C()
{
  result = qword_4EFB8;
  if (!qword_4EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFB8);
  }

  return result;
}

unint64_t sub_102E4()
{
  result = qword_4EFC0;
  if (!qword_4EFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFC0);
  }

  return result;
}

unint64_t sub_1033C()
{
  result = qword_4EFC8;
  if (!qword_4EFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFC8);
  }

  return result;
}

unint64_t sub_10394()
{
  result = qword_4EFD0;
  if (!qword_4EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFD0);
  }

  return result;
}

unint64_t sub_103EC()
{
  result = qword_4EFD8;
  if (!qword_4EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFD8);
  }

  return result;
}

unint64_t sub_10444()
{
  result = qword_4EFE0;
  if (!qword_4EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFE0);
  }

  return result;
}

unint64_t sub_1049C()
{
  result = qword_4EFE8;
  if (!qword_4EFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFE8);
  }

  return result;
}

unint64_t sub_104F4()
{
  result = qword_4EFF0;
  if (!qword_4EFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFF0);
  }

  return result;
}

unint64_t sub_1054C()
{
  result = qword_4EFF8;
  if (!qword_4EFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EFF8);
  }

  return result;
}

unint64_t sub_105A0()
{
  result = qword_4F008;
  if (!qword_4F008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F008);
  }

  return result;
}

unint64_t sub_105F4()
{
  result = qword_4F020;
  if (!qword_4F020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F020);
  }

  return result;
}

uint64_t sub_10648(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_A7E8(&qword_4F010, &qword_36AD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_106C0()
{
  result = qword_4F038;
  if (!qword_4F038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F038);
  }

  return result;
}

unint64_t sub_10728()
{
  result = qword_4F040;
  if (!qword_4F040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F040);
  }

  return result;
}

unint64_t sub_10780()
{
  result = qword_4F048;
  if (!qword_4F048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F048);
  }

  return result;
}

unint64_t sub_107D8()
{
  result = qword_4F050;
  if (!qword_4F050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F050);
  }

  return result;
}

uint64_t type metadata accessor for TMDCCoreDataStore()
{
  result = qword_4F068;
  if (!qword_4F068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_108BC()
{
  v2 = sub_34030();
  v3 = v0;

  v4._object = 0x80000000000390E0;
  v4._countAndFlagsBits = 0xD000000000000019;
  sub_34460(v4);

  qword_4F058 = v2;
  unk_4F060 = v3;
  return result;
}

id sub_1092C(id a1)
{
  v2 = objc_opt_self();
  v3 = sub_34380();
  v4 = [v2 entityForName:v3 inManagedObjectContext:a1];

  if (v4)
  {
    a1 = [objc_allocWithZone(type metadata accessor for TMDCGroundTruthCoreDataRecord()) initWithEntity:v4 insertIntoManagedObjectContext:a1];
    v7 = a1;
    sub_10A28(&v7);
  }

  else
  {
    sub_13878();
    swift_allocError();
    *v5 = 0;
    v5[1] = 0;
    swift_willThrow();
  }

  return a1;
}

void sub_10A28(void **a1)
{
  v3 = sub_33B30();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  isa = sub_33B50().super.isa;
  [v9 setIdentifier:isa];

  v11 = type metadata accessor for TMDCGroundTruth();
  v12 = (v1 + v11[6]);
  v13 = *v12;
  v14 = v12[1];
  v15 = sub_34380();
  [v9 setContactName:v15];

  v16 = (v1 + v11[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = sub_34380();
  [v9 setAsrPhonemes:v19];

  v20 = [objc_allocWithZone(NSNumber) initWithLongLong:*(v1 + v11[7])];
  [v9 setAsrConfidence:v20];

  [v9 setSiriCurrentPronunciation:*(v1 + v11[9])];
  [v9 setSiriCorrectedPronunciation:*(v1 + v11[10])];
  v21 = [objc_allocWithZone(NSNumber) initWithDouble:*(v1 + v11[11])];
  [v9 setP2pDistance:v21];

  v22 = [objc_allocWithZone(NSNumber) initWithBool:*(v1 + v11[12])];
  [v9 setTtsMispronounced:v22];

  v23 = (v1 + v11[13]);
  if (v23[1])
  {
    v24 = *v23;
    v25 = sub_34380();
  }

  else
  {
    v25 = 0;
  }

  [v9 setOverriddenContactIdentifier:v25];

  sub_33B20();
  sub_33B10();
  v27 = v26;
  (*(v4 + 8))(v8, v3);
  v28 = [objc_allocWithZone(NSNumber) initWithDouble:v27];
  [v9 setEditTimestamp:v28];
}

int *sub_10CF4@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_33B90();
  v3 = *(v44 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v44, v5);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 identifier];
  sub_33B70();

  v9 = [v1 contactName];
  v10 = sub_343B0();
  v42 = v11;
  v43 = v10;

  v12 = [v1 asrConfidence];
  v41 = [v12 longLongValue];

  v13 = [v1 asrPhonemes];
  v14 = sub_343B0();
  v39 = v15;
  v40 = v14;

  v16 = [v1 siriCurrentPronunciation];
  v17 = [v1 siriCorrectedPronunciation];
  v18 = [v1 p2pDistance];
  [v18 doubleValue];
  v20 = v19;

  v21 = [v1 ttsMispronounced];
  v22 = [v21 BOOLValue];

  v23 = [v1 overriddenContactIdentifier];
  if (v23)
  {
    v24 = v23;
    v25 = sub_343B0();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v28 = sub_33FF0();
  v29 = *(v28 + 48);
  v30 = *(v28 + 52);
  swift_allocObject();
  sub_33FE0();
  v31 = sub_33FD0();

  (*(v3 + 32))(a1, v7, v44);
  result = type metadata accessor for TMDCGroundTruth();
  *(a1 + result[5]) = (v31 & 1) == 0;
  v33 = (a1 + result[6]);
  v34 = v42;
  *v33 = v43;
  v33[1] = v34;
  v35 = v40;
  *(a1 + result[7]) = v41;
  v36 = (a1 + result[8]);
  v37 = v39;
  *v36 = v35;
  v36[1] = v37;
  *(a1 + result[9]) = v16;
  *(a1 + result[10]) = v17;
  *(a1 + result[11]) = v20;
  *(a1 + result[12]) = v22;
  v38 = (a1 + result[13]);
  *v38 = v25;
  v38[1] = v27;
  return result;
}

void sub_10FF4()
{
  v1 = sub_33DA0();
  v2 = sub_1092C(v1);

  if (!v0)
  {

    v3 = sub_33DA0();
    v7 = 0;
    v4 = [v3 save:&v7];

    if (v4)
    {
      v5 = v7;
    }

    else
    {
      v6 = v7;
      sub_33AC0();

      swift_willThrow();
    }
  }
}

void sub_110E8(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v35 = a3;
  v36 = a1;
  v5 = type metadata accessor for TMDCGroundTruth();
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = sub_34380();
  v12 = [v10 initWithEntityName:v11];

  if (a2)
  {
    sub_7F10(0, &qword_4F0C0, NSPredicate_ptr);
    sub_3204(&qword_4F0C8, &qword_36C78);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_35920;
    *(v13 + 56) = &type metadata for String;
    *(v13 + 64) = sub_13820();
    *(v13 + 32) = v36;
    *(v13 + 40) = a2;

    v14 = sub_345B0();
    [v12 setPredicate:v14];
  }

  sub_3204(&unk_4F4B0, &qword_36C70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_35930;
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = sub_34380();
  v18 = [v16 initWithKey:v17 ascending:0];

  *(v15 + 32) = v18;
  sub_7F10(0, &qword_4F0B8, NSSortDescriptor_ptr);
  isa = sub_344F0().super.isa;

  [v12 setSortDescriptors:isa];

  v20 = sub_33DA0();
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v21 = sub_34650();
  v22 = v3;
  if (v3)
  {
  }

  else
  {
    v23 = v21;

    if (v23 >> 62)
    {
      goto LABEL_21;
    }

    v24 = *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8));
    v33 = 0;
    for (i = v12; v24; i = v12)
    {
      v25 = 0;
      v36 = v23 & 0xC000000000000001;
      v22 = _swiftEmptyArrayStorage;
      v26 = v9;
      v12 = v24;
      while (1)
      {
        if (v36)
        {
          v27 = sub_348C0();
        }

        else
        {
          if (v25 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_20;
          }

          v27 = *(v23 + 8 * v25 + 32);
        }

        v28 = v27;
        v29 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          break;
        }

        sub_10CF4(v9);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_135E0(0, v22[2] + 1, 1, v22, &qword_4F0D8, &qword_36C80, type metadata accessor for TMDCGroundTruth);
        }

        v31 = v22[2];
        v30 = v22[3];
        if (v31 >= v30 >> 1)
        {
          v22 = sub_135E0(v30 > 1, v31 + 1, 1, v22, &qword_4F0D8, &qword_36C80, type metadata accessor for TMDCGroundTruth);
        }

        v22[2] = v31 + 1;
        v32 = v22 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31;
        v9 = v26;
        sub_137BC(v26, v32);
        ++v25;
        if (v29 == v12)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v24 = sub_349A0();
      v33 = v22;
    }

    v22 = _swiftEmptyArrayStorage;
LABEL_23:

    *v35 = v22;
  }
}

void sub_11594(uint64_t a1)
{
  v3 = objc_allocWithZone(NSFetchRequest);
  v4 = sub_34380();
  v5 = [v3 initWithEntityName:v4];

  if (*(a1 + 16))
  {
    sub_7F10(0, &qword_4F0C0, NSPredicate_ptr);
    sub_3204(&qword_4F0C8, &qword_36C78);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_35920;
    *(v6 + 56) = sub_3204(&qword_4F138, &qword_36CD0);
    *(v6 + 64) = sub_13E28();
    *(v6 + 32) = a1;

    v7 = sub_345B0();
    [v5 setPredicate:v7];
  }

  v8 = sub_33DA0();
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v9 = sub_34650();
  if (v1)
  {
  }

  else
  {
    v10 = v9;

    v21 = v5;
    if (v10 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)); i; i = sub_349A0())
    {
      v12 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v13 = sub_348C0();
        }

        else
        {
          if (v12 >= *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_16;
          }

          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        v16 = sub_33DA0();
        [v16 deleteObject:v14];

        ++v12;
        if (v15 == i)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

LABEL_18:

    v17 = sub_33DA0();
    v22 = 0;
    v18 = [v17 save:&v22];

    if (v18)
    {
      v19 = v22;
    }

    else
    {
      v20 = v22;
      sub_33AC0();

      swift_willThrow();
    }
  }
}

void sub_118B4()
{
  v2 = v0;
  v3 = sub_33DA0();
  v4 = sub_1207C();

  if (qword_4E5A8 != -1)
  {
    goto LABEL_63;
  }

  while (1)
  {
    v5 = sub_342A0();
    sub_3034(v5, qword_53A18);
    v6 = sub_34280();
    v7 = sub_345D0();
    if (os_log_type_enabled(v6, v7))
    {
      v1 = swift_slowAlloc();
      *v1 = 134217984;
      *(v1 + 4) = v4;
      _os_log_impl(&dword_0, v6, v7, "Current TMDCCoreData store size (bytes): %ld", v1, 0xCu);
    }

    v8 = v4 - 500000;
    if (__OFADD__(v4, -500000))
    {
      __break(1u);
    }

    else
    {
      v9 = sub_34280();
      v10 = sub_345D0();
      v11 = os_log_type_enabled(v9, v10);
      if (v8 < 1)
      {
        if (v11)
        {
          v14 = swift_slowAlloc();
          *v14 = 0;
          _os_log_impl(&dword_0, v9, v10, "Store size to delete is not greater than 0, skipping deletion", v14, 2u);
        }

        return;
      }

      if (v11)
      {
        v12 = swift_slowAlloc();
        *v12 = 134217984;
        *(v12 + 4) = v8;
        _os_log_impl(&dword_0, v9, v10, "Store size to delete (in bytes): %ld", v12, 0xCu);
      }

      v13 = sub_12A60(0, 1, 1);
      if (v2)
      {
        return;
      }

      v2 = v13;
      v1 = v13 >> 62;
      if (!(v13 >> 62))
      {
        v15 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        if (v15 < 1)
        {
          goto LABEL_66;
        }

        goto LABEL_15;
      }
    }

    v15 = sub_349A0();
    if (v15 < 1)
    {
LABEL_66:

      v22 = sub_34280();
      v52 = sub_345D0();
      if (os_log_type_enabled(v22, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_0, v22, v52, "No records were fetched, skipping deletion", v53, 2u);
      }

      goto LABEL_25;
    }

LABEL_15:
    v16 = v4 / v15;
    if (!(v4 / v15))
    {
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
    }

    v17 = v8 / v16;
    if (v8 / v16 < 1)
    {

      v22 = sub_34280();
      v23 = sub_345D0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_0, v22, v23, "No records to delete based on size, skipping deletion", v24, 2u);
      }

LABEL_25:

      return;
    }

    v18 = sub_34280();
    v19 = sub_345D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_0, v18, v19, "Number of records to delete: %ld", v20, 0xCu);
    }

    if (v1)
    {
      v25 = sub_349A0();
      if (v25 >= v17)
      {
        v26 = v17;
      }

      else
      {
        v26 = v25;
      }

      if (v25 >= 0)
      {
        v4 = v26;
      }

      else
      {
        v4 = v17;
      }

      if (v4 < 0)
      {
        goto LABEL_73;
      }

      if (sub_349A0() < 0)
      {
        goto LABEL_74;
      }

      v21 = sub_349A0();
    }

    else
    {
      v21 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      if (v21 >= v17)
      {
        v4 = v17;
      }

      else
      {
        v4 = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8));
      }
    }

    if (v21 < v4)
    {
      goto LABEL_70;
    }

    if ((v2 & 0xC000000000000001) != 0 && v4)
    {
      type metadata accessor for TMDCGroundTruthCoreDataRecord();

      v27 = 0;
      do
      {
        v28 = (v27 + 1);
        sub_348B0(v27);
        v27 = v28;
      }

      while (v4 != v28);
    }

    else
    {
    }

    if (v1)
    {
      sub_349B0();
      v29 = v30;
      v1 = v31;
      v33 = v32;

      v4 = v33 >> 1;
    }

    else
    {
      v29 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v2 = v4 - v1;
    if (__OFSUB__(v4, v1))
    {
      goto LABEL_71;
    }

    if (!v2)
    {
      break;
    }

    v54 = v17;
    v55 = _swiftEmptyArrayStorage;
    sub_34930();
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_72;
    }

    if (v4 <= v1)
    {
      v34 = v1;
    }

    else
    {
      v34 = v4;
    }

    v35 = v34 - v1;
    v36 = (v29 + 8 * v1);
    while (v35)
    {
      v37 = *v36++;
      v4 = [v37 objectID];
      sub_34910();
      v1 = v55[2];
      sub_34940();
      sub_34950();
      sub_34920();
      --v35;
      if (!--v2)
      {
        swift_unknownObjectRelease();
        v17 = v54;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
  }

  swift_unknownObjectRelease();
LABEL_56:
  v38 = objc_allocWithZone(NSBatchDeleteRequest);
  sub_7F10(0, &qword_4F120, NSManagedObjectID_ptr);
  isa = sub_344F0().super.isa;

  v40 = [v38 initWithObjectIDs:isa];

  v41 = sub_33DA0();
  v55 = 0;
  v42 = [v41 executeRequest:v40 error:&v55];

  v43 = v55;
  if (v42 && (v44 = v55, v42, v45 = sub_33DA0(), v55 = 0, v46 = [v45 save:&v55], v45, v43 = v55, v46))
  {
    v47 = v55;
    v48 = sub_34280();
    v49 = sub_345D0();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v17;
      _os_log_impl(&dword_0, v48, v49, "Completed deleting %ld TMDC CoreData records", v50, 0xCu);
    }
  }

  else
  {
    v51 = v43;
    sub_33AC0();

    swift_willThrow();
  }
}

char *sub_1207C()
{
  v1 = v0;
  v2 = sub_3204(&qword_4F128, &qword_36CC8);
  v3 = *(*(v2 - 8) + 64);
  v5 = __chkstk_darwin(v2 - 8, v4);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v77 - v9;
  v11 = sub_33AF0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11, v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [v1 persistentStoreCoordinator];
  if (!v17)
  {
    goto LABEL_50;
  }

  v18 = v17;
  v19 = [v17 persistentStores];

  sub_7F10(0, &qword_4F130, NSPersistentStore_ptr);
  v20 = sub_34500();

  if (!(v20 >> 62))
  {
    if (*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_4;
    }

    goto LABEL_49;
  }

  if (!sub_349A0())
  {
LABEL_49:

LABEL_50:
    (*(v12 + 56))(v10, 1, 1, v11);
    goto LABEL_51;
  }

LABEL_4:
  if ((v20 & 0xC000000000000001) != 0)
  {
    v21 = sub_348C0();
  }

  else
  {
    if (!*(&dword_10 + (v20 & 0xFFFFFFFFFFFFFF8)))
    {
      __break(1u);
      goto LABEL_59;
    }

    v21 = *(v20 + 32);
  }

  v22 = v21;

  v23 = [v22 URL];

  if (v23)
  {
    sub_33AD0();

    (*(v12 + 56))(v7, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v7, 1, 1, v11);
  }

  sub_13C9C(v7, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
LABEL_51:
    sub_13D0C(v10);
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v73 = sub_342A0();
    sub_3034(v73, qword_53A18);
    v74 = sub_34280();
    v75 = sub_345E0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_0, v74, v75, "NSManagedObjectContext: Failed to get store URL", v76, 2u);
    }

    return 0;
  }

  (*(v12 + 32))(v16, v10, v11);
  v24 = objc_opt_self();
  v25 = [v24 defaultManager];
  sub_33AE0();
  v26 = sub_34380();

  v79 = 0;
  v27 = [v25 attributesOfItemAtPath:v26 error:&v79];

  v28 = v79;
  if (!v27)
  {
LABEL_25:
    v49 = v79;
LABEL_26:
    sub_33AC0();

    swift_willThrow();
    if (qword_4E5A8 != -1)
    {
      swift_once();
    }

    v50 = sub_342A0();
    sub_3034(v50, qword_53A18);
    swift_errorRetain();
    v51 = sub_34280();
    v52 = sub_345E0();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v81[0] = v54;
      *v53 = 136315138;
      swift_getErrorValue();
      v55 = sub_34BF0();
      v57 = sub_22960(v55, v56, v81);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_0, v51, v52, "NSManagedObjectContext: Cannot determine store size %s", v53, 0xCu);
      sub_3364(v54);
    }

    else
    {
    }

LABEL_31:
    (*(v12 + 8))(v16, v11);
    return 0;
  }

  type metadata accessor for FileAttributeKey();
  sub_13D74();
  v29 = sub_342F0();
  v30 = v28;

  if (!*(v29 + 16) || (v31 = sub_2A71C(NSFileSize), (v32 & 1) == 0))
  {

LABEL_21:
    if (qword_4E5A8 == -1)
    {
LABEL_22:
      v45 = sub_342A0();
      sub_3034(v45, qword_53A18);
      v46 = sub_34280();
      v47 = sub_345E0();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_0, v46, v47, "NSManagedObjectContext: Failed to get store size", v48, 2u);
      }

      goto LABEL_31;
    }

LABEL_59:
    swift_once();
    goto LABEL_22;
  }

  sub_13DCC(*(v29 + 56) + 32 * v31, v81);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v77 = v79;
  v78 = NSFileSize;
  v33 = [v24 defaultManager];
  v79 = sub_33AE0();
  v80 = v34;
  v82._countAndFlagsBits = 1818326829;
  v82._object = 0xE400000000000000;
  sub_34460(v82);
  v35 = sub_34380();

  v79 = 0;
  v36 = [v33 attributesOfItemAtPath:v35 error:&v79];

  v37 = v79;
  if (!v36)
  {
    goto LABEL_25;
  }

  v38 = sub_342F0();
  v39 = v37;

  if (*(v38 + 16))
  {
    v40 = sub_2A71C(v78);
    p_weak_ivar_lyt = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
    v42 = &PostSiriEngagementDataProcessor.weak_ivar_lyt;
    if (v43)
    {
      sub_13DCC(*(v38 + 56) + 32 * v40, v81);

      if (swift_dynamicCast())
      {
        v44 = v79;
        goto LABEL_36;
      }
    }

    else
    {
    }

    v44 = 0;
  }

  else
  {

    v44 = 0;
    p_weak_ivar_lyt = (&PostSiriEngagementDataProcessor + 56);
    v42 = (&PostSiriEngagementDataProcessor + 56);
  }

LABEL_36:
  v58 = [v24 v42[446]];
  v79 = sub_33AE0();
  v80 = v59;
  v83._countAndFlagsBits = 1835561773;
  v83._object = 0xE400000000000000;
  sub_34460(v83);
  v60 = sub_34380();

  v79 = 0;
  v61 = [v58 p:v60 weak:&v79 ivar:?lyt[447]];

  v62 = v79;
  if (!v61)
  {
LABEL_47:
    v49 = v62;
    goto LABEL_26;
  }

  v63 = sub_342F0();
  v64 = v62;

  if (*(v63 + 16) && (v65 = sub_2A71C(v78), (v66 & 1) != 0))
  {
    sub_13DCC(*(v63 + 56) + 32 * v65, v81);
    v67 = *(v12 + 8);
    v12 += 8;
    v67(v16, v11);

    if (swift_dynamicCast())
    {
      v68 = v79;
      goto LABEL_43;
    }
  }

  else
  {

    v69 = *(v12 + 8);
    v12 += 8;
    v69(v16, v11);
  }

  v68 = 0;
LABEL_43:
  v70 = __OFADD__(v77, v68);
  v71 = &v68[v77];
  if (v70)
  {
    __break(1u);
  }

  result = &v44[v71];
  if (__OFADD__(v71, v44))
  {
    __break(1u);
    goto LABEL_47;
  }

  return result;
}

uint64_t sub_12A60(uint64_t a1, char a2, char a3)
{
  v5 = objc_allocWithZone(NSFetchRequest);
  v6 = sub_34380();
  v7 = [v5 initWithEntityName:v6];

  sub_3204(&unk_4F4B0, &qword_36C70);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_35930;
  v9 = objc_allocWithZone(NSSortDescriptor);
  v10 = sub_34380();
  v11 = [v9 initWithKey:v10 ascending:a3 & 1];

  *(v8 + 32) = v11;
  sub_7F10(0, &qword_4F0B8, NSSortDescriptor_ptr);
  isa = sub_344F0().super.isa;

  [v7 setSortDescriptors:isa];

  if ((a2 & 1) == 0)
  {
    [v7 setFetchLimit:a1];
  }

  v13 = sub_33DA0();
  type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v14 = sub_34650();

  return v14;
}

uint64_t sub_12C4C()
{
  sub_33DB0();

  return swift_deallocClassInstance();
}

char *sub_12C84(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F170, &qword_36D00);
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
    v10 = &_swiftEmptyArrayStorage;
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

char *sub_12DAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F178, &qword_36D08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_12ED4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_3204(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_13008(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F158, &qword_36CE8);
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

char *sub_130FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F148, &qword_36CD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_13240(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4F0F0, &qword_36C90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_3204(&qword_4F0F8, &qword_36C98);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_13388(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F150, &qword_36CE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_134AC(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4F160, &qword_36CF0);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_3204(&qword_4F168, &qword_36CF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_135E0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_3204(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_137BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TMDCGroundTruth();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_13820()
{
  result = qword_4F0D0;
  if (!qword_4F0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0D0);
  }

  return result;
}

unint64_t sub_13878()
{
  result = qword_4F0E0;
  if (!qword_4F0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F0E0);
  }

  return result;
}

char *sub_138CC(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F188, qword_36D20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_139D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_3204(&qword_4F118, &qword_36CB8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    sub_3204(&qword_4EF28, &qword_36CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_13B0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_3204(&qword_4F100, &qword_36CA0);
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
    v10 = &_swiftEmptyArrayStorage;
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

void *sub_13C18(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_3204(&qword_4F100, &qword_36CA0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_13C9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_3204(&qword_4F128, &qword_36CC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_13D0C(uint64_t a1)
{
  v2 = sub_3204(&qword_4F128, &qword_36CC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_13D74()
{
  result = qword_4E710;
  if (!qword_4E710)
  {
    type metadata accessor for FileAttributeKey();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4E710);
  }

  return result;
}

uint64_t sub_13DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_13E28()
{
  result = qword_4F140;
  if (!qword_4F140)
  {
    sub_A7E8(&qword_4F138, &qword_36CD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F140);
  }

  return result;
}

id TMDCGroundTruthCoreDataRecord.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id TMDCGroundTruthCoreDataRecord.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for TMDCGroundTruthCoreDataRecord();
  v5 = objc_msgSendSuper2(&v7, "initWithEntity:insertIntoManagedObjectContext:", a1, a2);

  return v5;
}

id TMDCGroundTruthCoreDataRecord.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TMDCGroundTruthCoreDataRecord();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_13FF8()
{
  v1 = sub_3204(&qword_4F268, &qword_36E08);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v5 = __chkstk_darwin(v1, v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5, v8);
  v10 = &v17 - v9;
  v11 = v0[11];
  sub_30C0(v0 + 7, v0[10]);
  v12 = sub_33F30();
  if (!v12)
  {
    sub_33E30();
    v12 = sub_33E20();
  }

  v13 = v12;
  v14 = v0[6];
  sub_30C0(v0 + 2, v0[5]);
  sub_33FB0();
  (*(v2 + 16))(v7, v10, v1);
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_36E18;
  *(v15 + 24) = v0;
  sub_33D80();
  sub_14760();

  sub_34990();

  return (*(v2 + 8))(v10, v1);
}

uint64_t sub_14228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return _swift_task_switch(sub_1424C, 0, 0);
}

uint64_t sub_1424C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[5];
    v3 = v2[11];
    sub_30C0(v2 + 7, v2[10]);
    v4 = v1;
    sub_33F40();
  }

  v5 = v0[2];
  v6 = v0[3];
  v7 = sub_33D80();
  (*(*(v7 - 8) + 16))(v5, v6, v7);
  v8 = v0[1];

  return v8();
}

uint64_t sub_14324(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = *(a2 + *(sub_3204(&qword_4F278, &unk_36E30) + 48));
  v11 = (a3 + *a3);
  v8 = a3[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_14454;

  return v11(a1, a2, v7);
}

uint64_t sub_14454()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_14548()
{
  sub_3364((v0 + 16));
  sub_3364((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_145AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_147C4;

  return sub_14228(a1, a2, a3, v3);
}

uint64_t sub_14660()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_14698(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_14454;

  return sub_14324(a1, a2, v7);
}

unint64_t sub_14760()
{
  result = qword_4F270;
  if (!qword_4F270)
  {
    sub_A7E8(&qword_4F268, &qword_36E08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F270);
  }

  return result;
}