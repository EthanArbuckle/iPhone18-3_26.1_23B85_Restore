uint64_t _s18AudioAnalyticsBase10SimpleTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 2)
  {
    if (*(a1 + 16))
    {
      if (v4 == 1)
      {
        if (v7 == 1)
        {
          sub_223963BB4(*a1, v3, 1);
          v9 = v5;
          v10 = v6;
          v11 = 1;
LABEL_15:
          sub_223963BB4(v9, v10, v11);
          v8 = v2 == v5;
          return v8 & 1;
        }
      }

      else if (v7 == 2)
      {
        v16 = *a2;
        sub_223963BB4(*a1, v3, 2);
        sub_223963BB4(v5, v6, 2);
        if (*&v2 == *&v5)
        {
          v8 = 1;
          return v8 & 1;
        }

LABEL_28:
        v8 = 0;
        return v8 & 1;
      }
    }

    else if (!*(a2 + 16))
    {
      sub_223963BB4(*a1, v3, 0);
      v9 = v5;
      v10 = v6;
      v11 = 0;
      goto LABEL_15;
    }

LABEL_27:
    sub_22396298C(v5, v6, v7);
    sub_223963BB4(v2, v3, v4);
    sub_223963BB4(v5, v6, v7);
    goto LABEL_28;
  }

  if (*(a1 + 16) > 4u)
  {
    if (v4 == 5)
    {
      if (v7 == 5)
      {
        sub_22396298C(*a2, *(a2 + 8), 5);
        sub_22396298C(v2, v3, 5);
        v12 = sub_22399FC40(v2, v5);
        sub_223963BB4(v2, v3, 5);
        v13 = v5;
        v14 = v6;
        v15 = 5;
        goto LABEL_31;
      }
    }

    else if (v7 == 6)
    {
      sub_22396298C(*a2, *(a2 + 8), 6);
      sub_22396298C(v2, v3, 6);
      v12 = sub_22396A45C(v2, v5);
      sub_223963BB4(v2, v3, 6);
      v13 = v5;
      v14 = v6;
      v15 = 6;
      goto LABEL_31;
    }

    v18 = *a1;
    goto LABEL_26;
  }

  if (v4 == 3)
  {
    if (v7 == 3)
    {
      sub_223963BB4(*a1, v3, 3);
      sub_223963BB4(v5, v6, 3);
      v8 = v5 ^ v2 ^ 1;
      return v8 & 1;
    }

    goto LABEL_27;
  }

  v17 = *(a1 + 8);
  if (v7 != 4)
  {
LABEL_26:

    goto LABEL_27;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_22396298C(v2, v3, 4);
    sub_22396298C(v2, v3, 4);
    sub_223963BB4(v2, v3, 4);
    sub_223963BB4(v2, v3, 4);
    v8 = 1;
    return v8 & 1;
  }

  v12 = sub_2239B3958();
  sub_22396298C(v5, v6, 4);
  sub_22396298C(v2, v3, 4);
  sub_223963BB4(v2, v3, 4);
  v13 = v5;
  v14 = v6;
  v15 = 4;
LABEL_31:
  sub_223963BB4(v13, v14, v15);
  return v12 & 1;
}

uint64_t Dictionary<>.subscript.setter(uint64_t a1, char *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v15 = *a2;
  v6 = Keys.rawValue.getter();
  v8 = v6;
  v9 = v7;
  if (v5 == 255)
  {
    sub_22398D454(v6, v7, v13);

    return sub_22397617C(v13[0], v13[1], v14);
  }

  else
  {
    v10 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *v2;
    sub_2239639F0(v3, v4, v5, v8, v9, isUniquelyReferenced_nonNull_native);

    *v2 = v13[0];
  }

  return result;
}

uint64_t Message.copyPrevious(fields:from:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v64 = MEMORY[0x277D84F90];
  while (v8)
  {
LABEL_10:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = (*(a1 + 48) + ((v10 << 10) | (16 * v12)));
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v3 + 8) + 16);

    if (v16 && (sub_22396236C(v15, v14), (v17 & 1) != 0) || !*(a2 + 16) || (sub_22396236C(v15, v14), (v18 & 1) == 0))
    {
    }

    else
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_22396547C(0, *(v64 + 2) + 1, 1, v64);
      }

      v20 = *(v64 + 2);
      v19 = *(v64 + 3);
      v21 = v20 + 1;
      if (v20 >= v19 >> 1)
      {
        v46 = sub_22396547C((v19 > 1), v20 + 1, 1, v64);
        v21 = v20 + 1;
        v64 = v46;
      }

      *(v64 + 2) = v21;
      v22 = &v64[16 * v20];
      *(v22 + 4) = v15;
      *(v22 + 5) = v14;
      if (*(a2 + 16) && (v23 = sub_22396236C(v15, v14), (v24 & 1) != 0))
      {
        v25 = *(a2 + 56) + 24 * v23;
        v61 = *v25;
        v62 = *(v25 + 8);
        v63 = *(v25 + 16);
        sub_22396298C(*v25, v62, v63);
        v26 = *(v3 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v3 + 8);
        v29 = sub_22396236C(v15, v14);
        v30 = v27[2];
        v31 = (v28 & 1) == 0;
        v32 = v30 + v31;
        if (__OFADD__(v30, v31))
        {
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          result = sub_2239B39A8();
          __break(1u);
          return result;
        }

        if (v27[3] >= v32)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v28 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          else
          {
            v59 = v28;
            sub_223963D78();
            if ((v59 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

LABEL_31:

          v42 = v27[7] + 24 * v29;
          v43 = *v42;
          v44 = *(v42 + 8);
          *v42 = v61;
          *(v42 + 8) = v62;
          v45 = *(v42 + 16);
          *(v42 + 16) = v63;
          sub_223963BB4(v43, v44, v45);
          *(v3 + 8) = v27;
        }

        else
        {
          v58 = v28;
          sub_223965FA8(v32, isUniquelyReferenced_nonNull_native);
          v33 = sub_22396236C(v15, v14);
          if ((v58 & 1) != (v34 & 1))
          {
            goto LABEL_43;
          }

          v29 = v33;
          if (v58)
          {
            goto LABEL_31;
          }

LABEL_33:
          v27[(v29 >> 6) + 8] |= 1 << v29;
          v47 = (v27[6] + 16 * v29);
          *v47 = v15;
          v47[1] = v14;
          v48 = v27[7] + 24 * v29;
          *v48 = v61;
          *(v48 + 8) = v62;
          *(v48 + 16) = v63;
          v49 = v27[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_42;
          }

          v27[2] = v51;
          *(v3 + 8) = v27;
        }
      }

      else
      {
        v35 = sub_22396236C(v15, v14);
        v37 = v36;

        if (v37)
        {
          v38 = *(v3 + 8);
          v39 = swift_isUniquelyReferenced_nonNull_native();
          v40 = *(v3 + 8);
          if (!v39)
          {
            sub_223963D78();
          }

          v41 = *(*(v40 + 48) + 16 * v35 + 8);

          sub_223963BB4(*(*(v40 + 56) + 24 * v35), *(*(v40 + 56) + 24 * v35 + 8), *(*(v40 + 56) + 24 * v35 + 16));
          sub_22396C90C(v35, v40);
          *(v3 + 8) = v40;
        }
      }
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  if (*(v64 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
    sub_223968C1C(&qword_281335D60, &qword_27D09FE70, "<r");
    v52 = sub_2239B3128();
    v54 = v53;

    v55 = *(v3 + 8);
    v56 = swift_isUniquelyReferenced_nonNull_native();
    v66 = *(v3 + 8);
    result = sub_2239639F0(v52, v54, 4, 0xD00000000000001DLL, 0x80000002239BA8A0, v56);
    *(v3 + 8) = v66;
  }

  else
  {
  }

  return result;
}

uint64_t sub_22396D3CC()
{
  if (qword_281335EF8 != -1)
  {
    swift_once();
  }

  v0 = off_281335F00;

  os_unfair_lock_lock(v0 + 6);
  sub_22396D738(v0 + 2);
  os_unfair_lock_unlock(v0 + 6);

  v1 = off_281335F00;

  os_unfair_lock_lock(v1 + 6);
  v2 = *(v1 + 2);

  os_unfair_lock_unlock(v1 + 6);

  if (qword_281335EE8 != -1)
  {
    swift_once();
  }

  v3 = *(v2 + 16);
  v19 = off_281335EF0;
  if (v3)
  {
    v4 = sub_22396E6A4(v3, 0);
    v5 = sub_22396E718(v20, v4 + 32, v3, v2);

    sub_22396D730();
    if (v5 != v3)
    {
      __break(1u);

      __break(1u);
      return result;
    }
  }

  else
  {

    v4 = MEMORY[0x277D84F90];
  }

  v20[0] = v4;
  sub_22396E058(v20);
  v6 = v20[0];
  v7 = *(v20[0] + 2);
  if (v7)
  {
    v20[0] = MEMORY[0x277D84F90];
    sub_22396C7F0(0, v7, 0);
    v8 = 32;
    v9 = v20[0];
    do
    {
      v10 = *&aRoot_1[8 * v6[v8]];
      v20[0] = v9;
      v12 = *(v9 + 2);
      v11 = *(v9 + 3);
      if (v12 >= v11 >> 1)
      {
        sub_22396C7F0((v11 > 1), v12 + 1, 1);
        v9 = v20[0];
      }

      *(v9 + 2) = v12 + 1;
      v13 = &v9[16 * v12];
      *(v13 + 4) = v10;
      *(v13 + 5) = 0xE400000000000000;
      ++v8;
      --v7;
    }

    while (v7);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v20[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  sub_223968C1C(&qword_281335D60, &qword_27D09FE70, "<r");
  v14 = sub_2239B3128();
  v16 = v15;

  v20[0] = v14;
  v20[1] = v16;
  MEMORY[0x28223BE20](v17);
  os_unfair_lock_lock(v19 + 8);
  sub_22396E1BC(&v19[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v19 + 8);
}

unint64_t sub_22396D738(uint64_t *a1)
{
  if (qword_281336380 != -1)
  {
    swift_once();
  }

  type metadata accessor for ThermalState(0);
  sub_2239B3528();
  if (qword_2836FBA50 != v13[0] && unk_2836FBA58 != v13[0])
  {
    return sub_22396DDC4(2, v13);
  }

  v3 = *a1;
  v4 = *(*a1 + 40);
  sub_2239B3A18();
  sub_2239B3228();
  result = sub_2239B3A78();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = result & ~v6;
  if ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = *(v3 + 48);
    while (!*(v9 + v7) || *(v9 + v7) == 1)
    {
      result = sub_2239B3958();
      if (result)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    v10 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13[0] = *a1;
    result = sub_22396EE4C(2, v7, isUniquelyReferenced_nonNull_native);
    *a1 = v13[0];
  }

  return result;
}

void sub_22396D910(void *a1@<X8>)
{
  if (qword_281336350 != -1)
  {
    swift_once();
  }

  v3 = *(off_281336358 + 2);

  os_unfair_lock_lock((v3 + 24));
  sub_223960244((v3 + 16), &v7);
  if (v1)
  {
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));
    v4 = v7;

    if (v4)
    {
      v5 = [objc_opt_self() processInfo];
      v6 = [v5 thermalState];

      qword_281336378 = v6;
    }

    *a1 = qword_281336378;
  }
}

uint64_t sub_22396DA30(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2239B3958();
  }

  return v11 & 1;
}

uint64_t sub_22396DAF0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = sub_2239B3A18();
  a4(v7);
  sub_2239B3228();

  return sub_2239B3A78();
}

unint64_t Config.WorkerConfigs.rawValue.getter()
{
  result = 0x6C6F56534F63616DLL;
  switch(*v0)
  {
    case 1:
      result = 0x6F57646F50726961;
      break;
    case 2:
      result = 0x74736F6E67616964;
      break;
    case 3:
      result = 0x676F4C7265776F70;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6E6F697461727564;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x536E6F6973736573;
      break;
    case 8:
      result = 0x6C616E4165726F63;
      break;
    case 9:
      result = 6517874;
      break;
    case 0xA:
      result = 1852797802;
      break;
    case 0xB:
      result = 0x6E6970736C696174;
      break;
    case 0xC:
      result = 0x6E53726576697264;
      break;
    case 0xD:
      result = 0xD000000000000010;
      break;
    case 0xE:
      result = 0x6576697470616461;
      break;
    case 0xF:
      result = 0x6163696669746F6ELL;
      break;
    case 0x10:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_22396DDC4@<X0>(char a1@<W0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  v6 = *v3;
  v7 = *(*v3 + 40);
  sub_2239B3A18();
  v8 = *&aRoot_2[8 * a1];
  sub_2239B3228();

  result = sub_2239B3A78();
  v10 = -1 << *(v6 + 32);
  v11 = result & ~v10;
  if ((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = *&aRoot_2[8 * a1];
    while (*&aRoot_2[8 * *(*(v6 + 48) + v11)] != v13)
    {
      v14 = sub_2239B3958();
      result = swift_bridgeObjectRelease_n();
      if (v14)
      {
        goto LABEL_8;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v6 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_8:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v18 = *v3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_223998464(&unk_27D0A0370, &unk_2239B7088);
      v17 = v18;
    }

    *a2 = *(*(v17 + 48) + v11);
    result = sub_223999128(v11);
    *v3 = v18;
  }

  else
  {
LABEL_6:
    *a2 = 3;
  }

  return result;
}

char *sub_22396DF6C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

uint64_t sub_22396E058(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22396DF44(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_22396E0C4(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_22396E0C4(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_2239B3908();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_2239B33E8();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_223990ADC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_22396E814(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_22396E1BC(void *a1)
{
  v3 = *(v1 + 16);
  v5 = *v3;
  v4 = v3[1];
  v6 = a1[1];

  *a1 = v5;
  a1[1] = v4;
}

void sub_22396E21C(uint64_t a1, unint64_t *a2)
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

void SimpleType.unwrap()(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v3 == 1)
      {
        v5 = MEMORY[0x277D84D38];
      }

      else
      {
        if (v3 != 2)
        {
          goto LABEL_40;
        }

        v5 = MEMORY[0x277D839F8];
      }
    }

    else
    {
      v5 = MEMORY[0x277D84A28];
    }

    a1[3] = v5;
    *a1 = v2;
    return;
  }

  v4 = *(v1 + 8);
  if (*(v1 + 16) <= 4u)
  {
    if (v3 == 3)
    {
      a1[3] = MEMORY[0x277D839B0];
      *a1 = v2 & 1;
      return;
    }

    if (v3 == 4)
    {
      a1[3] = MEMORY[0x277D837D0];
      *a1 = v2;
      a1[1] = v4;

      return;
    }

LABEL_40:
    sub_2239B3768();
    __break(1u);
    return;
  }

  v41 = *v1;
  if (v3 != 5)
  {
    if (v3 == 6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
      v16 = sub_2239B3778();
      v17 = v2 + 64;
      v18 = 1 << *(v2 + 32);
      v19 = -1;
      if (v18 < 64)
      {
        v19 = ~(-1 << v18);
      }

      v20 = v19 & *(v2 + 64);
      sub_22396298C(v2, v4, 6);
      v21 = 0;
      v39 = v16 + 64;
      v40 = v16;
      if (v20)
      {
        while (1)
        {
          v22 = __clz(__rbit64(v20));
          v42 = (v20 - 1) & v20;
LABEL_33:
          v25 = v22 | (v21 << 6);
          v26 = *(v2 + 56);
          v27 = (*(v2 + 48) + 16 * v25);
          v28 = v27[1];
          v43 = *v27;
          v29 = v26 + 24 * v25;
          v31 = *(v29 + 8);
          v46 = *v29;
          v30 = v46;
          v47 = v31;
          v48 = *(v29 + 16);
          v32 = v48;

          v33 = sub_22396298C(v30, v31, v32);
          SimpleType.unwrap()(v45, v33);
          sub_223963BB4(v30, v31, v32);
          v16 = v40;
          *(v39 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
          v34 = (v40[6] + 16 * v25);
          *v34 = v43;
          v34[1] = v28;
          sub_2239685CC(v45, (v40[7] + 32 * v25));
          v35 = v40[2];
          v36 = __OFADD__(v35, 1);
          v37 = v35 + 1;
          if (v36)
          {
            break;
          }

          v40[2] = v37;
          v2 = v41;
          v20 = v42;
          if (!v42)
          {
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v23 = v21;
        while (1)
        {
          v21 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v21 >= ((v18 + 63) >> 6))
          {
            sub_223963BB4(v2, v4, 6);
            a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
            *a1 = v16;
            return;
          }

          v24 = *(v17 + 8 * v21);
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v42 = (v24 - 1) & v24;
            goto LABEL_33;
          }
        }

        __break(1u);
      }

      __break(1u);
    }

    goto LABEL_40;
  }

  v7 = *(v2 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v44 = MEMORY[0x277D84F90];

    sub_2239829F0(0, v7, 0);
    v8 = v44;
    v9 = (v2 + 48);
    do
    {
      v10 = *(v9 - 2);
      v11 = *(v9 - 1);
      v46 = v10;
      v47 = v11;
      v48 = *v9;
      v12 = v48;
      v13 = sub_22396298C(v10, v11, v48);
      SimpleType.unwrap()(v45, v13);
      sub_223963BB4(v10, v11, v12);
      v15 = *(v44 + 16);
      v14 = *(v44 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_2239829F0((v14 > 1), v15 + 1, 1);
      }

      v9 += 24;
      *(v44 + 16) = v15 + 1;
      sub_2239685CC(v45, (v44 + 32 * v15 + 32));
      --v7;
    }

    while (v7);
    sub_223963BB4(v41, v4, 5);
  }

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A03A8, &qword_2239B7448);
  *a1 = v8;
}

void *sub_22396E6A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D0A0038, &qword_2239B5BD0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_22396E718(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
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
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
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

uint64_t sub_22396E814(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = (*a4 + a3);
    v8 = result - a3;
LABEL_6:
    v9 = *(v6 + v4);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      if (*&aRoot_1[8 * v9] == *&aRoot_1[8 * *(v11 - 1)])
      {
        result = swift_bridgeObjectRelease_n();
LABEL_5:
        ++v4;
        ++v7;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v12 = sub_2239B3958();
      result = swift_bridgeObjectRelease_n();
      if ((v12 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v9 = *v11;
      *v11 = *(v11 - 1);
      *--v11 = v9;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t DiagnosticRulesConfig.minSessionLength.getter()
{
  result = *(v0 + 40);
  v2 = *(v0 + 48);
  return result;
}

uint64_t sub_22396E920(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0 || !(a2 & 0x2000000000000000 | a1 & 0x1000000000000000))
  {
    sub_2239B3668();

    v6 = v9;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = (v3 > 0x20u || ((0x100003E01uLL >> v3) & 1) == 0) && (v7 = _swift_stdlib_strtod_clocale()) != 0 && *v7 == 0;
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v4 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v5 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v4 = sub_2239B36B8();
      }

      v6 = sub_22396EADC(v4, v5, sub_22396EB3C);
    }
  }

  if (v6)
  {
    return 0;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22396EADC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr))
{
  if (a1)
  {
    a3(&var2);
    if (!v3)
    {
      v4 = var2;
    }
  }

  else
  {
    (a3)((&var2 + 1), 0, 0);
    if (!v3)
    {
      v4 = BYTE1(var2);
    }
  }

  return v4 & 1;
}

void *sub_22396EB3C@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

_BYTE *sub_22396EB80@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
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

uint64_t sub_22396EC14(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE90, &qword_2239B5170);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static DeviceUtilities.thermalState()()
{
  if (qword_281336380 != -1)
  {
    swift_once();
  }

  type metadata accessor for ThermalState(0);
  sub_2239B3528();
  return v1;
}

void sub_22396ED2C(_BYTE *a1@<X8>)
{
  if (qword_281336338 != -1)
  {
    swift_once();
  }

  v3 = *(off_281336340 + 2);

  os_unfair_lock_lock((v3 + 24));
  sub_223987168((v3 + 16), &v7);
  if (v1)
  {
    os_unfair_lock_unlock((v3 + 24));
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock((v3 + 24));
    v4 = v7;

    if (v4)
    {
      v5 = [objc_opt_self() processInfo];
      v6 = [v5 isLowPowerModeEnabled];

      byte_281336360 = v6;
    }

    *a1 = byte_281336360;
  }
}

uint64_t sub_22396EE4C(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_223997128(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_223998464(&unk_27D0A0370, &unk_2239B7088);
      goto LABEL_13;
    }

    sub_2239987CC(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  sub_2239B3A18();
  v11 = *&aRoot_2[8 * v6];
  sub_2239B3228();

  result = sub_2239B3A78();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = *&aRoot_2[8 * v6];
    while (*&aRoot_2[8 * *(*(v9 + 48) + a2)] != v14)
    {
      v15 = sub_2239B3958();
      result = swift_bridgeObjectRelease_n();
      if (v15)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v13;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v16 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v16 + 48) + a2) = v6;
  v17 = *(v16 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v16 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_16:
  swift_bridgeObjectRelease_n();
LABEL_17:
  result = sub_2239B3998();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall SimpleType.isTrue()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  LODWORD(v3) = *(v0 + 16);
  if (LODWORD(v3) <= 1)
  {
    if (!*(v0 + 16))
    {
      LOBYTE(v3) = v1 == 1;
      sub_22396298C(v1, v2, 0);
      return LOBYTE(v3) & 1;
    }

    if (LODWORD(v3) == 1)
    {
      LOBYTE(v3) = v1 == 1;
      sub_22396298C(v1, v2, 1);
      return LOBYTE(v3) & 1;
    }

LABEL_12:
    v10 = *v0;
    v11 = v2;
    sub_22396298C(v1, v2, SLOBYTE(v3));
    sub_223963BB4(*&v10, v11, SLOBYTE(v3));
    LOBYTE(v3) = 0;
    return LOBYTE(v3) & 1;
  }

  if (LODWORD(v3) == 2)
  {
    v9 = *v0;
    LOBYTE(v3) = *&v1 == 1.0;
    sub_22396298C(v1, v2, 2);
    return LOBYTE(v3) & 1;
  }

  if (LODWORD(v3) == 3)
  {
    v3 = *v0;
    sub_22396298C(v1, v2, 3);
    return LOBYTE(v3) & 1;
  }

  if (LODWORD(v3) != 4)
  {
    goto LABEL_12;
  }

  v3 = *v0;
  v4 = *(v0 + 8);
  v5 = sub_2239B31D8();
  v7 = v6;
  sub_22396298C(*&v3, v4, 4);
  v8 = sub_223963BB4(*&v3, v4, 4);
  v14[0] = v5;
  v14[1] = v7;
  MEMORY[0x28223BE20](v8);
  v13[2] = v14;
  LOBYTE(v3) = sub_223968CB8(sub_223968DBC, v13, &unk_2836FD418);
  swift_arrayDestroy();

  return LOBYTE(v3) & 1;
}

Swift::Void __swiftcall OsTransactionHandler.sessionStopped(for:)(Swift::Int64 a1)
{
  v3 = sub_2239B2FC8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + 16);
  os_unfair_lock_lock(v8 + 4);
  v9 = OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_activeReporterIDs;
  swift_beginAccess();
  sub_22396F388(a1);
  swift_endAccess();
  if (*(v1 + 24) && !*(*(v1 + v9) + 16))
  {
    *(v1 + 24) = 0;
    swift_unknownObjectRelease();
    sub_2239B2FB8();
    sub_2239B2FA8();
    v11 = v10;
    (*(v4 + 8))(v7, v3);
    *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase20OsTransactionHandler_lastActiveTime) = v11;
    v12 = sub_2239B3028();
    v13 = sub_2239B34D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = a1;
      _os_log_impl(&dword_22395C000, v12, v13, "Marking clean, setting OsTransaction to nil. { reporterID=%lld }", v14, 0xCu);
      MEMORY[0x223DEF1D0](v14, -1, -1);
    }
  }

  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_22396F388(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v5 = sub_2239B3A08();
  v6 = -1 << *(v3 + 32);
  v7 = v5 & ~v6;
  if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  while (*(*(v3 + 48) + 8 * v7) != a1)
  {
    v7 = (v7 + 1) & v8;
    if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
    {
      return 0;
    }
  }

  v10 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v1;
  v14 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_223998324();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v7);
  sub_22396F478(v7);
  result = v13;
  *v1 = v14;
  return result;
}

unint64_t sub_22396F478(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2239B3628();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(v3 + 48);
        v12 = (v11 + 8 * v6);
        v13 = *v12;
        v14 = sub_2239B3A08() & v7;
        if (v2 >= v9)
        {
          if (v14 >= v9 && v2 >= v14)
          {
LABEL_16:
            v17 = (v11 + 8 * v2);
            if (v2 != v6 || v17 >= v12 + 1)
            {
              *v17 = *v12;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v9 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t static Utilities.serviceTypeDescription(from:)(unsigned __int16 a1)
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

void sub_22396F840()
{
  CFPreferencesFlushCaches();
  if (qword_281336648 != -1)
  {
    swift_once();
  }

  v0 = sub_2239B3048();
  __swift_project_value_buffer(v0, qword_281336650);
  oslog = sub_2239B3028();
  v1 = sub_2239B34D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_22395C000, oslog, v1, "Flushed CFPreferences in-memory cache.", v2, 2u);
    MEMORY[0x223DEF1D0](v2, -1, -1);
  }
}

_WORD *sub_22396F92C@<X0>(_WORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 2) = 0;
  return result;
}

uint64_t sub_22396F970@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_2239B3188();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_22396F99C()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  v4 = v0[10];

  v5 = v0[14];

  v6 = v0[23];

  v7 = v0[25];

  v8 = v0[26];

  v9 = v0[27];

  v10 = v0[28];

  v11 = v0[29];

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_22396FA24(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22396FA44(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_22396FA80()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22396FAC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata3();
  sub_2239B3408();

  return swift_getWitnessTable();
}

uint64_t sub_22396FBAC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  v8 = a1[7];
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata();
  sub_2239B3408();
  return swift_getWitnessTable();
}

uint64_t sub_22396FCB0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_2813367D8;
  *a1 = qword_2813367D0;
  a1[1] = v2;
}

uint64_t sub_22396FD04@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_2813367E8;
  *a1 = *aUnknown_0;
  a1[1] = v2;
}

uint64_t sub_22396FD58()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_22396FD90()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_22396FE00()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[9];

  v7 = v0[11];

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_22396FFA0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[9];

  v6 = v0[11];

  v7 = v0[13];

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_223970008()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[10];

  v6 = v0[13];

  if (v0[14])
  {
    v7 = v0[15];
  }

  if (v0[16])
  {
    v8 = v0[17];
  }

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_223970220()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 88);

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

void *sub_223970298@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  *(a2 + 8) = v2;
  *(a2 + 16) = 4;
  return result;
}

uint64_t sub_2239702AC()
{
  sub_223963BB4(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

uint64_t sub_223970328()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 48);

  v5 = *(v0 + 56);

  v6 = *(v0 + 80);

  v7 = *(v0 + 96);

  v8 = *(v0 + 104);

  v9 = *(v0 + 120);

  v10 = *(v0 + 128);

  v11 = *(v0 + 136);

  v12 = *(v0 + 144);

  v13 = *(v0 + 152);

  v14 = *(v0 + 160);

  v15 = *(v0 + 168);

  return MEMORY[0x2821FE8E8](v0, 178, 7);
}

uint64_t sub_2239703D8()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[10];

  v7 = v0[12];

  v8 = v0[14];

  v9 = v0[16];

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_223970460()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[6];

  v5 = v0[7];

  v6 = v0[8];

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2239704C0()
{
  v1 = v0[3];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[13];

  v6 = v0[14];

  v7 = v0[16];

  v8 = v0[25];

  v9 = v0[27];

  v10 = v0[28];

  v11 = v0[29];

  v12 = v0[30];

  v13 = v0[31];

  return MEMORY[0x2821FE8E8](v0, 256, 7);
}

uint64_t sub_223970558@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = a1 + a2;
  v5 = *(a1 + a2 - 16);
  v6 = *(v4 - 8);
  v7 = type metadata accessor for ValueWithChangeIndicator();
  return ValueWithChangeIndicator.value.getter(v7, a3);
}

__n128 sub_2239705A4(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

BOOL AudioAnalyticsTapToRadarWrapperSend(void *a1, void *a2, void *a3, void *a4, void *a5, void *a6, uint64_t a7, void *a8, void *a9)
{
  v29 = a1;
  v16 = a2;
  v28 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a8;
  v21 = a9;
  getRadarDraftClass();
  v22 = objc_opt_new();
  v23 = v22;
  if (v22)
  {
    [v22 setTitle:v29];
    [v23 setProblemDescription:v16];
    v24 = [objc_alloc(getRadarComponentClass()) initWithName:v18 version:v19 identifier:a7];
    v25 = v24 != 0;
    if (v24)
    {
      [v23 setComponent:v24];
      [v23 setReproducibility:5];
      [v23 setClassification:6];
      [v23 setDiagnosticExtensionIDs:&unk_283701298];
      [v23 setAttachments:v17];
      [v23 setAutoDiagnostics:0];
      [v23 setIsUserInitiated:1];
      [v23 setKeywords:&unk_2837012B0];
      v26 = [(objc_class *)getTapToRadarServiceClass() shared];
      [v26 createDraft:v23 forProcessNamed:v20 withDisplayReason:v28 completionHandler:v21];
    }
  }

  else
  {
    v25 = 0;
  }

  return v25;
}

Class initRadarDraft(void)
{
  if (TapToRadarKitLibrary(void)::sOnce != -1)
  {
    initRadarDraft();
  }

  result = objc_getClass("RadarDraft");
  classRadarDraft = result;
  getRadarDraftClass = RadarDraftFunction;
  return result;
}

void *___ZL20TapToRadarKitLibraryv_block_invoke()
{
  result = dlopen("/AppleInternal/Library/Frameworks/TapToRadarKit.framework/TapToRadarKit", 2);
  TapToRadarKitLibrary(void)::sLib = result;
  return result;
}

Class initRadarComponent(void)
{
  if (TapToRadarKitLibrary(void)::sOnce != -1)
  {
    initRadarDraft();
  }

  result = objc_getClass("RadarComponent");
  classRadarComponent = result;
  getRadarComponentClass = RadarComponentFunction;
  return result;
}

Class initTapToRadarService(void)
{
  if (TapToRadarKitLibrary(void)::sOnce != -1)
  {
    initRadarDraft();
  }

  result = objc_getClass("TapToRadarService");
  classTapToRadarService = result;
  getTapToRadarServiceClass = TapToRadarServiceFunction;
  return result;
}

void sub_223970D24(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  if ((a2 & 1) == 0)
  {
    if (qword_281336780 != -1)
    {
      swift_once();
    }

    LOBYTE(v137) = 9;
    sub_22397F28C(a1, qword_2813382C0, &v137);
    if (v3)
    {
      v171 = v3;
LABEL_13:

      return;
    }
  }

  v8 = sub_223974060(v7);

  if ((a2 & 1) == 0)
  {
    sub_22399DB68(v8);
    if (v3)
    {
      v171 = v3;
LABEL_12:

      goto LABEL_13;
    }
  }

  v10 = sub_2239AEB14(v9);
  v171 = v3;

  if ((a2 & 1) == 0)
  {
    v11 = v171;
    sub_22399D854(v10);
    v171 = v11;
    if (v11)
    {

      goto LABEL_12;
    }
  }

  v12 = sub_22399B688(2u, v10);
  v13 = v171;
  v14 = sub_22398A144(v12);
  v171 = v13;
  if (v13)
  {

    return;
  }

  v15 = v14;
  v85 = a3;

  v16 = sub_22399B88C(1u, v10);
  v101 = (v16 == 2) | v16;
  v17 = sub_22399BA80(3u, v10);
  v96 = sub_22399BC80(4u, v10);
  v98 = v18;
  v92 = sub_22399BC80(5u, v10);
  v94 = v19;
  v103 = sub_22399BC80(6u, v10);
  v21 = v20;
  v90 = sub_22399BC80(7u, v10);
  v23 = v22;
  v24 = sub_22399BE78(8u, v10);
  v86 = v25;
  v88 = v24;

  v170 = BYTE4(v17) & 1;
  v169 = v21 & 1;
  v26 = *&v96;
  v168 = v23 & 1;
  LOBYTE(v162) = v101 & 1;
  if (v98)
  {
    v26 = 0.0;
  }

  v27 = *&v92;
  *(&v162 + 1) = v15;
  LODWORD(v163) = v17;
  if (v94)
  {
    v27 = 3600.0;
  }

  BYTE4(v163) = v170;
  *(&v163 + 1) = v26;
  *&v164 = v27;
  *(&v164 + 1) = v103;
  LOBYTE(v165) = v169;
  *(&v165 + 1) = v90;
  LOBYTE(v166) = v168;
  *(&v166 + 1) = v88;
  v167 = v86;
  v99 = sub_22399C06C(0, v8);
  v95 = sub_22399C20C(1u, v8);
  v104 = v28;
  v97 = sub_22399C20C(2u, v8);
  v102 = v29;
  v93 = sub_22399C20C(3u, v8);
  v31 = v30;
  v91 = sub_22399C20C(4u, v8);
  v33 = v32;
  v34 = sub_22399C20C(5u, v8);
  v36 = v35;
  v37 = sub_22399C3AC(6u, v8);
  v39 = v38;

  v40 = v171;
  CommonConfigFields.init(dict:)(a1, &v155);
  if (v40)
  {
    v171 = v40;
    sub_223973A10(&v162);

    return;
  }

  v41 = v31;
  v82 = v39;
  v83 = v37;
  v84 = v34;
  v89 = v36;
  v42 = v104;
  v43 = v160;
  if (v99 != 2 && (v99 & 1) == 0)
  {
    v171 = 0;
    sub_223973A10(&v162);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v49 = sub_2239B3048();
    __swift_project_value_buffer(v49, qword_2813366C8);

    v50 = sub_2239B3028();
    v51 = sub_2239B34C8();

    v52 = v85;
    if (os_log_type_enabled(v50, v51))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v137 = v54;
      *v53 = 136380675;
      if (v104)
      {

        v55 = v95;
      }

      else
      {
        if (v102)
        {
          v55 = v97;
        }

        else
        {
          v55 = 0x6E776F6E6B6E75;
        }

        if (v102)
        {
          v42 = v102;
        }

        else
        {
          v42 = 0xE700000000000000;
        }
      }

      v63 = sub_223973B2C(v55, v42, &v137);

      *(v53 + 4) = v63;
      _os_log_impl(&dword_22395C000, v50, v51, "Instance disabled. { instance=%{private}s }", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x223DEF1D0](v54, -1, -1);
      MEMORY[0x223DEF1D0](v53, -1, -1);
    }

    else
    {
    }

    goto LABEL_53;
  }

  v87 = v158;
  v100 = v159;
  v44 = v102;
  if (v102 && v104)
  {
    sub_223973A10(&v162);

    sub_223973AD8();
    v45 = swift_allocError();
    *v46 = 0xD000000000000033;
    *(v46 + 8) = 0x80000002239B9EF0;
    *(v46 + 16) = 1;
LABEL_27:
    v171 = v45;
    swift_willThrow();
    return;
  }

  v81 = v161;
  if (!v104)
  {
    v47 = v157;
    v154 = 1;
    if (!v102)
    {
      sub_223973A10(&v162);

      sub_223973AD8();
      v45 = swift_allocError();
      *v62 = 0xD000000000000025;
      *(v62 + 8) = 0x80000002239B9EA0;
      *(v62 + 16) = 1;
      goto LABEL_27;
    }

    v79 = v156;
    v80 = v155;
    v171 = 0;
    v56 = v41;
    v57 = v89;
LABEL_55:

    v42 = v44;
    v71 = v97;
    goto LABEL_56;
  }

  v79 = v156;
  v80 = v155;
  v47 = v157;
  v48 = sub_2239B37B8() != 0;
  sub_2239721D0(a2 & 1, 0xD000000000000013, 0x80000002239B9ED0, v95, v104, v48, &v137);
  v171 = 0;
  v154 = v137;
  v56 = v41;
  v44 = v102;
  if (v137 == 1)
  {
    sub_223973A10(&v162);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v58 = sub_2239B3048();
    __swift_project_value_buffer(v58, qword_2813366C8);
    v59 = sub_2239B3028();
    v60 = sub_2239B34C8();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_22395C000, v59, v60, "Unknown ABC instance found in config, but allowUnknownFields is true, so continuing.", v61, 2u);
      MEMORY[0x223DEF1D0](v61, -1, -1);
    }

    v52 = v85;
LABEL_53:
    sub_223974600(&v137);
    v64 = v148;
    v52[10] = v147;
    v52[11] = v64;
    v65 = v150;
    v52[12] = v149;
    v52[13] = v65;
    v66 = v144;
    v52[6] = v143;
    v52[7] = v66;
    v67 = v146;
    v52[8] = v145;
    v52[9] = v67;
    v68 = v140;
    v52[2] = v139;
    v52[3] = v68;
    v69 = v142;
    v52[4] = v141;
    v52[5] = v69;
    v70 = v138;
    *v52 = v137;
    v52[1] = v70;
    return;
  }

  v71 = v95;
  v57 = v89;
  if (v102)
  {
    goto LABEL_55;
  }

LABEL_56:
  *(&v152[2] + 7) = v164;
  *(&v152[3] + 7) = v165;
  *(&v152[4] + 7) = v166;
  *(&v152[5] + 7) = v167;
  *(v152 + 7) = v162;
  *(&v152[1] + 7) = v163;
  *&v110[33] = v152[2];
  *&v110[49] = v152[3];
  *&v110[65] = v152[4];
  *&v110[80] = *(&v152[4] + 15);
  *&v110[1] = v152[0];
  *&v110[17] = v152[1];
  v126 = v152[1];
  v125 = v152[0];
  *&v129[15] = *(&v152[4] + 15);
  *v129 = v152[4];
  v128 = v152[3];
  v153 = v82 & 1;
  v151 = v79;
  LOBYTE(v105) = v154;
  *(&v105 + 1) = v71;
  *&v106 = v42;
  *(&v106 + 1) = v93;
  *&v107 = v56;
  *(&v107 + 1) = v91;
  *&v108 = v33;
  *(&v108 + 1) = v84;
  *&v109 = v57;
  *(&v109 + 1) = v83;
  v110[0] = v82 & 1;
  LOWORD(v111) = v80;
  BYTE2(v111) = v79;
  *(&v111 + 1) = v47;
  *&v112 = v87;
  *(&v112 + 1) = v100;
  *&v113 = v43;
  *(&v113 + 1) = v81;
  v114[0] = v154;
  v115 = v71;
  v116 = v42;
  v117 = v93;
  v118 = v56;
  v119 = v91;
  v120 = v33;
  v121 = v84;
  v122 = v57;
  v123 = v83;
  v124 = v82 & 1;
  v127 = v152[2];
  v130 = v80;
  v131 = v79;
  v132 = v47;
  v133 = v87;
  v134 = v100;
  v135 = v43;
  v136 = v81;
  sub_223974598(&v105, &v137);
  sub_2239745D0(v114);
  v147 = *&v110[80];
  v148 = v111;
  v149 = v112;
  v150 = v113;
  v143 = *&v110[16];
  v144 = *&v110[32];
  v145 = *&v110[48];
  v146 = *&v110[64];
  v139 = v107;
  v140 = v108;
  v141 = v109;
  v142 = *v110;
  v137 = v105;
  v138 = v106;
  nullsub_1(&v137);
  v72 = v148;
  v85[10] = v147;
  v85[11] = v72;
  v73 = v150;
  v85[12] = v149;
  v85[13] = v73;
  v74 = v144;
  v85[6] = v143;
  v85[7] = v74;
  v75 = v146;
  v85[8] = v145;
  v85[9] = v75;
  v76 = v140;
  v85[2] = v139;
  v85[3] = v76;
  v77 = v142;
  v85[4] = v141;
  v85[5] = v77;
  v78 = v138;
  *v85 = v137;
  v85[1] = v78;
}

void ABCConfig.init(enabled:instance:name:caseType:caseSubType:caseSubTypeContext:snapshotDelay:diagnosticRulesConfig:commonFields:allowUnknownFields:)(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, char a13, __int128 *a14, unint64_t *a15, char a16)
{
  v16 = a3;
  v18 = a14[3];
  v134 = a14[2];
  v135 = v18;
  v136 = a14[4];
  v137 = *(a14 + 10);
  v19 = a14[1];
  v132 = *a14;
  v133 = v19;
  v20 = *a15;
  v21 = a15[1];
  v22 = a15[2];
  v23 = a15[3];
  v24 = a15[4];
  v87 = a15[5];
  if (a1 != 2 && (a1 & 1) == 0)
  {
    v84 = a5;
    sub_223973A10(&v132);
    sub_223973A64(v20, v21);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v31 = sub_2239B3048();
    __swift_project_value_buffer(v31, qword_2813366C8);

    v32 = sub_2239B3028();
    v33 = sub_2239B34C8();

    if (!os_log_type_enabled(v32, v33))
    {

LABEL_32:

      sub_223974600(&v112);
      v44 = v118;
      a9[10] = *&v117[80];
      a9[11] = v44;
      v45 = v120;
      a9[12] = v119;
      a9[13] = v45;
      v46 = *&v117[32];
      a9[6] = *&v117[16];
      a9[7] = v46;
      v47 = *&v117[64];
      a9[8] = *&v117[48];
      a9[9] = v47;
      v48 = v115;
      a9[2] = v114;
      a9[3] = v48;
      v49 = *v117;
      a9[4] = v116;
      a9[5] = v49;
      v50 = v113;
      *a9 = v112;
      a9[1] = v50;
      return;
    }

    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *&v112 = v35;
    *v34 = 136380675;
    if (v16)
    {

      v36 = a2;
    }

    else
    {
      if (v84)
      {
        v36 = a4;
      }

      else
      {
        v36 = 0x6E776F6E6B6E75;
      }

      if (v84)
      {
        v16 = v84;
      }

      else
      {
        v16 = 0xE700000000000000;
      }
    }

    v43 = sub_223973B2C(v36, v16, &v112);

    *(v34 + 4) = v43;
    _os_log_impl(&dword_22395C000, v32, v33, "Instance disabled. { instance=%{private}s }", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x223DEF1D0](v35, -1, -1);
    v41 = v34;
LABEL_31:
    MEMORY[0x223DEF1D0](v41, -1, -1);
    goto LABEL_32;
  }

  if (a5 && a3)
  {
    sub_223973A10(&v132);
    sub_223973A64(v20, v21);

    sub_223973AD8();
    v25 = swift_allocError();
    *v26 = 0xD000000000000033;
    *(v26 + 8) = 0x80000002239B9EF0;
    *(v26 + 16) = 1;
LABEL_6:
    v138 = v25;
    swift_willThrow();
    return;
  }

  v81 = a15[1];
  if (!a3)
  {
    v131 = 1;
    if (!a5)
    {
      sub_223973A10(&v132);

      sub_223973A64(v20, v21);
      sub_223973AD8();
      v25 = swift_allocError();
      *v42 = 0xD000000000000025;
      *(v42 + 8) = 0x80000002239B9EA0;
      *(v42 + 16) = 1;
      goto LABEL_6;
    }

    v77 = a6;
    v78 = a10;
    v37 = a7;
    v27 = a4;
LABEL_34:
    v51 = a5;

    v52 = v51;
    v53 = v27;
    goto LABEL_35;
  }

  v77 = a6;
  v78 = a10;
  v83 = a5;
  v27 = a4;
  v29 = sub_2239B37B8() != 0;
  v30 = v138;
  sub_2239721D0(a16 & 1, 0xD000000000000013, 0x80000002239B9ED0, a2, v16, v29, &v112);
  v138 = v30;
  if (v30)
  {
    sub_223973A10(&v132);
    sub_223973A64(v20, v21);

    return;
  }

  v131 = v112;
  v37 = a7;
  if (v112 == 1)
  {
    sub_223973A10(&v132);
    sub_223973A64(v20, v81);

    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v38 = sub_2239B3048();
    __swift_project_value_buffer(v38, qword_2813366C8);
    v32 = sub_2239B3028();
    v39 = sub_2239B34C8();
    if (!os_log_type_enabled(v32, v39))
    {
      goto LABEL_32;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22395C000, v32, v39, "Unknown ABC instance found in config, but allowUnknownFields is true, so continuing.", v40, 2u);
    v41 = v40;
    goto LABEL_31;
  }

  a5 = v83;
  if (v83)
  {
    goto LABEL_34;
  }

  v53 = a2;
  v52 = v16;
LABEL_35:
  *&v129[39] = v134;
  *&v129[55] = v135;
  *&v129[71] = v136;
  *&v129[7] = v132;
  v130 = a13 & 1;
  *&v129[87] = v137;
  *&v129[23] = v133;
  v54 = v81;
  if (v81 == 1)
  {
    v55 = v52;
    v75 = v53;
    v56 = sub_223974468(MEMORY[0x277D84F90]);
    v57 = v138;
    CommonConfigFields.init(dict:)(v56, &v121);
    v138 = v57;
    if (v57)
    {

      v114 = *&v129[39];
      v115 = *&v129[55];
      v116 = *&v129[71];
      *v117 = *&v129[87];
      v112 = *&v129[7];
      v113 = *&v129[23];
      sub_223973A10(&v112);
      return;
    }

    LOWORD(v20) = v121;
    LOBYTE(v58) = v122;
    v54 = v123;
    v22 = v124;
    v23 = v125;
    v24 = v126;
    v87 = v127;
    v53 = v75;
    v59 = v78;
    v52 = v55;
  }

  else
  {
    v58 = (v20 >> 16) & 1;
    v59 = v78;
  }

  v82 = v54;
  v128 = v58;
  v76 = v131;
  LOBYTE(v89) = v131;
  *(&v89 + 1) = v53;
  *&v90 = v52;
  *(&v90 + 1) = v77;
  *&v91 = v37;
  v80 = v37;
  *(&v91 + 1) = a8;
  *&v92 = v59;
  *(&v92 + 1) = a11;
  v93 = a12;
  v73 = v130;
  v94[0] = v130;
  *&v94[33] = *&v129[32];
  *&v94[49] = *&v129[48];
  *&v94[65] = *&v129[64];
  *&v94[80] = *&v129[79];
  *&v94[1] = *v129;
  *&v94[17] = *&v129[16];
  LOWORD(v95) = v20;
  v71 = v58;
  BYTE2(v95) = v58;
  *(&v95 + 1) = v54;
  *&v96 = v22;
  v72 = v22;
  v60 = v23;
  *(&v96 + 1) = v23;
  *&v97 = v24;
  *(&v97 + 1) = v87;
  v104 = *&v94[16];
  v105 = *&v94[32];
  v106 = *&v94[48];
  v107 = *&v94[64];
  v100 = v91;
  v101 = v92;
  v102 = a12;
  v103 = *v94;
  v98 = v89;
  v99 = v90;
  v110 = v96;
  v111 = v97;
  v108 = *&v129[79];
  v109 = v95;
  v61 = v53;
  v62 = v52;
  v63 = v59;
  nullsub_1(&v98);
  v64 = v109;
  a9[10] = v108;
  a9[11] = v64;
  v65 = v111;
  a9[12] = v110;
  a9[13] = v65;
  v66 = v105;
  a9[6] = v104;
  a9[7] = v66;
  v67 = v107;
  a9[8] = v106;
  a9[9] = v67;
  v68 = v101;
  a9[2] = v100;
  a9[3] = v68;
  v69 = v103;
  a9[4] = v102;
  a9[5] = v69;
  v70 = v99;
  *a9 = v98;
  a9[1] = v70;
  *&v117[33] = *&v129[32];
  *&v117[49] = *&v129[48];
  *&v117[65] = *&v129[64];
  *&v117[80] = *&v129[79];
  *&v117[1] = *v129;
  LOBYTE(v112) = v76;
  *(&v112 + 1) = v61;
  *&v113 = v62;
  *(&v113 + 1) = v77;
  *&v114 = v80;
  *(&v114 + 1) = a8;
  *&v115 = v63;
  *(&v115 + 1) = a11;
  v116 = a12;
  v117[0] = v73;
  *&v117[17] = *&v129[16];
  LOWORD(v118) = v20;
  BYTE2(v118) = v71;
  *(&v118 + 1) = v82;
  *&v119 = v72;
  *(&v119 + 1) = v60;
  *&v120 = v24;
  *(&v120 + 1) = v87;
  sub_223974598(&v89, v88);
  sub_2239745D0(&v112);
}

uint64_t ABCConfig.ABCInstanceName.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_2239B37B8();

  *a1 = v2 != 0;
  return result;
}

void sub_2239721D0(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  if (a6)
  {
    if (a1)
    {
      if (qword_2813366C0 != -1)
      {
        swift_once();
      }

      v12 = sub_2239B3048();
      __swift_project_value_buffer(v12, qword_2813366C8);

      v13 = sub_2239B3028();
      v14 = sub_2239B34E8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v23 = v16;
        *v15 = 136446467;
        *(v15 + 4) = sub_223973B2C(a2, a3, &v23);
        *(v15 + 12) = 2081;
        if (a5)
        {
          v17 = a4;
        }

        else
        {
          v17 = 7104878;
        }

        if (a5)
        {
          v18 = a5;
        }

        else
        {
          v18 = 0xE300000000000000;
        }

        v19 = sub_223973B2C(v17, v18, &v23);

        *(v15 + 14) = v19;
        _os_log_impl(&dword_22395C000, v13, v14, "%{public}s %{private}s", v15, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DEF1D0](v16, -1, -1);
        MEMORY[0x223DEF1D0](v15, -1, -1);
      }

      *a7 = 1;
    }

    else
    {
      v23 = 8315;
      v24 = 0xE200000000000000;
      if (a5)
      {
        v20 = a4;
      }

      else
      {
        v20 = 7104878;
      }

      if (a5)
      {
        v21 = a5;
      }

      else
      {
        v21 = 0xE300000000000000;
      }

      MEMORY[0x223DEE030](v20, v21);

      MEMORY[0x223DEE030](32032, 0xE200000000000000);

      MEMORY[0x223DEE030](v23, v24);

      sub_223973AD8();
      swift_allocError();
      *v22 = a2;
      *(v22 + 8) = a3;
      *(v22 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    *a7 = 0;
  }
}

uint64_t sub_22397247C(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6)
{
  v6 = a6;
  if ((a6 & 0x10000) == 0)
  {
    return a6 & 0x10000 | v6;
  }

  if (a1)
  {
    v25 = a6;
    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v11 = sub_2239B3048();
    __swift_project_value_buffer(v11, qword_2813366C8);

    v12 = sub_2239B3028();
    v13 = sub_2239B34E8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v23 = v15;
      *v14 = 136446467;
      *(v14 + 4) = sub_223973B2C(a2, a3, &v23);
      *(v14 + 12) = 2081;
      if (a5)
      {
        v16 = a4;
      }

      else
      {
        v16 = 7104878;
      }

      if (a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      v18 = sub_223973B2C(v16, v17, &v23);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22395C000, v12, v13, "%{public}s %{private}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DEF1D0](v15, -1, -1);
      MEMORY[0x223DEF1D0](v14, -1, -1);
    }

    v6 = 0;
    a6 = v25;
    return a6 & 0x10000 | v6;
  }

  v23 = 8315;
  v24 = 0xE200000000000000;
  if (a5)
  {
    v20 = a4;
  }

  else
  {
    v20 = 7104878;
  }

  if (a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x223DEE030](v20, v21);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);

  MEMORY[0x223DEE030](v23, v24);

  sub_223973AD8();
  swift_allocError();
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v22 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_223972728(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  v6 = a6;
  if ((a6 & 0x100000000) == 0)
  {
    return v6 | ((HIDWORD(a6) & 1) << 32);
  }

  if (a1)
  {
    v23 = a6;
    if (qword_2813366C0 != -1)
    {
      swift_once();
    }

    v11 = sub_2239B3048();
    __swift_project_value_buffer(v11, qword_2813366C8);

    v12 = sub_2239B3028();
    v13 = sub_2239B34E8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136446467;
      *(v14 + 4) = sub_223973B2C(a2, a3, &v24);
      *(v14 + 12) = 2081;
      if (a5)
      {
        v16 = a4;
      }

      else
      {
        v16 = 7104878;
      }

      if (a5)
      {
        v17 = a5;
      }

      else
      {
        v17 = 0xE300000000000000;
      }

      v18 = sub_223973B2C(v16, v17, &v24);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_22395C000, v12, v13, "%{public}s %{private}s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DEF1D0](v15, -1, -1);
      MEMORY[0x223DEF1D0](v14, -1, -1);
    }

    v6 = 0;
    a6 = v23;
    return v6 | ((HIDWORD(a6) & 1) << 32);
  }

  v24 = 8315;
  v25 = 0xE200000000000000;
  if (a5)
  {
    v20 = a4;
  }

  else
  {
    v20 = 7104878;
  }

  if (a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  MEMORY[0x223DEE030](v20, v21);

  MEMORY[0x223DEE030](32032, 0xE200000000000000);

  MEMORY[0x223DEE030](v24, v25);

  sub_223973AD8();
  swift_allocError();
  *v22 = a2;
  *(v22 + 8) = a3;
  *(v22 + 16) = 1;
  return swift_willThrow();
}

void sub_2239729D8(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char a6@<W5>, _BYTE *a7@<X8>)
{
  if (a6 == 3)
  {
    v29 = v8;
    v30 = v9;
    if (a1)
    {
      v28 = v7;
      if (qword_2813366C0 != -1)
      {
        swift_once();
      }

      v15 = sub_2239B3048();
      __swift_project_value_buffer(v15, qword_2813366C8);

      v16 = sub_2239B3028();
      v17 = sub_2239B34E8();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136446467;
        *(v18 + 4) = sub_223973B2C(a2, a3, &v26);
        *(v18 + 12) = 2081;
        if (a5)
        {
          v20 = a4;
        }

        else
        {
          v20 = 7104878;
        }

        if (a5)
        {
          v21 = a5;
        }

        else
        {
          v21 = 0xE300000000000000;
        }

        v22 = sub_223973B2C(v20, v21, &v26);

        *(v18 + 14) = v22;
        _os_log_impl(&dword_22395C000, v16, v17, "%{public}s %{private}s", v18, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DEF1D0](v19, -1, -1);
        MEMORY[0x223DEF1D0](v18, -1, -1);
      }

      *a7 = 3;
    }

    else
    {
      v26 = 8315;
      v27 = 0xE200000000000000;
      if (a5)
      {
        v23 = a4;
      }

      else
      {
        v23 = 7104878;
      }

      if (a5)
      {
        v24 = a5;
      }

      else
      {
        v24 = 0xE300000000000000;
      }

      MEMORY[0x223DEE030](v23, v24);

      MEMORY[0x223DEE030](32032, 0xE200000000000000);

      MEMORY[0x223DEE030](v26, v27);

      sub_223973AD8();
      swift_allocError();
      *v25 = a2;
      *(v25 + 8) = a3;
      *(v25 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    *a7 = a6;
  }
}

uint64_t ABCConfig.name.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t ABCConfig.caseType.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t ABCConfig.caseSubType.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t ABCConfig.caseSubTypeContext.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t ABCConfig.snapshotDelay.getter()
{
  result = *(v0 + 72);
  v2 = *(v0 + 80);
  return result;
}

uint64_t ABCConfig.diagnosticRulesConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  v4 = *(v1 + 152);
  v10 = *(v1 + 136);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 168);
  v6 = *(v1 + 104);
  v9[0] = *(v1 + 88);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_223969B50(v9, v8);
}

uint64_t ABCConfig.commonFields.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 178);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  *a1 = *(v1 + 176);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t sub_223972E64()
{
  sub_2239B3A18();
  sub_2239B3228();
  return sub_2239B3A78();
}

uint64_t sub_223972EC0()
{
  sub_2239B3A18();
  sub_2239B3228();
  return sub_2239B3A78();
}

uint64_t sub_223972F08@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2239B37B8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_223972F88()
{
  *v0;
  *v0;
  *v0;
  sub_2239B3228();
}

uint64_t sub_2239730B0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_22397441C();
  *a2 = result;
  return result;
}

void sub_2239730E0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
  v5 = 0x80000002239B9010;
  v6 = 0xD000000000000012;
  if (v2 != 5)
  {
    v6 = 0x746F687370616E73;
    v5 = 0xED000079616C6544;
  }

  v7 = 0xE800000000000000;
  v8 = 0x6570795465736163;
  if (v2 != 3)
  {
    v8 = 0x5462755365736163;
    v7 = 0xEB00000000657079;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x65636E6174736E69;
  if (v2 != 1)
  {
    v10 = 1701667182;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_2239731E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD40, &qword_2239B8C80);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B46E0;
  *(inited + 32) = sub_2239ACDE8(&unk_2836FB1C8);
  *(inited + 40) = sub_2239ACDF4(&unk_2836FB1F0);
  *(inited + 48) = sub_2239ACE00(&unk_2836FB220);
  v1 = _s18AudioAnalyticsBase6ConfigC12collapseKeysyShySSGSaySY_pSS8RawValueSYRts_XPGd_tFZ_0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD48, &unk_2239B4D50);
  result = swift_arrayDestroy();
  qword_2813382C0 = v1;
  return result;
}

uint64_t sub_2239732AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 178);
  v3 = *(v1 + 184);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 208);
  v7 = *(v1 + 216);
  *a1 = *(v1 + 176);
  *(a1 + 2) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
}

uint64_t default argument 2 of Config.init(configPath:allowUnknownFields:platform:encrypted:)()
{
  if (qword_2813369B0 != -1)
  {
    swift_once();
  }

  v0 = qword_2813369B8;

  return v0;
}

_DWORD *sub_223973484@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2239734B4()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3A48();
  return sub_2239B3A78();
}

uint64_t sub_223973528()
{
  v1 = *v0;
  sub_2239B3A18();
  sub_2239B3A48();
  return sub_2239B3A78();
}

uint64_t sub_22397356C(uint64_t a1, id *a2)
{
  result = sub_2239B3168();
  *a2 = 0;
  return result;
}

uint64_t sub_2239735E4(uint64_t a1, id *a2)
{
  v3 = sub_2239B3178();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_223973664@<X0>(uint64_t *a1@<X8>)
{
  sub_2239B3188();
  v2 = sub_2239B3158();

  *a1 = v2;
  return result;
}

void *sub_2239736A8@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2239736C4(uint64_t a1)
{
  v2 = sub_223974AF0(&qword_27D09FDC8, type metadata accessor for Name);
  v3 = sub_223974AF0(&qword_27D09FDD0, type metadata accessor for Name);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_223973780@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_2239B3158();

  *a2 = v5;
  return result;
}

uint64_t sub_2239737C8(uint64_t a1)
{
  v2 = sub_223974AF0(&qword_27D09FCF0, type metadata accessor for FileAttributeKey);
  v3 = sub_223974AF0(&qword_27D09FCF8, type metadata accessor for FileAttributeKey);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_223973884()
{
  v1 = *v0;
  v2 = sub_2239B3188();
  v3 = MEMORY[0x223DEE0B0](v2);

  return v3;
}

uint64_t sub_2239738C0()
{
  v1 = *v0;
  sub_2239B3188();
  sub_2239B3228();
}

uint64_t sub_223973914()
{
  v1 = *v0;
  sub_2239B3188();
  sub_2239B3A18();
  sub_2239B3228();
  v2 = sub_2239B3A78();

  return v2;
}

uint64_t sub_223973988(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_2239B3188();
  v6 = v5;
  if (v4 == sub_2239B3188() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2239B3958();
  }

  return v9 & 1;
}

uint64_t sub_223973A64(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_223973AD8()
{
  result = qword_281336A08[0];
  if (!qword_281336A08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281336A08);
  }

  return result;
}

uint64_t sub_223973B2C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_223973BF8(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_22395E644(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t sub_223973BF8(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_223973D04(a5, a6);
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
    result = sub_2239B36B8();
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

uint64_t sub_223973D04(uint64_t a1, unint64_t a2)
{
  v4 = sub_223973D50(a1, a2);
  sub_223973E80(&unk_2836FB898);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_223973D50(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_223988874(v5, 0);
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

  result = sub_2239B36B8();
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
        v10 = sub_2239B3288();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_223988874(v10, 0);
        result = sub_2239B3658();
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

uint64_t sub_223973E80(uint64_t result)
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

  result = sub_223973F6C(result, v12, 1, v3);
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

char *sub_223973F6C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD68, &qword_2239B4D70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_223974060(uint64_t a1)
{
  v2 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v11 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2239741C0(v6, v4, v2);
    if (v1)
    {
      result = swift_willThrow();
    }

    goto LABEL_4;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

    goto LABEL_2;
  }

  v9 = swift_slowAlloc();
  v10 = sub_2239743A4(v9, v4, v2);
  result = MEMORY[0x223DEF1D0](v9, -1, -1);
  if (!v1)
  {
    result = v10;
  }

LABEL_4:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2239741C0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v21 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v28 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v3 << 6);
    v13 = (*(a3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = v12;
    sub_22395E644(*(a3 + 56) + 32 * v12, v27);
    v25[0] = v14;
    v25[1] = v15;
    sub_22395E644(v27, &v26);
    sub_2239757B8(v25, &v23, &qword_27D09FD38, "n_");
    swift_bridgeObjectRetain_n();
    v17 = sub_2239B37B8();

    sub_223975758(v25, &qword_27D09FD38, "n_");
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    __swift_destroy_boxed_opaque_existential_0Tm(v27);

    v7 = v28;
    if (v17 <= 6)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v21++, 1))
      {
        __break(1u);
        return sub_22399088C(v20, a2, v21, a3);
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return sub_22399088C(v20, a2, v21, a3);
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2239743A4(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2239741C0(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_22397441C()
{
  v0 = sub_2239B37B8();

  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_223974468(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD70, &qword_2239B4D78);
    v3 = sub_2239B3798();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239757B8(v4, &v13, &qword_27D09FD78, &unk_2239B4D80);
      v5 = v13;
      v6 = v14;
      result = sub_22396236C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_2239685CC(&v15, (v3[7] + 32 * result));
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

double sub_223974600(_OWORD *a1)
{
  result = 0.0;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

unint64_t sub_223974628()
{
  result = qword_27D09FCB0;
  if (!qword_27D09FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09FCB0);
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_2239746B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_223974700(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ABCConfig.ABCInstanceName(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ABCConfig.ABCInstanceName(_WORD *result, int a2, int a3)
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

uint64_t sub_2239748A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 648))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2239748C0(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 648) = v3;
  return result;
}

uint64_t sub_223974A04(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223974A24(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

uint64_t sub_223974AF0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_223974BC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD60, &qword_2239B4D68);
    v3 = sub_2239B3798();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v5;
      result = sub_22398158C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = (v3[7] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223974CC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD50, &qword_2239B5760);
    v3 = sub_2239B3798();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239757B8(v4, v10, &qword_27D09FD58, &qword_2239B4D60);
      result = sub_223981500(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_2239685CC(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223974DE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD20, &unk_2239B4CF0);
    v3 = sub_2239B3798();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = sub_2239815D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 2 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223974EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD10, &unk_2239B4CE0);
    v3 = sub_2239B3798();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_22396236C(v5, v6);
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
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_223974FD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD00, &unk_2239B4CD0);
    v3 = sub_2239B3798();
    v4 = a1 + 32;

    while (1)
    {
      sub_2239757B8(v4, &v11, &qword_27D09FD08, &qword_2239B8D90);
      v5 = v11;
      result = sub_22398163C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_2239685CC(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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
    return MEMORY[0x277D84F98];
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

uint64_t sub_223975148(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (!*(a1 + 16) || (v9 = sub_223981500(9u), (v10 & 1) == 0) || (sub_22395E644(*(a1 + 56) + 32 * v9, &v92), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FD28, &unk_2239B72D0), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_2813366C0 == -1)
    {
LABEL_19:
      v25 = sub_2239B3048();
      __swift_project_value_buffer(v25, qword_2813366C8);
      v26 = sub_2239B3028();
      v27 = sub_2239B34C8();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22395C000, v26, v27, "No abc section found, or malformed.", v28, 2u);
        MEMORY[0x223DEF1D0](v28, -1, -1);
      }

      return 0;
    }

LABEL_46:
    swift_once();
    goto LABEL_19;
  }

  v11 = *&v91[0];
  v12 = *(*&v91[0] + 16);
  if (v12)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v106 = v12 - 1;
    do
    {
      v15 = v13;
      while (1)
      {
        if (v15 >= *(v11 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v16 = *(v11 + 32 + 8 * v15);

        sub_223970D24(v17, a4 & 1, &v92);
        if (v4)
        {
        }

        v91[10] = v102;
        v91[11] = v103;
        v91[12] = v104;
        v91[13] = v105;
        v91[6] = v98;
        v91[7] = v99;
        v91[8] = v100;
        v91[9] = v101;
        v91[2] = v94;
        v91[3] = v95;
        v91[4] = v96;
        v91[5] = v97;
        v91[0] = v92;
        v91[1] = v93;
        if (sub_223975740(v91) != 1)
        {
          break;
        }

        ++v15;
        v87 = v102;
        v88 = v103;
        v89 = v104;
        v90 = v105;
        v83 = v98;
        v84 = v99;
        v85 = v100;
        v86 = v101;
        v79 = v94;
        v80 = v95;
        v81 = v96;
        v82 = v97;
        v77 = v92;
        v78 = v93;
        sub_223975758(&v77, &qword_27D09FD30, qword_2239B4D00);
        if (v12 == v15)
        {
          goto LABEL_25;
        }
      }

      v87 = v102;
      v88 = v103;
      v89 = v104;
      v90 = v105;
      v83 = v98;
      v84 = v99;
      v85 = v100;
      v86 = v101;
      v79 = v94;
      v80 = v95;
      v81 = v96;
      v82 = v97;
      v77 = v92;
      v78 = v93;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_223981CAC(0, *(v14 + 2) + 1, 1, v14);
      }

      v19 = *(v14 + 2);
      v18 = *(v14 + 3);
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        v61 = v19 + 1;
        v22 = v14;
        v23 = *(v14 + 2);
        v24 = sub_223981CAC((v18 > 1), v19 + 1, 1, v22);
        v19 = v23;
        v20 = v61;
        v14 = v24;
      }

      v13 = v15 + 1;
      v67 = v81;
      v68 = v82;
      v65 = v79;
      v66 = v80;
      v71 = v85;
      v72 = v86;
      v69 = v83;
      v70 = v84;
      v75 = v89;
      v76 = v90;
      v73 = v87;
      v74 = v88;
      v62 = v77;
      v64 = v78;
      *(v14 + 2) = v20;
      v21 = &v14[224 * v19];
      *(v21 + 2) = v62;
      *(v21 + 3) = v64;
      *(v21 + 6) = v67;
      *(v21 + 7) = v68;
      *(v21 + 4) = v65;
      *(v21 + 5) = v66;
      *(v21 + 10) = v71;
      *(v21 + 11) = v72;
      *(v21 + 8) = v69;
      *(v21 + 9) = v70;
      *(v21 + 14) = v75;
      *(v21 + 15) = v76;
      *(v21 + 12) = v73;
      *(v21 + 13) = v74;
    }

    while (v106 != v15);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v30 = *(v14 + 2);
  if (v30)
  {
    v31 = 0;
    v106 = MEMORY[0x277D84F90];
LABEL_27:
    v32 = 224 * v31 + 32;
    v33 = v31;
    while (v33 < *(v14 + 2))
    {
      v34 = *&v14[v32 + 16];
      v92 = *&v14[v32];
      v93 = v34;
      v35 = *&v14[v32 + 32];
      v36 = *&v14[v32 + 48];
      v37 = *&v14[v32 + 80];
      v96 = *&v14[v32 + 64];
      v97 = v37;
      v94 = v35;
      v95 = v36;
      v38 = *&v14[v32 + 96];
      v39 = *&v14[v32 + 112];
      v40 = *&v14[v32 + 144];
      v100 = *&v14[v32 + 128];
      v101 = v40;
      v98 = v38;
      v99 = v39;
      v41 = *&v14[v32 + 160];
      v42 = *&v14[v32 + 176];
      v43 = *&v14[v32 + 208];
      v104 = *&v14[v32 + 192];
      v105 = v43;
      v102 = v41;
      v103 = v42;
      *(&v78 + 1) = &type metadata for ABCConfig;
      *&v79 = &protocol witness table for ABCConfig;
      *&v77 = swift_allocObject();
      memmove((v77 + 16), &v14[v32], 0xE0uLL);
      sub_223974598(&v92, v91);
      sub_223974598(&v92, v91);
      v44 = sub_223984164(&v77, a2, a3);
      if (v4)
      {

        sub_2239745D0(&v92);
        __swift_destroy_boxed_opaque_existential_0Tm(&v77);
      }

      v45 = v44;
      __swift_destroy_boxed_opaque_existential_0Tm(&v77);
      if (v45)
      {
        v46 = v106;
        v63 = v106;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2239828D0(0, *(v46 + 16) + 1, 1);
          v46 = v63;
        }

        v48 = *(v46 + 16);
        v47 = *(v46 + 24);
        v49 = v48 + 1;
        if (v48 >= v47 >> 1)
        {
          v106 = v48 + 1;
          sub_2239828D0((v47 > 1), v48 + 1, 1);
          v49 = v106;
          v46 = v63;
        }

        v31 = v33 + 1;
        *(v46 + 16) = v49;
        v106 = v46;
        v50 = (v46 + 224 * v48);
        v51 = v93;
        v50[2] = v92;
        v50[3] = v51;
        v52 = v94;
        v53 = v95;
        v54 = v97;
        v50[6] = v96;
        v50[7] = v54;
        v50[4] = v52;
        v50[5] = v53;
        v55 = v98;
        v56 = v99;
        v57 = v101;
        v50[10] = v100;
        v50[11] = v57;
        v50[8] = v55;
        v50[9] = v56;
        v58 = v102;
        v59 = v103;
        v60 = v105;
        v50[14] = v104;
        v50[15] = v60;
        v50[12] = v58;
        v50[13] = v59;
        if (v30 - 1 != v33)
        {
          goto LABEL_27;
        }

        goto LABEL_41;
      }

      ++v33;
      sub_2239745D0(&v92);
      v32 += 224;
      if (v30 == v33)
      {
        goto LABEL_41;
      }
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v106 = MEMORY[0x277D84F90];
LABEL_41:

  result = v106;
  if (!*(v106 + 16))
  {

    return 0;
  }

  return result;
}

uint64_t sub_223975740(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_223975758(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2239757B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for ABCConfig.ABCKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ABCConfig.ABCKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22397598C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 352))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2239759AC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 344) = 0;
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
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
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

  *(result + 352) = v3;
  return result;
}

uint64_t sub_223975A50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 296))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223975A70(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
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

  *(result + 296) = v3;
  return result;
}

unint64_t sub_223975B00()
{
  result = qword_27D09FD98;
  if (!qword_27D09FD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09FDA0, qword_2239B4E00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09FD98);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_223975BB0()
{
  result = qword_27D09FDA8;
  if (!qword_27D09FDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09FDA8);
  }

  return result;
}

__n128 __swift_memcpy76_4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_223975D00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223975D20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 76) = v3;
  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
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

uint64_t sub_223975DA0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223975DC0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
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

  *(result + 104) = v3;
  return result;
}

__n128 __swift_memcpy144_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_223975E44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223975E64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
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

  *(result + 144) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_223975EF4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223975F14(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_223975F68(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_223975F88(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

unint64_t sub_22397602C@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (result = sub_22396236C(result, a2), (v6 & 1) != 0))
  {
    v7 = *(a3 + 56) + 24 * result;
    v8 = *v7;
    v9 = *(v7 + 8);
    *a4 = *v7;
    *(a4 + 8) = v9;
    v10 = *(v7 + 16);
    *(a4 + 16) = v10;

    return sub_22396298C(v8, v9, v10);
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = -1;
  }

  return result;
}

uint64_t sub_2239760A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if (a3 == -1)
  {
    sub_22398D454(a4, a5, v14);

    return sub_22397617C(v14[0], v14[1], v15);
  }

  else
  {
    v11 = *v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14[0] = *v5;
    sub_2239639F0(a1, a2, a3, a4, a5, isUniquelyReferenced_nonNull_native);

    *v5 = v14[0];
  }

  return result;
}

uint64_t sub_22397617C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_223963BB4(a1, a2, a3);
  }

  return a1;
}

uint64_t AlertNotification.init(with:message:buttonTitle:alternateButtonTitle:timeout:onAction:onDismiss:onCompletion:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, __int128 a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  *a9 = result;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 88) = a12;
  *(a9 + 104) = a13;
  *(a9 + 112) = a14;
  return result;
}

uint64_t sub_2239761C0(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F98];
  v36 = MEMORY[0x277D84F98];
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v12 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v13 = v12 | (v11 << 6);
        v14 = (*(a1 + 56) + 16 * v13);
        v15 = v14[1];
        if (v15)
        {
          break;
        }

        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v34 = v2;
      v17 = *(*(a1 + 48) + 8 * v13);
      v33 = *v14;
      v18 = *(v4 + 16);
      if (*(v4 + 24) <= v18)
      {

        v20 = v17;
        sub_22397E5D4(v18 + 1, 1);
        v4 = v36;
      }

      else
      {

        v19 = v17;
      }

      v21 = *(v4 + 40);
      v35 = v17;
      result = sub_2239B3568();
      v22 = v4 + 64;
      v23 = -1 << *(v4 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v4 + 64 + 8 * (v24 >> 6))) == 0)
      {
        break;
      }

      v26 = __clz(__rbit64((-1 << v24) & ~*(v4 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      v2 = v34;
      v27 = v35;
LABEL_24:
      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      *(*(v4 + 48) + 8 * v26) = v27;
      v32 = (*(v4 + 56) + 16 * v26);
      *v32 = v33;
      v32[1] = v15;
      ++*(v4 + 16);
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v28 = 0;
    v29 = (63 - v23) >> 6;
    v2 = v34;
    v27 = v35;
    while (++v25 != v29 || (v28 & 1) == 0)
    {
      v30 = v25 == v29;
      if (v25 == v29)
      {
        v25 = 0;
      }

      v28 |= v30;
      v31 = *(v22 + 8 * v25);
      if (v31 != -1)
      {
        v26 = __clz(__rbit64(~v31)) + (v25 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v16 >= v9)
      {

        return v4;
      }

      v8 = *(v5 + 8 * v16);
      ++v11;
      if (v8)
      {
        v11 = v16;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void _s18AudioAnalyticsBase17AlertNotificationV7surfaceyyACFZ_0(double *a1)
{
  responseFlags[19] = *MEMORY[0x277D85DE8];
  v2 = sub_2239B3048();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *(a1 + 1);
  v9 = *(a1 + 2);
  v10 = *(a1 + 3);
  v11 = *(a1 + 5);
  v63 = *(a1 + 4);
  v12 = *(a1 + 7);
  v59 = *(a1 + 6);
  v13 = a1[8];
  v14 = *(a1 + 10);
  v54 = *(a1 + 9);
  v53 = v14;
  v15 = *(a1 + 12);
  v56 = *(a1 + 11);
  v55 = v15;
  v16 = *(a1 + 14);
  v58 = *(a1 + 13);
  v57 = v16;
  if (qword_281335E30 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v2, qword_281335E38);
  v61 = v3;
  v18 = *(v3 + 16);
  v60 = v6;
  v62 = v2;
  v18(v6, v17, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FEB0, "*q");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2239B51F0;
  if (!*MEMORY[0x277CBF188])
  {
    __break(1u);
    goto LABEL_31;
  }

  v20 = inited;
  sub_223976B4C();
  *(v20 + 4) = sub_2239B3588();
  v20[5] = v7;
  *(v20 + 6) = v8;
  if (!*MEMORY[0x277CBF198])
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v20 + 7) = sub_2239B3588();
  *(v20 + 8) = v9;
  *(v20 + 9) = v10;
  if (!*MEMORY[0x277CBF1E8])
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
  }

  v21 = sub_2239B3588();
  v22 = v63;
  *(v20 + 10) = v21;
  *(v20 + 11) = v22;
  *(v20 + 12) = v11;
  if (!*MEMORY[0x277CBF1C0])
  {
    goto LABEL_33;
  }

  v23 = sub_2239B3588();
  v24 = v59;
  *(v20 + 13) = v23;
  *(v20 + 14) = v24;
  *(v20 + 15) = v12;

  v25 = sub_223974BC8(v20);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FEC0, &qword_2239B52C0);
  swift_arrayDestroy();
  sub_2239761C0(v25);

  error[0] = -1;
  v26 = *MEMORY[0x277CBECE8];
  sub_223976B98();
  v27 = sub_2239B30C8();

  v28 = CFUserNotificationCreate(v26, v13, 0, error, v27);

  if (v28)
  {
    v29 = error[0];
    v30 = v29 == sub_2239B3068();
    v31 = v62;
    v32 = v61;
    v33 = v60;
    if (!v30)
    {
      v47 = sub_2239B3028();
      v48 = sub_2239B34E8();
      if (os_log_type_enabled(v47, v48))
      {
        v50 = swift_slowAlloc();
        *v50 = 67109120;
        swift_beginAccess();
        *(v50 + 4) = error[0];
        _os_log_impl(&dword_22395C000, v47, v48, "Failed to create alert notification. { err=%d }", v50, 8u);
        MEMORY[0x223DEF1D0](v50, -1, -1);
        v51 = v28;
      }

      else
      {
        v51 = v47;
        v47 = v28;
      }

      goto LABEL_26;
    }

    responseFlags[0] = 0;
    v34 = CFUserNotificationReceiveResponse(v28, v13, responseFlags);
    v35 = sub_2239B3068();
    if (v34 != v35)
    {
      v36 = sub_2239B3028();
      v37 = sub_2239B34F8();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67109120;
        *(v38 + 4) = v34;
        _os_log_impl(&dword_22395C000, v36, v37, "Failed to interpret overload notification user alert response. { response=%d }", v38, 8u);
        MEMORY[0x223DEF1D0](v38, -1, -1);
      }
    }

    if ((responseFlags[0] & 3) != 0)
    {
      v39 = v58;
      if (v56)
      {
        v35 = v56(v35);
      }

      if (v39)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v35 = v54(v35);
      v39 = v58;
      if (v58)
      {
LABEL_18:
        v39(v35);

LABEL_26:
        (*(v32 + 8))(v33, v31);
        goto LABEL_27;
      }
    }

    (*(v32 + 8))(v33, v31);

    goto LABEL_27;
  }

  v40 = v60;
  v41 = sub_2239B3028();
  v42 = sub_2239B34E8();
  v43 = os_log_type_enabled(v41, v42);
  v44 = v62;
  v45 = v61;
  if (v43)
  {
    v46 = swift_slowAlloc();
    *v46 = 67109120;
    swift_beginAccess();
    *(v46 + 4) = error[0];
    _os_log_impl(&dword_22395C000, v41, v42, "Failed to create alert notification. { err=%d }", v46, 8u);
    MEMORY[0x223DEF1D0](v46, -1, -1);
  }

  (*(v45 + 8))(v40, v44);
LABEL_27:
  v52 = *MEMORY[0x277D85DE8];
}

uint64_t get_enum_tag_for_layout_string_Ieg_Sg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
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
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_223976A98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_223976AE0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_223976B4C()
{
  result = qword_27D09FEB8;
  if (!qword_27D09FEB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D09FEB8);
  }

  return result;
}

unint64_t sub_223976B98()
{
  result = qword_27D09FEC8;
  if (!qword_27D09FEC8)
  {
    sub_223976B4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D09FEC8);
  }

  return result;
}

uint64_t sub_223976BF0()
{
  v0 = type metadata accessor for BluetoothUtility();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = BluetoothUtility.init()();
  qword_27D09FED0 = v3;
  return result;
}

uint64_t BluetoothUtility.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  BluetoothUtility.init()();
  return v3;
}

uint64_t static BluetoothUtility.shared.getter()
{
  if (qword_27D09FC28 != -1)
  {
    swift_once();
  }
}

uint64_t BluetoothUtility.init()()
{
  v1 = v0;
  v2 = sub_2239B3508();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v4 = sub_2239B3518();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2239B30B8();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_223976FB0();
  sub_2239B3088();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v4);
  v11 = MEMORY[0x277D84F90];
  v18[1] = MEMORY[0x277D84F90];
  sub_223976FFC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FED8, &qword_2239B52E0);
  sub_223977054();
  sub_2239B3608();
  *(v0 + 16) = sub_2239B3548();
  v12 = OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_logger;
  if (qword_281335D80 != -1)
  {
    swift_once();
  }

  v13 = sub_2239B3048();
  v14 = __swift_project_value_buffer(v13, qword_281335D88);
  (*(*(v13 - 8) + 16))(v1 + v12, v14, v13);
  *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_subscribers) = v11;
  *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_isRegisteredForNotifications) = 0;
  v15 = objc_opt_self();
  [v15 setSharedInstanceQueue_];
  v16 = [v15 sharedInstance];
  *(v1 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_bluetoothManager) = v16;
  return v1;
}

unint64_t sub_223976FB0()
{
  result = qword_2813365E8;
  if (!qword_2813365E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2813365E8);
  }

  return result;
}

unint64_t sub_223976FFC()
{
  result = qword_2813365F0;
  if (!qword_2813365F0)
  {
    sub_2239B3508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813365F0);
  }

  return result;
}

unint64_t sub_223977054()
{
  result = qword_281336620;
  if (!qword_281336620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D09FED8, &qword_2239B52E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281336620);
  }

  return result;
}

Swift::Bool __swiftcall BluetoothUtility.isAvailable()()
{
  v1 = *(v0 + 16);
  sub_2239B3528();
  return v3;
}

Swift::Bool __swiftcall BluetoothUtility.isEnabled()()
{
  v1 = *(v0 + 16);
  sub_2239B3528();
  return v3;
}

uint64_t sub_223977210(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_bluetoothManager);
  if (v4)
  {
    v5 = [v4 connectedDevices];
    if (v5)
    {
      v6 = v5;
      v7 = sub_2239B33B8();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  a1(v7);
}

uint64_t BluetoothUtility.startObservingFor(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_223978130;
  *(v8 + 24) = v7;
  v11[4] = sub_22397813C;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2239776BC;
  v11[3] = &block_descriptor;
  v9 = _Block_copy(v11);

  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_223977434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_subscribers;
  swift_beginAccess();
  v7 = *(a1 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + v6) = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_223981DD4(0, v7[2] + 1, 1, v7);
    *(a1 + v6) = v7;
  }

  v10 = v7[2];
  v9 = v7[3];
  if (v10 >= v9 >> 1)
  {
    v7 = sub_223981DD4((v9 > 1), v10 + 1, 1, v7);
  }

  v7[2] = v10 + 1;
  v11 = &v7[2 * v10];
  v11[4] = a2;
  v11[5] = a3;
  *(a1 + v6) = v7;
  swift_endAccess();
  v12 = *(a1 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_isRegisteredForNotifications);
  swift_unknownObjectRetain();
  if ((v12 & 1) == 0)
  {
    sub_2239775E4();
  }

  v13 = sub_2239B3028();
  v14 = sub_2239B34D8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(*(a1 + v6) + 16);

    _os_log_impl(&dword_22395C000, v13, v14, "Number of bluetooth delegates incremented. { count=%ld }", v15, 0xCu);
    MEMORY[0x223DEF1D0](v15, -1, -1);
  }

  else
  {
  }
}

void sub_2239775E4()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27D09FC30 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27D0A4790 + 16);
  if (v2)
  {
    v3 = (qword_27D0A4790 + 32);
    do
    {
      v4 = *v3++;
      [v1 addObserver:v0 selector:sel_handleBluetoothManagerStateChangeWithNotification_ name:v4 object:0];
      --v2;
    }

    while (v2);
  }

  *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_isRegisteredForNotifications) = 1;
}

uint64_t BluetoothUtility.stopObservingFor(delegate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  v7 = swift_allocObject();
  v7[2] = v3;
  v7[3] = a1;
  v7[4] = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2239781A4;
  *(v8 + 24) = v7;
  v11[4] = sub_223978340;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2239776BC;
  v11[3] = &block_descriptor_13;
  v9 = _Block_copy(v11);

  swift_unknownObjectRetain();

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
  }

  return result;
}

void sub_223977854(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_subscribers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = *(v5 + 16);
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = 0;
  v8 = (v5 + 32);
  while (*v8 != a2)
  {
    ++v7;
    v8 += 2;
    if (v6 == v7)
    {
      goto LABEL_9;
    }
  }

  swift_beginAccess();
  sub_2239779E8(v7);
  swift_endAccess();
  swift_unknownObjectRelease();
  if (!*(*(a1 + v4) + 16))
  {
LABEL_7:
    if (*(a1 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_isRegisteredForNotifications) == 1)
    {
      sub_223977A74();
    }
  }

LABEL_9:

  v9 = sub_2239B3028();
  v10 = sub_2239B34D8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(*(a1 + v4) + 16);

    _os_log_impl(&dword_22395C000, v9, v10, "Number of bluetooth delegates decremented. { count=%ld }", v11, 0xCu);
    MEMORY[0x223DEF1D0](v11, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2239779E8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22397830C(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_223977A74()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27D09FC30 != -1)
  {
    swift_once();
  }

  v2 = *(qword_27D0A4790 + 16);
  if (v2)
  {
    v3 = (qword_27D0A4790 + 32);
    do
    {
      v4 = *v3++;
      [v1 removeObserver:v0 name:v4 object:0];
      --v2;
    }

    while (v2);
  }

  *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_isRegisteredForNotifications) = 0;
}

uint64_t sub_223977B3C()
{
  v1 = v0;
  v16 = MEMORY[0x277D84F90];
  v2 = *(v0 + 16);
  v3 = swift_allocObject();
  *(v3 + 16) = &v16;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_223978304;
  *(v4 + 24) = v3;
  aBlock[4] = sub_223978340;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2239776BC;
  aBlock[3] = &block_descriptor_25;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if ((v2 & 1) == 0)
  {
    v7 = v16;
    v8 = *(v16 + 16);

    if (!v8)
    {
LABEL_6:
    }

    v9 = 0;
    v10 = (v7 + 40);
    while (v9 < *(v7 + 16))
    {
      ++v9;
      v11 = *(v10 - 1);
      v12 = *v10;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 8);
      swift_unknownObjectRetain();
      v14(ObjectType, v12);
      result = swift_unknownObjectRelease();
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_223977D3C(uint64_t *a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_subscribers;
  swift_beginAccess();
  v5 = *(a2 + v4);
  v6 = *a1;
  *a1 = v5;
}

id sub_223977E90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF10, &qword_2239B5378);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2239B46E0;
  v1 = *MEMORY[0x277CF3168];
  v2 = *MEMORY[0x277CF3238];
  *(v0 + 32) = *MEMORY[0x277CF3168];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x277CF3190];
  *(v0 + 48) = *MEMORY[0x277CF3190];
  qword_27D0A4790 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

uint64_t BluetoothUtility.deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_subscribers);

  return v0;
}

uint64_t BluetoothUtility.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_logger;
  v2 = sub_2239B3048();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_subscribers);

  v4 = *(*v0 + 12);
  v5 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

id sub_2239780C0@<X0>(SEL *a1@<X0>, _BYTE *a2@<X8>)
{
  if (*(v2 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_bluetoothManager))
  {
    result = [*(v2 + OBJC_IVAR____TtC18AudioAnalyticsBase16BluetoothUtility_bluetoothManager) *a1];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_22397813C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t type metadata accessor for BluetoothUtility()
{
  result = qword_27D09FF00;
  if (!qword_27D09FF00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_223978218()
{
  result = sub_2239B3048();
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

uint64_t Collection.subscript.getter@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v20[-v7];
  sub_2239B3488();
  v9 = *(swift_getAssociatedConformanceWitness() + 8);
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getAssociatedConformanceWitness() + 8);
  LOBYTE(v9) = sub_2239B3328();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  if (v9)
  {
    v11 = sub_2239B34A8();
    v13 = v12;
    v14 = *(a1 + 8);
    v15 = swift_getAssociatedTypeWitness();
    v16 = *(v15 - 8);
    (*(v16 + 16))(a2, v13, v15);
    v11(v20, 0);
    return (*(v16 + 56))(a2, 0, 1, v15);
  }

  else
  {
    v18 = *(a1 + 8);
    v19 = swift_getAssociatedTypeWitness();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t Array.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (sub_2239B33F8() <= a1)
  {
    v5 = 1;
  }

  else
  {
    sub_2239B3428();
    v5 = 0;
  }

  v6 = *(*(a2 - 8) + 56);

  return v6(a3, v5, 1, a2);
}

uint64_t zip<A, B, C>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v32 = a6;
  v30 = a5;
  v33 = a4;
  v34 = a1;
  v39 = a7;
  v31 = a8;
  v56 = a3;
  v57 = a4;
  v58 = a6;
  v59 = a8;
  v11 = sub_2239B3688();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v30 - v14;
  v37 = MEMORY[0x277D84120];
  WitnessTable = swift_getWitnessTable();
  v56 = a2;
  v57 = v11;
  v58 = a5;
  v59 = WitnessTable;
  v36 = sub_2239B3688();
  v38 = *(v36 - 8);
  v17 = *(v38 + 64);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v18;
  v19 = v33;
  v20 = v32;
  v21 = v31;
  sub_2239B3988();
  v22 = v30;
  sub_2239B3988();
  (*(v12 + 8))(v15, v11);
  v50 = a2;
  v51 = a3;
  v52 = v19;
  v53 = v22;
  v54 = v20;
  v55 = v21;
  v41 = a2;
  v42 = a3;
  v43 = v19;
  v44 = v22;
  v45 = v20;
  v46 = v21;
  v47 = sub_223978D28;
  v48 = &v49;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v24 = v36;
  v25 = swift_getWitnessTable();
  v26 = v35;
  v28 = sub_223978EE0(sub_223978EA8, v40, v24, TupleTypeMetadata3, MEMORY[0x277D84A98], v25, MEMORY[0x277D84AC0], v27);
  result = (*(v38 + 8))(v26, v24);
  *v39 = v28;
  return result;
}

uint64_t sub_223978A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a6;
  v31 = a7;
  v33 = a4;
  v34 = a2;
  v35 = a3;
  v32 = a1;
  v29[1] = a10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v14 = *(TupleTypeMetadata2 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v29 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v29 - v22;
  v24 = *(AssociatedTypeWitness - 8);
  (*(v24 + 16))(v29 - v22, a5, AssociatedTypeWitness);
  v25 = *(v12 - 8);
  (*(v25 + 16))(&v23[*(TupleTypeMetadata2 + 48)], v30, v12);
  v26 = swift_getAssociatedTypeWitness();
  (*(*(v26 - 8) + 16))(v32, v33, v26);
  (*(v14 + 16))(v21, v23, TupleTypeMetadata2);
  v27 = *(TupleTypeMetadata2 + 48);
  (*(v24 + 32))(v34, v21, AssociatedTypeWitness);
  (*(v14 + 32))(v18, v23, TupleTypeMetadata2);
  (*(v25 + 32))(v35, &v18[*(TupleTypeMetadata2 + 48)], v12);
  (*(v24 + 8))(v18, AssociatedTypeWitness);
  return (*(v25 + 8))(&v21[v27], v12);
}

uint64_t sub_223978D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6[6];
  v9 = v6[7];
  return sub_223978A24(a1, a2, a3, a4, a5, a6, v6[2], v6[3], v6[4], v6[5]);
}

uint64_t sub_223978D5C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v7 = *(TupleTypeMetadata2 + 48);
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  return a2(a3, a3 + *(TupleTypeMetadata3 + 48), a3 + *(TupleTypeMetadata3 + 64), a1, v6, v6 + v7);
}

uint64_t sub_223978EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 72);
  v10 = *(v2 + 56);
  return sub_223978D5C(a1, *(v2 + 64), a2);
}

uint64_t sub_223978EE0(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v9 = v8;
  v67 = a2;
  v68 = a4;
  v66 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v61 = *(AssociatedTypeWitness - 8);
  v15 = *(v61 + 64);
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v50 = &v49 - v17;
  v53 = a5;
  v51 = *(a5 - 8);
  v18 = *(v51 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v63 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v64 = &v49 - v21;
  v22 = sub_2239B3598();
  v54 = *(v22 - 8);
  v55 = v22;
  v23 = *(v54 + 64);
  v24 = MEMORY[0x28223BE20](v22);
  v57 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v49 - v27;
  v29 = *(*(a4 - 1) + 64);
  v30 = MEMORY[0x28223BE20](v26);
  v56 = &v49 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v62 = *(a3 - 1);
  v33 = *(v62 + 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v49 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = a6;
  v69 = swift_getAssociatedTypeWitness();
  v58 = *(v69 - 8);
  v36 = *(v58 + 64);
  MEMORY[0x28223BE20](v69);
  v38 = &v49 - v37;
  v39 = sub_2239B3318();
  v70 = sub_2239B3738();
  v65 = sub_2239B3748();
  sub_2239B36E8();
  (*(v62 + 2))(v35, v59, a3);
  v68 = v38;
  v62 = a3;
  result = sub_2239B3308();
  if (v39 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v39)
  {
    v41 = (v61 + 48);
    v42 = (v61 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_2239B35B8();
      result = (*v41)(v28, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v66(v28, v64);
      if (v9)
      {
        (*(v58 + 8))(v68, v69);

        (*(v51 + 32))(v52, v64, v53);
        return (*v42)(v28, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v42)(v28, AssociatedTypeWitness);
      sub_2239B3728();
      if (!--v39)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v43 = v57;
  sub_2239B35B8();
  v44 = v43;
  v45 = v61;
  v46 = *(v61 + 48);
  v64 = (v61 + 48);
  v62 = v46;
  if (v46(v43, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v58 + 8))(v68, v69);
    (*(v54 + 8))(v44, v55);
    return v70;
  }

  else
  {
    v61 = *(v45 + 32);
    v47 = (v45 + 8);
    v48 = v50;
    while (1)
    {
      (v61)(v48, v44, AssociatedTypeWitness);
      v66(v48, v63);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v47)(v48, AssociatedTypeWitness);
      sub_2239B3728();
      sub_2239B35B8();
      if (v62(v44, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v47)(v48, AssociatedTypeWitness);
    (*(v58 + 8))(v68, v69);

    return (*(v51 + 32))(v52, v63, v53);
  }
}

uint64_t zip<A, B, C, D>(_:_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v47 = a8;
  v46 = a7;
  v53 = a4;
  v52 = a3;
  v45 = a2;
  v44 = a1;
  v57 = a9;
  v49 = a13;
  v48 = a12;
  AssociatedTypeWitness = a7;
  v79 = a8;
  v80 = a12;
  v81 = a13;
  v15 = sub_2239B3688();
  v50 = *(v15 - 8);
  v16 = *(v50 + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v38 - v17;
  AssociatedTypeWitness = a5;
  v79 = a6;
  v38 = a5;
  v39 = a6;
  v80 = a10;
  v81 = a11;
  v40 = a10;
  v41 = a11;
  v19 = sub_2239B3688();
  v43 = *(v19 - 8);
  v20 = *(v43 + 64);
  MEMORY[0x28223BE20](v19);
  v22 = &v38 - v21;
  v55 = MEMORY[0x277D84120];
  WitnessTable = swift_getWitnessTable();
  v42 = WitnessTable;
  v24 = swift_getWitnessTable();
  AssociatedTypeWitness = v19;
  v79 = v15;
  v80 = WitnessTable;
  v81 = v24;
  v54 = sub_2239B3688();
  v56 = *(v54 - 8);
  v25 = *(v56 + 64);
  MEMORY[0x28223BE20](v54);
  v51 = &v38 - v26;
  sub_2239B3988();
  v27 = v46;
  v28 = v47;
  v29 = v48;
  v30 = v49;
  sub_2239B3988();
  sub_2239B3988();
  (*(v50 + 8))(v18, v15);
  (*(v43 + 8))(v22, v19);
  v70 = v38;
  v71 = v39;
  v72 = v27;
  v73 = v28;
  v74 = v40;
  v75 = v41;
  v76 = v29;
  v77 = v30;
  v59 = v38;
  v60 = v39;
  v61 = v27;
  v62 = v28;
  v63 = v40;
  v64 = v41;
  v65 = v29;
  v66 = v30;
  v67 = sub_22397A030;
  v68 = &v69;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v79 = swift_getAssociatedTypeWitness();
  v80 = swift_getAssociatedTypeWitness();
  v81 = swift_getAssociatedTypeWitness();
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v32 = v54;
  v33 = swift_getWitnessTable();
  v34 = v51;
  v36 = sub_223978EE0(sub_22397A214, v58, v32, TupleTypeMetadata, MEMORY[0x277D84A98], v33, MEMORY[0x277D84AC0], v35);
  result = (*(v56 + 8))(v34, v32);
  *v57 = v36;
  return result;
}

uint64_t sub_223979ADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v54 = a8;
  v55 = a1;
  v51 = a7;
  v48 = a5;
  v49 = a6;
  v57 = a3;
  v58 = a4;
  v56 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = swift_getAssociatedTypeWitness();
  v9 = AssociatedTypeWitness;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v52 = *(TupleTypeMetadata2 - 8);
  v11 = *(v52 + 64);
  v12 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v53 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v50 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v47 = &v45 - v16;
  v17 = swift_getAssociatedTypeWitness();
  v18 = swift_getAssociatedTypeWitness();
  v19 = swift_getTupleTypeMetadata2();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x28223BE20](v19);
  v61 = &v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x28223BE20](v22);
  v59 = &v45 - v25;
  MEMORY[0x28223BE20](v24);
  v27 = &v45 - v26;
  v28 = v17;
  v62 = v17;
  v29 = *(v17 - 8);
  (*(v29 + 16))(&v45 - v26, v48, v28);
  v30 = *(v19 + 48);
  v60 = v18;
  v31 = *(v18 - 8);
  (*(v31 + 16))(&v27[v30], v49, v18);
  v32 = v9;
  v46 = v9;
  v33 = *(v9 - 8);
  v34 = v47;
  (*(v33 + 16))(v47, v51, v32);
  v35 = *(v63 - 8);
  (*(v35 + 16))(&v34[*(TupleTypeMetadata2 + 48)], v54);
  v36 = v59;
  (*(v20 + 16))(v59, v27, v19);
  v54 = *(v19 + 48);
  (*(v29 + 32))(v55, v36, v62);
  v37 = v61;
  (*(v20 + 32))(v61, v27, v19);
  (*(v31 + 32))(v56, &v37[*(v19 + 48)], v60);
  v38 = v52;
  v39 = v50;
  (*(v52 + 16))(v50, v34, TupleTypeMetadata2);
  v56 = *(TupleTypeMetadata2 + 48);
  v40 = v39;
  v41 = v46;
  (*(v33 + 32))(v57, v39, v46);
  v42 = v53;
  (*(v38 + 32))(v53, v34, TupleTypeMetadata2);
  v43 = v63;
  (*(v35 + 32))(v58, &v42[*(TupleTypeMetadata2 + 48)], v63);
  (*(v33 + 8))(v42, v41);
  (*(v35 + 8))(&v40[v56], v43);
  (*(v29 + 8))(v61, v62);
  return (*(v31 + 8))(&v59[v54], v60);
}

uint64_t sub_22397A030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = *(v8 + 64);
  v14 = *(v8 + 72);
  v11 = *(v8 + 32);
  v12 = *(v8 + 48);
  v10 = *(v8 + 16);
  return sub_223979ADC(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_22397A068@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  v10 = *(swift_getTupleTypeMetadata2() + 48);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = a1 + *(swift_getTupleTypeMetadata2() + 48);
  v7 = *(TupleTypeMetadata2 + 48);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  return a2(a3, a3 + TupleTypeMetadata[12], a3 + TupleTypeMetadata[16], a3 + TupleTypeMetadata[20], a1, a1 + v10, v6, v6 + v7);
}

uint64_t sub_22397A214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v8 = *(v2 + 88);
  v11 = *(v2 + 72);
  v10 = *(v2 + 56);
  return sub_22397A068(a1, *(v2 + 80), a2);
}

uint64_t Config.__allocating_init(configPath:allowUnknownFields:platform:encrypted:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v13 = *(v6 + 48);
  v14 = *(v6 + 52);
  swift_allocObject();
  return Config.init(configPath:allowUnknownFields:platform:encrypted:)(a1, a2, a3, a4, a5, a6);
}

uint64_t Config.init(configPath:allowUnknownFields:platform:encrypted:)(uint64_t a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v137 = a4;
  v136 = a3;
  v165 = *MEMORY[0x277D85DE8];
  v143 = *v7;
  v12 = sub_2239B3048();
  v147 = *(v12 - 8);
  v13 = v147[8];
  MEMORY[0x28223BE20](v12);
  v142 = &v128 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v7 + 264) = MEMORY[0x277D84FA0];
  v148 = OBJC_IVAR____TtC18AudioAnalyticsBase6Config_logger;
  if (qword_2813366C0 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v12, qword_2813366C8);
  v16 = v147 + 2;
  v140 = v147[2];
  v140(v7 + v148, v15, v12);
  v17 = [objc_opt_self() defaultManager];
  v144 = a2;
  v145 = a1;
  v18 = sub_2239B3158();
  v19 = [v17 contentsAtPath_];

  v141 = v16;
  v146 = v7;
  if (!v19)
  {

    sub_223973AD8();
    v25 = swift_allocError();
    *v26 = 0;
    *(v26 + 8) = 0;
    *(v26 + 16) = 7;
    swift_willThrow();
    LODWORD(v138) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v139) = 0;
    LODWORD(v133) = 0;
    v24 = v144;
    goto LABEL_36;
  }

  v20 = sub_2239B2F78();
  v22 = v21;

  v138 = v20;
  v139 = v22;
  if (a6)
  {
    v23 = sub_22398B870(0xD000000000000084, 0x80000002239BA070, 1);
    v24 = v144;
    v60 = v23;
    v135 = a5;
    v61 = sub_22398BC94(v23);
    v133 = 0;
    v104 = v61;
    v22 = v105;
  }

  else
  {
    v135 = a5;
    sub_22397F6E0(v20, v22);
    v133 = 0;
    v104 = v20;
    v24 = v144;
  }

  v25 = v145;
  v27 = objc_opt_self();
  v28 = sub_2239B2F58();
  *&v159 = 0;
  v29 = [v27 propertyListWithData:v28 options:0 format:0 error:&v159];

  if (!v29)
  {
    v57 = v159;

    v25 = sub_2239B2E98();

    swift_willThrow();
    sub_22397F734(v138, v139);
    v58 = v104;
    v59 = v22;
LABEL_35:
    sub_22397F734(v58, v59);
    LODWORD(v138) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v139) = 0;
    LODWORD(v133) = 0;
    goto LABEL_36;
  }

  v130 = v104;
  v131 = v22;
  v30 = v159;
  sub_2239B35F8();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    sub_223973AD8();
    v25 = swift_allocError();
    *v62 = xmmword_2239B53A0;
    *(v62 + 16) = 7;
    swift_willThrow();
    sub_22397F734(v138, v139);
    v58 = v130;
    v59 = v131;
    goto LABEL_35;
  }

  v132 = v12;
  v31 = v154;
  v128 = OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist;
  *(v7 + OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist) = v154;
  *(v7 + 248) = v25;
  *(v7 + 256) = v24;

  v129 = sub_223974CC4(MEMORY[0x277D84F90]);
  v32 = v31 + 64;
  v33 = 1 << *(v31 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(v31 + 64);
  v12 = (v33 + 63) >> 6;
  v134 = v31;

  for (i = 0; v35; i = v38)
  {
    while (1)
    {
      v38 = i;
LABEL_18:
      v39 = __clz(__rbit64(v35));
      v35 &= v35 - 1;
      v40 = v39 | (v38 << 6);
      v41 = (*(v134 + 48) + 16 * v40);
      v42 = *v41;
      v43 = v41[1];
      sub_22395E644(*(v134 + 56) + 32 * v40, &v160);
      *&v159 = v42;
      *(&v159 + 1) = v43;
      sub_22397F788(&v159, &v154);
      v31 = v155;

      v44 = sub_2239B37B8();

      if (v44 < 0xC)
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(&v156);
      v36 = sub_22397F7F8(&v159);
      i = v38;
      v25 = v145;
      if (!v35)
      {
        goto LABEL_14;
      }
    }

    __swift_destroy_boxed_opaque_existential_0Tm(&v156);
    sub_22397F788(&v159, &v154);

    sub_2239685CC(&v156, v153);
    v45 = v129;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v149 = v45;
    v47 = sub_223981500(v44);
    v49 = v45[2];
    v50 = (v48 & 1) == 0;
    v51 = __OFADD__(v49, v50);
    v52 = v49 + v50;
    if (v51)
    {
      __break(1u);
LABEL_68:
      __break(1u);
    }

    if (v45[3] >= v52)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v129 = v47;
        v56 = v48;
        sub_22397EECC();
        LOBYTE(v48) = v56;
        v47 = v129;
      }
    }

    else
    {
      LODWORD(v129) = v48;
      sub_22397E858(v52, isUniquelyReferenced_nonNull_native);
      v47 = sub_223981500(v44);
      v53 = v48 & 1;
      LOBYTE(v48) = v129;
      if ((v129 & 1) != v53)
      {
        result = sub_2239B39A8();
        __break(1u);
        return result;
      }
    }

    v31 = v149;
    v129 = v149;
    if (v48)
    {
      v31 = v149[7] + 32 * v47;
      __swift_destroy_boxed_opaque_existential_0Tm(v31);
      sub_2239685CC(v153, v31);
    }

    else
    {
      v149[(v47 >> 6) + 8] |= 1 << v47;
      *(*(v31 + 48) + v47) = v44;
      sub_2239685CC(v153, (*(v31 + 56) + 32 * v47));
      v54 = *(v31 + 16);
      v51 = __OFADD__(v54, 1);
      v55 = v54 + 1;
      if (v51)
      {
        goto LABEL_68;
      }

      *(v31 + 16) = v55;
    }

    v25 = v145;
    v36 = sub_22397F7F8(&v159);
  }

LABEL_14:
  v24 = v144;
  while (1)
  {
    v38 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      goto LABEL_62;
    }

    if (v38 >= v12)
    {
      break;
    }

    v35 = *(v32 + 8 * v38);
    ++i;
    if (v35)
    {
      goto LABEL_18;
    }
  }

  v101 = v129;
  v154 = v129;
  v155 = v25;
  v31 = v137;
  *&v156 = v24;
  *(&v156 + 1) = v137;
  v38 = v135;
  v157 = v135;
  LOBYTE(v35) = v136;
  v158 = v136 & 1;

  v102 = v133;
  v103 = sub_22399A88C(v101, v31, v38, v35 & 1);
  if (v102)
  {

    sub_22397F734(v130, v131);
    sub_22397F734(v138, v139);
    LODWORD(v138) = 0;
    LODWORD(v134) = 0;
    LODWORD(v135) = 0;
    v136 = 0;
    LODWORD(v137) = 0;
    LODWORD(v139) = 0;
    LODWORD(v133) = 1;
    v12 = v132;
    v25 = v102;
    goto LABEL_36;
  }

  *(v7 + 96) = v103;
  sub_2239A6FA8(v101, v31, v38, v35 & 1);
  v12 = v132;
  *(v7 + 104) = v106;
  *(v7 + 112) = sub_2239A847C(v101, v31, v38, v35 & 1);
  *(v7 + 120) = sub_22398C244(v101, v31, v38, v35 & 1);
  v36 = sub_22398A474(&v154);
  v25 = 0;
LABEL_62:
  *(v7 + 216) = v36;
  sub_22399ACD4(&v154, v151);
  if (v25)
  {
    sub_22397F734(v138, v139);
    sub_22397F734(v130, v131);

    LODWORD(v139) = 0;
    LODWORD(v138) = 1;
    LODWORD(v134) = 1;
    LODWORD(v135) = 1;
    v136 = 1;
    LODWORD(v137) = 1;
    LODWORD(v133) = 1;
LABEL_36:
    swift_getErrorValue();
    v63 = sub_2239B39B8();
    v65 = v64;
    v66 = v25;
    swift_beginAccess();
    qword_2813367D0 = v63;
    qword_2813367D8 = v65;

    v67 = v142;
    v140(v142, v146 + v148, v12);

    v68 = v25;
    v69 = sub_2239B3028();
    v70 = sub_2239B34E8();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v132 = v12;
      v72 = v71;
      v73 = swift_slowAlloc();
      LODWORD(v144) = 0;
      v74 = v73;
      *&v159 = v73;
      *v72 = 136380931;
      v75 = sub_223973B2C(v145, v24, &v159);

      *(v72 + 4) = v75;
      *(v72 + 12) = 2081;
      swift_getErrorValue();
      v76 = sub_2239B39B8();
      v78 = sub_223973B2C(v76, v77, &v159);

      *(v72 + 14) = v78;
      _os_log_impl(&dword_22395C000, v69, v70, "Failed in loadConfig. { configPath=%{private}s, error=%{private}s }", v72, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DEF1D0](v74, -1, -1);
      v79 = v72;
      v12 = v132;
      MEMORY[0x223DEF1D0](v79, -1, -1);

      v80 = v147[1];
      v80(v67, v12);
      v81 = v146;
      v82 = v139;
      v84 = v136;
      v83 = v137;
      if (v144)
      {
        v85 = *(v146 + 64);
        v161 = *(v146 + 48);
        v162 = v85;
        v163 = *(v146 + 80);
        v86 = *(v146 + 32);
        v159 = *(v146 + 16);
        v160 = v86;
        sub_22397F68C(&v159);
      }
    }

    else
    {

      v80 = v147[1];
      v80(v67, v12);
      v81 = v146;
      v82 = v139;
      v84 = v136;
      v83 = v137;
    }

    if (v138)
    {
      v87 = *(v81 + 96);

      if (!v134)
      {
        goto LABEL_41;
      }
    }

    else if (!v134)
    {
LABEL_41:
      if (v135)
      {
        goto LABEL_42;
      }

      goto LABEL_49;
    }

    v92 = *(v81 + 104);

    if (v135)
    {
LABEL_42:
      v88 = *(v81 + 112);

      if (!v84)
      {
        goto LABEL_43;
      }

      goto LABEL_50;
    }

LABEL_49:
    if (!v84)
    {
LABEL_43:
      if (v82)
      {
        goto LABEL_44;
      }

      goto LABEL_51;
    }

LABEL_50:
    v93 = *(v81 + 120);

    if (v82)
    {
LABEL_44:
      v89 = *(v81 + 176);
      v161 = *(v81 + 160);
      v162 = v89;
      v163 = *(v81 + 192);
      v164 = *(v81 + 208);
      v90 = *(v81 + 144);
      v159 = *(v81 + 128);
      v160 = v90;
      sub_22397F638(&v159);
      if (!v83)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

LABEL_51:
    if (!v83)
    {
      goto LABEL_53;
    }

LABEL_52:
    v94 = *(v81 + 216);

LABEL_53:
    if (v133)
    {
      v95 = *(v81 + 256);

      v96 = *(v81 + 264);

      v80((v81 + v148), v12);
      v97 = *(v81 + OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist);
    }

    else
    {
      v91 = *(v81 + 264);

      v80((v81 + v148), v12);
    }

    v98 = *(*v81 + 48);
    v99 = *(*v81 + 52);
    swift_deallocPartialClassInstance();
    result = 0;
    goto LABEL_56;
  }

  v107 = v151[3];
  *(v7 + 160) = v151[2];
  *(v7 + 176) = v107;
  *(v7 + 192) = v151[4];
  *(v7 + 208) = v152;
  v108 = v151[1];
  *(v7 + 128) = v151[0];
  *(v7 + 144) = v108;
  *(v7 + 224) = sub_2239AAB38(v129, v31, v38, v35 & 1);
  sub_22399D1DC(&v154, v150);

  v109 = v150[3];
  v110 = v146;
  *(v146 + 48) = v150[2];
  v110[4] = v109;
  v110[5] = v150[4];
  v111 = v150[1];
  v110[1] = v150[0];
  v110[2] = v111;
  v112 = *(v110 + v128);

  v114 = sub_22397FB80(v113);
  v116 = v115;

  v117 = v146;
  *(v146 + 232) = v114;
  *(v117 + 240) = v116;
  swift_beginAccess();
  *aUnknown_0 = v114;
  qword_2813367E8 = v116;

  v118 = sub_2239B3028();
  v119 = sub_2239B34D8();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *&v153[0] = v121;
    *v120 = 136380931;
    v122 = sub_223973B2C(v145, v144, v153);

    *(v120 + 4) = v122;
    *(v120 + 12) = 2081;
    v123 = v146;
    v124 = *(v146 + 232);
    v125 = *(v146 + 240);

    v126 = sub_223973B2C(v124, v125, v153);

    *(v120 + 14) = v126;
    _os_log_impl(&dword_22395C000, v118, v119, "Config loaded. { configPath=%{private}s, configVersion=%{private}s }", v120, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DEF1D0](v121, -1, -1);
    MEMORY[0x223DEF1D0](v120, -1, -1);
    sub_22397F734(v138, v139);
    sub_22397F734(v130, v131);

    result = v123;
  }

  else
  {
    sub_22397F734(v138, v139);
    sub_22397F734(v130, v131);

    result = v146;
  }

LABEL_56:
  v100 = *MEMORY[0x277D85DE8];
  return result;
}

AudioAnalyticsBase::ConfigSection_optional __swiftcall ConfigSection.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B37B8();

  v5 = 12;
  if (v3 < 0xC)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22397B4DC(unsigned __int8 a1, uint64_t a2, __int16 a3)
{
  v5 = "Bug";
  v6 = a1;
  v7 = "keepUniqueValueSummaryFields";
  v8 = "maxSummaryValues";
  v9 = 0xD000000000000015;
  if (a1 != 3)
  {
    v9 = 0xD000000000000013;
    v8 = "preserveSummaryFields";
  }

  if (a1 == 2)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v7 = v8;
  }

  v10 = 0xD00000000000001CLL;
  if (a1)
  {
    v5 = "ignoredSummaryFields";
  }

  else
  {
    v10 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v9;
  }

  if (v6 <= 1)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (*(a2 + 16))
  {
    v15 = sub_22396236C(v11, v12 | 0x8000000000000000);
    v17 = v16;

    if (v17)
    {
      sub_22395E644(*(a2 + 56) + 32 * v15, v20);
      goto LABEL_20;
    }
  }

  else
  {
  }

  memset(v20, 0, sizeof(v20));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v21;
  }

  v21 = 0;
  result = sub_22397DC90(a1, a2, a3 & 0x1FF, 0x74533C7961727241, 0xED00003E676E6972);
  if (v3)
  {
    if (v21)
    {
    }
  }

  else if (v21)
  {
    v19 = result;

    return v19;
  }

  return result;
}

uint64_t sub_22397B6B4(unsigned __int8 a1, uint64_t a2, __int16 a3)
{
  v4 = "Bug";
  v5 = a1;
  v6 = "keepUniqueValueSummaryFields";
  v7 = "maxSummaryValues";
  v8 = 0xD000000000000015;
  if (a1 != 3)
  {
    v8 = 0xD000000000000013;
    v7 = "preserveSummaryFields";
  }

  if (a1 == 2)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v6 = v7;
  }

  v9 = 0xD00000000000001CLL;
  if (a1)
  {
    v4 = "ignoredSummaryFields";
  }

  else
  {
    v9 = 0xD000000000000014;
  }

  if (a1 <= 1u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  if (v5 <= 1)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*(a2 + 16))
  {
    v14 = sub_22396236C(v10, v11 | 0x8000000000000000);
    v16 = v15;

    if (v16)
    {
      sub_22395E644(*(a2 + 56) + 32 * v14, v19);
      goto LABEL_20;
    }
  }

  else
  {
  }

  memset(v19, 0, sizeof(v19));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v18;
  }

  else
  {
    return sub_22397DC90(a1, a2, a3 & 0x1FF, 7630409, 0xE300000000000000);
  }
}

uint64_t sub_22397B840(unsigned __int8 a1, uint64_t a2)
{
  v4 = a1;
  if (!a1)
  {
    v5 = 0xD000000000000018;
    v6 = "siritts";
    if (*(a2 + 16))
    {
      goto LABEL_9;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (a1 == 1)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0xD000000000000012;
  }

  if (v4 == 1)
  {
    v6 = "monitorClientConnections";
  }

  else
  {
    v6 = "osTransactionTimeout";
  }

  if (!*(a2 + 16))
  {
    goto LABEL_12;
  }

LABEL_9:
  v7 = sub_22396236C(v5, v6 | 0x8000000000000000);
  v9 = v8;

  if (v9)
  {
    sub_22395E644(*(a2 + 56) + 32 * v7, v12);
    goto LABEL_14;
  }

LABEL_13:
  memset(v12, 0, sizeof(v12));
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    v10 = v13;
  }

  else
  {
    v13 = 2;
    v10 = sub_22397DE34(a1);
  }

  return v10 & 1;
}

uint64_t sub_22397B9B8(char a1, uint64_t a2)
{
  v4 = sub_2239A59E8(a1);
  if (*(a2 + 16))
  {
    v6 = sub_22396236C(v4, v5);
    v8 = v7;

    if (v8)
    {
      sub_22395E644(*(a2 + 56) + 32 * v6, v10);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v10, 0, sizeof(v10));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  result = swift_dynamicCast();
  if (!result)
  {
    return sub_22397E0B4(a1);
  }

  return result;
}

uint64_t sub_22397BAB4(char a1, uint64_t a2)
{
  v5 = sub_2239A59E8(a1);
  if (*(a2 + 16))
  {
    v7 = sub_22396236C(v5, v6);
    v9 = v8;

    if (v9)
    {
      sub_22395E644(*(a2 + 56) + 32 * v7, v12);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v12, 0, sizeof(v12));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF18, &unk_2239B53C0);
  if (swift_dynamicCast())
  {
    return v13;
  }

  v13 = 0;
  result = sub_22397DF94(a1);
  if (v2)
  {
    if (v13)
    {
    }
  }

  else if (v13)
  {
    v11 = result;

    return v11;
  }

  return result;
}

uint64_t sub_22397BBE8(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = sub_2239A59E8(a1);
  if (*(a2 + 16))
  {
    v9 = sub_22396236C(v7, v8);
    v11 = v10;

    if (v11)
    {
      sub_22395E644(*(a2 + 56) + 32 * v9, v14);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v14, 0, sizeof(v14));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FE70, "<r");
  if (swift_dynamicCast())
  {
    return v15;
  }

  v15 = 0;
  result = sub_22397E38C(a1, a2, a3 & 0x1FF, sub_2239A59E8, 0x74533C7961727241, 0xED00003E676E6972);
  if (v3)
  {
    if (v15)
    {
    }
  }

  else if (v15)
  {
    v13 = result;

    return v13;
  }

  return result;
}

uint64_t sub_22397BD50(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x6570795461746164;
  v6 = 0xE400000000000000;
  v7 = 1701667182;
  v8 = 0xEC0000006E6F6974;
  v9 = 0x6163696669746F6ELL;
  if (a1 != 4)
  {
    v9 = 1701869940;
    v8 = 0xE400000000000000;
  }

  if (a1 != 3)
  {
    v7 = v9;
    v6 = v8;
  }

  v10 = 0xEC00000065756C61;
  v11 = 0x56746C7561666564;
  if (a1 != 1)
  {
    v11 = 0x6E69616D6F64;
    v10 = 0xE600000000000000;
  }

  if (a1)
  {
    v5 = v11;
    v4 = v10;
  }

  if (a1 <= 2u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  if (v3 <= 2)
  {
    v13 = v4;
  }

  else
  {
    v13 = v6;
  }

  if (*(a2 + 16))
  {
    v15 = sub_22396236C(v12, v13);
    v17 = v16;

    if (v17)
    {
      sub_22395E644(*(a2 + 56) + 32 * v15, v20);
      goto LABEL_20;
    }
  }

  else
  {
  }

  memset(v20, 0, sizeof(v20));
LABEL_20:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v19;
  }

  else
  {
    return sub_22397E1CC(a1);
  }
}

uint64_t sub_22397BF58(uint64_t a1, uint64_t a2, __int16 a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  v9 = a4();
  if (*(a2 + 16))
  {
    v11 = sub_22396236C(v9, v10);
    v13 = v12;

    if (v13)
    {
      sub_22395E644(*(a2 + 56) + 32 * v11, v16);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v16, 0, sizeof(v16));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v15;
  }

  else
  {
    return sub_22397E4B4(a1, a2, a3 & 0x1FF, a5);
  }
}

uint64_t sub_22397C08C(uint64_t a1, uint64_t a2, __int16 a3)
{
  v6 = sub_2239AE0B8(a1);
  if (*(a2 + 16))
  {
    v8 = sub_22396236C(v6, v7);
    v10 = v9;

    if (v10)
    {
      sub_22395E644(*(a2 + 56) + 32 * v8, v13);
      goto LABEL_6;
    }
  }

  else
  {
  }

  memset(v13, 0, sizeof(v13));
LABEL_6:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D09FF30, &qword_2239B5758);
  if (swift_dynamicCast())
  {
    return v12;
  }

  else
  {
    return sub_22397E38C(a1, a2, a3 & 0x1FF, sub_2239AE0B8, 7630409, 0xE300000000000000);
  }
}

uint64_t Config.__allocating_init(baseConfig:routerConfigs:summaryConfigs:systemMonitorConfigs:ioReportingConfigs:rtcConfig:serverConfig:neededPreviousFields:diagnosticConfigs:tailspinConfigs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 *a6, __int16 *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = *(v10 + 48);
  v19 = *(v10 + 52);
  v20 = swift_allocObject();
  v21 = *a6;
  v67 = *(a6 + 2);
  v77 = *(a6 + 4);
  v79 = *(a6 + 12);
  v66 = *(a6 + 6);
  v64 = *(a6 + 10);
  v65 = *(a6 + 5);
  v72 = *a7;
  v76 = *(a7 + 2);
  v85 = *(a7 + 12);
  v81 = *(a6 + 28);
  v83 = *(a7 + 4);
  v73 = *(a6 + 9);
  v75 = *(a7 + 5);
  v22 = *(a7 + 48);
  v68 = *(a7 + 64);
  v69 = *(a7 + 7);
  v70 = *(a7 + 9);
  *(v20 + 264) = MEMORY[0x277D84FA0];
  v23 = OBJC_IVAR____TtC18AudioAnalyticsBase6Config_logger;
  if (qword_2813366C0 != -1)
  {
    swift_once();
  }

  v24 = sub_2239B3048();
  v25 = __swift_project_value_buffer(v24, qword_2813366C8);
  (*(*(v24 - 8) + 16))(v20 + v23, v25, v24);
  v26 = *(a1 + 256);
  *(v20 + 248) = *(a1 + 248);
  *(v20 + 256) = v26;
  *(v20 + OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist) = *(a1 + OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist);
  if (!a2)
  {
    a2 = *(a1 + 96);
  }

  *(v20 + 96) = a2;
  v28 = v83;
  v27 = v85;
  v29 = v75;
  v30 = v76;
  v32 = v79;
  v31 = v81;
  v33 = v77;
  if (a3)
  {
    v34 = v22;
    v35 = v21;
  }

  else
  {
    a3 = *(a1 + 104);

    v33 = v77;
    v32 = v79;
    v35 = v21;
    v31 = v81;
    v28 = v83;
    v30 = v76;
    v29 = v75;
    v34 = v22;
    v27 = v85;
  }

  v36 = v68;
  v37 = v73;
  *(v20 + 104) = a3;
  if (!a4)
  {
    a4 = *(a1 + 112);

    v33 = v77;
    v32 = v79;
    v35 = v21;
    v31 = v81;
    v28 = v83;
    v30 = v76;
    v29 = v75;
    v34 = v22;
    v27 = v85;
  }

  v38 = v72;
  *(v20 + 112) = a4;
  if (!a5)
  {
    a5 = *(a1 + 120);

    v33 = v77;
    v32 = v79;
    v35 = v21;
    v31 = v81;
    v28 = v83;
    v30 = v76;
    v29 = v75;
    v34 = v22;
    v27 = v85;
  }

  v39 = v69;
  v40 = v67;
  v41 = v65;
  *(v20 + 120) = a5;
  v42 = v66;
  if (v66)
  {
    v43 = v64;
  }

  else
  {
    v44 = *(a1 + 192);
    v45 = *(a1 + 144);
    *v88 = *(a1 + 128);
    *&v88[16] = v45;
    v46 = *(a1 + 160);
    *v89 = *(a1 + 176);
    *&v89[16] = v44;
    *&v88[32] = v46;
    v43 = *(a1 + 208);
    v90 = v43;
    v74 = *(&v44 + 1);
    v47 = *v88;
    v48 = v88[2];
    v80 = *&v88[24];
    v82 = *&v89[8];
    v78 = *&v88[8];
    v49 = *(&v46 + 1);
    v50 = *v89;
    sub_223960A4C(v88, v87);
    v33 = v78;
    v32 = v80;
    v35 = v47;
    v41 = v49;
    v42 = v50;
    v36 = v68;
    v37 = v74;
    v29 = v75;
    v40 = v48;
    v38 = v72;
    v31 = v82;
    v28 = v83;
    v30 = v76;
    v34 = v22;
    v27 = v85;
  }

  *(v20 + 128) = v35;
  *(v20 + 130) = v40 & 1;
  *(v20 + 136) = v33;
  *(v20 + 152) = v32;
  *(v20 + 168) = v41;
  *(v20 + 176) = v42;
  *(v20 + 184) = v31;
  *(v20 + 200) = v37;
  *(v20 + 208) = v43;
  v51 = v70;
  if (!v70)
  {
    v52 = *(a1 + 80);
    v53 = *(a1 + 32);
    *v88 = *(a1 + 16);
    *&v88[16] = v53;
    v54 = *(a1 + 48);
    *v89 = *(a1 + 64);
    *&v89[16] = v52;
    *&v88[32] = v54;
    v51 = *(&v52 + 1);
    v39 = *&v89[8];
    v55 = v52;
    v56 = v89[0];
    v38 = *v88;
    v57 = v88[2];
    v84 = *&v88[8];
    v86 = *&v88[24];
    v58 = *(&v54 + 1);
    sub_22397FC90(v88, v87);
    v30 = v57;
    v36 = v55;
    v29 = v58;
    v34 = v56;
    v28 = v84;
    v27 = v86;
  }

  v59 = a8;
  *(v20 + 16) = v38;
  *(v20 + 18) = v30 & 1;
  *(v20 + 40) = v27;
  *(v20 + 24) = v28;
  *(v20 + 56) = v29;
  *(v20 + 64) = v34 & 1;
  *(v20 + 72) = v39;
  *(v20 + 80) = v36 & 1;
  *(v20 + 88) = v51;
  if (!a8)
  {
    swift_beginAccess();
    v59 = *(a1 + 264);
  }

  v60 = a10;
  swift_beginAccess();
  v61 = *(v20 + 264);
  *(v20 + 264) = v59;

  if (!a9)
  {
    v63 = *(a1 + 216);

    *(v20 + 216) = v63;
    if (a10)
    {
      goto LABEL_21;
    }

LABEL_23:
    v60 = *(a1 + 224);

    goto LABEL_21;
  }

  *(v20 + 216) = a9;
  if (!a10)
  {
    goto LABEL_23;
  }

LABEL_21:
  *(v20 + 224) = v60;

  *(v20 + 232) = 0x746573746F6ELL;
  *(v20 + 240) = 0xE600000000000000;
  return v20;
}

uint64_t Config.init(baseConfig:routerConfigs:summaryConfigs:systemMonitorConfigs:ioReportingConfigs:rtcConfig:serverConfig:neededPreviousFields:diagnosticConfigs:tailspinConfigs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int16 *a6, __int16 *a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = *a6;
  v61 = *(a6 + 2);
  v71 = *(a6 + 4);
  v73 = *(a6 + 12);
  v60 = *(a6 + 6);
  v58 = *(a6 + 10);
  v59 = *(a6 + 5);
  v66 = *a7;
  v70 = *(a7 + 2);
  v79 = *(a7 + 12);
  v75 = *(a6 + 28);
  v77 = *(a7 + 4);
  v67 = *(a6 + 9);
  v69 = *(a7 + 5);
  v17 = *(a7 + 48);
  v62 = *(a7 + 64);
  v63 = *(a7 + 7);
  v64 = *(a7 + 9);
  *(v10 + 264) = MEMORY[0x277D84FA0];
  v18 = OBJC_IVAR____TtC18AudioAnalyticsBase6Config_logger;
  if (qword_2813366C0 != -1)
  {
    swift_once();
  }

  v19 = sub_2239B3048();
  v20 = __swift_project_value_buffer(v19, qword_2813366C8);
  (*(*(v19 - 8) + 16))(v10 + v18, v20, v19);
  v21 = *(a1 + 256);
  *(v10 + 248) = *(a1 + 248);
  *(v10 + 256) = v21;
  *(v10 + OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist) = *(a1 + OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist);
  if (!a2)
  {
    a2 = *(a1 + 96);
  }

  *(v10 + 96) = a2;
  v23 = v77;
  v22 = v79;
  v24 = v69;
  v25 = v70;
  v27 = v73;
  v26 = v75;
  v28 = v71;
  v29 = v59;
  if (a3)
  {
    v30 = v17;
    v31 = v16;
  }

  else
  {
    a3 = *(a1 + 104);

    v28 = v71;
    v27 = v73;
    v31 = v16;
    v26 = v75;
    v23 = v77;
    v25 = v70;
    v24 = v69;
    v30 = v17;
    v22 = v79;
  }

  v32 = v62;
  v33 = v67;
  *(v10 + 104) = a3;
  if (!a4)
  {
    a4 = *(a1 + 112);

    v28 = v71;
    v27 = v73;
    v31 = v16;
    v26 = v75;
    v23 = v77;
    v25 = v70;
    v24 = v69;
    v30 = v17;
    v22 = v79;
  }

  v34 = v66;
  *(v10 + 112) = a4;
  if (!a5)
  {
    a5 = *(a1 + 120);

    v28 = v71;
    v27 = v73;
    v31 = v16;
    v26 = v75;
    v23 = v77;
    v25 = v70;
    v24 = v69;
    v30 = v17;
    v22 = v79;
  }

  v35 = v63;
  v36 = v61;
  *(v10 + 120) = a5;
  v37 = v60;
  if (v60)
  {
    v38 = v58;
  }

  else
  {
    v39 = *(a1 + 192);
    v40 = *(a1 + 144);
    *v82 = *(a1 + 128);
    *&v82[16] = v40;
    v41 = *(a1 + 160);
    *v83 = *(a1 + 176);
    *&v83[16] = v39;
    *&v82[32] = v41;
    v38 = *(a1 + 208);
    v84 = v38;
    v68 = *(&v39 + 1);
    v42 = *v82;
    v43 = v82[2];
    v74 = *&v82[24];
    v76 = *&v83[8];
    v72 = *&v82[8];
    v29 = *(&v41 + 1);
    v44 = *v83;
    sub_223960A4C(v82, v81);
    v28 = v72;
    v27 = v74;
    v31 = v42;
    v37 = v44;
    v32 = v62;
    v35 = v63;
    v33 = v68;
    v24 = v69;
    v36 = v43;
    v34 = v66;
    v26 = v76;
    v23 = v77;
    v25 = v70;
    v30 = v17;
    v22 = v79;
  }

  *(v10 + 128) = v31;
  *(v10 + 130) = v36 & 1;
  *(v10 + 136) = v28;
  *(v10 + 152) = v27;
  *(v10 + 168) = v29;
  *(v10 + 176) = v37;
  *(v10 + 184) = v26;
  *(v10 + 200) = v33;
  *(v10 + 208) = v38;
  v45 = v64;
  if (!v64)
  {
    v46 = *(a1 + 80);
    v47 = *(a1 + 32);
    *v82 = *(a1 + 16);
    *&v82[16] = v47;
    v48 = *(a1 + 48);
    *v83 = *(a1 + 64);
    *&v83[16] = v46;
    *&v82[32] = v48;
    v45 = *(&v46 + 1);
    v35 = *&v83[8];
    v49 = v46;
    v50 = v83[0];
    v34 = *v82;
    v51 = v82[2];
    v78 = *&v82[8];
    v80 = *&v82[24];
    v52 = *(&v48 + 1);
    sub_22397FC90(v82, v81);
    v25 = v51;
    v32 = v49;
    v24 = v52;
    v30 = v50;
    v23 = v78;
    v22 = v80;
  }

  v53 = a8;
  *(v10 + 16) = v34;
  *(v10 + 18) = v25 & 1;
  *(v10 + 40) = v22;
  *(v10 + 24) = v23;
  *(v10 + 56) = v24;
  *(v10 + 64) = v30 & 1;
  *(v10 + 72) = v35;
  *(v10 + 80) = v32 & 1;
  *(v10 + 88) = v45;
  if (!a8)
  {
    swift_beginAccess();
    v53 = *(a1 + 264);
  }

  v54 = a10;
  swift_beginAccess();
  v55 = *(v10 + 264);
  *(v10 + 264) = v53;

  if (!a9)
  {
    v57 = *(a1 + 216);

    *(v10 + 216) = v57;
    if (a10)
    {
      goto LABEL_21;
    }

LABEL_23:
    v54 = *(a1 + 224);

    goto LABEL_21;
  }

  *(v10 + 216) = a9;
  if (!a10)
  {
    goto LABEL_23;
  }

LABEL_21:
  *(v10 + 224) = v54;

  *(v10 + 232) = 0x746573746F6ELL;
  *(v10 + 240) = 0xE600000000000000;
  return v10;
}

uint64_t static Config.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 232) == *(a2 + 232) && *(a1 + 240) == *(a2 + 240))
  {
    return 1;
  }

  else
  {
    return sub_2239B3958();
  }
}

uint64_t static Config.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 232) == *(a2 + 232) && *(a1 + 240) == *(a2 + 240))
  {
    return 0;
  }

  else
  {
    return sub_2239B3958();
  }
}

void sub_22397CAF8()
{
  type metadata accessor for Config();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_2239B3158();
  v3 = sub_2239B3158();
  v4 = [v1 pathForResource:v2 ofType:v3];

  if (v4)
  {
    v5 = sub_2239B3188();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  qword_281336820 = v5;
  *algn_281336828 = v7;
}

Swift::Void __swiftcall Config.updateNeededPreviousFields(workers:)(Swift::OpaquePointer workers)
{
  v1 = *(workers._rawValue + 2);
  if (v1)
  {
    v2 = (workers._rawValue + 32);
    v3 = MEMORY[0x277D84F90];
    do
    {
      v5 = *v2;
      v6 = swift_conformsToProtocol2();
      if (v6)
      {
        v7 = v5 == 0;
      }

      else
      {
        v7 = 1;
      }

      if (!v7)
      {
        v8 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v3 = sub_22398237C(0, *(v3 + 2) + 1, 1, v3);
        }

        v10 = *(v3 + 2);
        v9 = *(v3 + 3);
        if (v10 >= v9 >> 1)
        {
          v3 = sub_22398237C((v9 > 1), v10 + 1, 1, v3);
        }

        *(v3 + 2) = v10 + 1;
        v4 = &v3[16 * v10];
        *(v4 + 4) = v5;
        *(v4 + 5) = v8;
      }

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v44 = MEMORY[0x277D84FA0];
  v35 = *(v3 + 2);
  if (v35)
  {
    v11 = 0;
    v33 = v3;
    v34 = v3 + 32;
    while (v11 < *(v3 + 2))
    {
      v38 = v11;
      v12 = &v34[16 * v11];
      v13 = *v12;
      isUniquelyReferenced_nonNull_native = (*(*(v12 + 1) + 8))(v41);
      v15 = isUniquelyReferenced_nonNull_native;
      v16 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v16)
      {
        v17 = 0;
        v18 = isUniquelyReferenced_nonNull_native + 40;
        v40 = *(isUniquelyReferenced_nonNull_native + 16);
        v36 = v16 - 1;
        v39 = MEMORY[0x277D84F90];
        v37 = isUniquelyReferenced_nonNull_native + 40;
        do
        {
          v19 = (v18 + 16 * v17);
          v20 = v17;
          while (1)
          {
            if (v20 >= *(v15 + 16))
            {
              __break(1u);
              goto LABEL_36;
            }

            v21 = *(v19 - 1);
            v22 = *v19;
            v17 = v20 + 1;
            v23 = *(v41 + 88);
            v42[0] = v21;
            v42[1] = v22;
            MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
            v32[2] = v42;

            if ((sub_223968CF0(sub_223968DBC, v32, v23) & 1) == 0)
            {
              break;
            }

            v19 += 2;
            ++v20;
            if (v40 == v17)
            {
              goto LABEL_17;
            }
          }

          v24 = v39;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v25 = v24;
          v43 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = sub_22396C7F0(0, *(v24 + 16) + 1, 1);
            v25 = v43;
          }

          v27 = *(v25 + 16);
          v26 = *(v25 + 24);
          if (v27 >= v26 >> 1)
          {
            isUniquelyReferenced_nonNull_native = sub_22396C7F0((v26 > 1), v27 + 1, 1);
            v25 = v43;
          }

          *(v25 + 16) = v27 + 1;
          v39 = v25;
          v28 = v25 + 16 * v27;
          *(v28 + 32) = v21;
          *(v28 + 40) = v22;
          v18 = v37;
        }

        while (v36 != v20);
      }

      else
      {
        v39 = MEMORY[0x277D84F90];
      }

LABEL_17:
      v11 = v38 + 1;

      sub_22397FCEC(v39);

      v3 = v33;
      if (v11 == v35)
      {

        v29 = v44;
        goto LABEL_34;
      }
    }

LABEL_36:
    __break(1u);
  }

  else
  {

    v29 = MEMORY[0x277D84FA0];
LABEL_34:
    v30 = v41;
    swift_beginAccess();
    v31 = *(v30 + 264);
    *(v30 + 264) = v29;
  }
}

uint64_t ConfigSection.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    v7 = 6513249;
    v8 = 7500916;
    if (v1 != 10)
    {
      v8 = 1953719668;
    }

    if (v1 != 9)
    {
      v7 = v8;
    }

    v9 = 0x6F4D6D6574737973;
    v10 = 0x726574756F72;
    if (v1 != 7)
    {
      v10 = 0x6E6970736C696174;
    }

    if (v1 != 6)
    {
      v9 = v10;
    }

    if (*v0 <= 8u)
    {
      return v9;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 1953460082;
    v3 = 0x656972616D6D7573;
    v4 = 0x74726F7065526F69;
    if (v1 != 4)
    {
      v4 = 0x74736F6E67616964;
    }

    if (v1 != 3)
    {
      v3 = v4;
    }

    v5 = 0x726576726573;
    if (v1 != 1)
    {
      v5 = 6517874;
    }

    if (*v0)
    {
      v2 = v5;
    }

    if (*v0 <= 2u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_22397D0E0()
{
  v0 = sub_2239B2F28();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x28223BE20](v0);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v14 - v6;
  if (qword_281336728 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_281336730);
  (*(v1 + 16))(v5, v8, v0);
  sub_2239B2EE8();
  v9 = *(v1 + 8);
  v9(v5, v0);
  v10 = sub_2239B2F08();
  v12 = v11;
  result = (v9)(v7, v0);
  qword_281336838 = v10;
  unk_281336840 = v12;
  return result;
}

uint64_t sub_22397D298(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t static Config.lastErrorMessage.getter()
{
  swift_beginAccess();
  v0 = qword_2813367D0;

  return v0;
}

uint64_t static Config.lastErrorMessage.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  qword_2813367D0 = a1;
  qword_2813367D8 = a2;
}

uint64_t sub_22397D418(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_2813367D0 = v2;
  qword_2813367D8 = v1;
}

uint64_t Config.serverConfig.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_22397FC90(v8, &v7);
}

uint64_t Config.sortableConfigVersion.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return v1;
}

uint64_t static Config.configVersion.getter()
{
  swift_beginAccess();
  v0 = *aUnknown_0;

  return v0;
}

uint64_t static Config.configVersion.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *aUnknown_0 = a1;
  qword_2813367E8 = a2;
}

uint64_t sub_22397D62C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aUnknown_0 = v2;
  qword_2813367E8 = v1;
}

uint64_t Config.configPath.getter()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 256);

  return v1;
}

AudioAnalyticsBase::Config::WorkerConfigs_optional __swiftcall Config.WorkerConfigs.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2239B3968();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_22397D76C@<X0>(unint64_t *a1@<X8>)
{
  result = Config.WorkerConfigs.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Config.neededPreviousFields.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 264);
  *(v1 + 264) = a1;
}

char *Config.deinit()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 11);

  v7 = *(v0 + 12);

  v8 = *(v0 + 13);

  v9 = *(v0 + 14);

  v10 = *(v0 + 15);

  v11 = *(v0 + 17);
  v12 = *(v0 + 18);
  v13 = *(v0 + 19);
  v14 = *(v0 + 20);
  v15 = *(v0 + 21);
  v16 = *(v0 + 22);
  v17 = *(v0 + 23);
  v18 = *(v0 + 24);
  v19 = *(v0 + 26);

  v20 = *(v0 + 27);

  v21 = *(v0 + 28);

  v22 = *(v0 + 30);

  v23 = *(v0 + 32);

  v24 = *(v0 + 33);

  v25 = OBJC_IVAR____TtC18AudioAnalyticsBase6Config_logger;
  v26 = sub_2239B3048();
  (*(*(v26 - 8) + 8))(&v0[v25], v26);
  v27 = *&v0[OBJC_IVAR____TtC18AudioAnalyticsBase6Config_plist];

  return v0;
}

uint64_t Config.__deallocating_deinit()
{
  Config.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_22397DA00(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 232) == *(*a2 + 232) && *(*a1 + 240) == *(*a2 + 240))
  {
    return 0;
  }

  else
  {
    return sub_2239B3958();
  }
}

uint64_t sub_22397DA2C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 232);
  v4 = *(*a2 + 240);
  if (v3 == *(v2 + 232) && v4 == *(v2 + 240))
  {
    return 1;
  }

  else
  {
    return (sub_2239B3958() ^ 1) & 1;
  }
}

uint64_t sub_22397DA7C(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 232) == *(*a2 + 232) && *(*a1 + 240) == *(*a2 + 240))
  {
    return 1;
  }

  else
  {
    return (sub_2239B3958() ^ 1) & 1;
  }
}

uint64_t sub_22397DACC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 232);
  v4 = *(*a2 + 240);
  if (v3 == *(v2 + 232) && v4 == *(v2 + 240))
  {
    return 0;
  }

  else
  {
    return sub_2239B3958();
  }
}