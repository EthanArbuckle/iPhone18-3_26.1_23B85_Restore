unint64_t sub_1002E11B4(unsigned __int8 a1, uint64_t a2)
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

unint64_t sub_1002E1224(uint64_t a1, uint64_t a2)
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

unint64_t sub_1002E1290(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x694C7265646C6F66;
    }

    else
    {
      v6 = 0xD000000000000011;
    }

    if (a1)
    {
      v7 = 0xEA00000000007473;
    }

    else
    {
      v7 = 0x800000010055CDF0;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x694C7265646C6F66 : 0xD000000000000011;
      v9 = *(*(v2 + 48) + v4) ? 0xEA00000000007473 : 0x800000010055CDF0;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t sub_1002E13D4(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    sub_1000054A4(0, a3);
    do
    {
      v7 = *(*(v3 + 48) + 8 * v5);
      v8 = static NSObject.== infix(_:_:)();

      if (v8)
      {
        break;
      }

      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1002E14A0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      v7 = v6 == 2 ? 0x6D756964656DLL : 0x656772616CLL;
      v8 = v6 == 2 ? 0xE600000000000000 : 0xE500000000000000;
      v9 = *(*(v23 + 48) + v4) ? 0x6C6C616D73 : 0x53746C7561666564;
      v10 = *(*(v23 + 48) + v4) ? 0xE500000000000000 : 0xEB00000000657A69;
      v11 = *(*(v23 + 48) + v4) <= 1u ? v9 : v7;
      v12 = *(*(v23 + 48) + v4) <= 1u ? v10 : v8;
      v13 = v5 == 2 ? 0x6D756964656DLL : 0x656772616CLL;
      v14 = v5 == 2 ? 0xE600000000000000 : 0xE500000000000000;
      v15 = v5 ? 0x6C6C616D73 : 0x53746C7561666564;
      v16 = v5 ? 0xE500000000000000 : 0xEB00000000657A69;
      v17 = v5 <= 1 ? v15 : v13;
      v18 = v5 <= 1 ? v16 : v14;
      if (v11 == v17 && v12 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1002E1640(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        v7 = 0xE600000000000000;
        if (*(*(v2 + 48) + v4) == 1)
        {
          v8 = 0x65766F6D6572;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_14;
          }
        }

        else
        {
          v8 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_14:
            v11 = 0xE300000000000000;
            if (v8 != 6579297)
            {
              goto LABEL_16;
            }

            goto LABEL_15;
          }
        }
      }

      else
      {
        v7 = 0xE300000000000000;
        v8 = 6579297;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_14;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x65766F6D6572;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      v11 = 0xE600000000000000;
      if (v8 != v10)
      {
        goto LABEL_16;
      }

LABEL_15:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_16:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

unint64_t sub_1002E17B0(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0xE700000000000000;
          v8 = 0x6B636568636E75;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v7 = 0xE600000000000000;
          v8 = 0x656C67676F74;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE500000000000000;
            if (v8 != 0x6B63656863)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v7 = 0xE500000000000000;
        v8 = 0x6B63656863;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x6B636568636E75;
      }

      else
      {
        v10 = 0x656C67676F74;
      }

      if (v9 == 1)
      {
        v11 = 0xE700000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v8 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v7 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t sub_1002E1938(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10015DA04(&qword_1006BDD00);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v41 = v8;
    v42 = v5;
    v34 = v2;
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
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v40 = *(v6 + 72);
      v25 = v24 + v40 * v23;
      if (v38)
      {
        (*v39)(v41, v25, v42);
        sub_100192680((*(v9 + 56) + 40 * v23), v43);
      }

      else
      {
        (*v35)(v41, v25, v42);
        sub_1002EC1FC(*(v9 + 56) + 40 * v23, v43);
      }

      sub_1002ED028(&qword_1006C07C8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
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
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v39)((*(v11 + 48) + v40 * v19), v41, v42);
      result = sub_100192680(v43, *(v11 + 56) + 40 * v19);
      ++*(v11 + 16);
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

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
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

uint64_t sub_1002E1D1C(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for DisplayRepresentation();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for FolderID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10015DA04(&qword_1006C3738);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1002ED028(&qword_1006C1B50, &type metadata accessor for FolderID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1002E21C4(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_10015DA04(&qword_1006BE8D0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v46 = &v40 - v7;
  v8 = *v2;
  sub_10015DA04(&qword_1006BDD38);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v41 = v2;
    v42 = (v6 + 16);
    v43 = v8;
    v44 = v6;
    v47 = (v6 + 32);
    v17 = result + 64;
    v51 = v5;
    v18 = v46;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v22 = (v15 - 1) & v15;
LABEL_15:
      v25 = v21 | (v11 << 6);
      v26 = *(v8 + 48) + *(v44 + 72) * v25;
      v27 = 24 * v25;
      v49 = *(v44 + 72);
      v50 = v22;
      if (v45)
      {
        (*v47)(v18, v26, v51);
        v28 = *(v8 + 56) + v27;
        v29 = *(v28 + 8);
        v48 = *v28;
        v30 = *(v28 + 16);
      }

      else
      {
        (*v42)(v18, v26, v51);
        v31 = *(v8 + 56) + v27;
        v29 = *(v31 + 8);
        v30 = *(v31 + 16);
        v48 = *v31;
        sub_1001CD894(v48, v29, v30);
      }

      sub_1000060B4(&qword_1006C3710, &qword_1006BE8D0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v18 = v46;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v17 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v18 = v46;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v47)(*(v10 + 48) + v49 * v19, v18, v51);
      v20 = *(v10 + 56) + 24 * v19;
      *v20 = v48;
      *(v20 + 8) = v29;
      *(v20 + 16) = v30;
      ++*(v10 + 16);
      v8 = v43;
      v15 = v50;
    }

    v23 = v11;
    while (1)
    {
      v11 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v24 = v12[v11];
      ++v23;
      if (v24)
      {
        v21 = __clz(__rbit64(v24));
        v22 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v12, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v39;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1002E25D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC88);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1002E2840(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_10015DA04(&qword_1006BDC98);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v55 = v5;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v44 = v2;
    v45 = (v6 + 16);
    v46 = v8;
    v47 = v6;
    v50 = (v6 + 32);
    v17 = result + 64;
    v18 = v49;
    while (v15)
    {
      v22 = __clz(__rbit64(v15));
      v23 = (v15 - 1) & v15;
LABEL_15:
      v26 = v22 | (v11 << 6);
      v27 = *(v8 + 48) + *(v47 + 72) * v26;
      v53 = *(v47 + 72);
      v54 = v23;
      if (v48)
      {
        (*v50)(v18, v27, v55);
        v28 = (*(v8 + 56) + 32 * v26);
        v29 = *v28;
        v51 = v28[1];
        v52 = v29;
        v31 = v28[2];
        v30 = v28[3];
      }

      else
      {
        (*v45)(v18, v27, v55);
        v32 = (*(v8 + 56) + 32 * v26);
        v33 = v32[1];
        v31 = v32[2];
        v30 = v32[3];
        v52 = *v32;
        swift_errorRetain();
        v34 = v30;
        v51 = v33;

        v35 = v31;
      }

      sub_1002ED028(&qword_1006C07C0, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v10 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v17 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        v18 = v49;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v17 + 8 * v38);
          if (v42 != -1)
          {
            v19 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v37) & ~*(v17 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
      v18 = v49;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v50)(*(v10 + 48) + v53 * v19, v18, v55);
      v20 = (*(v10 + 56) + 32 * v19);
      v21 = v51;
      *v20 = v52;
      v20[1] = v21;
      v20[2] = v31;
      v20[3] = v30;
      ++*(v10 + 16);
      v8 = v46;
      v15 = v54;
    }

    v24 = v11;
    while (1)
    {
      v11 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v25 = v12[v11];
      ++v24;
      if (v25)
      {
        v22 = __clz(__rbit64(v25));
        v23 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_34;
    }

    v43 = 1 << *(v8 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v12, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v43;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1002E2C64(uint64_t a1, int a2)
{
  v3 = v2;
  v52 = type metadata accessor for DisplayRepresentation();
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NoteID();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_10015DA04(&qword_1006C3718);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
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
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1002ED028(&qword_1006C5320, &type metadata accessor for NoteID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1002E310C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006C36D0);
  v31 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v20 = *(*(v5 + 56) + 8 * v19);
      v32 = *(*(v5 + 48) + 16 * v19);
      v21 = *(*(v5 + 48) + 16 * v19 + 8);
      if ((v31 & 1) == 0)
      {

        v22 = v20;
      }

      Hasher.init(_seed:)();
      if (v21)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 16 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_36;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_36:
  *v3 = v7;
  return result;
}

uint64_t sub_1002E33D0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC48);
  v35 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_10001FA64(v22, v36);
      }

      else
      {
        sub_10000A2A0(v22, v36);
        v23 = v21;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v24 = Hasher._finalize()();

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
      result = sub_10001FA64(v36, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1002E36C8(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10015DA04(&qword_1006BDD50);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        swift_errorRetain();
      }

      sub_1002ED028(&qword_1006C07C0, &type metadata accessor for URL);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

uint64_t sub_1002E3AA4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC50);
  v30 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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

uint64_t sub_1002E3D34(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDCB8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = static Hasher._hash(seed:_:)();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1002E3F98(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC78);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
        sub_10001FA64((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_100024F40(v23, &v36);
        sub_10000A2A0(*(v5 + 56) + 32 * v22, v35);
      }

      result = AnyHashable._rawHashValue(seed:)(*(v7 + 40));
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
      result = sub_10001FA64(v35, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_1002E4250(uint64_t a1, char a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *v3;
  sub_10015DA04(a3);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v6 + 16))
  {
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = v18 | (v9 << 6);
      v22 = (*(v6 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v6 + 56) + 8 * v21);
      if ((v36 & 1) == 0)
      {

        v26 = v25;
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v6 = v35;
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

    if ((v36 & 1) == 0)
    {

      v4 = v3;
      goto LABEL_33;
    }

    v34 = 1 << *(v6 + 32);
    v4 = v3;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v6 + 16) = 0;
  }

LABEL_33:
  *v4 = v8;
  return result;
}

uint64_t sub_1002E44EC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDD30);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1002E478C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_10015DA04(&qword_1006BDDB0);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v49 = v8;
    v40 = v2;
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
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v48 = *(v43 + 72);
      v27 = v26 + v48 * v25;
      if (v44)
      {
        (*v45)(v49, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v46 = v28[1];
        v47 = v29;
      }

      else
      {
        (*v41)(v49, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v46 = v30[1];
        v47 = v31;
      }

      sub_1002ED028(&qword_1006C07C8, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v18 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v18 + 8 * v34);
          if (v38 != -1)
          {
            v19 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v33) & ~*(v18 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v45)(*(v11 + 48) + v48 * v19, v49, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v46;
      *v20 = v47;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v42;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1002E4B74(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  v35 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10015DA04(&qword_1006BDD28);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v2;
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
    v16 = result + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + 8 * v21);
      v23 = *(v35 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v36)
      {
        sub_1002EC194(v24, v37, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
      }

      else
      {
        sub_1002EC12C(v24, v37, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v25 = -1 << *(v9 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v16 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v16 + 8 * v27);
          if (v31 != -1)
          {
            v17 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v26) & ~*(v16 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v22;
      result = sub_1002EC194(v37, *(v9 + 56) + v23 * v17, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v32 = 1 << *(v7 + 32);
    v3 = v34;
    if (v32 >= 64)
    {
      bzero((v7 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1002E4ED0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC80);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      if ((a2 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
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
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
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

    if (a2)
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

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1002E5134(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006C3698);
  v34 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
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
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1002E53D0(uint64_t a1, int a2)
{
  v3 = v2;
  v45 = type metadata accessor for CSVType();
  v5 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_10015DA04(&qword_1006BDCE8);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

uint64_t sub_1002E5750(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC60);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = a2;
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
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
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
        goto LABEL_33;
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
      goto LABEL_31;
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

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1002E59D4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  sub_10015DA04(&qword_1006BDC58);
  v38 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
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
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 32 * v21);
      v23 = v22[1];
      v24 = v22[3];
      v40 = v22[2];
      v41 = *v22;
      v25 = *(v5 + 56) + 24 * v21;
      v26 = *v25;
      v27 = *(v25 + 8);
      v39 = *(v25 + 16);
      if ((v38 & 1) == 0)
      {

        sub_1001912A0(v26, v27);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      if (v24)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
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

LABEL_38:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v41;
      v16[1] = v23;
      v16[2] = v40;
      v16[3] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v26;
      *(v17 + 8) = v27;
      *(v17 + 16) = v39;
      ++*(v7 + 16);
      v5 = v37;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if (v38)
    {
      v35 = 1 << *(v5 + 32);
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

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1002E5CF8(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002DF048(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002E7BFC();
      goto LABEL_7;
    }

    sub_1002E1938(v17, a3 & 1);
    v23 = sub_1002DF048(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1002E7648(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 40 * v14;
  sub_100009F60(v21);

  return sub_100192680(a1, v21);
}

uint64_t sub_1002E5ED4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for FolderID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002DF134(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002E854C(&type metadata accessor for FolderID, &qword_1006C3738);
      goto LABEL_7;
    }

    sub_1002E1D1C(v17, a3 & 1);
    v28 = sub_1002DF134(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1002E78C0(v14, v11, a1, v20, &type metadata accessor for FolderID);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for DisplayRepresentation();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_1002E6110(uint64_t a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v6 = v5;
  v30 = a1;
  v31 = a2;
  v10 = sub_10015DA04(&qword_1006BE8D0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v30 - v12;
  v14 = *v5;
  v16 = sub_1002DF478(a4);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a5 & 1) == 0)
  {
    if (v21 >= v19 && (a5 & 1) == 0)
    {
      sub_1002E7E84();
      goto LABEL_9;
    }

    sub_1002E21C4(v19, a5 & 1);
    v22 = sub_1002DF478(a4);
    if ((v20 & 1) == (v23 & 1))
    {
      v16 = v22;
      goto LABEL_9;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_9:
  v24 = v31;
  v25 = *v6;
  if (v20)
  {
    v26 = v25[7] + 24 * v16;
    v27 = *v26;
    v28 = *(v26 + 8);
    *v26 = v30;
    *(v26 + 8) = v24;
    v29 = *(v26 + 16);
    *(v26 + 16) = a3;

    sub_1002E6310(v27, v28, v29);
  }

  else
  {
    (*(v11 + 16))(v13, a4, v10);
    sub_1002E770C(v16, v13, v30, v24, a3, v25);
  }
}

void sub_1002E6310(void *a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 2:

      break;
    case 1:

      break;
    case 0:

      break;
  }
}

void sub_1002E6384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v34 = a3;
  v35 = a4;
  v33 = a2;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1002DF3A4(a5);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 < v20 || (a6 & 1) == 0)
  {
    if (v22 >= v20 && (a6 & 1) == 0)
    {
      sub_1002E828C();
      goto LABEL_7;
    }

    sub_1002E2840(v20, a6 & 1);
    v30 = sub_1002DF3A4(a5);
    if ((v21 & 1) == (v31 & 1))
    {
      v17 = v30;
      v23 = *v7;
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v12 + 16))(v14, a5, v11);
      sub_1002E77EC(v17, v14, a1, v33, v34, v35, v23);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v23 = *v7;
  if ((v21 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v24 = (v23[7] + 32 * v17);
  v25 = v24[2];
  v32 = v24[3];
  v26 = v33;
  v27 = v34;
  *v24 = a1;
  v24[1] = v26;
  v28 = v35;
  v24[2] = v27;
  v24[3] = v28;

  v29 = v32;
}

uint64_t sub_1002E6590(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for NoteID();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002DF758(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002E854C(&type metadata accessor for NoteID, &qword_1006C3718);
      goto LABEL_7;
    }

    sub_1002E2C64(v17, a3 & 1);
    v28 = sub_1002DF758(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1002E78C0(v14, v11, a1, v20, &type metadata accessor for NoteID);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = type metadata accessor for DisplayRepresentation();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

_OWORD *sub_1002E67CC(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1002DF208(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1002E8A0C();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1002E33D0(v13, a3 & 1);
    v8 = sub_1002DF208(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for Key(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    sub_100009F60(v19);

    return sub_10001FA64(a1, v19);
  }

  else
  {
    sub_1002E79B8(v8, a2, a1, v18);

    return a2;
  }
}

uint64_t sub_1002E690C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1002DF3A4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1002E8B8C();
      goto LABEL_7;
    }

    sub_1002E36C8(v17, a3 & 1);
    v22 = sub_1002DF3A4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1002E7A20(v14, v11, a1, v20);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

unint64_t sub_1002E6AD8(uint64_t a1, unsigned __int8 a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1002DFB24(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1002E3AA4(v14, a3 & 1);
      result = sub_1002DFB24(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1002E8E0C();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

unint64_t sub_1002E6C24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1002DFB90(a2);
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
    sub_1002E8F68();
    result = v17;
    goto LABEL_8;
  }

  sub_1002E3D34(v14, a3 & 1);
  result = sub_1002DFB90(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

_OWORD *sub_1002E6D48(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_100024E34(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002E90B4();
      goto LABEL_7;
    }

    sub_1002E3F98(v13, a3 & 1);
    v19 = sub_100024E34(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_100024F40(a2, v21);
      return sub_1002E7AD8(v10, v21, a1, v16);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  sub_100009F60(v17);

  return sub_10001FA64(a1, v17);
}

void sub_1002E6E94(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1002DFBD4(a2, a3, sub_1002E001C);
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
      sub_1002E4250(v16, a4 & 1, &qword_1006C3708);
      v11 = sub_1002DFBD4(a2, a3, sub_1002E001C);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1002E9258(&qword_1006C3708);
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

unint64_t sub_1002E7058(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1002DFBD4(a2, a3, sub_1002E001C);
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
      sub_1002E44EC(v16, a4 & 1);
      result = sub_1002DFBD4(a2, a3, sub_1002E001C);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1002E93B4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

uint64_t sub_1002E71E4(uint64_t a1, Swift::UInt a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1002DFE3C(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1002E97A8();
      goto LABEL_7;
    }

    sub_1002E4B74(v13, a3 & 1);
    v20 = sub_1002DFE3C(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    type metadata accessor for ID(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for FastSyncPresenceController.EditorDebounceState(0) - 8) + 72) * v10;

    return sub_1002EC0C8(a1, v18);
  }

LABEL_13:

  return sub_1002E7B54(v10, a2, a1, v16);
}

unint64_t sub_1002E7330(Swift::UInt a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1002DFE3C(a1);
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
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1002E9F24();
    result = v17;
    goto LABEL_8;
  }

  sub_1002E5750(v14, a2 & 1);
  result = sub_1002DFE3C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a1;
    *(v19[7] + 8 * result) = a3;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1002E7458(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v17 = *v8;
  v18 = sub_1002DF298(a4, a5, a6, a7);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_17;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a8 & 1) == 0)
  {
    if (v25 < v23 || (a8 & 1) != 0)
    {
      sub_1002E59D4(v23, a8 & 1);
      v18 = sub_1002DF298(a4, a5, a6, a7);
      if ((v24 & 1) != (v27 & 1))
      {
LABEL_18:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v26 = v18;
      sub_1002EA070();
      v18 = v26;
    }
  }

  v28 = *v9;
  if (v24)
  {
    v29 = v28[7] + 24 * v18;
    v30 = *v29;
    *v29 = a1;
    v31 = *(v29 + 8);
    *(v29 + 8) = a2;
    *(v29 + 16) = a3;
    sub_1002EC030(v30, v31);
  }

  v28[(v18 >> 6) + 8] |= 1 << v18;
  v33 = (v28[6] + 32 * v18);
  *v33 = a4;
  v33[1] = a5;
  v33[2] = a6;
  v33[3] = a7;
  v34 = v28[7] + 24 * v18;
  *v34 = a1;
  *(v34 + 8) = a2;
  *(v34 + 16) = a3;
  v35 = v28[2];
  v22 = __OFADD__(v35, 1);
  v36 = v35 + 1;
  if (v22)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v36;
}

uint64_t sub_1002E7648(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_100192680(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1002E770C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_10015DA04(&qword_1006BE8D0);
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = a6[7] + 24 * a1;
  *v15 = a3;
  *(v15 + 8) = a4;
  *(v15 + 16) = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_1002E77EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = a7[6];
  v15 = type metadata accessor for URL();
  result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * a1, a2, v15);
  v17 = (a7[7] + 32 * a1);
  *v17 = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v18 = a7[2];
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v20;
  }

  return result;
}

uint64_t sub_1002E78C0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v9 = a4[6];
  v10 = a5(0);
  (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a2, v10);
  v11 = a4[7];
  v12 = type metadata accessor for DisplayRepresentation();
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a3, v12);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

_OWORD *sub_1002E79B8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_10001FA64(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1002E7A20(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for URL();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1002E7AD8(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_10001FA64(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1002E7B54(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  result = sub_1002EC194(a3, v7 + *(*(v8 - 8) + 72) * a1, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
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

void *sub_1002E7BFC()
{
  v1 = v0;
  v29 = type metadata accessor for UUID();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BDD00);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26 = v31 + 32;
    v27 = v31 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v32 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v31;
        v20 = *(v31 + 72) * v18;
        v21 = v28;
        v22 = v29;
        (*(v31 + 16))(v28, *(v3 + 48) + v20, v29);
        v18 *= 40;
        sub_1002EC1FC(*(v3 + 56) + v18, v33);
        v23 = v30;
        (*(v19 + 32))(*(v30 + 48) + v20, v21, v22);
        result = sub_100192680(v33, *(v23 + 56) + v18);
        v13 = v32;
      }

      while (v32);
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
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

char *sub_1002E7E84()
{
  v1 = v0;
  v37 = sub_10015DA04(&qword_1006BE8D0);
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v36 = &v31 - v2;
  sub_10015DA04(&qword_1006BDD38);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v38 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v35 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v40 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v39;
        v20 = *(v39 + 72) * v18;
        v21 = v36;
        v22 = v37;
        (*(v39 + 16))(v36, *(v3 + 48) + v20, v37);
        v23 = 24 * v18;
        v24 = *(v3 + 56) + 24 * v18;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = v38;
        v28 = *(v19 + 32);
        LOBYTE(v19) = *(v24 + 16);
        v28(*(v38 + 48) + v20, v21, v22);
        v29 = *(v27 + 56);
        v3 = v35;
        v30 = v29 + v23;
        *v30 = v25;
        *(v30 + 8) = v26;
        *(v30 + 16) = v19;
        result = sub_1001CD894(v25, v26, v19);
        v13 = v40;
      }

      while (v40);
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

        v1 = v31;
        v5 = v38;
        goto LABEL_18;
      }

      v17 = *(v32 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v40 = (v17 - 1) & v17;
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

id sub_1002E812C()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDC88);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

char *sub_1002E828C()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v42 = v2;
  v43 = v3;
  __chkstk_darwin(v2);
  v41 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BDC98);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v35 = v1;
    v36 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v44 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v37 = v43 + 32;
    v38 = v43 + 16;
    v39 = v16;
    v40 = v5;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v46 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = v42;
        v22 = v43;
        v23 = *(v43 + 72) * v20;
        v24 = v41;
        (*(v43 + 16))(v41, *(v5 + 48) + v23, v42);
        v25 = *(v5 + 56);
        v26 = 32 * v20;
        v27 = (v25 + 32 * v20);
        v28 = *v27;
        v29 = v27[1];
        v30 = v27[3];
        v45 = v27[2];
        v31 = v44;
        (*(v22 + 32))(*(v44 + 48) + v23, v24, v21);
        v32 = (*(v31 + 56) + v26);
        v5 = v40;
        *v32 = v28;
        v32[1] = v29;
        v33 = v45;
        v32[2] = v45;
        v32[3] = v30;
        swift_errorRetain();
        v34 = v30;

        result = v33;
        v16 = v39;
        v15 = v46;
      }

      while (v46);
    }

    v18 = v11;
    v7 = v44;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v35;
        goto LABEL_18;
      }

      v19 = *(v36 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v46 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1002E854C(uint64_t (*a1)(void), uint64_t *a2)
{
  v5 = v2;
  v45 = type metadata accessor for DisplayRepresentation();
  v48 = *(v45 - 8);
  __chkstk_darwin(v45);
  v44 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1(0);
  v47 = *(v43 - 8);
  __chkstk_darwin(v43);
  v42 = &v34 - v7;
  sub_10015DA04(a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v34 = v5;
    v35 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v46 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v39 = v47 + 16;
    v40 = v19;
    v37 = v47 + 32;
    v38 = v48 + 16;
    v36 = v48 + 32;
    v41 = v8;
    v21 = v42;
    v20 = v43;
    if (v18)
    {
      do
      {
        v22 = __clz(__rbit64(v18));
        v49 = (v18 - 1) & v18;
LABEL_14:
        v25 = v22 | (v14 << 6);
        v26 = v47;
        v27 = *(v47 + 72) * v25;
        (*(v47 + 16))(v21, *(v8 + 48) + v27, v20);
        v28 = v48;
        v29 = *(v48 + 72) * v25;
        v30 = v44;
        v31 = v45;
        (*(v48 + 16))(v44, *(v8 + 56) + v29, v45);
        v32 = v46;
        (*(v26 + 32))(*(v46 + 48) + v27, v21, v20);
        v33 = *(v32 + 56);
        v8 = v41;
        result = (*(v28 + 32))(v33 + v29, v30, v31);
        v19 = v40;
        v18 = v49;
      }

      while (v49);
    }

    v23 = v14;
    while (1)
    {
      v14 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v34;
        v10 = v46;
        goto LABEL_18;
      }

      v24 = *(v35 + 8 * v14);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v5 = v10;
  }

  return result;
}

id sub_1002E88A4()
{
  v1 = v0;
  sub_10015DA04(&qword_1006C36D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        *(*(v4 + 48) + 16 * v17) = *(*(v2 + 48) + 16 * v17);
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

id sub_1002E8A0C()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDC48);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10000A2A0(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10001FA64(v19, (*(v4 + 56) + 32 * v17));
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

char *sub_1002E8B8C()
{
  v1 = v0;
  v33 = type metadata accessor for URL();
  v35 = *(v33 - 8);
  __chkstk_darwin(v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BDD50);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = swift_errorRetain();
        v13 = v36;
      }

      while (v36);
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

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
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

void *sub_1002E8E0C()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDC50);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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

void *sub_1002E8F68()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDCB8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

void *sub_1002E90B4()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDC78);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = 40 * v17;
        sub_100024F40(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10000A2A0(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_10001FA64(v22, (*(v4 + 56) + v17));
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

id sub_1002E9258(uint64_t *a1)
{
  v2 = v1;
  sub_10015DA04(a1);
  v3 = *v1;
  v4 = static _DictionaryStorage.copy(original:)();
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

        result = v21;
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

void *sub_1002E93B4()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDD30);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

char *sub_1002E951C()
{
  v1 = v0;
  v35 = type metadata accessor for UUID();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BDDB0);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

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

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
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

void *sub_1002E97A8()
{
  v1 = v0;
  v2 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  v27 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BDD28);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1002EC12C(*(v4 + 56) + v23, v26, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        result = sub_1002EC194(v22, *(v24 + 56) + v23, type metadata accessor for FastSyncPresenceController.EditorDebounceState);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

id sub_1002E99E0()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDC80);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 4 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 4 * v17) = v19;
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

void *sub_1002E9B3C()
{
  v1 = v0;
  sub_10015DA04(&qword_1006C3698);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
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

char *sub_1002E9CA4()
{
  v1 = v0;
  v35 = type metadata accessor for CSVType();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10015DA04(&qword_1006BDCE8);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
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

void *sub_1002E9F24()
{
  v1 = v0;
  sub_10015DA04(&qword_1006BDC60);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
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

void *sub_1002EA070()
{
  sub_10015DA04(&qword_1006BDC58);
  v29 = v0;
  v1 = *v0;
  v2 = static _DictionaryStorage.copy(original:)();
  v3 = v2;
  if (*(v1 + 16))
  {
    result = (v2 + 64);
    v5 = ((1 << *(v3 + 32)) + 63) >> 6;
    if (v3 != v1 || result >= v1 + 64 + 8 * v5)
    {
      result = memmove(result, (v1 + 64), 8 * v5);
    }

    v7 = 0;
    *(v3 + 16) = *(v1 + 16);
    v8 = 1 << *(v1 + 32);
    v9 = *(v1 + 64);
    v10 = -1;
    if (v8 < 64)
    {
      v10 = ~(-1 << v8);
    }

    v11 = v10 & v9;
    v12 = (v8 + 63) >> 6;
    if ((v10 & v9) != 0)
    {
      do
      {
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
LABEL_17:
        v16 = v13 | (v7 << 6);
        v17 = 32 * v16;
        v18 = (*(v1 + 48) + 32 * v16);
        v19 = *v18;
        v20 = v18[1];
        v22 = v18[2];
        v21 = v18[3];
        v16 *= 24;
        v23 = *(v1 + 56) + v16;
        v24 = *v23;
        v25 = *(v23 + 16);
        v26 = (*(v3 + 48) + v17);
        v27 = *(v23 + 8);
        *v26 = v19;
        v26[1] = v20;
        v26[2] = v22;
        v26[3] = v21;
        v28 = *(v3 + 56) + v16;
        *v28 = v24;
        *(v28 + 8) = v27;
        *(v28 + 16) = v25;

        sub_1001912A0(v24, v27);
      }

      while (v11);
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        goto LABEL_19;
      }

      v15 = *(v1 + 64 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v29 = v3;
  }

  return result;
}

uint64_t sub_1002EA234(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C3680, &qword_1006C3678);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C3678);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006C5D90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EA3E8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C36E0, &qword_1006C36D8);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C36D8);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &unk_1006C8180);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EA59C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C1448, &qword_1006C1438);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C1438);
            v9 = sub_10037538C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for NoteSearchResult(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EA740(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C2D08, &unk_1006C2CB0);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&unk_1006C2CB0);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for AttachmentSearchResult(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EA8E4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C3748, &qword_1006C32B8);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C32B8);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006C6400);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EAA98(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C36C8, &qword_1006C36C0);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C36C0);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &unk_1006BD380);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EAC4C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006BD808, &qword_1006BD800);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006BD800);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006C1420);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EAE00(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C3690, &qword_1006C3688);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C3688);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006BF450);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EAFB4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C36A8, &qword_1006C36A0);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C36A0);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006C1730);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EB168(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C36B8, &qword_1006C36B0);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C36B0);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006C2BB0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EB31C(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C3700, &unk_1006C7A70);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&unk_1006C7A70);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for TableSearchResult(0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EB4C0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1000060B4(&qword_1006C36F8, &qword_1006C5ED0);
          for (i = 0; i != v6; ++i)
          {
            sub_10015DA04(&qword_1006C5ED0);
            v9 = sub_10037530C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1000054A4(0, &qword_1006C5F80);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EB674(uint64_t a1, char a2, void *a3)
{
  v67 = a3;
  v6 = sub_10015DA04(&qword_1006BE8D0);
  v65 = *(v6 - 8);
  v66 = v6;
  __chkstk_darwin(v6);
  v68 = &v59 - v7;
  v8 = sub_10015DA04(&qword_1006BE860);
  v64 = *(v8 - 8);
  v9 = __chkstk_darwin(v8);
  v63 = &v59 - v10;
  v61 = *(a1 + 16);
  if (!v61)
  {
  }

  v59 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v63;
  v12 = v63 + *(v9 + 48);
  v13 = *(v64 + 80);
  v62 = a1;
  v14 = (v65 + 32);
  v60 = a1 + ((v13 + 32) & ~v13);
  sub_100006038(v60, v63, &qword_1006BE860);
  v15 = *v14;
  v16 = v68;
  (*v14)(v68, v11, v66);
  v18 = *v12;
  v17 = *(v12 + 8);
  v19 = *(v12 + 16);
  v20 = *v67;
  v22 = sub_1002DF478(v16);
  v23 = v20[2];
  v24 = (v21 & 1) == 0;
  v25 = v23 + v24;
  if (__OFADD__(v23, v24))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v26 = v21;
  if (v20[3] >= v25)
  {
    if (a2)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v31 = v22;
      sub_1002E7E84();
      v22 = v31;
      if ((v26 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1002E21C4(v25, a2 & 1);
  v27 = sub_1002DF478(v68);
  if ((v26 & 1) == (v28 & 1))
  {
    v22 = v27;
    if ((v26 & 1) == 0)
    {
LABEL_14:
      v32 = v68;
      v33 = *v67;
      v34 = v22;
      *(*v67 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v15(v33[6] + *(v65 + 72) * v22, v32, v66);
      v35 = v33[7] + 24 * v34;
      *v35 = v18;
      *(v35 + 8) = v17;
      *(v35 + 16) = v19;
      v36 = v33[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v33[2] = v38;
      if (v61 != 1)
      {
        v39 = 1;
        while (v39 < *(v62 + 16))
        {
          v40 = v63;
          sub_100006038(v60 + *(v64 + 72) * v39, v63, &qword_1006BE860);
          v41 = *v14;
          v42 = v68;
          (*v14)(v68, v40, v66);
          v18 = *v12;
          v17 = *(v12 + 8);
          v19 = *(v12 + 16);
          v43 = *v67;
          v44 = sub_1002DF478(v42);
          v46 = v43[2];
          v47 = (v45 & 1) == 0;
          v37 = __OFADD__(v46, v47);
          v48 = v46 + v47;
          if (v37)
          {
            goto LABEL_26;
          }

          v49 = v45;
          if (v43[3] < v48)
          {
            sub_1002E21C4(v48, 1);
            v44 = sub_1002DF478(v68);
            if ((v49 & 1) != (v50 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v49)
          {
            goto LABEL_11;
          }

          v51 = v68;
          v52 = *v67;
          *(*v67 + 8 * (v44 >> 6) + 64) |= 1 << v44;
          v53 = v44;
          v41(v52[6] + *(v65 + 72) * v44, v51, v66);
          v54 = v52[7] + 24 * v53;
          *v54 = v18;
          *(v54 + 8) = v17;
          *(v54 + 16) = v19;
          v55 = v52[2];
          v37 = __OFADD__(v55, 1);
          v56 = v55 + 1;
          if (v37)
          {
            goto LABEL_27;
          }

          ++v39;
          v52[2] = v56;
          if (v61 == v39)
          {
          }
        }

        goto LABEL_25;
      }
    }

LABEL_11:
    v29 = swift_allocError();
    swift_willThrow();

    v71 = v29;
    swift_errorRetain();
    sub_10015DA04(&unk_1006C9B40);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1002E6310(v18, v17, v19);
      (*(v65 + 8))(v68, v66);
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  v69 = 0;
  v70 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v57._object = 0x800000010056C0A0;
  v57._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v57);
  _print_unlocked<A, B>(_:_:)();
  v58._countAndFlagsBits = 39;
  v58._object = 0xE100000000000000;
  String.append(_:)(v58);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t sub_1002EBC0C()
{
  if (*(v0 + 49))
  {
    return 0;
  }

  v2 = v0[1];
  if (!v2)
  {
    goto LABEL_14;
  }

  result = v2 - 1;
  if (__OFSUB__(v2, 1))
  {
    __break(1u);
  }

  else
  {
    v0[1] = result;
    v3 = *v0;
    if ((*v0 & 0xC000000000000001) == 0)
    {
      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (result < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v4 = *(v3 + 8 * result + 32);
        if (v0[6])
        {
LABEL_9:

LABEL_14:
          result = 0;
          *(v0 + 49) = 1;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
      return result;
    }
  }

  v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (v0[6])
  {
    goto LABEL_9;
  }

LABEL_12:
  v5 = v4;
  (v0[4])(&v6, v0 + 2);
  if (v7)
  {

    *(v0 + 48) = 1;
    goto LABEL_14;
  }

  return v5;
}

uint64_t sub_1002EBD08(uint64_t a1, uint64_t a2)
{
  v4 = sub_10015DA04(&qword_1006BE860);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002EBD7C()
{
  result = qword_1006C35A0;
  if (!qword_1006C35A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C35A0);
  }

  return result;
}

unint64_t sub_1002EBDD0()
{
  result = qword_1006C35A8;
  if (!qword_1006C35A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C35A8);
  }

  return result;
}

unint64_t sub_1002EBE28()
{
  result = qword_1006C35B0;
  if (!qword_1006C35B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C35B0);
  }

  return result;
}

unint64_t sub_1002EBE80()
{
  result = qword_1006C35B8;
  if (!qword_1006C35B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C35B8);
  }

  return result;
}

unint64_t sub_1002EBED8()
{
  result = qword_1006C35C0;
  if (!qword_1006C35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C35C0);
  }

  return result;
}

uint64_t sub_1002EBF60(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1002EBF7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 17))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 16);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1002EBFC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1002EC008(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1002EC030(unint64_t result, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return sub_1002EC064(result);
      }

      return result;
    }
  }

  if (a2 == 2 || a2 == 3)
  {
  }

  return result;
}

unint64_t sub_1002EC064(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

unint64_t sub_1002EC074()
{
  result = qword_1006C36F0;
  if (!qword_1006C36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C36F0);
  }

  return result;
}

uint64_t sub_1002EC0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FastSyncPresenceController.EditorDebounceState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EC12C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EC194(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002EC1FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1002EC294(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

id sub_1002EC2FC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  if (a4)
  {

    return swift_errorRetain();
  }

  else
  {

    return a3;
  }
}

id sub_1002EC34C(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

void sub_1002EC358(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    sub_1002E6310(a1, a2, a3);
  }
}

void (*sub_1002EC36C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void *a4))(uint64_t, uint64_t)
{
  v8 = type metadata accessor for URL();
  v78 = *(v8 - 8);
  v79 = v8;
  __chkstk_darwin(v8);
  v10 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_10015DA04(&qword_1006BE8D0);
  v11 = *(v80 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v80);
  v14 = __chkstk_darwin(v13);
  v16 = &v76 - v15;
  __chkstk_darwin(v14);
  v18 = &v76 - v17;
  v19 = swift_allocObject();
  v82 = a3;
  v83 = v19;
  *(v19 + 16) = a3;
  *(v19 + 24) = a4;
  swift_beginAccess();
  v77 = a2;
  v20 = *(a2 + 24);
  v21 = *(v20 + 16);
  v81 = a4;
  v22 = a1;

  if (!v21 || (v23 = sub_1002DF478(a1), (v24 & 1) == 0))
  {
    swift_endAccess();
    if (qword_1006BC750 != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    sub_10002597C(v36, qword_1006C3588);
    v37 = v11;
    v38 = *(v11 + 16);
    v39 = v80;
    v38(v18, a1, v80);
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      aBlock[0] = v77;
      *v42 = 136315138;
      ICObjectReferences.identifier.getter();
      sub_1002ED028(&qword_1006C0FF8, &type metadata accessor for URL);
      v43 = v79;
      v44 = dispatch thunk of CustomStringConvertible.description.getter();
      v46 = v45;
      (*(v78 + 8))(v10, v43);
      (*(v37 + 8))(v18, v39);
      v47 = sub_100009D88(v44, v46, aBlock);

      *(v42 + 4) = v47;
      _os_log_impl(&_mh_execute_header, v40, v41, "Object to be previewed does not exist {url: %s}", v42, 0xCu);
      sub_100009F60(v77);
    }

    else
    {

      (*(v37 + 8))(v18, v39);
    }

    sub_1001CDC44();
    v48 = swift_allocError();
    *v49 = 4;
    swift_errorRetain();
    v82(v48, 1);

    v32 = [objc_allocWithZone(NSProgress) init];
    goto LABEL_12;
  }

  v79 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v20 + 56) + 24 * v23;
  v27 = *v25;
  v26 = *(v25 + 8);
  v28 = *(v25 + 16);
  swift_endAccess();
  if (v28 <= 1)
  {
    if (v28)
    {
      v51 = objc_opt_self();
      v52 = v27;
      v32 = [v51 progressWithTotalUnitCount:1];
      [v32 setCompletedUnitCount:{objc_msgSend(v32, "totalUnitCount")}];
      v85 = sub_1000054A4(0, &qword_1006C1B60);
      aBlock[0] = v52;
      v53 = v52;
      v54 = sub_1001C912C(aBlock);
      sub_100009F60(aBlock);
      v82(v54, 0);

      sub_1002E6310(v27, v26, 1);
      sub_1002E6310(v27, v26, 1);
    }

    else
    {
      sub_10015DA04(&qword_1006BF470);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_100531E30;
      v30 = swift_allocObject();
      v31 = v83;
      *(v30 + 16) = sub_1002ECCF0;
      *(v30 + 24) = v31;
      *(inited + 32) = sub_1002ED094;
      *(inited + 40) = v30;
      aBlock[0] = v26;
      sub_1001CD894(v27, v26, 0);
      v32 = v27;

      sub_1002DBAA8(inited);
      v33 = aBlock[0];
      v34 = v77;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v88 = *(v34 + 24);
      *(v34 + 24) = 0x8000000000000000;
      sub_1002E6110(v27, v33, 0, v22, isUniquelyReferenced_nonNull_native);
      *(v34 + 24) = v88;
      swift_endAccess();
    }

    goto LABEL_12;
  }

  if (v28 == 2)
  {
    swift_errorRetain();
    v82(v27, 1);
    v32 = [objc_allocWithZone(NSProgress) init];
    sub_1002E6310(v27, v26, 2);
LABEL_12:

    return v32;
  }

  v55 = [objc_opt_self() progressWithTotalUnitCount:1];
  sub_10015DA04(&qword_1006BF470);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_100531E30;
  v57 = swift_allocObject();
  v58 = v83;
  *(v57 + 16) = sub_1002ECCF0;
  *(v57 + 24) = v58;
  *(v56 + 32) = sub_1002ED094;
  *(v56 + 40) = v57;
  v59 = v77;
  swift_beginAccess();

  v82 = v55;
  v60 = swift_isUniquelyReferenced_nonNull_native();
  v88 = *(v59 + 24);
  *(v59 + 24) = 0x8000000000000000;
  sub_1002E6110(v55, v56, 0, v22, v60);
  *(v59 + 24) = v88;
  swift_endAccess();
  v61 = v11;
  v62 = *(v11 + 16);
  v63 = v80;
  v62(v16, v22, v80);
  v64 = *(v61 + 80);
  v65 = swift_allocObject();
  v78 = v65;
  *(v65 + 16) = v59;
  v76 = *(v61 + 32);
  v76(v65 + ((v64 + 24) & ~v64), v16, v63);
  v81 = *(v59 + 16);
  v66 = v79;
  v62(v79, v22, v63);
  v67 = (v64 + 16) & ~v64;
  v68 = (v12 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = (v68 + 15) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  v76(v70 + v67, v66, v63);
  v71 = v82;
  *(v70 + v68) = v82;
  *(v70 + v69) = v77;
  v72 = (v70 + ((v69 + 15) & 0xFFFFFFFFFFFFFFF8));
  v73 = v78;
  *v72 = sub_1002ED09C;
  v72[1] = v73;
  v86 = sub_1002ED090;
  v87 = v70;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1002DEFE0;
  v85 = &unk_1006546A0;
  v74 = _Block_copy(aBlock);
  swift_retain_n();
  v75 = v71;

  [v81 performBackgroundTask:v74];
  _Block_release(v74);

  return v75;
}

uint64_t sub_1002ECCFC()
{
  v1 = sub_10015DA04(&qword_1006BE8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_1002ECDCC(void *a1, char a2)
{
  v5 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  sub_1002DE0C8(a1, a2 & 1, v6, v7);
}

uint64_t sub_1002ECE5C()
{
  v1 = sub_10015DA04(&qword_1006BE8D0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_1002ECF30(void *a1)
{
  v3 = *(sub_10015DA04(&qword_1006BE8D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);

  return sub_1002DE614(a1, (v1 + v4), v7, v8, v10, v11);
}

uint64_t sub_1002ED028(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t OpenTableIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for TableEntity();
  __chkstk_darwin(v2 - 8);
  sub_1002EE314(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1002EE378(a1);
}

uint64_t sub_1002ED140()
{
  v0 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Locale();
  __chkstk_darwin(v4 - 8);
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for LocalizedStringResource();
  sub_100025918(v6, static OpenTableIntent.title);
  sub_10002597C(v6, static OpenTableIntent.title);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v1 + 104))(v3, enum case for LocalizedStringResource.BundleDescription.main(_:), v0);
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t OpenTableIntent.title.unsafeMutableAddressor()
{
  if (qword_1006BC758 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for LocalizedStringResource();

  return sub_10002597C(v0, static OpenTableIntent.title);
}

uint64_t static OpenTableIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1006BC758 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for LocalizedStringResource();
  v3 = sub_10002597C(v2, static OpenTableIntent.title);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenTableIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v2 - 8);
  v4 = &v15[-v3];
  v5 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Locale();
  __chkstk_darwin(v9 - 8);
  v10 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v10 - 8);
  v11 = type metadata accessor for LocalizedStringResource();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  (*(v6 + 104))(v8, enum case for LocalizedStringResource.BundleDescription.main(_:), v5);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v12 + 56))(v4, 1, 1, v11);
  IntentDescription.init(_:categoryName:searchKeywords:)();
  v13 = type metadata accessor for IntentDescription();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t static OpenTableIntent.parameterSummary.getter()
{
  v0 = sub_10015DA04(&qword_1006C3750);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C3758);
  __chkstk_darwin(v1);
  sub_1000213AC();
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206C6165766552;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3760);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x656C62617420;
  v3._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t (*OpenTableIntent.target.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t (*OpenTableIntent.loggingConfiguration.modify(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = AppDependency.wrappedValue.modify();
  return sub_10017E594;
}

uint64_t sub_1002ED9CC(uint64_t a1)
{
  v2 = type metadata accessor for TableEntity();
  __chkstk_darwin(v2 - 8);
  sub_1002EE314(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  IntentParameter.wrappedValue.setter();
  return sub_1002EE378(a1);
}

uint64_t (*sub_1002EDA5C(uint64_t *a1))()
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = IntentParameter.wrappedValue.modify();
  return sub_10017D9DC;
}

uint64_t sub_1002EDAD0()
{
  v0 = sub_10015DA04(&qword_1006C3750);
  __chkstk_darwin(v0 - 8);
  v1 = sub_10015DA04(&qword_1006C3758);
  __chkstk_darwin(v1);
  ParameterSummaryString.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v2._countAndFlagsBits = 0x74206C6165766552;
  v2._object = 0xEB00000000206568;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v2);
  swift_getKeyPath();
  sub_10015DA04(&qword_1006C3760);
  ParameterSummaryString.StringInterpolation.appendInterpolation<A, B>(_:)();

  v3._countAndFlagsBits = 0x656C62617420;
  v3._object = 0xE600000000000000;
  ParameterSummaryString.StringInterpolation.appendLiteral(_:)(v3);
  ParameterSummaryString.init(stringInterpolation:)();
  return IntentParameterSummary.init(_:table:)();
}

uint64_t sub_1002EDC78@<X0>(uint64_t *a1@<X8>)
{
  result = _s11MobileNotes15OpenTableIntentVACycfC_0();
  *a1 = result;
  a1[1] = v3;
  a1[2] = v4;
  return result;
}

uint64_t _s11MobileNotes15OpenTableIntentVACycfC_0()
{
  v0 = type metadata accessor for InputConnectionBehavior();
  v32 = *(v0 - 8);
  v33 = v0;
  __chkstk_darwin(v0);
  v31 = &v26 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_10015DA04(&unk_1006BE0D0);
  v3 = __chkstk_darwin(v2 - 8);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v29 = &v26 - v5;
  v6 = sub_10015DA04(&qword_1006BCCD0);
  __chkstk_darwin(v6 - 8);
  v28 = &v26 - v7;
  v8 = sub_10015DA04(&qword_1006BE030);
  __chkstk_darwin(v8 - 8);
  v27 = &v26 - v9;
  v10 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  __chkstk_darwin(v14 - 8);
  v15 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for LocalizedStringResource();
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v26 = sub_10015DA04(&qword_1006BCCD8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v18 = enum case for LocalizedStringResource.BundleDescription.main(_:);
  v19 = *(v11 + 104);
  v19(v13, enum case for LocalizedStringResource.BundleDescription.main(_:), v10);
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v19(v13, v18, v10);
  v20 = v27;
  LocalizedStringResource.init(_:table:locale:bundle:comment:)();
  (*(v17 + 56))(v20, 0, 1, v16);
  v21 = type metadata accessor for TableEntity();
  (*(*(v21 - 8) + 56))(v28, 1, 1, v21);
  v22 = type metadata accessor for IntentDialog();
  v23 = *(*(v22 - 8) + 56);
  v23(v29, 1, 1, v22);
  v23(v30, 1, 1, v22);
  (*(v32 + 104))(v31, enum case for InputConnectionBehavior.default(_:), v33);
  sub_1002EE55C(&qword_1006BCCE0);
  v24 = IntentParameter<>.init(title:description:default:requestValueDialog:requestDisambiguationDialog:inputConnectionBehavior:)();
  sub_10015DA04(&unk_1006BCA40);
  v34 = 0xD000000000000024;
  v35 = 0x800000010055CF90;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  sub_10015DA04(&qword_1006C34B0);
  v34 = 0xD000000000000021;
  v35 = 0x800000010055CFC0;
  AnyHashable.init<A>(_:)();
  static AppDependencyManager.shared.getter();
  AppDependency.__allocating_init(key:manager:)();
  return v24;
}

uint64_t sub_1002EE314(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TableEntity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002EE378(uint64_t a1)
{
  v2 = type metadata accessor for TableEntity();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1002EE408(uint64_t a1)
{
  result = sub_1002EE430();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1002EE430()
{
  result = qword_1006C3798;
  if (!qword_1006C3798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C3798);
  }

  return result;
}

unint64_t sub_1002EE488()
{
  result = qword_1006C37A0;
  if (!qword_1006C37A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006C37A0);
  }

  return result;
}

uint64_t sub_1002EE55C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TableEntity();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_1002EE5A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  v62 = *(v4 - 1);
  __chkstk_darwin(v4);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  UnknownStorage.init()();
  v7 = &v6[v4[5]];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v6[v4[6]];
  *v8 = 0;
  v8[1] = 0;
  v9 = &v6[v4[7]];
  *v9 = 0;
  v9[1] = 0;
  v10 = &v6[v4[8]];
  *v10 = 0;
  *(v10 + 1) = 0;
  v59 = v10;
  v11 = &v6[v4[9]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v58 = v11;
  v12 = v4[10];
  v6[v12] = 2;
  v13 = [a1 attachmentModel];
  objc_opt_self();
  v61 = v13;
  v14 = swift_dynamicCastObjCClass();
  if (!v14)
  {

    sub_100249404(v6);
    v23 = 1;
    v24 = v62;
    return (*(v24 + 56))(a2, v23, 1, v4);
  }

  v15 = v14;
  v56 = a2;
  v16 = [a1 identifier];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v4;
    v19 = v12;
    v20 = v15;
    v22 = v21;

    v60 = v18;
    *v7 = v18;
    v7[1] = v22;
    v57 = v22;
    v15 = v20;
    v12 = v19;
    v4 = v55;
  }

  else
  {
    v60 = 0;
    v57 = 0;
  }

  v25 = [a1 title];
  if (v25)
  {
    v26 = v25;
    v27 = v4;
    v28 = v12;
    v29 = a1;
    v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v31;

    *v9 = v30;
    v9[1] = v32;
    a1 = v29;
    v12 = v28;
    v4 = v27;
  }

  v33 = sub_10036C694();
  if (v34)
  {
    *v8 = v33;
    v8[1] = v34;
  }

  result = [v15 audioDocument];
  v36 = v57;
  if (!result)
  {
    __break(1u);
    goto LABEL_29;
  }

  v37 = result;
  v38 = [result isCallRecording];

  v6[v12] = v38;
  result = [v15 audioDocument];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v39 = result;
  v40 = [result transcriptAsPlainText];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v41 = String.count.getter();

  if (v41 >= 1)
  {
    v42 = v60;
    if (!v36)
    {
      v42 = 0;
    }

    v43 = 0xE000000000000000;
    v65[0] = 0x7263736E6172745FLL;
    v65[1] = 0xEF7478742E747069;
    if (v36)
    {
      v43 = v36;
    }

    v63 = v42;
    v64 = v43;

    v63 = String.init<A>(_:)();
    v64 = v44;
    String.append<A>(contentsOf:)();
    v45 = v64;
    v46 = v59;
    *v59 = v63;
    v46[1] = v45;
  }

  result = [v15 audioDocument];
  if (result)
  {
    v47 = result;
    v48 = [result recordingSummaryAsPlainText];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = String.count.getter();

    if (v49 < 1)
    {
    }

    else
    {
      v50 = v60;
      if (!v36)
      {
        v50 = 0;
      }

      v51 = 0xE000000000000000;
      strcpy(v65, "_summary.txt");
      BYTE5(v65[1]) = 0;
      HIWORD(v65[1]) = -5120;
      if (v36)
      {
        v51 = v36;
      }

      v63 = v50;
      v64 = v51;

      v63 = String.init<A>(_:)();
      v64 = v52;
      String.append<A>(contentsOf:)();

      v53 = v64;
      v54 = v58;
      *v58 = v63;
      v54[1] = v53;
    }

    v24 = v62;
    a2 = v56;
    sub_1002EED14(v6, v56);
    v23 = 0;
    return (*(v24 + 56))(a2, v23, 1, v4);
  }

LABEL_30:
  __break(1u);
  return result;
}

void sub_1002EEA6C(void *a1)
{
  v3 = type metadata accessor for AudioAttachmentMetadata(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 attachmentModel];
  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7 && (v8 = v7, (v9 = [a1 managedObjectContext]) != 0))
  {
    v10 = v9;
    sub_100248B7C(v1, &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v12 = (v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = swift_allocObject();
    sub_1002EED14(v6, v13 + v11);
    *(v13 + v12) = a1;
    *(v13 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)) = v8;
    v14 = swift_allocObject();
    *(v14 + 16) = sub_1002EEE80;
    *(v14 + 24) = v13;
    aBlock[4] = sub_10000EFBC;
    aBlock[5] = v14;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10000EAF8;
    aBlock[3] = &unk_1006547D8;
    v15 = _Block_copy(aBlock);
    v16 = a1;
    v17 = v20;

    [v10 performBlockAndWait:v15];

    _Block_release(v15);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if (v17)
    {
      __break(1u);
    }
  }

  else
  {
    v18 = v20;
  }
}

uint64_t sub_1002EED14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioAttachmentMetadata(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1002EED78(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for AudioAttachmentMetadata(0);
  if (*(a1 + *(v6 + 28) + 8))
  {

    v7 = String._bridgeToObjectiveC()();

    [a2 setTitle:v7];
  }

  v8 = *(a1 + *(v6 + 40));
  if (v8 != 2)
  {
    v9 = [a3 audioDocument];
    if (v9)
    {
      v10 = v9;
      [v9 setIsCallRecording:v8 & 1];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1002EEE80()
{
  v1 = *(type metadata accessor for AudioAttachmentMetadata(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1002EED78(v0 + v2, v4, v5);
}

uint64_t sub_1002EEF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_10015DA04(&qword_1006C3810);
  result = static _DictionaryStorage.copy(original:)();
  v9 = 0;
  v41 = a1;
  v42 = result;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v40 = result + 64;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v41 + 48) + 16 * v20);
      v44 = *v21;
      v22 = *(*(v41 + 56) + 8 * v20);
      v45 = v21[1];

      v23 = v22;
      v24 = [v23 identifier];
      if (v24)
      {
        v25 = v24;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      v26 = [v23 typeUTI];
      if (v26)
      {
        v27 = v26;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      sub_1000054A4(0, &qword_1006C37F0);
      v28 = ICTTAttachment.init(identifier:universalTypeIdentifier:)();

      *(v40 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = v42;
      v29 = (v42[6] + 16 * v20);
      *v29 = v44;
      v29[1] = v45;
      *(v42[7] + 8 * v20) = v28;
      v30 = v42[2];
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      if (v31)
      {
        break;
      }

      v42[2] = v32;
      v15 = v43;
      if (!v43)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        v33 = sub_1002F0DA8(result, a2, a3, a4, a5, a6, a7);

        return v33;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v43 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1002EF18C()
{
  v0 = type metadata accessor for Logger();
  sub_100025918(v0, qword_1006C37C8);
  sub_10002597C(v0, qword_1006C37C8);
  return static Logger.archiving.getter();
}

uint64_t sub_1002EF1D8(uint64_t a1, char *a2, CGColor *a3, uint64_t a4, uint64_t a5, void *a6, int a7)
{
  v12 = _s16AttributedStringV9AttributeVMa(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12 - 8);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a6;

  sub_1002EF360(v17, a2, a3, a6, a7, v15);
  v18 = *(a5 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a5 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_1001CB670(0, v18[2] + 1, 1, v18);
    *(a5 + 16) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = sub_1001CB670(v20 > 1, v21 + 1, 1, v18);
    *(a5 + 16) = v18;
  }

  v18[2] = v21 + 1;
  return sub_1002FF940(v15, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v21, _s16AttributedStringV9AttributeVMa);
}

void sub_1002EF360(uint64_t a1@<X0>, char *a2@<X1>, CGColor *a3@<X2>, void *a4@<X3>, int a5@<W4>, char *a6@<X8>)
{
  v233 = a5;
  v256 = a4;
  v257 = a2;
  v254 = a3;
  v258 = a1;
  v7 = sub_10015DA04(&qword_1006C37E0);
  __chkstk_darwin(v7 - 8);
  v232 = (&v226 - v8);
  v9 = sub_10015DA04(&qword_1006BCC20);
  __chkstk_darwin(v9 - 8);
  v261 = &v226 - v10;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v227 = &v226 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v246 = &v226 - v15;
  v16 = sub_10015DA04(&qword_1006C37E8);
  __chkstk_darwin(v16 - 8);
  v238 = &v226 - v17;
  v18 = sub_10015DA04(&unk_1006C1710);
  __chkstk_darwin(v18 - 8);
  v245.i64[0] = &v226 - v19;
  v20 = sub_10015DA04(&unk_1006BE0B0);
  __chkstk_darwin(v20 - 8);
  v22 = &v226 - v21;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v240 = &v226 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = _s16AttributedStringV9AttributeVMa(0);
  v27 = v26[5];
  v251 = v24;
  v28 = *(v24 + 56);
  v239 = v27;
  v253 = v28;
  v28(&a6[v27], 1, 1, v23);
  v29 = v26[6];
  v30 = type metadata accessor for Date();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v243 = v30;
  v244.i64[0] = v29;
  v241 = (v31 + 56);
  v242 = v32;
  (v32)(&a6[v29], 1, 1);
  v33 = &a6[v26[7]];
  *v33 = xmmword_10053D580;
  *(v33 + 1) = 0u;
  *(v33 + 2) = 0u;
  *(v33 + 3) = 0u;
  *(v33 + 8) = 0;
  v34 = v26[8];
  v35 = _s16AttributedStringV14ParagraphStyleVMa(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v236 = v35;
  v237 = v34;
  v234 = v36 + 56;
  v235 = v37;
  (v37)(&a6[v34], 1, 1);
  v249 = v26[9];
  a6[v249] = 5;
  v38 = v26[10];
  v252 = v12;
  v39 = *(v12 + 56);
  v248 = v38;
  v255 = v11;
  v259 = v39;
  v260 = v12 + 56;
  v39(&a6[v38], 1, 1, v11);
  v250 = v26[11];
  a6[v250] = 5;
  v40 = &a6[v26[12]];
  *v40 = 0;
  v40[1] = 0;
  v247 = v40;
  v41 = v26[13];
  v42 = _s16AttributedStringV16InlineAttachmentVMa(0);
  v43 = *(v42 - 8);
  v44 = *(v43 + 56);
  v230 = v42;
  v231 = v41;
  v228 = v43 + 56;
  v229 = v44;
  (v44)(&a6[v41], 1, 1);
  v45 = v257;
  v46 = v258;
  v257 = a6;
  v47 = v254;
  *a6 = v45;
  *(a6 + 1) = v47;
  if (!*(v46 + 16))
  {
    goto LABEL_6;
  }

  v48 = ICTTAttributeNameReplicaID;
  v49 = sub_1002ED088(v48);
  if ((v50 & 1) == 0)
  {

LABEL_6:
    v253(v22, 1, 1, v23);
    goto LABEL_7;
  }

  sub_10000A2A0(*(v46 + 56) + 32 * v49, &v271);

  v51 = swift_dynamicCast();
  v52 = v253;
  v253(v22, v51 ^ 1u, 1, v23);
  v53 = v251;
  if ((*(v251 + 48))(v22, 1, v23) != 1)
  {
    v254 = *(v53 + 32);
    v54 = v240;
    (v254)(v240, v22, v23);
    v55 = v257;
    v56 = v239;
    sub_1000073B4(&v257[v239], &unk_1006BE0B0);
    (v254)(&v55[v56], v54, v23);
    v52(&v55[v56], 0, 1, v23);
    goto LABEL_8;
  }

LABEL_7:
  sub_1000073B4(v22, &unk_1006BE0B0);
LABEL_8:
  v57 = v261;
  if (!*(v46 + 16))
  {
    goto LABEL_12;
  }

  v58 = ICTTAttributeNameTimestamp;
  v59 = sub_1002ED088(v58);
  if (v60)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v59, &v271);

    if (swift_dynamicCast())
    {
      v61 = v245.i64[0];
      Date.init(timeIntervalSince1970:)();
      v242(v61, 0, 1, v243);
      sub_10000A49C(v61, &v257[v244.i64[0]], &unk_1006C1710);
    }

LABEL_12:
    if (!*(v46 + 16))
    {
      goto LABEL_29;
    }

    goto LABEL_15;
  }

  if (!*(v46 + 16))
  {
    goto LABEL_29;
  }

LABEL_15:
  v62 = ICTTAttributeNameFont;
  v63 = sub_1002ED088(v62);
  if ((v64 & 1) == 0)
  {

    if (!*(v46 + 16))
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  sub_10000A2A0(*(v46 + 56) + 32 * v63, v276);

  sub_1000054A4(0, &qword_1006C3800);
  if (swift_dynamicCast())
  {
    v65 = v262;
    v66 = *(v33 + 1);
    v271 = *v33;
    v272 = v66;
    v67 = *(v33 + 2);
    v68 = *(v33 + 3);
    v273 = v67;
    v274 = v68;
    v275 = *(v33 + 8);
    v69 = *(&v271 + 1);
    if (*(&v271 + 1) == 1)
    {
      v253 = 0;
      v254 = 0;
      v69 = 0;
      v251 = 0;
      v245.i64[0] = 0;
      v70 = 0;
      v71 = 0;
      v67.i64[0] = 0x2000200020002;
      v244 = v67;
      v72 = 1;
      v73 = 1;
    }

    else
    {
      v253 = v272;
      v254 = v271;
      v67.i32[0] = *(&v272 + 9);
      v244 = vmovl_u8(*v67.i8);
      v251 = v273.i64[0];
      v70 = *(&v274 + 1);
      v245.i64[0] = v274;
      v71 = v275;
      v73 = v273.i8[8];
      v72 = BYTE8(v272);
    }

    v74 = v72 & 1;
    v265 = v72 & 1;
    v75 = v73 & 1;
    v264 = v73 & 1;
    v76 = *(v33 + 3);
    v268 = *(v33 + 2);
    v269 = v76;
    v270 = *(v33 + 8);
    v77 = *(v33 + 1);
    v266 = *v33;
    v267 = v77;
    sub_100006038(&v271, v263, &qword_1006C37F8);
    sub_1000073B4(&v266, &qword_1006C37F8);
    v78 = v253;
    *v33 = v254;
    *(v33 + 1) = v69;
    *(v33 + 2) = v78;
    v33[24] = v74;
    *(v33 + 25) = vuzp1_s8(*v244.i8, *v244.i8).u32[0];
    *(v33 + 4) = v251;
    v33[40] = v75;
    *(v33 + 6) = v245.i64[0];
    *(v33 + 7) = v70;
    *(v33 + 8) = v71;
    v79 = v65;
    v80 = [(CGColor *)v65 fontName];
    if (v80)
    {
      v81 = v80;
      v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v46 = v258;
    v57 = v261;

    *v33 = v82;
    *(v33 + 1) = v84;
    if (v84 != 1)
    {
      [(CGColor *)v79 pointSize];
      *(v33 + 2) = v85;
      v33[24] = 0;
      if (*(v33 + 1) != 1)
      {
        v33[25] = [(CGColor *)v79 fontHints]& 1;
        if (*(v33 + 1) != 1)
        {
          v225 = [(CGColor *)v79 fontHints];

          v33[26] = (v225 & 2) != 0;
          if (!*(v46 + 16))
          {
            goto LABEL_37;
          }

          goto LABEL_30;
        }
      }
    }
  }

LABEL_29:
  if (!*(v46 + 16))
  {
    goto LABEL_37;
  }

LABEL_30:
  v86 = ICTTAttributeNameFontHints;
  v87 = sub_1002ED088(v86);
  if (v88)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v87, v276);

    if (swift_dynamicCast())
    {
      v89 = v262;
      v90 = *(v33 + 1);
      v271 = *v33;
      v272 = v90;
      v91 = *(v33 + 3);
      v273 = *(v33 + 2);
      v274 = v91;
      v275 = *(v33 + 8);
      v92 = *(&v271 + 1);
      if (*(&v271 + 1) == 1)
      {
        v253 = 0;
        v254 = 0;
        v92 = 0;
        v251 = 0;
        v245.i64[0] = 0;
        v242 = 0;
        v243 = 0;
        v244.i32[0] = 2;
        v93 = 1;
        v94 = 2;
        v95 = 1;
      }

      else
      {
        v253 = v272;
        v254 = v271;
        v244.i32[0] = BYTE11(v272);
        v94 = BYTE12(v272);
        v251 = v273.i64[0];
        v245.i64[0] = v274;
        v242 = v275;
        v243 = *(&v274 + 1);
        v95 = v273.i8[8];
        v93 = BYTE8(v272);
      }

      v96 = v93 & 1;
      v265 = v93 & 1;
      v97 = v95 & 1;
      v264 = v95 & 1;
      v98 = *(v33 + 3);
      v268 = *(v33 + 2);
      v269 = v98;
      v270 = *(v33 + 8);
      v99 = *(v33 + 1);
      v266 = *v33;
      v267 = v99;
      sub_100006038(&v271, v263, &qword_1006C37F8);
      sub_1000073B4(&v266, &qword_1006C37F8);
      v100 = v253;
      *v33 = v254;
      *(v33 + 1) = v92;
      *(v33 + 2) = v100;
      v33[24] = v96;
      v33[27] = v244.i8[0];
      v33[28] = v94;
      *(v33 + 4) = v251;
      v33[40] = v97;
      v101 = v242;
      v102 = v243;
      *(v33 + 6) = v245.i64[0];
      *(v33 + 7) = v102;
      *(v33 + 8) = v101;
      v33[25] = v89 & 1;
      v33[26] = (v89 & 2) != 0;
      v57 = v261;
    }
  }

  else
  {
  }

LABEL_37:
  if (*(v46 + 16))
  {
    v103 = ICTTAttributeNameUnderline;
    v104 = sub_1002ED088(v103);
    if (v105)
    {
      sub_10000A2A0(*(v46 + 56) + 32 * v104, v276);

      if (swift_dynamicCast())
      {
        LODWORD(v254) = v262;
        v106 = *(v33 + 1);
        v271 = *v33;
        v272 = v106;
        v107 = *(v33 + 3);
        v273 = *(v33 + 2);
        v274 = v107;
        v275 = *(v33 + 8);
        v108 = *(&v271 + 1);
        if (*(&v271 + 1) == 1)
        {
          v253 = 0;
          v108 = 0;
          v251 = 0;
          v245.i64[0] = 0;
          v242 = 0;
          v243 = 0;
          v241 = 0;
          v244.i32[0] = 2;
          v109 = 1;
          v110 = 2;
          v111 = 2;
          v112 = 1;
        }

        else
        {
          v253 = v271;
          v251 = v272;
          v244.i32[0] = BYTE9(v272);
          v110 = BYTE10(v272);
          v111 = BYTE12(v272);
          v245.i64[0] = v273.i64[0];
          v242 = *(&v274 + 1);
          v243 = v274;
          v241 = v275;
          v112 = v273.i8[8];
          v109 = BYTE8(v272);
        }

        v123 = v109 & 1;
        v265 = v109 & 1;
        v124 = v112 & 1;
        v264 = v112 & 1;
        v125 = *(v33 + 3);
        v268 = *(v33 + 2);
        v269 = v125;
        v270 = *(v33 + 8);
        v126 = *(v33 + 1);
        v266 = *v33;
        v267 = v126;
        sub_100006038(&v271, v263, &qword_1006C37F8);
        sub_1000073B4(&v266, &qword_1006C37F8);
        *v33 = v253;
        *(v33 + 1) = v108;
        *(v33 + 2) = v251;
        v33[24] = v123;
        v33[25] = v244.i8[0];
        v33[26] = v110;
        v33[28] = v111;
        *(v33 + 4) = v245.i64[0];
        v33[40] = v124;
        v127 = v242;
        *(v33 + 6) = v243;
        *(v33 + 7) = v127;
        *(v33 + 8) = v241;
        v33[27] = v254;
        v57 = v261;
        if (!*(v46 + 16))
        {
          goto LABEL_54;
        }

        goto LABEL_44;
      }
    }

    else
    {
    }
  }

  if (!*(v46 + 16))
  {
    goto LABEL_54;
  }

LABEL_44:
  v113 = ICTTAttributeNameStrikethrough;
  v114 = sub_1002ED088(v113);
  if (v115)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v114, v276);

    if (swift_dynamicCast())
    {
      LODWORD(v254) = v262;
      v116 = *(v33 + 1);
      v271 = *v33;
      v272 = v116;
      v117 = *(v33 + 3);
      v273 = *(v33 + 2);
      v274 = v117;
      v275 = *(v33 + 8);
      v118 = *(&v271 + 1);
      if (*(&v271 + 1) == 1)
      {
        v253 = 0;
        v118 = 0;
        v251 = 0;
        v245.i64[0] = 0;
        v242 = 0;
        v243 = 0;
        v241 = 0;
        v244.i32[0] = 2;
        v119 = 1;
        v120 = 2;
        v121 = 2;
        v122 = 1;
      }

      else
      {
        v253 = v271;
        v251 = v272;
        v244.i32[0] = BYTE9(v272);
        v120 = BYTE10(v272);
        v121 = BYTE11(v272);
        v245.i64[0] = v273.i64[0];
        v242 = *(&v274 + 1);
        v243 = v274;
        v241 = v275;
        v122 = v273.i8[8];
        v119 = BYTE8(v272);
      }

      v128 = v119 & 1;
      v265 = v119 & 1;
      v129 = v122 & 1;
      v264 = v122 & 1;
      v130 = *(v33 + 3);
      v268 = *(v33 + 2);
      v269 = v130;
      v270 = *(v33 + 8);
      v131 = *(v33 + 1);
      v266 = *v33;
      v267 = v131;
      sub_100006038(&v271, v263, &qword_1006C37F8);
      sub_1000073B4(&v266, &qword_1006C37F8);
      *v33 = v253;
      *(v33 + 1) = v118;
      *(v33 + 2) = v251;
      v33[24] = v128;
      v33[25] = v244.i8[0];
      v33[26] = v120;
      v33[27] = v121;
      *(v33 + 4) = v245.i64[0];
      v33[40] = v129;
      v132 = v242;
      *(v33 + 6) = v243;
      *(v33 + 7) = v132;
      *(v33 + 8) = v241;
      v33[28] = v254;
      v57 = v261;
    }
  }

  else
  {
  }

LABEL_54:
  if (!*(v46 + 16))
  {
    goto LABEL_60;
  }

  v133 = ICTTAttributeNameSuperscript;
  v134 = sub_1002ED088(v133);
  if ((v135 & 1) == 0)
  {

LABEL_60:
    if (!*(v46 + 16))
    {
      goto LABEL_83;
    }

    goto LABEL_61;
  }

  sub_10000A2A0(*(v46 + 56) + 32 * v134, v276);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_60;
  }

  v254 = v262;
  v136 = *(v33 + 1);
  v271 = *v33;
  v272 = v136;
  v137 = *(v33 + 2);
  v138 = *(v33 + 3);
  v273 = v137;
  v274 = v138;
  v275 = *(v33 + 8);
  v139 = *(&v271 + 1);
  if (*(&v271 + 1) == 1)
  {
    v253 = 0;
    v139 = 0;
    v251 = 0;
    v140 = 0;
    v141 = 0;
    v142 = 0;
    v137.i64[0] = 0x2000200020002;
    v245 = v137;
    v143 = 1;
  }

  else
  {
    v253 = v271;
    v251 = v272;
    v137.i32[0] = *(&v272 + 9);
    v245 = vmovl_u8(*v137.i8);
    v141 = *(&v274 + 1);
    v140 = v274;
    v142 = v275;
    v143 = BYTE8(v272);
  }

  v177 = v143 & 1;
  v265 = v143 & 1;
  v178 = *(v33 + 3);
  v268 = *(v33 + 2);
  v269 = v178;
  v270 = *(v33 + 8);
  v179 = *(v33 + 1);
  v266 = *v33;
  v267 = v179;
  sub_100006038(&v271, v263, &qword_1006C37F8);
  sub_1000073B4(&v266, &qword_1006C37F8);
  *v33 = v253;
  *(v33 + 1) = v139;
  *(v33 + 2) = v251;
  v33[24] = v177;
  *(v33 + 25) = vuzp1_s8(*v245.i8, *v245.i8).u32[0];
  *(v33 + 6) = v140;
  *(v33 + 7) = v141;
  *(v33 + 8) = v142;
  *(v33 + 4) = v254;
  v33[40] = 0;
  v57 = v261;
  if (!*(v46 + 16))
  {
LABEL_83:
    v166 = v255;
    v165 = v256;
    if (!*(v46 + 16))
    {
LABEL_89:
      v259(v57, 1, 1, v166);
LABEL_90:
      sub_1000073B4(v57, &qword_1006BCC20);
      if (!*(v46 + 16))
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }

    goto LABEL_84;
  }

LABEL_61:
  v144 = ICTTAttributeNameForegroundColor;
  v145 = sub_1002ED088(v144);
  if (v146)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v145, v276);

    v147 = *(v33 + 1);
    v271 = *v33;
    v272 = v147;
    v148 = *(v33 + 2);
    v149 = *(v33 + 3);
    v273 = v148;
    v274 = v149;
    v275 = *(v33 + 8);
    v150 = *(&v271 + 1);
    if (*(&v271 + 1) == 1)
    {
      v253 = 0;
      v254 = 0;
      v150 = 0;
      v251 = 0;
      v245.i64[0] = 0;
      v151 = 0;
      v152 = 0;
      v148.i64[0] = 0x2000200020002;
      v244 = v148;
      v153 = 1;
      v154 = 1;
    }

    else
    {
      v253 = v272;
      v254 = v271;
      v148.i32[0] = *(&v272 + 9);
      v244 = vmovl_u8(*v148.i8);
      v251 = v273.i64[0];
      v151 = *(&v274 + 1);
      v245.i64[0] = v274;
      v152 = v275;
      v154 = v273.i8[8];
      v153 = BYTE8(v272);
    }

    v155 = v153 & 1;
    v265 = v153 & 1;
    v156 = v154 & 1;
    v264 = v154 & 1;
    v157 = *(v33 + 3);
    v268 = *(v33 + 2);
    v269 = v157;
    v270 = *(v33 + 8);
    v158 = *(v33 + 1);
    v266 = *v33;
    v267 = v158;
    sub_100006038(&v271, v263, &qword_1006C37F8);
    sub_1000073B4(&v266, &qword_1006C37F8);
    v159 = v253;
    *v33 = v254;
    *(v33 + 1) = v150;
    *(v33 + 2) = v159;
    v33[24] = v155;
    *(v33 + 25) = vuzp1_s8(*v244.i8, *v244.i8).u32[0];
    *(v33 + 4) = v251;
    v33[40] = v156;
    *(v33 + 6) = v245.i64[0];
    *(v33 + 7) = v151;
    *(v33 + 8) = v152;
    sub_10000A2A0(v276, v263);
    type metadata accessor for CGColor(0);
    swift_dynamicCast();
    v160 = sub_1002FD410(v262);
    v162 = v161;
    v164 = v163;
    sub_100009F60(v276);
    sub_1002FDA10(*(v33 + 6), *(v33 + 7));
    *(v33 + 6) = v160;
    *(v33 + 7) = v162;
    *(v33 + 8) = v164;
    v57 = v261;
  }

  else
  {
  }

  v166 = v255;
  v165 = v256;
  if (*(v46 + 16))
  {
    v167 = ICTTAttributeNameParagraphStyle;
    v168 = sub_1002ED088(v167);
    if (v169)
    {
      sub_10000A2A0(*(v46 + 56) + 32 * v168, &v271);

      sub_1000054A4(0, &qword_1006BE0C0);
      if (swift_dynamicCast())
      {
        v170 = v266;
        v171 = v238;
        sub_1002F43C0(v170, v238);
        v235(v171, 0, 1, v236);
        v172 = v257;
        sub_10000A49C(v171, &v257[v237], &qword_1006C37E8);
        v173 = [v170 writingDirection];

        v174 = v173 + 1;
        if (v173 == 3)
        {
          v175 = 4;
        }

        else
        {
          v175 = 5;
        }

        if (v174 >= 4)
        {
          v176 = v175;
        }

        else
        {
          v176 = 0x2030100u >> (8 * v174);
        }

        *(v172 + v250) = v176;
        if (!*(v46 + 16))
        {
          goto LABEL_89;
        }

        goto LABEL_84;
      }
    }

    else
    {
    }
  }

  if (!*(v46 + 16))
  {
    goto LABEL_89;
  }

LABEL_84:
  v180 = ICTTNSLinkAttributeName;
  v181 = sub_1002ED088(v180);
  if ((v182 & 1) == 0)
  {

    goto LABEL_89;
  }

  sub_10000A2A0(*(v46 + 56) + 32 * v181, &v271);

  v183 = swift_dynamicCast();
  v259(v57, v183 ^ 1u, 1, v166);
  if ((*(v252 + 48))(v57, 1, v166) == 1)
  {
    goto LABEL_90;
  }

  v184 = *(v252 + 32);
  v185 = v246;
  v184(v246, v57, v166);
  v186 = v257;
  v187 = v248;
  sub_1000073B4(&v257[v248], &qword_1006BCC20);
  v184(&v186[v187], v185, v166);
  v259(&v186[v187], 0, 1, v166);
  if (!*(v46 + 16))
  {
LABEL_87:
    v271 = 0u;
    v272 = 0u;
    goto LABEL_105;
  }

LABEL_91:
  v188 = ICTTNSWritingDirectionAttributeName;
  v189 = sub_1002ED088(v188);
  if (v190)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v189, &v271);
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      v191 = v266 + 1;
      if (v266 == 3)
      {
        v192 = 4;
      }

      else
      {
        v192 = 5;
      }

      if (v191 < 4)
      {
        v192 = 0x2030100u >> (8 * v191);
      }

      v257[v250] = v192;
    }

    if (!*(v46 + 16))
    {
      goto LABEL_106;
    }

    goto LABEL_103;
  }

LABEL_105:
  sub_1000073B4(&v271, &qword_1006BE7A0);
  if (!*(v46 + 16))
  {
LABEL_106:
    v271 = 0u;
    v272 = 0u;
    goto LABEL_114;
  }

LABEL_103:
  v193 = ICTTAttributeNameEmphasis;
  v194 = sub_1002ED088(v193);
  if (v195)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v194, &v271);
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

  if (*(&v272 + 1))
  {
    if (swift_dynamicCast())
    {
      v196 = ICEmphasisColorTypeForTag();
      v197 = sub_1002FD910(v196);
      v257[v249] = v197;
    }

    if (!*(v46 + 16))
    {
      goto LABEL_115;
    }

    goto LABEL_112;
  }

LABEL_114:
  sub_1000073B4(&v271, &qword_1006BE7A0);
  if (!*(v46 + 16))
  {
LABEL_115:
    v271 = 0u;
    v272 = 0u;
    goto LABEL_118;
  }

LABEL_112:
  v198 = ICTTNSAttachmentAttributeName;
  v199 = sub_1002ED088(v198);
  if (v200)
  {
    sub_10000A2A0(*(v46 + 56) + 32 * v199, &v271);
  }

  else
  {
    v271 = 0u;
    v272 = 0u;
  }

LABEL_118:

  if (!*(&v272 + 1))
  {

    sub_1000073B4(&v271, &qword_1006BE7A0);
    return;
  }

  sub_1000054A4(0, &qword_1006C37F0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_139;
  }

  v201 = v266;
  if ([objc_opt_self() isInlineAttachment:v266])
  {
    if (v165)
    {
      v202 = v165;
      v203 = [v201 inlineAttachmentInContext:v202];
      if (v203)
      {
        v204 = v203;
        v205 = v232;
        sub_1002F59EC(v204, v232);
        v229(v205, 0, 1, v230);
        sub_10000A49C(v205, &v257[v231], &qword_1006C37E0);
        if ((v233 & 1) != 0 && (v206 = [v204 tokenContentIdentifier]) != 0 && (v207 = v206, v208 = NotesAppURLForNoteIdentifierOrTokenContentIdentifier(), v207, v208))
        {
          v209 = v227;
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          v210 = v257;
          v211 = v248;
          sub_1000073B4(&v257[v248], &qword_1006BCC20);
          (*(v252 + 32))(&v210[v211], v209, v166);
          v259(&v210[v211], 0, 1, v166);
        }

        else
        {
        }

        return;
      }
    }

    if (qword_1006BC760 != -1)
    {
      swift_once();
    }

    v218 = type metadata accessor for Logger();
    sub_10002597C(v218, qword_1006C37C8);
    v219 = v201;
    v220 = Logger.logObject.getter();
    v221 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      v223 = swift_slowAlloc();
      *v222 = 138412290;
      *(v222 + 4) = v219;
      *v223 = v219;
      v224 = v219;
      _os_log_impl(&_mh_execute_header, v220, v221, "Cannot resolve inline attachment — skipping {attachment: %@}", v222, 0xCu);
      sub_1000073B4(v223, &qword_1006C1440);
    }

    else
    {
    }

LABEL_139:

    return;
  }

  v212 = [v201 attachmentIdentifier];
  if (v212)
  {
    v213 = v212;
    v214 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v216 = v215;
  }

  else
  {

    v214 = 0;
    v216 = 0;
  }

  v217 = v247;
  *v247 = v214;
  v217[1] = v216;
}