NSString ContextActionType.actionIdentifier.getter()
{
  ContextActionType.rawValue.getter();
  v0 = sub_3ED204();

  return v0;
}

unint64_t ContextActionType.rawValue.getter()
{
  result = 0xD00000000000001ELL;
  switch(*v0)
  {
    case 1:
    case 0x13:
    case 0x18:
    case 0x2D:
    case 0x2E:
      result = 0xD000000000000026;
      break;
    case 2:
    case 0x1B:
    case 0x29:
      result = 0xD00000000000002ALL;
      break;
    case 3:
    case 0x15:
      result = 0xD000000000000028;
      break;
    case 4:
    case 8:
      result = 0xD00000000000002BLL;
      break;
    case 5:
    case 0x2A:
      result = 0xD000000000000021;
      break;
    case 7:
    case 9:
    case 0xB:
    case 0x19:
    case 0x21:
    case 0x26:
    case 0x27:
      result = 0xD000000000000022;
      break;
    case 0xA:
    case 0xC:
    case 0x1A:
    case 0x1C:
      result = 0xD00000000000002CLL;
      break;
    case 0xD:
    case 0x10:
    case 0x11:
    case 0x1F:
      result = 0xD000000000000025;
      break;
    case 0xE:
      result = 0xD000000000000027;
      break;
    case 0xF:
    case 0x17:
      result = 0xD000000000000023;
      break;
    case 0x12:
      result = 0xD000000000000024;
      break;
    case 0x14:
      result = 0xD00000000000002DLL;
      break;
    case 0x16:
    case 0x2C:
      result = 0xD000000000000029;
      break;
    case 0x1D:
    case 0x25:
      result = 0xD00000000000001BLL;
      break;
    case 0x1E:
    case 0x23:
    case 0x24:
      result = 0xD00000000000001FLL;
      break;
    case 0x22:
    case 0x28:
      result = 0xD000000000000020;
      break;
    case 0x2B:
      result = 0xD000000000000033;
      break;
    default:
      return result;
  }

  return result;
}

ShelfKit::ContextActionType_optional __swiftcall ContextActionType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_3EE834();

  v5 = 0;
  v6 = 29;
  switch(v3)
  {
    case 0:
      goto LABEL_46;
    case 1:
      v5 = 1;
      goto LABEL_46;
    case 2:
      v5 = 2;
      goto LABEL_46;
    case 3:
      v5 = 3;
      goto LABEL_46;
    case 4:
      v5 = 4;
      goto LABEL_46;
    case 5:
      v5 = 5;
      goto LABEL_46;
    case 6:
      v5 = 6;
      goto LABEL_46;
    case 7:
      v5 = 7;
      goto LABEL_46;
    case 8:
      v5 = 8;
      goto LABEL_46;
    case 9:
      v5 = 9;
      goto LABEL_46;
    case 10:
      v5 = 10;
      goto LABEL_46;
    case 11:
      v5 = 11;
      goto LABEL_46;
    case 12:
      v5 = 12;
      goto LABEL_46;
    case 13:
      v5 = 13;
      goto LABEL_46;
    case 14:
      v5 = 14;
      goto LABEL_46;
    case 15:
      v5 = 15;
      goto LABEL_46;
    case 16:
      v5 = 16;
      goto LABEL_46;
    case 17:
      v5 = 17;
      goto LABEL_46;
    case 18:
      v5 = 18;
      goto LABEL_46;
    case 19:
      v5 = 19;
      goto LABEL_46;
    case 20:
      v5 = 20;
      goto LABEL_46;
    case 21:
      v5 = 21;
      goto LABEL_46;
    case 22:
      v5 = 22;
      goto LABEL_46;
    case 23:
      v5 = 23;
      goto LABEL_46;
    case 24:
      v5 = 24;
      goto LABEL_46;
    case 25:
      v5 = 25;
      goto LABEL_46;
    case 26:
      v5 = 26;
      goto LABEL_46;
    case 27:
      v5 = 27;
      goto LABEL_46;
    case 28:
      v5 = 28;
LABEL_46:
      v6 = v5;
      break;
    case 29:
      break;
    case 30:
      v6 = 30;
      break;
    case 31:
      v6 = 31;
      break;
    case 32:
      v6 = 32;
      break;
    case 33:
      v6 = 33;
      break;
    case 34:
      v6 = 34;
      break;
    case 35:
      v6 = 35;
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    default:
      v6 = 47;
      break;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_55098()
{
  sub_3EE954();
  ContextActionType.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_55100()
{
  ContextActionType.rawValue.getter();
  sub_3ED394();
}

Swift::Int sub_55164()
{
  sub_3EE954();
  ContextActionType.rawValue.getter();
  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_551D4@<X0>(unint64_t *a1@<X8>)
{
  result = ContextActionType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_5520C()
{
  v0 = ContextActionType.rawValue.getter();
  v2 = v1;
  if (v0 == ContextActionType.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_3EE804();
  }

  return v5 & 1;
}

unint64_t sub_552C4(uint64_t a1)
{
  sub_3ED244();
  sub_3EE954();
  sub_3ED394();
  v2 = sub_3EE9A4();

  return sub_58A64(a1, v2);
}

unint64_t sub_55354(unsigned __int8 a1)
{
  sub_3EE954();
  sub_3EE964(a1);
  v2 = sub_3EE9A4();

  return sub_58604(a1, v2);
}

unint64_t sub_553C0(uint64_t a1)
{
  sub_3EE954();
  ContextActionType.rawValue.getter();
  sub_3ED394();

  v2 = sub_3EE9A4();

  return sub_58674(a1, v2);
}

unint64_t sub_5544C(uint64_t a1)
{
  v2 = sub_3EE944();

  return sub_58790(a1, v2);
}

unint64_t sub_55490(uint64_t a1)
{
  sub_3E5FC4();
  sub_5B440(&qword_4EBA78, &type metadata accessor for UUID);
  v2 = sub_3ED114();
  return sub_587FC(a1, v2, &type metadata accessor for UUID, &qword_4EBA80, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
}

unint64_t sub_55564(uint64_t a1)
{
  sub_3E5DC4();
  sub_5B440(&qword_4EBA98, &type metadata accessor for URL);
  v2 = sub_3ED114();
  return sub_587FC(a1, v2, &type metadata accessor for URL, &qword_4E9880, &type metadata accessor for URL, &protocol conformance descriptor for URL);
}

uint64_t sub_55638(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Swift::Int))
{
  sub_3EE954();
  sub_3ED394();
  v5 = sub_3EE9A4();

  return a3(a1, a2, v5);
}

unint64_t sub_556BC(uint64_t a1)
{
  sub_3E77B4();
  sub_5B440(&qword_4EBAE0, &type metadata accessor for MediaRequest.ContentType);
  v2 = sub_3ED114();
  return sub_587FC(a1, v2, &type metadata accessor for MediaRequest.ContentType, &qword_4EBAE8, &type metadata accessor for MediaRequest.ContentType, &protocol conformance descriptor for MediaRequest.ContentType);
}

unint64_t sub_55790(Swift::UInt64 a1)
{
  sub_3EE954();
  sub_3EE994(a1);
  v2 = sub_3EE9A4();

  return sub_58790(a1, v2);
}

unint64_t sub_557FC(uint64_t a1)
{
  sub_3E7274();
  sub_5B440(&qword_4EBAA8, &type metadata accessor for TipGroup);
  v2 = sub_3ED114();
  return sub_587FC(a1, v2, &type metadata accessor for TipGroup, &qword_4EBAB0, &type metadata accessor for TipGroup, &protocol conformance descriptor for TipGroup);
}

unint64_t sub_558D0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_3EE324(*(v2 + 40));

  return sub_5899C(a1, v4);
}

uint64_t sub_55914(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB18);
  v30 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_3EE954();
      sub_3EE964(v20);
      result = sub_3EE9A4();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_55BA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB10);
  v31 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v21;
      }

      sub_3EE954();
      ContextActionType.rawValue.getter();
      sub_3ED394();

      result = sub_3EE9A4();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_55E4C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB08);
  v37 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_5610C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB00);
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v3;
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
      v22 = *(v20 + 8 * v19);
      if ((a2 & 1) == 0)
      {
        sub_29EA4(*(v20 + 8 * v19));
      }

      result = sub_3EE944();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      *(*(v7 + 56) + 8 * v15) = v22;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((a2 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_5637C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAD8);
  v33 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {
      }

      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_56648(uint64_t a1, int a2)
{
  v3 = v2;
  v41 = sub_3E9104();
  v5 = *(v41 - 8);
  __chkstk_darwin(v41);
  v40 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAC8);
  v39 = a2;
  result = sub_3EE5E4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v7;
    v38 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v38 + 72);
      v26 = v23 + v25 * v22;
      if (v39)
      {
        (*v16)(v40, v26, v41);
      }

      else
      {
        (*v36)(v40, v26, v41);
      }

      sub_3EE954();
      sub_3EE994(v24);
      result = sub_3EE9A4();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v24;
      result = (*v16)(*(v9 + 56) + v25 * v18, v40, v41);
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_569AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAC0);
  v38 = a2;
  result = sub_3EE5E4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v2;
    v37 = v5;
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
      v18 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v40 = *(*(v5 + 48) + 8 * v21);
      v22 = (*(v5 + 56) + 40 * v21);
      v23 = *v22;
      v24 = v22[1];
      v26 = v22[2];
      v25 = v22[3];
      v27 = v22[4];
      if ((v38 & 1) == 0)
      {
        sub_5B42C(v23, v24, v26);
      }

      sub_3EE954();
      sub_3EE994(v40);
      result = sub_3EE9A4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v16 = v25;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v16 = v25;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v40;
      v17 = (*(v7 + 56) + 40 * v15);
      *v17 = v23;
      v17[1] = v24;
      v17[2] = v26;
      v17[3] = v16;
      v17[4] = v27;
      ++*(v7 + 16);
      v5 = v37;
      v12 = v39;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_56CAC(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v35 = a2;
  result = sub_3EE5E4();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v35 & 1) == 0)
      {
      }

      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
      v26 = -1 << *(v8 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v34;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
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
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v3;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_56F4C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_3E5FC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBA88);
  v39 = a2;
  result = sub_3EE5E4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_5B440(&qword_4EBA78, &type metadata accessor for UUID);
      result = sub_3ED114();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_57328(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = sub_3E5DC4();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAA0);
  v42 = a2;
  result = sub_3EE5E4();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_3EE954();
      sub_3ED394();
      result = sub_3EE9A4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
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
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_576A8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_3E5FC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAF0);
  v40 = a2;
  result = sub_3EE5E4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v21 = (v16 - 1) & v16;
LABEL_15:
      v24 = v20 | (v12 << 6);
      v42 = v21;
      v25 = *(v6 + 72);
      v26 = *(v9 + 48) + v25 * v24;
      if (v40)
      {
        (*v41)(v43, v26, v5);
      }

      else
      {
        (*v37)(v43, v26, v5);
      }

      v27 = *(*(v9 + 56) + v24);
      sub_5B440(&qword_4EBA78, &type metadata accessor for UUID);
      result = sub_3ED114();
      v28 = -1 << *(v11 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v18 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v18 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v18 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v25 * v19, v43, v5);
      *(*(v11 + 56) + v19) = v27;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
      v16 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v20 = __clz(__rbit64(v23));
        v21 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v9 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v13, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v35;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_57A68(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_3E5DC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBA90);
  v39 = a2;
  result = sub_3EE5E4();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_5B440(&qword_4EBA98, &type metadata accessor for URL);
      result = sub_3ED114();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_57E44(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_3E5FC4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAF8);
  v43 = a2;
  result = sub_3EE5E4();
  v11 = result;
  if (*(v9 + 16))
  {
    v48 = v8;
    v39 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = (v6 + 16);
    v41 = v9;
    v42 = v6;
    v44 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 48);
      v47 = *(v42 + 72);
      v26 = v25 + v47 * v24;
      if (v43)
      {
        (*v44)(v48, v26, v5);
        v27 = *(v9 + 56) + 24 * v24;
        v46 = *v27;
        v45 = *(v27 + 16);
      }

      else
      {
        (*v40)(v48, v26, v5);
        v28 = *(v9 + 56) + 24 * v24;
        v29 = *(v28 + 16);
        v46 = *v28;
        swift_unknownObjectRetain();
        v45 = v29;
      }

      sub_5B440(&qword_4EBA78, &type metadata accessor for UUID);
      result = sub_3ED114();
      v30 = -1 << *(v11 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v18 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v18 + 8 * v32);
          if (v36 != -1)
          {
            v19 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v31) & ~*(v18 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v44)(*(v11 + 48) + v47 * v19, v48, v5);
      v20 = *(v11 + 56) + 24 * v19;
      *v20 = v46;
      *(v20 + 16) = v45;
      ++*(v11 + 16);
      v9 = v41;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v9 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v13, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v37;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_58284(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v36 = a2;
  result = sub_3EE5E4();
  v8 = result;
  if (*(v6 + 16))
  {
    v34 = v3;
    v35 = v6;
    v9 = 0;
    v10 = (v6 + 64);
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = v17 | (v9 << 6);
      v21 = *(v6 + 56);
      v22 = *(*(v6 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v36)
      {
        sub_1FB90(v23, v37);
      }

      else
      {
        sub_2F4AC(v23, v37);
        v24 = v22;
      }

      sub_3ED244();
      sub_3EE954();
      sub_3ED394();
      v25 = sub_3EE9A4();

      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_1FB90(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v6 = v35;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v4 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v6 + 32);
    v4 = v34;
    if (v33 >= 64)
    {
      bzero(v10, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v33;
    }

    *(v6 + 16) = 0;
  }

LABEL_34:
  *v4 = v8;
  return result;
}

unint64_t sub_5854C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_3EE804())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_58604(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_58674(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = ContextActionType.rawValue.getter();
      v9 = v8;
      if (v7 == ContextActionType.rawValue.getter() && v9 == v10)
      {
        break;
      }

      v12 = sub_3EE804();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_58790(uint64_t a1, uint64_t a2)
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

unint64_t sub_587FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10.n128_f64[0] = __chkstk_darwin(v8);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8, v10);
      sub_5B440(v24, v25);
      v20 = sub_3ED174();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

unint64_t sub_5899C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_5B37C(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_3EE334();
      sub_5B3D8(v8);
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

unint64_t sub_58A64(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_3ED244();
      v8 = v7;
      if (v6 == sub_3ED244() && v8 == v9)
      {
        break;
      }

      v11 = sub_3EE804();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

id sub_58B68()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB10);
  v2 = *v0;
  v3 = sub_3EE5D4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = v18;
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

void *sub_58CC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB08);
  v2 = *v0;
  v3 = sub_3EE5D4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_58E3C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB00);
  v2 = *v0;
  v3 = sub_3EE5D4();
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        result = sub_29EA4(v18);
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

void *sub_58F98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAD8);
  v2 = *v0;
  v3 = sub_3EE5D4();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

void *sub_5912C()
{
  v1 = v0;
  v29 = sub_3E9104();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAC8);
  v3 = *v0;
  v4 = sub_3EE5D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_59394()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAC0);
  v2 = *v0;
  v3 = sub_3EE5D4();
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
        v18 = (*(v2 + 56) + 40 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = v18[3];
        v23 = v18[4];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v24 = (*(v4 + 56) + 40 * v17);
        *v24 = v19;
        v24[1] = v20;
        v24[2] = v21;
        v24[3] = v22;
        v24[4] = v23;
        result = sub_5B42C(v19, v20, v21);
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

void *sub_59524(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_3EE5D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = (*(v3 + 48) + 16 * v18);
        v20 = v19[1];
        v21 = *(*(v3 + 56) + 8 * v18);
        v22 = (*(v5 + 48) + 16 * v18);
        *v22 = *v19;
        v22[1] = v20;
        *(*(v5 + 56) + 8 * v18) = v21;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

char *sub_596AC()
{
  v1 = v0;
  v35 = sub_3E5DC4();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAA0);
  v3 = *v0;
  v4 = sub_3EE5D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = 16 * v18;
        v20 = (*(v3 + 48) + 16 * v18);
        v21 = *v20;
        v22 = v20[1];
        v23 = v37;
        v24 = *(v37 + 72) * v18;
        v25 = v34;
        v26 = v35;
        (*(v37 + 16))(v34, *(v3 + 56) + v24, v35);
        v27 = v36;
        v28 = (*(v36 + 48) + v19);
        *v28 = v21;
        v28[1] = v22;
        (*(v23 + 32))(*(v27 + 56) + v24, v25, v26);

        v13 = v38;
      }

      while (v38);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_5992C()
{
  v1 = v0;
  v31 = sub_3E5FC4();
  v33 = *(v31 - 8);
  __chkstk_darwin(v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAF0);
  v3 = *v0;
  v4 = sub_3EE5D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + v18);
        v24 = v32;
        result = (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + v18) = v23;
        v13 = v34;
      }

      while (v34);
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

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_59BC4(uint64_t (*a1)(void), uint64_t *a2)
{
  v4 = v2;
  v34 = a1(0);
  v36 = *(v34 - 8);
  __chkstk_darwin(v34);
  v33 = &v28 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v6 = *v2;
  v7 = sub_3EE5D4();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    v29 = v4;
    v30 = (v6 + 64);
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, v30, 8 * v10);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v35 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v37 = (v16 - 1) & v16;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = v36;
        v23 = *(v36 + 72) * v21;
        v25 = v33;
        v24 = v34;
        (*(v36 + 16))(v33, *(v6 + 48) + v23, v34);
        v26 = *(*(v6 + 56) + 8 * v21);
        v27 = v35;
        (*(v22 + 32))(*(v35 + 48) + v23, v25, v24);
        *(*(v27 + 56) + 8 * v21) = v26;

        v16 = v37;
      }

      while (v37);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v4 = v29;
        v8 = v35;
        goto LABEL_21;
      }

      v20 = *(v30 + v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v37 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v8;
  }

  return result;
}

char *sub_59E40()
{
  v1 = v0;
  v35 = sub_3E5FC4();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAF8);
  v3 = *v0;
  v4 = sub_3EE5D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v32 = v37 + 32;
    v33 = v37 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v39 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v22 = v34;
        v21 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 24 * v18;
        v24 = *(v3 + 56) + 24 * v18;
        v25 = *(v24 + 16);
        v26 = v36;
        v27 = *(v36 + 48);
        v28 = *(v19 + 32);
        v38 = *v24;
        v28(v27 + v20, v22, v21);
        v29 = *(v26 + 56) + v23;
        *v29 = v38;
        *(v29 + 16) = v25;
        swift_unknownObjectRetain();

        v13 = v39;
      }

      while (v39);
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

        v1 = v30;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v31 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id sub_5A108(uint64_t *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1);
  v3 = *v1;
  v4 = sub_3EE5D4();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v9 = 0;
    *(v5 + 16) = *(v3 + 16);
    v10 = 1 << *(v3 + 32);
    v11 = *(v3 + 64);
    v12 = -1;
    if (v10 < 64)
    {
      v12 = ~(-1 << v10);
    }

    v13 = v12 & v11;
    v14 = (v10 + 63) >> 6;
    if ((v12 & v11) != 0)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = *(*(v3 + 48) + 8 * v18);
        sub_2F4AC(*(v3 + 56) + 32 * v18, v20);
        *(*(v5 + 48) + 8 * v18) = v19;
        sub_1FB90(v20, (*(v5 + 56) + 32 * v18));
        result = v19;
      }

      while (v13);
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
        goto LABEL_19;
      }

      v17 = *(v3 + 64 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v2 = v5;
  }

  return result;
}

uint64_t (*sub_5A278(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3EE3F4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_5B678;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_5A2F8(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3EE3F4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_5B67C;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_5A378(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3EE3F4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_5A3F8;
  }

  __break(1u);
  return result;
}

void (*sub_5A400(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = sub_3EE3F4();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(&dword_10 + (a3 & 0xFFFFFFFFFFFFFF8)) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_5A480;
  }

  __break(1u);
  return result;
}

unint64_t sub_5A488(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void *sub_5A498(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

    return _swiftEmptyDictionarySingleton;
  }

LABEL_23:
  v2 = sub_3EE5A4();
  if (!v2)
  {
    return _swiftEmptyDictionarySingleton;
  }

LABEL_3:
  for (i = 0; ; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = sub_3EE3F4();
    }

    else
    {
      if (i >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_20;
      }

      v5 = *(a1 + 8 * i + 32);
    }

    v6 = v5;
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v8 = [v5 identifier];
    v9 = sub_3ED244();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    ContextActionType.init(rawValue:)(v12);
    v13 = byte_3F7FAA[v27];
    v14 = sub_55354(v13);
    v16 = _swiftEmptyDictionarySingleton[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      goto LABEL_21;
    }

    v20 = v15;
    if (_swiftEmptyDictionarySingleton[3] < v19)
    {
      sub_55914(v19, 1);
      v14 = sub_55354(v13);
      if ((v20 & 1) != (v21 & 1))
      {
        break;
      }
    }

    if (v20)
    {
      v4 = (_swiftEmptyDictionarySingleton[7] + 8 * v14);
      sub_3ED564();
      if (*(&dword_10 + (*v4 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v4 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_3ED5A4();
      }

      sub_3ED604();
    }

    else
    {
      v22 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4F1C80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_3F7950;
      *(v23 + 32) = v6;
      _swiftEmptyDictionarySingleton[(v22 >> 6) + 8] |= 1 << v22;
      *(_swiftEmptyDictionarySingleton[6] + v22) = v13;
      *(_swiftEmptyDictionarySingleton[7] + 8 * v22) = v23;
      v24 = _swiftEmptyDictionarySingleton[2];
      v18 = __OFADD__(v24, 1);
      v25 = v24 + 1;
      if (v18)
      {
        goto LABEL_22;
      }

      _swiftEmptyDictionarySingleton[2] = v25;
    }

    if (v7 == v2)
    {
      return _swiftEmptyDictionarySingleton;
    }
  }

  result = sub_3EE894();
  __break(1u);
  return result;
}

unint64_t sub_5A730()
{
  result = qword_4EB5D8;
  if (!qword_4EB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB5D8);
  }

  return result;
}

unint64_t sub_5A788()
{
  result = qword_4EB5E0;
  if (!qword_4EB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EB5E0);
  }

  return result;
}

uint64_t sub_5A80C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_presentationSource;
  swift_beginAccess();
  return sub_FBD0(v3 + v4, a2, &qword_4EB5B8);
}

uint64_t sub_5A87C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit27ContextActionsConfiguration_previewModel;
  swift_beginAccess();
  return sub_FBD0(v3 + v4, a2, &qword_4EB5C0);
}

id sub_5A8F4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_playerResponseItem;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_5A960@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC8ShelfKit36NowPlayingContextActionConfiguration_modelObject;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

void sub_5A9D4()
{
  sub_5AC70();
  if (v0 <= 0x3F)
  {
    sub_3E6434();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_5AC70()
{
  if (!qword_4EB630)
  {
    sub_3E64E4();
    v0 = sub_3EE0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_4EB630);
    }
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_5AD44(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
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

uint64_t sub_5ADA0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_5AFD0()
{
  result = type metadata accessor for KCURadar.ReportContent(319);
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

uint64_t getEnumTagSinglePayload for ContextActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 46;
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

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContextActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_5B42C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >= 3)
  {
  }

  return result;
}

uint64_t sub_5B440(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for StationSortOrder(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for StationSortOrder(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5B60C()
{
  result = qword_4EBB30;
  if (!qword_4EBB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBB30);
  }

  return result;
}

uint64_t CreateStationAction.init(name:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for CreateStationAction() + 20);
  v7 = sub_3EC1F4();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t type metadata accessor for CreateStationAction()
{
  result = qword_4EBB90;
  if (!qword_4EBB90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CreateStationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CreateStationAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t CreateStationAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CreateStationAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_5B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5B978(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_5BA1C()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t DeleteStationAction.init(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + OBJC_IVAR____TtC8ShelfKit13StationDetail_objectID);
  type metadata accessor for DeleteStationAction();
  v4 = v3;
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();

  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

uint64_t DeleteStationAction.init(id:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  v7 = *(type metadata accessor for DeleteStationAction() + 20);
  v8 = sub_3EC1F4();
  v9 = *(*(v8 - 8) + 32);

  return v9(a5 + v7, a4, v8);
}

uint64_t type metadata accessor for DeleteStationAction()
{
  result = qword_4EBC28;
  if (!qword_4EBC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DeleteStationAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeleteStationAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeleteStationAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeleteStationAction() + 20);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

id DeleteStationAction.intent.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_3DE90(v2, v3, v4);
}

uint64_t DeleteStationAction.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for DeleteStationAction();
  result = _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 2;
  return result;
}

unint64_t sub_5BD7C()
{
  result = qword_4EBBC8;
  if (!qword_4EBBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EBBC8);
  }

  return result;
}

uint64_t sub_5BDE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *(a1 + 16);
    if (v4 > 2)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5BE9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *(result + 16) = -a2;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t DismissAction.animationBehavior.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit13DismissAction_animationBehavior;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t DismissAction.animationBehavior.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit13DismissAction_animationBehavior;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t DismissAction.__allocating_init(title:animationBehavior:presentationStyle:)(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v8 = swift_allocObject();
  DismissAction.init(title:animationBehavior:presentationStyle:)(a1, a2, a3, a4);
  return v8;
}

uint64_t DismissAction.init(title:animationBehavior:presentationStyle:)(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v5 = v4;
  v27 = a4;
  v25 = a1;
  v26 = a2;
  v7 = sub_3E5FC4();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_3EC1F4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v15 - 8);
  v17 = &v24 - v16;
  *(v5 + OBJC_IVAR____TtC8ShelfKit13DismissAction_animationBehavior) = a3;
  v18 = sub_3EC634();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  _s8ShelfKit24NativeClickMetricsActionV06actionE09JetEngine0fE0Vvg_0();
  sub_3E5FB4();
  v19 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v21 = v20;
  (*(v8 + 8))(v10, v7);
  *(v5 + 16) = v19;
  *(v5 + 24) = v21;
  v22 = v26;
  *(v5 + 32) = v25;
  *(v5 + 40) = v22;
  *(v5 + 48) = v27;
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v14, v11);
  sub_14A10(v17, v5 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v5;
}

uint64_t type metadata accessor for DismissAction()
{
  result = qword_4EBC88;
  if (!qword_4EBC88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t UndoSuggestLessInterestAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3EC1F4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t DismissInlineModuleAction.init(actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_5C558(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_5C5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for DismissInlineModuleAction()
{
  result = qword_4EBDA0;
  if (!qword_4EBDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5C694()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t EpisodeContextAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v43 = *v3;
  v46 = sub_3EBF94();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v9 - 8);
  v42 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_3EBE04();
  sub_3EBDC4();
  if (v20)
  {
    v44 = v12;
    v47 = v11;
    v48 = a1;
    v21 = v45;
    v22 = v41;
    v23 = sub_3E9494();
    if (v22)
    {

      v24 = sub_3E9484();

      v41 = *(v44 + 8);
      v41(v19, v47);
    }

    else
    {
      v24 = v23;
      v41 = *(v44 + 8);
      v41(v19, v47);
    }

    v40 = v3;
    *(v3 + OBJC_IVAR____TtC8ShelfKit20EpisodeContextAction_contentId) = v24;
    sub_3EBE04();
    v29 = *(v49 + 16);
    v30 = v21;
    v31 = v21;
    v32 = v46;
    v29(v8, v31, v46);
    v33 = v42;
    EpisodeOffer.init(deserializing:using:)(v16, v8, v42);
    sub_3D978(v33, v40 + OBJC_IVAR____TtC8ShelfKit20EpisodeContextAction_episodeOffer);
    v35 = v38;
    (*(v44 + 16))(v38, v48, v47);
    v36 = v39;
    v29(v39, v30, v32);
    v26 = Action.init(deserializing:using:)(v35, v36);
    (*(v49 + 8))(v30, v32);
    v41(v48, v47);
  }

  else
  {
    v25 = *(v12 + 8);
    v25(v19, v11);
    v26 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v27 = *v3;
    *v28 = 0x49746E65746E6F63;
    v28[1] = 0xE900000000000064;
    v28[2] = v27;
    (*(*(v26 - 8) + 104))(v28, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    (*(v49 + 8))(v45, v46);
    v25(a1, v11);
    swift_deallocPartialClassInstance();
  }

  return v26;
}

uint64_t EpisodeContextAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit20EpisodeContextAction_episodeOffer);
  return v0;
}

uint64_t EpisodeContextAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit20EpisodeContextAction_episodeOffer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EpisodeContextAction()
{
  result = qword_4EBE00;
  if (!qword_4EBE00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CF30()
{
  result = type metadata accessor for EpisodeOffer();
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

uint64_t EpisodeOfferAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v43 = *v3;
  v46 = sub_3EBF94();
  v49 = *(v46 - 8);
  __chkstk_darwin(v46);
  v39 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for EpisodeOffer();
  __chkstk_darwin(v9 - 8);
  v42 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_3EBDF4();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v38 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v37 - v15;
  __chkstk_darwin(v17);
  v19 = &v37 - v18;
  sub_3EBE04();
  sub_3EBDC4();
  if (v20)
  {
    v44 = v12;
    v47 = v11;
    v48 = a1;
    v21 = v45;
    v22 = v41;
    v23 = sub_3E9494();
    if (v22)
    {

      v24 = sub_3E9484();

      v41 = *(v44 + 8);
      v41(v19, v47);
    }

    else
    {
      v24 = v23;
      v41 = *(v44 + 8);
      v41(v19, v47);
    }

    v40 = v3;
    *(v3 + OBJC_IVAR____TtC8ShelfKit18EpisodeOfferAction_contentId) = v24;
    sub_3EBE04();
    v29 = *(v49 + 16);
    v30 = v21;
    v31 = v21;
    v32 = v46;
    v29(v8, v31, v46);
    v33 = v42;
    EpisodeOffer.init(deserializing:using:)(v16, v8, v42);
    sub_3D978(v33, v40 + OBJC_IVAR____TtC8ShelfKit18EpisodeOfferAction_episodeOffer);
    v35 = v38;
    (*(v44 + 16))(v38, v48, v47);
    v36 = v39;
    v29(v39, v30, v32);
    v26 = Action.init(deserializing:using:)(v35, v36);
    (*(v49 + 8))(v30, v32);
    v41(v48, v47);
  }

  else
  {
    v25 = *(v12 + 8);
    v25(v19, v11);
    v26 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v27 = *v3;
    *v28 = 0x49746E65746E6F63;
    v28[1] = 0xE900000000000064;
    v28[2] = v27;
    (*(*(v26 - 8) + 104))(v28, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    (*(v49 + 8))(v45, v46);
    v25(a1, v11);
    swift_deallocPartialClassInstance();
  }

  return v26;
}

uint64_t EpisodeOfferAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit18EpisodeOfferAction_episodeOffer);
  return v0;
}

uint64_t EpisodeOfferAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  sub_3D91C(v0 + OBJC_IVAR____TtC8ShelfKit18EpisodeOfferAction_episodeOffer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EpisodeOfferAction()
{
  result = qword_4EBEE8;
  if (!qword_4EBEE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ExternalUrlAction.__allocating_init(title:url:isSensitive:requiresSignedInUser:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v33 = a6;
  v34 = a5;
  v32 = a4;
  v37 = a1;
  v38 = a2;
  v7 = sub_3E5FC4();
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v12 = &v29 - v11;
  v30 = &v29 - v11;
  v13 = sub_3EC1F4();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v16;
  v17 = swift_allocObject();
  v18 = OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url;
  v19 = sub_3E5DC4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v17 + v18, a3, v19);
  *(v17 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = v32;
  *(v17 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = v34;
  v21 = v16;
  v22 = v33;
  (*(v14 + 16))(v21, v33, v13);
  v23 = sub_3EC634();
  (*(*(v23 - 8) + 56))(v12, 1, 1, v23);
  sub_3E5FB4();
  v24 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v26 = v25;
  (*(v14 + 8))(v22, v13);
  (*(v20 + 8))(a3, v19);
  (*(v35 + 8))(v9, v36);
  *(v17 + 16) = v24;
  *(v17 + 24) = v26;
  v27 = v38;
  *(v17 + 32) = v37;
  *(v17 + 40) = v27;
  *(v17 + 48) = 32;
  (*(v14 + 32))(v17 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v31, v13);
  sub_14A10(v30, v17 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v17;
}

uint64_t ExternalUrlAction.init(title:url:isSensitive:requiresSignedInUser:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6)
{
  v7 = v6;
  v34 = a6;
  v35 = a5;
  v33 = a4;
  v38 = a1;
  v39 = a2;
  v9 = sub_3E5FC4();
  v36 = *(v9 - 8);
  v37 = v9;
  __chkstk_darwin(v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v12 - 8);
  v14 = &v30 - v13;
  v31 = &v30 - v13;
  v15 = sub_3EC1F4();
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v18;
  v19 = OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url;
  v20 = sub_3E5DC4();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v7 + v19, a3, v20);
  *(v7 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = v33;
  *(v7 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = v35;
  v22 = v18;
  v23 = v34;
  (*(v16 + 16))(v22, v34, v15);
  v24 = sub_3EC634();
  (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
  sub_3E5FB4();
  v25 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v27 = v26;
  (*(v16 + 8))(v23, v15);
  (*(v21 + 8))(a3, v20);
  (*(v36 + 8))(v11, v37);
  *(v7 + 16) = v25;
  *(v7 + 24) = v27;
  v28 = v39;
  *(v7 + 32) = v38;
  *(v7 + 40) = v28;
  *(v7 + 48) = 32;
  (*(v16 + 32))(v7 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v32, v15);
  sub_14A10(v31, v7 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v7;
}

uint64_t ExternalUrlAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url;
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ExternalUrlAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = v2;
  v55 = a2;
  v52 = v4;
  v49 = *v4;
  v50 = v3;
  v54 = sub_3EBF94();
  v59 = *(v54 - 8);
  __chkstk_darwin(v54);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v7 - 8);
  v9 = &v45 - v8;
  v10 = sub_3EBDF4();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v47 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v45 - v14;
  __chkstk_darwin(v16);
  v18 = &v45 - v17;
  __chkstk_darwin(v19);
  v21 = &v45 - v20;
  v22 = sub_3E5DC4();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v51 = &v45 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a1;
  sub_3EBE04();
  sub_3EBD14();
  v46 = v11;
  v57 = *(v11 + 8);
  v58 = v10;
  v57(v21, v10);
  v25 = *(v23 + 48);
  v53 = v22;
  if (v25(v9, 1, v22) == 1)
  {
    sub_FCF8(v9, &unk_4E9EE0);
    v26 = sub_3ECEE4();
    sub_4D38C();
    swift_allocError();
    v27 = *v52;
    *v28 = 7107189;
    v28[1] = 0xE300000000000000;
    v28[2] = v27;
    (*(*(v26 - 8) + 104))(v28, enum case for JSONError.missingProperty(_:), v26);
    swift_willThrow();
    (*(v59 + 8))(v55, v54);
    v57(v56, v58);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v51;
    v30 = v9;
    v31 = v53;
    (*(v23 + 32))(v51, v30, v53);
    v32 = v52;
    (*(v23 + 16))(v52 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url, v29, v31);
    v33 = v56;
    sub_3EBE04();
    LOBYTE(v31) = sub_3EBD24();
    v34 = v18;
    v36 = v57;
    v35 = v58;
    v57(v34, v58);
    *(v32 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_isSensitive) = v31 & 1;
    sub_3EBE04();
    LOBYTE(v31) = sub_3EBD24();
    v36(v15, v35);
    *(v32 + OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_requiresSignedInUser) = v31 & 1;
    v37 = v47;
    (*(v46 + 16))(v47, v33, v35);
    v38 = v48;
    v40 = v54;
    v39 = v55;
    (*(v59 + 16))(v48, v55, v54);
    v41 = v37;
    v26 = v32;
    v42 = v50;
    v43 = Action.init(deserializing:using:)(v41, v38);
    if (!v42)
    {
      v26 = v43;
    }

    (*(v59 + 8))(v39, v40);
    v57(v33, v58);
    (*(v23 + 8))(v51, v53);
  }

  return v26;
}

uint64_t sub_5E5F4()
{
  v1 = OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url;
  v2 = sub_3E5DC4();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

uint64_t ExternalUrlAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v3 = OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url;
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t ExternalUrlAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_FCF8(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics, &unk_4E9170);
  v3 = OBJC_IVAR____TtC8ShelfKit17ExternalUrlAction_url;
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ExternalUrlAction()
{
  result = qword_4EBFD0;
  if (!qword_4EBFD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5E89C()
{
  result = sub_3E5DC4();
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

uint64_t FavoriteInterestAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FavoriteInterestAction() + 24);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for FavoriteInterestAction()
{
  result = qword_4EC0F8;
  if (!qword_4EC0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FavoriteInterestAction.init(adamID:interestContentKind:actionMetrics:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(type metadata accessor for FavoriteInterestAction() + 24);
  v9 = sub_3EC1F4();
  result = (*(*(v9 - 8) + 32))(a4 + v8, a3, v9);
  *(a4 + 8) = a2;
  *a4 = a1;
  return result;
}

uint64_t sub_5EAE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 250)
  {
    v4 = *(a1 + 8);
    if (v4 >= 6)
    {
      return v4 - 5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_3EC1F4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5EB9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 250)
  {
    *(result + 8) = a2 + 5;
  }

  else
  {
    v7 = sub_3EC1F4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_5EC3C()
{
  result = sub_3EC1F4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t FilterAction.title.getter()
{
  if (*(*v0 + 40))
  {
    v1 = *(*v0 + 32);
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t FilterAction.id.getter()
{
  v1 = *(*v0 + 16);

  return v1;
}

uint64_t FilterAction.hash(into:)()
{

  sub_3ED394();
}

uint64_t static FilterAction.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(*a1 + 16) == *(*a2 + 16) && *(*a1 + 24) == *(*a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_3EE804();
  }
}

Swift::Int FilterAction.hashValue.getter()
{
  sub_3EE954();

  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_5EE24@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 24);
  *a1 = *(*v1 + 16);
  a1[1] = v2;
}

Swift::Int sub_5EE34()
{
  sub_3EE954();

  sub_3ED394();

  return sub_3EE9A4();
}

unint64_t sub_5EE90(uint64_t a1)
{
  *(a1 + 8) = sub_5EEC0();
  result = sub_5EF14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_5EEC0()
{
  result = qword_4EC138;
  if (!qword_4EC138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC138);
  }

  return result;
}

unint64_t sub_5EF14()
{
  result = qword_4EC140;
  if (!qword_4EC140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC140);
  }

  return result;
}

unint64_t sub_5EF78()
{
  result = qword_4EC148;
  if (!qword_4EC148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC148);
  }

  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for FilterAction(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for FilterAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata accessor for FollowShowAction()
{
  result = qword_4EC1A8;
  if (!qword_4EC1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t FollowShowAction.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for FollowShowAction() + 24));

  return v1;
}

uint64_t FollowShowAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowShowAction() + 32);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowShowAction.notice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FollowShowAction() + 36);

  return sub_5F2B0(v3, a1);
}

uint64_t sub_5F2B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t FollowShowAction.notice.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for FollowShowAction() + 36);

  return sub_5F358(a1, v3);
}

uint64_t sub_5F358(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeModel();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t FollowShowAction.intent.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v1 - 8);
  sub_189AC(v0, &v4 - v2);
  type metadata accessor for FollowShowAction();

  return sub_3E6F84();
}

uint64_t FollowShowAction.init(feedURL:adamID:location:contentRating:notice:actionMetrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  sub_1893C(a1, a9);
  v17 = type metadata accessor for FollowShowAction();
  v18 = a9 + v17[5];
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  v19 = (a9 + v17[6]);
  *v19 = a4;
  v19[1] = a5;
  *(a9 + v17[7]) = a6 & 1;
  v20 = v17[8];
  v21 = sub_3EC1F4();
  (*(*(v21 - 8) + 32))(a9 + v20, a8, v21);
  v22 = a9 + v17[9];

  return sub_5F5E0(a7, v22);
}

uint64_t sub_5F5E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeModel();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_5F644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_3EC1F4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_5F6D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v1 - 8);
  sub_189AC(v0, &v4 - v2);

  return sub_3E6F84();
}

uint64_t sub_5F7C8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_3EC1F4();
    v15 = *(v14 - 8);
    if (*(v15 + 84) == a2)
    {
      v8 = v14;
      v9 = *(v15 + 48);
      v10 = a1 + a3[8];
      goto LABEL_3;
    }

    v16 = type metadata accessor for NoticeModel();
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[9];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_5F96C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[6] + 8) = a2;
    return result;
  }

  v13 = sub_3EC1F4();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[8];
    goto LABEL_3;
  }

  v15 = type metadata accessor for NoticeModel();
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[9];

  return v16(v17, a2, a2, v15);
}

void sub_5FAF0()
{
  sub_1F630();
  if (v0 <= 0x3F)
  {
    sub_5FBE4(319, &qword_4EC1B8);
    if (v1 <= 0x3F)
    {
      sub_5FBE4(319, &qword_4E9978);
      if (v2 <= 0x3F)
      {
        sub_3EC1F4();
        if (v3 <= 0x3F)
        {
          type metadata accessor for NoticeModel();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_5FBE4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_3EE0F4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t sub_5FC34()
{
  result = qword_4F1C60;
  if (!qword_4F1C60)
  {
    sub_3E6FA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4F1C60);
  }

  return result;
}

uint64_t FollowShowByURLAction.init(url:presentToast:actionMetrics:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_3E5DC4();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  v9 = type metadata accessor for FollowShowByURLAction();
  *(a4 + *(v9 + 20)) = a2;
  v10 = *(v9 + 24);
  v11 = sub_3EC1F4();
  v12 = *(*(v11 - 8) + 32);

  return v12(a4 + v10, a3, v11);
}

uint64_t type metadata accessor for FollowShowByURLAction()
{
  result = qword_4EC250;
  if (!qword_4EC250)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ReferenceLinkMetadataIntent.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_3E5DC4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ReferenceLinkMetadataIntent.url.setter(uint64_t a1)
{
  v3 = sub_3E5DC4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t FollowShowByURLAction.presentToast.setter(char a1)
{
  result = type metadata accessor for FollowShowByURLAction();
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t FollowShowByURLAction.actionMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FollowShowByURLAction() + 24);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FollowShowByURLAction.actionMetrics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FollowShowByURLAction() + 24);
  v4 = sub_3EC1F4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_60064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_3E5DC4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 254)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = sub_3EC1F4();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_601A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_3E5DC4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 254)
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  else
  {
    v11 = sub_3EC1F4();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_602C8()
{
  result = sub_3E5DC4();
  if (v1 <= 0x3F)
  {
    result = sub_3EC1F4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

ShelfKit::HttpActionMethod_optional __swiftcall HttpActionMethod.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v8._countAndFlagsBits = rawValue._countAndFlagsBits;
  v3 = v1;
  v4._rawValue = &off_4B02A8;
  v8._object = object;
  v5 = sub_3EE624(v4, v8);

  v7 = 8;
  if (v5 < 8)
  {
    v7 = v5;
  }

  *v3 = v7;
  return result;
}

uint64_t HttpActionMethod.rawValue.getter()
{
  v1 = *v0;
  v2 = 5522759;
  v3 = 0x534E4F4954504FLL;
  if (v1 != 6)
  {
    v3 = 0x4543415254;
  }

  v4 = 0x4554454C4544;
  if (v1 != 4)
  {
    v4 = 0x5443454E4E4F43;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 1145128264;
  if (v1 != 2)
  {
    v5 = 5526864;
  }

  if (*v0)
  {
    v2 = 1414745936;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

void sub_604B8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 5522759;
  v5 = 0xE700000000000000;
  v6 = 0x534E4F4954504FLL;
  if (v2 != 6)
  {
    v6 = 0x4543415254;
    v5 = 0xE500000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x4554454C4544;
  if (v2 != 4)
  {
    v8 = 0x5443454E4E4F43;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1145128264;
  if (v2 != 2)
  {
    v10 = 5526864;
    v9 = 0xE300000000000000;
  }

  if (*v1)
  {
    v4 = 1414745936;
    v3 = 0xE400000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
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

uint64_t HttpAction.__allocating_init(url:presentationStyle:actionMetrics:)(uint64_t a1, int a2, uint64_t a3)
{
  v6 = swift_allocObject();
  HttpAction.init(url:presentationStyle:actionMetrics:)(a1, a2, a3);
  return v6;
}

uint64_t HttpAction.init(url:presentationStyle:actionMetrics:)(uint64_t a1, int a2, uint64_t a3)
{
  v4 = v3;
  v32 = a2;
  v27 = a1;
  v7 = sub_3E5FC4();
  v30 = *(v7 - 8);
  v31 = v7;
  __chkstk_darwin(v7);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9170);
  __chkstk_darwin(v10 - 8);
  v29 = &v27 - v11;
  v12 = sub_3EC1F4();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = v15;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_method) = 0;
  v16 = OBJC_IVAR____TtC8ShelfKit10HttpAction_headers;
  *(v4 + v16) = sub_615E0(_swiftEmptyArrayStorage);
  v17 = (v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_body);
  *v17 = 0;
  v17[1] = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_isStoreRequest) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_needsAuthentication) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_retryCount) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_disableCache) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_successAction) = 0;
  *(v4 + OBJC_IVAR____TtC8ShelfKit10HttpAction_failureAction) = 0;
  v18 = OBJC_IVAR____TtC8ShelfKit10HttpAction_url;
  v19 = sub_3E5DC4();
  v20 = *(v19 - 8);
  (*(v20 + 16))(v4 + v18, a1, v19);
  (*(v13 + 16))(v15, a3, v12);
  v21 = sub_3EC634();
  v22 = v29;
  (*(*(v21 - 8) + 56))(v29, 1, 1, v21);
  sub_3E5FB4();
  v23 = _s8ShelfKit8RoomUberV13shelfUniqueIdSSvg_0();
  v25 = v24;
  (*(v13 + 8))(a3, v12);
  (*(v20 + 8))(v27, v19);
  (*(v30 + 8))(v9, v31);
  *(v4 + 16) = v23;
  *(v4 + 24) = v25;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = v32;
  (*(v13 + 32))(v4 + OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics, v28, v12);
  sub_14A10(v22, v4 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  return v4;
}

void HttpAction.__allocating_init(deserializing:using:)()
{
  sub_615E0(_swiftEmptyArrayStorage);
  sub_3EE574();
  __break(1u);
}

void HttpAction.init(deserializing:using:)()
{
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_method) = 0;
  v1 = OBJC_IVAR____TtC8ShelfKit10HttpAction_headers;
  *(v0 + v1) = sub_615E0(_swiftEmptyArrayStorage);
  v2 = (v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_body);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_isStoreRequest) = 0;
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_needsAuthentication) = 0;
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_retryCount) = 0;
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_disableCache) = 0;
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_successAction) = 0;
  *(v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_failureAction) = 0;
  sub_3EE574();
  __break(1u);
}

uint64_t HttpAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_url;
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HttpAction.method.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_method;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t HttpAction.method.setter(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_method;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t HttpAction.headers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_headers;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t HttpAction.body.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8ShelfKit10HttpAction_body);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t HttpAction.body.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8ShelfKit10HttpAction_body);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t HttpAction.isStoreRequest.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10HttpAction_isStoreRequest;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.isStoreRequest.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_isStoreRequest;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.needsAuthentication.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10HttpAction_needsAuthentication;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.needsAuthentication.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_needsAuthentication;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.retryCount.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10HttpAction_retryCount;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.retryCount.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_retryCount;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t HttpAction.disableCache.getter()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10HttpAction_disableCache;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t HttpAction.disableCache.setter(char a1)
{
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_disableCache;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_612EC(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t sub_613D0()
{
  v1 = OBJC_IVAR____TtC8ShelfKit10HttpAction_url;
  v2 = sub_3E5DC4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
}

uint64_t HttpAction.deinit()
{

  v1 = OBJC_IVAR____TtC8ShelfKit6Action_actionMetrics;
  v2 = sub_3EC1F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_3D9DC(v0 + OBJC_IVAR____TtC8ShelfKit6Action_impressionMetrics);
  v3 = OBJC_IVAR____TtC8ShelfKit10HttpAction_url;
  v4 = sub_3E5DC4();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t HttpAction.__deallocating_deinit()
{
  HttpAction.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_615E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBB08);
    v3 = sub_3EE5F4();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_552A8(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_616F8()
{
  result = qword_4EC290;
  if (!qword_4EC290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC290);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HttpActionMethod(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HttpActionMethod(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for HttpAction()
{
  result = qword_4EC2C0;
  if (!qword_4EC2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_618F0()
{
  result = sub_3E5DC4();
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

unint64_t sub_619F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBA68);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v11, &qword_4EC478);
      v5 = v11;
      result = sub_5B680(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1FB90(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_61B1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBA70);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v11, &qword_4EC470);
      v5 = v11;
      result = sub_5B680(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1FB90(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_61C44(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC460);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v11, &qword_4EC468);
      v5 = v11;
      result = sub_5B680(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1FB90(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_61DA8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_3EE5F4();

    for (i = (a1 + 48); ; i += 2)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v14 = *i;

      result = sub_552A8(v6, v7);
      if (v9)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v4[6] + 16 * result);
      *v10 = v6;
      v10[1] = v7;
      *(v4[7] + 16 * result) = v14;
      v11 = v4[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v4[2] = v13;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_61EB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EA1B8);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v13, &qword_4EC480);
      v5 = v13;
      v6 = v14;
      result = sub_552A8(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1FB90(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_61FE0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3F8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAF8);
    v7 = sub_3EE5F4();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4EC3F8);
      result = sub_55490(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E5FC4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7] + 24 * v13;
      v17 = *(v8 + 2);
      *v16 = *v8;
      *(v16 + 16) = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_621DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3F0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBA90);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4EC3F0);
      result = sub_55564(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E5DC4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_623C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3E8);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAF0);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4EC3E8);
      result = sub_55490(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E5FC4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_625AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAD8);
    v3 = sub_3EE5F4();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_552A8(v5, v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_626C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC450);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC458);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4EC450);
      result = sub_556BC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E77B4();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_628C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC410);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v11, &qword_4EC418);
      v5 = v11;
      result = sub_5B680(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1FB90(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_629EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC440);
    v3 = sub_3EE5F4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_55790(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_62ACC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EBAC0);
  v3 = sub_3EE5F4();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = *(a1 + 56);
  v5 = *(a1 + 72);
  result = sub_55790(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v8 = a1 + 80;
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v9 = v3[7] + 40 * result;
    *v9 = v14;
    *(v9 + 16) = v15;
    *(v9 + 32) = v5;
    v10 = v3[2];
    v11 = __OFADD__(v10, 1);
    v12 = v10 + 1;
    if (v11)
    {
      break;
    }

    v3[2] = v12;
    sub_5B42C(v14, *(&v14 + 1), v15);
    if (!--v1)
    {
      return v3;
    }

    v4 = *v8;
    v14 = *(v8 + 8);
    v15 = *(v8 + 24);
    v5 = *(v8 + 40);
    result = sub_55790(*v8);
    v8 += 48;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_62C24(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2);
    v4 = sub_3EE5F4();

    for (i = (a1 + 48); ; i += 3)
    {
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_552A8(v6, v7);
      if (v10)
      {
        break;
      }

      *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v4[6] + 16 * result);
      *v11 = v6;
      v11[1] = v7;
      *(v4[7] + 8 * result) = v8;
      v12 = v4[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v4[2] = v14;
      if (!--v2)
      {

        return v4;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_62D20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC430);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, &v15, &qword_4EC438);
      v5 = v15;
      v6 = v16;
      result = sub_552A8(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_62E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC420);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC428);
    v7 = sub_3EE5F4();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_FBD0(v9, v5, &qword_4EC420);
      result = sub_557FC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_3E7274();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_63038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC400);
    v3 = sub_3EE5F4();
    v4 = a1 + 32;

    while (1)
    {
      sub_FBD0(v4, v13, &qword_4EC408);
      result = sub_558D0(v13);
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
      result = sub_1FB90(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_63174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3D8);
    v3 = sub_3EE5F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_5B680(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_63264(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC3E0);
    v3 = sub_3EE5F4();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_5B680(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t HttpAction.loadOperation(bindingTo:)(uint64_t a1)
{
  v2 = v1;
  v41 = a1;
  v37 = sub_3ED284();
  v36 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_3E5DC4();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_3E5804();
  v39 = *(v8 - 8);
  v40 = v8;
  v9 = __chkstk_darwin(v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v2 + OBJC_IVAR____TtC8ShelfKit10HttpAction_url, v4, v9);
  sub_3E57C4();
  v12 = OBJC_IVAR____TtC8ShelfKit10HttpAction_headers;
  swift_beginAccess();
  v38 = v2;
  v13 = *(v2 + v12);
  v14 = 1 << *(v13 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v13 + 64);
  v17 = (v14 + 63) >> 6;

  v19 = 0;
  if (v16)
  {
    while (1)
    {
      v20 = v19;
LABEL_9:
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v22 = (v20 << 10) | (16 * v21);
      v23 = (*(v13 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v13 + 56) + v22);
      v28 = *v26;
      v27 = v26[1];

      v43.value._countAndFlagsBits = v28;
      v43.value._object = v27;
      v44._countAndFlagsBits = v24;
      v44._object = v25;
      sub_3E57F4(v43, v44);

      if (!v16)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      return result;
    }

    if (v20 >= v17)
    {
      break;
    }

    v16 = *(v13 + 64 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  v29 = v38;
  swift_beginAccess();
  sub_3E5784();
  v30 = v29 + OBJC_IVAR____TtC8ShelfKit10HttpAction_body;
  swift_beginAccess();
  if (*(v30 + 8))
  {

    v31 = v35;
    sub_3ED274();
    sub_3ED254();

    (*(v36 + 8))(v31, v37);
  }

  sub_3E57E4();
  swift_beginAccess();
  sub_3E5794();
  v32 = [objc_allocWithZone(IMURLRequestEncoder) initWithBag:0];
  [v32 setPersonalizeRequests:1];
  [v32 setUrlKnownToBeTrusted:1];
  v33 = sub_3E57A4();
  aBlock[4] = sub_63A7C;
  aBlock[5] = v41;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_63B88;
  aBlock[3] = &block_descriptor_0;
  v34 = _Block_copy(aBlock);

  [v32 prepareRequest:v33 completion:v34];
  _Block_release(v34);

  return (*(v39 + 8))(v11, v40);
}

void sub_63894(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = objc_opt_self();
    v6 = a1;
    v7 = [v5 defaultSession];
    aBlock[4] = sub_63C80;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_63B04;
    aBlock[3] = &block_descriptor_3;
    v8 = _Block_copy(aBlock);
    v9 = v6;

    v10 = [v7 dataTaskWithRequest:v9 completionHandler:v8];
    _Block_release(v8);

    [v10 resume];
  }

  else if (a2)
  {
    swift_errorRetain();
    sub_3ECDD4();
  }

  else
  {
    v11 = [objc_allocWithZone(NSError) initWithDomain:AMSErrorDomain code:0 userInfo:0];
    sub_3ECDD4();
  }
}

uint64_t sub_63A84(void *a1)
{
  if (![a1 object])
  {
    return sub_3ECDD4();
  }

  sub_3EE204();
  swift_unknownObjectRelease();
  sub_1FB90(&v2, v3);
  sub_3ECDE4();
  return __swift_destroy_boxed_opaque_existential_1Tm(v3);
}

void sub_63B04(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, v6);
}

void sub_63B88(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t HttpAction.start()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC488);
  v0 = sub_3ECE04();
  HttpAction.loadOperation(bindingTo:)(v0);
  return v0;
}

void sub_63C90(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);

    v20 = sub_3EE7F4();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject:v20 forKeyedSubscript:sub_3EE874()];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript:sub_3EE874()];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_3EE204();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_68264();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_FCF8(v26, &unk_501090);
    }

    v10 = [objc_allocWithZone(NSMutableDictionary) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject:v11 forKeyedSubscript:sub_3EE874()];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

NSMutableDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HttpTemplateJsonBody.makeMutableDictionary()()
{
  v0 = sub_3ED284();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3ED274();
  v4 = sub_3ED254();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_641CC();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = objc_opt_self();
    isa = sub_3E5DF4().super.isa;
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:isa options:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_3EE204();
      swift_unknownObjectRelease();
      sub_2F4AC(v17, v16);
      sub_68264();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        sub_681FC(v4, v6);
        return v15;
      }

      else
      {
        sub_641CC();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        sub_681FC(v4, v6);
        return __swift_destroy_boxed_opaque_existential_1Tm(v17);
      }
    }

    else
    {
      v13 = v12;
      sub_3E5B84();

      swift_willThrow();
      return sub_681FC(v4, v6);
    }
  }
}

unint64_t sub_641CC()
{
  result = qword_4EC490;
  if (!qword_4EC490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_4EC490);
  }

  return result;
}

unint64_t HttpTemplateJsonBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_3EE3C4(22);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_3ED3D4(v4);
  return 0xD000000000000014;
}

uint64_t sub_642BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_3EBDC4();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_3EBF94();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_3EBDF4();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a4 = v10;
    a4[1] = v11;
  }

  else
  {
    v15 = sub_3ECEE4();
    sub_69A04(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v16 = a3;
    v16[1] = _swiftEmptyArrayStorage;
    (*(*(v15 - 8) + 104))(v16, enum case for JSONError.malformedDocument(_:), v15);
    swift_willThrow();
    v17 = sub_3EBF94();
    (*(*(v17 - 8) + 8))(a2, v17);
    v18 = sub_3EBDF4();
    return (*(*(v18 - 8) + 8))(a1, v18);
  }

  return result;
}

uint64_t HttpTemplateFormBody.makeDictionary()()
{
  sub_68DC4();
  v0 = sub_3EE134();
  v1 = v0;
  v33 = *(v0 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0 + 40;
    v4 = _swiftEmptyDictionarySingleton;
    v32 = v0;
    while (v2 < *(v1 + 16))
    {

      v6 = sub_3EE134();
      if (v6[2] < 2uLL)
      {

        sub_641CC();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        return v4;
      }

      v7 = v6[4];
      v8 = v6[5];

      v9 = sub_3EE1A4();
      v11 = v10;

      if (v11)
      {
        v34 = v9;
        v35 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_552A8(v7, v8);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_58CC4();
          }
        }

        else
        {
          sub_55E4C(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_552A8(v7, v8);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_30;
          }

          v14 = v19;
        }

        v1 = v32;
        v24 = v4;
        if (v18)
        {
          v5 = (v4[7] + 16 * v14);
          *v5 = v34;
          v5[1] = v35;
        }

        else
        {
          v4[(v14 >> 6) + 8] |= 1 << v14;
          v25 = (v4[6] + 16 * v14);
          *v25 = v7;
          v25[1] = v8;
          v26 = (v4[7] + 16 * v14);
          *v26 = v34;
          v26[1] = v35;
          v27 = v4[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_29;
          }

          v4[2] = v29;
        }
      }

      else
      {
        v21 = sub_552A8(v7, v8);
        v23 = v22;

        if (v23)
        {
          v24 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_58CC4();
            v24 = v4;
          }

          sub_682B0(v21, v24);

          v1 = v32;
        }

        else
        {

          v24 = v4;
          v1 = v32;
        }
      }

      ++v2;
      v3 += 16;
      v4 = v24;
      if (v33 == v2)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_3EE894();
    __break(1u);
  }

  else
  {
    v24 = _swiftEmptyDictionarySingleton;
LABEL_24:

    return v24;
  }

  return result;
}

uint64_t static GroupedSearchResultsIntent.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_3EE804();
  }
}

unint64_t HttpTemplateFormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_3EE3C4(22);

  v4._countAndFlagsBits = v1;
  v4._object = v2;
  sub_3ED3D4(v4);
  return 0xD000000000000014;
}

uint64_t sub_64978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_3EBDC4();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_3EBF94();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_3EBDF4();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    v15 = sub_3ECEE4();
    sub_69A04(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    *v16 = v4;
    v16[1] = _swiftEmptyArrayStorage;
    (*(*(v15 - 8) + 104))(v16, enum case for JSONError.malformedDocument(_:), v15);
    swift_willThrow();
    v17 = sub_3EBF94();
    (*(*(v17 - 8) + 8))(a2, v17);
    v18 = sub_3EBDF4();
    return (*(*(v18 - 8) + 8))(a1, v18);
  }

  return result;
}

uint64_t HttpTemplateParameter.Target.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x79726575516C7275;
  }

  if (a1 == 1)
  {
    return 0x726564616568;
  }

  return 0x79646F426E6F736ALL;
}

uint64_t sub_64BBC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x726564616568;
  if (v2 != 1)
  {
    v4 = 0x79646F426E6F736ALL;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x79726575516C7275;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x726564616568;
  if (*a2 != 1)
  {
    v8 = 0x79646F426E6F736ALL;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x79726575516C7275;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_3EE804();
  }

  return v11 & 1;
}

Swift::Int sub_64CB8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_64D58()
{
  sub_3ED394();
}

Swift::Int sub_64DE4()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_64E80@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit21HttpTemplateParameterV6TargetO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_64EB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x726564616568;
  if (v2 != 1)
  {
    v5 = 0x79646F426E6F736ALL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x79726575516C7275;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t HttpTemplateParameter.InputType.rawValue.getter(unsigned __int8 a1)
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (a1 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (a1)
  {
    v1 = 0x6C69616D65;
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

uint64_t sub_64F8C(_BYTE *a1, _BYTE *a2)
{
  v2 = 1954047348;
  v3 = *a1;
  v4 = 0xE400000000000000;
  v5 = 0x6D754E656E6F6870;
  v6 = 0xEB00000000726562;
  if (v3 != 2)
  {
    v5 = 0x506C616D69636564;
    v6 = 0xEA00000000006461;
  }

  v7 = 0x6C69616D65;
  if (*a1)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v7 = 1954047348;
  }

  if (*a1 <= 1u)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v3 <= 1)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  v10 = 0xE400000000000000;
  v11 = 0x6D754E656E6F6870;
  v12 = 0xEB00000000726562;
  if (*a2 != 2)
  {
    v11 = 0x506C616D69636564;
    v12 = 0xEA00000000006461;
  }

  if (*a2)
  {
    v2 = 0x6C69616D65;
    v10 = 0xE500000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v2;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v10;
  }

  else
  {
    v14 = v12;
  }

  if (v8 == v13 && v9 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_3EE804();
  }

  return v15 & 1;
}

Swift::Int sub_650D8()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_6519C()
{
  sub_3ED394();
}

Swift::Int sub_6524C()
{
  sub_3EE954();
  sub_3ED394();

  return sub_3EE9A4();
}

uint64_t sub_6530C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s8ShelfKit21HttpTemplateParameterV9InputTypeO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_6533C(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

void __swiftcall HttpTemplateParameter.init(key:target:inputType:title:isRequired:maximumLength:)(ShelfKit::HttpTemplateParameter *__return_ptr retstr, Swift::String key, ShelfKit::HttpTemplateParameter::Target target, ShelfKit::HttpTemplateParameter::InputType inputType, Swift::String_optional title, Swift::Bool isRequired, Swift::Int_optional maximumLength)
{
  retstr->key = key;
  retstr->target = target;
  retstr->inputType = inputType;
  retstr->title = title;
  retstr->isRequired = isRequired;
  *(&retstr->maximumLength.value + 7) = maximumLength.value;
  LOBYTE(retstr[1].key._countAndFlagsBits) = maximumLength.is_nil;
}

uint64_t HttpTemplateParameter.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v40 = a2;
  v4 = 7955819;
  v5 = sub_3EBDF4();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v34 - v9;
  __chkstk_darwin(v11);
  v13 = &v34 - v12;
  v14 = 0xE300000000000000;
  sub_3EBE04();
  v37 = sub_3EBDC4();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    v39 = v16;
    v4 = 0x746567726174;
    sub_3EBE04();
    sub_6922C();
    sub_3EBCF4();
    v17(v10, v5);
    v18 = v42;
    if (v42 == 3)
    {

      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE900000000000065;
      sub_3EBE04();
      sub_69280();
      sub_3EBCF4();
      v17(v10, v5);
      v19 = v41;
      if (v41 != 4)
      {
        sub_3EBE04();
        v24 = sub_3EBDC4();
        v34 = v25;
        v35 = v24;
        v17(v10, v5);
        v26 = v36;
        sub_3EBE04();
        v27 = sub_3EBD24();
        v17(v26, v5);
        LODWORD(v36) = v27 & 1;
        sub_3EBE04();
        v28 = sub_3EBD04();
        LOBYTE(v26) = v29;
        v30 = sub_3EBF94();
        (*(*(v30 - 8) + 8))(v40, v30);
        v17(a1, v5);
        result = (v17)(v10, v5);
        v31 = v38;
        v32 = v39;
        *v38 = v37;
        v31[1] = v32;
        *(v31 + 16) = v18;
        *(v31 + 17) = v19;
        v33 = v34;
        v31[3] = v35;
        v31[4] = v33;
        *(v31 + 40) = v36;
        v31[6] = v28;
        *(v31 + 56) = v26 & 1;
        return result;
      }

      v4 = 0x7059547475706E69;
    }
  }

  v20 = sub_3ECEE4();
  sub_69A04(&qword_4E9AB8, &type metadata accessor for JSONError);
  swift_allocError();
  *v21 = v4;
  v21[1] = v14;
  v21[2] = &type metadata for HttpTemplateParameter;
  (*(*(v20 - 8) + 104))(v21, enum case for JSONError.missingProperty(_:), v20);
  swift_willThrow();
  v22 = sub_3EBF94();
  (*(*(v22 - 8) + 8))(v40, v22);
  return (v17)(a1, v5);
}

uint64_t ShowHero.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HttpTemplateSubstitutions.urlQuery.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.headers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.jsonBody.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.successAction.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_615E0(_swiftEmptyArrayStorage);
  sub_615E0(_swiftEmptyArrayStorage);
  sub_61EB0(_swiftEmptyArrayStorage);

  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  return result;
}

Swift::Void __swiftcall HttpTemplateSubstitutions.setParameter(value:for:)(Swift::String value, ShelfKit::HttpTemplateParameter *a2)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v6 = a2->key._countAndFlagsBits;
  v5 = a2->key._object;
  if (a2->target)
  {
    if (a2->target == ShelfKit_HttpTemplateParameter_Target_header)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9._countAndFlagsBits = v2[1];
      sub_3A1F0(countAndFlagsBits, object, v6, v5, isUniquelyReferenced_nonNull_native);

      v2[1] = v9._countAndFlagsBits;
    }

    else
    {
      v10 = &type metadata for String;
      v9 = value;

      sub_38EEC(&v9, v6, v5);
    }
  }

  else
  {

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v9._countAndFlagsBits = *v2;
    sub_3A1F0(countAndFlagsBits, object, v6, v5, v8);

    *v2 = v9._countAndFlagsBits;
  }
}

uint64_t sub_65BC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v89 - v7;
  v9 = sub_3E5994();
  v106 = *(v9 - 8);
  __chkstk_darwin(v9);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_503D70);
  __chkstk_darwin(v11 - 8);
  v13 = &v89 - v12;
  v14 = sub_3E59F4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v2;
  if (!*(v97 + 16))
  {
    v19 = sub_3E5DC4();
    return (*(*(v19 - 8) + 16))(a2, a1, v19);
  }

  sub_3E59C4();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_FCF8(v13, &qword_503D70);
    sub_641CC();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  (*(v15 + 32))(v95, v13, v14);
  v20 = sub_3E59A4();
  v93 = v8;
  v94 = v3;
  v90 = a2;
  v91 = v15;
  v92 = v14;
  if (!v20)
  {
    v23 = _swiftEmptyDictionarySingleton;
LABEL_31:
    v56 = (v97 + 64);
    v57 = 1 << *(v97 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v97 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    v104 = v60;
    v105 = v56;
    while (v59)
    {
      v64 = v61;
LABEL_41:
      v65 = (v64 << 10) | (16 * __clz(__rbit64(v59)));
      v66 = (*(v97 + 48) + v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = (*(v97 + 56) + v65);
      v70 = v69[1];
      v106 = *v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v72 = sub_552A8(v68, v67);
      v74 = v23[2];
      v75 = (v73 & 1) == 0;
      v54 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v54)
      {
        goto LABEL_56;
      }

      v77 = v73;
      if (v23[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v72;
          sub_58CC4();
          v72 = v83;
        }
      }

      else
      {
        sub_55E4C(v76, isUniquelyReferenced_nonNull_native);
        v72 = sub_552A8(v68, v67);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_59;
        }
      }

      v59 &= v59 - 1;
      if (v77)
      {
        v62 = v72;

        v23 = v107;
        v63 = (v107[7] + 16 * v62);
        *v63 = v106;
        v63[1] = v70;
      }

      else
      {
        v23 = v107;
        v107[(v72 >> 6) + 8] |= 1 << v72;
        v79 = (v23[6] + 16 * v72);
        *v79 = v68;
        v79[1] = v67;
        v80 = (v23[7] + 16 * v72);
        *v80 = v106;
        v80[1] = v70;
        v81 = v23[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_58;
        }

        v23[2] = v82;
      }

      v61 = v64;
      v60 = v104;
      v56 = v105;
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *&v56[8 * v64];
      ++v61;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    sub_6646C(v23);

    v84 = v95;
    sub_3E59B4();
    v85 = v93;
    sub_3E59D4();
    v86 = sub_3E5DC4();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v85, 1, v86) == 1)
    {
      sub_FCF8(v85, &unk_4E9EE0);
      sub_641CC();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();
      return (*(v91 + 8))(v84, v92);
    }

    else
    {
      (*(v91 + 8))(v84, v92);
      return (*(v87 + 32))(v90, v85, v86);
    }
  }

  v21 = v20;
  v102 = *(v20 + 16);
  if (!v102)
  {
    v23 = _swiftEmptyDictionarySingleton;
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
  v100 = v20 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v98 = v106 + 8;
  v99 = v106 + 16;
  v23 = _swiftEmptyDictionarySingleton;
  v96 = v9;
  v101 = v20;
  while (v22 < *(v21 + 16))
  {
    v25 = v23;
    v26 = v105;
    v27 = v106;
    (*(v106 + 16))(v105, v100 + *(v106 + 72) * v22, v9);
    v28 = sub_3E5974();
    v30 = v29;
    v31 = sub_3E5984();
    v33 = v32;
    (*(v27 + 8))(v26, v9);
    if (!v33)
    {
      v47 = sub_552A8(v28, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v23 = v25;
        if (!v50)
        {
          sub_58CC4();
          v23 = v107;
        }

        sub_682B0(v47, v23);
        v21 = v101;
      }

      else
      {
        v23 = v25;
        v21 = v101;
      }

      goto LABEL_10;
    }

    v103 = v33;
    v104 = v31;
    v21 = v101;
    v34 = v25;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v25;
    v36 = v28;
    v38 = sub_552A8(v28, v30);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_55;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        sub_58CC4();
      }

      v43 = v30;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_55E4C(v41, v35);
      v43 = v30;
      v44 = sub_552A8(v36, v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_59;
      }

      v38 = v44;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
LABEL_25:
        v23 = v107;
        v107[(v38 >> 6) + 8] |= 1 << v38;
        v51 = (v23[6] + 16 * v38);
        *v51 = v36;
        v51[1] = v43;
        v52 = (v23[7] + 16 * v38);
        *v52 = v104;
        v52[1] = v46;
        v53 = v23[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_57;
        }

        v23[2] = v55;
        goto LABEL_9;
      }
    }

    v23 = v107;
    v24 = (v107[7] + 16 * v38);
    *v24 = v104;
    v24[1] = v46;

LABEL_9:
    v9 = v96;
LABEL_10:
    if (v102 == ++v22)
    {
      goto LABEL_30;
    }
  }

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
  result = sub_3EE894();
  __break(1u);
  return result;
}

uint64_t sub_6646C(uint64_t a1)
{
  v32 = sub_3E5994();
  v3 = *(v32 - 8);
  __chkstk_darwin(v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = _swiftEmptyArrayStorage;
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = _swiftEmptyArrayStorage;
  sub_41B04(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_3EE254();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_3E5964();

    v35 = v7;
    v17 = v7[2];
    v16 = v7[3];
    if (v17 >= v16 >> 1)
    {
      sub_41B04(v16 > 1, v17 + 1, 1);
      v7 = v35;
    }

    v7[2] = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_69A4C(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_69A4C(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_667B8(void *a1)
{
  v3 = *(v1 + 8);
  v4 = v3 + 64;
  v5 = 1 << *(v3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(v3 + 64);
  v8 = (v5 + 63) >> 6;
  v35 = v3;

  v9 = 0;
  v34 = v4;
  while (v7)
  {
    v12 = v9;
LABEL_11:
    v13 = (v12 << 10) | (16 * __clz(__rbit64(v7)));
    v14 = (*(v35 + 48) + v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v35 + 56) + v13);
    v18 = v17[1];
    v36 = *v17;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = sub_552A8(v16, v15);
    v22 = a1[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v21;
    if (a1[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v32 = v20;
        sub_58CC4();
        v20 = v32;
      }
    }

    else
    {
      sub_55E4C(v25, isUniquelyReferenced_nonNull_native);
      v20 = sub_552A8(v16, v15);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v7 &= v7 - 1;
    if (v26)
    {
      v10 = v20;

      v11 = (a1[7] + 16 * v10);
      *v11 = v36;
      v11[1] = v18;
    }

    else
    {
      a1[(v20 >> 6) + 8] |= 1 << v20;
      v28 = (a1[6] + 16 * v20);
      *v28 = v16;
      v28[1] = v15;
      v29 = (a1[7] + 16 * v20);
      *v29 = v36;
      v29[1] = v18;
      v30 = a1[2];
      v24 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      a1[2] = v31;
    }

    v9 = v12;
    v4 = v34;
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return a1;
    }

    v7 = *(v4 + 8 * v12);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_3EE894();
  __break(1u);
  return result;
}

void sub_669F8(void *a1)
{
  v3 = sub_3ED284();
  __chkstk_darwin(v3 - 8);
  v5 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[1];
  if (v6)
  {
    v7 = *(v1 + 16);
    *&v42 = *a1;
    *(&v42 + 1) = v6;
    v8.super.super.isa = HttpTemplateJsonBody.makeMutableDictionary()().super.super.isa;
    if (!v9)
    {
      v34[1] = v5;
      v34[2] = 0;
      isa = v8.super.super.isa;
      v10 = 1 << *(v7 + 32);
      v11 = -1;
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      v12 = v11 & *(v7 + 64);
      v13 = (v10 + 63) >> 6;

      v14 = 0;
      if (!v12)
      {
        goto LABEL_9;
      }

LABEL_8:
      v15 = v14;
LABEL_16:
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v19 = v18 | (v15 << 6);
      v20 = (*(v7 + 48) + 16 * v19);
      v22 = *v20;
      v21 = v20[1];
      sub_2F4AC(*(v7 + 56) + 32 * v19, v38);
      *&v39 = v22;
      *(&v39 + 1) = v21;
      sub_1FB90(v38, &v40);

      v17 = v15;
      while (1)
      {
        v42 = v39;
        v43[0] = v40;
        v43[1] = v41;
        v23 = *(&v39 + 1);
        if (!*(&v39 + 1))
        {
          break;
        }

        v24 = v42;
        sub_1FB90(v43, &v39);
        *&v38[0] = v24;
        *(&v38[0] + 1) = v23;
        v36 = 46;
        v37 = 0xE100000000000000;
        sub_68DC4();
        v25 = sub_3EE134();

        sub_63C90(&v39, v25);

        __swift_destroy_boxed_opaque_existential_1Tm(&v39);
        v14 = v17;
        if (v12)
        {
          goto LABEL_8;
        }

LABEL_9:
        if (v13 <= v14 + 1)
        {
          v16 = v14 + 1;
        }

        else
        {
          v16 = v13;
        }

        v17 = v16 - 1;
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            __break(1u);
          }

          if (v15 >= v13)
          {
            break;
          }

          v12 = *(v7 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            goto LABEL_16;
          }
        }

        v12 = 0;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
      }

      v26 = objc_opt_self();
      *&v42 = 0;
      v27 = isa;
      v28 = [v26 dataWithJSONObject:isa options:0 error:&v42];
      v29 = v42;
      if (v28)
      {
        v30 = sub_3E5E04();
        v32 = v31;

        sub_3ED274();
        sub_3ED264();

        sub_68210(v30, v32);
      }

      else
      {
        v33 = v29;
        sub_3E5B84();

        swift_willThrow();
      }
    }
  }
}

void *HttpTemplateAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v111 = a2;
  v108 = v3;
  v96 = *v3;
  v5 = sub_3EBF94();
  v109 = *(v5 - 8);
  v110 = v5;
  __chkstk_darwin(v5);
  v104 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v100 = &v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC4B8);
  __chkstk_darwin(v9 - 8);
  v106 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_4E9EE0);
  __chkstk_darwin(v11 - 8);
  v13 = &v90 - v12;
  v14 = sub_3EBDF4();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v102 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v101 = &v90 - v18;
  __chkstk_darwin(v19);
  v99 = &v90 - v20;
  __chkstk_darwin(v21);
  v98 = &v90 - v22;
  __chkstk_darwin(v23);
  v97 = &v90 - v24;
  __chkstk_darwin(v25);
  v95 = &v90 - v26;
  __chkstk_darwin(v27);
  v29 = &v90 - v28;
  __chkstk_darwin(v30);
  v32 = &v90 - v31;
  v33 = sub_3E5DC4();
  v34 = *(v33 - 8);
  __chkstk_darwin(v33);
  v36 = &v90 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = a1;
  sub_3EBE04();
  sub_3EBD14();
  v37 = v33;
  v103 = v15;
  v40 = *(v15 + 8);
  v38 = v15 + 8;
  v39 = v40;
  v113 = v14;
  (v40)(v32, v14);
  if ((*(v34 + 48))(v13, 1, v37) == 1)
  {
    sub_FCF8(v13, &unk_4E9EE0);
    v41 = sub_3ECEE4();
    sub_69A04(&qword_4E9AB8, &type metadata accessor for JSONError);
    swift_allocError();
    v42 = v108;
    v43 = *v108;
    *v44 = 7107189;
    v44[1] = 0xE300000000000000;
    v44[2] = v43;
    (*(*(v41 - 8) + 104))(v44, enum case for JSONError.missingProperty(_:), v41);
    swift_willThrow();
    (*(v109 + 8))(v111, v110);
    (v39)(v107, v113);
    swift_deallocPartialClassInstance();
    return v42;
  }

  (*(v34 + 32))(v36, v13, v37);
  v94 = v34;
  v45 = *(v34 + 16);
  v46 = v108;
  v93 = v36;
  v96 = v37;
  v45(v108 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_url, v36, v37);
  v47 = v107;
  sub_3EBE04();
  sub_692D4();
  sub_3EBCC4();
  v48 = v113;
  (v39)(v29, v113);
  *(v46 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_method) = v112;
  v49 = v95;
  sub_3EBE04();
  v50 = v39;
  v51 = v106;
  sub_3EBCB4();
  v95 = v50;
  (v50)(v49, v48);
  v52 = sub_3EC344();
  v53 = *(v52 - 8);
  v54 = (*(v53 + 48))(v51, 1, v52);
  v92 = v38;
  if (v54 == 1)
  {
    sub_FCF8(v106, &qword_4EC4B8);
    v55 = v109;
LABEL_6:
    v57 = sub_615E0(_swiftEmptyArrayStorage);

    goto LABEL_7;
  }

  v56 = v106;
  v57 = sub_3EC334();
  (*(v53 + 8))(v56, v52);
  v55 = v109;
  if (!v57)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v46 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_headers) = v57;
  sub_3EBE04();
  v58 = *(v55 + 16);
  v59 = v100;
  v60 = v110;
  v61 = v46;
  v62 = v111;
  v58(v100);
  v91 = v58;
  v106 = v55 + 16;
  sub_69328();
  sub_3EC574();
  *(v61 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_body) = v112;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_4EC4D0);
  sub_3EBE04();
  (v58)(v59, v62, v60);
  sub_6937C();
  sub_3EC574();
  v63 = v112;
  if (!v112)
  {
    v63 = _swiftEmptyArrayStorage;
  }

  v42 = v108;
  *(v108 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_parameters) = v63;
  v64 = v97;
  sub_3EBE04();
  v65 = sub_3EBD24();
  v66 = v113;
  v67 = v95;
  (v95)(v64, v113);
  *(v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_isStoreRequest) = v65 & 1;
  v68 = v98;
  sub_3EBE04();
  v69 = sub_3EBD24();
  v67(v68, v66);
  *(v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_needsAuthentication) = v69 & 1;
  v70 = v99;
  sub_3EBE04();
  v71 = sub_3EBD04();
  LOBYTE(v68) = v72;
  v67(v70, v66);
  if (v68)
  {
    v73 = 0;
  }

  else
  {
    v73 = v71;
  }

  *(v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_retryCount) = v73;
  v74 = v101;
  sub_3EBE04();
  v75 = sub_3EBD24();
  v67(v74, v66);
  *(v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_disableCache) = v75 & 1;
  sub_3EBE04();
  v76 = v111;
  Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v67(v29, v66);
  *(v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_successAction) = Instance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0;
  sub_3EBE04();
  v78 = _s8ShelfKit6ActionC17tryToMakeInstance15byDeserializing5usingACSg9JetEngine10JSONObjectV_AH11JSONContextVtFZ_0();
  v67(v29, v66);
  *(v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_failureAction) = v78;
  sub_3EBE04();
  v79 = sub_3EBDC4();
  v81 = v80;
  v82 = v29;
  v83 = v110;
  v67(v82, v66);
  v84 = (v42 + OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_message);
  *v84 = v79;
  v84[1] = v81;
  v85 = v102;
  (*(v103 + 16))(v102, v47, v66);
  v86 = v104;
  v91(v104, v76, v83);
  v87 = v105;
  v88 = Action.init(deserializing:using:)(v85, v86);
  if (!v87)
  {
    v42 = v88;
  }

  (*(v109 + 8))(v76, v83);
  v67(v107, v113);
  (*(v94 + 8))(v93, v96);
  return v42;
}

uint64_t HttpTemplateAction.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8ShelfKit18HttpTemplateAction_url;
  v4 = sub_3E5DC4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}