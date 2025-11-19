uint64_t sub_100A07468(uint64_t a1, int64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a1 + 32);
  v9 = v8 & 0x3F;
  v10 = ((1 << v8) + 63) >> 6;
  v11 = 8 * v10;

  if (v9 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v25 = v10;
    v26 = a2;
    v27 = v4;
    v24[1] = v24;
    __chkstk_darwin(v12);
    v13 = v24 - ((v11 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v11);
    v11 = 0;
    v4 = 0;
    v14 = 1 << *(a1 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(a1 + 56);
    a2 = (v14 + 63) >> 6;
    while (v16)
    {
      v17 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_12:
      v10 = v17 | (v4 << 6);
      if (sub_10096A3C8(*(*(a1 + 48) + v10), a3))
      {
        *&v13[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
        if (__OFADD__(v11++, 1))
        {
          __break(1u);
LABEL_16:
          v21 = sub_100A0582C(v13, v25, v11, a1);

          return v21;
        }
      }
    }

    v18 = v4;
    while (1)
    {
      v4 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v4 >= a2)
      {
        goto LABEL_16;
      }

      v19 = *(a1 + 56 + 8 * v4);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v16 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();

  v21 = sub_100A05450(v23, v10, a1, a2, a3);

  return v21;
}

uint64_t sub_100A076F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 40;
  v8 = _swiftEmptyArrayStorage;
LABEL_2:
  v9 = (v7 + 16 * v5);
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:

LABEL_37:
      swift_beginAccess();
      v30 = sub_1008B4BC0(v4);
      sub_1008BBFD0(0, 0, v30);
      sub_100A006DC(&v38, 0);
      swift_endAccess();
      return v36;
    }

    v4 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_33;
    }

    v10 = *(v9 - 1);
    v11 = *v9;

    v12._countAndFlagsBits = v10;
    v12._object = v11;
    v13 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v12);

    ++v5;
    v9 += 2;
    if (v13 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_10089CF3C(0, *(v8 + 2) + 1, 1, v8);
      }

      v15 = *(v8 + 2);
      v14 = *(v8 + 3);
      if (v15 >= v14 >> 1)
      {
        v8 = sub_10089CF3C((v14 > 1), v15 + 1, 1, v8);
      }

      *(v8 + 2) = v15 + 1;
      v8[v15 + 32] = v13;
      v5 = v4;
      goto LABEL_2;
    }
  }

  v4 = 0;
  v16 = *(a2 + 16);
  v17 = a2 + 40;
  v18 = _swiftEmptyArrayStorage;
  v35 = a2 + 40;
LABEL_13:
  v19 = (v17 + 16 * v4);
  while (v16 != v4)
  {
    if (v4 >= v16)
    {
      goto LABEL_34;
    }

    v20 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_35;
    }

    v21 = *(v19 - 1);
    v22 = *v19;

    v23._countAndFlagsBits = v21;
    v23._object = v22;
    v24 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v23);

    ++v4;
    v19 += 2;
    if (v24 < 0xD)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10089CF3C(0, *(v18 + 2) + 1, 1, v18);
      }

      v26 = *(v18 + 2);
      v25 = *(v18 + 3);
      if (v26 >= v25 >> 1)
      {
        v18 = sub_10089CF3C((v25 > 1), v26 + 1, 1, v18);
      }

      *(v18 + 2) = v26 + 1;
      v18[v26 + 32] = v24;
      v4 = v20;
      v17 = v35;
      goto LABEL_13;
    }
  }

  sub_10099546C(v18);

  v36 = v8;
  v37 = v8;

  sub_1009FD764(a3, a4);
  if (v33)
  {
  }

  result = swift_beginAccess();
  v28 = *(v8 + 2);
  if (!v28)
  {
    return v36;
  }

  v4 = 0;
  while (2)
  {
    if (v4 < *(v37 + 2))
    {
      switch(v37[v4 + 32])
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
          v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v29)
          {
            goto LABEL_37;
          }

          if (v28 == ++v4)
          {
            return v36;
          }

          continue;
        default:
          goto LABEL_36;
      }
    }

    break;
  }

  __break(1u);
  return result;
}

uint64_t sub_100A07BC8(void *a1)
{
  v3 = sub_10010FC20(&qword_1011ABAC0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v60 - v5;
  v7 = sub_10000954C(a1, a1[3]);
  sub_100A08298();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
LABEL_3:
    sub_10000959C(a1);
    return v7;
  }

  else
  {
    v8 = sub_10010FC20(&unk_1011A9FA0);
    v68 = 1;
    v9 = sub_100A08E24(&qword_1011ABAC8, &unk_1011A9FA0);
    result = KeyedDecodingContainer.decode<A>(_:forKey:)();
    v60[1] = v9;
    v61 = v8;
    v63 = v4;
    v64 = v6;
    v65 = v3;
    v11 = 0;
    v12 = v67;
    v13 = *(v67 + 16);
    v14 = v67 + 40;
    v66 = _swiftEmptyArrayStorage;
    v62 = v67 + 40;
LABEL_4:
    v15 = (v14 + 16 * v11);
    while (v13 != v11)
    {
      if (v11 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_43;
      }

      ++v11;
      v16 = v15 + 2;
      v17 = *(v15 - 1);
      v18 = *v15;

      v19._countAndFlagsBits = v17;
      v19._object = v18;
      v20 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v19);

      v15 = v16;
      if (v20 < 0xD)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v21 = v66;
        }

        else
        {
          result = sub_10089CF3C(0, *(v66 + 2) + 1, 1, v66);
          v21 = result;
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          result = sub_10089CF3C((v22 > 1), v23 + 1, 1, v21);
          v21 = result;
        }

        *(v21 + 2) = v23 + 1;
        v66 = v21;
        v21[v23 + 32] = v20;
        v14 = v62;
        goto LABEL_4;
      }
    }

    sub_10010FC20(&qword_1011A9710);
    v68 = 0;
    sub_100A08E24(&qword_1011A9800, &qword_1011A9710);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v62 = 0;
    v24 = v67;
    v25 = v67 + 56;
    v26 = 1 << *(v67 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(v67 + 56);
    v29 = (v26 + 63) >> 6;

    v30 = 0;
    v31 = _swiftEmptyArrayStorage;
    if (!v28)
    {
      goto LABEL_19;
    }

    do
    {
LABEL_17:
      while (1)
      {
        v32 = __clz(__rbit64(v28));
        v28 &= v28 - 1;
        v33 = (*(v24 + 48) + ((v30 << 10) | (16 * v32)));
        v34 = *v33;
        v35 = v33[1];

        v36._countAndFlagsBits = v34;
        v36._object = v35;
        v37 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v36);

        if (v37 < 0xD)
        {
          break;
        }

        if (!v28)
        {
          goto LABEL_19;
        }
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_10089CF3C(0, *(v31 + 2) + 1, 1, v31);
        v31 = result;
      }

      v39 = v31;
      v40 = *(v31 + 2);
      v41 = v39;
      v42 = *(v39 + 3);
      if (v40 >= v42 >> 1)
      {
        result = sub_10089CF3C((v42 > 1), v40 + 1, 1, v41);
        v41 = result;
      }

      *(v41 + 16) = v40 + 1;
      v43 = v41 + v40;
      v31 = v41;
      *(v43 + 32) = v37;
    }

    while (v28);
LABEL_19:
    while (1)
    {
      v38 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v38 >= v29)
      {

        v44 = sub_10099546C(v31);

        v68 = 2;
        v45 = v64;
        v46 = v65;
        v47 = v62;
        result = KeyedDecodingContainer.decode<A>(_:forKey:)();
        if (v47)
        {

          v68 = 2;
          sub_100A08E84();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v63 + 8))(v45, v46);
          v7 = v67;
        }

        else
        {
          v62 = v44;
          v48 = 0;
          v49 = v67;
          v50 = *(v67 + 16);
          v51 = v67 + 40;
          v7 = _swiftEmptyArrayStorage;
          v61 = v67 + 40;
LABEL_32:
          v52 = (v51 + 16 * v48);
          while (v50 != v48)
          {
            if (v48 >= *(v49 + 16))
            {
              goto LABEL_44;
            }

            ++v48;
            v53 = v52 + 2;
            v54 = *(v52 - 1);
            v55 = *v52;

            v56._countAndFlagsBits = v54;
            v56._object = v55;
            v57 = _findStringSwitchCase(cases:string:)(&off_1010C7C90, v56);

            v52 = v53;
            if (v57 < 0xD)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10089CF3C(0, *(v7 + 2) + 1, 1, v7);
                v7 = result;
              }

              v59 = *(v7 + 2);
              v58 = *(v7 + 3);
              if (v59 >= v58 >> 1)
              {
                result = sub_10089CF3C((v58 > 1), v59 + 1, 1, v7);
                v7 = result;
              }

              *(v7 + 2) = v59 + 1;
              v7[v59 + 32] = v57;
              v51 = v61;
              goto LABEL_32;
            }
          }

          (*(v63 + 8))(v64, v65);
        }

        goto LABEL_3;
      }

      v28 = *(v25 + 8 * v38);
      ++v30;
      if (v28)
      {
        v30 = v38;
        goto LABEL_17;
      }
    }

LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
  }

  return result;
}

unint64_t sub_100A08298()
{
  result = qword_1011AB9B0;
  if (!qword_1011AB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9B0);
  }

  return result;
}

unint64_t sub_100A082EC()
{
  result = qword_1011AB9C8;
  if (!qword_1011AB9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9C8);
  }

  return result;
}

uint64_t sub_100A08340(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011AB9D0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A083B8()
{
  result = qword_1011AB9E0;
  if (!qword_1011AB9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9E0);
  }

  return result;
}

unint64_t sub_100A0840C()
{
  result = qword_1011AB9F0;
  if (!qword_1011AB9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9F0);
  }

  return result;
}

unint64_t sub_100A08460(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7DE8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100A084AC(void *a1)
{
  v2 = sub_10010FC20(&qword_1011ABAA0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - v4;
  sub_10000954C(a1, a1[3]);
  sub_100A0840C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_10010FC20(&qword_1011AB9B8);
  HIBYTE(v8) = 0;
  sub_100A08D58(&qword_1011ABAA8, sub_100A08DD0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v9;
  sub_10010FC20(&qword_1011AB9D0);
  HIBYTE(v8) = 1;
  sub_100A08340(&qword_1011ABAB8, sub_100A08DD0);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  sub_10000959C(a1);
  return v7;
}

unint64_t sub_100A08720()
{
  result = qword_1011AB9F8;
  if (!qword_1011AB9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AB9F8);
  }

  return result;
}

unint64_t sub_100A08778()
{
  result = qword_1011ABA38;
  if (!qword_1011ABA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA38);
  }

  return result;
}

uint64_t sub_100A08820(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100A08838(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100A08880(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VerticalToggleSlider.Mode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_100A08990(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

__n128 sub_100A089F8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100A08A0C(uint64_t *a1, int a2)
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

uint64_t sub_100A08A54(uint64_t result, int a2, int a3)
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

unint64_t sub_100A08AAC()
{
  result = qword_1011ABA48;
  if (!qword_1011ABA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA48);
  }

  return result;
}

unint64_t sub_100A08B04()
{
  result = qword_1011ABA50;
  if (!qword_1011ABA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA50);
  }

  return result;
}

unint64_t sub_100A08B5C()
{
  result = qword_1011ABA58;
  if (!qword_1011ABA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA58);
  }

  return result;
}

unint64_t sub_100A08BB4()
{
  result = qword_1011ABA60;
  if (!qword_1011ABA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA60);
  }

  return result;
}

unint64_t sub_100A08C0C()
{
  result = qword_1011ABA68;
  if (!qword_1011ABA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA68);
  }

  return result;
}

unint64_t sub_100A08C64()
{
  result = qword_1011ABA70;
  if (!qword_1011ABA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA70);
  }

  return result;
}

unint64_t sub_100A08CB8()
{
  result = qword_1011ABA90;
  if (!qword_1011ABA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABA90);
  }

  return result;
}

uint64_t sub_100A08D0C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  return v2(v5);
}

uint64_t sub_100A08D58(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(&qword_1011AB9B8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A08DD0()
{
  result = qword_1011ABAB0;
  if (!qword_1011ABAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAB0);
  }

  return result;
}

uint64_t sub_100A08E24(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001109D0(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100A08E84()
{
  result = qword_1011ABAD0;
  if (!qword_1011ABAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAD0);
  }

  return result;
}

unint64_t sub_100A08ED8()
{
  result = qword_1011ABAE0;
  if (!qword_1011ABAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAE0);
  }

  return result;
}

unint64_t sub_100A08F2C()
{
  result = qword_1011ABAE8;
  if (!qword_1011ABAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABAE8);
  }

  return result;
}

uint64_t *sub_100A08F80@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *result;
  v5 = v3[3] >> 1;
  if (*result >= v3[2])
  {
    v7 = __OFSUB__(v4, v5);
    v6 = v4 - v5 < 0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  if (v6 != v7)
  {
    *a2 = *(v3[1] + v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s4MenuV9MoveErrorV7FailureOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF)
  {
    goto LABEL_17;
  }

  if (a2 + 241 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 241) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 241;
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

      return (*a1 | (v4 << 8)) - 241;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 241;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 3) & 0xE | (*a1 >> 7)) ^ 0xF;
  if (v6 >= 0xE)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s4MenuV9MoveErrorV7FailureOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 241 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 241) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF)
  {
    v4 = 0;
  }

  if (a2 > 0xE)
  {
    v5 = ((a2 - 15) >> 8) + 1;
    *result = a2 - 15;
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
    *result = 16 * (((-a2 >> 1) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100A09154()
{
  result = qword_1011ABB10;
  if (!qword_1011ABB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB10);
  }

  return result;
}

Swift::Int sub_100A091A8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100A092C0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100A093D8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t Library.SortConfiguration.storageKey.getter(unsigned __int8 a1)
{
  _StringGuts.grow(_:)(33);

  v2 = 0xE600000000000000;
  v3 = 0x736D75626C61;
  v4 = 0xE900000000000073;
  v5 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v5 = 0x73676E6F73;
    v4 = 0xE500000000000000;
  }

  v6 = 0xEA0000000000756FLL;
  v7 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v7 = 0x646956636973756DLL;
    v6 = 0xEB00000000736F65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x73747369747261;
  if (a1 != 1)
  {
    v9 = 0x74616C69706D6F63;
    v8 = 0xEC000000736E6F69;
  }

  if (a1)
  {
    v3 = v9;
    v2 = v8;
  }

  if (a1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (a1 <= 2u)
  {
    v11 = v2;
  }

  else
  {
    v11 = v4;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  return 0xD00000000000001FLL;
}

uint64_t Library.SortConfiguration.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x736D75626C61;
  v2 = 0x7473696C79616C70;
  if (a1 != 5)
  {
    v2 = 0x73676E6F73;
  }

  v3 = 0x59726F466564616DLL;
  if (a1 != 3)
  {
    v3 = 0x646956636973756DLL;
  }

  if (a1 <= 4u)
  {
    v2 = v3;
  }

  v4 = 0x73747369747261;
  if (a1 != 1)
  {
    v4 = 0x74616C69706D6F63;
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

uint64_t sub_100A09774()
{
  String.hash(into:)();
}

unint64_t sub_100A0989C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100A098CC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x736D75626C61;
  v5 = 0xE900000000000073;
  v6 = 0x7473696C79616C70;
  if (v2 != 5)
  {
    v6 = 0x73676E6F73;
    v5 = 0xE500000000000000;
  }

  v7 = 0xEA0000000000756FLL;
  v8 = 0x59726F466564616DLL;
  if (v2 != 3)
  {
    v8 = 0x646956636973756DLL;
    v7 = 0xEB00000000736F65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x73747369747261;
  if (v2 != 1)
  {
    v10 = 0x74616C69706D6F63;
    v9 = 0xEC000000736E6F69;
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

unint64_t _s9MusicCore7LibraryO17SortConfigurationO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C7EA0, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100A09A0C()
{
  result = qword_1011ABB18;
  if (!qword_1011ABB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB18);
  }

  return result;
}

uint64_t sub_100A09A70(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_100A0EBBC();

    v1 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {
    v1 = a1;

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    sub_100A0EBBC();
  }

  return v1;
}

void *sub_100A09AF8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_100899FF0(0, v2, 0);
    result = _swiftEmptyArrayStorage;
    v4 = (a1 + 32);
    v5 = _swiftEmptyArrayStorage[2];
    do
    {
      v6 = *v4;
      v8 = result;
      v7 = result[3];
      if (v5 >= v7 >> 1)
      {
        sub_100899FF0((v7 > 1), v5 + 1, 1);
        result = v8;
      }

      result[2] = v5 + 1;
      *(result + v5 + 8) = v6;
      ++v4;
      ++v5;
      --v2;
    }

    while (v2);
  }

  return result;
}

void *sub_100A09BC4(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    v6 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = a1 + 32;
    do
    {
      sub_1000160F8(v4, v5);
      sub_10010FC20(&qword_1011AEFF0);
      swift_dynamicCast();
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 40;
      --v2;
    }

    while (v2);
    return v6;
  }

  return result;
}

uint64_t SortOptions.SortType.localizedTitle.getter(Swift::Int a1)
{
  sub_100A09D34(a1, v5);
  v1 = v6;
  v2 = v7;
  sub_10000954C(v5, v6);
  v3 = (*(v2 + 8))(v1, v2);
  sub_10000959C(v5);
  return v3;
}

Swift::Int sub_100A09D34@<X0>(Swift::Int result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case 1:
      v7 = &type metadata for PlaylistOrderSort;
      v8 = &off_1010D7B58;
      goto LABEL_12;
    case 2:
      v5 = &type metadata for TitleSort;
      v6 = &off_1010D7AF8;
      goto LABEL_18;
    case 3:
      v5 = &type metadata for RecentlyAddedSort;
      v6 = &off_1010D7B98;
      goto LABEL_18;
    case 4:
      v5 = &type metadata for RecentlyPlayedSort;
      v6 = &off_1010D7BB8;
      goto LABEL_18;
    case 5:
      v5 = &type metadata for RecentlyUpdatedSort;
      v6 = &off_1010D7BD8;
      goto LABEL_18;
    case 6:
      v5 = &type metadata for ArtistSort;
      v6 = &off_1010D7B18;
      goto LABEL_18;
    case 7:
      v5 = &type metadata for AlbumSort;
      v6 = &off_1010D7B38;
      goto LABEL_18;
    case 8:
      v5 = &type metadata for PlaylistTypeSort;
      v6 = &off_1010D7B78;
LABEL_18:
      *(a2 + 24) = v5;
      *(a2 + 32) = v6;
      return result;
    case 9:
      v7 = &type metadata for YearSort;
      v8 = &off_1010D7BF8;
LABEL_12:
      *(a2 + 24) = v7;
      *(a2 + 32) = v8;
      *a2 = 0;
      return result;
    case 10:
      v2 = &type metadata for YearSort;
      v3 = &off_1010D7BF8;
      goto LABEL_16;
    case 11:
      v4 = a2;
      result = sub_10089E644(&off_1010C7F98);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_1010D7C18;
      *v4 = 1;
      goto LABEL_6;
    case 12:
      v4 = a2;
      result = sub_10089E644(&off_1010C7FC0);
      *(v4 + 24) = &type metadata for ReleaseDateSort;
      *(v4 + 32) = &off_1010D7C18;
      *v4 = 0;
LABEL_6:
      *(v4 + 8) = result;
      break;
    default:
      v2 = &type metadata for PlaylistOrderSort;
      v3 = &off_1010D7B58;
LABEL_16:
      *(a2 + 24) = v2;
      *(a2 + 32) = v3;
      *a2 = 1;
      break;
  }

  return result;
}

id SortOptions.SortType.image.getter(char a1)
{
  result = 0;
  v3 = 1 << a1;
  if ((v3 & 0x1FC) == 0)
  {
    if ((v3 & 0xC01) != 0)
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v5 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v5];

      if (v6)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v4 = [objc_opt_self() configurationWithScale:1];
      v7 = String._bridgeToObjectiveC()();
      v6 = [objc_opt_self() systemImageNamed:v7];

      if (v6)
      {
LABEL_6:
        v8 = [v6 imageWithConfiguration:v4];

        return v8;
      }
    }

    return 0;
  }

  return result;
}

uint64_t SortOptions.SortType.sortDescriptors(for:)(uint64_t a1, Swift::Int a2)
{
  sub_100A09D34(a2, v7);
  v3 = v8;
  v4 = v9;
  sub_10000954C(v7, v8);
  v5 = (*(v4 + 24))(a1, v3, v4);
  sub_10000959C(v7);
  return v5;
}

unint64_t SortOptions.SortType.rawValue.getter(char a1)
{
  result = 0x656C7469547942;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000019;
      break;
    case 2:
      return result;
    case 3:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0x7473697472417942;
      break;
    case 7:
      result = 0x6D75626C417942;
      break;
    case 8:
      result = 0x696C79616C507942;
      break;
    case 9:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0x646E656373417942;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_100A0A284(char *a1, char *a2)
{
  v2 = *a2;
  v3 = SortOptions.SortType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == SortOptions.SortType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t sub_100A0A354@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100A0A384@<X0>(unint64_t *a1@<X8>)
{
  result = SortOptions.SortType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t SortOptions.ContentType.localizedTitle.getter(unsigned __int8 a1)
{
  v2 = type metadata accessor for Locale();
  __chkstk_darwin(v2 - 8);
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v7);
  v9 = &v13[-v8];
  if ((a1 >> 6) > 2u && a1 != 192 && a1 != 193)
  {
    return 0;
  }

  String.LocalizationValue.init(stringLiteral:)();
  (*(v4 + 16))(v6, v9, v3);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v10 = qword_101219808;
  static Locale.current.getter();
  v11 = String.init(localized:table:bundle:locale:comment:)();
  (*(v4 + 8))(v9, v3);
  return v11;
}

char *SortOptions.ContentType.availableSortTypes(withSelectedType:)(unsigned __int8 a1, int a2)
{
  v4 = 0;
  v5 = _swiftEmptyArrayStorage;
  do
  {
    v6 = *(&off_1010C7F68 + v4 + 32);
    switch(*(&off_1010C7F68 + v4 + 32))
    {
      case 1:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_1010D7B58;
        goto LABEL_15;
      case 2:
        v7 = &type metadata for TitleSort;
        v8 = &off_1010D7AF8;
        goto LABEL_21;
      case 3:
        v7 = &type metadata for RecentlyAddedSort;
        v8 = &off_1010D7B98;
        goto LABEL_21;
      case 4:
        v7 = &type metadata for RecentlyPlayedSort;
        v8 = &off_1010D7BB8;
        goto LABEL_21;
      case 5:
        v7 = &type metadata for RecentlyUpdatedSort;
        v8 = &off_1010D7BD8;
        goto LABEL_21;
      case 6:
        v7 = &type metadata for ArtistSort;
        v8 = &off_1010D7B18;
        goto LABEL_21;
      case 7:
        v7 = &type metadata for AlbumSort;
        v8 = &off_1010D7B38;
        goto LABEL_21;
      case 8:
        v7 = &type metadata for PlaylistTypeSort;
        v8 = &off_1010D7B78;
LABEL_21:
        v22 = v7;
        v23 = v8;
        break;
      case 9:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_1010D7BF8;
LABEL_15:
        v23 = v8;
        LOBYTE(v21[0]) = 0;
        break;
      case 0xA:
        v7 = &type metadata for YearSort;
        v22 = &type metadata for YearSort;
        v8 = &off_1010D7BF8;
        goto LABEL_19;
      case 0xB:
        v9 = sub_10089E644(&off_1010C82B8);
        v23 = &off_1010D7C18;
        LOBYTE(v21[0]) = 1;
        goto LABEL_9;
      case 0xC:
        v9 = sub_10089E644(&off_1010C82E0);
        v23 = &off_1010D7C18;
        LOBYTE(v21[0]) = 0;
LABEL_9:
        v7 = &type metadata for ReleaseDateSort;
        v22 = &type metadata for ReleaseDateSort;
        v21[1] = v9;
        v8 = &off_1010D7C18;
        break;
      default:
        v7 = &type metadata for PlaylistOrderSort;
        v22 = &type metadata for PlaylistOrderSort;
        v8 = &off_1010D7B58;
LABEL_19:
        v23 = v8;
        LOBYTE(v21[0]) = 1;
        break;
    }

    sub_10000954C(v21, v7);
    v10 = (v8[2])();
    v11 = sub_10096A744(a2, v10);

    sub_10000959C(v21);
    if (v11)
    {
      v12 = a1;
      if (v6 > 8)
      {
        if (v6 > 10)
        {
          v12 = 24;
          if (v6 == 11)
          {
            v13 = 0xD000000000000017;
            v14 = 0x8000000100E5A570;
          }

          else
          {
            v13 = 0xD000000000000016;
            v14 = 0x8000000100E5A550;
          }
        }

        else
        {
          v13 = 0x646E656373417942;
          v14 = 0xEF72616559676E69;
          if (v6 != 9)
          {
            v12 = 24;
            v13 = 0xD000000000000010;
            v14 = 0x8000000100E5A520;
          }
        }
      }

      else
      {
        v12 = v6 - 2;
        if ((v6 - 2) < 7)
        {
LABEL_53:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_10089CF74(0, *(v5 + 2) + 1, 1, v5);
          }

          v19 = *(v5 + 2);
          v18 = *(v5 + 3);
          if (v19 >= v18 >> 1)
          {
            v5 = sub_10089CF74((v18 > 1), v19 + 1, 1, v5);
          }

          *(v5 + 2) = v19 + 1;
          v5[v19 + 32] = v6;
          goto LABEL_3;
        }

        if (v6)
        {
          v13 = 0xD000000000000018;
          v14 = 0x8000000100E5A450;
        }

        else
        {
          v12 = 24;
          v13 = 0xD000000000000019;
          v14 = 0x8000000100E5A470;
        }
      }

      v15 = 0xE700000000000000;
      v16 = 0x656C7469547942;
      switch(v12)
      {
        case 0:
          v15 = 0x8000000100E5A450;
          if (v13 == 0xD000000000000018)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 1:
          v15 = 0x8000000100E5A470;
          if (v13 != 0xD000000000000019)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 2:
          goto LABEL_48;
        case 3:
        case 5:
        case 6:
        case 7:
        case 8:
          goto LABEL_51;
        case 4:
          v15 = 0x8000000100E5A4C0;
          if (v13 != 0xD000000000000018)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 9:
          v15 = 0x8000000100E5A520;
          if (v13 != 0xD000000000000010)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 10:
          v16 = 0x646E656373417942;
          v15 = 0xEF72616559676E69;
LABEL_48:
          if (v13 == v16)
          {
            goto LABEL_49;
          }

          goto LABEL_51;
        case 11:
          v15 = 0x8000000100E5A550;
          if (v13 != 0xD000000000000016)
          {
            goto LABEL_51;
          }

          goto LABEL_49;
        case 12:
          v15 = 0x8000000100E5A570;
          if (v13 != 0xD000000000000017)
          {
            goto LABEL_51;
          }

LABEL_49:
          if (v14 == v15)
          {

            LOBYTE(v6) = a1;
          }

          else
          {
LABEL_51:
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v17)
            {
              LOBYTE(v6) = a1;
            }
          }

          break;
        default:
          goto LABEL_53;
      }

      goto LABEL_53;
    }

LABEL_3:
    ++v4;
  }

  while (v4 != 10);
  return v5;
}

uint64_t SortOptions.ContentType.defaultSortType.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      return 8;
    }

    else
    {
      return 0x206u >> (8 * (a1 + 64));
    }
  }

  else
  {
    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }
}

uint64_t sub_100A0AC58(unsigned __int8 a1)
{
  v1 = 0x676E6F5374726F73;
  if (a1 != 192)
  {
    Hasher.init(_seed:)();
    v3 = SortOptions.ContentType.identifier.getter(a1);
    String.hash(into:)();

    v4 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    if (v4 != Hasher._finalize()())
    {
      v1 = 0x75626C4174726F53;
      if ((a1 & 0xC0) != 0x40)
      {
        Hasher.init(_seed:)();
        String.hash(into:)();

        v7 = Hasher._finalize()();
        Hasher.init(_seed:)();
        String.hash(into:)();
        if (v7 == Hasher._finalize()())
        {
          return v1;
        }

        goto LABEL_5;
      }

      if ((a1 & 0x3F) != 0)
      {
LABEL_5:

        v5._countAndFlagsBits = 0x6570795474726F53;
        v5._object = 0xE800000000000000;
        String.append(_:)(v5);

        return v3;
      }
    }
  }

  return v1;
}

uint64_t SortOptions.ContentType.identifier.getter(unsigned __int8 a1)
{
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 == 2)
    {
      if (a1)
      {
        return 0xD000000000000018;
      }

      else
      {
        return 0x7473696C79616C70;
      }
    }

    else
    {
      v5 = 0x736569766F6DLL;
      if (a1 != 193)
      {
        v5 = 0x7473696C79616C70;
      }

      if (a1 == 192)
      {
        return 0x73676E6F73;
      }

      else
      {
        return v5;
      }
    }
  }

  else if (a1 >> 6)
  {
    v2 = 0x736D75626C61;
    v3 = 0xD000000000000016;
    v4 = 0x7265736F706D6F63;
    if ((a1 & 0x3F) != 3)
    {
      v4 = 0x626C4165726E6567;
    }

    if ((a1 & 0x3F) != 2)
    {
      v3 = v4;
    }

    if ((a1 & 0x3F) != 0)
    {
      v2 = 0x6C41747369747261;
    }

    if ((a1 & 0x3Fu) <= 1)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }

  else if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x646956636973756DLL;
  }
}

Swift::String __swiftcall SortOptions.ContentType.storageKey(using:)(Swift::String_optional using)
{
  if (using.value._object)
  {
    object = using.value._object;
    countAndFlagsBits = using.value._countAndFlagsBits;
    v10 = sub_100A0AC58(v1);
    v11 = v4;

    v5._countAndFlagsBits = 45;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);

    v6._countAndFlagsBits = countAndFlagsBits;
    v6._object = object;
    String.append(_:)(v6);

    v7 = v10;
    v8 = v11;
  }

  else
  {
    v7 = sub_100A0AC58(v1);
  }

  result._object = v8;
  result._countAndFlagsBits = v7;
  return result;
}

uint64_t SortOptions.ContentType.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int SortOptions.ContentType.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100A0B2D4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v5);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100A0B358(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  a4(*v4);
  String.hash(into:)();
}

Swift::Int sub_100A0B3C8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t static SortOptions.ViewType.Albums.preferredItemSortDescriptors.getter()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithKey:v2 ascending:1];

  *(v0 + 32) = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  return v0;
}

uint64_t sub_100A0B5B8(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    sub_10010FC20(&qword_1011AA660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100A0B718()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBDC20;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = objc_opt_self();
  v6 = [v5 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100EBE260;
  *(v7 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 40) = v8;
  *(v7 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 56) = v9;
  *(v7 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v7 + 72) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v5 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_101219C38 = v0;
}

void sub_100A0B8F4()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EC3620;
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 48) = v15;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = objc_allocWithZone(NSSortDescriptor);
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 initWithKey:v17 ascending:1];

  *(v0 + 56) = v18;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = objc_allocWithZone(NSSortDescriptor);
  v20 = String._bridgeToObjectiveC()();

  v21 = [v19 initWithKey:v20 ascending:1];

  *(v0 + 64) = v21;
  qword_101219C40 = v0;
}

void sub_100A0BBC8()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBDC20;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [objc_opt_self() sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v5;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = objc_allocWithZone(NSSortDescriptor);
  v7 = String._bridgeToObjectiveC()();

  v8 = [v6 initWithKey:v7 ascending:1];

  *(v0 + 40) = v8;
  qword_101219C48 = v0;
}

void sub_100A0BD30()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBE270;
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBE260;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  *(v8 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 72) = v11;
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = [v6 sortDescriptorWithKeyPath:v12 ascending:1];

  *(v0 + 40) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_100EBDC20;
  *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 40) = v15;
  *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v14 + 56) = v16;
  v17 = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v6 sortDescriptorWithKeyPath:v17 ascending:1];

  *(v0 + 48) = v18;
  qword_101219C50 = v0;
}

uint64_t sub_100A0BFA4(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      if (qword_1011A6A00 == -1)
      {
      }

      goto LABEL_15;
    }

LABEL_7:
    if (qword_1011A69F8 == -1)
    {
    }

LABEL_15:
    swift_once();
  }

  if (a1 >> 6 != 3)
  {
    goto LABEL_17;
  }

  if (a1 == 192)
  {
    goto LABEL_7;
  }

  if (a1 == 194)
  {
    if (qword_1011A6A08 != -1)
    {
      swift_once();
    }

    v2 = qword_101219C50;

    return sub_100A09A70(v2);
  }

  else
  {
LABEL_17:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100A0C104()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EBC6D0;
  sub_10010FC20(&unk_1011AAAB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100EBE260;
  *(v1 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 40) = v2;
  *(v1 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 56) = v3;
  *(v1 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v1 + 72) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = objc_opt_self();
  v7 = [v6 sortDescriptorWithKeyPath:isa ascending:1];

  *(v0 + 32) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100EBDC20;
  *(v8 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 40) = v9;
  *(v8 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v8 + 56) = v10;
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = [v6 sortDescriptorWithKeyPath:v11 ascending:1];

  *(v0 + 40) = v12;
  qword_101219C58 = v0;
}

uint64_t sub_100A0C2DC(unsigned __int8 a1)
{
  if (a1 == 194)
  {
    if (qword_1011A6A10 != -1)
    {
      swift_once();
    }

    v1 = qword_101219C58;

    return sub_100A09A70(v1);
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void sub_100A0C398()
{
  sub_10010FC20(&qword_1011AA660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100EC3620;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v1 = objc_allocWithZone(NSSortDescriptor);
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 initWithKey:v2 ascending:0];

  *(v0 + 32) = v3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = objc_allocWithZone(NSSortDescriptor);
  v5 = String._bridgeToObjectiveC()();

  v6 = [v4 initWithKey:v5 ascending:1];

  *(v0 + 40) = v6;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = objc_allocWithZone(NSSortDescriptor);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithKey:v8 ascending:1];

  *(v0 + 48) = v9;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = objc_allocWithZone(NSSortDescriptor);
  v11 = String._bridgeToObjectiveC()();

  v12 = [v10 initWithKey:v11 ascending:1];

  *(v0 + 56) = v12;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = objc_allocWithZone(NSSortDescriptor);
  v14 = String._bridgeToObjectiveC()();

  v15 = [v13 initWithKey:v14 ascending:1];

  *(v0 + 64) = v15;
  qword_101219C60 = v0;
}

uint64_t sub_100A0C680()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

void *sub_100A0C86C(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    return _swiftEmptyArrayStorage;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100A0C8E0()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

uint64_t sub_100A0CAF0(unsigned __int8 a1, char a2)
{
  if ((a1 >> 6) <= 1u || a1 >> 6 == 3 && a1 == 193)
  {
    sub_10010FC20(&qword_1011AA660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6D0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:a2 & 1];

    *(v3 + 32) = v6;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = objc_allocWithZone(NSSortDescriptor);
    v8 = String._bridgeToObjectiveC()();

    v9 = [v7 initWithKey:v8 ascending:1];

    *(v3 + 40) = v9;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100A0CCE4()
{
  v0 = type metadata accessor for Locale();
  __chkstk_darwin(v0 - 8);
  v1 = type metadata accessor for String.LocalizationValue();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v7 = &v11[-v6];
  String.LocalizationValue.init(stringLiteral:)();
  (*(v2 + 16))(v4, v7, v1);
  if (qword_1011A6740 != -1)
  {
    swift_once();
  }

  v8 = qword_101219808;
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  (*(v2 + 8))(v7, v1);
  return v9;
}

unint64_t NSUserDefaults.sortType(for:keyDomain:)(unsigned __int8 a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    v13._countAndFlagsBits = sub_100A0AC58(a1);
    v13._object = v6;

    v7._countAndFlagsBits = 45;
    v7._object = 0xE100000000000000;
    String.append(_:)(v7);

    v8._countAndFlagsBits = a2;
    v8._object = a3;
    String.append(_:)(v8);

    countAndFlagsBits = v13._countAndFlagsBits;
    object = v13._object;
  }

  else
  {
    countAndFlagsBits = sub_100A0AC58(a1);
    object = v11;
  }

  v13._countAndFlagsBits = countAndFlagsBits;
  v13._object = object;
  sub_10000988C();
  NSUserDefaults.subscript.getter(&v13, &v14);

  if (!v15)
  {
    sub_100011E58(&v14);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0 || (result = _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(v13), result == 13))
  {
LABEL_9:
    if ((a1 >> 6) > 1u)
    {
      if (a1 >> 6 == 2)
      {
        return 8;
      }

      else
      {
        return 0x206u >> (8 * (a1 + 64));
      }
    }

    if (a1 >> 6)
    {
      if ((a1 & 0x3F) == 0)
      {
        return 6;
      }
    }

    else if ((a1 & 1) == 0)
    {
      return 6;
    }

    return 2;
  }

  return result;
}

void NSUserDefaults.setSortType(_:for:keyDomain:)(char a1, unsigned __int8 a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v29 = sub_100A0AC58(a2);
    v30 = v8;

    v9._countAndFlagsBits = 45;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);

    v10._countAndFlagsBits = a3;
    v10._object = a4;
    String.append(_:)(v10);

    v11 = v29;
    v12 = v30;
  }

  else
  {
    v11 = sub_100A0AC58(a2);
    v12 = v13;
  }

  if ((a2 & 0xC0) == 0x40)
  {
    v14 = (a2 & 0x3F) == 0;
    if (a4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    Hasher.init(_seed:)();
    SortOptions.ContentType.identifier.getter(a2);
    String.hash(into:)();

    v15 = Hasher._finalize()();
    Hasher.init(_seed:)();
    String.hash(into:)();
    v14 = v15 == Hasher._finalize()();
    if (a4)
    {
LABEL_12:
      v21 = SortOptions.SortType.rawValue.getter(a1);
      v22 = v24;
      v23 = 0;
      goto LABEL_14;
    }
  }

  if (!v14)
  {
    goto LABEL_12;
  }

  v16 = NSUserDefaults.sortType(for:keyDomain:)(a2, a3, 0);
  v17 = SortOptions.SortType.rawValue.getter(v16);
  v19 = v18;
  v21 = SortOptions.SortType.rawValue.getter(a1);
  v22 = v20;
  if (v17 == v21 && v19 == v20)
  {

    v23 = 0;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v23 = v25 ^ 1;
  }

LABEL_14:
  v31 = &type metadata for String;
  v29 = v21;
  v30 = v22;
  v28[0] = v11;
  v28[1] = v12;
  sub_10000988C();
  NSUserDefaults.subscript.setter(&v29, v28, &type metadata for String);
  if (v23)
  {
    v26 = CFNotificationCenterGetDarwinNotifyCenter();
    v27 = String._bridgeToObjectiveC()();
    CFNotificationCenterPostNotification(v26, v27, 0, 0, 1u);
  }
}

id MPModelPlaylist.canBeSorted.getter()
{
  if ([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyMovieLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertySongLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVEpisodeLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  if ([v0 hasLoadedValueForKey:MPModelPropertyTVSeasonLibraryAdded])
  {
    return [v0 isLibraryAdded];
  }

  result = [v0 hasLoadedValueForKey:MPModelPropertyArtistLibraryAdded];
  if (result)
  {
    return [v0 isLibraryAdded];
  }

  return result;
}

uint64_t MPModelPlaylist.sortStorageKeyDomain.getter()
{
  v1 = [v0 identifiers];
  v2 = [v1 universalStore];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = [v2 globalPlaylistID];
  swift_unknownObjectRelease();
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

LABEL_8:
    v9 = [v0 identifiers];
    v8 = MPIdentifierSet.bestLibraryIdentifier.getter();

    return v8;
  }

  sub_10000988C();
  v8 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v8;
}

uint64_t MPModelPlaylist.legacyPreferredTracklistSortDescriptors.getter()
{
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  v1 = [objc_opt_self() standardUserDefaults];
  v2 = [v0 sortStorageKeyDomain];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v8 = NSUserDefaults.sortType(for:keyDomain:)(0xC2u, v4, v6);

  sub_100A09D34(v8, v12);
  v9 = v13;
  v10 = v14;
  sub_10000954C(v12, v13);
  v11 = (*(v10 + 24))(194, v9, v10);
  sub_10000959C(v12);
  return v11;
}

Class sub_100A0D7BC(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();

  if (v5)
  {
    sub_100A0EBBC();
    v6.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v6.super.isa = 0;
  }

  return v6.super.isa;
}

id MPModelPlaylist.preferredTracklistSortDescriptors.getter()
{
  v1 = v0;
  if (([v0 hasLoadedValueForKey:MPModelPropertyAlbumLibraryAdded] & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyMovieLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyPlaylistLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertySongLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVEpisodeLibraryAdded) & 1) == 0 && (objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyTVSeasonLibraryAdded) & 1) == 0 && !objc_msgSend(v0, "hasLoadedValueForKey:", MPModelPropertyArtistLibraryAdded) || !objc_msgSend(v0, "isLibraryAdded"))
  {
    return 0;
  }

  result = [v0 sortStorageKeyDomain];
  if (result)
  {
    v3 = result;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v7 = [objc_opt_self() standardUserDefaults];
    v63[0] = 0x2D74726F53;
    v63[1] = 0xE500000000000000;
    v8._countAndFlagsBits = v4;
    v8._object = v6;
    String.append(_:)(v8);

    sub_100A0EB14();
    sub_100A0EB68();
    NSUserDefaults.decodeValue<A>(_:forKey:)(&type metadata for Actions.SortPlaylist.TrackListSort, v63);

    v9 = LOWORD(v63[0]);
    if ((v63[0] & 0xFF00) == 0x200)
    {
      result = [v1 legacyPreferredTracklistSortDescriptors];
      if (result)
      {
        v10 = result;
        sub_100A0EBBC();
        v11 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        return v11;
      }
    }

    else
    {
      v12 = LOBYTE(v63[0]);
      sub_10010FC20(&qword_1011AA660);
      if (v9 <= 1u)
      {
        if (v12)
        {
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_100EBC6D0;
          sub_10010FC20(&unk_1011AAAB0);
          v51 = swift_allocObject();
          *(v51 + 16) = xmmword_100EBDC20;
          *(v51 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v51 + 40) = v52;
          *(v51 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v51 + 56) = v53;
          isa = Array._bridgeToObjectiveC()().super.isa;

          v55 = objc_opt_self();
          v56 = [v55 sortDescriptorWithKeyPath:isa ascending:(v9 >> 8) & 1];

          *(v50 + 32) = v56;
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_100EBE260;
          *(v57 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 40) = v58;
          *(v57 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 56) = v59;
          *(v57 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
          *(v57 + 72) = v60;
          v61 = Array._bridgeToObjectiveC()().super.isa;

          v62 = [v55 sortDescriptorWithKeyPath:v61 ascending:1];

          result = v50;
          *(v50 + 40) = v62;
        }

        else
        {
          v25 = (v9 >> 8) & 1;
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_100EBC6C0;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v27 = objc_allocWithZone(NSSortDescriptor);
          v28 = String._bridgeToObjectiveC()();

          v29 = [v27 initWithKey:v28 ascending:v25];

          result = v26;
          *(v26 + 32) = v29;
        }
      }

      else if (v12 == 2)
      {
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_100EBE270;
        sub_10010FC20(&unk_1011AAAB0);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_100EBE260;
        *(v31 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 40) = v32;
        *(v31 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 56) = v33;
        *(v31 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v31 + 72) = v34;
        v35 = Array._bridgeToObjectiveC()().super.isa;

        v36 = objc_opt_self();
        v37 = [v36 sortDescriptorWithKeyPath:v35 ascending:(v9 >> 8) & 1];

        *(v30 + 32) = v37;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_100EBE260;
        *(v38 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 40) = v39;
        *(v38 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 56) = v40;
        *(v38 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v38 + 72) = v41;
        v42 = Array._bridgeToObjectiveC()().super.isa;

        v43 = [v36 sortDescriptorWithKeyPath:v42 ascending:1];

        *(v30 + 40) = v43;
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_100EBDC20;
        *(v44 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v44 + 40) = v45;
        *(v44 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v44 + 56) = v46;
        v47 = Array._bridgeToObjectiveC()().super.isa;

        v48 = [v36 sortDescriptorWithKeyPath:v47 ascending:1];

        result = v30;
        *(v30 + 48) = v48;
      }

      else
      {
        v13 = swift_allocObject();
        *(v13 + 16) = xmmword_100EBC6D0;
        sub_10010FC20(&unk_1011AAAB0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_100EBE260;
        *(v14 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 40) = v15;
        *(v14 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 56) = v16;
        *(v14 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v14 + 72) = v17;
        v18 = Array._bridgeToObjectiveC()().super.isa;

        v19 = objc_opt_self();
        v20 = [v19 sortDescriptorWithKeyPath:v18 ascending:(v9 >> 8) & 1];

        *(v13 + 32) = v20;
        v21 = swift_allocObject();
        *(v21 + 16) = xmmword_100EBDC20;
        *(v21 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v21 + 40) = v22;
        *(v21 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        *(v21 + 56) = v23;
        v24 = Array._bridgeToObjectiveC()().super.isa;

        v49 = [v19 sortDescriptorWithKeyPath:v24 ascending:1];

        result = v13;
        *(v13 + 40) = v49;
      }
    }
  }

  return result;
}

uint64_t sub_100A0E170()
{
  v0 = type metadata accessor for Logger();
  sub_100006080(v0, static Logger.sortOptions);
  sub_1000060E4(v0, static Logger.sortOptions);
  return Logger.init(subsystem:category:)();
}

uint64_t Logger.sortOptions.unsafeMutableAddressor()
{
  if (qword_1011A6A20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_1000060E4(v0, static Logger.sortOptions);
}

uint64_t static Logger.sortOptions.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1011A6A20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_1000060E4(v2, static Logger.sortOptions);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t _s9MusicCore11SortOptionsV11ContentTypeO2eeoiySbAE_AEtFZ_0(int a1, int a2)
{
  v2 = a2;
  v3 = a1;
  if ((a1 >> 6) > 1u)
  {
    if (a1 >> 6 != 2 && a1 == 192 && a2 == 192)
    {
      return 1;
    }
  }

  else if (a1 >> 6)
  {
    if ((a2 & 0xC0) == 0x40)
    {
      return ((a2 ^ a1) & 0x3F) == 0;
    }
  }

  else if (a2 < 0x40u)
  {
    return ((a2 ^ a1) & 1) == 0;
  }

  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v3);
  String.hash(into:)();

  v6 = Hasher._finalize()();
  Hasher.init(_seed:)();
  SortOptions.ContentType.identifier.getter(v2);
  String.hash(into:)();

  return v6 == Hasher._finalize()();
}

uint64_t sub_100A0E41C(unsigned __int8 a1, char a2)
{
  if (a1 == 194)
  {
    sub_10010FC20(&qword_1011AA660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6D0;
    sub_10010FC20(&unk_1011AAAB0);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_100EBE260;
    *(v4 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 40) = v5;
    *(v4 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 56) = v6;
    *(v4 + 64) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v4 + 72) = v7;
    isa = Array._bridgeToObjectiveC()().super.isa;

    v9 = objc_opt_self();
    v10 = [v9 sortDescriptorWithKeyPath:isa ascending:a2 & 1];

    *(v3 + 32) = v10;
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_100EBDC20;
    *(v11 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 40) = v12;
    *(v11 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(v11 + 56) = v13;
    v14 = Array._bridgeToObjectiveC()().super.isa;

    v15 = [v9 sortDescriptorWithKeyPath:v14 ascending:1];

    *(v3 + 40) = v15;
    return v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100A0E634(unsigned __int8 a1)
{
  if ((a1 >> 6) <= 1u)
  {
    if (a1 >> 6)
    {
      goto LABEL_10;
    }

LABEL_6:
    if (qword_1011A6A18 != -1)
    {
      swift_once();
    }

    v1 = qword_101219C60;

    return v1;
  }

  if (a1 >> 6 == 2)
  {
    goto LABEL_10;
  }

  if (a1 == 192)
  {
    goto LABEL_6;
  }

  if (a1 == 193)
  {
LABEL_10:
    sub_10010FC20(&qword_1011AA660);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_100A0E82C(char a1)
{
  if ((a1 & 0xC0) == 0x80)
  {
    sub_10010FC20(&qword_1011AA660);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v2 = objc_allocWithZone(NSSortDescriptor);
    v3 = String._bridgeToObjectiveC()();

    v4 = [v2 initWithKey:v3 ascending:0];

    *(v1 + 32) = v4;
    return v1;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void *sub_100A0E940(unsigned __int8 a1)
{
  v1 = a1 >> 6;
  if (v1 < 2)
  {
    return _swiftEmptyArrayStorage;
  }

  if (v1 == 2)
  {
    sub_10010FC20(&qword_1011AA660);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_100EBC6C0;
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = objc_allocWithZone(NSSortDescriptor);
    v5 = String._bridgeToObjectiveC()();

    v6 = [v4 initWithKey:v5 ascending:1];

    result = v3;
    *(v3 + 32) = v6;
  }

  else
  {
    if ((a1 & 0xFE) == 0xC0)
    {
      return _swiftEmptyArrayStorage;
    }

    if (qword_1011A69F0 != -1)
    {
      swift_once();
    }

    if (qword_101219C38 >> 62)
    {
      sub_100A0EBBC();

      v7 = _bridgeCocoaArray<A>(_:)();
    }

    else
    {
      v7 = qword_101219C38;

      dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
      sub_100A0EBBC();
    }

    return v7;
  }

  return result;
}

unint64_t _s9MusicCore11SortOptionsV0C4TypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1010C8160, v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100A0EB14()
{
  result = qword_1011ABB28;
  if (!qword_1011ABB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB28);
  }

  return result;
}

unint64_t sub_100A0EB68()
{
  result = qword_1011ABB30;
  if (!qword_1011ABB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB30);
  }

  return result;
}

unint64_t sub_100A0EBBC()
{
  result = qword_1011A9F40;
  if (!qword_1011A9F40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1011A9F40);
  }

  return result;
}

unint64_t sub_100A0EC0C()
{
  result = qword_1011ABB38;
  if (!qword_1011ABB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB38);
  }

  return result;
}

unint64_t sub_100A0EC64()
{
  result = qword_1011ABB40;
  if (!qword_1011ABB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB40);
  }

  return result;
}

unint64_t sub_100A0ECBC()
{
  result = qword_1011ABB48;
  if (!qword_1011ABB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB48);
  }

  return result;
}

unint64_t sub_100A0ED14()
{
  result = qword_1011ABB50;
  if (!qword_1011ABB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB50);
  }

  return result;
}

unint64_t sub_100A0ED6C()
{
  result = qword_1011ABB58;
  if (!qword_1011ABB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB58);
  }

  return result;
}

unint64_t sub_100A0EDC4()
{
  result = qword_1011ABB60;
  if (!qword_1011ABB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABB60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SortOptions.ContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1D)
  {
    goto LABEL_17;
  }

  if (a2 + 227 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 227) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 227;
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

      return (*a1 | (v4 << 8)) - 227;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 227;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x1C | (*a1 >> 6)) ^ 0x1F;
  if (v6 >= 0x1C)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for SortOptions.ContentType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 227 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 227) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1D)
  {
    v4 = 0;
  }

  if (a2 > 0x1C)
  {
    v5 = ((a2 - 29) >> 8) + 1;
    *result = a2 - 29;
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
    *result = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100A0EF94(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >> 6;
  v3 = (v1 & 7) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_BYTE *sub_100A0EFB0(_BYTE *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 7 | (a2 << 6);
  }

  else
  {
    *result = (a2 + 5) & 7 | 0xC0;
  }

  return result;
}

uint64_t static MPModelPlaylist.artworkPlaceholderSystemImageName(for:)(uint64_t a1, char a2)
{
  result = 0x6F6E2E636973756DLL;
  if ((a2 & 1) == 0)
  {
    v4 = a1 - 1;
    if (v4 <= 2)
    {
      return *&aGearshapgenius[8 * v4];
    }
  }

  return result;
}

uint64_t MPModelPlaylist.artworkPlaceholderImage.getter()
{
  v1 = 0x6F6E2E636973756DLL;
  if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    v2 = [v0 type] - 1;
    if (v2 <= 2)
    {
      return *&aGearshapgenius[8 * v2];
    }
  }

  return v1;
}

id MPModelPlaylist.preferredArtworkCatalog.getter()
{
  if (![v0 hasLoadedValueForKey:MPModelPropertyPlaylistType])
  {
    goto LABEL_12;
  }

  v1 = [v0 type];
  if (v1 > 8)
  {
    goto LABEL_12;
  }

  if (((1 << v1) & 0x173) != 0)
  {
    result = MPModelPlaylist.coverArtworkCatalog.getter();
    if (!result)
    {
      result = [v0 artworkCatalog];
      if (!result)
      {
        if ([v0 hasLoadedValueForKey:MPModelPropertyPlaylistTracksTiledArtwork])
        {
          v3 = [v0 tracksTiledArtworkCatalogWithRows:2 columns:2];
          return v3;
        }

        return 0;
      }
    }

    return result;
  }

  if (v1 == 3)
  {
    return 0;
  }

  if (v1 != 7 || ![v0 hasLoadedValueForKey:MPModelPropertyPlaylistEditorialArtwork] || (result = objc_msgSend(v0, "editorialArtworkCatalog")) == 0)
  {
LABEL_12:
    v3 = [v0 artworkCatalog];
    return v3;
  }

  return result;
}

char *ModelObjectBackedStoreItemMetadata.init(modelObject:)(void *a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  *&v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = [v5 anyObject];
    goto LABEL_5;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v6 = [v7 innerObject];
LABEL_5:
    v8 = v6;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  v8 = a1;
LABEL_7:
  v9 = v8;
  ObjectType = swift_getObjectType();
  v11 = [v9 identifiers];
  v12 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v11);
  v14 = v13;

  if (v14)
  {
    v21.receiver = v1;
    v21.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
    v15 = objc_msgSendSuper2(&v21, "init");
    v16 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
    swift_beginAccess();
    v17 = *&v15[v16];
    *&v15[v16] = a1;
    v18 = v15;

    v19 = &v18[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
    swift_beginAccess();
    *v19 = v12;
    *(v19 + 1) = v14;
  }

  else
  {

    type metadata accessor for ModelObjectBackedStoreItemMetadata();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v18;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 initWithStorePlatformDictionary:isa parentStoreItemMetadata:a2];

  return v6;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:)(uint64_t a1, void *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, "initWithStorePlatformDictionary:parentStoreItemMetadata:", isa, a2);

  return v6;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  isa = 0;
  if ((*(v7 + 48))(a2, 1, v6) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v7 + 8))(a2, v6);
  }

  v9 = [objc_allocWithZone(v3) initWithStorePlatformDictionary:v5.super.isa expirationDate:isa];

  return v9;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:expirationDate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  *&v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v8 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1009667F4(a2, v7);
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  isa = 0;
  if ((*(v11 + 48))(v7, 1, v10) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v11 + 8))(v7, v10);
  }

  v13 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v16.receiver = v3;
  v16.super_class = v13;
  v14 = objc_msgSendSuper2(&v16, "initWithStorePlatformDictionary:expirationDate:", v9.super.isa, isa);

  sub_1000095E8(a2, &qword_1011A9B20);
  return v14;
}

id ModelObjectBackedStoreItemMetadata.__allocating_init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  isa = 0;
  if ((*(v9 + 48))(a3, 1, v8) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v9 + 8))(a3, v8);
  }

  v11 = [objc_allocWithZone(v4) initWithStorePlatformDictionary:v7.super.isa parentStoreItemMetadata:a2 expirationDate:isa];

  return v11;
}

id ModelObjectBackedStoreItemMetadata.init(storePlatformDictionary:parentStoreItemMetadata:expirationDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = sub_100A18A3C(a1, a2, a3);

  return v4;
}

id sub_100A0FE4C(uint64_t a1, SEL *a2)
{
  v4 = objc_allocWithZone(v2);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v6 = [v4 *a2];

  return v6;
}

id sub_100A0FEDC(uint64_t a1, SEL *a2)
{
  *&v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v4 = &v2[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v4 = 0;
  *(v4 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v8.receiver = v2;
  v8.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v6 = objc_msgSendSuper2(&v8, *a2, isa);

  return v6;
}

id sub_100A0FF88(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  *&a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v6 = &a1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v6 = 0;
  *(v6 + 1) = 0;
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v10.receiver = a1;
  v10.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v8 = objc_msgSendSuper2(&v10, *a4, isa);

  return v8;
}

void ModelObjectBackedStoreItemMetadata.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject) = 0;
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  *v1 = 0;
  v1[1] = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void *ModelObjectBackedStoreItemMetadata.modelObject.getter()
{
  v1 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void ModelObjectBackedStoreItemMetadata.modelObject.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t ModelObjectBackedStoreItemMetadata.modelObjectStoreID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

char *ModelObjectBackedStoreItemMetadata.appending(_:)(uint64_t a1)
{
  v14.receiver = v1;
  v14.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v3 = objc_msgSendSuper2(&v14, "metadataByAppendingMetadata:", a1);
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *&v1[v4];
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v7 = *&v3[v6];
  *&v3[v6] = v5;
  v8 = v5;

  v9 = &v1[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  v11 = *v9;
  v10 = *(v9 + 1);
  v12 = &v3[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  swift_beginAccess();
  *v12 = v11;
  *(v12 + 1) = v10;

  return v3;
}

uint64_t ModelObjectBackedStoreItemMetadata.artistName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18BF8;
  *(v3 + 24) = v2;
  v9[4] = sub_100029B94;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D7C88;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A10714(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 artist];
      if (v10)
      {
LABEL_7:
        v13 = v10;
        v14 = [v10 name];

        if (v14)
        {
          v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v17 = v16;

LABEL_12:
          *a2 = v15;
          a2[1] = v17;
        }
      }

LABEL_9:

      goto LABEL_10;
    }

    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      v12 = v11;
      v9 = v6;
      v10 = [v12 artist];
      if (v10)
      {
        goto LABEL_7;
      }

      goto LABEL_9;
    }

    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v18 = result;
      v19 = v6;
      v20 = [v18 show];
      v21 = v20;
      if (!v20)
      {
        v22 = [v18 season];
        v15 = [v22 show];

        if (!v15)
        {

          goto LABEL_11;
        }

        v21 = v15;
        v20 = 0;
      }

      v23 = v20;
      v24 = [v21 title];

      if (v24)
      {
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v25;

        goto LABEL_12;
      }

LABEL_10:
      v15 = 0;
LABEL_11:
      v17 = 0;
      goto LABEL_12;
    }
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.artistStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100A18C00;
  *(v5 + 24) = v4;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7D00;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_100A10BEC(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6 || (objc_opt_self(), (v6 = swift_dynamicCastObjCClass()) != 0))
    {
      v7 = [v6 artist];
LABEL_5:
      v8 = *a2;
      *a2 = v7;

      return;
    }

    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v5;
      v12 = [v10 show];
      if (v12)
      {
        v13 = v12;

        v7 = v13;
      }

      else
      {
        v14 = [v10 season];
        if (v14)
        {
          v15 = v14;
          v16 = [v14 show];

          v7 = v16;
        }

        else
        {

          v7 = 0;
        }
      }

      goto LABEL_5;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.audioTraits.getter()
{
  v10 = _swiftEmptyArrayStorage;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18C08;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7D78;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_100A10F2C(uint64_t a1, char **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (!v5)
  {
    return;
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    goto LABEL_3;
  }

  objc_opt_self();
  v29 = swift_dynamicCastObjCClass();
  if (!v29)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
      return;
    }

LABEL_3:
    v7 = v6;
    v8 = v5;
    if (([v7 traits] & 0x10) != 0)
    {
      v9 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v9 = sub_10089C4F8(0, *(v9 + 2) + 1, 1, v9);
        *a2 = v9;
      }

      v11 = *(v9 + 2);
      v12 = *(v9 + 3);
      v13 = v11 + 1;
      if (v11 >= v12 >> 1)
      {
        v62 = v11 + 1;
        v50 = v9;
        v51 = *(v9 + 2);
        v52 = sub_10089C4F8((v12 > 1), v11 + 1, 1, v50);
        v11 = v51;
        v13 = v62;
        v9 = v52;
        *a2 = v52;
      }

      *(v9 + 2) = v13;
      v14 = &v9[16 * v11];
      *(v14 + 4) = 0x736F6D7461;
      *(v14 + 5) = 0xE500000000000000;
    }

    if (([v7 traits] & 4) != 0)
    {
      v15 = *a2;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v15;
      if ((v16 & 1) == 0)
      {
        v15 = sub_10089C4F8(0, *(v15 + 2) + 1, 1, v15);
        *a2 = v15;
      }

      v17 = *(v15 + 2);
      v18 = *(v15 + 3);
      v19 = v17 + 1;
      if (v17 >= v18 >> 1)
      {
        v63 = v17 + 1;
        v53 = v15;
        v54 = *(v15 + 2);
        v55 = sub_10089C4F8((v18 > 1), v17 + 1, 1, v53);
        v17 = v54;
        v19 = v63;
        v15 = v55;
        *a2 = v55;
      }

      *(v15 + 2) = v19;
      v20 = &v15[16 * v17];
      *(v20 + 4) = 0x6C2D7365722D6968;
      *(v20 + 5) = 0xEF7373656C73736FLL;
    }

    if (([v7 traits] & 2) == 0)
    {
      goto LABEL_29;
    }

    v21 = *a2;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v21;
    if ((v22 & 1) == 0)
    {
      v21 = sub_10089C4F8(0, *(v21 + 2) + 1, 1, v21);
      *a2 = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v62 = v23 + 1;
      v56 = v21;
      v57 = *(v21 + 2);
      v58 = sub_10089C4F8((v24 > 1), v23 + 1, 1, v56);
      v23 = v57;
      v25 = v62;
      v21 = v58;
      *a2 = v58;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    v27 = 0x7373656C73736F6CLL;
    v28 = 0xE800000000000000;
    goto LABEL_28;
  }

  v7 = v29;
  v8 = v5;
  if (([v7 traits] & 0x10) != 0)
  {
    v30 = *a2;
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v30;
    if ((v31 & 1) == 0)
    {
      v30 = sub_10089C4F8(0, *(v30 + 2) + 1, 1, v30);
      *a2 = v30;
    }

    v32 = *(v30 + 2);
    v33 = *(v30 + 3);
    v34 = v32 + 1;
    if (v32 >= v33 >> 1)
    {
      v62 = v32 + 1;
      v59 = v30;
      v60 = *(v30 + 2);
      v61 = sub_10089C4F8((v33 > 1), v32 + 1, 1, v59);
      v32 = v60;
      v34 = v62;
      v30 = v61;
      *a2 = v61;
    }

    *(v30 + 2) = v34;
    v26 = &v30[16 * v32];
    v27 = 0x736F6D7461;
    v28 = 0xE500000000000000;
LABEL_28:
    *(v26 + 4) = v27;
    *(v26 + 5) = v28;
  }

LABEL_29:
  if (([v7 traits] & 8) != 0)
  {
    v35 = *a2;
    v36 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v35;
    if ((v36 & 1) == 0)
    {
      v35 = sub_10089C4F8(0, *(v35 + 2) + 1, 1, v35);
      *a2 = v35;
    }

    v37 = *(v35 + 2);
    v38 = *(v35 + 3);
    v39 = v37 + 1;
    if (v37 >= v38 >> 1)
    {
      v64 = v37 + 1;
      v47 = v35;
      v48 = *(v35 + 2);
      v49 = sub_10089C4F8((v38 > 1), v37 + 1, 1, v47);
      v37 = v48;
      v39 = v64;
      v35 = v49;
      *a2 = v49;
    }

    *(v35 + 2) = v39;
    v40 = &v35[16 * v37];
    *(v40 + 4) = 0x6C616974617073;
    *(v40 + 5) = 0xE700000000000000;
  }

  if (([v7 traits] & 0x20) != 0)
  {
    v41 = *a2;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v41;
    if ((v42 & 1) == 0)
    {
      v41 = sub_10089C4F8(0, *(v41 + 2) + 1, 1, v41);
      *a2 = v41;
    }

    v44 = *(v41 + 2);
    v43 = *(v41 + 3);
    if (v44 >= v43 >> 1)
    {
      *a2 = sub_10089C4F8((v43 > 1), v44 + 1, 1, v41);
    }

    v45 = *a2;
    *(v45 + 2) = v44 + 1;
    v46 = &v45[16 * v44];
    *(v46 + 4) = 0x646E756F72727573;
    *(v46 + 5) = 0xE800000000000000;
  }

  else
  {
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isBeats1.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18C10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7DF0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.collectionName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18C3C;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D7E68;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void ModelObjectBackedStoreItemMetadata.collectionStoreID.getter(uint64_t a1@<X8>)
{
  v25 = 0;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = &v25;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100A18C68;
  *(v5 + 24) = v4;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v5;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7EE0;
  v6 = _Block_copy(aBlock);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    v9 = v25;
    if (!v25)
    {
      goto LABEL_11;
    }

    objc_opt_self();
    v10 = swift_dynamicCastObjCClass();
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = [v11 anyObject];
    }

    else
    {
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      v15 = v9;
      if (!v14)
      {
LABEL_8:
        v16 = v9;
LABEL_9:
        v17 = v16;
        ObjectType = swift_getObjectType();
        v19 = [v17 identifiers];
        v20 = static MPIdentifierSet.bestIdentifier<A>(for:purpose:identifiers:)(ObjectType, 2, 0, v19);
        v22 = v21;

        if (v22)
        {
          *(a1 + 24) = &type metadata for String;
          *a1 = v20;
          *(a1 + 8) = v22;
LABEL_12:
          v23 = v25;

          return;
        }

LABEL_11:
        *a1 = 0u;
        *(a1 + 16) = 0u;
        goto LABEL_12;
      }

      v13 = [v14 innerObject];
    }

    v16 = v13;
    if (v16)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  __break(1u);
}

void sub_100A119C8(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = &selRef_album;
    }

    else
    {
      objc_opt_self();
      v5 = swift_dynamicCastObjCClass();
      if (!v5)
      {
        return;
      }

      v6 = &selRef_season;
    }

    v7 = [v5 *v6];
    v8 = *a2;
    *a2 = v7;
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.isCompilation.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18C70;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D7F58;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.composerName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18C9C;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D7FD0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A11DB8(uint64_t a1, uint64_t *a2, SEL *a3, const char **a4)
{
  v8 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v10 = *(a1 + v8);
  if (v10)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v11 = result;
      v12 = v10;
      v13 = [v11 *a3];
      if (v13 && (v14 = *a4, v15 = v13, v16 = [v13 v14], v15, v16))
      {
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
      }

      else
      {

        v17 = 0;
        v19 = 0;
      }

      *a2 = v17;
      a2[1] = v19;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.copyrightText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18CC8;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8048;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.curatorName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D00;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D80C0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void sub_100A121CC(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 curator];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 name];
        if (v11)
        {
          v12 = v11;
          v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v15 = v14;
        }

        else
        {
          v16 = [v10 shortName];
          if (v16)
          {
            v17 = v16;
            v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v15 = v18;
          }

          else
          {

            v13 = 0;
            v15 = 0;
          }
        }

        *a2 = v13;
        a2[1] = v15;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.descriptionText.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D08;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8138;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A12498(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v6;
      v10 = [v8 descriptionText];
      if (!v10)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v11 = swift_dynamicCastObjCClass();
      if (v11)
      {
        v12 = v11;
        v9 = v6;
        v10 = [v12 descriptionText];
        if (!v10)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v13 = swift_dynamicCastObjCClass();
        if (v13)
        {
          v14 = v13;
          v9 = v6;
          v10 = [v14 descriptionText];
          if (!v10)
          {
LABEL_13:

            v16 = 0;
            v18 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v19 = result;
          v9 = v6;
          v10 = [v19 descriptionText];
          if (!v10)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v15 = v10;
    v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = v17;

LABEL_14:
    *a2 = v16;
    a2[1] = v18;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D81B0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.discNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D3C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8228;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.duration.getter()
{
  v9 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v9;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D68;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D82A0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
  }

  __break(1u);
  return result;
}

id sub_100A12B40(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result duration];
      *a2 = v6;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.editorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D70;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8318;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A12D88(uint64_t a1, uint64_t *a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v8 = *(a1 + v6);
  if (v8)
  {
    objc_opt_self();
    v9 = swift_dynamicCastObjCClass();
    if (v9)
    {
      v10 = v9;
      v11 = v8;
      v12 = [v10 *a3];
      if (!v12)
      {
        goto LABEL_13;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v11 = v8;
        v12 = [v14 *a3];
        if (!v12)
        {
          goto LABEL_13;
        }
      }

      else
      {
        objc_opt_self();
        v15 = swift_dynamicCastObjCClass();
        if (v15)
        {
          v16 = v15;
          v11 = v8;
          v12 = [v16 *a3];
          if (!v12)
          {
LABEL_13:

            v18 = 0;
            v20 = 0;
            goto LABEL_14;
          }
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v21 = result;
          v11 = v8;
          v12 = [v21 *a3];
          if (!v12)
          {
            goto LABEL_13;
          }
        }
      }
    }

    v17 = v12;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;

LABEL_14:
    *a2 = v18;
    a2[1] = v20;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortEditorNotes.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18D94;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8390;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.episodeCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18DB8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8408;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.explicitRating.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18DE4;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8480;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_100A133FC(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result explicitRating];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.genreNames.getter()
{
  v16 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v16;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18DEC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D84F8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    if (v16 && (v8 = [v16 name]) != 0)
    {
      v9 = v8;
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      sub_10010FC20(&qword_1011A98C0);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_100EBC6B0;
      *(v13 + 56) = &type metadata for String;
      *(v13 + 32) = v10;
      *(v13 + 40) = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v16;

    return v13;
  }

  return result;
}

void sub_100A136FC(uint64_t a1, void **a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5 || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0) || (objc_opt_self(), (v5 = swift_dynamicCastObjCClass()) != 0))
    {
      v6 = [v5 genre];
      v7 = *a2;
      *a2 = v6;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.handle.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18DF4;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8570;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasArtistBiography.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E20;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D85E8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.hasLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E4C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8660;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_100A13C9C(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasStoreLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasTimeSyncedLyrics.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E54;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D86D8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_100A13F04(uint64_t a1, unsigned __int8 *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 lyrics];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 hasTimeSyncedLyrics];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.hasSocialPosts.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E5C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8750;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_100A1416C(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result hasSocialPosts];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isExplicitContent.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E64;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D87C8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_100A143B0(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (result)
        {
          v6 = &selRef_isExplicitSong;
          goto LABEL_5;
        }

        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (!result)
        {
          return result;
        }
      }
    }

    v6 = &selRef_hasExplicitContent;
LABEL_5:
    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isMasteredForiTunes.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E6C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8840;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_100A14640(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result || (objc_opt_self(), (result = swift_dynamicCastObjCClass()) != 0))
    {
      result = [result traits];
      *a2 = result & 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPreorder.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18E74;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D88B8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isPrivatePerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18EA0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8930;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isVerifiedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18ECC;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D89A8;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.isOnboardedPerson.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18EF8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8A20;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t sub_100A14D74(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result hasLightweightProfile];
      *a2 = result ^ 1;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.itemKind.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18F00;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8A98;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

void sub_100A14F88(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = v7;
      v9 = v5;
      v10 = [v8 curatorKind];
      if (v10 <= 1)
      {
        if (!v10)
        {

          return;
        }

        if (v10 == 1)
        {
          goto LABEL_22;
        }
      }

      else if (v10 == 2 || v10 == 3 || v10 == 4)
      {
        goto LABEL_22;
      }

      _StringGuts.grow(_:)(24);
      v16._countAndFlagsBits = 0xD000000000000013;
      v16._object = 0x8000000100E53D80;
      String.append(_:)(v16);
      v17._object = 0x8000000100E60570;
      v17._countAndFlagsBits = 0xD000000000000012;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 32;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      type metadata accessor for MPModelCuratorKind(0);
      _print_unlocked<A, B>(_:_:)();
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      goto LABEL_4;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = v14;
      v9 = v5;
      [v15 isArtistUploadedContent];
      [v15 hasVideo];
LABEL_22:
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      *a2 = v11;
      a2[1] = v13;
      goto LABEL_5;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass() || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()) || (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
LABEL_4:
      *a2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      a2[1] = v6;
LABEL_5:
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.lastModifiedDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A18F08;
  *(v6 + 24) = v5;
  v11[4] = sub_10018A020;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100029B9C;
  v11[3] = &unk_1010D8B10;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100A15558(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v3 = type metadata accessor for Calendar();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v25 - v8;
  v10 = type metadata accessor for DateComponents();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v25 - v15;
  v17 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v18 = *(a1 + v17);
  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v18;
      v22 = [v20 lastModifiedDateComponents];
      if (v22)
      {
        v23 = v22;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        (*(v11 + 32))(v16, v13, v10);
        v24 = [objc_opt_self() storeServerCalendar];
        static Calendar._unconditionallyBridgeFromObjectiveC(_:)();

        Calendar.date(from:)();
        (*(v4 + 8))(v6, v3);
        (*(v11 + 8))(v16, v10);
        sub_10006B010(v9, v25, &qword_1011A9B20);
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.movementCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18F10;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8B88;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18F3C;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8C00;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.movementNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18F68;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8C78;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.name.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18F94;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8CF0;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A15E8C(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (v6)
  {
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
LABEL_15:
      v12 = v7;
      v10 = v6;
      v11 = [v12 title];
LABEL_16:
      v13 = v11;
      if (v13)
      {
LABEL_17:
        v14 = v13;
LABEL_18:
        v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v17 = v16;

LABEL_27:
        *a2 = v15;
        a2[1] = v17;
      }

      goto LABEL_25;
    }

    objc_opt_self();
    v8 = swift_dynamicCastObjCClass();
    if (!v8)
    {
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (!v8)
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          goto LABEL_15;
        }

        objc_opt_self();
        v8 = swift_dynamicCastObjCClass();
        if (!v8)
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (!v8)
          {
            objc_opt_self();
            v8 = swift_dynamicCastObjCClass();
            if (!v8)
            {
              objc_opt_self();
              v7 = swift_dynamicCastObjCClass();
              if (!v7)
              {
                objc_opt_self();
                v7 = swift_dynamicCastObjCClass();
                if (!v7)
                {
                  objc_opt_self();
                  v18 = swift_dynamicCastObjCClass();
                  if (v18)
                  {
                    v19 = v18;
                    v10 = v6;
                    v20 = [v19 show];
                    v15 = v20;
                    if (!v20)
                    {

                      goto LABEL_26;
                    }

                    v14 = [v20 title];

                    if (v14)
                    {
                      goto LABEL_18;
                    }
                  }

                  else
                  {
                    objc_opt_self();
                    result = swift_dynamicCastObjCClass();
                    if (!result)
                    {
                      return result;
                    }

                    v21 = result;
                    v10 = v6;
                    v13 = [v21 title];
                    if (v13)
                    {
                      goto LABEL_17;
                    }
                  }

LABEL_25:

                  v15 = 0;
LABEL_26:
                  v17 = 0;
                  goto LABEL_27;
                }
              }

              goto LABEL_15;
            }
          }
        }
      }
    }

    v9 = v8;
    v10 = v6;
    v11 = [v9 name];
    goto LABEL_16;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.nameRaw.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18F9C;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8D68;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

Class sub_100A163C8(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = a1;
  a3();

  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
    v12 = isa;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.releaseDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A18FC8;
  *(v6 + 24) = v5;
  v11[4] = sub_10018A020;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100029B9C;
  v11[3] = &unk_1010D8DE0;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A1669C(uint64_t a1, uint64_t a2)
{
  v69 = a2;
  v3 = type metadata accessor for DateComponents();
  v67 = *(v3 - 8);
  v68 = v3;
  __chkstk_darwin(v3);
  v66 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10010FC20(&qword_1011ABBA0);
  __chkstk_darwin(v5 - 8);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v65 - v9;
  __chkstk_darwin(v11);
  v13 = &v65 - v12;
  __chkstk_darwin(v14);
  v16 = &v65 - v15;
  v17 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v17 - 8);
  v19 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v65 - v21;
  __chkstk_darwin(v23);
  v25 = &v65 - v24;
  __chkstk_darwin(v26);
  v28 = &v65 - v27;
  v29 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v31 = *(a1 + v29);
  if (v31)
  {
    objc_opt_self();
    v32 = swift_dynamicCastObjCClass();
    if (v32)
    {
      v33 = v32;
      v34 = v31;
      v35 = [v33 releaseDateComponents];
      if (v35)
      {
        v36 = v35;
        static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v37 = 0;
      }

      else
      {
        v37 = 1;
      }

      v45 = v67;
      v44 = v68;
      (*(v67 + 56))(v13, v37, 1, v68);
      sub_100A190F8(v13, v16);
      if ((*(v45 + 48))(v16, 1, v44))
      {

        sub_1000095E8(v16, &qword_1011ABBA0);
        v46 = type metadata accessor for Date();
        (*(*(v46 - 8) + 56))(v28, 1, 1, v46);
      }

      else
      {
        v47 = v66;
        (*(v45 + 16))(v66, v16, v44);
        sub_1000095E8(v16, &qword_1011ABBA0);
        DateComponents.date.getter();

        (*(v45 + 8))(v47, v44);
      }

      v22 = v28;
    }

    else
    {
      objc_opt_self();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
        v39 = v38;
        v40 = v31;
        v41 = [v39 releaseDateComponents];
        if (v41)
        {
          v42 = v41;
          static DateComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v43 = 0;
        }

        else
        {
          v43 = 1;
        }

        v55 = v67;
        v54 = v68;
        (*(v67 + 56))(v7, v43, 1, v68);
        sub_100A190F8(v7, v10);
        if ((*(v55 + 48))(v10, 1, v54))
        {

          sub_1000095E8(v10, &qword_1011ABBA0);
          v56 = type metadata accessor for Date();
          (*(*(v56 - 8) + 56))(v25, 1, 1, v56);
        }

        else
        {
          v57 = v66;
          (*(v55 + 16))(v66, v10, v54);
          sub_1000095E8(v10, &qword_1011ABBA0);
          DateComponents.date.getter();

          (*(v55 + 8))(v57, v54);
        }

        v22 = v25;
      }

      else
      {
        objc_opt_self();
        v48 = swift_dynamicCastObjCClass();
        if (v48)
        {
          v49 = v48;
          v50 = v31;
          v51 = [v49 releaseDate];
          if (v51)
          {
            v52 = v51;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v53 = 0;
            v50 = v52;
          }

          else
          {
            v53 = 1;
          }

          v63 = type metadata accessor for Date();
          (*(*(v63 - 8) + 56))(v22, v53, 1, v63);
        }

        else
        {
          objc_opt_self();
          result = swift_dynamicCastObjCClass();
          if (!result)
          {
            return result;
          }

          v58 = result;
          v59 = v31;
          v60 = [v58 releaseDate];
          if (v60)
          {
            v61 = v60;
            static Date._unconditionallyBridgeFromObjectiveC(_:)();

            v62 = 0;
            v59 = v61;
          }

          else
          {
            v62 = 1;
          }

          v64 = type metadata accessor for Date();
          (*(*(v64 - 8) + 56))(v19, v62, 1, v64);
          v22 = v19;
        }
      }
    }

    return sub_10006B010(v22, v69, &qword_1011A9B20);
  }

  return result;
}

id sub_100A16D70(void *a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = a1;
  a3(v13);

  v5 = v14;
  if (v14)
  {
    v6 = sub_10000954C(v13, v14);
    v7 = *(v5 - 8);
    v8 = __chkstk_darwin(v6);
    v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);
    v11 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v7 + 8))(v10, v5);
    sub_10000959C(v13);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t ModelObjectBackedStoreItemMetadata.socialProfileID.getter@<X0>(_OWORD *a1@<X8>)
{
  *a1 = 0u;
  a1[1] = 0u;
  v3 = objc_opt_self();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_100A18FD0;
  *(v5 + 24) = v4;
  v10[4] = sub_10018A020;
  v10[5] = v5;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100029B9C;
  v10[3] = &unk_1010D8E58;
  v6 = _Block_copy(v10);
  v7 = v1;

  [v3 performWithoutEnforcement:v6];
  _Block_release(v6);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A17020(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = (a1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
      swift_beginAccess();
      v7 = v6[1];
      if (v7)
      {
        v8 = *v6;
        v9 = &type metadata for String;
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10[2] = 0;
      }

      v10[0] = v8;
      v10[1] = v7;
      v10[3] = v9;

      return sub_10006B010(v10, a2, &qword_1011ABB20);
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.seasonNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18FD8;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D8ED0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_100A172A4(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (v6)
    {
      v7 = v6;
      v8 = v5;
      v9 = [v7 season];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 number];

        *a2 = v11;
      }

      else
      {
      }
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.shortName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A18FE0;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D8F48;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A174F4(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4, uint64_t a5, SEL *a6)
{
  v10 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v12 = *(a1 + v10);
  if (v12)
  {
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (v13)
    {
      v14 = v13;
      v15 = v12;
      v16 = [v14 *a4];
      if (v16)
      {
        v17 = v16;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;

LABEL_11:
        *a2 = v18;
        a2[1] = v20;
      }
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v21 = result;
      v22 = v12;
      v23 = [v21 *a6];
      if (v23)
      {
        v24 = v23;
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v25;

        goto LABEL_11;
      }
    }

    v18 = 0;
    v20 = 0;
    goto LABEL_11;
  }

  return result;
}

id sub_100A17654(void *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v5 - 8);
  v7 = &v16 - v6;
  v8 = a1;
  a3();

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    (*(v10 + 8))(v7, v9);
    v12 = v14;
  }

  return v12;
}

uint64_t ModelObjectBackedStoreItemMetadata.shortURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A1901C;
  *(v6 + 24) = v5;
  v11[4] = sub_10018A020;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100029B9C;
  v11[3] = &unk_1010D8FC0;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.showComposer.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A19040;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D9038;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_100A17ACC(uint64_t a1, _BYTE *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.storeID.getter@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID);
  swift_beginAccess();
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = &type metadata for String;
  }

  else
  {
    v5 = 0;
    v6 = 0;
    a1[2] = 0;
  }

  *a1 = v5;
  a1[1] = v4;
  a1[3] = v6;
}

uint64_t ModelObjectBackedStoreItemMetadata.isStoreRedownloadable.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A1906C;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D90B0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

void sub_100A17E04(uint64_t a1, _BYTE *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if (v5)
  {
    ObjectType = swift_getObjectType();
    v7 = swift_conformsToProtocol2();
    if (v7)
    {
      v8 = *(v7 + 16);
      v9 = v7;
      v10 = v5;
      v11 = v8(ObjectType, v9);

      *a2 = v11 & 1;
    }
  }
}

uint64_t ModelObjectBackedStoreItemMetadata.trackCount.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A19074;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D9128;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_100A18068(uint64_t a1, void *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v7))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      result = [result *a4];
      *a2 = result;
    }
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.trackNumber.getter()
{
  v10 = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = &v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A190A0;
  *(v3 + 24) = v2;
  aBlock[4] = sub_10018A020;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100029B9C;
  aBlock[3] = &unk_1010D91A0;
  v4 = _Block_copy(aBlock);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10;

    return v8;
  }

  return result;
}

id sub_100A18298(uint64_t a1, void *a2)
{
  v4 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  if (*(a1 + v4))
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v6 = &selRef_trackNumber;
    }

    else
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        return result;
      }

      v6 = &selRef_episodeNumber;
    }

    result = [result *v6];
    *a2 = result;
  }

  return result;
}

uint64_t ModelObjectBackedStoreItemMetadata.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  v4 = objc_opt_self();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  *(v5 + 24) = a1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_100A190A8;
  *(v6 + 24) = v5;
  v11[4] = sub_10018A020;
  v11[5] = v6;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = sub_100029B9C;
  v11[3] = &unk_1010D9218;
  v7 = _Block_copy(v11);
  v8 = v1;

  [v4 performWithoutEnforcement:v7];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100A18504(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = sub_10010FC20(&qword_1011A77F0);
  __chkstk_darwin(v6 - 8);
  v8 = &v18 - v7;
  v9 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v11 = *(a1 + v9);
  if (v11)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v12 = result;
      v13 = v11;
      v14 = [v12 *a3];
      if (v14)
      {
        v15 = v14;
        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        v16 = 0;
        v13 = v15;
      }

      else
      {
        v16 = 1;
      }

      v17 = type metadata accessor for URL();
      (*(*(v17 - 8) + 56))(v8, v16, 1, v17);
      return sub_10006B010(v8, a2, &qword_1011A77F0);
    }
  }

  return result;
}

id sub_100A1868C(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ModelObjectBackedStoreItemMetadata.workName.getter()
{
  v10[0] = 0;
  v10[1] = 0;
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  *(v2 + 24) = v10;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100A190CC;
  *(v3 + 24) = v2;
  v9[4] = sub_10018A020;
  v9[5] = v3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_100029B9C;
  v9[3] = &unk_1010D9290;
  v4 = _Block_copy(v9);
  v5 = v0;

  [v1 performWithoutEnforcement:v4];
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v8 = v10[0];

    return v8;
  }

  return result;
}

uint64_t sub_100A18880(uint64_t a1, uint64_t *a2, uint64_t a3, SEL *a4)
{
  v7 = OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject;
  result = swift_beginAccess();
  v9 = *(a1 + v7);
  if (v9)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v10 = result;
      v11 = v9;
      v12 = [v10 *a4];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      *a2 = v14;
      a2[1] = v16;
    }
  }

  return result;
}

id ModelObjectBackedStoreItemMetadata.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100A18A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_10010FC20(&qword_1011A9B20);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  *&v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObject] = 0;
  v10 = &v4[OBJC_IVAR____TtC9MusicCore34ModelObjectBackedStoreItemMetadata_modelObjectStoreID];
  *v10 = 0;
  *(v10 + 1) = 0;
  v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

  sub_1009667F4(a3, v9);
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  isa = 0;
  if ((*(v13 + 48))(v9, 1, v12) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v13 + 8))(v9, v12);
  }

  v15 = type metadata accessor for ModelObjectBackedStoreItemMetadata();
  v18.receiver = v4;
  v18.super_class = v15;
  v16 = objc_msgSendSuper2(&v18, "initWithStorePlatformDictionary:parentStoreItemMetadata:expirationDate:", v11.super.isa, a2, isa);

  sub_1000095E8(a3, &qword_1011A9B20);
  return v16;
}

uint64_t sub_100A190F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABBA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MotionMode.allowsMotion.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MotionMode();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MotionMode.off(_:))
  {
    return 0;
  }

  if (v7 == enum case for MotionMode.wifiOnly(_:))
  {
    v9 = [objc_opt_self() sharedMonitor];
    [v9 networkType];

    return ICEnvironmentNetworkTypeIsWiFi();
  }

  else if (v7 == enum case for MotionMode.on(_:))
  {
    return 1;
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v11 = 0xD00000000000001ELL;
    v12 = 0x8000000100E605B0;
    sub_100A194E4();
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100A194E4()
{
  result = qword_1011ABBA8;
  if (!qword_1011ABBA8)
  {
    type metadata accessor for MotionMode();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011ABBA8);
  }

  return result;
}

id sub_100A1953C()
{
  type metadata accessor for NetworkMonitor();
  v0 = swift_allocObject();
  result = NetworkMonitor.init()();
  static NetworkMonitor.shared = v0;
  return result;
}

uint64_t NetworkMonitor.__allocating_init()()
{
  v0 = swift_allocObject();
  NetworkMonitor.init()();
  return v0;
}

uint64_t *NetworkMonitor.shared.unsafeMutableAddressor()
{
  if (qword_1011A6A28 != -1)
  {
    swift_once();
  }

  return &static NetworkMonitor.shared;
}

uint64_t static NetworkMonitor.shared.getter()
{
  if (qword_1011A6A28 != -1)
  {
    swift_once();
  }
}

uint64_t NetworkMonitor.isOnline.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100A19704@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100A19784()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t NetworkMonitor.$isOnline.getter()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100A1986C()
{
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t sub_100A198E4(uint64_t a1)
{
  v2 = sub_10010FC20(&qword_1011AC720);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v6);
  v9 = &v12 - v8;
  v10 = *(v3 + 16);
  v10(&v12 - v8, a1, v2, v7);
  (v10)(v5, v9, v2);
  swift_beginAccess();
  sub_10010FC20(&qword_1011ABBB8);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(v9, v2);
}

id NetworkMonitor.init()()
{
  v1 = sub_10010FC20(&qword_1011ABBB8);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - v3;
  result = [objc_opt_self() sharedCloudController];
  if (result)
  {
    v6 = result;
    v7 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
    v8 = [result hasProperNetworkConditionsToShowCloudMedia];

    LOBYTE(aBlock[0]) = v8;
    Published.init(initialValue:)();
    (*(v2 + 32))(v0 + v7, v4, v1);
    v9 = [objc_opt_self() defaultCenter];
    v10 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
    v11 = [objc_opt_self() mainQueue];
    v12 = swift_allocObject();
    swift_weakInit();
    aBlock[4] = sub_100A19DB0;
    aBlock[5] = v12;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100A19DB8;
    aBlock[3] = &unk_1010D92E0;
    v13 = _Block_copy(aBlock);

    v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
    _Block_release(v13);
    swift_unknownObjectRelease();

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_100A19CCC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    result = [objc_opt_self() sharedCloudController];
    if (result)
    {
      v1 = result;
      if (([result shouldProhibitMusicActionForCurrentNetworkConditions] & 1) == 0)
      {
        [v1 hasProperNetworkConditionsToShowCloudMedia];
      }

      swift_getKeyPath();
      swift_getKeyPath();
      return static Published.subscript.setter();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100A19DB8(uint64_t a1)
{
  v2 = type metadata accessor for Notification();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v6(v5);

  return (*(v3 + 8))(v5, v2);
}

uint64_t NetworkMonitor.deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_10010FC20(&qword_1011ABBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t NetworkMonitor.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9MusicCore14NetworkMonitor__isOnline;
  v2 = sub_10010FC20(&qword_1011ABBB8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for NetworkMonitor()
{
  result = qword_1011ABBE8;
  if (!qword_1011ABBE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100A1A014()
{
  sub_100008E80();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t static Notice.variant(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v214 = a2;
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v219 = type metadata accessor for Notice.Thumbnail(0);
  v217 = *(v219 - 8);
  __chkstk_darwin(v219);
  v5 = &v207 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10010FC20(&unk_1011AA940);
  v7 = __chkstk_darwin(v6 - 8);
  v9 = &v207 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v207 - v10;
  v12 = sub_10010FC20(&qword_1011ABC70);
  v13 = __chkstk_darwin(v12 - 8);
  v15 = &v207 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = (&v207 - v17);
  __chkstk_darwin(v16);
  v212 = (&v207 - v19);
  v20 = type metadata accessor for Locale();
  __chkstk_darwin(v20 - 8);
  v218 = &v207 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for String.LocalizationValue();
  v23 = *(v22 - 8);
  v215 = v22;
  v216 = v23;
  v24 = __chkstk_darwin(v22);
  v213 = &v207 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v207 - v26;
  v28 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v28);
  v30 = (&v207 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100A1D4A0(a1, v30, type metadata accessor for Notice.Variant);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v88 = *v30;
      v87 = v30[1];
      v89 = Notice.Variant.id.getter();
      v207 = v90;
      v208 = v89;
      if (v87)
      {
        v210 = v87;
        v211 = v88;
        v209 = 0x7265646C6F66;
        v91 = v219;
        v92 = v216;
        v93 = v217;
        v94 = v27;
        v95 = v214;
        v96 = v215;
        v97 = v213;
      }

      else
      {
        v94 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v96 = v215;
        v92 = v216;
        v97 = v213;
        (*(v216 + 16))(v213, v27, v215);
        v91 = v219;
        v93 = v217;
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v209 = 0x672E657261757173;
        v192 = qword_101219808;
        static Locale.current.getter();
        v193 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v194;
        v211 = v193;
        (*(v92 + 8))(v27, v96);
        v95 = v214;
      }

      String.LocalizationValue.init(stringLiteral:)();
      (*(v92 + 16))(v97, v94, v96);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v195 = qword_101219808;
      static Locale.current.getter();
      v219 = String.init(localized:table:bundle:locale:comment:)();
      v197 = v196;
      (*(v92 + 8))(v94, v96);
      v198 = Image.init(_internalSystemName:)();
      v199 = v212;
      *v212 = v198;
      swift_storeEnumTagMultiPayload();
      v200 = *(v93 + 56);
      v200(v199, 0, 1, v91);
      v201 = type metadata accessor for Notice(0);
      v202 = v201[5];
      v200(v95 + v202, 1, 1, v91);
      v203 = (v95 + v201[7]);
      v188 = (v95 + v201[8]);
      v121 = v95 + v201[9];
      v122 = v95 + v201[10];
      v204 = v207;
      *v95 = v208;
      v95[1] = v204;
      result = sub_100A1CFF8(v199, v95 + v202);
      v205 = (v95 + v201[6]);
      v206 = v210;
      *v205 = v211;
      v205[1] = v206;
      *v203 = v219;
      v203[1] = v197;
      goto LABEL_74;
    case 2u:
      v71 = *v30;
      v70 = v30[1];
      v72 = v30[2];
      v73 = Notice.Variant.id.getter();
      v208 = v74;
      v209 = v73;
      if (v72)
      {
        v210 = v72;
        v211 = v70;
        v76 = v215;
        v75 = v216;
        v77 = v27;
        v79 = v213;
        v78 = v214;
      }

      else
      {
        v77 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v76 = v215;
        v75 = v216;
        v79 = v213;
        (*(v216 + 16))(v213, v27, v215);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v167 = qword_101219808;
        static Locale.current.getter();
        v168 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v169;
        v211 = v168;
        (*(v75 + 8))(v27, v76);
        v78 = v214;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v170._countAndFlagsBits = 0;
      v170._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v170);
      v220 = v71;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v171 = 0x8000000100E60680;
      v172 = 0xD000000000000015;
      goto LABEL_65;
    case 3u:
      v83 = *v30;
      v82 = v30[1];
      v84 = v30[2];
      v85 = Notice.Variant.id.getter();
      v208 = v86;
      v209 = v85;
      if (v84)
      {
        v210 = v84;
        v211 = v82;
        v76 = v215;
        v75 = v216;
        v77 = v27;
        v79 = v213;
        v78 = v214;
      }

      else
      {
        v77 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v76 = v215;
        v75 = v216;
        v79 = v213;
        (*(v216 + 16))(v213, v27, v215);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v173 = qword_101219808;
        static Locale.current.getter();
        v174 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v175;
        v211 = v174;
        (*(v75 + 8))(v27, v76);
        v78 = v214;
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v176._countAndFlagsBits = 0;
      v176._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v176);
      v220 = v83;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v172 = 0xD000000000000013;
      v171 = 0x8000000100E60660;
LABEL_65:
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(*&v172);
      String.LocalizationValue.init(stringInterpolation:)();
      (*(v75 + 16))(v79, v77, v76);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v177 = qword_101219808;
      static Locale.current.getter();
      v178 = String.init(localized:table:bundle:locale:comment:)();
      v180 = v179;
      (*(v75 + 8))(v77, v76);
      v181 = Image.init(_internalSystemName:)();
      v182 = v212;
      *v212 = v181;
      v183 = v219;
      swift_storeEnumTagMultiPayload();
      v184 = *(v217 + 56);
      v184(v182, 0, 1, v183);
      v185 = type metadata accessor for Notice(0);
      v186 = v185[5];
      v184(v78 + v186, 1, 1, v183);
      v187 = (v78 + v185[7]);
      v188 = (v78 + v185[8]);
      v121 = v78 + v185[9];
      v122 = v78 + v185[10];
      v189 = v208;
      *v78 = v209;
      v78[1] = v189;
      result = sub_100A1CFF8(v182, v78 + v186);
      v190 = (v78 + v185[6]);
      v191 = v210;
      *v190 = v211;
      v190[1] = v191;
      *v187 = v178;
      v187[1] = v180;
LABEL_74:
      *v188 = 0;
      v188[1] = 0;
      break;
    case 4u:
      v56 = *v30;
      v55 = v30[1];
      v57 = Notice.Variant.id.getter();
      v208 = v58;
      if (v55)
      {
        v210 = v55;
        v211 = v56;
        v59 = v219;
        v61 = v215;
        v60 = v216;
        v62 = v27;
      }

      else
      {
        v62 = v27;
        String.LocalizationValue.init(stringLiteral:)();
        v61 = v215;
        v60 = v216;
        (*(v216 + 16))(v213, v27, v215);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v145 = qword_101219808;
        static Locale.current.getter();
        v146 = String.init(localized:table:bundle:locale:comment:)();
        v210 = v147;
        v211 = v146;
        (*(v60 + 8))(v27, v61);
        v59 = v219;
      }

      v148 = v214;
      v149 = qword_1011A70E8;

      if (v149 != -1)
      {
        swift_once();
      }

      v209 = v57;
      if (static DeviceCapabilities.isInternalInstall == 1)
      {
        String.LocalizationValue.init(stringLiteral:)();
        (*(v60 + 16))(v213, v62, v61);
        if (qword_1011A6740 != -1)
        {
          swift_once();
        }

        v150 = qword_101219808;
        static Locale.current.getter();
        v151 = String.init(localized:table:bundle:locale:comment:)();
        v218 = v152;
        v219 = v151;
        (*(v60 + 8))(v62, v61);
        v154 = swift_allocObject();
        *(v154 + 16) = v56;
        *(v154 + 24) = v55;
        v153 = sub_100A1D068;
      }

      else
      {

        v153 = 0;
        v154 = 0;
        v218 = 0;
        v219 = 0;
      }

      v155 = Image.init(_internalSystemName:)();
      v156 = v212;
      *v212 = v155;
      swift_storeEnumTagMultiPayload();
      v157 = *(v217 + 56);
      v157(v156, 0, 1, v59);
      v158 = type metadata accessor for Notice(0);
      v159 = v59;
      v160 = v158[5];
      v157(v148 + v160, 1, 1, v159);
      v161 = (v148 + v158[7]);
      v162 = (v148 + v158[8]);
      v121 = v148 + v158[9];
      v122 = v148 + v158[10];
      v163 = v208;
      *v148 = v209;
      v148[1] = v163;
      result = sub_100A1CFF8(v156, v148 + v160);
      v164 = (v148 + v158[6]);
      v165 = v210;
      *v164 = v211;
      v164[1] = v165;
      v166 = v218;
      *v161 = v219;
      v161[1] = v166;
      *v162 = v153;
      v162[1] = v154;
      *v121 = 2;
      goto LABEL_37;
    case 5u:
      v100 = Notice.Variant.id.getter();
      v210 = v101;
      v211 = v100;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 6u:
    case 7u:
    case 8u:
      v108 = Notice.Variant.id.getter();
      v210 = v109;
      v211 = v108;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 9u:
      v68 = Notice.Variant.id.getter();
      v210 = v69;
      v211 = v68;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xAu:
      v104 = Notice.Variant.id.getter();
      v210 = v105;
      v211 = v104;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xBu:
      v53 = Notice.Variant.id.getter();
      v210 = v54;
      v211 = v53;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_75;
    case 0xCu:
      v63 = Notice.Variant.id.getter();
      v210 = v64;
      v211 = v63;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xDu:
      v102 = Notice.Variant.id.getter();
      v210 = v103;
      v211 = v102;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0xEu:
      v48 = Notice.Variant.id.getter();
      v210 = v49;
      v211 = v48;
      v50 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v52 = v215;
      v51 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_34;
      }

LABEL_75:
      swift_once();
LABEL_34:
      v110 = qword_101219808;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v111;
      (*(v51 + 8))(v50, v52);
      goto LABEL_35;
    case 0xFu:
      v80 = Notice.Variant.id.getter();
      v210 = v81;
      v211 = v80;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_81;
    case 0x10u:
      v40 = Notice.Variant.id.getter();
      v210 = v41;
      v211 = v40;
      String.LocalizationValue.init(stringLiteral:)();
      v43 = v215;
      v42 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v44 = qword_101219808;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v46;
      (*(v42 + 8))(v27, v43);
      goto LABEL_35;
    case 0x11u:
      v98 = Notice.Variant.id.getter();
      v210 = v99;
      v211 = v98;
      v65 = v27;
      String.LocalizationValue.init(stringLiteral:)();
      v67 = v215;
      v66 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 == -1)
      {
        goto LABEL_32;
      }

LABEL_81:
      swift_once();
LABEL_32:
      v106 = qword_101219808;
      static Locale.current.getter();
      v45 = String.init(localized:table:bundle:locale:comment:)();
      v47 = v107;
      (*(v66 + 8))(v65, v67);
LABEL_35:
      v112 = Image.init(_internalSystemName:)();
      v113 = v212;
      *v212 = v112;
      v114 = v219;
      swift_storeEnumTagMultiPayload();
      v115 = *(v217 + 56);
      v115(v113, 0, 1, v114);
      v116 = type metadata accessor for Notice(0);
      v117 = v116[5];
      v118 = v214;
      v115(v214 + v117, 1, 1, v114);
      v119 = (v118 + v116[7]);
      v120 = (v118 + v116[8]);
      v121 = v118 + v116[9];
      v122 = v118 + v116[10];
      v123 = v210;
      *v118 = v211;
      v118[1] = v123;
      result = sub_100A1CFF8(v113, v118 + v117);
      v125 = (v118 + v116[6]);
      *v125 = v45;
      v125[1] = v47;
      *v119 = 0;
      v119[1] = 0;
      *v120 = 0;
      v120[1] = 0;
      break;
    default:
      v31 = *v30;
      v211 = v30[1];
      v212 = v31;
      v32 = sub_10010FC20(&qword_1011ABC78);
      v33 = *(v32 + 48);
      v207 = *(v30 + *(v32 + 64));
      sub_100A1D070(v30 + v33, v11);
      v34 = Notice.Variant.id.getter();
      v209 = v35;
      v210 = v34;
      sub_1000089F8(v11, v9, &unk_1011AA940);
      v36 = type metadata accessor for Artwork();
      v37 = *(v36 - 8);
      if ((*(v37 + 48))(v9, 1, v36) == 1)
      {
        sub_1000095E8(v9, &unk_1011AA940);
        v38 = 1;
        v39 = v219;
      }

      else
      {
        (*(v37 + 32))(v5, v9, v36);
        v39 = v219;
        swift_storeEnumTagMultiPayload();
        sub_100A1D0E0(v5, v15);
        v38 = 0;
      }

      v126 = v217;
      v127 = *(v217 + 56);
      v127(v15, v38, 1, v39);
      v217 = *(v126 + 48);
      v128 = (v217)(v15, 1, v39);
      v208 = v127;
      if (v128 == 1)
      {
        *v18 = Image.init(_internalSystemName:)();
        swift_storeEnumTagMultiPayload();
        v127(v18, 0, 1, v39);
        if ((v217)(v15, 1, v39) != 1)
        {
          sub_1000095E8(v15, &qword_1011ABC70);
        }
      }

      else
      {
        sub_100A1D0E0(v15, v18);
        v127(v18, 0, 1, v39);
      }

      String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
      v129._countAndFlagsBits = 0;
      v129._object = 0xE000000000000000;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v129);
      v220 = v207;
      String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
      v130._countAndFlagsBits = 0x297328676E6F7320;
      v130._object = 0xEE00646564646120;
      String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v130);
      String.LocalizationValue.init(stringInterpolation:)();
      v132 = v215;
      v131 = v216;
      (*(v216 + 16))(v213, v27, v215);
      if (qword_1011A6740 != -1)
      {
        swift_once();
      }

      v133 = qword_101219808;
      static Locale.current.getter();
      v134 = String.init(localized:table:bundle:locale:comment:)();
      v136 = v135;
      (*(v131 + 8))(v27, v132);
      sub_1000095E8(v11, &unk_1011AA940);
      v137 = type metadata accessor for Notice(0);
      v138 = v137[5];
      v139 = v214;
      v208(v214 + v138, 1, 1, v219);
      v140 = (v139 + v137[7]);
      v141 = (v139 + v137[8]);
      v121 = v139 + v137[9];
      v122 = v139 + v137[10];
      v142 = v209;
      *v139 = v210;
      v139[1] = v142;
      result = sub_100A1CFF8(v18, v139 + v138);
      v143 = (v139 + v137[6]);
      v144 = v211;
      *v143 = v212;
      v143[1] = v144;
      *v140 = v134;
      v140[1] = v136;
      *v141 = 0;
      v141[1] = 0;
      break;
  }

  *v121 = 0;
LABEL_37:
  v121[8] = 0;
  *v122 = 1;
  return result;
}

uint64_t Notice.thumbnail.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Notice(0) + 20);

  return sub_100A1CFF8(a1, v3);
}

uint64_t Notice.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 24));

  return v1;
}

uint64_t Notice.message.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.headnote.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 28));

  return v1;
}

uint64_t Notice.headnote.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.link.getter()
{
  v1 = *(v0 + *(type metadata accessor for Notice(0) + 32));
  sub_100030444(v1);
  return v1;
}

uint64_t Notice.link.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Notice(0) + 32));
  result = sub_100020438(*v5);
  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Notice.hapticFeedback.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for Notice(0);
  v6 = v2 + *(result + 36);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t Notice.isDismissable.setter(char a1)
{
  result = type metadata accessor for Notice(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Notice.init(id:image:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12)
{
  v39 = a7;
  v40 = a8;
  v37 = a5;
  v38 = a6;
  v36 = a12;
  v34 = a11;
  v35 = a4;
  v33 = a10;
  v16 = sub_10010FC20(&qword_1011ABC70);
  __chkstk_darwin(v16 - 8);
  v18 = &v33 - v17;
  *(&v33 - v17) = a3;
  v19 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 0, 1, v19);
  v21 = type metadata accessor for Notice(0);
  v22 = v21[5];
  v20(&a9[v22], 1, 1, v19);
  v23 = &a9[v21[7]];
  v24 = &a9[v21[8]];
  v25 = v21[10];
  v26 = &a9[v21[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_100A1CFF8(v18, &a9[v22]);
  v28 = &a9[v21[6]];
  v29 = v37;
  *v28 = v35;
  *(v28 + 1) = v29;
  v30 = v39;
  *v23 = v38;
  *(v23 + 1) = v30;
  v32 = v33;
  v31 = v34;
  *v24 = v40;
  *(v24 + 1) = v32;
  *v26 = v31;
  v26[8] = v36 & 1;
  a9[v25] = 1;
  return result;
}

uint64_t Notice.init(id:thumbnail:message:headnote:link:hapticFeedback:isDismissable:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13)
{
  v17 = type metadata accessor for Notice(0);
  v18 = v17[5];
  v19 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v19 - 8) + 56))(&a9[v18], 1, 1, v19);
  v20 = &a9[v17[7]];
  v21 = &a9[v17[8]];
  v22 = v17[10];
  v23 = &a9[v17[9]];
  *a9 = a1;
  *(a9 + 1) = a2;
  result = sub_100A1CFF8(a3, &a9[v18]);
  v25 = &a9[v17[6]];
  *v25 = a4;
  *(v25 + 1) = a5;
  *v20 = a6;
  *(v20 + 1) = a7;
  *v21 = a8;
  *(v21 + 1) = a10;
  *v23 = a11;
  v23[8] = a12 & 1;
  a9[v22] = a13;
  return result;
}

uint64_t Notice.init(id:symbol:message:headnote:link:hapticFeedback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, void *a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v36 = a5;
  v37 = a6;
  v35 = a4;
  v34 = a11;
  v32 = a10;
  v33 = a3;
  v30 = a8;
  v31 = a9;
  v14 = sub_10010FC20(&qword_1011ABC70);
  __chkstk_darwin(v14 - 8);
  v16 = (&v30 - v15);
  *v16 = Image.init(_internalSystemName:)();
  v17 = type metadata accessor for Notice.Thumbnail(0);
  swift_storeEnumTagMultiPayload();
  v18 = *(*(v17 - 8) + 56);
  v18(v16, 0, 1, v17);
  v19 = type metadata accessor for Notice(0);
  v20 = v19[5];
  v18((a7 + v20), 1, 1, v17);
  v21 = (a7 + v19[7]);
  v22 = (a7 + v19[8]);
  v23 = v19[10];
  v24 = a7 + v19[9];
  *a7 = a1;
  a7[1] = a2;
  result = sub_100A1CFF8(v16, a7 + v20);
  v26 = (a7 + v19[6]);
  v27 = v35;
  *v26 = v33;
  v26[1] = v27;
  v28 = v37;
  *v21 = v36;
  v21[1] = v28;
  v29 = v31;
  *v22 = v30;
  v22[1] = v29;
  *v24 = v32;
  v24[8] = v34 & 1;
  *(a7 + v23) = 1;
  return result;
}

uint64_t Notice.withLink(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_100A1D4A0(v3, a3, type metadata accessor for Notice);
  v7 = (a3 + *(type metadata accessor for Notice(0) + 32));
  v8 = *v7;

  result = sub_100020438(v8);
  *v7 = a1;
  v7[1] = a2;
  return result;
}

unint64_t Notice.Variant.id.getter()
{
  v1 = type metadata accessor for Notice.Variant(0);
  __chkstk_darwin(v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A1D4A0(v0, v3, type metadata accessor for Notice.Variant);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7478654E79616C70;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100A1DB0C(v3, type metadata accessor for Notice.Variant);
      result = 0x466F546465766F6DLL;
      break;
    case 2:
      sub_100A1DB0C(v3, type metadata accessor for Notice.Variant);
      result = 0xD000000000000016;
      break;
    case 3:
      sub_100A1DB0C(v3, type metadata accessor for Notice.Variant);
      result = 0xD000000000000014;
      break;
    case 4:
      sub_100A1DB0C(v3, type metadata accessor for Notice.Variant);
      result = 0x726F727265;
      break;
    case 5:
      return result;
    case 6:
      result = 0x7473614C79616C70;
      break;
    case 7:
      result = 0x6575516F54646461;
      break;
    case 8:
      result = 0x6574664179616C70;
      break;
    case 9:
      result = 0x417972617262696CLL;
      break;
    case 10:
      result = 0x72437265646C6F66;
      break;
    case 11:
      result = 0x436E6F6974617473;
      break;
    case 12:
      result = 0x64656E6E6970;
      break;
    case 13:
      result = 0x64656E6E69706E75;
      break;
    case 14:
      result = 0x657469726F766166;
      break;
    case 15:
      result = 0x69726F7661666E75;
      break;
    case 16:
      result = 0x4C74736567677573;
      break;
    case 17:
      result = 0xD00000000000001DLL;
      break;
    default:

      v6 = sub_10010FC20(&qword_1011ABC78);
      sub_1000095E8(&v3[*(v6 + 48)], &unk_1011AA940);
      result = 0x506F546465646461;
      break;
  }

  return result;
}

uint64_t sub_100A1CC8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v30 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10010FC20(&qword_1011A77F0);
  v8 = __chkstk_darwin(v7 - 8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v29 - v11;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    a1 = 0xD000000000000010;
    v13 = 0x8000000100E607A0;
  }

  v14 = sub_1000294C0(_swiftEmptyArrayStorage);
  sub_1009AC87C(a1, v13, 0xD000000000000032, 0x8000000100E5DA90, _swiftEmptyArrayStorage, v14, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, v12, 1u);
  v15 = v4;

  sub_1000089F8(v12, v10, &qword_1011A77F0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1000095E8(v12, &qword_1011A77F0);
  }

  else
  {
    v16 = v30;
    (*(v5 + 32))(v30, v10, v4);
    v17 = objc_opt_self();
    v18 = [v17 sharedApplication];
    URL._bridgeToObjectiveC()(v19);
    v21 = v20;
    v22 = [v18 canOpenURL:v20];

    if (v22)
    {
      v23 = [v17 sharedApplication];
      URL._bridgeToObjectiveC()(v24);
      v26 = v25;
      sub_1008BD18C(_swiftEmptyArrayStorage);
      _s3__C25OpenExternalURLOptionsKeyVMa_0(0);
      sub_10093F848();
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      [v23 openURL:v26 options:isa completionHandler:0];
    }

    (*(v5 + 8))(v16, v15);
    v10 = v12;
  }

  return sub_1000095E8(v10, &qword_1011A77F0);
}

uint64_t sub_100A1CFF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABC70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A1D070(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&unk_1011AA940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100A1D0E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Artwork();
  v24 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notice.Thumbnail(0);
  __chkstk_darwin(v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v23 - v11;
  v13 = sub_10010FC20(&qword_1011ABEB8);
  __chkstk_darwin(v13 - 8);
  v15 = &v23 - v14;
  v17 = *(v16 + 56);
  sub_100A1D4A0(a1, &v23 - v14, type metadata accessor for Notice.Thumbnail);
  sub_100A1D4A0(a2, &v15[v17], type metadata accessor for Notice.Thumbnail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_100A1D4A0(v15, v12, type metadata accessor for Notice.Thumbnail);
    if (!swift_getEnumCaseMultiPayload())
    {
      v20 = static Image.== infix(_:_:)();

      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_100A1D4A0(v15, v9, type metadata accessor for Notice.Thumbnail);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v19 = v24;
      (*(v24 + 32))(v6, &v15[v17], v4);
      v20 = static Artwork.== infix(_:_:)();
      v21 = *(v19 + 8);
      v21(v6, v4);
      v21(v9, v4);
LABEL_12:
      sub_100A1DB0C(v15, type metadata accessor for Notice.Thumbnail);
      return v20 & 1;
    }

    (*(v24 + 8))(v9, v4);
    goto LABEL_10;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
LABEL_10:
    sub_1000095E8(v15, &qword_1011ABEB8);
    v20 = 0;
    return v20 & 1;
  }

  sub_100A1DB0C(v15, type metadata accessor for Notice.Thumbnail);
  v20 = 1;
  return v20 & 1;
}

uint64_t sub_100A1D4A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s9MusicCore6NoticeV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Notice.Thumbnail(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10010FC20(&qword_1011ABC70);
  __chkstk_darwin(v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_10010FC20(&qword_1011ABEB0);
  __chkstk_darwin(v11);
  v13 = &v38 - v12;
  v14 = *a1;
  v15 = a1[1];
  v39 = a1;
  if ((v14 != *a2 || v15 != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v16 = a2;
  v38 = type metadata accessor for Notice(0);
  v17 = *(v38 + 20);
  v18 = *(v11 + 48);
  sub_1000089F8(v39 + v17, v13, &qword_1011ABC70);
  v19 = v16 + v17;
  v20 = v16;
  sub_1000089F8(v19, &v13[v18], &qword_1011ABC70);
  v21 = *(v5 + 48);
  if (v21(v13, 1, v4) == 1)
  {
    if (v21(&v13[v18], 1, v4) == 1)
    {
      sub_1000095E8(v13, &qword_1011ABC70);
      goto LABEL_13;
    }

LABEL_9:
    sub_1000095E8(v13, &qword_1011ABEB0);
    return 0;
  }

  sub_1000089F8(v13, v10, &qword_1011ABC70);
  if (v21(&v13[v18], 1, v4) == 1)
  {
    sub_100A1DB0C(v10, type metadata accessor for Notice.Thumbnail);
    goto LABEL_9;
  }

  sub_100A1D0E0(&v13[v18], v7);
  v23 = _s9MusicCore6NoticeV9ThumbnailO21__derived_enum_equalsySbAE_AEtFZ_0(v10, v7);
  sub_100A1DB0C(v7, type metadata accessor for Notice.Thumbnail);
  sub_100A1DB0C(v10, type metadata accessor for Notice.Thumbnail);
  sub_1000095E8(v13, &qword_1011ABC70);
  if ((v23 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  v24 = v38;
  v25 = *(v38 + 24);
  v26 = (v39 + v25);
  v27 = *(v39 + v25 + 8);
  v28 = (v20 + v25);
  if ((*v26 != *v28 || v27 != v28[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v29 = *(v24 + 28);
  v30 = (v39 + v29);
  v31 = *(v39 + v29 + 8);
  v32 = (v20 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (v33 && (*v30 == *v32 && v31 == v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v33)
  {
    return 0;
  }

LABEL_23:
  v34 = *(v24 + 36);
  v35 = (v39 + v34);
  v36 = *(v39 + v34 + 8);
  v37 = v20 + v34;
  result = *(v37 + 8);
  if ((v36 & 1) == 0)
  {
    return (*v35 == *v37) & ~result;
  }

  return result;
}

void sub_100A1D8EC()
{
  sub_100A1D9CC();
  if (v0 <= 0x3F)
  {
    sub_100A1DAC4(319, &qword_1011ABE68);
    if (v1 <= 0x3F)
    {
      sub_100A1DA4C(319, &qword_1011ABE70);
      if (v2 <= 0x3F)
      {
        sub_100A1DA4C(319, &qword_1011ABE78);
        if (v3 <= 0x3F)
        {
          sub_100A1DAC4(319, &unk_1011ABE80);
          if (v4 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_100A1D9CC()
{
  if (!qword_1011ABE60)
  {
    sub_1001109D0(&unk_1011AA940);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1011ABE60);
    }
  }
}

void sub_100A1DA4C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_1001109D0(&unk_1011ACB70);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_100A1DAC4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    sub_10002F6C8();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_100A1DB0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v13 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v14 = v13[7];
  v15 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v15 - 8) + 56))(&a7[v14], 1, 1, v15);
  v16 = v13[8];
  a7[v13[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = a3;
  sub_100A21CC4(a4, &a7[v13[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(a5, &a7[v14]);
  *&a7[v16] = a6;
  return result;
}

uint64_t sub_100A1DCB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10010FC20(&qword_1011ABED8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v22 = a3;
  v23 = a6;
  v12 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v12 - 8);
  v14 = &v22 - v13;
  v15 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v16 = &a7[v15[6]];
  *v16 = a4;
  *(v16 + 1) = a5;
  v17 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  swift_storeEnumTagMultiPayload();
  v18 = *(*(v17 - 8) + 56);
  v18(v14, 1, 1, v17);
  v19 = v15[7];
  v18(&a7[v19], 1, 1, v17);
  v20 = v15[8];
  a7[v15[9]] = 1;
  *a7 = a1;
  *(a7 + 1) = a2;
  *(a7 + 2) = v22;
  result = sub_100A1DCB8(v14, &a7[v19]);
  *&a7[v20] = v23;
  return result;
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v32 = a3;
  v33 = a7;
  v31 = a2;
  v13 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v13 - 8);
  v15 = &v30 - v14;
  v16 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v17 = *(v16 - 8);
  __chkstk_darwin(v16);
  v19 = (&v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v19 = a4;
  v19[1] = a5;
  swift_storeEnumTagMultiPayload();
  v20 = type metadata accessor for AttributedString();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(a6, 1, v20) == 1)
  {
    sub_1000095E8(a6, &qword_1011A7BF8);
    v22 = 1;
  }

  else
  {
    (*(v21 + 32))(v15, a6, v20);
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  v23 = *(v17 + 56);
  v23(v15, v22, 1, v16);
  v24 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v25 = v24[7];
  v23(&a8[v25], 1, 1, v16);
  v26 = v24[8];
  a8[v24[9]] = 1;
  v28 = v31;
  v27 = v32;
  *a8 = a1;
  *(a8 + 1) = v28;
  *(a8 + 2) = v27;
  sub_100A21CC4(v19, &a8[v24[6]], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v15, &a8[v25]);
  *&a8[v26] = v33;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AttributedString();
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(a1, 1, v4) == 1)
  {
    sub_1000095E8(a1, &qword_1011A7BF8);
    v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v7 = *(*(v6 - 8) + 56);
    v8 = v6;
    v9 = a2;
    v10 = 1;
  }

  else
  {
    (*(v5 + 32))(a2, a1, v4);
    v11 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v7 = *(*(v11 - 8) + 56);
    v9 = a2;
    v10 = 0;
    v8 = v11;
  }

  return v7(v9, v10, 1, v8);
}

{
  v4 = type metadata accessor for AttributedString();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.init(id:underlyingItem:title:subtitle:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v28 = a3;
  v29 = a7;
  v14 = sub_10010FC20(&qword_1011ABED8);
  __chkstk_darwin(v14 - 8);
  v16 = (&v28 - v15);
  v17 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for AttributedString();
  (*(*(v21 - 8) + 32))(v20, a4, v21);
  swift_storeEnumTagMultiPayload();
  if (a6)
  {
    *v16 = a5;
    v16[1] = a6;
    swift_storeEnumTagMultiPayload();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v18 + 56);
  v23(v16, v22, 1, v17);
  v24 = type metadata accessor for NowPlaying.TrackMetadata(0);
  v25 = v24[7];
  v23((a8 + v25), 1, 1, v17);
  v26 = v24[8];
  *(a8 + v24[9]) = 1;
  *a8 = a1;
  a8[1] = a2;
  a8[2] = v28;
  sub_100A21CC4(v20, a8 + v24[6], type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  result = sub_100A1DCB8(v16, a8 + v25);
  *(a8 + v26) = v29;
  return result;
}

uint64_t NowPlaying.TrackMetadata.StringKind.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    *a3 = a1;
    a3[1] = a2;
    v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    swift_storeEnumTagMultiPayload();
    v5 = *(*(v4 - 8) + 56);
    v6 = a3;
    v7 = 0;
    v8 = v4;
  }

  else
  {
    v9 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
    v5 = *(*(v9 - 8) + 56);
    v8 = v9;
    v6 = a3;
    v7 = 1;
  }

  return v5(v6, v7, 1, v8);
}

{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NowPlaying.TrackMetadata.title.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 24);

  return sub_100A1E8B4(a1, v3);
}

uint64_t NowPlaying.TrackMetadata.subtitle.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 28);

  return sub_100A1DCB8(a1, v3);
}

void *NowPlaying.TrackMetadata.artwork.getter()
{
  v1 = *(v0 + *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32));
  v2 = v1;
  return v1;
}

void NowPlaying.TrackMetadata.artwork.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NowPlaying.TrackMetadata(0) + 32);

  *(v1 + v3) = a1;
}

uint64_t sub_100A1E8B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t NowPlaying.TrackMetadata.StringKind.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NowPlaying.TrackMetadata.StringKind(0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A21C5C(v1, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_100A1EAA4();
  v9 = AttributedStringProtocol.description.getter();
  (*(v3 + 8))(v5, v2);
  return v9;
}

unint64_t sub_100A1EAA4()
{
  result = qword_1011AADB0;
  if (!qword_1011AADB0)
  {
    type metadata accessor for AttributedString();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1011AADB0);
  }

  return result;
}

uint64_t sub_100A1EB00()
{
  v1 = v0;
  v2 = type metadata accessor for AttributedString();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100A21C5C(v1, v8, type metadata accessor for NowPlaying.TrackMetadata.StringKind);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return *v8;
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_100A1EAA4();
  v9 = AttributedStringProtocol.description.getter();
  (*(v3 + 8))(v5, v2);
  return v9;
}