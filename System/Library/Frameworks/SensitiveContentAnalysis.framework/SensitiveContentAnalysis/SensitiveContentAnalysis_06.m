uint64_t sub_1AEACAF3C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9550);
  v35 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1AEACB1E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AEA8EECC(a2, a3);
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
      sub_1AEACAC94(v16, a4 & 1);
      v11 = sub_1AEA8EECC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1AEAFA31C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1AEACB4D4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1AEACB35C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1AEA8EECC(a2, a3);
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
      sub_1AEACAF3C(v16, a4 & 1);
      v11 = sub_1AEA8EECC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1AEAFA31C();
        __break(1u);
        return MEMORY[0x1EEE66BB8]();
      }
    }

    else
    {
      v19 = v11;
      sub_1AEACB644();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void *sub_1AEACB4D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9548);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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

id sub_1AEACB644()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9550);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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

unint64_t sub_1AEACB7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9548);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1AEA8EECC(v5, v6);
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

uint64_t sub_1AEACB8B4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001AEB085A0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461676572676761 && a2 == 0xE900000000000065 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x69446D6165727473 && a2 == 0xEF6E6F6974636572)
  {

    return 2;
  }

  else
  {
    v5 = sub_1AEAFA2BC();

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

unint64_t sub_1AEACB9E8()
{
  result = qword_1EB5E94E0;
  if (!qword_1EB5E94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E94E0);
  }

  return result;
}

unint64_t sub_1AEACBA60()
{
  result = qword_1EB5E94F8;
  if (!qword_1EB5E94F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E94F8);
  }

  return result;
}

uint64_t sub_1AEACBAD0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  v7 = *(v1 + 34);
  v8 = *(v1 + 40);
  if (((v5 | (v6 << 8)) & 0x180) == 0)
  {
    a1 = *(v2 + 48);
    v9 = *(v2 + 72);
    if (v7)
    {
      if (*(v8 + 72))
      {
        if (qword_1EB5EE328 != -1)
        {
          a1 = swift_once();
        }
      }

      else
      {
        v42 = *(v8 + 64);
        v14 = *(v8 + 56);
        v40 = *(v8 + 48);
        v15 = *(v8 + 32);
        v38 = *(v8 + 24);
        v39 = *(v8 + 40);
        v16 = v9[1];
        v50 = *v9;
        v51 = v16;
        *v52 = v9[2];
        *&v52[9] = *(v9 + 41);
        sub_1AEAD490C(&v50, v3, v5 & 1, &v55);
        v17 = v55;
        v18 = v56;
        v19 = v57;
        v20 = v58;
        v21 = v59;
        v22 = v60;
        v55 = v38;
        v56 = v15 & 1;
        v57 = HIDWORD(v15);
        v58 = v39;
        v59 = v40 & 1;
        *&v60 = v14;
        *(&v60 + 1) = v42;
        v44 = v17;
        v45 = v18;
        v46 = v19;
        v47 = v20;
        v48 = v21;
        v49 = v22;
        sub_1AEAD4604(&v55, &v44, &v50);
        v43 = (*(*v8 + 184))(&v55);
        v24 = v23;
        v25 = *v23;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v25;
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1AEACAB78(0, *(v25 + 2) + 1, 1, v25);
          *v24 = v25;
        }

        v28 = *(v25 + 2);
        v27 = *(v25 + 3);
        v29 = v28 + 1;
        if (v28 >= v27 >> 1)
        {
          v37 = sub_1AEACAB78((v27 > 1), v28 + 1, 1, v25);
          v29 = v28 + 1;
          v25 = v37;
          *v41 = v37;
        }

        *(v25 + 2) = v29;
        v30 = &v25[96 * v28];
        v31 = v51;
        *(v30 + 2) = v50;
        *(v30 + 3) = v31;
        v32 = *v52;
        v33 = *&v52[16];
        v34 = v54;
        *(v30 + 6) = v53;
        *(v30 + 7) = v34;
        *(v30 + 4) = v32;
        *(v30 + 5) = v33;
        a1 = v43(&v55, 0);
        *(v8 + 56) = 0u;
        *(v8 + 40) = 0u;
        *(v8 + 24) = 0u;
        *(v8 + 72) = 1;
      }
    }

    else
    {
      v10 = v9[1];
      v50 = *v9;
      v51 = v10;
      *v52 = v9[2];
      *&v52[9] = *(v9 + 41);
      a1 = sub_1AEAD490C(&v50, v3, v5 & 1, &v55);
      v11 = v58;
      v12 = v59;
      v13 = v56 | (v57 << 32);
      *(v8 + 24) = v55;
      *(v8 + 32) = v13;
      *(v8 + 40) = v11;
      *(v8 + 48) = v12;
      *(v8 + 56) = v60;
      *(v8 + 72) = 0;
    }
  }

  v35 = (*(*v8 + 192))(a1);
  *&v50 = v4;
  *(&v50 + 1) = v3;
  LOBYTE(v51) = v5;
  BYTE1(v51) = v6;
  (*(*v35 + 184))(&v50, v7);
}

uint64_t sub_1AEACBE30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*v2 + 168))();
  v4 = (*(*v1 + 184))(v8);
  sub_1AEAC9C18(v3);
  v5 = v4(v8, 0);
  v6 = (*(*v1 + 192))(v5);
  (*(*v2 + 192))();
  (*(*v6 + 192))();
}

uint64_t sub_1AEACBF88()
{
  v1 = v0;
  if (qword_1EB5EE320 != -1)
  {
    swift_once();
  }

  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1EB5F5C68);
  v3 = sub_1AEAF8FCC();
  v4 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEA3F000, v3, v4, "positiveDetections:", v5, 2u);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  v6 = (*(*v1 + 168))();
  v7 = v6;
  v8 = *(v6 + 16);
  if (v8)
  {
    v37 = *(v6 + 32);
    v38 = *(v6 + 48);
    CoreAnalyticsManager.StreamStats.PositiveDetection.log()();
    v9 = v8 - 1;
    if (v9)
    {
      v10 = (v7 + 128);
      do
      {
        v11 = *v10;
        v12 = v10[1];
        v10 += 6;
        v37 = v11;
        v38 = v12;
        CoreAnalyticsManager.StreamStats.PositiveDetection.log()();
        --v9;
      }

      while (v9);
    }
  }

  v13 = sub_1AEAF8FCC();
  v14 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1AEA3F000, v13, v14, "lastInitialPositive: ", v15, 2u);
    MEMORY[0x1B270E620](v15, -1, -1);
  }

  v16 = sub_1AEAF8FCC();
  v17 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v39 = v19;
    *v18 = 136315138;
    if (*(v1 + 72))
    {
      v21 = 0xE300000000000000;
      v22 = 7104878;
    }

    else
    {
      v20.n128_u64[0] = *(v1 + 56);
      *&v37 = *(v1 + 24);
      BYTE8(v37) = *(v1 + 32) & 1;
      HIDWORD(v37) = HIDWORD(*(v1 + 32));
      *&v38 = *(v1 + 40);
      BYTE8(v38) = *(v1 + 48) & 1;
      v22 = CoreAnalyticsManager.StreamStats.PositiveFrame.description.getter(v20);
      v21 = v23;
    }

    v24 = sub_1AEA45C14(v22, v21, &v39);

    *(v18 + 4) = v24;
    _os_log_impl(&dword_1AEA3F000, v16, v17, "%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B270E620](v19, -1, -1);
    MEMORY[0x1B270E620](v18, -1, -1);
  }

  v25 = sub_1AEAF8FCC();
  v26 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_1AEA3F000, v25, v26, "aggregate: ", v27, 2u);
    MEMORY[0x1B270E620](v27, -1, -1);
  }

  (*(*v1 + 192))(v28, v29, v30, v31, v32, v33, v34, v35, v37, *(&v37 + 1), v38, *(&v38 + 1));
  CoreAnalyticsManager.StreamStats.Aggregate.log()();
}

unint64_t sub_1AEACC36C()
{
  result = qword_1EB5E9508;
  if (!qword_1EB5E9508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9508);
  }

  return result;
}

unint64_t sub_1AEACC3C4()
{
  result = qword_1EB5E9510;
  if (!qword_1EB5E9510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9510);
  }

  return result;
}

unint64_t sub_1AEACC41C()
{
  result = qword_1EB5E9518;
  if (!qword_1EB5E9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9518);
  }

  return result;
}

uint64_t sub_1AEACC5CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5E94E8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1AEACC644()
{
  result = qword_1EB5E9538;
  if (!qword_1EB5E9538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9538);
  }

  return result;
}

uint64_t sub_1AEACC698(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CoreAnalyticsManager.StreamStats.Aggregate();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames()
{
  result = qword_1EB5EF050;
  if (!qword_1EB5EF050)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double CoreAnalyticsManager.StreamStats.AllFrames.init()@<D0>(void *a1@<X8>)
{
  v2 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  *a1 = 0;
  a1[1] = 0;
  sub_1AEAF8D0C();
  v3 = a1 + v2[7];
  *v3 = 0;
  v3[8] = 1;
  v4 = a1 + v2[8];
  *v4 = 0;
  v4[8] = 1;
  v5 = sub_1AEAF972C();
  *(v5 + 16) = 9;
  result = 0.0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = 0u;
  *(v5 + 96) = 0;
  *(a1 + v2[9]) = v5;
  v7 = a1 + v2[10];
  *v7 = 0;
  v7[8] = 1;
  *(v7 + 2) = 0;
  v7[24] = 1;
  *(v7 + 5) = 0;
  *(v7 + 6) = 0;
  *(v7 + 4) = 0;
  v8 = a1 + v2[11];
  *v8 = 0;
  v8[8] = 1;
  *(v8 + 2) = 0;
  v8[24] = 1;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 4) = 0;
  v9 = a1 + v2[12];
  *v9 = 0;
  v9[8] = 1;
  *(v9 + 2) = 0;
  v9[24] = 1;
  *(v9 + 5) = 0;
  *(v9 + 6) = 0;
  *(v9 + 4) = 0;
  return result;
}

uint64_t sub_1AEACC82C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1AEACC890(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*v3 + *MEMORY[0x1E69E6B68] + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_1AEACEEE0(v3 + v4, a1);

  os_unfair_lock_unlock((v3 + v5));
}

__n128 sub_1AEACC928@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *(a1 + 32) = *(v1 + 64);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 96);
  result = *(v1 + 48);
  *a1 = *(v1 + 32);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1AEACC97C(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 48);
  *(v1 + 64) = *(a1 + 32);
  *(v1 + 80) = v3;
  *(v1 + 96) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 32) = *a1;
  *(v1 + 48) = result;
  return result;
}

__n128 sub_1AEACCA20@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 144))(v5);
  v3 = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = v3;
  *(a2 + 64) = v5[4];
  result = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_1AEACCA8C(_OWORD *a1, uint64_t a2)
{
  v2 = a1[3];
  v5[2] = a1[2];
  v5[3] = v2;
  v5[4] = a1[4];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  return (*(**a2 + 152))(v5);
}

__n128 sub_1AEACCAF4@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 160);
  *(a1 + 32) = *(v1 + 144);
  *(a1 + 48) = v3;
  *(a1 + 64) = *(v1 + 176);
  result = *(v1 + 128);
  *a1 = *(v1 + 112);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1AEACCB48(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 48);
  *(v1 + 144) = *(a1 + 32);
  *(v1 + 160) = v3;
  *(v1 + 176) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 112) = *a1;
  *(v1 + 128) = result;
  return result;
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.__allocating_init()()
{
  v0 = swift_allocObject();
  CoreAnalyticsManager.StreamStats.Aggregate.init()();
  return v0;
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.init()()
{
  v1 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CoreAnalyticsManager.StreamStats.AllFrames.init()(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9558);
  v4 = swift_allocObject();
  *(v4 + ((*(*v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1AEACC82C(v3, v4 + *(*v4 + *MEMORY[0x1E69E6B68] + 16));
  *(v0 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  *(v0 + 24) = v5;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 1;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 88) = 0;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0u;
  *(v0 + 144) = 1;
  *(v0 + 152) = 0;
  *(v0 + 160) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 168) = 0;
  return v0;
}

void sub_1AEACCDC8(uint64_t a1, uint64_t a2, char *a3, double *a4, uint64_t a5, char a6)
{
  v13 = *(v6 + 16);
  v14 = (*(*v13 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v13 + v14));
  sub_1AEACCEA0(a1, a2, a3, a4, a5, a6 & 1);

  os_unfair_lock_unlock((v13 + v14));
}

void sub_1AEACCEA0(uint64_t a1, uint64_t a2, char *a3, double *a4, uint64_t a5, unint64_t a6)
{
  v11 = v6;
  v38 = *&a5;
  v16 = sub_1AEAF8D6C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *v11 + 1;
  if (__OFADD__(*v11, 1))
  {
    __break(1u);
  }

  else
  {
    v40 = a6;
    a6 = *a4;
    v7 = a4[1];
    v8 = a4[2];
    v9 = a4[5];
    v10 = a4[6];
    v39 = *(a4 + 56);
    *v11 = v20;
    a4 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
    v21 = v11 + *(a4 + 7);
    if (v21[8] == 1)
    {
      sub_1AEAF9BCC();
      *v21 = v22;
      v21[8] = 0;
    }

    sub_1AEAF9BCC();
    v23 = v11 + *(a4 + 8);
    *v23 = v24;
    v23[8] = 0;
    sub_1AEAF8D4C();
    v25 = *(a4 + 6);
    a3 = v19;
    sub_1AEAF8D1C();
    if (v26 <= 0.5)
    {
      (*(v17 + 8))(v19, v16);
      return;
    }

    (*(v17 + 24))(v11 + v25, v19, v16);
    v27 = v11[1];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (!v28)
    {
      v11[1] = v29;
      a2 = *(a4 + 9);
      a3 = *(v11 + a2);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_7;
      }

      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_19:
  a3 = sub_1AEAC7C68(a3);
LABEL_7:
  if (*(a3 + 2) <= a6)
  {
    __break(1u);
    goto LABEL_21;
  }

  v30 = *&a3[8 * a6 + 32];
  v28 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *&a3[8 * a6 + 32] = v31;
  *(v11 + a2) = a3;
  if (v39)
  {
    v32 = v11 + *(a4 + 10);
    v33 = *(v32 + 6);
    v28 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    v35 = v40;
    if (!v28)
    {
      *(v32 + 6) = v34;
      goto LABEL_14;
    }

LABEL_22:
    __break(1u);
    return;
  }

  v36 = sub_1AEA8A710(v9, v10);
  sub_1AEACEF44(v36);
  v35 = v40;
LABEL_14:
  v37 = sub_1AEA8A710(v7, v8);
  (*(v17 + 8))(v19, v16);
  sub_1AEACEF44(v37);
  if ((v35 & 1) == 0)
  {
    sub_1AEACEF44(v38);
  }
}

void sub_1AEACD164()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1AEA6E584();
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1AEACD1E8()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AEAD2618(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
  v4 = *(v0 + 24);
  os_unfair_lock_lock(v4 + 4);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v4 + 4);
}

uint64_t sub_1AEACD2C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(a2 + 16);
  v7 = *(*v6 + *MEMORY[0x1E69E6B68] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_1AEACEEE0(v6 + v7, v5);
  os_unfair_lock_unlock((v6 + v8));
  sub_1AEACD3B0(v5);
  return sub_1AEAD2FC0(v5);
}

uint64_t sub_1AEACD3B0(void *a1)
{
  if (__OFADD__(*v2, *a1))
  {
    goto LABEL_30;
  }

  v1 = v2;
  v3 = a1;
  *v2 += *a1;
  v6 = a1[1];
  v7 = v2[1];
  v8 = __OFADD__(v7, v6);
  v9 = v7 + v6;
  if (v8)
  {
    goto LABEL_31;
  }

  v2[1] = v9;
  v10 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  v11 = v3 + v10[10];
  v12 = v11[8];
  v13 = *(v11 + 2);
  v14 = v11[24];
  v15 = *(v11 + 4);
  v63 = *v11;
  v64 = v12;
  v65 = v13;
  v66 = v14;
  v67 = v15;
  v68 = *(v11 + 40);
  sub_1AEACEFB8(&v63);
  v16 = v3 + v10[11];
  v17 = v16[8];
  v18 = *(v16 + 2);
  v19 = v16[24];
  v20 = *(v16 + 4);
  v63 = *v16;
  v64 = v17;
  v65 = v18;
  v66 = v19;
  v67 = v20;
  v68 = *(v16 + 40);
  sub_1AEACEFB8(&v63);
  v21 = v3 + v10[12];
  v22 = v21[8];
  v23 = *(v21 + 2);
  v24 = v21[24];
  v25 = *(v21 + 4);
  v63 = *v21;
  v64 = v22;
  v65 = v23;
  v66 = v24;
  v67 = v25;
  v68 = *(v21 + 40);
  v2 = (v2 + v10[12]);
  sub_1AEACEFB8(&v63);
  v26 = v10[7];
  v27 = (v1 + v26);
  if (*(v1 + v26 + 8))
  {
    v28 = *(v3 + v26);
    v29 = *(v3 + v26 + 8);
  }

  else
  {
    v29 = 0;
    v28 = *v27;
    v30 = (v3 + v26);
    v31 = *v30;
    if (*(v30 + 8))
    {
      v31 = INFINITY;
    }

    if (v31 < v28)
    {
      v28 = v31;
    }
  }

  *v27 = v28;
  *(v27 + 8) = v29;
  v32 = v10[8];
  v33 = (v1 + v32);
  if (*(v1 + v32 + 8))
  {
    v34 = *(v3 + v32);
    v35 = *(v3 + v32 + 8);
  }

  else
  {
    v35 = 0;
    v34 = *v33;
    v36 = (v3 + v32);
    v37 = *v36;
    if (*(v36 + 8))
    {
      v37 = -INFINITY;
    }

    if (v37 < v34)
    {
      v34 = v37;
    }
  }

  *v33 = v34;
  *(v33 + 8) = v35;
  v4 = v10[9];
  v3 = *(v3 + v4);
  if (v3[2] < 2uLL)
  {
    goto LABEL_32;
  }

  v5 = v3[5];
  v2 = *(v1 + v4);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v39 = v2[2];
    if (v39 < 2)
    {
      break;
    }

    v40 = v2[5];
    v8 = __OFADD__(v40, v5);
    v41 = v40 + v5;
    if (v8)
    {
      goto LABEL_35;
    }

    v2[5] = v41;
    *(v1 + v4) = v2;
    if (v39 < 9 || v3[2] < 9uLL)
    {
      goto LABEL_36;
    }

    v42 = v3[6];
    v43 = v2[6];
    v8 = __OFADD__(v43, v42);
    v44 = v43 + v42;
    if (!v8)
    {
      v2[6] = v44;
      v45 = v3[7];
      v46 = v2[7];
      v8 = __OFADD__(v46, v45);
      v47 = v46 + v45;
      if (!v8)
      {
        v2[7] = v47;
        v48 = v3[8];
        v49 = v2[8];
        v8 = __OFADD__(v49, v48);
        v50 = v49 + v48;
        if (!v8)
        {
          v2[8] = v50;
          v51 = v3[9];
          v52 = v2[9];
          v8 = __OFADD__(v52, v51);
          v53 = v52 + v51;
          if (!v8)
          {
            v2[9] = v53;
            v54 = v3[10];
            v55 = v2[10];
            v8 = __OFADD__(v55, v54);
            v56 = v55 + v54;
            if (!v8)
            {
              v2[10] = v56;
              v57 = v3[11];
              v58 = v2[11];
              v8 = __OFADD__(v58, v57);
              v59 = v58 + v57;
              if (!v8)
              {
                v2[11] = v59;
                v60 = v3[12];
                v61 = v2[12];
                v8 = __OFADD__(v61, v60);
                v62 = v61 + v60;
                if (!v8)
                {
                  v2[12] = v62;
                  *(v1 + v4) = v2;
                  return result;
                }
              }
            }
          }
        }
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1AEAC7C68(v2);
    v2 = result;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t sub_1AEACD6B8()
{
  v1 = v0;
  v2 = *(v0 + 24);
  os_unfair_lock_lock(v2 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC460;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x80000001AEB08720;
  sub_1AEAD286C();
  *(inited + 48) = sub_1AEAF9BEC();
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x80000001AEB08700;
  *(inited + 72) = sub_1AEAF9BEC();
  v4 = sub_1AEAD2904(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9568);
  swift_arrayDestroy();
  os_unfair_lock_unlock(v2 + 4);
  v5 = *(v0 + 16);
  v6 = (*(*v5 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v5 + v6));
  v7 = sub_1AEACD94C();
  os_unfair_lock_unlock((v5 + v6));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16[0] = v4;
  sub_1AEAD2A70(v7, sub_1AEAD28B8, 0, isUniquelyReferenced_nonNull_native, v16);

  v10 = v16[0];
  (*(*v1 + 144))(v16, v9);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1AEAFC470;
  strcpy((v11 + 32), "FramesSampled");
  *(v11 + 46) = -4864;
  *(v11 + 48) = sub_1AEAF99EC();
  v12 = sub_1AEAD2904(v11);
  swift_setDeallocating();
  sub_1AEAD2A08(v11 + 32);
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v15 = v10;
  sub_1AEAD2A70(v12, sub_1AEAD28B8, 0, v13, &v15);

  return v15;
}

uint64_t sub_1AEACD94C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9560);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC470;
  *(inited + 32) = 0x6F5473656D617246;
  *(inited + 40) = 0xEB000000006C6174;
  v3 = *v1;
  *(inited + 48) = sub_1AEAF99EC();
  v4 = sub_1AEAD2904(inited);
  swift_setDeallocating();
  sub_1AEAD2A08(inited + 32);
  if (v3 < 1)
  {
    return v4;
  }

  result = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  v6 = result;
  v7 = (v1 + *(result + 28));
  if (v7[1] & 1) != 0 || (v8 = (v1 + *(result + 32)), (v8[1]))
  {
LABEL_8:
    v12 = *(v1 + v6[9]);
    v13 = *(v12 + 16);
    if (v13)
    {
      result = 0;
      v14 = 0;
      v15 = 0;
      v16 = v12 + 32;
      do
      {
        v17 = *(v16 + 8 * v15);
        if (v14 < v17)
        {
          result = v15;
        }

        v18 = v15 + 1;
        if (v14 <= v17)
        {
          v14 = *(v16 + 8 * v15);
        }

        ++v15;
      }

      while (v13 != v18);
      if (v14 >= 1)
      {
        v19 = sub_1AEAF99EC();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        result = sub_1AEACB35C(v19, 0xD000000000000015, 0x80000001AEB08740, isUniquelyReferenced_nonNull_native);
      }
    }

    v21 = v1 + v6[10];
    v22 = *v21;
    v23 = v21[8];
    if ((v23 & 1) == 0)
    {
      if ((~*&v22 & 0x7FF0000000000000) == 0)
      {
LABEL_87:
        __break(1u);
        goto LABEL_88;
      }

      if (v22 <= -9.22337204e18)
      {
LABEL_88:
        __break(1u);
        goto LABEL_89;
      }

      if (v22 >= 9.22337204e18)
      {
LABEL_90:
        __break(1u);
        goto LABEL_91;
      }

      v24 = sub_1AEAF99EC();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1AEACB35C(v24, 0xD000000000000013, 0x80000001AEB08760, v25);
    }

    v26 = *(v21 + 2);
    v27 = v21[24];
    if ((v27 & 1) == 0)
    {
      if ((~*&v26 & 0x7FF0000000000000) == 0)
      {
LABEL_89:
        __break(1u);
        goto LABEL_90;
      }

      if (v26 <= -9.22337204e18)
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      if (v26 >= 9.22337204e18)
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v28 = sub_1AEAF99EC();
      v29 = swift_isUniquelyReferenced_nonNull_native();
      result = sub_1AEACB35C(v28, 0xD000000000000013, 0x80000001AEB087A0, v29);
    }

    v30 = *(v21 + 5);
    if (v30 < 1)
    {
LABEL_32:
      if (((v23 | v27) & 1) == 0)
      {
        v34 = v22 - v26;
        if (COERCE__INT64(fabs(v22 - v26)) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_93:
          __break(1u);
          goto LABEL_94;
        }

        if (v34 <= -9.22337204e18)
        {
LABEL_94:
          __break(1u);
          goto LABEL_95;
        }

        if (v34 >= 9.22337204e18)
        {
LABEL_96:
          __break(1u);
          goto LABEL_97;
        }

        v35 = sub_1AEAF99EC();
        v36 = swift_isUniquelyReferenced_nonNull_native();
        result = sub_1AEACB35C(v35, 0xD000000000000018, 0x80000001AEB087C0, v36);
      }

      v37 = v1 + v6[11];
      v38 = *v37;
      v39 = v37[8];
      if ((v39 & 1) == 0)
      {
        if ((~*&v38 & 0x7FF0000000000000) == 0)
        {
LABEL_95:
          __break(1u);
          goto LABEL_96;
        }

        if (v38 <= -9.22337204e18)
        {
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

        if (v38 >= 9.22337204e18)
        {
LABEL_99:
          __break(1u);
          goto LABEL_100;
        }

        v40 = sub_1AEAF99EC();
        v41 = swift_isUniquelyReferenced_nonNull_native();
        result = sub_1AEACB35C(v40, 0x6974756C6F736552, 0xED000078614D6E6FLL, v41);
      }

      v42 = *(v37 + 2);
      v43 = v37[24];
      if ((v43 & 1) == 0)
      {
        if ((~*&v42 & 0x7FF0000000000000) == 0)
        {
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        if (v42 <= -9.22337204e18)
        {
LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

        if (v42 >= 9.22337204e18)
        {
LABEL_101:
          __break(1u);
          goto LABEL_102;
        }

        v44 = sub_1AEAF99EC();
        v45 = swift_isUniquelyReferenced_nonNull_native();
        result = sub_1AEACB35C(v44, 0x6974756C6F736552, 0xED00006E694D6E6FLL, v45);
      }

      v46 = *(v37 + 5);
      if (v46 < 1)
      {
LABEL_52:
        if (((v39 | v43) & 1) == 0)
        {
          v50 = v38 - v42;
          if (COERCE__INT64(fabs(v38 - v42)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (v50 <= -9.22337204e18)
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (v50 >= 9.22337204e18)
          {
LABEL_105:
            __break(1u);
            goto LABEL_106;
          }

          v51 = sub_1AEAF99EC();
          v52 = swift_isUniquelyReferenced_nonNull_native();
          result = sub_1AEACB35C(v51, 0xD000000000000012, 0x80000001AEB087E0, v52);
        }

        v53 = v1 + v6[12];
        v54 = *v53;
        v55 = v53[8];
        if ((v55 & 1) == 0)
        {
          v56 = v54 * 1000.0;
          if (COERCE__INT64(fabs(v54 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          if (v56 <= -9.22337204e18)
          {
LABEL_106:
            __break(1u);
            goto LABEL_107;
          }

          if (v56 >= 9.22337204e18)
          {
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          v57 = sub_1AEAF99EC();
          v58 = swift_isUniquelyReferenced_nonNull_native();
          result = sub_1AEACB35C(v57, 0x6152656C706D6153, 0xED000078614D6574, v58);
        }

        v59 = *(v53 + 2);
        v60 = v53[24];
        if ((v60 & 1) == 0)
        {
          v61 = v59 * 1000.0;
          if (COERCE__INT64(fabs(v59 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          if (v61 <= -9.22337204e18)
          {
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (v61 >= 9.22337204e18)
          {
LABEL_110:
            __break(1u);
            goto LABEL_111;
          }

          v62 = sub_1AEAF99EC();
          v63 = swift_isUniquelyReferenced_nonNull_native();
          result = sub_1AEACB35C(v62, 0x6152656C706D6153, 0xED00006E694D6574, v63);
        }

        v64 = *(v53 + 5);
        if (v64 < 1)
        {
          goto LABEL_72;
        }

        v65 = *(v53 + 4) / v64 * 1000.0;
        if (COERCE__INT64(fabs(v65)) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v65 > -9.22337204e18)
          {
            if (v65 < 9.22337204e18)
            {
              v66 = sub_1AEAF99EC();
              v67 = swift_isUniquelyReferenced_nonNull_native();
              result = sub_1AEACB35C(v66, 0x6152656C706D6153, 0xEE006E61654D6574, v67);
LABEL_72:
              if ((v55 | v60))
              {
                return v4;
              }

              v68 = (v54 - v59) * 1000.0;
              if (COERCE__INT64(fabs(v68)) <= 0x7FEFFFFFFFFFFFFFLL)
              {
                if (v68 > -9.22337204e18)
                {
                  if (v68 < 9.22337204e18)
                  {
                    v69 = sub_1AEAF99EC();
                    v70 = swift_isUniquelyReferenced_nonNull_native();
                    sub_1AEACB35C(v69, 0xD000000000000012, 0x80000001AEB08800, v70);
                    return v4;
                  }

                  goto LABEL_113;
                }

LABEL_112:
                __break(1u);
LABEL_113:
                __break(1u);
                goto LABEL_114;
              }

LABEL_111:
              __break(1u);
              goto LABEL_112;
            }

            goto LABEL_86;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }

LABEL_84:
        __break(1u);
        goto LABEL_85;
      }

      v47 = *(v37 + 4) / v46;
      if (COERCE__INT64(fabs(v47)) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v47 > -9.22337204e18)
        {
          if (v47 < 9.22337204e18)
          {
            v48 = sub_1AEAF99EC();
            v49 = swift_isUniquelyReferenced_nonNull_native();
            result = sub_1AEACB35C(v48, 0x6974756C6F736552, 0xEE006E61654D6E6FLL, v49);
            goto LABEL_52;
          }

LABEL_83:
          __break(1u);
          goto LABEL_84;
        }

LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v31 = *(v21 + 4) / v30;
    if (COERCE__INT64(fabs(v31)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v31 > -9.22337204e18)
    {
      if (v31 < 9.22337204e18)
      {
        v32 = sub_1AEAF99EC();
        v33 = swift_isUniquelyReferenced_nonNull_native();
        result = sub_1AEACB35C(v32, 0xD000000000000014, 0x80000001AEB08780, v33);
        goto LABEL_32;
      }

LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    __break(1u);
    goto LABEL_80;
  }

  v9 = *v8 - *v7;
  if (COERCE__INT64(fabs(v9)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  if (v9 < 9.22337204e18)
  {
    v10 = sub_1AEAF99EC();
    v11 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1AEACB35C(v10, 0x75446D6165727453, 0xEE006E6F69746172, v11);
    goto LABEL_8;
  }

LABEL_116:
  __break(1u);
  return result;
}

uint64_t sub_1AEACE31C()
{
  v1 = 0xD000000000000014;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656D6172466C6C61;
  }
}

uint64_t sub_1AEACE388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAD2D0C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEACE3B0(uint64_t a1)
{
  v2 = sub_1AEAD40A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEACE3EC(uint64_t a1)
{
  v2 = sub_1AEAD40A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.__allocating_init(from:)(uint64_t a1)
{
  v2 = swift_allocObject();
  CoreAnalyticsManager.StreamStats.Aggregate.init(from:)(a1);
  return v2;
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.init(from:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CoreAnalyticsManager.StreamStats.AllFrames.init()(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9558);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_1AEACC82C(v7, v8 + *(*v8 + *MEMORY[0x1E69E6B68] + 16));
  *(v3 + 16) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8E20);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  v10 = (v9 + 16);
  *(v3 + 24) = v9;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 1;
  *(v3 + 72) = 0;
  *(v3 + 80) = 1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 88) = 0;
  v19 = 1;
  v18 = 1;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 1;
  *(v3 + 152) = 0;
  *(v3 + 160) = 1;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 168) = 0;
  v16 = v3;
  v17 = a1;
  v13 = sub_1AEAD2E3C;
  v14 = &v15;

  os_unfair_lock_lock(v10);
  sub_1AEA70FE8();
  os_unfair_lock_unlock(v10);

  if (v2)
  {
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_1AEACE698(uint64_t a1, void *a2, uint64_t a3)
{
  v16 = a3;
  v17 = a1;
  v5 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9600);
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1AEAD40A0();
  result = sub_1AEAFA41C();
  if (!v3)
  {
    v12 = v17;
    LOBYTE(v25) = 0;
    sub_1AEAD4164(&qword_1EB5E9608, type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames);
    v13 = v18;
    sub_1AEAFA14C();
    sub_1AEAD2FC0(v12);
    sub_1AEACC82C(v7, v12);
    v31 = 1;
    sub_1AEAD41AC();
    sub_1AEAFA14C();
    v22 = v27;
    v23 = v28;
    v24 = v29;
    v20 = v25;
    v21 = v26;
    v14 = v16;
    (*(*v16 + 128))(&v20);
    v30 = 2;
    sub_1AEAFA14C();
    v19[2] = v22;
    v19[3] = v23;
    v19[4] = v24;
    v19[0] = v20;
    v19[1] = v21;
    (*(*v14 + 152))(v19);
    return (*(v8 + 8))(v10, v13);
  }

  return result;
}

void sub_1AEACE9E4()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AEAD2EFC(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_1AEACEA88(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E95E8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-1] - v8;
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1AEAD40A0();
  sub_1AEAFA42C();
  v18 = 0;
  type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  sub_1AEAD4164(&qword_1EB5E95F0, type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames);
  v10 = sub_1AEAFA22C();
  if (!v3)
  {
    (*(*a3 + 120))(v15, v10);
    v17 = 1;
    sub_1AEAD40F4();
    v11 = sub_1AEAFA22C();
    (*(*a3 + 144))(v14, v11);
    v16 = 2;
    sub_1AEAFA22C();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.deinit()
{

  return v0;
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 192, 7);
}

uint64_t sub_1AEACED48@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 208))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CoreAnalyticsManager.StreamStats.AllFrames.lastContributingTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames() + 24);
  v4 = sub_1AEAF8D6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CoreAnalyticsManager.StreamStats.AllFrames.orientationFrequency.getter()
{
  type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
}

uint64_t sub_1AEACEEE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AEACEF44(double a1)
{
  v2 = *(v1 + 40);
  v3 = __OFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v4;
    *(v1 + 32) = *(v1 + 32) + a1;
    v5 = *v1;
    if (*(v1 + 8))
    {
      v5 = -INFINITY;
    }

    if (v5 < a1)
    {
      v5 = a1;
    }

    *v1 = v5;
    *(v1 + 8) = 0;
    v6 = *(v1 + 16);
    if (*(v1 + 24))
    {
      v6 = INFINITY;
    }

    if (v6 < a1)
    {
      a1 = v6;
    }

    *(v1 + 16) = a1;
    *(v1 + 24) = 0;
  }
}

uint64_t sub_1AEACEFB8(uint64_t result)
{
  v2 = *(result + 8);
  v3 = *(result + 16);
  if (*(v1 + 8))
  {
    v4 = *result;
  }

  else
  {
    v4 = *result;
    if (*(result + 8))
    {
      v4 = -INFINITY;
    }

    if (*v1 > v4)
    {
      v4 = *v1;
    }

    v2 = 0;
  }

  v5 = *(result + 24);
  v6 = *(result + 32);
  v8 = *(result + 40);
  v7 = *(result + 48);
  *v1 = v4;
  *(v1 + 8) = v2;
  if (*(v1 + 24))
  {
    v9 = v3;
  }

  else
  {
    v9 = *(v1 + 16);
    v10 = v3;
    if (v5)
    {
      v10 = INFINITY;
    }

    if (v10 < v9)
    {
      v9 = v10;
    }

    LOBYTE(v5) = 0;
  }

  *(v1 + 16) = v9;
  *(v1 + 24) = v5;
  *(v1 + 32) = v6 + *(v1 + 32);
  v11 = *(v1 + 40);
  v12 = __OFADD__(v11, v8);
  v13 = v11 + v8;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 40) = v13;
    v14 = *(v1 + 48);
    v12 = __OFADD__(v14, v7);
    v15 = v14 + v7;
    if (!v12)
    {
      *(v1 + 48) = v15;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1AEACF080(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F5473656D617266;
    v6 = 0xD000000000000011;
    if (a1 == 2)
    {
      v6 = 0xD000000000000014;
    }

    if (a1)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x6974756C6F736572;
    if (a1 != 7)
    {
      v2 = 0x6152656C706D6173;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x695474736574616CLL;
    if (a1 != 4)
    {
      v3 = 0xD000000000000014;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1AEACF1D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAD3A64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEACF208(uint64_t a1)
{
  v2 = sub_1AEAD2F18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEACF244(uint64_t a1)
{
  v2 = sub_1AEAD2F18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.AllFrames.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9570);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD2F18();
  sub_1AEAFA42C();
  LOBYTE(v26) = 0;
  sub_1AEAFA20C();
  if (!v2)
  {
    LOBYTE(v26) = 1;
    sub_1AEAFA20C();
    v10 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
    LOBYTE(v26) = 2;
    sub_1AEAF8D6C();
    sub_1AEAD4164(&qword_1EB5E9578, MEMORY[0x1E6969530]);
    sub_1AEAFA22C();
    LOBYTE(v26) = 3;
    sub_1AEAFA1BC();
    LOBYTE(v26) = 4;
    sub_1AEAFA1BC();
    v26 = *(v3 + v10[9]);
    v32 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94A0);
    sub_1AEAC7E14(&qword_1EB5E94A8);
    sub_1AEAFA22C();
    v11 = (v3 + v10[10]);
    v12 = *(v11 + 8);
    v13 = v11[2];
    v14 = *(v11 + 24);
    v15 = v11[4];
    v26 = *v11;
    v27 = v12;
    v28 = v13;
    v29 = v14;
    v30 = v15;
    v31 = *(v11 + 5);
    v32 = 6;
    sub_1AEAD2F6C();
    sub_1AEAFA22C();
    v16 = (v3 + v10[11]);
    v17 = *(v16 + 8);
    v18 = v16[2];
    v19 = *(v16 + 24);
    v20 = v16[4];
    v26 = *v16;
    v27 = v17;
    v28 = v18;
    v29 = v19;
    v30 = v20;
    v31 = *(v16 + 5);
    v32 = 7;
    sub_1AEAFA22C();
    v21 = (v3 + v10[12]);
    v22 = *(v21 + 8);
    v23 = v21[2];
    v24 = *(v21 + 24);
    v25 = v21[4];
    v26 = *v21;
    v27 = v22;
    v28 = v23;
    v29 = v24;
    v30 = v25;
    v31 = *(v21 + 5);
    v32 = 8;
    sub_1AEAFA22C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CoreAnalyticsManager.StreamStats.AllFrames.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v58 = sub_1AEAF8D6C();
  v55 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9588);
  v56 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v5 = &v48 - v4;
  v6 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  v7 = (v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v9 = 0;
  v9[1] = 0;
  v54 = v7[8];
  sub_1AEAF8D0C();
  v10 = (v9 + v7[9]);
  *v10 = 0;
  v53 = v10;
  *(v10 + 8) = 1;
  v11 = (v9 + v7[10]);
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = sub_1AEAF972C();
  *(v12 + 16) = 9;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(v12 + 64) = 0u;
  *(v12 + 80) = 0u;
  *(v12 + 96) = 0;
  v52 = v7[11];
  *(v9 + v52) = v12;
  v13 = v9 + v7[12];
  *v13 = 0;
  v13[8] = 1;
  *(v13 + 2) = 0;
  v13[24] = 1;
  *(v13 + 5) = 0;
  *(v13 + 6) = 0;
  *(v13 + 4) = 0;
  v14 = v9 + v7[13];
  *v14 = 0;
  v14[8] = 1;
  *(v14 + 2) = 0;
  v14[24] = 1;
  *(v14 + 5) = 0;
  *(v14 + 6) = 0;
  *(v14 + 4) = 0;
  v15 = v7[14];
  v62 = v9;
  v16 = v9 + v15;
  *v16 = 0;
  v16[8] = 1;
  *(v16 + 2) = 0;
  v16[24] = 1;
  *(v16 + 5) = 0;
  *(v16 + 6) = 0;
  *(v16 + 4) = 0;
  v17 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1AEAD2F18();
  v59 = v5;
  v18 = v61;
  sub_1AEAFA41C();
  if (v18)
  {
    v19 = v62;
  }

  else
  {
    v50 = v12;
    v61 = v11;
    v20 = v57;
    v49 = v13;
    v48 = v14;
    v21 = v58;
    v22 = v56;
    LOBYTE(v64) = 0;
    v23 = sub_1AEAFA12C();
    v19 = v62;
    *v62 = v23;
    LOBYTE(v64) = 1;
    *(v19 + 8) = sub_1AEAFA12C();
    LOBYTE(v64) = 2;
    sub_1AEAD4164(&qword_1EB5E9590, MEMORY[0x1E6969530]);
    sub_1AEAFA14C();
    (*(v55 + 40))(v19 + v54, v20, v21);
    LOBYTE(v64) = 3;
    v24 = sub_1AEAFA0DC();
    v25 = v53;
    *v53 = v24;
    *(v25 + 8) = v26 & 1;
    LOBYTE(v64) = 4;
    v27 = sub_1AEAFA0DC();
    v28 = v61;
    *v61 = v27;
    *(v28 + 8) = v29 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E94A0);
    v70 = 5;
    sub_1AEAC7E14(&qword_1EB5E94B0);
    sub_1AEAFA14C();

    *(v19 + v52) = v64;
    v70 = 6;
    sub_1AEAD301C();
    sub_1AEAFA14C();
    v31 = v65;
    v32 = v66;
    v33 = v67;
    v34 = v68;
    v35 = v49;
    *v49 = v64;
    *(v35 + 8) = v31;
    v35[2] = v32;
    *(v35 + 24) = v33;
    v35[4] = v34;
    *(v35 + 5) = v69;
    v70 = 7;
    sub_1AEAFA14C();
    v36 = v22;
    v37 = v65;
    v38 = v66;
    v39 = v67;
    v40 = v68;
    v41 = v48;
    *v48 = v64;
    *(v41 + 8) = v37;
    v41[2] = v38;
    *(v41 + 24) = v39;
    v41[4] = v40;
    *(v41 + 5) = v69;
    v70 = 8;
    v43 = v59;
    v42 = v60;
    sub_1AEAFA14C();
    (*(v36 + 8))(v43, v42);
    v44 = v65;
    v45 = v66;
    v46 = v67;
    v47 = v68;
    *v16 = v64;
    v16[8] = v44;
    *(v16 + 2) = v45;
    v16[24] = v46;
    *(v16 + 4) = v47;
    *(v16 + 40) = v69;
    sub_1AEACEEE0(v19, v51);
  }

  __swift_destroy_boxed_opaque_existential_1(v63);
  return sub_1AEAD2FC0(v19);
}

unint64_t sub_1AEACFD8C()
{
  v1 = 0x615373656D617266;
  v2 = 0x6F5073656D617266;
  if (*v0 != 2)
  {
    v2 = 0x6E656469666E6F63;
  }

  if (*v0)
  {
    v1 = 0xD000000000000019;
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

uint64_t sub_1AEACFE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAD3D68(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEACFE50(uint64_t a1)
{
  v2 = sub_1AEAD3070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEACFE8C(uint64_t a1)
{
  v2 = sub_1AEAD3070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.SampledFrames.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E95A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v7;
  v21 = v8;
  v20 = *(v1 + 32);
  v19 = *(v1 + 40);
  v18 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 72);
  v17 = *(v1 + 64);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD3070();
  sub_1AEAFA42C();
  LOBYTE(v26) = 0;
  v11 = v24;
  sub_1AEAFA20C();
  if (!v11)
  {
    v24 = v10;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    LOBYTE(v26) = 1;
    sub_1AEAFA20C();
    LOBYTE(v26) = 2;
    sub_1AEAFA20C();
    v23 = 0;
    v26 = v15;
    v27 = v14;
    v28 = v13;
    v29 = v12;
    v30 = v9;
    v31 = v17;
    v32 = v24;
    v25 = 3;
    sub_1AEAD2F6C();
    sub_1AEAFA22C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CoreAnalyticsManager.StreamStats.SampledFrames.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E95A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  v27 = 1;
  v26 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD3070();
  sub_1AEAFA41C();
  if (!v2)
  {
    LOBYTE(v20) = 0;
    v9 = sub_1AEAFA12C();
    LOBYTE(v20) = 1;
    v10 = sub_1AEAFA12C();
    LOBYTE(v20) = 2;
    v19 = sub_1AEAFA12C();
    v28 = 3;
    sub_1AEAD301C();
    sub_1AEAFA14C();
    (*(v6 + 8))(v8, v5);
    v12 = v19;
    v13 = v20;
    v14 = v21;
    v15 = v22;
    v16 = v23;
    v17 = v24;
    v27 = v21;
    v26 = v23;
    *a2 = v9;
    *(a2 + 8) = v10;
    *(a2 + 16) = v12;
    *(a2 + 24) = v13;
    *(a2 + 32) = v14;
    *(a2 + 40) = v15;
    *(a2 + 48) = v16;
    *(a2 + 56) = v17;
    *(a2 + 64) = v25;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAD03B0()
{
  v1 = *v0;
  v2 = 7889261;
  v3 = 0x6C61746F74;
  v4 = 0x73656C706D6173;
  if (v1 != 3)
  {
    v4 = 0x6C706D61536C696ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7235949;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AEAD043C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAD3EEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAD0470(uint64_t a1)
{
  v2 = sub_1AEAD30C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAD04AC(uint64_t a1)
{
  v2 = sub_1AEAD30C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.MinMaxStat.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E95B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v7 = *(v1 + 40);
  v10[0] = *(v1 + 48);
  v10[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD30C4();
  sub_1AEAFA42C();
  v18 = 0;
  v8 = v13;
  sub_1AEAFA1BC();
  if (!v8)
  {
    v17 = 1;
    sub_1AEAFA1BC();
    v16 = 2;
    sub_1AEAFA1FC();
    v15 = 3;
    sub_1AEAFA20C();
    v14 = 4;
    sub_1AEAFA20C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CoreAnalyticsManager.StreamStats.MinMaxStat.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E95B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD30C4();
  sub_1AEAFA41C();
  if (!v2)
  {
    v28 = 0;
    v9 = sub_1AEAFA0DC();
    v11 = v10;
    v12 = v9;
    v27 = 1;
    v13 = sub_1AEAFA0DC();
    v23 = v14;
    v22 = v13;
    v26 = 2;
    sub_1AEAFA11C();
    v16 = v15;
    v25 = 3;
    v21 = sub_1AEAFA12C();
    v24 = 4;
    v20 = sub_1AEAFA12C();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 16) = v22;
    *(a2 + 24) = v23 & 1;
    *(a2 + 32) = v16;
    v18 = v20;
    *(a2 + 40) = v21;
    *(a2 + 48) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CoreAnalyticsManager.StreamStats.Aggregate.description.getter()
{
  v1 = v0;
  v2 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1AEA61C58((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x656D6172466C6C61;
  *(v5 + 5) = 0xEB00000000203A73;
  v6 = *(v0 + 16);
  v7 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v7));
  v8 = CoreAnalyticsManager.StreamStats.AllFrames.description.getter();
  v10 = v9;
  os_unfair_lock_unlock((v6 + v7));
  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_1AEA61C58((v12 > 1), v13 + 1, 1, v2);
    v2 = v11;
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = v8;
  *(v14 + 5) = v10;
  v19 = v2;
  v15 = *(v1 + 24);
  MEMORY[0x1EEE9AC00](v11);
  os_unfair_lock_lock(v15 + 4);
  sub_1AEA6E460(&v18);
  os_unfair_lock_unlock(v15 + 4);
  sub_1AEAC9D0C(v18);
  v18 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v16 = sub_1AEAF955C();

  return v16;
}

uint64_t CoreAnalyticsManager.StreamStats.AllFrames.description.getter()
{
  v1 = v0;
  sub_1AEAF9E1C();

  strcpy(v102, "framesTotal: ");
  HIWORD(v102[1]) = -4864;
  v107 = *v0;
  v2 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v2);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v3 = v102[0];
  v4 = v102[1];
  v5 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v7 = *(v5 + 2);
  v6 = *(v5 + 3);
  if (v7 >= v6 >> 1)
  {
    v5 = sub_1AEA61C58((v6 > 1), v7 + 1, 1, v5);
  }

  *(v5 + 2) = v7 + 1;
  v8 = &v5[16 * v7];
  *(v8 + 4) = v3;
  *(v8 + 5) = v4;
  sub_1AEAF9E1C();

  v102[0] = 0xD000000000000014;
  v102[1] = 0x80000001AEB08860;
  v107 = v0[1];
  v9 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v9);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v11 = *(v5 + 2);
  v10 = *(v5 + 3);
  if (v11 >= v10 >> 1)
  {
    v5 = sub_1AEA61C58((v10 > 1), v11 + 1, 1, v5);
  }

  *(v5 + 2) = v11 + 1;
  v12 = &v5[16 * v11];
  *(v12 + 4) = 0xD000000000000014;
  *(v12 + 5) = 0x80000001AEB08860;
  sub_1AEAF9E1C();

  v102[0] = 0xD000000000000016;
  v102[1] = 0x80000001AEB08880;
  v13 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  v14 = sub_1AEAF8CFC();
  MEMORY[0x1B270CB50](v14);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v16 = *(v5 + 2);
  v15 = *(v5 + 3);
  if (v16 >= v15 >> 1)
  {
    v5 = sub_1AEA61C58((v15 > 1), v16 + 1, 1, v5);
  }

  v17 = 7104878;
  *(v5 + 2) = v16 + 1;
  v18 = &v5[16 * v16];
  *(v18 + 4) = 0xD000000000000016;
  *(v18 + 5) = 0x80000001AEB08880;
  sub_1AEAF9E1C();

  v102[0] = 0xD000000000000013;
  v102[1] = 0x80000001AEB088A0;
  if (*(v0 + v13[7] + 8))
  {
    v19 = 0xE300000000000000;
    v20 = 7104878;
  }

  else
  {
    v20 = sub_1AEAF998C();
    v19 = v21;
  }

  MEMORY[0x1B270CB50](v20, v19);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v22 = v102[0];
  v23 = v102[1];
  v25 = *(v5 + 2);
  v24 = *(v5 + 3);
  if (v25 >= v24 >> 1)
  {
    v5 = sub_1AEA61C58((v24 > 1), v25 + 1, 1, v5);
  }

  *(v5 + 2) = v25 + 1;
  v26 = &v5[16 * v25];
  *(v26 + 4) = v22;
  *(v26 + 5) = v23;
  sub_1AEAF9E1C();

  v102[0] = 0xD000000000000011;
  v102[1] = 0x80000001AEB088C0;
  if (*(v0 + v13[8] + 8))
  {
    v27 = 0xE300000000000000;
  }

  else
  {
    v17 = sub_1AEAF998C();
    v27 = v28;
  }

  MEMORY[0x1B270CB50](v17, v27);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v29 = v102[0];
  v30 = v102[1];
  v32 = *(v5 + 2);
  v31 = *(v5 + 3);
  v33 = v31 >> 1;
  v34 = v32 + 1;
  if (v31 >> 1 <= v32)
  {
    v5 = sub_1AEA61C58((v31 > 1), v32 + 1, 1, v5);
    v31 = *(v5 + 3);
    v33 = v31 >> 1;
  }

  *(v5 + 2) = v34;
  v35 = &v5[16 * v32];
  *(v35 + 4) = v29;
  *(v35 + 5) = v30;
  v36 = v32 + 2;
  if (v33 < v36)
  {
    v5 = sub_1AEA61C58((v31 > 1), v36, 1, v5);
  }

  *(v5 + 2) = v36;
  v37 = &v5[16 * v34];
  *(v37 + 4) = 0xD000000000000016;
  *(v37 + 5) = 0x80000001AEB088E0;
  v100 = v13;
  v101 = v1;
  v38 = *(v1 + v13[9]);
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = 0;
    v41 = v38 + 32;
    do
    {
      v42 = *(v41 + 8 * v40);
      sub_1AEAF9E1C();

      strcpy(v102, "    index ");
      BYTE3(v102[1]) = 0;
      HIDWORD(v102[1]) = -369098752;
      v43 = sub_1AEAFA27C();
      MEMORY[0x1B270CB50](v43);

      MEMORY[0x1B270CB50](0x71657266203E2D20, 0xE900000000000020);
      v107 = v42;
      v44 = sub_1AEAFA27C();
      MEMORY[0x1B270CB50](v44);

      v46 = v102[0];
      v45 = v102[1];
      v48 = *(v5 + 2);
      v47 = *(v5 + 3);
      v49 = v48 + 1;
      if (v48 >= v47 >> 1)
      {
        v5 = sub_1AEA61C58((v47 > 1), v48 + 1, 1, v5);
      }

      ++v40;
      *(v5 + 2) = v49;
      v50 = &v5[16 * v48];
      *(v50 + 4) = v46;
      *(v50 + 5) = v45;
    }

    while (v39 != v40);
  }

  else
  {
    v49 = *(v5 + 2);
  }

  v51 = *(v5 + 3);
  if (v49 >= v51 >> 1)
  {
    v5 = sub_1AEA61C58((v51 > 1), v49 + 1, 1, v5);
  }

  *(v5 + 2) = v49 + 1;
  v52 = &v5[16 * v49];
  *(v52 + 4) = 0xD000000000000012;
  *(v52 + 5) = 0x80000001AEB08900;
  v53 = v101 + v100[10];
  v54 = *(v53 + 8);
  v55 = *(v53 + 16);
  v56 = *(v53 + 24);
  v57 = *(v53 + 32);
  v102[0] = *v53;
  LOBYTE(v102[1]) = v54;
  v103 = v55;
  v104 = v56;
  v105 = v57;
  v106 = *(v53 + 40);
  v58 = CoreAnalyticsManager.StreamStats.MinMaxStat.description.getter();
  v61 = *(v5 + 2);
  v60 = *(v5 + 3);
  v62 = v61 + 1;
  if (v61 >= v60 >> 1)
  {
    v91 = v58;
    v92 = v59;
    v93 = sub_1AEA61C58((v60 > 1), v61 + 1, 1, v5);
    v59 = v92;
    v5 = v93;
    v58 = v91;
  }

  *(v5 + 2) = v62;
  v63 = &v5[16 * v61];
  *(v63 + 4) = v58;
  *(v63 + 5) = v59;
  v64 = *(v5 + 3);
  if ((v61 + 2) > (v64 >> 1))
  {
    v5 = sub_1AEA61C58((v64 > 1), v61 + 2, 1, v5);
  }

  *(v5 + 2) = v61 + 2;
  v65 = &v5[16 * v62];
  *(v65 + 4) = 0xD000000000000010;
  *(v65 + 5) = 0x80000001AEB08920;
  v66 = v101 + v100[11];
  v67 = *(v66 + 8);
  v68 = *(v66 + 16);
  v69 = *(v66 + 24);
  v70 = *(v66 + 32);
  v102[0] = *v66;
  LOBYTE(v102[1]) = v67;
  v103 = v68;
  v104 = v69;
  v105 = v70;
  v106 = *(v66 + 40);
  v71 = CoreAnalyticsManager.StreamStats.MinMaxStat.description.getter();
  v74 = *(v5 + 2);
  v73 = *(v5 + 3);
  v75 = v74 + 1;
  if (v74 >= v73 >> 1)
  {
    v94 = v71;
    v95 = v72;
    v96 = sub_1AEA61C58((v73 > 1), v74 + 1, 1, v5);
    v72 = v95;
    v5 = v96;
    v71 = v94;
  }

  *(v5 + 2) = v75;
  v76 = &v5[16 * v74];
  *(v76 + 4) = v71;
  *(v76 + 5) = v72;
  v77 = *(v5 + 3);
  if ((v74 + 2) > (v77 >> 1))
  {
    v5 = sub_1AEA61C58((v77 > 1), v74 + 2, 1, v5);
  }

  *(v5 + 2) = v74 + 2;
  v78 = &v5[16 * v75];
  strcpy(v78 + 32, "sampleRate: ");
  v78[45] = 0;
  *(v78 + 23) = -5120;
  v79 = v101 + v100[12];
  v80 = *(v79 + 8);
  v81 = *(v79 + 16);
  v82 = *(v79 + 24);
  v83 = *(v79 + 32);
  v102[0] = *v79;
  LOBYTE(v102[1]) = v80;
  v103 = v81;
  v104 = v82;
  v105 = v83;
  v106 = *(v79 + 40);
  v84 = CoreAnalyticsManager.StreamStats.MinMaxStat.description.getter();
  v87 = *(v5 + 2);
  v86 = *(v5 + 3);
  if (v87 >= v86 >> 1)
  {
    v97 = v84;
    v98 = v85;
    v99 = sub_1AEA61C58((v86 > 1), v87 + 1, 1, v5);
    v85 = v98;
    v5 = v99;
    v84 = v97;
  }

  *(v5 + 2) = v87 + 1;
  v88 = &v5[16 * v87];
  *(v88 + 4) = v84;
  *(v88 + 5) = v85;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v89 = sub_1AEAF955C();

  return v89;
}

uint64_t CoreAnalyticsManager.StreamStats.SampledFrames.description.getter()
{
  sub_1AEAF9E1C();

  sub_1AEAC4A60();
  v0 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v0);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v1 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1AEA61C58((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[16 * v3];
  *(v4 + 4) = 0x615373656D617266;
  *(v4 + 5) = 0xEF203A64656C706DLL;
  sub_1AEAF9E1C();

  v5 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v5);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v7 = *(v1 + 2);
  v6 = *(v1 + 3);
  if (v7 >= v6 >> 1)
  {
    v1 = sub_1AEA61C58((v6 > 1), v7 + 1, 1, v1);
  }

  *(v1 + 2) = v7 + 1;
  v8 = &v1[16 * v7];
  *(v8 + 4) = 0xD00000000000001BLL;
  *(v8 + 5) = 0x80000001AEB08940;
  sub_1AEAF9E1C();

  v9 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v9);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v11 = *(v1 + 2);
  v10 = *(v1 + 3);
  v12 = v10 >> 1;
  v13 = v11 + 1;
  if (v10 >> 1 <= v11)
  {
    v1 = sub_1AEA61C58((v10 > 1), v11 + 1, 1, v1);
    v10 = *(v1 + 3);
    v12 = v10 >> 1;
  }

  *(v1 + 2) = v13;
  v14 = &v1[16 * v11];
  *(v14 + 4) = 0xD000000000000010;
  *(v14 + 5) = 0x80000001AEB08960;
  if (v12 < (v11 + 2))
  {
    v1 = sub_1AEA61C58((v10 > 1), v11 + 2, 1, v1);
  }

  *(v1 + 2) = v11 + 2;
  v15 = &v1[16 * v13];
  strcpy(v15 + 32, "confidence: ");
  v15[45] = 0;
  *(v15 + 23) = -5120;
  v16 = CoreAnalyticsManager.StreamStats.MinMaxStat.description.getter();
  v19 = *(v1 + 2);
  v18 = *(v1 + 3);
  if (v19 >= v18 >> 1)
  {
    v23 = v16;
    v24 = v17;
    v25 = sub_1AEA61C58((v18 > 1), v19 + 1, 1, v1);
    v17 = v24;
    v1 = v25;
    v16 = v23;
  }

  *(v1 + 2) = v19 + 1;
  v20 = &v1[16 * v19];
  *(v20 + 4) = v16;
  *(v20 + 5) = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v21 = sub_1AEAF955C();

  return v21;
}

Swift::Void __swiftcall CoreAnalyticsManager.StreamStats.Aggregate.log()()
{
  v1 = v0;
  if (qword_1EB5EE7B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1EB5F5C80);
  v3 = sub_1AEAF8FCC();
  v4 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1AEA3F000, v3, v4, "allFrames: ", v5, 2u);
    MEMORY[0x1B270E620](v5, -1, -1);
  }

  v6 = v1[2];
  v7 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v7));
  CoreAnalyticsManager.StreamStats.AllFrames.log()();
  os_unfair_lock_unlock((v6 + v7));
  v8 = sub_1AEAF8FCC();
  v9 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1AEA3F000, v8, v9, "initialSampledFrames: ", v10, 2u);
    MEMORY[0x1B270E620](v10, -1, -1);
  }

  (*(*v1 + 120))(v14);
  CoreAnalyticsManager.StreamStats.SampledFrames.log()();
  v11 = sub_1AEAF8FCC();
  v12 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1AEA3F000, v11, v12, "allSampledFrames: ", v13, 2u);
    MEMORY[0x1B270E620](v13, -1, -1);
  }

  (*(*v1 + 144))(v14);
  CoreAnalyticsManager.StreamStats.SampledFrames.log()();
}

uint64_t sub_1AEAD1AB4()
{
  if (qword_1EB5EE7B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();

  return __swift_project_value_buffer(v0, qword_1EB5F5C80);
}

Swift::Void __swiftcall CoreAnalyticsManager.StreamStats.AllFrames.log()()
{
  v1 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB5EE7B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v4, qword_1EB5F5C80);
  sub_1AEACEEE0(v0, v3);
  v5 = sub_1AEAF8FCC();
  v6 = sub_1AEAF9A8C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    v9 = CoreAnalyticsManager.StreamStats.AllFrames.description.getter();
    v11 = v10;
    sub_1AEAD2FC0(v3);
    v12 = sub_1AEA45C14(v9, v11, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1AEA3F000, v5, v6, "%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B270E620](v8, -1, -1);
    MEMORY[0x1B270E620](v7, -1, -1);
  }

  else
  {

    sub_1AEAD2FC0(v3);
  }
}

Swift::Void __swiftcall CoreAnalyticsManager.StreamStats.SampledFrames.log()()
{
  if (qword_1EB5EE7B0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v0, qword_1EB5F5C80);
  oslog = sub_1AEAF8FCC();
  v1 = sub_1AEAF9A8C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = CoreAnalyticsManager.StreamStats.SampledFrames.description.getter();
    v6 = sub_1AEA45C14(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEA3F000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1B270E620](v3, -1, -1);
    MEMORY[0x1B270E620](v2, -1, -1);
  }
}

uint64_t CoreAnalyticsManager.StreamStats.MinMaxStat.description.getter()
{
  v1 = 7104878;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40);
  strcpy(v55, "    max: ");
  WORD1(v55[1]) = 0;
  HIDWORD(v55[1]) = -385875968;
  if (v2)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = sub_1AEAF998C();
    v5 = v7;
  }

  MEMORY[0x1B270CB50](v6, v5);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v8 = v55[0];
  v9 = v55[1];
  v10 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AEA61C58((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = v8;
  *(v13 + 5) = v9;
  strcpy(v55, "    min: ");
  WORD1(v55[1]) = 0;
  HIDWORD(v55[1]) = -385875968;
  if (v3)
  {
    v14 = 0xE300000000000000;
    v15 = 7104878;
  }

  else
  {
    v15 = sub_1AEAF998C();
    v14 = v16;
  }

  MEMORY[0x1B270CB50](v15, v14);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v17 = v55[0];
  v18 = v55[1];
  v20 = *(v10 + 2);
  v19 = *(v10 + 3);
  if (v20 >= v19 >> 1)
  {
    v10 = sub_1AEA61C58((v19 > 1), v20 + 1, 1, v10);
  }

  *(v10 + 2) = v20 + 1;
  v21 = &v10[16 * v20];
  *(v21 + 4) = v17;
  *(v21 + 5) = v18;
  strcpy(v55, "    mean: ");
  BYTE3(v55[1]) = 0;
  HIDWORD(v55[1]) = -369098752;
  if (v4 < 1)
  {
    v24 = 0xE300000000000000;
    v22 = 7104878;
  }

  else
  {
    v22 = sub_1AEAF998C();
    v24 = v23;
  }

  MEMORY[0x1B270CB50](v22, v24);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v25 = v55[0];
  v26 = v55[1];
  v28 = *(v10 + 2);
  v27 = *(v10 + 3);
  if (v28 >= v27 >> 1)
  {
    v10 = sub_1AEA61C58((v27 > 1), v28 + 1, 1, v10);
  }

  *(v10 + 2) = v28 + 1;
  v29 = &v10[16 * v28];
  *(v29 + 4) = v25;
  *(v29 + 5) = v26;
  sub_1AEAF9E1C();

  strcpy(v55, "    variance: ");
  HIBYTE(v55[1]) = -18;
  if ((v2 | v3))
  {
    v30 = 0xE300000000000000;
  }

  else
  {
    v1 = sub_1AEAF998C();
    v30 = v31;
  }

  MEMORY[0x1B270CB50](v1, v30);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v32 = v55[0];
  v33 = v55[1];
  v35 = *(v10 + 2);
  v34 = *(v10 + 3);
  if (v35 >= v34 >> 1)
  {
    v10 = sub_1AEA61C58((v34 > 1), v35 + 1, 1, v10);
  }

  *(v10 + 2) = v35 + 1;
  v36 = &v10[16 * v35];
  *(v36 + 4) = v32;
  *(v36 + 5) = v33;
  strcpy(v55, "    total: ");
  HIDWORD(v55[1]) = -352321536;
  v37 = sub_1AEAF998C();
  MEMORY[0x1B270CB50](v37);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v38 = v55[0];
  v39 = v55[1];
  v41 = *(v10 + 2);
  v40 = *(v10 + 3);
  if (v41 >= v40 >> 1)
  {
    v10 = sub_1AEA61C58((v40 > 1), v41 + 1, 1, v10);
  }

  *(v10 + 2) = v41 + 1;
  v42 = &v10[16 * v41];
  *(v42 + 4) = v38;
  *(v42 + 5) = v39;
  sub_1AEAF9E1C();

  strcpy(v55, "    samples: ");
  HIWORD(v55[1]) = -4864;
  sub_1AEAC4A60();
  v43 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v43);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v44 = v55[0];
  v45 = v55[1];
  v47 = *(v10 + 2);
  v46 = *(v10 + 3);
  if (v47 >= v46 >> 1)
  {
    v10 = sub_1AEA61C58((v46 > 1), v47 + 1, 1, v10);
  }

  *(v10 + 2) = v47 + 1;
  v48 = &v10[16 * v47];
  *(v48 + 4) = v44;
  *(v48 + 5) = v45;
  sub_1AEAF9E1C();

  v55[0] = 0xD000000000000010;
  v55[1] = 0x80000001AEB08980;
  v49 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v49);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v51 = *(v10 + 2);
  v50 = *(v10 + 3);
  if (v51 >= v50 >> 1)
  {
    v10 = sub_1AEA61C58((v50 > 1), v51 + 1, 1, v10);
  }

  *(v10 + 2) = v51 + 1;
  v52 = &v10[16 * v51];
  *(v52 + 4) = 0xD000000000000010;
  *(v52 + 5) = 0x80000001AEB08980;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v53 = sub_1AEAF955C();

  return v53;
}

uint64_t sub_1AEAD23D4()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5C80);
  __swift_project_value_buffer(v0, qword_1EB5F5C80);
  return sub_1AEAF8FDC();
}

uint64_t sub_1AEAD2454()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 41);
  v5 = *(v0 + 42);
  result = (*(*v1 + 160))(v24);
  if (__OFADD__(*v7, 1))
  {
    __break(1u);
    goto LABEL_23;
  }

  v8 = result;
  ++*v7;
  if (v4)
  {
    goto LABEL_10;
  }

  v9 = v7[1];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7[1] = v11;
  if ((v3 & 0x80000000) == 0)
  {
    v12 = v7[2];
    v10 = __OFADD__(v12, 1);
    v13 = v12 + 1;
    if (v10)
    {
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v7[2] = v13;
    if (v3)
    {
      v14 = v7[9];
      v10 = __OFADD__(v14, 1);
      v15 = v14 + 1;
      if (v10)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v7[9] = v15;
    }

    else
    {
      sub_1AEACEF44(v2);
    }
  }

LABEL_10:
  result = v8(v24, 0);
  if (v5)
  {
    return result;
  }

  result = (*(*v1 + 136))(v24);
  if (__OFADD__(*v16, 1))
  {
    goto LABEL_24;
  }

  v17 = result;
  ++*v16;
  if (v4)
  {
    return v17(v24, 0);
  }

  v18 = v16[1];
  v10 = __OFADD__(v18, 1);
  v19 = v18 + 1;
  if (v10)
  {
    goto LABEL_26;
  }

  v16[1] = v19;
  if ((v3 & 0x80000000) == 0)
  {
    v20 = v16[2];
    v10 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v10)
    {
      v16[2] = v21;
      if ((v3 & 1) == 0)
      {
        sub_1AEACEF44(v2);
        return v17(v24, 0);
      }

      v22 = v16[9];
      v10 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (!v10)
      {
        v16[9] = v23;
        return v17(v24, 0);
      }

LABEL_29:
      __break(1u);
      return result;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  return v17(v24, 0);
}

uint64_t sub_1AEAD2644()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  (*(*v2 + 120))(v40);
  v3 = v40[0];
  v4 = v41;
  v5 = v43;
  v6 = v44;
  v7 = v45;
  v8 = v46;
  v29 = v47;
  v30 = v42;
  v28 = v48;
  result = (*(*v1 + 136))(v39);
  if (__OFADD__(*v10, v3))
  {
    __break(1u);
    goto LABEL_7;
  }

  *v10 += v3;
  v11 = v10[2];
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (v12)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v14 = result;
  v10[2] = v13;
  v32 = v30;
  v33 = v5;
  v34 = v6;
  v35 = v7;
  v36 = v8;
  v37 = v29;
  v38 = v28;
  sub_1AEACEFB8(&v32);
  v15 = v14(v39, 0);
  (*(*v2 + 144))(v40, v15);
  v16 = v40[0];
  v17 = v41;
  v31 = v42;
  v18 = v43;
  v19 = v44;
  v20 = v45;
  v21 = v46;
  v22 = v47;
  v23 = v48;
  result = (*(*v1 + 160))(v39);
  if (__OFADD__(*v24, v16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *v24 += v16;
  v25 = v24[2];
  v12 = __OFADD__(v25, v17);
  v26 = v25 + v17;
  if (!v12)
  {
    v27 = result;
    v24[2] = v26;
    v32 = v31;
    v33 = v18;
    v34 = v19;
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v38 = v23;
    sub_1AEACEFB8(&v32);
    return v27(v39, 0);
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1AEAD286C()
{
  result = qword_1ED989AC0;
  if (!qword_1ED989AC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED989AC0);
  }

  return result;
}

id sub_1AEAD28B8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

unint64_t sub_1AEAD2904(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9550);
    v3 = sub_1AEAFA06C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1AEA8EECC(v5, v6);
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1AEAD2A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9568);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AEAD2A70(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
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
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_1AEA8EECC(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_1AEACB644();
      }
    }

    else
    {
      sub_1AEACAF3C(v30, v43 & 1);
      v32 = sub_1AEA8EECC(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_1AEA83A70();
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1AEAFA31C();
  __break(1u);
  return result;
}

uint64_t sub_1AEAD2D0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D6172466C6C61 && a2 == 0xE900000000000073;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEB08840 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001AEB08820 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

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

void sub_1AEAD2E3C()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_1AEAD4148(v1 + v2);
  os_unfair_lock_unlock((v1 + v3));
}

unint64_t sub_1AEAD2F18()
{
  result = qword_1EB5EE7B8;
  if (!qword_1EB5EE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EE7B8);
  }

  return result;
}

unint64_t sub_1AEAD2F6C()
{
  result = qword_1EB5E9580;
  if (!qword_1EB5E9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9580);
  }

  return result;
}

uint64_t sub_1AEAD2FC0(uint64_t a1)
{
  v2 = type metadata accessor for CoreAnalyticsManager.StreamStats.AllFrames();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1AEAD301C()
{
  result = qword_1EB5E9598;
  if (!qword_1EB5E9598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9598);
  }

  return result;
}

unint64_t sub_1AEAD3070()
{
  result = qword_1EB5EE7C0;
  if (!qword_1EB5EE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EE7C0);
  }

  return result;
}

unint64_t sub_1AEAD30C4()
{
  result = qword_1EB5EE7C8[0];
  if (!qword_1EB5EE7C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EE7C8);
  }

  return result;
}

uint64_t sub_1AEAD3118@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9110);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1AEAFCC50;
  *(v3 + 32) = 0xD000000000000016;
  *(v3 + 40) = 0x80000001AEB08B00;
  (*(*v1 + 120))(v8);
  *(v3 + 48) = CoreAnalyticsManager.StreamStats.SampledFrames.description.getter();
  *(v3 + 56) = v4;
  *(v3 + 64) = 0xD000000000000012;
  *(v3 + 72) = 0x80000001AEB08B20;
  (*(*v1 + 144))(v7);
  result = CoreAnalyticsManager.StreamStats.SampledFrames.description.getter();
  *(v3 + 80) = result;
  *(v3 + 88) = v6;
  *a1 = v3;
  return result;
}

unint64_t sub_1AEAD3234()
{
  result = qword_1EB5E95C0;
  if (!qword_1EB5E95C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E95C0);
  }

  return result;
}

unint64_t sub_1AEAD328C()
{
  result = qword_1EB5E95C8;
  if (!qword_1EB5E95C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E95C8);
  }

  return result;
}

unint64_t sub_1AEAD32E4()
{
  result = qword_1EB5E95D0;
  if (!qword_1EB5E95D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E95D0);
  }

  return result;
}

void sub_1AEAD34D8()
{
  sub_1AEAF8D6C();
  if (v0 <= 0x3F)
  {
    sub_1AEAD36FC(319, &qword_1EB5E95D8, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1AEAD36FC(319, &qword_1EB5E94B8, MEMORY[0x1E69E6530], MEMORY[0x1E69E62F8]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1AEAD35F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 80))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAD3614(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 80) = v3;
  return result;
}

uint64_t sub_1AEAD3664(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAD3684(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

void sub_1AEAD36FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1AEAD3750()
{
  result = qword_1EB5EF160[0];
  if (!qword_1EB5EF160[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF160);
  }

  return result;
}

unint64_t sub_1AEAD37A8()
{
  result = qword_1EB5EF370[0];
  if (!qword_1EB5EF370[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF370);
  }

  return result;
}

unint64_t sub_1AEAD3800()
{
  result = qword_1EB5EF580[0];
  if (!qword_1EB5EF580[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF580);
  }

  return result;
}

unint64_t sub_1AEAD3858()
{
  result = qword_1EB5EF690;
  if (!qword_1EB5EF690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EF690);
  }

  return result;
}

unint64_t sub_1AEAD38B0()
{
  result = qword_1EB5EF698[0];
  if (!qword_1EB5EF698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF698);
  }

  return result;
}

unint64_t sub_1AEAD3908()
{
  result = qword_1EB5EF720;
  if (!qword_1EB5EF720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EF720);
  }

  return result;
}

unint64_t sub_1AEAD3960()
{
  result = qword_1EB5EF728[0];
  if (!qword_1EB5EF728[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF728);
  }

  return result;
}

unint64_t sub_1AEAD39B8()
{
  result = qword_1EB5EF7B0;
  if (!qword_1EB5EF7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EF7B0);
  }

  return result;
}

unint64_t sub_1AEAD3A10()
{
  result = qword_1EB5EF7B8[0];
  if (!qword_1EB5EF7B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF7B8);
  }

  return result;
}

uint64_t sub_1AEAD3A64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F5473656D617266 && a2 == 0xEB000000006C6174;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001AEB08A20 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEB08A40 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001AEB08A60 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x695474736574616CLL && a2 == 0xEF706D617473656DLL || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEB08A80 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEB08AA0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6974756C6F736572 && a2 == 0xEE00616572416E6FLL || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6152656C706D6173 && a2 == 0xEA00000000006574)
  {

    return 8;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1AEAD3D68(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x615373656D617266 && a2 == 0xED000064656C706DLL;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001AEB08AC0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F5073656D617266 && a2 == 0xEE00657669746973 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563)
  {

    return 3;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

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

uint64_t sub_1AEAD3EEC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7889261 && a2 == 0xE300000000000000;
  if (v3 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61746F74 && a2 == 0xE500000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656C706D6173 && a2 == 0xE700000000000000 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C706D61536C696ELL && a2 == 0xEA00000000007365)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1AEAD40A0()
{
  result = qword_1EB5E95E0;
  if (!qword_1EB5E95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E95E0);
  }

  return result;
}

unint64_t sub_1AEAD40F4()
{
  result = qword_1EB5E95F8;
  if (!qword_1EB5E95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E95F8);
  }

  return result;
}

uint64_t sub_1AEAD4164(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1AEAD41AC()
{
  result = qword_1EB5E9610;
  if (!qword_1EB5E9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9610);
  }

  return result;
}

uint64_t sub_1AEAD4200()
{
  if (*v0)
  {
    return 0x7246646E6F636573;
  }

  else
  {
    return 0x6172467473726966;
  }
}

uint64_t sub_1AEAD4248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6172467473726966 && a2 == 0xEA0000000000656DLL;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7246646E6F636573 && a2 == 0xEB00000000656D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AEAD4330(uint64_t a1)
{
  v2 = sub_1AEAD5928();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAD436C(uint64_t a1)
{
  v2 = sub_1AEAD5928();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.PositiveDetection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9618);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = *(v1 + 3);
  v9 = v1[2];
  v33 = *(v1 + 24);
  v10 = v1[4];
  v11 = v1[6];
  v22 = v1[5];
  v23 = v9;
  v21 = v11;
  LODWORD(v9) = *(v1 + 56);
  v19 = *(v1 + 15);
  v20 = v9;
  v18 = v1[8];
  v17 = *(v1 + 72);
  v12 = v1[10];
  v16 = v1[11];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD5928();
  sub_1AEAFA42C();
  v26 = v6;
  v27 = v7;
  v28 = v8;
  v29 = v23;
  v30 = v33;
  v31 = v10;
  v32 = v22;
  v34 = 0;
  sub_1AEAD597C();
  v13 = v24;
  sub_1AEAFA22C();
  if (!v13)
  {
    v26 = v21;
    v27 = v20;
    v28 = v19;
    v29 = v18;
    v30 = v17;
    v31 = v12;
    v32 = v16;
    v34 = 1;
    sub_1AEAFA22C();
  }

  return (*(v25 + 8))(v5, v3);
}

uint64_t sub_1AEAD4604@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = a1[2];
  v7 = *(a1 + 24);
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 3);
  result = a2[2];
  v14 = *(a2 + 24);
  v15 = a2[4];
  v16 = a2[5];
  *a3 = v3;
  *(a3 + 8) = v4;
  *(a3 + 12) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
  *(a3 + 48) = v10;
  *(a3 + 56) = v11;
  *(a3 + 60) = v12;
  *(a3 + 64) = result;
  *(a3 + 72) = v14;
  *(a3 + 80) = v15;
  *(a3 + 88) = v16;
  return result;
}

uint64_t CoreAnalyticsManager.StreamStats.PositiveDetection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9628);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD5928();
  sub_1AEAFA41C();
  if (!v2)
  {
    v25 = 0;
    sub_1AEAD59D0();
    sub_1AEAFA14C();
    v9 = v26;
    v24 = v28;
    v10 = v31;
    v22 = v32;
    v23 = v29;
    v36 = v27;
    v35 = v30;
    v25 = 1;
    sub_1AEAFA14C();
    (*(v6 + 8))(v8, v5);
    v11 = v26;
    v12 = v27;
    v13 = v28;
    v14 = v29;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    v34 = v27;
    v33 = v30;
    v18 = v36;
    v19 = v35;
    *a2 = v9;
    *(a2 + 8) = v18;
    *(a2 + 12) = v24;
    *(a2 + 16) = v23;
    *(a2 + 24) = v19;
    *(a2 + 32) = v10;
    *(a2 + 40) = v22;
    *(a2 + 48) = v11;
    *(a2 + 56) = v12;
    *(a2 + 60) = v13;
    *(a2 + 64) = v14;
    *(a2 + 72) = v15;
    *(a2 + 80) = v16;
    *(a2 + 88) = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEAD490C@<X0>(double *a1@<X3>, uint64_t a2@<X4>, char a3@<W5>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  v10 = *(a1 + 56);
  v11 = 0.0;
  if ((v10 & 1) == 0)
  {
    v11 = sub_1AEA8A710(a1[5], a1[6]);
  }

  v12 = sub_1AEA8A710(v8, v9);
  result = sub_1AEAF9BCC();
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < 9.22337204e18)
  {
    *a4 = a2;
    *(a4 + 8) = a3 & 1;
    *(a4 + 12) = v7;
    *(a4 + 16) = v11;
    *(a4 + 24) = v10;
    *(a4 + 32) = v12;
    *(a4 + 40) = v14;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

unint64_t sub_1AEAD4A10()
{
  v1 = *v0;
  v2 = 0x6E656469666E6F63;
  v3 = 0xD000000000000014;
  v4 = 0x6974756C6F736572;
  if (v1 != 3)
  {
    v4 = 0x6D617473656D6974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461746E6569726FLL;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AEAD4ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAD5E5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEAD4AF4(uint64_t a1)
{
  v2 = sub_1AEAD5A24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAD4B30(uint64_t a1)
{
  v2 = sub_1AEAD5A24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CoreAnalyticsManager.StreamStats.PositiveFrame.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9638);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v12 = *(v1 + 12);
  v11 = *(v1 + 16);
  v10 = *(v1 + 24);
  v9 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD5A24();
  sub_1AEAFA42C();
  v18 = 0;
  v7 = v13;
  sub_1AEAFA1BC();
  if (!v7)
  {
    v17 = 1;
    sub_1AEAFA24C();
    v16 = 2;
    sub_1AEAFA1BC();
    v15 = 3;
    sub_1AEAFA1FC();
    v14 = 4;
    sub_1AEAFA23C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CoreAnalyticsManager.StreamStats.PositiveFrame.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9640);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAD5A24();
  sub_1AEAFA41C();
  if (!v2)
  {
    v26 = 0;
    v9 = sub_1AEAFA0DC();
    v11 = v10;
    v12 = v9;
    v25 = 1;
    v21 = sub_1AEAFA16C();
    v24 = 2;
    v13 = sub_1AEAFA0DC();
    v20 = v14;
    v19 = v13;
    v23 = 3;
    sub_1AEAFA11C();
    v17 = v16;
    v22 = 4;
    v18 = sub_1AEAFA15C();
    (*(v6 + 8))(v8, v5);
    *a2 = v12;
    *(a2 + 8) = v11 & 1;
    *(a2 + 12) = v21;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20 & 1;
    *(a2 + 32) = v17;
    *(a2 + 40) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t CoreAnalyticsManager.StreamStats.PositiveDetection.description.getter()
{
  v0 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v0 + 2);
  v2 = *(v0 + 3);
  if (v3 >= v2 >> 1)
  {
    v0 = sub_1AEA61C58((v2 > 1), v3 + 1, 1, v0);
  }

  *(v0 + 2) = v3 + 1;
  v4 = &v0[16 * v3];
  strcpy(v4 + 32, "firstFrame: ");
  v4[45] = 0;
  *(v4 + 23) = -5120;
  v5 = CoreAnalyticsManager.StreamStats.PositiveFrame.description.getter(v1);
  v9 = *(v0 + 2);
  v8 = *(v0 + 3);
  v10 = v9 + 1;
  if (v9 >= v8 >> 1)
  {
    v22 = v5;
    v23 = v6;
    v24 = sub_1AEA61C58((v8 > 1), v9 + 1, 1, v0);
    v6 = v23;
    v0 = v24;
    v5 = v22;
  }

  *(v0 + 2) = v10;
  v11 = &v0[16 * v9];
  *(v11 + 4) = v5;
  *(v11 + 5) = v6;
  v12 = *(v0 + 3);
  v13 = v9 + 2;
  if (v13 > (v12 >> 1))
  {
    v0 = sub_1AEA61C58((v12 > 1), v13, 1, v0);
  }

  *(v0 + 2) = v13;
  v14 = &v0[16 * v10];
  strcpy(v14 + 32, "secondFrame: ");
  *(v14 + 23) = -4864;
  v15 = CoreAnalyticsManager.StreamStats.PositiveFrame.description.getter(v7);
  v18 = *(v0 + 2);
  v17 = *(v0 + 3);
  if (v18 >= v17 >> 1)
  {
    v25 = v15;
    v26 = v16;
    v27 = sub_1AEA61C58((v17 > 1), v18 + 1, 1, v0);
    v16 = v26;
    v0 = v27;
    v15 = v25;
  }

  *(v0 + 2) = v18 + 1;
  v19 = &v0[16 * v18];
  *(v19 + 4) = v15;
  *(v19 + 5) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v20 = sub_1AEAF955C();

  return v20;
}

uint64_t CoreAnalyticsManager.StreamStats.PositiveFrame.description.getter(__n128 a1)
{
  v2 = 7104878;
  a1.n128_u64[0] = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  strcpy(v39, "confidence: ");
  BYTE5(v39[1]) = 0;
  HIWORD(v39[1]) = -5120;
  if (v3)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = sub_1AEAF998C();
    v5 = v7;
  }

  MEMORY[0x1B270CB50](v6, v5, a1);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v8 = v39[0];
  v9 = v39[1];
  v10 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v12 = *(v10 + 2);
  v11 = *(v10 + 3);
  if (v12 >= v11 >> 1)
  {
    v10 = sub_1AEA61C58((v11 > 1), v12 + 1, 1, v10);
  }

  *(v10 + 2) = v12 + 1;
  v13 = &v10[16 * v12];
  *(v13 + 4) = v8;
  *(v13 + 5) = v9;
  sub_1AEAF9E1C();

  strcpy(v39, "orientation: ");
  HIWORD(v39[1]) = -4864;
  sub_1AEAD5A78();
  v14 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v14);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v15 = v39[0];
  v16 = v39[1];
  v18 = *(v10 + 2);
  v17 = *(v10 + 3);
  if (v18 >= v17 >> 1)
  {
    v10 = sub_1AEA61C58((v17 > 1), v18 + 1, 1, v10);
  }

  *(v10 + 2) = v18 + 1;
  v19 = &v10[16 * v18];
  *(v19 + 4) = v15;
  *(v19 + 5) = v16;
  sub_1AEAF9E1C();

  v39[0] = 0xD000000000000016;
  v39[1] = 0x80000001AEB08B40;
  if (v4)
  {
    v20 = 0xE300000000000000;
  }

  else
  {
    v2 = sub_1AEAF998C();
    v20 = v21;
  }

  MEMORY[0x1B270CB50](v2, v20);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v22 = v39[0];
  v23 = v39[1];
  v25 = *(v10 + 2);
  v24 = *(v10 + 3);
  if (v25 >= v24 >> 1)
  {
    v10 = sub_1AEA61C58((v24 > 1), v25 + 1, 1, v10);
  }

  *(v10 + 2) = v25 + 1;
  v26 = &v10[16 * v25];
  *(v26 + 4) = v22;
  *(v26 + 5) = v23;
  sub_1AEAF9E1C();

  v39[0] = 0xD000000000000010;
  v39[1] = 0x80000001AEB08920;
  v27 = sub_1AEAF998C();
  MEMORY[0x1B270CB50](v27);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v29 = *(v10 + 2);
  v28 = *(v10 + 3);
  if (v29 >= v28 >> 1)
  {
    v10 = sub_1AEA61C58((v28 > 1), v29 + 1, 1, v10);
  }

  *(v10 + 2) = v29 + 1;
  v30 = &v10[16 * v29];
  *(v30 + 4) = 0xD000000000000010;
  *(v30 + 5) = 0x80000001AEB08920;
  strcpy(v39, "timestamp: ");
  HIDWORD(v39[1]) = -352321536;
  sub_1AEAD5ACC();
  v31 = sub_1AEAF9CAC();
  MEMORY[0x1B270CB50](v31);

  MEMORY[0x1B270CB50](32, 0xE100000000000000);
  v32 = v39[0];
  v33 = v39[1];
  v35 = *(v10 + 2);
  v34 = *(v10 + 3);
  if (v35 >= v34 >> 1)
  {
    v10 = sub_1AEA61C58((v34 > 1), v35 + 1, 1, v10);
  }

  *(v10 + 2) = v35 + 1;
  v36 = &v10[16 * v35];
  *(v36 + 4) = v32;
  *(v36 + 5) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEAB7D3C();
  v37 = sub_1AEAF955C();

  return v37;
}

Swift::Void __swiftcall CoreAnalyticsManager.StreamStats.PositiveDetection.log()()
{
  if (qword_1EB5EF840 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v0, qword_1EB5F5C98);
  oslog = sub_1AEAF8FCC();
  v1 = sub_1AEAF9A8C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136315138;
    v4 = CoreAnalyticsManager.StreamStats.PositiveDetection.description.getter();
    v6 = sub_1AEA45C14(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1AEA3F000, oslog, v1, "%s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v3);
    MEMORY[0x1B270E620](v3, -1, -1);
    MEMORY[0x1B270E620](v2, -1, -1);
  }
}

uint64_t sub_1AEAD583C()
{
  if (qword_1EB5EF840 != -1)
  {
    swift_once();
  }

  v0 = sub_1AEAF8FEC();

  return __swift_project_value_buffer(v0, qword_1EB5F5C98);
}

uint64_t sub_1AEAD58A8()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5C98);
  __swift_project_value_buffer(v0, qword_1EB5F5C98);
  return sub_1AEAF8FDC();
}

unint64_t sub_1AEAD5928()
{
  result = qword_1EB5EF848;
  if (!qword_1EB5EF848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EF848);
  }

  return result;
}

unint64_t sub_1AEAD597C()
{
  result = qword_1EB5E9620;
  if (!qword_1EB5E9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9620);
  }

  return result;
}

unint64_t sub_1AEAD59D0()
{
  result = qword_1EB5E9630;
  if (!qword_1EB5E9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9630);
  }

  return result;
}

unint64_t sub_1AEAD5A24()
{
  result = qword_1EB5EF850[0];
  if (!qword_1EB5EF850[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EF850);
  }

  return result;
}

unint64_t sub_1AEAD5A78()
{
  result = qword_1EB5E9648;
  if (!qword_1EB5E9648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9648);
  }

  return result;
}

unint64_t sub_1AEAD5ACC()
{
  result = qword_1EB5E9650;
  if (!qword_1EB5E9650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9650);
  }

  return result;
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

uint64_t sub_1AEAD5B3C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAD5B5C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 96) = v3;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1AEAD5BC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEAD5BE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

unint64_t sub_1AEAD5C50()
{
  result = qword_1EB5EFC60[0];
  if (!qword_1EB5EFC60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EFC60);
  }

  return result;
}

unint64_t sub_1AEAD5CA8()
{
  result = qword_1EB5EFE70[0];
  if (!qword_1EB5EFE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EFE70);
  }

  return result;
}

unint64_t sub_1AEAD5D00()
{
  result = qword_1EB5EFF80;
  if (!qword_1EB5EFF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5EFF80);
  }

  return result;
}

unint64_t sub_1AEAD5D58()
{
  result = qword_1EB5EFF88[0];
  if (!qword_1EB5EFF88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5EFF88);
  }

  return result;
}

unint64_t sub_1AEAD5DB0()
{
  result = qword_1EB5F0010;
  if (!qword_1EB5F0010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F0010);
  }

  return result;
}

unint64_t sub_1AEAD5E08()
{
  result = qword_1EB5F0018[0];
  if (!qword_1EB5F0018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F0018);
  }

  return result;
}

uint64_t sub_1AEAD5E5C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
  if (v4 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEB000000006E6F69 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AEB08AA0 == a2 || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6974756C6F736572 && a2 == 0xEE00616572416E6FLL || (sub_1AEAFA2BC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
  {

    return 4;
  }

  else
  {
    v6 = sub_1AEAFA2BC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VideoStreamAnalyzer.beginAnalysis(of:)(VTDecompressionSessionRef of)
{
  v2 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter);
  v3 = (v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter);
  while (1)
  {
    v4 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    v5 = v2;
    atomic_compare_exchange_strong_explicit(v3, &v5, v4, memory_order_relaxed, memory_order_relaxed);
    v6 = v5 == v2;
    v2 = v5;
    if (v6)
    {
      v7 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v4;
      v10[4] = sub_1AEAD6648;
      v10[5] = v8;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 1107296256;
      v10[2] = sub_1AEAD6160;
      v10[3] = &block_descriptor_8;
      v9 = _Block_copy(v10);

      VTDecompressionSessionSetContentAnalyzer2();
      _Block_release(v9);
      return;
    }
  }

  __break(1u);
}

void sub_1AEAD6160(uint64_t a1, void *a2, uint64_t *a3, void *a4, uint64_t a5)
{
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = *(a1 + 32);

  v13 = a2;
  v12 = a4;
  v11(v13, v8, v9, v10, a4, a5);
}

uint64_t sub_1AEAD6210(uint64_t a1)
{
  result = SCIsVCPDecompressionSessionSetContentAnalyzer2Available();
  v4 = OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter;
  v5 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter);
  if (result)
  {
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v7 = v5;
      atomic_compare_exchange_strong_explicit((v1 + v4), &v7, v6, memory_order_relaxed, memory_order_relaxed);
      v8 = v7 == v5;
      v5 = v7;
      if (v8)
      {
        v9 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v10 = swift_allocObject();
        *(v10 + 16) = v9;
        *(v10 + 24) = v6;
        v22 = sub_1AEAD6FD0;
        v23 = v10;
        v18 = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_1AEAD6160;
        v21 = &block_descriptor_18;
        v11 = _Block_copy(&v18);

        v12 = SCVCPDecompressionSessionSetContentAnalyzer2(a1, v11);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v13 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v14 = v5;
      atomic_compare_exchange_strong_explicit((v1 + v4), &v14, v13, memory_order_relaxed, memory_order_relaxed);
      v8 = v14 == v5;
      v5 = v14;
      if (v8)
      {
        v15 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v16 = swift_allocObject();
        *(v16 + 16) = v15;
        *(v16 + 24) = v13;
        v22 = sub_1AEAD6988;
        v23 = v16;
        v18 = MEMORY[0x1E69E9820];
        v19 = 1107296256;
        v20 = sub_1AEAD644C;
        v21 = &block_descriptor_10;
        v11 = _Block_copy(&v18);

        v12 = SCVCPDecompressionSessionSetContentAnalyzer(a1, v11);
LABEL_10:
        v17 = v12;
        _Block_release(v11);
        result = sub_1AEAF92CC();
        if (v17 != result)
        {
          sub_1AEADC828(56, v17);
          return swift_willThrow();
        }

        return result;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1AEAD644C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_1AEAD64C0(uint64_t a1, CMTimeValue a2, unint64_t a3, CMTimeEpoch a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v16 = Strong;
  if (*&Strong[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter] != a8)
  {

LABEL_8:
    *a6 = 256;
    return;
  }

  v17 = sub_1AEA61794();
  v19 = v18;
  v20 = a5;
  sub_1AEAD6650(a5, v30, v17, v19);
  VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(a1, a2, a3, a4, 0, v30);
  v21 = VideoStreamAnalyzer.analysisResult.getter();
  v28 = 0;
  if (v22 != -1)
  {
    *&v30[0] = v21;
    BYTE8(v30[0]) = v22 & 1;
    v23 = v21;
    v24 = v22;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
    Result.success.getter(v25, &v29);
    sub_1AEA63A30(v23, v24);
    v26 = v29;
    if (v29)
    {
      v27 = [v29 shouldInterruptVideo];

      if (v27)
      {
        v28 = 1;
      }
    }
  }

  *a6 = v28;
  *(a6 + 1) = 0;
}

double sub_1AEAD6650@<D0>(void *a1@<X0>, _OWORD *a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  if (a1)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_1AEAF950C();
    }
  }

  memset(v12, 0, 32);
  v12[32] = 1;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(0x100000000, v12, v10, a3, a4);

  v8 = v10[1];
  *a2 = v10[0];
  a2[1] = v8;
  a2[2] = v11[0];
  result = *(v11 + 9);
  *(a2 + 41) = *(v11 + 9);
  return result;
}

void sub_1AEAD6988(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = Strong;
  if (*&Strong[OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter] != v5)
  {

LABEL_8:
    *a2 = 256;
    return;
  }

  v8 = sub_1AEA61794();
  memset(v20, 0, sizeof(v20));
  v21 = 1;
  LOBYTE(v19[0]) = 1;
  FrameDetails.init(orientation:frameSize:regionOfInterest:)(0x100000000, v20, v19, v8, v9);
  VideoStreamAnalyzer.analyze(_:timestamp:frameDetails:)(a1, 0, 0, 0, 1, v19);
  v10 = VideoStreamAnalyzer.analysisResult.getter();
  v17 = 0;
  if (v11 != -1)
  {
    *&v19[0] = v10;
    BYTE8(v19[0]) = v11 & 1;
    v12 = v10;
    v13 = v11;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8968);
    Result.success.getter(v14, &v18);
    sub_1AEA63A30(v12, v13);
    v15 = v18;
    if (v18)
    {
      v16 = [v18 shouldInterruptVideo];

      if (v16)
      {
        v17 = 1;
      }
    }
  }

  *a2 = v17;
  *(a2 + 1) = 0;
}

uint64_t sub_1AEAD6AF8()
{
  VideoStreamAnalyzer.endAnalysis()();
  v0 = VideoStreamAnalyzer.encode(forConnection:)();
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  sub_1AEAD6C4C(v0);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall VideoStreamAnalyzer.endAnalysis()()
{
  v1 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1AEAD6C4C(0);
  }

  swift_unknownObjectWeakAssign();
  v4 = *(v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter);
  v5 = (v1 + OBJC_IVAR____TtC24SensitiveContentAnalysis19VideoStreamAnalyzer_proxyBlockCounter);
  while (!__OFADD__(v4, 1))
  {
    v6 = v4;
    atomic_compare_exchange_strong_explicit(v5, &v6, v4 + 1, memory_order_relaxed, memory_order_relaxed);
    v7 = v6 == v4;
    v4 = v6;
    if (v7)
    {
      return;
    }
  }

  __break(1u);
}

id sub_1AEAD6C4C(uint64_t a1)
{
  v3 = sub_1AEAF8DBC();
  if ([v1 respondsToSelector_])
  {
    [v1 performSelector:v3 withObject:a1];
    v4 = v1;
    return v1;
  }

  else
  {
    type metadata accessor for SCAError(0);
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    return swift_willThrow();
  }
}

Swift::Void __swiftcall VideoStreamAnalyzer.continueStream()()
{
  v0 = sub_1AEAF8FEC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1AEA5D260();
  v6 = v5;
  v7 = sub_1AEA5DB30();
  (*(v1 + 16))(v3, v7, v0);

  v8 = sub_1AEAF8FCC();
  v9 = sub_1AEAF9A8C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    v12 = sub_1AEA45C14(v4, v6, &v14);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_1AEA3F000, v8, v9, "continueStream called on %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1B270E620](v11, -1, -1);
    MEMORY[0x1B270E620](v10, -1, -1);
  }

  else
  {
  }

  (*(v1 + 8))(v3, v0);
  sub_1AEA601D0(1);
}

uint64_t sub_1AEAD6F58()
{
  sub_1AEA5D1B0(v2);
  sub_1AEA72280();
  sub_1AEA62F28(v2);
  v0._countAndFlagsBits = sub_1AEA5D260();
  SamplingPrioritizer.updateLatestActivationTime(for:)(v0);
}

void SensitivityAnalysis.init(mediaAnalysisServiceResult:)(unsigned __int8 *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = a1[OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isNudity];
  if (SCFeatures.isEnabled.getter())
  {
    v5 = a1[OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isGoreAndViolence];

    if (v5)
    {
      v4 |= 2u;
    }
  }

  else
  {
  }

  *a2 = v4;
  a2[1] = 0;
}

char *sub_1AEAD7150(char a1)
{
  if ((a1 & 8) != 0)
  {
    ObjCClassFromObject = swift_getObjCClassFromObject();
    v3 = *sub_1AEA98980();
    v4 = [objc_allocWithZone(ObjCClassFromObject) initWithNudityDetectionValue_];
    *&v4[OBJC_IVAR___SCSensitivityAnalysis__analysis] = v3;
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v4;
  }

  else
  {
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

char *SCSensitivityAnalysis.init(analysis:)(int *a1)
{
  v1 = *a1;
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNudityDetectionValue_];
  *&result[OBJC_IVAR___SCSensitivityAnalysis__analysis] = v1;
  return result;
}

Swift::Void __swiftcall SCSensitivityAnalysis.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___SCSensitivityAnalysis__analysis);
  v4 = *(v1 + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2);
  v5 = swift_slowAlloc();
  *v5 = (v4 << 16) | (v3 << 32) | 0x100000000000000;
  v6 = sub_1AEADBC60(v5, v5 + 8);
  v8 = v7;
  MEMORY[0x1B270E620](v5, -1, -1);
  v9 = sub_1AEAF8CCC();
  sub_1AEA77408(v6, v8 & 0xFFFFFFFFFFFFFFLL);
  v10 = sub_1AEAF958C();
  [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
}

uint64_t SensitivityAnalysis.dataRepresentation.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = swift_slowAlloc();
  *v3 = (v2 << 16) | (v1 << 32) | 0x100000000000000;
  v4 = sub_1AEADBC60(v3, v3 + 8);
  MEMORY[0x1B270E620](v3, -1, -1);
  return v4;
}

uint64_t SCSensitivityAnalysis.init(coder:)(void *a1)
{
  sub_1AEA49EF8(0, &unk_1EB5E9670);
  v2 = sub_1AEAF9BDC();
  if (v2)
  {
    v6 = xmmword_1AEB01DE0;
    v3 = v2;
    sub_1AEAF8CDC();
  }

  type metadata accessor for SCSensitivityAnalysis(v4);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t SensitivityAnalysis.init(from:)@<X0>(int64_t a1@<X0>, unint64_t a2@<X1>, _DWORD *a3@<X8>)
{
  v5 = a1;
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    v9 = __OFSUB__(v7, v8);
    v10 = v7 - v8;
    if (!v9)
    {
      if (v10 == 8)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v6)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 == 8)
      {
        goto LABEL_8;
      }

LABEL_17:
      type metadata accessor for SCAError(0);
      sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
      sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
      sub_1AEAF8C3C();
      swift_willThrow();
      return sub_1AEA77408(v5, a2);
    }

    goto LABEL_27;
  }

  if (BYTE6(a2) != 8)
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v6 == 2)
  {
    v11 = v3;
    v12 = a3;
    v18 = *(a1 + 16);
    v19 = sub_1AEAF8B3C();
    if (!v19)
    {
LABEL_31:
      sub_1AEAF8B4C();
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v20 = v19;
    v21 = sub_1AEAF8B5C();
    if (!__OFSUB__(v18, v21))
    {
      v16 = (v18 - v21 + v20);
      sub_1AEAF8B4C();
      if (v16)
      {
LABEL_21:
        a1 = *v16;
        v3 = v11;
        goto LABEL_23;
      }

      goto LABEL_32;
    }

    goto LABEL_29;
  }

  if (v6 == 1)
  {
    if (a1 <= a1 >> 32)
    {
      v11 = v3;
      v12 = a3;
      v13 = sub_1AEAF8B3C();
      if (!v13)
      {
LABEL_33:
        result = sub_1AEAF8B4C();
LABEL_34:
        __break(1u);
        return result;
      }

      v14 = v13;
      v15 = sub_1AEAF8B5C();
      if (!__OFSUB__(v5, v15))
      {
        v16 = (v5 - v15 + v14);
        result = sub_1AEAF8B4C();
        if (!v16)
        {
          goto LABEL_34;
        }

        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_28;
  }

  v12 = a3;
LABEL_23:
  SensitivityAnalysis.init(from:)(a1, &v22);
  result = sub_1AEA77408(v5, a2);
  if (!v3)
  {
    *v12 = v22;
  }

  return result;
}

BOOL SCSensitivityAnalysis.isEqual(_:)(uint64_t a1)
{
  v2 = sub_1AEA63BD4(a1, v7, &unk_1EB5E9680);
  if (v8)
  {
    type metadata accessor for SCSensitivityAnalysis(v2);
    if (swift_dynamicCast())
    {
      v3 = *&v6[OBJC_IVAR___SCSensitivityAnalysis__analysis];
      v4 = *&v6[OBJC_IVAR___SCSensitivityAnalysis__analysis + 2];

      if (v3 == *(v1 + OBJC_IVAR___SCSensitivityAnalysis__analysis))
      {
        return v4 == *(v1 + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2);
      }
    }
  }

  else
  {
    sub_1AEA41FAC(v7, &unk_1EB5E9680);
  }

  return 0;
}

void __swiftcall SCSensitivityAnalysis.init()(SCSensitivityAnalysis *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1AEAD7A4C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AEA5E1AC;

  return static SensitiveContentPolicy.prefetch()();
}

uint64_t sub_1AEAD7ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v6 = sub_1AEAF97BC();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E98C8);
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E98D0);
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = sub_1AEAF97FC();
  v5[33] = sub_1AEAF97EC();
  v10 = sub_1AEAF977C();
  v5[34] = v10;
  v5[35] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1AEAD7CA4, v10, v9);
}

uint64_t sub_1AEAD7CA4()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[26];
  static SensitiveContentPolicy.changeNotifications.getter();
  MEMORY[0x1B270D4F0](v3);
  sub_1AEA4A3D0();
  sub_1AEAF98EC();
  sub_1AEAF9FAC();
  (*(v2 + 8))(v1, v3);
  sub_1AEAF9FBC();
  v4 = sub_1AEAF97EC();
  v0[36] = v4;
  if (v4)
  {
    swift_getObjectType();
    v5 = sub_1AEAF977C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v0[37] = v5;
  v0[38] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1AEAD7DF0, v5, v7);
}

uint64_t sub_1AEAD7DF0()
{
  v1 = v0[36];
  v0[39] = sub_1AEAF9F9C();
  v2 = sub_1AEA4A7C0();
  v3 = swift_task_alloc();
  v0[40] = v3;
  *v3 = v0;
  v3[1] = sub_1AEAD7ED0;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 16, v1, v4, v0 + 19, &type metadata for SensitiveContentPolicy.Changes.AsyncIterator, v2);
}

uint64_t sub_1AEAD7ED0()
{
  v2 = *v1;
  *(*v1 + 328) = v0;

  if (v0)
  {
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1AEAD8144;
  }

  else
  {
    (*(v2 + 312))();
    v3 = *(v2 + 296);
    v4 = *(v2 + 304);
    v5 = sub_1AEAD7FFC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1AEAD7FFC()
{
  if (*(v0 + 136))
  {

    v1 = *(v0 + 272);
    v2 = *(v0 + 280);

    return MEMORY[0x1EEE6DFA0](sub_1AEAD86AC, v1, v2);
  }

  else
  {
    *(v0 + 144) = *(v0 + 128);
    v3 = sub_1AEAF9FAC();
    *(v0 + 344) = v4;
    v7 = (v3 + *v3);
    v5 = swift_task_alloc();
    *(v0 + 352) = v5;
    *v5 = v0;
    v5[1] = sub_1AEAD8320;

    return v7();
  }
}

uint64_t sub_1AEAD8144()
{
  v1 = v0[39];
  v0[42] = v0[19];
  v1();

  v2 = v0[34];
  v3 = v0[35];

  return MEMORY[0x1EEE6DFA0](sub_1AEAD81CC, v2, v3);
}

uint64_t sub_1AEAD81CC()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 232);

  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 336);
  *(v0 + 160) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
  if (swift_dynamicCast())
  {
    v7 = *(v0 + 192);
    v6 = *(v0 + 200);
    v8 = *(v0 + 184);

    (*(v7 + 8))(v6, v8);
    v9 = *(v0 + 160);
  }

  else
  {
    v10 = *(v0 + 168);

    v11 = v4;
    v10(v4);

    v9 = v4;
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1AEAD8320()
{
  v1 = *v0;

  v2 = *(v1 + 304);
  v3 = *(v1 + 296);

  return MEMORY[0x1EEE6DFA0](sub_1AEAD8464, v3, v2);
}

uint64_t sub_1AEAD8464()
{

  v1 = *(v0 + 272);
  v2 = *(v0 + 280);

  return MEMORY[0x1EEE6DFA0](sub_1AEAD84C8, v1, v2);
}

uint64_t sub_1AEAD84C8()
{
  v1 = *(v0 + 328);
  sub_1AEAF988C();
  if (v1)
  {
    (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

    *(v0 + 160) = v1;
    v2 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F70);
    if (swift_dynamicCast())
    {
      v4 = *(v0 + 192);
      v3 = *(v0 + 200);
      v5 = *(v0 + 184);

      (*(v4 + 8))(v3, v5);
      v6 = *(v0 + 160);
    }

    else
    {
      v11 = *(v0 + 168);

      v12 = v1;
      v11(v1);

      v6 = v1;
    }

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    (*(v0 + 168))(0);
    v7 = sub_1AEAF97EC();
    *(v0 + 288) = v7;
    if (v7)
    {
      swift_getObjectType();
      v8 = sub_1AEAF977C();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0;
    }

    *(v0 + 296) = v8;
    *(v0 + 304) = v10;

    return MEMORY[0x1EEE6DFA0](sub_1AEAD7DF0, v8, v10);
  }
}

uint64_t sub_1AEAD86AC()
{
  v2 = v0[30];
  v1 = v0[31];
  v3 = v0[29];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t SCSensitivityAnalysis.dataRepresentation.getter()
{
  v1 = v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis;
  v2 = *(v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis);
  v3 = *(v1 + 2);
  v4 = swift_slowAlloc();
  *v4 = (v3 << 16) | (v2 << 32) | 0x100000000000000;
  v5 = sub_1AEADBC60(v4, v4 + 8);
  MEMORY[0x1B270E620](v4, -1, -1);
  return v5;
}

id SCSensitivityAnalysis.init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1AEAF8CCC();
  v10[0] = 0;
  v6 = [v4 initWithDataRepresentation:v5 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1AEAF8C5C();

    swift_willThrow();
  }

  sub_1AEA77408(a1, a2);
  return v6;
}

objc_class *SCSensitivityAnalysis.init(dataRepresentation:)(uint64_t a1, unint64_t a2)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  sub_1AEA773B4(a1, a2);
  SensitivityAnalysis.init(from:)(a1, a2, &v8);
  if (v2)
  {
    sub_1AEA77408(a1, a2);
  }

  else
  {
    v6 = v8;
    ObjCClassFromObject = [objc_allocWithZone(ObjCClassFromObject) initWithNudityDetectionValue_];
    sub_1AEA77408(a1, a2);
    *(ObjCClassFromObject + OBJC_IVAR___SCSensitivityAnalysis__analysis) = v6;
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return ObjCClassFromObject;
}

char *sub_1AEAD8CC0(uint64_t a1)
{
  v2 = v1 + OBJC_IVAR___SCSensitivityAnalysis__analysis;
  v3 = *(v1 + OBJC_IVAR___SCSensitivityAnalysis__analysis);
  v4 = *(a1 + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2) | *(v2 + 2);
  result = [objc_allocWithZone(SCSensitivityAnalysis) initWithNudityDetectionValue_];
  v6 = &result[OBJC_IVAR___SCSensitivityAnalysis__analysis];
  *v6 = v3;
  *(v6 + 1) = v4;
  return result;
}

uint64_t sub_1AEAD8D90()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAD8DFC()
{
  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEAD8E4C@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AEAFA08C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AEAD8ED4@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1AEAFA08C();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1AEAD8F2C(uint64_t a1)
{
  v2 = sub_1AEADBDDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAD8F68(uint64_t a1)
{
  v2 = sub_1AEADBDDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *SCSensitivityAnalysis.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E96A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEADBDDC();
  sub_1AEAFA41C();
  if (!v1)
  {
    sub_1AEA5AAD8();
    sub_1AEAFA14C();
    v9 = v11;
    v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithNudityDetectionValue_];
    (*(v4 + 8))(v6, v3);
    *(v7 + OBJC_IVAR___SCSensitivityAnalysis__analysis) = v9;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t SCSensitivityAnalysis.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E96B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEADBDDC();
  sub_1AEAFA42C();
  v9[3] = *(v2 + OBJC_IVAR___SCSensitivityAnalysis__analysis);
  sub_1AEA5AA30();
  sub_1AEAFA22C();
  return (*(v5 + 8))(v7, v4);
}

void *sub_1AEAD92B4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = SCSensitivityAnalysis.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t static SensitivityAnalysis.Harms.allCases.setter(void *a1)
{
  swift_beginAccess();
  off_1EB5E9660 = a1;
}

uint64_t sub_1AEAD9424@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EB5E9660;
}

uint64_t sub_1AEAD9474(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EB5E9660 = v1;
}

uint64_t SensitivityAnalysis.Harms.debugDescription.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1AEA61C58((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x79746964756E2ELL;
  *(v5 + 5) = 0xE700000000000000;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1AEA61C58((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x65726F672ELL;
    *(v8 + 5) = 0xE500000000000000;
  }

LABEL_12:
  if ((v1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1AEA61C58((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    strcpy(v11 + 32, ".notAnalyzable");
    v11[47] = -18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEA4A324(&qword_1EB5E8F40, &qword_1EB5E89A8);
  v12 = sub_1AEAF955C();

  return v12;
}

uint64_t sub_1AEAD97B4@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOWORD(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SensitivityAnalysis.Flags.debugDescription.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((v1 & 8) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_1AEA61C58(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1AEA61C58((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0xD000000000000010;
  *(v5 + 5) = 0x80000001AEB08C70;
  if ((v1 & 8) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1AEA61C58((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x706D65784573692ELL;
    *(v8 + 5) = 0xEB00000000646574;
  }

LABEL_12:
  if ((v1 & 2) == 0)
  {
    if ((v1 & 4) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_1AEA61C58((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0xD00000000000001DLL;
  *(v11 + 5) = 0x80000001AEB08C50;
  if ((v1 & 4) != 0)
  {
LABEL_20:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1AEA61C58(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_1AEA61C58((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0x4D6D6F724673692ELL;
    *(v14 + 5) = 0xE900000000000065;
  }

LABEL_25:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89A8);
  sub_1AEA4A324(&qword_1EB5E8F40, &qword_1EB5E89A8);
  v15 = sub_1AEAF955C();

  return v15;
}

BOOL sub_1AEAD9C40(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1AEAD9C70@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1AEAD9C9C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_WORD *sub_1AEAD9D70@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

_WORD *SensitivityAnalysis.init(harmsDetected:flags:)@<X0>(_WORD *result@<X0>, __int16 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t sub_1AEAD9E24()
{
  if (*v0)
  {
    return 0x7367616C66;
  }

  else
  {
    return 0x746544736D726168;
  }
}

uint64_t sub_1AEAD9E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746544736D726168 && a2 == 0xED00006465746365;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AEAD9F48(uint64_t a1)
{
  v2 = sub_1AEADBE30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEAD9F84(uint64_t a1)
{
  v2 = sub_1AEADBE30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SensitivityAnalysis.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E96C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEADBE30();
  sub_1AEAFA42C();
  v15 = v8;
  v14 = 0;
  sub_1AEADBE84();
  sub_1AEAFA22C();
  if (!v2)
  {
    v12 = v11;
    v13 = 1;
    sub_1AEADBED8();
    sub_1AEAFA22C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SensitivityAnalysis.hashValue.getter()
{
  sub_1AEAFA3BC();
  sub_1AEAFA3EC();
  sub_1AEAFA3EC();
  return sub_1AEAFA3FC();
}

uint64_t SensitivityAnalysis.init(from:)@<X0>(void *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E96E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEADBE30();
  sub_1AEAFA41C();
  if (!v2)
  {
    v15 = 0;
    sub_1AEADBF2C();
    sub_1AEAFA14C();
    v9 = v16;
    v14 = 1;
    sub_1AEADBF80();
    sub_1AEAFA14C();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1AEADA3C4()
{
  sub_1AEAFA3BC();
  sub_1AEAFA3EC();
  sub_1AEAFA3EC();
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEADA4A4()
{
  sub_1AEAFA3BC();
  sub_1AEAFA3EC();
  sub_1AEAFA3EC();
  return sub_1AEAFA3FC();
}

BOOL sub_1AEADA704()
{
  if ((*(v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis) & 0xFFFB) != 0 && (*(v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2) & 9) == 0)
  {
    static SensitiveContentPolicy.current.getter(&v8);
    v3 = v8;
    v4 = v9;
    v6[0] = *sub_1AEA9B3A4();
    v6[1] = v3;
    v7 = v4;
    return !sub_1AEA9C990(v6);
  }

  else
  {
    return 1;
  }
}

BOOL _s24SensitiveContentAnalysis011SensitivityC0V02isB11PreviewableSbvg_0()
{
  if ((*v0 & 0xFFFB) != 0 && (v0[1] & 9) == 0)
  {
    static SensitiveContentPolicy.current.getter(&v7);
    v2 = v7;
    v3 = v8;
    v5[0] = *sub_1AEA9B3A4();
    v5[1] = v2;
    v6 = v3;
    return !sub_1AEA9C990(v5);
  }

  else
  {
    return 1;
  }
}

BOOL sub_1AEADA840()
{
  if (*(v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2))
  {
    return 0;
  }

  else
  {
    static SensitiveContentPolicy.current.getter(&v7);
    v1 = v7;
    v2 = v8;
    v5[0] = *sub_1AEA9B3A4();
    v5[1] = v1;
    v6 = v2;
    return sub_1AEA9C990(v5);
  }
}

BOOL SensitivityAnalysis.mayNeedOnDemandAnalysis.getter()
{
  if (*(v0 + 2))
  {
    return 0;
  }

  else
  {
    static SensitiveContentPolicy.current.getter(&v7);
    v1 = v7;
    v2 = v8;
    v5[0] = *sub_1AEA9B3A4();
    v5[1] = v1;
    v6 = v2;
    return sub_1AEA9C990(v5);
  }
}

unint64_t SensitivityAnalysis.init(from:)@<X0>(unint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (HIBYTE(result) == 1)
  {
    *a2 = WORD2(result);
    a2[1] = WORD1(result);
  }

  else
  {
    type metadata accessor for SCAError(0);
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    return swift_willThrow();
  }

  return result;
}

BOOL sub_1AEADAB50()
{
  if ((*(v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis) & 0xFFFB) != 0 && (*(v0 + OBJC_IVAR___SCSensitivityAnalysis__analysis + 2) & 9) == 0)
  {
    static SensitiveContentPolicy.current.getter(&v8);
    v3 = v8;
    v4 = v9;
    v6[0] = *sub_1AEA9B3A4();
    v6[1] = v3;
    v7 = v4;
    return sub_1AEA9C990(v6);
  }

  else
  {
    return 0;
  }
}

char *sub_1AEADABDC()
{
  v0 = [objc_allocWithZone(SCSensitivityAnalysis) initWithNudityDetectionValue_];
  *&v0[OBJC_IVAR___SCSensitivityAnalysis__analysis] = 4;

  return v0;
}

char *sub_1AEADAC2C(void *a1)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC480;
  *(inited + 32) = a1;
  v4 = a1;
  sub_1AEADB0A0(inited, &v8);
  LOWORD(inited) = v8;
  v5 = [objc_allocWithZone(ObjCClassFromObject) initWithNudityDetectionValue_];

  v6 = &v5[OBJC_IVAR___SCSensitivityAnalysis__analysis];
  *v6 = inited;
  *(v6 + 1) = 0;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *sub_1AEADAD44(unint64_t a1)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  if (a1 >> 62)
  {
    if (sub_1AEAF9FFC())
    {
      goto LABEL_3;
    }

LABEL_5:

    type metadata accessor for SCAError(0);
    v4 = v6;
    sub_1AEA4F6EC(MEMORY[0x1E69E7CC0]);
    sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
    sub_1AEAF8C3C();
    swift_willThrow();
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return v4;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1AEADB0A0(a1, &v8);
  v3 = v8;
  v4 = [objc_allocWithZone(ObjCClassFromObject) initWithNudityDetectionValue_];
  v5 = &v4[OBJC_IVAR___SCSensitivityAnalysis__analysis];
  *v5 = v3;
  *(v5 + 1) = 0;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

char *sub_1AEADAF5C(uint64_t a1)
{
  ObjCClassFromObject = swift_getObjCClassFromObject();
  sub_1AEADB2A0(a1, &v7);
  v3 = v7;
  v4 = [objc_allocWithZone(ObjCClassFromObject) initWithNudityDetectionValue_];
  v5 = &v4[OBJC_IVAR___SCSensitivityAnalysis__analysis];
  *v5 = v3;
  v5[1] = 0;
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v4;
}

void SensitivityAnalysis.init(pixelBufferClassificationDictionary:)(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  sub_1AEADB2A0(a1, &v3);
  *a2 = v3;
  a2[1] = 0;
}

uint64_t sub_1AEADB0A0@<X0>(unint64_t a1@<X0>, __int16 *a2@<X8>)
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_41:
    v5 = sub_1AEAF9FFC();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  while (v5 != v6)
  {
    if (v7)
    {
      v8 = MEMORY[0x1B270D3B0](v6, a1);
    }

    else
    {
      if (v6 >= *(v4 + 16))
      {
        goto LABEL_36;
      }

      v8 = *(a1 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v6, 1))
    {
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
      goto LABEL_41;
    }

    v10 = [v8 sensitiveExplicit];

    ++v6;
    if (v10)
    {
      v11 = 1;
      goto LABEL_13;
    }
  }

  v11 = 0;
LABEL_13:
  if (SCFeatures.isEnabled.getter())
  {
    v12 = 0;
    while (v5 != v12)
    {
      if (v7)
      {
        v13 = MEMORY[0x1B270D3B0](v12, a1);
      }

      else
      {
        if (v12 >= *(v4 + 16))
        {
          goto LABEL_38;
        }

        v13 = *(a1 + 8 * v12 + 32);
      }

      v14 = v13;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_37;
      }

      v15 = [v13 sensitiveGore];

      ++v12;
      if (v15)
      {
LABEL_33:

        v11 |= 2u;
        goto LABEL_34;
      }
    }

    v16 = 0;
    while (v5 != v16)
    {
      if (v7)
      {
        v17 = MEMORY[0x1B270D3B0](v16, a1);
      }

      else
      {
        if (v16 >= *(v4 + 16))
        {
          goto LABEL_40;
        }

        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_39;
      }

      v19 = [v17 sensitiveViolence];

      ++v16;
      if (v19)
      {
        goto LABEL_33;
      }
    }
  }

LABEL_34:
  *a2 = v11;
  return result;
}

void sub_1AEADB2A0(uint64_t a1@<X0>, unsigned __int16 *a2@<X8>)
{
  v13 = sub_1AEAF95BC();
  sub_1AEAF9DAC();
  if (*(a1 + 16) && (v4 = sub_1AEADBAB0(v16), (v5 & 1) != 0))
  {
    sub_1AEA45E18(*(a1 + 56) + 32 * v4, v17);
    sub_1AEADC028(v16);
    sub_1AEA49EF8(0, &qword_1ED989AC0);
    if (swift_dynamicCast())
    {
      v6 = [v13 BOOLValue];

      goto LABEL_7;
    }
  }

  else
  {
    sub_1AEADC028(v16);
  }

  v6 = 0;
LABEL_7:
  v16[0] = 5;
  if (SCFeatures.isEnabled.getter())
  {
    v14 = sub_1AEAF95BC();
    sub_1AEAF9DAC();
    if (*(a1 + 16) && (v7 = sub_1AEADBAB0(v16), (v8 & 1) != 0))
    {
      sub_1AEA45E18(*(a1 + 56) + 32 * v7, v17);
      sub_1AEADC028(v16);
      sub_1AEA49EF8(0, &qword_1ED989AC0);
      if (swift_dynamicCast())
      {
        v9 = [v14 BOOLValue];

        if (v9)
        {
          v6 |= 2u;
        }
      }
    }

    else
    {
      sub_1AEADC028(v16);
    }
  }

  v16[0] = 5;
  if (SCFeatures.isEnabled.getter())
  {
    v15 = sub_1AEAF95BC();
    sub_1AEAF9DAC();
    if (*(a1 + 16) && (v10 = sub_1AEADBAB0(v16), (v11 & 1) != 0))
    {
      sub_1AEA45E18(*(a1 + 56) + 32 * v10, v17);
      sub_1AEADC028(v16);

      sub_1AEA49EF8(0, &qword_1ED989AC0);
      if (swift_dynamicCast())
      {
        v12 = [v15 BOOLValue];

        if (v12)
        {
          v6 |= 2u;
        }
      }
    }

    else
    {

      sub_1AEADC028(v16);
    }
  }

  else
  {
  }

  *a2 = v6;
}

uint64_t sub_1AEADB598()
{
  sub_1AEAF9E1C();

  v0 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v0);

  MEMORY[0x1B270CB50](0x4E412030203D2120, 0xEF2026204B252044);
  v1 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v1);

  MEMORY[0x1B270CB50](0x4E412030203D3D20, 0xEF2026204B252044);
  v2 = sub_1AEAFA27C();
  MEMORY[0x1B270CB50](v2);

  result = MEMORY[0x1B270CB50](0x30203D3D20, 0xE500000000000000);
  qword_1EB5F00A8 = 0x2026204B25;
  qword_1EB5F00B0 = 0xE500000000000000;
  return result;
}

BOOL sub_1AEADB760(uint64_t (*a1)(uint64_t))
{
  if ((*v1 & 0xFFFB) != 0 && (v1[1] & 9) == 0)
  {
    v4 = static SensitiveContentPolicy.current.getter(&v10);
    v5 = v10;
    v6 = v11;
    v8[0] = *a1(v4);
    v8[1] = v5;
    v9 = v6;
    return sub_1AEA9C990(v8);
  }

  else
  {
    return 0;
  }
}

BOOL sub_1AEADB7EC()
{
  v1 = v0[1];
  if ((v1 & 3) != 2 && ((v1 & 9) == 0 ? (v2 = (*v0 & 0xFFFB) == 0) : (v2 = 1), v2))
  {
    return 0;
  }

  else
  {
    static SensitiveContentPolicy.current.getter(&v9);
    v4 = v9;
    v5 = v10;
    v7[0] = *sub_1AEA9B3A4();
    v7[1] = v4;
    v8 = v5;
    return sub_1AEA9C990(v7);
  }
}

uint64_t SensitivityAnalysis._shouldStoreOnVideoStreamAnalyzer.getter()
{
  v1 = v0[1];
  if ((v1 & 3) == 2)
  {
    return 1;
  }

  v3 = (v1 & 9) == 0;
  return (*v0 & 0xFFFB) != 0 && v3;
}

void sub_1AEADB94C(void *a1)
{
  v1 = a1;
  sub_1AEADB8F0();
}

id sub_1AEADB994()
{

  sub_1AEAF985C();

  v2.receiver = v0;
  v2.super_class = _s11CancellableCMa();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1AEADBAB0(uint64_t a1)
{
  v2 = sub_1AEAF9D8C();

  return sub_1AEADBAF4(a1, v2);
}

unint64_t sub_1AEADBAF4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1AEADC734(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1B270D300](v9, a1);
      sub_1AEADC028(v9);
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

id sub_1AEADBBBC(uint64_t a1)
{
  v3 = *(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isNudity);
  v7 = 5;
  if ((SCFeatures.isEnabled.getter() & 1) != 0 && *(a1 + OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isGoreAndViolence))
  {
    v3 |= 2u;
  }

  v4 = &v1[OBJC_IVAR___SCSensitivityAnalysis__analysis];
  *v4 = v3;
  *(v4 + 1) = 0;
  v6.receiver = v1;
  v6.super_class = SCSensitivityAnalysis;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_1AEADBC60(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1AEADBD18(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1AEADBC60(a1, &a1[a2]);
  }

  sub_1AEAF8B6C();
  swift_allocObject();
  sub_1AEAF8B2C();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1AEAF8CBC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

unint64_t sub_1AEADBDDC()
{
  result = qword_1EB5E96A8;
  if (!qword_1EB5E96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96A8);
  }

  return result;
}

unint64_t sub_1AEADBE30()
{
  result = qword_1EB5F00B8[0];
  if (!qword_1EB5F00B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F00B8);
  }

  return result;
}

unint64_t sub_1AEADBE84()
{
  result = qword_1EB5E96D0;
  if (!qword_1EB5E96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96D0);
  }

  return result;
}

unint64_t sub_1AEADBED8()
{
  result = qword_1EB5E96D8;
  if (!qword_1EB5E96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96D8);
  }

  return result;
}

unint64_t sub_1AEADBF2C()
{
  result = qword_1EB5E96E8;
  if (!qword_1EB5E96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96E8);
  }

  return result;
}

unint64_t sub_1AEADBF80()
{
  result = qword_1EB5E96F0;
  if (!qword_1EB5E96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E96F0);
  }

  return result;
}

unint64_t sub_1AEADBFD4()
{
  result = qword_1EB5E9708;
  if (!qword_1EB5E9708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9708);
  }

  return result;
}

unint64_t sub_1AEADC080()
{
  result = qword_1EB5E9728;
  if (!qword_1EB5E9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9728);
  }

  return result;
}

unint64_t sub_1AEADC0D8()
{
  result = qword_1EB5E9730;
  if (!qword_1EB5E9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9730);
  }

  return result;
}

unint64_t sub_1AEADC130()
{
  result = qword_1EB5E9738;
  if (!qword_1EB5E9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9738);
  }

  return result;
}

unint64_t sub_1AEADC188()
{
  result = qword_1EB5E9740;
  if (!qword_1EB5E9740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9740);
  }

  return result;
}

unint64_t sub_1AEADC228()
{
  result = qword_1EB5E9760;
  if (!qword_1EB5E9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9760);
  }

  return result;
}

unint64_t sub_1AEADC280()
{
  result = qword_1EB5E9768;
  if (!qword_1EB5E9768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9768);
  }

  return result;
}

unint64_t sub_1AEADC2E4()
{
  result = qword_1EB5E9788;
  if (!qword_1EB5E9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9788);
  }

  return result;
}

unint64_t sub_1AEADC33C()
{
  result = qword_1EB5E9790;
  if (!qword_1EB5E9790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9790);
  }

  return result;
}

uint64_t sub_1AEADC3D8(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *sub_1AEADC44C(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

unint64_t sub_1AEADC568()
{
  result = qword_1EB5F1050[0];
  if (!qword_1EB5F1050[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F1050);
  }

  return result;
}

unint64_t sub_1AEADC5C0()
{
  result = qword_1EB5F1160;
  if (!qword_1EB5F1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5F1160);
  }

  return result;
}

unint64_t sub_1AEADC618()
{
  result = qword_1EB5F1168[0];
  if (!qword_1EB5F1168[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB5F1168);
  }

  return result;
}

uint64_t sub_1AEADC69C()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AEA63D38;

  return sub_1AEAD7ADC(v4, v5, v6, v2, v3);
}

uint64_t sub_1AEADC828(uint64_t a1, int a2)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A768] code:a2 userInfo:0];
  type metadata accessor for SCAError(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC470;
  *(inited + 32) = sub_1AEAF95BC();
  *(inited + 40) = v4;
  swift_getErrorValue();
  *(inited + 72) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_1AEAB478C(inited);
  swift_setDeallocating();
  sub_1AEADCC30(inited + 32);
  sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
  sub_1AEAF8C3C();

  return v8;
}

uint64_t sub_1AEADC9B0(uint64_t a1, void *a2)
{
  type metadata accessor for SCAError(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9230);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AEAFC470;
  *(inited + 32) = sub_1AEAF95BC();
  *(inited + 40) = v4;
  swift_getErrorValue();
  *(inited + 72) = v7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1);
  sub_1AEAB478C(inited);
  swift_setDeallocating();
  sub_1AEADCC30(inited + 32);
  sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
  sub_1AEAF8C3C();

  return v8;
}

uint64_t sub_1AEADCB08()
{
  type metadata accessor for SCAError(0);
  sub_1AEA416CC(&unk_1ED98A750, type metadata accessor for SCAError);
  v0 = sub_1AEAF8C1C();
  v1 = sub_1AEAF95BC();
  if (!*(v0 + 16))
  {

    goto LABEL_7;
  }

  v3 = sub_1AEA8EECC(v1, v2);
  v5 = v4;

  if ((v5 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_1AEA45E18(*(v0 + 56) + 32 * v3, v8);

  sub_1AEA62F7C();
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1AEADCC30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E89F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1AEADCC98()
{
  type metadata accessor for ParticipantContactCache();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1EB5F11F8 = v0;
  return result;
}

uint64_t ParticipantContactCache.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t static ParticipantContactCache.shared.getter()
{
  if (qword_1EB5F11F0 != -1)
  {
    swift_once();
  }
}

uint64_t ParticipantContactCache.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E695CE18]) init];
  v2 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = v1;
  *(v0 + 24) = v2;
  return v0;
}

uint64_t sub_1AEADCDE4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E8F30);
  v2[4] = swift_task_alloc();
  v2[5] = sub_1AEAF97FC();
  v2[6] = sub_1AEAF97EC();
  v4 = sub_1AEAF977C();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1AEADCEB8, v4, v3);
}

uint64_t sub_1AEADCEB8()
{
  v1 = v0[4];
  v3 = v0[2];
  v2 = v0[3];
  v4 = sub_1AEAF982C();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = sub_1AEAF97EC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E85E0];
  v6[2] = v5;
  v6[3] = v7;
  v6[4] = v2;
  v6[5] = v3;
  v0[9] = sub_1AEA5E2A0(0, 0, v1, &unk_1AEB02788, v6);
  v8 = swift_task_alloc();
  v0[10] = v8;
  *v8 = v0;
  v8[1] = sub_1AEADD014;

  return MEMORY[0x1EEE6DA40]();
}

uint64_t sub_1AEADD014()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1AEADD158, v3, v2);
}

uint64_t sub_1AEADD158()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AEADD1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  sub_1AEAF97FC();
  v5[18] = sub_1AEAF97EC();
  v7 = sub_1AEAF977C();
  v5[19] = v7;
  v5[20] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1AEADD25C, v7, v6);
}

uint64_t sub_1AEADD25C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  swift_beginAccess();
  *(v1 + 24) = MEMORY[0x1E69E7CC8];

  v3 = *(v2 + 16);
  *(v0 + 168) = v3;
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      *(v0 + 176) = v4;
      v5 = *(v0 + 136) + 56 * v4;
      v6 = *(v5 + 40);
      *(v0 + 184) = v6;
      v7 = *(v5 + 80);
      *(v0 + 192) = v7;
      v8 = *(v5 + 72);
      *(v0 + 200) = v8;
      v9 = *(v5 + 56);
      *(v0 + 208) = v9;
      v10 = *(v5 + 48);
      v11 = *(v5 + 32);
      *(v0 + 40) = v9;
      *(v0 + 16) = v11;
      *(v0 + 24) = v6;
      *(v0 + 32) = v10;
      *(v0 + 56) = v8;
      *(v0 + 64) = v7;

      if (sub_1AEADDD3C())
      {
        break;
      }

      v4 = *(v0 + 176) + 1;
      if (v4 == *(v0 + 168))
      {
        goto LABEL_5;
      }
    }

    v14 = swift_task_alloc();
    *(v0 + 216) = v14;
    *v14 = v0;
    v14[1] = sub_1AEADD424;

    return sub_1AEADE49C(v7);
  }

  else
  {
LABEL_5:

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1AEADD424(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 224) = a1;
  *(v4 + 232) = v1;

  v5 = *(v3 + 160);
  v6 = *(v3 + 152);
  if (v1)
  {
    v7 = sub_1AEADD9A8;
  }

  else
  {
    v7 = sub_1AEADD568;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

unint64_t sub_1AEADD568()
{
  v43 = *(v0 + 224);
  if (v43)
  {
    v1 = *(v0 + 192);
    v4 = *(v1 + 56);
    v3 = v1 + 56;
    v2 = v4;
    v5 = -1;
    v6 = -1 << *(*(v0 + 192) + 32);
    if (-v6 < 64)
    {
      v5 = ~(-1 << -v6);
    }

    v7 = v5 & v2;
    v8 = (63 - v6) >> 6;
    v42 = *(v0 + 192);
    result = swift_bridgeObjectRetain_n();
    v10 = 0;
    while (1)
    {
      if (!v7)
      {
        while (1)
        {
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            break;
          }

          if (v13 >= v8)
          {

            swift_bridgeObjectRelease_n();

            goto LABEL_24;
          }

          v7 = *(v3 + 8 * v13);
          ++v10;
          if (v7)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

LABEL_12:
      v14 = *(v0 + 128);
      v15 = (*(v42 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v17 = *v15;
      v16 = v15[1];
      swift_beginAccess();

      v44 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v14 + 24);
      *(v0 + 120) = v19;
      *(v14 + 24) = 0x8000000000000000;
      result = sub_1AEA8EECC(v17, v16);
      v21 = *(v19 + 16);
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        goto LABEL_37;
      }

      v25 = v20;
      if (*(v19 + 24) < v24)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_17;
      }

      v31 = result;
      sub_1AEADF01C();
      result = v31;
      v27 = *(v0 + 120);
      if (v25)
      {
LABEL_5:
        v11 = v27[7];
        v12 = *(v11 + 8 * result);
        *(v11 + 8 * result) = v44;

        goto LABEL_6;
      }

LABEL_18:
      v27[(result >> 6) + 8] |= 1 << result;
      v28 = (v27[6] + 16 * result);
      *v28 = v17;
      v28[1] = v16;
      *(v27[7] + 8 * result) = v44;
      v29 = v27[2];
      v23 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v23)
      {
        goto LABEL_38;
      }

      v27[2] = v30;

LABEL_6:
      v7 &= v7 - 1;
      *(*(v0 + 128) + 24) = v27;
      swift_endAccess();
    }

    sub_1AEADED78(v24, isUniquelyReferenced_nonNull_native);
    result = sub_1AEA8EECC(v17, v16);
    if ((v25 & 1) != (v26 & 1))
    {

      return sub_1AEAFA31C();
    }

LABEL_17:
    v27 = *(v0 + 120);
    if (v25)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

LABEL_24:

  v32 = *(v0 + 176) + 1;
  if (v32 == *(v0 + 168))
  {
LABEL_27:

    v40 = *(v0 + 8);

    return v40();
  }

  else
  {
    while (1)
    {
      *(v0 + 176) = v32;
      v33 = *(v0 + 136) + 56 * v32;
      v34 = *(v33 + 40);
      *(v0 + 184) = v34;
      v35 = *(v33 + 80);
      *(v0 + 192) = v35;
      v36 = *(v33 + 72);
      *(v0 + 200) = v36;
      v37 = *(v33 + 56);
      *(v0 + 208) = v37;
      v38 = *(v33 + 48);
      v39 = *(v33 + 32);
      *(v0 + 40) = v37;
      *(v0 + 16) = v39;
      *(v0 + 24) = v34;
      *(v0 + 32) = v38;
      *(v0 + 56) = v36;
      *(v0 + 64) = v35;

      if (sub_1AEADDD3C())
      {
        break;
      }

      v32 = *(v0 + 176) + 1;
      if (v32 == *(v0 + 168))
      {
        goto LABEL_27;
      }
    }

    v41 = swift_task_alloc();
    *(v0 + 216) = v41;
    *v41 = v0;
    v41[1] = sub_1AEADD424;

    return sub_1AEADE49C(v35);
  }
}

uint64_t sub_1AEADD9A8()
{

  if (qword_1EB5F1200 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 232);
  v2 = sub_1AEAF8FEC();
  __swift_project_value_buffer(v2, qword_1EB5F5CB0);
  v3 = v1;
  v4 = sub_1AEAF8FCC();
  v5 = sub_1AEAF9A9C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 232);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138477827;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1AEA3F000, v4, v5, "Failed to load participant contact. %{private}@", v8, 0xCu);
    sub_1AEA41FAC(v9, &unk_1EB5E9C00);
    MEMORY[0x1B270E620](v9, -1, -1);
    MEMORY[0x1B270E620](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 176) + 1;
  if (v12 == *(v0 + 168))
  {
LABEL_9:

    v20 = *(v0 + 8);

    return v20();
  }

  else
  {
    while (1)
    {
      *(v0 + 176) = v12;
      v13 = *(v0 + 136) + 56 * v12;
      v14 = *(v13 + 40);
      *(v0 + 184) = v14;
      v15 = *(v13 + 80);
      *(v0 + 192) = v15;
      v16 = *(v13 + 72);
      *(v0 + 200) = v16;
      v17 = *(v13 + 56);
      *(v0 + 208) = v17;
      v18 = *(v13 + 48);
      v19 = *(v13 + 32);
      *(v0 + 40) = v17;
      *(v0 + 16) = v19;
      *(v0 + 24) = v14;
      *(v0 + 32) = v18;
      *(v0 + 56) = v16;
      *(v0 + 64) = v15;

      if (sub_1AEADDD3C())
      {
        break;
      }

      v12 = *(v0 + 176) + 1;
      if (v12 == *(v0 + 168))
      {
        goto LABEL_9;
      }
    }

    v22 = swift_task_alloc();
    *(v0 + 216) = v22;
    *v22 = v0;
    v22[1] = sub_1AEADD424;

    return sub_1AEADE49C(v15);
  }
}

uint64_t sub_1AEADDCA4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1AEA63D38;

  return sub_1AEADD1C4(v4, v5, v6, v2, v3);
}

uint64_t sub_1AEADDD3C()
{
  v1 = 0;
  v2 = 0;
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[3];
  v22 = v0[4];
  v6 = v0[6];
  v21 = v0[5];
  if (v5)
  {
    v7 = v0[5] == 0;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v9 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v10 = v6 + 56;
  do
  {
    while (1)
    {
      v12 = v1 + 1;
      if (v2)
      {
        v1 = 1;
        result = 1;
        goto LABEL_15;
      }

      if (*(&unk_1F248E850 + v1 + 32))
      {
        if (v5)
        {
          goto LABEL_12;
        }
      }

      else if ((v8 & 1) == 0)
      {

        MEMORY[0x1B270CB50](32, 0xE100000000000000);
        MEMORY[0x1B270CB50](v22, v21);

        goto LABEL_12;
      }

      if (!v9)
      {
        break;
      }

      if (*(v6 + 16))
      {
        v13 = v8;
        v14 = v9;
        sub_1AEAFA3BC();

        sub_1AEAF95DC();
        v15 = sub_1AEAFA3FC();
        v16 = -1 << *(v6 + 32);
        v17 = v15 & ~v16;
        if ((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = (*(v6 + 48) + 16 * v17);
            v20 = *v19 == v3 && v19[1] == v4;
            if (v20 || (sub_1AEAFA2BC() & 1) != 0)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            if (((*(v10 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v9 = v14;
          v8 = v13;
          break;
        }

LABEL_31:

        v9 = v14;
        v8 = v13;
      }

LABEL_12:
      result = 0;
      v2 = 0;
      v1 = 1u;
      if (v12 == 2)
      {
        return result;
      }
    }

    result = 1;
    v1 = 1;
LABEL_15:
    v2 = 1;
  }

  while (v12 != 2);
  return result;
}

uint64_t sub_1AEADDF3C(uint64_t *a1, char *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[6];
  v9 = *a2;
  if (*a2)
  {
    if (v6)
    {
      v5 = v7;

      return v5;
    }
  }

  else
  {
    v10 = a1[5];
    if (v6)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11)
    {
      v19 = a1[4];

      MEMORY[0x1B270CB50](32, 0xE100000000000000);
      MEMORY[0x1B270CB50](v19, v10);
      return v7;
    }
  }

  v12 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v12 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v12 && (sub_1AEADE99C(v5, v4, v8) & 1) == 0)
  {

    return v5;
  }

  v53 = v9;
  v13 = v8 + 56;
  v14 = 1 << *(v8 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v8 + 56);

  swift_beginAccess();
  v17 = 0;
  v18 = (v14 + 63) >> 6;
  v52 = *MEMORY[0x1E695C310];
  v51 = *MEMORY[0x1E695C240];
  v54 = v2;
  v55 = v8;
  while (v16)
  {
    v26 = v16;
LABEL_29:
    v16 = (v26 - 1) & v26;
    v28 = v2[3];
    if (*(v28 + 16))
    {
      v29 = (*(v8 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v26)))));
      v30 = *v29;
      v31 = v29[1];

      v32 = sub_1AEA8EECC(v30, v31);
      v34 = v33;

      if ((v34 & 1) == 0)
      {
        goto LABEL_21;
      }

      v2 = *(*(v28 + 56) + 8 * v32);

      if (v53)
      {
        if ([v2 isKeyAvailable_])
        {
          v35 = [v2 nickname];
          v36 = sub_1AEAF95BC();
          v38 = v37;

          v39 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v39 = v36 & 0xFFFFFFFFFFFFLL;
          }

          if (v39)
          {
            goto LABEL_46;
          }
        }

        if ([v2 isKeyAvailable_])
        {
          v40 = [v2 givenName];
          v41 = sub_1AEAF95BC();
          v43 = v42;

          v44 = HIBYTE(v43) & 0xF;
          if ((v43 & 0x2000000000000000) == 0)
          {
            v44 = v41 & 0xFFFFFFFFFFFFLL;
          }

          if (v44)
          {

            v49 = [v2 givenName];
            goto LABEL_47;
          }
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1AEAFC480;
        v46 = objc_opt_self();
        *(v45 + 32) = [v46 descriptorForRequiredKeysForStyle_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9940);
        v47 = sub_1AEAF96CC();

        LODWORD(v45) = [v2 areKeysAvailable_];

        if (v45)
        {
          v20 = [v46 stringFromContact:v2 style:0];
          if (v20)
          {
            v21 = v20;
            v22 = sub_1AEAF95BC();
            v24 = v23;

            v25 = HIBYTE(v24) & 0xF;
            if ((v24 & 0x2000000000000000) == 0)
            {
              v25 = v22 & 0xFFFFFFFFFFFFLL;
            }

            if (v25)
            {

              return v22;
            }

LABEL_21:

            goto LABEL_22;
          }
        }
      }

LABEL_22:
      v2 = v54;
      v8 = v55;
    }
  }

  while (1)
  {
    v27 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v27 >= v18)
    {
      goto LABEL_43;
    }

    v26 = *(v13 + 8 * v27);
    ++v17;
    if (v26)
    {
      v17 = v27;
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_46:

  v49 = [v2 nickname];
LABEL_47:
  v50 = v49;
  v5 = sub_1AEAF95BC();

LABEL_43:

  return v5;
}

uint64_t Participant.nameWithoutContacts(_:)(char *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  if (v2)
  {
    if (v5)
    {
      v6 = v1[2];

      return v6;
    }
  }

  else
  {
    v8 = v1[5];
    if (v5)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9)
    {
      v11 = v1[4];
      v12 = v1[2];

      MEMORY[0x1B270CB50](32, 0xE100000000000000);
      MEMORY[0x1B270CB50](v11, v8);
      return v12;
    }
  }

  v10 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (sub_1AEADE99C(*v1, v1[1], v1[6]) & 1) != 0)
  {
    return 0;
  }

  return v3;
}

uint64_t sub_1AEADE49C(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;

  return MEMORY[0x1EEE6DFA0](sub_1AEADE52C, 0, 0);
}

uint64_t sub_1AEADE52C()
{
  v26 = v0;
  v25[5] = *MEMORY[0x1E69E9840];
  v1 = v0[3];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_1AEA8186C(*(v1 + 16), 0);
    v4 = sub_1AEA822AC(v25, v3 + 4, v2, v1);

    sub_1AEA83A70();
    if (v4 != v2)
    {
      __break(1u);
    }
  }

  v5 = v0[4];
  v6 = objc_opt_self();
  v7 = sub_1AEAF96CC();

  v8 = [v6 predicateForContactsMatchingHandleStrings_];

  v9 = *(v5 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E8E10);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AEAFDB70;
  v11 = [objc_opt_self() descriptorForRequiredKeysForStyle_];
  v12 = *MEMORY[0x1E695C310];
  *(v10 + 32) = v11;
  *(v10 + 40) = v12;
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9940);
  v14 = sub_1AEAF96CC();

  v0[2] = 0;
  v15 = [v9 unifiedContactsMatchingPredicate:v8 keysToFetch:v14 error:v0 + 2];

  v16 = v0[2];
  if (v15)
  {
    sub_1AEADF188();
    v17 = sub_1AEAF96EC();
    v18 = v16;

    if (v17 >> 62)
    {
      if (sub_1AEAF9FFC())
      {
        goto LABEL_7;
      }
    }

    else if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_7:
      if ((v17 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1B270D3B0](0, v17);
      }

      else
      {
        if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
        }

        v19 = *(v17 + 32);
      }

      v20 = v19;

      goto LABEL_16;
    }

    v20 = 0;
LABEL_16:
    v24 = v0[1];

    return v24(v20);
  }

  v21 = v16;
  sub_1AEAF8C5C();

  swift_willThrow();
  v22 = v0[1];

  return v22();
}

uint64_t ParticipantContactCache.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t Participant.NameStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1AEAFA3BC();
  MEMORY[0x1B270D930](v1);
  return sub_1AEAFA3FC();
}

uint64_t sub_1AEADE99C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1AEAFA3BC();
  sub_1AEAF95DC();
  v6 = sub_1AEAFA3FC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1AEAFA2BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1AEADEA94()
{
  v0 = sub_1AEAF8FEC();
  __swift_allocate_value_buffer(v0, qword_1EB5F5CB0);
  __swift_project_value_buffer(v0, qword_1EB5F5CB0);
  return sub_1AEAF8FDC();
}

unint64_t sub_1AEADEB18()
{
  result = qword_1EB5E9948;
  if (!qword_1EB5E9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9948);
  }

  return result;
}

unint64_t sub_1AEADEB70()
{
  result = qword_1EB5E9950;
  if (!qword_1EB5E9950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB5E9958);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5E9950);
  }

  return result;
}

uint64_t dispatch thunk of ParticipantContactCache.prefetchContacts(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 128) + **(*v1 + 128));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AEA5E1AC;

  return v6(a1);
}

uint64_t sub_1AEADED78(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9970);
  v35 = a2;
  result = sub_1AEAFA04C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1AEAFA3BC();
      sub_1AEAF95DC();
      result = sub_1AEAFA3FC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

id sub_1AEADF01C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5E9970);
  v2 = *v0;
  v3 = sub_1AEAFA03C();
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

unint64_t sub_1AEADF188()
{
  result = qword_1EB5E9968;
  if (!qword_1EB5E9968)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB5E9968);
  }

  return result;
}

uint64_t sub_1AEADF1D8()
{
  v1 = *v0;
  v2 = 0x6F65646976;
  v3 = 0x736F746F6870;
  v4 = 0x736F65646976;
  if (v1 != 3)
  {
    v4 = 0x6E41736F746F6870;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6F746F6870;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1AEADF270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AEAE179C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AEADF298(uint64_t a1)
{
  v2 = sub_1AEAE0CC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEADF2D4(uint64_t a1)
{
  v2 = sub_1AEAE0CC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEADF310(uint64_t a1)
{
  v2 = sub_1AEAE0E14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEADF34C(uint64_t a1)
{
  v2 = sub_1AEAE0E14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEADF388()
{
  if (*v0)
  {
    return 0x756F436F65646976;
  }

  else
  {
    return 0x756F436F746F6870;
  }
}

uint64_t sub_1AEADF3C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x756F436F746F6870 && a2 == 0xEA0000000000746ELL;
  if (v6 || (sub_1AEAFA2BC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F436F65646976 && a2 == 0xEA0000000000746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AEAFA2BC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1AEADF4A4(uint64_t a1)
{
  v2 = sub_1AEAE0D18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEADF4E0(uint64_t a1)
{
  v2 = sub_1AEAE0D18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEADF534(uint64_t a1)
{
  v2 = sub_1AEAE0DC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEADF570(uint64_t a1)
{
  v2 = sub_1AEAE0DC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEADF5AC(uint64_t a1)
{
  v2 = sub_1AEAE0E68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEADF5E8(uint64_t a1)
{
  v2 = sub_1AEAE0E68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AEADF624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AEAFA2BC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AEADF6A4(uint64_t a1)
{
  v2 = sub_1AEAE0D6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AEADF6E0(uint64_t a1)
{
  v2 = sub_1AEAE0D6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ContentDescription.Description.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E99E0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E99E8);
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E99F0);
  v36 = *(v7 - 8);
  v37 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E99F8);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A00);
  v32 = *(v13 - 8);
  v33 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5E9A08);
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v31 - v17;
  v19 = *v1;
  *&v44 = v1[1];
  *(&v44 + 1) = v19;
  v20 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AEAE0CC4();
  sub_1AEAFA42C();
  if (v20 <= 1)
  {
    if (!v20)
    {
      v50 = 2;
      sub_1AEAE0DC0();
      v21 = v46;
      sub_1AEAFA19C();
      v22 = v37;
      sub_1AEAFA21C();
      (*(v36 + 8))(v9, v22);
      return (*(v45 + 8))(v18, v21);
    }

    v51 = 3;
    sub_1AEAE0D6C();
    v23 = v38;
    v21 = v46;
    sub_1AEAFA19C();
    v24 = v40;
    sub_1AEAFA21C();
    v26 = v39;
    goto LABEL_11;
  }

  if (v20 == 2)
  {
    v54 = 4;
    sub_1AEAE0D18();
    v23 = v41;
    v21 = v46;
    sub_1AEAFA19C();
    v53 = 0;
    v24 = v43;
    v25 = v47;
    sub_1AEAFA21C();
    if (v25)
    {
      (*(v42 + 8))(v23, v24);
      return (*(v45 + 8))(v18, v21);
    }

    v52 = 1;
    sub_1AEAFA21C();
    v26 = v42;
LABEL_11:
    (*(v26 + 8))(v23, v24);
    return (*(v45 + 8))(v18, v21);
  }

  v27 = (v45 + 8);
  if (v44 == 0)
  {
    v48 = 0;
    sub_1AEAE0E68();
    v30 = v46;
    sub_1AEAFA19C();
    (*(v32 + 8))(v15, v33);
    return (*v27)(v18, v30);
  }

  else
  {
    v49 = 1;
    sub_1AEAE0E14();
    v28 = v46;
    sub_1AEAFA19C();
    (*(v34 + 8))(v12, v35);
    return (*v27)(v18, v28);
  }
}