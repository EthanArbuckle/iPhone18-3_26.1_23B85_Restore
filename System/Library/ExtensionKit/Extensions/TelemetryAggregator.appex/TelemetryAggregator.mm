void *sub_100001678(uint64_t a1, uint64_t a2)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v2 = 0;
  v45 = a1 + 32;
  v46 = *(a2 + 16);
  v3 = &_swiftEmptyDictionarySingleton;
  v44 = (a2 + 40);
  while (1)
  {
    v4 = (v45 + (v2 << 6));
    v5 = v4[1];
    *v61 = *v4;
    *&v61[16] = v5;
    v6 = v4[3];
    v62 = v4[2];
    v63 = v6;
    v7 = *v61;
    v8 = *&v61[8];
    v10 = *&v61[24];
    v9 = v62;
    v11 = DWORD2(v62);
    v12 = v6;
    v13 = v44;
    v14 = v46;
    if (v46)
    {
      break;
    }

LABEL_3:
    v55 = *v61;
    v56 = *&v61[8];
    v57 = *&v61[24];
    v58 = v62;
    v59 = DWORD2(v62);
    v60 = v63;
    sub_100007374(v61, &v48, &qword_100018888, &qword_10000DF58);
    sub_100007314(&v55, &qword_100018888, &qword_10000DF58);
LABEL_4:
    if (++v2 == v47)
    {
      return v3;
    }
  }

  while (1)
  {
    v16 = *(v13 - 1);
    v15 = *v13;
    if (v16 <= *v61 && *v61 < v15)
    {
      break;
    }

    v13 += 2;
    if (!--v14)
    {
      goto LABEL_3;
    }
  }

  v43 = *(&v63 + 1);
  if (!v3[2] || (sub_100003F1C(v16, v15), (v18 & 1) == 0))
  {
    sub_10000701C(&qword_100018870, &qword_10000DF40);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_10000DD80;
    v48 = v7;
    v49 = v8;
    v50 = v10;
    v51 = v9;
    v52 = v11;
    v53 = v12;
    v54 = v43;
    *(v28 + 32) = v8;
    *(v28 + 48) = v10;
    *(v28 + 56) = v9;
    *(v28 + 64) = v11;
    *(v28 + 72) = v12;
    *(v28 + 80) = v43;
    sub_100007374(v61, &v55, &qword_100018888, &qword_10000DF58);
    sub_100007374(&v48, &v55, &qword_100018888, &qword_10000DF58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55 = v3;
    sub_100004E0C(v28, isUniquelyReferenced_nonNull_native, &qword_100018890, &qword_10000DF60, v16, v15);
    v3 = v55;
    v55 = v7;
    v56 = v8;
    v57 = v10;
    v58 = v9;
    v59 = v11;
    *&v60 = v12;
    *(&v60 + 1) = v43;
    v30 = &v55;
LABEL_27:
    sub_100007314(v30, &qword_100018888, &qword_10000DF58);
    goto LABEL_4;
  }

  v55 = v7;
  v56 = v8;
  v57 = v10;
  v58 = v9;
  v59 = v11;
  *&v60 = v12;
  *(&v60 + 1) = v43;
  sub_100007374(v61, &v48, &qword_100018888, &qword_10000DF58);
  sub_100007374(&v55, &v48, &qword_100018888, &qword_10000DF58);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v21 = sub_100003F1C(v16, v15);
  v22 = v3[2];
  v23 = (v20 & 1) == 0;
  v24 = v22 + v23;
  if (!__OFADD__(v22, v23))
  {
    v25 = v20;
    if (v3[3] >= v24)
    {
      if (v19)
      {
        if ((v20 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v40 = v21;
        sub_1000053A4(&qword_100018890, &qword_10000DF60);
        v21 = v40;
        if ((v25 & 1) == 0)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      sub_1000044F4(v24, v19, &qword_100018890, &qword_10000DF60);
      v26 = sub_100003F1C(v16, v15);
      if ((v25 & 1) != (v27 & 1))
      {
        goto LABEL_33;
      }

      v21 = v26;
      if ((v25 & 1) == 0)
      {
LABEL_29:
        __break(1u);
        return &_swiftEmptyDictionarySingleton;
      }
    }

    v42 = v21;
    v31 = *(v3[7] + 8 * v21);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_10000356C(0, *(v31 + 2) + 1, 1, v31);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_10000356C((v32 > 1), v33 + 1, 1, v31);
    }

    v34 = v56;
    v35 = v57;
    v36 = v58;
    v37 = v59;
    v38 = &v31[56 * v33];
    v39 = v60;
    *(v31 + 2) = v33 + 1;
    *(v38 + 2) = v34;
    *(v38 + 6) = v35;
    *(v38 + 7) = v36;
    *(v38 + 16) = v37;
    *(v38 + 72) = v39;
    *(v3[7] + 8 * v42) = v31;
    v48 = v7;
    v49 = v8;
    v50 = v10;
    v51 = v9;
    v52 = v11;
    v53 = v12;
    v54 = v43;
    v30 = &v48;
    goto LABEL_27;
  }

  __break(1u);
LABEL_33:
  sub_10000701C(&qword_100018810, &qword_10000DEF8);
  result = sub_10000D6A4();
  __break(1u);
  return result;
}

uint64_t sub_100001AE0(unint64_t a1, uint64_t a2)
{

  v5 = 0;
  v6 = sub_100005A78(v4, a1);

  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 64);
  v11 = (v8 + 63) >> 6;
  v91 = v6;

  v12 = 0;
  v96 = &_swiftEmptyDictionarySingleton;
  v88 = xmmword_10000DD80;
  v92 = a2;
  v89 = v6 + 64;
  v90 = v11;
  if (v10)
  {
LABEL_10:
    while (1)
    {
      v18 = __clz(__rbit64(v10)) | (v12 << 6);
      v19 = (*(v91 + 48) + 16 * v18);
      v20 = v19[1];
      v21 = *(*(v91 + 56) + 8 * v18);
      v22 = v21[2];
      if (!v22)
      {
        break;
      }

      v95 = *v19;
      v23 = v21[4];
      v24 = v21[5];
      v99 = v21;
      v25 = v21[6];
      v26 = v99[7];
      v27 = *(v99 + 16);
      v28 = v99[9];
      v29 = v99[10];
      v101 = v23;
      v102 = v24;
      v103 = v25;
      v104 = v26;
      v105 = v27;
      v106 = v28;
      v107 = v29;
      v97 = v20;

      swift_getAtKeyPath();
      v30 = v100;

      v31 = v99[2];
      if (!v31)
      {
        goto LABEL_37;
      }

      if (v31 < v22)
      {
        goto LABEL_38;
      }

      v94 = v10;
      v98 = v5;
      v32 = v99[9];
      v33 = v99[10];
      v34 = v99;

      v35 = v22 - 1;
      if (v22 != 1)
      {
        v36 = v34 + 17;
        do
        {
          v37 = *(v36 - 1);
          v38 = *v36;
          v39 = *(v36 - 4);
          v40 = *(v36 - 4);
          v41 = *(v36 - 3);
          v42 = *(v36 - 5);
          v101 = *(v36 - 6);
          v102 = v42;
          v103 = v40;
          v104 = v41;
          LODWORD(v105) = v39;
          v106 = v37;
          v107 = v38;

          swift_getAtKeyPath();
          v30 = v32(v30, v100);

          v36 += 7;
          --v35;
        }

        while (v35);
      }

      v93 = v33;

      v101 = 58;
      v102 = 0xE100000000000000;
      __chkstk_darwin(v43);
      v87[2] = &v101;
      v44 = v97;

      v45 = v44;
      v46 = v98;
      v48 = sub_100002F9C(0x7FFFFFFFFFFFFFFFLL, 1, sub_100007164, v87, v95, v45, v47);
      v49 = v48[2];
      if (!v49)
      {
        goto LABEL_39;
      }

      v50 = v48;
      v98 = v46;
      v10 = (v94 - 1) & v94;
      v51 = &v48[4 * v49];
      v52 = *v51;
      v53 = v51[1];
      v54 = v51[2];
      v55 = v51[3];

      v95 = sub_10000D464();
      v57 = v56;

      v58 = v50[2];
      if (v58 <= 1)
      {
        v59 = 1;
      }

      else
      {
        v59 = 2 * v58 - 1;
      }

      v101 = v50;
      v102 = (v50 + 4);
      v103 = 0;
      v104 = v59;

      sub_10000701C(&qword_100018820, &qword_10000DF08);
      sub_1000072CC(&qword_100018828, &qword_100018820, &qword_10000DF08);
      sub_100007204();
      v60 = sub_10000D534();
      v62 = v61;
      swift_unknownObjectRelease();
      v101 = v60;
      v102 = v62;
      v63 = sub_10000D514();
      v65 = v63;
      v66 = v64;
      v67 = v96;
      if (v96[2] && (sub_100003EA4(v63, v64), (v68 & 1) != 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v70 = v66;
        v71 = isUniquelyReferenced_nonNull_native;
        v101 = v67;
        v94 = v70;
        v73 = sub_100003EA4(v65, v70);
        v74 = v67[2];
        v75 = (v72 & 1) == 0;
        v76 = __OFADD__(v74, v75);
        v77 = v74 + v75;
        v78 = v67;
        v11 = v90;
        if (v76)
        {
          goto LABEL_40;
        }

        v79 = v72;
        if (v78[3] >= v77)
        {
          v7 = v89;
          if ((v71 & 1) == 0)
          {
            sub_100005234();
          }
        }

        else
        {
          sub_100004254(v77, v71, &qword_100018848, &unk_10000DF20);
          v80 = sub_100003EA4(v65, v94);
          if ((v79 & 1) != (v81 & 1))
          {
            goto LABEL_42;
          }

          v73 = v80;
          v7 = v89;
        }

        if ((v79 & 1) == 0)
        {
          goto LABEL_41;
        }

        v82 = *(*(v101 + 56) + 8 * v73);

        v83 = swift_isUniquelyReferenced_nonNull_native();
        v100 = v82;
        sub_100004B1C(v30, v95, v57, v83);

        v84 = v101;
        if (v100)
        {
          *(*(v101 + 56) + 8 * v73) = v100;
        }

        else
        {
          sub_100007258(*(v101 + 48) + 16 * v73);
          sub_10000496C(v73, v84);
        }

        v5 = v98;

        v96 = v101;
        if (!v10)
        {
          goto LABEL_6;
        }
      }

      else
      {

        sub_10000701C(&qword_100018838, &qword_10000DF10);
        inited = swift_initStackObject();
        *(inited + 16) = v88;
        *(inited + 32) = v95;
        v14 = inited + 32;
        *(inited + 40) = v57;
        *(inited + 48) = v30;
        v15 = sub_10000ACEC(inited);
        swift_setDeallocating();
        sub_100007314(v14, &qword_100018840, &qword_10000DF18);
        v16 = swift_isUniquelyReferenced_nonNull_native();
        v101 = v67;
        sub_100004C80(v15, v65, v66, v16);

        v96 = v101;
        v7 = v89;
        v11 = v90;
        v5 = v98;
        if (!v10)
        {
          goto LABEL_6;
        }
      }
    }

    v86 = v19[1];

    return 0;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v17 >= v11)
      {

        return v96;
      }

      v10 = *(v7 + 8 * v17);
      ++v12;
      if (v10)
      {
        v12 = v17;
        goto LABEL_10;
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
LABEL_41:

    __break(1u);
LABEL_42:

    result = sub_10000D6A4();
    __break(1u);
  }

  return result;
}

unint64_t sub_100002264(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  if (a1)
  {
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    result = sub_100004E0C(a1, isUniquelyReferenced_nonNull_native, &qword_100018818, &qword_10000DF00, a2, a3);
    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    result = sub_100003F1C(a2, a3);
    if (v12)
    {
      v13 = result;
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_1000053A4(&qword_100018818, &qword_10000DF00);
        v16 = v19;
      }

      v17 = *(*(v16 + 56) + 8 * v13);

      result = sub_1000047AC(v13, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_100002350()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_100002388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to MLHostExtension.shouldRun(context:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100007438;

  return MLHostExtension.shouldRun(context:)(a1, a2, a3);
}

uint64_t sub_100002438()
{
  v2 = *v0;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000024DC;

  return sub_100005DE8();
}

uint64_t sub_1000024DC(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1000025D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = async function pointer to MLHostExtension.loadConfig<A>(context:)[1];
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_1000026BC;

  return MLHostExtension.loadConfig<A>(context:)(a1, a2, a6, a3, a7, a4, a5);
}

uint64_t sub_1000026BC()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000027B0()
{
  v0 = type metadata accessor for TelemetryAggregator();
  v1 = sub_1000029B4(&qword_1000187E0);

  return MLHostExtension.configuration.getter(v0, v1);
}

void *sub_10000281C@<X0>(void *a1@<X8>)
{
  type metadata accessor for TelemetryAggregator();
  result = swift_allocObject();
  result[2] = 0xD000000000000017;
  result[3] = 0x800000010000E5D0;
  result[4] = 7;
  *a1 = result;
  return result;
}

int main(int argc, const char **argv, const char **envp)
{
  type metadata accessor for TelemetryAggregator();
  sub_1000029B4(&qword_100018728);
  sub_10000D364();
  return 0;
}

uint64_t sub_1000029B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TelemetryAggregator();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1000029F4(void *a1, uint64_t a2)
{
  v4 = sub_10000D2B4();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    [a1 timestamp];
    sub_10000D264();
    sub_10000D294();
    v12 = v11;
    (*(v5 + 8))(v8, v4);
    swift_beginAccess();
    v13 = *(a2 + 16);
    v14 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1000037C8(0, v13[2] + 1, 1, v13);
      *(a2 + 16) = v13;
    }

    v17 = v13[2];
    v16 = v13[3];
    if (v17 >= v16 >> 1)
    {
      v13 = sub_1000037C8((v16 > 1), v17 + 1, 1, v13);
    }

    v13[2] = v17 + 1;
    v18 = &v13[2 * v17];
    v18[4] = v12;
    v18[5] = v14;
    *(a2 + 16) = v13;
    swift_endAccess();
  }

  else
  {
    if (qword_100018720 != -1)
    {
      swift_once();
    }

    v30 = 0;
    v31 = 0xE000000000000000;
    sub_10000D5F4(17);

    v30 = 0x2064696C61766E49;
    v31 = 0xEF203A746E657665;
    v19 = [a1 description];
    v20 = sub_10000D454();
    v22 = v21;

    v33._countAndFlagsBits = v20;
    v33._object = v22;
    sub_10000D4A4(v33);

    v24 = v30;
    v23 = v31;

    v29 = sub_10000D3D4();
    v25 = sub_10000D584();

    if (os_log_type_enabled(v29, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_1000038FC(v24, v23, &v30);
      _os_log_impl(&_mh_execute_header, v29, v25, "%{public}s", v26, 0xCu);
      sub_100007064(v27);
    }

    else
    {

      v28 = v29;
    }
  }
}

void sub_100002D84(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_100002DEC(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_10000D634())
  {
    v7 = &_swiftEmptyArrayStorage;
    if (!i)
    {
      return v7;
    }

    v23 = &_swiftEmptyArrayStorage;
    sub_1000054F4(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v7 = v23;
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v10 = sub_10000D604();
      }

      else
      {
        if (v8 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a3 + 8 * v8 + 32);
      }

      v20 = v10;
      a1(&v21, &v20);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v11 = v21;
      v12 = v22;
      v23 = v7;
      v14 = v7[2];
      v13 = v7[3];
      if (v14 >= v13 >> 1)
      {
        v18 = v21;
        v16 = v22;
        sub_1000054F4((v13 > 1), v14 + 1, 1);
        v12 = v16;
        v11 = v18;
        v7 = v23;
      }

      v7[2] = v14 + 1;
      v15 = &v7[2 * v14];
      v15[4] = v11;
      v15[5] = v12;
      ++v8;
      if (v9 == i)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  __break(1u);
LABEL_20:

  __break(1u);
  return result;
}

void *sub_100002F9C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return &_swiftEmptyArrayStorage;
    }

    v7 = sub_10000D524();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_100003460(0, 1, 1, &_swiftEmptyArrayStorage);
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
    v14 = sub_100003460((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = &_swiftEmptyArrayStorage;
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
        v19 = sub_10000D504();
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

        v14 = sub_10000D494();
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
        v18 = sub_10000D494();
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
          v7 = sub_10000D524();
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

        v14 = sub_100003460(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_10000D524();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_100003460(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_100003460((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_10000D494();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

char *sub_10000335C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000701C(&unk_100018910, &unk_10000DF80);
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

char *sub_100003460(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000701C(&qword_100018858, &unk_10000DF30);
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

char *sub_10000356C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000701C(&qword_100018870, &qword_10000DF40);
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

void *sub_100003694(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000701C(&qword_100018898, &qword_10000DF68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10000701C(&qword_100018888, &qword_10000DF58);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000037C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_10000701C(&qword_100018900, &qword_10000DF70);
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
    sub_10000701C(&qword_100018908, &qword_10000DF78);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000038FC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1000039C8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_100007104(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100007064(v11);
  return v7;
}

unint64_t sub_1000039C8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100003AD4(a5, a6);
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
    result = sub_10000D614();
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

char *sub_100003AD4(uint64_t a1, unint64_t a2)
{
  v4 = sub_100003B20(a1, a2);
  sub_100003C50(&off_100014858);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_100003B20(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_100003D3C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_10000D614();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_10000D4B4();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100003D3C(v10, 0);
        result = sub_10000D5E4();
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

uint64_t sub_100003C50(uint64_t result)
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

  result = sub_100003DB0(result, v12, 1, v3);
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

void *sub_100003D3C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000701C(&qword_100018808, &qword_10000DEF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_100003DB0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000701C(&qword_100018808, &qword_10000DEF0);
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

unint64_t sub_100003EA4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_10000D6F4();
  sub_10000D484();
  v6 = sub_10000D714();

  return sub_100004F9C(a1, a2, v6);
}

unint64_t sub_100003F1C(double a1, double a2)
{
  v5 = *(v2 + 40);
  sub_10000D6F4();
  if (a1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = a1;
  }

  sub_10000D704(*&v6);
  if (a2 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a2;
  }

  sub_10000D704(*&v7);
  v8 = sub_10000D714();

  return sub_100005054(v8, a1, a2);
}

uint64_t sub_100003FB4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10000701C(&qword_100018850, &qword_10000E0B0);
  v38 = a2;
  result = sub_10000D654();
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
      v25 = *(*(v5 + 56) + 4 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_10000D6F4();
      sub_10000D484();
      result = sub_10000D714();
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
      *(*(v8 + 56) + 4 * v16) = v25;
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

uint64_t sub_100004254(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000701C(a3, a4);
  v40 = a2;
  result = sub_10000D654();
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
      sub_10000D6F4();
      sub_10000D484();
      result = sub_10000D714();
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

uint64_t sub_1000044F4(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_10000701C(a3, a4);
  result = sub_10000D654();
  v10 = result;
  if (*(v7 + 16))
  {
    v37 = v5;
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
      v38 = *(*(v7 + 48) + 16 * v22);
      v24 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v25 = *(v23 + 8 * v22);
      }

      v26 = *(v10 + 40);
      sub_10000D6F4();
      v27 = *&v38;
      if (*&v38 == 0.0)
      {
        v27 = 0.0;
      }

      sub_10000D704(*&v27);
      v28 = *(&v38 + 1);
      if (*(&v38 + 1) == 0.0)
      {
        v28 = 0.0;
      }

      sub_10000D704(*&v28);
      result = sub_10000D714();
      v29 = -1 << *(v10 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v17 + 8 * v31);
          if (v35 != -1)
          {
            v18 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 16 * v18) = v38;
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
        goto LABEL_41;
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

      v5 = v37;
      goto LABEL_39;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v37;
    if (v36 >= 64)
    {
      bzero((v7 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_39:
  *v5 = v10;
  return result;
}

Swift::Int sub_1000047AC(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000D5B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10000D6F4();
      if (v11 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v11;
      }

      sub_10000D704(*&v13);
      if (v12 == 0.0)
      {
        v14 = 0.0;
      }

      else
      {
        v14 = v12;
      }

      sub_10000D704(*&v14);
      result = sub_10000D714();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_16;
      }

      if (v3 >= v15)
      {
LABEL_16:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 8 * v3);
        v21 = (v19 + 8 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_10000496C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_10000D5B4() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_10000D6F4();

      sub_10000D484();
      v13 = sub_10000D714();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100004B1C(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_100003EA4(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_100003FB4(v16, a4 & 1);
      v20 = *v5;
      result = sub_100003EA4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_10000D6A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1000050CC();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 4 * result) = a1;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a2;
  v23[1] = a3;
  *(v22[7] + 4 * result) = a1;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v22[2] = v25;
}

uint64_t sub_100004C80(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100003EA4(a2, a3);
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
      sub_100004254(v16, a4 & 1, &qword_100018848, &unk_10000DF20);
      v20 = *v5;
      v11 = sub_100003EA4(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_10000D6A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_100005234();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

unint64_t sub_100004E0C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4, double a5, double a6)
{
  v9 = v6;
  v14 = *v6;
  result = sub_100003F1C(a5, a6);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a2 & 1) == 0)
  {
    if (v22 < v20 || (a2 & 1) != 0)
    {
      sub_1000044F4(v20, a2 & 1, a3, a4);
      v24 = *v9;
      result = sub_100003F1C(a5, a6);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_16:
        sub_10000701C(&qword_100018810, &qword_10000DEF8);
        result = sub_10000D6A4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = result;
      sub_1000053A4(a3, a4);
      result = v23;
    }
  }

  v26 = *v9;
  if ((v21 & 1) == 0)
  {
    v26[(result >> 6) + 8] |= 1 << result;
    v29 = (v26[6] + 16 * result);
    *v29 = a5;
    v29[1] = a6;
    *(v26[7] + 8 * result) = a1;
    v30 = v26[2];
    v19 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v19)
    {
      v26[2] = v31;
      return result;
    }

    goto LABEL_15;
  }

  v27 = v26[7];
  v28 = *(v27 + 8 * result);
  *(v27 + 8 * result) = a1;
}

unint64_t sub_100004F9C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_10000D694())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_100005054(uint64_t a1, double a2, double a3)
{
  v4 = -1 << *(v3 + 32);
  result = a1 & ~v4;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = (*(v3 + 48) + 16 * result);
      v8 = v7[1];
      v9 = *v7 == a2;
      if (v8 == a3 && v9)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_1000050CC()
{
  v1 = v0;
  sub_10000701C(&qword_100018850, &qword_10000E0B0);
  v2 = *v0;
  v3 = sub_10000D644();
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_100005234()
{
  v1 = v0;
  sub_10000701C(&qword_100018848, &unk_10000DF20);
  v2 = *v0;
  v3 = sub_10000D644();
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

void *sub_1000053A4(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10000701C(a1, a2);
  v4 = *v2;
  v5 = sub_10000D644();
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
        *(*(v6 + 48) + 16 * v19) = *(*(v4 + 48) + 16 * v19);
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

char *sub_1000054F4(char *a1, int64_t a2, char a3)
{
  result = sub_100005514(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_100005514(char *result, int64_t a2, char a3, char *a4)
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
    sub_10000701C(&qword_100018880, &qword_10000DF50);
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

uint64_t sub_100005620@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 3);
  v9 = *(a2 + 8);
  v10 = *(a2 + 40);
  swift_getAtKeyPath();
  sub_10000D624();

  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_1000056D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10000701C(&qword_1000187E8, &qword_10000DE78);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &aBlock - v11;
  sub_100007374(a2, &aBlock - v11, &qword_1000187E8, &qword_10000DE78);
  sub_100007374(a3, v10, &qword_1000187E8, &qword_10000DE78);
  v13 = sub_10000D2B4();
  v14 = *(v13 - 8);
  v15 = *(v14 + 48);
  isa = 0;
  if (v15(v12, 1, v13) != 1)
  {
    isa = sub_10000D274().super.isa;
    (*(v14 + 8))(v12, v13);
  }

  if (v15(v10, 1, v13) == 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = sub_10000D274().super.isa;
    (*(v14 + 8))(v10, v13);
  }

  v18 = [objc_allocWithZone(BMPublisherOptions) initWithStartDate:isa endDate:v17 maxEvents:0 lastN:0 reversed:0];

  v19 = sub_10000D444();
  v20 = [a1 publisherWithUseCase:v19 options:v18];

  v21 = swift_allocObject();
  *(v21 + 16) = &_swiftEmptyArrayStorage;
  v31 = nullsub_1;
  v32 = 0;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100007440;
  v30 = &unk_100014AA8;
  v22 = _Block_copy(&aBlock);
  v31 = sub_10000742C;
  v32 = v21;
  aBlock = _NSConcreteStackBlock;
  v28 = 1107296256;
  v29 = sub_100007440;
  v30 = &unk_100014AD0;
  v23 = _Block_copy(&aBlock);

  v24 = [v20 sinkWithCompletion:v22 receiveInput:v23];

  _Block_release(v23);
  _Block_release(v22);

  swift_beginAccess();
  v25 = *(v21 + 16);

  return v25;
}

uint64_t sub_100005A78(uint64_t a1, unint64_t a2)
{
  v40 = a2;
  v2 = &_swiftEmptyDictionarySingleton;
  v51 = &_swiftEmptyDictionarySingleton;
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  v4 = (a1 + 80);
  v39 = xmmword_10000DD80;
  while (1)
  {
    v41 = v3;
    v8 = *(v4 - 5);
    v9 = *(v4 - 4);
    v10 = *(v4 - 3);
    v11 = *(v4 - 4);
    v12 = *(v4 - 1);
    v13 = *v4;
    v42 = *(v4 - 6);
    v43 = v9;
    v47[0] = v42;
    v47[1] = v8;
    v47[2] = v9;
    v47[3] = v10;
    v44 = v11;
    v48 = v11;
    v45 = v12;
    v49 = v12;
    v50 = v13;
    __chkstk_darwin();
    v37[2] = v47;

    v46 = sub_100002DEC(sub_1000072AC, v37, v40);
    v14 = sub_10000D424();
    v16 = v15;

    v18 = sub_100003EA4(v14, v16);
    v19 = v2[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v2[3] < v21)
    {
      sub_100004254(v21, 1, &qword_100018878, &qword_10000DF48);
      v2 = v51;
      v23 = sub_100003EA4(v14, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_19;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v2[7];
      v26 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v26;
      v38 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v26 = sub_10000356C(0, *(v26 + 2) + 1, 1, v26);
        *(v25 + 8 * v18) = v26;
      }

      v29 = *(v26 + 2);
      v28 = *(v26 + 3);
      if (v29 >= v28 >> 1)
      {
        v26 = sub_10000356C((v28 > 1), v29 + 1, 1, v26);
        *(v38 + 8 * v18) = v26;
      }

      v5 = v41;
      v6 = v42;
      *(v26 + 2) = v29 + 1;
      v7 = &v26[56 * v29];
      *(v7 + 4) = v6;
      *(v7 + 5) = v8;
      *(v7 + 6) = v43;
      *(v7 + 7) = v10;
      *(v7 + 16) = v44;
      *(v7 + 9) = v45;
      *(v7 + 10) = v13;
    }

    else
    {
      sub_10000701C(&qword_100018870, &qword_10000DF40);
      v30 = swift_allocObject();
      *(v30 + 16) = v39;
      v31 = v43;
      *(v30 + 32) = v42;
      *(v30 + 40) = v8;
      *(v30 + 48) = v31;
      *(v30 + 56) = v10;
      *(v30 + 64) = v44;
      *(v30 + 72) = v45;
      *(v30 + 80) = v13;
      v2[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v2[6] + 16 * v18);
      *v32 = v14;
      v32[1] = v16;
      *(v2[7] + 8 * v18) = v30;
      v33 = v2[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_18;
      }

      v2[2] = v35;
      v5 = v41;
    }

    v4 += 7;
    v3 = v5 - 1;
    if (!v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:

  result = sub_10000D6A4();
  __break(1u);
  return result;
}

uint64_t sub_100005DE8()
{
  v1[35] = v0;
  v2 = sub_10000D2B4();
  v1[36] = v2;
  v3 = *(v2 - 8);
  v1[37] = v3;
  v4 = *(v3 + 64) + 15;
  v1[38] = swift_task_alloc();
  v5 = *(*(sub_10000701C(&qword_1000187E8, &qword_10000DE78) - 8) + 64) + 15;
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();

  return _swift_task_switch(sub_100005EEC, 0, 0);
}

uint64_t sub_100005EEC()
{
  v131 = v0;
  v1 = [BiomeLibrary() Lighthouse];
  swift_unknownObjectRelease();
  v2 = [v1 Ledger];
  swift_unknownObjectRelease();
  v3 = [v2 DediscoPrivacyEvent];
  swift_unknownObjectRelease();
  sub_10000701C(&qword_1000187F0, &qword_10000DE80);
  inited = swift_initStackObject();
  *(inited + 16) = v3;
  *(inited + 24) = _swiftEmptyArrayStorage;
  v120 = inited;
  v5 = qword_100018720;
  v119 = v3;
  if (v5 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v6 = sub_10000D3D4();
    v7 = sub_10000D574();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v127 = v9;
      *v8 = 136446210;
      *(v8 + 4) = sub_1000038FC(0xD00000000000002FLL, 0x800000010000E610, &v127);
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s", v8, 0xCu);
      sub_100007064(v9);
    }

    v10 = v0[39];
    v11 = v0[40];
    v12 = v0[36];
    v13 = *(v0[37] + 56);
    v13(v11, 1, 1, v12);
    v13(v10, 1, 1, v12);
    v14 = sub_1000056D0(v119, v11, v10);
    sub_100007314(v10, &qword_1000187E8, &qword_10000DE78);
    sub_100007314(v11, &qword_1000187E8, &qword_10000DE78);
    *(v120 + 24) = v14;
    v121 = *(v14 + 16);
    if (!v121)
    {
      break;
    }

    v127 = 0;
    v128 = 0xE000000000000000;

    sub_10000D5F4(28);

    v127 = 0x2064656863746546;
    v128 = 0xE800000000000000;
    v0[34] = *(v14 + 16);
    v133._countAndFlagsBits = sub_10000D684();
    sub_10000D4A4(v133);

    v134._object = 0x800000010000E640;
    v134._countAndFlagsBits = 0xD000000000000012;
    sub_10000D4A4(v134);
    v16 = v127;
    v15 = v128;

    v17 = sub_10000D3D4();
    v18 = sub_10000D574();

    v122 = v0;
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v127 = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_1000038FC(v16, v15, &v127);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
      sub_100007064(v20);
    }

    v21 = 0;
    v22 = (v14 + 40);
    v126 = _swiftEmptyArrayStorage;
    v123 = v14;
    do
    {
      if (v21 >= *(v14 + 16))
      {
        __break(1u);
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }

      v23 = *(v22 - 1);
      v24 = *v22;
      sub_10000C3CC(v24, (v0 + 10));
      v25 = v0[10];
      v26 = v0[11];
      v27 = v0[12];
      v28 = v0[13];
      v29 = *(v0 + 28);
      v124 = *(v0 + 15);

      v30 = v126;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_100003694(0, v126[2] + 1, 1, v126);
      }

      v32 = v30[2];
      v31 = v30[3];
      if (v32 >= v31 >> 1)
      {
        v30 = sub_100003694((v31 > 1), v32 + 1, 1, v30);
      }

      v30[2] = v32 + 1;
      v126 = v30;
      v33 = &v30[8 * v32];
      v33[4] = v23;
      ++v21;
      v33[5] = v25;
      v33[6] = v26;
      v33[7] = v27;
      v33[8] = v28;
      *(v33 + 18) = v29;
      v22 += 2;
      *(v33 + 5) = v124;
      v0 = v122;
      v14 = v123;
    }

    while (v121 != v21);
    v34 = v122[35];
    v35 = [objc_opt_self() standardUserDefaults];
    v36 = *(v34 + 16);
    v118 = *(v34 + 24);
    v37 = sub_10000D444();
    [v35 doubleForKey:v37];

    v127 = 0;
    v128 = 0xE000000000000000;
    sub_10000D5F4(29);

    v127 = 0xD00000000000001BLL;
    v128 = 0x800000010000E660;
    v135._countAndFlagsBits = sub_100007664();
    sub_10000D4A4(v135);

    v39 = v127;
    v38 = v128;

    v40 = sub_10000D3D4();
    v41 = sub_10000D574();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v127 = v43;
      *v42 = 136446210;
      *(v42 + 4) = sub_1000038FC(v39, v38, &v127);
      _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s", v42, 0xCu);
      sub_100007064(v43);
    }

    v44 = sub_10000D3D4();
    v45 = sub_10000D574();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v127 = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_1000038FC(0xD000000000000024, 0x800000010000E680, &v127);
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s", v46, 0xCu);
      sub_100007064(v47);
    }

    v49 = v122[37];
    v48 = v122[38];
    v50 = v122[36];
    sub_10000D2A4();
    sub_10000D294();
    (*(v49 + 8))(v48, v50);
    type metadata accessor for BucketRangeCreator();
    v51 = swift_initStackObject();
    sub_1000078E0();
    v53 = v52;
    v51[2] = v52;
    sub_1000078E0();
    *(v51 + 3) = v54;
    v55 = sub_100007E54();
    *(v51 + 4) = v55 & ~(v55 >> 63);
    if (v55 < 1)
    {

      v127 = 0;
      v128 = 0xE000000000000000;
      sub_10000D5F4(70);
      v92 = v128;
      v122[32] = v127;
      v122[33] = v92;
      v136._countAndFlagsBits = 0xD000000000000026;
      v136._object = 0x800000010000E750;
      sub_10000D4A4(v136);
      sub_10000D564();
      v137._countAndFlagsBits = 0x20646E6120;
      v137._object = 0xE500000000000000;
      sub_10000D4A4(v137);
      sub_10000D564();
      v138._countAndFlagsBits = 0xD000000000000017;
      v138._object = 0x800000010000E780;
      sub_10000D4A4(v138);
      v94 = v122[32];
      v93 = v122[33];

      v95 = sub_10000D3D4();
      v96 = sub_10000D574();

      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v127 = v98;
        *v97 = 136446210;
        *(v97 + 4) = sub_1000038FC(v94, v93, &v127);
        _os_log_impl(&_mh_execute_header, v95, v96, "%{public}s", v97, 0xCu);
        sub_100007064(v98);
        v0 = v122;
      }

      v129 = &type metadata for TelemetryError;
      v130 = sub_1000070B0();
      LOBYTE(v127) = 1;
      goto LABEL_46;
    }

    sub_100007528();
    v57 = sub_100001678(v126, v56);
    if (!v57[2])
    {

      v99 = sub_100007664();
      v101 = v100;
      v102 = sub_100007664();
      v104 = v103;
      v127 = 0;
      v128 = 0xE000000000000000;
      sub_10000D5F4(67);
      v139._countAndFlagsBits = 0xD000000000000025;
      v139._object = 0x800000010000E700;
      sub_10000D4A4(v139);
      v140._countAndFlagsBits = v99;
      v140._object = v101;
      sub_10000D4A4(v140);

      v141._countAndFlagsBits = 8236;
      v141._object = 0xE200000000000000;
      sub_10000D4A4(v141);
      v142._countAndFlagsBits = v102;
      v142._object = v104;
      sub_10000D4A4(v142);

      v143._countAndFlagsBits = 0xD000000000000018;
      v143._object = 0x800000010000E730;
      sub_10000D4A4(v143);
      v106 = v127;
      v105 = v128;

      v107 = sub_10000D3D4();
      v108 = sub_10000D574();

      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v110 = swift_slowAlloc();
        v127 = v110;
        *v109 = 136446210;
        *(v109 + 4) = sub_1000038FC(v106, v105, &v127);
        _os_log_impl(&_mh_execute_header, v107, v108, "%{public}s", v109, 0xCu);
        sub_100007064(v110);
        v0 = v122;
      }

      v129 = &type metadata for TelemetryError;
      v130 = sub_1000070B0();
      LOBYTE(v127) = 2;
LABEL_46:
      v111 = objc_allocWithZone(sub_10000D394());
      v85 = sub_10000D374();

      goto LABEL_47;
    }

    v58 = sub_10000D3D4();
    v59 = sub_10000D574();
    v117 = v35;
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v127 = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_1000038FC(0xD00000000000001CLL, 0x800000010000E6B0, &v127);
      _os_log_impl(&_mh_execute_header, v58, v59, "%{public}s", v60, 0xCu);
      sub_100007064(v61);
    }

    v62 = v57 + 8;
    v63 = -1;
    v64 = -1 << *(v57 + 32);
    if (-v64 < 64)
    {
      v63 = ~(-1 << -v64);
    }

    v65 = v63 & v57[8];
    v66 = (63 - v64) >> 6;
    v67 = v57;

    v68 = 0;
    if (!v65)
    {
LABEL_26:
      v70 = v67;
      while (1)
      {
        v69 = v68 + 1;
        if (__OFADD__(v68, 1))
        {
          goto LABEL_51;
        }

        if (v69 >= v66)
        {

          v86 = sub_10000D3D4();
          v87 = sub_10000D574();
          if (os_log_type_enabled(v86, v87))
          {
            v88 = swift_slowAlloc();
            v89 = swift_slowAlloc();
            v127 = v89;
            *v88 = 136446210;
            *(v88 + 4) = sub_1000038FC(0xD00000000000002ALL, 0x800000010000E6D0, &v127);
            _os_log_impl(&_mh_execute_header, v86, v87, "%{public}s", v88, 0xCu);
            sub_100007064(v89);
          }

          type metadata accessor for DediscoDataEncoder();
          swift_initStackObject();
          sub_1000082D0(&_swiftEmptyDictionarySingleton);
          sub_1000093B8();
          v90 = sub_10000D444();
          [v117 setDouble:v90 forKey:v53];

          v91 = objc_allocWithZone(sub_10000D394());
          v85 = sub_10000D384();

          goto LABEL_47;
        }

        v65 = v62[v69];
        ++v68;
        if (v65)
        {
          goto LABEL_30;
        }
      }
    }

    while (1)
    {
      v69 = v68;
      v70 = v67;
LABEL_30:
      if (!v70[2])
      {
        break;
      }

      v71 = v70[6] + ((v69 << 10) | (16 * __clz(__rbit64(v65))));
      v72 = *v71;
      v73 = *(v71 + 8);
      v74 = sub_100003F1C(*v71, v73);
      if ((v75 & 1) == 0)
      {
        goto LABEL_53;
      }

      v65 &= v65 - 1;
      v76 = *(v70[7] + 8 * v74);
      sub_10000701C(&qword_1000187F8, &qword_10000DE88);
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_10000DD90;
      *(v77 + 32) = swift_getKeyPath();
      *(v77 + 40) = swift_getKeyPath();
      KeyPath = swift_getKeyPath();

      v125 = sub_100001AE0(v77, KeyPath);

      swift_setDeallocating();
      v79 = *(v77 + 16);
      swift_arrayDestroy();
      sub_100002264(v125, v72, v73);
      v68 = v69;
      if (!v65)
      {
        goto LABEL_26;
      }
    }

LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v80 = sub_10000D3D4();
  v81 = sub_10000D574();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v127 = v83;
    *v82 = 136446210;
    *(v82 + 4) = sub_1000038FC(0xD00000000000002CLL, 0x800000010000E7A0, &v127);
    _os_log_impl(&_mh_execute_header, v80, v81, "%{public}s", v82, 0xCu);
    sub_100007064(v83);
  }

  v84 = objc_allocWithZone(sub_10000D394());
  v85 = sub_10000D384();

LABEL_47:

  v113 = v0[39];
  v112 = v0[40];
  v114 = v0[38];

  v115 = v0[1];

  return v115(v85);
}

uint64_t sub_10000701C(uint64_t *a1, uint64_t *a2)
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

uint64_t sub_100007064(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_1000070B0()
{
  result = qword_100018800;
  if (!qword_100018800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018800);
  }

  return result;
}

uint64_t sub_100007104(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100007164(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_10000D694() & 1;
  }
}

uint64_t sub_1000071BC(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_100007204()
{
  result = qword_100018830;
  if (!qword_100018830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018830);
  }

  return result;
}

uint64_t sub_1000072CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000071BC(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100007314(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_10000701C(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100007374(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_10000701C(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1000073DC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100007414(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000074A0()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_100007528()
{
  v1 = *(v0 + 32);
  if (v1 < 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  if (v1)
  {
    v2 = sub_10000335C(0, 1, 1, &_swiftEmptyArrayStorage);
    v3 = 0;
    v4 = *(v0 + 24);
    for (i = 0x611722833945; i; --i)
    {
      v6 = v4 + v3;
      if (v6 > v6 + 86400.0)
      {
        goto LABEL_11;
      }

      v8 = *(v2 + 2);
      v7 = *(v2 + 3);
      if (v8 >= v7 >> 1)
      {
        v2 = sub_10000335C((v7 > 1), v8 + 1, 1, v2);
      }

      *(v2 + 2) = v8 + 1;
      v9 = &v2[16 * v8];
      *(v9 + 4) = v6;
      *(v9 + 5) = v6 + 86400.0;
      v3 += 86400;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_100007664()
{
  v0 = sub_10000D2B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10000701C(&qword_100018AB8, &qword_10000E028);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(NSDateFormatter) init];
  sub_10000D324();
  v10 = sub_10000D354();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    isa = sub_10000D344().super.isa;
    (*(v11 + 8))(v8, v10);
  }

  [v9 setTimeZone:isa];

  v13 = sub_10000D444();
  [v9 setDateFormat:v13];

  sub_10000D284();
  v14 = sub_10000D274().super.isa;
  v15 = [v9 stringFromDate:v14];

  v16 = sub_10000D454();
  (*(v1 + 8))(v4, v0);
  return v16;
}

uint64_t sub_1000078E0()
{
  v0 = sub_10000D2B4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  v8 = sub_10000701C(&qword_100018AB8, &qword_10000E028);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v20 - v10;
  v12 = sub_10000D314();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D2E4();
  sub_10000D334();
  v17 = sub_10000D354();
  result = (*(*(v17 - 8) + 48))(v11, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000D2F4();
    sub_10000D284();
    sub_10000D2C4();
    sub_10000D294();
    v19 = *(v1 + 8);
    v19(v5, v0);
    v19(v7, v0);
    return (*(v13 + 8))(v16, v12);
  }

  return result;
}

void *sub_100007B5C(uint64_t a1)
{
  v2 = sub_10000D304();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10000701C(&qword_100018AC8, &qword_10000E038);
    v10 = sub_10000D5D4();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10000828C(&qword_100018AD0);
      v18 = sub_10000D414();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10000828C(&qword_100018AD8);
          v25 = sub_10000D434();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100007E54()
{
  v0 = sub_10000D224();
  v34 = *(v0 - 8);
  v35 = v0;
  v1 = *(v34 + 64);
  __chkstk_darwin(v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_10000D2B4();
  v4 = *(v33 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v33);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = sub_10000701C(&qword_100018AB8, &qword_10000E028);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v30 - v13;
  v15 = sub_10000D314();
  v31 = *(v15 - 8);
  v32 = v15;
  v16 = *(v31 + 64);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000D2E4();
  sub_10000D334();
  v19 = sub_10000D354();
  result = (*(*(v19 - 8) + 48))(v14, 1, v19);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_10000D2F4();
    sub_10000D284();
    sub_10000D284();
    sub_10000701C(&qword_100018AC0, &qword_10000E030);
    v21 = sub_10000D304();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10000DD80;
    (*(v22 + 104))(v25 + v24, enum case for Calendar.Component.day(_:), v21);
    sub_100007B5C(v25);
    swift_setDeallocating();
    (*(v22 + 8))(v25 + v24, v21);
    swift_deallocClassInstance();
    sub_10000D2D4();

    v26 = sub_10000D214();
    LOBYTE(v21) = v27;
    (*(v34 + 8))(v3, v35);
    v28 = *(v4 + 8);
    v29 = v33;
    v28(v8, v33);
    v28(v10, v29);
    (*(v31 + 8))(v18, v32);
    if (v21)
    {
      return 0;
    }

    else
    {
      return v26;
    }
  }

  return result;
}

uint64_t sub_10000828C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000D304();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1000082D0(uint64_t a1)
{
  *(v1 + 16) = 50100;
  *(v1 + 24) = 1000;
  *(v1 + 32) = 4;
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    internalBuild = MobileGestalt_get_internalBuild();

    *(v1 + 56) = internalBuild;
    *(v1 + 40) = a1;
    sub_10000701C(&qword_100018BC0, &qword_10000E098);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10000DD80;
    *(inited + 32) = sub_10000D454();
    *(inited + 40) = v7;
    *(inited + 48) = 12662;
    *(inited + 56) = 0xE200000000000000;
    v8 = sub_10000ADE8(inited);
    swift_setDeallocating();
    sub_10000AEFC(inited + 32);
    *(v1 + 48) = v8;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Class sub_1000083BC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  if (v4)
  {
    sub_10000B000();
    v5.super.isa = sub_10000D404().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  return v5.super.isa;
}

void sub_100008448(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_100018720 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v7 = sub_10000D3D4();
    v8 = sub_10000D574();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v77[0] = v10;
      *v9 = 136446210;
      *(v9 + 4) = sub_1000038FC(0xD00000000000002BLL, 0x800000010000E960, v77);
      _os_log_impl(&_mh_execute_header, v7, v8, "%{public}s", v9, 0xCu);
      sub_100007064(v10);
    }

    v11 = *(v4 + 16);
    if ((v11 - 0x2000000000000000) >> 62 != 3)
    {
      break;
    }

    v72._countAndFlagsBits = a1;
    v72._object = a2;
    v73 = v4;
    v77[0] = sub_10000B04C(4 * v11);
    v77[1] = v12;
    sub_100009A84(v77, 0);
    a1 = a3;
    v4 = a3 + 64;
    v13 = 1 << *(a3 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(a3 + 64);
    v74 = (v13 + 63) >> 6;

    v16 = 0;
    while (v15)
    {
LABEL_14:
      v18 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v19 = v18 | (v16 << 6);
      v20 = (*(a1 + 48) + 16 * v19);
      v21 = *v20;
      a2 = v20[1];
      v22 = HIBYTE(a2) & 0xF;
      v23 = v21 & 0xFFFFFFFFFFFFLL;
      if ((a2 & 0x2000000000000000) != 0)
      {
        v24 = HIBYTE(a2) & 0xF;
      }

      else
      {
        v24 = v21 & 0xFFFFFFFFFFFFLL;
      }

      if (!v24)
      {

LABEL_76:
        v76[0] = 0;
        v76[1] = 0xE000000000000000;
        sub_10000D5F4(39);

        v76[0] = 0xD00000000000001DLL;
        v76[1] = 0x800000010000E990;
        v78._countAndFlagsBits = v21;
        v78._object = a2;
        sub_10000D4A4(v78);

        v79._countAndFlagsBits = 0x2E746E69206F7420;
        v79._object = 0xE800000000000000;
        sub_10000D4A4(v79);
        v48 = v76[0];
        v47 = v76[1];

        v49 = sub_10000D3D4();
        v50 = sub_10000D594();

        if (os_log_type_enabled(v49, v50))
        {
          a2 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v76[0] = v51;
          *a2 = 136446210;
          *(a2 + 4) = sub_1000038FC(v48, v47, v76);
          _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s", a2, 0xCu);
          sub_100007064(v51);
          a1 = a3;
        }

        goto LABEL_8;
      }

      v25 = *(*(a1 + 56) + 4 * v19);
      if ((a2 & 0x1000000000000000) == 0)
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v76[0] = v21;
          v76[1] = a2 & 0xFFFFFFFFFFFFFFLL;
          if (v21 == 43)
          {
            if (!v22)
            {
              goto LABEL_101;
            }

            if (--v22)
            {
              v28 = 0;
              v38 = v76 + 1;
              while (1)
              {
                v39 = *v38 - 48;
                if (v39 > 9)
                {
                  break;
                }

                v40 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  break;
                }

                v28 = v40 + v39;
                if (__OFADD__(v40, v39))
                {
                  break;
                }

                ++v38;
                if (!--v22)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v21 == 45)
          {
            if (!v22)
            {
              goto LABEL_99;
            }

            if (--v22)
            {
              v28 = 0;
              v32 = v76 + 1;
              while (1)
              {
                v33 = *v32 - 48;
                if (v33 > 9)
                {
                  break;
                }

                v34 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  break;
                }

                v28 = v34 - v33;
                if (__OFSUB__(v34, v33))
                {
                  break;
                }

                ++v32;
                if (!--v22)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v22)
          {
            v28 = 0;
            v43 = v76;
            while (1)
            {
              v44 = *v43 - 48;
              if (v44 > 9)
              {
                break;
              }

              v45 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v45 + v44;
              if (__OFADD__(v45, v44))
              {
                break;
              }

              v43 = (v43 + 1);
              if (!--v22)
              {
                goto LABEL_75;
              }
            }
          }
        }

        else
        {
          if ((v21 & 0x1000000000000000) != 0)
          {
            v26 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v26 = sub_10000D614();
          }

          v27 = *v26;
          if (v27 == 43)
          {
            if (v23 < 1)
            {
              goto LABEL_102;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              v28 = 0;
              if (!v26)
              {
                goto LABEL_66;
              }

              v35 = v26 + 1;
              while (1)
              {
                v36 = *v35 - 48;
                if (v36 > 9)
                {
                  break;
                }

                v37 = 10 * v28;
                if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                {
                  break;
                }

                v28 = v37 + v36;
                if (__OFADD__(v37, v36))
                {
                  break;
                }

                ++v35;
                if (!--v22)
                {
                  goto LABEL_75;
                }
              }
            }
          }

          else if (v27 == 45)
          {
            if (v23 < 1)
            {
              goto LABEL_100;
            }

            v22 = v23 - 1;
            if (v23 != 1)
            {
              v28 = 0;
              if (v26)
              {
                v29 = v26 + 1;
                while (1)
                {
                  v30 = *v29 - 48;
                  if (v30 > 9)
                  {
                    goto LABEL_74;
                  }

                  v31 = 10 * v28;
                  if ((v28 * 10) >> 64 != (10 * v28) >> 63)
                  {
                    goto LABEL_74;
                  }

                  v28 = v31 - v30;
                  if (__OFSUB__(v31, v30))
                  {
                    goto LABEL_74;
                  }

                  ++v29;
                  if (!--v22)
                  {
                    goto LABEL_75;
                  }
                }
              }

LABEL_66:
              LOBYTE(v22) = 0;
LABEL_75:
              v46 = v22;

              if (v46)
              {
                goto LABEL_76;
              }

              goto LABEL_81;
            }
          }

          else
          {
            if (!v23)
            {
              goto LABEL_74;
            }

            v28 = 0;
            if (!v26)
            {
              goto LABEL_66;
            }

            while (1)
            {
              v41 = *v26 - 48;
              if (v41 > 9)
              {
                break;
              }

              v42 = 10 * v28;
              if ((v28 * 10) >> 64 != (10 * v28) >> 63)
              {
                break;
              }

              v28 = v42 + v41;
              if (__OFADD__(v42, v41))
              {
                break;
              }

              ++v26;
              if (!--v23)
              {
                goto LABEL_66;
              }
            }
          }
        }

LABEL_74:
        v28 = 0;
        LOBYTE(v22) = 1;
        goto LABEL_75;
      }

      v52 = sub_100009CEC(v21, a2, 10);
      if (v53)
      {
        goto LABEL_76;
      }

      v28 = v52;
LABEL_81:

      v54 = v28 + 100;
      if ((v28 + 100) >= 0xC3B4)
      {
        v76[0] = 0;
        v76[1] = 0xE000000000000000;
        sub_10000D5F4(43);

        strcpy(v76, "Error code: ");
        BYTE5(v76[1]) = 0;
        HIWORD(v76[1]) = -5120;
        v86._countAndFlagsBits = sub_10000D684();
        sub_10000D4A4(v86);

        v87._countAndFlagsBits = 0xD000000000000015;
        v87._object = 0x800000010000E9B0;
        sub_10000D4A4(v87);
        v88._countAndFlagsBits = sub_10000D684();
        sub_10000D4A4(v88);

        v89._countAndFlagsBits = 8236;
        v89._object = 0xE200000000000000;
        sub_10000D4A4(v89);
        v90._countAndFlagsBits = sub_10000D684();
        sub_10000D4A4(v90);

        v60._countAndFlagsBits = 11817;
        v60._object = 0xE200000000000000;
        goto LABEL_90;
      }

      if (v25)
      {
        if ((v25 & 0x80000000) != 0)
        {
          v76[0] = 0;
          v76[1] = 0xE000000000000000;
          sub_10000D5F4(32);

          strcpy(v76, "Count: ");
          v76[1] = 0xE700000000000000;
          v91._countAndFlagsBits = sub_10000D684();
          sub_10000D4A4(v91);

          v60._countAndFlagsBits = 0xD000000000000017;
          v60._object = 0x800000010000E9F0;
LABEL_90:
          sub_10000D4A4(v60);
          v62 = v76[0];
          v61 = v76[1];

          v49 = sub_10000D3D4();
          a2 = sub_10000D594();

          if (os_log_type_enabled(v49, a2))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v76[0] = v64;
            *v63 = 136446210;
            *(v63 + 4) = sub_1000038FC(v62, v61, v76);
            _os_log_impl(&_mh_execute_header, v49, a2, "%{public}s", v63, 0xCu);
            sub_100007064(v64);
            a1 = a3;
          }

LABEL_8:
        }

        else
        {
          if (v25 >= 0x65)
          {
            v76[0] = 0;
            v76[1] = 0xE000000000000000;
            sub_10000D5F4(46);

            strcpy(v76, "Count: ");
            v76[1] = 0xE700000000000000;
            v80._countAndFlagsBits = sub_10000D684();
            sub_10000D4A4(v80);

            v81._object = 0x800000010000E9D0;
            v81._countAndFlagsBits = 0xD000000000000011;
            sub_10000D4A4(v81);
            a2 = 100;
            v82._countAndFlagsBits = sub_10000D684();
            sub_10000D4A4(v82);

            v83._countAndFlagsBits = 0x747465736572202CLL;
            v83._object = 0xEF206F7420676E69;
            sub_10000D4A4(v83);
            v84._countAndFlagsBits = sub_10000D684();
            sub_10000D4A4(v84);

            v85._countAndFlagsBits = 46;
            v85._object = 0xE100000000000000;
            sub_10000D4A4(v85);
            v55 = v76[0];
            v56 = v76[1];

            v57 = sub_10000D3D4();
            v58 = sub_10000D574();

            if (os_log_type_enabled(v57, v58))
            {
              v59 = swift_slowAlloc();
              a2 = swift_slowAlloc();
              v76[0] = a2;
              *v59 = 136446210;
              *(v59 + 4) = sub_1000038FC(v55, v56, v76);
              _os_log_impl(&_mh_execute_header, v57, v58, "%{public}s", v59, 0xCu);
              sub_100007064(a2);

              a1 = a3;
            }

            v25 = 100;
          }

          sub_10000A278(v77, v54, v25 / 1000.0);
        }
      }
    }

    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v74)
      {

        v76[0] = 0xD000000000000025;
        v76[1] = 0x800000010000EA10;
        sub_10000D4A4(v72);
        v65 = objc_allocWithZone(_DPFloatValueRecorder);
        v66 = sub_10000D444();

        v67 = [v65 initWithKey:v66];

        sub_10000701C(&qword_100018BF0, &qword_10000E0D0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_10000DD80;
        v69 = *v77;
        *(v68 + 32) = *v77;
        sub_10000B1F0(v69, *(&v69 + 1));
        isa = sub_10000D544().super.isa;

        sub_1000090F0(*(v73 + 48));
        v71 = sub_10000D404().super.isa;

        [v67 recordFloatVectors:isa metadata:v71];

        sub_10000B244(v69, *(&v69 + 1));
        return;
      }

      v15 = *(v4 + 8 * v17);
      ++v16;
      if (v15)
      {
        v16 = v17;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_97:
    swift_once();
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
}

uint64_t sub_1000090F0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_10000701C(&qword_100018BF8, &qword_10000E0D8);
    v2 = sub_10000D664();
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
    v13 = (v9 << 10) | (16 * __clz(__rbit64(v5)));
    v14 = (*(a1 + 48) + v13);
    v15 = v14[1];
    v16 = (*(a1 + 56) + v13);
    v18 = *v16;
    v17 = v16[1];
    *&v34[0] = *v14;
    *(&v34[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v30 = v26;
    v31 = v27;
    v32 = v28;
    sub_10000B298(&v29, v33);
    v26 = v30;
    v27 = v31;
    v28 = v32;
    sub_10000B298(v33, v34);
    result = sub_10000D5C4(v2[5]);
    v19 = -1 << *(v2 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*&v7[8 * (v20 >> 6)]) == 0)
    {
      v22 = 0;
      v23 = (63 - v19) >> 6;
      while (++v21 != v23 || (v22 & 1) == 0)
      {
        v24 = v21 == v23;
        if (v21 == v23)
        {
          v21 = 0;
        }

        v22 |= v24;
        v25 = *&v7[8 * v21];
        if (v25 != -1)
        {
          v10 = __clz(__rbit64(~v25)) + (v21 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v20) & ~*&v7[8 * (v20 >> 6)])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v26;
    *(v11 + 16) = v27;
    *(v11 + 32) = v28;
    result = sub_10000B298(v34, (v2[7] + 32 * v10));
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

void sub_1000093B8()
{
  v1 = *(v0 + 40);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = 1 << *(*(v0 + 40) + 32);
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
  v48 = *(v0 + 40);

  v9 = 0;
  v46 = v8;
  v47 = v3;
  v50 = v0;
LABEL_6:
  if (v7)
  {
    v10 = v9;
LABEL_11:
    v49 = (v7 - 1) & v7;
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = (*(v48 + 48) + 16 * v11);
    v13 = *(*(v48 + 56) + 8 * v11);
    v14 = *v12;
    v15 = v12[1];
    v16 = v13 + 64;
    v17 = 1 << *(v13 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v13 + 64);
    v20 = (v17 + 63) >> 6;

    v21 = 0;
    v61 = v20;
    v52 = v13;
    if (!v19)
    {
      goto LABEL_17;
    }

    do
    {
LABEL_21:
      while (1)
      {
        v23 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v24 = v23 | (v21 << 6);
        v25 = (*(v13 + 48) + 16 * v24);
        v27 = *v25;
        v26 = v25[1];
        v28 = *(*(v13 + 56) + 8 * v24);
        v29 = *(v0 + 56);

        if (v29)
        {
          break;
        }

        sub_100008448(v27, v26, v28);

        v20 = v61;
        if (!v19)
        {
          goto LABEL_17;
        }
      }

      v30 = sub_10000D554();
      v58 = v31;
      v59 = v30;
      v32 = sub_10000D554();
      v56 = v33;
      v57 = v32;
      v34 = *(v28 + 16);
      v60 = v28;
      if (v34)
      {
        v55 = sub_100009A00(v34, 0);
        v53 = sub_10000AB94(aBlock, v55 + 4, v34, v28);

        sub_10000AF64();
        if (v53 != v34)
        {
          goto LABEL_38;
        }

        v35 = *(v28 + 16);
        if (v35)
        {
          v54 = sub_10000997C(*(v28 + 16), 0);
          v51 = sub_10000AA94(aBlock, v54 + 8, v35, v28);

          sub_10000AF64();
          if (v51 != v35)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v54 = _swiftEmptyArrayStorage;
        }
      }

      else
      {
        v54 = _swiftEmptyArrayStorage;
        v55 = _swiftEmptyArrayStorage;
      }

      v36 = qword_100018720;
      v37 = v26;

      if (v36 != -1)
      {
        swift_once();
      }

      v38 = sub_10000D3D4();
      v39 = sub_10000D574();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        aBlock[0] = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_1000038FC(0xD000000000000024, 0x800000010000E910, aBlock);
        _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s", v40, 0xCu);
        sub_100007064(v41);
      }

      v13 = v52;
      v42 = sub_10000D444();
      v43 = swift_allocObject();
      v43[2] = v27;
      v43[3] = v37;
      v43[4] = v59;
      v43[5] = v58;
      v43[6] = v57;
      v43[7] = v56;
      v43[8] = v55;
      v43[9] = v54;
      aBlock[4] = sub_10000AFC4;
      aBlock[5] = v43;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000083BC;
      aBlock[3] = &unk_100014BD8;
      v44 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v44);

      v45 = objc_autoreleasePoolPush();
      v0 = v50;
      sub_100008448(v27, v37, v60);

      objc_autoreleasePoolPop(v45);
      v20 = v61;
    }

    while (v19);
LABEL_17:
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v22 >= v20)
      {

        v9 = v10;
        v8 = v46;
        v3 = v47;
        v7 = v49;
        goto LABEL_6;
      }

      v19 = *(v16 + 8 * v22);
      ++v21;
      if (v19)
      {
        v21 = v22;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        return;
      }

      v7 = *(v3 + 8 * v10);
      ++v9;
      if (v7)
      {
        goto LABEL_11;
      }
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_100009918()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  return swift_deallocClassInstance();
}

void *sub_10000997C(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000701C(&qword_100018BE8, &unk_10000E0C0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_100009A00(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_10000701C(&qword_100018880, &qword_10000DF50);
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

void sub_100009A84(uint64_t *a1, int a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_10000B244(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_10000E040;
      sub_10000B244(0, 0xC000000000000000);
      sub_10000A9EC(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_10000B244(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    return;
  }

  v9 = *a1;

  sub_10000B244(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_10000E040;
  sub_10000B244(0, 0xC000000000000000);
  sub_10000D234();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  v13 = sub_10000D1C4();
  if (!v13)
  {
    __break(1u);
    return;
  }

  v14 = v13;
  v15 = sub_10000D1F4();
  v16 = v11 - v15;
  if (__OFSUB__(v11, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v17 = __OFSUB__(v12, v11);
  v18 = v12 - v11;
  if (v17)
  {
    goto LABEL_16;
  }

  v19 = sub_10000D1E4();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  memset((v14 + v16), a2, v20);
  *a1 = __b;
  a1[1] = v10 | 0x8000000000000000;
}

unsigned __int8 *sub_100009CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_10000D514();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_10000A578();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_10000D614();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t *sub_10000A278(uint64_t *result, uint64_t a2, float a3)
{
  v5 = result;
  v7 = *result;
  v6 = result[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      return result;
    }

    v10 = *result;

    sub_10000B244(v7, v6);
    v25 = v7;
    v26 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v5 = xmmword_10000E040;
    sub_10000B244(0, 0xC000000000000000);
    sub_10000D234();
    v12 = v25;
    v11 = v26;
    v13 = *(v25 + 16);
    result = sub_10000D1C4();
    if (!result)
    {
      goto LABEL_23;
    }

    v14 = result;
    result = sub_10000D1F4();
    if (!__OFSUB__(v13, result))
    {
      v15 = v14 + v13 - result;
      result = sub_10000D1E4();
      *&v15[4 * a2] = a3;
      *v5 = v12;
      v5[1] = v11 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v8)
  {
    result = sub_10000B244(v7, v6);
    v25 = v7;
    LOWORD(v26) = v6;
    BYTE2(v26) = BYTE2(v6);
    BYTE3(v26) = BYTE3(v6);
    BYTE4(v26) = BYTE4(v6);
    BYTE5(v26) = BYTE5(v6);
    BYTE6(v26) = BYTE6(v6);
    *(&v25 + a2) = a3;
    v9 = v26 | ((WORD2(v26) | (BYTE6(v26) << 16)) << 32);
    *v5 = v25;
    v5[1] = v9;
    return result;
  }

  v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_10000B244(v7, v6);
  *v5 = xmmword_10000E040;
  sub_10000B244(0, 0xC000000000000000);
  result = swift_isUniquelyReferenced_nonNull_native();
  v17 = v7 >> 32;
  if ((result & 1) == 0)
  {
    if (v17 < v7)
    {
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    if (sub_10000D1C4())
    {
      result = sub_10000D1F4();
      if (__OFSUB__(v7, result))
      {
        goto LABEL_22;
      }
    }

    v18 = sub_10000D204();
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_10000D1B4();

    v16 = v21;
  }

  if (v17 < v7)
  {
    goto LABEL_19;
  }

  result = sub_10000D1C4();
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v22 = result;
  result = sub_10000D1F4();
  if (__OFSUB__(v7, result))
  {
    goto LABEL_20;
  }

  v23 = v22 + v7 - result;
  sub_10000D1E4();
  *&v23[4 * a2] = a3;

  *v5 = v7;
  v5[1] = v16 | 0x4000000000000000;
  return result;
}

uint64_t sub_10000A578()
{
  v0 = sub_10000D524();
  v4 = sub_10000A5F8(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_10000A5F8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_10000D474();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_10000D5A4();
  if (!v9)
  {
    v11 = &_swiftEmptyArrayStorage;
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_100003D3C(v9, 0);
  v12 = sub_10000A750(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_10000D474();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_10000D614();
LABEL_4:

  return sub_10000D474();
}

unint64_t sub_10000A750(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_10000A970(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_10000D4E4();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_10000D614();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_10000A970(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_10000D4C4();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_10000A970(unsigned __int16 a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_10000D4F4();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = sub_10000D4D4();
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_10000A9EC(int *a1, int a2)
{
  sub_10000D244();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = sub_10000D1C4();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = sub_10000D1F4();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = sub_10000D1E4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  memset((v8 + v10), a2, v13);
}

void *sub_10000AA94(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 56) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_10000AB94(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

unint64_t sub_10000ACEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000701C(&qword_100018850, &qword_10000E0B0);
    v3 = sub_10000D664();

    for (i = (a1 + 48); ; i += 6)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100003EA4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 4 * result) = v7;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10000ADE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000701C(&qword_100018BD0, &qword_10000E0A8);
    v3 = sub_10000D664();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100003EA4(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

uint64_t sub_10000AEFC(uint64_t a1)
{
  v2 = sub_10000701C(&qword_100018BC8, &qword_10000E0A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10000AF6C()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[8];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_10000AFE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10000B000()
{
  result = qword_100018BD8;
  if (!qword_100018BD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100018BD8);
  }

  return result;
}

uint64_t sub_10000B04C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_10000D204();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_10000D1D4();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_10000D254();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_10000B0EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000701C(&qword_100018BE0, &qword_10000E0B8);
    v3 = sub_10000D664();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100003EA4(v5, v6);
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

uint64_t sub_10000B1F0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10000B244(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

_OWORD *sub_10000B298(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10000B2C4()
{
  v1 = v0;
  v23 = v0[6];

  sub_10000D424();
  sub_10000CE80(&v23);
  v2 = v0[7];
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1000054F4(0, v3, 0);
    v4 = (v2 + 32);
    do
    {
      v5 = *v4++;
      v6 = sub_10000D684();
      v8 = v7;
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        sub_1000054F4((v9 > 1), v10 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      *(v11 + 4) = v6;
      *(v11 + 5) = v8;
      --v3;
    }

    while (v3);
    v1 = v0;
  }

  sub_10000D424();

  sub_10000701C(&qword_100018C50, &qword_10000E448);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10000E0E0;
  *(inited + 32) = 0x745374656B637562;
  *(inited + 40) = 0xEB00000000747261;
  v13 = v1[2];
  v14 = v1[3];
  *(inited + 48) = sub_10000D444();
  *(inited + 56) = 0x6E4574656B637562;
  *(inited + 64) = 0xE900000000000064;
  v15 = v1[4];
  v16 = v1[5];
  *(inited + 72) = sub_10000D444();
  *(inited + 80) = 0x656D614E6B736174;
  *(inited + 88) = 0xE800000000000000;
  v17 = *v1;
  v18 = v1[1];
  *(inited + 96) = sub_10000D444();
  strcpy((inited + 104), "errorIndices");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  v19 = sub_10000D444();

  *(inited + 120) = v19;
  *(inited + 128) = 0x756F43726F727265;
  *(inited + 136) = 0xEB0000000073746ELL;
  v20 = sub_10000D444();

  *(inited + 144) = v20;
  v21 = sub_10000B0EC(inited);
  swift_setDeallocating();
  sub_10000701C(&qword_100018C58, &qword_10000E450);
  swift_arrayDestroy();
  return v21;
}

uint64_t TelemetryError.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x656C6C65636E6163;
  }

  if (a1 == 1)
  {
    return 0x6375427974706D65;
  }

  return 0x656D656C65546F6ELL;
}

uint64_t sub_10000B64C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6375427974706D65;
  v4 = 0xEC0000007374656BLL;
  if (v2 != 1)
  {
    v3 = 0x656D656C65546F6ELL;
    v4 = 0xEB00000000797274;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C6C65636E6163;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x6375427974706D65;
  v8 = 0xEC0000007374656BLL;
  if (*a2 != 1)
  {
    v7 = 0x656D656C65546F6ELL;
    v8 = 0xEB00000000797274;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C6C65636E6163;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_10000D694();
  }

  return v11 & 1;
}

uint64_t sub_10000B770(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000747261;
  v3 = 0x745374656B637562;
  v4 = a1;
  v5 = 0x646E49726F727265;
  v6 = 0xEC00000073656369;
  v7 = 0x756F43726F727265;
  v8 = 0xEB0000000073746ELL;
  if (a1 != 4)
  {
    v7 = 0x73654D726F727265;
    v8 = 0xED00007365676173;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6E4574656B637562;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 0x656D614E6B736174;
    v10 = 0xE800000000000000;
  }

  if (!a1)
  {
    v9 = 0x745374656B637562;
    v10 = 0xEB00000000747261;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0xEC00000073656369;
      if (v11 != 0x646E49726F727265)
      {
        goto LABEL_31;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEB0000000073746ELL;
      if (v11 != 0x756F43726F727265)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v2 = 0xED00007365676173;
      if (v11 != 0x73654D726F727265)
      {
        goto LABEL_31;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE900000000000064;
        if (v11 != 0x6E4574656B637562)
        {
          goto LABEL_31;
        }

        goto LABEL_28;
      }

      v2 = 0xE800000000000000;
      v3 = 0x656D614E6B736174;
    }

    if (v11 != v3)
    {
LABEL_31:
      v13 = sub_10000D694();
      goto LABEL_32;
    }
  }

LABEL_28:
  if (v12 != v2)
  {
    goto LABEL_31;
  }

  v13 = 1;
LABEL_32:

  return v13 & 1;
}

Swift::Int sub_10000B98C()
{
  v1 = *v0;
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

Swift::Int sub_10000BA44()
{
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

uint64_t sub_10000BB74()
{
  *v0;
  *v0;
  sub_10000D484();
}

Swift::Int sub_10000BC18()
{
  v1 = *v0;
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

Swift::Int sub_10000BCCC()
{
  sub_10000D6F4();
  sub_10000D484();

  return sub_10000D714();
}

uint64_t sub_10000BDF8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19TelemetryAggregator0A5ErrorO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000BE28(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC0000007374656BLL;
  v5 = 0x6375427974706D65;
  if (v2 != 1)
  {
    v5 = 0x656D656C65546F6ELL;
    v4 = 0xEB00000000797274;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C6C65636E6163;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

BOOL CoreAnalyticsEvents.init(rawValue:)(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000148E8;
  v6._object = a2;
  v4 = sub_10000D674(v3, v6);

  return v4 != 0;
}

Swift::Int sub_10000BF08()
{
  sub_10000D6F4();
  sub_10000D484();
  return sub_10000D714();
}

Swift::Int sub_10000BF7C()
{
  sub_10000D6F4();
  sub_10000D484();
  return sub_10000D714();
}

uint64_t sub_10000BFD0@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_100014948;
  v7._object = v3;
  v5 = sub_10000D674(v4, v7);

  *a2 = v5 != 0;
  return result;
}

uint64_t CoreAnalyticsEventsFields.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x745374656B637562;
  v2 = 0x646E49726F727265;
  v3 = 0x756F43726F727265;
  if (a1 != 4)
  {
    v3 = 0x73654D726F727265;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6E4574656B637562;
  if (a1 != 1)
  {
    v4 = 0x656D614E6B736174;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_10000C15C()
{
  *v0;
  *v0;
  *v0;
  sub_10000D484();
}

uint64_t sub_10000C27C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s19TelemetryAggregator25CoreAnalyticsEventsFieldsO8rawValueACSgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_10000C2AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000747261;
  v4 = 0x745374656B637562;
  v5 = 0xEC00000073656369;
  v6 = 0x646E49726F727265;
  v7 = 0xEB0000000073746ELL;
  v8 = 0x756F43726F727265;
  if (v2 != 4)
  {
    v8 = 0x73654D726F727265;
    v7 = 0xED00007365676173;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE900000000000064;
  v10 = 0x6E4574656B637562;
  if (v2 != 1)
  {
    v10 = 0x656D614E6B736174;
    v9 = 0xE800000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_10000C3A4(int a1, int a2)
{
  v2 = __OFADD__(a1, a2);
  result = (a1 + a2);
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C3B4(uint64_t result, int a2)
{
  if (a2 <= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

uint64_t sub_10000C3C0(uint64_t result, int a2)
{
  if (a2 >= result)
  {
    return result;
  }

  else
  {
    return a2;
  }
}

void sub_10000C3CC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = 7104878;
  LODWORD(v24) = [a1 errorCode];
  v5 = sub_10000D684();
  v7 = v6;
  v8 = [a1 trialIdentifiers];
  if (v8 && (v9 = v8, v10 = [v8 bmltIdentifiers], v9, v10) && (v11 = objc_msgSend(v10, "trialTaskID"), v10, v11))
  {
    v4 = sub_10000D454();
    v13 = v12;
  }

  else
  {
    v13 = 0xE300000000000000;
  }

  v14 = [a1 count];
  v15 = [a1 aggregateFunction];
  v16 = sub_10000CFA8;
  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = sub_10000C3B4;
      goto LABEL_24;
    }

    if (v15 != 3)
    {
      goto LABEL_13;
    }

    v16 = sub_10000C3C0;
  }

  else
  {
    if (!v15)
    {
      if (qword_100018720 != -1)
      {
        swift_once();
      }

      v17 = sub_10000D3D4();
      v21 = sub_10000D594();
      if (os_log_type_enabled(v17, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v24 = v23;
        *v22 = 136446210;
        *(v22 + 4) = sub_1000038FC(0xD00000000000002CLL, 0x800000010000EA40, &v24);
        _os_log_impl(&_mh_execute_header, v17, v21, "%{public}s", v22, 0xCu);
        sub_100007064(v23);
      }

      goto LABEL_17;
    }

    if (v15 != 1)
    {
LABEL_13:
      if (qword_100018720 != -1)
      {
        swift_once();
      }

      v17 = sub_10000D3D4();
      v18 = sub_10000D594();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v24 = v20;
        *v19 = 136446210;
        *(v19 + 4) = sub_1000038FC(0xD00000000000002CLL, 0x800000010000EA40, &v24);
        _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s", v19, 0xCu);
        sub_100007064(v20);
      }

LABEL_17:

      v16 = sub_10000CFA8;
    }
  }

LABEL_24:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = 0;
}

uint64_t _s19TelemetryAggregator0A5ErrorO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_100014880;
  v6._object = a2;
  v4 = sub_10000D674(v3, v6);

  if (v4 >= 3)
  {
    return 3;
  }

  else
  {
    return v4;
  }
}

uint64_t _s19TelemetryAggregator25CoreAnalyticsEventsFieldsO8rawValueACSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_1000149A8;
  v6._object = a2;
  v4 = sub_10000D674(v3, v6);

  if (v4 >= 6)
  {
    return 6;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_10000C844()
{
  result = qword_100018C00;
  if (!qword_100018C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C00);
  }

  return result;
}

unint64_t sub_10000C89C()
{
  result = qword_100018C08;
  if (!qword_100018C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C08);
  }

  return result;
}

unint64_t sub_10000C8F4()
{
  result = qword_100018C10;
  if (!qword_100018C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C10);
  }

  return result;
}

unint64_t sub_10000C94C()
{
  result = qword_100018C18;
  if (!qword_100018C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C18);
  }

  return result;
}

unint64_t sub_10000C9A4()
{
  result = qword_100018C20;
  if (!qword_100018C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C20);
  }

  return result;
}

unint64_t sub_10000CA40()
{
  result = qword_100018C38;
  if (!qword_100018C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100018C38);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TelemetryError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for TelemetryError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for CoreAnalyticsEvents(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CoreAnalyticsEvents(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for CoreAnalyticsEventsFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CoreAnalyticsEventsFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_10000CE80(uint64_t a1)
{
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_10000CEE8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_10000CF04(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10000CF4C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10000CFB4()
{
  v0 = type metadata accessor for TelemetryLogger();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_10000D3E4();
  qword_1000194D0 = v3;
  return result;
}

uint64_t sub_10000D034()
{
  v1 = OBJC_IVAR____TtC19TelemetryAggregator15TelemetryLogger_logger;
  v2 = sub_10000D3F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TelemetryLogger()
{
  result = qword_100018CA8;
  if (!qword_100018CA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10000D124()
{
  result = sub_10000D3F4();
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