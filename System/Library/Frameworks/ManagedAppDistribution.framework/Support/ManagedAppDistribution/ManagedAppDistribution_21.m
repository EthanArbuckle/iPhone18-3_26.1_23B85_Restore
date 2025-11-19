uint64_t sub_10033B8D4(uint64_t a1)
{
  v2 = sub_10033E6A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033B910(uint64_t a1)
{
  v2 = sub_10033E6A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033B94C(uint64_t a1)
{
  v2 = sub_10033E654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033B988(uint64_t a1)
{
  v2 = sub_10033E654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033B9C4(uint64_t a1)
{
  v2 = sub_10033E600();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033BA00(uint64_t a1)
{
  v2 = sub_10033E600();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033BA3C(uint64_t a1)
{
  v2 = sub_10033E5AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033BA78(uint64_t a1)
{
  v2 = sub_10033E5AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10033BAB4@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10033D65C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10033BAFC(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100780CB0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_10033E0C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = *v3;
  v14 = 0;
  sub_10033E170();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 5);
    v10[15] = 3;
    sub_1001F0C48(&unk_10077FB40);
    sub_100006DD0(&qword_100780CC0);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10033BD50()
{
  v1 = 0x687469726F676C61;
  v2 = 0x7A69536B636F6C62;
  if (*v0 != 2)
  {
    v2 = 0x6769446B636F6C62;
  }

  if (*v0)
  {
    v1 = 0x747365676964;
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

uint64_t sub_10033BDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10033DC9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10033BDFC(uint64_t a1)
{
  v2 = sub_10033E0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033BE38(uint64_t a1)
{
  v2 = sub_10033E0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10033BE74@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10033DE14(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

unint64_t sub_10033BED0()
{
  v1 = *v0;
  v2 = 0x687469726F676C61;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0x7453726568736168;
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

uint64_t sub_10033BF60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10033ED6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10033BF88(uint64_t a1)
{
  v2 = sub_10033E4B4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033BFC4(uint64_t a1)
{
  v2 = sub_10033E4B4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033C000@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100780CE8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10033E4B4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v21 = 0;
  sub_10033E11C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16;
  LOBYTE(v19[0]) = v16;
  LOBYTE(v16) = 2;
  *&v20 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v16) = 3;
  *(&v20 + 1) = KeyedDecodingContainer.decode(_:forKey:)();
  if (v9 == 2)
  {
    v21 = 1;
    v17 = &type metadata for ResumableHash.SHA256State;
    v18 = sub_10027992C();
    sub_10027960C();
LABEL_8:
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    sub_1001DFDBC(&v16, v19 + 8);
    v11 = v19[1];
    *a2 = v19[0];
    a2[1] = v11;
    v12 = v20;
    a2[2] = v19[2];
    a2[3] = v12;
    return sub_10000710C(a1);
  }

  if (!v9)
  {
    v21 = 1;
    v17 = &type metadata for ResumableHash.MD5State;
    v18 = sub_100279D20();
    sub_100279A64();
    goto LABEL_8;
  }

  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(35);
  v13._object = 0x80000001006C61F0;
  v13._countAndFlagsBits = 0xD000000000000019;
  String.append(_:)(v13);
  v21 = v9;
  _print_unlocked<A, B>(_:_:)();
  v14._countAndFlagsBits = 0x7374736978652027;
  v14._object = 0xE800000000000000;
  String.append(_:)(v14);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10033C344(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100780CF8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_100006D8C(a1, a1[3]);
  sub_10033E4B4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = *v3;
  v10[14] = 0;
  sub_10033E170();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    sub_100006D8C((v3 + 8), *(v3 + 32));
    v10[13] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v10[12] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[11] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10033C554()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 47;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

uint64_t sub_10033C5F4@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 40);
  v26 = v4;
  if (!v4)
  {
    v25 = *(a1 + 8);
    v6 = &unk_10077FA80;
    v7 = &v25;
    goto LABEL_5;
  }

  if (*(a1 + 32))
  {
    v24 = *(a1 + 8);
    sub_1000032A8(&v24, &unk_10077FA80);
    v6 = &qword_100784430;
    v7 = &v26;
LABEL_5:
    sub_1000032A8(v7, v6);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return sub_1000032A8(a2, &qword_10077E968);
  }

  v9 = *(a1 + 24);
  v10 = *a1;
  v23 = *(a1 + 8);
  sub_1000032A8(&v23, &unk_10077FA80);
  *a3 = v10;
  *(a3 + 8) = v4;
  *(a3 + 16) = v9;
  sub_100005934(a2, v20, &qword_10077E968);
  if (v21)
  {
    sub_10020A980(v20 + 8, &v16);
    sub_10031E150(v20);
  }

  else
  {
    sub_1000032A8(v20, &qword_10077E968);
    v16 = 0u;
    v17 = 0u;
    *&v18 = 0;
  }

  sub_10033C824(&v16, v10, v20);
  sub_1000032A8(&v16, &qword_100780C70);
  sub_1001DFDBC(v20, a3 + 24);
  v11 = a2[1];
  v16 = *a2;
  v17 = v11;
  v12 = a2[3];
  v18 = a2[2];
  v19 = v12;
  if (v18)
  {
    v13 = a2[1];
    v20[0] = *a2;
    v20[1] = v13;
    v14 = a2[3];
    v21 = a2[2];
    v22 = v14;
    v15 = *(&v14 + 1);
    *(a3 + 64) = v14;
    result = sub_10031E150(v20);
    *(a3 + 72) = v15;
  }

  else
  {
    result = sub_1000032A8(&v16, &qword_10077E968);
    *(a3 + 64) = 0;
    *(a3 + 72) = 0;
  }

  return result;
}

uint64_t sub_10033C824@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2 == 2)
  {
    sub_100005934(a1, &v15, &qword_100780C70);
    if (*(&v16 + 1))
    {
      sub_1001F0C48(&qword_100780C80);
      if (swift_dynamicCast())
      {
        v4 = v14;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      sub_1000032A8(&v15, &qword_100780C70);
      v4 = 0;
    }

    sub_10027AC08(v4, &v15);
    if ((v21 & 1) == 0)
    {
      a3[3] = &type metadata for ResumableHash.SHA256;
      a3[4] = sub_10033D458();
      result = swift_allocObject();
      *a3 = result;
      v7 = *&v19[16];
      *(result + 80) = *v19;
      *(result + 96) = v7;
      *(result + 112) = v20;
      v8 = v16;
      *(result + 16) = v15;
      *(result + 32) = v8;
      v9 = v18;
      *(result + 48) = v17;
      *(result + 64) = v9;
      return result;
    }

    __break(1u);
    goto LABEL_19;
  }

  if (a2)
  {
LABEL_20:
    *&v15 = 0;
    *(&v15 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(35);
    v12._object = 0x80000001006C61F0;
    v12._countAndFlagsBits = 0xD000000000000019;
    String.append(_:)(v12);
    _print_unlocked<A, B>(_:_:)();
    v13._countAndFlagsBits = 0x7374736978652027;
    v13._object = 0xE800000000000000;
    String.append(_:)(v13);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  sub_100005934(a1, &v15, &qword_100780C70);
  if (*(&v16 + 1))
  {
    sub_1001F0C48(&qword_100780C80);
    if (swift_dynamicCast())
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    sub_1000032A8(&v15, &qword_100780C70);
    v5 = 0;
  }

  sub_10027AB0C(v5, &v15);
  if (v19[28])
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  a3[3] = &type metadata for ResumableHash.MD5;
  a3[4] = sub_10033D4AC();
  result = swift_allocObject();
  *a3 = result;
  v10 = v18;
  *(result + 48) = v17;
  *(result + 64) = v10;
  *(result + 80) = *v19;
  *(result + 92) = *&v19[12];
  v11 = v16;
  *(result + 16) = v15;
  *(result + 32) = v11;
  return result;
}

void sub_10033CAD4(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 64) >= *(*(v2 + 8) + 16))
  {
LABEL_40:
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
LABEL_41:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v5 = *(v2 + 72);
    if (a1)
    {
      v6 = a2 - a1;
    }

    else
    {
      v6 = 0;
    }

    v7 = v5 + v6;
    if (__OFADD__(v5, v6))
    {
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v8 = *(v2 + 16);
    if (v7 < v8)
    {
      sub_100231ED8(v2 + 24, *(v2 + 48));
      dispatch thunk of HashFunction.update(bufferPointer:)();
      *(v2 + 72) = v7;
      return;
    }

    v9 = v8 - v5;
    if (__OFSUB__(v8, v5))
    {
      goto LABEL_49;
    }

    sub_100231ED8(v2 + 24, *(v2 + 48));
    dispatch thunk of HashFunction.update(bufferPointer:)();
    if (__OFADD__(v5, v9))
    {
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    *(v2 + 72) = v5 + v9;
    sub_10033CF84();
    if (!v3)
    {
      v10 = *(v2 + 16);
      if (!v10)
      {
LABEL_51:
        __break(1u);
        return;
      }

      v11 = v6 >= v9;
      if (v10 > 0)
      {
        v11 = v9 >= v6;
      }

      if (!v11)
      {
        v34 = a1;
        v30[1] = 0;
        v38 = v6;
        while (1)
        {
          v14 = __OFADD__(v9, v10) ? ((v9 + v10) >> 63) ^ 0x8000000000000000 : v9 + v10;
          v15 = v6 - v9;
          if (__OFSUB__(v6, v9))
          {
            break;
          }

          if (v10 >= v15)
          {
            v16 = v6 - v9;
          }

          else
          {
            v16 = v10;
          }

          if (v16 >= 1)
          {
            sub_100231ED8(v2 + 24, *(v2 + 48));
            dispatch thunk of HashFunction.update(bufferPointer:)();
            v17 = *(v2 + 72);
            v18 = __OFADD__(v17, v16);
            v19 = v17 + v16;
            if (v18)
            {
              goto LABEL_45;
            }

            *(v2 + 72) = v19;
            if (v10 <= v15 && v19 >= 1)
            {
              v20 = *(v2 + 64);
              if (v20 >= *(*(v2 + 8) + 16))
              {
                goto LABEL_40;
              }

              v31 = *(v2 + 8);
              sub_100006D8C((v2 + 24), *(v2 + 48));
              AssociatedTypeWitness = swift_getAssociatedTypeWitness();
              v32 = v30;
              v33 = v20;
              v22 = *(AssociatedTypeWitness - 8);
              __chkstk_darwin(AssociatedTypeWitness);
              v24 = v30 - v23;
              dispatch thunk of HashFunction.finalize()();
              swift_getAssociatedConformanceWitness();
              sub_1005FAB2C();
              (*(v22 + 8))(v24, AssociatedTypeWitness);
              v25 = v33;
              v26 = String.lowercased()();

              if ((v25 & 0x8000000000000000) != 0)
              {
                goto LABEL_47;
              }

              if (v25 >= *(v31 + 16))
              {
                goto LABEL_48;
              }

              v27 = String.lowercased()();
              v28 = v26._countAndFlagsBits == v27._countAndFlagsBits && v26._object == v27._object;
              if (!v28 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
              {
                type metadata accessor for InternalError();
                sub_100274098();
                swift_allocError();
                *v29 = v26;
                v29[1] = v27;
                goto LABEL_41;
              }

              *(v2 + 64) = v25 + 1;
              *(v2 + 72) = 0;
              v12 = *v2;
              v36 = 0;
              memset(v35, 0, sizeof(v35));
              sub_10033C824(v35, v12, v37);
              sub_1000032A8(v35, &qword_100780C70);
              sub_10000710C(v2 + 24);
              sub_1001DFDBC(v37, v2 + 24);
            }
          }

          v6 = v38;
          v13 = v38 >= v14;
          if (v10 > 0)
          {
            v13 = v14 >= v38;
          }

          v9 = v14;
          if (v13)
          {
            return;
          }
        }

        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }
    }
  }
}

void sub_10033CF84()
{
  if (v0[9] >= 1)
  {
    v1 = v0[8];
    v2 = v0[1];
    if (v1 < *(v2 + 16))
    {
      v3 = v0[6];
      v15 = v0;
      sub_100006D8C(v0 + 3, v3);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v19 = &v14;
      v5 = *(AssociatedTypeWitness - 8);
      __chkstk_darwin(AssociatedTypeWitness);
      v7 = &v14 - v6;
      dispatch thunk of HashFunction.finalize()();
      swift_getAssociatedConformanceWitness();
      sub_1005FAB2C();
      (*(v5 + 8))(v7, AssociatedTypeWitness);
      v8 = String.lowercased()();

      if ((v1 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v1 < *(v2 + 16))
      {
        v9 = String.lowercased()();
        v10 = v8._countAndFlagsBits == v9._countAndFlagsBits && v8._object == v9._object;
        if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          v11 = v15;
          v15[8] = v1 + 1;
          v11[9] = 0;
          v12 = *v11;
          v17 = 0;
          memset(v16, 0, sizeof(v16));
          sub_10033C824(v16, v12, v18);
          sub_1000032A8(v16, &qword_100780C70);
          sub_10000710C((v11 + 3));
          sub_1001DFDBC(v18, (v11 + 3));
          return;
        }

        type metadata accessor for InternalError();
        sub_100274098();
        swift_allocError();
        *v13 = v8;
        v13[1] = v9;
        goto LABEL_12;
      }

      __break(1u);
      return;
    }

    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
LABEL_12:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_10033D260@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a3;
  v10 = result;
  if (!a3)
  {
    goto LABEL_11;
  }

  v12 = String.count.getter();

  if (v10 > 1u)
  {
    if (v10 == 2)
    {
      result = 32;
      goto LABEL_10;
    }

    result = static SHA512Digest.byteCount.getter();
  }

  else
  {
    if (!v10)
    {
      result = 16;
      goto LABEL_10;
    }

    result = static Insecure.SHA1Digest.byteCount.getter();
  }

  if (result + 0x4000000000000000 < 0)
  {
    goto LABEL_34;
  }

LABEL_10:
  if (v12 != 2 * result)
  {
LABEL_26:

LABEL_31:

    v22 = 0;
    a2 = 0;
    v20 = 0;
    v21 = 0;
    a5 = 0;
    v8 = 1;
    goto LABEL_32;
  }

LABEL_11:
  if (!a5)
  {
    v20 = 0;
LABEL_29:
    v21 = a5 == 0;
    v22 = v10;
LABEL_32:
    *a6 = v22;
    a6[1] = a2;
    a6[2] = v8;
    a6[3] = v20;
    a6[4] = v21;
    a6[5] = a5;
    return result;
  }

  v23 = a4;
  v24 = a2;
  v13 = *(a5 + 16);

  v14 = a5 + 40;
  v15 = -v13;
  v16 = -1;
  while (1)
  {
    if (v15 + v16 == -1)
    {

      v20 = v23;
      a2 = v24;
      goto LABEL_29;
    }

    if (++v16 >= *(a5 + 16))
    {
      break;
    }

    v18 = String.count.getter();
    if (v10 > 1u)
    {
      if (v10 != 2)
      {
        v19 = static SHA512Digest.byteCount.getter();
        goto LABEL_24;
      }

      v17 = 32;
    }

    else
    {
      if (v10)
      {
        v19 = static Insecure.SHA1Digest.byteCount.getter();
LABEL_24:
        v17 = v19;

        if (v17 + 0x4000000000000000 < 0)
        {
          __break(1u);
          goto LABEL_26;
        }

        goto LABEL_15;
      }

      v17 = 16;
    }

LABEL_15:
    v14 += 16;
    if (v18 != 2 * v17)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

unint64_t sub_10033D458()
{
  result = qword_100780C78;
  if (!qword_100780C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780C78);
  }

  return result;
}

unint64_t sub_10033D4AC()
{
  result = qword_100780C88;
  if (!qword_100780C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780C88);
  }

  return result;
}

uint64_t sub_10033D500(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3499117 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 828467315 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x363532616873 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x323135616873 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

void *sub_10033D65C(void *a1)
{
  v39 = sub_1001F0C48(&qword_100780D00);
  v34 = *(v39 - 8);
  __chkstk_darwin(v39);
  v42 = &v31 - v2;
  v40 = sub_1001F0C48(&qword_100780D08);
  v36 = *(v40 - 8);
  __chkstk_darwin(v40);
  v41 = &v31 - v3;
  v4 = sub_1001F0C48(&qword_100780D10);
  v37 = *(v4 - 8);
  v38 = v4;
  __chkstk_darwin(v4);
  v6 = &v31 - v5;
  v7 = sub_1001F0C48(&qword_100780D18);
  v35 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v31 - v8;
  v10 = sub_1001F0C48(&qword_100780D20);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v31 - v12;
  v14 = a1[3];
  v44 = a1;
  sub_100006D8C(a1, v14);
  sub_10033E558();
  v15 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    goto LABEL_11;
  }

  v16 = v9;
  v32 = v7;
  v33 = 0;
  v17 = v41;
  v18 = v42;
  v43 = v11;
  v19 = v13;
  v20 = KeyedDecodingContainer.allKeys.getter();
  v21 = (2 * *(v20 + 16)) | 1;
  v45 = v20;
  v46 = v20 + 32;
  v47 = 0;
  v48 = v21;
  v22 = sub_1005CD748();
  if (v22 != 4 && v47 == v48 >> 1)
  {
    v11 = v22;
    if (v22 <= 1u)
    {
      if (v22)
      {
        v49 = 1;
        sub_10033E654();
        v29 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v29)
        {
          (*(v37 + 8))(v6, v38);
          goto LABEL_18;
        }
      }

      else
      {
        v49 = 0;
        sub_10033E6A8();
        v23 = v33;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v23)
        {
          (*(v35 + 8))(v16, v32);
LABEL_18:
          (v43[1])(v13, v10);
LABEL_23:
          swift_unknownObjectRelease();
          sub_10000710C(v44);
          return v11;
        }
      }

      goto LABEL_9;
    }

    v27 = v43;
    if (v22 == 2)
    {
      v49 = 2;
      sub_10033E600();
      v28 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v28)
      {
        (*(v36 + 8))(v17, v40);
LABEL_22:
        (v27[1])(v19, v10);
        goto LABEL_23;
      }
    }

    else
    {
      v49 = 3;
      sub_10033E5AC();
      v30 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v30)
      {
        (*(v34 + 8))(v18, v39);
        goto LABEL_22;
      }
    }

    (v27[1])(v19, v10);
    goto LABEL_10;
  }

  v24 = type metadata accessor for DecodingError();
  swift_allocError();
  v11 = v25;
  sub_1001F0C48(&qword_1007896A0);
  *v11 = &type metadata for BlockDigest.Algorithm;
  KeyedDecodingContainer.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v24 - 8) + 104))(v11, enum case for DecodingError.typeMismatch(_:), v24);
  swift_willThrow();
LABEL_9:
  (v43[1])(v13, v10);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  sub_10000710C(v44);
  return v11;
}

uint64_t sub_10033DC9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7A69536B636F6C62 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6769446B636F6C62 && a2 == 0xEC00000073747365)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_10033DE14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100780C90);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10033E0C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000710C(a1);
  }

  else
  {
    v24 = 0;
    sub_10033E11C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v25;
    v23 = 1;
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = v11;
    v19 = v10;
    v22 = 2;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v14;
    v17 = v13;
    sub_1001F0C48(&unk_10077FB40);
    v21 = 3;
    sub_100006DD0(&qword_100780CA8);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v15 = v20;
    result = sub_10000710C(a1);
    *a2 = v9;
    *(a2 + 8) = v19;
    *(a2 + 16) = v12;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18 & 1;
    *(a2 + 40) = v15;
  }

  return result;
}

unint64_t sub_10033E0C8()
{
  result = qword_100780C98;
  if (!qword_100780C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780C98);
  }

  return result;
}

unint64_t sub_10033E11C()
{
  result = qword_100780CA0;
  if (!qword_100780CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CA0);
  }

  return result;
}

unint64_t sub_10033E170()
{
  result = qword_100780CB8;
  if (!qword_100780CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CB8);
  }

  return result;
}

__n128 sub_10033E1C4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10033E1E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10033E228(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_10033E2AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10033E2F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10033E358()
{
  result = qword_100780CC8;
  if (!qword_100780CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CC8);
  }

  return result;
}

unint64_t sub_10033E3B0()
{
  result = qword_100780CD0;
  if (!qword_100780CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CD0);
  }

  return result;
}

unint64_t sub_10033E408()
{
  result = qword_100780CD8;
  if (!qword_100780CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CD8);
  }

  return result;
}

unint64_t sub_10033E460()
{
  result = qword_100780CE0;
  if (!qword_100780CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CE0);
  }

  return result;
}

unint64_t sub_10033E4B4()
{
  result = qword_100780CF0;
  if (!qword_100780CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780CF0);
  }

  return result;
}

uint64_t sub_10033E508(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
  }

  return result;
}

unint64_t sub_10033E558()
{
  result = qword_100780D28;
  if (!qword_100780D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D28);
  }

  return result;
}

unint64_t sub_10033E5AC()
{
  result = qword_100780D30;
  if (!qword_100780D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D30);
  }

  return result;
}

unint64_t sub_10033E600()
{
  result = qword_100780D38;
  if (!qword_100780D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D38);
  }

  return result;
}

unint64_t sub_10033E654()
{
  result = qword_100780D40;
  if (!qword_100780D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D40);
  }

  return result;
}

unint64_t sub_10033E6A8()
{
  result = qword_100780D48;
  if (!qword_100780D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D48);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NewLicenseRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for NewLicenseRequest.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10033E8A0()
{
  result = qword_100780D78;
  if (!qword_100780D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D78);
  }

  return result;
}

unint64_t sub_10033E8F8()
{
  result = qword_100780D80;
  if (!qword_100780D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D80);
  }

  return result;
}

unint64_t sub_10033E950()
{
  result = qword_100780D88;
  if (!qword_100780D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D88);
  }

  return result;
}

unint64_t sub_10033E9A8()
{
  result = qword_100780D90;
  if (!qword_100780D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D90);
  }

  return result;
}

unint64_t sub_10033EA00()
{
  result = qword_100780D98;
  if (!qword_100780D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780D98);
  }

  return result;
}

unint64_t sub_10033EA58()
{
  result = qword_100780DA0;
  if (!qword_100780DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DA0);
  }

  return result;
}

unint64_t sub_10033EAB0()
{
  result = qword_100780DA8;
  if (!qword_100780DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DA8);
  }

  return result;
}

unint64_t sub_10033EB08()
{
  result = qword_100780DB0;
  if (!qword_100780DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DB0);
  }

  return result;
}

unint64_t sub_10033EB60()
{
  result = qword_100780DB8;
  if (!qword_100780DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DB8);
  }

  return result;
}

unint64_t sub_10033EBB8()
{
  result = qword_100780DC0;
  if (!qword_100780DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DC0);
  }

  return result;
}

unint64_t sub_10033EC10()
{
  result = qword_100780DC8;
  if (!qword_100780DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DC8);
  }

  return result;
}

unint64_t sub_10033EC68()
{
  result = qword_100780DD0;
  if (!qword_100780DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DD0);
  }

  return result;
}

unint64_t sub_10033ECC0()
{
  result = qword_100780DD8;
  if (!qword_100780DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DD8);
  }

  return result;
}

unint64_t sub_10033ED18()
{
  result = qword_100780DE0;
  if (!qword_100780DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100780DE0);
  }

  return result;
}

uint64_t sub_10033ED6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x687469726F676C61 && a2 == 0xE90000000000006DLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7453726568736168 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006C6210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001006C6230 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10033EF00(uint64_t a1)
{
  v2[65] = v1;
  v2[64] = a1;
  sub_1001F0C48(&qword_10077EC90);
  v2[66] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_100780DE8);
  v2[67] = v3;
  v2[68] = *(v3 - 8);
  v2[69] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v2[70] = v4;
  v2[71] = *(v4 - 8);
  v2[72] = swift_task_alloc();
  v2[73] = swift_task_alloc();
  v2[74] = swift_task_alloc();

  return _swift_task_switch(sub_10033F07C, 0, 0);
}

uint64_t sub_10033F07C()
{
  v35 = v0;
  v1 = *(v0 + 520);
  if (*(v1 + 16))
  {
    v32 = 0;
    v2 = 0;
  }

  else
  {
    *(v0 + 504) = *(v1 + 8);
    v32 = dispatch thunk of CustomStringConvertible.description.getter();
    v2 = v3;
    v1 = *(v0 + 520);
  }

  static Logger.install.getter();
  sub_10033FCEC(v1, v0 + 80);
  sub_10033FCEC(v1, v0 + 152);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 592);
  v8 = *(v0 + 568);
  v9 = *(v0 + 560);
  if (v6)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v34 = v12;
    *v10 = 138412802;
    v30 = v7;
    v13 = *(v0 + 104);
    sub_1002232F0(v0 + 80);
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2050;
    v14 = *(v0 + 152);
    sub_1002232F0(v0 + 152);
    *(v10 + 14) = v14;
    *(v10 + 22) = 2082;
    if (v2)
    {
      v15 = v32;
    }

    else
    {
      v15 = 16718;
    }

    v28 = v9;
    if (v2)
    {
      v16 = v2;
    }

    else
    {
      v16 = 0xE200000000000000;
    }

    v17 = sub_1002346CC(v15, v16, &v34);

    *(v10 + 24) = v17;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Fetching metadata for: %{public}llu : %{public}s", v10, 0x20u);
    sub_1000032A8(v11, &qword_10077F920);

    sub_10000710C(v12);

    v18 = *(v8 + 8);
    v18(v30, v28);
  }

  else
  {
    sub_1002232F0(v0 + 152);

    sub_1002232F0(v0 + 80);
    v18 = *(v8 + 8);
    v18(v7, v9);
  }

  *(v0 + 600) = v18;
  v19 = *(v0 + 520);
  sub_10020A980((v19 + 4), v0 + 432);
  sub_1001F0C48(&qword_10077E970);
  if (swift_dynamicCast())
  {
    v20 = *(v0 + 480);
  }

  else
  {
    v20 = 0;
  }

  *(v0 + 496) = *v19;
  dispatch thunk of CustomStringConvertible.description.getter();
  v31 = String._bridgeToObjectiveC()();
  *(v0 + 608) = v31;

  if (v2)
  {
    v21 = String._bridgeToObjectiveC()();
  }

  else
  {
    v21 = 0;
  }

  *(v0 + 616) = v21;
  v33 = v21;
  if (v20)
  {
    v22 = String._bridgeToObjectiveC()();
  }

  else
  {
    v22 = 0;
  }

  *(v0 + 624) = v22;
  v23 = *(v0 + 552);
  v24 = *(v0 + 544);
  v25 = *(v0 + 536);
  v29 = objc_opt_self();
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 488;
  *(v0 + 24) = sub_10033F558;
  swift_continuation_init();
  *(v0 + 424) = v25;
  v26 = sub_10020A748((v0 + 400));
  sub_1001F0C48(&qword_100780DF0);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v24 + 32))(v26, v23, v25);
  *(v0 + 368) = _NSConcreteStackBlock;
  *(v0 + 376) = 1107296256;
  *(v0 + 384) = sub_10033FC24;
  *(v0 + 392) = &unk_1007600E8;
  [v29 fetchMediaAPIMetadataForItemID:v31 versionID:v33 distributorID:v22 completion:v0 + 368];
  (*(v24 + 8))(v26, v25);

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_10033F558()
{
  v1 = *(*v0 + 48);
  *(*v0 + 632) = v1;
  if (v1)
  {
    v2 = sub_10033FB60;
  }

  else
  {
    v2 = sub_10033F668;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10033F668()
{
  v41 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 608);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 488);

  v6 = *(v4 + 24);

  sub_10056BEE8(v5, v6, v3);
  v7 = type metadata accessor for MediaAPIMetadata();
  v8 = (*(*(v7 - 8) + 48))(v3, 1, v7);
  v9 = *(v0 + 528);
  v10 = *(v0 + 520);
  if (v8 == 1)
  {
    sub_1000032A8(*(v0 + 528), &qword_10077EC90);
    static Logger.install.getter();
    sub_10033FCEC(v10, v0 + 224);

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 600);
    v15 = *(v0 + 576);
    v16 = *(v0 + 560);
    if (v13)
    {
      v39 = *(v0 + 576);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v38 = v16;
      v19 = swift_slowAlloc();
      v40 = v19;
      *v17 = 138412546;
      v20 = *(v0 + 248);
      sub_1002232F0(v0 + 224);
      *(v17 + 4) = v20;
      *v18 = v20;
      *(v17 + 12) = 2080;
      v21 = Dictionary.description.getter();
      v37 = v14;
      v23 = v22;

      v24 = sub_1002346CC(v21, v23, &v40);

      *(v17 + 14) = v24;
      _os_log_impl(&_mh_execute_header, v11, v12, "[%@] Invalid metadata: %s", v17, 0x16u);
      sub_1000032A8(v18, &qword_10077F920);

      sub_10000710C(v19);

      v37(v39, v38);
    }

    else
    {

      sub_1002232F0(v0 + 224);
      v14(v15, v16);
    }

    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v35 = *(v0 + 8);
  }

  else
  {
    v25 = *(v0 + 512);

    sub_100222E54(v9, v25);
    static Logger.install.getter();
    sub_10033FCEC(v10, v0 + 296);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();
    v28 = os_log_type_enabled(v26, v27);
    v29 = *(v0 + 600);
    v30 = *(v0 + 584);
    v31 = *(v0 + 560);
    if (v28)
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = *(v0 + 320);
      sub_1002232F0(v0 + 296);
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Successfully fetched metadata", v32, 0xCu);
      sub_1000032A8(v33, &qword_10077F920);
    }

    else
    {

      sub_1002232F0(v0 + 296);
    }

    v29(v30, v31);

    v35 = *(v0 + 8);
  }

  return v35();
}

uint64_t sub_10033FB60()
{
  v1 = v0[78];
  v2 = v0[77];
  v3 = v0[76];
  swift_willThrow();

  v4 = v0[1];

  return v4();
}

void sub_10033FC24(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1001F0C48(&qword_100780DE8);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    sub_1001F0C48(&qword_100780DE8);
    CheckedContinuation.resume(returning:)();
  }
}

__n128 sub_10033FD2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10033FD50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10033FD98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppLicenseDeliveryDecryptionSession(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*(a1 + 8))
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for AppLicenseDeliveryDecryptionSession(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
    }
  }

  return result;
}

uint64_t *sub_10033FE88(uint64_t *a1)
{
  v2 = *(v1 + 8);
  if (qword_10077E580 != -1)
  {
    v4 = a1;
    v5 = *(v1 + 8);
    swift_once();
    a1 = v4;
    v2 = v5;
  }

  return sub_1005F54FC(a1, v2, 0);
}

uint64_t sub_10033FF04(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 8);
  v6 = a1;
  v7 = a2;
  sub_10020ABFC(a1, a2);
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  sub_1005F54FC(&v6, v4, 1);
  result = v6;
  if (v3)
  {
    return sub_100007158(v6, v7);
  }

  return result;
}

uint64_t sub_10033FF90()
{
  if (qword_10077E580 != -1)
  {
    swift_once();
  }

  v0 = OZpDoyky();
  return sub_1005F3118(v0);
}

uint64_t sub_100340004@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v102 = a4;
  v105 = a3;
  v104 = a2;
  v103 = a5;
  v6 = sub_1001F0C48(&qword_10077F338);
  __chkstk_darwin(v6 - 8);
  v101 = v85 - v7;
  v8 = sub_1001F0C48(&qword_100780DF8);
  __chkstk_darwin(v8 - 8);
  v100 = v85 - v9;
  v10 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v10 - 8);
  v121 = v85 - v11;
  v12 = sub_1001F0C48(&unk_1007809F0);
  v13 = __chkstk_darwin(v12 - 8);
  v99 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v97 = v85 - v16;
  __chkstk_darwin(v15);
  v98 = v85 - v17;
  v18 = sub_1001F0C48(&qword_100780E00);
  __chkstk_darwin(v18 - 8);
  v120 = v85 - v19;
  v20 = sub_1001F0C48(&qword_100780E08);
  __chkstk_darwin(v20 - 8);
  v119 = v85 - v21;
  v22 = type metadata accessor for TimeZone();
  v23 = *(v22 - 8);
  __chkstk_darwin(v22);
  v94 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Date.ISO8601FormatStyle.TimeZoneSeparator();
  v114 = *(v25 - 8);
  v115 = v25;
  __chkstk_darwin(v25);
  v125 = v85 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Date.ISO8601FormatStyle.TimeSeparator();
  v110 = *(v111 - 8);
  __chkstk_darwin(v111);
  v116 = v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for Date.ISO8601FormatStyle.DateTimeSeparator();
  v108 = *(v109 - 8);
  __chkstk_darwin(v109);
  v113 = v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Date.ISO8601FormatStyle.DateSeparator();
  v106 = *(v107 - 8);
  __chkstk_darwin(v107);
  v30 = v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Date.ISO8601FormatStyle();
  v91 = *(v92 - 8);
  __chkstk_darwin(v92);
  v90 = v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v32 - 8);
  v129 = v85 - v33;
  v34 = sub_1001F0C48(&qword_10077F360);
  __chkstk_darwin(v34 - 8);
  v123 = v85 - v35;
  v36 = sub_1001F0C48(&qword_100780E10);
  __chkstk_darwin(v36 - 8);
  v122 = v85 - v37;
  v38 = sub_1001F0C48(&qword_10077FE28);
  __chkstk_darwin(v38 - 8);
  v40 = v85 - v39;
  v41 = type metadata accessor for Platform();
  v42 = *(v41 - 8);
  v43 = __chkstk_darwin(v41);
  v126 = v85 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v43);
  v45 = *(v42 + 16);
  v127 = v85 - v47;
  v128 = v46;
  v45();
  v124 = type metadata accessor for AppStoreItem(0);
  v48 = a1;
  v49 = (a1 + v124[6]);
  v86 = type metadata accessor for AppStoreMetadata(0);
  v50 = *(v49 + *(v86 + 144));
  v95 = v42;
  v117 = v23;
  v118 = v22;
  v112 = v30;
  if (v50 <= 1)
  {
    if (v50)
    {
      static Platform.macOS.getter();
    }

    else
    {
      static Platform.iOS.getter();
    }

    goto LABEL_7;
  }

  if (v50 == 2)
  {
    static Platform.visionOS.getter();
LABEL_7:
    v51 = v128;
    (*(v42 + 56))(v40, 0, 1, v128);
    v52 = v127;
    (*(v42 + 8))(v127, v51);
    (*(v42 + 32))(v52, v40, v51);
    goto LABEL_9;
  }

  v51 = v128;
  (*(v42 + 56))(v40, 1, 1, v128);
  sub_1000032A8(v40, &qword_10077FE28);
  v52 = v127;
LABEL_9:
  v53 = v49[3];
  v88 = v49[2];
  v87 = v49[26];
  v89 = v49[12];
  result = (v45)(v126, v52, v51);
  v55 = v124[7];
  v93 = v48;
  v56 = v125;
  if (!*(*(v48 + v55) + 16))
  {
    __break(1u);
    goto LABEL_16;
  }

  type metadata accessor for AppStorePackage(0);
  v57 = objc_opt_self();
  v85[5] = v53;

  v58 = [v57 bytes];
  sub_100223508();
  v59 = v122;
  Measurement.init(value:unit:)();
  v60 = sub_1001F0C48(&qword_100780E18);
  (*(*(v60 - 8) + 56))(v59, 0, 1, v60);
  v61 = type metadata accessor for Locale.Language();
  (*(*(v61 - 8) + 56))(v123, 1, 1, v61);
  v62 = v49[28];
  v85[4] = v49[27];
  v63 = v49[1];
  v85[3] = *v49;
  sub_1001F0C48(&qword_100784460);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_10069E680;
  v65 = v49[15];
  *(v64 + 32) = v49[14];
  *(v64 + 40) = v65;
  v85[2] = v64;
  v66 = v49[7];
  v85[1] = v49[6];
  (*(v106 + 104))(v112, enum case for Date.ISO8601FormatStyle.DateSeparator.dash(_:), v107);
  (*(v108 + 104))(v113, enum case for Date.ISO8601FormatStyle.DateTimeSeparator.standard(_:), v109);
  (*(v110 + 104))(v116, enum case for Date.ISO8601FormatStyle.TimeSeparator.colon(_:), v111);
  (*(v114 + 104))(v56, enum case for Date.ISO8601FormatStyle.TimeZoneSeparator.omitted(_:), v115);
  v115 = v62;

  v114 = v63;

  v111 = v66;

  v67 = v119;
  TimeZone.init(secondsFromGMT:)();
  v69 = v117;
  v68 = v118;
  result = (*(v117 + 48))(v67, 1, v118);
  if (result == 1)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  (*(v69 + 32))(v94, v67, v68);
  v70 = v90;
  Date.ISO8601FormatStyle.init(dateSeparator:dateTimeSeparator:timeSeparator:timeZoneSeparator:includingFractionalSeconds:timeZone:)();
  v71 = v96;
  Date.ISO8601FormatStyle.parse(_:)();
  v72 = v93;
  if (v71)
  {

    v125 = 0;
    v73 = 1;
  }

  else
  {
    v73 = 0;
    v125 = 0;
  }

  (*(v91 + 8))(v70, v92);
  v74 = type metadata accessor for Date();
  (*(*(v74 - 8) + 56))(v129, v73, 1, v74);
  v75 = type metadata accessor for ManagedApp.Artwork();
  (*(*(v75 - 8) + 56))(v120, 1, 1, v75);
  v76 = v124;
  v77 = v124[5];
  v78 = type metadata accessor for URL();
  v79 = *(v78 - 8);
  v80 = v98;
  (*(v79 + 16))(v98, v72 + v77, v78);
  v81 = *(v79 + 56);
  v81(v80, 0, 1, v78);
  v82 = type metadata accessor for FilePath();
  (*(*(v82 - 8) + 56))(v121, 1, 1, v82);
  sub_100397D84(&v130);
  v83 = v131;
  v84 = v132;
  sub_100006D8C(&v130, v131);
  v119 = (*(v84 + 16))(v83, v84);
  v81(v97, 1, 1, v78);
  v81(v99, 1, 1, v78);
  sub_100005934(v72 + v76[10], v100, &qword_100780DF8);
  sub_100005934(v102, v101, &qword_10077F338);

  ManagedApp.init(declarationIdentifier:bundleID:itemID:externalVersionID:platform:fileSize:metadataLanguage:name:subtitle:seller:genres:description:languages:requirements:version:releaseDate:releaseNotes:icon:iconURL:iconPath:screenshots:contentRating:developerWebsite:privacyPolicy:hasLicenseAgreement:copyright:buyParams:scope:binaryCompatibility:license:)();
  (*(v95 + 8))(v127, v128);
  return sub_10000710C(&v130);
}

uint64_t sub_100341050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[57] = a6;
  v7[58] = a7;
  v7[55] = a4;
  v7[56] = a5;
  v7[53] = a2;
  v7[54] = a3;
  v7[52] = a1;
  v8 = type metadata accessor for Logger();
  v7[59] = v8;
  v7[60] = *(v8 - 8);
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F338);
  v7[63] = swift_task_alloc();
  sub_1001F0C48(&qword_100780DF8);
  v7[64] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v7[65] = swift_task_alloc();
  sub_1001F0C48(&qword_100780E00);
  v7[66] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EF30);
  v7[67] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F360);
  v7[68] = swift_task_alloc();
  sub_1001F0C48(&qword_100780E10);
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  sub_1001F0C48(&qword_10077FE28);
  v7[71] = swift_task_alloc();
  v9 = type metadata accessor for Platform();
  v7[72] = v9;
  v7[73] = *(v9 - 8);
  v7[74] = swift_task_alloc();
  v7[75] = swift_task_alloc();
  v10 = type metadata accessor for URL();
  v7[76] = v10;
  v7[77] = *(v10 - 8);
  v7[78] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v7[79] = swift_task_alloc();
  v7[80] = swift_task_alloc();
  v7[81] = swift_task_alloc();
  v7[82] = swift_task_alloc();
  v7[83] = swift_task_alloc();

  return _swift_task_switch(sub_100341420, 0, 0);
}

uint64_t sub_100341420()
{
  sub_100355DAC(*(v0 + 456), 3, v0 + 16);
  if (sub_100350308(v0 + 16) == 1)
  {
    v1 = *(v0 + 464);
    static Logger.vpp.getter();
    v2 = v1;
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = *(v0 + 464);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138412290;
      *(v6 + 4) = v5;
      *v7 = v5;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Enterprise manifest invalid: No compatible asset found", v6, 0xCu);
      sub_1000032A8(v7, &qword_10077F920);
    }

    v10 = *(v0 + 480);
    v9 = *(v0 + 488);
    v11 = *(v0 + 472);

    (*(v10 + 8))(v9, v11);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_9:

    v36 = *(v0 + 8);

    return v36();
  }

  v12 = *(v0 + 664);
  v13 = *(v0 + 656);
  v14 = *(v0 + 616);
  v15 = *(v0 + 608);
  v16 = *(v0 + 456);
  v17 = *(v0 + 96);
  *(v0 + 232) = *(v0 + 80);
  *(v0 + 248) = v17;
  v18 = *(v0 + 64);
  *(v0 + 200) = *(v0 + 48);
  *(v0 + 216) = v18;
  *(v0 + 312) = *(v0 + 160);
  v19 = *(v0 + 144);
  *(v0 + 280) = *(v0 + 128);
  *(v0 + 296) = v19;
  *(v0 + 264) = *(v0 + 112);
  v20 = *(v0 + 32);
  *(v0 + 168) = *(v0 + 16);
  *(v0 + 184) = v20;
  sub_100271104(*(v0 + 168), *(v0 + 176));
  v21 = *(v0 + 272);
  *(v0 + 352) = *(v0 + 256);
  *(v0 + 368) = v21;
  v22 = *(v0 + 304);
  *(v0 + 384) = *(v0 + 288);
  *(v0 + 400) = v22;
  v23 = *(v0 + 240);
  *(v0 + 320) = *(v0 + 224);
  *(v0 + 336) = v23;
  sub_10035712C(v0 + 320, v16, v12);
  URL.init(string:)();
  sub_100350510(v0 + 224);
  if ((*(v14 + 48))(v13, 1, v15) == 1)
  {
    v24 = *(v0 + 464);
    sub_1000032A8(*(v0 + 656), &unk_1007809F0);
    static Logger.vpp.getter();
    v25 = v24;
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = *(v0 + 464);
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v28;
      *v30 = v28;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Enterprise manifest invalid: No artwork found", v29, 0xCu);
      sub_1000032A8(v30, &qword_10077F920);
    }

    v32 = *(v0 + 664);
    v33 = *(v0 + 496);
    v34 = *(v0 + 472);
    v35 = *(v0 + 480);

    (*(v35 + 8))(v33, v34);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_1000032A8(v32, &unk_1007809F0);
    goto LABEL_9;
  }

  v38 = *(v0 + 584);
  v39 = *(v0 + 576);
  v40 = *(v0 + 568);
  v41 = *(v0 + 424);
  (*(*(v0 + 616) + 32))(*(v0 + 624), *(v0 + 656), *(v0 + 608));
  v42 = type metadata accessor for EnterpriseApp();
  sub_100005934(v41 + *(v42 + 20), v40, &qword_10077FE28);
  v43 = *(v38 + 48);
  if (v43(v40, 1, v39) == 1)
  {
    v44 = *(v0 + 576);
    v45 = *(v0 + 568);
    static Platform.iOS.getter();
    if (v43(v45, 1, v44) != 1)
    {
      sub_1000032A8(*(v0 + 568), &qword_10077FE28);
    }
  }

  else
  {
    (*(*(v0 + 584) + 32))(*(v0 + 600), *(v0 + 568), *(v0 + 576));
  }

  v46 = swift_task_alloc();
  *(v0 + 672) = v46;
  *v46 = v0;
  v46[1] = sub_100341A8C;
  v47 = *(v0 + 624);
  v48 = *(v0 + 464);

  return sub_100521554(v47, v48);
}

uint64_t sub_100341A8C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    v5 = sub_100341BB8;
  }

  else
  {
    *(v4 + 680) = a1;
    v5 = sub_100342168;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100341BB8()
{
  v27 = v0[83];
  v19 = v0[81];
  v20 = v0[80];
  v21 = v0[78];
  v26 = v0[77];
  v22 = v0[76];
  v23 = v0[79];
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v4 = v0[72];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  v8 = v0[67];
  v28 = v0[65];
  v29 = v0[66];
  v24 = v0[64];
  v25 = v0[63];
  v9 = sub_1001F0C48(&qword_100780E18);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  (*(v3 + 16))(v2, v1, v4);
  sub_100005934(v5, v6, &qword_100780E10);
  v10 = type metadata accessor for Locale.Language();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = type metadata accessor for ManagedApp.Artwork();
  (*(*(v12 - 8) + 56))(v29, 1, 1, v12);
  sub_100005934(v27, v19, &unk_1007809F0);
  v13 = type metadata accessor for FilePath();
  (*(*(v13 - 8) + 56))(v28, 1, 1, v13);
  v14 = *(v26 + 56);
  v14(v20, 1, 1, v22);
  v14(v23, 1, 1, v22);
  v15 = type metadata accessor for ManagedApp.BinaryCompatibility();
  (*(*(v15 - 8) + 56))(v24, 1, 1, v15);
  v16 = type metadata accessor for ManagedApp.License();
  (*(*(v16 - 8) + 56))(v25, 1, 1, v16);

  ManagedApp.init(declarationIdentifier:bundleID:itemID:externalVersionID:platform:fileSize:metadataLanguage:name:subtitle:seller:genres:description:languages:requirements:version:releaseDate:releaseNotes:icon:iconURL:iconPath:screenshots:contentRating:developerWebsite:privacyPolicy:hasLicenseAgreement:copyright:buyParams:scope:binaryCompatibility:license:)();
  sub_1000032A8(v5, &qword_100780E10);
  (*(v3 + 8))(v1, v4);
  (*(v26 + 8))(v21, v22);
  sub_1000032A8(v27, &unk_1007809F0);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100342168()
{
  v1 = v0[85];
  v2 = [v1 expectedContentLength];

  if (v2 < 1)
  {
    v4 = 1;
  }

  else
  {
    v3 = [objc_opt_self() bytes];
    sub_100223508();
    Measurement.init(value:unit:)();
    v4 = 0;
  }

  v31 = v0[83];
  v22 = v0[81];
  v26 = v0[80];
  v27 = v0[79];
  v23 = v0[78];
  v30 = v0[77];
  v25 = v0[76];
  v5 = v0[75];
  v6 = v0[74];
  v7 = v0[73];
  v8 = v0[72];
  v9 = v0[70];
  v10 = v0[69];
  v11 = v0[68];
  v32 = v0[65];
  v33 = v0[66];
  v28 = v0[64];
  v29 = v0[63];
  v24 = v0[67];
  v12 = sub_1001F0C48(&qword_100780E18);
  (*(*(v12 - 8) + 56))(v9, v4, 1, v12);
  (*(v7 + 16))(v6, v5, v8);
  sub_100005934(v9, v10, &qword_100780E10);
  v13 = type metadata accessor for Locale.Language();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v24, 1, 1, v14);
  v15 = type metadata accessor for ManagedApp.Artwork();
  (*(*(v15 - 8) + 56))(v33, 1, 1, v15);
  sub_100005934(v31, v22, &unk_1007809F0);
  v16 = type metadata accessor for FilePath();
  (*(*(v16 - 8) + 56))(v32, 1, 1, v16);
  v17 = *(v30 + 56);
  v17(v26, 1, 1, v25);
  v17(v27, 1, 1, v25);
  v18 = type metadata accessor for ManagedApp.BinaryCompatibility();
  (*(*(v18 - 8) + 56))(v28, 1, 1, v18);
  v19 = type metadata accessor for ManagedApp.License();
  (*(*(v19 - 8) + 56))(v29, 1, 1, v19);

  ManagedApp.init(declarationIdentifier:bundleID:itemID:externalVersionID:platform:fileSize:metadataLanguage:name:subtitle:seller:genres:description:languages:requirements:version:releaseDate:releaseNotes:icon:iconURL:iconPath:screenshots:contentRating:developerWebsite:privacyPolicy:hasLicenseAgreement:copyright:buyParams:scope:binaryCompatibility:license:)();
  sub_1000032A8(v9, &qword_100780E10);
  (*(v7 + 8))(v5, v8);
  (*(v30 + 8))(v23, v25);
  sub_1000032A8(v31, &unk_1007809F0);

  v20 = v0[1];

  return v20();
}

uint64_t sub_10034278C(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 200) = a3;
  *(v4 + 208) = a4;
  *(v4 + 192) = a2;
  *(v4 + 544) = a1;
  sub_1001F0C48(&unk_100780380);
  *(v4 + 216) = swift_task_alloc();
  v5 = type metadata accessor for DDMDeclaration(0);
  *(v4 + 224) = v5;
  *(v4 + 232) = *(v5 - 8);
  *(v4 + 240) = swift_task_alloc();
  v6 = type metadata accessor for ManagedApp();
  *(v4 + 248) = v6;
  *(v4 + 256) = *(v6 - 8);
  *(v4 + 264) = swift_task_alloc();
  *(v4 + 272) = swift_task_alloc();
  sub_1001F0C48(&qword_10077F148);
  *(v4 + 280) = swift_task_alloc();
  *(v4 + 288) = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_100780E20);
  *(v4 + 296) = v7;
  *(v4 + 304) = *(v7 - 8);
  *(v4 + 312) = swift_task_alloc();
  sub_1001F0C48(&qword_100780E28);
  *(v4 + 320) = swift_task_alloc();
  *(v4 + 328) = swift_task_alloc();
  v8 = sub_1001F0C48(&qword_100780E30);
  *(v4 + 336) = v8;
  *(v4 + 344) = *(v8 - 8);
  *(v4 + 352) = swift_task_alloc();
  *(v4 + 360) = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_100780E38);
  *(v4 + 368) = v9;
  *(v4 + 376) = *(v9 - 8);
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_100342ACC, 0, 0);
}

uint64_t sub_100342ACC()
{
  v1 = *(*sub_100006D8C(*(v0 + 208), *(*(v0 + 208) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 400) = v1;

  return _swift_task_switch(sub_100342B5C, v1, 0);
}

uint64_t sub_100342B5C()
{
  v1 = *(*(v0 + 400) + 112);
  v2 = swift_task_alloc();
  *(v0 + 408) = v2;
  *v2 = v0;
  v2[1] = sub_100342C20;

  return sub_1003B05B0(sub_100236BF8, 0, v1);
}

uint64_t sub_100342C20(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 416) = a1;
  *(v3 + 424) = v1;

  if (v1)
  {
    v4 = sub_100342D34;
  }

  else
  {
    v4 = sub_100342E48;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100342D34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100342E48()
{
  v1 = v0[52];
  v0[17] = _swiftEmptyArrayStorage;
  v2 = *(v1 + 16);
  v0[15] = 0;
  v0[54] = v2;
  v0[16] = v2;
  RangeSet.init(_:)();
  result = RangeSet.init()();
  v0[55] = _swiftEmptyArrayStorage;
  v4 = v0[54];
  if (v4)
  {
    v5 = v0[52];
    if (!*(v5 + 16))
    {
      __break(1u);
      return result;
    }

    v6 = v0[39];
    v7 = v0[40];
    v8 = *(v0[29] + 80);
    v9 = *(v0[37] + 48);
    *v6 = 0;
    sub_1003524F8(v5 + ((v8 + 32) & ~v8), v6 + v9, type metadata accessor for DDMDeclaration);
    sub_10020A668(v6, v7, &qword_100780E20);
    v10 = 0;
    v4 = 1;
  }

  else
  {
    v10 = 1;
  }

  v0[56] = v4;
  v11 = v0[40];
  v12 = v0[41];
  v13 = v0[37];
  v14 = v0[38];
  (*(v14 + 56))(v11, v10, 1, v13);
  sub_10020A668(v11, v12, &qword_100780E28);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    v15 = v0[52];
    v36 = v0[48];
    v16 = v0[47];
    v39 = v0[46];
    v17 = v0[44];
    v18 = v0[45];
    v19 = v0[43];
    v37 = v0[42];
    v20 = swift_allocBox();
    v38 = v21;
    v0[60] = v20;
    v0[61] = v21;
    v0[18] = v15;
    sub_1001F0C48(&qword_100780E40);
    sub_100213FA0(&qword_100780E48, &qword_100780E40);
    Collection.subscript.getter();
    v0[19] = v15;
    Collection.subscript.getter();
    v22 = *(v19 + 8);
    v22(v17, v37);
    v22(v18, v37);

    (*(v16 + 32))(v38, v36, v39);
    v23 = swift_task_alloc();
    v0[62] = v23;
    *v23 = v0;
    v23[1] = sub_10034399C;
    v24 = v0[49];
    v25 = v0[26];
    v26 = v0[24];

    return sub_1003443C8(v24, v26, v25);
  }

  else
  {
    v27 = v0[41];
    v28 = v0[37];
    v29 = v0[28];
    v0[57] = *v27;
    v30 = v27 + *(v28 + 48);
    v31 = (v30 + *(v29 + 52));
    v32 = *v31;
    v33 = v31[1];
    v0[58] = v33;

    sub_100352800(v30, type metadata accessor for DDMDeclaration);
    v34 = swift_task_alloc();
    v0[59] = v34;
    *v34 = v0;
    v34[1] = sub_100343234;
    v35 = v0[36];

    return sub_1002375D4(v35, v32, v33, 0, 1);
  }
}

uint64_t sub_100343234(char a1)
{
  *(*v1 + 545) = a1;

  return _swift_task_switch(sub_100343354, 0, 0);
}

uint64_t sub_100343354()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  sub_100005934(*(v0 + 288), v1, &qword_10077F148);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000032A8(*(v0 + 280), &qword_10077F148);
    v4 = *(v0 + 440);
  }

  else
  {
    v5 = *(v0 + 272);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = *(v0 + 248);
    v58 = *(v7 + 32);
    v58(v5, *(v0 + 280), v8);
    (*(v7 + 16))(v6, v5, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v4 = *(v0 + 440);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1003630A4(0, v4[2] + 1, 1, *(v0 + 440));
    }

    v11 = v4[2];
    v10 = v4[3];
    if (v11 >= v10 >> 1)
    {
      v4 = sub_1003630A4(v10 > 1, v11 + 1, 1, v4);
    }

    v12 = *(v0 + 456);
    v13 = *(v0 + 416);
    v14 = *(v0 + 264);
    v56 = *(v0 + 272);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v4[2] = v11 + 1;
    v58(v4 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v11, v14, v15);
    *(v0 + 136) = v4;
    *(v0 + 176) = v12;
    *(v0 + 184) = v13;
    sub_1001F0C48(&qword_100780E40);
    sub_100213FA0(&qword_100780E48, &qword_100780E40);
    RangeSet.remove<A>(_:within:)();
    (*(v16 + 8))(v56, v15);
  }

  if (*(v0 + 545) == 1)
  {
    v17 = *(v0 + 416);
    v18 = *(v0 + 288);
    *(v0 + 160) = *(v0 + 456);
    *(v0 + 168) = v17;
    sub_1001F0C48(&qword_100780E40);
    sub_100213FA0(&qword_100780E48, &qword_100780E40);
    RangeSet.insert<A>(_:within:)();
    v19 = v18;
  }

  else
  {
    v19 = *(v0 + 288);
  }

  result = sub_1000032A8(v19, &qword_10077F148);
  v21 = *(v0 + 448);
  *(v0 + 440) = v4;
  if (v21 == *(v0 + 432))
  {
    v22 = 1;
    goto LABEL_16;
  }

  if ((v21 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  v23 = *(v0 + 416);
  if (v21 >= *(v23 + 16))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v24 = *(v0 + 312);
  v25 = *(v0 + 320);
  v26 = v21 + 1;
  v27 = v23 + ((*(*(v0 + 232) + 80) + 32) & ~*(*(v0 + 232) + 80)) + *(*(v0 + 232) + 72) * v21;
  v28 = *(*(v0 + 296) + 48);
  *v24 = v21;
  sub_1003524F8(v27, v24 + v28, type metadata accessor for DDMDeclaration);
  sub_10020A668(v24, v25, &qword_100780E20);
  v22 = 0;
  v21 = v26;
LABEL_16:
  *(v0 + 448) = v21;
  v29 = *(v0 + 320);
  v30 = *(v0 + 328);
  v31 = *(v0 + 296);
  v32 = *(v0 + 304);
  (*(v32 + 56))(v29, v22, 1, v31);
  sub_10020A668(v29, v30, &qword_100780E28);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    v33 = *(v0 + 416);
    v54 = *(v0 + 384);
    v34 = *(v0 + 376);
    v59 = *(v0 + 368);
    v35 = *(v0 + 352);
    v36 = *(v0 + 360);
    v37 = *(v0 + 344);
    v55 = *(v0 + 336);
    v38 = swift_allocBox();
    v57 = v39;
    *(v0 + 480) = v38;
    *(v0 + 488) = v39;
    *(v0 + 144) = v33;
    sub_1001F0C48(&qword_100780E40);
    sub_100213FA0(&qword_100780E48, &qword_100780E40);
    Collection.subscript.getter();
    *(v0 + 152) = v33;
    Collection.subscript.getter();
    v40 = *(v37 + 8);
    v40(v35, v55);
    v40(v36, v55);

    (*(v34 + 32))(v57, v54, v59);
    v41 = swift_task_alloc();
    *(v0 + 496) = v41;
    *v41 = v0;
    v41[1] = sub_10034399C;
    v42 = *(v0 + 392);
    v43 = *(v0 + 208);
    v44 = *(v0 + 192);

    return sub_1003443C8(v42, v44, v43);
  }

  else
  {
    v45 = *(v0 + 328);
    v46 = *(v0 + 296);
    v47 = *(v0 + 224);
    *(v0 + 456) = *v45;
    v48 = v45 + *(v46 + 48);
    v49 = (v48 + *(v47 + 52));
    v50 = *v49;
    v51 = v49[1];
    *(v0 + 464) = v51;

    sub_100352800(v48, type metadata accessor for DDMDeclaration);
    v52 = swift_task_alloc();
    *(v0 + 472) = v52;
    *v52 = v0;
    v52[1] = sub_100343234;
    v53 = *(v0 + 288);

    return sub_1002375D4(v53, v50, v51, 0, 1);
  }
}

uint64_t sub_10034399C(uint64_t a1)
{
  *(*v1 + 504) = a1;

  return _swift_task_switch(sub_100343A9C, 0, 0);
}

uint64_t sub_100343A9C()
{
  v1 = v0[26];
  sub_1006537E0(v0[63]);
  v2 = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  v0[64] = v2;

  return _swift_task_switch(sub_100343B3C, v2, 0);
}

uint64_t sub_100343B3C()
{
  v1 = *(*(v0 + 512) + 112);
  v2 = swift_task_alloc();
  *(v0 + 520) = v2;
  *v2 = v0;
  v2[1] = sub_100343C00;

  return sub_1003B05B0(sub_100236BF8, 0, v1);
}

uint64_t sub_100343C00(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 528) = a1;
  *(v4 + 536) = v1;

  v5 = *(v3 + 512);
  if (v1)
  {
    v6 = sub_10034421C;
  }

  else
  {
    v6 = sub_100343D38;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100343D38()
{

  return _swift_task_switch(sub_100343DA0, 0, 0);
}

uint64_t sub_100343DA0()
{
  v1 = *(v0 + 528);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 232);
    sub_100526304(0, v2, 0);
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    do
    {
      v6 = *(v0 + 240);
      v7 = *(v0 + 224);
      sub_1003524F8(v4, v6, type metadata accessor for DDMDeclaration);
      v8 = (v6 + *(v7 + 52));
      v10 = *v8;
      v9 = v8[1];

      sub_100352800(v6, type metadata accessor for DDMDeclaration);
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_100526304((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v10;
      v13[5] = v9;
      v4 += v5;
      --v2;
    }

    while (v2);
  }

  v14 = *(v0 + 200);

  v15 = v14;
  v16 = sub_1003519DC((v0 + 136), _swiftEmptyArrayStorage, v15);

  v18 = *(v0 + 136);
  v19 = v18[2];
  if (v16 > v19)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v16 < 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (__OFADD__(v19, v16 - v19))
  {
LABEL_24:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v16 <= v18[3] >> 1)
  {
    v40 = v18;
  }

  else
  {
    if (v19 <= v16)
    {
      v21 = v16;
    }

    else
    {
      v21 = v19;
    }

    v40 = sub_1003630A4(isUniquelyReferenced_nonNull_native, v21, 1, v18);
    *(v0 + 136) = v40;
  }

  v22 = *(v0 + 488);
  v23 = *(v0 + 376);
  v24 = *(v0 + 384);
  v25 = *(v0 + 368);
  sub_1004260C0(v16, v19, 0);

  (*(v23 + 16))(v24, v22, v25);
  v26 = DiscontiguousSlice.isEmpty.getter();
  v27 = *(v23 + 8);
  v27(v24, v25);
  v28 = *(v0 + 480);
  if (v26)
  {
    v27(*(v0 + 392), *(v0 + 368));
  }

  else
  {
    v39 = *(v0 + 392);
    v38 = *(v0 + 368);
    v30 = *(v0 + 208);
    v29 = *(v0 + 216);
    v32 = *(v0 + 192);
    v31 = *(v0 + 200);
    v33 = *(v0 + 544);
    v34 = type metadata accessor for TaskPriority();
    (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
    sub_10020A980(v32, v0 + 80);
    sub_1002708C4(v30, v0 + 16);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    *(v35 + 32) = v28;
    sub_100236238((v0 + 80), v35 + 40);
    sub_100270928((v0 + 16), (v35 + 80));
    *(v35 + 144) = v33;
    *(v35 + 152) = v31;
    v36 = v31;

    sub_1004F8754(0, 0, v29, &unk_1006A2F98, v35);

    sub_1000032A8(v29, &unk_100780380);
    v27(v39, v38);
  }

  v37 = *(v0 + 8);

  return v37(v40);
}

uint64_t sub_10034421C()
{

  return _swift_task_switch(sub_10034428C, 0, 0);
}

uint64_t sub_10034428C()
{
  v1 = v0[49];
  v2 = v0[46];
  v3 = v0[47];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1003443C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  sub_1001F0C48(&unk_1007809F0);
  v3[11] = swift_task_alloc();
  v4 = type metadata accessor for DDMPurchaseMethod();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_100780E50);
  v3[15] = v5;
  v3[16] = *(v5 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = sub_1001F0C48(&qword_100780E58);
  v3[20] = swift_task_alloc();
  v6 = sub_1001F0C48(&qword_100780E60);
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v3[24] = type metadata accessor for DDMDeclaration(0);
  v3[25] = swift_task_alloc();
  v7 = sub_1001F0C48(&qword_100780E38);
  v3[26] = v7;
  v3[27] = *(v7 - 8);
  v3[28] = swift_task_alloc();
  v3[29] = sub_1001F0C48(&qword_100780E68);
  v3[30] = swift_task_alloc();
  sub_1001F0C48(&qword_100780E70);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();

  return _swift_task_switch(sub_1003446F4, 0, 0);
}

uint64_t sub_1003446F4()
{
  v57 = v0 + 2;
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[26];
  v6 = v0[24];
  v7 = v0[22];
  v52 = v0[15];
  v53 = v0[16];
  v8 = v0[13];
  v9 = v0[8];
  v59 = _swiftEmptyArrayStorage;
  v0[6] = _swiftEmptyArrayStorage;
  v10 = *(v4 + 16);
  v0[33] = v10;
  v0[34] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v1, v9, v5);
  sub_100005934(v1, v2, &qword_100780E70);
  v11 = *(v4 + 32);
  v0[35] = v11;
  v0[36] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v3, v2, v5);
  v12 = v6;
  sub_100213FA0(&qword_100780E78, &qword_100780E38);
  dispatch thunk of Sequence.makeIterator()();
  v58 = (v7 + 8);
  v56 = enum case for DDMPurchaseMethod.manifest(_:);
  v54 = (v8 + 8);
  v55 = (v8 + 104);
  sub_100213FA0(&qword_100780E80, &qword_100780E38);
  v61 = v0;
  while (1)
  {
    v0[37] = v59;
    v13 = v0[23];
    v14 = v0[21];
    dispatch thunk of Collection.endIndex.getter();
    sub_100213FA0(&qword_100780E88, &qword_100780E60);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*v58)(v13, v14);
    if (v15)
    {
      break;
    }

    v16 = v0[25];
    v17 = v0[14];
    v18 = v61[12];
    v19 = dispatch thunk of Collection.subscript.read();
    sub_1003524F8(v20, v16, type metadata accessor for DDMDeclaration);
    v19(v57, 0);
    dispatch thunk of Collection.formIndex(after:)();
    (*v55)(v17, v56, v18);
    v21 = static DDMPurchaseMethod.== infix(_:_:)();
    v22 = v18;
    v0 = v61;
    (*v54)(v17, v22);
    v23 = v61[25];
    if (v21)
    {
      v24 = v61[11];
      sub_100005934(v23 + *(v12 + 80), v24, &unk_1007809F0);
      v25 = type metadata accessor for URL();
      v26 = *(v25 - 8);
      v27 = (*(v26 + 48))(v24, 1, v25);
      if (v27 == 1)
      {
        __break(1u);
        return withTaskGroup<A, B>(of:returning:isolation:body:)(v27, v28, v29, v30, v31, v32, v33, v34);
      }

      v35 = v61[25];
      v37 = v61[17];
      v36 = v61[18];
      v38 = (v37 + *(v52 + 48));
      (*(v26 + 32))(v37, v61[11], v25);
      v39 = (v35 + *(v12 + 52));
      v41 = *v39;
      v40 = v39[1];

      sub_100352800(v35, type metadata accessor for DDMDeclaration);
      *v38 = v41;
      v38[1] = v40;
      sub_10020A668(v37, v36, &qword_100780E50);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1003630CC(0, v59[2] + 1, 1, v59);
      }

      v43 = v59[2];
      v42 = v59[3];
      if (v43 >= v42 >> 1)
      {
        v59 = sub_1003630CC(v42 > 1, v43 + 1, 1, v59);
      }

      v44 = v61[18];
      v59[2] = v43 + 1;
      sub_10020A668(v44, v59 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v43, &qword_100780E50);
    }

    else
    {
      sub_100352800(v23, type metadata accessor for DDMDeclaration);
    }
  }

  v45 = v0[32];
  v46 = v0[10];
  sub_1000032A8(v0[30], &qword_100780E68);
  sub_1000032A8(v45, &qword_100780E70);
  v47 = sub_1001F0C48(&qword_10077F148);
  v48 = swift_task_alloc();
  v0[38] = v48;
  *(v48 + 16) = v46;
  *(v48 + 24) = v59;
  v49 = sub_1001F0C48(&qword_100780E90);
  v50 = swift_task_alloc();
  v0[39] = v50;
  *v50 = v0;
  v50[1] = sub_100344CF4;
  v32 = &unk_1006A2FE0;
  v27 = (v0 + 7);
  v28 = v47;
  v29 = v49;
  v30 = 0;
  v31 = 0;
  v33 = v48;
  v34 = v47;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v27, v28, v29, v30, v31, v32, v33, v34);
}

uint64_t sub_100344CF4()
{

  return _swift_task_switch(sub_100344E28, 0, 0);
}

uint64_t sub_100344E28()
{
  v18 = v0;
  v1 = v0[35];
  v2 = v0[33];
  v3 = v0[31];
  v4 = v0[26];
  v5 = v0[20];
  v16 = v0[19];
  v6 = v0[8];
  sub_1006537E0(v0[7]);
  v2(v3, v6, v4);
  v1(v5, v3, v4);
  v7 = (v5 + *(sub_1001F0C48(&qword_100780E98) + 44));
  *v7 = sub_100346CD8;
  v7[1] = 0;
  v8 = (v5 + *(sub_1001F0C48(&qword_100780EA0) + 36));
  *v8 = sub_10037DB7C;
  v8[1] = 0;
  v9 = (v5 + *(v16 + 44));
  *v9 = sub_10037DC1C;
  v9[1] = 0;
  v17 = _swiftEmptyDictionarySingleton;
  sub_100350564(v5, 1, &v17);
  v10 = v17;
  v0[40] = v17;
  v11 = sub_100625FA0();
  v0[41] = v11;
  v12 = swift_task_alloc();
  v0[42] = v12;
  *v12 = v0;
  v12[1] = sub_100345018;
  v13 = v0[9];
  v14 = v0[10];

  return sub_100347304(v10, v13, v11, v14);
}

uint64_t sub_100345018(uint64_t a1)
{
  v2 = *(*v1 + 328);
  *(*v1 + 344) = a1;

  return _swift_task_switch(sub_100345150, 0, 0);
}

uint64_t sub_100345150()
{
  sub_1006537E0(v0[43]);
  v1 = v0[6];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_100345260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 280) = a7;
  *(v8 + 112) = a6;
  *(v8 + 120) = a8;
  *(v8 + 96) = a4;
  *(v8 + 104) = a5;
  *(v8 + 128) = swift_getObjectType();
  v9 = type metadata accessor for Logger();
  *(v8 + 136) = v9;
  *(v8 + 144) = *(v9 - 8);
  *(v8 + 152) = swift_task_alloc();
  *(v8 + 160) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  v10 = type metadata accessor for LogKey.Prefix();
  *(v8 + 192) = v10;
  *(v8 + 200) = *(v10 - 8);
  *(v8 + 208) = swift_task_alloc();

  return _swift_task_switch(sub_100345418, 0, 0);
}

uint64_t sub_100345418()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 120);
  v4 = *(v0 + 128);
  v6 = *(v0 + 280);
  v7 = *(v0 + 112);
  v13 = *(v0 + 96);
  (*(*(v0 + 200) + 104))(*(v0 + 208), enum case for LogKey.Prefix.ddm(_:), *(v0 + 192));
  v8 = objc_allocWithZone(v4);
  v9 = LogKey.init(prefix:)();
  *(v0 + 216) = v9;
  (*(v3 + 56))(v1, 1, 1, v2);
  v10 = swift_task_alloc();
  *(v0 + 224) = v10;
  *(v10 + 16) = v9;
  *(v10 + 24) = v13;
  *(v10 + 40) = v7;
  *(v10 + 48) = v6;
  *(v10 + 56) = v5;
  v11 = v9;

  return _swift_task_switch(sub_100345570, 0, 0);
}

uint64_t sub_100345570()
{
  sub_100005934(*(v0 + 184), *(v0 + 176), &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  *(v0 + 232) = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Lookup stale managed apps", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  os_activity_scope_enter(v2, (v0 + 80));
  swift_unknownObjectRelease();
  *(v1 + 16) = *(v0 + 80);
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = *(v0 + 24);
  v4 = *(v0 + 216);
  if (v3)
  {

    *(swift_task_alloc() + 16) = v4;
    v5 = v4;

    os_unfair_lock_lock((v3 + 24));
    sub_100231C24((v3 + 16));
    os_unfair_lock_unlock((v3 + 24));
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = v4;
    v6 = v4;
  }

  *(v0 + 240) = v3;
  type metadata accessor for Transaction();
  v7 = swift_allocObject();
  *(v0 + 248) = v7;
  *(v7 + 16) = StaticString.description.getter();
  *(v7 + 24) = v8;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v7);
  os_unfair_lock_unlock(&dword_100788650);
  v9 = *(v0 + 168);
  v10 = *(v0 + 136);
  v11 = *(v0 + 144);
  sub_100005934(*(v0 + 176), v9, &unk_10077F8E0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000032A8(*(v0 + 176), &unk_10077F8E0);

    v12 = 0;
  }

  else
  {
    v13 = *(v0 + 160);
    v15 = *(v0 + 144);
    v14 = *(v0 + 152);
    v16 = *(v0 + 136);
    v22 = *(v0 + 176);
    (*(v15 + 32))(v13, *(v0 + 168), v16);
    (*(v15 + 16))(v14, v13, v16);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v12 = sub_1005AD4D8("Lookup stale managed apps", 25, 2, v14);

    (*(v15 + 8))(v13, v16);
    sub_1000032A8(v22, &unk_10077F8E0);
  }

  *(v0 + 256) = v12;
  v18 = *(v0 + 216);
  v17 = *(v0 + 224);
  *(v0 + 48) = v1;
  *(v0 + 56) = v3;
  *(v0 + 64) = v7;
  *(v0 + 72) = v12;
  v19 = swift_task_alloc();
  *(v0 + 264) = v19;
  v19[2] = v18;
  v19[3] = v1;
  v19[4] = v3;
  v19[5] = v7;
  v19[6] = v12;
  v19[7] = &unk_1006A2FA8;
  v19[8] = v17;

  v20 = swift_task_alloc();
  *(v0 + 272) = v20;
  *v20 = v0;
  v20[1] = sub_100345AA0;

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v20, v0 + 48, &unk_10069F3A0, v19, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100345AA0()
{

  if (v0)
  {

    v1 = sub_100345E38;
  }

  else
  {

    v1 = sub_100345C60;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100345C60()
{
  v1 = *(v0 + 184);

  sub_1000032A8(v1, &unk_10077F8E0);

  return _swift_task_switch(sub_100345D58, 0, 0);
}

uint64_t sub_100345D58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100345E38()
{
}

uint64_t sub_100345ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  *(v7 + 136) = a5;
  *(v7 + 144) = a7;
  *(v7 + 320) = a6;
  *(v7 + 120) = a3;
  *(v7 + 128) = a4;
  *(v7 + 112) = a2;
  v8 = sub_1001F0C48(&qword_100780E38);
  *(v7 + 152) = v8;
  *(v7 + 160) = *(v8 - 8);
  *(v7 + 168) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v7 + 176) = v9;
  *(v7 + 184) = *(v9 - 8);
  *(v7 + 192) = swift_task_alloc();
  *(v7 + 200) = swift_task_alloc();
  *(v7 + 208) = swift_task_alloc();
  *(v7 + 216) = swift_projectBox();

  return _swift_task_switch(sub_100346030, 0, 0);
}

uint64_t sub_100346030()
{
  v1 = v0[14];
  static Logger.vpp.getter();
  swift_retain_n();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[27];
    v7 = v0[20];
    v6 = v0[21];
    v8 = v0[19];
    v9 = v0[14];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    *(v10 + 4) = v9;
    *v11 = v9;
    *(v10 + 12) = 2048;
    swift_beginAccess();
    (*(v7 + 16))(v6, v5, v8);
    v12 = v9;
    v13 = DiscontiguousSlice.count.getter();
    (*(v7 + 8))(v6, v8);

    *(v10 + 14) = v13;

    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Refreshing stale metadata for %ld app(s)", v10, 0x16u);
    sub_1000032A8(v11, &qword_10077F920);
  }

  else
  {
  }

  v14 = v0[26];
  v15 = v0[27];
  v16 = v0[22];
  v17 = v0[23];
  v19 = v0[20];
  v18 = v0[21];
  v20 = v0[19];
  v21 = *(v17 + 8);
  v0[28] = v21;
  v0[29] = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v21(v14, v16);
  swift_beginAccess();
  v22 = *(v19 + 16);
  v0[30] = v22;
  v0[31] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v18, v15, v20);
  v23 = swift_task_alloc();
  v0[32] = v23;
  *v23 = v0;
  v23[1] = sub_1003462CC;
  v24 = v0[21];
  v25 = v0[16];
  v26 = v0[17];

  return sub_1003443C8(v24, v25, v26);
}

uint64_t sub_1003462CC()
{
  v1 = *v0;
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);
  v4 = *(*v0 + 152);

  v5 = *(v3 + 8);
  *(v1 + 264) = v5;
  *(v1 + 272) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);

  return _swift_task_switch(sub_100346444, 0, 0);
}

uint64_t sub_100346444()
{
  v1 = *(v0 + 112);
  static Logger.vpp.getter();
  swift_retain_n();
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v20 = *(v0 + 264);
    v19 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412546;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2048;
    swift_beginAccess();
    v19(v6, v5, v7);
    v11 = v8;
    v12 = DiscontiguousSlice.count.getter();
    v20(v6, v7);

    *(v9 + 14) = v12;

    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Sending updated metadata for %ld app(s) to clients", v9, 0x16u);
    sub_1000032A8(v10, &qword_10077F920);
  }

  else
  {
  }

  (*(v0 + 224))(*(v0 + 200), *(v0 + 176));
  v13 = swift_task_alloc();
  *(v0 + 280) = v13;
  *v13 = v0;
  v13[1] = sub_100346684;
  v15 = *(v0 + 136);
  v14 = *(v0 + 144);
  v16 = *(v0 + 320);
  v17 = *(v0 + 128);

  return sub_10034278C(v16, v17, v14, v15);
}

uint64_t sub_100346684(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_100346A44;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_1003467AC;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003467AC()
{
  v1 = *(*sub_100006D8C(*(v0 + 136), *(*(v0 + 136) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_clientRegistry);
  *(v0 + 304) = v1;

  v2 = swift_task_alloc();
  *(v0 + 312) = v2;
  *v2 = v0;
  v2[1] = sub_100346898;
  v3 = *(v0 + 296);

  return sub_10066FFA8(v1, v3);
}

uint64_t sub_100346898()
{
  v3 = *v0;

  swift_bridgeObjectRelease_n();

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_100346A44()
{
  v1 = *(v0 + 112);
  static Logger.vpp.getter();
  swift_retain_n();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v17 = *(v0 + 264);
    v16 = *(v0 + 240);
    v5 = *(v0 + 216);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    v8 = *(v0 + 112);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412802;
    *(v9 + 4) = v8;
    *v10 = v8;
    *(v9 + 12) = 2048;
    swift_beginAccess();
    v16(v6, v5, v7);
    v11 = v8;
    v12 = DiscontiguousSlice.count.getter();
    v17(v6, v7);

    *(v9 + 14) = v12;

    *(v9 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    v10[1] = v13;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Failed to send refresh metadata for %ld app(s): %{public}@", v9, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  (*(v0 + 224))(*(v0 + 192), *(v0 + 176));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_100346CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for DDMPurchaseMethod();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DDMDeclaration(0);
  (*(v5 + 104))(v7, enum case for DDMPurchaseMethod.volumePurchaseProgram(_:), v4);
  v8 = static DDMPurchaseMethod.== infix(_:_:)();
  (*(v5 + 8))(v7, v4);
  v9 = sub_1001F0C48(&qword_100780EF0);
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    return (*(*(v9 - 8) + 56))(a2, 1, 1, v9);
  }

  v11 = *(v9 + 48);
  *a2 = sub_1004DA6EC();
  *(a2 + 8) = v12;
  *(a2 + 16) = v13 & 1;
  sub_1003524F8(a1, a2 + v11, type metadata accessor for DDMDeclaration);
  return (*(*(v10 - 8) + 56))(a2, 0, 1, v10);
}

uint64_t sub_100346E94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v55 = a3;
  v52 = type metadata accessor for DDMDeclaration(0);
  v5 = __chkstk_darwin(v52);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v45 - v9;
  __chkstk_darwin(v8);
  v12 = &v45 - v11;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.vpp.getter();
  sub_1003524F8(a1, v12, type metadata accessor for DDMDeclaration);
  sub_1003524F8(a1, v10, type metadata accessor for DDMDeclaration);
  v53 = v7;
  sub_1003524F8(a2, v7, type metadata accessor for DDMDeclaration);
  v54 = v16;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v18;
    v20 = v19;
    v21 = swift_slowAlloc();
    v47 = v21;
    v50 = swift_slowAlloc();
    v56 = v50;
    *v20 = 138413058;
    v22 = sub_100625FA0();
    *(v20 + 4) = v22;
    *v21 = v22;
    *(v20 + 12) = 2082;
    v46 = v17;
    v23 = sub_1004DA6EC();
    v51 = v13;
    v25 = v24;
    LOBYTE(v21) = v26;
    v27 = StoreAppIdentifier.description.getter();
    v49 = v14;
    v28 = v27;
    v29 = a2;
    v31 = v30;
    sub_1001DFEBC(v23, v25, v21 & 1);
    sub_100352800(v12, type metadata accessor for DDMDeclaration);
    v32 = sub_1002346CC(v28, v31, &v56);
    a2 = v29;

    *(v20 + 14) = v32;
    *(v20 + 22) = 2082;
    v33 = v52;
    v34 = &v10[*(v52 + 56)];
    v35 = *v34;
    v36 = v34[1];

    sub_100352800(v10, type metadata accessor for DDMDeclaration);
    v37 = sub_1002346CC(v35, v36, &v56);

    *(v20 + 24) = v37;
    *(v20 + 32) = 2082;
    v38 = v53;
    v39 = &v53[*(v33 + 56)];
    v40 = *v39;
    v41 = v39[1];

    sub_100352800(v38, type metadata accessor for DDMDeclaration);
    v42 = sub_1002346CC(v40, v41, &v56);

    *(v20 + 34) = v42;
    v43 = v46;
    _os_log_impl(&_mh_execute_header, v46, v48, "[%@] Found duplicate app declarations for app identifier %{public}s: %{public}s & %{public}s", v20, 0x2Au);
    sub_1000032A8(v47, &qword_10077F920);

    swift_arrayDestroy();

    (*(v49 + 8))(v54, v51);
  }

  else
  {

    sub_100352800(v53, type metadata accessor for DDMDeclaration);
    sub_100352800(v10, type metadata accessor for DDMDeclaration);
    sub_100352800(v12, type metadata accessor for DDMDeclaration);
    (*(v14 + 8))(v54, v13);
  }

  return sub_1003524F8(a2, v55, type metadata accessor for DDMDeclaration);
}

uint64_t sub_100347304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[227] = a4;
  v4[226] = a3;
  v4[225] = a2;
  v4[224] = a1;
  type metadata accessor for AppStoreItem(0);
  v4[228] = swift_task_alloc();
  v4[229] = type metadata accessor for AppStorePurchaseRequest(0);
  v4[230] = swift_task_alloc();
  v5 = type metadata accessor for Date();
  v4[231] = v5;
  v4[232] = *(v5 - 8);
  v4[233] = swift_task_alloc();
  v4[234] = swift_task_alloc();
  v6 = type metadata accessor for Platform();
  v4[235] = v6;
  v4[236] = *(v6 - 8);
  v4[237] = swift_task_alloc();
  v7 = type metadata accessor for ManagedApp.License();
  v4[238] = v7;
  v4[239] = *(v7 - 8);
  v4[240] = swift_task_alloc();
  v4[241] = swift_task_alloc();
  v8 = type metadata accessor for ManagedAppDeclaration.InstallBehavior.LicenseEnum();
  v4[242] = v8;
  v4[243] = *(v8 - 8);
  v4[244] = swift_task_alloc();
  v4[245] = swift_task_alloc();
  v4[246] = swift_task_alloc();
  v4[247] = swift_task_alloc();
  v4[248] = swift_task_alloc();
  v4[249] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F340);
  v4[250] = swift_task_alloc();
  v4[251] = swift_task_alloc();
  sub_1001F0C48(&qword_10077F338);
  v4[252] = swift_task_alloc();
  v4[253] = swift_task_alloc();
  v9 = type metadata accessor for ManagedApp();
  v4[254] = v9;
  v4[255] = *(v9 - 8);
  v4[256] = swift_task_alloc();
  v4[257] = swift_task_alloc();
  v4[258] = swift_task_alloc();
  v4[259] = swift_task_alloc();
  v10 = type metadata accessor for DDMDeclaration(0);
  v4[260] = v10;
  v4[261] = *(v10 - 8);
  v4[262] = swift_task_alloc();
  v4[263] = swift_task_alloc();
  v4[264] = swift_task_alloc();
  v4[265] = swift_task_alloc();
  type metadata accessor for MediaAPIApp(0);
  v4[266] = swift_task_alloc();
  v4[267] = swift_task_alloc();
  v11 = sub_1001F0C48(&qword_100786FD0);
  v4[268] = v11;
  v4[269] = *(v11 - 8);
  v4[270] = swift_task_alloc();
  v4[271] = sub_1001F0C48(&qword_100780EA8);
  v4[272] = swift_task_alloc();
  v4[273] = swift_task_alloc();
  v4[274] = swift_task_alloc();
  v4[275] = swift_task_alloc();
  v12 = sub_1001F0C48(&qword_100780EB0);
  v4[276] = v12;
  v4[277] = *(v12 - 8);
  v4[278] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v4[279] = v13;
  v4[280] = *(v13 - 8);
  v4[281] = swift_task_alloc();
  v4[282] = swift_task_alloc();
  v4[283] = swift_task_alloc();
  v4[284] = swift_task_alloc();
  v4[285] = swift_task_alloc();

  return _swift_task_switch(sub_100347910, 0, 0);
}

uint64_t sub_100347910()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  *(v0 + 2288) = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  v3 = (*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v5 = v3[4];
  v4 = v3[5];
  v6 = v3[3];
  *(v0 + 1111) = *(v3 + 95);
  *(v0 + 1080) = v5;
  *(v0 + 1096) = v4;
  *(v0 + 1064) = v6;
  v8 = v3[1];
  v7 = v3[2];
  *(v0 + 1016) = *v3;
  *(v0 + 1032) = v8;
  *(v0 + 1048) = v7;
  *(v0 + 2296) = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_purchaseQueue);

  sub_10020A7AC(v0 + 1016, v0 + 1128);

  static Logger.vpp.getter();
  swift_bridgeObjectRetain_n();
  v9 = v2;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 1808);
    v13 = *(v0 + 1792);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412546;
    *(v14 + 4) = v12;
    *v15 = v12;
    *(v14 + 12) = 2048;
    v16 = *(v13 + 16);
    v17 = v12;

    *(v14 + 14) = v16;

    _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Requesting metadata for %ld declaration(s)", v14, 0x16u);
    sub_1000032A8(v15, &qword_10077F920);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v18 = *(v0 + 2280);
  v19 = *(v0 + 2240);
  v20 = *(v0 + 2232);
  v21 = *(v0 + 1800);
  v22 = *(v0 + 1792);
  v23 = *(v19 + 8);
  *(v0 + 2304) = v23;
  *(v0 + 2312) = (v19 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v23(v18, v20);

  *(v0 + 1768) = sub_1005D6980(v24);
  sub_10020A980(v21, v0 + 696);
  v25 = *(v0 + 1032);
  *(v0 + 736) = *(v0 + 1016);
  *(v0 + 752) = v25;
  *(v0 + 831) = *(v0 + 1111);
  v26 = *(v0 + 1096);
  *(v0 + 800) = *(v0 + 1080);
  *(v0 + 816) = v26;
  v27 = *(v0 + 1064);
  *(v0 + 768) = *(v0 + 1048);
  *(v0 + 784) = v27;
  *(v0 + 848) = 0;
  v28 = *(v22 + 16);
  if (v28)
  {
    v88 = *(v0 + 2216);
    v89 = *(v0 + 2224);
    v86 = *(v0 + 2192);
    v87 = *(v0 + 2208);
    v84 = *(v0 + 2176);
    v85 = *(v0 + 2184);
    v82 = *(v0 + 2088);
    v83 = *(v0 + 2168);
    v81 = *(v0 + 2080);
    v29 = *(v0 + 1888);
    v30 = *(v0 + 1792);
    sub_10020A7AC(v0 + 1016, v0 + 1240);
    sub_1005265FC(0, v28, 0);
    v31 = _swiftEmptyArrayStorage;
    v32 = v30 + 64;
    v33 = _HashTable.startBucket.getter();
    v37 = v33;
    v38 = 0;
    v39 = *(v30 + 36);
    v79 = v0;
    v80 = (v29 + 16);
    v74 = v30 + 72;
    v75 = v28;
    v76 = v39;
    v77 = v30 + 64;
    v78 = v30;
    while ((v37 & 0x8000000000000000) == 0 && v37 < 1 << *(v30 + 32))
    {
      if ((*(v32 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
      {
        goto LABEL_28;
      }

      if (v39 != *(v30 + 36))
      {
        goto LABEL_29;
      }

      v91 = v37 >> 6;
      v90 = v38;
      v42 = v0;
      v43 = *(v0 + 2200);
      v44 = *(v83 + 48);
      v45 = *(v0 + 2224);
      v46 = v42[274];
      v94 = v42[273];
      v97 = v42[272];
      v98 = v42[235];
      v47 = *(v30 + 48) + 24 * v37;
      v99 = v31;
      v48 = *v47;
      v49 = *(v47 + 8);
      v93 = *v47;
      v50 = *(v47 + 16);
      v92 = v50;
      sub_1003524F8(*(v30 + 56) + *(v82 + 72) * v37, v43 + v44, type metadata accessor for DDMDeclaration);
      *v46 = v48;
      *(v86 + 8) = v49;
      *(v86 + 16) = v50;
      sub_100352490(v43 + v44, v46 + *(v83 + 48), type metadata accessor for DDMDeclaration);
      v95 = *(v87 + 48);
      sub_100005934(v46, v94, &qword_100780EA8);
      v51 = *(v85 + 8);
      v52 = *(v85 + 16);
      v96 = *(v83 + 48);
      *v45 = *v94;
      *(v89 + 8) = v51;
      *(v89 + 16) = v52;
      sub_10020A668(v46, v97, &qword_100780EA8);
      v53 = *v97;
      v54 = *(v84 + 8);
      LOBYTE(v43) = *(v84 + 16);
      v31 = v99;
      sub_1001DFDA4(v93, v49, v92);
      sub_1001DFEBC(v53, v54, v43);
      v55 = v97 + *(v83 + 48);
      (*v80)(&v45[v95], v55 + *(v81 + 96), v98);
      sub_100352800(v55, type metadata accessor for DDMDeclaration);
      sub_100352800(v94 + v96, type metadata accessor for DDMDeclaration);
      v57 = v99[2];
      v56 = v99[3];
      if (v57 >= v56 >> 1)
      {
        sub_1005265FC(v56 > 1, v57 + 1, 1);
        v31 = v99;
      }

      v58 = *(v79 + 2224);
      v31[2] = v57 + 1;
      v33 = sub_10020A668(v58, v31 + ((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v57, &qword_100780EB0);
      v30 = v78;
      v40 = 1 << *(v78 + 32);
      if (v37 >= v40)
      {
        goto LABEL_30;
      }

      v32 = v77;
      v59 = *(v77 + 8 * v91);
      if ((v59 & (1 << v37)) == 0)
      {
        goto LABEL_31;
      }

      v39 = v76;
      if (v76 != *(v78 + 36))
      {
        goto LABEL_32;
      }

      v0 = v79;
      v60 = v59 & (-2 << (v37 & 0x3F));
      if (v60)
      {
        v40 = __clz(__rbit64(v60)) | v37 & 0x7FFFFFFFFFFFFFC0;
        v41 = v75;
      }

      else
      {
        v61 = v91 << 6;
        v41 = v75;
        v62 = (v74 + 8 * v91);
        v63 = v91 + 1;
        while (v63 < (v40 + 63) >> 6)
        {
          v65 = *v62++;
          v64 = v65;
          v61 += 64;
          ++v63;
          if (v65)
          {
            v33 = sub_100323C00(v37, v76, 0);
            v40 = __clz(__rbit64(v64)) + v61;
            goto LABEL_7;
          }
        }

        v33 = sub_100323C00(v37, v76, 0);
      }

LABEL_7:
      v38 = v90 + 1;
      v37 = v40;
      if (v90 + 1 == v41)
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
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    sub_10020A7AC(v0 + 1016, v0 + 1464);
    v31 = _swiftEmptyArrayStorage;
LABEL_24:
    sub_1003522C8(v0 + 696, v0 + 856);
    v66 = swift_allocObject();
    v67 = *(v0 + 968);
    *(v66 + 112) = *(v0 + 952);
    *(v66 + 128) = v67;
    v68 = *(v0 + 1000);
    *(v66 + 144) = *(v0 + 984);
    *(v66 + 160) = v68;
    v69 = *(v0 + 904);
    *(v66 + 48) = *(v0 + 888);
    *(v66 + 64) = v69;
    v70 = *(v0 + 936);
    *(v66 + 80) = *(v0 + 920);
    *(v66 + 96) = v70;
    v71 = *(v0 + 872);
    *(v66 + 16) = *(v0 + 856);
    *(v66 + 32) = v71;
    *(v66 + 176) = v31;
    v72 = swift_allocObject();
    *(v0 + 2320) = v72;
    *(v72 + 16) = &unk_1006A3028;
    *(v72 + 24) = v66;
    sub_1001F0C48(&qword_100780EB8);
    swift_asyncLet_begin();
    v35 = sub_1003480CC;
    v33 = v0 + 16;
    v34 = v0 + 1776;
    v36 = v0 + 656;
  }

  return _swift_asyncLet_get_throwing(v33, v34, v35, v36);
}

uint64_t sub_1003480CC()
{
  *(v1 + 2328) = v0;
  if (v0)
  {
    return _swift_asyncLet_finish(v1 + 16, v1 + 1776, sub_10034B900, v1 + 1632);
  }

  else
  {
    return _swift_task_switch(sub_100348110, 0, 0);
  }
}

uint64_t sub_100348110()
{
  v117 = v0;
  v1 = *(v0 + 1776);
  *(v0 + 2336) = v1;
  v2 = *(v1 + 16);
  *(v0 + 2344) = v2;
  if (v2)
  {
    v3 = *(v0 + 2152);
    *(v0 + 2552) = *(*(v0 + 2144) + 48);
    *(v0 + 2556) = *(v3 + 80);
    *(v0 + 2560) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:);
    *(v0 + 2564) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.device(_:);
    *(v0 + 2568) = enum case for ManagedApp.License.device(_:);
    *(v0 + 2572) = enum case for ManagedApp.License.user(_:);
    v4 = *(v0 + 2328);

    v9 = 0;
    while (1)
    {
      *(v0 + 2360) = _swiftEmptyArrayStorage;
      *(v0 + 2352) = v9;
      v21 = *(v0 + 2336);
      if (v9 >= *(v21 + 16))
      {
        __break(1u);
        return _swift_asyncLet_finish(v5, v6, v7, v8);
      }

      v22 = *(v0 + 2552);
      v23 = *(v0 + 2160);
      v24 = *(v0 + 2136);
      v25 = *(v0 + 1792);
      sub_100005934(v21 + ((*(v0 + 2556) + 32) & ~*(v0 + 2556)) + *(*(v0 + 2152) + 72) * v9, v23, &qword_100786FD0);
      v26 = *v23;
      *(v0 + 2368) = *v23;
      v27 = *(v23 + 8);
      *(v0 + 2376) = v27;
      v28 = *(v23 + 16);
      *(v0 + 1127) = v28;
      sub_100352490(v23 + v22, v24, type metadata accessor for MediaAPIApp);
      v115 = v28;
      if (*(v25 + 16) && (v29 = sub_100522E00(v26, v27, v28), (v30 & 1) != 0))
      {
        v104 = v4;
        v109 = v27;
        v112 = v26;
        v31 = *(v0 + 2120);
        v32 = *(v0 + 2112);
        v33 = *(v0 + 2080);
        v34 = *(v0 + 2008);
        v35 = *(v0 + 1944);
        v36 = *(v0 + 1936);
        sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v29, v32, type metadata accessor for DDMDeclaration);
        sub_100352490(v32, v31, type metadata accessor for DDMDeclaration);
        v37 = (v31 + *(v33 + 52));
        v38 = *v37;
        *(v0 + 2384) = *v37;
        v39 = v37[1];
        *(v0 + 2392) = v39;
        sub_100005934(v31 + *(v33 + 72), v34, &qword_10077F340);
        v40 = 1;
        v107 = v38;
        if ((*(v35 + 48))(v34, 1, v36) != 1)
        {
          v41 = v39;
          v99 = *(v0 + 2560);
          v42 = *(v0 + 1992);
          v43 = *(v0 + 1984);
          v44 = *(v0 + 1976);
          v45 = *(v0 + 1944);
          v46 = *(v0 + 1936);
          (*(v45 + 32))(v42, *(v0 + 2008), v46);
          v47 = *(v45 + 16);
          v47(v43, v42, v46);
          v47(v44, v43, v46);
          v48 = (*(v45 + 88))(v44, v46);
          v49 = (v0 + 2572);
          if (v48 != v99)
          {
            v49 = (v0 + 2568);
            if (v48 != *(v0 + 2564))
            {
              return _assertionFailure(_:_:file:line:flags:)();
            }
          }

          v50 = *v49;
          v100 = *(v0 + 2024);
          v51 = *(v0 + 1992);
          v52 = *(v0 + 1936);
          v53 = *(v0 + 1928);
          v54 = *(v0 + 1912);
          v55 = *(v0 + 1904);
          v56 = *(*(v0 + 1944) + 8);
          v56(*(v0 + 1984), v52);
          v56(v51, v52);
          (*(v54 + 104))(v53, v50, v55);
          (*(v54 + 32))(v100, v53, v55);
          v40 = 0;
          v39 = v41;
        }

        v101 = *(v0 + 2136);
        v57 = *(v0 + 2120);
        v58 = *(v0 + 2080);
        v59 = *(v0 + 2072);
        v60 = *(v0 + 2024);
        v61 = *(v0 + 1896);
        v62 = *(v0 + 1888);
        v63 = *(v0 + 1880);
        (*(*(v0 + 1912) + 56))(v60, v40, 1, *(v0 + 1904));
        (*(v62 + 16))(v61, v57 + *(v58 + 96), v63);
        v64 = sub_10037DE18(v61);
        sub_10034EC1C(v101, v107, v39, v60, v64, (v0 + 1016), v59);
        if (!v104)
        {
          v95 = *(v0 + 2288);
          sub_1000032A8(*(v0 + 2024), &qword_10077F338);
          static Date.now.getter();

          return _swift_task_switch(sub_100348B74, v95, 0);
        }

        v65 = *(v0 + 2120);
        sub_1000032A8(*(v0 + 2024), &qword_10077F338);
        sub_100352800(v65, type metadata accessor for DDMDeclaration);
        v27 = v109;
        v26 = v112;
      }

      else
      {
        v66 = *(v0 + 2136);
        v67 = *(v0 + 2128);
        v68 = *(v0 + 1808);
        static Logger.ddm.getter();
        sub_1003524F8(v66, v67, type metadata accessor for MediaAPIApp);
        v69 = v68;
        v70 = Logger.logObject.getter();
        v71 = static os_log_type_t.error.getter();

        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v0 + 2304);
        v74 = *(v0 + 2272);
        v75 = *(v0 + 2232);
        v76 = *(v0 + 2128);
        if (v72)
        {
          v108 = *(v0 + 2304);
          v77 = *(v0 + 1808);
          v113 = v26;
          v78 = swift_slowAlloc();
          v105 = v75;
          v79 = swift_slowAlloc();
          v102 = v74;
          v80 = swift_slowAlloc();
          v116[0] = v80;
          *v78 = 138412546;
          *(v78 + 4) = v77;
          *v79 = v77;
          *(v78 + 12) = 2080;
          v110 = v27;
          v82 = *v76;
          v81 = v76[1];
          v83 = v77;

          sub_100352800(v76, type metadata accessor for MediaAPIApp);
          v84 = v82;
          v27 = v110;
          v85 = sub_1002346CC(v84, v81, v116);

          *(v78 + 14) = v85;
          _os_log_impl(&_mh_execute_header, v70, v71, "[%@] Unable to map Media API response to declaration identifier for app with item ID %s", v78, 0x16u);
          sub_1000032A8(v79, &qword_10077F920);

          sub_10000710C(v80);

          v26 = v113;

          v108(v102, v105);
        }

        else
        {

          sub_100352800(v76, type metadata accessor for MediaAPIApp);
          v73(v74, v75);
        }

        type metadata accessor for InternalError();
        sub_100274098();
        swift_allocError();
        *v86 = xmmword_1006A2F00;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      v87 = *(v0 + 1808);
      static Logger.ddm.getter();
      v88 = v87;
      sub_1001DFDA4(v26, v27, v115);
      swift_errorRetain();
      v89 = Logger.logObject.getter();
      v90 = static os_log_type_t.error.getter();

      sub_1001DFEBC(v26, v27, v115);

      v111 = v90;
      v91 = os_log_type_enabled(v89, v90);
      v92 = *(v0 + 2304);
      v93 = *(v0 + 2256);
      v114 = *(v0 + 2232);
      v94 = *(v0 + 2136);
      if (v91)
      {
        v106 = *(v0 + 2136);
        v10 = *(v0 + 1808);
        v103 = *(v0 + 2256);
        v11 = v26;
        v12 = swift_slowAlloc();
        v98 = v92;
        v13 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v116[0] = v97;
        *v12 = 138412802;
        *(v12 + 4) = v10;
        *v13 = v10;
        *(v12 + 12) = 2082;
        v14 = v10;
        v15 = StoreAppIdentifier.description.getter();
        v17 = v16;
        sub_1001DFEBC(v11, v27, v115);
        v18 = sub_1002346CC(v15, v17, v116);

        *(v12 + 14) = v18;
        *(v12 + 22) = 2114;
        swift_errorRetain();
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 24) = v19;
        v13[1] = v19;
        _os_log_impl(&_mh_execute_header, v89, v111, "[%@] Dropping '%{public}s', failed to fetch metadata: %{public}@", v12, 0x20u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        sub_10000710C(v97);

        v98(v103, v114);
        v20 = v106;
      }

      else
      {

        sub_1001DFEBC(v26, v27, v115);
        v92(v93, v114);
        v20 = v94;
      }

      v5 = sub_100352800(v20, type metadata accessor for MediaAPIApp);
      v4 = 0;
      v9 = *(v0 + 2352) + 1;
      if (v9 == *(v0 + 2344))
      {

        break;
      }
    }
  }

  *(v0 + 2432) = _swiftEmptyArrayStorage;
  v7 = sub_100349A30;
  v5 = v0 + 16;
  v6 = v0 + 1776;
  v8 = v0 + 1728;

  return _swift_asyncLet_finish(v5, v6, v7, v8);
}

uint64_t sub_100348B74()
{
  v7 = *(v0 + 2384);
  v1 = *(v0 + 2072);
  v2 = *(v0 + 1872);
  v3 = *(*(v0 + 2288) + 112);
  v4 = swift_task_alloc();
  *(v0 + 2400) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = 1;
  v5 = swift_task_alloc();
  *(v0 + 2408) = v5;
  *v5 = v0;
  v5[1] = sub_100348C7C;

  return sub_10052DB90(sub_100352884, v4, v3);
}

uint64_t sub_100348C7C()
{
  v2 = *v1;
  *(*v1 + 2416) = v0;

  v3 = *(v2 + 2288);
  if (v0)
  {

    v4 = sub_100348E5C;
  }

  else
  {

    v4 = sub_100348DD8;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100348DD8()
{
  v0[303] = v0[302];
  (*(v0[232] + 8))(v0[234], v0[231]);

  return _swift_task_switch(sub_100348EDC, 0, 0);
}

uint64_t sub_100348E5C()
{
  v0[303] = 0;
  (*(v0[232] + 8))(v0[234], v0[231]);

  return _swift_task_switch(sub_100348EDC, 0, 0);
}

uint64_t sub_100348EDC()
{
  v125 = v0;
  (*(*(v0 + 2040) + 16))(*(v0 + 2064), *(v0 + 2072), *(v0 + 2032));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v115 = *(v0 + 2360);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_31:
    v115 = sub_1003630A4(0, v115[2] + 1, 1, v115);
  }

  v3 = v115[2];
  v2 = v115[3];
  if (v3 >= v2 >> 1)
  {
    v115 = sub_1003630A4(v2 > 1, v3 + 1, 1, v115);
  }

  v4 = *(v0 + 1127);
  v5 = *(v0 + 2376);
  v6 = *(v0 + 2368);
  v7 = *(v0 + 2136);
  v122 = *(v0 + 2120);
  v8 = *(v0 + 2072);
  v9 = *(v0 + 2064);
  v10 = *(v0 + 2040);
  v11 = *(v0 + 2032);
  v115[2] = v3 + 1;
  (*(v10 + 32))(v115 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v3, v9, v11);
  v12 = sub_1004FCBA0();
  sub_100352560(v12, v13, v14);
  sub_1001DFEBC(v6, v5, v4);
  sub_100352800(v7, type metadata accessor for MediaAPIApp);
  (*(v10 + 8))(v8, v11);
  sub_100352800(v122, type metadata accessor for DDMDeclaration);
  v15 = *(v0 + 2352) + 1;
  if (v15 == *(v0 + 2344))
  {
LABEL_5:

    *(v0 + 2432) = v115;

    return _swift_asyncLet_finish(v0 + 16, v0 + 1776, sub_100349A30, v0 + 1728);
  }

  v16 = *(v0 + 2424);
  while (1)
  {
    *(v0 + 2360) = v115;
    *(v0 + 2352) = v15;
    v28 = *(v0 + 2336);
    if (v15 >= *(v28 + 16))
    {
      __break(1u);
      goto LABEL_31;
    }

    v29 = *(v0 + 2552);
    v30 = *(v0 + 2160);
    v31 = *(v0 + 2136);
    v32 = *(v0 + 1792);
    sub_100005934(v28 + ((*(v0 + 2556) + 32) & ~*(v0 + 2556)) + *(*(v0 + 2152) + 72) * v15, v30, &qword_100786FD0);
    v33 = *v30;
    *(v0 + 2368) = *v30;
    v34 = *(v30 + 8);
    *(v0 + 2376) = v34;
    v35 = *(v30 + 16);
    *(v0 + 1127) = v35;
    sub_100352490(v30 + v29, v31, type metadata accessor for MediaAPIApp);
    v123 = v35;
    if (!*(v32 + 16) || (v36 = sub_100522E00(v33, v34, v35), (v37 & 1) == 0))
    {
      v73 = *(v0 + 2136);
      v74 = *(v0 + 2128);
      v75 = *(v0 + 1808);
      static Logger.ddm.getter();
      sub_1003524F8(v73, v74, type metadata accessor for MediaAPIApp);
      v76 = v75;
      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      v79 = os_log_type_enabled(v77, v78);
      v80 = *(v0 + 2304);
      v81 = *(v0 + 2272);
      v82 = *(v0 + 2232);
      v83 = *(v0 + 2128);
      if (v79)
      {
        v114 = *(v0 + 2304);
        v84 = *(v0 + 1808);
        v111 = *(v0 + 2272);
        v85 = swift_slowAlloc();
        v117 = v34;
        v86 = swift_slowAlloc();
        v120 = v33;
        v87 = swift_slowAlloc();
        v124[0] = v87;
        *v85 = 138412546;
        *(v85 + 4) = v84;
        *v86 = v84;
        *(v85 + 12) = 2080;
        v105 = v82;
        v89 = *v83;
        v88 = v83[1];
        v90 = v84;

        sub_100352800(v83, type metadata accessor for MediaAPIApp);
        v91 = sub_1002346CC(v89, v88, v124);

        *(v85 + 14) = v91;
        _os_log_impl(&_mh_execute_header, v77, v78, "[%@] Unable to map Media API response to declaration identifier for app with item ID %s", v85, 0x16u);
        sub_1000032A8(v86, &qword_10077F920);
        v34 = v117;

        sub_10000710C(v87);
        v33 = v120;

        v114(v111, v105);
      }

      else
      {

        sub_100352800(v83, type metadata accessor for MediaAPIApp);
        v80(v81, v82);
      }

      type metadata accessor for InternalError();
      sub_100274098();
      swift_allocError();
      *v92 = xmmword_1006A2F00;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_24;
    }

    v110 = v16;
    v116 = v34;
    v119 = v33;
    v38 = *(v0 + 2120);
    v39 = *(v0 + 2112);
    v40 = *(v0 + 2080);
    v41 = *(v0 + 2008);
    v42 = *(v0 + 1944);
    v43 = *(v0 + 1936);
    sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v36, v39, type metadata accessor for DDMDeclaration);
    sub_100352490(v39, v38, type metadata accessor for DDMDeclaration);
    v44 = (v38 + *(v40 + 52));
    v45 = *v44;
    *(v0 + 2384) = *v44;
    v46 = v44[1];
    *(v0 + 2392) = v46;
    sub_100005934(v38 + *(v40 + 72), v41, &qword_10077F340);
    v47 = 1;
    v113 = v45;
    if ((*(v42 + 48))(v41, 1, v43) != 1)
    {
      v48 = v46;
      v106 = *(v0 + 2560);
      v49 = *(v0 + 1992);
      v50 = *(v0 + 1984);
      v51 = *(v0 + 1976);
      v52 = *(v0 + 1944);
      v53 = *(v0 + 1936);
      (*(v52 + 32))(v49, *(v0 + 2008), v53);
      v54 = *(v52 + 16);
      v54(v50, v49, v53);
      v54(v51, v50, v53);
      v55 = (*(v52 + 88))(v51, v53);
      v56 = (v0 + 2572);
      if (v55 != v106)
      {
        v56 = (v0 + 2568);
        if (v55 != *(v0 + 2564))
        {
          return _assertionFailure(_:_:file:line:flags:)();
        }
      }

      v57 = *v56;
      v107 = *(v0 + 2024);
      v58 = *(v0 + 1992);
      v59 = *(v0 + 1936);
      v60 = *(v0 + 1928);
      v61 = *(v0 + 1912);
      v62 = *(v0 + 1904);
      v63 = *(*(v0 + 1944) + 8);
      v63(*(v0 + 1984), v59);
      v63(v58, v59);
      (*(v61 + 104))(v60, v57, v62);
      (*(v61 + 32))(v107, v60, v62);
      v47 = 0;
      v46 = v48;
    }

    v108 = *(v0 + 2136);
    v64 = *(v0 + 2120);
    v65 = *(v0 + 2080);
    v66 = *(v0 + 2072);
    v67 = *(v0 + 2024);
    v68 = *(v0 + 1896);
    v69 = *(v0 + 1888);
    v70 = *(v0 + 1880);
    (*(*(v0 + 1912) + 56))(v67, v47, 1, *(v0 + 1904));
    (*(v69 + 16))(v68, v64 + *(v65 + 96), v70);
    v71 = sub_10037DE18(v68);
    sub_10034EC1C(v108, v113, v46, v67, v71, (v0 + 1016), v66);
    if (!v110)
    {
      break;
    }

    v72 = *(v0 + 2120);
    sub_1000032A8(*(v0 + 2024), &qword_10077F338);
    sub_100352800(v72, type metadata accessor for DDMDeclaration);
    v34 = v116;
    v33 = v119;
LABEL_24:
    v93 = *(v0 + 1808);
    static Logger.ddm.getter();
    v94 = v93;
    sub_1001DFDA4(v33, v34, v123);
    swift_errorRetain();
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    sub_1001DFEBC(v33, v34, v123);

    v118 = v96;
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 2304);
    v99 = *(v0 + 2256);
    v121 = *(v0 + 2232);
    v100 = *(v0 + 2136);
    if (v97)
    {
      v112 = *(v0 + 2136);
      v17 = *(v0 + 1808);
      v109 = *(v0 + 2256);
      v18 = v34;
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      v124[0] = v103;
      *v19 = 138412802;
      *(v19 + 4) = v17;
      *v20 = v17;
      *(v19 + 12) = 2082;
      v21 = v17;
      v22 = StoreAppIdentifier.description.getter();
      v104 = v98;
      v24 = v23;
      sub_1001DFEBC(v33, v18, v123);
      v25 = sub_1002346CC(v22, v24, v124);

      *(v19 + 14) = v25;
      *(v19 + 22) = 2114;
      swift_errorRetain();
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 24) = v26;
      v20[1] = v26;
      _os_log_impl(&_mh_execute_header, v95, v118, "[%@] Dropping '%{public}s', failed to fetch metadata: %{public}@", v19, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v103);

      v104(v109, v121);
      v27 = v112;
    }

    else
    {

      sub_1001DFEBC(v33, v34, v123);
      v98(v99, v121);
      v27 = v100;
    }

    sub_100352800(v27, type metadata accessor for MediaAPIApp);
    v16 = 0;
    v15 = *(v0 + 2352) + 1;
    if (v15 == *(v0 + 2344))
    {
      goto LABEL_5;
    }
  }

  v101 = *(v0 + 2288);
  sub_1000032A8(*(v0 + 2024), &qword_10077F338);
  static Date.now.getter();

  return _swift_task_switch(sub_100348B74, v101, 0);
}

uint64_t sub_100349A4C()
{
  result = sub_100262C04(v0 + 696);
  v2 = 0;
  v3 = *(v0 + 2432);
  v4 = *(v0 + 1768);
  *(v0 + 2440) = v4;
  v5 = *(v4 + 32);
  *(v0 + 1239) = v5;
  v6 = 1 << v5;
  v7 = *(v4 + 56);
  v8 = v6 < 64;
  v9 = -1 << v6;
  if (v8)
  {
    v10 = ~v9;
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  *(v0 + 2448) = AMSBuyParamPropertyItemId;
  *(v0 + 2456) = AMSBuyParamPropertyBundleId;
  *(v0 + 2576) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:);
  *(v0 + 2580) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.device(_:);
  *(v0 + 2584) = enum case for ManagedApp.License.device(_:);
  *(v0 + 2588) = enum case for ManagedApp.License.user(_:);
  v56 = v3;
  *(v0 + 2464) = v3;
  while (v11)
  {
    v12 = *(v0 + 2440);
LABEL_11:
    *(v0 + 2480) = v2;
    *(v0 + 2472) = v11;
    v14 = *(v0 + 1792);
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(v12 + 48) + 24 * (v15 | (v2 << 6));
    v17 = *v16;
    *(v0 + 2488) = *v16;
    v18 = *(v16 + 8);
    *(v0 + 2496) = v18;
    v19 = *(v16 + 16);
    *(v0 + 1351) = v19;
    if (*(v14 + 16))
    {
      sub_1001DFDA4(v17, v18, v19);
      v20 = sub_100522E00(v17, v18, v19);
      if (v21)
      {
        v23 = *(v0 + 2104);
        v24 = *(v0 + 2096);
        sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v20, v24, type metadata accessor for DDMDeclaration);
        sub_100352490(v24, v23, type metadata accessor for DDMDeclaration);
        v50 = (v0 + 1016);
        if (v19)
        {
          v25 = *(v0 + 2456);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v25;
          v27 = inited + 32;
          *(inited + 40) = v17;
          *(inited + 48) = v18;
          sub_1001DFDA4(v17, v18, 1);
          v28 = v25;
        }

        else
        {
          v29 = *(v0 + 2448);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v29;
          v27 = inited + 32;
          *(v0 + 1784) = v17;
          v30 = v29;
          *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
          *(inited + 48) = v31;
        }

        v55 = *(v0 + 2576);
        v32 = *(v0 + 2080);
        v33 = *(v0 + 1944);
        v51 = *(v0 + 2104);
        v52 = *(v0 + 1936);
        v34 = *(v0 + 1840);
        v35 = *(v0 + 1832);
        v57 = *(v0 + 1808);
        v54 = *(v0 + 1800);
        v53 = sub_1005081AC(inited);
        swift_setDeallocating();
        sub_1000032A8(v27, &qword_100780EC0);
        v36 = (v51 + *(v32 + 88));
        v38 = *v36;
        v37 = v36[1];
        (*(v33 + 104))(v34 + v35[8], v55, v52);
        sub_10020A980(v54, v34 + v35[10]);
        *v34 = v53;
        *(v34 + 8) = 0u;
        *(v34 + 24) = 0u;
        *(v34 + 40) = 0;
        *(v34 + 48) = v38;
        *(v34 + 56) = v37;
        v39 = (v34 + v35[9]);
        v40 = *(v0 + 1064);
        v41 = *(v0 + 1080);
        v42 = *(v0 + 1096);
        *(v39 + 95) = *(v0 + 1111);
        v39[4] = v41;
        v39[5] = v42;
        v39[3] = v40;
        v44 = *(v0 + 1032);
        v43 = *(v0 + 1048);
        *v39 = *v50;
        v39[1] = v44;
        v39[2] = v43;
        *(v34 + v35[11]) = 0;
        *(v34 + v35[12]) = 0;
        v45 = v34 + v35[13];
        *v45 = 0;
        *(v45 + 8) = 1;
        *(v34 + v35[14]) = v57;
        sub_10020A7AC(v50, v0 + 1352);
        v46 = v57;
        sub_10026E620(v38, v37);
        v47 = swift_task_alloc();
        *(v0 + 2504) = v47;
        *v47 = v0;
        v47[1] = sub_10034A148;
        v48 = *(v0 + 1840);
        v49 = *(v0 + 1824);

        return sub_1005002C0(v49, v17, v18, v19, v48);
      }

      result = sub_1001DFEBC(v17, v18, v19);
    }
  }

  while (1)
  {
    v13 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v13 >= (((1 << *(v0 + 1239)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v0 + 2440);
    v11 = *(v12 + 8 * v13 + 56);
    ++v2;
    if (v11)
    {
      v2 = v13;
      goto LABEL_11;
    }
  }

  sub_10020A92C(v0 + 1016);

  v22 = *(v0 + 8);

  return v22(v56);
}

uint64_t sub_10034A148()
{
  *(*v1 + 2512) = v0;

  if (v0)
  {
    v2 = sub_10034C168;
  }

  else
  {
    v2 = sub_10034A25C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034A25C()
{
  v118 = v0;
  v1 = *(v0 + 2104);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 2000);
  v4 = *(v0 + 1944);
  v5 = *(v0 + 1936);
  v6 = (v1 + *(v2 + 52));
  v7 = *v6;
  *(v0 + 2520) = *v6;
  v8 = v6[1];
  *(v0 + 2528) = v8;
  sub_100005934(v1 + *(v2 + 72), v3, &qword_10077F340);
  v9 = 1;
  if ((*(v4 + 48))(v3, 1, v5) != 1)
  {
    v113 = v7;
    v10 = *(v0 + 2576);
    v11 = *(v0 + 1968);
    v12 = *(v0 + 1960);
    v13 = *(v0 + 1952);
    v14 = *(v0 + 1944);
    v15 = *(v0 + 1936);
    (*(v14 + 32))(v11, *(v0 + 2000), v15);
    v16 = *(v14 + 16);
    v16(v12, v11, v15);
    v16(v13, v12, v15);
    v17 = (*(v14 + 88))(v13, v15);
    if (v17 == v10)
    {
      v18 = 2588;
    }

    else
    {
      if (v17 != *(v0 + 2580))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      v18 = 2584;
    }

    v19 = *(v0 + v18);
    v111 = *(v0 + 2016);
    v20 = *(v0 + 1968);
    v21 = *(v0 + 1936);
    v22 = *(v0 + 1920);
    v23 = *(v0 + 1912);
    v24 = *(v0 + 1904);
    v25 = *(*(v0 + 1944) + 8);
    v25(*(v0 + 1960), v21);
    v25(v20, v21);
    (*(v23 + 104))(v22, v19, v24);
    (*(v23 + 32))(v111, v22, v24);
    v9 = 0;
    v7 = v113;
  }

  v26 = *(v0 + 2512);
  v27 = *(v0 + 2056);
  v28 = *(v0 + 2016);
  v29 = *(v0 + 1824);
  (*(*(v0 + 1912) + 56))(v28, v9, 1, *(v0 + 1904));
  sub_100340004(v29, v7, v8, v28, v27);
  if (v26)
  {
    v30 = *(v0 + 1824);
    sub_1000032A8(*(v0 + 2016), &qword_10077F338);
    sub_100352800(v30, type metadata accessor for AppStoreItem);
    v31 = *(v0 + 1351);
    v32 = *(v0 + 2496);
    v33 = *(v0 + 2488);
    v34 = *(v0 + 1808);
    sub_100352800(*(v0 + 1840), type metadata accessor for AppStorePurchaseRequest);
    static Logger.ddm.getter();
    v35 = v34;
    sub_1001DFDA4(v33, v32, v31);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    sub_1001DFEBC(v33, v32, v31);

    v38 = os_log_type_enabled(v36, v37);
    v39 = *(v0 + 1351);
    v40 = *(v0 + 2496);
    v41 = *(v0 + 2488);
    v42 = *(v0 + 2304);
    v43 = *(v0 + 2248);
    v114 = *(v0 + 2232);
    if (v38)
    {
      v103 = v36;
      v44 = *(v0 + 1808);
      v45 = swift_slowAlloc();
      v109 = v43;
      v46 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v117[0] = v105;
      *v45 = 138412802;
      *(v45 + 4) = v44;
      *v46 = v44;
      *(v45 + 12) = 2082;
      v47 = v44;
      v48 = StoreAppIdentifier.description.getter();
      v107 = v42;
      v50 = v49;
      sub_1001DFEBC(v41, v40, v39);
      v51 = sub_1002346CC(v48, v50, v117);

      *(v45 + 14) = v51;
      *(v45 + 22) = 2114;
      swift_errorRetain();
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v45 + 24) = v52;
      v46[1] = v52;
      _os_log_impl(&_mh_execute_header, v103, v37, "[%@] Dropping '%{public}s', failed to fetch metadata: %{public}@", v45, 0x20u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      sub_10000710C(v105);

      v107(v109, v114);
    }

    else
    {
      sub_1001DFEBC(v41, v40, v39);

      v42(v43, v114);
    }

    v60 = *(v0 + 2464);
    v57 = sub_100352800(*(v0 + 2104), type metadata accessor for DDMDeclaration);
    v61 = *(v0 + 2480);
    v62 = (*(v0 + 2472) - 1) & *(v0 + 2472);
    v115 = v60;
    *(v0 + 2464) = v60;
    while (v62)
    {
      v63 = *(v0 + 2440);
LABEL_21:
      *(v0 + 2480) = v61;
      *(v0 + 2472) = v62;
      v65 = *(v0 + 1792);
      v66 = __clz(__rbit64(v62));
      v62 &= v62 - 1;
      v67 = *(v63 + 48) + 24 * (v66 | (v61 << 6));
      v68 = *v67;
      *(v0 + 2488) = *v67;
      v69 = *(v67 + 8);
      *(v0 + 2496) = v69;
      v70 = *(v67 + 16);
      *(v0 + 1351) = v70;
      if (*(v65 + 16))
      {
        sub_1001DFDA4(v68, v69, v70);
        v71 = sub_100522E00(v68, v69, v70);
        if (v72)
        {
          v75 = *(v0 + 2104);
          v76 = *(v0 + 2096);
          sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v71, v76, type metadata accessor for DDMDeclaration);
          sub_100352490(v76, v75, type metadata accessor for DDMDeclaration);
          v116 = (v0 + 1016);
          if (v70)
          {
            v77 = *(v0 + 2456);
            sub_1001F0C48(&unk_100786730);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10069E680;
            *(inited + 32) = v77;
            v79 = inited + 32;
            *(inited + 40) = v68;
            *(inited + 48) = v69;
            sub_1001DFDA4(v68, v69, 1);
            v80 = v77;
          }

          else
          {
            v81 = *(v0 + 2448);
            sub_1001F0C48(&unk_100786730);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_10069E680;
            *(inited + 32) = v81;
            v79 = inited + 32;
            *(v0 + 1784) = v68;
            v82 = v81;
            *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
            *(inited + 48) = v83;
          }

          v110 = *(v0 + 2576);
          v84 = *(v0 + 2080);
          v85 = *(v0 + 1944);
          v102 = *(v0 + 2104);
          v104 = *(v0 + 1936);
          v86 = *(v0 + 1840);
          v87 = *(v0 + 1832);
          v112 = *(v0 + 1808);
          v108 = *(v0 + 1800);
          v106 = sub_1005081AC(inited);
          swift_setDeallocating();
          sub_1000032A8(v79, &qword_100780EC0);
          v88 = (v102 + *(v84 + 88));
          v90 = *v88;
          v89 = v88[1];
          (*(v85 + 104))(v86 + v87[8], v110, v104);
          sub_10020A980(v108, v86 + v87[10]);
          *v86 = v106;
          *(v86 + 8) = 0u;
          *(v86 + 24) = 0u;
          *(v86 + 40) = 0;
          *(v86 + 48) = v90;
          *(v86 + 56) = v89;
          v91 = (v86 + v87[9]);
          v92 = *(v0 + 1064);
          v93 = *(v0 + 1080);
          v94 = *(v0 + 1096);
          *(v91 + 95) = *(v0 + 1111);
          v91[4] = v93;
          v91[5] = v94;
          v91[3] = v92;
          v96 = *(v0 + 1032);
          v95 = *(v0 + 1048);
          *v91 = *v116;
          v91[1] = v96;
          v91[2] = v95;
          *(v86 + v87[11]) = 0;
          *(v86 + v87[12]) = 0;
          v97 = v86 + v87[13];
          *v97 = 0;
          *(v97 + 8) = 1;
          *(v86 + v87[14]) = v112;
          sub_10020A7AC(v116, v0 + 1352);
          v98 = v112;
          sub_10026E620(v90, v89);
          v99 = swift_task_alloc();
          *(v0 + 2504) = v99;
          *v99 = v0;
          v99[1] = sub_10034A148;
          v100 = *(v0 + 1840);
          v101 = *(v0 + 1824);

          return sub_1005002C0(v101, v68, v69, v70, v100);
        }

        v57 = sub_1001DFEBC(v68, v69, v70);
      }
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        return _swift_task_switch(v57, v58, v59);
      }

      if (v64 >= (((1 << *(v0 + 1239)) + 63) >> 6))
      {
        break;
      }

      v63 = *(v0 + 2440);
      v62 = *(v63 + 8 * v64 + 56);
      ++v61;
      if (v62)
      {
        v61 = v64;
        goto LABEL_21;
      }
    }

    sub_10020A92C(v0 + 1016);

    v73 = *(v0 + 8);

    return v73(v115);
  }

  else
  {
    v53 = *(v0 + 1351);
    v54 = *(v0 + 2496);
    v55 = *(v0 + 2488);
    v56 = *(v0 + 2288);
    sub_1000032A8(*(v0 + 2016), &qword_10077F338);
    sub_1001DFEBC(v55, v54, v53);
    static Date.now.getter();
    v57 = sub_10034AE74;
    v58 = v56;
    v59 = 0;

    return _swift_task_switch(v57, v58, v59);
  }
}

uint64_t sub_10034AE74()
{
  v7 = *(v0 + 2520);
  v1 = *(v0 + 2056);
  v2 = *(v0 + 1864);
  v3 = *(*(v0 + 2288) + 112);
  v4 = swift_task_alloc();
  *(v0 + 2536) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = 2;
  v5 = swift_task_alloc();
  *(v0 + 2544) = v5;
  *v5 = v0;
  v5[1] = sub_10034AF80;

  return sub_10052DB90(sub_100352478, v4, v3);
}

uint64_t sub_10034AF80()
{
  v2 = *v1;

  v3 = *(v2 + 2288);
  if (v0)
  {

    v4 = sub_1003528A0;
  }

  else
  {

    v4 = sub_10034B0DC;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10034B0DC()
{
  (*(v0[232] + 8))(v0[233], v0[231]);

  return _swift_task_switch(sub_10034B158, 0, 0);
}

uint64_t sub_10034B158()
{
  (*(*(v0 + 2040) + 16))(*(v0 + 2048), *(v0 + 2056), *(v0 + 2032));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 2464);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_24:
    v2 = sub_1003630A4(0, v2[2] + 1, 1, v2);
  }

  v4 = v2[2];
  v3 = v2[3];
  if (v4 >= v3 >> 1)
  {
    v2 = sub_1003630A4(v3 > 1, v4 + 1, 1, v2);
  }

  v57 = (v0 + 1016);
  v5 = *(v0 + 2056);
  v6 = *(v0 + 2048);
  v7 = *(v0 + 2040);
  v8 = *(v0 + 2032);
  v9 = *(v0 + 1840);
  sub_100352800(*(v0 + 1824), type metadata accessor for AppStoreItem);
  sub_100352800(v9, type metadata accessor for AppStorePurchaseRequest);
  v2[2] = v4 + 1;
  (*(v7 + 32))(v2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4, v6, v8);
  (*(v7 + 8))(v5, v8);
  sub_100352800(*(v0 + 2104), type metadata accessor for DDMDeclaration);
  v10 = *(v0 + 2480);
  v11 = (*(v0 + 2472) - 1) & *(v0 + 2472);
  *(v0 + 2464) = v2;
  while (v11)
  {
    v12 = *(v0 + 2440);
LABEL_11:
    *(v0 + 2480) = v10;
    *(v0 + 2472) = v11;
    v14 = *(v0 + 1792);
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = *(v12 + 48) + 24 * (v15 | (v10 << 6));
    v17 = *v16;
    *(v0 + 2488) = *v16;
    v18 = *(v16 + 8);
    *(v0 + 2496) = v18;
    v19 = *(v16 + 16);
    *(v0 + 1351) = v19;
    if (*(v14 + 16))
    {
      sub_1001DFDA4(v17, v18, v19);
      v20 = sub_100522E00(v17, v18, v19);
      if (v21)
      {
        v24 = *(v0 + 2104);
        v25 = *(v0 + 2096);
        sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v20, v25, type metadata accessor for DDMDeclaration);
        sub_100352490(v25, v24, type metadata accessor for DDMDeclaration);
        if (v19)
        {
          v26 = *(v0 + 2456);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v26;
          v28 = inited + 32;
          *(inited + 40) = v17;
          *(inited + 48) = v18;
          sub_1001DFDA4(v17, v18, 1);
          v29 = v26;
        }

        else
        {
          v30 = *(v0 + 2448);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v30;
          v28 = inited + 32;
          *(v0 + 1784) = v17;
          v31 = v30;
          *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
          *(inited + 48) = v32;
        }

        v55 = *(v0 + 2576);
        v33 = *(v0 + 2080);
        v34 = *(v0 + 1944);
        v51 = *(v0 + 2104);
        v52 = *(v0 + 1936);
        v35 = *(v0 + 1840);
        v36 = *(v0 + 1832);
        v56 = *(v0 + 1808);
        v54 = *(v0 + 1800);
        v53 = sub_1005081AC(inited);
        swift_setDeallocating();
        sub_1000032A8(v28, &qword_100780EC0);
        v37 = (v51 + *(v33 + 88));
        v39 = *v37;
        v38 = v37[1];
        (*(v34 + 104))(v35 + v36[8], v55, v52);
        sub_10020A980(v54, v35 + v36[10]);
        *v35 = v53;
        *(v35 + 8) = 0u;
        *(v35 + 24) = 0u;
        *(v35 + 40) = 0;
        *(v35 + 48) = v39;
        *(v35 + 56) = v38;
        v40 = (v35 + v36[9]);
        v41 = *(v0 + 1064);
        v42 = *(v0 + 1080);
        v43 = *(v0 + 1096);
        *(v40 + 95) = *(v0 + 1111);
        v40[4] = v42;
        v40[5] = v43;
        v40[3] = v41;
        v45 = *(v0 + 1032);
        v44 = *(v0 + 1048);
        *v40 = *v57;
        v40[1] = v45;
        v40[2] = v44;
        *(v35 + v36[11]) = 0;
        *(v35 + v36[12]) = 0;
        v46 = v35 + v36[13];
        *v46 = 0;
        *(v46 + 8) = 1;
        *(v35 + v36[14]) = v56;
        sub_10020A7AC(v57, v0 + 1352);
        v47 = v56;
        sub_10026E620(v39, v38);
        v48 = swift_task_alloc();
        *(v0 + 2504) = v48;
        *v48 = v0;
        v48[1] = sub_10034A148;
        v49 = *(v0 + 1840);
        v50 = *(v0 + 1824);

        return sub_1005002C0(v50, v17, v18, v19, v49);
      }

      sub_1001DFEBC(v17, v18, v19);
    }
  }

  while (1)
  {
    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_24;
    }

    if (v13 >= (((1 << *(v0 + 1239)) + 63) >> 6))
    {
      break;
    }

    v12 = *(v0 + 2440);
    v11 = *(v12 + 8 * v13 + 56);
    ++v10;
    if (v11)
    {
      v10 = v13;
      goto LABEL_11;
    }
  }

  sub_10020A92C(v57);

  v22 = *(v0 + 8);

  return v22(v2);
}

uint64_t sub_10034B91C()
{
  v1 = *(v0 + 1808);
  sub_100262C04(v0 + 696);
  static Logger.ddm.getter();
  v2 = v1;
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1808);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412546;
    *(v6 + 4) = v5;
    *v7 = v5;
    *(v6 + 12) = 2114;
    v8 = v5;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    v7[1] = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%@] Error looking up apps with Media API: %{public}@", v6, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
  }

  result = (*(v0 + 2304))(*(v0 + 2264), *(v0 + 2232));
  v11 = 0;
  v12 = *(v0 + 1768);
  *(v0 + 2440) = v12;
  v13 = *(v12 + 32);
  *(v0 + 1239) = v13;
  v14 = 1 << v13;
  v15 = *(v12 + 56);
  v16 = v14 < 64;
  v17 = -1 << v14;
  if (v16)
  {
    v18 = ~v17;
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & v15;
  *(v0 + 2448) = AMSBuyParamPropertyItemId;
  *(v0 + 2456) = AMSBuyParamPropertyBundleId;
  *(v0 + 2576) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.user(_:);
  *(v0 + 2580) = enum case for ManagedAppDeclaration.InstallBehavior.LicenseEnum.device(_:);
  *(v0 + 2584) = enum case for ManagedApp.License.device(_:);
  *(v0 + 2588) = enum case for ManagedApp.License.user(_:);
  *(v0 + 2464) = _swiftEmptyArrayStorage;
  while (v19)
  {
    v20 = *(v0 + 2440);
LABEL_14:
    *(v0 + 2480) = v11;
    *(v0 + 2472) = v19;
    v22 = *(v0 + 1792);
    v23 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v24 = *(v20 + 48) + 24 * (v23 | (v11 << 6));
    v25 = *v24;
    *(v0 + 2488) = *v24;
    v26 = *(v24 + 8);
    *(v0 + 2496) = v26;
    v27 = *(v24 + 16);
    *(v0 + 1351) = v27;
    if (*(v22 + 16))
    {
      sub_1001DFDA4(v25, v26, v27);
      v28 = sub_100522E00(v25, v26, v27);
      if (v29)
      {
        v31 = *(v0 + 2104);
        v32 = *(v0 + 2096);
        sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v28, v32, type metadata accessor for DDMDeclaration);
        sub_100352490(v32, v31, type metadata accessor for DDMDeclaration);
        v64 = (v0 + 1016);
        if (v27)
        {
          v33 = *(v0 + 2456);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v33;
          v35 = inited + 32;
          *(inited + 40) = v25;
          *(inited + 48) = v26;
          sub_1001DFDA4(v25, v26, 1);
          v36 = v33;
        }

        else
        {
          v37 = *(v0 + 2448);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v37;
          v35 = inited + 32;
          *(v0 + 1784) = v25;
          v38 = v37;
          *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
          *(inited + 48) = v39;
        }

        v62 = *(v0 + 2576);
        v40 = *(v0 + 2080);
        v41 = *(v0 + 1944);
        v58 = *(v0 + 2104);
        v59 = *(v0 + 1936);
        v42 = *(v0 + 1840);
        v43 = *(v0 + 1832);
        v63 = *(v0 + 1808);
        v61 = *(v0 + 1800);
        v60 = sub_1005081AC(inited);
        swift_setDeallocating();
        sub_1000032A8(v35, &qword_100780EC0);
        v44 = (v58 + *(v40 + 88));
        v46 = *v44;
        v45 = v44[1];
        (*(v41 + 104))(v42 + v43[8], v62, v59);
        sub_10020A980(v61, v42 + v43[10]);
        *v42 = v60;
        *(v42 + 8) = 0u;
        *(v42 + 24) = 0u;
        *(v42 + 40) = 0;
        *(v42 + 48) = v46;
        *(v42 + 56) = v45;
        v47 = (v42 + v43[9]);
        v48 = *(v0 + 1064);
        v49 = *(v0 + 1080);
        v50 = *(v0 + 1096);
        *(v47 + 95) = *(v0 + 1111);
        v47[4] = v49;
        v47[5] = v50;
        v47[3] = v48;
        v52 = *(v0 + 1032);
        v51 = *(v0 + 1048);
        *v47 = *v64;
        v47[1] = v52;
        v47[2] = v51;
        *(v42 + v43[11]) = 0;
        *(v42 + v43[12]) = 0;
        v53 = v42 + v43[13];
        *v53 = 0;
        *(v53 + 8) = 1;
        *(v42 + v43[14]) = v63;
        sub_10020A7AC(v64, v0 + 1352);
        v54 = v63;
        sub_10026E620(v46, v45);
        v55 = swift_task_alloc();
        *(v0 + 2504) = v55;
        *v55 = v0;
        v55[1] = sub_10034A148;
        v56 = *(v0 + 1840);
        v57 = *(v0 + 1824);

        return sub_1005002C0(v57, v25, v26, v27, v56);
      }

      result = sub_1001DFEBC(v25, v26, v27);
    }
  }

  while (1)
  {
    v21 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return result;
    }

    if (v21 >= (((1 << *(v0 + 1239)) + 63) >> 6))
    {
      break;
    }

    v20 = *(v0 + 2440);
    v19 = *(v20 + 8 * v21 + 56);
    ++v11;
    if (v19)
    {
      v11 = v21;
      goto LABEL_14;
    }
  }

  sub_10020A92C(v0 + 1016);

  v30 = *(v0 + 8);

  return v30(_swiftEmptyArrayStorage);
}

uint64_t sub_10034C168()
{
  v79 = v0;
  v1 = *(v0 + 1351);
  v2 = *(v0 + 2496);
  v3 = *(v0 + 2488);
  v4 = *(v0 + 1808);
  sub_100352800(*(v0 + 1840), type metadata accessor for AppStorePurchaseRequest);
  static Logger.ddm.getter();
  v5 = v4;
  sub_1001DFDA4(v3, v2, v1);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  sub_1001DFEBC(v3, v2, v1);

  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 1351);
  v10 = *(v0 + 2496);
  v11 = *(v0 + 2488);
  v12 = *(v0 + 2304);
  v13 = *(v0 + 2248);
  v75 = *(v0 + 2232);
  if (v8)
  {
    v66 = v6;
    v14 = *(v0 + 1808);
    v15 = swift_slowAlloc();
    v72 = v13;
    v16 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v78 = v68;
    *v15 = 138412802;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2082;
    v17 = v14;
    v18 = StoreAppIdentifier.description.getter();
    v70 = v12;
    v20 = v19;
    sub_1001DFEBC(v11, v10, v9);
    v21 = sub_1002346CC(v18, v20, &v78);

    *(v15 + 14) = v21;
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v22;
    v16[1] = v22;
    _os_log_impl(&_mh_execute_header, v66, v7, "[%@] Dropping '%{public}s', failed to fetch metadata: %{public}@", v15, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v68);

    v70(v72, v75);
  }

  else
  {
    sub_1001DFEBC(v11, v10, v9);

    v12(v13, v75);
  }

  v23 = *(v0 + 2464);
  result = sub_100352800(*(v0 + 2104), type metadata accessor for DDMDeclaration);
  v25 = *(v0 + 2480);
  v26 = (*(v0 + 2472) - 1) & *(v0 + 2472);
  v76 = v23;
  *(v0 + 2464) = v23;
  while (v26)
  {
    v27 = *(v0 + 2440);
LABEL_11:
    *(v0 + 2480) = v25;
    *(v0 + 2472) = v26;
    v29 = *(v0 + 1792);
    v30 = __clz(__rbit64(v26));
    v26 &= v26 - 1;
    v31 = *(v27 + 48) + 24 * (v30 | (v25 << 6));
    v32 = *v31;
    *(v0 + 2488) = *v31;
    v33 = *(v31 + 8);
    *(v0 + 2496) = v33;
    v34 = *(v31 + 16);
    *(v0 + 1351) = v34;
    if (*(v29 + 16))
    {
      sub_1001DFDA4(v32, v33, v34);
      v35 = sub_100522E00(v32, v33, v34);
      if (v36)
      {
        v38 = *(v0 + 2104);
        v39 = *(v0 + 2096);
        sub_1003524F8(*(*(v0 + 1792) + 56) + *(*(v0 + 2088) + 72) * v35, v39, type metadata accessor for DDMDeclaration);
        sub_100352490(v39, v38, type metadata accessor for DDMDeclaration);
        v77 = (v0 + 1016);
        if (v34)
        {
          v40 = *(v0 + 2456);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v40;
          v42 = inited + 32;
          *(inited + 40) = v32;
          *(inited + 48) = v33;
          sub_1001DFDA4(v32, v33, 1);
          v43 = v40;
        }

        else
        {
          v44 = *(v0 + 2448);
          sub_1001F0C48(&unk_100786730);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_10069E680;
          *(inited + 32) = v44;
          v42 = inited + 32;
          *(v0 + 1784) = v32;
          v45 = v44;
          *(inited + 40) = dispatch thunk of CustomStringConvertible.description.getter();
          *(inited + 48) = v46;
        }

        v73 = *(v0 + 2576);
        v47 = *(v0 + 2080);
        v48 = *(v0 + 1944);
        v65 = *(v0 + 2104);
        v67 = *(v0 + 1936);
        v49 = *(v0 + 1840);
        v50 = *(v0 + 1832);
        v74 = *(v0 + 1808);
        v71 = *(v0 + 1800);
        v69 = sub_1005081AC(inited);
        swift_setDeallocating();
        sub_1000032A8(v42, &qword_100780EC0);
        v51 = (v65 + *(v47 + 88));
        v53 = *v51;
        v52 = v51[1];
        (*(v48 + 104))(v49 + v50[8], v73, v67);
        sub_10020A980(v71, v49 + v50[10]);
        *v49 = v69;
        *(v49 + 8) = 0u;
        *(v49 + 24) = 0u;
        *(v49 + 40) = 0;
        *(v49 + 48) = v53;
        *(v49 + 56) = v52;
        v54 = (v49 + v50[9]);
        v55 = *(v0 + 1064);
        v56 = *(v0 + 1080);
        v57 = *(v0 + 1096);
        *(v54 + 95) = *(v0 + 1111);
        v54[4] = v56;
        v54[5] = v57;
        v54[3] = v55;
        v59 = *(v0 + 1032);
        v58 = *(v0 + 1048);
        *v54 = *v77;
        v54[1] = v59;
        v54[2] = v58;
        *(v49 + v50[11]) = 0;
        *(v49 + v50[12]) = 0;
        v60 = v49 + v50[13];
        *v60 = 0;
        *(v60 + 8) = 1;
        *(v49 + v50[14]) = v74;
        sub_10020A7AC(v77, v0 + 1352);
        v61 = v74;
        sub_10026E620(v53, v52);
        v62 = swift_task_alloc();
        *(v0 + 2504) = v62;
        *v62 = v0;
        v62[1] = sub_10034A148;
        v63 = *(v0 + 1840);
        v64 = *(v0 + 1824);

        return sub_1005002C0(v64, v32, v33, v34, v63);
      }

      result = sub_1001DFEBC(v32, v33, v34);
    }
  }

  while (1)
  {
    v28 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      return result;
    }

    if (v28 >= (((1 << *(v0 + 1239)) + 63) >> 6))
    {
      break;
    }

    v27 = *(v0 + 2440);
    v26 = *(v27 + 8 * v28 + 56);
    ++v25;
    if (v26)
    {
      v25 = v28;
      goto LABEL_11;
    }
  }

  sub_10020A92C(v0 + 1016);

  v37 = *(v0 + 8);

  return v37(v76);
}

uint64_t sub_10034CA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[68] = a4;
  v4[67] = a3;
  v4[66] = a2;
  v4[65] = a1;
  v5 = sub_1001F0C48(&qword_10077F148);
  v4[69] = v5;
  v4[70] = *(v5 - 8);
  v4[71] = swift_task_alloc();
  v6 = type metadata accessor for ManagedApp();
  v4[72] = v6;
  v4[73] = *(v6 - 8);
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v7 = type metadata accessor for URL();
  v4[76] = v7;
  v8 = *(v7 - 8);
  v4[77] = v8;
  v4[78] = *(v8 + 64);
  v4[79] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v4[80] = swift_task_alloc();
  v4[81] = swift_task_alloc();
  sub_1001F0C48(&qword_100780EF8);
  v4[82] = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_100780F00);
  v4[83] = v9;
  v4[84] = *(v9 - 8);
  v4[85] = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_100780E50);
  v4[86] = v10;
  v4[87] = *(v10 - 8);
  v4[88] = swift_task_alloc();

  return _swift_task_switch(sub_10034CD44, 0, 0);
}

uint64_t sub_10034CD44()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(*sub_100006D8C(v2, v2[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_declarationStore);
  *(v0 + 712) = v3;
  v4 = (*sub_100006D8C(v2, v2[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v5 = *(v4 + 95);
  v6 = v4[5];
  v7 = v4[3];
  *(v0 + 80) = v4[4];
  *(v0 + 96) = v6;
  *(v0 + 111) = v5;
  *(v0 + 64) = v7;
  v8 = *v4;
  v9 = v4[2];
  *(v0 + 32) = v4[1];
  *(v0 + 48) = v9;
  *(v0 + 16) = v8;
  v10 = objc_opt_self();
  v52 = v3;

  sub_10020A7AC(v0 + 16, v0 + 128);
  v11 = [v10 ephemeralSessionConfiguration];
  [v11 setHTTPShouldSetCookies:0];
  [v11 setHTTPCookieAcceptPolicy:1];
  [v11 setRequestCachePolicy:1];
  sub_10043D15C(1);
  v12 = [objc_opt_self() sessionWithConfiguration:v11];

  type metadata accessor for PlainHTTP();
  v13 = swift_allocObject();
  *(v0 + 720) = v13;
  *(v13 + 24) = 1;
  *(v13 + 16) = v12;
  v14 = *(v1 + 16);
  if (v14)
  {
    v15 = v13;
    v16 = *(v0 + 696);
    v49 = (*(v0 + 704) + *(*(v0 + 688) + 48));
    v50 = *(v0 + 616);
    v17 = *(v0 + 544) + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v48 = **(v0 + 528);
    v46 = *(v16 + 72);
    v47 = *(v0 + 624) + 7;
    v51 = v15;
    do
    {
      v60 = v14;
      v20 = *(v0 + 704);
      v21 = *(v0 + 648);
      v57 = v21;
      v58 = *(v0 + 640);
      v22 = *(v0 + 632);
      v23 = *(v0 + 608);
      v53 = v22;
      v59 = v17;
      sub_100005934(v17, v20, &qword_100780E50);
      v55 = v49[1];
      v56 = *v49;
      v24 = type metadata accessor for TaskPriority();
      v54 = *(v24 - 8);
      (*(v54 + 56))(v21, 1, 1, v24);
      v25 = *(v50 + 32);
      v25(v22, v20, v23);
      v26 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v27 = (v47 + v26) & 0xFFFFFFFFFFFFFFF8;
      v28 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
      v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
      v30 = swift_allocObject();
      *(v30 + 16) = 0;
      *(v30 + 24) = 0;
      v25(v30 + v26, v53, v23);
      v31 = (v30 + v27);
      *v31 = v56;
      v31[1] = v55;
      *(v30 + v28) = v51;
      v32 = (v30 + v29);
      v33 = *(v0 + 96);
      v32[4] = *(v0 + 80);
      v32[5] = v33;
      *(v32 + 95) = *(v0 + 111);
      v34 = *(v0 + 32);
      *v32 = *(v0 + 16);
      v32[1] = v34;
      v35 = *(v0 + 64);
      v32[2] = *(v0 + 48);
      v32[3] = v35;
      *(v30 + ((v29 + 118) & 0xFFFFFFFFFFFFFFF8)) = v52;
      sub_100005934(v57, v58, &unk_100780380);
      LODWORD(v27) = (*(v54 + 48))(v58, 1, v24);

      v36 = *(v0 + 640);
      v37 = v0 + 16;
      if (v27 == 1)
      {
        sub_10020A7AC(v37, v0 + 240);

        sub_1000032A8(v36, &unk_100780380);
      }

      else
      {
        sub_10020A7AC(v37, v0 + 352);

        TaskPriority.rawValue.getter();
        (*(v54 + 8))(v36, v24);
      }

      if (*(v30 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v38 = dispatch thunk of Actor.unownedExecutor.getter();
        v40 = v39;
        swift_unknownObjectRelease();
      }

      else
      {
        v38 = 0;
        v40 = 0;
      }

      v41 = swift_allocObject();
      *(v41 + 16) = &unk_1006A3098;
      *(v41 + 24) = v30;

      if (v40 | v38)
      {
        v18 = v0 + 464;
        *(v0 + 464) = 0;
        *(v0 + 472) = 0;
        *(v0 + 480) = v38;
        *(v0 + 488) = v40;
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v0 + 648);
      *(v0 + 496) = 1;
      *(v0 + 504) = v18;
      *(v0 + 512) = v48;
      swift_task_create();

      sub_1000032A8(v19, &unk_100780380);
      v17 = v59 + v46;
      v14 = v60 - 1;
    }

    while (v60 != 1);
  }

  sub_10020A92C(v0 + 16);
  TaskGroup.makeAsyncIterator()();
  *(v0 + 728) = _swiftEmptyArrayStorage;
  v42 = swift_task_alloc();
  *(v0 + 736) = v42;
  *v42 = v0;
  v42[1] = sub_10034D348;
  v43 = *(v0 + 664);
  v44 = *(v0 + 656);

  return TaskGroup.Iterator.next(isolation:)(v44, 0, 0, v43);
}

uint64_t sub_10034D348()
{

  return _swift_task_switch(sub_10034D444, 0, 0);
}

uint64_t sub_10034D444()
{
  v1 = v0[82];
  if ((*(v0[70] + 48))(v1, 1, v0[69]) == 1)
  {
    v2 = v0[91];
    v3 = v0[65];
    (*(v0[84] + 8))(v0[85], v0[83]);

    *v3 = v2;

    v4 = v0[1];

    return v4();
  }

  else
  {
    v6 = v0[73];
    v7 = v0[72];
    v8 = v0[71];
    sub_10020A668(v1, v8, &qword_10077F148);
    if ((*(v6 + 48))(v8, 1, v7) == 1)
    {
      sub_1000032A8(v0[71], &qword_10077F148);
    }

    else
    {
      v9 = v0[75];
      v10 = v0[74];
      v11 = v0[73];
      v12 = v0[72];
      v13 = *(v11 + 32);
      v13(v9, v0[71], v12);
      (*(v11 + 16))(v10, v9, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v0[91];
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v15 = sub_1003630A4(0, *(v15 + 2) + 1, 1, v0[91]);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = sub_1003630A4(v16 > 1, v17 + 1, 1, v15);
      }

      v18 = v0[74];
      v19 = v0[73];
      v20 = v0[72];
      (*(v19 + 8))(v0[75], v20);
      *(v15 + 2) = v17 + 1;
      v13(&v15[((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v17], v18, v20);
      v0[91] = v15;
    }

    v21 = swift_task_alloc();
    v0[92] = v21;
    *v21 = v0;
    v21[1] = sub_10034D348;
    v22 = v0[83];
    v23 = v0[82];

    return TaskGroup.Iterator.next(isolation:)(v23, 0, 0, v22);
  }
}

uint64_t sub_10034D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = a8;
  v8[8] = v15;
  v8[5] = a6;
  v8[6] = a7;
  v8[3] = a4;
  v8[4] = a5;
  v8[2] = a1;
  v9 = type metadata accessor for Logger();
  v8[9] = v9;
  v8[10] = *(v9 - 8);
  v8[11] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v8[14] = swift_task_alloc();
  v11 = type metadata accessor for URL();
  v8[15] = v11;
  v8[16] = *(v11 - 8);
  v8[17] = swift_task_alloc();
  type metadata accessor for EnterpriseApp();
  v8[18] = swift_task_alloc();
  v12 = type metadata accessor for ManagedApp();
  v8[19] = v12;
  v8[20] = *(v12 - 8);
  v8[21] = swift_task_alloc();

  return _swift_task_switch(sub_10034D9AC, 0, 0);
}

uint64_t sub_10034D9AC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  v5 = sub_100625FA0();
  v0[22] = v5;
  (*(v2 + 16))(v1, v4, v3);

  v6 = v5;
  v7 = swift_task_alloc();
  v0[23] = v7;
  *v7 = v0;
  v7[1] = sub_10034DAA4;
  v9 = v0[17];
  v8 = v0[18];
  v10 = v0[6];

  return sub_10035562C(v8, v9, v10, v6);
}

uint64_t sub_10034DAA4()
{
  v2 = *v1;
  v2[24] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10034DD34, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[25] = v3;
    *v3 = v2;
    v3[1] = sub_10034DC20;
    v4 = v2[21];
    v5 = v2[22];
    v6 = v2[18];
    v7 = v2[6];
    v8 = v2[7];
    v9 = v2[4];
    v10 = v2[5];

    return sub_100341050(v4, v6, v9, v10, v7, v8, v5);
  }
}

uint64_t sub_10034DC20()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_10034E2B8;
  }

  else
  {
    v2 = sub_10034DFB8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10034DD34()
{
  v19 = v0;

  static Logger.vpp.getter();

  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  if (v3)
  {
    v17 = *(v0 + 88);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v16 = *(v0 + 72);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v9 = 138412802;
    v12 = sub_100625FA0();
    *(v9 + 4) = v12;
    *v10 = v12;
    *(v9 + 12) = 2082;
    *(v9 + 14) = sub_1002346CC(v7, v8, &v18);
    *(v9 + 22) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    v10[1] = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "[%@] Dropping '%{public}s', failed to fetch metadata: %{public}@", v9, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v11);

    (*(v5 + 8))(v17, v16);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  (*(*(v0 + 160) + 56))(*(v0 + 16), 1, 1, *(v0 + 152));

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10034DFB8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 64);

  sub_100352800(v1, type metadata accessor for EnterpriseApp);
  static Date.now.getter();

  return _swift_task_switch(sub_10034E058, v2, 0);
}

uint64_t sub_10034E058()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 112);
  v7 = *(v0 + 32);
  v3 = *(*(v0 + 64) + 112);
  v4 = swift_task_alloc();
  *(v0 + 216) = v4;
  *(v4 + 16) = v7;
  *(v4 + 32) = v2;
  *(v4 + 40) = v1;
  *(v4 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *v5 = v0;
  v5[1] = sub_10034E15C;

  return sub_10052DB90(sub_100352884, v4, v3);
}

uint64_t sub_10034E15C()
{
  v2 = *v1;

  v3 = *(v2 + 64);
  if (v0)
  {

    v4 = sub_1003528A4;
  }

  else
  {

    v4 = sub_10034E55C;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_10034E2B8()
{
  v20 = v0;
  v1 = *(v0 + 144);

  sub_100352800(v1, type metadata accessor for EnterpriseApp);
  static Logger.vpp.getter();

  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  v4 = os_log_type_enabled(v2, v3);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 72);
  if (v4)
  {
    v18 = *(v0 + 88);
    v8 = *(v0 + 32);
    v9 = *(v0 + 40);
    v17 = *(v0 + 72);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 138412802;
    v13 = sub_100625FA0();
    *(v10 + 4) = v13;
    *v11 = v13;
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_1002346CC(v8, v9, &v19);
    *(v10 + 22) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 24) = v14;
    v11[1] = v14;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Dropping '%{public}s', failed to fetch metadata: %{public}@", v10, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v12);

    (*(v6 + 8))(v18, v17);
  }

  else
  {

    (*(v6 + 8))(v5, v7);
  }

  (*(*(v0 + 160) + 56))(*(v0 + 16), 1, 1, *(v0 + 152));

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10034E55C()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  return _swift_task_switch(sub_10034E5D4, 0, 0);
}

uint64_t sub_10034E5D4()
{
  (*(v0[20] + 32))(v0[2], v0[21], v0[19]);
  (*(v0[20] + 56))(v0[2], 0, 1, v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_10034E6B0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  sub_1001F0C48(&qword_10077F360);
  v2[4] = swift_task_alloc();

  return _swift_task_switch(sub_10034E74C, 0, 0);
}

uint64_t sub_10034E74C()
{
  v1 = v0[4];
  v2 = type metadata accessor for Locale.Language();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_10034E83C;
  v5 = v0[3];
  v4 = v0[4];

  return sub_100373724(v5, v4);
}

uint64_t sub_10034E83C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 48) = v1;

  sub_1000032A8(*(v4 + 32), &qword_10077F360);
  if (v1)
  {

    return _swift_task_switch(sub_10034E9BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_10034E9BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10034EA20(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_10034EB0C;

  return v5();
}

uint64_t sub_10034EB0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_10034EC1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, int32x2_t *a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v170 = a6;
  v158 = a4;
  v161 = a3;
  v160 = a2;
  v159 = a7;
  v11 = sub_1001F0C48(&qword_10077F338);
  __chkstk_darwin(v11 - 8);
  v157 = v136 - v12;
  v13 = sub_1001F0C48(&qword_100780DF8);
  __chkstk_darwin(v13 - 8);
  v156 = v136 - v14;
  v174 = type metadata accessor for ManagedApp.Artwork();
  v176 = *(v174 - 8);
  __chkstk_darwin(v174);
  v155 = v136 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Locale.Language();
  *&v177 = *(v196 - 8);
  __chkstk_darwin(v196);
  v162 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v17 - 8);
  v168 = v136 - v18;
  v19 = sub_1001F0C48(&unk_1007809F0);
  v20 = __chkstk_darwin(v19 - 8);
  v22 = v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v163 = v136 - v24;
  __chkstk_darwin(v23);
  v26 = v136 - v25;
  v27 = sub_1001F0C48(&qword_100780E00);
  __chkstk_darwin(v27 - 8);
  v167 = v136 - v28;
  v29 = sub_1001F0C48(&qword_10077EF30);
  __chkstk_darwin(v29 - 8);
  v31 = v136 - v30;
  v32 = sub_1001F0C48(&qword_10077F360);
  __chkstk_darwin(v32 - 8);
  v166 = v136 - v33;
  v34 = sub_1001F0C48(&qword_100780E10);
  __chkstk_darwin(v34 - 8);
  v165 = v136 - v35;
  v36 = sub_1001F0C48(&unk_1007803A0);
  __chkstk_darwin(v36 - 8);
  v38 = v136 - v37;
  v173 = type metadata accessor for Platform();
  v172 = *(v173 - 8);
  v39 = __chkstk_darwin(v173);
  v164 = v136 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __chkstk_darwin(v39);
  v171 = v136 - v42;
  v43 = __chkstk_darwin(v41);
  v45 = v136 - v44;
  __chkstk_darwin(v43);
  v175 = v136 - v46;
  v47 = a1;
  v48 = *a1;
  v49 = a1[1];

  v50 = sub_1005B7724(v48, v49);
  if (v51)
  {
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    *v52 = xmmword_1006A2F20;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v154 = v26;
  v152 = v22;
  v153 = v31;
  v151 = v50;
  LODWORD(v150) = a5;
  if (a5 > 1u)
  {
    if (a5 == 2)
    {
      static Platform.tvOS.getter();
    }

    else
    {
      static Platform.visionOS.getter();
    }
  }

  else if (a5)
  {
    static Platform.iOS.getter();
  }

  else
  {
    static Platform.macOS.getter();
  }

  v54 = v172;
  v55 = v175;
  v56 = v173;
  (*(v172 + 32))(v175, v45, v173);
  v57 = sub_1004FF904();
  sub_100373074(v171, v55, v57, &v179);
  if (v8)
  {
    (*(v54 + 8))(v55, v56);
  }

  v145 = 0;

  URLComponents.init(string:)();
  v58 = type metadata accessor for URLComponents();
  v59 = *(v58 - 8);
  if ((*(v59 + 48))(v38, 1, v58) == 1)
  {
    sub_1000032A8(v38, &unk_1007803A0);
LABEL_16:
    v61 = 0;
    v63 = 0;
    goto LABEL_17;
  }

  v60 = URLComponents.queryItems.getter();
  (*(v59 + 8))(v38, v58);
  if (!v60)
  {
    goto LABEL_16;
  }

  v61 = sub_1005D6ABC(108, 0xE100000000000000, v60);
  v63 = v62;

LABEL_17:
  v64 = type metadata accessor for MediaAPIApp(0);
  v147 = (v47 + *(v64 + 24));
  v65 = v147[8];
  v146 = v64;
  v143 = v61;
  if (!v65)
  {
    goto LABEL_21;
  }

  v66 = String.lowercased()();
  if (!*(v65 + 16))
  {
    v70 = v63;

    goto LABEL_23;
  }

  v67 = sub_10052213C(v66._countAndFlagsBits, v66._object);
  v69 = v68;

  if ((v69 & 1) == 0)
  {
LABEL_21:
    v70 = v63;
LABEL_23:
    v144 = 0;
    v148 = 0;
    goto LABEL_24;
  }

  v70 = v63;
  v71 = *(v65 + 56) + 32 * v67;
  v72 = *(v71 + 24);
  v144 = *(v71 + 16);
  v148 = v72;

LABEL_24:
  v149 = sub_10037E78C(v175, v170);
  v73 = v189;
  v74 = *(v189 + 16);
  if (!v74)
  {
LABEL_30:

    sub_10026E6B8(&v179);
    type metadata accessor for InternalError();
    sub_100274098();
    swift_allocError();
    *v78 = xmmword_1006A2F10;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v79 = *(v172 + 8);
    v80 = v173;
    v79(v171, v173);
    return (v79)(v175, v80);
  }

  v75 = 0;
  v76 = (v189 + 48);
  while (1)
  {
    if (v75 >= *(v73 + 16))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:

      __break(1u);
      return result;
    }

    v169 = *(v76 - 2);
    if ((*v76 & 1) == 0)
    {
      break;
    }

    v77 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v77)
    {
      goto LABEL_32;
    }

    ++v75;

    v76 += 24;
    if (v74 == v75)
    {
      goto LABEL_30;
    }
  }

LABEL_32:
  v81 = *(&v179 + 1);
  v142 = v179;
  (*(v172 + 16))(v164, v171, v173);
  v141 = v81;

  v82 = v47;
  sub_100373EF4(v170, v165);
  if (v70)
  {
    v83 = v166;
    Locale.Language.init(identifier:)();
    v84 = 0;
  }

  else
  {
    v84 = 1;
    v83 = v166;
  }

  v85 = v162;
  v86 = v147;
  (*(v177 + 56))(v83, v84, 1, v196);
  v87 = v86[3];
  v170 = v86[2];
  v88 = v86[5];
  v143 = v87;
  if (v88)
  {
    v89 = v86 + 4;
    v150 = v88;
    goto LABEL_37;
  }

  v90 = *v86;
  v91 = *(*v86 + 16);

  if (v91 && (v92 = sub_100522C58(v150), (v93 & 1) != 0))
  {
    v94 = *(v90 + 56) + 184 * v92;
    v89 = (v94 + 160);
    v150 = *(v94 + 168);
LABEL_37:
    v140 = *v89;
  }

  else
  {
    v140 = 0;
    v150 = 0;
  }

  v95 = v86[7];
  v96 = *(v82 + *(v146 + 7));
  v139 = v86[6];
  if (v96 >= 2 && (v97 = *(v96 + 16)) != 0)
  {
    v178 = _swiftEmptyArrayStorage;

    sub_100526304(0, v97, 0);
    v98 = v178;
    v99 = (v96 + 40);
    do
    {
      v101 = *(v99 - 1);
      v100 = *v99;
      v178 = v98;
      v103 = v98[2];
      v102 = v98[3];

      if (v103 >= v102 >> 1)
      {
        sub_100526304((v102 > 1), v103 + 1, 1);
        v98 = v178;
      }

      v98[2] = v103 + 1;
      v104 = &v98[2 * v103];
      v104[4] = v101;
      v104[5] = v100;
      v99 += 2;
      --v97;
    }

    while (v97);
    v85 = v162;
  }

  else
  {

    v98 = _swiftEmptyArrayStorage;
  }

  v105 = v149;
  v138 = v188;
  if (v188)
  {
    v137 = v187;
  }

  else
  {
    v137 = 0;
  }

  v146 = v98;
  v162 = v95;
  v106 = v186;
  v107 = *(v186 + 16);
  if (v107)
  {
    v178 = _swiftEmptyArrayStorage;
    sub_1005265B8(0, v107, 0);
    v108 = v178;
    v109 = v106 + 40;
    do
    {

      Locale.Language.init(identifier:)();
      v178 = v108;
      v111 = v108[2];
      v110 = v108[3];
      if (v111 >= v110 >> 1)
      {
        sub_1005265B8(v110 > 1, v111 + 1, 1);
        v108 = v178;
      }

      v108[2] = v111 + 1;
      (*(v177 + 32))(v108 + ((*(v177 + 80) + 32) & ~*(v177 + 80)) + *(v177 + 72) * v111, v85, v196);
      v109 += 16;
      --v107;
    }

    while (v107);
    v105 = v149;
  }

  v196 = v181;
  v191 = v181;
  v192 = v182;
  v177 = v184;
  v194 = v184;
  v136[3] = v183;
  v193 = v183;
  v195 = v185;
  v149 = v182;

  sub_10037419C(v153);
  v136[2] = v177;

  v112 = v167;
  ManagedApp.Artwork.init(urlTemplate:maxWidth:maxHeight:)();
  (*(v176 + 56))(v112, 0, 1, v174);
  v113 = type metadata accessor for URL();
  (*(*(v113 - 8) + 56))(v154, 1, 1, v113);
  v114 = type metadata accessor for FilePath();
  (*(*(v114 - 8) + 56))(v168, 1, 1, v114);
  v115 = sub_1003500B4(v190);
  v116 = v105[2];
  v117 = v105 + 4;
  if (v116)
  {
    v118 = 0;
    while (1)
    {
      if (*(v115 + 16))
      {
        sub_100522D38(*(v117 + v118));
        if (v119)
        {
          break;
        }
      }

      if (v116 == ++v118)
      {
        goto LABEL_65;
      }
    }

    v116 = v118;
  }

LABEL_65:
  v120 = v105[2];
  if (v116 == v120)
  {

    goto LABEL_75;
  }

  if (v116 >= v120)
  {
    goto LABEL_79;
  }

  if (!*(v115 + 16))
  {
    goto LABEL_80;
  }

  v121 = sub_100522D38(*(v117 + v116));
  if ((v122 & 1) == 0)
  {
    goto LABEL_80;
  }

  v123 = *(*(v115 + 56) + 8 * v121);

  v124 = *(v123 + 16);
  if (v124)
  {
    v178 = _swiftEmptyArrayStorage;
    sub_100526574(0, v124, 0);
    v125 = v178;
    *&v177 = v176 + 32;
    v136[1] = v123;
    v126 = v123 + 56;
    v127 = v155;
    do
    {

      ManagedApp.Artwork.init(urlTemplate:maxWidth:maxHeight:)();
      v178 = v125;
      v129 = v125[2];
      v128 = v125[3];
      if (v129 >= v128 >> 1)
      {
        sub_100526574(v128 > 1, v129 + 1, 1);
        v125 = v178;
      }

      v126 += 32;
      v125[2] = v129 + 1;
      (*(v176 + 32))(v125 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v129, v127, v174);
      --v124;
    }

    while (v124);
  }

LABEL_75:

  v130 = v147;
  v131 = v147[9];
  if (!v147[10])
  {
    v131 = 0;
  }

  v176 = v131;
  *&v177 = v180;
  v132 = type metadata accessor for MediaAPIApp.Attributes(0);
  sub_100005934(v130 + *(v132 + 64), v163, &unk_1007809F0);
  sub_100005934(v130 + *(v132 + 60), v152, &unk_1007809F0);
  LODWORD(v174) = *(v130 + 120);
  v133 = type metadata accessor for ManagedApp.BinaryCompatibility();
  (*(*(v133 - 8) + 56))(v156, 1, 1, v133);
  sub_100005934(v158, v157, &qword_10077F338);

  ManagedApp.init(declarationIdentifier:bundleID:itemID:externalVersionID:platform:fileSize:metadataLanguage:name:subtitle:seller:genres:description:languages:requirements:version:releaseDate:releaseNotes:icon:iconURL:iconPath:screenshots:contentRating:developerWebsite:privacyPolicy:hasLicenseAgreement:copyright:buyParams:scope:binaryCompatibility:license:)();
  sub_10026E6B8(&v179);
  v134 = *(v172 + 8);
  v135 = v173;
  v134(v171, v173);
  return (v134)(v175, v135);
}

uint64_t sub_1003500B4(uint64_t a1)
{
  v2 = sub_100529FD4(_swiftEmptyArrayStorage);
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = *(a1 + 48) + 24 * v10;
    v12 = *v11;
    v13 = *(v11 + 8);
    if (*(v11 + 16))
    {
      sub_1001DFDA4(*v11, *(v11 + 8), 1);
      sub_1001DFEBC(v12, v13, 1);
    }

    else
    {
      v14 = *(*(a1 + 56) + 8 * v10);
      sub_1001DFDA4(v12, v13, 0);
      v28 = v14;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v16 = sub_100522D38(v12);
      v18 = v2[2];
      v19 = (v17 & 1) == 0;
      v20 = __OFADD__(v18, v19);
      v21 = v18 + v19;
      if (v20)
      {
        goto LABEL_22;
      }

      v22 = v17;
      if (v2[3] >= v21)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v26 = v16;
          sub_1005C52E0();
          v16 = v26;
        }
      }

      else
      {
        sub_1005BBF48(v21, isUniquelyReferenced_nonNull_native);
        v16 = sub_100522D38(v12);
        if ((v22 & 1) != (v23 & 1))
        {
          goto LABEL_24;
        }
      }

      if (v22)
      {
        *(v2[7] + 8 * v16) = v28;
      }

      else
      {
        v2[(v16 >> 6) + 8] |= 1 << v16;
        *(v2[6] + v16) = v12;
        *(v2[7] + 8 * v16) = v28;

        v24 = v2[2];
        v20 = __OFADD__(v24, 1);
        v25 = v24 + 1;
        if (v20)
        {
          goto LABEL_23;
        }

        v2[2] = v25;
      }
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100350308(uint64_t a1)
{
  v1 = *(a1 + 136);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_100350320(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10020B194;

  return v6(a1);
}

uint64_t sub_100350418(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_10035289C;

  return v6(a1);
}

uint64_t sub_100350564(uint64_t a1, int a2, uint64_t *a3)
{
  v129 = a3;
  v126 = a2;
  v114[0] = a1;
  v145 = type metadata accessor for DDMDeclaration(0);
  v122 = *(v145 - 8);
  v3 = __chkstk_darwin(v145);
  v118 = v114 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v123 = v114 - v6;
  v7 = __chkstk_darwin(v5);
  v127 = v114 - v8;
  __chkstk_darwin(v7);
  v132 = v114 - v9;
  v144 = sub_1001F0C48(&qword_100780E60);
  v147 = *(v144 - 8);
  __chkstk_darwin(v144);
  v143 = v114 - v10;
  v11 = sub_1001F0C48(&unk_1007809E0);
  v12 = __chkstk_darwin(v11 - 8);
  v149 = v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v142 = v114 - v14;
  v15 = sub_1001F0C48(&qword_100780EC8);
  v16 = __chkstk_darwin(v15 - 8);
  v124 = v114 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = v114 - v19;
  __chkstk_darwin(v18);
  v120 = v114 - v21;
  v148 = sub_1001F0C48(&qword_100780ED0);
  v146 = *(v148 - 8);
  v22 = __chkstk_darwin(v148);
  v116 = v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v22);
  v141 = v114 - v25;
  __chkstk_darwin(v24);
  v119 = v114 - v26;
  v27 = sub_1001F0C48(&qword_100780E38);
  v28 = *(v27 - 8);
  __chkstk_darwin(v27);
  v30 = v114 - v29;
  v140 = sub_1001F0C48(&qword_100780E98) - 8;
  __chkstk_darwin(v140);
  v32 = v114 - v31;
  v139 = sub_1001F0C48(&qword_100780EA0) - 8;
  __chkstk_darwin(v139);
  v34 = v114 - v33;
  v138 = sub_1001F0C48(&qword_100780E58) - 8;
  __chkstk_darwin(v138);
  v36 = v114 - v35;
  v37 = sub_1001F0C48(&qword_100780ED8);
  v38 = v37 - 8;
  __chkstk_darwin(v37);
  v40 = v114 - v39;
  sub_100005934(v114[0], v36, &qword_100780E58);
  v137 = v34;
  sub_10020A668(v36, v34, &qword_100780EA0);
  sub_10020A668(v34, v32, &qword_100780E98);
  (*(v28 + 32))(v30, v32, v27);
  sub_100213FA0(&qword_100780E78, &qword_100780E38);
  dispatch thunk of Sequence.makeIterator()();
  v41 = &v32[*(v140 + 52)];
  v42 = *v41;
  v43 = *(v41 + 1);
  v44 = &v40[*(sub_1001F0C48(&qword_100780EE0) + 44)];
  v131 = v42;
  *v44 = v42;
  *(v44 + 1) = v43;
  v130 = v43;
  v45 = &v137[*(v139 + 44)];
  v46 = *v45;
  v47 = *(v45 + 1);
  v48 = &v40[*(sub_1001F0C48(&qword_100780EE8) + 36)];
  v134 = v46;
  *v48 = v46;
  *(v48 + 1) = v47;
  v133 = v47;
  v49 = &v36[*(v138 + 52)];
  v50 = *v49;
  v51 = *(v49 + 1);
  v52 = &v40[*(v38 + 52)];
  v115 = v50;
  *v52 = v50;
  *(v52 + 1) = v51;
  v114[1] = v51;
  v53 = *(sub_1001F0C48(&qword_100780E68) + 36);
  v54 = sub_100213FA0(&qword_100780E80, &qword_100780E38);
  v140 = (v147 + 1);
  v138 = v122 + 48;
  v139 = v122 + 56;
  v55 = v146;
  v146 += 6;
  v147 = (v55 + 7);
  v136 = v27;
  v137 = v53;
  v135 = v54;
  while (1)
  {
    while (1)
    {
      v56 = v143;
      dispatch thunk of Collection.endIndex.getter();
      sub_100213FA0(&qword_100780E88, &qword_100780E60);
      v57 = v144;
      v58 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v140)(v56, v57);
      if (v58)
      {
        v59 = 1;
        v60 = v142;
      }

      else
      {
        v61 = dispatch thunk of Collection.subscript.read();
        v60 = v142;
        sub_1003524F8(v62, v142, type metadata accessor for DDMDeclaration);
        v61(v152, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v59 = 0;
      }

      v63 = v141;
      v64 = 1;
      v65 = v145;
      (*v139)(v60, v59, 1, v145);
      v66 = v60;
      v67 = v149;
      sub_10020A668(v66, v149, &unk_1007809E0);
      if ((*v138)(v67, 1, v65) != 1)
      {
        v68 = v132;
        sub_100352490(v149, v132, type metadata accessor for DDMDeclaration);
        v131(v68);
        sub_100352800(v68, type metadata accessor for DDMDeclaration);
        v64 = 0;
      }

      v69 = *v147;
      v70 = v64;
      v71 = v148;
      (*v147)(v20, v70, 1, v148);
      v72 = *v146;
      if ((*v146)(v20, 1, v71) == 1)
      {
        break;
      }

      sub_10020A668(v20, v63, &qword_100780ED0);
      if (v134(v63))
      {
        v73 = v120;
        sub_10020A668(v63, v120, &qword_100780ED0);
        v74 = 0;
        goto LABEL_12;
      }

      sub_1000032A8(v63, &qword_100780ED0);
    }

    sub_1000032A8(v20, &qword_100780EC8);
    v74 = 1;
    v73 = v120;
LABEL_12:
    v75 = v148;
    v69(v73, v74, 1, v148);
    v76 = v124;
    v77 = 1;
    sub_10020A668(v73, v124, &qword_100780EC8);
    v78 = v72(v76, 1, v75);
    v79 = v119;
    if (v78 != 1)
    {
      v80 = v116;
      sub_10020A668(v124, v116, &qword_100780ED0);
      v115(v80);
      sub_1000032A8(v80, &qword_100780ED0);
      v77 = 0;
    }

    v81 = sub_1001F0C48(&qword_100780EF0);
    (*(*(v81 - 8) + 56))(v79, v77, 1, v81);
    v82 = sub_1001F0C48(&qword_100780EF0);
    if ((*(*(v82 - 8) + 48))(v79, 1, v82) == 1)
    {
      sub_1000032A8(v114[0], &qword_100780E58);
      return sub_1000032A8(v40, &qword_100780ED8);
    }

    v83 = *(v82 + 48);
    v84 = *(v79 + 1);
    v86 = v79[16];
    v152[0] = *v79;
    v85 = v152[0];
    v152[1] = v84;
    v153 = v86;
    sub_100352490(&v79[v83], v127, type metadata accessor for DDMDeclaration);
    v87 = *v129;
    v128 = v85;
    v89 = sub_100522E00(v85, v84, v86);
    v90 = *(v87 + 16);
    v91 = (v88 & 1) == 0;
    v92 = v90 + v91;
    if (__OFADD__(v90, v91))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_33;
    }

    v93 = v88;
    v94 = *(v87 + 24);
    v125 = v84;
    if (v94 >= v92)
    {
      v97 = v118;
      v98 = v123;
      if ((v126 & 1) == 0)
      {
        sub_1005C543C();
        v98 = v123;
        v97 = v118;
      }
    }

    else
    {
      sub_1005BC3F0(v92, v126 & 1);
      v95 = sub_100522E00(v128, v84, v86);
      if ((v93 & 1) != (v96 & 1))
      {
        goto LABEL_32;
      }

      v89 = v95;
      v97 = v118;
      v98 = v123;
    }

    v99 = *v129;
    if (v93)
    {
      break;
    }

    v105 = *v129;
    *(v99 + 8 * (v89 >> 6) + 64) |= 1 << v89;
    v106 = *(v99 + 48) + 24 * v89;
    v107 = v125;
    *v106 = v128;
    *(v106 + 8) = v107;
    *(v106 + 16) = v86;
    sub_100352490(v127, *(v105 + 56) + *(v122 + 72) * v89, type metadata accessor for DDMDeclaration);
    v108 = *(v105 + 16);
    v109 = __OFADD__(v108, 1);
    v110 = v108 + 1;
    if (v109)
    {
      goto LABEL_31;
    }

    *(v105 + 16) = v110;
LABEL_26:
    v126 = 1;
  }

  v126 = v86;
  v117 = v99;
  v100 = *(v122 + 72) * v89;
  v101 = v97;
  sub_1003524F8(*(v99 + 56) + v100, v97, type metadata accessor for DDMDeclaration);
  v102 = v98;
  v103 = v127;
  v104 = v121;
  sub_100346E94(v101, v127, v102);
  v121 = v104;
  if (!v104)
  {
    sub_100352800(v101, type metadata accessor for DDMDeclaration);
    sub_100352800(v103, type metadata accessor for DDMDeclaration);
    sub_1001DFEBC(v128, v125, v126);
    sub_100352578(v123, *(v117 + 56) + v100);
    goto LABEL_26;
  }

  sub_100352800(v101, type metadata accessor for DDMDeclaration);
  v154 = v121;
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1000032A8(v114[0], &qword_100780E58);
    sub_100352800(v103, type metadata accessor for DDMDeclaration);
    sub_1000032A8(v40, &qword_100780ED8);
    sub_1001DFEBC(v128, v125, v126);
  }

LABEL_33:
  v150 = 0;
  v151 = 0xE000000000000000;
  _StringGuts.grow(_:)(30);
  v112._object = 0x80000001006C4E90;
  v112._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v112);
  _print_unlocked<A, B>(_:_:)();
  v113._countAndFlagsBits = 39;
  v113._object = 0xE100000000000000;
  String.append(_:)(v113);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1003515F0(uint64_t a1, uint64_t a2, void *a3)
{
  v45 = a2;
  v5 = type metadata accessor for ManagedApp();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = __chkstk_darwin(v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  if (!v14)
  {
    return 0;
  }

  v37 = a3;
  v38 = v8;
  v42 = v13;
  v43 = v5;
  v40 = v11;
  v41 = v10;
  v15 = 0;
  v16 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v39 = v6;
  v17 = *(v6 + 72);
  while (1)
  {
    v44[0] = ManagedApp.declarationIdentifier.getter();
    v44[1] = v18;
    __chkstk_darwin(v44[0]);
    *(&v36 - 2) = v44;
    v19 = sub_10020A1BC(sub_1001F80EC, (&v36 - 4), v45);

    if ((v19 & 1) == 0)
    {
      break;
    }

    ++v15;
    v16 += v17;
    if (v14 == v15)
    {
      return 0;
    }
  }

  v20 = v42;
  static Logger.vpp.getter();
  v22 = v38;
  v21 = v39;
  (*(v39 + 16))(v38, v16, v43);
  v23 = v37;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();

  LODWORD(v45) = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v26 = v22;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v36 = v28;
    v37 = swift_slowAlloc();
    v44[0] = v37;
    *v27 = 138412546;
    *(v27 + 4) = v23;
    *v28 = v23;
    *(v27 + 12) = 2082;
    v29 = v23;
    v30 = v24;
    v31 = ManagedApp.bundleID.getter();
    v33 = v32;
    (*(v21 + 8))(v26, v43);
    v34 = sub_1002346CC(v31, v33, v44);

    *(v27 + 14) = v34;
    _os_log_impl(&_mh_execute_header, v30, v45, "[%@] Dropping now invalid app: %{public}s", v27, 0x16u);
    sub_1000032A8(v36, &qword_10077F920);

    sub_10000710C(v37);

    (*(v40 + 8))(v42, v41);
  }

  else
  {

    (*(v21 + 8))(v22, v43);
    (*(v40 + 8))(v20, v41);
  }

  return v15;
}

uint64_t sub_1003519DC(uint64_t *a1, uint64_t a2, void *a3)
{
  v70 = type metadata accessor for Logger();
  v82 = *(v70 - 8);
  __chkstk_darwin(v70);
  v79 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ManagedApp();
  v80 = *(v7 - 8);
  v8 = __chkstk_darwin(v7);
  v10 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v61 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v61 - v15;
  __chkstk_darwin(v14);
  v18 = &v61 - v17;
  v19 = *a1;
  v20 = v84;
  result = sub_1003515F0(*a1, a2, a3);
  if (!v20)
  {
    v71 = v18;
    v67 = v13;
    v68 = v16;
    v64 = v10;
    v69 = v7;
    v84 = 0;
    if (v22)
    {
      return *(v19 + 16);
    }

    v66 = a3;
    v81 = result;
    v24 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v25 = v19;
      v27 = (v19 + 16);
      v26 = *(v19 + 16);
      v28 = v69;
      v29 = v80;
      v30 = v71;
      if (v24 == v26)
      {
        return v81;
      }

      v78 = v80 + 16;
      v73 = (v80 + 8);
      v65 = (v82 + 1);
      v62 = (v80 + 40);
      *&v23 = 138412546;
      v63 = v23;
      v72 = a2;
      v61 = a1;
      while (v24 < v26)
      {
        v32 = (*(v29 + 80) + 32) & ~*(v29 + 80);
        v82 = v25;
        v74 = v32;
        v76 = *(v29 + 72);
        v77 = v25 + v32;
        v33 = *(v29 + 16);
        v75 = v76 * v24;
        v33(v30, v25 + v32 + v76 * v24, v28);
        v83[0] = ManagedApp.declarationIdentifier.getter();
        v83[1] = v34;
        __chkstk_darwin(v83[0]);
        *(&v61 - 2) = v83;
        v35 = v84;
        v36 = sub_10020A1BC(sub_1001F7FFC, (&v61 - 4), a2);
        v84 = v35;

        if (v36)
        {
          result = (*v73)(v30, v28);
          v37 = v81;
          if (v24 == v81)
          {
            a2 = v72;
            v29 = v80;
            v25 = v82;
          }

          else
          {
            if ((v81 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v53 = *v27;
            if (v81 >= *v27)
            {
              goto LABEL_28;
            }

            v54 = v77;
            v55 = v76 * v81;
            v56 = v24;
            result = (v33)(v67, &v77[v76 * v81], v28);
            if (v24 >= v53)
            {
              goto LABEL_29;
            }

            v57 = v75;
            v58 = v64;
            v33(v64, &v54[v75], v28);
            v25 = v82;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v25 = sub_100659A3C(v25);
            }

            v59 = v25 + v74;
            v60 = *v62;
            result = (*v62)(v25 + v74 + v55, v58, v28);
            if (v56 >= v25[2])
            {
              goto LABEL_30;
            }

            result = v60(&v59[v57], v67, v28);
            v24 = v56;
            *v61 = v25;
            v30 = v71;
            a2 = v72;
            v29 = v80;
            v37 = v81;
          }

          v81 = v37 + 1;
        }

        else
        {
          v77 = v24;
          static Logger.vpp.getter();
          v38 = v68;
          v33(v68, v30, v28);
          v39 = v66;
          v40 = v66;
          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.info.getter();

          v43 = os_log_type_enabled(v41, v42);
          v44 = v73;
          if (v43)
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v75 = v46;
            v76 = swift_slowAlloc();
            v83[0] = v76;
            *v45 = v63;
            *(v45 + 4) = v40;
            *v46 = v39;
            *(v45 + 12) = 2082;
            v47 = v40;
            v48 = v41;
            v49 = ManagedApp.bundleID.getter();
            v51 = v50;
            v31 = *v44;
            (*v44)(v38, v69);
            v52 = sub_1002346CC(v49, v51, v83);

            *(v45 + 14) = v52;
            _os_log_impl(&_mh_execute_header, v48, v42, "[%@] Dropping now invalid app: %{public}s", v45, 0x16u);
            sub_1000032A8(v75, &qword_10077F920);

            sub_10000710C(v76);

            v28 = v69;
          }

          else
          {

            v31 = *v44;
            (*v44)(v38, v28);
          }

          (*v65)(v79, v70);
          v30 = v71;
          a2 = v72;
          result = (v31)(v71, v28);
          v29 = v80;
          v25 = v82;
          v24 = v77;
        }

        ++v24;
        v27 = v25 + 2;
        v26 = v25[2];
        if (v24 == v26)
        {
          return v81;
        }
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
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100352060(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 144);
  v8 = *(v1 + 152);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100345260(a1, v4, v5, v6, v1 + 40, v1 + 80, v7, v8);
}

uint64_t sub_10035213C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1001F0E54;

  return sub_100345ED4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100352214(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_100214EFC;

  return sub_10034CA54(a1, a2, v7, v6);
}

uint64_t sub_100352324()
{
  v2 = *(v0 + 176);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100270BD8;

  return sub_10034E6B0(v0 + 16, v2);
}

uint64_t sub_1003523C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_10034EA20(a1, v4);
}

uint64_t sub_100352490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003524F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100352560(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1001DFEBC(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_100352578(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DDMDeclaration(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003525DC(uint64_t a1)
{
  v3 = *(type metadata accessor for URL() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = (v1 + v5);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v1 + v6);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1001F0E54;

  return sub_10034D798(a1, v8, v9, v1 + v4, v11, v12, v13, v1 + v7);
}

uint64_t sub_100352748(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100214EFC;

  return sub_100350320(a1, v4);
}

uint64_t sub_100352800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003528A8(uint64_t a1)
{
  v2[107] = v1;
  v2[106] = a1;
  v3 = type metadata accessor for Logger();
  v2[108] = v3;
  v2[109] = *(v3 - 8);
  v2[110] = swift_task_alloc();
  type metadata accessor for AppInstall();
  v2[111] = swift_task_alloc();
  v4 = type metadata accessor for UUID();
  v2[112] = v4;
  v2[113] = *(v4 - 8);
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v2[116] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v2[117] = v5;
  v2[118] = *(v5 - 8);
  v2[119] = swift_task_alloc();
  sub_1001F0C48(&qword_10077FE28);
  v2[120] = swift_task_alloc();
  v2[121] = swift_task_alloc();
  v6 = type metadata accessor for Platform();
  v2[122] = v6;
  v2[123] = *(v6 - 8);
  v2[124] = swift_task_alloc();
  v2[125] = swift_task_alloc();

  return _swift_task_switch(sub_100352B40, 0, 0);
}

uint64_t sub_100352B40()
{
  v1 = *(v0 + 848);
  *(v0 + 1008) = *(*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_scheduler);
  v2 = (*sub_100006D8C(v1, v1[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
  v4 = v2[4];
  v3 = v2[5];
  v5 = v2[3];
  *(v0 + 567) = *(v2 + 95);
  *(v0 + 536) = v4;
  *(v0 + 552) = v3;
  *(v0 + 520) = v5;
  v7 = v2[1];
  v6 = v2[2];
  *(v0 + 472) = *v2;
  *(v0 + 488) = v7;
  *(v0 + 504) = v6;

  sub_10020A7AC(v0 + 472, v0 + 584);
  sub_100355DAC((v0 + 472), 3, v0 + 168);
  sub_10020A92C(v0 + 472);
  v8 = *(v0 + 280);
  *(v0 + 112) = *(v0 + 264);
  *(v0 + 128) = v8;
  *(v0 + 144) = *(v0 + 296);
  *(v0 + 160) = *(v0 + 312);
  v9 = *(v0 + 216);
  *(v0 + 48) = *(v0 + 200);
  *(v0 + 64) = v9;
  v10 = *(v0 + 248);
  *(v0 + 80) = *(v0 + 232);
  *(v0 + 96) = v10;
  v11 = *(v0 + 184);
  *(v0 + 16) = *(v0 + 168);
  *(v0 + 32) = v11;
  if (sub_100350308(v0 + 16) == 1)
  {
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_100355330(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
LABEL_16:
    static Logger.ddm.getter();
    swift_errorRetain();
    v59 = Logger.logObject.getter();
    v60 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      swift_errorRetain();
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v63;
      *v62 = v63;
      _os_log_impl(&_mh_execute_header, v59, v60, "Failed to enqueue enterprise manifest install: %{public}@", v61, 0xCu);
      sub_1000032A8(v62, &qword_10077F920);
    }

    v64 = *(v0 + 880);
    v65 = v59;
    v66 = *(v0 + 872);
    v67 = *(v0 + 864);

    (*(v66 + 8))(v64, v67);
    swift_willThrow();

    v68 = *(v0 + 8);

    return v68();
  }

  v12 = *(v0 + 984);
  v13 = *(v0 + 976);
  v14 = *(v0 + 968);
  v15 = *(v0 + 856);
  v16 = *(v0 + 96);
  *(v0 + 384) = *(v0 + 80);
  *(v0 + 400) = v16;
  v17 = *(v0 + 64);
  *(v0 + 352) = *(v0 + 48);
  *(v0 + 368) = v17;
  *(v0 + 464) = *(v0 + 160);
  v18 = *(v0 + 144);
  *(v0 + 432) = *(v0 + 128);
  *(v0 + 448) = v18;
  *(v0 + 416) = *(v0 + 112);
  v19 = *(v0 + 32);
  *(v0 + 320) = *(v0 + 16);
  *(v0 + 336) = v19;
  v20 = *(v0 + 320);
  v21 = *(v0 + 328);
  *(v0 + 1016) = v20;
  *(v0 + 1024) = v21;
  v22 = *(v0 + 336);
  v23 = *(v0 + 344);
  *(v0 + 1032) = v22;
  *(v0 + 1040) = v23;
  v24 = *(v0 + 352);
  v25 = *(v0 + 360);
  *(v0 + 1048) = v24;
  *(v0 + 1056) = v25;
  v26 = *(v0 + 368);
  *(v0 + 1064) = v26;
  *(v0 + 792) = v20;
  *(v0 + 800) = v21;
  *(v0 + 808) = v22;
  *(v0 + 816) = v23;
  *(v0 + 824) = v24;
  *(v0 + 832) = v25;
  *(v0 + 840) = v26;
  v27 = *(v0 + 88);
  *(v0 + 696) = *(v0 + 72);
  *(v0 + 712) = v27;
  v28 = *(v0 + 152);
  *(v0 + 760) = *(v0 + 136);
  *(v0 + 776) = v28;
  v29 = *(v0 + 120);
  *(v0 + 728) = *(v0 + 104);
  *(v0 + 744) = v29;
  v30 = type metadata accessor for EnterpriseIngestTask(0);
  sub_100005934(v15 + *(v30 + 20), v14, &qword_10077FE28);
  v31 = *(v12 + 48);
  if (v31(v14, 1, v13) == 1)
  {
    sub_1000032A8(*(v0 + 968), &qword_10077FE28);
  }

  else
  {
    v69 = v21;
    v70 = v20;
    v32 = *(v0 + 976);
    v33 = *(v0 + 960);
    v34 = *(v0 + 856);
    v35 = *(*(v0 + 984) + 32);
    v35(*(v0 + 1000), *(v0 + 968), v32);
    v36 = type metadata accessor for EnterpriseApp();
    sub_100005934(v34 + *(v36 + 20), v33, &qword_10077FE28);
    if (v31(v33, 1, v32) == 1)
    {
      v37 = *(v0 + 960);
      (*(*(v0 + 984) + 8))(*(v0 + 1000), *(v0 + 976));
      sub_1000032A8(v37, &qword_10077FE28);
    }

    else
    {
      v35(*(v0 + 992), *(v0 + 960), *(v0 + 976));
      sub_100355330(&qword_100780F10, &type metadata accessor for Platform);
      v38 = dispatch thunk of static Equatable.== infix(_:_:)();
      v39 = *(v0 + 1000);
      v40 = *(v0 + 992);
      v41 = *(v0 + 984);
      v42 = *(v0 + 976);
      if ((v38 & 1) == 0)
      {
        sub_100271104(v70, v69);
        sub_100350510(v0 + 376);
        type metadata accessor for EnterpriseIngestTask.Error(0);
        sub_100355330(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v58 = *(v41 + 8);
        v58(v40, v42);
        v58(v39, v42);
        goto LABEL_16;
      }

      v43 = *(v41 + 8);
      v43(*(v0 + 992), *(v0 + 976));
      v43(v39, v42);
    }

    v21 = v69;
    v20 = v70;
  }

  v44 = *(v0 + 944);
  v45 = *(v0 + 936);
  v46 = *(v0 + 928);
  v48 = *(v0 + 448);
  v47 = *(v0 + 456);
  URL.init(string:)();
  if ((*(v44 + 48))(v46, 1, v45) == 1)
  {
    v49 = *(v0 + 928);
    sub_100271104(v20, v21);
    sub_1000032A8(v49, &unk_1007809F0);
    type metadata accessor for EnterpriseIngestTask.Error(0);
    sub_100355330(&qword_100780F08, type metadata accessor for EnterpriseIngestTask.Error);
    swift_allocError();
    *v50 = v48;
    v50[1] = v47;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_100350510(v0 + 376);
    goto LABEL_16;
  }

  v51 = *(v0 + 856);
  (*(*(v0 + 944) + 32))(*(v0 + 952), *(v0 + 928), *(v0 + 936));
  v52 = *v51;
  v53 = v51[1];
  UUID.init()();
  v54 = swift_task_alloc();
  *(v0 + 1072) = v54;
  *v54 = v0;
  v54[1] = sub_1003533CC;
  v55 = *(v0 + 920);
  v56 = *(v0 + 912);

  return sub_10054ADF8(v56, v52, v53, 0, 2, v55, 0);
}

uint64_t sub_1003533CC()
{
  v2 = *v1;
  v2[135] = v0;

  if (v0)
  {
    v3 = v2[128];
    v4 = v2[127];
    sub_100350510((v2 + 47));
    sub_100271104(v4, v3);

    return _swift_task_switch(sub_1003537F8, 0, 0);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[136] = v5;
    *v5 = v2;
    v5[1] = sub_1003535BC;
    v6 = v2[119];
    v7 = v2[114];
    v8 = v2[111];
    v9 = v2[107];
    v10 = v2[106];

    return sub_100354098(v8, v7, v9, (v2 + 87), v10, v6, (v2 + 99));
  }
}

uint64_t sub_1003535BC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  v4[137] = a1;
  v4[138] = v1;

  v6 = v4[128];
  v7 = v4[127];
  if (v1)
  {
    sub_100271104(v7, v6);
    sub_100350510((v4 + 47));

    return _swift_task_switch(sub_100353B8C, 0, 0);
  }

  else
  {
    sub_100271104(v7, v6);
    sub_100350510((v4 + 47));
    v8 = swift_task_alloc();
    v4[139] = v8;
    *v8 = v5;
    v8[1] = sub_100353A58;
    v9 = v4[111];

    return sub_10054CDE0(v9, a1);
  }
}

uint64_t sub_1003537F8()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  (*(v0[113] + 8))(v0[115], v0[112]);
  (*(v2 + 8))(v1, v3);
  static Logger.ddm.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to enqueue enterprise manifest install: %{public}@", v6, 0xCu);
    sub_1000032A8(v7, &qword_10077F920);
  }

  v9 = v0[110];
  v10 = v4;
  v11 = v0[109];
  v12 = v0[108];

  (*(v11 + 8))(v9, v12);
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_100353A58()
{
  *(*v1 + 1120) = v0;

  if (v0)
  {
    v2 = sub_100353D18;
  }

  else
  {
    v2 = sub_100353BB0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100353BB0()
{
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[115];
  v5 = v0[114];
  v6 = v0[113];
  v7 = v0[112];
  sub_1003552D4(v0[111]);
  v8 = *(v6 + 8);
  v8(v5, v7);
  v8(v4, v7);

  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_100353D18()
{
  sub_1003552D4(v0[111]);
  v0[141] = v0[140];
  v1 = v0[126];

  return _swift_task_switch(sub_100353D88, v1, 0);
}

uint64_t sub_100353D88()
{
  sub_10054C8D0(*(v0 + 912));

  return _swift_task_switch(sub_100353DF4, 0, 0);
}

uint64_t sub_100353DF4()
{
  v1 = v0[114];
  v2 = v0[113];
  v3 = v0[112];
  swift_willThrow();
  v4 = *(v2 + 8);
  v4(v1, v3);
  v5 = v0[119];
  v6 = v0[118];
  v7 = v0[117];
  v4(v0[115], v0[112]);
  (*(v6 + 8))(v5, v7);
  static Logger.ddm.getter();
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to enqueue enterprise manifest install: %{public}@", v10, 0xCu);
    sub_1000032A8(v11, &qword_10077F920);
  }

  v13 = v0[110];
  v14 = v8;
  v15 = v0[109];
  v16 = v0[108];

  (*(v15 + 8))(v13, v16);
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t sub_100354098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[116] = a7;
  v7[115] = a6;
  v7[114] = a5;
  v7[113] = a4;
  v7[112] = a3;
  v7[111] = a2;
  v7[110] = a1;
  v8 = type metadata accessor for URL();
  v7[117] = v8;
  v7[118] = *(v8 - 8);
  v7[119] = swift_task_alloc();
  v9 = type metadata accessor for AppPackage();
  v7[120] = v9;
  v7[121] = *(v9 - 8);
  v7[122] = swift_task_alloc();
  v10 = type metadata accessor for Platform();
  v7[123] = v10;
  v7[124] = *(v10 - 8);
  v7[125] = swift_task_alloc();
  v11 = type metadata accessor for LogKey.Prefix();
  v7[126] = v11;
  v7[127] = *(v11 - 8);
  v7[128] = swift_task_alloc();
  v12 = type metadata accessor for AppInstallRequestType();
  v7[129] = v12;
  v7[130] = *(v12 - 8);
  v7[131] = swift_task_alloc();
  sub_1001F0C48(&qword_10077E958);
  v7[132] = swift_task_alloc();
  sub_1001F0C48(&unk_100780A00);
  v7[133] = swift_task_alloc();
  v7[134] = swift_task_alloc();
  v7[135] = type metadata accessor for AppInstall();
  v7[136] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v7[137] = swift_task_alloc();
  v7[138] = swift_task_alloc();
  v7[139] = swift_task_alloc();
  v7[140] = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  v7[141] = v13;
  v7[142] = *(v13 - 8);
  v7[143] = swift_task_alloc();
  v7[144] = swift_task_alloc();
  v14 = type metadata accessor for Logger();
  v7[145] = v14;
  v7[146] = *(v14 - 8);
  v7[147] = swift_task_alloc();

  return _swift_task_switch(sub_1003544AC, 0, 0);
}

uint64_t sub_1003544AC()
{
  v152 = v0;
  v1 = *(v0 + 1152);
  v2 = *(v0 + 1136);
  v3 = *(v0 + 1128);
  v4 = *(v0 + 888);
  static Logger.ddm.getter();
  v130 = *(v2 + 16);
  v130(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1176);
  v9 = *(v0 + 1168);
  v10 = *(v0 + 1160);
  v11 = *(v0 + 1152);
  v12 = *(v0 + 1136);
  v13 = *(v0 + 1128);
  if (v7)
  {
    v147 = *(v0 + 1160);
    v14 = swift_slowAlloc();
    v142 = v6;
    v15 = swift_slowAlloc();
    v150 = v15;
    *v14 = 136446210;
    sub_100355330(&qword_100789F60, &type metadata accessor for UUID);
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    v144 = v8;
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1002346CC(v16, v18, &v150);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v5, v142, "Enqueuing enterprise manifest install '%{public}s", v14, 0xCu);
    sub_10000710C(v15);

    (*(v9 + 8))(v144, v147);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v20 = *(v0 + 896);
  result = type metadata accessor for EnterpriseApp();
  v22 = *(v20 + *(result + 32));
  v23 = *(v22 + 16);
  if (v23)
  {
    v24 = 0;
    v25 = (v22 + 32);
    while (v24 < *(v22 + 16))
    {
      v26 = *v25;
      *(v0 + 256) = v25[1];
      v27 = v25[2];
      v28 = v25[3];
      v29 = v25[5];
      *(v0 + 304) = v25[4];
      *(v0 + 320) = v29;
      *(v0 + 272) = v27;
      *(v0 + 288) = v28;
      *(v0 + 240) = v26;
      if (*(v0 + 256) <= 2u && *(v0 + 256) && *(v0 + 256) != 2)
      {
        sub_100355378(v0 + 240, v0 + 528);

LABEL_14:
        sub_100355378(v0 + 240, v0 + 432);
        URL.init(string:)();
        sub_100350510(v0 + 240);
        sub_100350510(v0 + 240);
        goto LABEL_15;
      }

      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_100355378(v0 + 240, v0 + 336);

      if (v30)
      {
        goto LABEL_14;
      }

      ++v24;
      result = sub_100350510(v0 + 240);
      v25 += 6;
      if (v23 == v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:
    (*(*(v0 + 944) + 56))(*(v0 + 1120), 1, 1, *(v0 + 936));
LABEL_15:
    v135 = *(v0 + 1144);
    v31 = *(v0 + 1136);
    v113 = v31;
    v32 = *(v0 + 1128);
    v148 = *(v0 + 1120);
    v33 = *(v0 + 1112);
    v109 = v33;
    v141 = *(v0 + 1104);
    v128 = *(v0 + 1096);
    v34 = *(v0 + 1088);
    v35 = *(v0 + 1080);
    v36 = *(v0 + 1072);
    v112 = v36;
    v120 = *(v0 + 1064);
    v137 = *(v0 + 1056);
    v138 = *(v0 + 1048);
    v139 = *(v0 + 1040);
    v140 = *(v0 + 1032);
    v103 = *(v0 + 1016);
    v104 = *(v0 + 1024);
    v106 = *(v0 + 1008);
    v143 = *(v0 + 1000);
    v116 = *(v0 + 992);
    v118 = *(v0 + 984);
    v124 = *(v0 + 952);
    v145 = *(v0 + 944);
    v133 = *(v0 + 936);
    v126 = *(v0 + 928);
    v122 = *(v0 + 920);
    v37 = *(v0 + 904);
    v38 = *(v0 + 896);
    v101 = *(v0 + 888);
    v39 = (*sub_100006D8C(*(v0 + 912), *(*(v0 + 912) + 24)) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device);
    v40 = *(v39 + 95);
    v41 = v39[5];
    v42 = v39[3];
    *(v0 + 80) = v39[4];
    *(v0 + 96) = v41;
    *(v0 + 111) = v40;
    *(v0 + 64) = v42;
    v43 = *v39;
    v44 = v39[2];
    *(v0 + 32) = v39[1];
    *(v0 + 48) = v44;
    *(v0 + 16) = v43;
    sub_10020A7AC(v0 + 16, v0 + 128);
    sub_10035712C(v37, v0 + 16, v33);
    sub_10020A92C(v0 + 16);
    v108 = *v38;
    v94 = v38[1];
    v95 = v38[6];
    v110 = v38[5];
    v111 = v38[2];
    v134 = v38[3];
    v136 = *(v31 + 56);
    v45 = v36;
    v46 = v32;
    v136(v45, 1, 1, v32);
    v91 = v32;
    v130(v135, v101, v32);
    v47 = type metadata accessor for FilePath();
    v99 = *(*(v47 - 8) + 56);
    v99(v137, 1, 1, v47);
    (*(v139 + 104))(v138, enum case for AppInstallRequestType.upp(_:), v140);
    v132 = *(v38 + 32);
    (*(v103 + 104))(v104, enum case for LogKey.Prefix.manifest(_:), v106);
    v48 = objc_allocWithZone(type metadata accessor for LogKey());

    v131 = LogKey.init(prefix:)();
    sub_100005934(v148, v141, &unk_1007809F0);
    static Platform.current.getter();
    v49 = v35[9];
    v50 = *(v145 + 56);
    v50(v34 + v49, 1, 1, v133);
    v149 = v50;
    v88 = v35[14];
    v51 = (v34 + v35[13]);
    v136(v34 + v88, 1, 1, v46);
    v52 = (v34 + v35[15]);
    v89 = v35[16];
    v90 = v35[20];
    v99(v34 + v90, 1, 1, v47);
    v92 = (v34 + v35[22]);
    v93 = v35[26];
    v96 = v35[30];
    v97 = v35[29];
    v50(v34 + v96, 1, 1, v133);
    v98 = v35[31];
    v100 = v35[33];
    v102 = v35[34];
    static Platform.current.getter();
    v105 = v35[35];
    v53 = (v34 + v35[36]);
    *v53 = xmmword_10069E8A0;
    v107 = v35[38];
    *(v34 + v35[39]) = xmmword_10069E8A0;
    v54 = (v34 + v35[40]);
    *v54 = 0;
    v54[1] = 0;
    v55 = v34 + v35[41];
    *v55 = 0;
    *(v55 + 8) = 0;
    *(v55 + 16) = -1;
    v56 = (v34 + v35[42]);
    *v56 = 0;
    v56[1] = 0;
    *(v34 + v35[43]) = 0;
    *v34 = 0;
    *(v34 + 8) = 0;
    *(v34 + 16) = 1;
    *(v34 + 24) = 0;
    *(v34 + 32) = 1;
    *(v34 + 40) = 0;
    *(v34 + 48) = 1;
    *(v34 + 56) = 0;
    *(v34 + 64) = 1;
    sub_10020AD90(v109, v34 + v49, &unk_1007809F0);
    v57 = (v34 + v35[10]);
    *v57 = v108;
    v57[1] = v94;
    v58 = (v34 + v35[11]);
    *v58 = v110;
    v58[1] = v95;
    v59 = (v34 + v35[12]);
    *v59 = v111;
    v59[1] = v134;
    *v51 = 0;
    v51[1] = 0;
    sub_10020AD90(v112, v34 + v88, &unk_100780A00);
    *v52 = 0;
    v52[1] = 0;
    *(v34 + v89) = 0;
    *(v34 + v35[17]) = 0;
    *(v34 + v35[18]) = 0;
    (*(v113 + 32))(v34 + v35[19], v135, v91);
    sub_10020AD90(v137, v34 + v90, &qword_10077E958);
    (*(v139 + 32))(v34 + v35[21], v138, v140);
    *v92 = 0;
    v92[1] = 0;
    *(v34 + v35[23]) = 0;
    *(v34 + v35[24]) = 0;
    *(v34 + v35[25]) = v132 & 1;
    *(v34 + v93) = 0;
    *(v34 + v35[27]) = 1;
    *(v34 + v35[28]) = v131;
    *(v34 + v97) = 0;
    sub_10020AD90(v141, v34 + v96, &unk_1007809F0);
    *(v34 + v98) = 2;
    v60 = (v34 + v35[32]);
    *v60 = 0;
    v60[1] = 0;
    *(v34 + v100) = 0;
    (*(v116 + 40))(v34 + v102, v143, v118);
    *(v34 + v105) = 2;
    sub_10020B0E0(*v53, v53[1]);
    *v53 = xmmword_10069E8A0;
    *(v34 + v35[37]) = 0;
    *(v34 + v107) = 0;
    v136(v120, 1, 1, v91);
    v61 = *(v37 + 24);
    v62 = *(v37 + 56);
    *(v0 + 704) = *(v37 + 40);
    *(v0 + 720) = v62;
    *(v0 + 688) = v61;
    v50(v128, 1, 1, v133);
    (*(v145 + 16))(v124, v122, v133);
    v63 = v126[1];
    if (v63)
    {
      v64 = *v126;
      v65 = v126[6];
      if (v65)
      {
        v66 = v126[5];
        v150 = 14897;
        v151 = 0xE200000000000000;
        sub_100005934(v0 + 688, v0 + 832, &unk_1007803F0);
        v67._countAndFlagsBits = v64;
        v67._object = v63;
        String.append(_:)(v67);
        v68._countAndFlagsBits = 47;
        v68._object = 0xE100000000000000;
        String.append(_:)(v68);
        v69 = v66;
        v70 = v65;
      }

      else
      {
        v150 = 14896;
        v151 = 0xE200000000000000;
        sub_100005934(v0 + 688, v0 + 784, &unk_1007803F0);
        v69 = v64;
        v70 = v63;
      }

      String.append(_:)(*&v69);
      v123 = v151;
      v125 = v150;
    }

    else
    {
      sub_100005934(v0 + 688, v0 + 736, &unk_1007803F0);
      v123 = 0;
      v125 = 0;
    }

    v71 = *(v0 + 1128);
    v129 = *(v0 + 1120);
    v114 = *(v0 + 1096);
    v121 = *(v0 + 1088);
    v146 = *(v0 + 1064);
    v72 = *(v0 + 976);
    v127 = *(v0 + 968);
    v73 = *(v0 + 960);
    v74 = *(v0 + 944);
    v75 = *(v0 + 936);
    v115 = v75;
    v117 = *(v0 + 952);
    v119 = *(v0 + 880);
    *(v0 + 656) = 0u;
    *(v0 + 672) = 0u;
    *(v0 + 624) = 0u;
    *(v0 + 640) = 0u;
    v76 = v73[8];
    v136(v72 + v76, 1, 1, v71);
    v77 = v73[10];
    v78 = (v72 + v73[9]);
    v149(v72 + v77, 1, 1, v75);
    v79 = v72 + v73[18];
    v80 = (v72 + v73[20]);
    v81 = (v72 + v73[21]);
    v81[2] = 0u;
    v81[3] = 0u;
    *v81 = 0u;
    v81[1] = 0u;
    *v72 = 0u;
    *(v72 + 16) = 0u;
    *(v72 + 32) = 1;
    *(v72 + 40) = 0u;
    *(v72 + 56) = 0u;
    sub_10020AD90(v146, v72 + v76, &unk_100780A00);
    v83 = *(v0 + 704);
    v82 = *(v0 + 720);
    *v78 = *(v0 + 688);
    v78[1] = v83;
    v78[2] = v82;
    sub_10020AD90(v114, v72 + v77, &unk_1007809F0);
    v84 = v72 + v73[11];
    *(v84 + 48) = 0u;
    *(v84 + 64) = 0u;
    *(v84 + 16) = 0u;
    *(v84 + 32) = 0u;
    *v84 = 0u;
    *(v84 + 80) = 0;
    *(v84 + 88) = 0x8000000000000000;
    *(v84 + 96) = 0;
    *(v84 + 104) = 0;
    *(v72 + v73[12]) = 0;
    *(v72 + v73[13]) = 0;
    *(v72 + v73[14]) = 0;
    *(v72 + v73[15]) = 0;
    *(v72 + v73[16]) = 0;
    *(v72 + v73[17]) = 0;
    *v79 = 0;
    *(v79 + 8) = 1;
    (*(v74 + 32))(v72 + v73[19], v117, v115);
    *v80 = v125;
    v80[1] = v123;
    sub_10020AD90(v0 + 624, v81, &qword_10077E968);
    sub_1003553D4(v121, v119);
    sub_1001F0C48(&qword_100780F18);
    v85 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    v86 = swift_allocObject();
    *(v86 + 16) = xmmword_10069E680;
    sub_100355438(v72, v86 + v85);
    sub_1000032A8(v129, &unk_1007809F0);
    sub_1003552D4(v121);

    v87 = *(v0 + 8);

    return v87(v86);
  }

  return result;
}

uint64_t sub_1003552D4(uint64_t a1)
{
  v2 = type metadata accessor for AppInstall();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100355330(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003553D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppInstall();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100355438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppPackage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1003554C4()
{
  type metadata accessor for EnterpriseApp();
  if (v0 <= 0x3F)
  {
    sub_100355560();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LogKey();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_100355560()
{
  if (!qword_100780F88)
  {
    type metadata accessor for Platform();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100780F88);
    }
  }
}

uint64_t sub_1003555B8()
{
  result = type metadata accessor for Platform();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10035562C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return _swift_task_switch(sub_10035574C, 0, 0);
}

uint64_t sub_10035574C()
{
  v1 = v0[5];
  (*(v0[10] + 16))(v0[11], v0[3], v0[9]);

  v2 = v1;
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_100355830;
  v4 = v0[11];
  v5 = v0[4];
  v6 = v0[5];

  return sub_10035A314(v4, v5, v6);
}

uint64_t sub_100355830(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_100355BBC;
  }

  else
  {
    v4 = sub_100355944;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100355944()
{
  v1 = v0[13];
  if (*(v1 + 16))
  {
    v2 = v0[10];
    v3 = v0[9];
    v4 = v0[5];
    v6 = v0[2];
    v5 = v0[3];
    v7 = *(type metadata accessor for EnterpriseApp() - 8);
    sub_10035B220(v1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v6);

    (*(v2 + 8))(v5, v3);

    v8 = v0[1];
  }

  else
  {

    static Logger.ddm.getter();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "Enterprise manifest invalid: No item found", v11, 2u);
    }

    v13 = v0[7];
    v12 = v0[8];
    v15 = v0[5];
    v14 = v0[6];

    (*(v13 + 8))(v12, v14);
    type metadata accessor for InternalError();
    sub_10035CC58(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v0[10] + 8))(v0[3], v0[9]);

    v8 = v0[1];
  }

  return v8();
}

uint64_t sub_100355BBC()
{

  (*(*(v0 + 80) + 8))(*(v0 + 24), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_100355CA4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_10035CC58(a4, a5);
  }

  while ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0);
  return v9 != v10;
}

void sub_100355DAC(_OWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v206 = a2;
  v197 = a3;
  v198 = a1;
  v4 = sub_1001F0C48(&qword_10077FE28);
  __chkstk_darwin(v4 - 8);
  v6 = &v170 - v5;
  v7 = type metadata accessor for Platform();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v170 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v170 - v12;
  v14 = type metadata accessor for EnterpriseApp();
  sub_100005934(v3 + v14[5], v6, &qword_10077FE28);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1000032A8(v6, &qword_10077FE28);
  }

  else
  {
    v15 = v14;
    (*(v8 + 32))(v13, v6, v7);
    static Platform.iOS.getter();
    v16 = static Platform.== infix(_:_:)();
    v17 = *(v8 + 8);
    v17(v11, v7);
    if (v16)
    {
      v17(v13, v7);
      v14 = v15;
    }

    else
    {
      v18 = sub_1004FF904();
      v19 = sub_100355CA4(v13, v18, &type metadata accessor for Platform, &qword_100780F10, &type metadata accessor for Platform);

      v17(v13, v7);
      v14 = v15;
      if (!v19)
      {
        sub_1001D2CC0(&v243);
LABEL_169:
        v163 = v197;
        goto LABEL_170;
      }
    }
  }

  v20 = *(v3 + v14[9]);
  if (v20)
  {
    v191 = v14;
    v192 = v3;
    v21 = swift_allocObject();
    *(v21 + 16) = v206;
    v22 = swift_allocObject();
    v23 = v198;
    v24 = v198[3];
    v25 = v198[5];
    v22[5] = v198[4];
    v22[6] = v25;
    *(v22 + 111) = *(v23 + 95);
    v26 = v23[1];
    v27 = v23[2];
    v22[1] = *v23;
    v22[2] = v26;
    v22[3] = v27;
    v22[4] = v24;
    v29 = *v23;
    v28 = *(v23 + 1);
    v30 = *(v20 + 16);

    sub_10020A7AC(v23, &v243);
    v201 = v20;
    swift_bridgeObjectRetain_n();

    sub_10020A7AC(v23, &v243);
    v190 = v21;

    v193 = v28;

    v200 = v22;

    if (v30)
    {
      v31 = v30;
      v176 = v29;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v204 = v31;
      v205 = 0x80000001006C2F90;
      v202 = 0x80000001006C2FB0;
      v203 = 0x80000001006C2F70;
      v36 = 32;
      *&v189 = 32;
      while (2)
      {
        *&v194 = v35;
        v195 = v34;
        v199 = v33;
        v37 = v36 + 96 * v32;
        v38 = v32;
        while (1)
        {
          if (v38 >= v31)
          {
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
            goto LABEL_174;
          }

          v39 = *(v201 + v37 + 16);
          v237 = *(v201 + v37);
          v238 = v39;
          v40 = *(v201 + v37 + 32);
          v41 = *(v201 + v37 + 48);
          v42 = *(v201 + v37 + 80);
          v241 = *(v201 + v37 + 64);
          v242 = v42;
          v239 = v40;
          v240 = v41;
          v32 = v38 + 1;
          v43 = 0xEF6567616D692D65;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_172;
          }

          if (v238 <= 1u)
          {
            if (v238)
            {
              v47 = 0xD000000000000016;
            }

            else
            {
              v47 = 0x7A69732D6C6C7566;
            }

            if (v238)
            {
              v48 = v203;
            }

            else
            {
              v48 = 0xEF6567616D692D65;
            }

            v44 = 0xED00006567616D69;
            v45 = 0x2D79616C70736964;
            v46 = v202;
          }

          else
          {
            v44 = 0xED00006567616D69;
            v45 = 0x2D79616C70736964;
            v46 = v202;
            if (v238 == 2)
            {
              v47 = 0xD000000000000013;
              v48 = v205;
            }

            else
            {
              if (v238 == 3)
              {
                v47 = 0xD000000000000010;
              }

              else
              {
                v47 = 0x2D79616C70736964;
              }

              if (v238 == 3)
              {
                v48 = v202;
              }

              else
              {
                v48 = 0xED00006567616D69;
              }
            }
          }

          v49 = 0xD000000000000013;
          if (v206 == 3)
          {
            v45 = 0xD000000000000010;
            v44 = v46;
          }

          if (v206 != 2)
          {
            v49 = v45;
          }

          v50 = v205;
          if (v206 != 2)
          {
            v50 = v44;
          }

          v51 = 0xD000000000000016;
          if (v206)
          {
            v43 = v203;
          }

          else
          {
            v51 = 0x7A69732D6C6C7566;
          }

          v52 = v206 <= 1u ? v51 : v49;
          v53 = v206 <= 1u ? v43 : v50;
          if (v47 == v52 && v48 == v53)
          {
            break;
          }

          v54 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100355378(&v237, &v243);

          if (v54)
          {
            goto LABEL_49;
          }

          sub_100350510(&v237);
          ++v38;
          v37 += 96;
          v31 = v204;
          if (v32 == v204)
          {
            v69 = v194;
            goto LABEL_60;
          }
        }

        sub_100355378(&v237, &v243);

LABEL_49:
        if (*(&v242 + 1))
        {
          v69 = *(&v242 + 1);
        }

        else
        {
          v69 = _swiftEmptyArrayStorage;
        }

        v55 = swift_allocObject();
        v56 = v198;
        v57 = v198[5];
        *(v55 + 80) = v198[4];
        *(v55 + 96) = v57;
        *(v55 + 111) = *(v56 + 95);
        v58 = v56[1];
        *(v55 + 16) = *v56;
        *(v55 + 32) = v58;
        v59 = v56[3];
        *(v55 + 48) = v56[2];
        *(v55 + 64) = v59;
        v60 = swift_allocObject();
        v61 = v240;
        v60[3] = v239;
        v60[4] = v61;
        v62 = v242;
        v60[5] = v241;
        v60[6] = v62;
        v63 = v238;
        v60[1] = v237;
        v60[2] = v63;
        v196 = v60;
        sub_10020A7AC(v56, &v243);

        sub_10035A1F8(v194);
        v64 = v69[2];
        if (v64)
        {
          v65 = 0;
          v66 = v69 + 5;
          while (v65 < v69[2])
          {
            ++v65;
            v67 = v66[5];
            v68 = *v66;
            *&v243 = *(v66 - 1);
            *(&v243 + 1) = v68;
            v244 = *(v66 + 1);
            v245 = *(v66 + 3);
            *&v246 = v67;

            if (sub_100359F5C(&v243, (v55 + 16)))
            {
              v220 = v243;
              v221 = v244;
              v222 = v245;
              *&v223[0] = v246;
              sub_10035A010(&v220, v196 + 1, &v243);
              v185 = *(&v243 + 1);
              v186 = v243;
              v183 = *(&v244 + 1);
              v184 = v244;
              v182 = v245;
              v181 = v246;
              v178 = v247;
              v179 = *(&v246 + 1);
              v180 = BYTE8(v247);
              v194 = v249;
              v189 = v248;
              v187 = *(&v250 + 1);
              v188 = v250;
              v71 = *(&v251 + 1);
              v70 = v251;
              v72 = v252;

              v73 = v182;

              v75 = v178;
              v74 = v179;
              v76 = v180;
              v78 = v186;
              v77 = v187;
              v79 = v71;
              v81 = v183;
              v80 = v184;
              v82 = v185;
              v83 = v72;
              v84 = *(&v182 + 1);
              v85 = v70;
              v86 = v189;
              v87 = v194;
              v177 = v201 + 32;
              v88 = v188;
              v195 = sub_10035A1F0;
              v89 = v196;
              v199 = sub_10035A1E8;
              v90 = v181;
LABEL_62:
              v178 = v75;
              v179 = v74;
              v180 = v76;
              v181 = v90;
              *&v182 = v73;
              v189 = v86;
              v194 = v87;
              v236[0] = v78;
              v236[1] = v82;
              v236[2] = v80;
              v236[3] = v81;
              v236[4] = v73;
              v236[5] = v84;
              v236[6] = v90;
              v185 = v82;
              v186 = v78;
              *&v243 = v78;
              *(&v243 + 1) = v82;
              v183 = v81;
              v184 = v80;
              *&v244 = v80;
              *(&v244 + 1) = v81;
              *&v245 = v73;
              *(&v245 + 1) = v84;
              *&v246 = v90;
              *(&v246 + 1) = v74;
              *&v247 = v75;
              BYTE8(v247) = v76;
              v248 = v86;
              v249 = v87;
              v187 = v77;
              v188 = v88;
              *&v250 = v88;
              *(&v250 + 1) = v77;
              v174 = v83;
              v175 = v85;
              *&v251 = v85;
              *(&v251 + 1) = v79;
              v173 = v79;
              v252 = v83;
              v91 = v204;
              *(&v182 + 1) = v84;
              v196 = v89;
              if (v69)
              {
LABEL_63:
                v92 = v69[2];
                if (v65 != v92)
                {
                  v93 = &v69[7 * v65 + 10];
                  while (v65 < v69[2])
                  {
                    v94 = v65 + 1;
                    v95 = *v93;
                    v96 = *(v93 - 5);
                    v211 = *(v93 - 6);
                    v212 = v96;
                    v97 = *(v93 - 1);
                    v213 = *(v93 - 2);
                    v214 = v97;
                    v215 = v95;

                    if (v199(&v211))
                    {
                      v207[0] = v211;
                      v207[1] = v212;
                      v208 = v213;
                      v209 = v214;
                      v210 = v215;
                      (v195)(&v216, v207);
                      v223[3] = *&v219[48];
                      v223[4] = *&v219[64];
                      v223[5] = *&v219[80];
                      *&v223[6] = *&v219[96];
                      v222 = v218;
                      v223[0] = *v219;
                      v223[1] = *&v219[16];
                      v223[2] = *&v219[32];
                      v220 = v216;
                      v221 = v217;

                      v81 = *(&v221 + 1);
                      v84 = *(&v222 + 1);
                      v73 = v222;
                      v127 = *&v223[0];
                      v171 = *(&v220 + 1);
                      v172 = v220;
                      v234[0] = v220;
                      v170 = v221;
                      v234[1] = v221;
                      v234[2] = v222;
                      v235 = *&v223[0];
                      if (sub_10020B0C4(v234, v236, v176, v193))
                      {
                        sub_1000032A8(&v243, &qword_100781078);
                        v83 = *&v223[6];
                        v79 = *(&v223[5] + 1);
                        v85 = *&v223[5];
                        v86 = v223[2];
                        v87 = v223[3];
                        ++v65;
                        v77 = *(&v223[4] + 1);
                        v88 = *&v223[4];
                        v90 = v127;
                        v76 = BYTE8(v223[1]);
                        v80 = v170;
                        v82 = v171;
                        v78 = v172;
                        v74 = *(&v223[0] + 1);
                        v75 = *&v223[1];
                        v89 = v196;
                      }

                      else
                      {
                        sub_1000032A8(&v220, &qword_100781078);
                        ++v65;
                        v89 = v196;
                        v87 = v194;
                        v86 = v189;
                        v83 = v174;
                        v85 = v175;
                        v79 = v173;
                        v77 = v187;
                        v88 = v188;
                        v82 = v185;
                        v78 = v186;
                        v81 = v183;
                        v80 = v184;
                        v84 = *(&v182 + 1);
                        v73 = v182;
                        v90 = v181;
                        v76 = v180;
                        v75 = v178;
                        v74 = v179;
                      }

                      goto LABEL_62;
                    }

                    v93 += 7;
                    ++v65;
                    if (v92 == v94)
                    {
                      v91 = v204;
                      goto LABEL_69;
                    }
                  }

                  goto LABEL_177;
                }
              }

LABEL_69:
              if (v32 == v91)
              {
LABEL_121:

                sub_10035A1F8(v69);

                v223[3] = v249;
                v223[4] = v250;
                v223[5] = v251;
                *&v223[6] = v252;
                v222 = v245;
                v223[0] = v246;
                v223[1] = v247;
                v223[2] = v248;
                v220 = v243;
                v221 = v244;
                nullsub_1(&v220, v128, v129, v130, v131, v132, v133);
                v227[3] = v223[3];
                v227[4] = v223[4];
                v227[5] = v223[5];
                *&v227[6] = *&v223[6];
                v226 = v222;
                v227[0] = v223[0];
                v227[1] = v223[1];
                v227[2] = v223[2];
                v224 = v220;
                v225 = v221;
                goto LABEL_122;
              }

              v98 = (v177 + 96 * v32);
              v99 = v32;
              while (v99 < v91)
              {
                v100 = v98[1];
                v228 = *v98;
                v229 = v100;
                v101 = v98[2];
                v102 = v98[3];
                v103 = v98[5];
                v232 = v98[4];
                v233 = v103;
                v230 = v101;
                v231 = v102;
                v32 = v99 + 1;
                if (__OFADD__(v99, 1))
                {
                  goto LABEL_176;
                }

                if (v229 <= 1u)
                {
                  if (v229)
                  {
                    v105 = 0xD000000000000016;
                  }

                  else
                  {
                    v105 = 0x7A69732D6C6C7566;
                  }

                  v109 = 0xEF6567616D692D65;
                  v107 = v202;
                  v110 = v203;
                  if (v229)
                  {
                    v108 = v203;
                  }

                  else
                  {
                    v108 = 0xEF6567616D692D65;
                  }

                  v106 = 0xED00006567616D69;
                  v104 = 0x2D79616C70736964;
                }

                else
                {
                  if (v229 == 2)
                  {
                    v105 = 0xD000000000000013;
                    v108 = v205;
                    v109 = 0xEF6567616D692D65;
                    v106 = 0xED00006567616D69;
                    v104 = 0x2D79616C70736964;
                    v107 = v202;
                  }

                  else
                  {
                    v104 = 0x2D79616C70736964;
                    if (v229 == 3)
                    {
                      v105 = 0xD000000000000010;
                    }

                    else
                    {
                      v105 = 0x2D79616C70736964;
                    }

                    v106 = 0xED00006567616D69;
                    v107 = v202;
                    if (v229 == 3)
                    {
                      v108 = v202;
                    }

                    else
                    {
                      v108 = 0xED00006567616D69;
                    }

                    v109 = 0xEF6567616D692D65;
                  }

                  v110 = v203;
                }

                v111 = 0xD000000000000013;
                if (v206 == 3)
                {
                  v104 = 0xD000000000000010;
                  v106 = v107;
                }

                if (v206 != 2)
                {
                  v111 = v104;
                }

                v112 = v205;
                if (v206 != 2)
                {
                  v112 = v106;
                }

                v113 = 0xD000000000000016;
                if (v206)
                {
                  v109 = v110;
                }

                else
                {
                  v113 = 0x7A69732D6C6C7566;
                }

                if (v206 <= 1u)
                {
                  v114 = v113;
                }

                else
                {
                  v114 = v111;
                }

                if (v206 <= 1u)
                {
                  v115 = v109;
                }

                else
                {
                  v115 = v112;
                }

                if (v105 == v114 && v108 == v115)
                {
                  sub_100355378(&v228, &v220);

LABEL_112:
                  v117 = *(&v233 + 1);
                  v118 = swift_allocObject();
                  v119 = v198;
                  v120 = v198[5];
                  v118[5] = v198[4];
                  v118[6] = v120;
                  *(v118 + 111) = *(v119 + 95);
                  v121 = v119[1];
                  v118[1] = *v119;
                  v118[2] = v121;
                  v122 = v119[3];
                  v118[3] = v119[2];
                  v118[4] = v122;
                  v123 = swift_allocObject();
                  v124 = v231;
                  v123[3] = v230;
                  v123[4] = v124;
                  v125 = v233;
                  v123[5] = v232;
                  v123[6] = v125;
                  v126 = v229;
                  v123[1] = v228;
                  v123[2] = v126;
                  sub_10020A7AC(v119, &v220);

                  sub_10035A1F8(v69);
                  v65 = 0;
                  if (v117)
                  {
                    v69 = v117;
                  }

                  else
                  {
                    v69 = _swiftEmptyArrayStorage;
                  }

                  v195 = sub_10035DAB4;
                  v199 = sub_10035DAB0;
                  v91 = v204;
                  v196 = v123;
                  if (v69)
                  {
                    goto LABEL_63;
                  }

                  goto LABEL_69;
                }

                v116 = _stringCompareWithSmolCheck(_:_:expecting:)();
                sub_100355378(&v228, &v220);

                if (v116)
                {
                  goto LABEL_112;
                }

                sub_100350510(&v228);
                ++v99;
                v98 += 6;
                v91 = v204;
                if (v32 == v204)
                {
                  goto LABEL_121;
                }
              }

              goto LABEL_175;
            }

            v66 += 7;
            if (v64 == v65)
            {
              goto LABEL_57;
            }
          }

          goto LABEL_173;
        }

LABEL_57:
        v33 = v196;
        v34 = v55;
        v35 = v69;
        v31 = v204;
        v36 = v189;
        if (v32 != v204)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v69 = 0;
    }

LABEL_60:

    sub_10035A1F8(v69);

    sub_1001D2CC0(&v224);
LABEL_122:

    sub_10020A92C(v198);

    v223[3] = v227[3];
    v223[4] = v227[4];
    v223[5] = v227[5];
    *&v223[6] = *&v227[6];
    v222 = v226;
    v223[0] = v227[0];
    v223[1] = v227[1];
    v223[2] = v227[2];
    v220 = v224;
    v221 = v225;
    v134 = sub_10035A2FC(&v220);
    v14 = v191;
    v3 = v192;
    if (v134 != 1)
    {
      *&v219[40] = *(&v223[2] + 8);
      *&v219[56] = *(&v223[3] + 8);
      *&v219[72] = *(&v223[4] + 8);
      *&v219[88] = *(&v223[5] + 8);
      *&v219[8] = *(v223 + 8);
      *&v219[24] = *(&v223[1] + 8);
      v216 = v220;
      v217 = v221;
      v218 = v222;
      *v219 = *&v223[0];
      nullsub_1(&v216, v135, v136, v137, v138, v139, v140);
      v249 = *&v219[48];
      v250 = *&v219[64];
      v251 = *&v219[80];
      v252 = *&v219[96];
      v245 = v218;
      v246 = *v219;
      v247 = *&v219[16];
      v248 = *&v219[32];
      v164 = v216;
      v165 = v217;
LABEL_168:
      v243 = v164;
      v244 = v165;
      goto LABEL_169;
    }
  }

  v202 = *(v3 + v14[8]);
  v201 = *(v202 + 16);
  if (!v201)
  {
LABEL_164:
    sub_1001D2CC0(&v243);
    v163 = v197;
LABEL_170:
    v166 = v250;
    *(v163 + 96) = v249;
    *(v163 + 112) = v166;
    *(v163 + 128) = v251;
    *(v163 + 144) = v252;
    v167 = v246;
    *(v163 + 32) = v245;
    *(v163 + 48) = v167;
    v168 = v248;
    *(v163 + 64) = v247;
    *(v163 + 80) = v168;
    v169 = v244;
    *v163 = v243;
    *(v163 + 16) = v169;
    return;
  }

  v141 = 0;
  v142 = (v202 + 32);
  v203 = 0x80000001006C2F90;
  while (v141 < *(v202 + 16))
  {
    v143 = v142[1];
    v220 = *v142;
    v221 = v143;
    v144 = v142[2];
    v145 = v142[3];
    v146 = v142[5];
    v223[1] = v142[4];
    v223[2] = v146;
    v222 = v144;
    v223[0] = v145;
    if (v221 <= 1u)
    {
      if (v221)
      {
        v147 = 0xD000000000000016;
      }

      else
      {
        v147 = 0x7A69732D6C6C7566;
      }

      if (v221)
      {
        v148 = 0x80000001006C2F70;
      }

      else
      {
        v148 = 0xEF6567616D692D65;
      }
    }

    else if (v221 == 2)
    {
      v147 = 0xD000000000000013;
      v148 = v203;
    }

    else
    {
      if (v221 == 3)
      {
        v147 = 0xD000000000000010;
      }

      else
      {
        v147 = 0x2D79616C70736964;
      }

      if (v221 == 3)
      {
        v148 = 0x80000001006C2FB0;
      }

      else
      {
        v148 = 0xED00006567616D69;
      }
    }

    ++v141;
    v149 = 0xD000000000000013;
    if (v206 == 3)
    {
      v150 = 0xD000000000000010;
    }

    else
    {
      v150 = 0x2D79616C70736964;
    }

    if (v206 == 3)
    {
      v151 = 0x80000001006C2FB0;
    }

    else
    {
      v151 = 0xED00006567616D69;
    }

    if (v206 != 2)
    {
      v149 = v150;
    }

    v152 = v203;
    if (v206 != 2)
    {
      v152 = v151;
    }

    v153 = 0xD000000000000016;
    if (v206)
    {
      v154 = 0x80000001006C2F70;
    }

    else
    {
      v153 = 0x7A69732D6C6C7566;
      v154 = 0xEF6567616D692D65;
    }

    if (v206 <= 1u)
    {
      v155 = v153;
    }

    else
    {
      v155 = v149;
    }

    if (v206 <= 1u)
    {
      v156 = v154;
    }

    else
    {
      v156 = v152;
    }

    if (v147 == v155 && v148 == v156)
    {
      sub_100355378(&v220, &v243);

LABEL_167:
      *(&v227[2] + 8) = v222;
      *(&v227[3] + 8) = v223[0];
      *(&v227[4] + 8) = v223[1];
      *(&v227[5] + 8) = v223[2];
      *(v227 + 8) = v220;
      *(&v227[1] + 8) = v221;
      v224 = 0u;
      v225 = 0u;
      v226 = 0u;
      *&v227[0] = 0;
      nullsub_1(&v224, v157, v158, v159, v160, v161, v162);
      v249 = v227[3];
      v250 = v227[4];
      v251 = v227[5];
      v252 = *&v227[6];
      v245 = v226;
      v246 = v227[0];
      v247 = v227[1];
      v248 = v227[2];
      v164 = v224;
      v165 = v225;
      goto LABEL_168;
    }

    v204 = v156;
    LODWORD(v205) = _stringCompareWithSmolCheck(_:_:expecting:)();
    sub_100355378(&v220, &v243);

    if (v205)
    {
      goto LABEL_167;
    }

    sub_100350510(&v220);
    v142 += 6;
    if (v201 == v141)
    {
      goto LABEL_164;
    }
  }

LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
}