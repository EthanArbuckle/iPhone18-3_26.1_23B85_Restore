unint64_t sub_100082090()
{
  result = qword_1003CC618;
  if (!qword_1003CC618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC618);
  }

  return result;
}

uint64_t sub_100082150(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100082164(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000821A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_100082204(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C7561666544736FLL && a2 == 0xE900000000000074;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1684099177 && a2 == 0xE400000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656E6F685069 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6513005 && a2 == 0xE300000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x7974696C616572 && a2 == 0xE700000000000000;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 30324 && a2 == 0xE200000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6863746177 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100082440(char a1)
{
  result = 0x6C7561666544736FLL;
  switch(a1)
  {
    case 1:
      result = 1684099177;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 6513005;
      break;
    case 4:
      result = 0x7974696C616572;
      break;
    case 5:
      result = 30324;
      break;
    case 6:
      result = 0x6863746177;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100082530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100082204(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100082578@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10008242C();
  *a1 = result;
  return result;
}

uint64_t sub_1000825A0(uint64_t a1)
{
  v2 = sub_1000873AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000825DC(uint64_t a1)
{
  v2 = sub_1000873AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10008264C()
{
  sub_1000892DC();
  v56 = v1;
  v3 = v2;
  sub_100080FB4(&qword_1003CC7D8);
  sub_1000890DC();
  v54 = v5;
  v55 = v4;
  sub_100089118();
  __chkstk_darwin(v6);
  sub_1000891AC();
  v53 = v7;
  sub_100080FB4(&qword_1003CC7E0);
  sub_1000890DC();
  v51 = v9;
  v52 = v8;
  sub_100089118();
  __chkstk_darwin(v10);
  sub_1000891AC();
  v50 = v11;
  sub_100080FB4(&qword_1003CC7E8);
  sub_1000890DC();
  v48 = v13;
  v49 = v12;
  sub_100089118();
  __chkstk_darwin(v14);
  sub_1000891AC();
  v47 = v15;
  sub_100080FB4(&qword_1003CC7F0);
  sub_1000890DC();
  v45 = v17;
  v46 = v16;
  sub_100089118();
  __chkstk_darwin(v18);
  sub_1000891AC();
  v44 = v19;
  sub_100080FB4(&qword_1003CC7F8);
  sub_1000890DC();
  v42 = v21;
  v43 = v20;
  sub_100089118();
  __chkstk_darwin(v22);
  sub_1000891AC();
  v41 = v23;
  sub_100080FB4(&qword_1003CC800);
  sub_1000890DC();
  v39 = v25;
  v40 = v24;
  sub_100089118();
  __chkstk_darwin(v26);
  v28 = &v37 - v27;
  v29 = sub_100080FB4(&qword_1003CC808);
  sub_1000890DC();
  v38 = v30;
  sub_100089118();
  __chkstk_darwin(v31);
  sub_100089240();
  sub_100080FB4(&qword_1003CC810);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v32);
  sub_100089380();
  sub_1000893C0(v3, v3[3]);
  sub_1000873AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v56)
  {
    case 1:
      sub_1000875A4();
      sub_100089134();
      v34 = v39;
      v33 = v40;
      goto LABEL_9;
    case 2:
      sub_100087550();
      v28 = v41;
      sub_100089134();
      v34 = v42;
      v33 = v43;
      goto LABEL_9;
    case 3:
      sub_1000874FC();
      v28 = v44;
      sub_100089134();
      v34 = v45;
      v33 = v46;
      goto LABEL_9;
    case 4:
      sub_1000874A8();
      v28 = v47;
      sub_100089134();
      v34 = v48;
      v33 = v49;
      goto LABEL_9;
    case 5:
      sub_100087454();
      v28 = v50;
      sub_100089134();
      v34 = v51;
      v33 = v52;
      goto LABEL_9;
    case 6:
      sub_100087400();
      v28 = v53;
      sub_100089134();
      v34 = v54;
      v33 = v55;
LABEL_9:
      (*(v34 + 8))(v28, v33);
      break;
    default:
      sub_1000875F8();
      sub_100089184();
      (*(v38 + 8))(v0, v29);
      break;
  }

  v35 = sub_10008943C();
  v36(v35);
  sub_1000892C4();
}

void sub_100082BBC()
{
  sub_1000892DC();
  v4 = v3;
  sub_100080FB4(&qword_1003CC750);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_1000891AC();
  v60 = v6;
  sub_100080FB4(&qword_1003CC758);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v7);
  sub_1000891AC();
  sub_100080FB4(&qword_1003CC760);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v8);
  sub_1000891AC();
  v56 = sub_100080FB4(&qword_1003CC768);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v9);
  sub_1000891AC();
  sub_100080FB4(&qword_1003CC770);
  sub_1000890DC();
  v57 = v11;
  v58 = v10;
  sub_100089118();
  __chkstk_darwin(v12);
  sub_1000891AC();
  v59 = v13;
  sub_100080FB4(&qword_1003CC778);
  sub_1000890DC();
  v54 = v15;
  v55 = v14;
  sub_100089118();
  __chkstk_darwin(v16);
  sub_100089370();
  v17 = sub_100080FB4(&qword_1003CC780);
  sub_1000890DC();
  v53 = v18;
  sub_100089118();
  __chkstk_darwin(v19);
  sub_100089380();
  v20 = sub_100080FB4(&qword_1003CC788);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v21);
  sub_100089360();
  v22 = sub_1000891D0();
  sub_1000893C0(v22, v23);
  sub_1000873AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_9;
  }

  v52 = v2;
  v24 = v59;
  v25 = KeyedDecodingContainer.allKeys.getter();
  sub_100162698(v25, 0);
  if (v27 == v26 >> 1)
  {
    goto LABEL_8;
  }

  sub_1000891FC();
  sub_100089448();
  if (v30 == v31)
  {
    __break(1u);
    JUMPOUT(0x1000833E8);
  }

  v51 = *(v29 + v28);
  sub_100162694(v28 + 1);
  v33 = v32;
  v35 = v34;
  swift_unknownObjectRelease();
  if (v33 != v35 >> 1)
  {
LABEL_8:
    v36 = type metadata accessor for DecodingError();
    sub_1000894A0();
    v38 = v37;
    sub_100080FB4(&qword_1003CC798);
    *v38 = &type metadata for ProductRequest.Platform;
    KeyedDecodingContainer.codingPath.getter();
    sub_1000891DC();
    (*(*(v36 - 8) + 104))(v38, enum case for DecodingError.typeMismatch(_:), v36);
    swift_willThrow();
    swift_unknownObjectRelease();
    v39 = sub_100089308();
    v40(v39, v20);
LABEL_9:
    sub_100080F0C(v4);
    goto LABEL_10;
  }

  switch(v51)
  {
    case 1:
      sub_1000875A4();
      v24 = v0;
      sub_1000890F0();
      swift_unknownObjectRelease();
      v42 = v54;
      v41 = v55;
      goto LABEL_15;
    case 2:
      sub_100087550();
      sub_1000890F0();
      swift_unknownObjectRelease();
      v42 = v57;
      v41 = v58;
LABEL_15:
      (*(v42 + 8))(v24, v41);
      goto LABEL_20;
    case 3:
      sub_1000874FC();
      sub_1000890F0();
      swift_unknownObjectRelease();
      v43 = sub_1000893D8();
      v45 = v56;
      goto LABEL_19;
    case 4:
      sub_1000874A8();
      sub_1000890F0();
      swift_unknownObjectRelease();
      goto LABEL_18;
    case 5:
      sub_100087454();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      v49 = sub_1000893D8();
      v50(v49);
      v46 = sub_1000892FC();
      v48 = v20;
      break;
    case 6:
      sub_100087400();
      sub_1000890F0();
      swift_unknownObjectRelease();
LABEL_18:
      v43 = sub_1000893D8();
LABEL_19:
      v44(v43, v45);
LABEL_20:
      v46 = sub_1000892FC();
      v48 = v60;
      break;
    default:
      sub_1000875F8();
      sub_1000891A0();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      swift_unknownObjectRelease();
      (*(v53 + 8))(v52, v17);
      v46 = sub_1000892FC();
      v48 = v20;
      break;
  }

  v47(v46, v48);
  sub_100080F0C(v4);
LABEL_10:
  sub_1000892C4();
}

uint64_t sub_100083404(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000019 && 0x8000000100313D50 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x654D79636167656CLL && a2 == 0xEE00495041616964;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x495041616964656DLL && a2 == 0xE800000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_100083530(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0x654D79636167656CLL;
  }

  return 0x495041616964656DLL;
}

void sub_100083598()
{
  sub_1000892DC();
  v16 = v1;
  v3 = v2;
  sub_100080FB4(&qword_1003CC8A8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v4);
  sub_1000891AC();
  sub_100080FB4(&qword_1003CC8B0);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100089174();
  v6 = sub_100080FB4(&qword_1003CC8B8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089360();
  v8 = sub_100080FB4(&qword_1003CC8C0);
  sub_1000890DC();
  v10 = v9;
  sub_100089118();
  __chkstk_darwin(v11);
  sub_100089240();
  sub_1000893C0(v3, v3[3]);
  sub_10008779C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = (v10 + 8);
  if (v16)
  {
    if (v16 == 1)
    {
      sub_100087844();
      sub_1000891A0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v13 = sub_1000893D8();
    }

    else
    {
      sub_1000877F0();
      sub_1000891A0();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v13 = sub_1000893E4();
    }
  }

  else
  {
    sub_100087898();
    sub_1000891A0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v13 = sub_100089308();
    v14 = v6;
  }

  v15(v13, v14);
  (*v12)(v0, v8);
  sub_1000892C4();
}

void sub_1000838BC()
{
  sub_1000892DC();
  v2 = v1;
  v41 = sub_100080FB4(&qword_1003CC868);
  sub_1000890DC();
  v40 = v3;
  sub_100089118();
  __chkstk_darwin(v4);
  sub_1000891AC();
  v38 = v5;
  v39 = sub_100080FB4(&qword_1003CC870);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v6);
  sub_100089230();
  v7 = sub_100080FB4(&qword_1003CC878);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089240();
  v9 = sub_100080FB4(&qword_1003CC880);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v10);
  sub_100089350();
  sub_1000893C0(v2, v2[3]);
  sub_10008779C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v11 = KeyedDecodingContainer.allKeys.getter();
    sub_100162698(v11, 0);
    v13 = v9;
    if (v14 != v12 >> 1)
    {
      sub_1000891FC();
      sub_100089448();
      if (v17 == v18)
      {
        __break(1u);
        return;
      }

      v19 = v9;
      v20 = *(v16 + v15);
      sub_100162694(v15 + 1);
      v22 = v21;
      v24 = v23;
      swift_unknownObjectRelease();
      if (v22 == v24 >> 1)
      {
        if (v20)
        {
          if (v20 == 1)
          {
            sub_100087844();
            sub_1000893B0();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            v25 = sub_1000893E4();
            v26(v25, v39);
          }

          else
          {
            sub_1000877F0();
            sub_1000893B0();
            KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            swift_unknownObjectRelease();
            (*(v40 + 8))(v38, v41);
          }

          v27 = sub_1000893A0();
          v28(v27);
        }

        else
        {
          sub_100087898();
          sub_1000893B0();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          swift_unknownObjectRelease();
          v34 = sub_1000893E4();
          v35(v34, v7);
          v36 = sub_100089250();
          v37(v36, v19);
        }

        goto LABEL_12;
      }

      v13 = v19;
    }

    type metadata accessor for DecodingError();
    sub_1000894A0();
    v30 = v29;
    sub_100080FB4(&qword_1003CC798);
    *v30 = &type metadata for ProductRequest.RequestKind;
    KeyedDecodingContainer.codingPath.getter();
    sub_1000891DC();
    sub_100089390();
    (*(v31 + 104))(v30);
    swift_willThrow();
    swift_unknownObjectRelease();
    v32 = sub_100089250();
    v33(v32, v13);
  }

LABEL_12:
  sub_100080F0C(v2);
  sub_1000892C4();
}

uint64_t sub_100083DEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73746375646F7270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000100313D70 == a2)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100083ED4(char a1)
{
  if (a1)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x73746375646F7270;
  }
}

uint64_t sub_100083F48(uint64_t a1, uint64_t a2)
{
  if (a1 == 7554121 && a2 == 0xE300000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_100083FC0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void sub_100084004()
{
  sub_1000892DC();
  v16 = v1;
  v3 = v2;
  sub_100080FB4(&qword_1003CC900);
  sub_1000890DC();
  v15 = v4;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100089360();
  v6 = sub_100080FB4(&qword_1003CC908);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089174();
  v8 = sub_100080FB4(&qword_1003CC910);
  sub_1000890DC();
  v10 = v9;
  sub_100089118();
  __chkstk_darwin(v11);
  sub_100089350();
  sub_1000893C0(v3, v3[3]);
  sub_1000878EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v16)
  {
    sub_100087940();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100080FB4(&unk_1003D0530);
    sub_100089260(&unk_1003CC918);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = sub_100089308();
    v14 = v15;
  }

  else
  {
    sub_100087994();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100080FB4(&unk_1003D0530);
    sub_100089260(&unk_1003CC918);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = sub_1000893D8();
    v14 = v6;
  }

  v13(v12, v14);
  (*(v10 + 8))(v0, v8);
  sub_1000892C4();
}

void sub_100084304()
{
  sub_1000892DC();
  v2 = v1;
  v30 = sub_100080FB4(&qword_1003CC8C8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_100089350();
  sub_100080FB4(&qword_1003CC8D0);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v4);
  sub_100089240();
  v5 = sub_100080FB4(&qword_1003CC8D8);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v6);
  sub_100089370();
  sub_1000893C0(v2, v2[3]);
  sub_1000878EC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v31 = v2;
    v7 = KeyedDecodingContainer.allKeys.getter();
    sub_100162698(v7, 0);
    if (v9 != v8 >> 1)
    {
      sub_1000891FC();
      sub_100089448();
      if (v12 == v13)
      {
        __break(1u);
        return;
      }

      v14 = *(v11 + v10);
      sub_100162694(v10 + 1);
      v16 = v15;
      v18 = v17;
      swift_unknownObjectRelease();
      if (v16 == v18 >> 1)
      {
        if (v14)
        {
          sub_100087940();
          sub_100089460();
          sub_100080FB4(&unk_1003D0530);
          sub_100089294(&unk_1003CC8F0);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v24 = sub_100089308();
          v25(v24, v30);
        }

        else
        {
          sub_100087994();
          sub_100089460();
          sub_100080FB4(&unk_1003D0530);
          sub_100089294(&unk_1003CC8F0);
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          swift_unknownObjectRelease();
          v28 = sub_10008943C();
          v29(v28);
        }

        v26 = sub_100089124();
        v27(v26);
        sub_100080F0C(v31);
        goto LABEL_10;
      }
    }

    type metadata accessor for DecodingError();
    sub_1000894A0();
    v20 = v19;
    sub_100080FB4(&qword_1003CC798);
    *v20 = &type metadata for ProductRequest.IdentifierKind;
    KeyedDecodingContainer.codingPath.getter();
    sub_1000891DC();
    sub_100089390();
    (*(v21 + 104))(v20);
    swift_willThrow();
    swift_unknownObjectRelease();
    v22 = sub_1000893E4();
    v23(v22, v5);
    v2 = v31;
  }

  sub_100080F0C(v2);
LABEL_10:
  sub_1000892C4();
}

BOOL sub_10008483C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003833B0, v2);

  return v3 != 0;
}

uint64_t sub_1000848A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100082618();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000848EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100082638();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100084918(uint64_t a1)
{
  v2 = sub_1000875A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084954(uint64_t a1)
{
  v2 = sub_1000875A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084990(uint64_t a1)
{
  v2 = sub_100087550();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000849CC(uint64_t a1)
{
  v2 = sub_100087550();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084A08(uint64_t a1)
{
  v2 = sub_1000874FC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084A44(uint64_t a1)
{
  v2 = sub_1000874FC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084A80(uint64_t a1)
{
  v2 = sub_1000875F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084ABC(uint64_t a1)
{
  v2 = sub_1000875F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084AF8(uint64_t a1)
{
  v2 = sub_1000874A8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084B34(uint64_t a1)
{
  v2 = sub_1000874A8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084B70(uint64_t a1)
{
  v2 = sub_100087454();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084BAC(uint64_t a1)
{
  v2 = sub_100087454();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084BE8(uint64_t a1)
{
  v2 = sub_100087400();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084C24(uint64_t a1)
{
  v2 = sub_100087400();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100084C60(_BYTE *a1@<X8>)
{
  sub_100082BBC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100084CBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100084CE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100083524();
  *a1 = result;
  return result;
}

uint64_t sub_100084D0C(uint64_t a1)
{
  v2 = sub_10008779C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084D48(uint64_t a1)
{
  v2 = sub_10008779C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084D84(uint64_t a1)
{
  v2 = sub_100087898();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084DC0(uint64_t a1)
{
  v2 = sub_100087898();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084DFC(uint64_t a1)
{
  v2 = sub_100087844();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084E38(uint64_t a1)
{
  v2 = sub_100087844();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100084E74(uint64_t a1)
{
  v2 = sub_1000877F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100084EB0(uint64_t a1)
{
  v2 = sub_1000877F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100084EF4(_BYTE *a1@<X8>)
{
  sub_1000838BC();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t sub_100084F74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083DEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100084F9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100083EBC();
  *a1 = result;
  return result;
}

uint64_t sub_100084FC4(uint64_t a1)
{
  v2 = sub_1000878EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085000(uint64_t a1)
{
  v2 = sub_1000878EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100085064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083F48(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_100085090(uint64_t a1)
{
  v2 = sub_100087994();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000850CC(uint64_t a1)
{
  v2 = sub_100087994();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_100085108()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100085148(uint64_t a1)
{
  v2 = sub_100087940();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085184(uint64_t a1)
{
  v2 = sub_100087940();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000851C0(uint64_t a1@<X8>)
{
  sub_100084304();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4 & 1;
  }
}

unint64_t sub_100085218()
{
  result = qword_1003CC660;
  if (!qword_1003CC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC660);
  }

  return result;
}

unint64_t sub_100085270()
{
  result = qword_1003CC668;
  if (!qword_1003CC668)
  {
    sub_1000852D4(&qword_1003CC670);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC668);
  }

  return result;
}

uint64_t sub_1000852D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

BOOL sub_10008532C@<W0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10008483C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100085360@<X0>(void *a1@<X8>)
{
  result = sub_100084884();
  *a1 = 0xD000000000000016;
  a1[1] = v3;
  return result;
}

uint64_t sub_10008544C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000100313D30 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F6B6361426E6977 && a2 == 0xED00007372656666)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_100085524(char a1)
{
  if (a1)
  {
    return 0x4F6B6361426E6977;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_100085574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10008544C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10008559C(uint64_t a1)
{
  v2 = sub_1000876A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000855D8(uint64_t a1)
{
  v2 = sub_1000876A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100085614(uint64_t a1)
{
  v2 = sub_100087748();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100085650(uint64_t a1)
{
  v2 = sub_100087748();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10008568C(uint64_t a1)
{
  v2 = sub_1000876F4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000856C8(uint64_t a1)
{
  v2 = sub_1000876F4();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_100085704()
{
  sub_1000892DC();
  v17 = v2;
  sub_100080FB4(&qword_1003CC850);
  sub_1000890DC();
  v15 = v4;
  v16 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100089230();
  v14 = sub_100080FB4(&qword_1003CC858);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089174();
  sub_100080FB4(&qword_1003CC860);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v9);
  sub_100089380();
  v10 = sub_1000891D0();
  sub_1000893C0(v10, v11);
  sub_1000876A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17)
  {
    sub_1000876F4();
    sub_100089184();
    (*(v15 + 8))(v0, v16);
  }

  else
  {
    sub_100087748();
    sub_100089184();
    (*(v7 + 8))(v1, v14);
  }

  v12 = sub_10008943C();
  v13(v12);
  sub_1000892C4();
}

Swift::Int sub_100085970(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void sub_1000859B8()
{
  sub_1000892DC();
  v2 = v1;
  v31 = sub_100080FB4(&qword_1003CC820);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v3);
  sub_100089370();
  v4 = sub_100080FB4(&qword_1003CC828);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100089174();
  v6 = sub_100080FB4(&qword_1003CC830);
  sub_1000890DC();
  sub_100089118();
  __chkstk_darwin(v7);
  sub_100089230();
  sub_1000893C0(v2, v2[3]);
  sub_1000876A0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    v32 = v2;
    v8 = KeyedDecodingContainer.allKeys.getter();
    sub_100162698(v8, 0);
    if (v10 != v9 >> 1)
    {
      sub_1000891FC();
      sub_100089448();
      if (v13 == v14)
      {
        __break(1u);
        return;
      }

      v15 = *(v12 + v11);
      sub_100162694(v11 + 1);
      v17 = v16;
      v19 = v18;
      swift_unknownObjectRelease();
      if (v17 == v19 >> 1)
      {
        if (v15)
        {
          sub_1000876F4();
          sub_1000893F8();
          swift_unknownObjectRelease();
          v25 = sub_100089308();
          v26(v25, v31);
        }

        else
        {
          sub_100087748();
          sub_1000893F8();
          swift_unknownObjectRelease();
          v29 = sub_1000893E4();
          v30(v29, v4);
        }

        v27 = sub_100089284();
        v28(v27);
        sub_100080F0C(v32);
        goto LABEL_10;
      }
    }

    type metadata accessor for DecodingError();
    sub_1000894A0();
    v21 = v20;
    sub_100080FB4(&qword_1003CC798);
    *v21 = &type metadata for ProductRequest.IncludedResource;
    KeyedDecodingContainer.codingPath.getter();
    sub_1000891DC();
    sub_100089390();
    (*(v22 + 104))(v21);
    swift_willThrow();
    swift_unknownObjectRelease();
    v23 = sub_100089250();
    v24(v23, v6);
    v2 = v32;
  }

  sub_100080F0C(v2);
LABEL_10:
  sub_1000892C4();
}

void sub_100085DD4(_BYTE *a1@<X8>)
{
  sub_1000859B8();
  if (!v1)
  {
    *a1 = v3 & 1;
  }
}

unint64_t sub_100085E34()
{
  result = qword_1003CC678;
  if (!qword_1003CC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC678);
  }

  return result;
}

Swift::Int sub_100085E88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100085ECC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x764F746E65696C63 && a2 == 0xEE00656469727265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1684957547 && a2 == 0xE400000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x8000000100313CF0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000012 && 0x8000000100313D10 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

Swift::Int sub_100086114(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

unint64_t sub_10008615C(char a1)
{
  result = 0x764F746E65696C63;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 1684957547;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x79654B676F6CLL;
      break;
    case 6:
      result = 0x6D726F6674616C70;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100086254()
{
  v2 = sub_100080FB4(&qword_1003CC708);
  sub_1000890DC();
  v4 = v3;
  sub_100089118();
  __chkstk_darwin(v5);
  v7 = &v15 - v6;
  v8 = sub_1000891D0();
  sub_1000893C0(v8, v9);
  sub_100086D68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for ClientOverride(0);
  sub_1000891B8();
  sub_100087160(v10);
  sub_1000892B8();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v11 = type metadata accessor for ProductRequest();
    v12 = (v0 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 8);
    v17 = v13;
    v18 = v12;
    v16 = 1;
    sub_1000871A4();
    sub_100089164();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = *(v0 + v11[6]);
    v16 = 2;
    sub_1000871F8();
    sub_100089164();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v0 + v11[7]);
    v16 = 3;
    sub_100080FB4(&qword_1003CC6D0);
    sub_10008724C(&unk_1003CC728);
    sub_100089164();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v0 + v11[8]);
    v16 = 4;
    sub_100080FB4(&qword_1003CC6E8);
    sub_100086F94(&unk_1003CC738);
    sub_100089164();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v17) = 5;
    sub_1000892B8();
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v17) = *(v0 + v11[10]);
    v16 = 6;
    sub_100087358();
    sub_100089164();
    sub_1000892B8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v2);
}

void sub_100086590()
{
  sub_1000892DC();
  v3 = v2;
  v22 = v4;
  sub_100080FB4(&unk_1003D20F0);
  sub_100089118();
  __chkstk_darwin(v5);
  sub_100089174();
  v23 = sub_100080FB4(&qword_1003CC6A8);
  sub_1000890DC();
  v7 = v6;
  sub_100089118();
  __chkstk_darwin(v8);
  sub_100089230();
  v24 = type metadata accessor for ProductRequest();
  __chkstk_darwin(v24);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3[3];
  v25 = v3;
  sub_1000893C0(v3, v11);
  sub_100086D68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100080F0C(v25);
  }

  else
  {
    v21[1] = v7;
    type metadata accessor for ClientOverride(0);
    LOBYTE(v26) = 0;
    sub_1000891B8();
    sub_100087160(v12);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_100086E28(v1, v10);
    sub_100086E98();
    sub_10008920C();
    v13 = v27;
    v14 = v24;
    v15 = &v10[*(v24 + 20)];
    *v15 = v26;
    v15[8] = v13;
    sub_100086EEC();
    sub_10008920C();
    v10[v14[6]] = v26;
    sub_100080FB4(&qword_1003CC6D0);
    sub_10008724C(&unk_1003CC6D8);
    sub_100089324();
    *&v10[v14[7]] = v26;
    sub_100080FB4(&qword_1003CC6E8);
    sub_100086F94(&unk_1003CC6F0);
    sub_100089324();
    *&v10[v14[8]] = v26;
    LOBYTE(v26) = 5;
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = &v10[v14[9]];
    *v17 = v16;
    v17[1] = v18;
    sub_10008704C();
    sub_10008920C();
    v19 = sub_100089154();
    v20(v19);
    v10[v14[10]] = v26;
    sub_1000870A0(v10, v22);
    sub_100080F0C(v25);
    sub_100087104(v10);
  }

  sub_1000892C4();
}

uint64_t sub_100086AC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100085ECC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100086AF0(uint64_t a1)
{
  v2 = sub_100086D68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100086B2C(uint64_t a1)
{
  v2 = sub_100086D68();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100086B98(uint64_t a1)
{
  *(a1 + 8) = sub_100087160(&unk_1003CC680);
  result = sub_100087160(&unk_1003CC688);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100086C1C(uint64_t a1)
{
  result = sub_100087160(&unk_1003CC690);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100086C78()
{
  result = qword_1003CC698;
  if (!qword_1003CC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC698);
  }

  return result;
}

unint64_t sub_100086CD0()
{
  result = qword_1003CC6A0;
  if (!qword_1003CC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC6A0);
  }

  return result;
}

void *sub_100086D24(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100086D68()
{
  result = qword_1003CC6B0;
  if (!qword_1003CC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC6B0);
  }

  return result;
}

uint64_t sub_100086DC0(uint64_t a1)
{
  v2 = sub_100080FB4(&unk_1003D20F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100086E28(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003D20F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_100086E98()
{
  result = qword_1003CC6C0;
  if (!qword_1003CC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC6C0);
  }

  return result;
}

unint64_t sub_100086EEC()
{
  result = qword_1003CC6C8;
  if (!qword_1003CC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC6C8);
  }

  return result;
}

unint64_t sub_100086F40()
{
  result = qword_1003CC6E0;
  if (!qword_1003CC6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC6E0);
  }

  return result;
}

unint64_t sub_100086F94(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    v4 = v3;
    sub_1000852D4(&qword_1003CC6E8);
    v4();
    result = sub_100089480();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_100086FF8()
{
  result = qword_1003CC6F8;
  if (!qword_1003CC6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC6F8);
  }

  return result;
}

unint64_t sub_10008704C()
{
  result = qword_1003CC700;
  if (!qword_1003CC700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC700);
  }

  return result;
}

uint64_t sub_1000870A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProductRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100087104(uint64_t a1)
{
  v2 = type metadata accessor for ProductRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100087160(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000871A4()
{
  result = qword_1003CC718;
  if (!qword_1003CC718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC718);
  }

  return result;
}

unint64_t sub_1000871F8()
{
  result = qword_1003CC720;
  if (!qword_1003CC720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC720);
  }

  return result;
}

unint64_t sub_10008724C(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    v4 = v3;
    sub_1000852D4(&qword_1003CC6D0);
    v4();
    result = sub_100089480();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000872B0()
{
  result = qword_1003CC730;
  if (!qword_1003CC730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC730);
  }

  return result;
}

unint64_t sub_100087304()
{
  result = qword_1003CC740;
  if (!qword_1003CC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC740);
  }

  return result;
}

unint64_t sub_100087358()
{
  result = qword_1003CC748;
  if (!qword_1003CC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC748);
  }

  return result;
}

unint64_t sub_1000873AC()
{
  result = qword_1003CC790;
  if (!qword_1003CC790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC790);
  }

  return result;
}

unint64_t sub_100087400()
{
  result = qword_1003CC7A0;
  if (!qword_1003CC7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7A0);
  }

  return result;
}

unint64_t sub_100087454()
{
  result = qword_1003CC7A8;
  if (!qword_1003CC7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7A8);
  }

  return result;
}

unint64_t sub_1000874A8()
{
  result = qword_1003CC7B0;
  if (!qword_1003CC7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7B0);
  }

  return result;
}

unint64_t sub_1000874FC()
{
  result = qword_1003CC7B8;
  if (!qword_1003CC7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7B8);
  }

  return result;
}

unint64_t sub_100087550()
{
  result = qword_1003CC7C0;
  if (!qword_1003CC7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7C0);
  }

  return result;
}

unint64_t sub_1000875A4()
{
  result = qword_1003CC7C8;
  if (!qword_1003CC7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7C8);
  }

  return result;
}

unint64_t sub_1000875F8()
{
  result = qword_1003CC7D0;
  if (!qword_1003CC7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC7D0);
  }

  return result;
}

unint64_t sub_10008764C()
{
  result = qword_1003CC818;
  if (!qword_1003CC818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC818);
  }

  return result;
}

unint64_t sub_1000876A0()
{
  result = qword_1003CC838;
  if (!qword_1003CC838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC838);
  }

  return result;
}

unint64_t sub_1000876F4()
{
  result = qword_1003CC840;
  if (!qword_1003CC840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC840);
  }

  return result;
}

unint64_t sub_100087748()
{
  result = qword_1003CC848;
  if (!qword_1003CC848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC848);
  }

  return result;
}

unint64_t sub_10008779C()
{
  result = qword_1003CC888;
  if (!qword_1003CC888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC888);
  }

  return result;
}

unint64_t sub_1000877F0()
{
  result = qword_1003CC890;
  if (!qword_1003CC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC890);
  }

  return result;
}

unint64_t sub_100087844()
{
  result = qword_1003CC898;
  if (!qword_1003CC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC898);
  }

  return result;
}

unint64_t sub_100087898()
{
  result = qword_1003CC8A0;
  if (!qword_1003CC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC8A0);
  }

  return result;
}

unint64_t sub_1000878EC()
{
  result = qword_1003CC8E0;
  if (!qword_1003CC8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC8E0);
  }

  return result;
}

unint64_t sub_100087940()
{
  result = qword_1003CC8E8;
  if (!qword_1003CC8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC8E8);
  }

  return result;
}

unint64_t sub_100087994()
{
  result = qword_1003CC8F8;
  if (!qword_1003CC8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC8F8);
  }

  return result;
}

unint64_t sub_1000879E8(uint64_t a1)
{
  result = sub_100089454(a1);
  if (!result)
  {
    sub_1000852D4(&unk_1003D0530);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_100087A88(unsigned __int8 *a1, int a2)
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

  return sub_1000893F0(a1);
}

_BYTE *sub_100087AD4(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x100087B70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100087BAC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100089434(-1);
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
      return sub_100089434((*a1 | (v4 << 8)) - 3);
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

      return sub_100089434((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100089434((*a1 | (v4 << 8)) - 3);
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

  return sub_100089434(v8);
}

_BYTE *sub_100087C34(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = sub_10008942C(result, v6);
        break;
      case 2:
        result = sub_10008941C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100087CF0);
      case 4:
        result = sub_100089424(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1000892F4(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100087D58(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100089434(-1);
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
      return sub_100089434((*a1 | (v4 << 8)) - 2);
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

      return sub_100089434((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100089434((*a1 | (v4 << 8)) - 2);
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

  return sub_100089434(v8);
}

_BYTE *sub_100087DDC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_10008942C(result, v6);
        break;
      case 2:
        result = sub_10008941C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100087E98);
      case 4:
        result = sub_100089424(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1000892F4(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100087F78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_100089434(-1);
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
      return sub_100089434((*a1 | (v4 << 8)) - 7);
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

      return sub_100089434((*a1 | (v4 << 8)) - 7);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_100089434((*a1 | (v4 << 8)) - 7);
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

  return sub_100089434(v8);
}

_BYTE *sub_100087FFC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result = sub_10008942C(result, v6);
        break;
      case 2:
        result = sub_10008941C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000880B8);
      case 4:
        result = sub_100089424(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = sub_1000892F4(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000880F4()
{
  result = qword_1003CC920;
  if (!qword_1003CC920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC920);
  }

  return result;
}

unint64_t sub_10008814C()
{
  result = qword_1003CC928;
  if (!qword_1003CC928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC928);
  }

  return result;
}

unint64_t sub_1000881A4()
{
  result = qword_1003CC930;
  if (!qword_1003CC930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC930);
  }

  return result;
}

unint64_t sub_1000881FC()
{
  result = qword_1003CC938;
  if (!qword_1003CC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC938);
  }

  return result;
}

unint64_t sub_100088254()
{
  result = qword_1003CC940;
  if (!qword_1003CC940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC940);
  }

  return result;
}

unint64_t sub_1000882AC()
{
  result = qword_1003CC948;
  if (!qword_1003CC948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC948);
  }

  return result;
}

unint64_t sub_100088304()
{
  result = qword_1003CC950;
  if (!qword_1003CC950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC950);
  }

  return result;
}

unint64_t sub_10008835C()
{
  result = qword_1003CC958;
  if (!qword_1003CC958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC958);
  }

  return result;
}

unint64_t sub_1000883B4()
{
  result = qword_1003CC960;
  if (!qword_1003CC960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC960);
  }

  return result;
}

unint64_t sub_10008840C()
{
  result = qword_1003CC968;
  if (!qword_1003CC968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC968);
  }

  return result;
}

unint64_t sub_100088464()
{
  result = qword_1003CC970;
  if (!qword_1003CC970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC970);
  }

  return result;
}

unint64_t sub_1000884BC()
{
  result = qword_1003CC978;
  if (!qword_1003CC978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC978);
  }

  return result;
}

unint64_t sub_100088514()
{
  result = qword_1003CC980;
  if (!qword_1003CC980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC980);
  }

  return result;
}

unint64_t sub_10008856C()
{
  result = qword_1003CC988;
  if (!qword_1003CC988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC988);
  }

  return result;
}

unint64_t sub_1000885C4()
{
  result = qword_1003CC990;
  if (!qword_1003CC990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC990);
  }

  return result;
}

unint64_t sub_10008861C()
{
  result = qword_1003CC998;
  if (!qword_1003CC998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC998);
  }

  return result;
}

unint64_t sub_100088674()
{
  result = qword_1003CC9A0;
  if (!qword_1003CC9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9A0);
  }

  return result;
}

unint64_t sub_1000886CC()
{
  result = qword_1003CC9A8;
  if (!qword_1003CC9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9A8);
  }

  return result;
}

unint64_t sub_100088724()
{
  result = qword_1003CC9B0;
  if (!qword_1003CC9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9B0);
  }

  return result;
}

unint64_t sub_10008877C()
{
  result = qword_1003CC9B8;
  if (!qword_1003CC9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9B8);
  }

  return result;
}

unint64_t sub_1000887D4()
{
  result = qword_1003CC9C0;
  if (!qword_1003CC9C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9C0);
  }

  return result;
}

unint64_t sub_10008882C()
{
  result = qword_1003CC9C8;
  if (!qword_1003CC9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9C8);
  }

  return result;
}

unint64_t sub_100088884()
{
  result = qword_1003CC9D0;
  if (!qword_1003CC9D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9D0);
  }

  return result;
}

unint64_t sub_1000888DC()
{
  result = qword_1003CC9D8;
  if (!qword_1003CC9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9D8);
  }

  return result;
}

unint64_t sub_100088934()
{
  result = qword_1003CC9E0;
  if (!qword_1003CC9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9E0);
  }

  return result;
}

unint64_t sub_10008898C()
{
  result = qword_1003CC9E8;
  if (!qword_1003CC9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9E8);
  }

  return result;
}

unint64_t sub_1000889E4()
{
  result = qword_1003CC9F0;
  if (!qword_1003CC9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9F0);
  }

  return result;
}

unint64_t sub_100088A3C()
{
  result = qword_1003CC9F8;
  if (!qword_1003CC9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC9F8);
  }

  return result;
}

unint64_t sub_100088A94()
{
  result = qword_1003CCA00;
  if (!qword_1003CCA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA00);
  }

  return result;
}

unint64_t sub_100088AEC()
{
  result = qword_1003CCA08;
  if (!qword_1003CCA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA08);
  }

  return result;
}

unint64_t sub_100088B44()
{
  result = qword_1003CCA10;
  if (!qword_1003CCA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA10);
  }

  return result;
}

unint64_t sub_100088B9C()
{
  result = qword_1003CCA18;
  if (!qword_1003CCA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA18);
  }

  return result;
}

unint64_t sub_100088BF4()
{
  result = qword_1003CCA20;
  if (!qword_1003CCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA20);
  }

  return result;
}

unint64_t sub_100088C4C()
{
  result = qword_1003CCA28;
  if (!qword_1003CCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA28);
  }

  return result;
}

unint64_t sub_100088CA4()
{
  result = qword_1003CCA30;
  if (!qword_1003CCA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA30);
  }

  return result;
}

unint64_t sub_100088CFC()
{
  result = qword_1003CCA38;
  if (!qword_1003CCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA38);
  }

  return result;
}

unint64_t sub_100088D54()
{
  result = qword_1003CCA40;
  if (!qword_1003CCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA40);
  }

  return result;
}

unint64_t sub_100088DAC()
{
  result = qword_1003CCA48;
  if (!qword_1003CCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA48);
  }

  return result;
}

unint64_t sub_100088E04()
{
  result = qword_1003CCA50;
  if (!qword_1003CCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA50);
  }

  return result;
}

unint64_t sub_100088E5C()
{
  result = qword_1003CCA58;
  if (!qword_1003CCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA58);
  }

  return result;
}

unint64_t sub_100088EB4()
{
  result = qword_1003CCA60;
  if (!qword_1003CCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA60);
  }

  return result;
}

unint64_t sub_100088F0C()
{
  result = qword_1003CCA68;
  if (!qword_1003CCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA68);
  }

  return result;
}

unint64_t sub_100088F64()
{
  result = qword_1003CCA70;
  if (!qword_1003CCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA70);
  }

  return result;
}

unint64_t sub_100088FBC()
{
  result = qword_1003CCA78;
  if (!qword_1003CCA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA78);
  }

  return result;
}

unint64_t sub_100089014()
{
  result = qword_1003CCA80;
  if (!qword_1003CCA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA80);
  }

  return result;
}

uint64_t sub_1000890F0()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100089134()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100089184()
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_1000891DC()
{

  return DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
}

uint64_t sub_10008920C()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

unint64_t sub_100089260(uint64_t a1)
{

  return sub_1000879E8(a1);
}

unint64_t sub_100089294(uint64_t a1)
{

  return sub_1000879E8(a1);
}

uint64_t sub_100089324()
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t sub_1000893F8()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100089460()
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t sub_100089480()
{

  return swift_getWitnessTable();
}

uint64_t sub_1000894A0()
{

  return swift_allocError();
}

unint64_t sub_1000894B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100383410, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10008950C(char a1)
{
  result = 0x6E6F697369766572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65726F4D736168;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_1000895AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100080FB4(&qword_1003CCA90);
  __chkstk_darwin(v5);
  sub_100086D24(a1, a1[3]);
  sub_10008B98C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100080F0C(a1);
  }

  sub_100080FB4(&unk_1003D0530);
  sub_10008B9E0(&qword_1003CC8F0, &unk_1003D0530);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_10008BEE4(1);
  v6 = KeyedDecodingContainer.decode(_:forKey:)();
  v8 = v7;
  v13 = v6;
  sub_100080FB4(&qword_1003CCAA0);
  sub_10008B9E0(&qword_1003CCAA8, &qword_1003CCAA0);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10008BEE4(3);
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v10 = sub_10008BD1C();
  v11(v10);
  result = sub_100080F0C(a1);
  *a2 = v9 & 1;
  *(a2 + 8) = v14;
  *(a2 + 16) = v13;
  *(a2 + 24) = v8;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_100089904@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000894B8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_100089934@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10008950C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100089968@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_1000894B8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100089990@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100089504();
  *a1 = result;
  return result;
}

uint64_t sub_1000899B8(uint64_t a1)
{
  v2 = sub_10008B98C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000899F4(uint64_t a1)
{
  v2 = sub_10008B98C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100089A30@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000895AC(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_100089A78()
{
  sub_10008BE9C();
  v1[93] = v0;
  sub_100080FB4(&unk_1003CE610);
  v1[94] = swift_task_alloc();
  v2 = type metadata accessor for UUID();
  v1[95] = v2;
  v1[96] = *(v2 - 8);
  v1[97] = swift_task_alloc();

  return _swift_task_switch(sub_100089B6C, 0, 0);
}

uint64_t sub_10008A344()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v4 = v3;
  sub_10008BEFC();
  *v5 = v4;
  v6 = *v0;
  sub_10008BEFC();
  *v7 = v6;

  v8 = swift_task_alloc();
  *(v4 + 816) = v8;
  *v8 = v6;
  v8[1] = sub_10008A464;

  return sub_1000A10AC(v2);
}

uint64_t sub_10008A464()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 824) = v3;

  return _swift_task_switch(sub_10008A558, 0, 0);
}

uint64_t sub_10008AE90()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 848) = v4;
  if (v4)
  {
    v5 = sub_10008B298;
  }

  else
  {
    v5 = sub_10008AF94;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10008AF94()
{
  v1 = *(v0 + 840);
  v2 = *(v0 + 704);
  v3 = [v2 stringValue];

  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  *(v0 + 520) = &type metadata for String;
  *(v0 + 496) = v4;
  *(v0 + 504) = v6;

  if (*(v0 + 520))
  {
    sub_10008B5D0((v0 + 496), (v0 + 560));
    swift_isUniquelyReferenced_nonNull_native();
    sub_10008BE90();
    sub_10023E7C0();
    v29 = v30;
  }

  else
  {
    sub_10008B69C(v0 + 496, &unk_1003CCB70);
    v7 = sub_1000B6328(0x74696D696CLL, 0xE500000000000000);
    if (v8)
    {
      v9 = v7;
      v10 = *(v0 + 832);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(v10 + 24);
      sub_100080FB4(&qword_1003CCA88);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v12);

      sub_10008B5D0((*(v10 + 56) + 32 * v9), (v0 + 528));
      v29 = v10;
      _NativeDictionary._delete(at:)();
    }

    else
    {
      *(v0 + 528) = 0u;
      *(v0 + 544) = 0u;
      v29 = *(v0 + 832);
    }

    sub_10008B69C(v0 + 528, &unk_1003CCB70);
  }

  if (*(*(v0 + 744) + 8))
  {
    sub_10008BDC8();
    v14 = &qword_1003F28F8;
  }

  else
  {
    sub_10008BDDC();
    v14 = &qword_1003F28F0;
  }

  if (v13 != -1)
  {
    swift_once();
  }

  v15 = *(v0 + 784);
  v16 = *(v0 + 776);
  v17 = *(v0 + 768);
  v18 = *(v0 + 760);
  v19 = *v14;
  sub_1001A7AB4();
  swift_getObjectType();
  *(swift_allocObject() + 16) = v15;
  sub_10008BD98();
  swift_unknownObjectRelease();

  v20 = objc_allocWithZone(type metadata accessor for Request());
  v21 = sub_10008BEA8();
  sub_10021E56C(v21, v22, v23, v24, v25, v29);

  (*(v17 + 8))(v16, v18);

  v26 = sub_10008C048();

  return v27(v26);
}

uint64_t sub_10008B298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  sub_10008C07C();
  v17 = *(v16 + 840);
  swift_willThrow();

  *(v16 + 496) = 0u;
  *(v16 + 512) = 0u;
  sub_10008B69C(v16 + 496, &unk_1003CCB70);
  v18 = sub_1000B6328(0x74696D696CLL, 0xE500000000000000);
  if (v19)
  {
    v20 = v18;
    v21 = *(v16 + 832);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a12 = v21;
    v23 = *(v21 + 24);
    sub_100080FB4(&qword_1003CCA88);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v23);

    sub_10008B5D0((*(v21 + 56) + 32 * v20), (v16 + 528));
    v47 = v21;
    _NativeDictionary._delete(at:)();
  }

  else
  {
    *(v16 + 528) = 0u;
    *(v16 + 544) = 0u;
    v47 = *(v16 + 832);
  }

  sub_10008B69C(v16 + 528, &unk_1003CCB70);
  if (*(*(v16 + 744) + 8))
  {
    sub_10008BDC8();
    v25 = &qword_1003F28F8;
  }

  else
  {
    sub_10008BDDC();
    v25 = &qword_1003F28F0;
  }

  if (v24 != -1)
  {
    swift_once();
  }

  v26 = *(v16 + 784);
  v27 = *(v16 + 776);
  v28 = *(v16 + 768);
  v29 = *(v16 + 760);
  v46 = *(v16 + 752);
  v30 = *v25;
  sub_1001A7AB4();
  swift_getObjectType();
  *(swift_allocObject() + 16) = v26;
  sub_10008BD98();
  swift_unknownObjectRelease();

  v31 = objc_allocWithZone(type metadata accessor for Request());
  v32 = sub_10008BEA8();
  sub_10021E56C(v32, v33, v34, v35, v36, v47);

  (*(v28 + 8))(v27, v29);

  sub_10008C048();
  sub_10008BE10();

  return v39(v37, v38, v39, v40, v41, v42, v43, v44, a9, v46, v47, a12, a13, a14, a15, a16);
}

uint64_t sub_10008B510()
{
  v3 = *(v0 + 8);

  return v3(v1);
}

unint64_t sub_10008B578()
{
  result = qword_1003CC170;
  if (!qword_1003CC170)
  {
    type metadata accessor for ASDError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CC170);
  }

  return result;
}

_OWORD *sub_10008B5D0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_10008B5E0()
{
  result = qword_1003CCAD0;
  if (!qword_1003CCAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCAD0);
  }

  return result;
}

uint64_t sub_10008B634(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = sub_100080FB4(a3);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008B69C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_100080FB4(a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10008B728()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10008B760()
{
  sub_10008BE9C();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10008B7F0;

  return sub_10008B510();
}

uint64_t sub_10008B7F0()
{
  sub_10008BE9C();
  v2 = v1;
  sub_10008C070();
  v3 = *v0;
  sub_10008BEFC();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

__n128 sub_10008B8E0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10008B8F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10008B934(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_10008B98C()
{
  result = qword_1003CCA98;
  if (!qword_1003CCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCA98);
  }

  return result;
}

uint64_t sub_10008B9E0(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000852D4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TransactionHistoryResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for TransactionHistoryResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x10008BB94);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10008BBD0()
{
  result = qword_1003CCAB0;
  if (!qword_1003CCAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCAB0);
  }

  return result;
}

unint64_t sub_10008BC28()
{
  result = qword_1003CCAB8;
  if (!qword_1003CCAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCAB8);
  }

  return result;
}

unint64_t sub_10008BC80()
{
  result = qword_1003CCAC0;
  if (!qword_1003CCAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCAC0);
  }

  return result;
}

uint64_t sub_10008BCDC()
{

  return swift_once();
}

void sub_10008BD2C()
{
  v2[12] = sub_10012C050;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t sub_10008BD44(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = _NSConcreteStackBlock;
  return result;
}

uint64_t sub_10008BD64()
{
  *(v0 + 24) = sub_10008AE90;

  return swift_continuation_init();
}

void sub_10008BD98()
{

  sub_100235238(v0, &unk_1002ED068, v2, v1);
}

uint64_t sub_10008BDF0()
{

  return swift_once();
}

_OWORD *sub_10008BE2C()
{

  return sub_10023E7C0();
}

_OWORD *sub_10008BE60()
{

  return sub_10023E7C0();
}

unint64_t sub_10008BF20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12)
{
  v13 = a11;
  v14 = a12;

  return sub_100080210(v13, v14, &a10);
}

uint64_t sub_10008BF3C()
{
}

uint64_t sub_10008BF58()
{

  return swift_slowAlloc();
}

uint64_t sub_10008BF74()
{

  return swift_arrayDestroy();
}

uint64_t sub_10008BF90()
{
}

_OWORD *sub_10008BFAC()
{

  return sub_10023E7C0();
}

void sub_10008BFD0()
{

  _StringGuts.grow(_:)(65);
}

void sub_10008BFF4()
{
  v1 = 91;
  v2 = 0xE100000000000000;

  String.append(_:)(*&v1);
}

void sub_10008C018()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

__n128 sub_10008C034()
{
  result = v1[1];
  v0[43] = result;
  return result;
}

uint64_t sub_10008C098()
{
}

void sub_10008C0B8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

void sub_10008C0D8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  v3 = a2 | 0x8000000000000000;
  String.append(_:)(*&a1);
}

uint64_t sub_10008C0F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  return _swift_task_switch(sub_10008C114, 0, 0);
}

uint64_t sub_10008C114()
{
  v44 = v0;
  if ((sub_1001A7C68() & 1) == 0)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v2 = (v0 + 176);
    v21 = type metadata accessor for SKLogger();
    sub_10007EDA4(v21, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v23 = *(v0 + 48);
    v22 = *(v0 + 56);
    v6 = static os_log_type_t.error.getter();

    v7 = Logger.logObject.getter();

    if (os_log_type_enabled(v7, v6))
    {
      v8 = sub_10008E688();
      sub_10008E670();
      *v8 = 136446466;
      sub_10008E5EC();
      v24._countAndFlagsBits = v23;
      v24._object = v22;
      String.append(_:)(v24);
      sub_10008E604();
      v33 = sub_10008E638(v25, v26, v27, v28, v29, v30, v31, v32, v41, v42, v43);

      *(v8 + 4) = v33;
      *(v8 + 12) = 2082;
      v20 = 0x8000000100313EC0;
      v19 = 0xD000000000000026;
      goto LABEL_15;
    }

LABEL_16:

    *v2 = 5;
    sub_10008B5E0();
    swift_willThrowTypedImpl();
    sub_10008E654();

    __asm { BRAA            X2, X16 }
  }

  v1 = *(v0 + 120);
  if (*(v1 + OBJC_IVAR____TtC9storekitd6Client_isClip))
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v2 = (v0 + 179);
    v3 = type metadata accessor for SKLogger();
    sub_10007EDA4(v3, qword_1003F26C8);
    if (qword_1003CBE98 != -1)
    {
      sub_10008BCDC();
    }

    TaskLocal.get()();
    v5 = *(v0 + 96);
    v4 = *(v0 + 104);
    v6 = static os_log_type_t.error.getter();

    v7 = Logger.logObject.getter();

    if (os_log_type_enabled(v7, v6))
    {
      v8 = sub_10008E688();
      sub_10008E670();
      *v8 = 136446466;
      sub_10008E5EC();
      v9._countAndFlagsBits = v5;
      v9._object = v4;
      String.append(_:)(v9);
      sub_10008E604();
      v18 = sub_10008E638(v10, v11, v12, v13, v14, v15, v16, v17, v41, v42, v43);

      *(v8 + 4) = v18;
      *(v8 + 12) = 2082;
      v19 = 0xD00000000000002ALL;
      v20 = 0x8000000100313F70;
LABEL_15:
      *(v8 + 14) = sub_100080210(v19, v20, &v41);
      _os_log_impl(&_mh_execute_header, v7, v6, "%{public}s%{public}s", v8, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v36 = *(v0 + 128);
  v37 = swift_task_alloc();
  *(v0 + 152) = v37;
  *(v37 + 16) = *(v0 + 136);
  *(v37 + 32) = v1;
  *(v37 + 40) = v36;
  v38 = swift_task_alloc();
  *(v0 + 160) = v38;
  *v38 = v0;
  v38[1] = sub_10008C524;
  sub_10008E654();

  return withCheckedThrowingContinuation<A>(isolation:function:_:)();
}

uint64_t sub_10008C524()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_10008C660;
  }

  else
  {

    v2 = sub_10008C640;
  }

  return _swift_task_switch(v2, 0, 0);
}

void sub_10008C660()
{

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = *(v0 + 168);
  v2 = type metadata accessor for SKLogger();
  sub_10007EDA4(v2, qword_1003F26C8);
  v34 = 0;
  v35 = 0xE000000000000000;
  _StringGuts.grow(_:)(19);
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000011;
  v3._object = 0x8000000100313F30;
  String.append(_:)(v3);
  *(v0 + 112) = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  if (qword_1003CBE98 != -1)
  {
    sub_10008BCDC();
  }

  TaskLocal.get()();
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = static os_log_type_t.error.getter();

  v9 = Logger.logObject.getter();

  if (os_log_type_enabled(v9, v8))
  {
    v10 = sub_10008E688();
    sub_10008E670();
    *v10 = 136446466;
    sub_10008E5EC();
    v11._countAndFlagsBits = v7;
    v11._object = v6;
    String.append(_:)(v11);
    sub_10008E604();
    v20 = sub_10008E638(v12, v13, v14, v15, v16, v17, v18, v19, v33, v34, v35);

    *(v10 + 4) = v20;
    *(v10 + 12) = 2082;
    v21 = sub_100080210(v5, v4, &v33);

    *(v10 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v10, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v22 = _convertErrorToNSError(_:)();
  v23 = [v22 domain];
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v26 = v25;

  if (v24 == 0xD000000000000015 && 0x8000000100313F50 == v26)
  {
  }

  else
  {
    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v28 & 1) == 0)
    {
      *(v0 + 177) = 10;
      sub_10008B5E0();
      swift_willThrowTypedImpl();

      goto LABEL_19;
    }
  }

  v29 = sub_1000DEF44([v22 code]);
  if (v29 == 19)
  {
    v30 = 10;
  }

  else
  {
    v30 = v29;
  }

  *(v0 + 178) = v30;
  sub_10008B5E0();
  swift_willThrowTypedImpl();

LABEL_19:
  sub_10008E654();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_10008C9F0(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v45 = a5;
  v46 = a4;
  v41 = a3;
  v53 = a2;
  v44 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v51 = *(v5 - 8);
  v52 = v5;
  __chkstk_darwin(v5);
  v50 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v48 = *(v7 - 8);
  v49 = v7;
  __chkstk_darwin(v7);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100080FB4(&unk_1003CCAE0);
  v10 = *(v9 - 8);
  v42 = *(v10 + 64);
  __chkstk_darwin(v9);
  v12 = &v38 - v11;
  v13 = type metadata accessor for PerformPurchaseRequest();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS.QoSClass();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v40 = aBlock;
  v39 = v56;
  sub_10008E5A4(0, &qword_1003CC1F0);
  (*(v18 + 104))(v20, enum case for DispatchQoS.QoSClass.background(_:), v17);
  v43 = static OS_dispatch_queue.global(qos:)();
  (*(v18 + 8))(v20, v17);
  sub_10008DE64(v41, &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v12, v44, v9);
  v21 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v22 = (v15 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v23 + 15) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v10 + 80) + v24 + 16) & ~*(v10 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = v53;
  sub_10008E1C0(v16, v26 + v21);
  v27 = v46;
  *(v26 + v22) = v46;
  *(v26 + v23) = v45;
  v28 = (v26 + v24);
  v29 = v39;
  *v28 = v40;
  v28[1] = v29;
  (*(v10 + 32))(v26 + v25, v12, v9);
  v59 = sub_10008E224;
  v60 = v26;
  aBlock = _NSConcreteStackBlock;
  v56 = 1107296256;
  v57 = sub_10019E0C0;
  v58 = &unk_100384D90;
  v30 = _Block_copy(&aBlock);
  swift_unknownObjectRetain();
  v31 = v53;
  v32 = v27;
  v33 = v47;
  static DispatchQoS.unspecified.getter();
  v54 = _swiftEmptyArrayStorage;
  sub_10008E508(&qword_1003CCB58, &type metadata accessor for DispatchWorkItemFlags);
  sub_100080FB4(&qword_1003CCB60);
  sub_10008E34C();
  v34 = v50;
  v35 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v36 = v43;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v30);

  (*(v51 + 8))(v34, v35);
  (*(v48 + 8))(v33, v49);
}

void sub_10008CFA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a3;
  v21 = a4;
  v11 = sub_100080FB4(&unk_1003CCAE0);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v20 - v13;
  v15 = sub_10008D1D0();
  sub_100223354(v15);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v12 + 16))(v14, a7, v11);
  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a5;
  *(v18 + 24) = a6;
  (*(v12 + 32))(v18 + v17, v14, v11);
  aBlock[4] = sub_10008E470;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10008DB9C;
  aBlock[3] = &unk_100384DE0;
  v19 = _Block_copy(aBlock);

  [a1 processPrivatePaymentWithPaymentDict:isa client:v20 dialogDelegate:v21 reply:v19];
  _Block_release(v19);
}

uint64_t sub_10008D1D0()
{
  v0 = Dictionary.init(dictionaryLiteral:)();
  v1 = sub_10008E5A4(0, &unk_1003CCB80);

  v2 = sub_1000F2F74();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v1;
  *&v5 = v2;
  sub_10008B5D0(&v5, &v4);
  swift_isUniquelyReferenced_nonNull_native();
  sub_10023E7C0();

  return v0;
}

uint64_t sub_10008D2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    swift_getErrorValue();
    swift_errorRetain();
    if (sub_100184DA8(v47))
    {
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for SKLogger();
      sub_10007EDA4(v8, qword_1003F26C8);
      v9 = static os_log_type_t.default.getter();

      v10 = Logger.logObject.getter();

      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        *&v52 = swift_slowAlloc();
        *v11 = 136446466;
        v12._countAndFlagsBits = a4;
        v12._object = a5;
        String.append(_:)(v12);
        v13._countAndFlagsBits = 8285;
        v13._object = 0xE200000000000000;
        String.append(_:)(v13);
        v14 = sub_100080210(91, 0xE100000000000000, &v52);

        *(v11 + 4) = v14;
        *(v11 + 12) = 2082;
        *(v11 + 14) = sub_100080210(0xD00000000000001BLL, 0x8000000100314070, &v52);
        _os_log_impl(&_mh_execute_header, v10, v9, "%{public}s%{public}s", v11, 0x16u);
        swift_arrayDestroy();
      }

      v48 = a4;
      v49 = a5;
      v50 = 0;
      v51 = 0;

      sub_100080FB4(&unk_1003CCAE0);
      CheckedContinuation.resume(returning:)();
    }

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for SKLogger();
    sub_10007EDA4(v28, qword_1003F26C8);
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(24);
    v29._object = 0x8000000100314050;
    v29._countAndFlagsBits = 0xD000000000000016;
    String.append(_:)(v29);
    *&v52 = a3;
    sub_100080FB4(&qword_1003CCCB0);
    _print_unlocked<A, B>(_:_:)();
    v30 = static os_log_type_t.error.getter();

    v31 = Logger.logObject.getter();

    if (os_log_type_enabled(v31, v30))
    {
      v32 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v32 = 136446466;
      v49 = 0xE100000000000000;
      v33._countAndFlagsBits = a4;
      v33._object = a5;
      String.append(_:)(v33);
      v34._countAndFlagsBits = 8285;
      v34._object = 0xE200000000000000;
      String.append(_:)(v34);
      v35 = sub_100080210(91, 0xE100000000000000, &v52);

      *(v32 + 4) = v35;
      *(v32 + 12) = 2082;
      v36 = sub_100080210(0, 0xE000000000000000, &v52);

      *(v32 + 14) = v36;
      _os_log_impl(&_mh_execute_header, v31, v30, "%{public}s%{public}s", v32, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v48 = a3;
LABEL_29:
    sub_100080FB4(&unk_1003CCAE0);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    v52 = 0u;
    v53 = 0u;
    goto LABEL_23;
  }

  v17 = off_1003CB110;
  type metadata accessor for SKServerKey(0);
  sub_10008E508(&qword_1003CC3B8, type metadata accessor for SKServerKey);
  v18 = v17;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(&v48, a1, &v52);
  sub_10008E550(&v48);
  if (!*(&v53 + 1))
  {
LABEL_23:
    sub_10008105C(&v52);
    goto LABEL_24;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for SKLogger();
    sub_10007EDA4(v37, qword_1003F26C8);
    v38 = static os_log_type_t.error.getter();

    v39 = Logger.logObject.getter();

    if (os_log_type_enabled(v39, v38))
    {
      v40 = swift_slowAlloc();
      *&v52 = swift_slowAlloc();
      *v40 = 136446466;
      v48 = 91;
      v49 = 0xE100000000000000;
      v41._countAndFlagsBits = a4;
      v41._object = a5;
      String.append(_:)(v41);
      v42._countAndFlagsBits = 8285;
      v42._object = 0xE200000000000000;
      String.append(_:)(v42);
      v43 = sub_100080210(v48, v49, &v52);

      *(v40 + 4) = v43;
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_100080210(0xD000000000000035, 0x8000000100313FE0, &v52);
      _os_log_impl(&_mh_execute_header, v39, v38, "%{public}s%{public}s", v40, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    v44 = swift_allocError();
    *v45 = 10;
    v48 = v44;
    goto LABEL_29;
  }

  v19 = v48;
  v20 = v49;
  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for SKLogger();
  sub_10007EDA4(v21, qword_1003F26C8);
  v22 = static os_log_type_t.default.getter();

  v23 = Logger.logObject.getter();

  if (os_log_type_enabled(v23, v22))
  {
    v46 = v20;
    v24 = swift_slowAlloc();
    *&v52 = swift_slowAlloc();
    *v24 = 136446466;
    v48 = 91;
    v49 = 0xE100000000000000;
    v25._countAndFlagsBits = a4;
    v25._object = a5;
    String.append(_:)(v25);
    v26._countAndFlagsBits = 8285;
    v26._object = 0xE200000000000000;
    String.append(_:)(v26);
    v27 = sub_100080210(v48, v49, &v52);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2082;
    *(v24 + 14) = sub_100080210(0xD000000000000022, 0x8000000100314020, &v52);
    _os_log_impl(&_mh_execute_header, v23, v22, "%{public}s%{public}s", v24, 0x16u);
    swift_arrayDestroy();

    v20 = v46;
  }

  v48 = a4;
  v49 = a5;
  v50 = v19;
  v51 = v20;

  sub_100080FB4(&unk_1003CCAE0);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_10008DB9C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:

  v8 = a4;
  v6(v7, v5, a4);
}

uint64_t sub_10008DC80@<X0>(uint64_t a1@<X8>)
{
  if (sub_1001B56A0(7))
  {
    sub_10008DE64(v1, a1);
    v3 = 0;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v4 = type metadata accessor for SKLogger();
    sub_10007EDA4(v4, qword_1003F26C8);
    v5 = *(v1 + 16);
    v6 = *(v1 + 24);
    v7 = static os_log_type_t.error.getter();

    v8 = Logger.logObject.getter();

    if (os_log_type_enabled(v8, v7))
    {
      v9 = sub_10008E688();
      v10 = sub_10008E670();
      *v9 = 136446466;
      v15 = v10;
      v11._countAndFlagsBits = v5;
      v11._object = v6;
      String.append(_:)(v11);
      sub_10008E604();
      v12 = sub_100080210(91, 0xE100000000000000, &v15);

      *(v9 + 4) = v12;
      *(v9 + 12) = 2082;
      *(v9 + 14) = sub_100080210(0xD000000000000030, 0x8000000100313E80, &v15);
      _os_log_impl(&_mh_execute_header, v8, v7, "%{public}s%{public}s", v9, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    v3 = 1;
  }

  v13 = type metadata accessor for PerformPurchaseRequest();

  return sub_100081DFC(a1, v3, 1, v13);
}

uint64_t sub_10008DE64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformPurchaseRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10008DED4()
{
  v2 = (type metadata accessor for PerformPurchaseRequest() - 8);
  v3 = *(*v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(*v2 + 64);
  sub_100080FB4(&unk_1003CCAE0);
  sub_10008E620();
  v7 = v6;
  v8 = *(v6 + 80);
  v22 = *(v9 + 64);

  v10 = (v1 + v4 + v2[8]);
  v11 = type metadata accessor for ClientOverride(0);
  if (!sub_100081D0C(v10, 1, v11))
  {
    v12 = v10[1];
    if (v12 >> 60 != 15)
    {
      sub_10008E168(*v10, v12);
    }

    v13 = *(v11 + 28);
    v14 = sub_100080FB4(&qword_1003CCB50);
    if (!sub_100081D0C(v10 + v13, 3, v14))
    {
      v15 = type metadata accessor for URL();
      (*(*(v15 - 8) + 8))(v10 + v13, v15);
    }

    v16 = *(v11 + 40);
    v17 = type metadata accessor for UUID();
    if (!sub_100081D0C(v10 + v16, 1, v17))
    {
      (*(*(v17 - 8) + 8))(v10 + v16, v17);
    }
  }

  v18 = v3 | v8;
  v19 = (v5 + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v8 + ((((v19 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v8;

  swift_unknownObjectRelease();

  (*(v7 + 8))(v1 + v20, v0);

  return _swift_deallocObject(v1, v20 + v22, v18 | 7);
}

uint64_t sub_10008E168(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10008E1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PerformPurchaseRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_10008E224()
{
  v1 = *(type metadata accessor for PerformPurchaseRequest() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_100080FB4(&unk_1003CCAE0) - 8);
  v7 = *(v0 + 16);
  v8 = *(v0 + v3);
  v9 = *(v0 + v4);
  v10 = *(v0 + v5);
  v11 = *(v0 + v5 + 8);
  v12 = v0 + ((*(v6 + 80) + v5 + 16) & ~*(v6 + 80));

  sub_10008CFA4(v7, v0 + v2, v8, v9, v10, v11, v12);
}

uint64_t sub_10008E334(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10008E34C()
{
  result = qword_1003CCB68;
  if (!qword_1003CCB68)
  {
    sub_1000852D4(&qword_1003CCB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003CCB68);
  }

  return result;
}

uint64_t sub_10008E3B0()
{
  sub_100080FB4(&unk_1003CCAE0);
  sub_10008E620();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = *(v6 + 64);

  (*(v3 + 8))(v1 + v5, v0);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_10008E470(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_100080FB4(&unk_1003CCAE0);
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);

  return sub_10008D2C4(a1, a2, a3, v7, v8);
}

uint64_t sub_10008E508(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10008E5A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_10008E604()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

unint64_t sub_10008E638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11)
{
  v12 = a10;
  v13 = a11;

  return sub_100080210(v12, v13, &a9);
}

uint64_t sub_10008E670()
{

  return swift_slowAlloc();
}

uint64_t sub_10008E688()
{

  return swift_slowAlloc();
}

uint64_t sub_10008E6A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (([a1 sk_allowAdvancedTransactionQueries] & 1) != 0 || (v7 = type metadata accessor for TransactionQuery(0), v2[*(v7 + 28)] == 1) && *v2 == 3)
  {
    sub_1000937F4(v2, a2);
    v4 = type metadata accessor for TransactionQuery(0);
    v5 = a2;
    v6 = 0;
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v8 = type metadata accessor for SKLogger();
    sub_10007EDA4(v8, qword_1003F26C8);
    v9 = &v2[*(v7 + 32)];
    v10 = *v9;
    v11 = v9[1];
    v12 = static os_log_type_t.error.getter();

    v13 = Logger.logObject.getter();

    if (os_log_type_enabled(v13, v12))
    {
      v14 = sub_10008E688();
      v15 = swift_slowAlloc();
      *v14 = 136446466;
      v20 = v15;
      v16._countAndFlagsBits = v10;
      v16._object = v11;
      String.append(_:)(v16);
      v17._countAndFlagsBits = 8285;
      v17._object = 0xE200000000000000;
      String.append(_:)(v17);
      v18 = sub_100080210(91, 0xE100000000000000, &v20);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2082;
      *(v14 + 14) = sub_100080210(0xD000000000000037, 0x80000001003140B0, &v20);
      _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    v5 = a2;
    v6 = 1;
    v4 = v7;
  }

  return sub_100081DFC(v5, v6, 1, v4);
}

uint64_t sub_10008E8D0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() now];
  if (v6)
  {
    v7 = v6;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    return (*(v3 + 32))(a1, v5, v2);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    v10 = static os_log_type_t.error.getter();
    v11 = Logger.logObject.getter();
    if (os_log_type_enabled(v11, v10))
    {
      v12 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v12 = 136446466;
      *(v12 + 4) = sub_100080210(0, 0xE000000000000000, &v14);
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_100080210(0xD000000000000016, 0x80000001003143C0, &v14);
      _os_log_impl(&_mh_execute_header, v11, v10, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
    }

    return static Date.now.getter();
  }
}

void sub_10008EB30()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_100080FB4(&qword_1003CCBD8);
  sub_1000890DC();
  __chkstk_darwin(v12);
  sub_100089350();
  v13 = sub_10008F250(v11, v9, v7, v5, v3);
  v14 = sub_100093C74(_swiftEmptyArrayStorage);
  sub_100093E7C(v14);
  sub_100093E04();
  if (v16)
  {
    v27 = sub_100093CA0(v15);
    sub_100213374(v27, v9, 1);
    v7 = v28[0];
  }

  *(v7 + 16) = v9;
  sub_100093BDC(v7 + 16 * v11);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = sub_100093C64();
  v19(v18);
  v20 = swift_allocObject();
  v21 = sub_100093D50(v20);
  v22(v21);
  v23 = sub_100093DA4();
  *(v23 + 16) = sub_1000939B8;
  *(v23 + 24) = v1;
  v28[4] = sub_100093B74;
  v28[5] = v23;
  sub_100093BBC();
  sub_100093BA4(COERCE_DOUBLE(1107296256));
  v28[2] = v24;
  v28[3] = &unk_100384F58;
  v25 = _Block_copy(v28);

  [v13 enumeratePersistentIDsAndProperties:isa usingBlock:v25];

  _Block_release(v25);
  v26 = sub_100093E4C();

  if (v26)
  {
    __break(1u);
  }

  else
  {
    sub_100093CB8();
  }
}

void sub_10008ED78()
{
  sub_100093D08();
  v32 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_100080FB4(&qword_1003CCBD8);
  sub_1000890DC();
  v13 = v12;
  __chkstk_darwin(v14);
  v16 = &v31 - v15;
  v17 = sub_1000911E8(v10, v8, v6, v4);
  _s13ReceiptEntityCMa();
  v18 = [swift_getObjCClassFromMetadata() queryOnConnection:v2 predicate:v17];
  v19 = sub_100093C74(_swiftEmptyArrayStorage);
  sub_100093E7C(v19);
  v20 = v33[0];
  v22 = *(v33[0] + 16);
  v21 = *(v33[0] + 24);
  if (v22 >= v21 >> 1)
  {
    v30 = sub_100093CA0(v21);
    sub_100213374(v30, v22 + 1, 1);
    v20 = v33[0];
  }

  *(v20 + 16) = v22 + 1;
  sub_100093BDC(v20 + 16 * v22);
  isa = Array._bridgeToObjectiveC()().super.isa;

  (*(v13 + 16))(v16, v32, v11);
  v24 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v25 = swift_allocObject();
  (*(v13 + 32))(v25 + v24, v16, v11);
  v26 = sub_100093DA4();
  *(v26 + 16) = sub_1000939BC;
  *(v26 + 24) = v25;
  v33[4] = sub_100093B74;
  v33[5] = v26;
  sub_100093BBC();
  sub_100093BA4(COERCE_DOUBLE(1107296256));
  v33[2] = v27;
  v33[3] = &unk_100384FD0;
  v28 = _Block_copy(v33);

  [v18 enumeratePersistentIDsAndProperties:isa usingBlock:v28];

  _Block_release(v28);
  v29 = sub_100093E4C();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    sub_100093CB8();
  }
}

void sub_10008F018()
{
  sub_100093D08();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_100080FB4(&qword_1003CCBD8);
  sub_1000890DC();
  __chkstk_darwin(v10);
  sub_100089350();
  v11 = sub_100090D24(v9, v7, v5);
  v12 = sub_100093C74(_swiftEmptyArrayStorage);
  sub_100093E7C(v12);
  sub_100093E04();
  if (v14)
  {
    v25 = sub_100093CA0(v13);
    sub_100213374(v25, v0, 1);
    v9 = v26[0];
  }

  *(v9 + 16) = v0;
  sub_100093BDC(v9 + 16 * v1);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v16 = sub_100093C64();
  v17(v16);
  v18 = swift_allocObject();
  v19 = sub_100093D50(v18);
  v20(v19);
  v21 = sub_100093DA4();
  *(v21 + 16) = sub_100093B78;
  *(v21 + 24) = v3;
  v26[4] = sub_100093B74;
  v26[5] = v21;
  sub_100093BBC();
  sub_100093BA4(COERCE_DOUBLE(1107296256));
  v26[2] = v22;
  v26[3] = &unk_100385048;
  v23 = _Block_copy(v26);

  [v11 enumeratePersistentIDsAndProperties:isa usingBlock:v23];

  _Block_release(v23);
  v24 = sub_100093E4C();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    sub_100093CB8();
  }
}

id sub_10008F250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_10008F3A8(a1, a2, a4, a5);
  sub_100093E7C(0);
  v8 = _swiftEmptyArrayStorage[2];
  v7 = _swiftEmptyArrayStorage[3];
  if (v8 >= v7 >> 1)
  {
    v18 = sub_100093CA0(v7);
    sub_100213374(v18, v8 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v8 + 1;
  v9 = &_swiftEmptyArrayStorage[2 * v8];
  v9[4] = 0xD000000000000010;
  v9[5] = 0x8000000100314090;
  _s13ReceiptEntityCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v11 = v6;
  v12 = sub_10018EE18(_swiftEmptyArrayStorage);

  sub_100080FB4(&qword_1003CCBB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002ED290;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v13 + 56) = &type metadata for String;
  *(v13 + 32) = v14;
  *(v13 + 40) = v15;
  v16 = sub_10009373C(a3, v6, v12, v13, ObjCClassFromMetadata);

  return v16;
}

id sub_10008F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2A0;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v12 = &type metadata for String;
  v10 = a1;
  v11 = a2;

  *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v10);
  v13 = inited;
  if (a4)
  {
    v12 = &type metadata for String;
    v10 = a3;
    v11 = a4;

    sub_100223CB4(0x5F746375646F7270, 0xEA00000000006469, &v10);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    inited = v13;
  }

  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EE04(inited);

  return sub_10018F08C();
}

void sub_10008F538()
{
  sub_100093D08();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for Date();
  sub_1000890DC();
  v12 = v11;
  __chkstk_darwin(v13);
  sub_100093D40();
  v16 = v15 - v14;
  sub_10008E8D0(v15 - v14);
  v17 = sub_1000908FC(v9, v7, v16, v3, v1);
  sub_100213374(0, 2, 0);
  v18 = sub_1000D8DF4(2);
  v20 = v19;
  v22 = _swiftEmptyArrayStorage[2];
  v21 = _swiftEmptyArrayStorage[3];
  v23 = v21 >> 1;
  v24 = v22 + 1;
  if (v21 >> 1 <= v22)
  {
    v32 = sub_100093CA0(v21);
    sub_100213374(v32, v22 + 1, 1);
    v21 = _swiftEmptyArrayStorage[3];
    v23 = v21 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v24;
  v25 = &_swiftEmptyArrayStorage[2 * v22];
  v25[4] = v18;
  v25[5] = v20;
  if (v23 <= v24)
  {
    v33 = sub_100093CA0(v21);
    sub_100213374(v33, v22 + 2, 1);
  }

  _swiftEmptyArrayStorage[2] = v22 + 2;
  sub_100093BDC(&_swiftEmptyArrayStorage[2 * v24]);
  _s13ReceiptEntityCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = v17;
  v28 = sub_10018EE18(_swiftEmptyArrayStorage);

  sub_100080FB4(&qword_1003CCBB0);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1002ED290;
  v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v29 + 56) = &type metadata for String;
  *(v29 + 32) = v30;
  *(v29 + 40) = v31;
  sub_10009373C(v5, v17, v28, v29, ObjCClassFromMetadata);

  (*(v12 + 8))(v16, v10);
  sub_100093CB8();
}

void sub_10008F770()
{
  sub_100093D08();
  v101 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = sub_100080FB4(&qword_1003CCBD0);
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  v12 = &v92 - v11;
  v13 = type metadata accessor for Date();
  sub_1000890DC();
  v15 = v14;
  v17 = __chkstk_darwin(v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v92 - v20;
  v102 = [objc_allocWithZone(_s13ReceiptEntityCMa()) initWithPersistentID:v6 onConnection:v4];
  v99 = sub_1000DB29C();
  v100 = v25;
  v94 = v12;
  v95 = v19;
  v96 = v21;
  v97 = v9;
  v98 = v15;
  v28 = sub_1000DB278();
  v30 = v29;
  v31 = *v2;

  v32 = sub_100108884(v28, v30, v31);

  if (!v32)
  {
    v34 = String._bridgeToObjectiveC()();
    v106 = 0;
    v35 = sub_100027B30(v34, &v106);

    v36 = v106;
    if (v35)
    {
      v93 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v36;

      if (!v34)
      {
        if (v93)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100093D30();
          sub_1001DA990(v38, v39, *(v37 - 256), v40);

          if (v108 || (sub_10008105C(&v106), static String._unconditionallyBridgeFromObjectiveC(_:)(), sub_100093D30(), sub_1001DA990(v42, v43, *(v41 - 256), v44), , v108))
          {

            sub_10008105C(&v106);
            if (qword_1003CBE58 != -1)
            {
              sub_100081C08();
            }

            v45 = type metadata accessor for SKLogger();
            sub_100093DDC(v45, qword_1003F26C8);
            v46 = Logger.logObject.getter();
            if (!sub_100093D8C(v46))
            {
              goto LABEL_3;
            }

            sub_10008E688();
            v106 = sub_100093C08();
            v22 = sub_100093CD0(4.8752e-34);
            sub_100093BF8(v22);
            v23 = 0x80000001003144C0;
            v24 = 0xD00000000000002BLL;
LABEL_2:
            *(v34 + 14) = sub_100080210(v24, v23, &v106);
            sub_100093C24(&_mh_execute_header, v26, v27, "%{public}s%{public}s");
            sub_100093E64();
            sub_100081C28();
            sub_100093C84();
LABEL_3:

LABEL_4:
LABEL_5:
            sub_100093CB8();
            return;
          }

          sub_10008105C(&v106);
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          sub_100093D30();
          sub_1001DA990(v63, v64, *(v62 - 256), v65);

          sub_1000938E8(&v106, v104);
          v92 = v7;
          if (v105)
          {
            sub_10008E5A4(0, &qword_1003D0520);
            v66 = swift_dynamicCast();
            v67 = v13;
            v68 = v95;
            if (v66)
            {
              v69 = v103;
              v70 = v96;
              v71 = v97;
              goto LABEL_38;
            }

            v70 = v96;
            v71 = v97;
          }

          else
          {
            sub_10008105C(v104);
            v67 = v13;
            v70 = v96;
            v71 = v97;
            v68 = v95;
          }

          sub_1000938E8(&v106, v104);
          v72 = v67;
          if (!v105)
          {
            sub_10008105C(v104);
            goto LABEL_41;
          }

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_41:
            v97 = 0;
            v76 = 1;
            goto LABEL_42;
          }

          v73 = [objc_allocWithZone(NSNumberFormatter) init];
          [v73 setNumberStyle:1];
          v74 = String._bridgeToObjectiveC()();

          v75 = [v73 numberFromString:v74];

          v69 = v75;
LABEL_38:
          v72 = v67;
          if (v69)
          {
            v97 = v69;
            [v69 doubleValue];
            v76 = 0;
LABEL_42:
            Date.init(timeIntervalSince1970:)();
            sub_10008E8D0(v68);
            v77 = Date.compare(_:)();
            v78 = *(v98 + 8);
            v78(v68, v72);
            if ((v76 & 1) != 0 || v77 != -1)
            {
              v87 = HIBYTE(v100) & 0xF;
              if ((v100 & 0x2000000000000000) == 0)
              {
                v87 = v99 & 0xFFFFFFFFFFFFLL;
              }

              if (v87)
              {
                v88 = v28;
                v89 = v99;
                v90 = v100;
                sub_10011EDC4(v104, v88, v30);

                v104[0] = v89;
                v104[1] = v90;
                sub_100080FB4(&qword_1003CCBD8);
                v91 = v94;
                AsyncStream.Continuation.yield(_:)();

                (v71)[1](v91, v92);
LABEL_55:
                v85 = v70;
                v86 = v72;
                goto LABEL_56;
              }
            }

            else
            {

              if (qword_1003CBE58 != -1)
              {
                sub_100081C08();
              }

              v79 = type metadata accessor for SKLogger();
              v80 = sub_100093DDC(v79, qword_1003F26C8);
              v81 = Logger.logObject.getter();
              if (os_log_type_enabled(v81, v80))
              {
                v82 = sub_10008E688();
                v83 = swift_slowAlloc();
                v104[0] = v83;
                *v82 = 136446466;
                *(v82 + 4) = sub_100093CF0(v83, v84, v104);
                *(v82 + 12) = 2082;
                *(v82 + 14) = sub_100080210(0xD000000000000042, 0x8000000100314470, v104);
                _os_log_impl(&_mh_execute_header, v81, v80, "%{public}s%{public}s", v82, 0x16u);
                swift_arrayDestroy();
                sub_100081C28();
                sub_100081C28();

                v85 = v70;
                v86 = v72;
LABEL_56:
                v78(v85, v86);
                sub_10008105C(&v106);
                goto LABEL_5;
              }
            }

            goto LABEL_55;
          }

          goto LABEL_41;
        }

LABEL_26:

        if (qword_1003CBE58 != -1)
        {
          sub_100081C08();
        }

        v59 = type metadata accessor for SKLogger();
        sub_100093DDC(v59, qword_1003F26C8);
        v60 = Logger.logObject.getter();
        if (!sub_100093D8C(v60))
        {
          goto LABEL_3;
        }

        sub_10008E688();
        v106 = sub_100093C08();
        v61 = sub_100093CD0(4.8752e-34);
        sub_100093BF8(v61);
        v24 = 0xD00000000000002DLL;
        v23 = 0x8000000100314440;
        goto LABEL_2;
      }
    }

    else
    {
      v47 = v106;
      if (!v36)
      {
        goto LABEL_26;
      }

      v93 = 0;
    }

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v48 = type metadata accessor for SKLogger();
    sub_10007EDA4(v48, qword_1003F26C8);
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(37);

    v106 = 0xD000000000000023;
    v107 = 0x80000001003144F0;
    v104[0] = v36;
    v49 = v36;
    sub_100080FB4(&qword_1003CCBC8);
    v50._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v50);

    v52 = v106;
    v51 = v107;
    v53 = static os_log_type_t.error.getter();

    v54 = Logger.logObject.getter();

    if (os_log_type_enabled(v54, v53))
    {
      v55 = sub_10008E688();
      v56 = swift_slowAlloc();
      v106 = v56;
      *v55 = 136446466;
      *(v55 + 4) = sub_100093CF0(v56, v57, &v106);
      *(v55 + 12) = 2082;
      v58 = sub_100080210(v52, v51, &v106);

      *(v55 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v54, v53, "%{public}s%{public}s", v55, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    goto LABEL_4;
  }

  sub_100093CB8();
}

void sub_100090344()
{
  sub_100093D08();
  v1 = v0;
  sub_100080FB4(&qword_1003CCBD0);
  sub_1000890DC();
  __chkstk_darwin(v2);
  sub_100089350();
  sub_1000DB29C();
  v3 = sub_1000DB278();
  v5 = v4;
  v6 = *v1;

  LOBYTE(v1) = sub_100108884(v3, v5, v6);

  if (v1)
  {
    sub_100093CB8();
  }

  else
  {
    sub_100080FB4(&qword_1003CCBD8);
    AsyncStream.Continuation.yield(_:)();
    v8 = sub_100093CAC();
    v9(v8);
    sub_100093CB8();
  }
}

void sub_1000905E0()
{
  sub_100093D08();
  v33 = v0;
  v34 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v37 = type metadata accessor for Date();
  sub_1000890DC();
  v9 = v8;
  __chkstk_darwin(v10);
  sub_100093D40();
  v13 = v12 - v11;
  sub_10008E8D0(v12 - v11);
  v14 = sub_100091684(v7, v5);
  _s24SubscriptionStatusEntityCMa();
  v36 = v14;
  v35 = [swift_getObjCClassFromMetadata() queryOnConnection:v3 predicate:v14];
  v15 = sub_100093C74(_swiftEmptyArrayStorage);
  sub_100213374(v15, 2, 0);
  v16 = v38[0];
  v17 = sub_1000D8F60();
  v19 = v18;
  v21 = *(v38[0] + 16);
  v20 = *(v38[0] + 24);
  v22 = v20 >> 1;
  v23 = v21 + 1;
  if (v20 >> 1 <= v21)
  {
    v31 = sub_100093CA0(v20);
    sub_100213374(v31, v21 + 1, 1);
    v16 = v38[0];
    v20 = *(v38[0] + 24);
    v22 = v20 >> 1;
  }

  *(v16 + 16) = v23;
  v24 = v16 + 16 * v21;
  *(v24 + 32) = v17;
  *(v24 + 40) = v19;
  if (v22 <= v23)
  {
    v32 = sub_100093CA0(v20);
    sub_100213374(v32, v21 + 2, 1);
    v16 = v38[0];
  }

  *(v16 + 16) = v21 + 2;
  v25 = v16 + 16 * v23;
  *(v25 + 32) = 0xD000000000000015;
  *(v25 + 40) = 0x80000001003140F0;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v27 = swift_allocObject();
  v27[2] = v7;
  v27[3] = v5;
  v27[4] = v3;
  v27[5] = v33;
  v27[6] = v34;
  v28 = sub_100093DA4();
  *(v28 + 16) = sub_100093898;
  *(v28 + 24) = v27;
  v38[4] = sub_1000938C8;
  v38[5] = v28;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 1107296256;
  v38[2] = sub_1001087F4;
  v38[3] = &unk_100384E68;
  v29 = _Block_copy(v38);

  v30 = v3;

  [v35 enumeratePersistentIDsAndProperties:isa usingBlock:v29];
  _Block_release(v29);

  (*(v9 + 8))(v13, v37);
  LOBYTE(v29) = sub_100093E4C();

  if (v29)
  {
    __break(1u);
  }

  else
  {
    sub_100093CB8();
  }
}

id sub_1000908FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2B0;
  v8 = sub_10008E5A4(0, &qword_1003CCBB8);
  v32 = &type metadata for String;
  v30 = a1;
  v31 = a2;

  *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, &v30);
  v9 = objc_opt_self();
  v10 = String._bridgeToObjectiveC()();
  v11 = [v9 isNullPredicateWithProperty:v10];

  *(inited + 40) = v11;
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_100080FB4(&qword_1003CCBB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1002ED020;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v9 isNullPredicateWithProperty:v13];

  *(v12 + 56) = sub_10008E5A4(0, &unk_1003CCBE0);
  *(v12 + 32) = v14;
  Date.timeIntervalSinceReferenceDate.getter();
  v32 = &type metadata for Double;
  v30 = v15;
  v16 = sub_10013CD88(0x6974617269707865, 0xEF657461645F6E6FLL, &v30, 5);
  *(v12 + 88) = v8;
  *(v12 + 64) = v16;
  *(inited + 48) = sub_100090CB4();
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1002ED2C0;
  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for String;
  v30 = v18;
  v31 = v19;
  v20 = sub_100223CB4(0x5F746375646F7270, 0xEC00000065707974, &v30);
  *(v17 + 56) = v8;
  *(v17 + 32) = v20;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for String;
  v30 = v21;
  v31 = v22;
  v23 = sub_100223CB4(0x5F746375646F7270, 0xEC00000065707974, &v30);
  *(v17 + 88) = v8;
  *(v17 + 64) = v23;
  v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v32 = &type metadata for String;
  v30 = v24;
  v31 = v25;
  v26 = sub_100223CB4(0x5F746375646F7270, 0xEC00000065707974, &v30);
  *(v17 + 120) = v8;
  *(v17 + 96) = v26;
  *(inited + 56) = sub_100090CB4();
  v33 = inited;
  if (a5)
  {
    v32 = &type metadata for String;
    v30 = a4;
    v31 = a5;

    sub_100223CB4(0x5F746375646F7270, 0xEA00000000006469, &v30);
    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*((v33 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    inited = v33;
  }

  sub_10018EF18(inited);

  return sub_10018F08C();
}

id sub_100090CB4()
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v1 = [swift_getObjCClassFromMetadata() predicateMatchingAnyPredicates:isa];

  return v1;
}

id sub_100090D24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1000910B4(a1, a2);
  sub_100213374(0, 1, 0);
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  if (v6 >= v5 >> 1)
  {
    sub_100213374(v5 > 1, v6 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v6 + 1;
  v7 = &_swiftEmptyArrayStorage[2 * v6];
  v7[4] = 0xD000000000000010;
  v7[5] = 0x8000000100314090;
  _s13ReceiptEntityCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = v4;
  v10 = sub_10018EE18(_swiftEmptyArrayStorage);

  sub_100080FB4(&qword_1003CCBB0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1002ED290;
  v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v11 + 56) = &type metadata for String;
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = sub_10009373C(a3, v4, v10, v11, ObjCClassFromMetadata);

  return v14;
}

void sub_100090E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_100080FB4(&qword_1003CCBD0);
  sub_1000890DC();
  __chkstk_darwin(v8);
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(v18, a2, &v19);
  sub_10008E550(v18);
  if (v20)
  {
    if (swift_dynamicCast())
    {
      v18[0] = 0x74706965636572;
      v18[1] = 0xE700000000000000;
      sub_100080FB4(&qword_1003CCBD8);
      AsyncStream.Continuation.yield(_:)();
      v9 = sub_100093DD0();
      v10(v9);
      return;
    }
  }

  else
  {
    sub_10008105C(&v19);
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v11 = type metadata accessor for SKLogger();
  sub_100093DDC(v11, qword_1003F26C8);
  v12 = Logger.logObject.getter();
  if (sub_100093D8C(v12))
  {
    sub_10008E688();
    v13 = sub_100093C08();
    v18[0] = v13;
    *a5 = 136446466;
    v15 = sub_100093CF0(v13, v14, v18);
    sub_100093BF8(v15);
    *(a5 + 14) = sub_100080210(0xD00000000000002BLL, 0x80000001003143E0, v18);
    sub_100093C24(&_mh_execute_header, v16, v17, "%{public}s%{public}s");
    sub_100093E64();
    sub_100081C28();
    sub_100093C84();
  }
}

id sub_1000910B4(uint64_t a1, uint64_t a2)
{
  sub_100080FB4(&unk_1003D28A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002ED2D0;
  sub_10008E5A4(0, &qword_1003CCBB8);
  v7 = &type metadata for String;
  v6[0] = a1;
  v6[1] = a2;

  *(inited + 32) = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, v6);
  v7 = &type metadata for Bool;
  LOBYTE(v6[0]) = 0;
  *(inited + 40) = sub_100223CB4(0x73696E69665F7369, 0xEB00000000646568, v6);
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_10018EE04(inited);
  swift_setDeallocating();
  sub_10009E32C();
  return sub_10018F08C();
}

id sub_1000911E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_100080FB4(&qword_1003CCBB0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002ED020;
  v9 = sub_10008E5A4(0, &qword_1003CCBB8);
  v16 = &type metadata for String;
  v14 = a3;
  v15 = a4;

  v10 = sub_100093E18();
  v11 = sub_100223CB4(v10, 0xE900000000000064, &v14);
  *(v8 + 56) = v9;
  *(v8 + 32) = v11;
  v16 = &type metadata for String;
  v14 = a1;
  v15 = a2;

  v12 = sub_100223CB4(0x746361736E617274, 0xEE0064695F6E6F69, &v14);
  *(v8 + 88) = v9;
  *(v8 + 64) = v12;
  return sub_10018F08C();
}

uint64_t sub_10009131C(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v6 = sub_100080FB4(&qword_1003CCBD0);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v20 - v8;
  v21 = 0x74706965636572;
  v22 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(&v23, a2, v25);
  sub_10008E550(&v23);
  if (v26)
  {
    if (swift_dynamicCast())
    {
      v23 = v21;
      v24 = v22;
      sub_100080FB4(&qword_1003CCBD8);
      AsyncStream.Continuation.yield(_:)();
      result = (*(v7 + 8))(v9, v6);
      *a4 = 1;
      return result;
    }
  }

  else
  {
    sub_10008105C(v25);
  }

  if (qword_1003CBE58 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for SKLogger();
  sub_10007EDA4(v11, qword_1003F26C8);
  if (qword_1003CBE98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v13 = v23;
  v12 = v24;
  v14 = static os_log_type_t.error.getter();

  v15 = Logger.logObject.getter();

  if (os_log_type_enabled(v15, v14))
  {
    v16 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    *v16 = 136446466;
    v23 = 91;
    v24 = 0xE100000000000000;
    v17._countAndFlagsBits = v13;
    v17._object = v12;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8285;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19 = sub_100080210(v23, v24, v25);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2082;
    *(v16 + 14) = sub_100080210(0xD00000000000002BLL, 0x80000001003143E0, v25);
    _os_log_impl(&_mh_execute_header, v15, v14, "%{public}s%{public}s", v16, 0x16u);
    swift_arrayDestroy();
  }
}

id sub_100091684(uint64_t a1, uint64_t a2)
{
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_100080FB4(&qword_1003CCBB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002ED020;
  v5 = sub_10008E5A4(0, &qword_1003CCBB8);
  v11 = &type metadata for String;
  v10[0] = a1;
  v10[1] = a2;

  v6 = sub_100223CB4(0x695F656C646E7562, 0xE900000000000064, v10);
  *(v4 + 56) = v5;
  *(v4 + 32) = v6;
  Date.timeIntervalSinceReferenceDate.getter();
  v11 = &type metadata for Double;
  v10[0] = v7;
  v8 = sub_10013CD88(0xD00000000000001CLL, 0x80000001003143A0, v10, 5);
  *(v4 + 88) = v5;
  *(v4 + 64) = v8;
  return sub_10018F08C();
}

void sub_1000917C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, objc_class *a8, objc_class *a9)
{
  strcpy(v116, "renewal_info");
  BYTE5(v116[1]) = 0;
  HIWORD(v116[1]) = -5120;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(&v117, a2, &v119);
  sub_10008E550(&v117);
  v14 = &off_1003CB000;
  if (!v120)
  {
    sub_10008105C(&v119);
    goto LABEL_9;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for SKLogger();
    sub_10007EDA4(v22, qword_1003F26C8);
    v23 = static os_log_type_t.error.getter();
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v25 = 136446466;
      *(v25 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD00000000000003DLL, 0x8000000100314140, &v117);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }

    return;
  }

  v113 = a7;
  v114 = a8;
  v15 = v116[0];
  v16 = v116[1];
  v116[0] = 0xD000000000000015;
  v116[1] = 0x80000001003140F0;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(&v117, a2, &v119);
  sub_10008E550(&v117);
  if (!v120)
  {
    sub_10008105C(&v119);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for SKLogger();
    sub_10007EDA4(v26, qword_1003F26C8);
    v27 = static os_log_type_t.error.getter();
    v28 = Logger.logObject.getter();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      *v29 = 136446466;
      *(v29 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_100080210(0xD000000000000041, 0x8000000100314180, &v117);
      _os_log_impl(&_mh_execute_header, v28, v27, "%{public}s%{public}s", v29, 0x16u);
      swift_arrayDestroy();
    }

    v30 = v15;
    goto LABEL_20;
  }

  v109 = v116[0];
  v111 = v116[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  v117 = 0;
  v18 = sub_100028E90(isa, &v117);

  v19 = v117;
  v115 = v15;
  if (!v18)
  {
    v31 = v117;
    if (v19)
    {
LABEL_23:
      v32 = v16;

      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v33 = type metadata accessor for SKLogger();
      sub_10007EDA4(v33, qword_1003F26C8);
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      v117 = 0xD00000000000002ALL;
      v118 = 0x80000001003141D0;
      v34._countAndFlagsBits = a5;
      v34._object = a6;
      String.append(_:)(v34);
      v35._countAndFlagsBits = 8250;
      v35._object = 0xE200000000000000;
      String.append(_:)(v35);
      *&v119 = v19;
      v36 = v19;
      sub_100080FB4(&qword_1003CCBC8);
      v37._countAndFlagsBits = String.init<A>(describing:)();
      String.append(_:)(v37);

      v39 = v117;
      v38 = v118;
      v40 = static os_log_type_t.error.getter();

      v28 = Logger.logObject.getter();

      if (os_log_type_enabled(v28, v40))
      {
        v41 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v41 = 136446466;
        *(v41 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
        *(v41 + 12) = 2082;
        v42 = sub_100080210(v39, v38, &v117);

        *(v41 + 14) = v42;
        _os_log_impl(&_mh_execute_header, v28, v40, "%{public}s%{public}s", v41, 0x16u);
        swift_arrayDestroy();

        sub_10008E168(v115, v32);

        goto LABEL_21;
      }

      sub_10008E168(v115, v32);

LABEL_88:

      return;
    }

    goto LABEL_73;
  }

  sub_100080FB4(&unk_1003CE640);
  v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v19;

  if (v21)
  {
    goto LABEL_23;
  }

  if (!v20)
  {
LABEL_73:

    if (qword_1003CBE58 != -1)
    {
      swift_once();
    }

    v87 = type metadata accessor for SKLogger();
    sub_10007EDA4(v87, qword_1003F26C8);
    v117 = 0;
    v118 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v117 = 0xD00000000000002ALL;
    v118 = 0x80000001003141D0;
    v88._countAndFlagsBits = a5;
    v88._object = a6;
    String.append(_:)(v88);
    v90 = v117;
    v89 = v118;
    v91 = static os_log_type_t.error.getter();

    v28 = Logger.logObject.getter();

    if (!os_log_type_enabled(v28, v91))
    {
      sub_10008E168(v115, v16);

      goto LABEL_88;
    }

    v92 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    *v92 = 136446466;
    *(v92 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
    *(v92 + 12) = 2082;
    v93 = sub_100080210(v90, v89, &v117);

    *(v92 + 14) = v93;
    _os_log_impl(&_mh_execute_header, v28, v91, "%{public}s%{public}s", v92, 0x16u);
    swift_arrayDestroy();

    v30 = v115;
LABEL_20:
    sub_10008E168(v30, v16);
LABEL_21:

    return;
  }

  v43 = v20;
  v107 = v16;
  v44 = *(v20 + 16);
  if (!v44)
  {

    v108 = 0;
    v110 = 0;
    v95 = v107;
    goto LABEL_82;
  }

  v106 = 0;
  v108 = 0;
  v110 = 0;
  v45 = 32;
  v46 = v115;
  v112 = v43;
  do
  {
    v47 = *(v43 + v45);
    v116[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v116[1] = v48;

    AnyHashable.init<A>(_:)();
    if (!*(v47 + 16) || (v49 = sub_100212CF4(&v117), (v50 & 1) == 0))
    {

      sub_10008E550(&v117);
      goto LABEL_44;
    }

    sub_100080F58(*(v47 + 56) + 32 * v49, &v119);
    sub_10008E550(&v117);
    if ((swift_dynamicCast() & 1) == 0)
    {

LABEL_44:
      if (v14[459] != -1)
      {
        swift_once();
      }

      v63 = type metadata accessor for SKLogger();
      sub_10007EDA4(v63, qword_1003F26C8);
      v117 = 0;
      v118 = 0xE000000000000000;
      _StringGuts.grow(_:)(82);
      v64._countAndFlagsBits = 0xD000000000000050;
      v64._object = 0x8000000100314200;
      String.append(_:)(v64);
      v65._countAndFlagsBits = a5;
      v65._object = a6;
      String.append(_:)(v65);
      v67 = v117;
      v66 = v118;
      v68 = static os_log_type_t.error.getter();

      v69 = Logger.logObject.getter();

      if (os_log_type_enabled(v69, v68))
      {
        v70 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v70 = 136446466;
        *(v70 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
        *(v70 + 12) = 2082;
        v71 = sub_100080210(v67, v66, &v117);

        *(v70 + 14) = v71;
        _os_log_impl(&_mh_execute_header, v69, v68, "%{public}s%{public}s", v70, 0x16u);
        swift_arrayDestroy();
        v46 = v115;

        goto LABEL_48;
      }

      goto LABEL_49;
    }

    v51 = String._bridgeToObjectiveC()();

    v117 = v110;
    v52 = sub_100027B30(v51, &v117);

    v53 = v117;
    v54 = v117;

    if (!v52)
    {
      if (v54)
      {
        v55 = v53;
LABEL_56:

        if (qword_1003CBE58 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for SKLogger();
        sub_10007EDA4(v72, qword_1003F26C8);
        v117 = 0;
        v118 = 0xE000000000000000;
        _StringGuts.grow(_:)(86);
        v73._countAndFlagsBits = 0xD000000000000050;
        v73._object = 0x8000000100314200;
        String.append(_:)(v73);
        v74._countAndFlagsBits = a5;
        v74._object = a6;
        String.append(_:)(v74);
        v75._countAndFlagsBits = 8250;
        v75._object = 0xE200000000000000;
        String.append(_:)(v75);
        v110 = v55;
        *&v119 = v55;
        v76 = v54;
        sub_100080FB4(&qword_1003CCBC8);
        v77._countAndFlagsBits = String.init<A>(describing:)();
        String.append(_:)(v77);

        v78 = v117;
        v79 = v118;
        v80 = static os_log_type_t.error.getter();

        v69 = Logger.logObject.getter();

        if (os_log_type_enabled(v69, v80))
        {
          v81 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *v81 = 136446466;
          *(v81 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
          *(v81 + 12) = 2082;
          v82 = sub_100080210(v78, v79, &v117);

          *(v81 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v69, v80, "%{public}s%{public}s", v81, 0x16u);
          swift_arrayDestroy();
          v46 = v115;

LABEL_48:

LABEL_50:
          v14 = &off_1003CB000;
          goto LABEL_51;
        }

LABEL_49:

        goto LABEL_50;
      }

LABEL_61:

      v14 = &off_1003CB000;
      if (qword_1003CBE58 != -1)
      {
        swift_once();
      }

      v83 = type metadata accessor for SKLogger();
      sub_10007EDA4(v83, qword_1003F26C8);
      v84 = static os_log_type_t.error.getter();
      v85 = Logger.logObject.getter();
      if (os_log_type_enabled(v85, v84))
      {
        v86 = swift_slowAlloc();
        v117 = swift_slowAlloc();
        *v86 = 136446466;
        *(v86 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
        *(v86 + 12) = 2082;
        *(v86 + 14) = sub_100080210(0xD00000000000002BLL, 0x8000000100314290, &v117);
        _os_log_impl(&_mh_execute_header, v85, v84, "%{public}s%{public}s", v86, 0x16u);
        swift_arrayDestroy();
        v46 = v115;
      }

      goto LABEL_70;
    }

    v55 = v53;
    v56 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (v54)
    {
      goto LABEL_56;
    }

    if (!v56)
    {
      goto LABEL_61;
    }

    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v56 + 16))
    {

      goto LABEL_69;
    }

    v59 = sub_1000B6328(v57, v58);
    v61 = v60;

    if ((v61 & 1) == 0)
    {

LABEL_68:

      v46 = v115;
LABEL_69:
      v14 = &off_1003CB000;
LABEL_70:
      v110 = 0;
      goto LABEL_51;
    }

    sub_100080F58(*(v56 + 56) + 32 * v59, &v117);

    sub_10008E5A4(0, &qword_1003D0520);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_68;
    }

    v62 = v119;
    v46 = v115;
    v14 = &off_1003CB000;
    if (v108)
    {
      if ([v108 compare:v119] != -1)
      {

        goto LABEL_70;
      }
    }

    v110 = 0;
    v106 = v47;
    v108 = v62;
LABEL_51:
    v43 = v112;
    v45 += 8;
    --v44;
  }

  while (v44);

  if (v106)
  {
    sub_100092A64(v106, v109, v111, a5, a6, v113, v114, a9);
    sub_10008E168(v46, v107);

    v94 = v110;
    goto LABEL_86;
  }

  v95 = v107;
LABEL_82:
  if (v14[459] != -1)
  {
    swift_once();
  }

  v96 = type metadata accessor for SKLogger();
  sub_10007EDA4(v96, qword_1003F26C8);
  v117 = 0;
  v118 = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  v97._countAndFlagsBits = 0x6620737574617453;
  v97._object = 0xEB0000000020726FLL;
  String.append(_:)(v97);
  v98._countAndFlagsBits = a5;
  v98._object = a6;
  String.append(_:)(v98);
  v99._countAndFlagsBits = 0xD000000000000026;
  v99._object = 0x8000000100314260;
  String.append(_:)(v99);
  v101 = v117;
  v100 = v118;
  v102 = static os_log_type_t.error.getter();

  v103 = Logger.logObject.getter();

  if (!os_log_type_enabled(v103, v102))
  {
    sub_10008E168(v115, v95);

    goto LABEL_88;
  }

  v104 = swift_slowAlloc();
  v117 = swift_slowAlloc();
  *v104 = 136446466;
  *(v104 + 4) = sub_100080210(0, 0xE000000000000000, &v117);
  *(v104 + 12) = 2082;
  v105 = sub_100080210(v101, v100, &v117);

  *(v104 + 14) = v105;
  _os_log_impl(&_mh_execute_header, v103, v102, "%{public}s%{public}s", v104, 0x16u);
  swift_arrayDestroy();

  sub_10008E168(v115, v95);

  v94 = v108;
LABEL_86:
}

void sub_100092A64(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t isEscapingClosureAtFileLocation, objc_class *a7, objc_class *a8)
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v81 = v13;
  AnyHashable.init<A>(_:)();
  sub_1001DAA40(&aBlock, a1, &v89);
  sub_10008E550(&aBlock);
  if (!v90)
  {
    sub_10008105C(&v89);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v20 = type metadata accessor for SKLogger();
    v21 = sub_10007EDA4(v20, qword_1003F26C8);
    sub_100093D20();
    _StringGuts.grow(_:)(79);
    sub_100093D68("Failed to parse JWS when getting latest transaction for renewal info for ");
    v22._countAndFlagsBits = sub_100093DD0();
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8250;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v24._countAndFlagsBits = sub_100093CAC();
    String.append(_:)(v24);
    v26 = aBlock;
    v25 = v84;
    v27 = static os_log_type_t.error.getter();

    a3 = Logger.logObject.getter();

    if (!os_log_type_enabled(a3, v27))
    {
      goto LABEL_18;
    }

    sub_10008E688();
    aBlock = sub_100093C08();
    v30 = sub_100093C44(4.8752e-34, aBlock, v28, v29);
    sub_100093BF8(v30);
    v31 = sub_100080210(v26, v25, &aBlock);

    *(v21 + 14) = v31;
    sub_100093E2C(&_mh_execute_header, v32, v33, "%{public}s%{public}s");
    swift_arrayDestroy();
LABEL_11:
    sub_100081C28();
    sub_100093C84();
LABEL_28:

    return;
  }

  v14 = String._bridgeToObjectiveC()();

  aBlock = 0;
  v15 = sub_100027B30(v14, &aBlock);

  v16 = aBlock;
  if (!v15)
  {
    v34 = aBlock;
    if (v16)
    {
      goto LABEL_13;
    }

    goto LABEL_24;
  }

  v79 = a8;
  v17 = isEscapingClosureAtFileLocation;
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  isEscapingClosureAtFileLocation = v16;
  v19 = v16;

  if (v19)
  {
    v16 = isEscapingClosureAtFileLocation;
LABEL_13:

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v35 = type metadata accessor for SKLogger();
    v36 = sub_10007EDA4(v35, qword_1003F26C8);
    sub_100093D20();
    _StringGuts.grow(_:)(79);
    sub_100093D68("Failed to parse JWS when getting latest transaction for renewal info for ");
    v37._countAndFlagsBits = sub_100093DD0();
    String.append(_:)(v37);
    v38._countAndFlagsBits = 8250;
    v38._object = 0xE200000000000000;
    String.append(_:)(v38);
    v39._countAndFlagsBits = sub_100093CAC();
    String.append(_:)(v39);
    v41 = aBlock;
    v40 = v84;
    v42 = static os_log_type_t.error.getter();

    a3 = Logger.logObject.getter();

    if (os_log_type_enabled(a3, v42))
    {
      sub_10008E688();
      aBlock = sub_100093C08();
      v45 = sub_100093C44(4.8752e-34, aBlock, v43, v44);
      sub_100093BF8(v45);
      v46 = sub_100080210(v41, v40, &aBlock);

      *(v36 + 14) = v46;
      sub_100093E2C(&_mh_execute_header, v47, v48, "%{public}s%{public}s");
      swift_arrayDestroy();
      sub_100081C28();
      sub_100093C84();

      goto LABEL_28;
    }

LABEL_18:

    return;
  }

  if (!v18)
  {
    goto LABEL_24;
  }

  v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1001DA990(v49, v50, v18, &v89);

  sub_1000938E8(&v89, &aBlock);
  if (v86)
  {
    if (swift_dynamicCast())
    {
      v51 = sub_100093CAC();
      v54 = sub_10008F250(v51, v52, v17, v53, v81);

      a3 = swift_allocObject();
      a3[2].isa = v17;
      a3[3].isa = a7;
      a3[4].isa = v79;
      v55 = sub_100093DA4();
      *(v55 + 16) = sub_100093990;
      *(v55 + 24) = a3;
      v87 = sub_1000939AC;
      v88 = v55;
      aBlock = _NSConcreteStackBlock;
      v84 = 1107296256;
      v85 = sub_100223D74;
      v86 = &unk_100384EE0;
      v56 = _Block_copy(&aBlock);
      v57 = v17;

      [v54 enumeratePersistentIDsUsingBlock:v56];
      _Block_release(v56);

      sub_10008105C(&v89);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }

      __break(1u);
LABEL_24:
      if (qword_1003CBE58 != -1)
      {
        sub_100081C08();
      }

      v58 = type metadata accessor for SKLogger();
      sub_100093DDC(v58, qword_1003F26C8);
      v59 = Logger.logObject.getter();
      if (!sub_100093D8C(v59))
      {
        goto LABEL_28;
      }

      sub_10008E688();
      aBlock = sub_100093C08();
      v62 = sub_100093C44(4.8752e-34, aBlock, v60, v61);
      sub_100093BF8(v62);
      *(isEscapingClosureAtFileLocation + 14) = sub_100080210(0xD00000000000003BLL, 0x8000000100314310, &aBlock);
      sub_100093C24(&_mh_execute_header, v63, v64, "%{public}s%{public}s");
      sub_100093E64();
      goto LABEL_11;
    }
  }

  else
  {
    sub_10008105C(&aBlock);
  }

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v65 = type metadata accessor for SKLogger();
  v66 = sub_10007EDA4(v65, qword_1003F26C8);
  sub_100093D20();
  _StringGuts.grow(_:)(68);
  v80 = aBlock;
  v82 = v84;
  v67._countAndFlagsBits = 0xD000000000000027;
  v67._object = 0x8000000100314350;
  String.append(_:)(v67);
  v68._countAndFlagsBits = sub_100093DD0();
  String.append(_:)(v68);
  v69._countAndFlagsBits = 0xD000000000000019;
  v69._object = 0x8000000100314380;
  String.append(_:)(v69);
  sub_1000938E8(&v89, &aBlock);
  sub_100080FB4(&unk_1003CCB70);
  v70._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v70);

  v71 = static os_log_type_t.error.getter();

  v72 = Logger.logObject.getter();

  if (os_log_type_enabled(v72, v71))
  {
    sub_10008E688();
    aBlock = sub_100093C08();
    v75 = sub_100093C44(4.8752e-34, aBlock, v73, v74);
    sub_100093BF8(v75);
    v76 = sub_100080210(v80, v82, &aBlock);

    *(v66 + 14) = v76;
    sub_100093C24(&_mh_execute_header, v77, v78, "%{public}s%{public}s");
    sub_100093E64();
    sub_100081C28();
    sub_100093C84();
  }

  else
  {
  }

  sub_10008105C(&v89);
}

void sub_1000932AC(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, void (*a5)(void))
{
  v7 = [objc_allocWithZone(_s13ReceiptEntityCMa()) initWithPersistentID:a1 onConnection:a4];
  a5();
  *a3 = 1;
}

id sub_10009333C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_100080FB4(&qword_1003CCBB0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1002ED020;
  v11 = sub_1000911E8(a1, a2, a3, a4);
  *(v10 + 56) = sub_10008E5A4(0, &qword_1003CCBC0);
  *(v10 + 32) = v11;
  v12 = sub_10008E5A4(0, &qword_1003CCBB8);
  v17[3] = &type metadata for Bool;
  LOBYTE(v17[0]) = 0;
  v13 = sub_100223CB4(0x73696E69665F7369, 0xEB00000000646568, v17);
  *(v10 + 88) = v12;
  *(v10 + 64) = v13;
  v14 = sub_10018F08C();
  _s13ReceiptEntityCMa();
  v15 = [swift_getObjCClassFromMetadata() queryOnConnection:a5 predicate:v14];

  return v15;
}

id sub_1000934AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Date();
  sub_1000890DC();
  v8 = v7;
  __chkstk_darwin(v9);
  sub_100093D40();
  v12 = v11 - v10;
  sub_10008E5A4(0, &unk_1003D28B0);
  sub_100080FB4(&qword_1003CCBB0);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1002ED2E0;
  v14 = sub_10008E5A4(0, &qword_1003CCBB8);
  v28 = &type metadata for String;
  v27[0] = a2;
  v27[1] = a3;

  v15 = sub_100093E18();
  v16 = sub_100223CB4(v15, 0xE900000000000064, v27);
  *(v13 + 56) = v14;
  *(v13 + 32) = v16;
  v28 = &type metadata for UInt8;
  LOBYTE(v27[0]) = 3;
  v17 = sub_100223CB4(0x5F746375646F7270, 0xEC00000065707974, v27);
  *(v13 + 88) = v14;
  *(v13 + 64) = v17;
  Date.timeIntervalSinceReferenceDate.getter();
  v28 = &type metadata for Double;
  v27[0] = v18;
  v19 = sub_10013CD88(0x6974617269707865, 0xEF657461645F6E6FLL, v27, 5);
  *(v13 + 120) = v14;
  *(v13 + 96) = v19;
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v21 = v20;
  (*(v8 + 8))(v12, v6);
  v28 = &type metadata for Double;
  v27[0] = v21;
  v22 = sub_10013CD88(0x6974617269707865, 0xEF657461645F6E6FLL, v27, 3);
  *(v13 + 152) = v14;
  *(v13 + 128) = v22;
  v23 = sub_10018F08C();
  _s13ReceiptEntityCMa();
  v24 = [swift_getObjCClassFromMetadata() queryOnConnection:a4 predicate:v23];

  return v24;
}

id sub_10009373C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = [a5 queryOnConnection:a1 predicate:a2 orderingProperties:isa orderingDirections:v9];

  return v10;
}

uint64_t sub_1000937F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TransactionQuery(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100093858()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000938D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000938E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003CCB70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100093958()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000939BC()
{
  sub_100093DBC();
  sub_100080FB4(&qword_1003CCBD8);
  v1 = sub_100093C64();

  return sub_10009131C(v1, v2, v3, v0);
}

uint64_t sub_100093A4C()
{
  v1 = sub_100080FB4(&qword_1003CCBD8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

void sub_100093AE0()
{
  sub_100093DBC();
  sub_100080FB4(&qword_1003CCBD8);
  v1 = sub_100093C64();
  sub_100090E80(v1, v2, v3, v0, v4);
}

uint64_t sub_100093BF8(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

uint64_t sub_100093C08()
{

  return swift_slowAlloc();
}

void sub_100093C24(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

unint64_t sub_100093C44(float a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  *v4 = a1;

  return sub_100080210(0, 0xE000000000000000, va);
}

uint64_t sub_100093C84()
{
}

unint64_t sub_100093CD0(float a1)
{
  *v1 = a1;

  return sub_100080210(0, 0xE000000000000000, (v2 - 128));
}

unint64_t sub_100093CF0(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_100080210(0, 0xE000000000000000, a3);
}

void sub_100093D68(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000049;

  v2 = (a1 - 32) | 0x8000000000000000;
  String.append(_:)(*&v3);
}

BOOL sub_100093D8C(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t sub_100093DA4()
{

  return swift_allocObject();
}

uint64_t sub_100093DDC(uint64_t a1, uint64_t a2)
{
  sub_10007EDA4(a1, a2);

  return static os_log_type_t.error.getter();
}

void sub_100093E2C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t sub_100093E4C()
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t sub_100093E64()
{

  return swift_arrayDestroy();
}

void sub_100093E7C(char a1)
{

  sub_100213374(a1, 1, 0);
}

char *sub_100093E94()
{
  sub_10008E5A4(0, &unk_1003CCCA0);
  v1 = [objc_opt_self() serviceName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  *&v0[OBJC_IVAR____TtC9storekitd15ServiceListener_listener] = sub_100093FF4();
  v8.receiver = v0;
  v8.super_class = type metadata accessor for ServiceListener();
  v2 = objc_msgSendSuper2(&v8, "init");
  sub_10008E5A4(0, &unk_1003CCC90);
  v3 = v2;
  v4 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v5 = OBJC_IVAR____TtC9storekitd15ServiceListener_listener;
  v6 = *&v3[OBJC_IVAR____TtC9storekitd15ServiceListener_listener];
  [v6 setDelegate:v3];

  [*&v3[v5] resume];
  return v3;
}

id sub_100093FF4()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

uint64_t sub_10009408C(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for Client.Server(0);
  v4 = __chkstk_darwin(v3 - 8);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v63 - v7;
  v9 = [a2 processIdentifier];
  if (v9 == getpid())
  {
    return 0;
  }

  v10 = sub_1001B6A0C(a2);
  if (!v11)
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v14 = type metadata accessor for SKLogger();
    sub_10007EDA4(v14, qword_1003F26C8);
    aBlock = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(33);

    aBlock = 0xD00000000000001FLL;
    v69 = 0x8000000100314570;
    LODWORD(v64) = v9;
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v17 = aBlock;
    v16 = v69;
    v18 = static os_log_type_t.error.getter();

    v19 = Logger.logObject.getter();

    if (!os_log_type_enabled(v19, v18))
    {

LABEL_18:

      return 0;
    }

    v20 = swift_slowAlloc();
    aBlock = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
    *(v20 + 12) = 2082;
    v21 = sub_100080210(v17, v16, &aBlock);

    *(v20 + 14) = v21;
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
    sub_100081C28();
    sub_100081C28();
LABEL_23:

    return 0;
  }

  v12 = v10;
  v13 = v11;
  [a2 auditToken];
  if (ba_is_process_extension())
  {
    goto LABEL_18;
  }

  aBlock = v12;
  v69 = v13;
  v22._countAndFlagsBits = 91;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  LODWORD(v63) = v9;
  v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v23);

  v24._countAndFlagsBits = 93;
  v24._object = 0xE100000000000000;
  String.append(_:)(v24);
  v26 = aBlock;
  v25 = v69;
  v27 = objc_opt_self();
  v28 = [v27 client];
  sub_100094C54(v28, "setRemoteObjectInterface:");

  sub_10008E5A4(0, &unk_1003CCC80);
  v29 = a2;
  v30 = [v29 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100080FB4(&unk_1003CCD30);
  swift_dynamicCast();
  v19 = sub_100094908(v29, v63, v9);
  v31 = [v19 client];
  if (!v31)
  {
LABEL_13:
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v42 = type metadata accessor for SKLogger();
    sub_10007EDA4(v42, qword_1003F26C8);
    aBlock = 0;
    v69 = 0xE000000000000000;
    _StringGuts.grow(_:)(54);
    v43._countAndFlagsBits = 0xD000000000000034;
    v43._object = 0x8000000100314590;
    String.append(_:)(v43);
    v44._countAndFlagsBits = v26;
    v44._object = v25;
    String.append(_:)(v44);

    v46 = aBlock;
    v45 = v69;
    v47 = static os_log_type_t.default.getter();

    v48 = Logger.logObject.getter();

    if (os_log_type_enabled(v48, v47))
    {
      v49 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v49 = 136446466;
      *(v49 + 4) = sub_100080210(0, 0xE000000000000000, &aBlock);
      *(v49 + 12) = 2082;
      v50 = sub_100080210(v46, v45, &aBlock);

      *(v49 + 14) = v50;
      _os_log_impl(&_mh_execute_header, v48, v47, "%{public}s%{public}s", v49, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    else
    {
    }

    goto LABEL_23;
  }

  v39 = v31;
  if (*(v31 + OBJC_IVAR____TtC9storekitd6Client_isThirdPartyDistributed) == 1)
  {
    sub_1001A7E5C(v31, v32, v33, v34, v35, v36, v37, v38, v63, v64, v65, v66, v67, aBlock, v69, v70, v71, v72, v73, v74);
    v40 = sub_100080FB4(&qword_1003CCB50);
    sub_100081DFC(v6, 1, 2, v40);
    v41 = sub_1001A9B8C(v8, v6);
    sub_100094BEC(v6);
    sub_100094BEC(v8);
    if (v41)
    {

      goto LABEL_13;
    }
  }

  sub_10008E5A4(0, &unk_1003CCC90);

  v51 = static OS_os_log.default.getter();
  v52 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    aBlock = v54;
    *v53 = 136446210;
    *(v53 + 4) = sub_100080210(v26, v25, &aBlock);
    _os_log_impl(&_mh_execute_header, v51, v52, "Accepting new connection %{public}s", v53, 0xCu);
    sub_100080F0C(v54);
    sub_100081C28();
    sub_100081C28();
  }

  v55 = [v27 service];
  sub_100094C54(v55, "setExportedInterface:");

  [v29 setExportedObject:v19];
  v56 = swift_allocObject();
  *(v56 + 16) = v26;
  *(v56 + 24) = v25;
  v72 = sub_100094B8C;
  v73 = v56;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_10019E0C0;
  v71 = &unk_100385098;
  v57 = _Block_copy(&aBlock);

  sub_100094C54(v58, "setInvalidationHandler:");
  _Block_release(v57);
  v59 = swift_allocObject();
  *(v59 + 16) = v26;
  *(v59 + 24) = v25;
  v72 = sub_100094BC8;
  v73 = v59;
  aBlock = _NSConcreteStackBlock;
  v69 = 1107296256;
  v70 = sub_10019E0C0;
  v71 = &unk_1003850E8;
  v60 = _Block_copy(&aBlock);

  sub_100094C54(v61, "setInterruptionHandler:");
  _Block_release(v60);
  [v29 resume];

  return 1;
}

id sub_100094908(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithConnection:a1 remoteObject:a2 pid:a3];

  swift_unknownObjectRelease();
  return v4;
}

void sub_100094970(uint64_t a1, unint64_t a2, const char *a3)
{
  sub_10008E5A4(0, &unk_1003CCC90);

  oslog = static OS_os_log.default.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_100080210(a1, a2, &v10);
    _os_log_impl(&_mh_execute_header, oslog, v6, a3, v7, 0xCu);
    sub_100080F0C(v8);
    sub_100081C28();
    sub_100081C28();
  }
}

id sub_100094AEC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ServiceListener();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100094B54()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100094BB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100094BEC(uint64_t a1)
{
  v2 = type metadata accessor for Client.Server(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_100094C54(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_100094C6C()
{
  sub_10008BE9C();
  v1[5] = v2;
  v1[6] = v0;
  v3 = swift_task_alloc();
  v1[7] = v3;
  *v3 = v1;
  v3[1] = sub_100094D04;

  return sub_100095050();
}

uint64_t sub_100094D04()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v3 = v2;
  v4 = *v1;
  sub_100098AB4();
  *v5 = v4;
  *(v6 + 64) = v0;

  if (v0)
  {
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }

  else
  {
    sub_100098AC4();

    return v10();
  }
}

uint64_t sub_100095050()
{
  sub_10008BE9C();
  v1[2] = v2;
  v1[3] = v0;
  sub_100080FB4(&unk_1003CCCB8);
  v1[4] = swift_task_alloc();
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000950E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  sub_10008C07C();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = *(v24[3] + 16);
  v24[5] = v27;
  v28 = sub_1001A81B0(v26);
  v29 = [v28 ams_DSID];

  if (v29)
  {

LABEL_4:
    v31 = swift_task_alloc();
    v24[6] = v31;
    *v31 = v24;
    v31[1] = sub_1000953BC;
    sub_10008BE10();

    return sub_1000957E4(v32);
  }

  if (sub_1001A79F8(v30))
  {
    goto LABEL_4;
  }

  v35 = v24[3];
  type metadata accessor for ConsultMessageListenerTask();
  a11 = 0;
  a12 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v36._countAndFlagsBits = 0xD000000000000022;
  v36._object = 0x80000001003145F0;
  String.append(_:)(v36);
  v37 = *(v27 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);

  sub_100098C38();

  v38._object = 0x8000000100314620;
  v38._countAndFlagsBits = 0xD00000000000001DLL;
  String.append(_:)(v38);
  v40 = a11;
  v39 = a12;
  v41 = *v35;
  v42 = v35[1];
  static os_log_type_t.error.getter();
  v43 = Logger.logObject.getter();
  if (sub_100098C50(v43))
  {
    v44 = sub_10008E688();
    v45 = sub_10008E670();
    *v44 = 136446466;
    a10 = v45;
    a11 = 91;
    a12 = 0xE100000000000000;
    v46._countAndFlagsBits = v41;
    v46._object = v42;
    String.append(_:)(v46);
    v47._countAndFlagsBits = 8285;
    v47._object = 0xE200000000000000;
    String.append(_:)(v47);
    sub_100080210(a11, a12, &a10);

    sub_100098B6C();
    v48 = sub_100080210(v40, v39, &a10);

    *(v44 + 14) = v48;
    sub_100098B4C(&_mh_execute_header, v49, v50, "%{public}s%{public}s");
    sub_100098BC0();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  sub_10008B5E0();
  swift_allocError();
  *v51 = 10;
  swift_willThrow();

  sub_100098AC4();
  sub_10008BE10();

  return v53(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000953BC()
{
  sub_100098BB4();
  sub_10008C070();
  v3 = v2;
  sub_10008BEFC();
  *v4 = v3;
  v5 = *v1;
  sub_100098AB4();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    sub_100098AD0();

    return _swift_task_switch(v9, v10, v11);
  }
}

uint64_t sub_1000954F0()
{
  sub_10008BE9C();
  v1 = v0[4];
  sub_1000982C8(v0[2], v1);
  v2 = type metadata accessor for MessageServerResponse.MessageItem(0);
  v3 = sub_100081D0C(v1, 1, v2);
  v4 = sub_100098338(v1);
  if (v3 == 1 || (sub_1001A79F8(v4) & 1) == 0)
  {

    sub_100098AA4();

    return v7();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[7] = v5;
    *v5 = v0;
    sub_100098ADC(v5);

    return sub_1000961B0();
  }
}

uint64_t sub_1000955F0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_1000956E0()
{
  sub_100098BB4();
  if (*(v0 + 64) == 1)
  {
    v1 = *(v0 + 16);
    sub_10008B5E0();
    swift_allocError();
    *v2 = 0;
    swift_willThrow();
    sub_100098338(v1);

    sub_100098AC4();
  }

  else
  {

    sub_100098AA4();
  }

  return v3();
}

uint64_t type metadata accessor for ConsultMessageListenerTask()
{
  result = qword_1003CCDA8;
  if (!qword_1003CCDA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000957E4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_100095804, 0, 0);
}

uint64_t sub_100095804()
{
  sub_10008BE9C();
  v1 = *(v0[3] + 32);
  v0[4] = v1;
  if ([v1 allowDeveloperControl])
  {
    if ([v1 type] == 2)
    {
      v2 = swift_task_alloc();
      v0[5] = v2;
      *v2 = v0;
      sub_100098ADC(v2);

      return sub_100096494();
    }

    else
    {
      v11 = swift_task_alloc();
      v0[7] = v11;
      *v11 = v0;
      sub_100098ADC(v11);

      return sub_1000967F4();
    }
  }

  else
  {
    sub_100098C20();
    sub_100098A8C();
    v5 = sub_100098C14(v4);
    sub_1000983B8(v5, v6, v7);
    v8 = v0[2];
    v9 = type metadata accessor for MessageServerResponse.MessageItem(0);
    sub_100081DFC(v8, 0, 1, v9);
    sub_100098AA4();

    return v10();
  }
}

uint64_t sub_100095980()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 64) = v3;

  sub_100098AD0();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100095A70()
{
  sub_10008BE9C();
  v1 = *(v0 + 64);
  if (v1 & 0x100) != 0 && (v1)
  {
    sub_100098C20();
    sub_100098A8C();
    v3 = sub_100098C14(v2);
    sub_1000983B8(v3, v4, v5);
    v6 = *(v0 + 16);
    v7 = type metadata accessor for MessageServerResponse.MessageItem(0);
    sub_100081DFC(v6, 0, 1, v7);
    sub_100098AA4();

    return v8();
  }

  else
  {
    v10 = swift_task_alloc();
    *(v0 + 48) = v10;
    *v10 = v0;
    sub_100098ADC(v10);

    return sub_1000967F4();
  }
}

uint64_t sub_100095B60()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_10008BEFC();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 66) = v3 & 1;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_100095FC4()
{
  sub_100098BB4();
  v3 = v2;
  sub_10008C070();
  v5 = v4;
  sub_10008BEFC();
  *v6 = v5;
  v7 = *v1;
  sub_100098AB4();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 67) = v3 & 1;
    sub_100098AD0();

    return _swift_task_switch(v11, v12, v13);
  }
}

uint64_t sub_1000960FC()
{
  sub_10008BE9C();
  if (*(v0 + 67) == 1 && (sub_100096BF0([*(v0 + 32) type]) & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    sub_100098C20();
    sub_100098A8C();
    v3 = sub_100098C14(v2);
    sub_1000983B8(v3, v4, v5);
    v1 = 0;
  }

  v6 = *(v0 + 16);
  v7 = type metadata accessor for MessageServerResponse.MessageItem(0);
  sub_100081DFC(v6, v1, 1, v7);
  sub_100098AA4();

  return v8();
}

uint64_t sub_1000961D0()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[19] = v1;

  v2 = String._bridgeToObjectiveC()();
  v0[20] = v2;

  v0[2] = v0;
  v0[7] = v0 + 21;
  v0[3] = sub_10009635C;
  v3 = swift_continuation_init();
  v0[17] = sub_100080FB4(&qword_1003CCCC8);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100098244;
  v0[13] = &unk_100385110;
  v0[14] = v3;
  [v1 dialogsDisabledForBundleID:v2 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_10009635C()
{
  sub_10008BE9C();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;
  sub_100098AD0();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_10009642C()
{
  sub_10008BE9C();
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1000964B4()
{
  v24 = v0;
  v1 = *(v0 + 80);
  type metadata accessor for ConsultMessageListenerTask();
  _StringGuts.grow(_:)(44);

  v22 = 0xD00000000000002ALL;
  v23 = 0x8000000100314690;
  v2 = *(*(v1 + 16) + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);

  sub_100098C38();

  static os_log_type_t.default.getter();
  v3 = Logger.logObject.getter();
  if (sub_100098C50(v3))
  {
    v4 = sub_10008E688();
    v5 = sub_10008E670();
    sub_100098B1C(v5, v6, v7, v8, v9, v10, v11, v12, 4.8752e-34, v21, v22, v23);
    v13._countAndFlagsBits = 8285;
    v13._object = 0xE200000000000000;
    String.append(_:)(v13);
    sub_100080210(v22, v23, &v21);

    sub_100098B6C();
    v14 = sub_100080210(0xD00000000000002ALL, 0x8000000100314690, &v21);

    *(v4 + 14) = v14;
    sub_100098B4C(&_mh_execute_header, v15, v16, "%{public}s%{public}s");
    sub_100098BC0();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  sub_100098AD0();

  return _swift_task_switch(v17, v18, v19);
}

uint64_t sub_100096674()
{
  sub_10008BE9C();
  v1 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 11;
  v0[3] = sub_100096710;
  v2 = swift_continuation_init();
  sub_100097140(v2, v1);

  return _swift_continuation_await(v0 + 2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_100096710()
{
  sub_10008BE9C();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  *v2 = v3;
  v4 = *(v1 + 88);
  if (*(v1 + 89))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v3 + 8);

  return v6(v5 | v4);
}

uint64_t sub_100096814()
{
  sub_10008BE9C();
  v1 = v0[10];
  v0[2] = v0;
  v0[7] = v0 + 11;
  v0[3] = sub_1000968B0;
  v2 = swift_continuation_init();
  sub_100097B18(v2, v1);

  return _swift_continuation_await(v0 + 2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1000968B0()
{
  sub_100098BB4();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  if (*(v4 + 48))
  {
    swift_willThrow();
    v5 = *(v3 + 8);

    return v5(0);
  }

  else
  {
    *(v1 + 89) = *(v1 + 88);
    sub_100098AD0();

    return _swift_task_switch(v7, v8, v9);
  }
}

uint64_t sub_1000969F4()
{
  v30 = v0;
  v1 = *(v0 + 89);
  v2 = *(v0 + 80);
  v28 = 0;
  v29 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  v3 = (*(v2 + 16) + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v5 = *v3;
  v4 = v3[1];

  v28 = v5;
  v29 = v4;
  v6._object = 0x8000000100314800;
  v6._countAndFlagsBits = 0xD000000000000017;
  String.append(_:)(v6);
  if (v1)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  type metadata accessor for ConsultMessageListenerTask();
  sub_100098C38();

  v9 = v28;
  v8 = v29;
  static os_log_type_t.default.getter();
  v10 = Logger.logObject.getter();
  if (sub_100098C50(v10))
  {
    v11 = sub_10008E688();
    v12 = sub_10008E670();
    sub_100098B1C(v12, v13, v14, v15, v16, v17, v18, v19, 4.8752e-34, v27, v28, v29);
    v20._countAndFlagsBits = 8285;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    sub_100080210(v28, v29, &v27);

    sub_100098B6C();
    v21 = sub_100080210(v9, v8, &v27);

    *(v11 + 14) = v21;
    sub_100098B4C(&_mh_execute_header, v22, v23, "%{public}s%{public}s");
    sub_100098BC0();
    sub_100081C28();
    sub_100081C28();
  }

  else
  {
  }

  v24 = *(v0 + 8);
  v25 = *(v0 + 89);

  return v24(v25);
}

uint64_t sub_100096BF0(uint64_t a1)
{
  v3 = [*(v1 + 24) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100080FB4(&unk_1003CCD30);
  v4 = swift_dynamicCast();
  v5 = v4;
  if (v4)
  {
    v38 = v4;
    v37 = v39;
    type metadata accessor for ConsultMessageListenerTask();
    _StringGuts.grow(_:)(24);

    v40 = 0xD000000000000010;
    v41 = 0x80000001003147E0;
    v39 = a1;
    v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v6);

    v7._countAndFlagsBits = 544175136;
    v7._object = 0xE400000000000000;
    String.append(_:)(v7);
    v36 = *(v1 + 16);
    v8 = *(v36 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
    v9 = *(v36 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID + 8);

    v10._countAndFlagsBits = v8;
    v10._object = v9;
    String.append(_:)(v10);

    v12 = *v1;
    v11 = *(v1 + 8);
    v13 = static os_log_type_t.default.getter();
    v14 = Logger.logObject.getter();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 136446466;
      v39 = v16;
      v40 = 91;
      v41 = 0xE100000000000000;
      v17._countAndFlagsBits = v12;
      v17._object = v11;
      String.append(_:)(v17);
      v18._countAndFlagsBits = 8285;
      v18._object = 0xE200000000000000;
      String.append(_:)(v18);
      v19 = sub_100080210(91, 0xE100000000000000, &v39);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      v20 = sub_100080210(0xD000000000000010, 0x80000001003147E0, &v39);

      *(v15 + 14) = v20;
      _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    sub_100080FB4(&unk_1003D18F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1002ED290;
    v40 = 1701869940;
    v41 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    *(inited + 96) = &type metadata for Int;
    *(inited + 72) = a1;
    v31 = Dictionary.init(dictionaryLiteral:)();
    sub_100080FB4(&unk_1003CCD40);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1002ED290;
    *(v32 + 32) = v31;
    sub_100080FB4(&unk_1003CE640);
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v37 pendingMessages:isa];

    v34 = [objc_opt_self() sharedManager];
    [v34 recordMessageDisplayEventWithType:3 messageType:a1 client:v36];

    swift_unknownObjectRelease();
    return v38;
  }

  else
  {
    type metadata accessor for ConsultMessageListenerTask();
    v21 = *v1;
    v22 = *(v1 + 8);
    v23 = static os_log_type_t.error.getter();
    v24 = Logger.logObject.getter();
    if (os_log_type_enabled(v24, v23))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136446466;
      v39 = v26;
      v40 = 91;
      v41 = 0xE100000000000000;
      v27._countAndFlagsBits = v21;
      v27._object = v22;
      String.append(_:)(v27);
      v28._countAndFlagsBits = 8285;
      v28._object = 0xE200000000000000;
      String.append(_:)(v28);
      v29 = sub_100080210(91, 0xE100000000000000, &v39);

      *(v25 + 4) = v29;
      *(v25 + 12) = 2082;
      *(v25 + 14) = sub_100080210(0xD000000000000031, 0x80000001003147A0, &v39);
      _os_log_impl(&_mh_execute_header, v24, v23, "%{public}s%{public}s", v25, 0x16u);
      swift_arrayDestroy();
    }
  }

  return v5;
}

uint64_t sub_100097140(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConsultMessageListenerTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2[3];
  sub_1000983B8(a2, v7, type metadata accessor for ConsultMessageListenerTask);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = (v6 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  sub_10009841C(v7, v11 + v9);
  *(v11 + v10) = a1;
  v33 = sub_100098480;
  v34 = v11;
  aBlock = _NSConcreteStackBlock;
  v30 = 1107296256;
  v31 = sub_1000977C8;
  v32 = &unk_100385160;
  v12 = _Block_copy(&aBlock);

  v13 = [v8 remoteObjectProxyWithErrorHandler:v12];
  _Block_release(v12);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100080FB4(&unk_1003CCD30);
  if (swift_dynamicCast())
  {
    v14 = v28;
    sub_1000983B8(a2, v7, type metadata accessor for ConsultMessageListenerTask);
    v15 = swift_allocObject();
    sub_10009841C(v7, v15 + v9);
    *(v15 + v10) = a1;
    v33 = sub_1000984A0;
    v34 = v15;
    aBlock = _NSConcreteStackBlock;
    v30 = 1107296256;
    v31 = sub_100097AB8;
    v32 = &unk_1003851B0;
    v16 = _Block_copy(&aBlock);

    [v14 askToShowMessageWithReplyBlock:v16];
    _Block_release(v16);
    return swift_unknownObjectRelease();
  }

  else
  {
    v18 = *a2;
    v19 = a2[1];
    v20 = static os_log_type_t.error.getter();
    v21 = Logger.logObject.getter();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446466;
      v28 = v23;
      aBlock = 91;
      v30 = 0xE100000000000000;
      v24._countAndFlagsBits = v18;
      v24._object = v19;
      String.append(_:)(v24);
      v25._countAndFlagsBits = 8285;
      v25._object = 0xE200000000000000;
      String.append(_:)(v25);
      v26 = sub_100080210(aBlock, v30, &v28);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      *(v22 + 14) = sub_100080210(0xD000000000000037, 0x80000001003146E0, &v28);
      _os_log_impl(&_mh_execute_header, v21, v20, "%{public}s%{public}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    **(*(a1 + 64) + 40) = 256;
    return swift_continuation_resume();
  }
}

uint64_t sub_100097574(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  type metadata accessor for ConsultMessageListenerTask();
  _StringGuts.grow(_:)(50);

  v23 = 0xD000000000000030;
  v24 = 0x8000000100314760;
  v5 = _convertErrorToNSError(_:)();
  v6 = [v5 description];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10._countAndFlagsBits = v7;
  v10._object = v9;
  String.append(_:)(v10);

  v11 = *a2;
  v12 = a2[1];
  v13 = static os_log_type_t.error.getter();
  v14 = Logger.logObject.getter();
  if (os_log_type_enabled(v14, v13))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 136446466;
    v22 = v16;
    v23 = 91;
    v24 = 0xE100000000000000;
    v17._countAndFlagsBits = v11;
    v17._object = v12;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 8285;
    v18._object = 0xE200000000000000;
    String.append(_:)(v18);
    v19 = sub_100080210(91, 0xE100000000000000, &v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_100080210(0xD000000000000030, 0x8000000100314760, &v22);

    *(v15 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v14, v13, "%{public}s%{public}s", v15, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  **(*(a3 + 64) + 40) = 256;

  return swift_continuation_resume();
}

void sub_1000977C8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_100097830(char a1, char a2, uint64_t *a3, uint64_t a4)
{
  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);
  v7 = (a3[2] + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v9 = *v7;
  v8 = v7[1];

  v30 = v9;
  v31 = v8;
  v10._object = 0x8000000100314730;
  v10._countAndFlagsBits = 0xD000000000000026;
  String.append(_:)(v10);
  if (a1)
  {
    v11 = 1702195828;
  }

  else
  {
    v11 = 0x65736C6166;
  }

  if (a1)
  {
    v12 = 0xE400000000000000;
  }

  else
  {
    v12 = 0xE500000000000000;
  }

  type metadata accessor for ConsultMessageListenerTask();
  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v15 = v30;
  v14 = v31;
  v17 = *a3;
  v16 = a3[1];
  v18 = static os_log_type_t.default.getter();
  v19 = Logger.logObject.getter();
  if (os_log_type_enabled(v19, v18))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 136446466;
    v29 = v21;
    v30 = 91;
    v31 = 0xE100000000000000;
    v22._countAndFlagsBits = v17;
    v22._object = v16;
    String.append(_:)(v22);
    v23._countAndFlagsBits = 8285;
    v23._object = 0xE200000000000000;
    String.append(_:)(v23);
    v24 = sub_100080210(91, 0xE100000000000000, &v29);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2082;
    v25 = sub_100080210(v15, v14, &v29);

    *(v20 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  v26 = *(*(a4 + 64) + 40);
  *v26 = a1 & 1;
  v26[1] = a2 & 1;

  return swift_continuation_resume();
}

uint64_t sub_100097AB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_100097B18(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ConsultMessageListenerTask();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = a2[3];
  sub_1000983B8(a2, &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ConsultMessageListenerTask);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_10009841C(&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;
  v34 = sub_1000986D4;
  v35 = v9;
  aBlock = _NSConcreteStackBlock;
  v31 = 1107296256;
  v32 = sub_1000977C8;
  v33 = &unk_100385200;
  v10 = _Block_copy(&aBlock);

  v11 = [v7 remoteObjectProxyWithErrorHandler:v10];
  _Block_release(v10);
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100080FB4(&unk_1003CCD30);
  if (swift_dynamicCast())
  {
    v12 = v29;
    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    v34 = sub_1000987AC;
    v35 = v13;
    aBlock = _NSConcreteStackBlock;
    v31 = 1107296256;
    v32 = sub_1000981F0;
    v33 = &unk_100385250;
    v14 = _Block_copy(&aBlock);

    [v12 hasAnyMessageListenersWithReply:v14];
    _Block_release(v14);
    return swift_unknownObjectRelease();
  }

  else
  {
    v16 = *a2;
    v17 = a2[1];
    v18 = static os_log_type_t.error.getter();
    v19 = Logger.logObject.getter();
    if (os_log_type_enabled(v19, v18))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136446466;
      v29 = v21;
      aBlock = 91;
      v31 = 0xE100000000000000;
      v22._countAndFlagsBits = v16;
      v22._object = v17;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 8285;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24 = sub_100080210(aBlock, v31, &v29);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_100080210(0xD000000000000037, 0x8000000100314820, &v29);
      _os_log_impl(&_mh_execute_header, v19, v18, "%{public}s%{public}s", v20, 0x16u);
      swift_arrayDestroy();
    }

    sub_10008B5E0();
    v25 = swift_allocError();
    *v26 = 10;
    sub_100080FB4(&qword_1003CCCB0);
    swift_allocError();
    *v27 = v25;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_100097F58(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for ConsultMessageListenerTask();
  _StringGuts.grow(_:)(50);

  v22 = 0xD000000000000030;
  v23 = 0x8000000100314860;
  v4 = _convertErrorToNSError(_:)();
  v5 = [v4 description];
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v11 = *a2;
  v10 = a2[1];
  v12 = static os_log_type_t.error.getter();
  v13 = Logger.logObject.getter();
  if (os_log_type_enabled(v13, v12))
  {
    v14 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v14 = 136446466;
    v22 = 91;
    v23 = 0xE100000000000000;
    v15._countAndFlagsBits = v11;
    v15._object = v10;
    String.append(_:)(v15);
    v16._countAndFlagsBits = 8285;
    v16._object = 0xE200000000000000;
    String.append(_:)(v16);
    v17 = sub_100080210(91, 0xE100000000000000, &v21);

    *(v14 + 4) = v17;
    *(v14 + 12) = 2082;
    v18 = sub_100080210(0xD000000000000030, 0x8000000100314860, &v21);

    *(v14 + 14) = v18;
    _os_log_impl(&_mh_execute_header, v13, v12, "%{public}s%{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  sub_100080FB4(&qword_1003CCCB0);
  swift_allocError();
  *v19 = a1;
  swift_errorRetain();

  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1000981F0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_100098244(uint64_t a1, char a2)
{
  v3 = *sub_100086D24((a1 + 32), *(a1 + 56));

  return sub_100098288(v3, a2);
}

uint64_t sub_1000982A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(*(a1 + 64) + 40);
  *v3 = a2;
  v3[1] = a3;
  return swift_continuation_resume();
}

uint64_t sub_1000982C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100080FB4(&unk_1003CCCB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100098338(uint64_t a1)
{
  v2 = sub_100080FB4(&unk_1003CCCB8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000983B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_100098B7C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_10009841C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ConsultMessageListenerTask();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000984A0(char a1, char a2)
{
  v5 = *(type metadata accessor for ConsultMessageListenerTask() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100097830(a1, a2, (v2 + v6), v7);
}

uint64_t sub_10009854C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10009855C()
{
  v1 = type metadata accessor for ConsultMessageListenerTask();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = v0 + v3 + *(v1 + 32);
  type metadata accessor for MessageServerResponse.MessageItem(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    type metadata accessor for URL();
    sub_100098B7C();
    (*(v6 + 8))(v5);
  }

  v7 = *(v1 + 36);
  type metadata accessor for Logger();
  sub_100098B7C();
  (*(v8 + 8))(v0 + v3 + v7);

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1000986EC(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ConsultMessageListenerTask() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a2(a1, v2 + v5, v6);
}

uint64_t sub_1000987C8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for MessageServerResponse.MessageItem(0);
    if (*(*(v8 - 8) + 84) == a2)
    {
      v9 = v8;
      v10 = *(a3 + 32);
    }

    else
    {
      v9 = type metadata accessor for SKLogger();
      v10 = *(a3 + 36);
    }

    return sub_100081D0C(a1 + v10, a2, v9);
  }
}

uint64_t sub_1000988A8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for MessageServerResponse.MessageItem(0);
    if (*(*(v8 - 8) + 84) == a3)
    {
      v9 = v8;
      v10 = *(a4 + 32);
    }

    else
    {
      v9 = type metadata accessor for SKLogger();
      v10 = *(a4 + 36);
    }

    return sub_100081DFC(v5 + v10, a2, a2, v9);
  }

  return result;
}

uint64_t sub_100098970()
{
  result = type metadata accessor for Client(319);
  if (v1 <= 0x3F)
  {
    result = sub_10008E5A4(319, &qword_1003D0C80);
    if (v2 <= 0x3F)
    {
      result = sub_10008E5A4(319, &unk_1003CCDC0);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for MessageServerResponse.MessageItem(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for SKLogger();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

void sub_100098AEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *v14 = a9;
  v18 = v16;
  v19 = v15;

  String.append(_:)(*&v18);
}

void sub_100098B1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *v12 = a9;
  v16 = v13;
  v17 = v14;

  String.append(_:)(*&v16);
}

void sub_100098B4C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

unint64_t sub_100098B8C(uint64_t a1, uint64_t a2, ...)
{
  va_start(va, a2);
  *(v3 + 4) = v4;
  *(v3 + 12) = 2082;

  return sub_100080210(a2, v2, va);
}

uint64_t sub_100098BC0()
{

  return swift_arrayDestroy();
}

void sub_100098BDC()
{
  v1 = 8285;
  v2 = 0xE200000000000000;

  String.append(_:)(*&v1);
}

unint64_t sub_100098BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, unint64_t a13)
{
  v14 = a12;
  v15 = a13;

  return sub_100080210(v14, v15, &a11);
}

uint64_t sub_100098C20()
{

  return type metadata accessor for ConsultMessageListenerTask();
}

void sub_100098C38()
{
  v3 = v0;
  v4 = v1;

  String.append(_:)(*&v3);
}

BOOL sub_100098C50(NSObject *a1)
{

  return os_log_type_enabled(a1, v1);
}

uint64_t sub_100098C68()
{
  sub_100080FB4(&qword_1003CCEC0);
  swift_allocObject();
  result = sub_10019D9C0(sub_10018F0FC, 0);
  qword_1003CCE00 = result;
  return result;
}

uint64_t sub_100098CCC()
{
  sub_10008BE9C();
  v0[11] = v1;
  v0[12] = v2;
  v0[9] = v3;
  v0[10] = v4;
  v0[8] = v5;
  v6 = type metadata accessor for Date();
  v0[13] = v6;
  v7 = *(v6 - 8);
  v0[14] = v7;
  v0[15] = *(v7 + 64);
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v8 = sub_10009F0B8();

  return _swift_task_switch(v8, v9, v10);
}

uint64_t sub_100098D9C(uint64_t a1)
{
  v25 = v1;
  v2 = sub_1001A82CC(a1);
  v1[18] = v2;
  v1[19] = v3;
  if (v3)
  {
    v1[20] = sub_1001A7AB4(v2);
    swift_getObjectType();
    if (qword_1003CC078 != -1)
    {
      swift_once();
    }

    v4 = qword_1003F28E0;
    v5 = swift_task_alloc();
    v1[21] = v5;
    *v5 = v1;
    v5[1] = sub_10009906C;

    return sub_10024ECE0(v4);
  }

  else
  {
    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v7 = type metadata accessor for SKLogger();
    sub_10007EDA4(v7, qword_1003F26C8);
    v8 = static os_log_type_t.error.getter();

    v9 = Logger.logObject.getter();

    if (sub_10009F1F4())
    {
      v11 = v1[11];
      v10 = v1[12];
      v12 = sub_10008E688();
      sub_10008E670();
      *v12 = 136446466;
      sub_10009F0F8();
      v22 = v13;
      v23 = v14;
      v24 = v15;
      v16._countAndFlagsBits = v11;
      v16._object = v10;
      String.append(_:)(v16);
      sub_10009F134();
      v17 = sub_100080210(v23, v24, &v22);

      *(v12 + 4) = v17;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_100080210(0xD00000000000005FLL, 0x8000000100314B70, &v22);
      _os_log_impl(&_mh_execute_header, v9, v8, "%{public}s%{public}s", v12, 0x16u);
      swift_arrayDestroy();
      sub_100081C28();
      sub_100081C28();
    }

    v18 = swift_task_alloc();
    v1[35] = v18;
    *v18 = v1;
    v18[1] = sub_100099A50;
    v19 = sub_10009F0E4();

    return sub_10009A040(v19, v20, v21);
  }
}

uint64_t sub_10009906C(uint64_t a1)
{
  v4 = *v2;
  sub_100098AB4();
  *v5 = v4;
  *v5 = *v2;

  if (v1)
  {

    swift_unknownObjectRelease();
    v6 = sub_100099B84;
  }

  else
  {
    swift_unknownObjectRelease();
    *(v4 + 176) = a1;
    v6 = sub_1000991B8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1000991B8()
{
  sub_100098BB4();
  v1 = v0[22];
  sub_10009F158();
  if (v1 == 0x8000000000000000)
  {
    __break(1u);
  }

  else
  {
    v2 = v0[14];
    Date.addingTimeInterval(_:)();
    v3 = sub_10009F1A4(*(v2 + 8));
    v4(v3);
    v5 = swift_allocObject();
    v0[27] = v5;
    *(v5 + 16) = 0;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    if (qword_1003CBC30 == -1)
    {
      goto LABEL_3;
    }
  }

  v5 = sub_10009F080();
LABEL_3:
  v6 = sub_10009F0C8(v5, qword_1003CCE00);

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_1000992A8()
{
  sub_10008BE9C();
  *(v0 + 232) = sub_10019D99C();
  v1 = sub_10009F0B8();

  return _swift_task_switch(v1, v2, v3);
}

uint64_t sub_100099308()
{
  v1 = v0[24];
  v18 = v0[23];
  v19 = v0[19];
  v16 = v0[16];
  v17 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v21 = v0[12];
  v22 = v0[27];
  v20 = v0[11];
  v6 = v0[8];
  v5 = v0[9];
  (*(v2 + 16))();
  v7 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v8 = (v3 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[30] = v9;
  *(v9 + 2) = v6;
  *(v9 + 3) = v5;
  *(v9 + 4) = v18;
  *(v9 + 5) = v1;
  *(v9 + 6) = v17;
  *(v9 + 7) = v19;
  (*(v2 + 32))(&v9[v7], v16, v4);
  *&v9[v8] = v22;
  v10 = &v9[(v8 + 15) & 0xFFFFFFFFFFFFFFF8];
  *v10 = v20;
  *(v10 + 1) = v21;

  v11 = swift_task_alloc();
  v0[31] = v11;
  *v11 = v0;
  v11[1] = sub_1000994B8;
  sub_10009F1B8();

  return sub_1001D5D00(v12, v13);
}

uint64_t sub_1000994B8()
{
  sub_10008BE9C();
  sub_10008C070();
  v1 = *v0;
  sub_100098AB4();
  *v2 = v1;

  v3 = sub_10009F0B8();

  return _swift_task_switch(v3, v4, v5);
}

uint64_t sub_1000995B8()
{
  v45 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 200);
  v3 = *(v0 + 136);
  v4 = *(v0 + 104);

  v2(v3, v4);
  swift_beginAccess();
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  if (v5)
  {

    if (qword_1003CBE58 != -1)
    {
      sub_100081C08();
    }

    v8 = *(v0 + 64);
    v7 = *(v0 + 72);
    v9 = type metadata accessor for SKLogger();
    sub_10007EDA4(v9, qword_1003F26C8);
    sub_100093D20();
    _StringGuts.grow(_:)(37);

    v43 = 0xD000000000000023;
    v44 = 0x8000000100314C50;
    v10._countAndFlagsBits = v8;
    v10._object = v7;
    String.append(_:)(v10);
    LOBYTE(v8) = static os_log_type_t.default.getter();

    v11 = Logger.logObject.getter();

    if (os_log_type_enabled(v11, v8))
    {
      HIDWORD(v41) = v6;
      v12 = *(v0 + 88);
      v13 = *(v0 + 96);
      v14 = sub_10008E688();
      sub_10008E670();
      *v14 = 136446466;
      sub_10009F0A0();
      v15._countAndFlagsBits = v12;
      v15._object = v13;
      String.append(_:)(v15);
      sub_100098BDC();
      v24 = sub_100098BF8(v16, v17, v18, v19, v20, v21, v22, v23, 0xD000000000000023, v41, v42, v43, v44);

      *(v14 + 4) = v24;
      *(v14 + 12) = 2082;
      v25 = sub_100080210(v40, 0x8000000100314C50, &v42);

      *(v14 + 14) = v25;
      sub_10009F1D4(&_mh_execute_header, v26, v27, "%{public}s%{public}s");
      sub_10008BF74();
      sub_100081C28();
      sub_10008BF3C();
    }

    else
    {
    }

    sub_10009F198();
    sub_10008BE10();

    __asm { BRAA            X2, X16 }
  }

  v28 = swift_task_alloc();
  *(v0 + 256) = v28;
  *v28 = v0;
  v28[1] = sub_100099894;
  sub_10009F0E4();
  sub_10008BE10();

  return sub_10009A5F8(v29, v30, v31, v32, v33, v34, v35);
}

uint64_t sub_100099894(uint64_t a1, uint64_t a2, char a3)
{
  sub_10008C070();
  v8 = v7;
  sub_10008BEFC();
  *v9 = v8;
  v10 = *v4;
  sub_100098AB4();
  *v11 = v10;
  *(v8 + 264) = v3;

  if (v3)
  {
    v12 = sub_100099C5C;
  }

  else
  {
    *(v8 + 296) = a3 & 1;
    *(v8 + 272) = a2;
    v12 = sub_1000999DC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_1000999DC()
{
  sub_10008BE9C();

  v1 = *(v0 + 296);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_100099A50()
{
  sub_100098BB4();
  v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

uint64_t sub_100099B84()
{
  sub_100098BB4();
  sub_10009F158();
  v1 = *(v0 + 112);
  Date.addingTimeInterval(_:)();
  v2 = sub_10009F1A4(*(v1 + 8));
  v3(v2);
  v4 = swift_allocObject();
  *(v0 + 216) = v4;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  if (qword_1003CBC30 != -1)
  {
    v4 = sub_10009F080();
  }

  v5 = sub_10009F0C8(v4, qword_1003CCE00);

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_100099C5C()
{
  v27 = v0;
  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v1 = v0[33];
  v2 = type metadata accessor for SKLogger();
  sub_10007EDA4(v2, qword_1003F26C8);
  v25 = 0;
  v26 = 0xE000000000000000;
  _StringGuts.grow(_:)(115);
  v0[5] = 0;
  v0[6] = 0xE000000000000000;
  v3._countAndFlagsBits = 0xD000000000000039;
  v3._object = 0x8000000100314BD0;
  String.append(_:)(v3);
  v0[7] = v1;
  sub_100080FB4(&qword_1003CCCB0);
  _print_unlocked<A, B>(_:_:)();
  v4._object = 0x8000000100314C10;
  v4._countAndFlagsBits = 0xD000000000000038;
  String.append(_:)(v4);
  static os_log_type_t.error.getter();

  v5 = Logger.logObject.getter();

  if (sub_10009F1F4())
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = sub_10008E688();
    sub_10008E670();
    *v8 = 136446466;
    sub_10009F0F8();
    v24 = v9;
    v25 = v10;
    v26 = v11;
    v12._countAndFlagsBits = v7;
    v12._object = v6;
    String.append(_:)(v12);
    sub_10009F134();
    sub_100080210(v25, v26, &v24);

    sub_10009F124();
    v13 = sub_10009F14C();
    v16 = sub_100080210(v13, v14, v15);

    *(v8 + 14) = v16;
    sub_10009F104(&_mh_execute_header, v17, v18, "%{public}s%{public}s");
    sub_100098BC0();
    sub_10008BF3C();
    sub_100081C28();
  }

  else
  {
  }

  v19 = swift_task_alloc();
  v0[36] = v19;
  *v19 = v0;
  v19[1] = sub_100099EE0;
  v20 = sub_10009F0E4();

  return sub_10009A040(v20, v21, v22);
}

uint64_t sub_100099EE0()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 297) = v3;

  v4 = sub_10009F0B8();

  return _swift_task_switch(v4, v5, v6);
}

uint64_t sub_100099FCC()
{
  sub_10008BE9C();

  v1 = *(v0 + 297);

  sub_10009F198();

  return v2(v1);
}

uint64_t sub_10009A040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;
  sub_100080FB4(&qword_1003CCEE8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  type metadata accessor for StorefrontManager();
  v4 = swift_task_alloc();
  v3[9] = v4;
  *v4 = v3;
  v4[1] = sub_10009A144;

  return sub_100223DA8();
}

uint64_t sub_10009A144()
{
  sub_100098BB4();
  v1 = *v0;
  v2 = *v0;
  sub_100098AB4();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;

  sub_10008E5A4(0, &unk_1003CE5F0);
  v5 = swift_task_alloc();
  *(v2 + 80) = v5;
  *v5 = v4;
  v5[1] = sub_10009A29C;
  v6 = *(v1 + 48);

  return sub_100148CA8(v6);
}

uint64_t sub_10009A29C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  *(v1 + 16) = v0;
  *(v1 + 24) = v3;
  v4 = *v0;
  sub_100098AB4();
  *v5 = v4;

  v6 = sub_10009F0B8();

  return _swift_task_switch(v6, v7, v8);
}

uint64_t sub_10009A380()
{
  sub_100098BB4();
  v1 = v0[7];
  sub_10009E838(v0[8], v1);
  v2 = type metadata accessor for StorefrontInternal();
  v3 = sub_100081D0C(v1, 1, v2);
  v4 = v0[7];
  if (v3 == 1)
  {
    sub_10009E8A8(v0[7]);
    v5 = 0;
  }

  else
  {
    v5 = *(v4 + 8);

    sub_10009E910(v4);
  }

  v6 = v0[3];
  v0[11] = v5;
  v0[12] = v6;
  v7 = swift_task_alloc();
  v8 = sub_10009F18C(v7);
  *v8 = v9;
  v8[1] = sub_10009A47C;

  return sub_100148E54();
}

uint64_t sub_10009A47C()
{
  sub_10008BE9C();
  sub_10008C070();
  sub_10008BEFC();
  *v2 = v1;
  v3 = *v0;
  sub_100098AB4();
  *v4 = v3;
  *(v6 + 112) = v5;

  v7 = sub_10009F0B8();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10009A580()
{
  sub_10008BE9C();
  v1 = *(v0 + 64);

  sub_10009E8A8(v1);

  sub_10009F198();
  v3 = *(v0 + 112);

  return v2(v3);
}

uint64_t sub_10009A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return _swift_task_switch(sub_10009A624, 0, 0);
}

void sub_10009A624()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_100080FB4(&unk_1003D2720);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1002ED290;
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  type metadata accessor for Request();
  v5 = qword_1003CBFB0;
  v6 = v2;

  if (v5 != -1)
  {
    swift_once();
    v6 = v0[4];
  }

  v8 = v0[7];
  v7 = v0[8];
  v9 = qword_1003F2818;
  v10 = sub_10009BCDC(v6, v4);
  v11 = sub_10021E3B0(v6, v9, 3, 4, 0, v10);
  v0[9] = v11;

  v12 = &v11[OBJC_IVAR____TtC9storekitd7Request_logKey];
  *v12 = v8;
  *(v12 + 1) = v7;

  if (qword_1003CBE58 != -1)
  {
    sub_100081C08();
  }

  v13 = v0[4];
  v14 = type metadata accessor for SKLogger();
  v0[10] = sub_10007EDA4(v14, qword_1003F26C8);
  sub_100093D20();
  _StringGuts.grow(_:)(61);
  v15._object = 0x8000000100314C80;
  v15._countAndFlagsBits = 0xD000000000000034;
  String.append(_:)(v15);
  v16._countAndFlagsBits = sub_10009F14C();
  String.append(_:)(v16);
  v17._countAndFlagsBits = 0x20726F6620;
  v17._object = 0xE500000000000000;
  String.append(_:)(v17);
  v18 = v13 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID;
  v19._countAndFlagsBits = *(v13 + OBJC_IVAR____TtC9storekitd6Client_requestBundleID);
  v0[11] = v19._countAndFlagsBits;
  v19._object = *(v18 + 8);
  v0[12] = v19._object;
  String.append(_:)(v19);
  v20 = v49;
  v21 = static os_log_type_t.default.getter();

  v22 = Logger.logObject.getter();

  if (os_log_type_enabled(v22, v21))
  {
    v45 = v48;
    v23 = v0[7];
    v24 = v0[8];
    v25 = sub_10008E688();
    sub_10008E670();
    *v25 = 136446466;
    sub_10009F0A0();
    v26._countAndFlagsBits = v23;
    v26._object = v24;
    String.append(_:)(v26);
    sub_100098BDC();
    v35 = sub_100098BF8(v27, v28, v29, v30, v31, v32, v33, v34, v44, v45, v47, v48, v49);

    *(v25 + 4) = v35;
    *(v25 + 12) = 2082;
    v36 = sub_100080210(v46, v20, &v47);

    *(v25 + 14) = v36;
    sub_10009F1D4(&_mh_execute_header, v37, v38, "%{public}s%{public}s");
    sub_10008BF74();
    sub_100081C28();
    sub_10008BF3C();
  }

  else
  {
  }

  v39 = swift_task_alloc();
  v40 = sub_10009F18C(v39);
  *v40 = v41;
  v40[1] = sub_10009A9A0;
  sub_10008BE10();

  __asm { BR              X0 }
}