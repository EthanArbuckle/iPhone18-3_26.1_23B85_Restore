uint64_t sub_1000ECD7C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = type metadata accessor for ContentMetadataValue(0);
  v43 = *(v5 - 8);
  __chkstk_darwin(v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  sub_1000BFBAC(&qword_10020C528);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v40 = v2;
    v41 = v8;
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
    v17 = result + 64;
    v42 = v7;
    while (v15)
    {
      v23 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v26 = v23 | (v11 << 6);
      v27 = *(v8 + 48) + 56 * v26;
      if (v44)
      {
        v28 = *v27;
        v29 = *(v27 + 16);
        v30 = *(v27 + 32);
        v48 = *(v27 + 48);
        v46 = v29;
        v47 = v30;
        v45 = v28;
        v31 = *(v43 + 72);
        sub_1000EF194(*(v8 + 56) + v31 * v26, v7);
      }

      else
      {
        sub_1000BFD88(v27, &v45);
        v31 = *(v43 + 72);
        sub_1000D07B4(*(v8 + 56) + v31 * v26, v7);
      }

      Hasher.init(_seed:)();
      sub_1000C421C(&v45, *(&v46 + 1));
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v32 = -1 << *(v10 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v17 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v7 = v42;
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
            v18 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v33) & ~*(v17 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v7 = v42;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = *(v10 + 48) + 56 * v18;
      v20 = v45;
      v21 = v46;
      v22 = v47;
      *(v19 + 48) = v48;
      *(v19 + 16) = v21;
      *(v19 + 32) = v22;
      *v19 = v20;
      result = sub_1000EF194(v7, *(v10 + 56) + v31 * v18);
      ++*(v10 + 16);
      v8 = v41;
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
        v23 = __clz(__rbit64(v25));
        v15 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v8 + 32);
    v3 = v40;
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

unint64_t sub_1000ED118(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE700000000000000;
      v8 = 0x6C6172656E6567;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0xE400000000000000;
          v8 = 1718188133;
          break;
        case 2:
          v8 = 0x78754166697865;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1668575337;
          break;
        case 4:
          v7 = 0xE300000000000000;
          v8 = 7565415;
          break;
        case 5:
          v8 = 1717987700;
          v7 = 0xE400000000000000;
          break;
        case 6:
          v7 = 0xE400000000000000;
          v8 = 1667851624;
          break;
        case 7:
          v8 = 6711655;
          v7 = 0xE300000000000000;
          break;
        case 8:
          v7 = 0xE400000000000000;
          v8 = 1718183530;
          break;
        case 9:
          v8 = 6778480;
          v7 = 0xE300000000000000;
          break;
        case 0xA:
          v7 = 0xE300000000000000;
          v8 = 7823730;
          break;
        case 0xB:
          v7 = 0xE400000000000000;
          v8 = 1717987683;
          break;
        case 0xC:
          v8 = 0x6F68736F746F6870;
          v7 = 0xE900000000000070;
          break;
        case 0xD:
          v7 = 0xE300000000000000;
          v8 = 6778468;
          break;
        case 0xE:
          v7 = 0xE300000000000000;
          v8 = 6383476;
          break;
        case 0xF:
          v7 = 0xE500000000000000;
          v8 = 0x6D6F636964;
          break;
        case 0x10:
          v7 = 0xE300000000000000;
          v8 = 7501925;
          break;
        case 0x11:
          v7 = 0xE300000000000000;
          v8 = 7303277;
          break;
        case 0x12:
          v7 = 0xE300000000000000;
          v8 = 6710384;
          break;
        case 0x13:
          v7 = 0xE300000000000000;
          v8 = 7368056;
          break;
        case 0x14:
          v8 = 0x6E614372656B616DLL;
          goto LABEL_38;
        case 0x15:
          v8 = 0x73704572656B616DLL;
          goto LABEL_38;
        case 0x16:
          v8 = 0x6A754672656B616DLL;
          v7 = 0xE900000000000069;
          break;
        case 0x17:
          v8 = 0x73614872656B616DLL;
          v7 = 0xEF64616C626C6573;
          break;
        case 0x18:
          v8 = 0x646F4B72656B616DLL;
          v7 = 0xEA00000000006B61;
          break;
        case 0x19:
          v8 = 0x61654C72656B616DLL;
          v7 = 0xE900000000000066;
          break;
        case 0x1A:
          v8 = 0x69654C72656B616DLL;
          v7 = 0xEA00000000006163;
          break;
        case 0x1B:
          v8 = 0x6E694D72656B616DLL;
          v7 = 0xEC00000061746C6FLL;
          break;
        case 0x1C:
          v8 = 0x6B694E72656B616DLL;
LABEL_38:
          v7 = 0xEA00000000006E6FLL;
          break;
        case 0x1D:
          v8 = 0x746F4E72656B616DLL;
          v7 = 0xED00006F666E4965;
          break;
        case 0x1E:
          v8 = 0x796C4F72656B616DLL;
          v7 = 0xEC0000007375706DLL;
          break;
        case 0x1F:
          v8 = 0x6E615072656B616DLL;
          v7 = 0xEE0063696E6F7361;
          break;
        case 0x20:
          v8 = 0x6E655072656B616DLL;
          v7 = 0xEB00000000786174;
          break;
        case 0x21:
          v8 = 0x6E6F5372656B616DLL;
          v7 = 0xE900000000000079;
          break;
        case 0x22:
          v8 = 0x74736F6E67616964;
          v7 = 0xEA00000000006369;
          break;
        case 0x23:
          v7 = 0xE800000000000000;
          v8 = 0x617461646174656DLL;
          break;
        case 0x24:
          v8 = 0x5365727574636970;
          v7 = 0xEC000000656C7974;
          break;
        default:
          break;
      }

      v9 = 0xE700000000000000;
      v10 = 0x6C6172656E6567;
      switch(a1)
      {
        case 1:
          v9 = 0xE400000000000000;
          v11 = 30821;
          goto LABEL_92;
        case 2:
          if (v8 != 0x78754166697865)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 3:
          v9 = 0xE400000000000000;
          if (v8 != 1668575337)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 4:
          v9 = 0xE300000000000000;
          if (v8 != 7565415)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 5:
          v9 = 0xE400000000000000;
          if (v8 != 1717987700)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 6:
          v9 = 0xE400000000000000;
          if (v8 != 1667851624)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 7:
          v14 = 6711655;
          goto LABEL_73;
        case 8:
          v9 = 0xE400000000000000;
          v11 = 26218;
LABEL_92:
          if (v8 != (v11 | 0x66690000))
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 9:
          v14 = 6778480;
LABEL_73:
          v9 = 0xE300000000000000;
          if (v8 != v14)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 10:
          v9 = 0xE300000000000000;
          if (v8 != 7823730)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 11:
          v9 = 0xE400000000000000;
          if (v8 != 1717987683)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 12:
          v9 = 0xE900000000000070;
          if (v8 != 0x6F68736F746F6870)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 13:
          v9 = 0xE300000000000000;
          if (v8 != 6778468)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 14:
          v9 = 0xE300000000000000;
          if (v8 != 6383476)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 15:
          v9 = 0xE500000000000000;
          if (v8 != 0x6D6F636964)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 16:
          v9 = 0xE300000000000000;
          if (v8 != 7501925)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 17:
          v9 = 0xE300000000000000;
          if (v8 != 7303277)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 18:
          v9 = 0xE300000000000000;
          if (v8 != 6710384)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 19:
          v9 = 0xE300000000000000;
          if (v8 != 7368056)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 20:
          v15 = 0x6E614372656B616DLL;
          goto LABEL_106;
        case 21:
          v15 = 0x73704572656B616DLL;
          goto LABEL_106;
        case 22:
          v9 = 0xE900000000000069;
          if (v8 != 0x6A754672656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 23:
          v9 = 0xEF64616C626C6573;
          if (v8 != 0x73614872656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 24:
          v9 = 0xEA00000000006B61;
          if (v8 != 0x646F4B72656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 25:
          v9 = 0xE900000000000066;
          if (v8 != 0x61654C72656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 26:
          v9 = 0xEA00000000006163;
          if (v8 != 0x69654C72656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 27:
          v12 = 0x6E694D72656B616DLL;
          v13 = 1635019887;
          goto LABEL_95;
        case 28:
          v15 = 0x6B694E72656B616DLL;
LABEL_106:
          v9 = 0xEA00000000006E6FLL;
          if (v8 != v15)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 29:
          v10 = 0x746F4E72656B616DLL;
          v9 = 0xED00006F666E4965;
          goto LABEL_109;
        case 30:
          v12 = 0x796C4F72656B616DLL;
          v13 = 1937076333;
          goto LABEL_95;
        case 31:
          v9 = 0xEE0063696E6F7361;
          if (v8 != 0x6E615072656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 32:
          v9 = 0xEB00000000786174;
          if (v8 != 0x6E655072656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 33:
          v9 = 0xE900000000000079;
          if (v8 != 0x6E6F5372656B616DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 34:
          v9 = 0xEA00000000006369;
          if (v8 != 0x74736F6E67616964)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 35:
          v9 = 0xE800000000000000;
          if (v8 != 0x617461646174656DLL)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        case 36:
          v12 = 0x5365727574636970;
          v13 = 1701607796;
LABEL_95:
          v9 = v13 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v8 != v12)
          {
            goto LABEL_111;
          }

          goto LABEL_110;
        default:
LABEL_109:
          if (v8 != v10)
          {
            goto LABEL_111;
          }

LABEL_110:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_111:
          v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v16)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_1000EDAEC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_1000D04E8(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_1000D05EC(v8);
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

unint64_t sub_1000EDBB4(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v8 = ~v4;
    do
    {
      sub_1000BFD88(*(v6 + 48) + 56 * v5, v13);
      v9 = v14;
      v12[3] = &type metadata for ContentMetadataKey;
      v12[0] = swift_allocObject();
      sub_1000BFD88(a1, v12[0] + 16);
      v10 = v9(v12);
      sub_1000D05A0(v12);
      sub_1000BFDE4(v13);
      if (v10)
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EDCC8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1000EF238(&qword_10020B8F8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000EDDD4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1000EDE8C(char a1)
{
  Hasher.init(_seed:)();
  sub_1000F4630(a1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return sub_1000ED118(a1, v2);
}

unint64_t sub_1000EDF14(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000EDAEC(a1, v4);
}

unint64_t sub_1000EDF58(void *a1)
{
  Hasher.init(_seed:)();
  sub_1000C421C(a1, a1[3]);
  dispatch thunk of Hashable.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000EDBB4(a1, v2);
}

unint64_t sub_1000EDFE4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_1000EF238(&qword_10020B8F8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return sub_1000EDCC8(a1, v2);
}

unint64_t sub_1000EE098(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000EDDD4(a1, a2, v4);
}

void *sub_1000EE138(uint64_t *a1)
{
  v2 = v1;
  sub_1000BFBAC(a1);
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
        v19 = *(*(v3 + 56) + 8 * v18);
        *(*(v5 + 48) + v18) = *(*(v3 + 48) + v18);
        *(*(v5 + 56) + 8 * v18) = v19;
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

void *sub_1000EE284()
{
  v1 = v0;
  v2 = type metadata accessor for ContentMetadataValue(0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000BFBAC(&qword_10020C528);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v1;
    result = (v7 + 64);
    v10 = v6 + 64;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 64), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 56 * v21;
        sub_1000BFD88(*(v6 + 48) + 56 * v21, v29);
        v23 = *(v3 + 72) * v21;
        sub_1000D07B4(*(v6 + 56) + v23, v5);
        v24 = *(v8 + 48) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
        result = sub_1000EF194(v5, *(v8 + 56) + v23);
      }

      while (v16);
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

        v1 = v28;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_1000EE4BC(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000EC9C4(result, v11, 1, v3, &qword_10020C520);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EE5B8(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
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

  v3 = sub_1000EC584(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for ContentMetadataItem(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EE6E4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000EE750()
{
  v1 = sub_1000BFBAC(&qword_10020C4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  sub_1000D05A0(v0 + 16);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000EE820(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1000EE838()
{
  v1 = *(sub_1000BFBAC(&qword_10020C4D0) - 8);
  v2 = v0 + ((*(v1 + 80) + 56) & ~*(v1 + 80));

  return sub_1000EBF50(v0 + 16, v2);
}

uint64_t sub_1000EE8A8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EE8C0()
{
  v1 = sub_1000BFBAC(&qword_10020C4D0);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  sub_1000D05A0(v0 + 32);
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1000EE998(uint64_t a1)
{
  v4 = *(sub_1000BFBAC(&qword_10020C4D0) - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000D5B00;

  return sub_1000EC14C(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1000EEA98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v41 = *(v4 - 8);
  v42 = v4;
  __chkstk_darwin(v4);
  v40 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v38);
  v39 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v37 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v44 = *(v9 - 8);
  __chkstk_darwin(v9);
  v43 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BFBAC(&qword_10020C0C8);
  __chkstk_darwin(v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for UTType();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = v29 - v19;
  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1000EF07C(v13);
    return 0;
  }

  else
  {
    v22 = *(v15 + 32);
    v35 = v15 + 32;
    v36 = a2;
    v34 = v22;
    v22(v20, v13, v14);
    (*(v44 + 16))(v43, a1, v9);
    (*(v15 + 16))(v17, v20, v14);
    v33 = v9;
    if (qword_10020B280 != -1)
    {
      swift_once();
    }

    v32 = qword_100222578;
    type metadata accessor for ContentMetadataProvider();
    v21 = swift_allocObject();
    v30 = OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_fetchSerialQueue;
    v23 = sub_1000EF0E4();
    v29[1] = "fetchMetadataFromProviders()";
    v29[2] = v23;

    v31 = xmmword_100222568;
    static DispatchQoS.unspecified.getter();
    v45 = _swiftEmptyArrayStorage;
    sub_1000EF238(&qword_10020C508, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_1000BFBAC(&qword_10020C510);
    sub_1000EF130(&qword_10020C518, &qword_10020C510);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v41 + 104))(v40, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v42);
    *(v21 + v30) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v24 = OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_cache;
    type metadata accessor for ContentMetadataProvider.Cache();
    v25 = swift_allocObject();
    type metadata accessor for ContentMetadataProvider.Cache.Storage();
    v26 = swift_allocObject();
    *(v26 + 16) = 0;
    *(v25 + 16) = 0;
    *(v25 + 24) = v26;
    (*(v15 + 8))(v20, v14);
    *(v21 + v24) = v25;
    (*(v44 + 32))(v21 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_url, v43, v33);
    v34(v21 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_contentType, v17, v14);
    *(v21 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_metadataLocalizer) = v36;
    v27 = v21 + OBJC_IVAR____TtC17ContentInfoViewer23ContentMetadataProvider_domainProviderRegistry;
    *v27 = v31;
    *(v27 + 16) = v32;
  }

  return v21;
}

uint64_t sub_1000EF07C(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020C0C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000EF0E4()
{
  result = qword_10020C500;
  if (!qword_10020C500)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020C500);
  }

  return result;
}

uint64_t sub_1000EF130(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C3C50(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EF194(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContentMetadataValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF1F8()
{
  sub_1000D05A0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000EF238(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EF280@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(a1);
  a4[3] = v10;
  a4[4] = v11;
  v12 = sub_1000BFCC0(a4);
  (*(v8 + 16))(v12, a1, a2);
  v13 = *(v8 + 32);
  v13(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v14 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a3;
  result = (v13)(v15 + v14, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[5] = sub_1000F17FC;
  a4[6] = v15;
  return result;
}

uint64_t sub_1000EF3D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x6567616D69;
    }

    else
    {
      v3 = 0x6E6F6D6D6F63;
    }

    if (v2)
    {
      v5 = 0xE500000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE300000000000000;
    v3 = 6710384;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x7369566F69647561;
      v4 = 7102837;
    }

    else
    {
      v3 = 0x69736568746E7973;
      v4 = 6579578;
    }

    v5 = v4 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v10 = 0x6567616D69;
    }

    else
    {
      v10 = 0x6E6F6D6D6F63;
    }

    if (a2)
    {
      v9 = 0xE500000000000000;
    }

    else
    {
      v9 = 0xE600000000000000;
    }

    if (v3 != v10)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v6 = 0x7369566F69647561;
    v7 = 0xEB000000006C6175;
    if (a2 != 3)
    {
      v6 = 0x69736568746E7973;
      v7 = 0xEB0000000064657ALL;
    }

    if (a2 == 2)
    {
      v8 = 6710384;
    }

    else
    {
      v8 = v6;
    }

    if (a2 == 2)
    {
      v9 = 0xE300000000000000;
    }

    else
    {
      v9 = v7;
    }

    if (v3 != v8)
    {
      goto LABEL_34;
    }
  }

  if (v5 != v9)
  {
LABEL_34:
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_35;
  }

  v11 = 1;
LABEL_35:

  return v11 & 1;
}

uint64_t sub_1000EF560(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x656D616E656C6966;
  v3 = a1;
  v4 = 0xE800000000000000;
  v5 = 0x6E6F697461657263;
  v6 = 0x6465696669646F6DLL;
  if (a1 != 4)
  {
    v6 = 0x646573557473616CLL;
  }

  if (a1 != 3)
  {
    v5 = v6;
  }

  v7 = 0x4B746E65746E6F63;
  v8 = 0xEB00000000646E69;
  if (a1 != 1)
  {
    v7 = 0x53746E65746E6F63;
    v8 = 0xEB00000000657A69;
  }

  if (a1)
  {
    v4 = v8;
  }

  else
  {
    v7 = 0x656D616E656C6966;
  }

  if (a1 <= 2u)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v3 <= 2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEC00000065746144;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x6E6F697461657263;
    }

    else
    {
      if (a2 == 4)
      {
        v12 = 0x696669646F6DLL;
      }

      else
      {
        v12 = 0x73557473616CLL;
      }

      v2 = v12 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
    }

    v11 = 0xEC00000065746144;
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x4B746E65746E6F63;
      v11 = 0xEB00000000646E69;
    }

    else
    {
      v2 = 0x53746E65746E6F63;
      v11 = 0xEB00000000657A69;
    }
  }

  else
  {
    v11 = 0xE800000000000000;
  }

  if (v9 == v2 && v10 == v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_1000EF754(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 3u)
  {
    v11 = 0xE500000000000000;
    v12 = 0xE700000000000000;
    v13 = 0x726F7461657263;
    if (a1 != 2)
    {
      v13 = 0xD000000000000013;
      v12 = 0x80000001001B3270;
    }

    v14 = 0x73726F68747561;
    if (a1)
    {
      v11 = 0xE700000000000000;
    }

    else
    {
      v14 = 0x656C746974;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v13;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v3 = 0xD000000000000013;
    v4 = 0x80000001001B3290;
    v5 = 0x7974697275636573;
    v6 = 0xEE00646F6874654DLL;
    if (a1 != 7)
    {
      v5 = 0x6E6F6973726576;
      v6 = 0xE700000000000000;
    }

    if (a1 != 6)
    {
      v3 = v5;
      v4 = v6;
    }

    v7 = 0xE800000000000000;
    v8 = 0x7364726F7779656BLL;
    if (a1 != 4)
    {
      v8 = 0x6E756F4365676170;
      v7 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v3;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x73726F68747561)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x656C746974)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 2)
    {
      v15 = 0xE700000000000000;
      if (v9 != 0x726F7461657263)
      {
        goto LABEL_52;
      }

      goto LABEL_50;
    }

    v16 = "encodingApplication";
    goto LABEL_45;
  }

  if (a2 > 5u)
  {
    if (a2 != 6)
    {
      if (a2 == 7)
      {
        v15 = 0xEE00646F6874654DLL;
        if (v9 != 0x7974697275636573)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v15 = 0xE700000000000000;
        if (v9 != 0x6E6F6973726576)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    v16 = "pageSizeOfFirstPage";
LABEL_45:
    v15 = (v16 - 32) | 0x8000000000000000;
    if (v9 != 0xD000000000000013)
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (a2 == 4)
  {
    v15 = 0xE800000000000000;
    if (v9 != 0x7364726F7779656BLL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v15 = 0xE900000000000074;
    if (v9 != 0x6E756F4365676170)
    {
LABEL_52:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v15)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_1000EFA30()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1000C421C(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1000EFA8C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1000F1858(v2, v6, type metadata accessor for ContentMetadataValue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
LABEL_8:
      v11 = type metadata accessor for LocalizedStringResource();
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
      return sub_1000F18C0(v6, type metadata accessor for ContentMetadataValue);
    }

    v10 = type metadata accessor for LocalizedStringResource();
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*v6)();
        LocalizedStringResource.init(stringLiteral:)();

        v8 = type metadata accessor for LocalizedStringResource();
        return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
      }

      goto LABEL_8;
    }

    v12 = type metadata accessor for LocalizedStringResource();
    v13 = *(v12 - 8);
    (*(v13 + 32))(a1, v6, v12);
    return (*(v13 + 56))(a1, 0, 1, v12);
  }
}

uint64_t sub_1000EFCD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  v5[3] = &type metadata for ContentMetadataKey;
  v5[0] = swift_allocObject();
  sub_1000BFD88(a2, v5[0] + 16);
  LOBYTE(a2) = v3(v5);
  sub_1000D05A0(v5);
  return a2 & 1;
}

uint64_t sub_1000EFD54()
{
  sub_1000D05A0(v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1000EFDDC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  v8 = type metadata accessor for ContentMetadataKey.DynamicChildKey(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  __chkstk_darwin(v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __chkstk_darwin(v14);
  v16 = &v32 - v15;
  sub_1000BFD88(v4, v37);
  v17 = *(v8 + 24);
  v18 = type metadata accessor for LocalizedStringResource();
  (*(*(v18 - 8) + 16))(&v16[v17], a3, v18);
  v19 = v38;
  v20 = v39;
  sub_1000C421C(v37, v38);
  *v16 = (*(v20 + 16))(v19, v20);
  v21 = v38;
  v22 = v39;
  sub_1000C421C(v37, v38);
  v35 = (*(v22 + 24))(v21, v22);
  v36 = v23;

  v24._countAndFlagsBits = 46;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);

  v25._countAndFlagsBits = a1;
  v25._object = v33;
  String.append(_:)(v25);

  v26 = v35;
  v27 = v36;
  sub_1000BFDE4(v37);
  *(v16 + 1) = v26;
  *(v16 + 2) = v27;
  sub_1000F1858(v16, v13, type metadata accessor for ContentMetadataKey.DynamicChildKey);
  a4[3] = v8;
  a4[4] = sub_1000F1D1C(&qword_10020C720);
  v28 = sub_1000BFCC0(a4);
  sub_1000F1858(v13, v28, type metadata accessor for ContentMetadataKey.DynamicChildKey);
  sub_1000F18C0(v16, type metadata accessor for ContentMetadataKey.DynamicChildKey);
  sub_1000F1B08(v13, v10, type metadata accessor for ContentMetadataKey.DynamicChildKey);
  v29 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v30 = swift_allocObject();
  result = sub_1000F1B08(v10, v30 + v29, type metadata accessor for ContentMetadataKey.DynamicChildKey);
  a4[5] = sub_1000F1A08;
  a4[6] = v30;
  return result;
}

uint64_t sub_1000F00E4@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContentMetadataMapCoordinate(0) + 20);
  v4 = *(type metadata accessor for LocalizedMapCoordinate() + 20);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000F0170@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContentMetadataMapCoordinate(0) + 20);
  v4 = *(type metadata accessor for LocalizedMapCoordinate() + 24);
  v5 = type metadata accessor for LocalizedStringResource();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1000F0294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020C730);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = _s13FakeDomainKeyVMa();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D0544(a1, v16);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_1000F1B08(v6, v10, _s13FakeDomainKeyVMa);
    if (sub_1000EF3D4(*a2, *v10) & 1) != 0 && (*(a2 + 8) == *(v10 + 1) ? (v13 = *(a2 + 16) == *(v10 + 2)) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v14 = static LocalizedStringResource.== infix(_:_:)();
    }

    else
    {
      v14 = 0;
    }

    sub_1000F18C0(v10, _s13FakeDomainKeyVMa);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000C5624(v6, &qword_10020C730);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1000F04AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020C728);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-v5];
  v7 = type metadata accessor for ContentMetadataKey.DynamicChildKey(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v16[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D0544(a1, v16);
  v11 = swift_dynamicCast();
  v12 = *(v8 + 56);
  if (v11)
  {
    v12(v6, 0, 1, v7);
    sub_1000F1B08(v6, v10, type metadata accessor for ContentMetadataKey.DynamicChildKey);
    if (sub_1000EF3D4(*a2, *v10) & 1) != 0 && (*(a2 + 8) == *(v10 + 1) ? (v13 = *(a2 + 16) == *(v10 + 2)) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)()))
    {
      v14 = static LocalizedStringResource.== infix(_:_:)();
    }

    else
    {
      v14 = 0;
    }

    sub_1000F18C0(v10, type metadata accessor for ContentMetadataKey.DynamicChildKey);
  }

  else
  {
    v12(v6, 1, 1, v7);
    sub_1000C5624(v6, &qword_10020C728);
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_1000F06C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17[-v7];
  v9 = *(a3 - 8);
  __chkstk_darwin(v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1000D0544(a1, v17);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1000F08E4()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1000C421C(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

Swift::Int sub_1000F09AC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000F0A00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F0A48(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16))
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int sub_1000F0A78()
{
  Hasher.init(_seed:)();
  sub_1000C421C(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F0ADC()
{
  v1 = v0[3];
  v2 = v0[4];
  sub_1000C421C(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1000F0B30@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  sub_1000C421C(v1, v3);
  result = (*(v4 + 24))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

Swift::Int sub_1000F0B8C()
{
  Hasher.init(_seed:)();
  sub_1000C421C(v0, v0[3]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F0BEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 40);
  v6[3] = a3;
  v6[0] = swift_allocObject();
  sub_1000BFD88(a2, v6[0] + 16);
  LOBYTE(a2) = v4(v6);
  sub_1000D05A0(v6);
  return a2 & 1;
}

uint64_t sub_1000F0C64()
{
  v1 = sub_1000BFBAC(&qword_10020B670);
  __chkstk_darwin(v1 - 8);
  v3 = &v24 - v2;
  v4 = type metadata accessor for Mirror();
  v26 = *(v4 - 8);
  v27 = v4;
  __chkstk_darwin(v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(&v33[0] + 1) = type metadata accessor for ContentMetadataValue(0);
  v7 = sub_1000BFCC0(&v32);
  v25 = v0;
  sub_1000F1858(v0, v7, type metadata accessor for ContentMetadataValue);
  Mirror.init(reflecting:)();
  Mirror.children.getter();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v8 = dispatch thunk of _AnyIndexBox._typeID.getter();
  swift_getObjectType();
  result = dispatch thunk of _AnyIndexBox._typeID.getter();
  if (v8 == result)
  {
    v10 = dispatch thunk of _AnyIndexBox._isEqual(to:)();
    swift_unknownObjectRelease();
    if (v10)
    {
      swift_unknownObjectRelease();

      (*(v26 + 8))(v6, v27);
      return 0x6E776F6E6B6E75;
    }

    else
    {
      dispatch thunk of _AnyCollectionBox.subscript.getter();
      swift_unknownObjectRelease();

      v32 = v30;
      v33[0] = v31[0];
      v33[1] = v31[1];
      sub_1000EFA8C(v3);
      v12 = type metadata accessor for LocalizedStringResource();
      v13 = *(v12 - 8);
      if ((*(v13 + 48))(v3, 1, v12) == 1)
      {
        sub_1000C5624(v3, &qword_10020B670);
        v14 = 0xE500000000000000;
        v15 = 0x2A6C696E2ALL;
      }

      else
      {
        v16 = LocalizedStringResource.key.getter();
        v18 = v17;
        (*(v13 + 8))(v3, v12);
        *&v30 = 34;
        *(&v30 + 1) = 0xE100000000000000;
        v19._countAndFlagsBits = v16;
        v19._object = v18;
        String.append(_:)(v19);

        v20._countAndFlagsBits = 34;
        v20._object = 0xE100000000000000;
        String.append(_:)(v20);
        v14 = *(&v30 + 1);
        v15 = v30;
      }

      v28 = 0;
      v29 = 0xE000000000000000;
      v21._countAndFlagsBits = 0x2865736163;
      v21._object = 0xE500000000000000;
      String.append(_:)(v21);
      v30 = v32;
      sub_1000D0544(v33, v31);

      sub_1000BFBAC(&qword_10020C538);
      _print_unlocked<A, B>(_:_:)();
      sub_1000C5624(&v30, &qword_10020C538);
      v22._countAndFlagsBits = 0x203E2D2029;
      v22._object = 0xE500000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = v15;
      v23._object = v14;
      String.append(_:)(v23);

      v11 = v28;
      sub_1000C5624(&v32, &qword_10020C538);
      (*(v26 + 8))(v6, v27);
    }

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1000F1088(uint64_t a1)
{
  result = sub_1000F10B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F10B0()
{
  result = qword_10020C540;
  if (!qword_10020C540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C540);
  }

  return result;
}

unint64_t sub_1000F1114()
{
  result = qword_10020C548;
  if (!qword_10020C548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C548);
  }

  return result;
}

uint64_t sub_1000F1180(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ContentMetadataValue(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F1240(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ContentMetadataValue(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000F12E4()
{
  result = type metadata accessor for ContentMetadataValue(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1000F1360(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000F137C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000F13C4(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_1000F1470()
{
  result = type metadata accessor for LocalizedStringResource();
  if (v1 <= 0x3F)
  {
    result = sub_1000C9C74();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for ContentMetadataMapCoordinate(319);
      if (v3 <= 0x3F)
      {
        result = sub_1000F150C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1000F150C()
{
  result = qword_10020C660;
  if (!qword_10020C660)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_10020C660);
  }

  return result;
}

uint64_t sub_1000F1584(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedMapCoordinate();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_1000F1644(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedMapCoordinate();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000F16E8()
{
  result = type metadata accessor for MetadataLocalizer();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for LocalizedMapCoordinate();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000F177C()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1000F1858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F18C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000F1920()
{
  v1 = (type metadata accessor for ContentMetadataKey.DynamicChildKey(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v1[8];
  v4 = type metadata accessor for LocalizedStringResource();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_1000F1A08(uint64_t a1)
{
  v3 = *(type metadata accessor for ContentMetadataKey.DynamicChildKey(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1000F04AC(a1, v4);
}

uint64_t sub_1000F1A78(uint64_t a1, uint64_t a2)
{
  if ((sub_1000EF3D4(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static LocalizedStringResource.== infix(_:_:)();
}

uint64_t sub_1000F1B08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F1B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for LocalizedStringResource();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1000F1C44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for LocalizedStringResource();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000F1D1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ContentMetadataKey.DynamicChildKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F1D60(uint64_t a1)
{
  result = sub_1000F1D1C(&qword_10020C7D8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000F1DA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1000D0544(a1, v10);
  if (swift_dynamicCast() && v9)
  {
    if (v8 == a2 && v9 == a3)
    {
      v6 = 1;
    }

    else
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1000F1E60(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000F1EA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F1F04()
{
  result = qword_10020C7E0;
  if (!qword_10020C7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C7E0);
  }

  return result;
}

unint64_t sub_1000F1F58(uint64_t a1)
{
  result = sub_1000F1F80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F1F80()
{
  result = qword_10020C7E8;
  if (!qword_10020C7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C7E8);
  }

  return result;
}

uint64_t sub_1000F1FDC()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

uint64_t sub_1000F2594()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:defaultValue:table:locale:bundle:comment:)();
}

uint64_t sub_1000F27FC@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v31 = type metadata accessor for PlainListStyle();
  v29 = *(v31 - 8);
  __chkstk_darwin(v31);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1000BFBAC(&qword_10020C810);
  v25 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v27 = sub_1000BFBAC(&qword_10020C808);
  v26 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - v8;
  v30 = sub_1000BFBAC(&qword_10020C800);
  v28 = *(v30 - 8);
  __chkstk_darwin(v30);
  v11 = &v25 - v10;
  type metadata accessor for MainActor();
  v32 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  __chkstk_darwin(isCurrentExecutor);
  *(&v25 - 2) = a1;
  sub_1000BFBAC(&qword_10020C830);
  sub_1000F3F64();
  List<>.init(content:)();
  PlainListStyle.init()();
  v13 = sub_1000C5490(&qword_10020C818, &qword_10020C810);
  v14 = v31;
  View.listStyle<A>(_:)();
  (*(v29 + 8))(v4, v14);
  (*(v25 + 8))(v7, v5);
  *&v39 = v5;
  *(&v39 + 1) = v14;
  *&v40 = v13;
  *(&v40 + 1) = &protocol witness table for PlainListStyle;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v16 = v27;
  View.listHasStackBehavior()();
  (*(v26 + 8))(v9, v16);
  *&v44 = static Color.clear.getter();
  *&v39 = v16;
  *(&v39 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  v17 = v33;
  v18 = v30;
  View.scrollContentBackground<A>(_:)();

  (*(v28 + 8))(v11, v18);
  KeyPath = swift_getKeyPath();
  v20 = a1[5];
  v41 = a1[4];
  v42 = v20;
  v43 = a1[6];
  v21 = a1[2];
  v40 = a1[3];
  v39 = v21;
  sub_1000BFBAC(&qword_10020B548);
  State.wrappedValue.getter();
  v46 = v36;
  v47 = v37;
  v48 = v38;
  v44 = v34;
  v45 = v35;
  sub_1000C4184(&v44);

  v22 = v45;
  result = sub_1000BFBAC(&qword_10020C7F0);
  v24 = (v17 + *(result + 36));
  *v24 = KeyPath;
  v24[1] = v22;
  return result;
}

uint64_t sub_1000F2DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1000F2EA0(a1, a2);
  static Color.clear.getter();
  v4 = AnyView.init<A>(_:)();

  result = sub_1000BFBAC(&qword_10020C830);
  *(a2 + *(result + 36)) = v4;
  return result;
}

uint64_t sub_1000F2EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BFBAC(&qword_10020C870);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1000BFBAC(&qword_10020C878);
  __chkstk_darwin(v10 - 8);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  type metadata accessor for MainActor();
  v34 = static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 112))
  {
    v17 = sub_1000BFBAC(&qword_10020C880);
    v18 = 1;
    (*(*(v17 - 8) + 56))(v15, 1, 1, v17);
  }

  else
  {
    v32 = a2;
    v33 = v6;
    v31 = &v31;
    __chkstk_darwin(isCurrentExecutor);
    *(&v31 - 2) = a1;
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1000F41D8();
    Section<>.init(header:content:)();
    v19 = sub_1000BFBAC(&qword_10020C880);
    v20 = (*(*(v19 - 8) + 56))(v15, 0, 1, v19);
    v31 = &v31;
    __chkstk_darwin(v20);
    *(&v31 - 2) = a1;
    static MainActor.shared.getter();
    dispatch thunk of Actor.unownedExecutor.getter();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    sub_1000F417C();
    Section<>.init(header:content:)();
    a2 = v32;
    v18 = 0;
    v6 = v33;
  }

  v21 = sub_1000BFBAC(&qword_10020C888);
  (*(*(v21 - 8) + 56))(v9, v18, 1, v21);
  v22 = *(a1 + 72);
  v51 = *(a1 + 56);
  v52 = v22;
  v53 = *(a1 + 88);
  v54 = *(a1 + 104);
  v23 = *(a1 + 40);
  v49 = *(a1 + 24);
  v50 = v23;
  sub_1000C5684(v15, v12, &qword_10020C878);
  sub_1000C5684(v9, v6, &qword_10020C870);
  v37 = v51;
  v38 = v52;
  v39 = v53;
  v40 = v54;
  v35 = v49;
  v36 = v50;
  sub_1000C5684(v12, a2, &qword_10020C878);
  v24 = v12;
  v25 = a2;
  v26 = sub_1000BFBAC(&qword_10020C890);
  sub_1000C5684(v6, v25 + *(v26 + 48), &qword_10020C870);
  v27 = v25 + *(v26 + 64);
  v44 = v38;
  v45 = v39;
  v46 = v40;
  v42 = v36;
  v43 = v37;
  v41 = v35;
  sub_1000C3C18(&v49, v47);
  sub_1000C3C18(&v41, v47);
  sub_1000C5624(v9, &qword_10020C870);
  sub_1000C5624(v15, &qword_10020C878);
  v28 = v44;
  *(v27 + 32) = v43;
  *(v27 + 48) = v28;
  *(v27 + 64) = v45;
  *(v27 + 80) = v46;
  v29 = v42;
  *v27 = v41;
  *(v27 + 16) = v29;
  v47[2] = v37;
  v47[3] = v38;
  v47[4] = v39;
  v48 = v40;
  v47[0] = v35;
  v47[1] = v36;
  sub_1000F4120(v47);
  sub_1000C5624(v6, &qword_10020C870);
  sub_1000C5624(v24, &qword_10020C878);
}

double sub_1000F3470@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);
  v8[0] = *a1;

  sub_1000BFBAC(&qword_10020C8A8);
  State.wrappedValue.getter();
  sub_1000D78D8(v4, v7, v8);

  v5 = v8[1];
  *a2 = v8[0];
  a2[1] = v5;
  a2[2] = v9[0];
  result = *(v9 + 9);
  *(a2 + 41) = *(v9 + 9);
  return result;
}

uint64_t sub_1000F356C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(a1 + 16);

  sub_1000BFBAC(&qword_10020C8A8);
  State.wrappedValue.getter();

  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t sub_1000F365C()
{
  static Axis.Set.vertical.getter();
  sub_1000BFBAC(&qword_10020C7F0);
  sub_1000F3D80();
  return ScrollView.init(_:showsIndicators:content:)();
}

uint64_t sub_1000F3710(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020C0C8);
  __chkstk_darwin(v2 - 8);
  v25 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = v23 - v5;
  v7 = type metadata accessor for UTType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v24 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = v23 - v11;
  __chkstk_darwin(v13);
  v15 = v23 - v14;
  v23[1] = a1;
  URL.pathExtension.getter();
  static UTType.data.getter();
  UTType.init(filenameExtension:conformingTo:)();
  v16 = *(v8 + 48);
  if (v16(v6, 1, v7) == 1)
  {
    static UTType.item.getter();
    if (v16(v6, 1, v7) != 1)
    {
      sub_1000C5624(v6, &qword_10020C0C8);
    }
  }

  else
  {
    (*(v8 + 32))(v15, v6, v7);
  }

  static UTType.image.getter();
  v17 = UTType.conforms(to:)();
  v18 = *(v8 + 8);
  v18(v12, v7);
  v18(v15, v7);
  if (v17)
  {
    return 0;
  }

  URL.pathExtension.getter();
  static UTType.data.getter();
  v20 = v25;
  UTType.init(filenameExtension:conformingTo:)();
  if (v16(v20, 1, v7) == 1)
  {
    v21 = v24;
    static UTType.item.getter();
    if (v16(v20, 1, v7) != 1)
    {
      sub_1000C5624(v20, &qword_10020C0C8);
    }
  }

  else
  {
    v21 = v24;
    (*(v8 + 32))(v24, v20, v7);
  }

  static UTType.pdf.getter();
  v22 = UTType.conforms(to:)();
  v18(v12, v7);
  v18(v21, v7);
  if (v22)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

__n128 sub_1000F3AAC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  static Font.callout.getter();

  State.init(wrappedValue:)();
  v4 = v8;
  swift_getKeyPath();
  *&v8 = a1;
  sub_1000F3C20();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();

  v6 = sub_1000F3710(v5);

  static Font.footnote.getter();
  static HierarchicalShapeStyle.secondary.getter();
  static Font.footnote.getter();
  static HierarchicalShapeStyle.primary.getter();
  State.init(wrappedValue:)();
  *a2 = v4;
  *(a2 + 16) = a1;
  *(a2 + 24) = a1;
  *(a2 + 64) = v10;
  *(a2 + 80) = v11;
  *(a2 + 96) = v12;
  result = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v9;
  *(a2 + 112) = v6;
  return result;
}

unint64_t sub_1000F3C20()
{
  result = qword_10020B498;
  if (!qword_10020B498)
  {
    type metadata accessor for ContentInfoViewerModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020B498);
  }

  return result;
}

__n128 sub_1000F3C78(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000F3CA4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1000F3CEC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000F3D80()
{
  result = qword_10020C7F8;
  if (!qword_10020C7F8)
  {
    sub_1000C3C50(&qword_10020C7F0);
    sub_1000C3C50(&qword_10020C800);
    sub_1000C3C50(&qword_10020C808);
    sub_1000C3C50(&qword_10020C810);
    type metadata accessor for PlainListStyle();
    sub_1000C5490(&qword_10020C818, &qword_10020C810);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1000C5490(&qword_10020C820, &qword_10020C828);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C7F8);
  }

  return result;
}

unint64_t sub_1000F3F64()
{
  result = qword_10020C838;
  if (!qword_10020C838)
  {
    sub_1000C3C50(&qword_10020C830);
    sub_1000F401C();
    sub_1000C5490(&qword_10020C860, &qword_10020C868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C838);
  }

  return result;
}

unint64_t sub_1000F401C()
{
  result = qword_10020C840;
  if (!qword_10020C840)
  {
    sub_1000C3C50(&qword_10020C848);
    sub_1000C5490(&qword_10020C850, &qword_10020C858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C840);
  }

  return result;
}

uint64_t sub_1000F40CC@<X0>(void *a1@<X8>)
{
  result = EnvironmentValues.defaultMinListRowHeight.getter();
  *a1 = v3;
  return result;
}

unint64_t sub_1000F417C()
{
  result = qword_10020C898;
  if (!qword_10020C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C898);
  }

  return result;
}

unint64_t sub_1000F41D8()
{
  result = qword_10020C8A0;
  if (!qword_10020C8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C8A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentInfoViewer.ContentType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ContentInfoViewer.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000F43C4()
{
  result = qword_10020C8C0;
  if (!qword_10020C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C8C0);
  }

  return result;
}

uint64_t sub_1000F4418(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000F4460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataGroup(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDC)
  {
    goto LABEL_17;
  }

  if (a2 + 36 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 36) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 36;
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

      return (*a1 | (v4 << 8)) - 36;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 36;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v8 = v6 - 37;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetadataGroup(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 36 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 36) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDC)
  {
    v4 = 0;
  }

  if (a2 > 0xDB)
  {
    v5 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
    *result = a2 + 36;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000F4630(char a1)
{
  result = 0x6C6172656E6567;
  switch(a1)
  {
    case 1:
      result = 1718188133;
      break;
    case 2:
      result = 0x78754166697865;
      break;
    case 3:
      result = 1668575337;
      break;
    case 4:
      result = 7565415;
      break;
    case 5:
      result = 1717987700;
      break;
    case 6:
      result = 1667851624;
      break;
    case 7:
      result = 6711655;
      break;
    case 8:
      result = 1718183530;
      break;
    case 9:
      result = 6778480;
      break;
    case 10:
      result = 7823730;
      break;
    case 11:
      result = 1717987683;
      break;
    case 12:
      result = 0x6F68736F746F6870;
      break;
    case 13:
      result = 6778468;
      break;
    case 14:
      result = 6383476;
      break;
    case 15:
      result = 0x6D6F636964;
      break;
    case 16:
      result = 7501925;
      break;
    case 17:
      result = 7303277;
      break;
    case 18:
      result = 6710384;
      break;
    case 19:
      result = 7368056;
      break;
    case 20:
      result = 0x6E614372656B616DLL;
      break;
    case 21:
      result = 0x73704572656B616DLL;
      break;
    case 22:
      result = 0x6A754672656B616DLL;
      break;
    case 23:
      result = 0x73614872656B616DLL;
      break;
    case 24:
      result = 0x646F4B72656B616DLL;
      break;
    case 25:
      result = 0x61654C72656B616DLL;
      break;
    case 26:
      result = 0x69654C72656B616DLL;
      break;
    case 27:
      result = 0x6E694D72656B616DLL;
      break;
    case 28:
      result = 0x6B694E72656B616DLL;
      break;
    case 29:
      result = 0x746F4E72656B616DLL;
      break;
    case 30:
      result = 0x796C4F72656B616DLL;
      break;
    case 31:
      result = 0x6E615072656B616DLL;
      break;
    case 32:
      result = 0x6E655072656B616DLL;
      break;
    case 33:
      result = 0x6E6F5372656B616DLL;
      break;
    case 34:
      result = 0x74736F6E67616964;
      break;
    case 35:
      result = 0x617461646174656DLL;
      break;
    case 36:
      result = 0x5365727574636970;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000F4A58()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for LocalizedStringResource.BundleDescription();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v5 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  *v4 = type metadata accessor for BundleLookupReference_ContentInfoViewer();
  (*(v2 + 104))(v4, enum case for LocalizedStringResource.BundleDescription.forClass(_:), v1);
  static Locale.current.getter();
  return LocalizedStringResource.init(_:table:locale:bundle:comment:)();
}

void *sub_1000F5B14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v46 = _swiftEmptyArrayStorage;
  v11 = *(a5 + 24);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = &v37 - v15;
  v39 = a1;
  v40 = a2;
  v41 = a3;
  v11(a1, a2, a3, a4, a5, v14);
  v17 = *(a4 - 8);
  if ((*(v17 + 48))(v16, 1, a4) == 1)
  {
    (*(v13 + 8))(v16, v12);
    v18 = _swiftEmptyArrayStorage;
  }

  else
  {
    *(&v43 + 1) = a4;
    v44 = a5;
    v19 = sub_1000BFCC0(&v42);
    (*(v17 + 32))(v19, v16, a4);
    sub_1000EE820(&v42, v45);
    sub_1000EE6E4(v45, &v42);
    swift_beginAccess();
    v18 = sub_1000EC868(0, 1, 1, _swiftEmptyArrayStorage);
    v21 = v18[2];
    v20 = v18[3];
    if (v21 >= v20 >> 1)
    {
      v18 = sub_1000EC868((v20 > 1), v21 + 1, 1, v18);
    }

    v18[2] = v21 + 1;
    sub_1000EE820(&v42, &v18[5 * v21 + 4]);
    v46 = v18;
    swift_endAccess();
    sub_1000D05A0(v45);
  }

  v22 = *(v38 + 16);
  if (v22)
  {
    v37 = v18;
    for (i = (v38 + 48); ; i += 3)
    {
      v24 = *(i - 1);
      v25 = *i;
      v26 = *(*i + 24);
      v27 = type metadata accessor for Optional();
      v28 = *(v27 - 8);
      v29 = __chkstk_darwin(v27);
      v31 = &v37 - v30;
      v26(v39, v40, v41, v24, v25, v29);
      v32 = *(v24 - 8);
      if ((*(v32 + 48))(v31, 1, v24) != 1)
      {
        break;
      }

      (*(v28 + 8))(v31, v27);
      v44 = 0;
      v42 = 0u;
      v43 = 0u;
      sub_1000F6828(&v42);
      if (!--v22)
      {
        return v37;
      }
    }

    *(&v43 + 1) = v24;
    v44 = v25;
    v33 = sub_1000BFCC0(&v42);
    (*(v32 + 32))(v33, v31, v24);
    sub_1000EE820(&v42, v45);
    sub_1000EE6E4(v45, &v42);
    v18 = v37;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1000EC868(0, v18[2] + 1, 1, v18);
    }

    v35 = v18[2];
    v34 = v18[3];
    if (v35 >= v34 >> 1)
    {
      v18 = sub_1000EC868((v34 > 1), v35 + 1, 1, v18);
    }

    v18[2] = v35 + 1;
    sub_1000EE820(&v42, &v18[5 * v35 + 4]);
    sub_1000D05A0(v45);
  }

  return v18;
}

Swift::Int sub_1000F5F84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F6068()
{
  String.hash(into:)();
}

Swift::Int sub_1000F6138()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000F6218@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F7A14(*a1);
  *a2 = result;
  return result;
}

void sub_1000F6248(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x6E6F6D6D6F63;
  v5 = 0xE300000000000000;
  v6 = 6710384;
  v7 = 0xEB000000006C6175;
  v8 = 0x7369566F69647561;
  if (v2 != 3)
  {
    v8 = 0x69736568746E7973;
    v7 = 0xEB0000000064657ALL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6567616D69;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1000F62E8(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1000F4630(*a1);
  v5 = v4;
  if (v3 == sub_1000F4630(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000F6370()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000F4630(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F63D4()
{
  sub_1000F4630(*v0);
  String.hash(into:)();
}

Swift::Int sub_1000F6428()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_1000F4630(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F6488@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000F67D4();
  *a1 = result;
  return result;
}

uint64_t sub_1000F64B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000F4630(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000F64F8()
{
  result = qword_10020C8D8;
  if (!qword_10020C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C8D8);
  }

  return result;
}

uint64_t sub_1000F654C()
{
  result = sub_1000F73C4();
  *&xmmword_100222568 = result;
  *(&xmmword_100222568 + 1) = v1;
  qword_100222578 = v2;
  return result;
}

uint64_t sub_1000F6580()
{
  type metadata accessor for ContentMetadataValue(0);

  return swift_storeEnumTagMultiPayload();
}

Swift::Int sub_1000F65C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F6634()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_1000F6694()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000F6700@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F3AC0, *a1);

  *a2 = v3 != 0;
  return result;
}

void sub_1000F6754(uint64_t a1@<X8>)
{
  strcpy(a1, "notAvailable");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

uint64_t sub_1000F67D4()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1000F6828(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020C8E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F6890(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v22 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CharacterSet();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[0] = a1;
  v23[1] = a2;
  CharacterSet.init(charactersIn:)();
  sub_1000D8D60();
  StringProtocol.trimmingCharacters(in:)();
  (*(v8 + 8))(v10, v7);
  v11 = String.uppercased()();

  String.lowercased()();
  v12 = v11._countAndFlagsBits == 1179211845 && v11._object == 0xE400000000000000;
  if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v11._countAndFlagsBits == 0x584546495845 ? (v13 = v11._object == 0xE600000000000000) : (v13 = 0), v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 1;
  }

  v15 = v11._countAndFlagsBits == 0x58554146495845 && v11._object == 0xE700000000000000;
  if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  if (v11._countAndFlagsBits == 1296646712 && v11._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11._countAndFlagsBits == 0x4F48534F544F4850 && v11._object == 0xE900000000000050 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  if (v11._countAndFlagsBits == 1179206984 && v11._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11._countAndFlagsBits == 1128875336 && v11._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  if (v11._countAndFlagsBits == 0x4E414352454B414DLL && v11._object == 0xEA00000000004E4FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  if (v11._countAndFlagsBits == 0x53504552454B414DLL && v11._object == 0xEA00000000004E4FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  if (v11._countAndFlagsBits == 0x4A554652454B414DLL && v11._object == 0xE900000000000049 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  if (v11._countAndFlagsBits == 0x53414852454B414DLL && v11._object == 0xEF44414C42454C53 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  if (v11._countAndFlagsBits == 0x444F4B52454B414DLL && v11._object == 0xEA00000000004B41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  if (v11._countAndFlagsBits == 0x41454C52454B414DLL && v11._object == 0xE900000000000046 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  if (v11._countAndFlagsBits == 0x49454C52454B414DLL && v11._object == 0xEA00000000004143 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  if (v11._countAndFlagsBits == 0x4E494D52454B414DLL && v11._object == 0xEC00000041544C4FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  if (v11._countAndFlagsBits == 0x4B494E52454B414DLL && v11._object == 0xEA00000000004E4FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  if (v11._countAndFlagsBits == 0x544F4E52454B414DLL && v11._object == 0xED00004F464E4945 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  if (v11._countAndFlagsBits == 0x594C4F52454B414DLL && v11._object == 0xEC0000005355504DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  if (v11._countAndFlagsBits == 0x4E415052454B414DLL && v11._object == 0xEE0043494E4F5341 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  if (v11._countAndFlagsBits == 0x4E455052454B414DLL && v11._object == 0xEB00000000584154 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  if (v11._countAndFlagsBits == 0x4E4F5352454B414DLL && v11._object == 0xE900000000000059 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  if (v11._countAndFlagsBits == 0x5345525554434950 && v11._object == 0xEC000000454C5954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  if (v11._countAndFlagsBits == 0x54534F4E47414944 && v11._object == 0xEA00000000004349 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  if (v11._countAndFlagsBits == 0x415441444154454DLL && v11._object == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  if (v11._countAndFlagsBits == 17220 && v11._object == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v11._countAndFlagsBits == 5196105 && v11._object == 0xE300000000000000)
  {

LABEL_107:

    return 37;
  }

  v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v16)
  {
    goto LABEL_107;
  }

  result = sub_1000F67D4();
  if (result == 37)
  {
    Logger.init(subsystem:category:)();

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23[0] = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1000EA7B4(a1, a2, v23);
      _os_log_impl(&dword_100000000, v17, v18, "ERROR: unable to determine group for tagPrefix: %s", v19, 0xCu);
      sub_1000D05A0(v20);
    }

    (*(v22 + 8))(v6, v4);
    return 37;
  }

  return result;
}

uint64_t sub_1000F73C4()
{
  v0 = type metadata accessor for CommonMetadataProvider(0);
  sub_1000F7538(&qword_10020C8E8, type metadata accessor for CommonMetadataProvider);
  sub_1000BFBAC(&qword_10020C8F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_10019D790;
  *(v1 + 32) = 3;
  v2 = sub_1000F74E4();
  *(v1 + 40) = &type metadata for UnimplementedDomain.Provider;
  *(v1 + 48) = v2;
  *(v1 + 56) = 2;
  v3 = type metadata accessor for PDFMetadataProvider(0);
  v4 = sub_1000F7538(&qword_10020C900, type metadata accessor for PDFMetadataProvider);
  *(v1 + 64) = v3;
  *(v1 + 72) = v4;
  *(v1 + 80) = 1;
  v5 = sub_1000F7580();
  *(v1 + 88) = &type metadata for ImageMetadataProvider;
  *(v1 + 96) = v5;
  return v0;
}

unint64_t sub_1000F74E4()
{
  result = qword_10020C8F8;
  if (!qword_10020C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C8F8);
  }

  return result;
}

uint64_t sub_1000F7538(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F7580()
{
  result = qword_10020C908;
  if (!qword_10020C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C908);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetadataDomain(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MetadataDomain(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000F7738()
{
  result = qword_10020C910;
  if (!qword_10020C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C910);
  }

  return result;
}

unint64_t sub_1000F7790()
{
  result = qword_10020C918;
  if (!qword_10020C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C918);
  }

  return result;
}

unint64_t sub_1000F77E4(uint64_t a1)
{
  *(a1 + 8) = sub_1000F7814();
  result = sub_1000F7868();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F7814()
{
  result = qword_10020C950;
  if (!qword_10020C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C950);
  }

  return result;
}

unint64_t sub_1000F7868()
{
  result = qword_10020C958;
  if (!qword_10020C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C958);
  }

  return result;
}

uint64_t sub_1000F78EC(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000C3C50(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000F7940(uint64_t a1)
{
  result = sub_1000F7968();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F7968()
{
  result = qword_10020C970;
  if (!qword_10020C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C970);
  }

  return result;
}

unint64_t sub_1000F79C0()
{
  result = qword_10020C978;
  if (!qword_10020C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C978);
  }

  return result;
}

unint64_t sub_1000F7A14(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F3A28, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for UnimplementedDomain.MetadataKey(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UnimplementedDomain.MetadataKey(_WORD *result, int a2, int a3)
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

unint64_t sub_1000F7B58(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 <= 3u)
  {
    v9 = 0xE500000000000000;
    v10 = 0x656C746974;
    v11 = 0xE700000000000000;
    v12 = 0x726F7461657263;
    if (a1 != 2)
    {
      v12 = 0xD000000000000013;
      v11 = 0x80000001001B3270;
    }

    if (a1)
    {
      v10 = 0x73726F68747561;
      v9 = 0xE700000000000000;
    }

    if (a1 <= 1u)
    {
      v7 = v10;
    }

    else
    {
      v7 = v12;
    }

    if (v1 <= 1)
    {
      v8 = v9;
    }

    else
    {
      v8 = v11;
    }
  }

  else
  {
    v2 = 0x80000001001B3290;
    v3 = 0xEE00646F6874654DLL;
    v4 = 0x7974697275636573;
    if (a1 != 7)
    {
      v4 = 0x6E6F6973726576;
      v3 = 0xE700000000000000;
    }

    if (a1 == 6)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v2 = v3;
    }

    v5 = 0xE800000000000000;
    v6 = 0x7364726F7779656BLL;
    if (a1 != 4)
    {
      v6 = 0x6E756F4365676170;
      v5 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v1 <= 5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  v13 = v8;
  String.append(_:)(*&v7);

  return 0xD00000000000001ELL;
}

unint64_t sub_1000F7CD0(unsigned __int8 a1)
{
  v1 = a1;
  v2 = 0xE800000000000000;
  v3 = 0x656D616E656C6966;
  v4 = 0x6E6F697461657263;
  v5 = 0x6465696669646F6DLL;
  if (a1 != 4)
  {
    v5 = 0x646573557473616CLL;
  }

  if (a1 != 3)
  {
    v4 = v5;
  }

  v6 = 0xEB00000000646E69;
  v7 = 0x4B746E65746E6F63;
  if (a1 != 1)
  {
    v7 = 0x53746E65746E6F63;
    v6 = 0xEB00000000657A69;
  }

  if (a1)
  {
    v3 = v7;
    v2 = v6;
  }

  if (a1 <= 2u)
  {
    v8 = v3;
  }

  else
  {
    v8 = v4;
  }

  if (v1 <= 2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xEC00000065746144;
  }

  v10 = v9;
  String.append(_:)(*&v8);

  return 0xD000000000000021;
}

Swift::Int sub_1000F7E14()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000F7CD0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000F7E90()
{
  v1 = *v0;
  String.hash(into:)();
  sub_1000F7CD0(v1);
  String.hash(into:)();
}

Swift::Int sub_1000F7EFC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();
  sub_1000F7CD0(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000F7F74@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000F840C(*a1);
  *a2 = result;
  return result;
}

void sub_1000F7FA4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x656D616E656C6966;
  v5 = 0x6E6F697461657263;
  v6 = 0x6465696669646F6DLL;
  if (v2 != 4)
  {
    v6 = 0x646573557473616CLL;
  }

  if (v2 != 3)
  {
    v5 = v6;
  }

  v7 = 0xEB00000000646E69;
  v8 = 0x4B746E65746E6F63;
  if (v2 != 1)
  {
    v8 = 0x53746E65746E6F63;
    v7 = 0xEB00000000657A69;
  }

  if (*v1)
  {
    v4 = v8;
    v3 = v7;
  }

  if (*v1 <= 2u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = 0xEC00000065746144;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_1000F8098(uint64_t a1)
{
  *(a1 + 8) = sub_1000F80C8();
  result = sub_1000F811C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1000F80C8()
{
  result = qword_10020C980;
  if (!qword_10020C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C980);
  }

  return result;
}

unint64_t sub_1000F811C()
{
  result = qword_10020C988;
  if (!qword_10020C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C988);
  }

  return result;
}

unint64_t sub_1000F8174()
{
  result = qword_10020C990;
  if (!qword_10020C990)
  {
    sub_1000C3C50(&qword_10020C998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C990);
  }

  return result;
}

unint64_t sub_1000F81E8(uint64_t a1)
{
  result = sub_1000F8210();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000F8210()
{
  result = qword_10020C9A0;
  if (!qword_10020C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C9A0);
  }

  return result;
}

unint64_t sub_1000F8268()
{
  result = qword_10020C9A8;
  if (!qword_10020C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020C9A8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CommonMetadataKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for CommonMetadataKey(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000F840C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F3AF8, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000F846C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonMetadataProvider.Ivars(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000F850C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonMetadataProvider.Ivars(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000F859C()
{
  result = type metadata accessor for CommonMetadataProvider.Ivars(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000F861C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for UTType();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[6]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = sub_1000BFBAC(&qword_10020CA40);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[7];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1000F87B0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for UTType();
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v15 = sub_1000BFBAC(&qword_10020CA40);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[7];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000F8930()
{
  type metadata accessor for URL();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UTType();
    if (v1 <= 0x3F)
    {
      sub_1000F89FC();
      if (v2 <= 0x3F)
      {
        sub_1000F8A48();
        if (v3 <= 0x3F)
        {
          type metadata accessor for MetadataLocalizer();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1000F89FC()
{
  result = qword_10020CAB0;
  if (!qword_10020CAB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10020CAB0);
  }

  return result;
}

void sub_1000F8A48()
{
  if (!qword_10020CAB8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020CAB8);
    }
  }
}

unint64_t sub_1000F8AA4()
{
  result = qword_10020CAF8;
  if (!qword_10020CAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CAF8);
  }

  return result;
}

uint64_t sub_1000F8AF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = sub_1000BFBAC(&qword_10020CA40);
  __chkstk_darwin(v6 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v30 - v10;
  v12 = objc_opt_self();
  v13 = [v12 defaultManager];
  URL.path.getter();
  v14 = String._bridgeToObjectiveC()();

  v33 = 0;
  v15 = [v13 attributesOfItemAtPath:v14 error:&v33];

  if (v15)
  {
    v16 = v33;
  }

  else
  {
    v17 = v33;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    sub_1000F89FC();
    v15 = NSDictionary.init(dictionaryLiteral:)();
  }

  URL._bridgeToObjectiveC()(v18);
  v20 = v19;
  v21 = FPFileMetadataCopyLastUsedDateAtURL();

  if (v21)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(v8, v22, 1, v23);
  sub_1000FA01C(v8, v11);
  v24 = type metadata accessor for URL();
  (*(*(v24 - 8) + 16))(a4, a1, v24);
  v25 = type metadata accessor for CommonMetadataProvider.Ivars(0);
  v26 = v25[5];
  v27 = type metadata accessor for UTType();
  (*(*(v27 - 8) + 16))(a4 + v26, v31, v27);
  *(a4 + v25[6]) = v15;
  sub_1000FA01C(v11, a4 + v25[7]);
  *(a4 + v25[8]) = v32;
  v28 = type metadata accessor for CommonMetadataProvider(0);
  (*(*(v28 - 8) + 56))(a4, 0, 1, v28);
}

uint64_t sub_1000F8E48@<X0>(unsigned __int8 a1@<W0>, uint64_t (**a2)()@<X8>)
{
  v65 = a2;
  v4 = type metadata accessor for Date();
  v62 = *(v4 - 8);
  v63 = v4;
  __chkstk_darwin(v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BFBAC(&qword_10020CA40);
  __chkstk_darwin(v7 - 8);
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v62 - v11;
  __chkstk_darwin(v13);
  v15 = &v62 - v14;
  v64 = type metadata accessor for ContentMetadataValue(0);
  __chkstk_darwin(v64);
  v17 = (&v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for CommonMetadataProvider(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  if (a1 <= 2u)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        type metadata accessor for CommonMetadataProvider.Ivars(0);
        v21 = UTType.localizedDescription.getter();
        if (v22)
        {
          v24 = v21;
          v25 = v22;
          sub_1000F9BFC(1, v21, v22, v23);
          v26 = Substring.uppercased()();

          v28 = sub_1000F9C98(1uLL, v24, v25, v27);
          v30 = v29;
          v32 = v31;
          v34 = v33;

          v70 = v26;
          v66 = v28;
          v67 = v30;
          v68 = v32;
          v69 = v34;
          sub_1000F9D48();
          String.append<A>(contentsOf:)();

          object = v70._object;
          countAndFlagsBits = v70._countAndFlagsBits;
          v37 = swift_allocObject();
          *(v37 + 16) = __PAIR128__(object, countAndFlagsBits);
          *v17 = sub_1000D0D0C;
          v17[1] = v37;
          swift_storeEnumTagMultiPayload();
          return sub_1000F9D9C(v17, v65, type metadata accessor for ContentMetadataValue);
        }

        return swift_storeEnumTagMultiPayload();
      }

      v48 = [*(v2 + *(type metadata accessor for CommonMetadataProvider.Ivars(0) + 24)) fileSize];
      sub_1000F9944(v2, &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v49 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v43 = swift_allocObject();
      sub_1000F9D9C(&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v49, type metadata accessor for CommonMetadataProvider);
      *(v43 + ((v20 + v49 + 7) & 0xFFFFFFFFFFFFFFF8)) = v48;
      v44 = sub_1000F9B70;
    }

    else
    {
      sub_1000F9944(v2, &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      v42 = (*(v19 + 80) + 16) & ~*(v19 + 80);
      v43 = swift_allocObject();
      sub_1000F9D9C(&v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v43 + v42, type metadata accessor for CommonMetadataProvider);
      v44 = sub_1000F9FC0;
    }

    v50 = v65;
    *v65 = v44;
    v50[1] = v43;
    return swift_storeEnumTagMultiPayload();
  }

  if (a1 == 3)
  {
    v45 = [*(v2 + *(type metadata accessor for CommonMetadataProvider.Ivars(0) + 24)) fileCreationDate];
    v46 = v63;
    if (v45)
    {
      v47 = v45;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v62 + 56))(v15, 0, 1, v46);
    }

    else
    {
      (*(v62 + 56))(v15, 1, 1, v63);
    }

    sub_1000F95BC(v15, v65);
    v61 = v15;
  }

  else
  {
    v39 = v63;
    if (a1 != 4)
    {
      v51 = type metadata accessor for CommonMetadataProvider.Ivars(0);
      sub_1000F9834(v2 + *(v51 + 28), v9);
      v52 = v62;
      if ((*(v62 + 48))(v9, 1, v39) == 1)
      {
        sub_1000F98A4(v9);
      }

      else
      {
        (*(v52 + 32))(v6, v9, v39);
        v53 = *(*(v2 + *(v51 + 32)) + 96);
        sub_1000BFBAC(&qword_10020B7A8);
        v54 = (*(v52 + 80) + 32) & ~*(v52 + 80);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_10019A9F0;
        (*(v52 + 16))(v55 + v54, v6, v39);
        v56 = v53(v55);
        v58 = v57;

        (*(v52 + 8))(v6, v39);
        if (v58)
        {
          v59 = swift_allocObject();
          *(v59 + 16) = v56;
          *(v59 + 24) = v58;
          v60 = v65;
          *v65 = sub_1000D0784;
          v60[1] = v59;
        }
      }

      return swift_storeEnumTagMultiPayload();
    }

    v40 = [*(v2 + *(type metadata accessor for CommonMetadataProvider.Ivars(0) + 24)) fileModificationDate];
    if (v40)
    {
      v41 = v40;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      (*(v62 + 56))(v12, 0, 1, v39);
    }

    else
    {
      (*(v62 + 56))(v12, 1, 1, v39);
    }

    sub_1000F95BC(v12, v65);
    v61 = v12;
  }

  return sub_1000F98A4(v61);
}

void *sub_1000F952C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonMetadataProvider.Ivars(0);
  result = (*(*(a1 + *(v4 + 32)) + 64))();
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = [result stringFromByteCount:a2];

    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    return v8;
  }

  return result;
}

uint64_t sub_1000F95BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = sub_1000BFBAC(&qword_10020CA40);
  __chkstk_darwin(v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000F9834(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1000F98A4(v7);
LABEL_5:
    type metadata accessor for ContentMetadataValue(0);
    return swift_storeEnumTagMultiPayload();
  }

  (*(v9 + 32))(v11, v7, v8);
  v12 = *(*(v2 + *(type metadata accessor for CommonMetadataProvider.Ivars(0) + 32)) + 96);
  sub_1000BFBAC(&qword_10020B7A8);
  v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10019A9F0;
  (*(v9 + 16))(v14 + v13, v11, v8);
  v15 = v12(v14);
  v17 = v16;

  (*(v9 + 8))(v11, v8);
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = swift_allocObject();
  *(v18 + 16) = v15;
  *(v18 + 24) = v17;
  *a2 = sub_1000D0D0C;
  a2[1] = v18;
  type metadata accessor for ContentMetadataValue(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1000F9834(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020CA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F98A4(uint64_t a1)
{
  v2 = sub_1000BFBAC(&qword_10020CA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F990C()
{

  return swift_deallocObject();
}

uint64_t sub_1000F9944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonMetadataProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F99A8()
{
  v1 = *(type metadata accessor for CommonMetadataProvider(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for CommonMetadataProvider.Ivars(0);
  v5 = v4[5];
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v4[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

void *sub_1000F9B70()
{
  v1 = *(type metadata accessor for CommonMetadataProvider(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000F952C(v0 + v2, v3);
}

uint64_t sub_1000F9BFC(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v5 = a2;
    v6 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v6 = a2;
    }

    v7 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v7 = 11;
    }

    v8 = v7 | (v6 << 16);
    v9 = String.index(_:offsetBy:limitedBy:)();
    if (v10)
    {
      a2 = v8;
    }

    else
    {
      a2 = v9;
    }

    a1 = 15;
    a3 = v5;
    a4 = v4;
  }

  return String.subscript.getter(a1, a2, a3, a4);
}

uint64_t sub_1000F9C98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return String.subscript.getter(a1, a2, a3, a4);
  }

  v4 = a3;
  v5 = a2;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v6 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  a1 = String.index(_:offsetBy:limitedBy:)();
  if (a2)
  {
    a1 = v8;
  }

  if (4 * v6 < a1 >> 14)
  {
    goto LABEL_14;
  }

  a2 = v8;
  a3 = v5;
  a4 = v4;

  return String.subscript.getter(a1, a2, a3, a4);
}

unint64_t sub_1000F9D48()
{
  result = qword_10020CB30;
  if (!qword_10020CB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CB30);
  }

  return result;
}

uint64_t sub_1000F9D9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000F9E04()
{
  v1 = *(type metadata accessor for CommonMetadataProvider(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 8))(v2, v3);
  v4 = type metadata accessor for CommonMetadataProvider.Ivars(0);
  v5 = v4[5];
  v6 = type metadata accessor for UTType();
  (*(*(v6 - 8) + 8))(v2 + v5, v6);

  v7 = v4[7];
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1000FA01C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020CA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FA094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _ConditionalContent.Storage();
  v5 = __chkstk_darwin(v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000FA18C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for _ConditionalContent.Storage();
  v6 = __chkstk_darwin(v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return _ConditionalContent<>.init(storage:)();
}

uint64_t sub_1000FA284()
{
  sub_1000D5BFC();
  EnvironmentValues.subscript.getter();
  return v1;
}

uint64_t sub_1000FA2C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v35[3] = a5;
  v35[4] = a7;
  v38 = a3;
  v35[1] = a1;
  v35[2] = a2;
  v42 = a8;
  v37 = *(a4 - 8);
  __chkstk_darwin(a1);
  v36 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = v35 - v12;
  v14 = type metadata accessor for ZoomNavigationTransition();
  v35[0] = *(v14 - 8);
  __chkstk_darwin(v14);
  v16 = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a4;
  v46 = v17;
  v47 = a6;
  v48 = &protocol witness table for ZoomNavigationTransition;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v24 = v35 - v23;
  v25 = type metadata accessor for _ConditionalContent();
  v40 = *(v25 - 8);
  v41 = v25;
  __chkstk_darwin(v25);
  v27 = v35 - v26;
  if (v38)
  {
    sub_1000D68F0(v39, a4, a6);
    v28 = v36;
    sub_1000D68F0(v13, a4, a6);
    v45 = a4;
    v46 = v14;
    v47 = a6;
    v48 = &protocol witness table for ZoomNavigationTransition;
    swift_getOpaqueTypeConformance2();
    sub_1000FA18C(v28, OpaqueTypeMetadata2, a4);
    v29 = *(v37 + 8);
    v29(v28, a4);
    v29(v13, a4);
  }

  else
  {
    static NavigationTransition<>.zoom<A>(sourceID:in:)();
    View.navigationTransition<A>(_:)();
    (*(v35[0] + 8))(v16, v14);
    v45 = a4;
    v46 = v14;
    v47 = a6;
    v48 = &protocol witness table for ZoomNavigationTransition;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1000D68F0(v21, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v31 = *(v19 + 8);
    v31(v21, OpaqueTypeMetadata2);
    sub_1000D68F0(v24, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    sub_1000FA094(v21, OpaqueTypeMetadata2);
    v31(v21, OpaqueTypeMetadata2);
    v31(v24, OpaqueTypeMetadata2);
  }

  v45 = a4;
  v46 = v14;
  v47 = a6;
  v48 = &protocol witness table for ZoomNavigationTransition;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = a6;
  v32 = v41;
  WitnessTable = swift_getWitnessTable();
  sub_1000D68F0(v27, v32, WitnessTable);
  return (*(v40 + 8))(v27, v32);
}

uint64_t sub_1000FA7D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1000FA83C();

  return static EnvironmentKey<>._valuesEqual(_:_:)(a1, a2, a3, a4, v8);
}

unint64_t sub_1000FA83C()
{
  result = qword_10020CB38;
  if (!qword_10020CB38)
  {
    sub_1000C3C50(&qword_10020BA58);
    sub_1000FA8C0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CB38);
  }

  return result;
}

unint64_t sub_1000FA8C0()
{
  result = qword_10020CB40;
  if (!qword_10020CB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CB40);
  }

  return result;
}

uint64_t sub_1000FA938()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000FA9E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  *a2 = *(v3 + 16);
}

uint64_t sub_1000FAAD4()
{
  swift_getKeyPath();
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
}

uint64_t type metadata accessor for ContentInfoViewerModel()
{
  result = qword_10020CCF8;
  if (!qword_10020CCF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FAC08(uint64_t a1)
{
  swift_beginAccess();
  if (*(v1 + 16) != a1)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000FAD30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

void (*sub_1000FADB4(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17ContentInfoViewer22ContentInfoViewerModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000FA998();
  return sub_1000FAEEC;
}

uint64_t sub_1000FAEF8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  sub_1000BFBAC(&qword_10020BAC0);
  v2[4] = swift_task_alloc();
  v2[5] = type metadata accessor for MainActor();
  v2[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000FAFCC, v4, v3);
}

uint64_t sub_1000FAFCC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);

  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  v6[2] = v5;
  v6[3] = &protocol witness table for MainActor;
  v6[4] = v2;
  v6[5] = v3;
  sub_1000DEBD8(0, 0, v1, &unk_1001A3340, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000FB0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MainActor();
  v5[9] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[10] = v7;
  v5[11] = v6;

  return _swift_task_switch(sub_1000FB184, v7, v6);
}

uint64_t sub_1000FB184()
{
  v1 = v0[7];
  swift_getKeyPath();
  v0[5] = v1;
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v2 = *(v1 + 16);
  v0[12] = v2;
  swift_getKeyPath();
  v0[6] = v2;
  sub_1000FCE24(&qword_10020B3E8, type metadata accessor for ContentMetadata);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17ContentInfoViewer15ContentMetadata__needsInitialMetadataFetch))
  {

    sub_1000FAC08(v3);

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_1000FB39C;

    return sub_1000DE6EC();
  }
}

uint64_t sub_1000FB39C()
{
  v1 = *v0;

  v2 = *(v1 + 88);
  v3 = *(v1 + 80);

  return _swift_task_switch(sub_1000FB4BC, v3, v2);
}

uint64_t sub_1000FB4BC()
{

  sub_1000FAC08(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000FB534()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1000FB57C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000E8B20;

  return sub_1000FB0EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1000FB63C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 24);
  return result;
}

uint64_t sub_1000FB71C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a1 = *(v1 + 24);
  return result;
}

uint64_t sub_1000FB800(unsigned __int8 *a1)
{
  v2 = *a1;
  if (*(v1 + 24))
  {
    v3 = 0x6E6F43656772616CLL;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (*(v1 + 24))
  {
    v4 = 0xEC000000746E6574;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (v2)
  {
    v5 = 0x6E6F43656772616CLL;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (v2)
  {
    v6 = 0xEC000000746E6574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1000FB994(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = 0;
  ObservationRegistrar.init()();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t sub_1000FB9E4(uint64_t a1)
{
  *(v1 + 24) = 0;
  ObservationRegistrar.init()();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_1000FBA20(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 25) == v2)
  {
    *(v1 + 25) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_1000FBB98@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 25);
  return result;
}

uint64_t sub_1000FBCA8()
{
  swift_getKeyPath();
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 25);
}

uint64_t sub_1000FBD5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 25) = v2;
  return result;
}

void (*sub_1000FBDB0(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17ContentInfoViewer22ContentInfoViewerModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1000FBB44();
  return sub_1000FBEE8;
}

void sub_1000FBEF4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

uint64_t sub_1000FBF88(uint64_t a1)
{
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v10 = v1;
  sub_1000FCE24(&qword_10020B498, type metadata accessor for ContentInfoViewerModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  if ((*(v1 + 25) & 1) == 0)
  {
    (*(v4 + 104))(v6, enum case for ContentSizeCategory.accessibilityLarge(_:), v3);
    v8 = sub_1000FC5E4(a1, v6);
    (*(v4 + 8))(v6, v3);
    HIBYTE(v9) = v8;
    return sub_1000FB800(&v9 + 7);
  }

  return result;
}

uint64_t sub_1000FC130()
{

  v1 = OBJC_IVAR____TtC17ContentInfoViewer22ContentInfoViewerModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000FC198()
{

  v1 = OBJC_IVAR____TtC17ContentInfoViewer22ContentInfoViewerModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1000FC23C()
{
  if (*v0)
  {
    return 0x6E6F43656772616CLL;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_1000FC280@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F3BD0, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_1000FC2F0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E6F43656772616CLL;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xEC000000746E6574;
  }

  if (*a2)
  {
    v5 = 0x6E6F43656772616CLL;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xEC000000746E6574;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000FC3A0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FC42C()
{
  String.hash(into:)();
}

Swift::Int sub_1000FC4A4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000FC52C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F3BD0, *a1);

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

  *a2 = v5;
  return result;
}

void sub_1000FC58C(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x6E6F43656772616CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xEC000000746E6574;
  }

  *a1 = v2;
  a1[1] = v3;
}

BOOL sub_1000FC5E4(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v3 = type metadata accessor for ContentSizeCategory();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v19 - v9;
  v11 = *(v4 + 16);
  v11(&v19 - v9, a2, v3, v8);
  v12 = *(v4 + 88);
  v13 = v12(v10, v3);
  v14 = 0;
  v15 = enum case for ContentSizeCategory.extraSmall(_:);
  if (v13 != enum case for ContentSizeCategory.extraSmall(_:))
  {
    if (v13 == enum case for ContentSizeCategory.small(_:))
    {
      v14 = 1;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.medium(_:))
    {
      v14 = 2;
      goto LABEL_24;
    }

    if (v13 == enum case for ContentSizeCategory.large(_:))
    {
      goto LABEL_7;
    }

    if (v13 == enum case for ContentSizeCategory.extraLarge(_:))
    {
      v14 = 4;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraLarge(_:))
    {
      v14 = 5;
    }

    else if (v13 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
    {
      v14 = 6;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityMedium(_:))
    {
      v14 = 7;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityLarge(_:))
    {
      v14 = 8;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
    {
      v14 = 9;
    }

    else if (v13 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
    {
      v14 = 10;
    }

    else
    {
      if (v13 != enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        (*(v4 + 8))(v10, v3);
LABEL_7:
        v14 = 3;
        goto LABEL_24;
      }

      v14 = 11;
    }
  }

LABEL_24:
  (v11)(v6, v20, v3);
  v16 = v12(v6, v3);
  if (v16 == v15)
  {
    v17 = 0;
  }

  else if (v16 == enum case for ContentSizeCategory.small(_:))
  {
    v17 = 1;
  }

  else if (v16 == enum case for ContentSizeCategory.medium(_:))
  {
    v17 = 2;
  }

  else
  {
    if (v16 != enum case for ContentSizeCategory.large(_:))
    {
      if (v16 == enum case for ContentSizeCategory.extraLarge(_:))
      {
        v17 = 4;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraLarge(_:))
      {
        v17 = 5;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.extraExtraExtraLarge(_:))
      {
        v17 = 6;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityMedium(_:))
      {
        v17 = 7;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityLarge(_:))
      {
        v17 = 8;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraLarge(_:))
      {
        v17 = 9;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraLarge(_:))
      {
        v17 = 10;
        return v14 < v17;
      }

      if (v16 == enum case for ContentSizeCategory.accessibilityExtraExtraExtraLarge(_:))
      {
        v17 = 11;
        return v14 < v17;
      }

      (*(v4 + 8))(v6, v3);
    }

    v17 = 3;
  }

  return v14 < v17;
}

unint64_t sub_1000FCA00()
{
  result = qword_10020CCB8;
  if (!qword_10020CCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CCB8);
  }

  return result;
}

unint64_t sub_1000FCA58()
{
  result = qword_10020CCC0;
  if (!qword_10020CCC0)
  {
    sub_1000C3C50(&qword_10020CCC8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CCC0);
  }

  return result;
}

uint64_t sub_1000FCAC4()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_1000FCBF4(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1000D5B00;

  return v6(a1);
}

uint64_t sub_1000FCE24(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FCF68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, unint64_t *a6)
{
  v14 = a3;
  v9 = sub_1000BFBAC(a4);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  v12 = type metadata accessor for DynamicTypeSize();
  sub_1000FF0DC(&qword_10020CF10, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    (*(*(v12 - 8) + 16))(v11, a1, v12);
    sub_1000C5490(a6, a4);
    View.dynamicTypeSize<A>(_:)();
    return sub_1000C5624(v11, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000FD0E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  __chkstk_darwin(v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C5684(a1, &v6[*(v7 + 20)], &qword_10020CF30);
  v8 = v4[6];
  v9 = type metadata accessor for DynamicTypeSize();
  (*(*(v9 - 8) + 16))(&v6[v8], a2, v9);
  *v6 = &_swiftEmptySetSingleton;
  v10 = v4[7];
  *&v6[v10] = swift_getKeyPath();
  sub_1000BFBAC(&qword_10020CF38);
  swift_storeEnumTagMultiPayload();
  v11 = v4[8];
  *&v6[v11] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  View.modifier<A>(_:)();
  return sub_1000FE468(v6);
}

uint64_t type metadata accessor for DynamicTypeCompactEnvironmentLimiter()
{
  result = qword_10020CFA8;
  if (!qword_10020CFA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

{
  result = qword_10020E238;
  if (!qword_10020E238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000FD2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  __chkstk_darwin(v6);
  v8 = (&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1000FE898(a4);
  v10 = v6[5];
  v11 = type metadata accessor for UserInterfaceSizeClass();
  (*(*(v11 - 8) + 56))(v8 + v10, 1, 1, v11);
  v12 = v6[6];
  v13 = type metadata accessor for DynamicTypeSize();
  (*(*(v13 - 8) + 16))(v8 + v12, a1, v13);
  *v8 = v9;
  v14 = v6[7];
  *(v8 + v14) = swift_getKeyPath();
  sub_1000BFBAC(&qword_10020CF38);
  swift_storeEnumTagMultiPayload();
  v15 = v6[8];
  *(v8 + v15) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  View.modifier<A>(_:)();
  return sub_1000FE468(v8);
}

uint64_t sub_1000FD490@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v92 = sub_1000BFBAC(&qword_10020D010);
  __chkstk_darwin(v92);
  v91 = &v78[-v4];
  v5 = type metadata accessor for DynamicTypeSize();
  v95 = *(v5 - 8);
  v96 = v5;
  __chkstk_darwin(v5);
  v94 = &v78[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for UserInterfaceSizeClass();
  v98 = *(v7 - 8);
  __chkstk_darwin(v7);
  v83 = &v78[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1000BFBAC(&qword_10020D018);
  __chkstk_darwin(v9);
  v87 = &v78[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v90 = &v78[-v12];
  __chkstk_darwin(v13);
  v15 = &v78[-v14];
  v16 = sub_1000BFBAC(&qword_10020CF30);
  __chkstk_darwin(v16 - 8);
  v82 = &v78[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v86 = &v78[-v19];
  __chkstk_darwin(v20);
  v22 = &v78[-v21];
  __chkstk_darwin(v23);
  v84 = &v78[-v24];
  __chkstk_darwin(v25);
  v85 = &v78[-v26];
  __chkstk_darwin(v27);
  v29 = &v78[-v28];
  __chkstk_darwin(v30);
  v32 = &v78[-v31];
  __chkstk_darwin(v33);
  v35 = &v78[-v34];
  v97 = v2;
  v36 = *v2;
  v37 = sub_1000FE230(0, *v2);
  v88 = v9;
  v81 = v22;
  if (v37)
  {
    v80 = a1;
    v89 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
    sub_1000FE6C8(v35);
    v38 = v98;
    (*(v98 + 104))(v32, enum case for UserInterfaceSizeClass.compact(_:), v7);
    (*(v38 + 56))(v32, 0, 1, v7);
    v39 = *(v9 + 48);
    sub_1000C5684(v35, v15, &qword_10020CF30);
    sub_1000C5684(v32, &v15[v39], &qword_10020CF30);
    v40 = *(v38 + 48);
    if (v40(v15, 1, v7) == 1)
    {
      sub_1000C5624(v32, &qword_10020CF30);
      sub_1000C5624(v35, &qword_10020CF30);
      if (v40(&v15[v39], 1, v7) == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    sub_1000C5684(v15, v29, &qword_10020CF30);
    if (v40(&v15[v39], 1, v7) == 1)
    {
      sub_1000C5624(v32, &qword_10020CF30);
      sub_1000C5624(v35, &qword_10020CF30);
      (*(v98 + 8))(v29, v7);
LABEL_7:
      sub_1000C5624(v15, &qword_10020D018);
      v9 = v88;
      goto LABEL_8;
    }

    v69 = v98;
    v70 = v83;
    (*(v98 + 32))(v83, &v15[v39], v7);
    sub_1000FF0DC(&qword_10020D038, &type metadata accessor for UserInterfaceSizeClass);
    v79 = dispatch thunk of static Equatable.== infix(_:_:)();
    v71 = *(v69 + 8);
    v71(v70, v7);
    sub_1000C5624(v32, &qword_10020CF30);
    sub_1000C5624(v35, &qword_10020CF30);
    v71(v29, v7);
    sub_1000C5624(v15, &qword_10020CF30);
    v9 = v88;
    v41 = v89;
    if (v79)
    {
      goto LABEL_20;
    }
  }

LABEL_8:
  if (!sub_1000FE230(1, v36))
  {
    v51 = enum case for UserInterfaceSizeClass.compact(_:);
    goto LABEL_16;
  }

  v41 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  v42 = v85;
  sub_1000FE6C8(v85);
  v43 = v98;
  v44 = *(v98 + 104);
  v45 = v84;
  LODWORD(v89) = enum case for UserInterfaceSizeClass.compact(_:);
  v44(v84);
  (*(v43 + 56))(v45, 0, 1, v7);
  v46 = *(v9 + 48);
  v47 = v90;
  sub_1000C5684(v42, v90, &qword_10020CF30);
  v48 = v47;
  sub_1000C5684(v45, &v47[v46], &qword_10020CF30);
  v49 = *(v43 + 48);
  if (v49(v48, 1, v7) == 1)
  {
    sub_1000C5624(v45, &qword_10020CF30);
    v50 = v90;
    sub_1000C5624(v42, &qword_10020CF30);
    if (v49(&v50[v46], 1, v7) == 1)
    {
      v15 = v50;
LABEL_19:
      sub_1000C5624(v15, &qword_10020CF30);
LABEL_20:
      type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
      v59 = v94;
      v58 = v95;
      v60 = v96;
      (*(v95 + 16))(v94, v97 + *(v41 + 24), v96);
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  v52 = v81;
  sub_1000C5684(v48, v81, &qword_10020CF30);
  if (v49((v48 + v46), 1, v7) == 1)
  {
    sub_1000C5624(v84, &qword_10020CF30);
    v50 = v90;
    sub_1000C5624(v85, &qword_10020CF30);
    (*(v98 + 8))(v52, v7);
LABEL_15:
    sub_1000C5624(v50, &qword_10020D018);
    v9 = v88;
    v51 = v89;
    goto LABEL_16;
  }

  v72 = v98;
  v73 = v41;
  v74 = v83;
  (*(v98 + 32))(v83, v48 + v46, v7);
  sub_1000FF0DC(&qword_10020D038, &type metadata accessor for UserInterfaceSizeClass);
  v75 = dispatch thunk of static Equatable.== infix(_:_:)();
  v76 = *(v72 + 8);
  v77 = v74;
  v41 = v73;
  v76(v77, v7);
  sub_1000C5624(v84, &qword_10020CF30);
  sub_1000C5624(v85, &qword_10020CF30);
  v76(v52, v7);
  sub_1000C5624(v90, &qword_10020CF30);
  v9 = v88;
  v51 = v89;
  if (v75)
  {
    goto LABEL_20;
  }

LABEL_16:
  v89 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  v53 = *(v89 + 20);
  v54 = v98;
  v55 = v86;
  (*(v98 + 104))(v86, v51, v7);
  (*(v54 + 56))(v55, 0, 1, v7);
  v56 = *(v9 + 48);
  v15 = v87;
  sub_1000C5684(v97 + v53, v87, &qword_10020CF30);
  sub_1000C5684(v55, &v15[v56], &qword_10020CF30);
  v57 = *(v54 + 48);
  if (v57(v15, 1, v7) == 1)
  {
    sub_1000C5624(v55, &qword_10020CF30);
    if (v57(&v15[v56], 1, v7) == 1)
    {
LABEL_18:
      v41 = v89;
      goto LABEL_19;
    }

    goto LABEL_23;
  }

  v61 = v82;
  sub_1000C5684(v15, v82, &qword_10020CF30);
  if (v57(&v15[v56], 1, v7) == 1)
  {
    sub_1000C5624(v55, &qword_10020CF30);
    (*(v98 + 8))(v61, v7);
LABEL_23:
    sub_1000C5624(v15, &qword_10020D018);
    goto LABEL_24;
  }

  v64 = v98;
  v65 = &v15[v56];
  v66 = v83;
  (*(v98 + 32))(v83, v65, v7);
  sub_1000FF0DC(&qword_10020D038, &type metadata accessor for UserInterfaceSizeClass);
  v67 = dispatch thunk of static Equatable.== infix(_:_:)();
  v68 = *(v64 + 8);
  v68(v66, v7);
  sub_1000C5624(v55, &qword_10020CF30);
  v68(v61, v7);
  sub_1000C5624(v15, &qword_10020CF30);
  v41 = v89;
  if (v67)
  {
    goto LABEL_20;
  }

LABEL_24:
  v59 = v94;
  v58 = v95;
  v60 = v96;
  (*(v95 + 104))(v94, enum case for DynamicTypeSize.accessibility5(_:), v96);
LABEL_25:
  sub_1000FF0DC(&qword_10020CF10, &type metadata accessor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v63 = v91;
    (*(v58 + 16))(v91, v59, v60);
    sub_1000BFBAC(&qword_10020D020);
    sub_1000C5490(&qword_10020D028, &qword_10020D020);
    sub_1000C5490(&qword_10020D030, &qword_10020D010);
    View.dynamicTypeSize<A>(_:)();
    sub_1000C5624(v63, &qword_10020D010);
    return (*(v58 + 8))(v59, v60);
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1000FE230(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  v3 = Axis.rawValue.getter();
  Hasher._combine(_:)(v3);
  v4 = Hasher._finalize()();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = Axis.rawValue.getter();
    v9 = v8 == Axis.rawValue.getter();
    result = v9;
    if (v9)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1000FE38C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = sub_1000BFBAC(&qword_10020CF30);
  __chkstk_darwin(v7 - 8);
  v9 = &v11 - v8;
  sub_1000C5684(a1, &v11 - v8, &qword_10020CF30);
  return a5(v9);
}

uint64_t sub_1000FE468(uint64_t a1)
{
  v2 = type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FE4C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BFBAC(&qword_10020BAA8);
  __chkstk_darwin(v8);
  v10 = &v14 - v9;
  sub_1000C5684(v2, &v14 - v9, &qword_10020BAA8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = type metadata accessor for PresentationKind();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1000FE6C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BFBAC(&qword_10020CF38);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_1000C5684(v2, &v13 - v9, &qword_10020CF38);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1000FF124(v10, a1);
  }

  static os_log_type_t.fault.getter();
  v12 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

Swift::Int sub_1000FE898(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BFBAC(&qword_10020D040);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      v11 = Axis.rawValue.getter();
      Hasher._combine(_:)(v11);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      for (i = result & v13; ; i = (i + 1) & v13)
      {
        v15 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v15) == 0)
        {
          break;
        }

        v16 = Axis.rawValue.getter();
        result = Axis.rawValue.getter();
        if (v16 == result)
        {
          goto LABEL_5;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v15;
      *(*(v3 + 48) + i) = v10;
      v7 = *(v3 + 16);
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        *(v3 + 16) = v9;
LABEL_5:
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

uint64_t sub_1000FEA38(uint64_t a1, uint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_1000C3C50(a2);
  sub_1000C5490(a4, a2);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000FEAD4()
{
  type metadata accessor for DynamicTypeCompactEnvironmentLimiter();
  type metadata accessor for ModifiedContent();
  sub_1000FF0DC(&qword_10020CF40, type metadata accessor for DynamicTypeCompactEnvironmentLimiter);
  return swift_getWitnessTable();
}

uint64_t sub_1000FEB84(uint64_t *a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = sub_1000BFBAC(&qword_10020CF30);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = type metadata accessor for DynamicTypeSize();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[6];
    goto LABEL_9;
  }

  v14 = sub_1000BFBAC(&qword_10020CF48);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[7];

  return v15(v16, a2, v14);
}

char *sub_1000FED1C(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  v8 = sub_1000BFBAC(&qword_10020CF30);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = type metadata accessor for DynamicTypeSize();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[6];
    goto LABEL_7;
  }

  v14 = sub_1000BFBAC(&qword_10020CF48);
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[7]];

  return v15(v16, a2, a2, v14);
}

void sub_1000FEEA0()
{
  sub_1000FEF54();
  if (v0 <= 0x3F)
  {
    sub_1000FF004();
    if (v1 <= 0x3F)
    {
      type metadata accessor for DynamicTypeSize();
      if (v2 <= 0x3F)
      {
        sub_1000FF05C();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000FEF54()
{
  if (!qword_10020CFB8)
  {
    sub_1000FEFB0();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10020CFB8);
    }
  }
}

unint64_t sub_1000FEFB0()
{
  result = qword_10020CFC0;
  if (!qword_10020CFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020CFC0);
  }

  return result;
}

void sub_1000FF004()
{
  if (!qword_10020CFC8)
  {
    type metadata accessor for UserInterfaceSizeClass();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10020CFC8);
    }
  }
}

void sub_1000FF05C()
{
  if (!qword_10020CFD0)
  {
    sub_1000C3C50(&qword_10020CF30);
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10020CFD0);
    }
  }
}

uint64_t sub_1000FF0DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000FF124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BFBAC(&qword_10020CF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000FF194()
{
  sub_1000C3C50(&qword_10020D020);
  sub_1000C3C50(&qword_10020D010);
  sub_1000C5490(&qword_10020D028, &qword_10020D020);
  sub_1000C5490(&qword_10020D030, &qword_10020D010);
  return swift_getOpaqueTypeConformance2();
}

Swift::Int sub_1000FF2C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000FF30C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000FF360@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v10 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v10 - 8);
  v12 = &v19 - v11;
  if (a3 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (a3 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((*&a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  if (a4 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a4 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
    goto LABEL_9;
  }

  v13 = sub_100103F58(a3, a4);
  if (!v13)
  {
LABEL_19:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v5 = v13;
  if (qword_10020D048 != -1)
  {
    goto LABEL_18;
  }

LABEL_9:
  v14 = type metadata accessor for UTType();
  sub_100101048(v14, qword_100222580);
  v15 = sub_100103E7C();
  v17 = v16;

  if (v17 >> 60 == 15)
  {
    goto LABEL_19;
  }

  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_1000FF620(v12, v15, v17, &v20, a2);
  sub_100101080(v12);
  result = sub_1001010E8(v15, v17);
  if (v4)
  {
    *a1 = v20;
  }

  return result;
}

uint64_t sub_1000FF5D8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_1000FF620(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, uint64_t a5@<X8>)
{
  v83 = a4;
  v77 = a5;
  v8 = type metadata accessor for URL.DirectoryHint();
  v79 = *(v8 - 8);
  v80 = v8;
  __chkstk_darwin(v8);
  v78 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v75 = *(v10 - 8);
  v76 = v10;
  __chkstk_darwin(v10);
  v74 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  v88 = v12;
  v89 = v13;
  __chkstk_darwin(v12);
  v84 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Locale();
  __chkstk_darwin(v15 - 8);
  v16 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v16 - 8);
  v17 = sub_1000FF5D8(&qword_10020D2F8);
  v18 = __chkstk_darwin(v17 - 8);
  v20 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v67 - v21;
  v23 = type metadata accessor for UTType();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v85 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100101A3C(a1, v22);
  v86 = v24;
  v87 = v23;
  v26 = *(v24 + 48);
  v27 = v26(v22, 1, v23);
  v81 = a2;
  v82 = a3;
  if (v27 == 1)
  {
    sub_100101080(v22);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = CGImageSourceCreateWithData(isa, 0);

    v30 = v83;
    if (!v29)
    {
LABEL_10:
      *v30 = 1;
      LOBYTE(v90) = 1;
      sub_100101AAC();
      swift_willThrowTypedImpl();
      return;
    }

    v31 = CGImageSourceGetType(v29);
    if (!v31)
    {
      goto LABEL_8;
    }

    v32 = v31;
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

      goto LABEL_10;
    }

    v90 = 0;
    v91 = 0;
    static String._conditionallyBridgeFromObjectiveC(_:result:)();

    if (!v91)
    {
LABEL_8:

      goto LABEL_10;
    }

    UTType.init(_:)();

    if (v26(v20, 1, v87) == 1)
    {
      sub_100101080(v20);
      goto LABEL_10;
    }

    v22 = v20;
  }

  (*(v86 + 32))(v85, v22, v87);
  String.LocalizationValue.init(stringLiteral:)();
  type metadata accessor for BundleLookupReference_PreviewFoundation();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v34 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  static Locale.current.getter();
  v69 = String.init(localized:table:bundle:locale:comment:)();
  v68 = v35;
  v36 = UTType.preferredFilenameExtension.getter();
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = 0;
  }

  v71 = v38;
  v39 = 0xE000000000000000;
  if (v37)
  {
    v39 = v37;
  }

  v70 = v39;
  v72 = [objc_opt_self() defaultManager];
  v40 = [v72 temporaryDirectory];
  v41 = v84;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v42 = v74;
  UUID.init()();
  v43 = UUID.uuidString.getter();
  v45 = v44;
  (*(v75 + 8))(v42, v76);
  v90 = v43;
  v91 = v45;
  LODWORD(v76) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v46 = v78;
  v47 = v79;
  v75 = v79[13];
  v48 = v80;
  (v75)(v78);
  sub_100101B00();
  v49 = v77;
  URL.appending<A>(component:directoryHint:)();
  v50 = v47[1];
  v50(v46, v48);

  v51 = *(v89 + 8);
  v89 += 8;
  v79 = v51;
  (v51)(v41, v88);
  v90 = v69;
  v91 = v68;
  (v75)(v46, v76, v48);
  URL.append<A>(component:directoryHint:)();
  v52 = v46;
  v53 = v70;
  v50(v52, v48);

  v54 = v71;
  v55 = HIBYTE(v53) & 0xF;
  if ((v53 & 0x2000000000000000) == 0)
  {
    v55 = v71 & 0xFFFFFFFFFFFFLL;
  }

  if (v55)
  {
    v56 = v53;
    URL.appendPathExtension(_:)(*&v54);
  }

  v57 = v84;
  URL.deletingLastPathComponent()();
  URL._bridgeToObjectiveC()(v58);
  v60 = v59;
  v61 = v79;
  (v79)(v57, v88);
  v90 = 0;
  v62 = v72;
  v63 = [v72 createDirectoryAtURL:v60 withIntermediateDirectories:0 attributes:0 error:&v90];

  if (v63)
  {
    v64 = v90;
    v65 = v73;
    Data.write(to:options:)();
    if (!v65)
    {
      (*(v86 + 8))(v85, v87);

      return;
    }
  }

  else
  {
    v66 = v90;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  *v83 = 0;
  LOBYTE(v90) = 0;
  sub_100101AAC();
  swift_willThrowTypedImpl();

  v61(v49, v88);
  (*(v86 + 8))(v85, v87);
}

uint64_t sub_1000FFE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1000FF5D8(&qword_10020D2F8);
  __chkstk_darwin(v9 - 8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for UTType();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000FF620(v11, a1, a2, &v15, a4);
  result = sub_100101080(v11);
  if (v4)
  {
    *a3 = v15;
  }

  return result;
}

uint64_t sub_1000FFFA8@<X0>(Swift::String string@<0:X0, 8:X1>, char *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_1001F5E08, v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_10010000C()
{
  if (*v0)
  {
    return 0x7469617274726F50;
  }

  else
  {
    return 0x70616373646E614CLL;
  }
}

uint64_t sub_10010004C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7469617274726F50;
  }

  else
  {
    v3 = 0x70616373646E614CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x7469617274726F50;
  }

  else
  {
    v5 = 0x70616373646E614CLL;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE900000000000065;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1001000F8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100180()
{
  String.hash(into:)();
}

Swift::Int sub_1001001F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100100278@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1001F5E08, *a1);

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

  *a2 = v5;
  return result;
}

void sub_1001002D8(uint64_t *a1@<X8>)
{
  v2 = 0x70616373646E614CLL;
  if (*v1)
  {
    v2 = 0x7469617274726F50;
  }

  v3 = 0xE900000000000065;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10010031C()
{
  v0 = type metadata accessor for UTType();
  sub_100101B54(v0, qword_100222580);
  sub_100101048(v0, qword_100222580);
  return static UTType.png.getter();
}

uint64_t sub_100100368@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1001004C0()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

Swift::Int sub_1001005E8()
{
  Hasher.init(_seed:)();
  swift_getWitnessTable();
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10010064C(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t sub_1001006C4(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_100100744@<X0>(void *a1@<X8>)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100100788@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1001007B4@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_100100800(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_100100830@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_10010085C@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_100100948()
{
  swift_getWitnessTable();

  return static _CFObject.== infix(_:_:)();
}

uint64_t sub_1001009B4()
{
  v0 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v2 = v1;
  if (v0 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v5 & 1;
}

uint64_t sub_100100A40(uint64_t a1)
{
  v2 = sub_1001016EC(&qword_10020D3C0, _s3__C22PDFDocumentWriteOptionVMa_0);
  v3 = sub_1001016EC(&qword_10020D3C8, _s3__C22PDFDocumentWriteOptionVMa_0);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100100AFC(uint64_t a1)
{
  v2 = sub_1001016EC(&qword_10020D490, type metadata accessor for ProgressUserInfoKey);
  v3 = sub_1001016EC(&qword_10020D498, type metadata accessor for ProgressUserInfoKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100100BB8(uint64_t a1)
{
  v2 = sub_1001016EC(&qword_10020D480, type metadata accessor for FileOperationKind);
  v3 = sub_1001016EC(&qword_10020D488, type metadata accessor for FileOperationKind);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100100C74(uint64_t a1)
{
  v2 = sub_1001016EC(&qword_10020D4A0, type metadata accessor for URLResourceKey);
  v3 = sub_1001016EC(&qword_10020D4A8, type metadata accessor for URLResourceKey);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100100D30(uint64_t a1)
{
  v2 = sub_1001016EC(&qword_10020D3B0, type metadata accessor for FPAction);
  v3 = sub_1001016EC(&qword_10020D3B8, type metadata accessor for FPAction);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100100E00@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_100101A04(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_100100E40@<X0>(void *a1@<X8>)
{
  v2 = String._bridgeToObjectiveC()();

  *a1 = v2;
  return result;
}

uint64_t sub_100100E88(uint64_t a1)
{
  v2 = sub_1001016EC(&qword_10020D4B0, type metadata accessor for ImageInitializationOption);
  v3 = sub_1001016EC(&qword_10020D4B8, type metadata accessor for ImageInitializationOption);

  return _SwiftNewtypeWrapper<>._toCustomAnyHashable()(a1, v2, v3, &protocol witness table for String);
}

uint64_t sub_100100F44()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v0 = String.hashValue.getter();

  return v0;
}

uint64_t sub_100100F80()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int sub_100100FD4()
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return v0;
}

uint64_t sub_100101048(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_100101080(uint64_t a1)
{
  v2 = sub_1000FF5D8(&qword_10020D2F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001010E8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1001010FC(a1, a2);
  }

  return a1;
}

uint64_t sub_1001010FC(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_100101154()
{
  result = qword_10020D300;
  if (!qword_10020D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D300);
  }

  return result;
}

unint64_t sub_1001011AC()
{
  result = qword_10020D308;
  if (!qword_10020D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D308);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DocumentErrorViewModel.ErrorType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DocumentErrorViewModel.ErrorType(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for ThumbnailViewerType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ThumbnailViewerType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ResolutionUnit(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ResolutionUnit(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 sub_1001015EC(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1001016EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100101A04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100101A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000FF5D8(&qword_10020D2F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100101AAC()
{
  result = qword_10020D3D0;
  if (!qword_10020D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D3D0);
  }

  return result;
}

unint64_t sub_100101B00()
{
  result = qword_10020D3D8;
  if (!qword_10020D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D3D8);
  }

  return result;
}

uint64_t *sub_100101B54(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

__n128 sub_100101C08(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100101C14(uint64_t a1, int a2)
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

uint64_t sub_100101C34(uint64_t result, int a2, int a3)
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

void sub_100101C88(uint64_t a1, unint64_t *a2)
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

uint64_t sub_100102108()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v2 = *(v0 + 24);
  v3 = *(v0 + 16) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    result = swift_beginAccess();
    if (*(v0 + 48) == 1)
    {
      *(v0 + 48) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_10010225C()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1001022F0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 48) == v2)
  {
    *(v1 + 48) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100102514();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t (*sub_1001023E4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100102438;
}

uint64_t sub_100102450@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

unint64_t sub_100102514()
{
  result = qword_10020D4C8;
  if (!qword_10020D4C8)
  {
    type metadata accessor for LockingViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10020D4C8);
  }

  return result;
}

uint64_t type metadata accessor for LockingViewModel()
{
  result = qword_10020D4F8;
  if (!qword_10020D4F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001025B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;

    return sub_100102108();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100102514();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1001026E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;

  return sub_100102108();
}

void (*sub_100102754(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16LockingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_1001023E4(v4);
  return sub_10010285C;
}

uint64_t sub_100102868()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v0 + 32) & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  if (v3)
  {
    result = swift_beginAccess();
    if (*(v0 + 48) == 1)
    {
      *(v0 + 48) = 1;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  return result;
}

uint64_t sub_1001029BC()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t (*sub_100102A50(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_100102AA4;
}

uint64_t sub_100102ABC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return a3(result);
  }

  return result;
}

uint64_t sub_100102B00@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v4 = *(v3 + 40);
  *a2 = *(v3 + 32);
  a2[1] = v4;
}

uint64_t sub_100102BA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];

  return a5(v7, v6);
}

uint64_t sub_100102BF0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32) == a1 && *(v2 + 40) == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    *(v2 + 32) = a1;
    *(v2 + 40) = a2;

    return sub_100102868();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100102514();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_100102D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 32) = a2;
  *(a1 + 40) = a3;

  return sub_100102868();
}

void (*sub_100102D8C(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtC17PreviewFoundation16LockingViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  v4[7] = sub_100102A50(v4);
  return sub_100102E94;
}

void sub_100102EA0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

BOOL sub_100102F34()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  swift_getKeyPath();

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (v3 == v0[4] && v2 == v0[5])
  {
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

    result = 0;
    if ((v4 & 1) == 0)
    {
      return result;
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = v1[3];
  v7 = v1[2] & 0xFFFFFFFFFFFFLL;
  if ((v6 & 0x2000000000000000) != 0)
  {
    v7 = HIBYTE(v6) & 0xF;
  }

  return v7 != 0;
}

uint64_t sub_1001030A8()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 48);
}

uint64_t sub_10010312C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_beginAccess();
  *a2 = *(v3 + 48);
  return result;
}

void (*sub_100103280(uint64_t *a1))(void **a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC17PreviewFoundation16LockingViewModel___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  return sub_100103390;
}

void sub_100103390(void **a1)
{
  v1 = *a1;
  swift_endAccess();
  *v1 = v1[3];
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v1);
}

BOOL sub_100103414()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return *(v0 + 48) != 1 || sub_100102F34();
}

uint64_t sub_1001034B4()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_100103540@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 64);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_1001035D8()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_10010367C()
{
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return swift_unknownObjectRelease();
}

uint64_t sub_10010372C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 64) = a3;
  return swift_unknownObjectWeakAssign();
}

void (*sub_1001037A8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_getKeyPath();
  v4[6] = OBJC_IVAR____TtC17PreviewFoundation16LockingViewModel___observationRegistrar;
  *v4 = v1;
  v4[7] = sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *v4 = v1;
  swift_getKeyPath();
  ObservationRegistrar.willSet<A, B>(_:keyPath:)();

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 64);
  v4[3] = Strong;
  v4[4] = v6;
  return sub_1001038C8;
}

void sub_1001038C8(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 64) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  v4 = v3[5];
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

  *v3 = v4;
  swift_getKeyPath();
  ObservationRegistrar.didSet<A, B>(_:keyPath:)();

  free(v3);
}

uint64_t sub_10010398C()
{
  v1 = v0;
  swift_getKeyPath();
  sub_100102514();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_beginAccess();
  if (*(v0 + 48) != 1 || (result = sub_100102F34(), (result & 1) != 0))
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v0 + 48) == 1)
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      swift_beginAccess();
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v3 = *(v0 + 64);
        ObjectType = swift_getObjectType();
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        swift_beginAccess();
        v5 = *(v0 + 16);
        v6 = *(v1 + 24);
        v7 = *(v3 + 8);

        v7(v1, v5, v6, ObjectType, v3);

        return swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

uint64_t sub_100103B60()
{

  sub_100103BD8(v0 + 56);
  v1 = OBJC_IVAR____TtC17PreviewFoundation16LockingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_100103C00()
{

  sub_100103BD8(v0 + 56);
  v1 = OBJC_IVAR____TtC17PreviewFoundation16LockingViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_100103CD0()
{
  result = type metadata accessor for ObservationRegistrar();
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

uint64_t sub_100103D98()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  swift_beginAccess();
  *(v1 + 64) = v2;
  return swift_unknownObjectWeakAssign();
}

uint64_t sub_100103DF8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 48) = v2;
  return result;
}

uint64_t sub_100103E7C()
{
  v1 = v0;
  v2 = [objc_allocWithZone(NSMutableData) init];
  UTType.identifier.getter();
  v3 = String._bridgeToObjectiveC()();

  v4 = CGImageDestinationCreateWithData(v2, v3, 1uLL, 0);

  if (v4)
  {
    CGImageDestinationAddImage(v4, v1, 0);
    CGImageDestinationFinalize(v4);
    v5 = v2;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {

    return 0;
  }

  return v6;
}

CGColorSpace *sub_100103F58(int64_t a1, int64_t a2)
{
  result = CGColorSpaceCreateDeviceRGB();
  if ((a1 - 0x2000000000000000) >> 62 == 3)
  {
    v5 = result;
    result = CGBitmapContextCreate(0, a1, a2, 8uLL, 4 * a1, result, 0x2002u);
    if (result)
    {
      v6 = result;
      GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
      CGContextSetFillColorWithColor(v6, GenericRGB);

      v9.size.width = a1;
      v9.size.height = a2;
      v9.origin.x = 0.0;
      v9.origin.y = 0.0;
      CGContextFillRect(v6, v9);
      Image = CGBitmapContextCreateImage(v6);

      return Image;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100104030(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 1734701162;
    }

    else
    {
      v3 = 1667851624;
    }

    v2 = 0xE400000000000000;
  }

  else if (a1 == 2)
  {
    v2 = 0xE300000000000000;
    v3 = 6710384;
  }

  else if (a1 == 3)
  {
    v2 = 0xE300000000000000;
    v3 = 6778480;
  }

  else
  {
    v2 = 0xE400000000000000;
    v3 = 1717987700;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v8 = 1734701162;
    }

    else
    {
      v8 = 1667851624;
    }

    v7 = 0xE400000000000000;
    if (v3 != v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v4 = 0xE300000000000000;
    v5 = 6778480;
    if (a2 != 3)
    {
      v5 = 1717987700;
      v4 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v6 = 6710384;
    }

    else
    {
      v6 = v5;
    }

    if (a2 == 2)
    {
      v7 = 0xE300000000000000;
    }

    else
    {
      v7 = v4;
    }

    if (v3 != v6)
    {
      goto LABEL_28;
    }
  }

  if (v2 != v7)
  {
LABEL_28:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_29;
  }

  v9 = 1;
LABEL_29:

  return v9 & 1;
}