uint64_t sub_1C0BC8788(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v29 - v6;
  v8 = type metadata accessor for ReporterState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1C0BEC018();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1C0BEC028();
  result = (*(v14 + 8))(v17, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  if ((a1 & 0x100000000) != 0)
  {
    v22 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_idGenerator);
    v23 = *(v22 + 16);
    v24 = __CFADD__(v23, 1);
    v25 = v23 + 1;
    if (!v24)
    {
      *(v22 + 16) = v25;
      result = getpid();
      if ((result & 0x80000000) == 0)
      {
        v21 = *(v22 + 16) | (result << 32);
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      return result;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v21 = a1;
LABEL_7:
  sub_1C0BC8CCC(v21, v12);
  sub_1C0BC9378(v12, v7, type metadata accessor for ReporterState);
  (*(v9 + 56))(v7, 0, 1, v8);
  swift_beginAccess();
  sub_1C0BC958C(v7, v21);
  swift_endAccess();
  v26 = sub_1C0BEBF88();
  v27 = sub_1C0BEC118();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v21;
    _os_log_impl(&dword_1C0BC7000, v26, v27, "Created new reporting session. { reporterID=%lld }", v28, 0xCu);
    MEMORY[0x1C68E0970](v28, -1, -1);
  }

  sub_1C0BCA00C(v12, type metadata accessor for ReporterState);
  return v21;
}

uint64_t sub_1C0BC8AFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = sub_1C0BC8788(0x100000000);
  *a1 = result;
  return result;
}

uint64_t AudioAnalyticsCreateReporter(uint64_t a1)
{
  if (qword_1ED6F77D8 != -1)
  {
    a1 = swift_once();
  }

  v1 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  sub_1C0BEC178();

  return v5;
}

uint64_t sub_1C0BC8C28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C0BC8788(0x100000000);
  *a1 = result;
  return result;
}

uint64_t sub_1C0BC8C74(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0BC8CCC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = *(*(type metadata accessor for ActiveReporterState(0) - 8) + 64);
  v7 = (MEMORY[0x1EEE9AC00])();
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - v10);
  type metadata accessor for ReporterData();
  v12 = swift_allocObject();
  *(v12 + 24) = -1;
  *(v12 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1C0BED230;
  *(v13 + 32) = getpid();
  v14 = type metadata accessor for PerfCheck();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v12 + 40) = sub_1C0BC9100(v13);
  *(v12 + 16) = a1;
  *v11 = v12;
  swift_storeEnumTagMultiPayload();
  if (*(v3 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled) == 1)
  {
    sub_1C0BC9028(v11, a2, type metadata accessor for ActiveReporterState);
    type metadata accessor for ReporterState(0);
  }

  else
  {
    sub_1C0BC9028(v11, v9, type metadata accessor for ActiveReporterState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v18 = *v9;
    if (EnumCaseMultiPayload != 1)
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BD78EC(v9 + *(v19 + 48), type metadata accessor for StartedReporterData);
    }

    *a2 = v18;
    type metadata accessor for ReporterState(0);
  }

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_1C0BC8EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v3 = sub_1C0BEC278();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C0BCCD54(v4, &v13, &qword_1EBE52938, &qword_1C0BED7D0);
      v5 = v13;
      v6 = v14;
      result = sub_1C0BCA668(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C0BCA658(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BC9028(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t type metadata accessor for PerfCheck()
{
  result = qword_1ED6F76D0;
  if (!qword_1ED6F76D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t *sub_1C0BC9100(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v4;
  v1[4] = 0;
  v1[5] = 0;
  *(v1 + 25) = -1;
  v5 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
  if (qword_1ED6F7520 != -1)
  {
    swift_once();
  }

  v6 = sub_1C0BEBFA8();
  v7 = __swift_project_value_buffer(v6, qword_1ED6F78D0);
  v8 = *(v6 - 8);
  (*(v8 + 16))(v1 + v5, v7, v6);
  if (qword_1ED6F7540 != -1)
  {
    swift_once();
  }

  if (byte_1ED6F78E8 == 1)
  {
    v9 = v1[3];
    v1[3] = a1;

    *(v1 + 48) = 1;
  }

  else
  {

    v10 = v1[2];

    v11 = v1[3];

    v12 = v1[5];

    (*(v8 + 8))(v1 + v5, v6);
    v13 = *(*v1 + 48);
    v14 = *(*v1 + 52);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_1C0BC9310(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0BC9378(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0BC93E0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {

    v4 = sub_1C0BCA668(0xD00000000000001ALL, 0x80000001C0BEE450);
    if (v5)
    {
      sub_1C0BCB304(*(a2 + 56) + 32 * v4, v12);
      sub_1C0BCA658(v12, v13);
      sub_1C0BCB304(v13, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1C0BCB360(v12, 0xD000000000000018, 0x80000001C0BEDF20, isUniquelyReferenced_nonNull_native);
      __swift_destroy_boxed_opaque_existential_0(v13);
      v7 = a2;
      goto LABEL_6;
    }
  }

  else
  {
  }

  v7 = a2;
LABEL_6:
  swift_beginAccess();

  v8 = *(a1 + 32);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  *&v12[0] = *(a1 + 32);
  *(a1 + 32) = 0x8000000000000000;
  sub_1C0BC9890(v7, sub_1C0BCB820, 0, v9, v12);

  *(a1 + 32) = *&v12[0];

  result = swift_endAccess();
  if (*(a1 + 40))
  {
    v11 = *(a1 + 24);

    sub_1C0BCB874(a2, v11);
  }

  return result;
}

uint64_t sub_1C0BC958C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for ReporterState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1C0BC9D00(a1, &qword_1EBE52960, &unk_1C0BED5F0);
    v15 = *v3;
    v16 = sub_1C0BC97E0(a2);
    if (v17)
    {
      v18 = v16;
      v19 = *v3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *v3;
      v26 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1C0BEB944();
        v21 = v26;
      }

      sub_1C0BC9D60(*(v21 + 56) + *(v11 + 72) * v18, v9, type metadata accessor for ReporterState);
      sub_1C0BDFCD8(v18, v21);
      *v3 = v21;
      (*(v11 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);
    }

    return sub_1C0BC9D00(v9, &qword_1EBE52960, &unk_1C0BED5F0);
  }

  else
  {
    sub_1C0BC9D60(a1, v14, type metadata accessor for ReporterState);
    v22 = *v3;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    result = sub_1C0BC9DC8(v14, a2, v23);
    *v3 = v26;
  }

  return result;
}

unint64_t sub_1C0BC97E0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_1C0BEC2B8();

  return sub_1C0BC9824(a1, v4);
}

unint64_t sub_1C0BC9824(uint64_t a1, uint64_t a2)
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

unint64_t sub_1C0BC9890(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v47 = a1;
  v48 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v49 = v8;
  v50 = 0;
  v51 = v11 & v9;
  v52 = a2;
  v53 = a3;

  sub_1C0BC9BA0(&v45);
  v12 = *(&v45 + 1);
  if (!*(&v45 + 1))
  {
    goto LABEL_25;
  }

  v13 = v45;
  sub_1C0BCA658(v46, v44);
  v14 = *a5;
  result = sub_1C0BCA668(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_1C0BCB4B0(v20, a4 & 1);
    v22 = *a5;
    result = sub_1C0BCA668(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1C0BEC298();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    sub_1C0BD20A0();
    result = v27;
    v24 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v24 = *a5;
  if (v21)
  {
LABEL_11:
    v25 = result;

    v26 = (v24[7] + 32 * v25);
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_1C0BCA658(v44, v26);
    goto LABEL_15;
  }

LABEL_13:
  v24[(result >> 6) + 8] |= 1 << result;
  v28 = (v24[6] + 16 * result);
  *v28 = v13;
  v28[1] = v12;
  result = sub_1C0BCA658(v44, (v24[7] + 32 * result));
  v29 = v24[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (!v19)
  {
    v24[2] = v30;
LABEL_15:
    sub_1C0BC9BA0(&v45);
    v12 = *(&v45 + 1);
    if (*(&v45 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v45;
        sub_1C0BCA658(v46, v44);
        v33 = *a5;
        result = sub_1C0BCA668(v13, v12);
        v35 = v33[2];
        v36 = (v34 & 1) == 0;
        v19 = __OFADD__(v35, v36);
        v37 = v35 + v36;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v34;
        if (v33[3] < v37)
        {
          sub_1C0BCB4B0(v37, 1);
          v38 = *a5;
          result = sub_1C0BCA668(v13, v12);
          if ((a4 & 1) != (v39 & 1))
          {
            goto LABEL_8;
          }
        }

        v40 = *a5;
        if (a4)
        {
          v31 = result;

          v32 = (v40[7] + 32 * v31);
          __swift_destroy_boxed_opaque_existential_0(v32);
          sub_1C0BCA658(v44, v32);
        }

        else
        {
          v40[(result >> 6) + 8] |= 1 << result;
          v41 = (v40[6] + 16 * result);
          *v41 = v13;
          v41[1] = v12;
          result = sub_1C0BCA658(v44, (v40[7] + 32 * result));
          v42 = v40[2];
          v19 = __OFADD__(v42, 1);
          v43 = v42 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v40[2] = v43;
        }

        sub_1C0BC9BA0(&v45);
        v12 = *(&v45 + 1);
      }

      while (*(&v45 + 1));
    }

LABEL_25:
    sub_1C0BCB86C();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C0BC9BA0@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C0BCB304(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    sub_1C0BCA658(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return sub_1C0BC9D00(v22, &qword_1EBE52968, &qword_1C0BED608);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BC9D00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1C0BC9D60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0BC9DC8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1C0BC97E0(a2);
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
      sub_1C0BEB944();
      goto LABEL_7;
    }

    sub_1C0BD0568(v13, a3 & 1);
    v20 = *v4;
    v21 = sub_1C0BC97E0(a2);
    if ((v14 & 1) == (v22 & 1))
    {
      v10 = v21;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1C0BEC298();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for ReporterState(0) - 8) + 72) * v10;

    return sub_1C0BD1920(a1, v18);
  }

LABEL_13:

  return sub_1C0BC9F14(v10, a2, a1, v16);
}

uint64_t sub_1C0BC9F14(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for ReporterState(0);
  result = sub_1C0BC9FA8(a3, v7 + *(*(v8 - 8) + 72) * a1);
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

uint64_t sub_1C0BC9FA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReporterState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BCA00C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall AudioAnalyticsSetConfiguration(_:_:)(Swift::Int64 a1, CFDictionaryRef a2)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
      sub_1C0BEC048();
    }
  }
}

void AudioAnalyticsSetConfiguration(Swift::Int64 a1, void *a2)
{
  v3 = a2;
  AudioAnalyticsSetConfiguration(_:_:)(a1, v3);
}

unint64_t sub_1C0BCA374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
        v18 = *v16;
        v17 = v16[1];
        sub_1C0BCA5E8(*(a1 + 56) + 32 * v15, &v30);
        v28 = v18;
        v29 = v17;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
        swift_dynamicCast();
        sub_1C0BCA658(&v24, v26);
        sub_1C0BCA658(v26, v27);
        sub_1C0BCA658(v27, &v25);
        result = sub_1C0BCA668(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1C0BCA658(&v25, v12);
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
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1C0BCA658(&v25, (v2[7] + 32 * result));
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

uint64_t sub_1C0BCA5E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C0BCA658(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C0BCA668(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1C0BEC2C8();
  sub_1C0BEC098();
  v6 = sub_1C0BEC2F8();

  return sub_1C0BCA6E0(a1, a2, v6);
}

unint64_t sub_1C0BCA6E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1C0BEC288())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C0BCA828(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  active = type metadata accessor for ActiveReporterState(0);
  v6 = *(*(active - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](active);
  v63 = (&v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x1EEE9AC00](v7);
  v60 = (&v59 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v59 - v14;
  v16 = type metadata accessor for ReporterState(0);
  v65 = *(v16 - 8);
  v66 = v16;
  v17 = *(v65 + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v59 - v21;
  v22 = sub_1C0BEC018();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (&v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v3 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v26 = v27;
  (*(v23 + 104))(v26, *MEMORY[0x1E69E8020], v22);
  v28 = v27;
  v29 = sub_1C0BEC028();
  result = (*(v23 + 8))(v26, v22);
  if (v29)
  {
    v64 = v20;
    v31 = a2;

    v32 = sub_1C0BEBF88();
    v33 = sub_1C0BEC118();

    v34 = a1;
    if (os_log_type_enabled(v32, v33))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v68 = v36;
      *v35 = 134218243;
      *(v35 + 4) = v31;
      *(v35 + 12) = 2081;
      v37 = sub_1C0BEC068();
      v39 = v34;
      v40 = sub_1C0BD80C0(v37, v38, &v68);

      *(v35 + 14) = v40;
      v34 = v39;
      _os_log_impl(&dword_1C0BC7000, v32, v33, "Set configuration. { reporterID=%lld, configuration=%{private}s }", v35, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x1C68E0970](v36, -1, -1);
      MEMORY[0x1C68E0970](v35, -1, -1);
    }

    sub_1C0BCAF30(v31, 0xD000000000000026, 0x80000001C0BEE4B0, v15);
    if ((*(v65 + 48))(v15, 1, v66) == 1)
    {
      return sub_1C0BC9D00(v15, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      v41 = v15;
      v42 = v67;
      sub_1C0BC9D60(v41, v67, type metadata accessor for ReporterState);
      v43 = v42;
      v44 = v64;
      sub_1C0BC9378(v43, v64, type metadata accessor for ReporterState);
      if (swift_getEnumCaseMultiPayload())
      {
        v45 = v61;
        sub_1C0BC9D60(v44, v61, type metadata accessor for ActiveReporterState);
        v46 = v60;
        sub_1C0BC9378(v45, v60, type metadata accessor for ActiveReporterState);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v48 = *v46;
        if (EnumCaseMultiPayload != 1)
        {
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
          sub_1C0BCA00C(v46 + *(v49 + 48), type metadata accessor for StartedReporterData);
        }

        sub_1C0BC93E0(v48, v34);

        v50 = sub_1C0BCD8D4(v67, 3);
        v51 = v63;
        sub_1C0BC9D60(v45, v63, type metadata accessor for ActiveReporterState);
        v52 = swift_getEnumCaseMultiPayload();
        v53 = *v51;
        if (v52 != 1)
        {
          v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
          sub_1C0BCA00C(v51 + *(v54 + 48), type metadata accessor for StartedReporterData);
        }

        swift_beginAccess();
        v55 = *(v53 + 32);

        v56 = sub_1C0BEC038();

        v57 = v67;
        [v50 setWithConfiguration:v56 for:sub_1C0BE20D4()];
        swift_unknownObjectRelease();

        v58 = v57;
      }

      else
      {
        sub_1C0BC93E0(*v44, v34);

        v58 = v67;
      }

      return sub_1C0BCA00C(v58, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BCAED4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_1C0BCA828(v1, v2);
}

uint64_t sub_1C0BCAF00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1C0BCAF30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v33 - v11;
  v13 = sub_1C0BEC018();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v4 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1C0BEC028();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (qword_1ED6F74F8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  if (qword_1ED6F78A0 == a1)
  {
    v20 = type metadata accessor for ReporterState(0);
    return (*(*(v20 - 8) + 56))(a4, 1, 1, v20);
  }

  else
  {
    v22 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
    swift_beginAccess();
    v23 = *(v4 + v22);
    if (*(v23 + 16) && (v24 = sub_1C0BC97E0(a1), (v25 & 1) != 0))
    {
      v26 = v24;
      v27 = *(v23 + 56);
      v28 = type metadata accessor for ReporterState(0);
      v29 = *(v28 - 8);
      sub_1C0BC9378(v27 + *(v29 + 72) * v26, v12, type metadata accessor for ReporterState);
      v30 = *(v29 + 56);
      v30(v12, 0, 1, v28);
      sub_1C0BC9D60(v12, a4, type metadata accessor for ReporterState);
      return (v30)(a4, 0, 1, v28);
    }

    else
    {
      v31 = type metadata accessor for ReporterState(0);
      v32 = *(v31 - 8);
      (*(v32 + 56))(v12, 1, 1, v31);
      sub_1C0BD1F28(a2, a3, a1, a4);
      result = (*(v32 + 48))(v12, 1, v31);
      if (result != 1)
      {
        return sub_1C0BC9D00(v12, &qword_1EBE52960, &unk_1C0BED5F0);
      }
    }
  }

  return result;
}

uint64_t sub_1C0BCB304(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

_OWORD *sub_1C0BCB360(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C0BCA668(a2, a3);
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
      sub_1C0BD20A0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C0BCB4B0(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1C0BCA668(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1C0BEC298();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_1C0BCA658(a1, v23);
  }

  else
  {
    sub_1C0BCB768(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_1C0BCB4B0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
  v36 = a2;
  result = sub_1C0BEC268();
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
        sub_1C0BCA658(v25, v37);
      }

      else
      {
        sub_1C0BCB304(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1C0BEC2C8();
      sub_1C0BEC098();
      result = sub_1C0BEC2F8();
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
      result = sub_1C0BCA658(v37, (*(v8 + 56) + 32 * v16));
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

_OWORD *sub_1C0BCB768(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C0BCA658(a4, (a5[7] + 32 * a1));
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

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_1C0BCB820@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_1C0BCB304((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

uint64_t sub_1C0BCB874(uint64_t result, __int16 a2)
{
  v3 = result;
  *(v2 + 50) = a2;
  if (*(result + 16))
  {
    result = sub_1C0BCA668(0xD000000000000018, 0x80000001C0BEDF00);
    if (v4)
    {
      sub_1C0BCB304(*(v3 + 56) + 32 * result, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52928, &qword_1C0BED440);
      result = swift_dynamicCast();
      if (result)
      {
        result = sub_1C0BE0720(v7);
      }
    }
  }

  if (*(v3 + 16))
  {
    result = sub_1C0BCA668(0xD000000000000018, 0x80000001C0BEDF20);
    if (v5)
    {
      sub_1C0BCB304(*(v3 + 56) + 32 * result, v9);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = *(v2 + 40);
        *(v2 + 32) = v7;
        *(v2 + 40) = v8;
      }
    }
  }

  return result;
}

uint64_t objectdestroy_27Tm(uint64_t a1)
{
  v3 = *(v1 + 24);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t AudioAnalyticsSetAudioServiceType(_:_:)(uint64_t result, __int16 a2)
{
  v3 = result;
  if (qword_1ED6F74F8 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED6F78A0 != v3)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED6F78F0;
    v5 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = a2;
    *(v6 + 32) = v3;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1C0BD04FC;
    *(v7 + 24) = v6;
    v10[4] = sub_1C0BCA7FC;
    v10[5] = v7;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 1107296256;
    v10[2] = sub_1C0BCA800;
    v10[3] = &block_descriptor_25;
    v8 = _Block_copy(v10);
    v9 = v4;

    dispatch_sync(v5, v8);
    _Block_release(v8);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1C0BCBC08()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void AudioAnalyticsSendMessage(_:_:_:_:)(uint64_t a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
      sub_1C0BEC048();
    }

    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v2 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v2, qword_1ED6F78B8);
    oslog = sub_1C0BEBF88();
    v3 = sub_1C0BEC128();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 134217984;
      *(v4 + 4) = a1;
      _os_log_impl(&dword_1C0BC7000, oslog, v3, "Discarding message with at least one nil entry. { reporterID=%lld }", v4, 0xCu);
      MEMORY[0x1C68E0970](v4, -1, -1);
    }
  }
}

uint64_t sub_1C0BCBFB4()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 46, 7);
}

void AudioAnalyticsSendMessage(uint64_t a1, void *a2)
{
  v3 = a2;
  AudioAnalyticsSendMessage(_:_:_:_:)(a1);
}

void sub_1C0BCC0A8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 44);
  v5 = *(v0 + 16);
  sub_1C0BCC0E4(v1, 0, v2, v3, v4, 1);
}

void sub_1C0BCC0E4(char *a1, char a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v84 = a6;
  v88 = a4;
  v89 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v81 = &v76[-v12];
  v82 = type metadata accessor for ReporterState(0);
  v85 = *(v82 - 8);
  v13 = *(v85 + 64);
  v14 = MEMORY[0x1EEE9AC00](v82);
  v83 = &v76[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v76[-v16];
  v87 = sub_1C0BEBF68();
  v18 = *(v87 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v76[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1C0BEC018();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v76[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = *&v6[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  v28 = sub_1C0BEC028();
  (*(v22 + 8))(v25, v21);
  if ((v28 & 1) == 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v29 = a1;
  a1 = v6;
  v28 = v88;
  if (a2)
  {
    if (qword_1ED6F74F8 == -1)
    {
LABEL_4:
      v29 = qword_1ED6F78A0;
      goto LABEL_5;
    }

LABEL_50:
    swift_once();
    goto LABEL_4;
  }

LABEL_5:
  v30 = v86;
  sub_1C0BEBF58();
  sub_1C0BEBF38();
  v32 = v31;
  v79 = *(v18 + 8);
  v80 = v18 + 8;
  v79(v30, v87);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0BED230;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001C0BEE510;
  *(inited + 72) = MEMORY[0x1E69E63B0];
  *(inited + 48) = v32;

  v34 = sub_1C0BC8EF8(inited);
  swift_setDeallocating();
  sub_1C0BC9D00(inited + 32, &qword_1EBE52938, &qword_1C0BED7D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = a3;
  sub_1C0BC9890(v34, sub_1C0BCB820, 0, isUniquelyReferenced_nonNull_native, &aBlock);

  v36 = aBlock;
  v37 = v89;
  sub_1C0BCCF24(v29, aBlock, v28, v89);
  AudioAnalyticsTraceWrapperPost(4624);
  v38 = v85;
  if ((v84 & 1) != 0 && (v39 = *(*&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageRateLimiter] + 16), (sub_1C0BCCDBC(1u) & 1) == 0))
  {

    v45 = sub_1C0BEBF88();
    v46 = sub_1C0BEC128();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v29;
      _os_log_impl(&dword_1C0BC7000, v45, v46, "Message send exceeds rate-limit threshold and will be dropped. { reporterID=%lld, rateLimit=32hz }", v47, 0xCu);
      MEMORY[0x1C68E0970](v47, -1, -1);
    }

    sub_1C0BE63FC(v29);
  }

  else
  {
    v40 = v28 == 7 && v37 == 6;
    v41 = v40;
    v84 = v41;
    if (v40)
    {
      if (qword_1EBE52840 != -1)
      {
        swift_once();
      }

      if (byte_1EBE53252)
      {
        v42 = sub_1C0BEC078();
        v43 = swift_allocObject();
        *(v43 + 16) = v36;
        v94 = sub_1C0BE79C0;
        v95 = v43;
        aBlock = MEMORY[0x1E69E9820];
        v91 = 1107296256;
        v92 = sub_1C0BE58C8;
        v93 = &block_descriptor_80;
        v44 = _Block_copy(&aBlock);

        AnalyticsSendEventLazy();
        _Block_release(v44);

        return;
      }

      v48 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle;
      v49 = *&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle];
      if (v49)
      {
        v78 = v49;
        v77 = [v78 pause];
        v50 = sub_1C0BEBF88();
        v51 = sub_1C0BEC118();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 67109120;
          *(v52 + 4) = v77;
          _os_log_impl(&dword_1C0BC7000, v50, v51, "Paused CPUTrace with handle. { success=%{BOOL}d }", v52, 8u);
          v53 = v52;
          v38 = v85;
          MEMORY[0x1C68E0970](v53, -1, -1);
        }

        v54 = *&a1[v48];
        *&a1[v48] = 0;

        v28 = v88;
      }
    }

    v55 = v81;
    sub_1C0BCAF30(v29, 0xD00000000000003FLL, 0x80000001C0BEE530, v81);
    v56 = *(v38 + 48);
    v57 = v82;
    if (v56(v55, 1, v82) == 1)
    {
      sub_1C0BD2244(v29, a1, v17);
      if (v56(v55, 1, v57) != 1)
      {
        sub_1C0BC9D00(v55, &qword_1EBE52960, &unk_1C0BED5F0);
      }
    }

    else
    {
      sub_1C0BC9D60(v55, v17, type metadata accessor for ReporterState);
    }

    v58 = v83;
    sub_1C0BC9378(v17, v83, type metadata accessor for ReporterState);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C0BCA00C(v58, type metadata accessor for ReporterState);
      if (qword_1ED6F7540 != -1)
      {
        swift_once();
      }

      if (byte_1ED6F78E8 != 1)
      {
        goto LABEL_43;
      }

      if (qword_1ED6F74F0 != -1)
      {
        swift_once();
      }

      if (byte_1ED6F78A9 == 1 && v89 == 1 && *&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_halIOCategory] == v28)
      {
        v59 = v86;
        sub_1C0BEBF58();
        sub_1C0BEBF38();
        v61 = v60;
        v79(v59, v87);
        v62 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery;
        if (v61 - *&a1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery] > 3600.0)
        {
          v63 = sub_1C0BCD8D4(v17, 1);
          v64 = swift_allocObject();
          *(v64 + 16) = a1;
          v94 = sub_1C0BE79B8;
          v95 = v64;
          aBlock = MEMORY[0x1E69E9820];
          v91 = 1107296256;
          v92 = sub_1C0BE59D0;
          v93 = &block_descriptor_2;
          v65 = _Block_copy(&aBlock);
          v66 = a1;

          [v63 getTailspinSessionIDFor:v29 reply:v65];
          _Block_release(v65);
          swift_unknownObjectRelease();
          v67 = v86;
          sub_1C0BEBF58();
          sub_1C0BEBF38();
          v69 = v68;
          v79(v67, v87);
          *&a1[v62] = v69;
        }
      }

      v37 = v89;
      if (v84)
      {
        v70 = sub_1C0BCD8D4(v17, 1);
        v71 = sub_1C0BEC038();

        [v70 sendWithMessage:v71 with:7 and:6 for:v29];
      }

      else
      {
LABEL_43:
        v72 = sub_1C0BCD8D4(v17, 3);
        v71 = sub_1C0BEC038();

        [v72 sendWithMessage:v71 with:v28 and:v37 for:v29];
      }

      swift_unknownObjectRelease();
    }

    else
    {

      sub_1C0BCA00C(v58, type metadata accessor for ReporterState);
      v73 = sub_1C0BEBF88();
      v74 = sub_1C0BEC128();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 134217984;
        *(v75 + 4) = v29;
        _os_log_impl(&dword_1C0BC7000, v73, v74, "Reporter disconnected. { function=sendMessage, reporterID=%lld }", v75, 0xCu);
        MEMORY[0x1C68E0970](v75, -1, -1);
      }
    }

    sub_1C0BCA00C(v17, type metadata accessor for ReporterState);
  }
}

uint64_t sub_1C0BCCCE0()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BCCD18()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BCCD54(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C0BCCDBC(unsigned int a1)
{
  v2 = v1;
  v4 = sub_1C0BEBF68();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 24);
  if (v10 < a1)
  {
    sub_1C0BEBF58();
    sub_1C0BEBF38();
    v12 = v11;
    result = (*(v5 + 8))(v9, v4);
    v13 = (v12 - *(v2 + 32)) * 32.0;
    v14 = round(v13);
    v15 = vcvtad_u64_f64(v13);
    if (v14 >= 4294967300.0 || v14 <= -1.0)
    {
      v15 = -1;
    }

    v17 = *(v2 + 24);
    v18 = v17 + v15;
    if (v17 + v15 >= 0x20)
    {
      v18 = 32;
    }

    v10 = __CFADD__(v17, v15) ? 32 : v18;
    *(v2 + 24) = v10;
    *(v2 + 32) = v12;
    if (v10 < a1)
    {
      return 0;
    }
  }

  v19 = v10 >= a1;
  v20 = v10 - a1;
  if (v19)
  {
    *(v2 + 24) = v20;
    return 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C0BCCF24(uint64_t a1, uint64_t a2, int a3, unsigned __int16 a4)
{
  if (a4 == 6)
  {

    oslog = sub_1C0BEBF88();
    v6 = sub_1C0BEC148();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v29 = v8;
      *v7 = 134218754;
      *(v7 + 4) = a1;
      *(v7 + 12) = 2082;
      v9 = AudioEventCategory.description.getter(a3);
      v11 = sub_1C0BD80C0(v9, v10, &v29);

      *(v7 + 14) = v11;
      *(v7 + 22) = 2082;
      v12 = AudioEventType.description.getter(6u);
      v14 = sub_1C0BD80C0(v12, v13, &v29);

      *(v7 + 24) = v14;
      *(v7 + 32) = 2082;
      v15 = sub_1C0BEC068();
      v17 = sub_1C0BD80C0(v15, v16, &v29);

      *(v7 + 34) = v17;
      _os_log_impl(&dword_1C0BC7000, oslog, v6, "Sending message. { reporterID=%lld, category=%{public}s, type=%{public}s, message=%{public}s }", v7, 0x2Au);
      swift_arrayDestroy();
      v18 = v8;
LABEL_6:
      MEMORY[0x1C68E0970](v18, -1, -1);
      MEMORY[0x1C68E0970](v7, -1, -1);

      return;
    }
  }

  else
  {
    oslog = sub_1C0BEBF88();
    v20 = sub_1C0BEC118();
    if (os_log_type_enabled(oslog, v20))
    {
      v7 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v29 = v21;
      *v7 = 134218498;
      *(v7 + 4) = a1;
      *(v7 + 12) = 2082;
      v22 = AudioEventCategory.description.getter(a3);
      v24 = sub_1C0BD80C0(v22, v23, &v29);

      *(v7 + 14) = v24;
      *(v7 + 22) = 2082;
      v25 = AudioEventType.description.getter(a4);
      v27 = sub_1C0BD80C0(v25, v26, &v29);

      *(v7 + 24) = v27;
      _os_log_impl(&dword_1C0BC7000, oslog, v20, "Sending message. { reporterID=%lld, category=%{public}s, type=%{public}s }", v7, 0x20u);
      swift_arrayDestroy();
      v18 = v21;
      goto LABEL_6;
    }
  }
}

uint64_t sub_1C0BCD240()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1C0BCFBD8(v1);
}

uint64_t sub_1C0BCD268@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  v5 = *(*(active - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](active);
  v8 = (&v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v48 - v9);
  v11 = type metadata accessor for ReporterState(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v48 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v48 - v19);
  sub_1C0BC9310(a1, &v48 - v19, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v26 = *v20;
    v27 = sub_1C0BCD8D4(a1, 3);
    [v27 createSessionWith_];
    swift_beginAccess();
    v28 = *(v26 + 32);

    v29 = sub_1C0BEC038();

    [v27 setWithConfiguration:v29 for:*(v26 + 16)];

    [v27 setWithServiceType:*(v26 + 24) for:*(v26 + 16)];
    sub_1C0BCDBE8(v26);
    [v27 startSessionFor_];
    v30 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
    *a2 = v26;
    sub_1C0BEBF48();
    swift_unknownObjectRelease();
    *&v30[*(type metadata accessor for StartedReporterData(0) + 20)] = 0;
    swift_storeEnumTagMultiPayload();
    return swift_storeEnumTagMultiPayload();
  }

  v48 = a2;
  if (EnumCaseMultiPayload == 1)
  {
    v22 = swift_getEnumCaseMultiPayload();
    v23 = *v20;
    if (v22 == 1)
    {
      sub_1C0BCDBE8(*v20);
      [sub_1C0BCD8D4(a1 3)];
      swift_unknownObjectRelease();
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      v25 = v48 + *(v24 + 48);
      *v48 = v23;
      sub_1C0BEBF48();
      *&v25[*(type metadata accessor for StartedReporterData(0) + 20)] = 0;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }
  }

  else
  {
    v32 = swift_getEnumCaseMultiPayload();
    v33 = *v20;
    if (v32 == 1)
    {
      sub_1C0BCDBE8(*v20);
      [sub_1C0BCD8D4(a1 3)];
      swift_unknownObjectRelease();
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      v35 = v48 + *(v34 + 48);
      *v48 = v33;
      sub_1C0BEBF48();
      *&v35[*(type metadata accessor for StartedReporterData(0) + 20)] = 0;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
  sub_1C0BD78EC(v20 + *(v36 + 48), type metadata accessor for StartedReporterData);
  sub_1C0BC9310(a1, v18, type metadata accessor for ReporterState);
  v37 = sub_1C0BEBF88();
  v38 = sub_1C0BEC118();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 134217984;
    sub_1C0BC9310(v18, v15, type metadata accessor for ReporterState);
    v40 = swift_getEnumCaseMultiPayload();
    v41 = v38;
    if (v40)
    {
      if (v40 == 1)
      {
        sub_1C0BC9028(v15, v10, type metadata accessor for ActiveReporterState);
        v42 = swift_getEnumCaseMultiPayload();
        v43 = *v10;
        if (v42 != 1)
        {
          v44 = *v10;
          v45 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
LABEL_18:
          sub_1C0BD78EC(v45, type metadata accessor for StartedReporterData);
          v43 = v44;
        }
      }

      else
      {
        sub_1C0BC9028(v15, v8, type metadata accessor for ActiveReporterState);
        v46 = swift_getEnumCaseMultiPayload();
        v43 = *v8;
        if (v46 != 1)
        {
          v44 = *v8;
          v45 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
          goto LABEL_18;
        }
      }
    }

    else
    {
      v43 = *v15;
    }

    v47 = *(v43 + 16);

    sub_1C0BD78EC(v18, type metadata accessor for ReporterState);
    *(v39 + 4) = v47;
    _os_log_impl(&dword_1C0BC7000, v37, v41, "Reporter already started. Returning early. { reporterID=%lld }", v39, 0xCu);
    MEMORY[0x1C68E0970](v39, -1, -1);
    goto LABEL_20;
  }

  sub_1C0BD78EC(v18, type metadata accessor for ReporterState);
LABEL_20:

  return sub_1C0BC9310(a1, v48, type metadata accessor for ReporterState);
}

uint64_t sub_1C0BCD8D4(uint64_t a1, char a2)
{
  v5 = type metadata accessor for ReporterState(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C0BC9378(a1, v8, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v11 = *v8;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    type metadata accessor for ActiveReporterState(0);
    v10 = swift_getEnumCaseMultiPayload();
    v11 = *v8;
    if (v10 != 1)
    {
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BCA00C(v8 + *(v12 + 48), type metadata accessor for StartedReporterData);
    }

LABEL_6:
    v13 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_injectedServerProtocol);
    if (v13)
    {
      v14 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_injectedServerProtocol);
      swift_unknownObjectRetain();
LABEL_21:

      return v13;
    }

    if (a2 == 3)
    {
      v16 = *(v11 + 24);

      if (v16 == 11)
      {
        goto LABEL_19;
      }
    }

    else
    {

      if (a2)
      {
        if (a2 != 1)
        {
LABEL_19:
          v21 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy);

          v18 = sub_1C0BE7C4C();
          goto LABEL_20;
        }

        v17 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy);

        v18 = sub_1C0BE7C38();
LABEL_20:
        v13 = v18;
        goto LABEL_21;
      }
    }

    v20 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy);

    v18 = sub_1C0BD190C();
    goto LABEL_20;
  }

  v15 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache;
  if (*(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache))
  {
    v13 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache);
  }

  else
  {
    type metadata accessor for MessageCache();
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C0BDE700();
    v19 = *(v2 + v15);
    *(v2 + v15) = v13;
  }

  sub_1C0BCA00C(v8, type metadata accessor for ReporterState);
  return v13;
}

uint64_t sub_1C0BCDB1C(uint64_t *a1, SEL *a2)
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = [*(v2 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection) *a2];
    sub_1C0BEC1C8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52988, &qword_1C0BED688);
    swift_dynamicCast();
    v5 = v9;
    v7 = *(v2 + v3);
    *(v2 + v3) = v9;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRetain();
  return v5;
}

uint64_t sub_1C0BCDBE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  result = AudioAnalyticsTraceWrapperPost(4612);
  if (*(a1 + 40))
  {
    v5 = *(a1 + 40);

    v6 = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
    sub_1C0BCB874(v6, *(a1 + 24));

    if (*(a1 + 40))
    {
      v7 = *(a1 + 40);

      sub_1C0BCDC98();
    }
  }

  return result;
}

void sub_1C0BCDC98()
{
  if (*(v0 + 48) - 1 >= 2)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v10 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v10, qword_1ED6F78B8);
    v11 = swift_allocObject();
    *(v11 + 16) = 0xD00000000000005ALL;
    *(v11 + 24) = 0x80000001C0BEDF70;
    v12 = swift_allocObject();
    *(v12 + 16) = 0x29287472617473;
    *(v12 + 24) = 0xE700000000000000;
    v13 = swift_allocObject();
    *(v13 + 16) = 31;
    oslog = sub_1C0BEBF88();
    v14 = sub_1C0BEC138();
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v15 = swift_allocObject();
    *(v15 + 16) = 8;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1C0BE0B0C;
    *(v16 + 24) = v11;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C0BE0B08;
    *(v17 + 24) = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = 32;
    v19 = swift_allocObject();
    *(v19 + 16) = 8;
    v20 = swift_allocObject();
    *(v20 + 16) = sub_1C0BE0B0C;
    *(v20 + 24) = v12;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1C0BE0B08;
    *(v21 + 24) = v20;
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    v23 = swift_allocObject();
    *(v23 + 16) = 8;
    v24 = v23;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C0BE0B14;
    *(v25 + 24) = v13;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1C0BE0B2C;
    *(v26 + 24) = v25;
    v62 = v14;
    if (os_log_type_enabled(oslog, v14))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v68 = v28;
      v69 = 0;
      *v27 = 770;
      v61 = v28;
      v70[0] = v27 + 2;
      v66 = sub_1C0BE0B18;
      v67 = v63;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v15;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0AF4;
      v67 = v17;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v18;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v19;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0AF4;
      v67 = v21;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v22;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v24;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

LABEL_17:
      v66 = sub_1C0BE0AF8;
      v67 = v26;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      _os_log_impl(&dword_1C0BC7000, oslog, v62, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v27, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v61, -1, -1);
      MEMORY[0x1C68E0970](v27, -1, -1);

      return;
    }
  }

  else
  {
    v1 = v0;
    v2 = *(v0 + 16);
    if (v2 >> 62)
    {
      if (v2 < 0)
      {
        v42 = *(v0 + 16);
      }

      if (!sub_1C0BEC248())
      {
        goto LABEL_4;
      }
    }

    else if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52948, &qword_1C0BED450);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C0BED2C0;
      *(inited + 32) = 0x705F746E65636572;
      *(inited + 40) = 0xEB000000006B6165;
      strcpy((inited + 48), "kaeptncrpeak_delta");
      *(inited + 67) = 0;
      *(inited + 68) = -369098752;
      *(inited + 72) = *"atldkaep";
      v4 = *(v0 + 24);
      v5 = MEMORY[0x1E69E7CC0];
      v66 = MEMORY[0x1E69E7CC0];
      v6 = *(v4 + 16);
      if (v6)
      {
        type metadata accessor for PCSession();

        v7 = 32;
        do
        {
          v8 = *(v4 + v7);
          swift_allocObject();
          if (sub_1C0BCECC0())
          {
            if (sub_1C0BCEFD8(inited))
            {
              MEMORY[0x1C68E0020]();
              if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v9 = *((v66 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1C0BEC0F8();
              }

              sub_1C0BEC108();
              v5 = v66;
            }

            else
            {
            }
          }

          v7 += 4;
          --v6;
        }

        while (v6);
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52950, &qword_1C0BED458);
      swift_arrayDestroy();
      v29 = *(v1 + 16);
      *(v1 + 16) = v5;

      swift_retain_n();
      v30 = sub_1C0BEBF88();
      v31 = sub_1C0BEC118();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v66 = v33;
        *v32 = 136315394;
        v34 = *(v1 + 24);

        v36 = MEMORY[0x1C68E0030](v35, MEMORY[0x1E69E72F0]);
        v38 = v37;

        v39 = sub_1C0BD80C0(v36, v38, &v66);

        *(v32 + 4) = v39;
        *(v32 + 12) = 2048;
        v40 = *(v1 + 16);
        if (v40 >> 62)
        {
          if (v40 < 0)
          {
            v60 = *(v1 + 16);
          }

          v41 = sub_1C0BEC248();
        }

        else
        {
          v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v32 + 14) = v41;

        _os_log_impl(&dword_1C0BC7000, v30, v31, "Begin measuring performance metrics. { pids=%s, pcSessions=%ld }", v32, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v33);
        MEMORY[0x1C68E0970](v33, -1, -1);
        MEMORY[0x1C68E0970](v32, -1, -1);
      }

      else
      {
      }

      *(v1 + 48) = 0;
      return;
    }

    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v43 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v43, qword_1ED6F78B8);
    v44 = swift_allocObject();
    *(v44 + 16) = 0xD00000000000005ALL;
    *(v44 + 24) = 0x80000001C0BEDF70;
    v45 = swift_allocObject();
    *(v45 + 16) = 0x29287472617473;
    *(v45 + 24) = 0xE700000000000000;
    v46 = swift_allocObject();
    *(v46 + 16) = 32;
    oslog = sub_1C0BEBF88();
    v47 = sub_1C0BEC138();
    v64 = swift_allocObject();
    *(v64 + 16) = 32;
    v48 = swift_allocObject();
    *(v48 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_1C0BE0B0C;
    *(v49 + 24) = v44;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_1C0BE0B08;
    *(v50 + 24) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1C0BE0B0C;
    *(v53 + 24) = v45;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_1C0BE0B08;
    *(v54 + 24) = v53;
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    v56 = swift_allocObject();
    *(v56 + 16) = 8;
    v57 = v56;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_1C0BE0B14;
    *(v58 + 24) = v46;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1C0BE0B2C;
    *(v26 + 24) = v58;
    v62 = v47;
    if (os_log_type_enabled(oslog, v47))
    {
      v27 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v68 = v59;
      v69 = 0;
      *v27 = 770;
      v61 = v59;
      v70[0] = v27 + 2;
      v66 = sub_1C0BE0B18;
      v67 = v64;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v48;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0AF4;
      v67 = v50;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v51;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v52;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0AF4;
      v67 = v54;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v55;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      v66 = sub_1C0BE0B18;
      v67 = v57;
      sub_1C0BDAEA4(&v66, v70, &v69, &v68);

      goto LABEL_17;
    }
  }
}

uint64_t sub_1C0BCEBA0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0BCEBE8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

char *sub_1C0BCECC0()
{
  v1 = v0;
  v21[1] = *MEMORY[0x1E69E9840];
  __errnum = sub_1C0BEBFB8();
  sub_1C0BEBFC8();
  sub_1C0BEBFC8();
  v2 = pc_session_create();
  if (v2 && (v3 = v2, __errnum == sub_1C0BEBFB8()))
  {
    __errnuma = pc_session_set_procpid();
    if (__errnuma == sub_1C0BEBFB8())
    {
      *(v0 + 16) = v3;
      *(v0 + 24) = 0;
LABEL_12:
      v14 = *MEMORY[0x1E69E9840];
      return v1;
    }

    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v15 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v15, qword_1ED6F78D0);
    v5 = sub_1C0BEBF88();
    v6 = sub_1C0BEC118();
    if (!os_log_type_enabled(v5, v6))
    {
LABEL_11:

      type metadata accessor for PCSession();
      swift_deallocPartialClassInstance();
      v1 = 0;
      goto LABEL_12;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136380675;
    swift_beginAccess();
    result = strerror(__errnuma);
    if (result)
    {
      v16 = sub_1C0BEC0B8();
      v18 = sub_1C0BD80C0(v16, v17, v21);

      *(v7 + 4) = v18;
      v13 = "pc_session_set_procpid failed. { ret=%{private}s }.";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v4 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v4, qword_1ED6F78D0);
    v5 = sub_1C0BEBF88();
    v6 = sub_1C0BEC118();
    if (!os_log_type_enabled(v5, v6))
    {
      goto LABEL_11;
    }

    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21[0] = v8;
    *v7 = 136380675;
    swift_beginAccess();
    result = strerror(__errnum);
    if (result)
    {
      v10 = sub_1C0BEC0B8();
      v12 = sub_1C0BD80C0(v10, v11, v21);

      *(v7 + 4) = v12;
      v13 = "pc_session_create failed. { ret=%{private}s }.";
LABEL_10:
      _os_log_impl(&dword_1C0BC7000, v5, v6, v13, v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1C68E0970](v8, -1, -1);
      MEMORY[0x1C68E0970](v7, -1, -1);
      goto LABEL_11;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BCEFD8(uint64_t a1)
{
  if (*(v1 + 24))
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v27 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v27, qword_1ED6F78B8);
    v28 = swift_allocObject();
    *(v28 + 16) = 0xD00000000000005ALL;
    *(v28 + 24) = 0x80000001C0BEDF70;
    v29 = swift_allocObject();
    strcpy((v29 + 16), "begin(with:)");
    *(v29 + 29) = 0;
    *(v29 + 30) = -5120;
    v30 = swift_allocObject();
    *(v30 + 16) = 161;
    osloga = sub_1C0BEBF88();
    v45 = sub_1C0BEC138();
    v48 = swift_allocObject();
    *(v48 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1C0BE0B0C;
    *(v32 + 24) = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1C0BE0B08;
    *(v33 + 24) = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1C0BE0B0C;
    *(v36 + 24) = v29;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1C0BE0B08;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v50 = swift_allocObject();
    *(v50 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1C0BE0B14;
    *(v39 + 24) = v30;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1C0BE0B2C;
    *(v40 + 24) = v39;
    if (os_log_type_enabled(osloga, v45))
    {
      v43 = v34;
      v44 = v35;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *v41 = 770;
      v54 = 0;
      v55 = v41 + 2;
      v51 = sub_1C0BE0B18;
      v52 = v48;
      v53 = v42;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0B18;
      v52 = v31;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0AF4;
      v52 = v33;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0B18;
      v52 = v43;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0B18;
      v52 = v44;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0AF4;
      v52 = v37;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0B18;
      v52 = v38;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0B18;
      v52 = v50;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      v51 = sub_1C0BE0AF8;
      v52 = v40;
      sub_1C0BDAEA4(&v51, &v55, &v54, &v53);

      _os_log_impl(&dword_1C0BC7000, osloga, v45, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v42, -1, -1);
      MEMORY[0x1C68E0970](v41, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v2 = *(a1 + 16);
    v3 = _TtC14AudioAnalytics9PerfCheck;
    if (v2)
    {
      isa = oslog[2].isa;
      v4 = (a1 + 48);
      do
      {
        v6 = *(v4 - 2);
        v5 = *(v4 - 1);
        v7 = *v4;

        LODWORD(v7) = pc_session_add_metric();
        if (v7 == sub_1C0BEBFB8())
        {
        }

        else
        {
          if (v3[32].info != -1)
          {
            swift_once();
          }

          v8 = sub_1C0BEBFA8();
          __swift_project_value_buffer(v8, qword_1ED6F78D0);

          v9 = sub_1C0BEBF88();
          v10 = sub_1C0BEC118();

          if (os_log_type_enabled(v9, v10))
          {
            v11 = swift_slowAlloc();
            v12 = v3;
            v13 = swift_slowAlloc();
            v51 = v13;
            *v11 = 136380675;
            v14 = sub_1C0BD80C0(v6, v5, &v51);

            *(v11 + 4) = v14;
            _os_log_impl(&dword_1C0BC7000, v9, v10, "pc_session_add_metric failed. { metric=%{private}s }", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v13);
            v15 = v13;
            v3 = v12;
            MEMORY[0x1C68E0970](v15, -1, -1);
            MEMORY[0x1C68E0970](v11, -1, -1);
          }

          else
          {
          }
        }

        v4 += 3;
        --v2;
      }

      while (v2);
    }

    v16 = oslog[2].isa;
    v17 = pc_session_begin();
    if (v17 == sub_1C0BEBFB8())
    {
      result = 1;
      LOBYTE(oslog[3].isa) = 1;
      return result;
    }

    if (v3[32].info != -1)
    {
      swift_once();
    }

    v19 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v19, qword_1ED6F78D0);
    v20 = sub_1C0BEBF88();
    v21 = sub_1C0BEC118();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136380675;
      if (!strerror(v17))
      {
        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

      v24 = sub_1C0BEC0B8();
      v26 = sub_1C0BD80C0(v24, v25, &v51);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_1C0BC7000, v20, v21, "pc_session_begin failed. { ret=%{private}s }", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1C68E0970](v23, -1, -1);
      MEMORY[0x1C68E0970](v22, -1, -1);
    }
  }

  return 0;
}

Swift::Void __swiftcall AudioAnalyticsStartReporter(_:)(Swift::Int64 a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BCD238;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BCAF00;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor;
    v6 = _Block_copy(v8);
    v7 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t sub_1C0BCFB8C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0BCFBD8(uint64_t a1)
{
  v2 = v1;
  v28 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for ReporterState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0BEC018();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  LOBYTE(v20) = sub_1C0BEC028();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = sub_1C0BEBF88();
    v24 = sub_1C0BEC118();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v28;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&dword_1C0BC7000, v23, v24, "Starting reporter. { reporterID=%lld }", v27, 0xCu);
      MEMORY[0x1C68E0970](v27, -1, -1);
    }

    sub_1C0BCAF30(v26, 0xD000000000000019, 0x80000001C0BEE610, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_1C0BC9D00(v9, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v9, v14, type metadata accessor for ReporterState);
      sub_1C0BCD268(v14, v7);
      (*(v11 + 56))(v7, 0, 1, v10);
      swift_beginAccess();
      sub_1C0BC958C(v7, v26);
      swift_endAccess();
      return sub_1C0BCA00C(v14, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BCFF90(unsigned __int16 a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v47 - v8;
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(v9 - 8);
  v52 = v9;
  v53 = v10;
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v49 = v17;
  v50 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v47 - v18;
  v20 = sub_1C0BEC018();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  *v24 = v25;
  (*(v21 + 104))(v24, *MEMORY[0x1E69E8020], v20);
  v26 = v25;
  v27 = sub_1C0BEC028();
  result = (*(v21 + 8))(v24, v20);
  if (v27)
  {
    v29 = sub_1C0BEBF88();
    v30 = sub_1C0BEC118();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 134218242;
      *(v31 + 4) = a2;
      *(v31 + 12) = 2082;
      v33 = AudioServiceType.description.getter(a1);
      v48 = v14;
      v35 = sub_1C0BD80C0(v33, v34, &v54);
      v14 = v48;

      *(v31 + 14) = v35;
      _os_log_impl(&dword_1C0BC7000, v29, v30, "Set serviceType. { reporterID=%lld, serviceType=%{public}s }", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x1C68E0970](v32, -1, -1);
      MEMORY[0x1C68E0970](v31, -1, -1);
    }

    v37 = v51;
    v36 = v52;
    sub_1C0BCAF30(a2, 0xD000000000000024, 0x80000001C0BEE4E0, v51);
    v38 = v53;
    if ((*(v53 + 48))(v37, 1, v36) == 1)
    {
      return sub_1C0BC9D00(v37, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v37, v19, type metadata accessor for ReporterState);
      v39 = v50;
      sub_1C0BC9378(v19, v50, type metadata accessor for ReporterState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      sub_1C0BCA00C(v39, type metadata accessor for ReporterState);
      if (EnumCaseMultiPayload)
      {
        sub_1C0BC9378(v19, v14, type metadata accessor for ReporterState);
        v41 = (*(v38 + 80) + 40) & ~*(v38 + 80);
        v42 = a2;
        v43 = swift_allocObject();
        *(v43 + 16) = a1;
        *(v43 + 24) = v3;
        *(v43 + 32) = v42;
        sub_1C0BC9D60(v14, v43 + v41, type metadata accessor for ReporterState);
        sub_1C0BC9378(v19, v14, type metadata accessor for ReporterState);
        v44 = swift_allocObject();
        *(v44 + 16) = a1;
        *(v44 + 24) = v3;
        *(v44 + 32) = v42;
        sub_1C0BC9D60(v14, v44 + v41, type metadata accessor for ReporterState);
        v45 = v3;
        sub_1C0BE1000(v19, sub_1C0BE77A8, v43, sub_1C0BE7914, v44);
        sub_1C0BCA00C(v19, type metadata accessor for ReporterState);
      }

      else
      {
        v46 = sub_1C0BD0874();
        sub_1C0BCA00C(v19, type metadata accessor for ReporterState);
        *(v46 + 24) = a1;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BD050C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 24);
  v3 = *(v0 + 16);
  return sub_1C0BCFF90(v2, v1);
}

uint64_t sub_1C0BD0568(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ReporterState(0);
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
  v41 = a2;
  result = sub_1C0BEC268();
  v13 = result;
  if (*(v10 + 16))
  {
    v39 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v20 = result + 64;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v25 = v22 | (v14 << 6);
      v26 = *(*(v10 + 48) + 8 * v25);
      v27 = *(v40 + 72);
      v28 = *(v10 + 56) + v27 * v25;
      if (v41)
      {
        sub_1C0BC9FA8(v28, v9);
      }

      else
      {
        sub_1C0BEBE44(v28, v9);
      }

      v29 = *(v13 + 40);
      result = sub_1C0BEC2B8();
      v30 = -1 << *(v13 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v20 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v20 + 8 * v32);
          if (v36 != -1)
          {
            v21 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v31) & ~*(v20 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v13 + 48) + 8 * v21) = v26;
      result = sub_1C0BC9FA8(v9, *(v13 + 56) + v27 * v21);
      ++*(v13 + 16);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v24 = v15[v14];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero((v10 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

uint64_t sub_1C0BD0874()
{
  v1 = v0;
  active = type metadata accessor for ActiveReporterState(0);
  v3 = *(*(active - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](active);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v19 - v7);
  v9 = type metadata accessor for ReporterState(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C0BC9378(v1, v12, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return *v12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C0BC9D60(v12, v8, type metadata accessor for ActiveReporterState);
    v14 = swift_getEnumCaseMultiPayload();
    result = *v8;
    if (v14 == 1)
    {
      return result;
    }

    v16 = *v8;
    v17 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
  }

  else
  {
    sub_1C0BC9D60(v12, v6, type metadata accessor for ActiveReporterState);
    v18 = swift_getEnumCaseMultiPayload();
    result = *v6;
    if (v18 == 1)
    {
      return result;
    }

    v16 = *v6;
    v17 = v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
  }

  sub_1C0BCA00C(v17, type metadata accessor for StartedReporterData);
  return v16;
}

char *sub_1C0BD0AB4()
{
  v0 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  result = sub_1C0BD0BE4(0, 0);
  qword_1ED6F78F0 = result;
  return result;
}

uint64_t sub_1C0BD0AF4()
{
  result = sub_1C0BEBFA8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    return swift_updateClassMetadata2();
  }

  return result;
}

char *sub_1C0BD0BE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v77 = a2;
  v78 = a1;
  v87 = *MEMORY[0x1E69E9840];
  v4 = sub_1C0BEC158();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = sub_1C0BEC168();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C0BEC008();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_logger;
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v14 = sub_1C0BEBFA8();
  v15 = __swift_project_value_buffer(v14, qword_1ED6F78B8);
  v16 = *(v14 - 8);
  v17 = *(v16 + 16);
  v75 = v15;
  v76 = v14;
  v73 = (v16 + 16);
  v74 = v17;
  (v17)(&v2[v13]);
  v18 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_halIOCategory;
  *&v2[v18] = sub_1C0BD2604(&unk_1F4021878);
  v19 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue;
  sub_1C0BD24B8(0, &qword_1ED6F7500, 0x1E69E9610);
  sub_1C0BEBFF8();
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8098], v6);
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1C0BD2500();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52970, &unk_1C0BED630);
  sub_1C0BD2558();
  sub_1C0BEC1D8();
  *&v2[v19] = sub_1C0BEC198();
  v20 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_idGenerator;
  type metadata accessor for ReporterIDGenerator();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *&v2[v20] = v21;
  v22 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageRateLimiter;
  type metadata accessor for RateLimiter();
  v23 = swift_allocObject();
  type metadata accessor for TokenBucket();
  v24 = swift_allocObject();
  *(v24 + 16) = 0x2000000020;
  *(v24 + 24) = 0;
  *(v24 + 32) = 0;
  *(v23 + 16) = v24;
  *&v3[v22] = v23;
  v25 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
  *&v3[v25] = sub_1C0BD28B0(MEMORY[0x1E69E7CC0]);
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_messageCache] = 0;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_hwtraceHandle] = 0;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_lastHWTraceHandleQuery] = 0;
  v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled] = 0;
  if (v78)
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
  }

  else
  {
    v27 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v28 = sub_1C0BEC078();
    v26 = [v27 initWithMachServiceName:v28 options:4096];
  }

  v29 = v77;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection] = v26;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_injectedServerProtocol] = v29;
  v30 = type metadata accessor for ServerProxy();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  v33 = swift_allocObject();
  v74(v33 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_logger, v75, v76);
  *(v33 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___unboostedProxy) = 0;
  *(v33 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___boostedProxy) = 0;
  *(v33 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy____lazy_storage___syncProxy) = 0;
  *(v33 + OBJC_IVAR____TtC14AudioAnalytics11ServerProxy_xpcConnection) = v26;
  *&v3[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serverProxy] = v33;
  v34 = type metadata accessor for ServerClient(0);
  v86.receiver = v3;
  v86.super_class = v34;
  v35 = v26;
  swift_unknownObjectRetain();
  v36 = objc_msgSendSuper2(&v86, sel_init);
  v37 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection;
  v38 = *&v36[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_xpcConnection];
  v39 = objc_opt_self();
  v40 = v36;
  v41 = v38;
  v42 = [v39 interfaceWithProtocol_];
  [v41 setRemoteObjectInterface_];

  v43 = *&v36[v37];
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = sub_1C0BE7A9C;
  v85 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1C0BE31A0;
  v83 = &block_descriptor_174;
  v45 = _Block_copy(&aBlock);
  v46 = v43;

  [v46 setInterruptionHandler_];
  _Block_release(v45);

  v74 = v37;
  v75 = v36;
  v47 = *&v36[v37];
  v48 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = sub_1C0BE7AA4;
  v85 = v48;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v76 = &v82;
  v82 = sub_1C0BE31A0;
  v83 = &block_descriptor_178;
  v49 = _Block_copy(&aBlock);
  v50 = v47;

  [v50 setInvalidationHandler_];
  _Block_release(v49);

  v51 = swift_allocObject();
  *(v51 + 16) = -1;
  v52 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue;
  v53 = *&v40[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v54 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v84 = sub_1C0BE7AAC;
  v85 = v54;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1C0BE3780;
  v83 = &block_descriptor_185;
  v55 = _Block_copy(&aBlock);
  v56 = v40;
  v57 = v53;

  v58 = sub_1C0BEC088();
  v59 = notify_register_dispatch((v58 + 32), (v51 + 16), v57, v55);

  _Block_release(v55);

  v73 = v40;
  v60 = *&v40[v52];
  v61 = swift_allocObject();
  *(v61 + 16) = v59;
  *(v61 + 24) = v56;
  *(v61 + 32) = v51;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1C0BE7AB4;
  *(v62 + 24) = v61;
  v84 = sub_1C0BD3D50;
  v85 = v62;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1C0BCA800;
  v83 = &block_descriptor_195;
  v63 = _Block_copy(&aBlock);
  v64 = v60;

  dispatch_sync(v64, v63);

  _Block_release(v63);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if (v63)
  {
    __break(1u);
  }

  out_token = -1;
  v65 = *&v73[v52];
  v66 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v67 = v65;

  v84 = sub_1C0BE7AC0;
  v85 = v66;
  aBlock = MEMORY[0x1E69E9820];
  v81 = 1107296256;
  v82 = sub_1C0BE3780;
  v83 = &block_descriptor_199;
  v68 = _Block_copy(&aBlock);

  v69 = sub_1C0BEC088();
  notify_register_dispatch((v69 + 32), &out_token, v67, v68);

  _Block_release(v68);

  v70 = *(v74 + v75);
  [v70 resume];

  swift_unknownObjectRelease();
  v71 = *MEMORY[0x1E69E9840];
  return v56;
}

uint64_t sub_1C0BD1644()
{
  MEMORY[0x1C68E09C0](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD168C()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0BD16E4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1C0BEBFA8();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_1C0BEBF98();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t AudioAnalyticsGetAudioServiceType(_:)(uint64_t a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  if (qword_1ED6F78A0 == a1)
  {
    return 0xFFFFLL;
  }

  if (qword_1ED6F77D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v2 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v6 = qword_1ED6F78F0;
  MEMORY[0x1EEE9AC00](a1);
  type metadata accessor for AudioServiceType(0);
  v3 = v6;
  sub_1C0BEC178();

  return v7;
}

uint64_t sub_1C0BD1920(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReporterState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0BD1984()
{
  result = sub_1C0BD1A4C();
  if (v1)
  {
    v2 = v1;
    if (result == 0x64786D6F69647561 && v1 == 0xE800000000000000 || (v3 = result, (sub_1C0BEC288() & 1) != 0) || v3 == 0x726573616964656DLL && v2 == 0xEC00000064726576)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1C0BEC288();
    }
  }

  else
  {
    v4 = 0;
  }

  byte_1ED6F78A9 = v4 & 1;
  return result;
}

uint64_t sub_1C0BD1A4C()
{
  v9 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C0BED0E0;
  *(v1 + 32) = 0xE00000001;
  v2 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 44) = v0;
  bzero(v8, 0x288uLL);
  v7 = 648;
  v3 = sysctl(v2, 4u, v8, &v7, 0, 0);
  if (v3 == sub_1C0BEBFB8())
  {
    v4 = sub_1C0BEC0B8();

    result = v4;
  }

  else
  {

    result = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0BD1BAC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1C0BD1BF8@<X0>(uint64_t a1@<X1>, __int16 *a2@<X8>)
{
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v29 - v5;
  v7 = type metadata accessor for ReporterState(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = sub_1C0BEBF88();
  v16 = sub_1C0BEC118();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v29 = v12;
    v18 = a2;
    v19 = v17;
    *v17 = 134217984;
    *(v17 + 4) = v30;
    _os_log_impl(&dword_1C0BC7000, v15, v16, "Get serviceType. { reporterID=%lld }", v17, 0xCu);
    v20 = v19;
    a2 = v18;
    v12 = v29;
    MEMORY[0x1C68E0970](v20, -1, -1);
  }

  sub_1C0BCAF30(v30, 0xD00000000000001BLL, 0x80000001C0BEE6F0, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1C0BC9D00(v6, &qword_1EBE52960, &unk_1C0BED5F0);
    v22 = -1;
  }

  else
  {
    sub_1C0BC9D60(v6, v14, type metadata accessor for ReporterState);
    sub_1C0BC9D60(v14, v12, type metadata accessor for ReporterState);
    if (swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for ActiveReporterState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v24 = *v12;
      if (EnumCaseMultiPayload != 1)
      {
        v26 = a2;
        v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
        v22 = *(v24 + 24);

        v28 = &v12[v27];
        a2 = v26;
        result = sub_1C0BCA00C(v28, type metadata accessor for StartedReporterData);
        goto LABEL_11;
      }

      v22 = *(v24 + 24);
      v25 = *v12;
    }

    else
    {
      v22 = *(*v12 + 24);
    }
  }

LABEL_11:
  *a2 = v22;
  return result;
}

uint64_t sub_1C0BD1F28@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{

  v8 = sub_1C0BEBF88();
  v9 = sub_1C0BEC118();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v15 = v11;
    *v10 = 136380931;
    *(v10 + 4) = sub_1C0BD80C0(a1, a2, &v15);
    *(v10 + 12) = 2048;
    *(v10 + 14) = a3;
    _os_log_impl(&dword_1C0BC7000, v8, v9, "ReporterID not created by client. Returning early. { function=%{private}s, reporterID=%lld }", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1C68E0970](v11, -1, -1);
    MEMORY[0x1C68E0970](v10, -1, -1);
  }

  v12 = type metadata accessor for ReporterState(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a4, 1, 1, v12);
}

void *sub_1C0BD20A0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
  v2 = *v0;
  v3 = sub_1C0BEC258();
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
        sub_1C0BCB304(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C0BCA658(v25, (*(v4 + 56) + v22));
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

uint64_t sub_1C0BD2244@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  active = type metadata accessor for ActiveReporterState(0);
  v7 = *(*(active - 8) + 64);
  MEMORY[0x1EEE9AC00](active);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for ReporterData();
  v10 = swift_allocObject();
  *(v10 + 24) = -1;
  *(v10 + 32) = sub_1C0BC8EF8(MEMORY[0x1E69E7CC0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C0BED230;
  *(v11 + 32) = getpid();
  v12 = type metadata accessor for PerfCheck();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v10 + 40) = sub_1C0BC9100(v11);
  *(v10 + 16) = a1;
  *v9 = v10;
  swift_storeEnumTagMultiPayload();
  LODWORD(a2) = *(a2 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled);
  sub_1C0BC9D60(v9, a3, type metadata accessor for ActiveReporterState);
  type metadata accessor for ReporterState(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1C0BD23C4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1C0BD2404()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
  v5 = sub_1C0BEBFA8();
  (*(*(v5 - 8) + 8))(&v0[v4], v5);
  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v6, v7);
}

uint64_t sub_1C0BD24B8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_1C0BD2500()
{
  result = qword_1ED6F7508;
  if (!qword_1ED6F7508)
  {
    sub_1C0BEC158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7508);
  }

  return result;
}

unint64_t sub_1C0BD2558()
{
  result = qword_1ED6F7510;
  if (!qword_1ED6F7510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE52970, &unk_1C0BED630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7510);
  }

  return result;
}

uint64_t sub_1C0BD2604(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1C0BD2764(0, v1, 0);
    v3 = v21;
    v4 = (a1 + 32);
    v5 = v21[1].u64[0];
    do
    {
      v7 = *v4++;
      v6 = v7;
      v22 = v3;
      v8 = v3[1].u64[1];
      v9 = v5 + 1;
      if (v5 >= v8 >> 1)
      {
        sub_1C0BD2764((v8 > 1), v5 + 1, 1);
        v3 = v22;
      }

      v3[1].i64[0] = v9;
      v3[2].i32[v5++] = v6;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
    v9 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v9)
    {
      v11 = 0;
      goto LABEL_15;
    }
  }

  if (v9 <= 7)
  {
    v10 = 0;
    LODWORD(v11) = 0;
LABEL_13:
    v18 = v9 - v10;
    v19 = 4 * v10 + 32;
    do
    {
      v11 = *(v3->i32 + v19) | v11;
      v19 += 4;
      --v18;
    }

    while (v18);
    goto LABEL_15;
  }

  v10 = v9 & 0xFFFFFFFFFFFFFFF8;
  v12 = v3 + 3;
  v13 = 0uLL;
  v14 = v9 & 0xFFFFFFFFFFFFFFF8;
  v15 = 0uLL;
  do
  {
    v13 = vorrq_s8(v12[-1], v13);
    v15 = vorrq_s8(*v12, v15);
    v12 += 2;
    v14 -= 8;
  }

  while (v14);
  v16 = vorrq_s8(v15, v13);
  v17 = vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
  v11 = (v17.i32[0] | v17.i32[1]);
  if (v9 != v10)
  {
    goto LABEL_13;
  }

LABEL_15:

  return v11;
}

char *sub_1C0BD2764(char *a1, int64_t a2, char a3)
{
  result = sub_1C0BD2784(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C0BD2784(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52980, &qword_1C0BED650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

unint64_t sub_1C0BD28B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529E8, &qword_1C0BED828);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52958, &qword_1C0BED800);
    v8 = sub_1C0BEC278();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1C0BCCD54(v10, v6, &qword_1EBE529E8, &qword_1C0BED828);
      v12 = *v6;
      result = sub_1C0BC97E0(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for ReporterState(0);
      result = sub_1C0BC9FA8(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BD2A70()
{
  type metadata accessor for ReporterData();
  result = type metadata accessor for ActiveReporterState(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C0BD2AD8()
{
  sub_1C0BD2B40();
  if (v0 <= 0x3F)
  {
    type metadata accessor for ReporterData();
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1C0BD2B40()
{
  if (!qword_1ED6F7418)
  {
    type metadata accessor for ReporterData();
    type metadata accessor for StartedReporterData(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ED6F7418);
    }
  }
}

uint64_t sub_1C0BD2BAC()
{
  result = sub_1C0BEBF68();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for ServerProxy()
{
  result = qword_1ED6F7450;
  if (!qword_1ED6F7450)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C0BD2C6C()
{
  result = sub_1C0BEBFA8();
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

BOOL sub_1C0BD2D20(int a1)
{
  v6[7] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  notify_get_state(a1, v6);
  v1 = sub_1C0BEBF88();
  v2 = sub_1C0BEC118();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 134217984;
    swift_beginAccess();
    *(v3 + 4) = v6[0];
    _os_log_impl(&dword_1C0BC7000, v1, v2, "Game mode state retrieved. { value=%llu }", v3, 0xCu);
    MEMORY[0x1C68E0970](v3, -1, -1);
  }

  swift_beginAccess();
  result = v6[0] != 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1C0BD2E40(char a1)
{
  if (v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled] != (a1 & 1))
  {
    v2 = v1;
    v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled] = a1 & 1;
    v4 = sub_1C0BEBF88();
    v5 = sub_1C0BEC118();
    v6 = os_log_type_enabled(v4, v5);
    if (a1)
    {
      if (v6)
      {
        v7 = swift_slowAlloc();
        *v7 = 0;
        _os_log_impl(&dword_1C0BC7000, v4, v5, "Entering caching mode.", v7, 2u);
        MEMORY[0x1C68E0970](v7, -1, -1);
      }

      v8 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
      swift_beginAccess();
      v9 = *&v2[v8];
      v10 = v2;

      v12 = sub_1C0BE7140(v11, v10);

      v13 = *&v2[v8];
      *&v2[v8] = v12;
    }

    else
    {
      if (v6)
      {
        v14 = swift_slowAlloc();
        *v14 = 0;
        _os_log_impl(&dword_1C0BC7000, v4, v5, "Leaving caching mode.", v14, 2u);
        MEMORY[0x1C68E0970](v14, -1, -1);
      }

      v15 = OBJC_IVAR____TtC14AudioAnalytics12ServerClient_clientReporterStates;
      swift_beginAccess();
      v16 = *&v2[v15];
      v17 = v2;

      v19 = sub_1C0BE745C(v18, v17);

      v20 = *&v2[v15];
      *&v2[v15] = v19;

      sub_1C0BE5700();
    }
  }
}

uint64_t sub_1C0BD3020()
{
  result = sub_1C0BEBFA8();
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

void sub_1C0BD30F8()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    internalBuild = MobileGestalt_get_internalBuild();

    if (internalBuild)
    {
      v5[3] = &type metadata for AudioAnalytics;
      v5[4] = sub_1C0BD3184();
      v3 = sub_1C0BEBF78();
      __swift_destroy_boxed_opaque_existential_0(v5);
      v4 = v3 ^ 1;
    }

    else
    {
      v4 = 0;
    }

    byte_1ED6F78E8 = v4 & 1;
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_1C0BD3184()
{
  result = qword_1ED6F7528;
  if (!qword_1ED6F7528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6F7528);
  }

  return result;
}

uint64_t sub_1C0BD3420()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

BOOL sub_1C0BD3500(uint64_t a1, unint64_t a2)
{
  v5 = [v2 reporterID];
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED6F78A0;
  if (v5 == qword_1ED6F78A0)
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v7 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v7, qword_1ED6F78B8);

    v8 = v2;
    v9 = sub_1C0BEBF88();
    v10 = sub_1C0BEC128();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v14 = v12;
      *v11 = 136380931;
      *(v11 + 4) = sub_1C0BD80C0(a1, a2, &v14);
      *(v11 + 12) = 2048;
      *(v11 + 14) = [v8 reporterID];

      _os_log_impl(&dword_1C0BC7000, v9, v10, "CAReporterID is invalid. Returning early. { function=%{private}s, reporterID=%lld }", v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x1C68E0970](v12, -1, -1);
      MEMORY[0x1C68E0970](v11, -1, -1);
    }

    else
    {
    }
  }

  return v5 != v6;
}

unint64_t AudioAnalyticsReporter.sendMessage(_:category:type:)(uint64_t a1, int a2, __int16 a3)
{
  result = sub_1C0BD3500(0xD00000000000001DLL, 0x80000001C0BEDB10);
  if (result)
  {
    v8 = [v3 reporterID];
    result = sub_1C0BD39A8(a1);
    if (result || (result = sub_1C0BDCEB4(0xD00000000000001DLL, 0x80000001C0BEDB10, v8)) != 0)
    {
      v9 = result;
      if (qword_1ED6F77D8 != -1)
      {
        swift_once();
      }

      v10 = qword_1ED6F78F0;
      v11 = [v3 reporterID];
      v12 = *&v10[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
      v13 = swift_allocObject();
      *(v13 + 16) = v10;
      *(v13 + 24) = v11;
      *(v13 + 32) = v9;
      *(v13 + 40) = a2;
      *(v13 + 44) = a3;
      v14 = swift_allocObject();
      *(v14 + 16) = sub_1C0BCC094;
      *(v14 + 24) = v13;
      v17[4] = sub_1C0BD3D50;
      v17[5] = v14;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 1107296256;
      v17[2] = sub_1C0BCA800;
      v17[3] = &block_descriptor_54;
      v15 = _Block_copy(v17);
      v16 = v10;

      dispatch_sync(v12, v15);

      _Block_release(v15);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1C0BD3910()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 46, 7);
}

unint64_t sub_1C0BD39A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
        v14 = __clz(__rbit64(v5)) | (v13 << 6);
        sub_1C0BD3C64(*(a1 + 48) + 40 * v14, v29);
        sub_1C0BCB304(*(a1 + 56) + 32 * v14, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[0] = v29[0];
        v26[1] = v29[1];
        sub_1C0BD3C64(v26, v21);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1C0BCB304(v27 + 8, v22);
        sub_1C0BD3CE8(v26);
        v23 = v20;
        sub_1C0BCA658(v22, v24);
        v15 = v23;
        sub_1C0BCA658(v24, v25);
        sub_1C0BCA658(v25, &v23);
        result = sub_1C0BCA668(v15, *(&v15 + 1));
        if (v16)
        {
          v9 = v2[6] + 16 * result;
          v10 = *(v9 + 8);
          *v9 = v15;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1C0BCA658(&v23, v12);
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
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v15;
          result = sub_1C0BCA658(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_24;
          }

          v2[2] = v19;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }

      sub_1C0BD3CE8(v26);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1C0BD3CE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528C8, &unk_1C0BED090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C0BD3F80(char *a1)
{
  v2 = v1;
  v29 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v29 - v8;
  v10 = type metadata accessor for ReporterState(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C0BEC018();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *&v2[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  LOBYTE(v20) = sub_1C0BEC028();
  result = (*(v16 + 8))(v19, v15);
  if (v20)
  {
    v23 = sub_1C0BEBF88();
    v24 = sub_1C0BEC118();
    v25 = os_log_type_enabled(v23, v24);
    v26 = v29;
    if (v25)
    {
      v27 = swift_slowAlloc();
      *v27 = 134217984;
      *(v27 + 4) = v26;
      _os_log_impl(&dword_1C0BC7000, v23, v24, "Stopping reporter. { reporterID=%lld }", v27, 0xCu);
      MEMORY[0x1C68E0970](v27, -1, -1);
    }

    sub_1C0BCAF30(v26, 0xD000000000000018, 0x80000001C0BEE5D0, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      return sub_1C0BC9D00(v9, &qword_1EBE52960, &unk_1C0BED5F0);
    }

    else
    {
      sub_1C0BC9D60(v9, v14, type metadata accessor for ReporterState);
      v28 = v2;
      sub_1C0BD4394(v14, v28, v28, v26, v7);
      (*(v11 + 56))(v7, 0, 1, v10);
      swift_beginAccess();
      sub_1C0BC958C(v7, v26);
      swift_endAccess();
      return sub_1C0BCA00C(v14, type metadata accessor for ReporterState);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0BD4344()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  return sub_1C0BD3F80(v1);
}

void sub_1C0BD4394(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t *a5@<X8>)
{
  v54 = a4;
  v57 = a5;
  v58 = a3;
  v56 = a2;
  v6 = type metadata accessor for StartedReporterData(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v54 - v11;
  active = type metadata accessor for ActiveReporterState(0);
  v13 = *(*(active - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](active);
  v16 = (&v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v54 - v17);
  v19 = type metadata accessor for ReporterState(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = (&v54 - v25);
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v54 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v54 - v30);
  v59 = a1;
  sub_1C0BC9310(a1, &v54 - v30, type metadata accessor for ReporterState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v33 = type metadata accessor for ReporterState;
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = swift_getEnumCaseMultiPayload();
    v33 = type metadata accessor for ActiveReporterState;
    if (v34 != 1)
    {
      v35 = *v31;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BC9028(v31 + *(v36 + 48), v12, type metadata accessor for StartedReporterData);
      v37 = v58;
      sub_1C0BD4A88(v35, v12, v58, v54);
      [sub_1C0BCD8D4(v59 3)];
      swift_unknownObjectRelease();
      sub_1C0BD78EC(v12, type metadata accessor for StartedReporterData);
      *v57 = v35;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      goto LABEL_20;
    }

LABEL_6:
    v39 = v59;
    sub_1C0BD78EC(v31, v33);
    sub_1C0BC9310(v39, v29, type metadata accessor for ReporterState);
    v40 = sub_1C0BEBF88();
    v41 = sub_1C0BEC128();
    if (!os_log_type_enabled(v40, v41))
    {
      sub_1C0BD78EC(v29, type metadata accessor for ReporterState);
      v48 = v57;
      v37 = v58;
LABEL_19:

      sub_1C0BC9310(v39, v48, type metadata accessor for ReporterState);
      goto LABEL_20;
    }

    v42 = swift_slowAlloc();
    *v42 = 134217984;
    sub_1C0BC9310(v29, v26, type metadata accessor for ReporterState);
    v43 = swift_getEnumCaseMultiPayload();
    if (v43)
    {
      if (v43 == 1)
      {
        sub_1C0BC9028(v26, v18, type metadata accessor for ActiveReporterState);
        v44 = swift_getEnumCaseMultiPayload();
        v45 = *v18;
        if (v44 != 1)
        {
          v46 = *v18;
          v47 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
LABEL_17:
          sub_1C0BD78EC(v47, type metadata accessor for StartedReporterData);
          v45 = v46;
        }
      }

      else
      {
        sub_1C0BC9028(v26, v16, type metadata accessor for ActiveReporterState);
        v52 = swift_getEnumCaseMultiPayload();
        v45 = *v16;
        if (v52 != 1)
        {
          v46 = *v16;
          v47 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
          goto LABEL_17;
        }
      }
    }

    else
    {
      v45 = *v26;
    }

    v48 = v57;
    v37 = v58;
    v53 = *(v45 + 16);

    sub_1C0BD78EC(v29, type metadata accessor for ReporterState);
    *(v42 + 4) = v53;
    _os_log_impl(&dword_1C0BC7000, v40, v41, "Reporter disconnected or already stopped. { func=stop, reporterID=%lld }", v42, 0xCu);
    MEMORY[0x1C68E0970](v42, -1, -1);
    v39 = v59;
    goto LABEL_19;
  }

  v38 = swift_getEnumCaseMultiPayload();
  v33 = type metadata accessor for ActiveReporterState;
  if (v38 == 1)
  {
    goto LABEL_6;
  }

  v49 = *v31;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
  sub_1C0BC9028(v31 + *(v50 + 48), v10, type metadata accessor for StartedReporterData);
  v37 = v58;
  sub_1C0BD4A88(v49, v10, v58, v54);
  v51 = v56;
  [sub_1C0BCD8D4(v59 3)];
  swift_unknownObjectRelease();
  if (*(v51 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient__isCachingEnabled) == 1)
  {
    sub_1C0BD78EC(v10, type metadata accessor for StartedReporterData);
    *v57 = v49;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    *v23 = v49;
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();

    sub_1C0BE0B7C(v23, v57);
    sub_1C0BD78EC(v23, type metadata accessor for ReporterState);
    sub_1C0BE5700();

    sub_1C0BD78EC(v10, type metadata accessor for StartedReporterData);
  }

LABEL_20:
}

uint64_t sub_1C0BD4A88(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  AudioAnalyticsTraceWrapperPost(4616);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C0BED230;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C0BEE5F0;
  sub_1C0BEBF28();
  *(inited + 72) = MEMORY[0x1E69E63B0];
  *(inited + 48) = -v10;
  v11 = sub_1C0BC8EF8(inited);
  swift_setDeallocating();
  sub_1C0BC9D00(inited + 32, &qword_1EBE52938, &qword_1C0BED7D0);
  v12 = *(a2 + *(type metadata accessor for StartedReporterData(0) + 20));
  if (v12)
  {
    v26 = MEMORY[0x1E69E7668];
    LODWORD(v25[0]) = v12;
    sub_1C0BCA658(v25, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1C0BCB360(v24, 0xD000000000000014, 0x80000001C0BEE1D0, isUniquelyReferenced_nonNull_native);
  }

  sub_1C0BCC0E4(a4, 0, v11, 1u, 0, 0);

  if (*(a1 + 40))
  {
    v15 = *(a1 + 40);

    v16 = sub_1C0BD4D64();

    v17 = sub_1C0BEBF88();
    v18 = sub_1C0BEC118();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v25[0] = v20;
      *v19 = 134218243;
      *(v19 + 4) = a4;
      *(v19 + 12) = 2081;
      v21 = sub_1C0BEC068();
      v23 = sub_1C0BD80C0(v21, v22, v25);

      *(v19 + 14) = v23;
      _os_log_impl(&dword_1C0BC7000, v17, v18, "Gathered performance metrics. { reporterID=%lld, perfMetrics=%{private}s }", v19, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v20);
      MEMORY[0x1C68E0970](v20, -1, -1);
      MEMORY[0x1C68E0970](v19, -1, -1);
    }

    sub_1C0BCC0E4(a4, 0, v16, 0xDu, 0, 0);
  }

  return result;
}

unint64_t sub_1C0BD4D64()
{
  if (*(v0 + 48))
  {
LABEL_36:
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v27 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v27, qword_1ED6F78B8);
    v28 = swift_allocObject();
    *(v28 + 16) = 0xD00000000000005ALL;
    *(v28 + 24) = 0x80000001C0BEDF70;
    v29 = swift_allocObject();
    *(v29 + 16) = 0xD000000000000022;
    *(v29 + 24) = 0x80000001C0BEDF40;
    v30 = swift_allocObject();
    *(v30 + 16) = 52;
    oslog = sub_1C0BEBF88();
    v48 = sub_1C0BEC138();
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v31 = swift_allocObject();
    *(v31 + 16) = 8;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_1C0BE0ABC;
    *(v32 + 24) = v28;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_1C0BE0AD4;
    *(v33 + 24) = v32;
    v34 = swift_allocObject();
    *(v34 + 16) = 32;
    v35 = swift_allocObject();
    *(v35 + 16) = 8;
    v36 = swift_allocObject();
    *(v36 + 16) = sub_1C0BE0ABC;
    *(v36 + 24) = v29;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_1C0BE0B08;
    *(v37 + 24) = v36;
    v38 = swift_allocObject();
    *(v38 + 16) = 0;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v39 = swift_allocObject();
    *(v39 + 16) = sub_1C0BE0AC4;
    *(v39 + 24) = v30;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_1C0BE0AE4;
    *(v40 + 24) = v39;
    if (os_log_type_enabled(oslog, v48))
    {
      v46 = v34;
      v47 = v35;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v54 = v42;
      v55 = 0;
      *v41 = 770;
      v56 = v41 + 2;
      v52 = sub_1C0BE0ACC;
      v53 = v50;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0B18;
      v53 = v31;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0ADC;
      v53 = v33;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0B18;
      v53 = v46;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0B18;
      v53 = v47;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0AF4;
      v53 = v37;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0B18;
      v53 = v38;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0B18;
      v53 = v51;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      v52 = sub_1C0BE0AEC;
      v53 = v40;
      sub_1C0BDAEA4(&v52, &v56, &v55, &v54);

      _os_log_impl(&dword_1C0BC7000, oslog, v48, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v41, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v42, -1, -1);
      MEMORY[0x1C68E0970](v41, -1, -1);
    }

    else
    {
    }

    v44 = MEMORY[0x1E69E7CC0];

    return sub_1C0BC8EF8(v44);
  }

  v1 = v0;
  swift_retain_n();
  v2 = sub_1C0BEBF88();
  v3 = sub_1C0BEC118();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v52 = v5;
    *v4 = 136315394;
    v6 = *(v1 + 24);

    v8 = MEMORY[0x1C68E0030](v7, MEMORY[0x1E69E72F0]);
    v10 = v9;

    v11 = sub_1C0BD80C0(v8, v10, &v52);

    *(v4 + 4) = v11;
    *(v4 + 12) = 2048;
    v12 = *(v1 + 16);
    if (v12 >> 62)
    {
      if (v12 < 0)
      {
        v45 = *(v1 + 16);
      }

      v13 = sub_1C0BEC248();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v4 + 14) = v13;

    _os_log_impl(&dword_1C0BC7000, v2, v3, "Collecting performance metrics. { pids=%s, pcSessions=%ld }", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x1C68E0970](v5, -1, -1);
    MEMORY[0x1C68E0970](v4, -1, -1);
  }

  else
  {
  }

  v14 = *(v1 + 16);
  if (v14 >> 62)
  {
    if (v14 < 0)
    {
      v43 = *(v1 + 16);
    }

    v15 = sub_1C0BEC248();
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v15)
  {
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1C68E0170](v16, v14);
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_18:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
          goto LABEL_36;
        }

        v17 = *(v14 + 8 * v16 + 32);

        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_18;
        }
      }

      sub_1C0BD57A0();

      ++v16;
    }

    while (v18 != v15);
  }

  v19 = *(v1 + 16);
  v52 = MEMORY[0x1E69E7CC8];
  if (v19 >> 62)
  {
    v20 = sub_1C0BEC248();
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
    v24 = MEMORY[0x1E69E7CC8];
    goto LABEL_33;
  }

  v21 = 0;
  while ((v19 & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1C68E0170](v21, v19);
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      goto LABEL_30;
    }

LABEL_26:
    v56 = v22;
    sub_1C0BD5FBC(&v52, &v56, v1);

    ++v21;
    if (v23 == v20)
    {
      goto LABEL_31;
    }
  }

  if (v21 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_35;
  }

  v22 = *(v19 + 8 * v21 + 32);

  v23 = v21 + 1;
  if (!__OFADD__(v21, 1))
  {
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  v24 = v52;
LABEL_33:

  v25 = *(v1 + 16);
  *(v1 + 16) = MEMORY[0x1E69E7CC0];

  *(v1 + 48) = 1;
  return v24;
}

void sub_1C0BD57A0()
{
  if (*(v0 + 24) == 1)
  {
    v1 = v0;
    v2 = *(v0 + 16);
    v3 = pc_session_end();
    if (v3 != sub_1C0BEBFB8())
    {
      if (qword_1ED6F7520 != -1)
      {
        swift_once();
      }

      v4 = sub_1C0BEBFA8();
      __swift_project_value_buffer(v4, qword_1ED6F78D0);
      v5 = sub_1C0BEBF88();
      v6 = sub_1C0BEC118();
      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v35 = v8;
        *v7 = 136380675;
        if (!strerror(v3))
        {
          __break(1u);

          while (1)
          {

            __break(1u);
          }
        }

        v9 = sub_1C0BEC0B8();
        v11 = sub_1C0BD80C0(v9, v10, &v35);

        *(v7 + 4) = v11;
        _os_log_impl(&dword_1C0BC7000, v5, v6, "pc_session_end failed. { ret=%{private}s }", v7, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v8);
        MEMORY[0x1C68E0970](v8, -1, -1);
        MEMORY[0x1C68E0970](v7, -1, -1);
      }
    }

    *(v1 + 24) = 2;
  }

  else
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v12 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v12, qword_1ED6F78B8);
    v13 = swift_allocObject();
    *(v13 + 16) = 0xD00000000000005ALL;
    *(v13 + 24) = 0x80000001C0BEDF70;
    v14 = swift_allocObject();
    *(v14 + 16) = 0x2928646E65;
    *(v14 + 24) = 0xE500000000000000;
    v15 = swift_allocObject();
    *(v15 + 16) = 181;
    oslog = sub_1C0BEBF88();
    v16 = sub_1C0BEC138();
    v33 = swift_allocObject();
    *(v33 + 16) = 32;
    v17 = swift_allocObject();
    *(v17 + 16) = 8;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_1C0BE0B0C;
    *(v18 + 24) = v13;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1C0BE0B08;
    *(v19 + 24) = v18;
    v20 = swift_allocObject();
    *(v20 + 16) = 32;
    v21 = swift_allocObject();
    *(v21 + 16) = 8;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1C0BE0B0C;
    *(v22 + 24) = v14;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1C0BE0B08;
    *(v23 + 24) = v22;
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    v25 = swift_allocObject();
    *(v25 + 16) = 8;
    v26 = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1C0BE0B14;
    *(v27 + 24) = v15;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1C0BE0B2C;
    *(v28 + 24) = v27;
    v32 = v16;
    if (os_log_type_enabled(oslog, v16))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37 = v30;
      v38 = 0;
      *v29 = 770;
      v31 = v30;
      v39 = v29 + 2;
      v35 = sub_1C0BE0B18;
      v36 = v33;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0B18;
      v36 = v17;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0AF4;
      v36 = v19;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0B18;
      v36 = v20;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0B18;
      v36 = v21;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0AF4;
      v36 = v23;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0B18;
      v36 = v24;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0B18;
      v36 = v26;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      v35 = sub_1C0BE0AF8;
      v36 = v28;
      sub_1C0BDAEA4(&v35, &v39, &v38, &v37);

      _os_log_impl(&dword_1C0BC7000, oslog, v32, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v31, -1, -1);
      MEMORY[0x1C68E0970](v29, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1C0BD5FBC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v23[22] = a1;
  v4 = 0x6E776F6E6B6E75;
  v5 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52930, &unk_1C0BED610);
  inited = swift_initStackObject();
  v7 = inited;
  *(inited + 16) = xmmword_1C0BED2C0;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x80000001C0BEDF20;
  v8 = *(a3 + 32);
  v9 = *(a3 + 40);
  v10 = MEMORY[0x1E69E6158];
  if (!v9)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  v11 = 0xE700000000000000;
  if (v9)
  {
    v12 = *(a3 + 40);
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  *(inited + 48) = v8;
  *(inited + 56) = v12;
  *(inited + 72) = v10;
  *(inited + 80) = 0x5465636976726573;
  *(inited + 88) = 0xEB00000000657079;
  v13 = AudioServiceType.description.getter(*(a3 + 50));
  v7[15] = v10;
  v7[12] = v13;
  v7[13] = v14;

  v15 = sub_1C0BC8EF8(v7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52938, &qword_1C0BED7D0);
  swift_arrayDestroy();
  v16 = sub_1C0BD63F4();
  v17 = sub_1C0BD73D0(v16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v23[0] = v15;
  sub_1C0BC9890(v17, sub_1C0BCB820, 0, isUniquelyReferenced_nonNull_native, v23);

  v19 = v23[0];
  v20 = *(v5 + 16);
  if (pc_session_get_procname())
  {
    v4 = sub_1C0BEC0B8();
    v11 = v21;
  }

  v23[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52940, &qword_1C0BED448);
  v23[0] = v19;
  return sub_1C0BD7618(v23, v4, v11);
}

unint64_t AudioServiceType.description.getter(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x6E6F6870656C6574;
  switch(v1)
  {
    case 0:
      result = 0x636972656E6567;
      break;
    case 1:
      result = 1769105779;
      break;
    case 2:
      return result;
    case 3:
      result = 0x73636974706168;
      break;
    case 4:
      result = 0x736D72616C61;
      break;
    case 5:
      result = 0x6F6C41646E617473;
      break;
    case 6:
      result = 0x747541646E756F73;
      break;
    case 7:
      result = 0x6D726F46676E6F6CLL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x737472656C61;
      break;
    case 11:
      result = 1953719668;
      break;
    case 12:
      result = 0x6567617355697061;
      break;
    case 13:
      result = 0x6F536D6574737973;
      break;
    case 14:
      result = 0x616E41646E756F73;
      break;
    case 15:
      result = 0x657275636573;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

unint64_t sub_1C0BD63F4()
{
  if (*(v0 + 24) == 2)
  {
    v1 = swift_allocObject();
    *(v1 + 16) = sub_1C0BD6D50(MEMORY[0x1E69E7CC0]);
    v2 = (v1 + 16);
    v3 = *(v0 + 16);
    v43 = sub_1C0BD6F04;
    v44 = v1;
    aBlock = MEMORY[0x1E69E9820];
    v40 = 1107296256;
    v41 = sub_1C0BD6E54;
    v42 = &block_descriptor_1;
    v4 = _Block_copy(&aBlock);

    values = pc_session_get_values();
    _Block_release(v4);
    if (values != sub_1C0BEBFB8())
    {
      if (qword_1ED6F7520 != -1)
      {
        swift_once();
      }

      v6 = sub_1C0BEBFA8();
      __swift_project_value_buffer(v6, qword_1ED6F78D0);
      v7 = sub_1C0BEBF88();
      v8 = sub_1C0BEC118();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        aBlock = v10;
        *v9 = 136380675;
        if (!strerror(values))
        {
          __break(1u);

          while (1)
          {

            __break(1u);
          }
        }

        v11 = sub_1C0BEC0B8();
        v13 = sub_1C0BD80C0(v11, v12, &aBlock);

        *(v9 + 4) = v13;
        _os_log_impl(&dword_1C0BC7000, v7, v8, "pc_session_destroy failed, { ret=%{private}s }", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v10);
        MEMORY[0x1C68E0970](v10, -1, -1);
        MEMORY[0x1C68E0970](v9, -1, -1);
      }
    }

    swift_beginAccess();
    v14 = *(v1 + 16);

    return v14;
  }

  else
  {
    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v16 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v16, qword_1ED6F78B8);
    v17 = swift_allocObject();
    *(v17 + 16) = 0xD00000000000005ALL;
    *(v17 + 24) = 0x80000001C0BEDF70;
    v18 = swift_allocObject();
    *(v18 + 16) = 0xD000000000000011;
    *(v18 + 24) = 0x80000001C0BEDFD0;
    v19 = swift_allocObject();
    *(v19 + 16) = 195;
    oslog = sub_1C0BEBF88();
    v35 = sub_1C0BEC138();
    v37 = swift_allocObject();
    *(v37 + 16) = 32;
    v20 = swift_allocObject();
    *(v20 + 16) = 8;
    v21 = swift_allocObject();
    *(v21 + 16) = sub_1C0BE0B0C;
    *(v21 + 24) = v17;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1C0BE0B08;
    *(v22 + 24) = v21;
    v23 = swift_allocObject();
    *(v23 + 16) = 32;
    v24 = swift_allocObject();
    *(v24 + 16) = 8;
    v25 = swift_allocObject();
    *(v25 + 16) = sub_1C0BE0B0C;
    *(v25 + 24) = v18;
    v26 = swift_allocObject();
    *(v26 + 16) = sub_1C0BE0B08;
    *(v26 + 24) = v25;
    v27 = swift_allocObject();
    *(v27 + 16) = 0;
    v38 = swift_allocObject();
    *(v38 + 16) = 8;
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1C0BE0B14;
    *(v28 + 24) = v19;
    v29 = swift_allocObject();
    *(v29 + 16) = sub_1C0BE0B2C;
    *(v29 + 24) = v28;
    if (os_log_type_enabled(oslog, v35))
    {
      v33 = v23;
      v34 = v24;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v45 = v31;
      v46 = 0;
      *v30 = 770;
      v47 = v30 + 2;
      aBlock = sub_1C0BE0B18;
      v40 = v37;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0B18;
      v40 = v20;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0AF4;
      v40 = v22;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0B18;
      v40 = v33;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0B18;
      v40 = v34;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0AF4;
      v40 = v26;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0B18;
      v40 = v27;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0B18;
      v40 = v38;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      aBlock = sub_1C0BE0AF8;
      v40 = v29;
      sub_1C0BDAEA4(&aBlock, &v47, &v46, &v45);

      _os_log_impl(&dword_1C0BC7000, oslog, v35, "PRECONDITION FAILURE { file = %s, function = %s, line = %ld }", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1C68E0970](v31, -1, -1);
      MEMORY[0x1C68E0970](v30, -1, -1);
    }

    else
    {
    }

    v32 = MEMORY[0x1E69E7CC0];

    return sub_1C0BD6D50(v32);
  }
}

uint64_t sub_1C0BD6CDC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

unint64_t sub_1C0BD6D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529D0, &qword_1C0BED808);
    v3 = sub_1C0BEC278();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C0BCA668(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BD6E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);

  v18(a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t sub_1C0BD6F0C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a6)
  {
    v11 = sub_1C0BEC0B8();
    v13 = v12;
  }

  else
  {
    v13 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
  }

  swift_beginAccess();
  v14 = *(a9 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(a9 + 16);
  *(a9 + 16) = 0x8000000000000000;
  sub_1C0BD6FD0(v11, v13, isUniquelyReferenced_nonNull_native, a1);

  *(a9 + 16) = v17;
  return swift_endAccess();
}

unint64_t sub_1C0BD6FD0(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1C0BCA668(a1, a2);
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_1C0BD712C(v16, a3 & 1);
      v20 = *v5;
      result = sub_1C0BCA668(a1, a2);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1C0BEC298();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1C0BEB7DC();
      result = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    *(v22[7] + 8 * result) = a4;
    return result;
  }

  v22[(result >> 6) + 8] |= 1 << result;
  v23 = (v22[6] + 16 * result);
  *v23 = a1;
  v23[1] = a2;
  *(v22[7] + 8 * result) = a4;
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

uint64_t sub_1C0BD712C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529D0, &qword_1C0BED808);
  v37 = a2;
  result = sub_1C0BEC268();
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v37 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1C0BEC2C8();
      sub_1C0BEC098();
      result = sub_1C0BEC2F8();
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

    if ((v37 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
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

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1C0BD73D0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52898, &qword_1C0BED070);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
        v18 = *v16;
        v17 = v16[1];
        v24 = *(*(a1 + 56) + 8 * v15);

        swift_dynamicCast();
        sub_1C0BCA658(&v25, v27);
        sub_1C0BCA658(v27, v28);
        sub_1C0BCA658(v28, &v26);
        result = sub_1C0BCA668(v18, v17);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_1C0BCA658(&v26, v12);
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
          v20 = (v2[6] + 16 * result);
          *v20 = v18;
          v20[1] = v17;
          result = sub_1C0BCA658(&v26, (v2[7] + 32 * result));
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

uint64_t sub_1C0BD7618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1C0BCA658(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1C0BCB360(v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v9;
  }

  else
  {
    sub_1C0BC9D00(a1, &qword_1EBE52890, &qword_1C0BED600);
    sub_1C0BE6E20(a2, a3, v10);

    return sub_1C0BC9D00(v10, &qword_1EBE52890, &qword_1C0BED600);
  }

  return result;
}

uint64_t sub_1C0BD76E8()
{
  v0 = sub_1C0BD7718();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

char *sub_1C0BD7718()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = pc_session_destroy();
  if (v3 == sub_1C0BEBFB8())
  {
    return v1;
  }

  if (qword_1ED6F7520 != -1)
  {
    swift_once();
  }

  v4 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v4, qword_1ED6F78D0);
  v5 = sub_1C0BEBF88();
  v6 = sub_1C0BEC118();
  if (!os_log_type_enabled(v5, v6))
  {
LABEL_7:

    return v1;
  }

  v7 = swift_slowAlloc();
  v8 = swift_slowAlloc();
  v13 = v8;
  *v7 = 136380675;
  result = strerror(v3);
  if (result)
  {
    v10 = sub_1C0BEC0B8();
    v12 = sub_1C0BD80C0(v10, v11, &v13);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C0BC7000, v5, v6, "pc_session_destroy failed, { ret=%{private}s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1C68E0970](v8, -1, -1);
    MEMORY[0x1C68E0970](v7, -1, -1);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C0BD788C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C0BD78EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

Swift::Void __swiftcall AudioAnalyticsStopReporter(_:)(Swift::Int64 a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BD433C;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BCA7FC;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_15;
    v6 = _Block_copy(v8);
    v7 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

void sub_1C0BD7B48()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 36);
  v4 = *(v0 + 16);
  sub_1C0BCC0E4(0, 1, v1, v2, v3, 1);
}

uint64_t AudioEventCategory.description.getter(int a1)
{
  v1 = a1 & 0xFFFF0000;
  v2 = a1;
  if ((a1 & 0xFFFF0000) <= 0x7FFFFFF)
  {
    switch(v1)
    {
      case 0x80000000:
        v3 = 0xE700000000000000;
        v4 = 0x786F626C6F6F54;
        goto LABEL_17;
      case 0:
        if (!a1)
        {
          return 0;
        }

        goto LABEL_19;
      case 0x4000000:
        v3 = 0xE400000000000000;
        v4 = 1229211981;
        goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v1 > 0x1FFFFFFF)
  {
    if (v1 != 0x20000000)
    {
      if (v1 == 0x40000000)
      {
        v3 = 0xE700000000000000;
        v4 = 0x676E6974756F52;
        goto LABEL_17;
      }

      goto LABEL_14;
    }

    v3 = 0xE300000000000000;
    v4 = 4997448;
  }

  else
  {
    if (v1 != 0x8000000)
    {
      if (v1 == 0x10000000)
      {
        v3 = 0xE300000000000000;
        v4 = 5264196;
        goto LABEL_17;
      }

LABEL_14:
      v3 = 0xE900000000000064;
      v4 = 0x656E696665646E55;
      goto LABEL_17;
    }

    v3 = 0xE700000000000000;
    v4 = 0x6E6F6973736553;
  }

LABEL_17:
  MEMORY[0x1C68DFFF0](v4, v3);

  if (v2)
  {
    MEMORY[0x1C68DFFF0](95, 0xE100000000000000);
LABEL_19:
    v5 = sub_1C0BD8C40(v2);
    MEMORY[0x1C68DFFF0](v5);
  }

  return 0;
}

void AudioAnalyticsSendSessionlessMessage(void *a1)
{
  v1 = a1;
  AudioAnalyticsSendSessionlessMessage(_:_:_:)();
}

void AudioAnalyticsSendSessionlessMessage(_:_:_:)()
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52890, &qword_1C0BED600);
    sub_1C0BEC048();
  }

  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v0 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v0, qword_1ED6F78B8);
  oslog = sub_1C0BEBF88();
  v1 = sub_1C0BEC128();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1C0BC7000, oslog, v1, "Discarding message with at least one nil entry.", v2, 2u);
    MEMORY[0x1C68E0970](v2, -1, -1);
  }
}

uint64_t sub_1C0BD80C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1C0BD818C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1C0BCB304(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_1C0BD818C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1C0BD8964(a5, a6);
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
    result = sub_1C0BEC238();
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

uint64_t AudioAnalyticsCopyConfiguration(_:)(uint64_t a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  if (qword_1ED6F78A0 == a1)
  {
    return 0;
  }

  if (qword_1ED6F77D8 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  v2 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](a1);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  v5 = sub_1C0BEC038();

  return v5;
}

unint64_t sub_1C0BD8420@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v35 = a1;
  v34 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52960, &unk_1C0BED5F0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for ReporterState(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = sub_1C0BEBF88();
  v15 = sub_1C0BEC118();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = v11;
    v17 = v16;
    *v16 = 134217984;
    *(v16 + 4) = v35;
    _os_log_impl(&dword_1C0BC7000, v14, v15, "Get configuration. { reporterID=%lld }", v16, 0xCu);
    v11 = v33;
    MEMORY[0x1C68E0970](v17, -1, -1);
  }

  sub_1C0BCAF30(v35, 0xD00000000000001DLL, 0x80000001C0BEE6D0, v5);
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_1C0BC9D60(v5, v13, type metadata accessor for ReporterState);
    sub_1C0BC9378(v13, v11, type metadata accessor for ReporterState);
    if (swift_getEnumCaseMultiPayload())
    {
      type metadata accessor for ActiveReporterState(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v21 = *v11;
      if (EnumCaseMultiPayload != 1)
      {
        v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268) + 48);
        swift_beginAccess();
        v30 = *(v21 + 32);

        v19 = sub_1C0BDA6D8(v31);

        sub_1C0BCA00C(v13, type metadata accessor for ReporterState);
        v27 = type metadata accessor for StartedReporterData;
        v28 = v11 + v29;
        goto LABEL_11;
      }

      swift_beginAccess();
      v22 = *(v21 + 32);

      v19 = sub_1C0BDA6D8(v23);
    }

    else
    {
      v24 = *v11;
      swift_beginAccess();
      v25 = *(v24 + 32);

      v19 = sub_1C0BDA6D8(v26);
    }

    v27 = type metadata accessor for ReporterState;
    v28 = v13;
LABEL_11:
    result = sub_1C0BCA00C(v28, v27);
    goto LABEL_12;
  }

  sub_1C0BC9D00(v5, &qword_1EBE52960, &unk_1C0BED5F0);
  result = sub_1C0BD8824(MEMORY[0x1E69E7CC0]);
  v19 = result;
LABEL_12:
  *v34 = v19;
  return result;
}

unint64_t sub_1C0BD8824(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528A0, &qword_1C0BED810);
    v3 = sub_1C0BEC278();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C0BCCD54(v4, v13, &qword_1EBE529D8, &qword_1C0BED818);
      result = sub_1C0BEA930(v13);
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
      result = sub_1C0BCA658(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C0BD8964(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C0BD89B0(a1, a2);
  sub_1C0BD8AE0(&unk_1F40218A0);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_1C0BD89B0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C0BD8BCC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C0BEC238();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C0BEC0C8();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C0BD8BCC(v10, 0);
        result = sub_1C0BEC218();
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

uint64_t sub_1C0BD8AE0(uint64_t result)
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

  result = sub_1C0BEA724(result, v12, 1, v3);
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

void *sub_1C0BD8BCC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE529B8, &unk_1C0BED7E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1C0BD8C40(int a1)
{
  v1 = a1 + 1;
  result = 0x636972656E6547;
  switch(v1)
  {
    case 0:
      result = 0x6E776F6E6B6E55;
      break;
    case 2:
      return result;
    case 3:
      result = 0x64726F636552;
      break;
    case 4:
      result = 0x7475706E49;
      break;
    case 5:
      result = 0x6B63616279616C50;
      break;
    case 6:
      result = 0x74757074754FLL;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 20297;
      break;
    case 9:
      result = 0x7075746553;
      break;
    case 10:
      result = 0x6552746E65696C43;
      break;
    case 11:
      result = 0x6168436574756F52;
      break;
    case 12:
      result = 0x726F727245;
      break;
    case 13:
      result = 0x74726F7065524F49;
      break;
    case 14:
      result = 0x616D726F66726550;
      break;
    case 15:
      result = 0x656D756C6F56;
      break;
    case 16:
      result = 0x65736E61707845;
      break;
    case 17:
      result = 0x48676E6972616548;
      break;
    case 18:
      result = 0x73646F50726941;
      break;
    case 19:
      result = 0x6F72506563696F56;
      break;
    case 21:
      result = 0x6C616974617053;
      break;
    case 22:
      result = 0x556F5478694D5056;
      break;
    case 26:
      result = 0x756F527261456E49;
      break;
    default:
      result = 0x656E696665646E55;
      break;
  }

  return result;
}

unint64_t AudioEventType.description.getter(unsigned __int16 a1)
{
  v1 = a1;
  result = 0x636972656E6567;
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = 0x7472617473;
      break;
    case 2:
      result = 1886352499;
      break;
    case 3:
      result = 0x6574617669746361;
      break;
    case 4:
      result = 0x6176697463616564;
      break;
    case 5:
      result = 0x7075746573;
      break;
    case 6:
      result = 0x726F727265;
      break;
    case 7:
      result = 0x7465446575737369;
      break;
    case 8:
      result = 0x676F4C7265776F70;
      break;
    case 9:
      result = 0x696E556F69647561;
      break;
    case 10:
      result = 0x766972446964696DLL;
      break;
    case 11:
      result = 0x7972616D6D7573;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x7078456F69647561;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0x694B726F736E6573;
      break;
    case 16:
      result = 0x656C706D6973;
      break;
    case 17:
      result = 0x6172676F74736968;
      break;
    case 18:
      result = 0x6574617473;
      break;
    case 19:
      result = 0x6F4C79726F6D656DLL;
      break;
    case 20:
      result = 0x6E49646F50726961;
      break;
    case 21:
      result = 0x4955726F66;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x73676E6974746573;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

_WORD *sub_1C0BD9278@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_1C0BD9294()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD92CC()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 54, 7);
}

uint64_t sub_1C0BD9318()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0BD9358()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 54, 7);
}

id sub_1C0BD9398@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 reporterID];
  *a2 = result;
  return result;
}

void sub_1C0BD93E4(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_1C0BEC038();
  [v3 setConfiguration_];
}

uint64_t sub_1C0BD945C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD95A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0BEBF68();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1C0BD9610(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0BEBF68();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1C0BD9680()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1C0BD96B8()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1C0BD96F0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C0BD9728()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C0BD9760()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 54, 7);
}

uint64_t sub_1C0BD97A8()
{
  v1 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 46, 7);
}

uint64_t sub_1C0BD9820()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 28, 7);
}

uint64_t sub_1C0BD9858()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 38, 7);
}

void sub_1C0BD9A60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, objc_super a11)
{
  a11.super_class = AudioAnalyticsHWTraceHandleWrapper;
  [(_Unwind_Exception *)&a11 dealloc];
  _Unwind_Resume(a1);
}

uint64_t libtailspinLibraryCore(char **a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v5 = &v4;
  v6 = *"";
  v1 = libtailspinLibraryCore(char **)::frameworkLibrary;
  v7 = libtailspinLibraryCore(char **)::frameworkLibrary;
  if (!libtailspinLibraryCore(char **)::frameworkLibrary)
  {
    v8 = xmmword_1E8127D80;
    v9 = 0;
    v5[3] = _sl_dlopen();
    libtailspinLibraryCore(char **)::frameworkLibrary = v5[3];
    v1 = v5[3];
  }

  _Block_object_dispose(&v4, 8);
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_1C0BD9C0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZL22libtailspinLibraryCorePPc_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  libtailspinLibraryCore(char **)::frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t gettailspin_get_cputrace_handleSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v0 = gettailspin_get_cputrace_handleSymbolLoc(void)::ptr;
  v6 = gettailspin_get_cputrace_handleSymbolLoc(void)::ptr;
  if (!gettailspin_get_cputrace_handleSymbolLoc(void)::ptr)
  {
    v1 = libtailspinLibrary();
    v4[3] = dlsym(v1, "tailspin_get_cputrace_handle");
    gettailspin_get_cputrace_handleSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C0BD9D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL40gettailspin_get_cputrace_handleSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = libtailspinLibrary();
  result = dlsym(v2, "tailspin_get_cputrace_handle");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettailspin_get_cputrace_handleSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t libtailspinLibrary(void)
{
  v3 = 0;
  v0 = libtailspinLibraryCore(&v3);
  v1 = v3;
  if (!v0)
  {
    v1 = abort_report_np();
    goto LABEL_5;
  }

  if (v3)
  {
LABEL_5:
    free(v1);
  }

  return v0;
}

uint64_t gettailspin_cputrace_handle_deinitSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v0 = gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr;
  v6 = gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr;
  if (!gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr)
  {
    v1 = libtailspinLibrary();
    v4[3] = dlsym(v1, "tailspin_cputrace_handle_deinit");
    gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C0BD9F28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL43gettailspin_cputrace_handle_deinitSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = libtailspinLibrary();
  result = dlsym(v2, "tailspin_cputrace_handle_deinit");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettailspin_cputrace_handle_deinitSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t gettailspin_pause_cputraceSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = *"";
  v0 = gettailspin_pause_cputraceSymbolLoc(void)::ptr;
  v6 = gettailspin_pause_cputraceSymbolLoc(void)::ptr;
  if (!gettailspin_pause_cputraceSymbolLoc(void)::ptr)
  {
    v1 = libtailspinLibrary();
    v4[3] = dlsym(v1, "tailspin_pause_cputrace");
    gettailspin_pause_cputraceSymbolLoc(void)::ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1C0BDA064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *___ZL35gettailspin_pause_cputraceSymbolLocv_block_invoke(uint64_t a1)
{
  v2 = libtailspinLibrary();
  result = dlsym(v2, "tailspin_pause_cputrace");
  *(*(*(a1 + 32) + 8) + 24) = result;
  gettailspin_pause_cputraceSymbolLoc(void)::ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void AudioAnalyticsCreateSharedClientWithEndpoint(void *a1)
{
  v1 = qword_1ED6F77D8;
  v2 = a1;
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  v4 = v2;
  v5 = sub_1C0BD0BE4(v2, 0);
  v6 = qword_1ED6F78F0;
  qword_1ED6F78F0 = v5;
}

Swift::Void __swiftcall AudioAnalyticsCreateSharedClient(endpoint:)(NSXPCListenerEndpoint endpoint)
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v2 = objc_allocWithZone(type metadata accessor for ServerClient(0));
  v3 = endpoint.super.isa;
  qword_1ED6F78F0 = sub_1C0BD0BE4(endpoint.super.isa, 0);

  MEMORY[0x1EEE66BB8]();
}

unint64_t sub_1C0BDA270()
{
  result = qword_1EBE52850;
  if (!qword_1EBE52850)
  {
    type metadata accessor for AudioServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE52850);
  }

  return result;
}

_DWORD *sub_1C0BDA2C8@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_1C0BDA2F8()
{
  v1 = *v0;
  sub_1C0BEC2C8();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BDA36C()
{
  v1 = *v0;
  sub_1C0BEC2C8();
  sub_1C0BEC2E8();
  return sub_1C0BEC2F8();
}

uint64_t AudioAnalyticsCreateSharedClient()
{
  if (qword_1ED6F77D8 != -1)
  {
    return swift_once();
  }

  return result;
}

Swift::Void __swiftcall AudioAnalyticsCreateSharedClient()()
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }
}

Swift::Int64 __swiftcall AudioAnalyticsCreateReporter()()
{
  if (qword_1ED6F77D8 != -1)
  {
    v0 = swift_once();
  }

  v1 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v2;
  sub_1C0BEC178();

  return v5;
}

uint64_t AudioAnalyticsCreateReporterFromSessionID(uint64_t a1)
{
  if (qword_1ED6F77D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  sub_1C0BEC178();

  return v6;
}

uint64_t sub_1C0BDA6D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528A0, &qword_1C0BED810);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
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
    sub_1C0BCB304(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_1C0BCA658(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_1C0BCA658(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_1C0BCA658(v32, v33);
    v17 = *(v2 + 40);
    result = sub_1C0BEC1F8();
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
    result = sub_1C0BCA658(v33, (*(v2 + 56) + 32 * v10));
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

Swift::Void __swiftcall AudioAnalyticsDestroyReporter(_:)(Swift::Int64 a1)
{
  if (qword_1ED6F74F8 != -1)
  {
    swift_once();
  }

  if (qword_1ED6F78A0 != a1)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v2 = qword_1ED6F78F0;
    v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    *(v4 + 24) = a1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BDAEF0;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BCA7FC;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_65;
    v6 = _Block_copy(v8);
    v7 = v2;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t AudioAnalyticsRequestMessage(uint64_t a1, int a2, __int16 a3, void *aBlock)
{
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  AudioAnalyticsRequestMessage(_:_:_:_:)(a1, a2, a3, sub_1C0BDAEF8, v8);
}

uint64_t AudioAnalyticsRequestMessage(_:_:_:_:)(uint64_t result, int a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v9 = result;
  if (qword_1ED6F74F8 != -1)
  {
    result = swift_once();
  }

  if (qword_1ED6F78A0 != v9)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED6F78F0;
    v11 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v9;
    *(v12 + 32) = a4;
    *(v12 + 40) = a5;
    *(v12 + 48) = a2;
    *(v12 + 52) = a3;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1C0BDAF0C;
    *(v13 + 24) = v12;
    v17[4] = sub_1C0BCA7FC;
    v17[5] = v13;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C0BCA800;
    v17[3] = &block_descriptor_78;
    v14 = _Block_copy(v17);
    v15 = v10;

    dispatch_sync(v11, v14);

    _Block_release(v14);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
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

_BYTE **sub_1C0BDAEE0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

id AudioAnalyticsReporter.init(newReporterID:)(uint64_t a1)
{
  v2 = v1;
  if (qword_1ED6F77D8 != -1)
  {
    a1 = swift_once();
  }

  v3 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](a1);
  v5 = v4;
  sub_1C0BEC178();

  *&v2[OBJC_IVAR___AudioAnalyticsReporter_reporterID] = v8;
  v7.receiver = v2;
  v7.super_class = AudioAnalyticsReporter;
  return objc_msgSendSuper2(&v7, sel_init);
}

AudioAnalyticsReporter __swiftcall AudioAnalyticsReporter.init(reporterID:)(Swift::Int64 reporterID)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v3 = [v2 initWithReporterID_];
  result.reporterID = v4;
  result.super.isa = v3;
  return result;
}

id AudioAnalyticsReporter.init(reporterID:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR___AudioAnalyticsReporter_reporterID) = a1;
  v3.super_class = AudioAnalyticsReporter;
  return objc_msgSendSuper2(&v3, sel_init);
}

id AudioAnalyticsReporter.init(sessionID:serviceType:)(uint64_t a1, unsigned __int16 a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v4 initWithSessionID:a1 serviceType:a2];
}

id AudioAnalyticsReporter.init(sessionID:serviceType:)(uint64_t a1, __int16 a2)
{
  v3 = v2;
  if (qword_1ED6F77D8 != -1)
  {
    v16 = a1;
    swift_once();
    a1 = v16;
  }

  v5 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v6;
  sub_1C0BEC178();

  v8 = aBlock[0];
  *&v3[OBJC_IVAR___AudioAnalyticsReporter_reporterID] = aBlock[0];
  v9 = qword_1ED6F78F0;
  v10 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = a2;
  *(v11 + 32) = v8;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_1C0BD04FC;
  *(v12 + 24) = v11;
  aBlock[4] = sub_1C0BCAF28;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_0;
  v13 = _Block_copy(aBlock);
  v14 = v9;

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

  if (v13)
  {
    __break(1u);
  }

  else
  {
    v17.receiver = v3;
    v17.super_class = AudioAnalyticsReporter;
    return objc_msgSendSuper2(&v17, sel_init);
  }

  return result;
}

uint64_t AudioAnalyticsReporter.reporterID.getter()
{
  v1 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t AudioAnalyticsReporter.reporterID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___AudioAnalyticsReporter_reporterID;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t AudioAnalyticsReporter.serviceType.getter()
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED6F78F0;
  v2 = [v0 reporterID];
  v3 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  MEMORY[0x1EEE9AC00](v2);
  type metadata accessor for AudioServiceType(0);
  sub_1C0BEC178();

  return v5;
}

uint64_t AudioAnalyticsReporter.configuration.getter()
{
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v1 = qword_1ED6F78F0;
  v2 = [v0 reporterID];
  v3 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  MEMORY[0x1EEE9AC00](v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52888, &qword_1C0BED068);
  sub_1C0BEC178();

  return v5;
}

void AudioAnalyticsReporter.configuration.setter(uint64_t a1)
{
  if (!sub_1C0BD3500(0x72756769666E6F63, 0xED00006E6F697461))
  {
LABEL_8:

    return;
  }

  v3 = [v1 reporterID];
  v4 = sub_1C0BD39A8(a1);

  if (v4)
  {
    if (*(v4 + 16))
    {
      goto LABEL_4;
    }

LABEL_13:

    if (qword_1ED6F7518 != -1)
    {
      swift_once();
    }

    v13 = sub_1C0BEBFA8();
    __swift_project_value_buffer(v13, qword_1ED6F78B8);
    v17 = v1;
    oslog = sub_1C0BEBF88();
    v14 = sub_1C0BEC128();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = [v17 reporterID];

      _os_log_impl(&dword_1C0BC7000, oslog, v14, "Configuration empty. Returning early. { reporterID=%lld }", v15, 0xCu);
      MEMORY[0x1C68E0970](v15, -1, -1);
      v16 = oslog;
    }

    else
    {

      v16 = v17;
    }

    return;
  }

  v12 = sub_1C0BDCEB4(0x72756769666E6F63, 0xED00006E6F697461, v3);
  if (!v12)
  {
    return;
  }

  v4 = v12;
  if (!*(v12 + 16))
  {
    goto LABEL_13;
  }

LABEL_4:
  if (qword_1ED6F77D8 != -1)
  {
    swift_once();
  }

  v5 = qword_1ED6F78F0;
  v6 = [v1 reporterID];
  v7 = *&v5[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
  v8 = swift_allocObject();
  v8[2] = v5;
  v8[3] = v4;
  v8[4] = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1C0BCAEC8;
  *(v9 + 24) = v8;
  aBlock[4] = sub_1C0BD3D50;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C0BCA800;
  aBlock[3] = &block_descriptor_13;
  v10 = _Block_copy(aBlock);
  v11 = v5;

  dispatch_sync(v7, v10);
  _Block_release(v10);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
    goto LABEL_8;
  }
}

void sub_1C0BDC078(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 configuration];
  v4 = sub_1C0BEC058();

  *a2 = v4;
}

AudioAnalyticsReporter __swiftcall AudioAnalyticsReporter.init()()
{
  v0 = sub_1C0BDC0F4(&selRef_init);
  result.reporterID = v1;
  result.super.isa = v0;
  return result;
}

id sub_1C0BDC0F4(const char **a1)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = *a1;

  return [v2 v3];
}

uint64_t AudioAnalyticsReporter.set(serviceType:)(__int16 a1)
{
  result = sub_1C0BD3500(0xD000000000000011, 0x80000001C0BEDAF0);
  if (result)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v4 = qword_1ED6F78F0;
    v5 = [v1 reporterID];
    v6 = *&v4[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    *(v7 + 24) = a1;
    *(v7 + 32) = v5;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1C0BDD2F0;
    *(v8 + 24) = v7;
    v11[4] = sub_1C0BD3D50;
    v11[5] = v8;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 1107296256;
    v11[2] = sub_1C0BCA800;
    v11[3] = &block_descriptor_24;
    v9 = _Block_copy(v11);
    v10 = v4;

    dispatch_sync(v6, v9);
    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

Swift::Void __swiftcall AudioAnalyticsReporter.start()()
{
  if (sub_1C0BD3500(0x29287472617473, 0xE700000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED6F78F0;
    v2 = [v0 reporterID];
    v3 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BCD238;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BD3D50;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_34;
    v6 = _Block_copy(v8);
    v7 = v1;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

Swift::Void __swiftcall AudioAnalyticsReporter.stop()()
{
  if (sub_1C0BD3500(0x2928706F7473, 0xE600000000000000))
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v1 = qword_1ED6F78F0;
    v2 = [v0 reporterID];
    v3 = *&v1[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    *(v4 + 24) = v2;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C0BD433C;
    *(v5 + 24) = v4;
    v8[4] = sub_1C0BD3D50;
    v8[5] = v5;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1C0BCA800;
    v8[3] = &block_descriptor_44;
    v6 = _Block_copy(v8);
    v7 = v1;

    dispatch_sync(v3, v6);
    _Block_release(v6);
    LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

    if (v3)
    {
      __break(1u);
    }
  }
}

uint64_t AudioAnalyticsReporter.requestMessage(for:type:callback:)(int a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  result = sub_1C0BD3500(0xD000000000000022, 0x80000001C0BEDB30);
  if (result)
  {
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v10 = qword_1ED6F78F0;
    v11 = [v4 reporterID];
    v12 = *&v10[OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue];
    v13 = swift_allocObject();
    *(v13 + 16) = v10;
    *(v13 + 24) = v11;
    *(v13 + 32) = a3;
    *(v13 + 40) = a4;
    *(v13 + 48) = a1;
    *(v13 + 52) = a2;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1C0BDAF0C;
    *(v14 + 24) = v13;
    v18[4] = sub_1C0BD3D50;
    v18[5] = v14;
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 1107296256;
    v18[2] = sub_1C0BCA800;
    v18[3] = &block_descriptor_64;
    v15 = _Block_copy(v18);
    v16 = v10;

    dispatch_sync(v12, v15);

    _Block_release(v15);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_1C0BDCC40(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528B8, &qword_1C0BED088);
    v2 = sub_1C0BEC278();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  do
  {
LABEL_10:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
  }

  while (!v5);
  while (1)
  {
    v14 = __clz(__rbit64(v5)) | (v13 << 6);
    v15 = (*(a1 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    sub_1C0BCB304(*(a1 + 56) + 32 * v14, v28);
    *&v27 = v16;
    *(&v27 + 1) = v17;
    v25[2] = v27;
    v26[0] = v28[0];
    v26[1] = v28[1];
    v18 = v27;
    sub_1C0BCA658(v26, v25);
    sub_1C0BD24B8(0, &qword_1EBE528C0, 0x1E69E58C0);

    if (!swift_dynamicCast())
    {
      break;
    }

    v5 &= v5 - 1;
    v19 = sub_1C0BCA668(v18, *(&v18 + 1));
    if (v20)
    {
      v8 = v2[6] + 16 * v19;
      v9 = *(v8 + 8);
      *v8 = v18;
      v10 = v19;

      v11 = v2[7];
      v12 = *(v11 + 8 * v10);
      *(v11 + 8 * v10) = v24;

      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_22;
      }

      *(v2 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v19;
      *(v2[6] + 16 * v19) = v18;
      *(v2[7] + 8 * v19) = v24;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v2[2] = v23;
      v7 = v13;
      if (!v5)
      {
        goto LABEL_10;
      }
    }

LABEL_9:
    v13 = v7;
  }
}

uint64_t sub_1C0BDCEB4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_1ED6F7518 != -1)
  {
    swift_once();
  }

  v6 = sub_1C0BEBFA8();
  __swift_project_value_buffer(v6, qword_1ED6F78B8);

  v7 = sub_1C0BEBF88();
  v8 = sub_1C0BEC128();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136380931;
    *(v9 + 4) = sub_1C0BD80C0(a1, a2, &v12);
    *(v9 + 12) = 2048;
    *(v9 + 14) = a3;
    _os_log_impl(&dword_1C0BC7000, v7, v8, "Dictionary is not a string-keyed dictionary. Returning early. { function=%{private}s, reporterID=%lld }", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1C68E0970](v10, -1, -1);
    MEMORY[0x1C68E0970](v9, -1, -1);
  }

  return 0;
}

unint64_t _sSo22AudioAnalyticsReporterC0aB0E22sendSessionlessMessage_8category4typeySDys11AnyHashableVypG_So0A13EventCategoryVSo0aK4TypeVtFZ_0(uint64_t a1, int a2, __int16 a3)
{
  if (qword_1ED6F74F8 != -1)
  {
    v14 = a1;
    swift_once();
    a1 = v14;
  }

  v5 = qword_1ED6F78A0;
  result = sub_1C0BD39A8(a1);
  if (result || (result = sub_1C0BDCEB4(0xD000000000000028, 0x80000001C0BEDC90, v5)) != 0)
  {
    v7 = result;
    if (qword_1ED6F77D8 != -1)
    {
      swift_once();
    }

    v8 = qword_1ED6F78F0;
    v9 = *(qword_1ED6F78F0 + OBJC_IVAR____TtC14AudioAnalytics12ServerClient_serialQueue);
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = v7;
    *(v10 + 32) = a2;
    *(v10 + 36) = a3;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_1C0BD7B38;
    *(v11 + 24) = v10;
    v15[4] = sub_1C0BD3D50;
    v15[5] = v11;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1C0BCA800;
    v15[3] = &block_descriptor_126;
    v12 = _Block_copy(v15);
    v13 = v8;

    dispatch_sync(v9, v12);
    _Block_release(v12);
    LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

    if (v12)
    {
      __break(1u);
    }
  }

  return result;
}

id AudioAnalyticsTestReporter.__allocating_init(newReporterID:)()
{
  v1 = objc_allocWithZone(v0);

  return [v1 initWithNewReporterID];
}

id AudioAnalyticsTestReporter.init(newReporterID:)()
{
  v1 = [v0 initWithNewReporterID];
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  objc_msgSendSuper2(&v3, sel_setServiceType_, 11);
  return v1;
}

id AudioAnalyticsTestReporter.__allocating_init(reporterID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithReporterID_];
}

id AudioAnalyticsTestReporter.init(reporterID:)(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return objc_msgSendSuper2(&v4, sel_initWithReporterID_, a1);
}

id AudioAnalyticsTestReporter.__allocating_init(sessionID:serviceType:)(uint64_t a1, unsigned __int16 a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithSessionID:a1 serviceType:a2];
}

id AudioAnalyticsTestReporter.init(sessionID:serviceType:)(uint64_t a1, unsigned __int16 a2)
{
  v6.receiver = v2;
  v6.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return objc_msgSendSuper2(&v6, sel_initWithSessionID_serviceType_, a1, a2);
}

id AudioAnalyticsTestReporter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C0BDD608()
{
  result = os_variant_is_darwinos();
  byte_1EBE53252 = result;
  return result;
}

uint64_t sub_1C0BDD634()
{
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](0);
  return sub_1C0BEC2F8();
}

uint64_t sub_1C0BDD6A0()
{
  sub_1C0BEC2C8();
  MEMORY[0x1C68E0220](0);
  return sub_1C0BEC2F8();
}

uint64_t getEnumTagSinglePayload for AudioAnalytics(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AudioAnalytics(_WORD *result, int a2, int a3)
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

unint64_t sub_1C0BDD7E8()
{
  result = qword_1EBE528D8;
  if (!qword_1EBE528D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE528D8);
  }

  return result;
}

uint64_t sub_1C0BDD83C(uint64_t a1)
{
  v2 = v1;
  active = type metadata accessor for ActiveReporterState(0);
  v5 = *(*(active - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](active);
  v8 = (&v88 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v88 - v9);
  v93 = a1;
  sub_1C0BDF3C0(a1, &v88 - v9);
  v92 = active;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v12 = *v10;
  if (EnumCaseMultiPayload != 1)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
    sub_1C0BD788C(v10 + *(v13 + 48), type metadata accessor for StartedReporterData);
  }

  v14 = *(v2 + 16);
  v15 = *(v14 + 16);
  if (!v15)
  {
LABEL_31:
    v68 = *(v14 + 16);
    if (v68)
    {
      v69 = *(v12 + 24);
      v70 = *(v12 + 16);
      v71 = v14 + 32;

      do
      {
        sub_1C0BDF424(v71, v100);
        v72 = *__swift_project_boxed_opaque_existential_1(v100, v101);
        sub_1C0BE894C(v69, v70);
        __swift_destroy_boxed_opaque_existential_0(v100);
        v71 += 40;
        --v68;
      }

      while (v68);
    }

    swift_beginAccess();
    v73 = *(v2 + 16);
    v74 = *(v73 + 16);
    if (v74)
    {
      v75 = *(v12 + 32);
      v76 = *(v12 + 16);
      v77 = v73 + 32;

      do
      {
        sub_1C0BDF424(v77, v100);
        v78 = *__swift_project_boxed_opaque_existential_1(v100, v101);
        sub_1C0BE8AA0(v75, v76);
        __swift_destroy_boxed_opaque_existential_0(v100);
        v77 += 40;
        --v74;
      }

      while (v74);
    }

    sub_1C0BDF3C0(v93, v8);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      return sub_1C0BD788C(v8, type metadata accessor for ActiveReporterState);
    }

    else
    {
      v80 = *v8;

      v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E0, &qword_1C0BED268);
      sub_1C0BD788C(v8 + *(v81 + 48), type metadata accessor for StartedReporterData);
      v82 = *(v2 + 16);
      v83 = *(v82 + 16);
      if (v83)
      {
        v84 = *(v12 + 16);
        v85 = v82 + 32;
        v86 = *(v2 + 16);

        do
        {
          sub_1C0BDF424(v85, v100);
          v87 = *__swift_project_boxed_opaque_existential_1(v100, v101);
          sub_1C0BE8064(v84);
          __swift_destroy_boxed_opaque_existential_0(v100);
          v85 += 40;
          --v83;
        }

        while (v83);
      }

      else
      {
      }
    }
  }

  v89 = v8;
  v90 = v2;
  v91 = v12;
  v16 = *(v12 + 16);
  v17 = v14 + 32;
  v88 = v14;

  *(&v18 + 1) = 2;
  v95 = xmmword_1C0BED230;
  *&v18 = 134283521;
  v94 = v18;
  v96 = v16;
  while (1)
  {
    sub_1C0BDF424(v17, v100);
    v21 = *__swift_project_boxed_opaque_existential_1(v100, v101);
    v22 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
    swift_beginAccess();
    if (*(*(v21 + v22) + 16))
    {
      sub_1C0BC97E0(v16);
      if (v23)
      {
        v24 = sub_1C0BEBF88();
        v25 = sub_1C0BEC138();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = v94;
          *(v26 + 4) = v16;
          _os_log_impl(&dword_1C0BC7000, v24, v25, "create called for existing reporterID. { reporterID=%{private}lld }", v26, 0xCu);
          MEMORY[0x1C68E0970](v26, -1, -1);
        }

        goto LABEL_7;
      }
    }

    v98 = v15;
    v27 = type metadata accessor for ReporterInfo(0);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    v31 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
    v32 = sub_1C0BEBF68();
    (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
    v33 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts;
    type metadata accessor for MessageCounts();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    *(v34 + 24) = 0;
    v97 = v30;
    *(v30 + v33) = v34;
    type metadata accessor for ReporterData();
    v35 = swift_allocObject();
    *(v35 + 24) = -1;
    *(v35 + 32) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
    v36 = swift_allocObject();
    *(v36 + 16) = v95;
    *(v36 + 32) = getpid();
    v37 = type metadata accessor for PerfCheck();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E7CC0];
    *(v40 + 16) = MEMORY[0x1E69E7CC0];
    *(v40 + 24) = v41;
    *(v40 + 32) = 0;
    *(v40 + 40) = 0;
    *(v40 + 50) = -1;
    v42 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v43 = sub_1C0BEBFA8();
    v44 = __swift_project_value_buffer(v43, qword_1ED6F78D0);
    v45 = *(v43 - 8);
    (*(v45 + 16))(v40 + v42, v44, v43);
    if (qword_1ED6F7540 != -1)
    {
      swift_once();
    }

    if (byte_1ED6F78E8 == 1)
    {
      v46 = *(v40 + 24);
      *(v40 + 24) = v36;

      *(v40 + 48) = 1;
    }

    else
    {

      v47 = *(v40 + 16);

      v48 = *(v40 + 24);

      v49 = *(v40 + 40);

      (*(v45 + 8))(v40 + v42, v43);
      v50 = *(*v40 + 48);
      v51 = *(*v40 + 52);
      swift_deallocPartialClassInstance();
      v40 = 0;
    }

    v52 = v97;
    v15 = v98;
    *(v35 + 40) = v40;
    v16 = v96;
    *(v35 + 16) = v96;
    *(v52 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) = v35;
    *(v35 + 24) = -1;
    swift_beginAccess();
    v53 = *(v21 + v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v99 = *(v21 + v22);
    v55 = v99;
    *(v21 + v22) = 0x8000000000000000;
    v56 = sub_1C0BC97E0(v16);
    v58 = v55[2];
    v59 = (v57 & 1) == 0;
    v60 = __OFADD__(v58, v59);
    v61 = v58 + v59;
    if (v60)
    {
      break;
    }

    v62 = v57;
    if (v55[3] < v61)
    {
      sub_1C0BEAB90(v61, isUniquelyReferenced_nonNull_native);
      v56 = sub_1C0BC97E0(v16);
      if ((v62 & 1) != (v63 & 1))
      {
        goto LABEL_48;
      }

LABEL_25:
      v64 = v99;
      if ((v62 & 1) == 0)
      {
        goto LABEL_26;
      }

      goto LABEL_5;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_25;
    }

    v67 = v56;
    sub_1C0BEB504();
    v56 = v67;
    v64 = v99;
    if ((v62 & 1) == 0)
    {
LABEL_26:
      v64[(v56 >> 6) + 8] |= 1 << v56;
      *(v64[6] + 8 * v56) = v16;
      *(v64[7] + 8 * v56) = v52;
      v65 = v64[2];
      v60 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v60)
      {
        goto LABEL_47;
      }

      v64[2] = v66;
      goto LABEL_6;
    }

LABEL_5:
    v19 = v64[7];
    v20 = *(v19 + 8 * v56);
    *(v19 + 8 * v56) = v52;

LABEL_6:
    *(v21 + v22) = v64;
    swift_endAccess();
LABEL_7:
    __swift_destroy_boxed_opaque_existential_0(v100);
    v17 += 40;
    if (!--v15)
    {

      v2 = v90;
      v14 = *(v90 + 16);
      v12 = v91;
      v8 = v89;
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_1C0BEC298();
  __break(1u);
  return result;
}

uint64_t sub_1C0BDE078(uint64_t a1)
{
  result = *(v1 + 16);
  v4 = *(result + 16);
  if (!v4)
  {
    return result;
  }

  v5 = result + 32;
  v53 = *(v1 + 16);

  v54 = a1;
  while (1)
  {
    sub_1C0BDF424(v5, v56);
    v8 = *__swift_project_boxed_opaque_existential_1(v56, v56[3]);
    v9 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
    swift_beginAccess();
    if (*(*(v8 + v9) + 16))
    {
      sub_1C0BC97E0(a1);
      if (v10)
      {
        v11 = sub_1C0BEBF88();
        v12 = sub_1C0BEC138();
        if (os_log_type_enabled(v11, v12))
        {
          v13 = swift_slowAlloc();
          *v13 = 134283521;
          *(v13 + 4) = a1;
          _os_log_impl(&dword_1C0BC7000, v11, v12, "create called for existing reporterID. { reporterID=%{private}lld }", v13, 0xCu);
          MEMORY[0x1C68E0970](v13, -1, -1);
        }

        goto LABEL_5;
      }
    }

    v14 = type metadata accessor for ReporterInfo(0);
    v15 = *(v14 + 48);
    v16 = *(v14 + 52);
    v17 = swift_allocObject();
    v18 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
    v19 = sub_1C0BEBF68();
    (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
    v20 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts;
    type metadata accessor for MessageCounts();
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v55 = v17;
    *(v17 + v20) = v21;
    type metadata accessor for ReporterData();
    v22 = swift_allocObject();
    *(v22 + 24) = -1;
    *(v22 + 32) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1C0BED230;
    *(v23 + 32) = getpid();
    v24 = type metadata accessor for PerfCheck();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 16) = MEMORY[0x1E69E7CC0];
    *(v27 + 24) = v28;
    *(v27 + 32) = 0;
    *(v27 + 40) = 0;
    *(v27 + 50) = -1;
    v29 = OBJC_IVAR____TtC14AudioAnalytics9PerfCheck_logger;
    if (qword_1ED6F7520 != -1)
    {
      swift_once();
    }

    v30 = sub_1C0BEBFA8();
    v31 = __swift_project_value_buffer(v30, qword_1ED6F78D0);
    v32 = *(v30 - 8);
    (*(v32 + 16))(v27 + v29, v31, v30);
    if (qword_1ED6F7540 != -1)
    {
      swift_once();
    }

    if (byte_1ED6F78E8 == 1)
    {
      v33 = *(v27 + 24);
      *(v27 + 24) = v23;

      *(v27 + 48) = 1;
    }

    else
    {

      v34 = *(v27 + 16);

      v35 = *(v27 + 24);

      v36 = *(v27 + 40);

      (*(v32 + 8))(v27 + v29, v30);
      v37 = *(*v27 + 48);
      v38 = *(*v27 + 52);
      swift_deallocPartialClassInstance();
      v27 = 0;
    }

    *(v22 + 40) = v27;
    a1 = v54;
    *(v22 + 16) = v54;
    *(v55 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_data) = v22;
    *(v22 + 24) = -1;
    swift_beginAccess();
    v39 = *(v8 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = *(v8 + v9);
    *(v8 + v9) = 0x8000000000000000;
    v42 = sub_1C0BC97E0(v54);
    v44 = v41[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      break;
    }

    v48 = v43;
    if (v41[3] < v47)
    {
      sub_1C0BEAB90(v47, isUniquelyReferenced_nonNull_native);
      v42 = sub_1C0BC97E0(v54);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_32;
      }

LABEL_23:
      if ((v48 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_3;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v52 = v42;
    sub_1C0BEB504();
    v42 = v52;
    if ((v48 & 1) == 0)
    {
LABEL_24:
      v41[(v42 >> 6) + 8] |= 1 << v42;
      *(v41[6] + 8 * v42) = v54;
      *(v41[7] + 8 * v42) = v55;
      v50 = v41[2];
      v46 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v46)
      {
        goto LABEL_31;
      }

      v41[2] = v51;
      goto LABEL_4;
    }

LABEL_3:
    v6 = v41[7];
    v7 = *(v6 + 8 * v42);
    *(v6 + 8 * v42) = v55;

LABEL_4:
    *(v8 + v9) = v41;
    swift_endAccess();
LABEL_5:
    __swift_destroy_boxed_opaque_existential_0(v56);
    v5 += 40;
    if (!--v4)
    {
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1C0BEC298();
  __break(1u);
  return result;
}

uint64_t sub_1C0BDE5D0(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;
    v8 = *(v2 + 16);

    do
    {
      sub_1C0BDF424(v7, v10);
      v9 = *__swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_1C0BE894C(v6, a2);
      __swift_destroy_boxed_opaque_existential_0(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C0BDE668(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;
    v8 = *(v2 + 16);

    do
    {
      sub_1C0BDF424(v7, v10);
      v9 = *__swift_project_boxed_opaque_existential_1(v10, v10[3]);
      sub_1C0BE8AA0(v6, a2);
      __swift_destroy_boxed_opaque_existential_0(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

void *sub_1C0BDE700()
{
  v21[0] = sub_1C0BD1A4C();
  v21[1] = v0;
  v17 = v21;
  v1 = sub_1C0BDF908(sub_1C0BDFEF8, v16, &unk_1F40218C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528E8, &qword_1C0BED270);
  swift_arrayDestroy();

  if ((v1 & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = type metadata accessor for SessionGenericSummaryCache(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_1C0BE9908();
  v21[3] = v2;
  v21[4] = &off_1F4023DF8;
  v21[0] = v5;
  v6 = sub_1C0BDF5D0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v8 = v6[2];
  v7 = v6[3];
  if (v8 >= v7 >> 1)
  {
    v6 = sub_1C0BDF5D0((v7 > 1), v8 + 1, 1, v6);
  }

  v9 = __swift_mutable_project_boxed_opaque_existential_1(v21, v2);
  v10 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v13 + 16))(v12);
  v14 = *v12;
  v19 = v2;
  v20 = &off_1F4023DF8;
  *&v18 = v14;
  v6[2] = v8 + 1;
  sub_1C0BDFF68(&v18, &v6[5 * v8 + 4]);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return v6;
}

uint64_t sub_1C0BDE904()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C0BDEB5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  sub_1C0BDF084(a3, a4);
}

uint64_t *sub_1C0BDEBB4(uint64_t a1, int a2, __int16 a3, uint64_t a4)
{
  v42 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52900, &unk_1C0BED7C0);
  v9 = *(*(v8 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v8 - 8);
  v41 = &v40 - v11;
  v12 = *(v4 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v15 = a2 == 7;
    v14 = (v12 + 32);
    v15 = v15 && a3 == 6;
    v16 = v15;
    v17 = *(v4 + 16);

    *&v18 = 134217984;
    v40 = v18;
    while (1)
    {
      result = __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v19 = *result;
      v20 = *(*result + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesReceived);
      v21 = __CFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        __break(1u);
        return result;
      }

      *(v19 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_messagesReceived) = v22;
      if (v16)
      {
        if (*(a1 + 16))
        {
          v23 = sub_1C0BCA668(0x79745F6575737369, 0xEA00000000006570);
          if (v24)
          {
            sub_1C0BCB304(*(a1 + 56) + 32 * v23, v45);
            if (swift_dynamicCast())
            {
              if (v43 == 0x64616F6C7265766FLL && v44 == 0xE800000000000000)
              {
              }

              else
              {
                v25 = sub_1C0BEC288();

                if ((v25 & 1) == 0)
                {
                  goto LABEL_10;
                }
              }

              if (qword_1ED6F74F8 != -1)
              {
                swift_once();
              }

              if (qword_1ED6F78A0 == v42)
              {
                v26 = *(v19 + OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_singleMessageSessionReportInfo);
              }

              else
              {
                v28 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
                swift_beginAccess();
                v29 = *(v19 + v28);
                if (!*(v29 + 16) || (v30 = sub_1C0BC97E0(v42), (v31 & 1) == 0) || (v26 = *(*(v29 + 56) + 8 * v30), , !v26))
                {
                  v36 = sub_1C0BEBF68();
                  v34 = v41;
                  (*(*(v36 - 8) + 56))(v41, 1, 1, v36);
                  goto LABEL_31;
                }

                v32 = OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_startTime;
                swift_beginAccess();
                v33 = v26 + v32;
                v34 = v41;
                sub_1C0BDFFE8(v33, v41);
                v35 = sub_1C0BEBF68();
                if ((*(*(v35 - 8) + 48))(v34, 1, v35) == 1)
                {

LABEL_31:
                  sub_1C0BDFF80(v34);
                  v37 = sub_1C0BEBF88();
                  v38 = sub_1C0BEC118();
                  if (os_log_type_enabled(v37, v38))
                  {
                    v39 = swift_slowAlloc();
                    *v39 = v40;
                    *(v39 + 4) = v42;
                    _os_log_impl(&dword_1C0BC7000, v37, v38, "Received message on non-active session. { function=send, reporterID=%lld }", v39, 0xCu);
                    MEMORY[0x1C68E0970](v39, -1, -1);
                  }

                  goto LABEL_10;
                }

                sub_1C0BDFF80(v34);
              }

              v27 = *(v26 + OBJC_IVAR____TtC14AudioAnalytics12ReporterInfo_messageCounts);

              sub_1C0BEA188(a1);
            }
          }
        }
      }

LABEL_10:
      v14 += 5;
      if (!--v13)
      {
      }
    }
  }

  return result;
}

uint64_t sub_1C0BDF084(uint64_t result, void (*a2)(uint64_t))
{
  v3 = *(v2 + 16);
  v4 = *(v3 + 16);
  if (v4)
  {
    v6 = result;
    v7 = v3 + 32;
    v8 = *(v2 + 16);

    do
    {
      sub_1C0BDF424(v7, v10);
      v9 = *__swift_project_boxed_opaque_existential_1(v10, v10[3]);
      a2(v6);
      __swift_destroy_boxed_opaque_existential_0(v10);
      v7 += 40;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1C0BDF134(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = result;
    v5 = v2 + 32;
    v6 = *(v1 + 16);

    do
    {
      sub_1C0BDF424(v5, v17);
      v8 = *__swift_project_boxed_opaque_existential_1(v17, v17[3]);
      sub_1C0BE83CC(v4);
      v9 = OBJC_IVAR____TtC14AudioAnalytics26SessionGenericSummaryCache_activeReporters;
      swift_beginAccess();
      v10 = *(v8 + v9);
      v11 = sub_1C0BC97E0(v4);
      if (v12)
      {
        v13 = v11;
        v14 = *(v8 + v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v16 = *(v8 + v9);
        *(v8 + v9) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1C0BEB504();
        }

        v7 = *(*(v16 + 56) + 8 * v13);

        sub_1C0BDF9B8(v13, v16);
        *(v8 + v9) = v16;
      }

      swift_endAccess();
      __swift_destroy_boxed_opaque_existential_0(v17);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1C0BDF278(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{

  a4(a3);
}

uint64_t sub_1C0BDF3C0(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for ActiveReporterState(0);
  (*(*(active - 8) + 16))(a2, a1, active);
  return a2;
}

uint64_t sub_1C0BDF424(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

char *sub_1C0BDF4CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528D0, &unk_1C0BED620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C0BDF5D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528F0, &qword_1C0BED278);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE528F8, &qword_1C0BED280);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1C0BDF718(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52908, &qword_1C0BED288);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE52910, &unk_1C0BED290) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}