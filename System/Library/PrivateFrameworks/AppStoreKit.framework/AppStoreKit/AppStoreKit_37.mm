uint64_t sub_1E1694620(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5D70);
  result = sub_1E1AF72AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (a2)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      else
      {
        sub_1E134E724(v23, &v36);
        v35 = *(*(v5 + 56) + 16 * v22);
      }

      result = sub_1E1AF6F2C();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      *(*(v7 + 56) + 16 * v15) = v35;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (a2)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1E16948E8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB6030);
  v35 = a2;
  result = sub_1E1AF72AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(v5 + 56);
      v21 = *(*(v5 + 48) + 8 * v19);
      v22 = (v20 + 32 * v19);
      if (v35)
      {
        sub_1E1301CF0(v22, v36);
      }

      else
      {
        sub_1E137A5C4(v22, v36);
        v23 = v21;
      }

      sub_1E1AF5DFC();
      sub_1E1AF762C();
      sub_1E1AF5F0C();
      v24 = sub_1E1AF767C();

      v25 = -1 << *(v7 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      result = sub_1E1301CF0(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
      v5 = v34;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E1694BB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3768);
  v37 = a2;
  result = sub_1E1AF72AC();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
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
    v36 = v5;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = *(*(v5 + 48) + v23);
      v26 = v24 + 24 * v23;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);
      if ((v37 & 1) == 0)
      {
        sub_1E141D014(v27, v28, v29);
      }

      sub_1E1AF762C();
      sub_1E1AF5F0C();

      result = sub_1E1AF767C();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v15) >> 6;
        while (++v17 != v31 || (v30 & 1) == 0)
        {
          v32 = v17 == v31;
          if (v17 == v31)
          {
            v17 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v17);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v25;
      v19 = *(v7 + 56) + 24 * v18;
      *v19 = v27;
      *(v19 + 8) = v28;
      *(v19 + 16) = v29;
      ++*(v7 + 16);
      v5 = v36;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1E1694F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1E1AF62BC())
  {
    sub_1E1AF72DC();
    v13 = sub_1E1AF72CC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1E1AF62BC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1E1AF629C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1E1AF704C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1E1687E98(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

void sub_1E1695370()
{
  sub_1E16954B0();
  if (v0 <= 0x3F)
  {
    sub_1E169551C();
    if (v1 <= 0x3F)
    {
      sub_1E13E24C8();
      sub_1E1AF5CCC();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ModelMappedDiffableDataSourceContentSnapshot.ItemModelContainer();
        sub_1E1AF5CCC();
        if (v3 <= 0x3F)
        {
          sub_1E1695578();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1E16954B0()
{
  if (!qword_1EE1E3CB0)
  {
    sub_1E13E24C8();
    v0 = sub_1E1AF1F8C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1E3CB0);
    }
  }
}

void sub_1E169551C()
{
  if (!qword_1EE1E0BC0[0])
  {
    sub_1E13E24C8();
    v0 = type metadata accessor for OrderedSet();
    if (!v1)
    {
      atomic_store(v0, qword_1EE1E0BC0);
    }
  }
}

void sub_1E1695578()
{
  if (!qword_1EE1D25F8)
  {
    v0 = sub_1E1AF65CC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1D25F8);
    }
  }
}

uint64_t sub_1E16955D0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1E169560C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1E1695654(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16956E8(unint64_t *a1, void (*a2)(uint64_t))
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

void static SystemAppIcon.from(iconName:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v6 - 8);
  if (a1 == 0x65726F7453707041 && a2 == 0xEC0000006E6F6349 || (sub_1E1AF74AC() & 1) != 0)
  {
    v7 = 0;
  }

  else if (a1 == 0x736567617373654DLL && a2 == 0xEC0000006E6F6349 || (sub_1E1AF74AC() & 1) != 0)
  {
    v7 = 1;
  }

  else if (a1 == 0x6F634973656D6147 && a2 == 0xE90000000000006ELL || (sub_1E1AF74AC() & 1) != 0)
  {
    v7 = 2;
  }

  else if (a1 == 0x746E6543656D6147 && a2 == 0xEE006E6F63497265 || (sub_1E1AF74AC() & 1) != 0)
  {
    v7 = 3;
  }

  else
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v8 = sub_1E1AF591C();
    __swift_project_value_buffer(v8, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v9[3] = MEMORY[0x1E69E6158];
    v9[0] = a1;
    v9[1] = a2;

    sub_1E1AF385C();
    sub_1E13E44F8(v9);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();

    v7 = 4;
  }

  *a3 = v7;
}

id SystemAppIcon.uiImage(size:scale:drawBorder:)(double a1, double a2, double a3)
{
  v9 = *v3;
  v4 = sub_1E1696580(&v9, 0, a1, a2, a3);
  if (!v4)
  {
    return 0;
  }

  v6 = v4;
  v7 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v4 scale:0 orientation:v5];

  return v7;
}

uint64_t sub_1E1695B0C(uint64_t a1)
{
  v2 = sub_1E1696F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1695B48(uint64_t a1)
{
  v2 = sub_1E1696F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1695B84()
{
  v1 = 0x65726F7453707041;
  v2 = 0x73656D6147;
  if (*v0 != 2)
  {
    v2 = 0x746E6543656D6147;
  }

  if (*v0)
  {
    v1 = 0x736567617373654DLL;
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

uint64_t sub_1E1695C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1E1697418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E1695C28(uint64_t a1)
{
  v2 = sub_1E1696DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1695C64(uint64_t a1)
{
  v2 = sub_1E1696DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1695CA0(uint64_t a1)
{
  v2 = sub_1E1696E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1695CDC(uint64_t a1)
{
  v2 = sub_1E1696E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1695D18(uint64_t a1)
{
  v2 = sub_1E1696E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1695D54(uint64_t a1)
{
  v2 = sub_1E1696E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1695D90(uint64_t a1)
{
  v2 = sub_1E1696EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1695DCC(uint64_t a1)
{
  v2 = sub_1E1696EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemAppIcon.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t SystemAppIcon.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB76E0);
  v40 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB76E8);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB76F0);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB76F8);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7700);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v16);
  sub_1E1696DF4();
  v17 = v48;
  sub_1E1AF76CC();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_1E1AF738C();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_1E1AF708C();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7710);
      *v27 = &type metadata for SystemAppIcon;
      sub_1E1AF732C();
      sub_1E1AF707C();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_1E1696EF0();
          v32 = v37;
          sub_1E1AF731C();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_1E1696F44();
          v28 = v37;
          sub_1E1AF731C();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_1E1696E9C();
        v31 = v37;
        sub_1E1AF731C();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_1E1696E48();
        v33 = v37;
        sub_1E1AF731C();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_1E1696500()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E1696534()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E1696580(unsigned __int8 *a1, char a2, double a3, double a4, double a5)
{
  v10 = sub_1E1AF389C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  if (a3 <= 0.0 || a4 <= 0.0 || a5 <= 0.0)
  {
    if (qword_1EE1E35B0 != -1)
    {
      swift_once();
    }

    v16 = sub_1E1AF591C();
    __swift_project_value_buffer(v16, qword_1EE216158);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF388C();
    sub_1E1AF387C();
    v17 = sub_1E1AF6B4C();
    v35 = MEMORY[0x1E69E6158];
    v33 = *&v17;
    v34 = v18;
    sub_1E1AF385C();
    sub_1E13E44F8(&v33);
    sub_1E1AF387C();
    v35 = MEMORY[0x1E69E7DE0];
    v33 = a5;
    sub_1E1AF385C();
    sub_1E13E44F8(&v33);
    sub_1E1AF387C();
    sub_1E1AF38AC();
    sub_1E1AF54AC();
  }

  else
  {
    v13 = *a1;
    v14 = 0xEF73656D61672E65;
    v15 = 0x6C7070612E6D6F63;
    if (v13 <= 1 || v13 == 2)
    {
      v19 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
      v20 = sub_1E1AF5DBC();

      v21 = [v19 initWithBundleIdentifier_];
    }

    else
    {
      v22 = objc_allocWithZone(MEMORY[0x1E69A8A00]);
      v20 = sub_1E1AF5DBC();
      v21 = [v22 initWithType_];
    }

    v23 = v21;

    v24 = [objc_allocWithZone(MEMORY[0x1E69A8A30]) initWithSize:a3 scale:{a4, a5}];
    [v24 setDrawBorder_];
    v25 = [v23 imageForDescriptor_];
    if (v25)
    {
      v26 = v25;
      if (![v25 placeholder] || (v27 = objc_msgSend(v23, sel_prepareImageForDescriptor_, v24), v26, (v26 = v27) != 0))
      {
        v27 = v26;
        v28 = [v27 CGImage];
        if (v28)
        {
          v29 = v28;
          [v27 size];
          [v27 scale];

          return v29;
        }
      }

      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v32 = sub_1E1AF591C();
      __swift_project_value_buffer(v32, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          v14 = 0x80000001E1B6D960;
          v15 = 0xD00000000000001CLL;
        }
      }

      else if (v13)
      {
        v14 = 0x80000001E1B60210;
        v15 = 0xD000000000000013;
      }

      else
      {
        v14 = 0x80000001E1B59CB0;
        v15 = 0xD000000000000012;
      }

      v35 = MEMORY[0x1E69E6158];
      v33 = *&v15;
      v34 = v14;
      sub_1E1AF386C();
      sub_1E13E44F8(&v33);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();
    }

    else
    {
      if (qword_1EE1E35B0 != -1)
      {
        swift_once();
      }

      v31 = sub_1E1AF591C();
      __swift_project_value_buffer(v31, qword_1EE216158);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
      sub_1E1AF38EC();
      *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
      sub_1E1AF388C();
      sub_1E1AF387C();
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          v14 = 0x80000001E1B6D960;
          v15 = 0xD00000000000001CLL;
        }
      }

      else if (v13)
      {
        v14 = 0x80000001E1B60210;
        v15 = 0xD000000000000013;
      }

      else
      {
        v14 = 0x80000001E1B59CB0;
        v15 = 0xD000000000000012;
      }

      v35 = MEMORY[0x1E69E6158];
      v33 = *&v15;
      v34 = v14;
      sub_1E1AF386C();
      sub_1E13E44F8(&v33);
      sub_1E1AF387C();
      sub_1E1AF38AC();
      sub_1E1AF54AC();
    }
  }

  return 0;
}

unint64_t sub_1E1696DF4()
{
  result = qword_1ECEB7708;
  if (!qword_1ECEB7708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7708);
  }

  return result;
}

unint64_t sub_1E1696E48()
{
  result = qword_1ECEB7718;
  if (!qword_1ECEB7718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7718);
  }

  return result;
}

unint64_t sub_1E1696E9C()
{
  result = qword_1ECEB7720;
  if (!qword_1ECEB7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7720);
  }

  return result;
}

unint64_t sub_1E1696EF0()
{
  result = qword_1ECEB7728;
  if (!qword_1ECEB7728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7728);
  }

  return result;
}

unint64_t sub_1E1696F44()
{
  result = qword_1ECEB7730;
  if (!qword_1ECEB7730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7730);
  }

  return result;
}

unint64_t sub_1E1696F9C()
{
  result = qword_1ECEB7738;
  if (!qword_1ECEB7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7738);
  }

  return result;
}

unint64_t sub_1E1697054()
{
  result = qword_1ECEB7740;
  if (!qword_1ECEB7740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7740);
  }

  return result;
}

unint64_t sub_1E16970AC()
{
  result = qword_1ECEB7748;
  if (!qword_1ECEB7748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7748);
  }

  return result;
}

unint64_t sub_1E1697104()
{
  result = qword_1ECEB7750;
  if (!qword_1ECEB7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7750);
  }

  return result;
}

unint64_t sub_1E169715C()
{
  result = qword_1ECEB7758;
  if (!qword_1ECEB7758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7758);
  }

  return result;
}

unint64_t sub_1E16971B4()
{
  result = qword_1ECEB7760;
  if (!qword_1ECEB7760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7760);
  }

  return result;
}

unint64_t sub_1E169720C()
{
  result = qword_1ECEB7768;
  if (!qword_1ECEB7768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7768);
  }

  return result;
}

unint64_t sub_1E1697264()
{
  result = qword_1ECEB7770;
  if (!qword_1ECEB7770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7770);
  }

  return result;
}

unint64_t sub_1E16972BC()
{
  result = qword_1ECEB7778;
  if (!qword_1ECEB7778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7778);
  }

  return result;
}

unint64_t sub_1E1697314()
{
  result = qword_1ECEB7780;
  if (!qword_1ECEB7780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7780);
  }

  return result;
}

unint64_t sub_1E169736C()
{
  result = qword_1ECEB7788;
  if (!qword_1ECEB7788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7788);
  }

  return result;
}

unint64_t sub_1E16973C4()
{
  result = qword_1ECEB7790;
  if (!qword_1ECEB7790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7790);
  }

  return result;
}

uint64_t sub_1E1697418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7453707041 && a2 == 0xE800000000000000;
  if (v4 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373654DLL && a2 == 0xE800000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656D6147 && a2 == 0xE500000000000000 || (sub_1E1AF74AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6543656D6147 && a2 == 0xEA00000000007265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E1AF74AC();

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

uint64_t SearchHistoryItem.id.getter()
{
  v1 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  if (v1 != 4)
  {
    sub_1E1AF5F0C();
  }

  sub_1E1AF767C();
  return sub_1E1AF6F6C();
}

uint64_t SearchHistoryItem.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  if (v1 != 4)
  {
    sub_1E1AF5F0C();
  }

  return sub_1E1AF767C();
}

uint64_t SearchHistoryItem.term.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SearchHistoryItem.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v5 = sub_1E1AF380C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  sub_1E1AF381C();
  v12 = sub_1E1AF37CC();
  v14 = v13;
  v15 = *(v6 + 8);
  v15(v11, v5);
  if (v14)
  {
    v26 = v12;
    v27 = v14;
    sub_1E13B8AA4();
    v16 = sub_1E1AF6DFC();
    v25 = v17;

    sub_1E1AF381C();
    sub_1E14B7B80();
    sub_1E1AF36DC();
    v18 = sub_1E1AF39DC();
    (*(*(v18 - 8) + 8))(v28, v18);
    v15(a1, v5);
    result = (v15)(v8, v5);
    v20 = v26;
    v21 = v25;
    *a3 = v16;
    *(a3 + 8) = v21;
    *(a3 + 16) = v20;
  }

  else
  {
    v22 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v23 = 1836213620;
    v23[1] = 0xE400000000000000;
    v23[2] = &type metadata for SearchHistoryItem;
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E69AB690], v22);
    swift_willThrow();
    v24 = sub_1E1AF39DC();
    (*(*(v24 - 8) + 8))(v28, v24);
    return (v15)(a1, v5);
  }

  return result;
}

uint64_t sub_1E1697AC4()
{
  if (*v0)
  {
    return 0x797469746E65;
  }

  else
  {
    return 1836213620;
  }
}

uint64_t sub_1E1697AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836213620 && a2 == 0xE400000000000000;
  if (v5 || (sub_1E1AF74AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E65 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();

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

uint64_t sub_1E1697BCC(uint64_t a1)
{
  v2 = sub_1E16986B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1697C08(uint64_t a1)
{
  v2 = sub_1E16986B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SearchHistoryItem.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7798);
  v9 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E16986B8();
  sub_1E1AF76EC();
  v13 = 0;
  sub_1E1AF73DC();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_1E169870C();
    sub_1E1AF73CC();
  }

  return (*(v9 + 8))(v6, v4);
}

uint64_t SearchHistoryItem.hash(into:)()
{
  v1 = *(v0 + 16);
  sub_1E1AF5F0C();
  if (v1 == 4)
  {
    return sub_1E1AF764C();
  }

  sub_1E1AF764C();
  sub_1E1AF5F0C();
}

uint64_t SearchHistoryItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E16986B8();
  sub_1E1AF76CC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_1E1AF735C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_1E1698760();
  sub_1E1AF734C();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1E16980C0()
{
  v1 = *(v0 + 16);
  sub_1E1AF762C();
  sub_1E1AF5F0C();
  sub_1E1AF764C();
  if (v1 != 4)
  {
    sub_1E1AF5F0C();
  }

  return sub_1E1AF767C();
}

uint64_t SearchHistoryItem.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (*(v0 + 16) == 4)
  {
    v4 = 0x203A6D726574;
    MEMORY[0x1E68FECA0](v1, v2);
  }

  else
  {
    v4 = 0;
    sub_1E1AF6FEC();
    MEMORY[0x1E68FECA0](0x203A6D726574, 0xE600000000000000);
    MEMORY[0x1E68FECA0](v1, v2);
    MEMORY[0x1E68FECA0](0x797469746E65202CLL, 0xEA0000000000203ALL);
    sub_1E1AF714C();
  }

  return v4;
}

unint64_t SearchHistoryItem.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E1698370(1);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
  result = sub_1E16987B4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t sub_1E1698370(char a1)
{
  v2 = 0x656461637261;
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = MEMORY[0x1E69E7CC8];
  if (a1)
  {
    sub_1E1AF762C();
    sub_1E1AF5F0C();
    sub_1E1AF764C();
    if (v5 != 4)
    {
      sub_1E1AF5F0C();
    }

    sub_1E1AF767C();
    v7 = sub_1E1AF742C();
    v9 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1E1598D2C(v7, v9, 25705, 0xE200000000000000, isUniquelyReferenced_nonNull_native);
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1E1598D2C(v3, v4, 1836213620, 0xE400000000000000, v11);
  if (v5 <= 1)
  {
    if (v5)
    {
      v2 = 0x79726F7473;
    }

    else
    {
      v2 = 0x65706F6C65766564;
    }

    if (v5)
    {
      v12 = 0xE500000000000000;
    }

    else
    {
      v12 = 0xE900000000000072;
    }

    goto LABEL_16;
  }

  if (v5 == 2)
  {
    v12 = 0xE600000000000000;
    goto LABEL_16;
  }

  if (v5 == 3)
  {
    v12 = 0xE500000000000000;
    v2 = 0x6863746177;
LABEL_16:
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1E1598D2C(v2, v12, 0x797469746E65, 0xE600000000000000, v13);
  }

  return v6;
}

unint64_t sub_1E16985AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1E1698370(1);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2548);
  result = sub_1E16987B4();
  a1[4] = result;
  *a1 = v2;
  return result;
}

uint64_t _s11AppStoreKit17SearchHistoryItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1E1AF74AC(), result = 0, (v5 & 1) != 0))
  {
    if (v2 == 4)
    {
      if (v3 != 4)
      {
        return 0;
      }
    }

    else if (v3 == 4 || (sub_1E1458F8C(v2, v3) & 1) == 0)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

unint64_t sub_1E16986B8()
{
  result = qword_1ECEB77A0;
  if (!qword_1ECEB77A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77A0);
  }

  return result;
}

unint64_t sub_1E169870C()
{
  result = qword_1ECEB77A8;
  if (!qword_1ECEB77A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77A8);
  }

  return result;
}

unint64_t sub_1E1698760()
{
  result = qword_1ECEB77B8;
  if (!qword_1ECEB77B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77B8);
  }

  return result;
}

unint64_t sub_1E16987B4()
{
  result = qword_1ECEB77C0;
  if (!qword_1ECEB77C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECEB2548);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77C0);
  }

  return result;
}

unint64_t sub_1E1698834()
{
  result = qword_1ECEB77C8;
  if (!qword_1ECEB77C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77C8);
  }

  return result;
}

uint64_t sub_1E1698888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1E16988D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E1698934()
{
  result = qword_1ECEB77D0;
  if (!qword_1ECEB77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77D0);
  }

  return result;
}

unint64_t sub_1E169898C()
{
  result = qword_1ECEB77D8;
  if (!qword_1ECEB77D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77D8);
  }

  return result;
}

unint64_t sub_1E16989E4()
{
  result = qword_1ECEB77E0;
  if (!qword_1ECEB77E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB77E0);
  }

  return result;
}

__n128 _FrameLayout.init(view:skipLayoutMeasurements:shouldViewFitAvailableWidth:layoutMargins:)@<Q0>(__int128 *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  sub_1E1361B28(a1, v18);
  BYTE8(v19) = a2;
  BYTE9(v19) = a3;
  *&v20 = a5;
  *(&v20 + 1) = a6;
  *&v21 = a7;
  *(&v21 + 1) = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77E8);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 48) = v19;
  *(v15 + 64) = v16;
  *(v15 + 80) = v21;
  result = v18[1];
  *(v15 + 16) = v18[0];
  *(v15 + 32) = result;
  *a4 = v15;
  return result;
}

uint64_t _FrameLayout.view.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1E1698B3C(v3 + 16, v5);
  return sub_1E1361B28(v5, a1);
}

uint64_t sub_1E1698B74@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  sub_1E1698B3C(v3 + 16, v5);
  return sub_1E1361B28(v5, a2);
}

uint64_t _FrameLayout.view.setter(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1E1698B3C(v3 + 16, v9);
  __swift_destroy_boxed_opaque_existential_1(v9);
  sub_1E1361B28(a1, v9);
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1E1698CB8(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77E8);
    v6 = swift_allocObject();
    v7 = v9[3];
    v6[3] = v9[2];
    v6[4] = v7;
    v6[5] = v9[4];
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*_FrameLayout.view.modify(uint64_t *a1))(__int128 **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x98uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 144) = v1;
  v5 = *v1;
  swift_beginAccess();
  sub_1E1698B3C(v5 + 16, v4);
  sub_1E1361B28(v4, (v4 + 5));
  return sub_1E1698D90;
}

void sub_1E1698D90(__int128 **a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 5;
  if (a2)
  {
    sub_1E1300B24(v3, v2);
    _FrameLayout.view.setter(v2);
    __swift_destroy_boxed_opaque_existential_1((v2 + 5));
  }

  else
  {
    _FrameLayout.view.setter(v3);
  }

  free(v2);
}

uint64_t _FrameLayout.skipLayoutMeasurements.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 56);
}

uint64_t _FrameLayout.skipLayoutMeasurements.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1E1698B3C(v3 + 16, v9);
  BYTE8(v10) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1E1698CB8(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77E8);
    v6 = swift_allocObject();
    v7 = v11;
    v6[3] = v10;
    v6[4] = v7;
    v6[5] = v12;
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*_FrameLayout.skipLayoutMeasurements.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 56);
  return sub_1E1698F9C;
}

uint64_t _FrameLayout.shouldViewFitAvailableWidth.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 57);
}

uint64_t _FrameLayout.shouldViewFitAvailableWidth.setter(char a1)
{
  v3 = *v1;
  swift_beginAccess();
  sub_1E1698B3C(v3 + 16, v9);
  BYTE9(v10) = a1;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v4 = *v1;
    swift_beginAccess();
    sub_1E1698CB8(v9, v4 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77E8);
    v6 = swift_allocObject();
    v7 = v11;
    v6[3] = v10;
    v6[4] = v7;
    v6[5] = v12;
    v8 = v9[1];
    v6[1] = v9[0];
    v6[2] = v8;

    *v1 = v6;
  }

  return result;
}

void (*_FrameLayout.shouldViewFitAvailableWidth.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *v1;
  swift_beginAccess();
  *(v4 + 32) = *(v5 + 57);
  return sub_1E1699160;
}

void sub_1E1699178(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v3 = *a1;
  a3(*(*a1 + 32));

  free(v3);
}

double _FrameLayout.layoutMargins.getter()
{
  v1 = *v0;
  swift_beginAccess();
  return *(v1 + 64);
}

uint64_t _FrameLayout.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  swift_beginAccess();
  sub_1E1698B3C(v9 + 16, v15);
  *&v16 = a1;
  *(&v16 + 1) = a2;
  *&v17 = a3;
  *(&v17 + 1) = a4;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v10 = *v4;
    swift_beginAccess();
    sub_1E1698CB8(v15, v10 + 16);
    return swift_endAccess();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB77E8);
    v12 = swift_allocObject();
    v13 = v16;
    v12[3] = v15[2];
    v12[4] = v13;
    v12[5] = v17;
    v14 = v15[1];
    v12[1] = v15[0];
    v12[2] = v14;

    *v4 = v12;
  }

  return result;
}

void (*_FrameLayout.layoutMargins.modify(uint64_t *a1))(double **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 56) = v1;
  v5 = *v1;
  swift_beginAccess();
  v6 = *(v5 + 80);
  *v4 = *(v5 + 64);
  v4[1] = v6;
  return sub_1E1699384;
}

void sub_1E1699384(double **a1)
{
  v1 = *a1;
  _FrameLayout.layoutMargins.setter(**a1, (*a1)[1], (*a1)[2], (*a1)[3]);

  free(v1);
}

double _FrameLayout.measurements(fitting:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1E1AF6B5C();
  sub_1E1698B3C(v1 + 16, v5);
  sub_1E1361B28(v5, v6);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF11CC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t _FrameLayout.placeChildren(relativeTo:in:)()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1E1AF6B0C();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (*(v1 + 56) == 1)
  {
    sub_1E1698B3C(v1 + 16, v11);
    sub_1E1361B28(v11, v12);
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    return sub_1E1AF106C();
  }

  else
  {
    sub_1E1698B3C(v1 + 16, v11);
    sub_1E1361B28(v11, v12);
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    sub_1E1AF11CC();
    __swift_destroy_boxed_opaque_existential_1(v12);
    if (*(v1 + 57))
    {
      v14.origin.x = v3;
      v14.origin.y = v5;
      v14.size.width = v7;
      v14.size.height = v9;
      CGRectGetWidth(v14);
    }

    v15.origin.x = v3;
    v15.origin.y = v5;
    v15.size.width = v7;
    v15.size.height = v9;
    CGRectGetMinX(v15);
    v16.origin.x = v3;
    v16.origin.y = v5;
    v16.size.width = v7;
    v16.size.height = v9;
    CGRectGetMinY(v16);
    sub_1E1698B3C(v1 + 16, v11);
    sub_1E1361B28(v11, v12);
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1E1698B3C(v1 + 16, v11);
    sub_1E1361B28(v11, v12);
    __swift_project_boxed_opaque_existential_1Tm(v12, v13);
    sub_1E1AF115C();
    sub_1E1AF107C();
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }
}

double sub_1E1699750()
{
  v1 = *v0;
  swift_beginAccess();
  sub_1E1AF6B5C();
  sub_1E1698B3C(v1 + 16, v5);
  sub_1E1361B28(v5, v6);
  __swift_project_boxed_opaque_existential_1Tm(v6, v6[3]);
  sub_1E1AF11CC();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v3;
}

uint64_t AdTransparencyAction.adTransparencyData.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC11AppStoreKit20AdTransparencyAction_adTransparencyData);

  return v1;
}

char *AdTransparencyAction.__allocating_init(title:adTransparencyData:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFEAC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  v15 = &v14[OBJC_IVAR____TtC11AppStoreKit20AdTransparencyAction_adTransparencyData];
  *v15 = a3;
  *(v15 + 1) = a4;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v16 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v17 = sub_1E1AF3E1C();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a5, v17);
  v19 = OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics;
  v20 = sub_1E1AF46DC();
  (*(*(v20 - 8) + 56))(&v14[v19], 1, 1, v20);
  v21 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_clickSender];
  *v21 = 0u;
  *(v21 + 1) = 0u;
  v22 = &v14[OBJC_IVAR____TtC11AppStoreKit6Action_id];
  sub_1E138853C(v38, &v35);
  if (*(&v36 + 1))
  {
    v23 = v36;
    *v22 = v35;
    *(v22 + 1) = v23;
    *(v22 + 4) = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v24 = sub_1E1AEFE7C();
    v25 = v10;
    v26 = a5;
    v27 = a1;
    v28 = a2;
    v29 = v24;
    v30 = v11;
    v32 = v31;
    (*(v30 + 8))(v13, v25);
    v34[1] = v29;
    v34[2] = v32;
    a2 = v28;
    a1 = v27;
    a5 = v26;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v18 + 8))(a5, v17);
  sub_1E1308058(v38, &unk_1ECEB5670);
  *(v14 + 2) = a1;
  *(v14 + 3) = a2;
  *(v14 + 4) = 0;
  *(v14 + 5) = 0;
  return v14;
}

void *AdTransparencyAction.init(title:adTransparencyData:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v31 = a1;
  v32 = a2;
  v10 = sub_1E1AEFEAC();
  v30 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v30 - v14;
  v16 = sub_1E1AF3E1C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = (v6 + OBJC_IVAR____TtC11AppStoreKit20AdTransparencyAction_adTransparencyData);
  *v20 = a3;
  v20[1] = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_1E1AF46DC();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_1E138853C(v41, &v35);
  if (*(&v36 + 1))
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
  }

  else
  {
    sub_1E1AEFE9C();
    v23 = sub_1E1AEFE7C();
    v25 = v24;
    (*(v30 + 8))(v12, v10);
    v33 = v23;
    v34 = v25;
    sub_1E1AF6F6C();
    sub_1E1308058(&v35, &unk_1ECEB5670);
  }

  (*(v17 + 8))(a5, v16);
  sub_1E1308058(v41, &unk_1ECEB5670);
  v26 = v6 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
  *(v26 + 4) = v40;
  v27 = v39;
  *v26 = v38;
  *(v26 + 1) = v27;
  sub_1E134B7C8(v15, v6 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
  v28 = v32;
  v6[2] = v31;
  v6[3] = v28;
  v6[4] = 0;
  v6[5] = 0;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t AdTransparencyAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v35 = a2;
  v29 = *v3;
  v5 = sub_1E1AF39DC();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF380C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v29 - v12;
  v36 = a1;
  sub_1E1AF381C();
  v14 = sub_1E1AF37CC();
  v16 = v15;
  v17 = *(v8 + 8);
  v37 = v7;
  v17(v13, v7);
  if (v16)
  {
    v29 = v17;
    v18 = (v32 + OBJC_IVAR____TtC11AppStoreKit20AdTransparencyAction_adTransparencyData);
    *v18 = v14;
    v18[1] = v16;
    v19 = v36;
    (*(v8 + 16))(v11, v36, v37);
    v21 = v33;
    v20 = v34;
    v22 = v30;
    v23 = v35;
    (*(v33 + 16))(v30, v35, v34);
    v24 = v31;
    v25 = Action.init(deserializing:using:)(v11, v22);
    if (!v24)
    {
      v22 = v25;
    }

    (*(v21 + 8))(v23, v20);
    v29(v19, v37);
  }

  else
  {
    v26 = sub_1E1AF5A7C();
    sub_1E1380704();
    swift_allocError();
    *v27 = 0xD000000000000012;
    v27[1] = 0x80000001E1B6D980;
    v22 = v29;
    v27[2] = v29;
    (*(*(v26 - 8) + 104))(v27, *MEMORY[0x1E69AB690], v26);
    swift_willThrow();
    (*(v33 + 8))(v35, v34);
    v17(v36, v37);
    swift_deallocPartialClassInstance();
  }

  return v22;
}

uint64_t AdTransparencyAction.deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return v0;
}

uint64_t AdTransparencyAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics;
  v2 = sub_1E1AF3E1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E134B88C(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_id);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics, &unk_1ECEB1770);
  sub_1E1308058(v0 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender, &qword_1ECEB2DF0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AdTransparencyAction()
{
  result = qword_1EE1EE310;
  if (!qword_1EE1EE310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UpsellGridPresenter.__allocating_init(objectGraph:contentDictionary:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_contentDictionary) = a2;
  v5 = sub_1E138C578(a1, 0, 0, 0);

  return v5;
}

uint64_t UpsellGridPresenter.init(objectGraph:contentDictionary:)(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_contentDictionary) = a2;
  v5 = sub_1E138C578(a1, 0, 0, 0);

  return v5;
}

uint64_t UpsellGridPresenter.view.setter(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*UpsellGridPresenter.view.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

Swift::Void __swiftcall UpsellGridPresenter.update(ignoringCache:)(Swift::Bool ignoringCache)
{
  swift_beginAccess();
  *(v1 + 32) = 1;
  v2 = v1 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v3 + 16) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  type metadata accessor for JSIntentDispatcher();
  v5 = *(v1 + OBJC_IVAR____TtC11AppStoreKit13BasePresenter_objectGraph);
  sub_1E1AF421C();
  sub_1E1AF55EC();
  sub_1E1367E24(*(v1 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_contentDictionary), v5, "AppStoreKit/UpsellGridPresenter.swift", 37, 2);
  v6 = sub_1E1361A80();
  swift_retain_n();
  v7 = sub_1E1AF68EC();
  v8[3] = v6;
  v8[4] = MEMORY[0x1E69AB720];
  v8[0] = v7;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v8);
}

uint64_t sub_1E169AA34(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a2 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(*(v3 + 16), *(v3 + 24), ObjectType, v5);
    swift_unknownObjectRelease();
  }

  swift_beginAccess();
  *(a2 + 32) = 0;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v4 + 8);
    v9 = swift_getObjectType();
    (*(*(v8 + 16) + 16))(v9);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E169AB20(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  swift_beginAccess();
  *(a2 + 32) = 0;
  v7 = a2 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = *(v7 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v8 + 16) + 16))(ObjectType);
    swift_unknownObjectRelease();
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(v7 + 8);
    v11 = swift_getObjectType();
    v12 = sub_1E1AEFCCC();
    (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
    v13 = type metadata accessor for PresenterError();
    sub_1E169B0B4();
    v14 = swift_allocError();
    *v15 = a1;
    sub_1E13E23F8(v6, v15 + *(v13 + 20));
    v16 = *(v10 + 16);
    v17 = *(v16 + 24);
    v18 = a1;
    v17(v14, v11, v16);
    swift_unknownObjectRelease();
  }

  if (qword_1EE1D27B0 != -1)
  {
    swift_once();
  }

  v19 = sub_1E1AF591C();
  __swift_project_value_buffer(v19, qword_1EE215450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CD0;
  sub_1E1AF382C();
  swift_getErrorValue();
  v20 = v24;
  v21 = v25;
  v26[3] = v25;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(v21 - 8) + 16))(boxed_opaque_existential_0, v20, v21);
  sub_1E1AF38BC();
  sub_1E13E44F8(v26);
  sub_1E1AF54AC();
}

uint64_t sub_1E169AEA4()
{
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view);
}

uint64_t UpsellGridPresenter.deinit()
{
  v0 = BasePresenter.deinit();
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view);

  return v0;
}

uint64_t UpsellGridPresenter.__deallocating_deinit()
{
  BasePresenter.deinit();
  v0 = OBJC_IVAR____TtC11AppStoreKit19UpsellGridPresenter_view;

  sub_1E1337DEC(v1 + v0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UpsellGridPresenter()
{
  result = qword_1ECEB77F8;
  if (!qword_1ECEB77F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E169B0B4()
{
  result = qword_1EE1DFCE0;
  if (!qword_1EE1DFCE0)
  {
    type metadata accessor for PresenterError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1DFCE0);
  }

  return result;
}

unint64_t sub_1E169B19C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3680);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1E169B2C0;
  *(v0 + 24) = 0;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1E169C82C;
  *(v1 + 24) = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1E169C82C;
  *(v2 + 24) = 0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1E169B508;
  *(v3 + 24) = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7150);
  qword_1EE1DB3E8 = v4;
  result = sub_1E140CE44();
  qword_1EE1DB3D0 = v3;
  qword_1EE1DB410 = v4;
  unk_1EE1DB418 = result;
  qword_1EE1DB3F0 = result;
  unk_1EE1DB3F8 = v0;
  qword_1EE1DB438 = v4;
  unk_1EE1DB440 = result;
  qword_1EE1DB420 = v1;
  qword_1EE1DB460 = v4;
  unk_1EE1DB468 = result;
  qword_1EE1DB448 = v2;
  return result;
}

void sub_1E169B2C0(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_1E1AF6ABC() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 0.0;
      goto LABEL_12;
    }
  }

  v12 = sub_1E1AF6AFC();

  v11 = 10.0;
  if (v12)
  {
    v11 = 6.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_1E169B3E0(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  if ((sub_1E1AF6ABC() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = sub_1E1AF5DFC();
  v7 = v6;
  if (v5 == sub_1E1AF5DFC() && v7 == v8)
  {
  }

  else
  {
    v10 = sub_1E1AF74AC();

    if ((v10 & 1) == 0)
    {
      __break(1u);
LABEL_8:

      v11 = 13.0;
      goto LABEL_12;
    }
  }

  v12 = sub_1E1AF6AFC();

  v11 = 33.0;
  if ((v12 & 1) == 0)
  {
    v11 = 16.0;
  }

LABEL_12:
  *a2 = v11;
}

void sub_1E169B508(id *a1@<X0>, double *a2@<X8>)
{
  v3 = [*a1 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_1E1AF6ABC();
  v5 = 12.0;
  if (v3)
  {
    v5 = 14.0;
  }

  *a2 = v5;
}

uint64_t static TagFacetRibbonLayout.Metrics.standard.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1EE1DB3C0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_1E169B5FC(&qword_1EE1DB3D0, v2);
}

__n128 TagFacetRibbonLayout.init(tagFacetViews:maxRowsStandard:maxRowsAX:metrics:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *(a4 + 112);
  *(a5 + 120) = *(a4 + 96);
  *(a5 + 136) = v5;
  v6 = *(a4 + 144);
  *(a5 + 152) = *(a4 + 128);
  *(a5 + 168) = v6;
  v7 = *(a4 + 48);
  *(a5 + 56) = *(a4 + 32);
  *(a5 + 72) = v7;
  v8 = *(a4 + 80);
  *(a5 + 88) = *(a4 + 64);
  *(a5 + 104) = v8;
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 40) = v10;
  return result;
}

void TagFacetRibbonLayout.placeChildren(relativeTo:in:)(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v45 = sub_1E1AF745C();
  v14 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v46 = &v36 - v18;
  v19 = *v7;
  if (*(*v7 + 16))
  {
    v38 = a2;
    v20 = [a1 traitCollection];
    v37 = sub_1E1AF69BC();

    v44 = a1;
    v21 = [a1 traitCollection];
    v48 = sub_1E169BB54(v19, v21, a3, a4, a5, a6);

    v22 = *(v19 + 16);

    v43 = v22;
    if (v22)
    {
      v23 = 0;
      v24 = v19 + 32;
      v41 = *MEMORY[0x1E69E7048];
      v40 = (v14 + 104);
      v39 = *MEMORY[0x1E69E7040];
      v25 = (v14 + 8);
      v42 = v19;
      v26 = v47;
      while (v23 < *(v19 + 16))
      {
        sub_1E1300B24(v24, v52);
        v27 = v48[2];
        if (v23 == v27)
        {

          __swift_destroy_boxed_opaque_existential_1(v52);
          goto LABEL_13;
        }

        if (v23 >= v27)
        {
          goto LABEL_15;
        }

        v28 = &v48[4 * v23];
        v29 = *(v28 + 3);
        v50 = *(v28 + 2);
        v51 = v29;
        sub_1E1361B28(v52, v53);
        v55 = v51;
        v54 = v50;
        v49 = v53[4];
        __swift_project_boxed_opaque_existential_1Tm(v53, v53[3]);
        v30 = *v40;
        v31 = v46;
        v32 = v45;
        (*v40)(v46, v41, v45);
        v30(v26, v39, v32);
        CGPoint.rounded(_:)(v31, *&v50, *(&v50 + 1));
        CGSize.rounded(_:)(v26, *&v51, *(&v51 + 1));
        v33 = *v25;
        (*v25)(v26, v32);
        v33(v31, v32);
        v34 = [v44 traitCollection];
        sub_1E1AF697C();
        sub_1E1AF6B2C();

        sub_1E1AF116C();
        sub_1E169C088(v53);
        v24 += 40;
        ++v23;
        v19 = v42;
        if (v43 == v23)
        {
          goto LABEL_8;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }

    else
    {
LABEL_8:

LABEL_13:
      v35 = v37;
      sub_1E1AF106C();
    }
  }

  else
  {

    sub_1E1AF106C();
  }
}

void *sub_1E169BB54(char *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v8 = v6;
  v65 = MEMORY[0x1E69E7CC0];
  v15 = sub_1E1AF698C();
  v16 = 1;
  if (v15)
  {
    v16 = 2;
  }

  v57 = v6[v16];
  v17 = sub_1E169C35C(a1, a3, a4, a5, a6);
  v66.origin.x = a3;
  v66.origin.y = a4;
  v66.size.width = a5;
  v66.size.height = a6;
  CGRectGetMinY(v66);
  if (v17 < 0)
  {
    goto LABEL_53;
  }

  v7 = *(a1 + 2);
  if (v7 < v17)
  {
    goto LABEL_54;
  }

  v55 = a2;
  a2 = (a1 + 32);
  if (v7 == v17)
  {

    v60 = a1;
  }

  else
  {
    sub_1E14E6394(a1, (a1 + 32), 0, (2 * v17) | 1);
    v60 = v19;
  }

  v6 = ((2 * v7) | 1);
  v18 = a1;
  if (v17)
  {
    goto LABEL_55;
  }

  for (i = a1; ; i = v51)
  {
    v53 = a2;
    if (v57 < 1 || !v17)
    {
      break;
    }

    v52 = v6;
    v21 = 0;
    v6 = 0;
    MinX = a3;
    v23 = a4;
    Width = a5;
    Height = a6;
    a2 = v55;
    v54 = v8;
    while (1)
    {
      v59 = v6;
      v26 = v7;
      v27 = a1;

      v7 = v60;
      a1 = sub_1E169C464(v60, MinX, v23, Width, Height);

      v6 = &v65;
      v18 = sub_1E1728220(a1);
      v28 = __OFADD__(v21, v17);
      v21 += v17;
      if (v28)
      {
        break;
      }

      v6 = sub_1E169C35C(i, a3, a4, a5, a6);

      v58 = v6;
      v17 = v6 + v21;
      if (__OFADD__(v21, v6))
      {
        goto LABEL_48;
      }

      if (v17 < v21)
      {
        goto LABEL_49;
      }

      if (v26 < v21)
      {
        goto LABEL_50;
      }

      if (v21 < 0)
      {
        goto LABEL_51;
      }

      if (v26 < v17)
      {
        goto LABEL_52;
      }

      v29 = v8;
      v30 = a2;
      v31 = v27;
      if (v26 != v6)
      {
        sub_1E14E6394(v27, v53, v21, (2 * v17) | 1);
        v31 = v44;
      }

      v60 = v31;
      v32 = v65;
      v33 = v65[2];
      v56 = v65;
      if (v33)
      {
        *&v64[0] = MEMORY[0x1E69E7CC0];
        sub_1E135C320(0, v33, 0);
        v34 = *&v64[0];
        v35 = v32 + 7;
        v7 = v26;
        do
        {
          MaxY = CGRectGetMaxY(*(v35 - 3));
          *&v64[0] = v34;
          v38 = *(v34 + 16);
          v37 = *(v34 + 24);
          if (v38 >= v37 >> 1)
          {
            v39 = MaxY;
            sub_1E135C320((v37 > 1), v38 + 1, 1);
            MaxY = v39;
            v34 = *&v64[0];
          }

          *(v34 + 16) = v38 + 1;
          *(v34 + 8 * v38 + 32) = MaxY;
          v35 += 4;
          --v33;
        }

        while (v33);
        v8 = v54;
        a2 = v55;
      }

      else
      {
        v34 = MEMORY[0x1E69E7CC0];
        a2 = v30;
        v8 = v29;
        v7 = v26;
      }

      *&v40 = COERCE_DOUBLE(sub_1E141FAB4(v34));
      v42 = v41;

      if (v42)
      {
        __swift_project_boxed_opaque_existential_1Tm(v8 + 8, v8[11]);
        sub_1E1AF12EC();
        v23 = v43 + 0.0;
      }

      else
      {
        v23 = *&v40;
      }

      a1 = v27;

      v67.origin.x = a3;
      v67.origin.y = a4;
      v67.size.width = a5;
      v67.size.height = a6;
      MinX = CGRectGetMinX(v67);
      v68.origin.x = a3;
      v68.origin.y = a4;
      v68.size.width = a5;
      v68.size.height = a6;
      Width = CGRectGetWidth(v68);
      v69.origin.x = a3;
      v69.origin.y = a4;
      v69.size.width = a5;
      v69.size.height = a6;
      Height = CGRectGetHeight(v69);
      i = v27;
      if (v17)
      {
        sub_1E14E6394(v27, v53, v17, v52);
        i = v45;
      }

      v6 = (v59 + 1);
      if ((v59 + 1) != v57)
      {
        v17 = v58;
        if (v58 > 0)
        {
          continue;
        }
      }

      goto LABEL_37;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    sub_1E14E6394(v18, a2, v17, v6);
  }

  v56 = MEMORY[0x1E69E7CC0];
LABEL_37:

  v46 = 0;
  a1 = &v61;
  v8 = v56;
  while (1)
  {
    v47 = 0uLL;
    v17 = v7;
    v48 = 0uLL;
    v49 = 0uLL;
    if (v46 != v7)
    {
      if (v46 >= v7)
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v17 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_46;
      }

      *&v61 = v46;
      sub_1E1300B24(v53 + 40 * v46, &v61 + 8);
      v47 = v61;
      v48 = v62;
      v49 = v63;
    }

    v64[0] = v47;
    v64[1] = v48;
    v64[2] = v49;
    if (!v49)
    {
      return v56;
    }

    v60 = v47;
    sub_1E1361B28((v64 + 8), &v61);
    a2 = *(&v62 + 1);
    v6 = __swift_project_boxed_opaque_existential_1Tm(&v61, *(&v62 + 1));
    sub_1E1AF118C();
    v18 = __swift_destroy_boxed_opaque_existential_1(&v61);
    v46 = v17;
  }
}

uint64_t sub_1E169C088(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

CGFloat TagFacetRibbonLayout.measurements(fitting:in:)(void *a1, CGFloat a2, CGFloat a3)
{
  v4 = *v3;
  if (!*(*v3 + 2))
  {
    return *MEMORY[0x1E69ABBD0];
  }

  v8 = [a1 traitCollection];
  v9 = sub_1E1AF69BC();

  v10 = [a1 traitCollection];
  v11 = sub_1E169BB54(v4, v10, 0.0, 0.0, a2, a3);

  v12 = *(v11 + 2);
  if (v12)
  {
    v24 = a2;
    v13 = v11[4];
    v14 = v11[5];
    v15 = v11[6];
    v16 = v11[7];
    v17 = v12 - 1;
    if (v12 != 1)
    {
      v18 = v11 + 11;
      do
      {
        v19 = *(v18 - 3);
        v20 = *(v18 - 2);
        v22 = *(v18 - 1);
        v21 = *v18;
        v26.origin.x = v13;
        v26.origin.y = v14;
        v26.size.width = v15;
        v26.size.height = v16;
        MaxY = CGRectGetMaxY(v26);
        v27.origin.x = v19;
        v27.origin.y = v20;
        v27.size.width = v22;
        v27.size.height = v21;
        if (MaxY < CGRectGetMaxY(v27))
        {
          v13 = v19;
          v14 = v20;
          v15 = v22;
          v16 = v21;
        }

        v18 += 4;
        --v17;
      }

      while (v17);
    }

    v28.origin.x = v13;
    v28.origin.y = v14;
    v28.size.width = v15;
    v28.size.height = v16;
    CGRectGetMaxY(v28);

    return v24;
  }

  else
  {
  }

  return a2;
}

uint64_t sub_1E169C2BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v2 = sub_1E1AF1E8C();
  v3 = *MEMORY[0x1E69DDC30];
  if (sub_1E1AF6ADC())
  {
    v3;
  }

  __swift_mutable_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1E1AF1E9C();
}

uint64_t sub_1E169C35C(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = 0;
  v11 = *(a1 + 16);
  v12 = 0.0;
  v13 = (a1 + 32);
  while (v11 != v10)
  {
    ++v10;
    __swift_project_boxed_opaque_existential_1Tm(v13, v13[3]);
    sub_1E1AF11EC();
    v15 = v12 + v14;
    __swift_project_boxed_opaque_existential_1Tm((v5 + 24), *(v5 + 48));
    sub_1E1AF12EC();
    v12 = v15 + v16;
    v18.origin.x = a2;
    v18.origin.y = a3;
    v18.size.width = a4;
    v18.size.height = a5;
    v13 += 5;
    if (v12 > CGRectGetWidth(v18))
    {
      return v10 - 1;
    }
  }

  return v11;
}

char *sub_1E169C464(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v6 = v5;
  Width = CGRectGetWidth(*&a2);
  v31 = a2;
  v32 = a3;
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  MinX = CGRectGetMinX(v37);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v13 = a1 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1E1300B24(v13, v35);
    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    sub_1E1AF11EC();
    v16 = v15;
    v18 = v17;
    v38.origin.x = v31;
    v38.origin.y = v32;
    v38.size.width = a4;
    v38.size.height = a5;
    MinY = CGRectGetMinY(v38);
    __swift_project_boxed_opaque_existential_1Tm(v6 + 13, v6[16]);
    sub_1E1AF12EC();
    v21 = MinY + v20;
    v39.origin.x = v31;
    v39.origin.y = v32;
    v39.size.width = a4;
    v39.size.height = a5;
    CGRectGetWidth(v39);
    if (v16 > Width)
    {
      v22 = 0.0;
    }

    else
    {
      v22 = MinX;
    }

    if (v16 <= Width)
    {
      v23 = v16;
    }

    else
    {
      v21 = 0.0;
      v23 = 0.0;
    }

    if (v16 > Width)
    {
      v24 = 0.0;
    }

    else
    {
      v24 = v18;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = sub_1E172D670(0, *(v14 + 2) + 1, 1, v14);
    }

    v26 = *(v14 + 2);
    v25 = *(v14 + 3);
    if (v26 >= v25 >> 1)
    {
      v14 = sub_1E172D670((v25 > 1), v26 + 1, 1, v14);
    }

    *(v14 + 2) = v26 + 1;
    v27 = &v14[32 * v26];
    v27[4] = v22;
    v27[5] = v21;
    v27[6] = v23;
    v27[7] = v24;
    if (v23 > 0.0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v6 + 3, v6[6]);
      sub_1E1AF12EC();
      v29 = v28;
      v40.origin.x = v22;
      v40.origin.y = v21;
      v40.size.width = v23;
      v40.size.height = v24;
      MinX = MinX + v29 + CGRectGetWidth(v40);
      v41.origin.x = v22;
      v41.origin.y = v21;
      v41.size.width = v23;
      v41.size.height = v24;
      Width = Width - (v29 + CGRectGetWidth(v41));
    }

    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    sub_1E1AF118C();
    __swift_destroy_boxed_opaque_existential_1(v35);
    v13 += 40;
    --v12;
  }

  while (v12);
  return v14;
}

__n128 __swift_memcpy184_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  result = a2[8];
  v9 = a2[9];
  v10 = a2[10];
  *(a1 + 176) = *(a2 + 22);
  *(a1 + 144) = v9;
  *(a1 + 160) = v10;
  *(a1 + 128) = result;
  return result;
}

uint64_t sub_1E169C754(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 184))
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

uint64_t sub_1E169C79C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PrefetchMarkerItem.__deallocating_deinit()
{
  sub_1E134B88C(v0 + 16);

  return swift_deallocClassInstance();
}

unint64_t sub_1E169C898()
{
  result = qword_1ECEB7818;
  if (!qword_1ECEB7818)
  {
    type metadata accessor for PrefetchMarkerItem();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7818);
  }

  return result;
}

uint64_t ProductWriteAReview.__allocating_init(id:writeReviewAction:supportAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E1AEFEAC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  sub_1E138853C(a1, &v17);
  if (*(&v18 + 1))
  {
    sub_1E13E2E98(a1);
    v20 = v17;
    v21 = v18;
    v22 = v19;
  }

  else
  {
    sub_1E1AEFE9C();
    v11 = sub_1E1AEFE7C();
    v13 = v12;
    (*(v7 + 8))(v9, v6);
    v16[1] = v11;
    v16[2] = v13;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v17);
  }

  v14 = v21;
  *(v10 + 32) = v20;
  *(v10 + 48) = v14;
  *(v10 + 64) = v22;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  return v10;
}

uint64_t ProductWriteAReview.init(id:writeReviewAction:supportAction:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1E1AEFEAC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E138853C(a1, &v18);
  if (*(&v19 + 1))
  {
    sub_1E13E2E98(a1);
    v21 = v18;
    v22 = v19;
    v23 = v20;
  }

  else
  {
    sub_1E1AEFE9C();
    v12 = sub_1E1AEFE7C();
    v14 = v13;
    (*(v9 + 8))(v11, v8);
    v17[1] = v12;
    v17[2] = v14;
    sub_1E1AF6F6C();
    sub_1E13E2E98(a1);
    sub_1E13E2E98(&v18);
  }

  v15 = v22;
  *(v4 + 32) = v21;
  *(v4 + 48) = v15;
  *(v4 + 64) = v23;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  return v4;
}

uint64_t ProductWriteAReview.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ProductWriteAReview.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t ProductWriteAReview.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v31 = a2;
  v5 = sub_1E1AEFEAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E1AF380C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v30 - v14;
  v32 = a1;
  sub_1E1AF381C();
  v16 = sub_1E1AF37CC();
  if (v17)
  {
    v33 = v16;
    v34 = v17;
  }

  else
  {
    sub_1E1AEFE9C();
    v18 = sub_1E1AEFE7C();
    v19 = v6;
    v21 = v20;
    (*(v19 + 8))(v8, v5);
    v33 = v18;
    v34 = v21;
  }

  sub_1E1AF6F6C();
  v22 = *(v10 + 8);
  v22(v15, v9);
  v23 = v36;
  *(v3 + 32) = v35;
  *(v3 + 48) = v23;
  *(v3 + 64) = v37;
  type metadata accessor for Action();
  v24 = v32;
  sub_1E1AF381C();
  v25 = v31;
  v26 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v31);
  v22(v12, v9);
  *(v3 + 16) = v26;
  sub_1E1AF381C();
  v27 = static Action.tryToMakeInstance(byDeserializing:using:)(v12, v25);
  v28 = sub_1E1AF39DC();
  (*(*(v28 - 8) + 8))(v25, v28);
  v22(v24, v9);
  v22(v12, v9);
  *(v3 + 24) = v27;
  return v3;
}

uint64_t ProductWriteAReview.deinit()
{

  sub_1E134B88C(v0 + 32);
  return v0;
}

uint64_t ProductWriteAReview.__deallocating_deinit()
{

  sub_1E134B88C(v0 + 32);

  return swift_deallocClassInstance();
}

unint64_t sub_1E169D020()
{
  result = qword_1ECEB7820;
  if (!qword_1ECEB7820)
  {
    type metadata accessor for ProductWriteAReview();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7820);
  }

  return result;
}

uint64_t sub_1E169D0A8@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ProductWriteAReview();
  v7 = swift_allocObject();
  result = ProductWriteAReview.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t AdvertVisibilityCalculator.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1025;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 81) = 4;
  *(v0 + 104) = 257;
  return v0;
}

uint64_t AdvertVisibilityCalculator.beginTracking(view:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v10 = swift_getObjectType();

  return sub_1E169E238(a1, a3, v4, ObjectType, v10, a2, a4);
}

Swift::Void __swiftcall AdvertVisibilityCalculator.endTracking()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  v1 = 1;
  sub_1E169D60C(&v1);
  *(v0 + 81) = 4;
}

Swift::Void __swiftcall AdvertVisibilityCalculator.viewControllerDidAppear()()
{
  v1 = *(v0 + 104);
  *(v0 + 104) = 1;
  if ((v1 & 1) == 0)
  {
    v2 = 3;
    sub_1E169D60C(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.viewControllerWillDisappear()()
{
  v1 = *(v0 + 104);
  *(v0 + 104) = 0;
  if (v1 == 1)
  {
    v2 = 3;
    sub_1E169D60C(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.appDidForeground()()
{
  v1 = *(v0 + 105);
  *(v0 + 105) = 1;
  if (v1 & 1) == 0 && (*(v0 + 104))
  {
    v2 = 4;
    sub_1E169D60C(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.appWillBackground()()
{
  v1 = *(v0 + 105);
  *(v0 + 105) = 0;
  if (v1 == 1 && (*(v0 + 104) & 1) != 0)
  {
    v2 = 4;
    sub_1E169D60C(&v2);
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.occludedEdgeInsetsDidChange(to:)(UIEdgeInsets_optional *to)
{
  v2 = *(v1 + 48);
  v3 = *(v1 + 64);
  v4 = *(v1 + 80);
  v5 = *&to->value.bottom;
  *(v1 + 48) = *&to->value.top;
  *(v1 + 64) = v5;
  is_nil = to->is_nil;
  *(v1 + 80) = is_nil;
  if (is_nil)
  {
    if (v4)
    {
      return;
    }

LABEL_6:
    v7 = 5;
    sub_1E169D60C(&v7);
    return;
  }

  if ((v4 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&to->value.top, v2), vceqq_f64(*&to->value.bottom, v3)))) & 1) == 0)
  {
    goto LABEL_6;
  }
}

Swift::Void __swiftcall AdvertVisibilityCalculator.scrollViewDidScroll()()
{
  if (*(v0 + 105) == 1 && *(v0 + 104) == 1)
  {
    v1 = 2;
    sub_1E169D60C(&v1);
  }
}

uint64_t AdvertVisibilityCalculator.orthogonalScrollViewDidScroll(_:)()
{
  if (*(v0 + 105) == 1 && *(v0 + 104) == 1)
  {
    v2 = 2;
    return sub_1E169D60C(&v2);
  }

  return result;
}

uint64_t AdvertVisibilityCalculator.init()()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 1025;
  *(v0 + 96) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 40) = 0;
  swift_unknownObjectWeakAssign();
  *(v0 + 81) = 4;
  *(v0 + 104) = 257;
  return v0;
}

uint64_t sub_1E169D590(uint64_t result)
{
  if (*(v1 + 80))
  {
    if (*(result + 32))
    {
      return result;
    }

LABEL_6:
    v2 = 5;
    return sub_1E169D60C(&v2);
  }

  if ((*(result + 32) & 1) != 0 || (~vaddvq_s32(vandq_s8(vuzp1q_s32(vceqq_f64(*(v1 + 48), *result), vceqq_f64(*(v1 + 64), *(result + 16))), xmmword_1E1B264B0)) & 0xF) != 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1E169D60C(char *a1)
{
  v2 = *a1;
  result = sub_1E169D89C(v11);
  v4 = v11[0];
  v5 = *(v1 + 81);
  if (v11[0] == 4)
  {
    if (v5 == 4)
    {
      return result;
    }
  }

  else if (v11[0] == v5)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v1 + 96);
    ObjectType = swift_getObjectType();
    v10 = *(v1 + 81);
    v9 = v4;
    v8 = v2;
    (*(v6 + 8))(v1, &v10, &v9, &v8, ObjectType, v6);
    result = swift_unknownObjectRelease();
  }

  *(v1 + 81) = v4;
  return result;
}

uint64_t AdvertVisibilityCalculator.observer.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 96) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*AdvertVisibilityCalculator.observer.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 96);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1E169D818;
}

void sub_1E169D818(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 96) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E169D89C@<X0>(char *a1@<X8>)
{
  v3 = sub_1E1AF00EC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v66[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5050);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v66[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v66[-v11];
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    goto LABEL_13;
  }

  v14 = *(v1 + 24);
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_12;
  }

  if (*(v1 + 105) != 1 || *(v1 + 104) != 1)
  {
    swift_unknownObjectRelease();
LABEL_12:
    result = swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v68 = v4;
  v69 = v3;
  v72 = a1;
  v70 = *(v1 + 40);
  ObjectType = swift_getObjectType();
  v16 = *(v14 + 8);
  v71 = v1;
  v73.origin.x = v16(ObjectType, v14);
  MinY = CGRectGetMinY(v73);
  v74.origin.x = v16(ObjectType, v14);
  MidY = CGRectGetMidY(v74);
  v75.origin.x = v16(ObjectType, v14);
  MaxY = CGRectGetMaxY(v75);
  v20 = swift_getObjectType();
  v21 = v70;
  v22 = v70[1];
  v76.origin.x = v22(v20, v70);
  v23 = CGRectGetMinY(v76);
  v77.origin.x = v22(v20, v21);
  v24 = CGRectGetMaxY(v77);
  v25 = v23 + *(v71 + 48);
  if (*(v71 + 80))
  {
    v25 = v23;
  }

  else
  {
    v24 = v24 - *(v71 + 64);
  }

  if (v25 > MinY)
  {
    if (v25 <= MidY)
    {
      v27 = 0;
      v29 = 0;
      v26 = MidY <= v24;
LABEL_19:
      a1 = v72;
      if (v25 > MaxY)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

    v26 = 0;
    v27 = 0;
LABEL_17:
    v29 = 0;
    goto LABEL_19;
  }

  v27 = MinY <= v24;
  if (v25 > MidY)
  {
    v26 = 0;
    goto LABEL_17;
  }

  v26 = MidY <= v24;
  a1 = v72;
  if (v25 > MaxY)
  {
    v29 = 0;
    goto LABEL_24;
  }

LABEL_23:
  v29 = MaxY <= v24;
LABEL_24:
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

LABEL_30:
      if (!v29)
      {
LABEL_35:
        v28 = 2;
        goto LABEL_14;
      }

      goto LABEL_31;
    }

LABEL_36:
    if (v27 || v29)
    {
      goto LABEL_61;
    }

    goto LABEL_13;
  }

  v31 = v30;
  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (!v32)
  {
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    if (v26)
    {
      if (!v27)
      {
        goto LABEL_34;
      }

      goto LABEL_30;
    }

    goto LABEL_36;
  }

  LODWORD(v71) = v26;
  LODWORD(v72) = v27;
  v33 = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v70 = v33;
  v34 = [v31 indexPathForCell_];
  if (v34)
  {
    v35 = v34;
    sub_1E1AF016C();

    v36 = sub_1E1AF01FC();
    (*(*(v36 - 8) + 56))(v9, 0, 1, v36);
  }

  else
  {
    v36 = sub_1E1AF01FC();
    (*(*(v36 - 8) + 56))(v9, 1, 1, v36);
  }

  sub_1E169E420(v9, v12);
  sub_1E1AF01FC();
  v37 = *(v36 - 8);
  if ((*(v37 + 48))(v12, 1, v36) != 1)
  {
    v67 = v29;
    v38 = sub_1E1AF019C();
    (*(v37 + 8))(v12, v36);
    v39 = [v31 collectionViewLayout];
    if ([v39 _hasOrthogonalScrollingSections])
    {
      v40 = [v39 _orthogonalScrollingSections];
      sub_1E1AF008C();

      LOBYTE(v40) = sub_1E1AF00CC();
      (*(v68 + 8))(v6, v69);
      v41 = v71;
      if (v40)
      {
        swift_unknownObjectRetain();
        v42 = v70;
        [v70 frame];
        MinX = CGRectGetMinX(v78);
        [v42 frame];
        MidX = CGRectGetMidX(v79);
        [v42 frame];
        v46 = v45;
        v48 = v47;
        v50 = v49;
        v52 = v51;
        swift_unknownObjectRelease();
        v80.origin.x = v46;
        v80.origin.y = v48;
        v80.size.width = v50;
        v80.size.height = v52;
        MaxX = CGRectGetMaxX(v80);
        [v39 _offsetForOrthogonalScrollingSection_];
        v55 = v54;
        [v39 _layoutFrameForSection_];
        Width = CGRectGetWidth(v81);

        swift_unknownObjectRelease_n();
        result = swift_unknownObjectRelease_n();
        v57 = v55 + Width;
        if (v55 > MinX)
        {
          v58 = v72;
          if (v55 > MidX)
          {
            if (v55 > MaxX)
            {
              goto LABEL_13;
            }

            v59 = 0;
            goto LABEL_77;
          }

          if (v55 > MaxX)
          {
            if (MidX <= v57)
            {
              v61 = v41;
            }

            else
            {
              v61 = 0;
            }

            if (v61)
            {
              goto LABEL_61;
            }

            goto LABEL_13;
          }

          v62 = MaxX <= v57;
          if (!v41 || MidX > v57)
          {
            if (((v72 | v67) & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_103;
          }

          if (((v72 | v67) & 1) == 0)
          {
            goto LABEL_61;
          }

LABEL_107:
          if (v62)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

        v59 = MinX <= v57;
        if (v55 > MidX)
        {
          v58 = v72;
          if (v55 <= MaxX)
          {
LABEL_77:
            LOBYTE(v62) = MaxX <= v57;
LABEL_78:
            if (((v58 | v67) & 1) == 0)
            {
              goto LABEL_13;
            }

            if (v59)
            {
              goto LABEL_61;
            }

LABEL_103:
            if (v62)
            {
              goto LABEL_61;
            }

            goto LABEL_13;
          }

LABEL_81:
          if (v58)
          {
            if (MinX <= v57)
            {
              goto LABEL_61;
            }
          }

          else if (MinX <= v57 && v67)
          {
            goto LABEL_61;
          }

          goto LABEL_13;
        }

        v58 = v72;
        if (v55 > MaxX)
        {
          if (v41 && MidX <= v57)
          {
            if (v72)
            {
              if (MinX <= v57)
              {
                goto LABEL_35;
              }
            }

            else if (MinX <= v57 && v67)
            {
              goto LABEL_35;
            }

            goto LABEL_61;
          }

          goto LABEL_81;
        }

        v62 = MaxX <= v57;
        if (MidX <= v57)
        {
          v63 = v41;
        }

        else
        {
          v63 = 0;
        }

        if ((v63 & 1) == 0)
        {
          goto LABEL_78;
        }

        if (v72)
        {
          if (v67)
          {
            if (MinX > v57)
            {
              goto LABEL_107;
            }

            if (MaxX > v57)
            {
              goto LABEL_35;
            }

LABEL_31:
            v28 = 3;
            goto LABEL_14;
          }
        }

        else if (!v67)
        {
          goto LABEL_61;
        }

        if (MinX <= v57)
        {
          goto LABEL_35;
        }

        goto LABEL_107;
      }

      swift_unknownObjectRelease_n();
      result = swift_unknownObjectRelease_n();
      v60 = v67;
      if (v41)
      {
        if (!v72)
        {
LABEL_57:
          if (v60)
          {
            goto LABEL_35;
          }

          goto LABEL_61;
        }

LABEL_53:
        if (!v60)
        {
          goto LABEL_35;
        }

        goto LABEL_31;
      }
    }

    else
    {

      swift_unknownObjectRelease_n();
      result = swift_unknownObjectRelease_n();
      if (v71)
      {
        LOBYTE(v60) = v67;
        if (!v72)
        {
          goto LABEL_57;
        }

        goto LABEL_53;
      }

      v60 = v67;
    }

    if ((v72 | v60))
    {
      goto LABEL_61;
    }

    goto LABEL_13;
  }

  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease_n();
  result = sub_1E169E490(v12);
  if (v71)
  {
    if (!v72)
    {
LABEL_34:
      if (v29)
      {
        goto LABEL_35;
      }

LABEL_61:
      v28 = 1;
      goto LABEL_14;
    }

    goto LABEL_30;
  }

  if ((v72 | v29))
  {
    goto LABEL_61;
  }

LABEL_13:
  v28 = 0;
LABEL_14:
  *a1 = v28;
  return result;
}

uint64_t AdvertVisibilityCalculator.deinit()
{
  sub_1E1337DEC(v0 + 16);
  sub_1E1337DEC(v0 + 32);
  sub_1E1337DEC(v0 + 88);
  return v0;
}

uint64_t AdvertVisibilityCalculator.__deallocating_deinit()
{
  sub_1E1337DEC(v0 + 16);
  sub_1E1337DEC(v0 + 32);
  sub_1E1337DEC(v0 + 88);

  return swift_deallocClassInstance();
}

AppStoreKit::AdvertVisibilityCalculator::VisibilityThreshold_optional __swiftcall AdvertVisibilityCalculator.VisibilityThreshold.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t AdvertVisibilityCalculator.UpdateOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1E1AF762C();
  MEMORY[0x1E6900360](v1);
  return sub_1E1AF767C();
}

uint64_t sub_1E169E238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v12 = Strong, result = swift_unknownObjectRelease(), v12 != a1))
  {
    *(a3 + 24) = a6;
    swift_unknownObjectWeakAssign();
    *(a3 + 40) = a7;
    swift_unknownObjectWeakAssign();
    v14 = 0;
    return sub_1E169D60C(&v14);
  }

  return result;
}

unint64_t sub_1E169E2C8()
{
  result = qword_1EE1D8830;
  if (!qword_1EE1D8830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D8830);
  }

  return result;
}

unint64_t sub_1E169E320()
{
  result = qword_1ECEB7828;
  if (!qword_1ECEB7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7828);
  }

  return result;
}

uint64_t sub_1E169E420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5050);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E169E490(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB5050);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E169E4FC()
{
  v0 = sub_1E1AF58EC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E1AF591C();
  __swift_allocate_value_buffer(v4, qword_1ECEF45E0);
  __swift_project_value_buffer(v4, qword_1ECEF45E0);
  if (qword_1EE1E3588 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EE2160F8);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1E1AF590C();
}

uint64_t ASDInAppPurchaseStateProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  ASDInAppPurchaseStateProvider.init()();
  return v0;
}

uint64_t ASDInAppPurchaseStateProvider.init()()
{
  v1 = v0;
  v2 = sub_1E1AF321C();
  v25 = *(v2 - 8);
  v26 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1E1AF68DC();
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E1AF324C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1E1AF68AC();
  MEMORY[0x1EEE9AC00](v8);
  *(v0 + 72) = 0;
  v23 = (v0 + 72);
  v9 = sub_1E13006E4(0, &qword_1EE1E3430);
  v21[1] = "appIsForegrounded";
  v21[2] = v9;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E1B02CC0;
  sub_1E1AF689C();
  aBlock[0] = v10;
  sub_1E1557114(&qword_1EE1E3438, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7A90);
  sub_1E13FF6F8(&qword_1EE1E34D8, &unk_1ECEB7A90);
  sub_1E1AF6EEC();
  sub_1E1AF322C();
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8090], v22);
  *(v0 + 16) = sub_1E1AF692C();
  type metadata accessor for ASDInAppPurchaseDatabase();
  *(v0 + 24) = swift_allocObject();
  *(v0 + 32) = &off_1F5C4B9C8;
  v11 = sub_1E15A19F0(MEMORY[0x1E69E7CC0]);
  v12 = MEMORY[0x1E69E7CD0];
  *(v0 + 56) = v11;
  *(v0 + 64) = v12;
  v14 = v24;
  v13 = v25;
  v15 = v26;
  (*(v25 + 104))(v24, *MEMORY[0x1E69E7F98], v26);
  v16 = sub_1E1AF693C();
  (*(v13 + 8))(v14, v15);
  v17 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1E16A0310;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E169ED44;
  aBlock[3] = &block_descriptor_46;
  v18 = _Block_copy(aBlock);

  v19 = v23;
  swift_beginAccess();
  notify_register_dispatch("com.apple.appstored.IAPInfoDatabaseUpdated", v19, v16, v18);
  swift_endAccess();
  _Block_release(v18);

  return v1;
}

uint64_t sub_1E169EB54()
{
  if (qword_1ECEB0F78 != -1)
  {
    swift_once();
  }

  v0 = sub_1E1AF591C();
  __swift_project_value_buffer(v0, qword_1ECEF45E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
  sub_1E1AF38EC();
  *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
  sub_1E1AF382C();
  sub_1E1AF549C();

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    v3 = *(v2 + 40);
    if (v3)
    {
      v4[3] = type metadata accessor for ASDInAppPurchaseStateProvider();
      v4[4] = &protocol witness table for ASDInAppPurchaseStateProvider;
      v4[0] = v2;
      sub_1E1300E34(v3);

      v3(v4);
      sub_1E1300EA8(v3);

      return __swift_destroy_boxed_opaque_existential_1(v4);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E169ED44(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t ASDInAppPurchaseStateProvider.deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_unknownObjectRelease();
  sub_1E1300EA8(*(v0 + 40));

  return v0;
}

uint64_t ASDInAppPurchaseStateProvider.__deallocating_deinit()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  if (v1 != -1)
  {
    notify_cancel(v1);
  }

  swift_unknownObjectRelease();
  sub_1E1300EA8(*(v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t sub_1E169EE7C@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 40);
  v5 = *(v3 + 48);
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1E165565C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1E1300E34(v4);
}

uint64_t sub_1E169EF10(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1E1655634;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  swift_beginAccess();
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
  *(v7 + 48) = v5;
  sub_1E1300E34(v3);
  return sub_1E1300EA8(v8);
}

uint64_t ASDInAppPurchaseStateProvider.backingDataStoreUpdatedCallback.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_1E1300E34(v1);
  return v1;
}

uint64_t ASDInAppPurchaseStateProvider.backingDataStoreUpdatedCallback.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_1E1300EA8(v5);
}

void sub_1E169F12C(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X4>, char *a4@<X8>)
{
  AdamId.numberValue.getter();
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    v10 = sub_1E158ECAC(v9, *(a1 + 56));
    if (v10)
    {
      v11 = v10;
      swift_endAccess();
      sub_1E169F22C(v11, a4);

      return;
    }

    swift_endAccess();
  }

  if (a3)
  {
    v12 = *(a1 + 64);

    v13 = sub_1E14AACA8(a2, a3, v12);

    v14 = v13 & 1 | 0x40;
  }

  else
  {
    v14 = 65;
  }

  *a4 = v14;
}

uint64_t sub_1E169F22C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = v2;
  result = [a1 type];
  if ((result - 2) >= 3)
  {
    if (result)
    {
      if (result == 1)
      {
        if ([a1 hasUsedFreeOffer])
        {
          v14 = 1;
        }

        else
        {
          v14 = [a1 hasUsedIntroPricingOffer];
        }

        result = v14 | 0x40;
      }

      else
      {
        result = 192;
      }
    }
  }

  else if (ASDIAPInfo.isExpired.getter())
  {
    v7 = [a1 subscriptionFamilyId];
    if (v7)
    {
      v8 = v7;
      v9 = sub_1E1AF5DFC();
      v11 = v10;

      v12 = *(v3 + 64);

      v13 = sub_1E14AACA8(v9, v11, v12);
    }

    else
    {
      v13 = 0;
    }

    if (([a1 hasUsedFreeOffer] & 1) != 0 || objc_msgSend(a1, sel_hasUsedIntroPricingOffer))
    {
      v13 = 1;
    }

    result = v13 & 1 | 0x40u;
  }

  else
  {
    result = 1;
  }

  *a2 = result;
  return result;
}

uint64_t ASDInAppPurchaseStateProvider.refreshData(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E1AF0F7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  sub_1E1AF483C();

  sub_1E1300E34(a1);
  sub_1E1AF482C();
  sub_1E1AF0F4C();
  sub_1E1AF6A1C();
  v10 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  sub_1E179A0AC(MEMORY[0x1E69E7CC0], sub_1E16A0330, v9);
  sub_1E1AF6A0C();
  v11 = sub_1E1AF482C();
  sub_1E1AF0F3C();

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E169F568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AF324C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E1AF320C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_1ECEB0F78 != -1)
    {
      swift_once();
    }

    v19 = sub_1E1AF591C();
    __swift_project_value_buffer(v19, qword_1ECEF45E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = xmmword_1E1B02CC0;
    sub_1E1AF382C();
    sub_1E1AF54AC();
  }

  else
  {
    v33 = v16;
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v32 = *(result + 16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB7B40);
      v30 = a5;
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1E1B02CC0;
      sub_1E1AF31FC();
      aBlock[0] = v21;
      sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
      v29 = a4;
      v31 = v11;
      v22 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
      sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
      v23 = v33;
      sub_1E1AF6EEC();
      v24 = swift_allocObject();
      v24[2] = a3;
      v24[3] = v22;
      v26 = v29;
      v25 = v30;
      v24[4] = v29;
      v24[5] = v25;
      aBlock[4] = sub_1E16A03B0;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E1302D64;
      aBlock[3] = &block_descriptor_19_0;
      v27 = _Block_copy(aBlock);

      sub_1E1300E34(v26);
      sub_1E1AF322C();
      v28 = v32;
      MEMORY[0x1E68FF640](0, v13, v18, v27);
      _Block_release(v27);

      (*(v31 + 8))(v13, v10);
      (*(v15 + 8))(v18, v23);
    }
  }

  return result;
}

void sub_1E169FA20(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a4;
  v48 = a3;
  v6 = sub_1E1AF320C();
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1E1AF324C();
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v50 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v47[1] = a1;
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    swift_beginAccess();
    *(v10 + 56) = a2;
  }

  v60 = MEMORY[0x1E69E7CD0];
  if ((a2 & 0xC000000000000001) != 0)
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = sub_1E1AF71BC() | 0x8000000000000000;
  }

  else
  {
    v15 = -1 << *(a2 + 32);
    v12 = ~v15;
    v11 = a2 + 64;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v13 = v17 & *(a2 + 64);
    v14 = a2;
  }

  v18 = 0;
  v47[0] = v12;
  v19 = (v12 + 64) >> 6;
  v57 = "teDataSource refresh failed.";
  v20 = &selRef_addPayment_;
  v56 = xmmword_1E1B02CC0;
  if ((v14 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_23:
  v35 = sub_1E1AF71EC();
  if (!v35 || (v37 = v36, v59 = v35, sub_1E13006E4(0, &qword_1EE1E31F0), swift_dynamicCast(), v32 = aBlock[0], v59 = v37, sub_1E13006E4(0, &qword_1EE1E34C8), swift_dynamicCast(), v33 = aBlock[0], v28 = v18, v29 = v13, !v32))
  {
LABEL_28:
    sub_1E1337ECC();
    swift_beginAccess();
    v38 = swift_weakLoadStrong();
    if (v38)
    {
      *(v38 + 64) = v60;
    }

    sub_1E13006E4(0, &qword_1EE1E3430);
    v39 = sub_1E1AF68EC();
    v40 = swift_allocObject();
    v41 = v48;
    v42 = v49;
    *(v40 + 16) = v48;
    *(v40 + 24) = v42;
    aBlock[4] = sub_1E16A03BC;
    aBlock[5] = v40;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E1302D64;
    aBlock[3] = &block_descriptor_25_1;
    v43 = _Block_copy(aBlock);
    sub_1E1300E34(v41);

    v44 = v50;
    sub_1E1AF322C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E1557114(&qword_1EE1E3C80, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB3E00);
    sub_1E13FF6F8(&qword_1EE1E3500, &qword_1ECEB3E00);
    v45 = v52;
    v46 = v55;
    sub_1E1AF6EEC();
    MEMORY[0x1E68FF640](0, v44, v45, v43);
    _Block_release(v43);

    (*(v54 + 8))(v45, v46);
    (*(v51 + 8))(v44, v53);
    return;
  }

  while (1)
  {

    if (([v33 v20[124]] & 1) == 0 && !objc_msgSend(v33, sel_hasUsedIntroPricingOffer))
    {

LABEL_13:
      v18 = v28;
      v13 = v29;
      if ((v14 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      goto LABEL_14;
    }

    v21 = [v33 subscriptionFamilyId];
    if (v21)
    {
      v22 = v21;
      v23 = sub_1E1AF5DFC();
      v25 = v24;

      sub_1E189496C(aBlock, v23, v25);

      goto LABEL_13;
    }

    if (qword_1ECEB0F78 != -1)
    {
      swift_once();
    }

    v34 = sub_1E1AF591C();
    __swift_project_value_buffer(v34, qword_1ECEF45E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB3D50);
    sub_1E1AF38EC();
    *(swift_allocObject() + 16) = v56;
    sub_1E1AF382C();
    sub_1E1AF54AC();

    v18 = v28;
    v13 = v29;
    v20 = &selRef_addPayment_;
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

LABEL_14:
    v26 = v18;
    v27 = v13;
    v28 = v18;
    if (!v13)
    {
      break;
    }

LABEL_18:
    v29 = (v27 - 1) & v27;
    v30 = (v28 << 9) | (8 * __clz(__rbit64(v27)));
    v31 = *(*(v14 + 56) + v30);
    v32 = *(*(v14 + 48) + v30);
    v33 = v31;
    if (!v32)
    {
      goto LABEL_28;
    }
  }

  while (1)
  {
    v28 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v28 >= v19)
    {
      goto LABEL_28;
    }

    v27 = *(v11 + 8 * v28);
    ++v26;
    if (v27)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1E16A0180()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
  sub_1E1300E34(v2);
  return v2;
}

uint64_t sub_1E16A01D4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = *(v5 + 40);
  *(v5 + 40) = a1;
  *(v5 + 48) = a2;
  return sub_1E1300EA8(v6);
}

uint64_t sub_1E16A03BC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

unint64_t ForceAskToBuyReason.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0xD000000000000010;
  }
}

AppStoreKit::ForceAskToBuyReason_optional __swiftcall ForceAskToBuyReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1E16A04B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000019;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = "showcaseFriendsPlaying";
  }

  else
  {
    v4 = "exceptionDeleted";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000019;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (*a2)
  {
    v7 = "exceptionDeleted";
  }

  else
  {
    v7 = "showcaseFriendsPlaying";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1E1AF74AC();
  }

  return v9 & 1;
}

unint64_t sub_1E16A056C()
{
  result = qword_1ECEB7830;
  if (!qword_1ECEB7830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7830);
  }

  return result;
}

uint64_t sub_1E16A05C0()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16A0644()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16A06B4()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16A0734@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E16A0794(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000019;
  }

  else
  {
    v2 = 0xD000000000000010;
  }

  if (*v1)
  {
    v3 = "exceptionDeleted";
  }

  else
  {
    v3 = "showcaseFriendsPlaying";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

id UIImageView.symbolConfiguration.getter()
{
  v1 = [v0 preferredSymbolConfiguration];

  return v1;
}

void UIImageView.symbolConfiguration.setter(void *a1)
{
  [v1 setPreferredSymbolConfiguration_];
}

void (*UIImageView.symbolConfiguration.modify(void *a1))(id *a1)
{
  a1[1] = v1;
  *a1 = [v1 preferredSymbolConfiguration];
  return sub_1E16A08C4;
}

void sub_1E16A08C4(id *a1)
{
  v1 = *a1;
  [a1[1] setPreferredSymbolConfiguration_];
}

void sub_1E16A0924()
{
  v1 = [v0 layer];
  LayerVisualEffect.apply(to:)(v1);
}

id sub_1E16A0998()
{
  v1 = [*v0 image];

  return v1;
}

void sub_1E16A09D0(void *a1)
{
  [*v1 setImage_];
}

void (*sub_1E16A0A18(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 image];
  return sub_1E16A0A74;
}

void sub_1E16A0A74(id *a1)
{
  v1 = *a1;
  [a1[1] setImage_];
}

id (*sub_1E16A0ADC(void *a1))(uint64_t a1)
{
  v3 = *v1;
  a1[1] = *v1;
  [v3 alpha];
  *a1 = v4;
  return sub_1E16A0B30;
}

void sub_1E16A0B5C()
{
  v1 = [*v0 layer];
  LayerVisualEffect.apply(to:)(v1);
}

id sub_1E16A0BD4()
{
  v1 = [*v0 preferredSymbolConfiguration];

  return v1;
}

void sub_1E16A0C0C(void *a1)
{
  [*v1 setPreferredSymbolConfiguration_];
}

void (*sub_1E16A0C54(void *a1))(id *a1)
{
  v3 = *v1;
  a1[1] = *v1;
  *a1 = [v3 preferredSymbolConfiguration];
  return sub_1E16A08C4;
}

uint64_t type metadata accessor for JSRequestIntentFetchError()
{
  result = qword_1EE1EAE00;
  if (!qword_1EE1EAE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E16A0E1C()
{
  result = sub_1E1AF426C();
  if (v1 <= 0x3F)
  {
    result = sub_1E16A0EA0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1E16A0EA0()
{
  result = qword_1EE1D2108;
  if (!qword_1EE1D2108)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EE1D2108);
  }

  return result;
}

uint64_t sub_1E16A0F04()
{
  v8 = *(v0 + *(type metadata accessor for JSRequestIntentFetchError() + 20));
  v1 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(v6, v9);
    v2 = v10;
    v3 = v11;
    __swift_project_boxed_opaque_existential_1Tm(v9, v10);
    v4 = (*(v3 + 16))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v9);
    return v4;
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_1E16A1264(v6);
    swift_getErrorValue();
    return sub_1E1AF75AC();
  }
}

uint64_t sub_1E16A101C(void (*a1)(uint64_t, unint64_t, __int128 *), uint64_t a2)
{
  v5 = sub_1E1AF426C();
  MEMORY[0x1E68FC640](v16, v5, MEMORY[0x1E69AB0F8]);
  __swift_project_boxed_opaque_existential_1Tm(v16, v17);
  v6 = sub_1E1AF390C();
  *(&v13 + 1) = MEMORY[0x1E69E6158];
  *&v12 = v6;
  *(&v12 + 1) = v7;
  a1(1684957547, 0xE400000000000000, &v12);
  __swift_destroy_boxed_opaque_existential_1(&v12);
  __swift_destroy_boxed_opaque_existential_1(v16);
  v15 = *(v2 + *(type metadata accessor for JSRequestIntentFetchError() + 20));
  v8 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB57A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47B8);
  if (swift_dynamicCast())
  {
    sub_1E1361B28(&v12, v16);
    v9 = v17;
    v10 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    (*(v10 + 24))(a1, a2, v9, v10);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    return sub_1E16A1264(&v12);
  }
}

unint64_t sub_1E16A11E0(uint64_t a1)
{
  result = sub_1E16A1208();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E16A1208()
{
  result = qword_1EE1D8AE0;
  if (!qword_1EE1D8AE0)
  {
    type metadata accessor for JSRequestIntentFetchError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1D8AE0);
  }

  return result;
}

uint64_t sub_1E16A1264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB47C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double static ReviewComposerUtility.iconSize(from:)(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appIcon);
  if (v1)
  {
    return dbl_1E1B269E8[*(v1 + 64)];
  }

  else
  {
    return 60.0;
  }
}

uint64_t _s11AppStoreKit21ReviewComposerUtilityO11lockupStyle4from20AppleMediaServicesUI0d6LockupH0CAA05WriteD6ActionC_tFZ_0(uint64_t a1)
{
  v2 = sub_1E1AF0EAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1E1AF0EBC();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(a1 + OBJC_IVAR____TtC11AppStoreKit17WriteReviewAction_appIcon);
  if (!v11)
  {
    goto LABEL_12;
  }

  v12 = *(v11 + 64);
  if (v12 <= 3)
  {
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        v15 = MEMORY[0x1E698CC30];
        goto LABEL_13;
      }

      goto LABEL_18;
    }

    if (v12)
    {
      v20[13] = 1;
      v14 = 60.0;
      goto LABEL_20;
    }

LABEL_12:
    v15 = MEMORY[0x1E698CC38];
LABEL_13:
    (*(v7 + 104))(v10, *v15, v6, v8);
    (*(v3 + 104))(v5, *MEMORY[0x1E698CC20], v2);
    v16 = objc_allocWithZone(sub_1E1AF0EEC());
    return sub_1E1AF0EDC();
  }

  if (v12 > 5)
  {
    if (v12 == 6 || v12 != 7)
    {
      goto LABEL_12;
    }

    v20[15] = 7;
    v14 = 36.0;
LABEL_20:
    Artwork.Style.iconCornerRadius(for:isPlaceholder:)(0, 60.0, v14);
    (*(v7 + 104))(v10, *MEMORY[0x1E698CC38], v6);
    (*(v3 + 104))(v5, *MEMORY[0x1E698CC20], v2);
    v19 = objc_allocWithZone(sub_1E1AF0EEC());
    return sub_1E1AF0EDC();
  }

  if (v12 != 4)
  {
    v15 = MEMORY[0x1E698CC28];
    goto LABEL_13;
  }

LABEL_18:
  v20[14] = v12;
  Artwork.Style.iconCornerRadius(for:isPlaceholder:)(1, 60.0, 60.0);
  (*(v7 + 104))(v10, *MEMORY[0x1E698CC38], v6);
  (*(v3 + 104))(v5, *MEMORY[0x1E698CC20], v2);
  v18 = objc_allocWithZone(sub_1E1AF0EEC());
  return sub_1E1AF0ECC();
}

_OWORD *SearchResultsPageMoreIntent.init(pageToken:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xD00000000000001BLL;
  *(a2 + 8) = 0x80000001E1B26A60;
  return sub_1E1301CF0(a1, (a2 + 16));
}

uint64_t SearchResultsPageMoreIntent.kind.getter()
{
  v1 = *v0;

  return v1;
}

JSValue __swiftcall SearchResultsPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1Tm((v1 + 16), *(v1 + 40));
    v6 = isa;
    v7 = [v3 valueWithObject:sub_1E1AF748C() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_1E1AF6C5C();

      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E16A17D8()
{
  result = qword_1ECEB7838;
  if (!qword_1ECEB7838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7838);
  }

  return result;
}

unint64_t sub_1E16A1834()
{
  result = qword_1ECEB7840;
  if (!qword_1ECEB7840)
  {
    type metadata accessor for SearchResultsPage();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7840);
  }

  return result;
}

uint64_t sub_1E16A189C(unint64_t a1)
{
  v10 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_14:
    v2 = sub_1E1AF71CC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1E68FFD80](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_11:
            __break(1u);
LABEL_12:
            v7 = v10;
            goto LABEL_16;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_14;
          }

          v4 = *(a1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_11;
          }
        }

        v6 = *(v4 + OBJC_IVAR____TtC11AppStoreKit5Shelf_personalizationStyles);

        sub_1E1727F84(v6);
        ++v3;
        if (v5 == v2)
        {
          goto LABEL_12;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v8 = sub_1E13C4918(v7);

  return v8;
}

uint64_t PersonalizableModel.needsClientPersonalization.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(&v5);
  if (v5)
  {
    v2 = sub_1E1AF74AC();

    v3 = v2 ^ 1;
  }

  else
  {

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t PersonalizableModel.unpersonalized.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  (*(a2 + 24))(&v10);
  if (v11)
  {
    return sub_1E1308EC0(&v10, a3);
  }

  a3[3] = a1;
  a3[4] = a2;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
  v9 = *(*(a1 - 8) + 16);

  return v9(boxed_opaque_existential_0, v3, a1);
}

uint64_t PersonalizableModel.personalized(with:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  (*(a3 + 16))(&v23, a2, a3);
  if (v23 == 1)
  {
    v17 = v8;
    v18 = v9;
    v19 = v10;
    v20 = v11;
    v12 = *(a3 + 32);
    sub_1E13BBA90(v8, v9);
    v12(&v21, &v17, a2, a3);
    sub_1E13BBAE0(v17, v18);
    if (v22)
    {
      return sub_1E1308EC0(&v21, a4);
    }
  }

  v14 = *(a3 + 8);
  a4[3] = a2;
  a4[4] = v14;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
  v16 = *(*(a2 - 8) + 16);

  return v16(boxed_opaque_existential_0, v4, a2);
}

AppStoreKit::PersonalizationStyle_optional __swiftcall PersonalizationStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PersonalizationStyle.rawValue.getter()
{
  if (*v0)
  {
    return 7304045;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1E16A1CFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 7304045;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  if (*a2)
  {
    v5 = 7304045;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE300000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E1AF74AC();
  }

  return v8 & 1;
}

uint64_t sub_1E16A1D94()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16A1E08()
{
  sub_1E1AF5F0C();
}

uint64_t sub_1E16A1E68()
{
  sub_1E1AF762C();
  sub_1E1AF5F0C();

  return sub_1E1AF767C();
}

uint64_t sub_1E16A1ED8@<X0>(char *a1@<X8>)
{
  v2 = sub_1E1AF72FC();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_1E16A1F38(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 7304045;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

double PersonalizableModel.makeMSOPersonalizedModel(with:)@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

unint64_t sub_1E16A1F94()
{
  result = qword_1EE1ED6A8;
  if (!qword_1EE1ED6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1ED6A8);
  }

  return result;
}

id sub_1E16A204C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, objc_class *a9, void *a10, void *a11, uint64_t a12, void *a13, uint64_t a14, void *a15, void *a16, void *a17, uint64_t a18, objc_class *a19, void *a20, void *a21, void *a22)
{
  v136 = a8;
  v137 = a6;
  v119 = a3;
  v120 = a7;
  v135 = a5;
  v134 = a22;
  v133 = a21;
  v132 = a20;
  v131 = a19;
  v138 = a18;
  v130 = a17;
  v129 = a16;
  v128 = a15;
  v123 = a13;
  v122 = a11;
  v121 = a10;
  v127 = a9;
  v25 = sub_1E1AF539C();
  v125 = *(v25 - 8);
  v126 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v124 = &v117 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1E1AEFF8C();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v117 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {

    v31 = sub_1E130C06C(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1E130C06C((v32 > 1), v33 + 1, 1, v31);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[16 * v33];
    *(v34 + 4) = a1;
    *(v34 + 5) = a2;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CC0];
  }

  if (a4)
  {
  }

  else
  {
    if (*(v31 + 2))
    {
      goto LABEL_14;
    }

    sub_1E1AEFF6C();
    v119 = sub_1E1AEFEFC();
    a4 = v116;
    (*(v28 + 8))(v30, v27);
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v31 = sub_1E130C06C(0, *(v31 + 2) + 1, 1, v31);
  }

  v36 = *(v31 + 2);
  v35 = *(v31 + 3);
  if (v36 >= v35 >> 1)
  {
    v31 = sub_1E130C06C((v35 > 1), v36 + 1, 1, v31);
  }

  *(v31 + 2) = v36 + 1;
  v37 = &v31[16 * v36];
  *(v37 + 4) = v119;
  *(v37 + 5) = a4;
LABEL_14:
  v38 = objc_allocWithZone(type metadata accessor for LegacyLocalizer());
  v39 = sub_1E13EF9AC();
  sub_1E1300B24(v135, v152);
  v40 = type metadata accessor for ModernLocalizer();
  v41 = objc_allocWithZone(v40);
  sub_1E1300B24(v152, &v41[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_localizer]);
  *&v41[OBJC_IVAR____TtC11AppStoreKit15ModernLocalizer_legacyLocalizer] = v39;
  v151.receiver = v41;
  v151.super_class = v40;
  v42 = v39;
  v135 = v42;
  v43 = objc_msgSendSuper2(&v151, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v152);
  v44 = v137;
  sub_1E1300B24(v137, v152);
  v45 = OBJC_IVAR____TtC11AppStoreKit15LegacyLocalizer_locale;
  v46 = v43;
  sub_1E16A31A4(v46, v152, v120, v136, v42 + v45);

  sub_1E16A336C(v152);
  sub_1E1AF59DC();
  v47 = sub_1E1AF59CC();
  v136 = v47;
  sub_1E1300B24(v44, v152);
  sub_1E1300B24(v121, v150);
  v48 = objc_allocWithZone(type metadata accessor for JSUserObject());
  v137 = v46;

  v49 = v122;
  v50 = v122;
  v51 = sub_1E1645664(v47, v49);
  v52 = type metadata accessor for JSPlayerBridgeObject();
  v53 = objc_allocWithZone(v52);
  v54 = &v53[OBJC_IVAR____TtC11AppStoreKit20JSPlayerBridgeObject_playerID];
  *v54 = 0;
  v54[1] = 0;
  v53[OBJC_IVAR____TtC11AppStoreKit20JSPlayerBridgeObject_isUnderThirteen] = 0;
  v149.receiver = v53;
  v149.super_class = v52;
  v122 = objc_msgSendSuper2(&v149, &off_1E8711B78);
  v56 = v124;
  v55 = v125;
  v57 = v126;
  v125[2](v124, v123, v126);
  type metadata accessor for ASKBagContract();
  v58 = swift_allocObject();
  v55[4]((v58 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bag), v56, v57);
  *(v58 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_isOfflineBag) = 0;
  v59 = v58 + OBJC_IVAR____TtC11AppStoreKit14ASKBagContract_bagOfflinePolicy;
  *v59 = 0;
  *(v59 + 8) = 0;
  *(v59 + 16) = 1;
  v60 = type metadata accessor for JSMetricsIdentifiersObject();
  v61 = objc_allocWithZone(v60);
  *&v61[OBJC_IVAR____TtC11AppStoreKit26JSMetricsIdentifiersObject_metricsIdStore] = a12;
  *&v61[OBJC_IVAR____TtC11AppStoreKit26JSMetricsIdentifiersObject_metricsTopicProvider] = v58;
  v148.receiver = v61;
  v148.super_class = v60;

  v118 = objc_msgSendSuper2(&v148, &off_1E8711B78);
  v62 = objc_opt_self();

  v63 = [v62 standardUserDefaults];
  v64 = type metadata accessor for JSUserDefaults();
  v65 = objc_allocWithZone(v64);
  *&v65[OBJC_IVAR____TtC11AppStoreKit14JSUserDefaults_userDefaults] = v63;
  v147.receiver = v65;
  v147.super_class = v64;
  v126 = objc_msgSendSuper2(&v147, &off_1E8711B78);
  v66 = objc_allocWithZone(ASKClient);
  v67 = v127;
  v128 = v128;
  v129 = v129;
  v130 = v130;
  v68 = v138;

  v125 = v131;
  v132 = v132;
  v133 = v133;
  v134 = v134;
  v69 = [v66 initWithRestrictions_];
  v123 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v152, v152[3]);
  v70 = sub_1E1AF5B4C();
  sub_1E1300B24(v150, v144);
  v71 = type metadata accessor for JSStoreMetricsObject();
  v72 = objc_allocWithZone(v71);
  sub_1E1300B24(v144, v72 + OBJC_IVAR____TtC11AppStoreKit20JSStoreMetricsObject_metricsRecorder);
  v143.receiver = v72;
  v143.super_class = v71;
  v73 = objc_msgSendSuper2(&v143, &off_1E8711B78);
  v121 = v73;
  __swift_destroy_boxed_opaque_existential_1(v144);
  v74 = type metadata accessor for JSAMSEngagement();
  v75 = objc_allocWithZone(v74);
  *&v75[OBJC_IVAR____TtC11AppStoreKit15JSAMSEngagement_engagement] = v67;
  v142.receiver = v75;
  v142.super_class = v74;
  v131 = v67;
  v76 = objc_msgSendSuper2(&v142, &off_1E8711B78);
  v120 = v76;
  v127 = type metadata accessor for ASKGlobal();
  v77 = objc_allocWithZone(v127);
  v78 = OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_treatmentStore;
  *&v77[v78] = [objc_allocWithZone(type metadata accessor for JSTreatmentStore()) &off_1E8711B78];
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_client] = v69;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_loc] = v137;
  v124 = v70;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_adsLoc] = v70;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_storeMetrics] = v73;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_amsEngagement] = v76;
  v79 = v51;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_user] = v51;
  v80 = v122;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_player] = v122;
  v81 = v118;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_metricsIdentifiers] = v118;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_props] = a14;
  v82 = type metadata accessor for StoreKitInAppPurchaseOrderingProvider();
  v83 = swift_allocObject();
  v145 = v82;
  v146 = &off_1F5C5C590;
  v144[0] = v83;
  v84 = objc_allocWithZone(type metadata accessor for ClientOrderingWrapper());
  v85 = __swift_mutable_project_boxed_opaque_existential_1(v144, v145);
  v86 = MEMORY[0x1EEE9AC00](v85);
  v88 = (&v117 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88, v86);
  v90 = *v88;
  v123 = v123;
  swift_unknownObjectRetain();
  v121 = v121;
  v120 = v120;
  v119 = v79;
  v122 = v80;
  v118 = v81;
  v91 = sub_1E16A2F98(v90, v84);
  __swift_destroy_boxed_opaque_existential_1(v144);
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_clientOrdering] = v91;
  v92 = v125;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_resilientDeepLinks] = v125;
  v93 = type metadata accessor for JSArcadeObject();
  v94 = objc_allocWithZone(v93);
  *&v94[OBJC_IVAR____TtC11AppStoreKit14JSArcadeObject_accounts] = v136;
  v95 = objc_allocWithZone(MEMORY[0x1E698B510]);

  v96 = v92;
  v97 = [v95 init];
  *&v94[OBJC_IVAR____TtC11AppStoreKit14JSArcadeObject_arcadeStore] = v97;
  v141.receiver = v94;
  v141.super_class = v93;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_arcade] = objc_msgSendSuper2(&v141, sel_init);
  v98 = type metadata accessor for JSGameCenter();
  v99 = objc_allocWithZone(v98);
  v100 = v128;
  *&v99[OBJC_IVAR____TtC11AppStoreKit12JSGameCenter_dataProvider] = v128;
  v140.receiver = v99;
  v140.super_class = v98;
  v101 = v100;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_gameCenter] = objc_msgSendSuper2(&v140, sel_init);
  v102 = v129;
  v103 = v130;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_appleSilicon] = v129;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_ads] = v103;
  v104 = objc_allocWithZone(type metadata accessor for JSStorageObject());
  v105 = v102;
  v106 = v103;
  v107 = [v104 init];
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_storage] = v107;
  v108 = v132;
  v109 = v133;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_onDeviceRecommendationsManager] = v132;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_onDeviceSearchHistoryManager] = v109;
  v110 = objc_allocWithZone(type metadata accessor for JSFeatureFlags());
  v111 = v108;
  v112 = v109;
  v113 = [v110 init];
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_featureFlags] = v113;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_clientCapabilities] = [objc_allocWithZone(type metadata accessor for JSClientCapabilities()) init];
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_timeoutManager] = v134;
  *&v77[OBJC_IVAR____TtC11AppStoreKit9ASKGlobal_userDefaults] = v126;
  v139.receiver = v77;
  v139.super_class = v127;
  v114 = objc_msgSendSuper2(&v139, sel_init);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v150);
  __swift_destroy_boxed_opaque_existential_1(v152);

  return v114;
}

id sub_1E16A2F98(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for StoreKitInAppPurchaseOrderingProvider();
  v26[3] = v4;
  v26[4] = &off_1F5C5C590;
  v26[0] = a1;
  sub_1E1300B24(v26, v24);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v23[3] = v4;
  v23[4] = &off_1F5C5C590;
  v23[0] = v10;
  type metadata accessor for ClientOrdering();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v4);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v11[5] = v4;
  v11[6] = &off_1F5C5C590;
  v11[2] = v17;
  __swift_destroy_boxed_opaque_existential_1(v23);
  __swift_destroy_boxed_opaque_existential_1(v24);
  *&a2[OBJC_IVAR____TtC11AppStoreKit21ClientOrderingWrapper_clientOrdering] = v11;
  v18 = type metadata accessor for ClientOrderingWrapper();
  v22.receiver = a2;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v19;
}

uint64_t sub_1E16A31A4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1E1AEFF8C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E1AEFF3C();
  sub_1E16A33D4(a2, v21);
  (*(v11 + 16))(v13, a5, v10);
  type metadata accessor for PrimaryLocalization();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  v15 = v21[1];
  *(v14 + 24) = v21[0];
  *(v14 + 40) = v15;
  *(v14 + 56) = v22;
  *(v14 + 64) = a3;
  *(v14 + 72) = a4;
  (*(v11 + 32))(v14 + OBJC_IVAR____TtC11AppStoreKit19PrimaryLocalization_legacyLocale, v13, v10);
  v16 = qword_1EE1EEB00;
  v17 = a1;

  if (v16 != -1)
  {
    swift_once();
  }

  v18 = off_1EE1EEB08;
  os_unfair_lock_lock(off_1EE1EEB08 + 6);
  sub_1E16A3444(v18 + 2);
  os_unfair_lock_unlock(v18 + 6);
}

uint64_t sub_1E16A336C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E16A33D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB2B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 ReviewsContainerLayout.init(metrics:ratingsView:tapToRateView:actionsView:reviewSummaryView:reviewsShelf:editorsChoiceView:ratingsSeparatorView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  memcpy((a9 + 280), __src, 0x160uLL);
  sub_1E1308EC0(a2, a9);
  sub_1E1308EC0(a3, a9 + 40);
  sub_1E1308EC0(a4, a9 + 80);
  v17 = *(a5 + 16);
  *(a9 + 120) = *a5;
  *(a9 + 136) = v17;
  *(a9 + 152) = *(a5 + 32);
  v18 = *(a6 + 16);
  *(a9 + 160) = *a6;
  *(a9 + 176) = v18;
  *(a9 + 192) = *(a6 + 32);
  *(a9 + 232) = *(a7 + 4);
  v19 = *a7;
  *(a9 + 216) = a7[1];
  *(a9 + 200) = v19;
  *(a9 + 272) = *(a8 + 32);
  result = *(a8 + 16);
  *(a9 + 240) = *a8;
  *(a9 + 256) = result;
  return result;
}

uint64_t ReviewsContainerLayout.Metrics.init(ratingsBottomSpace:tapToRateTopSpace:tapToRateBottomSpace:reviewSummaryBottomSpace:reviewsShelfTopSpace:editorsChoiceTopSpace:columnSpacer:marginInsets:bottomEdgeSpace:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>)
{
  *(a9 + 112) = 0;
  *(a9 + 96) = 0u;
  *(a9 + 80) = 0u;
  v25 = a9 + 80;
  sub_1E1308EC0(a1, a9);
  sub_1E1308EC0(a2, a9 + 40);
  sub_1E13BC4E4(a3, v25);
  sub_1E1308EC0(a4, a9 + 120);
  sub_1E1308EC0(a5, a9 + 160);
  sub_1E1308EC0(a6, a9 + 200);
  sub_1E1308EC0(a7, a9 + 240);
  *(a9 + 280) = a10;
  *(a9 + 288) = a11;
  *(a9 + 296) = a12;
  *(a9 + 304) = a13;

  return sub_1E1308EC0(a8, a9 + 312);
}

uint64_t ReviewsContainerLayout.Metrics.ratingsBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_1E1308EC0(a1, v1);
}

uint64_t ReviewsContainerLayout.Metrics.tapToRateTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 40);

  return sub_1E1308EC0(a1, v1 + 40);
}

uint64_t ReviewsContainerLayout.Metrics.reviewSummaryBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 120);

  return sub_1E1308EC0(a1, v1 + 120);
}

uint64_t ReviewsContainerLayout.Metrics.reviewsShelfTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 160);

  return sub_1E1308EC0(a1, v1 + 160);
}

uint64_t ReviewsContainerLayout.Metrics.editorsChoiceTopSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 200);

  return sub_1E1308EC0(a1, v1 + 200);
}

uint64_t ReviewsContainerLayout.Metrics.columnSpacer.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 240);

  return sub_1E1308EC0(a1, v1 + 240);
}

void ReviewsContainerLayout.Metrics.marginInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[35] = a1;
  v4[36] = a2;
  v4[37] = a3;
  v4[38] = a4;
}

uint64_t ReviewsContainerLayout.Metrics.bottomEdgeSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1 + 312);

  return sub_1E1308EC0(a1, v1 + 312);
}

double ReviewsContainerLayout.measurements(fitting:in:)(void *a1, double a2)
{
  v3 = v2;
  v28 = sub_1E1AF745C();
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(v2 + 5, v2[8]);
  v9 = sub_1E1AF117C();
  sub_1E134FD1C((v2 + 20), v31, &qword_1ECEB4E00);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v27 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1E1308058(v31, &qword_1ECEB4E00);
    v27 = 1;
  }

  sub_1E134FD1C((v2 + 25), v31, &qword_1ECEB4E00);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v26 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1E1308058(v31, &qword_1ECEB4E00);
    v26 = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v2 + 10, v2[13]);
  v10 = sub_1E1AF117C();
  sub_1E134FD1C((v2 + 15), v31, &qword_1ECEB4E00);
  if (v32)
  {
    __swift_project_boxed_opaque_existential_1Tm(v31, v32);
    v11 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1E1308058(v31, &qword_1ECEB4E00);
    v11 = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v2, v2[3]);
  sub_1E1AF11DC();
  if ((v9 & v27 & v26 & v10 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 35, v2[38]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v6 + 8))(v8, v28);
  }

  if ((v11 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm(v2 + 50, v2[53]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v6 + 8))(v8, v28);
  }

  sub_1E1AF6B5C();
  v12 = &selRef_setAppleID_;
  v13 = [a1 traitCollection];
  v14 = sub_1E1AF695C();

  if (v14 & 1) != 0 || (v15 = [a1 traitCollection], v16 = sub_1E1AF698C(), v15, (v16))
  {
    if ((v9 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v3[8]);
      sub_1E1AF11DC();
    }

    if ((v11 & 1) == 0)
    {
      sub_1E134FD1C((v3 + 15), v31, &qword_1ECEB4E00);
      if (v32)
      {
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        sub_1E1AF11DC();
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        sub_1E1308058(v31, &qword_1ECEB4E00);
      }
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm(v3 + 65, v3[68]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v6 + 8))(v8, v28);
    if (v11)
    {
      v12 = &selRef_setAppleID_;
    }

    else
    {
      sub_1E1AF6B5C();
      v25 = v17;
      sub_1E134FD1C((v3 + 15), v31, &qword_1ECEB4E00);
      if (v32)
      {
        __swift_project_boxed_opaque_existential_1Tm(v31, v32);
        sub_1E1AF11DC();
        __swift_destroy_boxed_opaque_existential_1(v31);
      }

      else
      {
        sub_1E1308058(v31, &qword_1ECEB4E00);
      }

      v12 = &selRef_setAppleID_;
    }

    if ((v9 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v3 + 5, v3[8]);
      sub_1E1AF11DC();
    }

    if ((v10 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
      sub_1E1AF11DC();
    }
  }

  sub_1E134FD1C((v3 + 20), &v29, &qword_1ECEB4E00);
  if (v30)
  {
    sub_1E1308EC0(&v29, v31);
    if ((v27 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v31, v32);
      sub_1E1AF11DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  else
  {
    sub_1E1308058(&v29, &qword_1ECEB4E00);
  }

  sub_1E134FD1C((v3 + 25), &v29, &qword_1ECEB4E00);
  if (v30)
  {
    sub_1E1308EC0(&v29, v31);
    if ((v26 & 1) == 0)
    {
      if ((v27 & 1) == 0)
      {
        __swift_project_boxed_opaque_existential_1Tm(v3 + 60, v3[63]);
        sub_1E13BC274();
        sub_1E1AF12DC();
        (*(v6 + 8))(v8, v28);
      }

      __swift_project_boxed_opaque_existential_1Tm(v31, v32);
      sub_1E1AF11DC();
    }

    __swift_destroy_boxed_opaque_existential_1(v31);
    if (v10)
    {
LABEL_43:
      if (v9)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }
  }

  else
  {
    sub_1E1308058(&v29, &qword_1ECEB4E00);
    if (v10)
    {
      goto LABEL_43;
    }
  }

  v18 = [a1 v12[114]];
  v19 = sub_1E1AF695C();

  if (v19 & 1) != 0 || (v20 = [a1 v12[114]], v21 = sub_1E1AF698C(), v20, (v21))
  {
    __swift_project_boxed_opaque_existential_1Tm(v3 + 10, v3[13]);
    sub_1E1AF11DC();
  }

LABEL_49:
  v22 = [a1 v12[114]];
  v23 = sub_1E1AF696C();

  if (v23)
  {
    __swift_project_boxed_opaque_existential_1Tm(v3 + 40, v3[43]);
    sub_1E13BC274();
    sub_1E1AF12DC();
    (*(v6 + 8))(v8, v28);
  }

LABEL_51:
  __swift_project_boxed_opaque_existential_1Tm(v3 + 74, v3[77]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v6 + 8))(v8, v28);
  return a2;
}

uint64_t ReviewsContainerLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, CGFloat a3@<D0>, CGFloat a4@<D1>, CGFloat a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v116 = a2;
  v13 = sub_1E1AF745C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = *(v6 + 568);
  v115 = a3;
  v124 = a4;
  v17 = a5;
  v18 = a6;
  sub_1E1AF6B0C();
  x = v130.origin.x;
  y = v130.origin.y;
  width = v130.size.width;
  height = v130.size.height;
  MinX = CGRectGetMinX(v130);
  v118 = x;
  v131.origin.x = x;
  v117 = y;
  v131.origin.y = y;
  v121 = width;
  v131.size.width = width;
  v120 = height;
  v131.size.height = height;
  MinY = CGRectGetMinY(v131);
  __swift_project_boxed_opaque_existential_1Tm((v6 + 40), *(v6 + 64));
  v25 = sub_1E1AF117C();
  sub_1E134FD1C(v6 + 160, v128, &qword_1ECEB4E00);
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1Tm(v128, v129);
    v123 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_1E1308058(v128, &qword_1ECEB4E00);
    v123 = 1;
  }

  sub_1E134FD1C(v6 + 200, v128, &qword_1ECEB4E00);
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1Tm(v128, v129);
    v122 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_1E1308058(v128, &qword_1ECEB4E00);
    v122 = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm((v6 + 80), *(v6 + 104));
  v125 = sub_1E1AF117C();
  sub_1E134FD1C(v6 + 120, v128, &qword_1ECEB4E00);
  v119 = MinX;
  if (v129)
  {
    __swift_project_boxed_opaque_existential_1Tm(v128, v129);
    v26 = sub_1E1AF117C();
    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_1E1308058(v128, &qword_1ECEB4E00);
    v26 = 1;
  }

  __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 24));
  sub_1E1AF11CC();
  v28 = v27;
  v30 = v29;
  v31 = v115;
  v132.origin.x = v115;
  v32 = v124;
  v132.origin.y = v124;
  v132.size.width = v17;
  v132.size.height = v18;
  v33 = CGRectGetMinX(v132);
  v34 = UIEdgeInsetsInsetRect(v33, floor(MinY), v28, v30, 0.0, v114);
  v36 = v35;
  v38 = v37;
  v40 = v39;
  __swift_project_boxed_opaque_existential_1Tm(v6, *(v6 + 24));
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v133.origin.x = v34;
  v133.origin.y = v36;
  v133.size.width = v38;
  v133.size.height = v40;
  MaxY = CGRectGetMaxY(v133);
  if ((v25 & v123 & v26 & v122 & v125 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1Tm((v6 + 280), *(v6 + 304));
    sub_1E13BC274();
    sub_1E1AF12DC();
    v43 = v42;
    (*(v14 + 8))(v16, v13);
    MaxY = MaxY + v43;
  }

  v44 = &selRef_setAppleID_;
  v45 = [a1 traitCollection];
  v46 = sub_1E1AF695C();

  v47 = v119;
  if (v46 & 1) != 0 || (v48 = [a1 traitCollection], v49 = sub_1E1AF698C(), v48, (v49))
  {
    if ((v26 & 1) == 0)
    {
      sub_1E134FD1C((v7 + 15), v128, &qword_1ECEB4E00);
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1Tm(v128, v129);
        sub_1E1AF11CC();
        v51 = v50;
        v53 = v52;
        __swift_destroy_boxed_opaque_existential_1(v128);
        v54 = floor(MaxY);
        sub_1E134FD1C((v7 + 15), v128, &qword_1ECEB4E00);
        if (v129)
        {
          __swift_project_boxed_opaque_existential_1Tm(v128, v129);
          sub_1E1AF6B1C();
          sub_1E1AF116C();
          __swift_destroy_boxed_opaque_existential_1(v128);
        }

        else
        {
          sub_1E1308058(v128, &qword_1ECEB4E00);
        }

        v135.origin.x = v47;
        v135.origin.y = v54;
        v135.size.width = v51;
        v135.size.height = v53;
        v62 = CGRectGetMaxY(v135);
        __swift_project_boxed_opaque_existential_1Tm(v7 + 50, v7[53]);
        sub_1E13BC274();
        sub_1E1AF12DC();
        v64 = v63;
        (*(v14 + 8))(v16, v13);
        MaxY = v62 + v64;
        v32 = v124;
      }

      else
      {
        sub_1E1308058(v128, &qword_1ECEB4E00);
      }
    }

    goto LABEL_47;
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 65, v7[68]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  v114 = v55;
  v56 = *(v14 + 8);
  v56(v16, v13);
  v134.origin.x = v118;
  v134.origin.y = v117;
  v134.size.width = v121;
  v134.size.height = v120;
  v113 = CGRectGetWidth(v134);
  sub_1E1AF6B5C();
  if ((v26 & 1) == 0)
  {
    sub_1E134FD1C((v7 + 15), v128, &qword_1ECEB4E00);
    if (v129)
    {
      v112 = v56;
      __swift_project_boxed_opaque_existential_1Tm(v128, v129);
      sub_1E1AF11CC();
      v58 = v57;
      v60 = v59;
      __swift_destroy_boxed_opaque_existential_1(v128);
      v61 = floor(MaxY);
      sub_1E134FD1C((v7 + 15), v128, &qword_1ECEB4E00);
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1Tm(v128, v129);
        sub_1E1AF6B1C();
        sub_1E1AF116C();
        __swift_destroy_boxed_opaque_existential_1(v128);
      }

      else
      {
        sub_1E1308058(v128, &qword_1ECEB4E00);
      }

      v136.origin.x = v47;
      v136.origin.y = v61;
      v136.size.width = v58;
      v136.size.height = v60;
      v65 = CGRectGetMaxY(v136);
      __swift_project_boxed_opaque_existential_1Tm(v7 + 50, v7[53]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v67 = v66;
      v56 = v112;
      v112(v16, v13);
      MaxY = v65 + v67;
    }

    else
    {
      sub_1E1308058(v128, &qword_1ECEB4E00);
    }

    v32 = v124;
  }

  if (v25 & v125)
  {
    v44 = &selRef_setAppleID_;
    goto LABEL_47;
  }

  v68 = (v113 - v114) * 0.5;
  sub_1E134FD1C((v7 + 30), &v126, &qword_1ECEB4E00);
  if (v127)
  {
    sub_1E1308EC0(&v126, v128);
    v69 = [a1 traitCollection];
    v70 = sub_1E1AF696C();

    if (v70)
    {
      v71 = [objc_opt_self() mainScreen];
      [v71 scale];

      v137.origin.x = v118;
      v137.origin.y = v117;
      v137.size.width = v121;
      v137.size.height = v120;
      CGRectGetWidth(v137);
      v112 = v56;
      __swift_project_boxed_opaque_existential_1Tm(v128, v129);
      v47 = v119;
      sub_1E1AF116C();
      __swift_project_boxed_opaque_existential_1Tm(v7 + 40, v7[43]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v73 = v72;
      v112(v16, v13);
      MaxY = MaxY + v73;
    }

    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_1E1308058(&v126, &qword_1ECEB4E00);
  }

  v74 = floor(v68);
  v44 = &selRef_setAppleID_;
  if (v25)
  {
    if (v125)
    {
      v32 = v124;
      goto LABEL_47;
    }

    v114 = floor(MaxY);
    v75 = v124;
  }

  else
  {
    v32 = v124;
    if (v125)
    {
      __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
      sub_1E1AF11CC();
      __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      goto LABEL_44;
    }

    __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
    sub_1E1AF11CC();
    __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
    sub_1E1AF11CC();
    v113 = v74;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    v75 = v32;
    __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
    v114 = floor(MaxY);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  sub_1E1AF11CC();
  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  sub_1E1AF6B1C();
  sub_1E1AF116C();
  v32 = v75;
  v47 = v119;
  if ((v25 & 1) == 0)
  {
LABEL_44:
    __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
    sub_1E1AF115C();
    MaxY = CGRectGetMaxY(v138);
    if (v125)
    {
      goto LABEL_47;
    }
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
  sub_1E1AF115C();
  v76 = CGRectGetMaxY(v139);
  if (MaxY <= v76)
  {
    MaxY = v76;
  }

LABEL_47:
  sub_1E134FD1C((v7 + 20), &v126, &qword_1ECEB4E00);
  if (v127)
  {
    sub_1E1308EC0(&v126, v128);
    if ((v123 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v128, v129);
      sub_1E1AF11CC();
      v78 = v77;
      v80 = v79;
      v140.origin.x = v31;
      v140.origin.y = v32;
      v140.size.width = v17;
      v140.size.height = v18;
      v81 = CGRectGetMinX(v140);
      __swift_project_boxed_opaque_existential_1Tm(v128, v129);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      v141.origin.x = v81;
      v47 = v119;
      v141.origin.y = floor(MaxY);
      v141.size.width = v78;
      v141.size.height = v80;
      MaxY = CGRectGetMaxY(v141);
    }

    __swift_destroy_boxed_opaque_existential_1(v128);
  }

  else
  {
    sub_1E1308058(&v126, &qword_1ECEB4E00);
  }

  sub_1E134FD1C((v7 + 25), &v126, &qword_1ECEB4E00);
  if (!v127)
  {
    sub_1E1308058(&v126, &qword_1ECEB4E00);
    if (v25)
    {
      goto LABEL_66;
    }

    goto LABEL_60;
  }

  sub_1E1308EC0(&v126, v128);
  if ((v122 & 1) == 0)
  {
    if ((v123 & 1) == 0)
    {
      __swift_project_boxed_opaque_existential_1Tm(v7 + 60, v7[63]);
      sub_1E13BC274();
      sub_1E1AF12DC();
      v83 = v82;
      (*(v14 + 8))(v16, v13);
      MaxY = MaxY + v83;
    }

    __swift_project_boxed_opaque_existential_1Tm(v128, v129);
    sub_1E1AF11CC();
    v85 = v84;
    v87 = v86;
    __swift_project_boxed_opaque_existential_1Tm(v128, v129);
    sub_1E1AF6B1C();
    sub_1E1AF116C();
    v142.origin.x = v47;
    v142.origin.y = floor(MaxY);
    v142.size.width = v85;
    v142.size.height = v87;
    MaxY = CGRectGetMaxY(v142);
  }

  __swift_destroy_boxed_opaque_existential_1(v128);
  if ((v25 & 1) == 0)
  {
LABEL_60:
    v88 = [a1 v44[114]];
    v89 = sub_1E1AF695C();

    if (v89 & 1) != 0 || (v90 = [a1 v44[114]], v91 = sub_1E1AF698C(), v90, (v91))
    {
      __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
      sub_1E1AF11CC();
      v93 = v92;
      v143.origin.x = v118;
      v143.origin.y = v117;
      v143.size.width = v121;
      v143.size.height = v120;
      v94 = CGRectGetWidth(v143);
      __swift_project_boxed_opaque_existential_1Tm(v7 + 5, v7[8]);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      v144.origin.x = v47;
      v144.origin.y = floor(MaxY);
      v144.size.width = v94;
      v144.size.height = v93;
      v95 = CGRectGetMaxY(v144);
      sub_1E134FD1C((v7 + 45), v128, &unk_1ECEB47F0);
      if (v129)
      {
        __swift_project_boxed_opaque_existential_1Tm(v128, v129);
        sub_1E13BC274();
        sub_1E1AF12DC();
        v97 = v96;
        (*(v14 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(v128);
      }

      else
      {
        sub_1E1308058(v128, &unk_1ECEB47F0);
        v97 = 0.0;
      }

      MaxY = v95 + v97;
    }
  }

LABEL_66:
  if ((v125 & 1) == 0)
  {
    v98 = [a1 v44[114]];
    v99 = sub_1E1AF695C();

    if (v99 & 1) != 0 || (v100 = [a1 v44[114]], v101 = sub_1E1AF698C(), v100, (v101))
    {
      __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
      v102 = v121;
      v103 = v31;
      v104 = v17;
      v105 = v18;
      v106 = v47;
      v107 = v120;
      sub_1E1AF11CC();
      v109 = v108;
      v145.origin.x = v118;
      v145.origin.y = v117;
      v145.size.width = v102;
      v145.size.height = v107;
      v110 = CGRectGetWidth(v145);
      __swift_project_boxed_opaque_existential_1Tm(v7 + 10, v7[13]);
      sub_1E1AF6B1C();
      sub_1E1AF116C();
      v146.origin.x = v106;
      v18 = v105;
      v17 = v104;
      v31 = v103;
      v32 = v124;
      v146.origin.y = floor(MaxY);
      v146.size.width = v110;
      v146.size.height = v109;
      CGRectGetMaxY(v146);
    }
  }

  __swift_project_boxed_opaque_existential_1Tm(v7 + 74, v7[77]);
  sub_1E13BC274();
  sub_1E1AF12DC();
  (*(v14 + 8))(v16, v13);
  v147.origin.x = v31;
  v147.origin.y = v32;
  v147.size.width = v17;
  v147.size.height = v18;
  CGRectGetMinY(v147);
  v148.origin.x = v31;
  v148.origin.y = v32;
  v148.size.width = v17;
  v148.size.height = v18;
  CGRectGetWidth(v148);
  return sub_1E1AF106C();
}

uint64_t sub_1E16A5970(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 632))
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

uint64_t sub_1E16A59B8(uint64_t result, int a2, int a3)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 632) = 1;
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

    *(result + 632) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E16A5AB4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 352))
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

uint64_t sub_1E16A5AFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 352) = 1;
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

    *(result + 352) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E16A5BB8(uint64_t a1)
{
  v2 = objc_opt_self();
  result = [v2 valueWithNewObjectInContext_];
  if (result)
  {
    v4 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B50);
    v5 = [v2 valueWithObject:sub_1E1AF755C() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v5)
    {
      sub_1E1AF6C5C();
      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1E16A5CD8()
{
  result = qword_1ECEB7900;
  if (!qword_1ECEB7900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7900);
  }

  return result;
}

unint64_t sub_1E16A5D34()
{
  result = qword_1ECEB7908;
  if (!qword_1ECEB7908)
  {
    type metadata accessor for UpsellGridContent();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7908);
  }

  return result;
}

AppStoreKit::FamilyPurchasesSection_optional __swiftcall FamilyPurchasesSection.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1E16A5E00(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E16A5E6C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1E1363018;
}

uint64_t FamilyPurchasesPresenter.__allocating_init(objectGraph:familyPurchasesError:iCloudMemberAppleId:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers) = MEMORY[0x1E69E7CC0];
  *(v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections) = v11;
  *(v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_imagesForFamilyMembers) = MEMORY[0x1E69E7CC8];
  *(v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyPurchasesError) = a2;
  v12 = (v10 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_iCloudMemberAppleId);
  *v12 = a3;
  v12[1] = a4;
  v13 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_bag;
  v14 = sub_1E1AF539C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v10 + v13, a5, v14);
  v16 = sub_1E138C578(a1, 0, 0, 0);
  v17 = objc_opt_self();

  v18 = [v17 defaultCenter];
  [v18 addObserver:v16 selector:sel_profilePictureStoreDidChange name:@"ASKProfilePictureStoreDidChange" object:0];

  (*(v15 + 8))(a5, v14);
  return v16;
}

uint64_t FamilyPurchasesPresenter.init(objectGraph:familyPurchasesError:iCloudMemberAppleId:bag:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser) = 0;
  v11 = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers) = MEMORY[0x1E69E7CC0];
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections) = v11;
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_imagesForFamilyMembers) = MEMORY[0x1E69E7CC8];
  *(v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyPurchasesError) = a2;
  v12 = (v5 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_iCloudMemberAppleId);
  *v12 = a3;
  v12[1] = a4;
  v13 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_bag;
  v14 = sub_1E1AF539C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v5 + v13, a5, v14);
  v16 = sub_1E138C578(a1, 0, 0, 0);
  v17 = objc_opt_self();

  v18 = [v17 defaultCenter];
  [v18 addObserver:v16 selector:sel_profilePictureStoreDidChange name:@"ASKProfilePictureStoreDidChange" object:0];

  (*(v15 + 8))(a5, v14);
  return v16;
}

uint64_t sub_1E16A62E8()
{

  v1 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_bag;
  v2 = sub_1E1AF539C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1E1337DEC(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view);
}

uint64_t FamilyPurchasesPresenter.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v2 = BasePresenter.deinit();

  v3 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_bag;
  v4 = sub_1E1AF539C();
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  sub_1E1337DEC(v2 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view);

  return v2;
}

uint64_t FamilyPurchasesPresenter.__deallocating_deinit()
{
  FamilyPurchasesPresenter.deinit();

  return swift_deallocClassInstance();
}

void sub_1E16A6550(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers;
  swift_beginAccess();
  v16 = *(v3 + v6);
  v7 = *(v3 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser);
  if (v7)
  {
    v8 = v7;

    v9 = v8;
    MEMORY[0x1E68FEF20]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1E1AF625C();
    }

    sub_1E1AF62AC();
  }

  else
  {
  }

  v10 = [objc_opt_self() sharedStore];
  sub_1E13006E4(0, &qword_1ECEB7950);
  v11 = sub_1E1AF620C();

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = a2;
  v15[4] = sub_1E16A9F38;
  v15[5] = v13;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1E16A6A54;
  v15[3] = &block_descriptor_47;
  v14 = _Block_copy(v15);
  sub_1E1300E34(a1);

  [v10 profilePictureWithMonogramFallbackForFamilyMembers:v11 pictureDiameter:v14 completion:60.0];
  _Block_release(v14);
}

uint64_t sub_1E16A6778(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v7 = sub_1E1AF00EC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    goto LABEL_18;
  }

  v12 = result;
  *(result + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_imagesForFamilyMembers) = a1;

  swift_beginAccess();
  if (*(v12 + 32))
  {
LABEL_17:

LABEL_18:
    if (a3)
    {
      return a3(result);
    }

    return result;
  }

  v27 = v8;
  v28 = v7;
  v29 = a4;
  v30 = a3;
  v13 = sub_1E149805C(&unk_1F5C2D938);
  sub_1E1AF00DC();
  v14 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  result = swift_beginAccess();
  v15 = *(*(v12 + v14) + 16);
  if (!v15)
  {
LABEL_14:
    v23 = v12 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v24 = *(v23 + 8);
      ObjectType = swift_getObjectType();
      (*(v24 + 32))(v10, ObjectType, v24);
      swift_unknownObjectRelease();
    }

    (*(v27 + 8))(v10, v28);

    a3 = v30;
    goto LABEL_17;
  }

  v16 = 0;
  v17 = v13 + 56;
  while (1)
  {
    v18 = *(v12 + v14);
    if (v16 >= *(v18 + 16))
    {
      break;
    }

    if (*(v13 + 16))
    {
      v19 = *(v18 + v16 + 32);
      sub_1E1AF762C();
      MEMORY[0x1E6900360](v19);
      result = sub_1E1AF767C();
      v20 = -1 << *(v13 + 32);
      v21 = result & ~v20;
      if ((*(v17 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (*(*(v13 + 48) + v21) != v19)
        {
          v21 = (v21 + 1) & v22;
          if (((*(v17 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        result = sub_1E1AF00AC();
      }
    }

LABEL_6:
    if (++v16 == v15)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E16A6A54(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1E13006E4(0, &qword_1EE1E31F0);
  sub_1E13006E4(0, &qword_1EE1D22C0);
  sub_1E16193E0();
  v2 = sub_1E1AF5C7C();

  v1(v2);
}

uint64_t sub_1E16A6B0C(char a1)
{
  v3 = sub_1E1AF539C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_beginAccess();
  if (*(v1 + 32))
  {
    return result;
  }

  v8 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers;
  swift_beginAccess();
  v9 = *(v1 + v8);
  if (v9 >> 62)
  {
    result = sub_1E1AF71CC();
    if (result)
    {
LABEL_4:
      if ((a1 & 1) == 0)
      {
        return result;
      }
    }
  }

  else
  {
    result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }

  *(v1 + 32) = 1;
  v10 = v1 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v11 = *(v10 + 8);
    ObjectType = swift_getObjectType();
    (*(*(v11 + 24) + 8))(ObjectType);
    swift_unknownObjectRelease();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECEB7948);
  (*(v4 + 16))(v6, v1 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_bag, v3);
  v13 = sub_1E1AF527C();
  (*(v4 + 8))(v6, v3);
  v14 = [objc_allocWithZone(MEMORY[0x1E698C920]) initWithBag_];
  swift_unknownObjectRelease();
  v15 = [v14 performFamilyInfoLookup];

  sub_1E1AF587C();
  swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  swift_weakInit();
  v16 = sub_1E13006E4(0, &qword_1EE1E3430);

  v17 = sub_1E1AF68EC();
  v18[3] = v16;
  v18[4] = MEMORY[0x1E69AB720];
  v18[0] = v17;
  sub_1E1AF57FC();

  __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_1E16A6E38(void **a1)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [v2 familyMembers];
    sub_1E13006E4(0, &qword_1ECEB7950);
    v6 = sub_1E1AF621C();

    v41 = MEMORY[0x1E69E7CC0];
    if (v6 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1E1AF71CC())
    {
      v1 = 0;
      while (1)
      {
        if ((v6 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E68FFD80](v1, v6);
        }

        else
        {
          if (v1 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v8 = *(v6 + 8 * v1 + 32);
        }

        v9 = v8;
        v10 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if ([v8 isCurrentSignedInUser] & 1) != 0 || (objc_msgSend(v9, sel_isSharingPurchases))
        {
          sub_1E1AF70BC();
          sub_1E1AF70FC();
          sub_1E1AF710C();
          v5 = &v41;
          sub_1E1AF70CC();
        }

        else
        {
        }

        ++v1;
        if (v10 == i)
        {
          v11 = v41;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v11 = MEMORY[0x1E69E7CC0];
LABEL_24:

    if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
    {
      v17 = sub_1E1AF71CC();
      v18 = &qword_1ECEB7000;
      if (!v17)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v17 = *(v11 + 16);
      v18 = &qword_1ECEB7000;
      if (!v17)
      {
        goto LABEL_39;
      }
    }

    if (v17 < 1)
    {
      __break(1u);
      goto LABEL_62;
    }

    v19 = 0;
    v20 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers;
    v21 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1E68FFD80](v19, v11);
      }

      else
      {
        v23 = *(v11 + 8 * v19 + 32);
      }

      v24 = v23;
      if ([v23 isCurrentSignedInUser])
      {
        v22 = *(v4 + v21);
        *(v4 + v21) = v24;
      }

      else
      {
        swift_beginAccess();
        v22 = v24;
        MEMORY[0x1E68FEF20]();
        if (*((*(v4 + v20) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v20) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E1AF625C();
          v18 = &qword_1ECEB7000;
        }

        sub_1E1AF62AC();
        swift_endAccess();
      }

      ++v19;
    }

    while (v17 != v19);
LABEL_39:

    v17 = &qword_1ECEB7000;
    if (!*(v4 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyPurchasesError))
    {
      goto LABEL_44;
    }

    v1 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
    swift_beginAccess();
    v5 = *(v4 + v1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v4 + v1) = v5;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_41:
      v27 = *(v5 + 2);
      v26 = *(v5 + 3);
      if (v27 >= v26 >> 1)
      {
        v5 = sub_1E172ECD0((v26 > 1), v27 + 1, 1, v5);
      }

      *(v5 + 2) = v27 + 1;
      v5[v27 + 32] = 0;
      *(v4 + v1) = v5;
      swift_endAccess();
LABEL_44:
      if (*(v4 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser))
      {
        v28 = *(v17 + 2336);
        swift_beginAccess();
        v29 = *(v4 + v28);
        v30 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + v28) = v29;
        if ((v30 & 1) == 0)
        {
          v29 = sub_1E172ECD0(0, *(v29 + 2) + 1, 1, v29);
          *(v4 + v28) = v29;
        }

        v32 = *(v29 + 2);
        v31 = *(v29 + 3);
        if (v32 >= v31 >> 1)
        {
          v29 = sub_1E172ECD0((v31 > 1), v32 + 1, 1, v29);
        }

        *(v29 + 2) = v32 + 1;
        v29[v32 + 32] = 1;
        *(v4 + v28) = v29;
        swift_endAccess();
      }

      v33 = v18[291];
      swift_beginAccess();
      v34 = *(v4 + v33);
      if (v34 >> 62)
      {
        if (sub_1E1AF71CC())
        {
          goto LABEL_52;
        }
      }

      else if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_52:
        v35 = *(v17 + 2336);
        swift_beginAccess();
        v36 = *(v4 + v35);
        v37 = swift_isUniquelyReferenced_nonNull_native();
        *(v4 + v35) = v36;
        if ((v37 & 1) == 0)
        {
          v36 = sub_1E172ECD0(0, *(v36 + 2) + 1, 1, v36);
          *(v4 + v35) = v36;
        }

        v39 = *(v36 + 2);
        v38 = *(v36 + 3);
        if (v39 >= v38 >> 1)
        {
          v36 = sub_1E172ECD0((v38 > 1), v39 + 1, 1, v36);
        }

        *(v36 + 2) = v39 + 1;
        v36[v39 + 32] = 2;
        *(v4 + v35) = v36;
        swift_endAccess();
      }

      v40 = swift_allocObject();
      swift_weakInit();

      sub_1E16A6550(sub_1E16A9F44, v40);
    }

LABEL_62:
    v5 = sub_1E172ECD0(0, *(v5 + 2) + 1, 1, v5);
    *(v4 + v1) = v5;
    goto LABEL_41;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = result;
    swift_beginAccess();
    *(v13 + 32) = 0;
    v14 = v13 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v15 = *(v14 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v15 + 24) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E16A7458()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    *(v1 + 32) = 0;
    v2 = v1 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 24);
      v6 = *(v5 + 16);

      v6(ObjectType, v5);
      swift_unknownObjectRelease();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v7 = *(v2 + 8);
      v8 = swift_getObjectType();
      (*(*(v7 + 16) + 8))(v8);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1E16A7594(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_beginAccess();
    *(v3 + 32) = 0;
    v4 = v3 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      (*(*(v5 + 24) + 16))(ObjectType);
      swift_unknownObjectRelease();
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
    swift_beginAccess();
    v9 = swift_unknownObjectWeakLoadStrong();
    v10 = *(v8 + 8);

    if (v9)
    {
      v11 = swift_getObjectType();
      (*(*(v10 + 24) + 24))(a1, v11);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1E16A76F8()
{
  v0._object = 0x80000001E1B6F270;
  v0._countAndFlagsBits = 0xD000000000000019;
  v1._countAndFlagsBits = 0;
  v1._object = 0xE000000000000000;
  return localizedString(_:comment:)(v0, v1)._countAndFlagsBits;
}

uint64_t sub_1E16A771C()
{
  v1 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  swift_beginAccess();
  return *(*(v0 + v1) + 16);
}

uint64_t sub_1E16A7764(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = *(v1 + v3);
  if (*(v4 + 16) <= a1)
  {
LABEL_11:
    __break(1u);
    return sub_1E1AF71CC();
  }

  v5 = *(v4 + a1 + 32);
  if (!v5)
  {
    return 1;
  }

  if (v5 == 1)
  {
    return *(v1 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser) != 0;
  }

  v7 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers;
  swift_beginAccess();
  v8 = *(v1 + v7);
  if (v8 >> 62)
  {
    return sub_1E1AF71CC();
  }

  return *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

unint64_t sub_1E16A7844()
{
  v1 = sub_1E1AF019C();
  v2 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  swift_beginAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_16;
  }

  v3 = *(v0 + v2);
  if (v1 >= *(v3 + 16))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v4 = v3 + v1;
  result = *(v4 + 32);
  if (!*(v4 + 32))
  {
    return result;
  }

  if (result == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser))
    {
      v6._object = 0x80000001E1B6F290;
      v6._countAndFlagsBits = 0xD000000000000018;
      v7._countAndFlagsBits = 0;
      v7._object = 0xE000000000000000;
      return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
    }

    return 0;
  }

  v1 = sub_1E1AF018C();
  v2 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers;
  swift_beginAccess();
  v8 = *(v0 + v2);
  if (!(v8 >> 62))
  {
    if (v1 < *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_17:
  if (v1 < sub_1E1AF71CC())
  {
LABEL_9:
    result = sub_1E1AF018C();
    v9 = *(v0 + v2);
    if ((v9 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v10 = *(v9 + 8 * result + 32);
        goto LABEL_13;
      }

      __break(1u);
      return result;
    }

    v13 = result;

    v10 = MEMORY[0x1E68FFD80](v13, v9);

LABEL_13:
    v11 = [v10 firstName];

    if (v11)
    {
      v12 = sub_1E1AF5DFC();

      return v12;
    }
  }

  return 0;
}

uint64_t sub_1E16A7A0C(unint64_t a1)
{
  v3 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = *(v1 + v3);
  if (*(v5 + 16) <= a1)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  if (*(v5 + a1 + 32) != 2)
  {
    return 0;
  }

  v6._object = 0x80000001E1B6F2B0;
  v6._countAndFlagsBits = 0xD000000000000025;
  v7._countAndFlagsBits = 0;
  v7._object = 0xE000000000000000;
  return localizedString(_:comment:)(v6, v7)._countAndFlagsBits;
}

unint64_t sub_1E16A7AB4()
{
  v1 = sub_1E1AF019C();
  v2 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  swift_beginAccess();
  if (v1 < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v3 = *(v0 + v2);
  if (v1 >= *(v3 + 16))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3 + v1;
  result = *(v4 + 32);
  if (!*(v4 + 32))
  {
    return result;
  }

  if (result == 1)
  {
    v6 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser);
    if (v6)
    {
      v7 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_loggedInUser);
      v8 = v6;
      return v7;
    }

    return 0;
  }

  v1 = sub_1E1AF018C();
  v2 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyMembers;
  swift_beginAccess();
  v9 = *(v0 + v2);
  if (!(v9 >> 62))
  {
    if (v1 < *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_15:
  if (v1 >= sub_1E1AF71CC())
  {
    return 0;
  }

LABEL_9:
  result = sub_1E1AF018C();
  v10 = *(v0 + v2);
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = result;

    v12 = MEMORY[0x1E68FFD80](v11, v10);

    return v12;
  }

  else
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return *(v10 + 8 * result + 32);
    }

    __break(1u);
  }

  return result;
}

void *sub_1E16A7C20()
{
  v1 = sub_1E16A7AB4();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 iTunesDSID];
  if (v3)
  {
    v4 = v3;
    v5 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_imagesForFamilyMembers);

    v6 = sub_1E158EDA8(v4, v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t sub_1E16A7CB4()
{
  v1 = sub_1E1AEFEAC();
  v155 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v154 = &v145 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v145 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v152 = &v145 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v153 = &v145 - v9;
  v165 = sub_1E1AF3E1C();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v11 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v160 = &v145 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v158 = &v145 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v162 = &v145 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v157 = &v145 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v163 = &v145 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB47C8);
  v161 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v145 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v145 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v145 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v159 = &v145 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v145 - v34;
  v36 = sub_1E1AEFCCC();
  v37 = *(v36 - 8);
  v166 = v36;
  v167 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v145 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  MEMORY[0x1EEE9AC00](v42);
  v46 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_familyPurchasesError);
  switch(v46)
  {
    case 3:
      v163 = v11;
      v149 = v1;
      v76._countAndFlagsBits = 0xD000000000000021;
      v76._object = 0x80000001E1B6F300;
      v77._countAndFlagsBits = 0;
      v77._object = 0xE000000000000000;
      v78 = localizedString(_:comment:)(v76, v77);
      countAndFlagsBits = v78._countAndFlagsBits;
      object = v78._object;
      v80._countAndFlagsBits = 0xD00000000000002BLL;
      v80._object = 0x80000001E1B6F330;
      v81._countAndFlagsBits = 0;
      v81._object = 0xE000000000000000;
      v82 = localizedString(_:comment:)(v80, v81);
      v75 = v82._countAndFlagsBits;
      v161 = v82._object;
      v162 = sub_1E159D240(MEMORY[0x1E69E7CC0]);
      sub_1E1AF3DFC();
      type metadata accessor for ExternalUrlAction();
      v72 = swift_allocObject();
      sub_1E1AEFCAC();
      v84 = v166;
      v83 = v167;
      if ((*(v167 + 48))(v27, 1, v166) == 1)
      {
        (*(v164 + 8))(v160, v165);
        sub_1E1308058(v27, &unk_1ECEB4B60);
        swift_deallocPartialClassInstance();
        if (!v78._object)
        {
          goto LABEL_41;
        }

        v64 = v161;
        v65 = v162;
LABEL_39:
        if (v64)
        {
          v178 = 0;
          v176 = 0u;
          v177 = 0u;
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
          v134 = swift_allocObject();
          *(v134 + 16) = xmmword_1E1B02CC0;
          *(v134 + 56) = MEMORY[0x1E69E6158];
          *(v134 + 64) = sub_1E13C2F48();
          *(v134 + 32) = v75;
          *(v134 + 40) = v64;
          v135 = sub_1E1AF5DCC();
          v136 = v65;
          v138 = v137;

          sub_1E134FD1C(&v176, &v173, &unk_1ECEB5670);
          type metadata accessor for StyledText();
          v139 = swift_allocObject();
          *(v139 + 40) = sub_1E15A0328(MEMORY[0x1E69E7CC0]);
          v140 = OBJC_IVAR____TtC11AppStoreKit10StyledText_cachedAttributedString;
          v141 = sub_1E1AEF91C();
          (*(*(v141 - 8) + 56))(v139 + v140, 1, 1, v141);
          v142 = (v139 + OBJC_IVAR____TtC11AppStoreKit10StyledText____lazy_storage___plainText);
          *v142 = 0;
          v142[1] = 0;
          *(v139 + 16) = v135;
          *(v139 + 24) = v138;
          *(v139 + 32) = 0;
          type metadata accessor for LinkableText();
          swift_allocObject();
          v143 = LinkableText.init(id:styledText:linkedSubstrings:)(&v173, v139, v136);
          sub_1E1308058(&v176, &unk_1ECEB5670);

          return v143;
        }

        goto LABEL_41;
      }

      v156 = v82._countAndFlagsBits;
      (*(v83 + 32))(v39, v27, v84);
      (*(v83 + 16))(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v39, v84);
      *(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
      *(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
      v104 = v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
      *v104 = 0;
      *(v104 + 8) = 1;
      v178 = 0;
      v176 = 0u;
      v177 = 0u;
      v105 = v164;
      v106 = v163;
      v107 = v160;
      v108 = v165;
      (*(v164 + 16))(v163, v160, v165);
      v109 = sub_1E1AF46DC();
      v110 = v5;
      (*(*(v109 - 8) + 56))(v5, 1, 1, v109);
      v111 = (v72 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
      *v111 = 0u;
      v111[1] = 0u;
      sub_1E134FD1C(&v176, &v170, &unk_1ECEB5670);
      if (*(&v171 + 1))
      {
        v173 = v170;
        v174 = v171;
        v175 = v172;
      }

      else
      {
        v126 = v154;
        sub_1E1AEFE9C();
        v127 = v107;
        v128 = sub_1E1AEFE7C();
        v130 = v129;
        (*(v155 + 8))(v126, v149);
        v168 = v128;
        v169 = v130;
        v106 = v163;
        v83 = v167;
        v107 = v127;
        sub_1E1AF6F6C();
        sub_1E1308058(&v170, &unk_1ECEB5670);
      }

      sub_1E1308058(&v176, &unk_1ECEB5670);
      (*(v83 + 8))(v39, v166);
      (*(v105 + 8))(v107, v108);
      v131 = v72 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
      v132 = v174;
      *v131 = v173;
      *(v131 + 16) = v132;
      *(v131 + 32) = v175;
      sub_1E134B7C8(v110, v72 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
      *(v72 + 16) = xmmword_1E1B27080;
      *(v72 + 32) = 0;
      *(v72 + 40) = 0;
      (*(v105 + 32))(v72 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v106, v108);
      v64 = v161;
      v65 = v162;
LABEL_37:
      v75 = v156;
      if (!v64)
      {
        goto LABEL_41;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v176 = v65;
      sub_1E15983CC(v72, v75, v64, isUniquelyReferenced_nonNull_native);

      v65 = v176;
      if (!object)
      {
        goto LABEL_41;
      }

      goto LABEL_39;
    case 2:
      v146 = v45;
      v147 = v44;
      v148 = &v145 - v43;
      v149 = v1;
      v52 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_iCloudMemberAppleId + 8);
      if (!v52)
      {
        v156 = 0;
        v64 = 0;
        countAndFlagsBits = 0;
        v160 = 0;
LABEL_8:
        v65 = sub_1E159D240(MEMORY[0x1E69E7CC0]);
        type metadata accessor for ASKBagContract();
        sub_1E1AF421C();
        sub_1E1AF55EC();
        v66 = v176;
        if (qword_1ECEB1320 != -1)
        {
          swift_once();
        }

        v151 = v66;
        sub_1E1AF52EC();
        sub_1E1AF531C();
        (*(v161 + 1))(v24, v22);
        v68 = v166;
        v67 = v167;
        v69 = *(v167 + 48);
        v70 = v69(v35, 1, v166);
        v71 = v162;
        if (v70 == 1)
        {
          sub_1E1308058(v35, &unk_1ECEB4B60);
          sub_1E1AF3DFC();
          type metadata accessor for ExternalUrlAction();
          v72 = swift_allocObject();
          sub_1E1AEFCAC();
          if (v69(v30, 1, v68) == 1)
          {

            (*(v164 + 8))(v71, v165);
            sub_1E1308058(v30, &unk_1ECEB4B60);
            swift_deallocPartialClassInstance();
            if (!v160)
            {
LABEL_41:

              return 0;
            }

            goto LABEL_17;
          }

          v85 = v167;
          v86 = v147;
          (*(v167 + 32))(v147, v30, v68);
          (*(v85 + 16))(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v86, v68);
          *(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 1;
          *(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
          v87 = v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
          *v87 = 0;
          *(v87 + 8) = 1;
          v178 = 0;
          v176 = 0u;
          v177 = 0u;
          v88 = v164;
          v89 = v158;
          v90 = v165;
          (*(v164 + 16))(v158, v71, v165);
          v91 = sub_1E1AF46DC();
          v92 = v152;
          (*(*(v91 - 8) + 56))(v152, 1, 1, v91);
          v93 = (v72 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
          *v93 = 0u;
          v93[1] = 0u;
          sub_1E134FD1C(&v176, &v170, &unk_1ECEB5670);
          if (*(&v171 + 1))
          {
            v173 = v170;
            v174 = v171;
            v175 = v172;
          }

          else
          {
            v112 = v154;
            sub_1E1AEFE9C();
            v113 = sub_1E1AEFE7C();
            v115 = v114;
            v116 = v112;
            v71 = v162;
            (*(v155 + 8))(v116, v149);
            v168 = v113;
            v169 = v115;
            v85 = v167;
            v89 = v158;
            sub_1E1AF6F6C();
            sub_1E1308058(&v170, &unk_1ECEB5670);
          }

          object = v160;

          sub_1E1308058(&v176, &unk_1ECEB5670);
          (*(v85 + 8))(v147, v166);
          (*(v88 + 8))(v71, v90);
          v117 = v72 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
          v118 = v174;
          *v117 = v173;
          *(v117 + 16) = v118;
          *(v117 + 32) = v175;
          sub_1E134B7C8(v92, v72 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
          *(v72 + 16) = xmmword_1E1B27080;
          *(v72 + 32) = 0;
          *(v72 + 40) = 0;
          (*(v88 + 32))(v72 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v89, v90);
        }

        else
        {
          v161 = v64;
          v162 = v65;
          v73 = v148;
          v158 = *(v67 + 32);
          (v158)(v148, v35, v68);
          sub_1E1AEFBDC();
          sub_1E1AF3DFC();
          type metadata accessor for ExternalUrlAction();
          v72 = swift_allocObject();
          v74 = v159;
          sub_1E1AEFCAC();

          if (v69(v74, 1, v68) == 1)
          {

            (*(v164 + 8))(v163, v165);
            (*(v167 + 8))(v73, v68);
            sub_1E1308058(v74, &unk_1ECEB4B60);
            swift_deallocPartialClassInstance();
            v65 = v162;
            if (!v160)
            {
              goto LABEL_41;
            }

            v64 = v161;
LABEL_17:
            v75 = v156;
            goto LABEL_39;
          }

          v94 = v146;
          (v158)(v146, v74, v68);
          v95 = v167;
          (*(v167 + 16))(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_url, v94, v68);
          *(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_isSensitive) = 0;
          *(v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_allowFromLockscreen) = 0;
          v96 = v72 + OBJC_IVAR____TtC11AppStoreKit17ExternalUrlAction_timeoutSeconds;
          *v96 = 0;
          *(v96 + 8) = 1;
          v178 = 0;
          v176 = 0u;
          v177 = 0u;
          v97 = v164;
          v98 = v157;
          v99 = v165;
          (*(v164 + 16))(v157, v163, v165);
          v100 = sub_1E1AF46DC();
          v101 = v153;
          (*(*(v100 - 8) + 56))(v153, 1, 1, v100);
          v102 = (v72 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
          *v102 = 0u;
          v102[1] = 0u;
          sub_1E134FD1C(&v176, &v170, &unk_1ECEB5670);
          if (*(&v171 + 1))
          {
            v103 = v95;
            v173 = v170;
            v174 = v171;
            v175 = v172;
          }

          else
          {
            v119 = v154;
            sub_1E1AEFE9C();
            v120 = sub_1E1AEFE7C();
            v122 = v121;
            (*(v155 + 8))(v119, v149);
            v168 = v120;
            v169 = v122;
            v103 = v167;
            v98 = v157;
            sub_1E1AF6F6C();
            sub_1E1308058(&v170, &unk_1ECEB5670);
          }

          v65 = v162;
          v64 = v161;

          sub_1E1308058(&v176, &unk_1ECEB5670);
          v123 = *(v103 + 8);
          v123(v146, v68);
          (*(v97 + 8))(v163, v99);
          v123(v148, v68);
          v124 = v72 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
          v125 = v174;
          *v124 = v173;
          *(v124 + 16) = v125;
          *(v124 + 32) = v175;
          sub_1E134B7C8(v101, v72 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
          *(v72 + 16) = xmmword_1E1B27090;
          *(v72 + 32) = 0;
          *(v72 + 40) = 0;
          (*(v97 + 32))(v72 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v98, v99);
          object = v160;
        }

        goto LABEL_37;
      }

      v156 = *(v0 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_iCloudMemberAppleId);

      v53._countAndFlagsBits = 0xD000000000000023;
      v53._object = 0x80000001E1B6F360;
      v54._countAndFlagsBits = 0;
      v54._object = 0xE000000000000000;
      v160 = localizedString(_:comment:)(v53, v54)._countAndFlagsBits;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECEBD930);
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1E1B02CD0;
      v56 = MEMORY[0x1E69E6158];
      *(v55 + 56) = MEMORY[0x1E69E6158];
      v57 = sub_1E13C2F48();
      *(v55 + 64) = v57;
      *(v55 + 32) = v156;
      *(v55 + 40) = v52;
      v58._countAndFlagsBits = 0xD00000000000002DLL;
      v58._object = 0x80000001E1B6F390;
      v59._countAndFlagsBits = 0;
      v59._object = 0xE000000000000000;
      v60 = localizedString(_:comment:)(v58, v59);
      *(v55 + 96) = v56;
      *(v55 + 104) = v57;
      *(v55 + 72) = v60;
      countAndFlagsBits = sub_1E1AF5E3C();
      v160 = v61;

      v50 = 0xD00000000000002DLL;
      v51 = 0x80000001E1B6F390;
LABEL_7:
      v62._countAndFlagsBits = 0;
      v62._object = 0xE000000000000000;
      v63 = localizedString(_:comment:)(*&v50, v62);
      v156 = v63._countAndFlagsBits;
      v64 = v63._object;
      goto LABEL_8;
    case 1:
      v146 = v45;
      v147 = v44;
      v148 = &v145 - v43;
      v149 = v1;
      v47._countAndFlagsBits = 0xD000000000000021;
      v47._object = 0x80000001E1B6F3C0;
      v48._countAndFlagsBits = 0;
      v48._object = 0xE000000000000000;
      v49 = localizedString(_:comment:)(v47, v48);
      countAndFlagsBits = v49._countAndFlagsBits;
      v160 = v49._object;
      v50 = 0xD00000000000002BLL;
      v51 = 0x80000001E1B6F3F0;
      goto LABEL_7;
  }

  sub_1E159D240(MEMORY[0x1E69E7CC0]);

  swift_bridgeObjectRelease_n();
  return 0;
}

void sub_1E16A9384()
{
  v1 = sub_1E1AEFEAC();
  v42 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_1E1AF3E1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB4B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v40 - v15;
  v17 = sub_1E16A7AB4();
  if (v17)
  {
    v43 = v17;
    v41 = v1;
    v44 = v0;
    v18 = sub_1E1AEFCCC();
    v55 = 0u;
    v56 = 0u;
    v57 = 0;
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    memset(v54, 0, sizeof(v54));
    sub_1E1AF3DFC();
    v19 = sub_1E1AF4D0C();
    v21 = v20;
    type metadata accessor for FlowAction();
    v22 = swift_allocObject();
    *(v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v23 = v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageData;
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0;
    v24 = (v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_appStateController);
    *v24 = 0;
    v24[1] = 0;
    *(v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_page) = 14;
    sub_1E134FD1C(v16, v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_pageUrl, &unk_1ECEB4B60);
    v25 = (v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerUrl);
    *v25 = 0;
    v25[1] = 0;
    v26 = v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_referrerData;
    *v26 = xmmword_1E1B04490;
    *(v26 + 24) = 0;
    *(v26 + 32) = 0;
    *(v26 + 16) = 0;
    *(v26 + 40) = 0;
    *(v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentationContext) = 0;
    *(v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_animationBehavior) = 0;
    *(v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_origin) = 0;
    v27 = (v22 + OBJC_IVAR____TtC11AppStoreKit10FlowAction_presentation);
    *v27 = v19;
    v27[1] = v21;
    sub_1E134FD1C(&v55, v53, &unk_1ECEB5670);
    (*(v8 + 16))(v10, v13, v7);
    v28 = sub_1E1AF46DC();
    (*(*(v28 - 8) + 56))(v6, 1, 1, v28);
    v29 = (v22 + OBJC_IVAR____TtC11AppStoreKit6Action_clickSender);
    *v29 = 0u;
    v29[1] = 0u;
    sub_1E134FD1C(v53, &v47, &unk_1ECEB5670);
    if (*(&v48 + 1))
    {
      v50 = v47;
      v51 = v48;
      v52 = v49;
    }

    else
    {
      v30 = v3;
      sub_1E1AEFE9C();
      v31 = sub_1E1AEFE7C();
      v33 = v32;
      (*(v42 + 8))(v30, v41);
      v45 = v31;
      v46 = v33;
      sub_1E1AF6F6C();
      sub_1E1308058(&v47, &unk_1ECEB5670);
    }

    sub_1E1308058(v53, &unk_1ECEB5670);
    v34 = v22 + OBJC_IVAR____TtC11AppStoreKit6Action_id;
    v35 = v51;
    *v34 = v50;
    *(v34 + 16) = v35;
    *(v34 + 32) = v52;
    sub_1E134B7C8(v6, v22 + OBJC_IVAR____TtC11AppStoreKit6Action_impressionMetrics);
    *(v22 + 16) = 0u;
    *(v22 + 32) = 0u;
    (*(v8 + 32))(v22 + OBJC_IVAR____TtC11AppStoreKit6Action_actionMetrics, v10, v7);

    FlowAction.setPageData(_:)(v54);

    (*(v8 + 8))(v13, v7);
    sub_1E1308058(v54, &qword_1ECEB2DF0);
    sub_1E1308058(v16, &unk_1ECEB4B60);
    sub_1E1308058(&v55, &unk_1ECEB5670);
    *(&v56 + 1) = sub_1E13006E4(0, &qword_1ECEB7950);
    *&v55 = v43;
    v36 = v43;
    FlowAction.setPageData(_:)(&v55);
    sub_1E1308058(&v55, &qword_1ECEB2DF0);
    v37 = v44 + OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_view;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v38 = *(v37 + 8);
      ObjectType = swift_getObjectType();
      v55 = 0u;
      v56 = 0u;
      (*(*(v38 + 8) + 8))(v22, &v55, ObjectType);

      swift_unknownObjectRelease();
      sub_1E1308058(&v55, &qword_1ECEB2DF0);
    }

    else
    {
    }
  }
}

uint64_t sub_1E16A9A78@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = OBJC_IVAR____TtC11AppStoreKit24FamilyPurchasesPresenter_sections;
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v7 = *(v2 + v5);
    if (*(v7 + 16) > a1)
    {
      *a2 = *(v7 + a1 + 32);
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1E16A9B34()
{
  result = qword_1ECEB7958;
  if (!qword_1ECEB7958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECEB7958);
  }

  return result;
}

uint64_t type metadata accessor for FamilyPurchasesPresenter()
{
  result = qword_1ECEB7960;
  if (!qword_1ECEB7960)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E16A9C00()
{
  result = sub_1E1AF539C();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void *NestedCollectionViewImpressionsCoordinator.__allocating_init(collectionView:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  result[3] = a1;
  result[4] = v3;
  result[2] = 0;
  return result;
}

void *NestedCollectionViewImpressionsCoordinator.init(collectionView:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  v1[3] = a1;
  v1[4] = v2;
  v1[2] = 0;
  return v1;
}

uint64_t sub_1E16A9FB4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 16) = v2;
  swift_retain_n();

  if (v2)
  {
    sub_1E16AA73C();
  }

  return result;
}

uint64_t sub_1E16AA028(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  if (a1)
  {
    sub_1E16AA73C();
  }

  return result;
}

uint64_t (*sub_1E16AA094(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E16AA0E8;
}

uint64_t sub_1E16AA0E8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0 && *(*(a1 + 24) + 16))
  {

    sub_1E16AA73C();
  }

  return result;
}

uint64_t sub_1E16AA14C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t sub_1E16AA1E4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t sub_1E16AA22C()
{
  swift_beginAccess();
  if (*(v0 + 16))
  {

    ImpressionsCalculator.removeAllElements()();
  }

  swift_beginAccess();
  *(v0 + 32) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1E16AA2AC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5 + 40;
  v7 = sub_1E1AF46DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v11 = sub_1E1AF018C();
  result = swift_beginAccess();
  v13 = *(v2 + 32);
  if (v11 < *(v13 + 16))
  {
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      sub_1E1300B24(v13 + 40 * v11 + 32, v19);
      __swift_project_boxed_opaque_existential_1Tm(v19, v19[3]);
      sub_1E1AF5C0C();
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1E13814C0(v6);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        swift_beginAccess();
        if (*(v2 + 16))
        {

          [a1 frame];
          ImpressionsCalculator.addElement(_:at:)(v10, v14, v15, v16, v17);
        }

        (*(v8 + 8))(v10, v7);
      }

      return __swift_destroy_boxed_opaque_existential_1(v19);
    }
  }

  return result;
}

uint64_t sub_1E16AA4DC(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = sub_1E1AF46DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_1E1AF5C0C();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1E13814C0(v8);
  }

  (*(v10 + 32))(v12, v8, v9);
  swift_beginAccess();
  if (*(v3 + 16))
  {

    [a2 frame];
    ImpressionsCalculator.addElement(_:at:)(v12, v14, v15, v16, v17);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t NestedCollectionViewImpressionsCoordinator.deinit()
{

  return v0;
}

uint64_t NestedCollectionViewImpressionsCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E16AA73C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECEB1770);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v40 = v34 - v3;
  v4 = sub_1E1AF46DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E1AF01FC();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v1[3];
  v13 = [v44 indexPathsForVisibleItems];
  v14 = sub_1E1AF621C();

  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v34[1] = v15;
    v18 = v15 + v17;
    swift_beginAccess();
    swift_beginAccess();
    v20 = *(v9 + 16);
    v19 = v9 + 16;
    v42 = (v19 - 8);
    v43 = v20;
    v36 = (v5 + 32);
    v37 = (v5 + 48);
    v41 = *(v19 + 56);
    v35 = (v5 + 8);
    v38 = v19;
    v39 = v8;
    v20(v12, v18, v8);
    while (1)
    {
      v21 = sub_1E1AF015C();
      v22 = [v44 cellForItemAtIndexPath_];

      result = sub_1E1AF018C();
      v24 = v1[4];
      if (result >= *(v24 + 16))
      {

        (*v42)(v12, v8);
      }

      else
      {
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        sub_1E1300B24(v24 + 40 * result + 32, v45);
        if (v22)
        {
          v25 = v7;
          __swift_project_boxed_opaque_existential_1Tm(v45, v45[3]);
          v26 = v4;
          v27 = v40;
          sub_1E1AF5C0C();
          v28 = v27;
          v4 = v26;
          if ((*v37)(v28, 1, v26) == 1)
          {

            v29 = v39;
            (*v42)(v12, v39);
            sub_1E13814C0(v28);
            v8 = v29;
            v7 = v25;
          }

          else
          {
            v7 = v25;
            (*v36)(v25, v28, v4);
            if (v1[2])
            {

              [v22 frame];
              ImpressionsCalculator.addElement(_:at:)(v25, v30, v31, v32, v33);
            }

            else
            {
            }

            (*v35)(v25, v4);
            v8 = v39;
            (*v42)(v12, v39);
          }
        }

        else
        {
          (*v42)(v12, v8);
        }

        __swift_destroy_boxed_opaque_existential_1(v45);
      }

      v18 += v41;
      if (!--v16)
      {
      }

      v43(v12, v18, v8);
    }
  }
}

AppStoreKit::TodayCardArtworkSizedLayoutMetrics::Priority_optional __swiftcall TodayCardArtworkSizedLayoutMetrics.Priority.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1E1AF72FC();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TodayCardArtworkSizedLayoutMetrics.Priority.rawValue.getter()
{
  v1 = 0x6469576172747865;
  if (*v0 != 1)
  {
    v1 = 1701736302;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1768843629;
  }
}

uint64_t sub_1E16AAE10(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6469576172747865;
  v4 = 0xE900000000000065;
  if (v2 != 1)
  {
    v3 = 1701736302;
    v4 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1768843629;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x6469576172747865;
  v8 = 0xE900000000000065;
  if (*a2 != 1)
  {
    v7 = 1701736302;
    v8 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1768843629;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1E1AF74AC();
  }

  return v11 & 1;
}