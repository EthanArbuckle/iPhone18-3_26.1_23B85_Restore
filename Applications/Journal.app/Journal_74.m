uint64_t sub_1007F9A1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7824750 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64726F636572 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6465646E65747865 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
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

void *sub_1007F9B78(void *a1)
{
  v45 = sub_1000F24EC(&qword_100AF3140);
  v47 = *(v45 - 8);
  __chkstk_darwin(v45);
  v51 = &v40 - v2;
  v50 = sub_1000F24EC(&qword_100AF3148);
  v48 = *(v50 - 8);
  __chkstk_darwin(v50);
  v49 = &v40 - v3;
  v43 = sub_1000F24EC(&qword_100AF3150);
  v46 = *(v43 - 8);
  __chkstk_darwin(v43);
  v5 = &v40 - v4;
  v6 = sub_1000F24EC(&qword_100AF3158);
  v44 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v40 - v7);
  v9 = sub_1000F24EC(&qword_100AF3160);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v40 - v11;
  v13 = a1[3];
  v53 = a1;
  sub_10000CA14(a1, v13);
  sub_1007FA51C();
  v14 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v14)
  {
    v15 = v8;
    v41 = v6;
    v42 = 0;
    v8 = v49;
    v16 = v50;
    v17 = v51;
    v52 = v10;
    v18 = v12;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = *(v19 + 16);
    if (!v20 || ((v21 = *(v19 + 32), v20 == 1) ? (v22 = v21 == 4) : (v22 = 1), v22))
    {
      v23 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v24;
      sub_1000F24EC(&qword_100AD8100);
      *v8 = &type metadata for SidebarInsightsBrickViewModel.StreakType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v23 - 8) + 104))(v8, enum case for DecodingError.typeMismatch(_:), v23);
      swift_willThrow();
      (*(v52 + 8))(v18, v9);
    }

    else
    {
      if (*(v19 + 32) > 1u)
      {
        v46 = v19;
        if (v21 == 2)
        {
          v55 = 2;
          sub_1007FA618();
          v31 = v8;
          v32 = v42;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v52;
          if (!v32)
          {
            v55 = 0;
            v8 = KeyedDecodingContainer.decode(_:forKey:)();
            v54 = 1;
            sub_1007FA5C4();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v48 + 8))(v31, v16);
            (*(v33 + 8))(v12, v9);
            swift_unknownObjectRelease();
            goto LABEL_10;
          }
        }

        else
        {
          v55 = 3;
          sub_1007FA570();
          v36 = v42;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v37 = v52;
          if (!v36)
          {
            v55 = 0;
            v38 = v45;
            v39 = KeyedDecodingContainer.decode(_:forKey:)();
            v54 = 1;
            sub_1007FA5C4();
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v47 + 8))(v17, v38);
            (*(v37 + 8))(v12, v9);
            swift_unknownObjectRelease();
            v8 = v39;
            goto LABEL_10;
          }
        }
      }

      else if (*(v19 + 32))
      {
        v55 = 1;
        sub_1007FA66C();
        v34 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          v55 = 0;
          v35 = v43;
          v8 = KeyedDecodingContainer.decode(_:forKey:)();
          v54 = 1;
          sub_1007FA5C4();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v46 + 8))(v5, v35);
          (*(v52 + 8))(v12, v9);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      else
      {
        v55 = 0;
        sub_1007FA6C0();
        v26 = v15;
        v27 = v42;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v27)
        {
          v55 = 0;
          v28 = v41;
          v29 = KeyedDecodingContainer.decode(_:forKey:)();
          v30 = v52;
          v8 = v29;
          v54 = 1;
          sub_1007FA5C4();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v44 + 8))(v26, v28);
          (*(v30 + 8))(v12, v9);
          swift_unknownObjectRelease();
          goto LABEL_10;
        }
      }

      (*(v52 + 8))(v12, v9);
    }

    swift_unknownObjectRelease();
  }

LABEL_10:
  sub_10000BA7C(v53);
  return v8;
}

unint64_t sub_1007FA51C()
{
  result = qword_100AF3168;
  if (!qword_100AF3168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3168);
  }

  return result;
}

unint64_t sub_1007FA570()
{
  result = qword_100AF3170;
  if (!qword_100AF3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3170);
  }

  return result;
}

unint64_t sub_1007FA5C4()
{
  result = qword_100AF3178;
  if (!qword_100AF3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3178);
  }

  return result;
}

unint64_t sub_1007FA618()
{
  result = qword_100AF3180;
  if (!qword_100AF3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3180);
  }

  return result;
}

unint64_t sub_1007FA66C()
{
  result = qword_100AF3188;
  if (!qword_100AF3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3188);
  }

  return result;
}

unint64_t sub_1007FA6C0()
{
  result = qword_100AF3190;
  if (!qword_100AF3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3190);
  }

  return result;
}

unint64_t sub_1007FA714()
{
  result = qword_100AF31C0;
  if (!qword_100AF31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF31C0);
  }

  return result;
}

uint64_t sub_1007FA768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1007FA874(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4564657461657263 && a2 == 0xEE0073656972746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C616E72756F6ALL && a2 == 0xED00007379614464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x576E657474697277 && a2 == 0xEC0000007364726FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D686361747461 && a2 == 0xEE0065707954746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000010090A3A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1007FAA48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74654D706F547369 && a2 == 0xEB00000000636972)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

char *sub_1007FAB58(void *a1)
{
  v61 = sub_1000F24EC(&qword_100AF31C8);
  v67 = *(v61 - 8);
  __chkstk_darwin(v61);
  v71 = &v58 - v2;
  v65 = sub_1000F24EC(&qword_100AF31D0);
  v68 = *(v65 - 8);
  __chkstk_darwin(v65);
  v70 = &v58 - v3;
  v66 = sub_1000F24EC(&qword_100AF31D8);
  v64 = *(v66 - 8);
  __chkstk_darwin(v66);
  v69 = &v58 - v4;
  v5 = sub_1000F24EC(&qword_100AF31E0);
  v6 = *(v5 - 8);
  v62 = v5;
  v63 = v6;
  __chkstk_darwin(v5);
  v8 = &v58 - v7;
  v9 = sub_1000F24EC(&qword_100AF31E8);
  v60 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v58 - v10;
  v12 = sub_1000F24EC(&qword_100AF31F0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v58 - v14;
  v16 = a1[3];
  v72 = a1;
  sub_10000CA14(a1, v16);
  sub_1007FB6FC();
  v17 = v73;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v73 = v17;
  if (v17)
  {
    goto LABEL_34;
  }

  v58 = v9;
  v59 = v13;
  v18 = v69;
  v19 = v70;
  v20 = v71;
  v21 = KeyedDecodingContainer.allKeys.getter();
  v22 = *(v21 + 16);
  if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 5) : (v24 = 1), v24))
  {
    v25 = type metadata accessor for DecodingError();
    v26 = v12;
    v27 = swift_allocError();
    v28 = v15;
    v30 = v29;
    sub_1000F24EC(&qword_100AD8100);
    *v30 = &type metadata for SidebarInsightsBrickViewModel.MilestoneType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v30, enum case for DecodingError.typeMismatch(_:), v25);
    v73 = v27;
    swift_willThrow();
    (*(v59 + 8))(v28, v26);
    goto LABEL_33;
  }

  if (*(v21 + 32) <= 1u)
  {
    if (*(v21 + 32))
    {
      v76 = 1;
      sub_1007FB8A0();
      v47 = v8;
      v48 = v73;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v73 = v48;
      if (!v48)
      {
        v75 = 0;
        sub_1007FB7F8();
        v49 = v62;
        v50 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v73 = v50;
        if (!v50)
        {
          v8 = v76;
          v75 = 1;
          v55 = v47;
          KeyedDecodingContainer.decode(_:forKey:)();
          v56 = v63;
          v73 = 0;
          v75 = 2;
          LODWORD(v71) = KeyedDecodingContainer.decode(_:forKey:)();
          v73 = 0;
          (*(v56 + 8))(v55, v49);
          (*(v59 + 8))(v15, v12);
          swift_unknownObjectRelease();
          goto LABEL_34;
        }

        (*(v63 + 8))(v8, v49);
      }
    }

    else
    {
      v76 = 0;
      sub_1007FB8F4();
      v35 = v73;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v73 = v35;
      if (!v35)
      {
        v36 = v15;
        v75 = 0;
        sub_1007FB7F8();
        v37 = v58;
        v38 = v73;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v39 = v59;
        v73 = v38;
        if (!v38)
        {
          v8 = v76;
          v75 = 1;
          KeyedDecodingContainer.decode(_:forKey:)();
          (*(v60 + 8))(v11, v37);
          (*(v39 + 8))(v36, v12);
          swift_unknownObjectRelease();
          v73 = 0;
          goto LABEL_34;
        }

        (*(v60 + 8))(v11, v37);
        (*(v39 + 8))(v36, v12);
        goto LABEL_33;
      }
    }

    goto LABEL_32;
  }

  if (v23 == 2)
  {
    v76 = 2;
    sub_1007FB84C();
    v40 = v73;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v41 = v59;
    v73 = v40;
    if (!v40)
    {
      v75 = 0;
      sub_1007FB7F8();
      v42 = v66;
      v43 = v73;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v73 = v43;
      if (!v43)
      {
        v8 = v76;
        v75 = 1;
        KeyedDecodingContainer.decode(_:forKey:)();
        v73 = 0;
        (*(v64 + 8))(v18, v42);
        (*(v41 + 8))(v15, v12);
        swift_unknownObjectRelease();
        goto LABEL_34;
      }

      (*(v64 + 8))(v18, v42);
    }

    (*(v41 + 8))(v15, v12);
LABEL_33:
    swift_unknownObjectRelease();
    goto LABEL_34;
  }

  if (v23 == 3)
  {
    v71 = v21;
    v76 = 3;
    sub_1007FB7A4();
    v31 = v19;
    v32 = v73;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v73 = v32;
    if (!v32)
    {
      v75 = 0;
      sub_100695B14();
      v33 = v65;
      v34 = v73;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v73 = v34;
      if (v34)
      {
        (*(v68 + 8))(v31, v33);
      }

      else
      {
        v51 = v31;
        v52 = v76;
        v74 = 1;
        sub_1007FB7F8();
        v53 = v73;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v73 = v53;
        if (!v53)
        {
          v69 = v12;
          v57 = v75;
          v74 = 2;
          KeyedDecodingContainer.decode(_:forKey:)();
          v73 = 0;
          (*(v68 + 8))(v51, v33);
          (*(v59 + 8))(v15, v69);
          swift_unknownObjectRelease();
          v8 = (v52 | (v57 << 8));
          goto LABEL_34;
        }

        (*(v68 + 8))(v51, v33);
      }
    }

    goto LABEL_32;
  }

  v76 = 4;
  sub_1007FB750();
  v44 = v73;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v73 = v44;
  if (v44)
  {
LABEL_32:
    (*(v59 + 8))(v15, v12);
    goto LABEL_33;
  }

  v45 = v61;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v73 = 0;
  v8 = v46;
  (*(v67 + 8))(v20, v45);
  (*(v59 + 8))(v15, v12);
  swift_unknownObjectRelease();
LABEL_34:
  sub_10000BA7C(v72);
  return v8;
}

unint64_t sub_1007FB6FC()
{
  result = qword_100AF31F8;
  if (!qword_100AF31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF31F8);
  }

  return result;
}

unint64_t sub_1007FB750()
{
  result = qword_100AF3200;
  if (!qword_100AF3200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3200);
  }

  return result;
}

unint64_t sub_1007FB7A4()
{
  result = qword_100AF3208;
  if (!qword_100AF3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3208);
  }

  return result;
}

unint64_t sub_1007FB7F8()
{
  result = qword_100AF3210;
  if (!qword_100AF3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3210);
  }

  return result;
}

unint64_t sub_1007FB84C()
{
  result = qword_100AF3218;
  if (!qword_100AF3218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3218);
  }

  return result;
}

unint64_t sub_1007FB8A0()
{
  result = qword_100AF3220;
  if (!qword_100AF3220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3220);
  }

  return result;
}

unint64_t sub_1007FB8F4()
{
  result = qword_100AF3228;
  if (!qword_100AF3228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3228);
  }

  return result;
}

unint64_t sub_1007FB948()
{
  result = qword_100AF3260;
  if (!qword_100AF3260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3260);
  }

  return result;
}

uint64_t sub_1007FB99C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007FBA04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1007FBA64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1007FBAE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D69546C6C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1918985593 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x68746E6F6DLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1007FBBFC(void *a1)
{
  v29 = sub_1000F24EC(&qword_100AF3448);
  v32 = *(v29 - 8);
  __chkstk_darwin(v29);
  v33 = &v26 - v2;
  v3 = sub_1000F24EC(&qword_100AF3450);
  v30 = *(v3 - 8);
  v31 = v3;
  __chkstk_darwin(v3);
  v5 = &v26 - v4;
  v6 = sub_1000F24EC(&qword_100AF3458);
  v28 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v26 - v7;
  v9 = sub_1000F24EC(&qword_100AF3460);
  v34 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v26 - v10;
  sub_10000CA14(a1, a1[3]);
  sub_1007FD538();
  v12 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_14;
  }

  v27 = v6;
  v13 = v33;
  v35 = a1;
  v14 = v11;
  v15 = KeyedDecodingContainer.allKeys.getter();
  v16 = *(v15 + 16);
  if (!v16 || ((v17 = *(v15 + 32), v16 == 1) ? (v18 = v17 == 3) : (v18 = 1), v18))
  {
    v19 = type metadata accessor for DecodingError();
    swift_allocError();
    v21 = v20;
    sub_1000F24EC(&qword_100AD8100);
    *v21 = &type metadata for SidebarInsightsBrickViewModel.MilestoneGranularity;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v19 - 8) + 104))(v21, enum case for DecodingError.typeMismatch(_:), v19);
    swift_willThrow();
    (*(v34 + 8))(v14, v9);
    swift_unknownObjectRelease();
    a1 = v35;
LABEL_14:
    sub_10000BA7C(a1);
    return 0;
  }

  v36 = *(v15 + 32);
  if (!v17)
  {
    v37 = 0;
    sub_1007FD634();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v8, v27);
    v23 = v34;
    goto LABEL_15;
  }

  if (v17 == 1)
  {
    v38 = 1;
    sub_1007FD5E0();
    v22 = v11;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v23 = v34;
    (*(v30 + 8))(v5, v31);
LABEL_15:
    (*(v23 + 8))(v22, v9);
    goto LABEL_16;
  }

  v39 = 2;
  sub_1007FD58C();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v24 = v34;
  (*(v32 + 8))(v13, v29);
  (*(v24 + 8))(v14, v9);
LABEL_16:
  swift_unknownObjectRelease();
  sub_10000BA7C(v35);
  return v36;
}

uint64_t sub_1007FC21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF3278);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FC2A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000F24EC(&qword_100AF3278);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007FC368(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_1007F28EC(a1, v4, v5, v6);
}

unint64_t sub_1007FC520()
{
  result = qword_100AF32A0;
  if (!qword_100AF32A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32A0);
  }

  return result;
}

unint64_t sub_1007FC578()
{
  result = qword_100AF32A8;
  if (!qword_100AF32A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32A8);
  }

  return result;
}

unint64_t sub_1007FC5D0()
{
  result = qword_100AF32B0;
  if (!qword_100AF32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32B0);
  }

  return result;
}

unint64_t sub_1007FC628()
{
  result = qword_100AF32B8;
  if (!qword_100AF32B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32B8);
  }

  return result;
}

unint64_t sub_1007FC680()
{
  result = qword_100AF32C0;
  if (!qword_100AF32C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32C0);
  }

  return result;
}

unint64_t sub_1007FC6D8()
{
  result = qword_100AF32C8;
  if (!qword_100AF32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32C8);
  }

  return result;
}

unint64_t sub_1007FC730()
{
  result = qword_100AF32D0;
  if (!qword_100AF32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32D0);
  }

  return result;
}

unint64_t sub_1007FC788()
{
  result = qword_100AF32D8;
  if (!qword_100AF32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32D8);
  }

  return result;
}

unint64_t sub_1007FC7E0()
{
  result = qword_100AF32E0;
  if (!qword_100AF32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32E0);
  }

  return result;
}

unint64_t sub_1007FC838()
{
  result = qword_100AF32E8;
  if (!qword_100AF32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32E8);
  }

  return result;
}

unint64_t sub_1007FC890()
{
  result = qword_100AF32F0;
  if (!qword_100AF32F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32F0);
  }

  return result;
}

unint64_t sub_1007FC8E8()
{
  result = qword_100AF32F8;
  if (!qword_100AF32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF32F8);
  }

  return result;
}

unint64_t sub_1007FC940()
{
  result = qword_100AF3300;
  if (!qword_100AF3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3300);
  }

  return result;
}

unint64_t sub_1007FC998()
{
  result = qword_100AF3308;
  if (!qword_100AF3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3308);
  }

  return result;
}

unint64_t sub_1007FC9F0()
{
  result = qword_100AF3310;
  if (!qword_100AF3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3310);
  }

  return result;
}

unint64_t sub_1007FCA48()
{
  result = qword_100AF3318;
  if (!qword_100AF3318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3318);
  }

  return result;
}

unint64_t sub_1007FCAA0()
{
  result = qword_100AF3320;
  if (!qword_100AF3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3320);
  }

  return result;
}

unint64_t sub_1007FCAF8()
{
  result = qword_100AF3328;
  if (!qword_100AF3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3328);
  }

  return result;
}

unint64_t sub_1007FCB50()
{
  result = qword_100AF3330;
  if (!qword_100AF3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3330);
  }

  return result;
}

unint64_t sub_1007FCBA8()
{
  result = qword_100AF3338;
  if (!qword_100AF3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3338);
  }

  return result;
}

unint64_t sub_1007FCC00()
{
  result = qword_100AF3340;
  if (!qword_100AF3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3340);
  }

  return result;
}

unint64_t sub_1007FCC58()
{
  result = qword_100AF3348;
  if (!qword_100AF3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3348);
  }

  return result;
}

unint64_t sub_1007FCCB0()
{
  result = qword_100AF3350;
  if (!qword_100AF3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3350);
  }

  return result;
}

unint64_t sub_1007FCD08()
{
  result = qword_100AF3358;
  if (!qword_100AF3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3358);
  }

  return result;
}

unint64_t sub_1007FCD60()
{
  result = qword_100AF3360;
  if (!qword_100AF3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3360);
  }

  return result;
}

unint64_t sub_1007FCDB8()
{
  result = qword_100AF3368;
  if (!qword_100AF3368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3368);
  }

  return result;
}

unint64_t sub_1007FCE10()
{
  result = qword_100AF3370;
  if (!qword_100AF3370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3370);
  }

  return result;
}

unint64_t sub_1007FCE68()
{
  result = qword_100AF3378;
  if (!qword_100AF3378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3378);
  }

  return result;
}

unint64_t sub_1007FCEC0()
{
  result = qword_100AF3380;
  if (!qword_100AF3380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3380);
  }

  return result;
}

unint64_t sub_1007FCF18()
{
  result = qword_100AF3388;
  if (!qword_100AF3388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3388);
  }

  return result;
}

unint64_t sub_1007FCF70()
{
  result = qword_100AF3390;
  if (!qword_100AF3390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3390);
  }

  return result;
}

unint64_t sub_1007FCFC8()
{
  result = qword_100AF3398;
  if (!qword_100AF3398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3398);
  }

  return result;
}

unint64_t sub_1007FD020()
{
  result = qword_100AF33A0;
  if (!qword_100AF33A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33A0);
  }

  return result;
}

unint64_t sub_1007FD078()
{
  result = qword_100AF33A8;
  if (!qword_100AF33A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33A8);
  }

  return result;
}

unint64_t sub_1007FD0D0()
{
  result = qword_100AF33B0;
  if (!qword_100AF33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33B0);
  }

  return result;
}

unint64_t sub_1007FD128()
{
  result = qword_100AF33B8;
  if (!qword_100AF33B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33B8);
  }

  return result;
}

unint64_t sub_1007FD180()
{
  result = qword_100AF33C0;
  if (!qword_100AF33C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33C0);
  }

  return result;
}

unint64_t sub_1007FD1D8()
{
  result = qword_100AF33C8;
  if (!qword_100AF33C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33C8);
  }

  return result;
}

unint64_t sub_1007FD230()
{
  result = qword_100AF33D0;
  if (!qword_100AF33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33D0);
  }

  return result;
}

unint64_t sub_1007FD288()
{
  result = qword_100AF33D8;
  if (!qword_100AF33D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33D8);
  }

  return result;
}

unint64_t sub_1007FD2E0()
{
  result = qword_100AF33E0;
  if (!qword_100AF33E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33E0);
  }

  return result;
}

unint64_t sub_1007FD338()
{
  result = qword_100AF33E8;
  if (!qword_100AF33E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33E8);
  }

  return result;
}

unint64_t sub_1007FD390()
{
  result = qword_100AF33F0;
  if (!qword_100AF33F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33F0);
  }

  return result;
}

unint64_t sub_1007FD3E8()
{
  result = qword_100AF33F8;
  if (!qword_100AF33F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF33F8);
  }

  return result;
}

unint64_t sub_1007FD43C()
{
  result = qword_100AF3418;
  if (!qword_100AF3418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3418);
  }

  return result;
}

unint64_t sub_1007FD490()
{
  result = qword_100AF3420;
  if (!qword_100AF3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3420);
  }

  return result;
}

unint64_t sub_1007FD4E4()
{
  result = qword_100AF3428;
  if (!qword_100AF3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3428);
  }

  return result;
}

unint64_t sub_1007FD538()
{
  result = qword_100AF3468;
  if (!qword_100AF3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3468);
  }

  return result;
}

unint64_t sub_1007FD58C()
{
  result = qword_100AF3470;
  if (!qword_100AF3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3470);
  }

  return result;
}

unint64_t sub_1007FD5E0()
{
  result = qword_100AF3478;
  if (!qword_100AF3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3478);
  }

  return result;
}

unint64_t sub_1007FD634()
{
  result = qword_100AF3480;
  if (!qword_100AF3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3480);
  }

  return result;
}

unint64_t sub_1007FD6FC()
{
  result = qword_100AF34A8;
  if (!qword_100AF34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34A8);
  }

  return result;
}

unint64_t sub_1007FD754()
{
  result = qword_100AF34B0;
  if (!qword_100AF34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34B0);
  }

  return result;
}

unint64_t sub_1007FD7AC()
{
  result = qword_100AF34B8;
  if (!qword_100AF34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34B8);
  }

  return result;
}

unint64_t sub_1007FD804()
{
  result = qword_100AF34C0;
  if (!qword_100AF34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34C0);
  }

  return result;
}

unint64_t sub_1007FD85C()
{
  result = qword_100AF34C8;
  if (!qword_100AF34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34C8);
  }

  return result;
}

unint64_t sub_1007FD8B4()
{
  result = qword_100AF34D0;
  if (!qword_100AF34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34D0);
  }

  return result;
}

unint64_t sub_1007FD90C()
{
  result = qword_100AF34D8;
  if (!qword_100AF34D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34D8);
  }

  return result;
}

unint64_t sub_1007FD964()
{
  result = qword_100AF34E0;
  if (!qword_100AF34E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34E0);
  }

  return result;
}

unint64_t sub_1007FD9BC()
{
  result = qword_100AF34E8;
  if (!qword_100AF34E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34E8);
  }

  return result;
}

unint64_t sub_1007FDA14()
{
  result = qword_100AF34F0;
  if (!qword_100AF34F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34F0);
  }

  return result;
}

unint64_t sub_1007FDA6C()
{
  result = qword_100AF34F8;
  if (!qword_100AF34F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF34F8);
  }

  return result;
}

unint64_t sub_1007FDAC4()
{
  result = qword_100AF3500;
  if (!qword_100AF3500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3500);
  }

  return result;
}

unint64_t sub_1007FDB1C()
{
  result = qword_100AF3508;
  if (!qword_100AF3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3508);
  }

  return result;
}

unint64_t sub_1007FDB74()
{
  result = qword_100AF3510;
  if (!qword_100AF3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3510);
  }

  return result;
}

unint64_t sub_1007FDBCC()
{
  result = qword_100AF3518;
  if (!qword_100AF3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3518);
  }

  return result;
}

unint64_t sub_1007FDC24()
{
  result = qword_100AF3520;
  if (!qword_100AF3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3520);
  }

  return result;
}

uint64_t sub_1007FDD60()
{
}

id sub_1007FDDB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SymbolAndPlatterFallbackView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_1007FDF38(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a1)
  {
    goto LABEL_40;
  }

  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 80))(ObjectType, a2);
  v10 = v9;
  if (!a3)
  {

LABEL_40:
    v45 = 0;
    return v45 & 1;
  }

  v48 = swift_getObjectType();
  v49 = a4;
  v11 = (*(a4 + 80))(v48, a4);
  v12 = *((swift_isaMask & *v10) + 0x200);
  v13 = a1;
  v14 = a3;
  v15 = v12();
  if ((v15 ^ (*((swift_isaMask & *v11) + 0x200))()))
  {
    goto LABEL_39;
  }

  v16 = v10;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v17 = (*(a2 + 8))(ObjectType, a2);
  v19 = v18;
  v20 = *(v49 + 8);
  v21 = v20(v48);
  if (v19)
  {
    if (!v22)
    {

LABEL_29:

      goto LABEL_40;
    }

    if (v17 == v21 && v19 == v22)
    {
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v23 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v22)
  {

LABEL_28:
    goto LABEL_29;
  }

  v47 = v20;
  type metadata accessor for AssetType();
  sub_100006BEC(&qword_100AD5B40, &type metadata accessor for AssetType);
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  if (v54 == v52 && v55 == v53)
  {

    v24 = v49;
  }

  else
  {
    v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v24 = v49;
    if ((v25 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  v26 = v47(v48, v24);
  v28 = v27;
  v29 = [*(v51 + OBJC_IVAR____TtC7Journal13SlimAssetView_label) text];
  if (!v29)
  {
    if (!v28)
    {
      goto LABEL_33;
    }

LABEL_27:

    goto LABEL_28;
  }

  v30 = v29;
  v50 = v26;
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (!v28)
  {
    if (!v33)
    {
      goto LABEL_33;
    }

LABEL_39:

    goto LABEL_40;
  }

  if (!v33)
  {
    goto LABEL_27;
  }

  if (v50 == v31 && v28 == v33)
  {

    goto LABEL_33;
  }

  v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v34 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_33:
  v35 = v24;
  v36 = v11;
  v37 = (*(v35 + 32))(v48);
  v39 = v38;
  v40 = [*(v51 + OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel) text];
  if (!v40)
  {
    if (v39)
    {
      goto LABEL_43;
    }

    v44 = 0;
LABEL_45:

    if (!v44)
    {
      v45 = 1;
      return v45 & 1;
    }

    goto LABEL_29;
  }

  v41 = v40;
  v42 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v44 = v43;

  if (!v39)
  {
    goto LABEL_45;
  }

  if (!v44)
  {
LABEL_43:

    goto LABEL_29;
  }

  if (v37 == v42 && v39 == v44)
  {
    v45 = 1;
  }

  else
  {
    v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v45 & 1;
}

id sub_1007FE48C(double a1, double a2, double a3, double a4)
{
  v9 = &v4[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  *v9 = 0;
  v9[1] = 0;
  *&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry] = 0;
  v4[OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing] = 0;
  *&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIView) init];
  v11 = OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView;
  type metadata accessor for GradientView();
  *&v4[v11] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v12 = OBJC_IVAR____TtC7Journal13SlimAssetView_iconView;
  *&v4[v12] = [objc_allocWithZone(UIImageView) init];
  v13 = OBJC_IVAR____TtC7Journal13SlimAssetView_label;
  *&v4[v13] = [objc_allocWithZone(UILabel) init];
  v14 = OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel;
  *&v4[v14] = [objc_allocWithZone(UILabel) init];
  *&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView] = 0;
  *&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint] = 0;
  v15 = OBJC_IVAR____TtC7Journal13SlimAssetView_mapFallbackIcon;
  v16 = String._bridgeToObjectiveC()();
  v17 = objc_opt_self();
  v18 = [v17 _systemImageNamed:v16];

  *&v4[v15] = v18;
  v19 = OBJC_IVAR____TtC7Journal13SlimAssetView_stateOfMindFallbackIcon;
  v20 = String._bridgeToObjectiveC()();
  v21 = [v17 _systemImageNamed:v20];

  *&v4[v19] = v21;
  __asm { FMOV            V0.2D, #12.0 }

  *&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_outerCornerRadius] = _Q0;
  v27 = type metadata accessor for SlimAssetView();
  v33.receiver = v4;
  v33.super_class = v27;
  v28 = objc_msgSendSuper2(&v33, "initWithFrame:", a1, a2, a3, a4);
  [v28 setAccessibilityElementsHidden:1];
  sub_10080282C();
  [v28 setClipsToBounds:1];
  v29 = [objc_allocWithZone(UIContextMenuInteraction) initWithDelegate:v28];
  [v28 addInteraction:v29];

  sub_1000F24EC(&unk_100AEBEC0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_100940080;
  *(v30 + 32) = type metadata accessor for UITraitHorizontalSizeClass();
  *(v30 + 40) = &protocol witness table for UITraitHorizontalSizeClass;
  v32[3] = v27;
  v32[0] = v28;
  UIView.registerForTraitChanges(_:target:action:)();
  swift_unknownObjectRelease();

  sub_10000BA7C(v32);
  return v28;
}

uint64_t sub_1007FE844()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v53 = &v47 - v2;
  v3 = type metadata accessor for Date();
  v54 = *(v3 - 8);
  v55 = v3;
  v4 = __chkstk_darwin(v3);
  v50 = v5;
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v52 = &v47 - v6;
  v7 = type metadata accessor for AssetType();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v48 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000F24EC(&unk_100ADC680);
  __chkstk_darwin(v10);
  v12 = &v47 - v11;
  v13 = sub_1000F24EC(&qword_100AE4290);
  v14 = __chkstk_darwin(v13 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v47 - v16;
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v56 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_iconView];
  v49 = v0;
  v20 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v22 = v21;
  if (v20)
  {
    (*(v8 + 16))(&v47 - v18, v20 + OBJC_IVAR____TtC7Journal5Asset_type, v7);
    v23 = *(v8 + 56);
    v23(v19, 0, 1, v7);
  }

  else
  {
    v23 = *(v8 + 56);
    v23(&v47 - v18, 1, 1, v7);
  }

  (*(v8 + 104))(v17, enum case for AssetType.multiPinMap(_:), v7);
  v23(v17, 0, 1, v7);
  v24 = *(v10 + 48);
  sub_1000082B4(v19, v12, &qword_100AE4290);
  sub_1000082B4(v17, &v12[v24], &qword_100AE4290);
  v25 = *(v8 + 48);
  if (v25(v12, 1, v7) == 1)
  {
    v26 = v56;
    sub_100004F84(v17, &qword_100AE4290);
    sub_100004F84(v19, &qword_100AE4290);
    if (v25(&v12[v24], 1, v7) == 1)
    {
      sub_100004F84(v12, &qword_100AE4290);
LABEL_12:
      v28 = &OBJC_IVAR____TtC7Journal13SlimAssetView_mapFallbackIcon;
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_1000082B4(v12, v22, &qword_100AE4290);
  if (v25(&v12[v24], 1, v7) == 1)
  {
    v27 = v56;
    sub_100004F84(v17, &qword_100AE4290);
    sub_100004F84(v19, &qword_100AE4290);
    (*(v8 + 8))(v22, v7);
LABEL_9:
    sub_100004F84(v12, &unk_100ADC680);
    goto LABEL_10;
  }

  v29 = &v12[v24];
  v30 = v48;
  (*(v8 + 32))(v48, v29, v7);
  sub_100006BEC(&qword_100ADC690, &type metadata accessor for AssetType);
  v31 = v56;
  v47 = v22;
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v8 + 8);
  v33(v30, v7);
  sub_100004F84(v17, &qword_100AE4290);
  sub_100004F84(v19, &qword_100AE4290);
  v33(v47, v7);
  sub_100004F84(v12, &qword_100AE4290);
  if (v32)
  {
    goto LABEL_12;
  }

LABEL_10:
  v28 = &OBJC_IVAR____TtC7Journal13SlimAssetView_stateOfMindFallbackIcon;
LABEL_13:
  v34 = v49;
  v35 = v56;
  [v56 setImage:*&v49[*v28]];

  v36 = v52;
  Date.init()();
  v37 = type metadata accessor for TaskPriority();
  v38 = v53;
  (*(*(v37 - 8) + 56))(v53, 1, 1, v37);
  v40 = v54;
  v39 = v55;
  v41 = v51;
  (*(v54 + 16))(v51, v36, v55);
  type metadata accessor for MainActor();
  v42 = v34;
  v43 = static MainActor.shared.getter();
  v44 = (*(v40 + 80) + 40) & ~*(v40 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v43;
  *(v45 + 3) = &protocol witness table for MainActor;
  *(v45 + 4) = v42;
  (*(v40 + 32))(&v45[v44], v41, v39);
  sub_1003E9628(0, 0, v38, &unk_10096C638, v45);

  return (*(v40 + 8))(v36, v39);
}

uint64_t sub_1007FEF84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for Date();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_1007FF0C8, v8, v7);
}

uint64_t sub_1007FF0C8()
{
  v1 = v0[8];
  v2 = &v1[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v3 = *&v1[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v0[19] = v3;
  v4 = v0[16];
  if (v3)
  {
    v5 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v3;
    v7 = [v1 traitCollection];
    v0[20] = v7;
    v8 = *(v5 + 48);

    v16 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_1007FF328;

    return v16(v4, &protocol witness table for MainActor, v7, ObjectType, v5);
  }

  else
  {

    v11 = *(v0[8] + OBJC_IVAR____TtC7Journal13SlimAssetView_iconView);
    v12 = objc_opt_self();
    v13 = v11;
    v14 = [v12 quaternaryLabelColor];
    [v13 setTintColor:v14];

    v15 = v0[1];

    return v15();
  }
}

uint64_t sub_1007FF328(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 176) = a1;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);

  return _swift_task_switch(sub_1007FF4AC, v6, v5);
}

uint64_t sub_1007FF4AC()
{
  v1 = v0[22];

  if (!v1)
  {
    v13 = *(v0[8] + OBJC_IVAR____TtC7Journal13SlimAssetView_iconView);
    v14 = objc_opt_self();
    v15 = v13;
    v16 = [v14 quaternaryLabelColor];
    [v15 setTintColor:v16];

    goto LABEL_9;
  }

  v2 = v0[22];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[9];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v2;
  (*(v6 + 16))(v4, v7, v5);
  (*(v6 + 56))(v4, 0, 1, v5);
  sub_1000082B4(v4, v3, &unk_100AD4790);
  v10 = (*(v6 + 48))(v3, 1, v5);
  v11 = v0[14];
  if (v10 == 1)
  {
    v12 = v2;

    sub_100004F84(v11, &unk_100AD4790);
LABEL_7:
    v25 = v0[15];
    v26 = objc_opt_self();
    v0[6] = sub_100808AF4;
    v0[7] = v9;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006C7C;
    v0[5] = &unk_100A81290;
    v27 = _Block_copy(v0 + 2);

    [v26 animateWithDuration:0x10000 delay:v27 options:0 animations:0.1 completion:0.0];
    _Block_release(v27);

    goto LABEL_8;
  }

  v18 = v0[12];
  v17 = v0[13];
  v19 = v0[10];
  v20 = v0[11];
  (*(v20 + 32))(v17, v0[14], v19);
  v21 = v2;

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v20 + 8);
  v24(v18, v19);
  v24(v17, v19);
  if (v23 >= 0.1)
  {
    goto LABEL_7;
  }

  v25 = v0[15];
  sub_1007FF850(v8, v21);

LABEL_8:
  sub_100004F84(v25, &unk_100AD4790);

LABEL_9:

  v28 = v0[1];

  return v28();
}

void sub_1007FF850(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_iconView);

    [v5 setTintColor:0];
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    v8 = *(v6 + OBJC_IVAR____TtC7Journal13SlimAssetView_iconView);

    [v8 setImage:a2];
  }
}

uint64_t sub_1007FF930()
{
  v1 = v0;
  v255 = sub_1000F24EC(&unk_100AD91E0);
  v254 = *(v255 - 8);
  __chkstk_darwin(v255);
  v253 = &v226[-v2];
  v249 = sub_1000F24EC(&unk_100AF3620);
  v247 = *(v249 - 8);
  __chkstk_darwin(v249);
  v248 = &v226[-v3];
  v252 = type metadata accessor for AttributeContainer();
  v251 = *(v252 - 8);
  v4 = __chkstk_darwin(v252);
  v250 = &v226[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v4);
  v272 = &v226[-v6];
  v7 = sub_1000F24EC(&qword_100AD1350);
  __chkstk_darwin(v7 - 8);
  v245 = &v226[-v8];
  v9 = type metadata accessor for AttributedString.FormattingOptions();
  __chkstk_darwin(v9 - 8);
  v246 = &v226[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v11 - 8);
  v244 = &v226[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v13 - 8);
  v243 = &v226[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v270 = type metadata accessor for AssetType();
  v269 = *(v270 - 8);
  __chkstk_darwin(v270 - 8);
  v268 = &v226[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v265 = sub_1000F24EC(&unk_100ADC680);
  v16 = __chkstk_darwin(v265);
  v256 = &v226[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v262 = &v226[-v19];
  __chkstk_darwin(v18);
  v261 = &v226[-v20];
  v21 = sub_1000F24EC(&qword_100AE4290);
  v22 = __chkstk_darwin(v21 - 8);
  v240 = &v226[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __chkstk_darwin(v22);
  v260 = &v226[-v25];
  v26 = __chkstk_darwin(v24);
  v257 = &v226[-v27];
  v28 = __chkstk_darwin(v26);
  v239 = &v226[-v29];
  v30 = __chkstk_darwin(v28);
  v258 = &v226[-v31];
  v32 = __chkstk_darwin(v30);
  v259 = &v226[-v33];
  v34 = __chkstk_darwin(v32);
  v241 = &v226[-v35];
  v36 = __chkstk_darwin(v34);
  v263 = &v226[-v37];
  __chkstk_darwin(v36);
  v264 = &v226[-v38];
  v267 = type metadata accessor for CharacterSet();
  v266 = *(v267 - 1);
  __chkstk_darwin(v267);
  v40 = &v226[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v41 = type metadata accessor for AttributedString();
  v277 = *(v41 - 8);
  v278 = v41;
  v42 = __chkstk_darwin(v41);
  v271 = &v226[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __chkstk_darwin(v42);
  v242 = &v226[-v45];
  __chkstk_darwin(v44);
  v47 = &v226[-v46];
  v48 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v48 - 8);
  v50 = &v226[-v49];
  v51 = type metadata accessor for Date();
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = __chkstk_darwin(v51);
  v55 = &v226[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v54);
  v57 = &v226[-v56];
  Date.init()();
  v58 = type metadata accessor for TaskPriority();
  (*(*(v58 - 8) + 56))(v50, 1, 1, v58);
  v59 = *(v52 + 16);
  v273 = v57;
  v59(v55, v57, v51);
  type metadata accessor for MainActor();
  v60 = v1;
  v61 = static MainActor.shared.getter();
  v62 = (*(v52 + 80) + 40) & ~*(v52 + 80);
  v63 = swift_allocObject();
  *(v63 + 2) = v61;
  *(v63 + 3) = &protocol witness table for MainActor;
  *(v63 + 4) = v60;
  v274 = v52;
  v64 = *(v52 + 32);
  v275 = v51;
  v64(&v63[v62], v55, v51);
  sub_1003E9628(0, 0, v50, &unk_10096C530, v63);

  v65 = objc_opt_self();
  v66 = swift_allocObject();
  *(v66 + 16) = v60;
  v284 = sub_100673E08;
  v285 = v66;
  aBlock = _NSConcreteStackBlock;
  v281 = 1107296256;
  v282 = sub_100006C7C;
  v283 = &unk_100A81188;
  v67 = _Block_copy(&aBlock);
  v68 = v60;

  [v65 animateWithDuration:1 delay:v67 options:0 animations:0.11 completion:0.0];
  _Block_release(v67);
  [*&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView] setClipsToBounds:1];
  [*&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView] setClipsToBounds:1];
  sub_1007FE844();
  v69 = [v68 traitCollection];
  v70 = [v69 horizontalSizeClass];

  v71 = objc_opt_self();
  if (v70 == 1)
  {
    v276 = [v71 secondaryLabelColor];
  }

  else
  {
    v72 = [v71 labelColor];
    v276 = [v72 colorWithAlphaComponent:0.6];
  }

  v279 = &_swiftEmptyArrayStorage;
  v73 = &v68[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v74 = *&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v75 = v47;
  if (!v74)
  {
    goto LABEL_17;
  }

  v238 = v70;
  v76 = *(v73 + 1);
  ObjectType = swift_getObjectType();
  v78 = *(v76 + 16);
  v79 = v74;
  v80 = v78(ObjectType, v76);
  v82 = v81;

  if (!v82)
  {
    goto LABEL_15;
  }

  v83 = *v73;
  if (*v73)
  {
    v237 = v80;
    v84 = *(v73 + 1);
    v85 = swift_getObjectType();
    v86 = *(v84 + 24);
    v87 = v83;
    v236 = v86(v85, v84);
    v89 = v88;

    if (v89)
    {
      v234 = v73;
      v235 = v75;
      aBlock = v237;
      v281 = v82;
      static CharacterSet.whitespaces.getter();
      sub_1000777B4();
      StringProtocol.trimmingCharacters(in:)();
      v90 = v266[1];
      v91 = v267;
      v90(v40, v267);
      v92 = String.count.getter();

      if (!v92 || (aBlock = v236, v281 = v89, static CharacterSet.whitespaces.getter(), StringProtocol.trimmingCharacters(in:)(), v90(v40, v91), v93 = String.count.getter(), , !v93))
      {
        v75 = v235;
        v73 = v234;
LABEL_13:

        goto LABEL_14;
      }

      v267 = v89;
      v73 = v234;
      v94 = *v234;
      v266 = v82;
      v75 = v235;
      if (v94)
      {
        v95 = v269;
        v96 = v264;
        v97 = v270;
        (*(v269 + 16))(v264, v94 + OBJC_IVAR____TtC7Journal5Asset_type, v270);
        v98 = 0;
        v99 = v261;
      }

      else
      {
        v98 = 1;
        v97 = v270;
        v95 = v269;
        v99 = v261;
        v96 = v264;
      }

      v156 = v263;
      v157 = v95[7];
      v157(v96, v98, 1, v97);
      v158 = v95[13];
      v227 = enum case for AssetType.multiPinMap(_:);
      v230 = v95 + 13;
      v229 = v158;
      v158(v156);
      v232 = v95 + 7;
      v231 = v157;
      v157(v156, 0, 1, v97);
      v159 = *(v265 + 48);
      sub_1000082B4(v96, v99, &qword_100AE4290);
      v228 = v159;
      sub_1000082B4(v156, &v99[v159], &qword_100AE4290);
      v160 = v95[6];
      v161 = v160(v99, 1, v97);
      v233 = v160;
      if (v161 == 1)
      {
        sub_100004F84(v156, &qword_100AE4290);
        sub_100004F84(v264, &qword_100AE4290);
        if (v160(&v99[v228], 1, v97) == 1)
        {
          v162 = v257;
          v163 = v260;
LABEL_66:
          sub_100004F84(v99, &qword_100AE4290);
          goto LABEL_67;
        }
      }

      else
      {
        v164 = v241;
        sub_1000082B4(v99, v241, &qword_100AE4290);
        v165 = v228;
        if (v160(&v99[v228], 1, v97) != 1)
        {
          v169 = v99;
          v170 = v269;
          v171 = &v169[v165];
          v172 = v268;
          (*(v269 + 32))(v268, v171, v97);
          sub_100006BEC(&qword_100ADC690, &type metadata accessor for AssetType);
          LODWORD(v228) = dispatch thunk of static Equatable.== infix(_:_:)();
          v173 = *(v170 + 8);
          v173(v172, v97);
          sub_100004F84(v263, &qword_100AE4290);
          sub_100004F84(v264, &qword_100AE4290);
          v173(v164, v97);
          v163 = v260;
          sub_100004F84(v261, &qword_100AE4290);
          v162 = v257;
          if (v228)
          {
            goto LABEL_67;
          }

          goto LABEL_58;
        }

        sub_100004F84(v263, &qword_100AE4290);
        sub_100004F84(v264, &qword_100AE4290);
        (*(v269 + 8))(v164, v97);
      }

      sub_100004F84(v99, &unk_100ADC680);
LABEL_58:
      if (*v73)
      {
        v166 = v259;
        v167 = v270;
        (*(v269 + 16))(v259, *v73 + OBJC_IVAR____TtC7Journal5Asset_type, v270);
        v168 = 0;
      }

      else
      {
        v168 = 1;
        v167 = v270;
        v166 = v259;
      }

      v174 = v258;
      v175 = v231;
      v231(v166, v168, 1, v167);
      v229(v174, enum case for AssetType.stateOfMind(_:), v167);
      v175(v174, 0, 1, v167);
      v176 = *(v265 + 48);
      v177 = v262;
      sub_1000082B4(v166, v262, &qword_100AE4290);
      v178 = v270;
      sub_1000082B4(v174, &v177[v176], &qword_100AE4290);
      v179 = v233;
      if (v233(v177, 1, v178) == 1)
      {
        sub_100004F84(v174, &qword_100AE4290);
        v180 = v262;
        sub_100004F84(v166, &qword_100AE4290);
        if (v179(&v180[v176], 1, v270) == 1)
        {
          v99 = v180;
          v163 = v260;
          v162 = v257;
          goto LABEL_66;
        }

        goto LABEL_71;
      }

      v183 = v239;
      sub_1000082B4(v177, v239, &qword_100AE4290);
      if (v179(&v177[v176], 1, v178) == 1)
      {
        sub_100004F84(v258, &qword_100AE4290);
        v180 = v262;
        sub_100004F84(v259, &qword_100AE4290);
        (*(v269 + 8))(v183, v270);
LABEL_71:
        sub_100004F84(v180, &unk_100ADC680);
        goto LABEL_13;
      }

      v195 = v269;
      v196 = &v177[v176];
      v197 = v268;
      (*(v269 + 32))(v268, v196, v178);
      sub_100006BEC(&qword_100ADC690, &type metadata accessor for AssetType);
      LODWORD(v264) = dispatch thunk of static Equatable.== infix(_:_:)();
      v198 = *(v195 + 8);
      v198(v197, v178);
      sub_100004F84(v258, &qword_100AE4290);
      sub_100004F84(v259, &qword_100AE4290);
      v198(v183, v178);
      v163 = v260;
      v162 = v257;
      sub_100004F84(v262, &qword_100AE4290);
      if ((v264 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_67:
      if (*v73)
      {
        v181 = v270;
        (*(v269 + 16))(v162, *v73 + OBJC_IVAR____TtC7Journal5Asset_type, v270);
        v182 = 0;
      }

      else
      {
        v182 = 1;
        v181 = v270;
      }

      v184 = v231;
      v231(v162, v182, 1, v181);
      v229(v163, v227, v181);
      v184(v163, 0, 1, v181);
      v185 = *(v265 + 48);
      v186 = v256;
      sub_1000082B4(v162, v256, &qword_100AE4290);
      v187 = v270;
      sub_1000082B4(v163, &v186[v185], &qword_100AE4290);
      v188 = v233;
      if (v233(v186, 1, v187) == 1)
      {
        sub_100004F84(v163, &qword_100AE4290);
        sub_100004F84(v162, &qword_100AE4290);
        v189 = v188(&v186[v185], 1, v187);
        v190 = v272;
        v191 = v250;
        v192 = v266;
        if (v189 == 1)
        {
          sub_100004F84(v186, &qword_100AE4290);
LABEL_82:
          String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
          v203._countAndFlagsBits = 0;
          v203._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v203);
          v204._countAndFlagsBits = v237;
          v204._object = v192;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v204);
          v205._countAndFlagsBits = 548913696;
          v205._object = 0xA400000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v205);
          v206._countAndFlagsBits = v236;
          v206._object = v267;
          String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v206);
          v207._countAndFlagsBits = 0;
          v207._object = 0xE000000000000000;
          String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v207);
          String.LocalizationValue.init(stringInterpolation:)();
          static AttributedString.FormattingOptions.applyReplacementIndexAttribute.getter();
          v208 = type metadata accessor for Locale();
          (*(*(v208 - 8) + 56))(v245, 1, 1, v208);
          v209 = v242;
          AttributedString.init(localized:defaultValue:options:table:bundle:locale:comment:)();
          (*(v277 + 32))(v75, v209, v278);
          v210 = v276;
          aBlock = v276;
          sub_10054457C();
          v211 = v210;
          AttributedString.subscript.setter();
          v212 = objc_opt_self();
          v213 = (v247 + 8);
          if (v238 == 1)
          {
            v214 = [v212 preferredFontForTextStyle:UIFontTextStyleFootnote];
          }

          else
          {
            v214 = [v212 preferredFontForTextStyle:UIFontTextStyleBody];
          }

          aBlock = v214;
          sub_10005C484();
          AttributedString.subscript.setter();
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);
          swift_getKeyPath();
          v216 = v248;
          static AttributeContainer.subscript.getter();

          aBlock = 1;
          v217 = v249;
          AttributeContainer.Builder.callAsFunction(_:)();
          (*v213)(v216, v217);
          v218 = swift_getKeyPath();
          __chkstk_darwin(v218);
          swift_getKeyPath();
          sub_100221DFC();
          v219 = v253;
          static AttributeContainer.subscript.getter();

          aBlock = 2;
          v220 = v255;
          AttributeContainer.Builder.callAsFunction(_:)();
          (*(v254 + 8))(v219, v220);
          v221 = v266;
          AttributedString.replaceAttributes(_:with:)();
          v222 = *(v251 + 8);
          v223 = v252;
          v222(v191, v252);
          v222(v190, v223);
          sub_1000F24EC(&qword_100AD38F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_100940050;
          *(inited + 32) = v237;
          *(inited + 40) = v221;
          v225 = v267;
          *(inited + 48) = v236;
          *(inited + 56) = v225;
          sub_1006AD6B8(inited);
          goto LABEL_24;
        }
      }

      else
      {
        v193 = v162;
        v194 = v240;
        sub_1000082B4(v186, v240, &qword_100AE4290);
        if (v188(&v186[v185], 1, v187) != 1)
        {
          v199 = v269;
          v200 = &v186[v185];
          v201 = v268;
          (*(v269 + 32))(v268, v200, v187);
          sub_100006BEC(&qword_100ADC690, &type metadata accessor for AssetType);
          LODWORD(v265) = dispatch thunk of static Equatable.== infix(_:_:)();
          v202 = *(v199 + 8);
          v202(v201, v187);
          sub_100004F84(v260, &qword_100AE4290);
          sub_100004F84(v193, &qword_100AE4290);
          v202(v240, v187);
          sub_100004F84(v256, &qword_100AE4290);
          v190 = v272;
          v191 = v250;
          v192 = v266;
          goto LABEL_82;
        }

        sub_100004F84(v260, &qword_100AE4290);
        sub_100004F84(v193, &qword_100AE4290);
        (*(v269 + 8))(v194, v187);
        v190 = v272;
        v191 = v250;
        v192 = v266;
      }

      sub_100004F84(v186, &unk_100ADC680);
      goto LABEL_82;
    }
  }

LABEL_14:

LABEL_15:
  v100 = *v73;
  if (!*v73 || (v101 = *(v73 + 1), v102 = swift_getObjectType(), v103 = *(v101 + 8), v104 = v100, v103(v102, v101), v106 = v105, v104, !v106))
  {
LABEL_17:
  }

  AttributeContainer.init()();
  AttributedString.init(_:attributes:)();
  aBlock = [objc_opt_self() preferredFontForTextStyle:UIFontTextStyleFootnote];
  sub_10005C484();
  AttributedString.subscript.setter();
  aBlock = 2;
  LOBYTE(v281) = 0;
  sub_100221DFC();
  AttributedString.subscript.setter();
  v107 = v276;
  aBlock = v276;
  sub_10054457C();
  v108 = v107;
  AttributedString.subscript.setter();
  v109 = *v73;
  if (*v73)
  {
    v110 = *(v73 + 1);
    v111 = swift_getObjectType();
    v112 = *(v110 + 8);
    v113 = v109;
    v109 = v112(v111, v110);
    v115 = v114;
  }

  else
  {
    v115 = 0;
  }

  v116 = sub_10009B77C(0, 1, 1, &_swiftEmptyArrayStorage);
  v118 = v116[2];
  v117 = v116[3];
  if (v118 >= v117 >> 1)
  {
    v116 = sub_10009B77C((v117 > 1), v118 + 1, 1, v116);
  }

  v116[2] = v118 + 1;
  v119 = &v116[2 * v118];
  v119[4] = v109;
  v119[5] = v115;
  v279 = v116;
LABEL_24:
  v120 = *&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_label];
  [v120 setAdjustsFontForContentSizeCategory:0];
  sub_1000065A8(0, &qword_100AE4890);
  (*(v277 + 16))(v271, v75, v278);
  v121 = NSAttributedString.init(_:)();
  [v120 setAttributedText:v121];

  [v120 setAdjustsFontForContentSizeCategory:1];
  v122 = *v73;
  if (!*v73 || (v123 = *(v73 + 1), v124 = swift_getObjectType(), v125 = *(v123 + 32), v126 = v122, v127 = v125(v124, v123), v129 = v128, v126, !v129))
  {
LABEL_38:
    [*&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel] setText:0];
    if (!*v73)
    {
      goto LABEL_45;
    }

    goto LABEL_39;
  }

  v130 = HIBYTE(v129) & 0xF;
  if ((v129 & 0x2000000000000000) == 0)
  {
    v130 = v127 & 0xFFFFFFFFFFFFLL;
  }

  if (!v130)
  {

    goto LABEL_38;
  }

  v131 = *&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel];
  v132 = String._bridgeToObjectiveC()();
  [v131 setText:v132];

  if (qword_100AD03E0 != -1)
  {
    swift_once();
  }

  [v131 setFont:qword_100B303D8];
  v133 = [objc_opt_self() labelColor];
  v134 = [v133 colorWithAlphaComponent:0.4];

  [v131 setTextColor:v134];
  v135 = v279;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v135 = sub_10009B77C(0, v135[2] + 1, 1, v135);
  }

  v137 = v135[2];
  v136 = v135[3];
  if (v137 >= v136 >> 1)
  {
    v135 = sub_10009B77C((v136 > 1), v137 + 1, 1, v135);
  }

  v135[2] = v137 + 1;
  v138 = &v135[2 * v137];
  v138[4] = v127;
  v138[5] = v129;
  v279 = v135;
  if (!*v73)
  {
    goto LABEL_45;
  }

LABEL_39:
  v139 = *(v73 + 1);
  v140 = swift_getObjectType();
  v141 = (*(v139 + 80))(v140, v139);
  v142 = v269;
  v143 = v268;
  v144 = v270;
  (*(v269 + 16))(v268, v141 + OBJC_IVAR____TtC7Journal5Asset_type, v270);

  sub_1000751F4();
  v146 = v145;
  (*(v142 + 8))(v143, v144);
  if (v146)
  {
    sub_10009BB20(8236, 0xE200000000000000, v279);
    v148 = v147;
    v150 = v149;

    if (v150)
    {
      v151 = HIBYTE(v150) & 0xF;
      if ((v150 & 0x2000000000000000) == 0)
      {
        v151 = v148 & 0xFFFFFFFFFFFFLL;
      }

      if (v151)
      {
        v152 = String._bridgeToObjectiveC()();

        [v68 setAccessibilityLabel:v152];

        v153 = String._bridgeToObjectiveC()();

        [v68 setAccessibilityValue:v153];

        v154 = 0;
        goto LABEL_46;
      }
    }
  }

LABEL_45:

  v154 = 1;
LABEL_46:
  [v68 setAccessibilityElementsHidden:v154];
  if (*&v68[OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView])
  {
    [v68 bringSubviewToFront:?];
  }

  (*(v277 + 8))(v75, v278);
  return (*(v274 + 8))(v273, v275);
}

uint64_t sub_100801CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = type metadata accessor for Date();
  v5[10] = v6;
  v5[11] = *(v6 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = swift_task_alloc();
  sub_1000F24EC(&unk_100AD4790);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  type metadata accessor for MainActor();
  v5[16] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v8;
  v5[18] = v7;

  return _swift_task_switch(sub_100801E38, v8, v7);
}

uint64_t sub_100801E38()
{
  v1 = v0[8];
  v2 = &v1[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v3 = *&v1[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v0[19] = v3;
  v4 = v0[16];
  if (v3)
  {
    v5 = *(v2 + 1);
    ObjectType = swift_getObjectType();
    v3;
    v7 = [v1 traitCollection];
    v0[20] = v7;
    v8 = *(v5 + 56);

    v30 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[21] = v9;
    *v9 = v0;
    v9[1] = sub_1008022BC;

    return v30(v4, &protocol witness table for MainActor, v7, ObjectType, v5);
  }

  v11 = v0[14];
  v12 = v0[15];
  v13 = v0[10];
  v14 = v0[11];
  v15 = v0[9];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = 0;
  (*(v14 + 16))(v12, v15, v13);
  (*(v14 + 56))(v12, 0, 1, v13);
  sub_1000082B4(v12, v11, &unk_100AD4790);
  v18 = (*(v14 + 48))(v11, 1, v13);
  v19 = v0[14];
  if (v18 == 1)
  {

    sub_100004F84(v19, &unk_100AD4790);
LABEL_9:
    v27 = objc_opt_self();
    v0[6] = sub_100808928;
    v0[7] = v17;
    v0[2] = _NSConcreteStackBlock;
    v0[3] = 1107296256;
    v0[4] = sub_100006C7C;
    v0[5] = &unk_100A81218;
    v28 = _Block_copy(v0 + 2);

    [v27 animateWithDuration:0x10000 delay:v28 options:0 animations:0.1 completion:0.0];
    _Block_release(v28);
    goto LABEL_10;
  }

  v21 = v0[12];
  v20 = v0[13];
  v22 = v0[10];
  v23 = v0[11];
  (*(v23 + 32))(v20, v0[14], v22);

  static Date.now.getter();
  Date.timeIntervalSince(_:)();
  v25 = v24;
  v26 = *(v23 + 8);
  v26(v21, v22);
  v26(v20, v22);
  if (v25 >= 0.1)
  {
    goto LABEL_9;
  }

  sub_10080276C(v16, 0);
LABEL_10:

  sub_100004F84(v0[15], &unk_100AD4790);

  v29 = v0[1];

  return v29();
}

uint64_t sub_1008022BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 152);
  *(*v1 + 176) = a1;

  v5 = *(v2 + 144);
  v6 = *(v2 + 136);

  return _swift_task_switch(sub_100802440, v6, v5);
}

uint64_t sub_100802440()
{

  v1 = v0[22];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[10];
  v5 = v0[11];
  v6 = v0[9];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  (*(v5 + 16))(v3, v6, v4);
  (*(v5 + 56))(v3, 0, 1, v4);
  sub_1000082B4(v3, v2, &unk_100AD4790);
  v9 = (*(v5 + 48))(v2, 1, v4);
  v10 = v0[14];
  if (v9 == 1)
  {
    v11 = v1;

    sub_100004F84(v10, &unk_100AD4790);
  }

  else
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[10];
    v15 = v0[11];
    (*(v15 + 32))(v12, v0[14], v14);
    v11 = v1;

    static Date.now.getter();
    Date.timeIntervalSince(_:)();
    v17 = v16;
    v18 = *(v15 + 8);
    v18(v13, v14);
    v18(v12, v14);
    if (v17 < 0.1)
    {
      sub_10080276C(v7, v1);
      goto LABEL_6;
    }
  }

  v19 = objc_opt_self();
  v0[6] = sub_100808928;
  v0[7] = v8;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100006C7C;
  v0[5] = &unk_100A81218;
  v20 = _Block_copy(v0 + 2);

  [v19 animateWithDuration:0x10000 delay:v20 options:0 animations:0.1 completion:0.0];
  _Block_release(v20);
LABEL_6:

  sub_100004F84(v0[15], &unk_100AD4790);

  v21 = v0[1];

  return v21();
}

void sub_10080276C(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView);

    if (a2)
    {
      v6 = a2;
    }

    else
    {
      v6 = [objc_opt_self() tertiarySystemFillColor];
    }

    v7 = a2;
    [v5 setBackgroundColor:v6];
  }
}

void sub_10080282C()
{
  v1 = v0;
  v2 = type metadata accessor for AssetType();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v123 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1000F24EC(&unk_100ADC680);
  __chkstk_darwin(v125);
  v132 = &v122 - v5;
  v6 = sub_1000F24EC(&qword_100AE4290);
  __chkstk_darwin(v6 - 8);
  v124 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v128 = &v122 - v9;
  *&v11 = __chkstk_darwin(v10).n128_u64[0];
  v129 = &v122 - v12;
  [v0 setMaximumContentSizeCategory:{UIContentSizeCategoryAccessibilityMedium, v11}];
  v13 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView];
  [v0 addSubview:v13];
  sub_100013178(0.0);

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 16) = v1;
  aBlock[4] = sub_100673E08;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A81110;
  v16 = _Block_copy(aBlock);
  v17 = v1;

  [v14 animateWithDuration:1 delay:v16 options:0 animations:0.11 completion:0.0];
  _Block_release(v16);
  v18 = *&v17[OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView];
  [v18 setClipsToBounds:1];
  [v13 setClipsToBounds:1];
  v127 = v13;
  [v13 insertSubview:v18 atIndex:0];
  sub_100013178(0.0);

  sub_1000F24EC(&unk_100AEBEC0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100940080;
  *(v19 + 32) = type metadata accessor for UITraitUserInterfaceStyle();
  *(v19 + 40) = &protocol witness table for UITraitUserInterfaceStyle;
  UIView.registerForTraitChanges(_:action:)();
  swift_unknownObjectRelease();

  v20 = OBJC_IVAR____TtC7Journal13SlimAssetView_iconView;
  [v17 addSubview:*&v17[OBJC_IVAR____TtC7Journal13SlimAssetView_iconView]];
  v21 = *&v17[OBJC_IVAR____TtC7Journal13SlimAssetView_label];
  [v17 addSubview:v21];
  v130 = *&v17[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel];
  [v17 addSubview:?];
  v133 = v20;
  v22 = *&v17[v20];
  v23 = [v22 superview];
  v24 = &selRef_setSuggestedName_;
  v131 = v3;
  if (v23)
  {
    v25 = v23;
    [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = [v22 leadingAnchor];
    v27 = [v25 leadingAnchor];
    v28 = [v26 constraintEqualToAnchor:v27];

    [v28 setConstant:4.0];
    if (v28)
    {
      [v28 setActive:1];
    }

    v24 = &selRef_setSuggestedName_;
    v3 = v131;
  }

  else
  {
    v28 = 0;
    v25 = v22;
  }

  v29 = *&v17[v133];
  v30 = [v29 superview];
  if (v30)
  {
    v31 = v30;
    [v29 v24[278]];
    v32 = [v29 topAnchor];
    v33 = [v31 topAnchor];
    v34 = [v32 constraintEqualToAnchor:v33];

    [v34 setConstant:4.0];
    if (v34)
    {
      [v34 setActive:1];
    }

    v24 = &selRef_setSuggestedName_;
    v3 = v131;
  }

  else
  {
    v34 = 0;
    v31 = v29;
  }

  v126 = v21;

  v35 = *&v17[v133];
  v36 = sub_100028DA0(0, 1, 4.0);

  if (v36)
  {
    type metadata accessor for UILayoutPriority(0);
    v135 = 1144750080;
    v134 = 1065353216;
    sub_100006BEC(&qword_100AF3610, type metadata accessor for UILayoutPriority);
    static _UIKitNumericRawRepresentable.+ infix(_:_:)();
    LODWORD(v37) = aBlock[0];
    [v36 setPriority:v37];
  }

  v38 = v2;
  v39 = v133;
  v40 = *&v17[v133];
  [v40 v24[278]];
  v41 = [v40 heightAnchor];
  v42 = [v40 widthAnchor];
  v43 = [v41 constraintEqualToAnchor:v42 multiplier:1.0];

  v44 = 1;
  [v43 setActive:1];

  [*&v17[v39] setContentMode:1];
  v45 = *&v17[v39];
  v46 = *&v17[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  v47 = v129;
  if (v46)
  {
    (*(v3 + 16))(v129, v46 + OBJC_IVAR____TtC7Journal5Asset_type, v38);
    v44 = 0;
  }

  v48 = v128;
  v49 = *(v3 + 56);
  v49(v47, v44, 1, v38);
  (*(v3 + 104))(v48, enum case for AssetType.multiPinMap(_:), v38);
  v49(v48, 0, 1, v38);
  v50 = *(v125 + 48);
  v51 = v132;
  sub_1000082B4(v47, v132, &qword_100AE4290);
  v52 = v51;
  sub_1000082B4(v48, v51 + v50, &qword_100AE4290);
  v53 = *(v3 + 48);
  if (v53(v52, 1, v38) == 1)
  {
    v54 = v45;
    sub_100004F84(v48, &qword_100AE4290);
    v55 = v132;
    sub_100004F84(v47, &qword_100AE4290);
    p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
    if (v53(v55 + v50, 1, v38) == 1)
    {
      sub_100004F84(v55, &qword_100AE4290);
      v57 = &OBJC_IVAR____TtC7Journal13SlimAssetView_mapFallbackIcon;
      v58 = &selRef_setSuggestedName_;
      v59 = v126;
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v60 = v124;
  sub_1000082B4(v52, v124, &qword_100AE4290);
  if (v53(v52 + v50, 1, v38) == 1)
  {
    v61 = v45;
    sub_100004F84(v128, &qword_100AE4290);
    v55 = v132;
    sub_100004F84(v129, &qword_100AE4290);
    (*(v131 + 8))(v60, v38);
    p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
LABEL_20:
    sub_100004F84(v55, &unk_100ADC680);
    v58 = &selRef_setSuggestedName_;
    v59 = v126;
LABEL_21:
    v57 = &OBJC_IVAR____TtC7Journal13SlimAssetView_stateOfMindFallbackIcon;
    goto LABEL_22;
  }

  v115 = v131;
  v116 = v52 + v50;
  v117 = v123;
  (*(v131 + 32))(v123, v116, v38);
  sub_100006BEC(&qword_100ADC690, &type metadata accessor for AssetType);
  v118 = v45;
  v119 = v52;
  v120 = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v115 + 8);
  v121(v117, v38);
  sub_100004F84(v128, &qword_100AE4290);
  sub_100004F84(v129, &qword_100AE4290);
  v121(v60, v38);
  sub_100004F84(v119, &qword_100AE4290);
  p_ivar_lyt = (&InsightsPlacesDetailView.ContentViewController + 16);
  v58 = &selRef_setSuggestedName_;
  v59 = v126;
  if ((v120 & 1) == 0)
  {
    goto LABEL_21;
  }

  v57 = &OBJC_IVAR____TtC7Journal13SlimAssetView_mapFallbackIcon;
LABEL_22:
  [v45 setImage:*&v17[*v57]];

  v62 = objc_opt_self();
  v63 = [v62 tertiarySystemFillColor];
  [v127 setBackgroundColor:v63];

  v64 = *&v17[v133];
  v65 = [v62 quaternaryLabelColor];
  [v64 setTintColor:v65];

  v66 = [v59 superview];
  if (v66)
  {
    v67 = v66;
    [v59 v58[278]];
    v68 = [v59 centerYAnchor];
    v69 = [v67 centerYAnchor];
    v70 = [v68 constraintEqualToAnchor:v69];

    [v70 p:0.0 ivar:?lyt[472]];
    [v70 setActive:1];
  }

  v71 = [v59 superview];
  if (v71)
  {
    v72 = v71;
    [v59 v58[278]];
    v73 = [v59 topAnchor];
    v74 = [v72 topAnchor];
    v75 = [v73 constraintGreaterThanOrEqualToAnchor:v74];

    [v75 p:0.0 ivar:?lyt[472]];
    if (v75)
    {
      [v75 setActive:1];

      LODWORD(v76) = 1132068864;
      [v75 setPriority:v76];
      v72 = v75;
    }
  }

  v77 = sub_100028DA0(2, 1, 0.0);
  if (v77)
  {
    LODWORD(v78) = 1132068864;
    v79 = v77;
    [v77 setPriority:v78];
  }

  v132 = v17;
  v80 = *&v17[v133];
  [v59 v58[278]];
  v81 = [v59 leadingAnchor];
  v82 = [v80 trailingAnchor];
  v83 = [v81 constraintEqualToAnchor:v82];

  [v83 p:6.0 ivar:?lyt[472]];
  [v83 setActive:1];

  [v59 v58[278]];
  v84 = [v59 trailingAnchor];
  v85 = v130;
  v86 = [v130 leadingAnchor];
  v87 = [v84 constraintEqualToAnchor:v86];

  v88 = v87;
  [v88 p:-6.0 ivar:?lyt[472]];
  [v88 setActive:1];

  LODWORD(v89) = 1132068864;
  [v88 setPriority:v89];

  [v59 setLineBreakMode:4];
  [v59 setAdjustsFontForContentSizeCategory:1];
  [v85 v58[278]];
  v90 = [v85 centerYAnchor];
  v91 = [v59 centerYAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];

  [v92 setActive:1];
  v93 = [v85 superview];
  if (v93)
  {
    v95 = v93;
    [v85 v58[278]];
    v96 = [v85 topAnchor];
    v97 = [v95 topAnchor];
    v98 = [v96 constraintGreaterThanOrEqualToAnchor:v97];

    [v98 p:0.0 ivar:?lyt[472]];
    if (v98)
    {
      [v98 setActive:1];
    }

    v85 = v130;
  }

  else
  {
    v98 = 0;
  }

  LODWORD(v94) = 1132068864;
  [v98 setPriority:v94];

  v99 = sub_100028DA0(2, 1, 0.0);
  LODWORD(v100) = 1132068864;
  [v99 setPriority:v100];

  LODWORD(v101) = 1148846080;
  [v85 setContentCompressionResistancePriority:0 forAxis:v101];
  LODWORD(v102) = 1148846080;
  [v85 setContentHuggingPriority:0 forAxis:v102];
  LODWORD(v103) = 1132068864;
  [v59 setContentCompressionResistancePriority:0 forAxis:v103];
  v104 = [v85 superview];
  if (v104)
  {
    v105 = v104;
    [v85 v58[278]];
    v106 = [v85 trailingAnchor];
    v107 = [v105 trailingAnchor];
    v108 = [v106 constraintEqualToAnchor:v107];

    [v108 setConstant:-12.0];
    if (v108)
    {
      [v108 setActive:1];
    }

    v109 = v132;
  }

  else
  {
    v108 = 0;
    v109 = v132;
  }

  v110 = *&v109[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint];
  *&v109[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint] = v108;

  [v85 setLineBreakMode:4];
  [v85 setAdjustsFontForContentSizeCategory:1];
  sub_100806D8C();
  v111 = [objc_allocWithZone(UITapGestureRecognizer) initWithTarget:v109 action:"tapped"];
  v112 = [v109 traitCollection];
  v113 = [v112 userInterfaceIdiom];

  if (v113 == 5)
  {
    v114 = 2;
  }

  else
  {
    v114 = 1;
  }

  [v111 setNumberOfTapsRequired:v114];
  [v109 addGestureRecognizer:v111];
  sub_100804680();
}

uint64_t sub_100803A34()
{
  v1 = objc_opt_self();
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_100603A58;
  v6[5] = v2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100006C7C;
  v6[3] = &unk_100A810C0;
  v3 = _Block_copy(v6);
  v4 = v0;

  [v1 animateWithDuration:1 delay:v3 options:0 animations:0.11 completion:0.0];
  _Block_release(v3);
  [*&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView] setClipsToBounds:1];
  [*&v4[OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView] setClipsToBounds:1];
  return sub_1007FE844();
}

uint64_t sub_100803BB0(char *a1)
{
  v1 = *&a1[OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView];
  v2 = *&a1[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  if (!v2 || (v4 = *&a1[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8], swift_getObjectType(), v5 = v2, v6 = [a1 traitCollection], v7 = (*(v4 + 40))(), v5, v6, !v7))
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v8 = v1;
  static UIView.Invalidating.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v8;
  return static UIView.Invalidating.subscript.setter();
}

void sub_100803CFC()
{
  v1 = OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView;
  if (!*&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView])
  {
    type metadata accessor for CanvasAssetDeleteView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v29 = v2;
    v4 = v2;

    v31 = v4;
    [v0 addSubview:v31];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v31 widthAnchor];
    v6 = [v5 constraintEqualToConstant:44.0];

    [v6 setActive:1];
    [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v31 heightAnchor];
    v8 = [v31 widthAnchor];
    v9 = [v7 constraintEqualToAnchor:v8 multiplier:1.0];

    [v9 setActive:1];
    v10 = [v31 superview];
    if (v10)
    {
      v11 = v10;
      [v31 setTranslatesAutoresizingMaskIntoConstraints:{0, v29}];
      v12 = [v31 topAnchor];
      v13 = [v11 topAnchor];
      v14 = [v12 constraintEqualToAnchor:v13];

      [v14 setConstant:0.0];
      [v14 setActive:1];
    }

    v15 = [v31 superview];
    if (v15)
    {
      v16 = v15;
      [v31 setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [v31 trailingAnchor];
      v18 = [v16 trailingAnchor];
      v19 = [v17 constraintEqualToAnchor:v18];

      [v19 setConstant:0.0];
      [v19 setActive:1];
    }

    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v21 = &v31[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
    *v21 = sub_100808828;
    v21[1] = v20;

    v22 = OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint;
    [*&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint] setActive:0];
    v23 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    v24 = [v23 trailingAnchor];
    v25 = [v31 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];

    v27 = v26;
    [v27 setConstant:-0.0];
    [v27 setActive:1];

    v28 = *&v0[v22];
    *&v0[v22] = v27;

    sub_100809F14(v30, v0, DebugData.init(name:), 0);
  }
}

void sub_100804178()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
    v2 = Strong;
    v3 = swift_unknownObjectWeakLoadStrong();
    v4 = *(v1 + 8);

    if (v3)
    {
      ObjectType = swift_getObjectType();
      (*(v4 + 8))(2, ObjectType, v4);
      swift_unknownObjectRelease();
    }
  }
}

void sub_100804220()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10043C168;
    *(v4 + 24) = v3;
    v26 = sub_100028EF4;
    v27 = v4;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10001A7D4;
    v25 = &unk_100A80FD0;
    v5 = _Block_copy(&v22);
    v6 = v1;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
      return;
    }

    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v26 = sub_10043C170;
    v27 = v7;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_100006C7C;
    v25 = &unk_100A81020;
    v8 = _Block_copy(&v22);
    v9 = v6;

    v10 = swift_allocObject();
    v10[2] = sub_100804608;
    v10[3] = 0;
    v10[4] = v0;
    v26 = sub_10043C178;
    v27 = v10;
    v22 = _NSConcreteStackBlock;
    v23 = 1107296256;
    v24 = sub_10003264C;
    v25 = &unk_100A81070;
    v11 = _Block_copy(&v22);
    v12 = v0;

    [v2 animateWithDuration:4 delay:v8 options:v11 animations:0.0 completion:0.0];

    _Block_release(v11);
    _Block_release(v8);
  }

  else
  {
    sub_100804608(v0);
  }

  v13 = OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint;
  v14 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint];
  if (v14)
  {
    [v14 setActive:0];
  }

  v15 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel];
  v16 = [v15 superview];
  if (v16)
  {
    v17 = v16;
    [v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [v15 trailingAnchor];
    v19 = [v17 trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19];

    [v20 setConstant:-12.0];
    if (v20)
    {
      [v20 setActive:1];
    }
  }

  else
  {
    v20 = 0;
  }

  v21 = *&v0[v13];
  *&v0[v13] = v20;
}

void sub_100804608(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView;
    if (*(a1 + OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView))
    {
      v3 = a1;
      [*(a1 + OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView) removeFromSuperview];
      a1 = v3;
      v4 = *(v3 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + v2) = 0;
  }
}

uint64_t sub_100804680()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AD6210);
  v8 = static OS_dispatch_queue.main.getter();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_100808820;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A80F58;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = &_swiftEmptyArrayStorage;
  sub_100006BEC(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000F24EC(&unk_100AD6220);
  sub_100006610();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v10);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

void sub_100804948()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry);
    if (v2)
    {

      v1 = v1;
      v3 = [v1 layer];
      if (qword_100AD0A10 != -1)
      {
        swift_once();
      }

      v41 = xmmword_100B30EE8;
      v42 = *&qword_100B30EF8;
      v43 = xmmword_100B30F08;
      v44 = *&qword_100B30F18;
      [v3 setCornerRadii:&v41];

      v4 = OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView;
      v5 = [*&v1[OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView] layer];
      v41 = xmmword_100B30EE8;
      v42 = *&qword_100B30EF8;
      v43 = xmmword_100B30F08;
      v44 = *&qword_100B30F18;
      [v5 setCornerRadii:&v41];

      v6 = [v1 layer];
      v7 = &v1[OBJC_IVAR____TtC7Journal13SlimAssetView_outerCornerRadius];
      v8 = *&v1[OBJC_IVAR____TtC7Journal13SlimAssetView_outerCornerRadius];
      v9 = *&v1[OBJC_IVAR____TtC7Journal13SlimAssetView_outerCornerRadius + 8];
      [v6 cornerRadii];
      v37 = v41;
      v39 = v43;
      v40 = v44;
      *&v38 = v8;
      *(&v38 + 1) = v9;
      [v6 setCornerRadii:&v37];

      v10 = [v1 layer];
      v11 = *v7;
      v12 = *(v7 + 1);
      [v10 cornerRadii];
      v38 = v42;
      v39 = v43;
      v40 = v44;
      *&v37 = v11;
      *(&v37 + 1) = v12;
      [v10 setCornerRadii:&v37];

      v13 = [*&v1[v4] layer];
      v14 = *v7;
      v15 = *(v7 + 1);
      [v13 cornerRadii];
      v37 = v41;
      v39 = v43;
      v40 = v44;
      *&v38 = v14;
      *(&v38 + 1) = v15;
      [v13 setCornerRadii:&v37];

      v16 = [*&v1[v4] layer];
      v17 = *v7;
      v18 = *(v7 + 1);
      [v16 cornerRadii];
      v38 = v42;
      v39 = v43;
      v40 = v44;
      *&v37 = v17;
      *(&v37 + 1) = v18;
      [v16 setCornerRadii:&v37];

      v19 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset);
      if (v19 >> 62)
      {
        if (_CocoaArrayWrapper.endIndex.getter() == 1)
        {
LABEL_7:
          v20 = sub_100049F2C();
          if (v20)
          {
            sub_10053256C(v20);
            v22 = v21;
            v24 = v23;

            v1 = v24;
          }

          else
          {
            v25 = [v1 layer];
            v26 = *v7;
            v27 = *(v7 + 1);
            [v25 cornerRadii];
            v37 = v41;
            v38 = v42;
            v40 = v44;
            *&v39 = v26;
            *(&v39 + 1) = v27;
            [v25 setCornerRadii:&v37];

            v28 = [v1 layer];
            v29 = *v7;
            v30 = *(v7 + 1);
            [v28 cornerRadii];
            v37 = v41;
            v38 = v42;
            v39 = v43;
            *&v40 = v29;
            *(&v40 + 1) = v30;
            [v28 setCornerRadii:&v37];

            v31 = [*&v1[v4] layer];
            v32 = *v7;
            v33 = *(v7 + 1);
            [v31 cornerRadii];
            v37 = v41;
            v38 = v42;
            v40 = v44;
            *&v39 = v32;
            *(&v39 + 1) = v33;
            [v31 setCornerRadii:&v37];

            v34 = [*&v1[v4] layer];
            v35 = *v7;
            v36 = *(v7 + 1);
            [v34 cornerRadii];
            v37 = v41;
            v38 = v42;
            v39 = v43;
            *&v40 = v35;
            *(&v40 + 1) = v36;
            [v34 setCornerRadii:&v37];

            v1 = v34;
          }

          goto LABEL_12;
        }
      }

      else if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
  }
}

uint64_t sub_100804E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[17] = a4;
  v5 = type metadata accessor for MapSize();
  v4[18] = v5;
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();
  v6 = type metadata accessor for AssetPlacement();
  v4[21] = v6;
  v4[22] = *(v6 - 8);
  v4[23] = swift_task_alloc();
  v7 = type metadata accessor for JournalFeatureFlags();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  type metadata accessor for MainActor();
  v4[27] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[28] = v9;
  v4[29] = v8;

  return _swift_task_switch(sub_100805020, v9, v8);
}

uint64_t sub_100805020()
{
  v2 = *(v0 + 200);
  v1 = *(v0 + 208);
  v3 = *(v0 + 192);
  (*(v2 + 104))(v1, enum case for JournalFeatureFlags.enhancedSync(_:), v3);
  v4 = JournalFeatureFlags.isEnabled.getter();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v6 = *(Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset);
      *(v0 + 240) = v6;
      v7 = Strong;
      v8 = v6;

      if (v6)
      {
        swift_beginAccess();
        v9 = swift_unknownObjectWeakLoadStrong();
        if (v9)
        {
          v10 = *(v9 + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry);
          *(v0 + 248) = v10;
          v11 = v9;

          if (v10)
          {
            v12 = *(v0 + 216);
            v14 = *(v0 + 176);
            v13 = *(v0 + 184);
            v15 = *(v0 + 168);
            v16 = v8;
            *v13 = static AssetPlacement.maxGridCount.getter();
            (*(v14 + 104))(v13, enum case for AssetPlacement.grid(_:), v15);

            v17 = swift_task_alloc();
            *(v0 + 256) = v17;
            *v17 = v0;
            v17[1] = sub_100805564;
            v18 = *(v0 + 184);

            return sub_1005666C0(v12, &protocol witness table for MainActor, v16, v18);
          }
        }

        swift_beginAccess();
        v29 = swift_unknownObjectWeakLoadStrong();
        if (v29)
        {
          v30 = *(v29 + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry);
          *(v0 + 264) = v30;
          v31 = v29;

          if (v30)
          {
            v32 = *(v0 + 216);
            (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for MapSize.grid(_:), *(v0 + 144));

            v33 = swift_task_alloc();
            *(v0 + 272) = v33;
            *v33 = v0;
            v33[1] = sub_100805958;
            v34 = *(v0 + 160);

            return sub_100572180(v32, &protocol witness table for MainActor, v34);
          }
        }
      }
    }

    goto LABEL_20;
  }

  swift_beginAccess();
  v20 = swift_unknownObjectWeakLoadStrong();
  if (!v20 || (v21 = v20 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset, v22 = *(v20 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset), *(v0 + 280) = v22, v23 = *(v21 + 8), v24 = v20, v22, v24, !v22))
  {
LABEL_20:
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 296) = v35;
    if (v35)
    {
      v36 = swift_task_alloc();
      *(v0 + 304) = v36;
      *v36 = v0;
      v36[1] = sub_100805EA0;

      return sub_100806060();
    }

    else
    {

      v37 = *(v0 + 8);

      return v37();
    }
  }

  v25 = *(v0 + 216);
  ObjectType = swift_getObjectType();
  v27 = *(v23 + 72);

  v38 = (v27 + *v27);
  v28 = swift_task_alloc();
  *(v0 + 288) = v28;
  *v28 = v0;
  v28[1] = sub_100805C34;

  return v38(v25, &protocol witness table for MainActor, ObjectType, v23);
}

uint64_t sub_100805564()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  v3 = *(*v0 + 184);
  v4 = *(*v0 + 176);
  v5 = *(*v0 + 168);

  (*(v4 + 8))(v3, v5);
  v6 = *(v1 + 232);
  v7 = *(v1 + 224);

  return _swift_task_switch(sub_100805740, v7, v6);
}

uint64_t sub_100805740()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry), *(v0 + 264) = v2, v3 = Strong, , v3, v2))
  {
    v4 = *(v0 + 216);
    (*(*(v0 + 152) + 104))(*(v0 + 160), enum case for MapSize.grid(_:), *(v0 + 144));

    v5 = swift_task_alloc();
    *(v0 + 272) = v5;
    *v5 = v0;
    v5[1] = sub_100805958;
    v6 = *(v0 + 160);

    return sub_100572180(v4, &protocol witness table for MainActor, v6);
  }

  else
  {

    swift_beginAccess();
    v8 = swift_unknownObjectWeakLoadStrong();
    *(v0 + 296) = v8;
    if (v8)
    {
      v9 = swift_task_alloc();
      *(v0 + 304) = v9;
      *v9 = v0;
      v9[1] = sub_100805EA0;

      return sub_100806060();
    }

    else
    {

      v10 = *(v0 + 8);

      return v10();
    }
  }
}

uint64_t sub_100805958()
{
  v1 = *v0;
  v2 = *(*v0 + 160);
  v3 = *(*v0 + 152);
  v4 = *(*v0 + 144);

  (*(v3 + 8))(v2, v4);
  v5 = *(v1 + 232);
  v6 = *(v1 + 224);

  return _swift_task_switch(sub_100805B1C, v6, v5);
}

uint64_t sub_100805B1C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 296) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 304) = v2;
    *v2 = v0;
    v2[1] = sub_100805EA0;

    return sub_100806060();
  }

  else
  {

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_100805C34()
{
  v1 = *v0;
  v2 = *(*v0 + 280);

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100805D90, v4, v3);
}

uint64_t sub_100805D90()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[37] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[38] = v2;
    *v2 = v0;
    v2[1] = sub_100805EA0;

    return sub_100806060();
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_100805EA0()
{
  v1 = *v0;
  v2 = *(*v0 + 296);

  v3 = *(v1 + 232);
  v4 = *(v1 + 224);

  return _swift_task_switch(sub_100805FE0, v4, v3);
}

uint64_t sub_100805FE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100806060()
{
  v1[2] = v0;
  v2 = type metadata accessor for IndexSet();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[6] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_100806154, v4, v3);
}

uint64_t sub_100806154()
{
  v1 = v0[2];
  v2 = *(v1 + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry);
  v0[9] = v2;
  if (!v2)
  {
LABEL_8:

    v13 = v0[1];

    return v13();
  }

  sub_10003A464();
  if (!*(v1 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset))
  {
LABEL_6:

    v10 = v0[2] + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v11 = *(v10 + 8);
      ObjectType = swift_getObjectType();
      (*(v11 + 8))(0, ObjectType, v11);
      swift_unknownObjectRelease();
    }

    goto LABEL_8;
  }

  v3 = *(v1 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8);
  v4 = swift_getObjectType();
  v5 = (*(v3 + 80))(v4, v3);
  v0[10] = v5;
  v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets;
  v7 = *(v2 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssets);

  sub_100691540(v5, v7);
  v9 = v8;

  if (v9)
  {

    goto LABEL_6;
  }

  IndexSet.init(integer:)();
  v15 = *(v2 + v6);
  if (v15 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v16 = result - 1;
    if (!__OFSUB__(result, 1))
    {
      goto LABEL_13;
    }

LABEL_18:
    __break(1u);
    return result;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v16 = result - 1;
  if (__OFSUB__(result, 1))
  {
    goto LABEL_18;
  }

LABEL_13:
  v17 = v0[6];
  v18 = v16 & ~(v16 >> 63);

  v19 = swift_task_alloc();
  v0[11] = v19;
  *v19 = v0;
  v19[1] = sub_1008063BC;
  v20 = v0[5];

  return sub_1005700DC(v17, &protocol witness table for MainActor, v20, v18);
}

uint64_t sub_1008063BC()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return _swift_task_switch(sub_100806500, v3, v2);
}

uint64_t sub_100806500()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);

  (*(v3 + 8))(v1, v2);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v5 + 8))(0, ObjectType, v5);
    swift_unknownObjectRelease();
  }

  v7 = *(v0 + 8);

  return v7();
}

double *sub_100806708()
{
  v23.receiver = v0;
  v23.super_class = type metadata accessor for SlimAssetView();
  v1 = objc_msgSendSuper2(&v23, "accessibilityCustomActions");
  if (v1)
  {
    v2 = v1;
    sub_1000065A8(0, &qword_100AD86C0);
    v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v24 = v3;
  if (qword_100AD08C0 != -1)
  {
    swift_once();
  }

  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = objc_allocWithZone(UIAccessibilityCustomAction);

  v6 = String._bridgeToObjectiveC()();
  v21 = sub_100808AFC;
  v22 = v4;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1004B7420;
  v20 = &unk_100A812B8;
  v7 = _Block_copy(&aBlock);
  v8 = [v5 initWithName:v6 actionHandler:v7];

  _Block_release(v7);

  v9 = v8;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  if (qword_100AD0808 != -1)
  {
    swift_once();
  }

  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = objc_allocWithZone(UIAccessibilityCustomAction);

  v12 = String._bridgeToObjectiveC()();
  v21 = sub_100808B04;
  v22 = v10;
  aBlock = _NSConcreteStackBlock;
  v18 = 1107296256;
  v19 = sub_1004B7420;
  v20 = &unk_100A812E0;
  v13 = _Block_copy(&aBlock);
  v14 = [v11 initWithName:v12 actionHandler:v13];

  _Block_release(v13);

  v15 = v14;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return v24;
}

BOOL sub_100806B5C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = type metadata accessor for TaskPriority();
    (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v6 = static MainActor.shared.getter();
    v7 = swift_allocObject();
    v7[2] = v6;
    v7[3] = &protocol witness table for MainActor;
    v7[4] = v5;

    sub_1003E9628(0, 0, v2, &unk_10096C640, v7);
  }

  return Strong != 0;
}

void sub_100806D8C()
{
  if (*(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing) == 1)
  {
    if (qword_100AD07E0 != -1)
    {
      swift_once();
    }

    v1 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v2 = objc_allocWithZone(UIAccessibilityCustomAction);

    v3 = String._bridgeToObjectiveC()();
    v11[4] = sub_100808B7C;
    v11[5] = v1;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 1107296256;
    v11[2] = sub_1004B7420;
    v11[3] = &unk_100A80F30;
    v4 = _Block_copy(v11);
    v5 = [v2 initWithName:v3 actionHandler:v4];

    _Block_release(v4);

    v6 = *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_label);
    sub_1000F24EC(&unk_100AD4780);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100941D50;
    *(v7 + 32) = v5;
    sub_1000065A8(0, &qword_100AD86C0);
    v8 = v5;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v6 setAccessibilityCustomActions:isa];
  }

  else
  {
    v10 = *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_label);

    [v10 setAccessibilityCustomActions:0];
  }
}

BOOL sub_100806FE0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(2, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return v1 != 0;
}

uint64_t sub_100807094()
{
  if (!*(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset))
  {
    return 0;
  }

  v1 = *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 80))(ObjectType, v1);
}

void sub_1008070F0()
{

  sub_100038534(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate);

  v1 = *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_stateOfMindFallbackIcon);
}

id sub_1008071D0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SlimAssetView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

UIMenu sub_100807314(uint64_t a1, uint64_t a2, void *a3)
{
  v39 = a3;
  v36 = a2;
  v3 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  __chkstk_darwin(v3 - 8);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Locale();
  __chkstk_darwin(v5 - 8);
  v6 = type metadata accessor for String.LocalizationValue();
  __chkstk_darwin(v6 - 8);
  v37 = sub_1000F24EC(&unk_100AD4780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100941D70;
  v8 = sub_1000065A8(0, &qword_100AD4420);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v9 = String._bridgeToObjectiveC()();
  v10 = objc_opt_self();
  v11 = [v10 systemImageNamed:v9];

  swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v8;
  v12 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v38 = v7;
  *(v7 + 32) = v12;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v13 = String._bridgeToObjectiveC()();
  v35 = v10;
  v14 = [v10 systemImageNamed:v13];

  *(v7 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_100941D60;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v15 = String._bridgeToObjectiveC()();
  v16 = [v10 systemImageNamed:v15];

  v17 = v39;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v20 = v17;
  v21 = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v22 = v37;
  *(v37 + 32) = v21;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v23._countAndFlagsBits = 0x206574656C6544;
  v23._object = 0xE700000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v23);
  v41 = 1;
  String.LocalizationValue.StringInterpolation.appendInterpolation<A>(_:specifier:)();
  v24._countAndFlagsBits = 0x6D68636174744120;
  v24._object = 0xEC00000073746E65;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v24);
  String.LocalizationValue.init(stringInterpolation:)();
  static Locale.current.getter();
  String.init(localized:table:bundle:locale:comment:)();
  v25 = String._bridgeToObjectiveC()();
  v26 = [v35 systemImageNamed:v25];

  sub_1000065A8(0, &unk_100AD4D00);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v22 + 40) = UIAction.init(title:subtitle:image:selectedImage:identifier:discoverabilityTitle:attributes:state:handler:)();
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v42.value.super.isa = 0;
  v42.is_nil = 0;
  v28.super.super.isa = UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v27, 0, v42, 1, 0xFFFFFFFFFFFFFFFFLL, v22, v32).super.super.isa;
  v29 = v38;
  v38[6].super.super.isa = v28.super.super.isa;
  v30._countAndFlagsBits = 0;
  v30._object = 0xE000000000000000;
  v43.value.super.isa = 0;
  v43.is_nil = 0;
  return UIMenu.init(title:subtitle:image:identifier:options:preferredElementSize:children:)(v30, 0, v43, 0, 0xFFFFFFFFFFFFFFFFLL, v29, v33);
}

void sub_100807A1C()
{
  v0 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = type metadata accessor for TaskPriority();
    (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v7 = static MainActor.shared.getter();
    v8 = swift_allocObject();
    v8[2] = v7;
    v8[3] = &protocol witness table for MainActor;
    v8[4] = v6;

    sub_1003E9628(0, 0, v2, &unk_10096C518, v8);
  }
}

void sub_100807BA4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = Strong + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v3 = *(v2 + 8);
      ObjectType = swift_getObjectType();
      (*(v3 + 8))(2, ObjectType, v3);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100807EE0@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100807F60(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

uint64_t sub_100807FD8@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  *a1 = v3;
  return result;
}

uint64_t sub_100808058(uint64_t a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return static UIView.Invalidating.subscript.setter();
}

void sub_1008080D0()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_journalEntry) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_slimAssetDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC7Journal13SlimAssetView_backgroundView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC7Journal13SlimAssetView_gradientView;
  type metadata accessor for GradientView();
  *(v0 + v3) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = OBJC_IVAR____TtC7Journal13SlimAssetView_iconView;
  *(v0 + v4) = [objc_allocWithZone(UIImageView) init];
  v5 = OBJC_IVAR____TtC7Journal13SlimAssetView_label;
  *(v0 + v5) = [objc_allocWithZone(UILabel) init];
  v6 = OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabel;
  *(v0 + v6) = [objc_allocWithZone(UILabel) init];
  *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_trailingLabelTrailingMarginConstraint) = 0;
  v7 = OBJC_IVAR____TtC7Journal13SlimAssetView_mapFallbackIcon;
  v8 = String._bridgeToObjectiveC()();
  v9 = objc_opt_self();
  v10 = [v9 _systemImageNamed:v8];

  *(v0 + v7) = v10;
  v11 = OBJC_IVAR____TtC7Journal13SlimAssetView_stateOfMindFallbackIcon;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v9 _systemImageNamed:v12];

  *(v0 + v11) = v13;
  __asm { FMOV            V0.2D, #12.0 }

  *(v0 + OBJC_IVAR____TtC7Journal13SlimAssetView_outerCornerRadius) = _Q0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id sub_1008082F0()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC7Journal13SlimAssetView_slimAsset];
  if (v2)
  {
    sub_1000F24EC(&unk_100AD4780);
    v3 = swift_allocObject();
    *(v3 + 1) = xmmword_100941D50;
    *(v3 + 4) = v2;
  }

  else
  {
    v3 = _swiftEmptyArrayStorage;
  }

  v4 = objc_allocWithZone(type metadata accessor for AssetActivityItemsConfiguration());
  v5 = v2;
  v6 = sub_1001F3F38(v3);
  v7 = v6;
  if ((*(v1 + OBJC_IVAR____TtC7Journal13SlimAssetView_isEditing) & 1) != 0 || *(*&v6[OBJC_IVAR____TtC7Journal31AssetActivityItemsConfiguration_assets] + 16))
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    *(v8 + 24) = v7;
    v9 = objc_opt_self();
    v14[4] = sub_100808754;
    v14[5] = v8;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 1107296256;
    v14[2] = sub_1002D1F68;
    v14[3] = &unk_100A80E68;
    v10 = _Block_copy(v14);
    v11 = v1;

    v12 = [v9 configurationWithIdentifier:0 previewProvider:0 actionProvider:v10];

    _Block_release(v10);
  }

  else
  {

    return 0;
  }

  return v12;
}

id sub_1008084B4(void *a1, void *a2)
{
  result = [a1 menuAppearance];
  if (result == 1)
  {
    if (a2)
    {
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v8[4] = sub_100808728;
      v8[5] = v5;
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 1107296256;
      v8[2] = sub_100006C7C;
      v8[3] = &unk_100A80E18;
      v6 = _Block_copy(v8);
      swift_unknownObjectRetain();
      v7 = v2;

      [a2 addAnimations:v6];
      _Block_release(v6);
      return swift_unknownObjectRelease();
    }

    else
    {
      result = *&v2[OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView];
      if (result)
      {

        return [result setAlpha:0.0];
      }
    }
  }

  return result;
}

id sub_1008085F4(void *a1)
{
  if (a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v7[4] = sub_100808720;
    v7[5] = v3;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 1107296256;
    v7[2] = sub_100006C7C;
    v7[3] = &unk_100A80DC8;
    v4 = _Block_copy(v7);
    swift_unknownObjectRetain();
    v5 = v1;

    [a1 addAnimations:v4];
    _Block_release(v4);
    return swift_unknownObjectRelease();
  }

  else
  {
    result = *&v1[OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView];
    if (result)
    {

      return [result setAlpha:1.0];
    }
  }

  return result;
}

id sub_100808730()
{
  result = *(*(v0 + 16) + OBJC_IVAR____TtC7Journal13SlimAssetView_xPlatterView);
  if (result)
  {
    return [result setAlpha:?];
  }

  return result;
}

uint64_t sub_10080876C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100804E74(a1, v4, v5, v6);
}

uint64_t sub_100808830(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032EC8;

  return sub_100801CF4(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_100808930()
{
  v1 = type metadata accessor for Date();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1008089FC(uint64_t a1)
{
  v4 = *(type metadata accessor for Date() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100032ECC;

  return sub_1007FEF84(a1, v6, v7, v8, v1 + v5);
}

void sub_100808B80(uint64_t a1)
{
  *(a1 + qword_100B31130 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a1 + qword_100B31138) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

char *sub_100808C08(double a1, double a2, double a3, double a4)
{
  *(v4 + qword_100B31130 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v4 + qword_100B31138) = 0;
  type metadata accessor for PhotoAssetView();
  v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v10 = sub_100872274(v9, a1, a2, a3, a4);
  v11 = v10;
  v12 = *&v10[qword_100B2F5A0];
  v13 = OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType;
  v14 = v12[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType];
  v12[OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType] = 7;
  v15 = OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated;
  if (v12[OBJC_IVAR____TtC7Journal16JournalAssetView_hasCalledSizeTypeUpdated] != 1)
  {
    v16 = v10;
    v17 = v12;
    v18 = 7;
LABEL_9:
    v22 = *&v12[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView];
    v23 = *((swift_isaMask & *v22) + 0x58);
    v24 = v22;
    v23(0, v18);

    sub_100070F50();
    v12[v15] = 1;

    return v11;
  }

  if (v14 > 3 && v14 > 6)
  {

    return v11;
  }

  v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
  v20 = v11;
  v21 = v12;

  if ((v19 & 1) == 0)
  {
    v18 = v12[v13];
    goto LABEL_9;
  }

  return v11;
}

id sub_100808EC4(void *a1)
{
  v2 = v1;
  v4 = *&v2[qword_100B2F5A0];
  v5 = *&v4[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset];
  *&v4[OBJC_IVAR____TtC7Journal14PhotoAssetView_photoAsset] = a1;
  v6 = v4;
  a1;

  sub_10007188C();
  sub_100067B84();
  v11 = type metadata accessor for PhotoAssetView();
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v2;
  static UIView.Invalidating.subscript.setter();
  v8 = *&v7[qword_100B2F598];
  [v8 zoomScale];
  if (v9 > 1.0)
  {
    [v8 setZoomScale:1 animated:1.0];
  }

  return [v7 layoutIfNeeded];
}

void sub_100809010()
{
  v1 = qword_100B2F5B0;
  if ((v0[qword_100B2F5B0] & 1) == 0)
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v3 = Strong;
      v4 = OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset;
      v5 = Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset];
      Strong[OBJC_IVAR____TtC7Journal34FullScreenCollectionViewController_shouldHideNavigationBarAndPageControlForImageryAsset] = 1;
      if ([Strong isViewLoaded])
      {
        if (v5 != v3[v4])
        {
          sub_10043795C();
        }
      }

      swift_unknownObjectRelease();
    }

    v0[v1] = 1;
    swift_getKeyPath();
    swift_getKeyPath();
    v6 = v0;
    static UIView.Invalidating.subscript.setter();
  }
}

void sub_100809104()
{
  sub_100038534(v0 + qword_100B31130);
  v1 = *(v0 + qword_100B31138);
}

id sub_100809144()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenPhotoCollectionViewCell();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10080917C(uint64_t a1)
{
  sub_100038534(a1 + qword_100B31130);
  v2 = *(a1 + qword_100B31138);
}

uint64_t type metadata accessor for FullScreenPhotoCollectionViewCell()
{
  result = qword_100AF3680;
  if (!qword_100AF3680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100809268()
{
  v1 = *(*v0 + qword_100B31138);
  v2 = v1;
  return v1;
}

uint64_t sub_10080929C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1002392DC();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  return result;
}

void sub_100809304(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    [v7 inheritedAnimationDuration];
    v10 = v9 != 0.0;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10080BB58;
    *(v12 + 24) = v11;
    v27 = sub_100177C4C;
    v28 = v12;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10001A7D4;
    v26 = &unk_100A81520;
    v13 = _Block_copy(&aBlock);
    v14 = v8;
    v15 = a2;

    [v7 performWithoutAnimation:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v27 = sub_10080B954;
      v28 = v16;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100006C7C;
      v26 = &unk_100A81570;
      v17 = _Block_copy(&aBlock);
      v18 = v14;

      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = v15;
      v27 = sub_1002EE210;
      v28 = v19;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_10003264C;
      v26 = &unk_100A815C0;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      [v7 animateWithDuration:4 delay:v17 options:v20 animations:0.0 completion:0.0];
      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_100809608(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    [v7 inheritedAnimationDuration];
    v10 = v9 != 0.0;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10080BB58;
    *(v12 + 24) = v11;
    v27 = sub_100177C4C;
    v28 = v12;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10001A7D4;
    v26 = &unk_100A819A8;
    v13 = _Block_copy(&aBlock);
    v14 = v8;
    v15 = a2;

    [v7 performWithoutAnimation:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v27 = sub_10080BB34;
      v28 = v16;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100006C7C;
      v26 = &unk_100A819F8;
      v17 = _Block_copy(&aBlock);
      v18 = v14;

      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = v15;
      v27 = sub_1002EE210;
      v28 = v19;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_10003264C;
      v26 = &unk_100A81A48;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      [v7 animateWithDuration:4 delay:v17 options:v20 animations:0.0 completion:0.0];
      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_10080990C(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    [v7 inheritedAnimationDuration];
    v10 = v9 != 0.0;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10080BB58;
    *(v12 + 24) = v11;
    v27 = sub_100177C4C;
    v28 = v12;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10001A7D4;
    v26 = &unk_100A81778;
    v13 = _Block_copy(&aBlock);
    v14 = v8;
    v15 = a2;

    [v7 performWithoutAnimation:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v27 = sub_10080BB34;
      v28 = v16;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100006C7C;
      v26 = &unk_100A817C8;
      v17 = _Block_copy(&aBlock);
      v18 = v14;

      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = v15;
      v27 = sub_1002EE210;
      v28 = v19;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_10003264C;
      v26 = &unk_100A81818;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      [v7 animateWithDuration:4 delay:v17 options:v20 animations:0.0 completion:0.0];
      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_100809C10(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    [v7 inheritedAnimationDuration];
    v10 = v9 != 0.0;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10080BACC;
    *(v12 + 24) = v11;
    v27 = sub_100177C4C;
    v28 = v12;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10001A7D4;
    v26 = &unk_100A81890;
    v13 = _Block_copy(&aBlock);
    v14 = v8;
    v15 = a2;

    [v7 performWithoutAnimation:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v27 = sub_10080BB34;
      v28 = v16;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100006C7C;
      v26 = &unk_100A818E0;
      v17 = _Block_copy(&aBlock);
      v18 = v14;

      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = v15;
      v27 = sub_1002EA9D0;
      v28 = v19;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_10003264C;
      v26 = &unk_100A81930;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      [v7 animateWithDuration:4 delay:v17 options:v20 animations:0.0 completion:0.0];
      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_100809F14(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = objc_opt_self();
    v8 = a1;
    [v7 inheritedAnimationDuration];
    v10 = v9 != 0.0;
    v11 = swift_allocObject();
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v11 + 32) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_10080BB58;
    *(v12 + 24) = v11;
    v27 = sub_100177C4C;
    v28 = v12;
    aBlock = _NSConcreteStackBlock;
    v24 = 1107296256;
    v25 = sub_10001A7D4;
    v26 = &unk_100A81660;
    v13 = _Block_copy(&aBlock);
    v14 = v8;
    v15 = a2;

    [v7 performWithoutAnimation:v13];
    _Block_release(v13);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      __break(1u);
    }

    else
    {
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      v27 = sub_10080BB34;
      v28 = v16;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_100006C7C;
      v26 = &unk_100A816B0;
      v17 = _Block_copy(&aBlock);
      v18 = v14;

      v19 = swift_allocObject();
      v19[2] = a3;
      v19[3] = a4;
      v19[4] = v15;
      v27 = sub_1002EE210;
      v28 = v19;
      aBlock = _NSConcreteStackBlock;
      v24 = 1107296256;
      v25 = sub_10003264C;
      v26 = &unk_100A81700;
      v20 = _Block_copy(&aBlock);
      v21 = v15;

      [v7 animateWithDuration:4 delay:v17 options:v20 animations:0.0 completion:0.0];
      _Block_release(v20);
      _Block_release(v17);
    }
  }
}

void sub_10080A218(void *a1, char a2, void *a3)
{
  [a1 setHidden:0];
  [a1 setAlpha:0.0];
  v6 = [a1 superview];
  [v6 bringSubviewToFront:a1];

  if (a2)
  {

    [a3 layoutIfNeeded];
  }
}

void sub_10080A2CC()
{
  v0 = [objc_opt_self() systemIndigoColor];
  v1 = [v0 colorWithAlphaComponent:0.15];

  qword_100AF3998 = v1;
}

char *sub_10080A33C(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView] = 0;
  v9 = &v4[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_deleteBanner];
  *v9 = DebugData.init(name:);
  v9[1] = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *&v4[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_outerCornerRadius] = _Q0;
  v4[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing] = 0;
  *&v4[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIcon] = 0;
  v4[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIconImageNeedsUpdate] = 0;
  v20.receiver = v4;
  v20.super_class = type metadata accessor for CanvasPhotosMemoriesBanner();
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", a1, a2, a3, a4);
  [v15 setClipsToBounds:1];
  if (qword_100AD0B48 != -1)
  {
    swift_once();
  }

  [v15 setBackgroundColor:qword_100AF3998];
  sub_10080AAD0();
  if (qword_100AD0A10 != -1)
  {
    swift_once();
  }

  v21 = xmmword_100B30EE8;
  v22 = *&qword_100B30EF8;
  v16 = [v15 layer];
  v19[0] = v21;
  v19[1] = v22;
  v19[2] = v18;
  v19[3] = v18;
  [v16 setCornerRadii:v19];

  return v15;
}

id sub_10080A550()
{
  v1 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v1 - 8);
  v3 = &v10 - v2;
  v4 = type metadata accessor for CanvasPhotosMemoriesBanner();
  v10.receiver = v0;
  v10.super_class = v4;
  result = objc_msgSendSuper2(&v10, "layoutSubviews");
  if (*(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIconImageNeedsUpdate) == 1)
  {
    *(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIconImageNeedsUpdate) = 0;
    v6 = type metadata accessor for TaskPriority();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    type metadata accessor for MainActor();

    v8 = static MainActor.shared.getter();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = &protocol witness table for MainActor;
    v9[4] = v7;

    sub_1003E9BBC(0, 0, v3, &unk_10096C7A0, v9);
  }

  return result;
}

uint64_t sub_10080A6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  type metadata accessor for MainActor();
  v4[7] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[8] = v6;
  v4[9] = v5;

  return _swift_task_switch(sub_10080A76C, v6, v5);
}

uint64_t sub_10080A76C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v2 = *(Strong + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIcon), *(v0 + 80) = v2, v3 = Strong, v4 = v2, v3, v2))
  {
    if (qword_100ACFE18 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_10080A8D4;

    return sub_1004A7644();
  }

  else
  {

    **(v0 + 40) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10080A8D4(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 96) = a1;

  v3 = *(v2 + 72);
  v4 = *(v2 + 64);

  return _swift_task_switch(sub_10080A9FC, v4, v3);
}

uint64_t sub_10080A9FC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  [v2 setImage:v1];

  **(v0 + 40) = 0;
  v3 = *(v0 + 8);

  return v3();
}

void sub_10080AAD0()
{
  v1 = [objc_allocWithZone(UIImageView) init];
  [v1 setContentMode:1];
  [v1 _setCornerRadius:4.0];
  v33 = objc_opt_self();
  v2 = [v33 labelColor];
  [v1 setTintColor:v2];

  [v0 addSubview:v1];
  [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
  v3 = [v1 widthAnchor];
  v4 = [v3 constraintEqualToConstant:20.0];

  [v4 setActive:1];
  v5 = [v1 superview];
  if (v5)
  {
    v6 = v5;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v1 centerYAnchor];
    v8 = [v6 centerYAnchor];
    v9 = [v7 constraintEqualToAnchor:v8];

    [v9 setConstant:0.0];
    [v9 setActive:1];
  }

  v10 = [v1 superview];
  if (v10)
  {
    v11 = v10;
    [v1 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = [v1 leadingAnchor];
    v13 = [v11 leadingAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];

    [v14 setConstant:6.0];
    [v14 setActive:1];
  }

  v15 = *&v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIcon];
  *&v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIcon] = v1;
  v16 = v1;

  v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIconImageNeedsUpdate] = 1;
  v17 = [objc_allocWithZone(UILabel) init];
  v34 = v17;
  if (qword_100AD03F0 != -1)
  {
    swift_once();
    v17 = v34;
  }

  [v17 setFont:qword_100B303E8];
  v18 = [v33 labelColor];
  [v34 setTextColor:v18];

  if (qword_100AD0718 != -1)
  {
    swift_once();
  }

  v19 = String._bridgeToObjectiveC()();
  [v34 setText:v19];

  [v34 setNumberOfLines:0];
  [v0 addSubview:v34];
  [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
  v20 = [v34 leadingAnchor];
  v21 = [v16 trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];

  [v22 setConstant:6.0];
  [v22 setActive:1];

  v23 = [v34 superview];
  if (v23)
  {
    v24 = v23;
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v25 = [v34 topAnchor];
    v26 = [v24 topAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];

    [v27 setConstant:6.0];
    [v27 setActive:1];
  }

  v28 = [v34 superview];
  if (v28)
  {
    v29 = v28;
    [v34 setTranslatesAutoresizingMaskIntoConstraints:0];
    v30 = [v34 trailingAnchor];
    v31 = [v29 trailingAnchor];
    v32 = [v30 constraintEqualToAnchor:v31];

    [v32 setConstant:0.0];
    [v32 setActive:1];

    v16 = v32;
    v34 = v29;
  }
}

void sub_10080B0F8()
{
  v1 = OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView;
  if (!*&v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView])
  {
    type metadata accessor for CanvasAssetDeleteView();
    v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v3 = *&v0[v1];
    *&v0[v1] = v2;
    v4 = v2;

    v21 = v4;
    [v0 addSubview:v21];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = [v21 widthAnchor];
    v6 = [v5 constraintEqualToConstant:44.0];

    [v6 setActive:1];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [v21 heightAnchor];
    v8 = [v7 constraintEqualToConstant:44.0];

    [v8 setActive:1];
    v9 = [v21 superview];
    if (v9)
    {
      v10 = v9;
      [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      v11 = [v21 topAnchor];
      v12 = [v10 topAnchor];
      v13 = [v11 constraintEqualToAnchor:v12];

      [v13 setConstant:0.0];
      [v13 setActive:1];
    }

    v14 = [v21 superview];
    if (v14)
    {
      v15 = v14;
      [v21 setTranslatesAutoresizingMaskIntoConstraints:0];
      v16 = [v21 trailingAnchor];
      v17 = [v15 trailingAnchor];
      v18 = [v16 constraintEqualToAnchor:v17];

      [v18 setConstant:0.0];
      [v18 setActive:1];
    }

    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = &v21[OBJC_IVAR____TtC7Journal21CanvasAssetDeleteView_tapCompletion];
    *v20 = sub_10080B94C;
    v20[1] = v19;

    sub_100809304(v2, v0, DebugData.init(name:), 0);
  }
}

uint64_t sub_10080B4A4()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = *(result + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_deleteBanner);
    v2 = result;

    v1();
  }

  return result;
}

void sub_10080B524()
{
  v1 = *&v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView];
  if (v1)
  {
    v2 = objc_opt_self();
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_10043C168;
    *(v4 + 24) = v3;
    v17 = sub_100028EF4;
    v18 = v4;
    v13 = _NSConcreteStackBlock;
    v14 = 1107296256;
    v15 = sub_10001A7D4;
    v16 = &unk_100A813E0;
    v5 = _Block_copy(&v13);
    v6 = v1;

    [v2 performWithoutAnimation:v5];
    _Block_release(v5);
    LOBYTE(v5) = swift_isEscapingClosureAtFileLocation();

    if (v5)
    {
      __break(1u);
    }

    else
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v6;
      v17 = sub_10043C170;
      v18 = v7;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_100006C7C;
      v16 = &unk_100A81430;
      v8 = _Block_copy(&v13);
      v9 = v6;

      v10 = swift_allocObject();
      v10[2] = sub_10080B81C;
      v10[3] = 0;
      v10[4] = v0;
      v17 = sub_1002EE210;
      v18 = v10;
      v13 = _NSConcreteStackBlock;
      v14 = 1107296256;
      v15 = sub_10003264C;
      v16 = &unk_100A81480;
      v11 = _Block_copy(&v13);
      v12 = v0;

      [v2 animateWithDuration:4 delay:v8 options:v11 animations:0.0 completion:0.0];

      _Block_release(v11);
      _Block_release(v8);
    }
  }

  else if ((v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing] & 1) == 0)
  {
    *&v0[OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView] = 0;
  }
}

void sub_10080B81C(uint64_t a1)
{
  if ((*(a1 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing) & 1) == 0)
  {
    v2 = OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView;
    if (*(a1 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView))
    {
      v3 = a1;
      [*(a1 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView) removeFromSuperview];
      a1 = v3;
      v4 = *(v3 + v2);
    }

    else
    {
      v4 = 0;
    }

    *(a1 + v2) = 0;
  }
}

id sub_10080B894()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CanvasPhotosMemoriesBanner();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10080B95C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032ECC;

  return sub_10080A6D4(a1, v4, v5, v6);
}

void sub_10080BA10()
{
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_xPlatterView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_deleteBanner);
  *v1 = DebugData.init(name:);
  v1[1] = 0;
  __asm { FMOV            V0.2D, #12.0 }

  *(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_outerCornerRadius) = _Q0;
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_isEditing) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIcon) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal26CanvasPhotosMemoriesBanner_bannerIconImageNeedsUpdate) = 0;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t sub_10080BB74()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

uint64_t sub_10080BBE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

double sub_10080BC84()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static UIView.Invalidating.subscript.getter();

  return v1;
}

void sub_10080BCF0()
{
  v1 = v0;
  v21 = [v0 layer];
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    p_ivar_lyt = v2;
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v4 = v22;
    if (v22 >> 62)
    {
      goto LABEL_20;
    }

    for (i = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v24 = _swiftEmptyArrayStorage;
      sub_10002430C(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v20 = p_ivar_lyt;
      v6 = 0;
      v7 = v24;
      p_ivar_lyt = &InsightsPlacesDetailView.ContentViewController.ivar_lyt;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          goto LABEL_11;
        }

        if ((v6 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
LABEL_11:
        v9 = v8;
        v10 = [v8 CGColor];
        type metadata accessor for CGColor(0);
        v23 = v11;

        *&v22 = v10;
        v24 = v7;
        v13 = *(v7 + 2);
        v12 = *(v7 + 3);
        if (v13 >= v12 >> 1)
        {
          sub_10002430C((v12 > 1), v13 + 1, 1);
          v7 = v24;
        }

        ++v6;
        *(v7 + 2) = v13 + 1;
        sub_10002432C(&v22, &v7[4 * v13 + 4]);
        if (i == v6)
        {

          p_ivar_lyt = v20;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      ;
    }

LABEL_22:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [p_ivar_lyt setColors:isa];

    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    v15 = v22;
    if (v22)
    {
      sub_100605EB8(v22);

      sub_1000065A8(0, &unk_100ADE730);
      v15 = Array._bridgeToObjectiveC()().super.isa;
    }

    [p_ivar_lyt setLocations:v15];

    v16 = [v1 effectiveUserInterfaceLayoutDirection];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    if (v16 == 1)
    {
      v17 = 1.0 - *&v22;
    }

    else
    {
      v17 = *&v22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    [p_ivar_lyt setStartPoint:{v17, *(&v22 + 1)}];
    v18 = [v1 effectiveUserInterfaceLayoutDirection];
    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    if (v18 == 1)
    {
      v19 = 1.0 - *&v22;
    }

    else
    {
      v19 = *&v22;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static UIView.Invalidating.subscript.getter();

    [p_ivar_lyt setEndPoint:{v19, *(&v22 + 1)}];
  }

  else
  {
  }
}

id sub_10080C328(void *a1)
{
  v33 = a1;
  v2 = sub_1000F24EC(&qword_100AF3A98);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v28 - v3;
  v5 = sub_1000F24EC(&qword_100AF3AA0);
  v29 = *(v5 - 8);
  v30 = v5;
  __chkstk_darwin(v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for UIView.Invalidations.Properties();
  __chkstk_darwin(v8);
  v9 = sub_1000F24EC(&qword_100AF3AA8);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  v13 = OBJC_IVAR____TtC7Journal12GradientView__colors;
  v35 = _swiftEmptyArrayStorage;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AEB660);
  sub_100015838();
  UIView.Invalidating.init(wrappedValue:_:)();
  (*(v10 + 32))(&v1[v13], v12, v9);
  v14 = OBJC_IVAR____TtC7Journal12GradientView__locations;
  v35 = 0;
  UIView.Invalidations.Properties.init()();
  sub_1000F24EC(&qword_100AF3A68);
  sub_1000264D0();
  UIView.Invalidating.init(wrappedValue:_:)();
  v15 = v1;
  (*(v29 + 32))(&v1[v14], v7, v30);
  v16 = OBJC_IVAR____TtC7Journal12GradientView__startPoint;
  static UnitPoint.top.getter();
  v35 = v17;
  v36 = v18;
  UIView.Invalidations.Properties.init()();
  sub_1000265D4();
  UIView.Invalidating.init(wrappedValue:_:)();
  v19 = v32;
  v20 = *(v31 + 32);
  v20(&v15[v16], v4, v32);
  v21 = OBJC_IVAR____TtC7Journal12GradientView__endPoint;
  static UnitPoint.bottom.getter();
  v35 = v22;
  v36 = v23;
  UIView.Invalidations.Properties.init()();
  UIView.Invalidating.init(wrappedValue:_:)();
  v20(&v15[v21], v4, v19);
  v24 = type metadata accessor for GradientView();
  v34.receiver = v15;
  v34.super_class = v24;
  v25 = v33;
  v26 = objc_msgSendSuper2(&v34, "initWithCoder:", v33);

  if (v26)
  {
  }

  return v26;
}

id sub_10080C748()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GradientView();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10080C8D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, void (*a5)(void))
{
  if (!*a2)
  {
    sub_1000F2A18(a3);
    type metadata accessor for UIView.Invalidations.Properties();
    a5();
    v7 = type metadata accessor for UIView.Invalidating();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_10080C96C()
{
  if (!qword_100AF3A88)
  {
    type metadata accessor for UIView.Invalidations.Properties();
    sub_1000265D4();
    v0 = type metadata accessor for UIView.Invalidating();
    if (!v1)
    {
      atomic_store(v0, &qword_100AF3A88);
    }
  }
}

void sub_10080CB0C()
{
  v10.receiver = v0;
  v10.super_class = type metadata accessor for NoThumbUISlider();
  objc_msgSendSuper2(&v10, "layoutSubviews");
  v1 = [v0 layer];
  v2 = [v1 sublayers];

  if (!v2)
  {
    return;
  }

  v3 = sub_10080CE88();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_12:

    return;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_12;
  }

LABEL_4:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v3 >> 62))
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (_CocoaArrayWrapper.endIndex.getter() < 2)
  {
    goto LABEL_12;
  }

LABEL_16:
  if ((v3 & 0xC000000000000001) != 0)
  {
    v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
    {
      __break(1u);
      return;
    }

    v8 = *(v3 + 40);
  }

  v9 = v8;

  [v9 bounds];
  [v9 setCornerRadius:CGRectGetHeight(v11) * 0.5];
}

id sub_10080CE30()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NoThumbUISlider();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_10080CE88()
{
  result = qword_100AF3AD8;
  if (!qword_100AF3AD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF3AD8);
  }

  return result;
}

void sub_10080CED4(void *a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v6 = type metadata accessor for JournalFeatureFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for IndexPath();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v3;
  if (*&v3[OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController])
  {
    v15 = *&v54[OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedFullScreenController];
    if (v15)
    {
      v16 = v15;
      sub_10080D688(v16, 0, 1);
    }
  }

  v17 = *(v11 + 16);
  v52 = a3;
  v17(v14, a3, v10, v12);
  v18 = *(a2 + OBJC_IVAR____TtC7Journal14EntryViewModel_gridAssetsAndSlimAsset);

  v19 = 1;
  if ((sub_10005AAB0(1) & 1) == 0)
  {
    v19 = *(a2 + 16);
  }

  v20 = objc_allocWithZone(type metadata accessor for FullScreenLegacyCollectionViewController());
  v21 = sub_1004D8774(v14, v18, v19);
  *&v21[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_delegate + 8] = &off_100A81A70;
  swift_unknownObjectWeakAssign();
  *&v21[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_entry] = a2;

  v21[OBJC_IVAR____TtC7Journal40FullScreenLegacyCollectionViewController_shouldSave] = (*(a2 + 16) & 1) == 0;
  v22 = [objc_allocWithZone(type metadata accessor for FullScreenAssetNavigationController()) initWithRootViewController:v21];
  v23 = [v22 view];
  if (!v23)
  {
    __break(1u);
    goto LABEL_31;
  }

  v24 = v23;
  v25 = [objc_opt_self() secondarySystemBackgroundColor];
  [v24 setBackgroundColor:v25];

  v26 = [objc_allocWithZone(UINavigationBarAppearance) init];
  [v26 configureWithTransparentBackground];
  v27 = v22;
  v28 = [v27 navigationBar];
  v29 = v26;
  [v28 setScrollEdgeAppearance:v29];

  v30 = [v27 navigationBar];
  [v30 setCompactAppearance:v29];

  v31 = [v27 navigationBar];
  [v31 setStandardAppearance:v29];

  (*(v7 + 104))(v9, enum case for JournalFeatureFlags.suggestionsAPI(_:), v6);
  LOBYTE(v31) = JournalFeatureFlags.isEnabled.getter();
  (*(v7 + 8))(v9, v6);
  if ((v31 & 1) == 0)
  {
    v32 = v53;
    if (qword_100ACFD50 != -1)
    {
      swift_once();
    }

    sub_1003ED2C8(0, 1);
    goto LABEL_18;
  }

  v32 = v53;
  v33 = [v53 view];
  if (!v33)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v34 = v33;
  v35 = [v33 window];

  v36 = [v35 windowScene];
  if (v36)
  {
    if (qword_100ACFCD0 != -1)
    {
      swift_once();
    }

    if ([v36 _sceneComponentForKey:qword_100AE1160])
    {
      type metadata accessor for SuggestionsOverlayCoordinator.SceneComponent();
      if (swift_dynamicCastClass())
      {
        sub_1003ABAF8();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

LABEL_18:
  v37 = v32;
  v38 = [v37 presentedViewController];
  if (v38)
  {
    do
    {
      v39 = v38;

      v38 = [v39 presentedViewController];
      v37 = v39;
    }

    while (v38);
  }

  else
  {
    v39 = v37;
  }

  v40 = [v39 traitCollection];
  v41 = [v40 userInterfaceIdiom];

  if (v41 == 5)
  {
    [v27 setModalPresentationStyle:0];
    sub_1004841B0();
    v42 = static UIViewControllerTransition.crossDissolve.getter();
  }

  else
  {
    sub_1004841B0();
    v42 = sub_1004B71D4(v52);
  }

  v43 = v42;
  [v27 setPreferredTransition:v42];

  v44 = [v27 presentationController];
  if (v44)
  {
    [v44 setDelegate:v21];
  }

  v45 = swift_allocObject();
  v46 = v54;
  v45[2] = v54;
  v45[3] = v27;
  v45[4] = v21;
  aBlock[4] = sub_10080DB0C;
  aBlock[5] = v45;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100006C7C;
  aBlock[3] = &unk_100A81AB0;
  v47 = _Block_copy(aBlock);
  v48 = v27;
  v49 = v46;
  v50 = v21;

  [v39 presentViewController:v48 animated:1 completion:v47];
  _Block_release(v47);
}

void sub_10080D610(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController);
  *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController) = a2;
  v6 = a2;

  v8 = *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedFullScreenController);
  *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedFullScreenController) = a3;
  v7 = a3;
}

void sub_10080D688(void *a1, char a2, char a3)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (!*(*(Strong + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry) + OBJC_IVAR____TtC7Journal14EntryViewModel_slimAsset))
    {
      sub_100663B8C(2u);
    }
  }

  v9 = swift_allocObject();
  *(v9 + 16) = v3;
  *(v9 + 24) = a2 & 1;
  v12[4] = sub_10080DB18;
  v12[5] = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100006C7C;
  v12[3] = &unk_100A81B00;
  v10 = _Block_copy(v12);
  v11 = v3;

  [a1 dismissViewControllerAnimated:a3 & 1 completion:v10];
  _Block_release(v10);
}

id sub_10080D7E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FullScreenAssetControllerCoordinator();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10080D888(uint64_t a1, char a2)
{
  v4 = type metadata accessor for CanvasContentInputType();
  __chkstk_darwin(v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Notification();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController);
  *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController) = 0;

  v12 = [objc_opt_self() defaultCenter];
  if (qword_100ACFFC0 != -1)
  {
    swift_once();
  }

  v21 = 0u;
  v22 = 0u;
  v13 = qword_100B2FBB0;
  Notification.init(name:object:userInfo:)();
  isa = Notification._bridgeToObjectiveC()().super.isa;
  (*(v8 + 8))(v10, v7);
  [v12 postNotification:isa];

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = Strong[OBJC_IVAR____TtC7Journal20CanvasViewController_focusedTextViewBeforeFullScreenAssetAppeared];
    if (v17 == 2)
    {
    }

    else
    {
      *v6 = v17 & 1;
      swift_storeEnumTagMultiPayload();
      v21 = 0u;
      v22 = 0u;
      sub_1003B5E4C(v6, &v21);

      sub_1000261D4(&v21);
      sub_1001EDD48(v6);
    }
  }

  result = swift_unknownObjectWeakAssign();
  if (a2)
  {
    v19 = *(a1 + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_onDelete);

    v19(v20);
  }

  return result;
}

uint64_t sub_10080DB2C()
{
  v1 = type metadata accessor for AssetType();
  v2 = *(v1 - 1);
  __chkstk_darwin(v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry);
  v6 = OBJC_IVAR____TtC7Journal14EntryViewModel_allAssets;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v34 = _swiftEmptyArrayStorage;
  if (v7 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {

    if (!i)
    {
      break;
    }

    v25 = v1;
    v26 = v4;
    v9 = 0;
    v30 = v7 & 0xFFFFFFFFFFFFFF8;
    v31 = v7 & 0xC000000000000001;
    v27 = enum case for AssetType.photo(_:);
    v10 = (v2 + 104);
    v4 = (v2 + 8);
    v24 = enum case for AssetType.livePhoto(_:);
    HIDWORD(v22) = enum case for AssetType.video(_:);
    v28 = i;
    v29 = v7;
    v23 = (v2 + 104);
    while (1)
    {
      if (v31)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v30 + 16))
        {
          goto LABEL_25;
        }

        v12 = *(v7 + 8 * v9 + 32);
      }

      v1 = v12;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v33 = v9 + 1;
      v13 = OBJC_IVAR____TtC7Journal5Asset_type;
      v14 = *v10;
      v15 = v25;
      v16 = v26;
      (*v10)(v26, v27, v25);
      sub_10080F594(&qword_100ADC690, &type metadata accessor for AssetType);
      v32 = v13;
      v17 = v1;
      v2 = dispatch thunk of static Equatable.== infix(_:_:)();
      v1 = *v4;
      (*v4)(v16, v15);
      if (v2 & 1) != 0 || (v14(v16, v24, v15), v2 = dispatch thunk of static Equatable.== infix(_:_:)(), (v1)(v16, v15), (v2))
      {

        v11 = v28;
        v7 = v29;
      }

      else
      {
        v14(v16, HIDWORD(v22), v15);
        v18 = dispatch thunk of static Equatable.== infix(_:_:)();
        (v1)(v16, v15);
        if (v18)
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        v11 = v28;
        v7 = v29;
        v10 = v23;
      }

      ++v9;
      if (v33 == v11)
      {
        v19 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  v19 = _swiftEmptyArrayStorage;
LABEL_20:

  if ((v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
  {
    v20 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v20 = *(v19 + 2);
  }

  return v20;
}

uint64_t sub_10080DECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10080F594(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
  swift_beginAccess();
  v5 = type metadata accessor for Date();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_10080DFC4(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1, v3);
  return sub_1003C88F8(v5);
}

void sub_10080E090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v111 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v111 - v11;
  v13 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v13 - 8);
  v15 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v111 - v17;
  __chkstk_darwin(v19);
  v135 = &v111 - v20;
  __chkstk_darwin(v21);
  v139 = &v111 - v22;
  v138 = type metadata accessor for JournalFeatureFlags();
  v23 = *(v138 - 8);
  __chkstk_darwin(v138);
  v137 = &v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1000405A8(9, a2))
  {

    sub_10065E56C();
    return;
  }

  v117 = v15;
  v127 = v12;
  v128 = v9;
  v129 = v6;
  v25 = a2 + 56;
  v26 = 1 << *(a2 + 32);
  v27 = -1;
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  v28 = v27 & *(a2 + 56);
  v133 = OBJC_IVAR____TtC7Journal20CanvasViewController_journalEntry;
  v126 = OBJC_IVAR____TtC7Journal20CanvasViewController_gridStackView;
  v29 = OBJC_IVAR____TtC7Journal14EntryViewModel_date;
  v124 = OBJC_IVAR____TtC7Journal20CanvasViewController_coordinator;
  v118 = OBJC_IVAR____TtC7Journal20CanvasViewController____lazy_storage___textView;

  v130 = a1;
  v125 = v29;
  swift_beginAccess();
  v30 = 0;
  v119 = 0;
  v31 = (v26 + 63) >> 6;
  v123 = (v7 + 16);
  v131 = (v7 + 8);
  v116 = (v7 + 24);
  v122 = enum case for JournalFeatureFlags.enhancedSync(_:);
  v121 = (v23 + 104);
  v120 = (v23 + 8);
  v32 = &unk_10096C968;
  v33 = a2;
  v136 = a2;
  v134 = v3;
  while (v28)
  {
LABEL_13:
    v35 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v36 = *(*(v33 + 48) + (v35 | (v30 << 6)));
    if (v36 <= 5)
    {
      if (v36 > 2)
      {
        if (v36 == 3)
        {
          v132 = v18;
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          v60 = v144;
          v61 = *v123;
          v62 = v127;
          v63 = v129;
          (*v123)(v127, v130 + v125, v129);
          v64 = OBJC_IVAR____TtC7Journal24CanvasBarItemCoordinator__titleDate;
          swift_beginAccess();
          v115 = v60;
          v65 = v60 + v64;
          v66 = v128;
          v61(v128, v65, v63);
          sub_10080F594(&qword_100AD5BF0, &type metadata accessor for Date);
          v67 = v62;
          LOBYTE(v61) = dispatch thunk of static Equatable.== infix(_:_:)();
          v68 = *v131;
          (*v131)(v66, v63);
          if (v61)
          {
            v69 = v115;
            swift_beginAccess();
            v70 = v67;
            (*v116)(v69 + v64, v67, v63);
            swift_endAccess();
          }

          else
          {
            KeyPath = swift_getKeyPath();
            v113 = &v111;
            __chkstk_darwin(KeyPath);
            v114 = v68;
            v81 = v115;
            *(&v111 - 2) = v115;
            *(&v111 - 1) = v67;
            v70 = v67;
            v144 = v81;
            sub_10080F594(&qword_100AEBE20, type metadata accessor for CanvasBarItemCoordinator);
            v82 = v119;
            ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
            v119 = v82;
            v68 = v114;
          }

          v33 = v136;
          (v68)(v70, v63);
          v3 = v134;
          v18 = v132;
          v32 = &unk_10096C968;
        }

        else if (v36 == 4)
        {
          v45 = v32;
          v46 = *(v3 + v133);
          *(*(v3 + v126) + OBJC_IVAR____TtC7Journal15CanvasStackView_journalEntry) = v46;
          swift_retain_n();

          sub_1005A5DFC();
          if (*(v46 + OBJC_IVAR____TtC7Journal14EntryViewModel_showPhotoMemoryBanner) == 1)
          {
            sub_1005A723C(1);
          }

          v47 = sub_100049F2C();
          if (v47)
          {
            sub_10053256C(v47);
            v49 = v48;

            if (v49)
            {

              sub_1005A6D60();
            }
          }

          sub_1005A6D60();
          sub_1006612C0();
          v33 = v136;
          v32 = v45;
        }

        else
        {
          sub_100663B8C(1u);
          swift_getKeyPath();
          swift_getKeyPath();
          static UIViewController.ViewLoading.subscript.getter();

          sub_1003CBF6C(*(*(v3 + v133) + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset) != 0);

          v71 = sub_100658B00();
          v72 = v71;
          v73 = *&v71[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
          if (!v73)
          {

            goto LABEL_85;
          }

          v74 = type metadata accessor for TaskPriority();
          v115 = *(v74 - 8);
          (*(v115 + 56))(v18, 1, 1, v74);
          type metadata accessor for MainActor();
          swift_retain_n();
          v75 = v72;
          v76 = static MainActor.shared.getter();
          v77 = swift_allocObject();
          v77[2] = v76;
          v77[3] = &protocol witness table for MainActor;
          v77[4] = v75;
          v114 = v75;
          v78 = v115;
          v77[5] = v73;
          v132 = v18;
          v79 = v117;
          sub_1001E6194(v18, v117);
          v80 = (*(v78 + 48))(v79, 1, v74);

          if (v80 == 1)
          {
            sub_100004F84(v79, &qword_100AD5170);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (*(v78 + 8))(v79, v74);
          }

          v115 = v73;
          v83 = v77[2];
          swift_unknownObjectRetain();

          v18 = v132;
          if (v83)
          {
            swift_getObjectType();
            v84 = dispatch thunk of Actor.unownedExecutor.getter();
            v86 = v85;
            swift_unknownObjectRelease();
          }

          else
          {
            v84 = 0;
            v86 = 0;
          }

          sub_100004F84(v18, &qword_100AD5170);
          v87 = swift_allocObject();
          *(v87 + 16) = &unk_10094C588;
          *(v87 + 24) = v77;
          if (v86 | v84)
          {
            v145 = 0;
            v146 = 0;
            v147 = v84;
            v148 = v86;
          }

          v33 = v136;
          v3 = v134;
          swift_task_create();

          v32 = &unk_10096C968;
        }
      }

      else if (v36)
      {
        if (v36 != 1)
        {
          goto LABEL_33;
        }

        sub_10066C3CC();
        sub_1003B66C8();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v38 = Strong;
          objc_opt_self();
          v39 = swift_dynamicCastObjCClass();
          if (!v39)
          {

            goto LABEL_65;
          }

          v40 = [v39 viewControllers];

          sub_1004B7AE8();
          v41 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

          if (v41 >> 62)
          {
            if (!_CocoaArrayWrapper.endIndex.getter())
            {
LABEL_64:

              goto LABEL_65;
            }
          }

          else if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_64;
          }

          if ((v41 & 0xC000000000000001) != 0)
          {
            v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_91;
            }

            v42 = *(v41 + 32);
          }

          v43 = v42;

          type metadata accessor for LocationPickerCollectionViewController(0);
          if (swift_dynamicCastClass())
          {
            sub_1006DD460();
          }

          else
          {
            type metadata accessor for CanvasLocationsController();
            if (swift_dynamicCastClass())
            {
              sub_100839A20();
              sub_1008396D0();
            }
          }
        }

LABEL_65:
        v132 = v18;
        swift_getKeyPath();
        swift_getKeyPath();
        static UIViewController.ViewLoading.subscript.getter();

        sub_1003CBF6C(*(*(v3 + v133) + OBJC_IVAR____TtC7Journal14EntryViewModel_multiPinMapAsset) != 0);

        v88 = sub_100658B00();
        v89 = v88;
        v90 = *&v88[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry];
        if (v90)
        {
          v91 = type metadata accessor for TaskPriority();
          v113 = *(v91 - 8);
          v92 = v139;
          (v113[7])(v139, 1, 1, v91);
          type metadata accessor for MainActor();
          swift_retain_n();
          v93 = v89;
          v94 = static MainActor.shared.getter();
          v95 = swift_allocObject();
          v95[2] = v94;
          v95[3] = &protocol witness table for MainActor;
          v95[4] = v93;
          v114 = v93;
          v96 = v113;
          v115 = v90;
          v95[5] = v90;
          v97 = v135;
          sub_1001E6194(v92, v135);
          LODWORD(v92) = (v96[6])(v97, 1, v91);

          if (v92 == 1)
          {
            sub_100004F84(v97, &qword_100AD5170);
          }

          else
          {
            TaskPriority.rawValue.getter();
            (v96[1])(v97, v91);
          }

          v98 = v95[2];
          swift_unknownObjectRetain();

          if (v98)
          {
            swift_getObjectType();
            v99 = dispatch thunk of Actor.unownedExecutor.getter();
            v101 = v100;
            swift_unknownObjectRelease();
          }

          else
          {
            v99 = 0;
            v101 = 0;
          }

          sub_100004F84(v139, &qword_100AD5170);
          v102 = swift_allocObject();
          *(v102 + 16) = &unk_10096C9D8;
          *(v102 + 24) = v95;
          if (v101 | v99)
          {
            v140 = 0;
            v141 = 0;
            v142 = v99;
            v143 = v101;
          }

          v3 = v134;
          swift_task_create();
        }

        else
        {
        }

        v103 = *(v3 + v118);
        v18 = v132;
        if (*&v103[OBJC_IVAR____TtC7Journal15JournalTextView_journalEntry])
        {

          v104 = v103;
          v105 = sub_10029F620();

          if (v105)
          {
            v106 = v105;
            goto LABEL_81;
          }
        }

        else
        {
          v107 = v103;
        }

        v106 = _swiftEmptyArrayStorage;
LABEL_81:
        v32 = &unk_10096C968;
        if (v106 >> 62)
        {
          v110 = _CocoaArrayWrapper.endIndex.getter();
          v32 = &unk_10096C968;

          if (v110)
          {
            goto LABEL_84;
          }

LABEL_83:
          sub_1002B30D0(v109);
          goto LABEL_84;
        }

        v108 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (!v108)
        {
          goto LABEL_83;
        }

LABEL_84:

LABEL_85:
        v33 = v136;
      }

      else
      {
        v51 = v18;
        v52 = v32;
        v53 = v137;
        v54 = v33;
        v55 = v138;
        (*v121)(v137, v122, v138);
        v56 = JournalFeatureFlags.isEnabled.getter();
        v57 = v53;
        v32 = v52;
        v18 = v51;
        v3 = v134;
        v58 = v55;
        v33 = v54;
        (*v120)(v57, v58);
        if ((v56 & 1) == 0)
        {
          goto LABEL_43;
        }
      }
    }

    else if (v36 > 9)
    {
      if (v36 != 10 && v36 == 11)
      {
LABEL_43:
        v59 = sub_100658B00();
        sub_1002B0690();
      }

      else
      {
LABEL_33:
        sub_100657CA4();
      }
    }

    else if ((v36 - 7) >= 3)
    {
      goto LABEL_43;
    }
  }

  while (1)
  {
    v34 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v34 >= v31)
    {

      return;
    }

    v28 = *(v25 + 8 * v34);
    ++v30;
    if (v28)
    {
      v30 = v34;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
}

uint64_t sub_10080F1A8()
{
  v0 = sub_1000F24EC(&qword_100AD6238);
  __chkstk_darwin(v0 - 8);
  v2 = &v17 - v1;
  v3 = sub_1000F24EC(&qword_100AD6250);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - v5;
  v7 = sub_1000F24EC(&unk_100ADC6A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_1000F24EC(&qword_100ADC6B0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - v12;
  MergeableEntryAttributes.MutatingAction.text.getter();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_100004F84(v9, &unk_100ADC6A0);
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v14 = sub_100658B00();
    sub_1002B1568(v13);

    (*(v11 + 8))(v13, v10);
  }

  MergeableEntryAttributes.MutatingAction.title.getter();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_100004F84(v2, &qword_100AD6238);
  }

  (*(v4 + 32))(v6, v2, v3);
  v16 = sub_100658670();
  sub_100190240(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_10080F4D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_1002B3464(a1, v4, v5, v7, v6);
}

uint64_t sub_10080F594(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10080F5E0()
{
  v1 = type metadata accessor for AssetAttachment.AssetType(0);
  __chkstk_darwin(v1);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100068AC8(v0 + OBJC_IVAR____TtC7Journal15AssetAttachment_assetType, v3, type metadata accessor for AssetAttachment.AssetType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v5 = 0x6567616D69;
    if (EnumCaseMultiPayload)
    {
      v6 = type metadata accessor for AssetAttachment.AssetType;
    }

    else
    {
      v6 = type metadata accessor for AssetAttachment.AssetType.FilePathType;
    }

    sub_10004FECC(v3, v6);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_10004FECC(v3, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    return 0x6F65646976;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    sub_10004FECC(v3, type metadata accessor for AssetAttachment.AssetType.FilePathType);
    return 0x6F69647561;
  }

  else
  {

    v7 = sub_1000F24EC(&qword_100AD33B8);
    sub_10004FECC(&v3[*(v7 + 48)], type metadata accessor for AssetAttachment.AssetType.FilePathType);
    return 0x726568746FLL;
  }

  return v5;
}

unint64_t sub_10080F78C()
{
  v1 = sub_1000F24EC(&unk_100AD6DD0);
  __chkstk_darwin(v1 - 8);
  v3 = &v21 - v2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = 0;
  v23 = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  v22 = 0xD000000000000012;
  v23 = 0x800000010090A900;
  v21._countAndFlagsBits = *(v0 + 16);
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0x203A656D616E20;
  v9._object = 0xE700000000000000;
  String.append(_:)(v9);
  v10._countAndFlagsBits = sub_10080F5E0();
  v10._object = 0xE500000000000000;
  String.append(_:)(v10);

  v11 = v22;
  sub_1000A7D30(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_100004F84(v3, &unk_100AD6DD0);
  }

  else
  {
    (*(v5 + 32))(v7, v3, v4);
    v21._countAndFlagsBits = 0;
    v21._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v21._countAndFlagsBits = 0x203A6C727520;
    v21._object = 0xE600000000000000;
    sub_100811424(&qword_100ADEFD0, &type metadata accessor for URL);
    v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v12);

    v13._countAndFlagsBits = 0x3A73747369786520;
    v13._object = 0xE900000000000020;
    String.append(_:)(v13);
    v14 = [objc_opt_self() defaultManager];
    URL.path.getter();
    v15 = String._bridgeToObjectiveC()();

    v16 = [v14 fileExistsAtPath:v15];

    if (v16)
    {
      v17 = 1702195828;
    }

    else
    {
      v17 = 0x65736C6166;
    }

    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = v18;
    String.append(_:)(*&v17);

    String.append(_:)(v21);

    (*(v5 + 8))(v7, v4);
    return v22;
  }

  return v11;
}

uint64_t sub_10080FB30()
{
  v0 = type metadata accessor for Logger();
  sub_100006118(v0, qword_100AF3B28);
  v1 = sub_10000617C(v0, qword_100AF3B28);
  if (qword_100AD01C0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000617C(v0, qword_100B2FFE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10080FC00(uint64_t a1)
{
  v115 = type metadata accessor for FileStoreConfiguration();
  v3 = *(v115 - 8);
  __chkstk_darwin(v115);
  v5 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URL();
  v119 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v8 = __chkstk_darwin(v7);
  v9 = __chkstk_darwin(v8);
  v10 = __chkstk_darwin(v9);
  v12 = &v108 - v11;
  v13 = __chkstk_darwin(v10);
  v118 = &v108 - v17;
  v18 = *(v1 + OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath);
  if (!*(v1 + OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath + 8))
  {
    return v18;
  }

  v112 = v3;
  v110 = v16;
  v111 = v15;
  v113 = v14;
  v117 = v13;
  v19 = objc_opt_self();

  v114 = v19;
  v20 = [v19 defaultManager];
  URL.path.getter();
  v21 = String._bridgeToObjectiveC()();

  v22 = [v20 fileExistsAtPath:v21];

  v116 = a1;
  if (v22)
  {
    v23 = objc_allocWithZone(NSString);
    v24 = String._bridgeToObjectiveC()();

    v25 = [v23 initWithString:v24];

    v26 = String._bridgeToObjectiveC()();
    v27 = [v25 stringByAppendingPathComponent:v26];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v121[0] = v28;
    v121[1] = v30;
    v31 = URL.pathExtension.getter();
    v33 = v32;

    v34 = HIBYTE(v33) & 0xF;
    if ((v33 & 0x2000000000000000) == 0)
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v120._countAndFlagsBits = 46;
      v120._object = 0xE100000000000000;
      v35._countAndFlagsBits = URL.pathExtension.getter();
      String.append(_:)(v35);

      String.append(_:)(v120);

      v28 = v121[0];
    }

    v36 = v117;
    v37 = v115;
    static FileStoreConfiguration.shared.getter();
    v109 = v28;
    FileStoreConfiguration.getAttachmentURL(from:)();
    v112[1](v5, v37);
    v38 = [v114 defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v39);
    v41 = v40;
    v42 = v119;
    v43 = *(v119 + 8);
    v115 = v119 + 8;
    v112 = v43;
    (v43)(v12, v36);
    sub_1000F24EC(&qword_100AD77C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFileProtectionKey;
    v45 = qword_100AD0060;
    v46 = NSFileProtectionKey;
    if (v45 != -1)
    {
      swift_once();
    }

    sub_10000617C(v37, qword_100B2FC48);
    v47 = FileStoreConfiguration.protectionClass.getter();
    type metadata accessor for URLFileProtection(0);
    *(inited + 64) = v48;
    *(inited + 40) = v47;
    sub_100362FA8(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &qword_100ADFE90);
    type metadata accessor for FileAttributeKey(0);
    sub_100811424(&qword_100AD1C38, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v120._countAndFlagsBits = 0;
    LODWORD(v47) = [v38 createDirectoryAtURL:v41 withIntermediateDirectories:1 attributes:isa error:&v120];

    if (v47)
    {
      v50 = v120._countAndFlagsBits;
      v51 = [v114 defaultManager];
      v52 = v118;
      URL._bridgeToObjectiveC()(v53);
      v55 = v54;
      v120._countAndFlagsBits = 0;
      v56 = [v51 removeItemAtURL:v54 error:&v120];

      if (v56)
      {
        v57 = v120._countAndFlagsBits;
      }

      else
      {
        v61 = v120._countAndFlagsBits;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v62 = [v114 defaultManager];
      URL._bridgeToObjectiveC()(v63);
      v65 = v64;
      URL._bridgeToObjectiveC()(v66);
      v68 = v67;
      v120._countAndFlagsBits = 0;
      v69 = [v62 copyItemAtURL:v65 toURL:v67 error:&v120];

      if (v69)
      {
        v70 = v120._countAndFlagsBits;
        v71 = FileStoreConfiguration.protectionClass.getter();
        URL.setProtectionClass(protectionClass:)(v71);

        if (qword_100AD0B50 != -1)
        {
          swift_once();
        }

        v72 = type metadata accessor for Logger();
        sub_10000617C(v72, qword_100AF3B28);
        v73 = *(v42 + 16);
        v74 = v110;
        v75 = v117;
        v73(v110, v52, v117);
        v76 = v111;
        v73(v111, v52, v75);
        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v119 = swift_slowAlloc();
          v120._countAndFlagsBits = v119;
          *v79 = 136315394;
          sub_100811424(&qword_100ADEFD0, &type metadata accessor for URL);
          v80 = dispatch thunk of CustomStringConvertible.description.getter();
          LODWORD(v116) = v78;
          v81 = v80;
          v83 = v82;
          v84 = v112;
          (v112)(v74, v75);
          v85 = sub_100008458(v81, v83, &v120._countAndFlagsBits);

          *(v79 + 4) = v85;
          *(v79 + 12) = 2048;
          v86 = URL.fileSize.getter();
          if (v87)
          {
            v88 = 0;
          }

          else
          {
            v88 = v86;
          }

          (v84)(v76, v75);
          *(v79 + 14) = v88;
          _os_log_impl(&_mh_execute_header, v77, v116, "JournalEntryAssetMO saved file %s with size %ld", v79, 0x16u);
          sub_10000BA7C(v119);

          (v84)(v52, v75);
        }

        else
        {
          v107 = v112;
          (v112)(v76, v75);

          (v107)(v74, v75);
          (v107)(v52, v75);
        }

        return v109;
      }

      v89 = v120._countAndFlagsBits;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v60 = v52;
      v36 = v117;
    }

    else
    {
      v59 = v120._countAndFlagsBits;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v60 = v118;
    }

    (v112)(v60, v36);
  }

  else
  {

    sub_100170130();
    swift_allocError();
    *v58 = 0;
    swift_willThrow();
    v36 = v117;
    v42 = v119;
  }

  v90 = v113;
  if (qword_100AD0B50 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_10000617C(v91, qword_100AF3B28);
  (*(v42 + 16))(v90, v116, v36);
  swift_errorRetain();
  v92 = Logger.logObject.getter();
  v93 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v92, v93))
  {
    v94 = v36;
    v95 = swift_slowAlloc();
    v96 = v42;
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v121[0] = v98;
    *v95 = 136315394;
    sub_100811424(&qword_100ADEFD0, &type metadata accessor for URL);
    v99 = dispatch thunk of CustomStringConvertible.description.getter();
    v100 = v90;
    v101 = v99;
    v103 = v102;
    (*(v96 + 8))(v100, v94);
    v104 = sub_100008458(v101, v103, v121);

    *(v95 + 4) = v104;
    *(v95 + 12) = 2112;
    swift_errorRetain();
    v105 = _swift_stdlib_bridgeErrorToNSError();
    *(v95 + 14) = v105;
    *v97 = v105;
    _os_log_impl(&_mh_execute_header, v92, v93, "JournalEntryAssetMO error saving attachment file with source URL %s: %@", v95, 0x16u);
    sub_100004F84(v97, &unk_100AD4BB0);

    sub_10000BA7C(v98);
  }

  else
  {

    (*(v42 + 8))(v90, v36);
  }

  return 0;
}

uint64_t sub_100810858(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v83 = a1;
  v84 = a5;
  v85 = type metadata accessor for FileStoreConfiguration();
  v11 = *(v85 - 1);
  __chkstk_darwin(v85);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v86 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v16 = __chkstk_darwin(v15);
  v17 = __chkstk_darwin(v16);
  v19 = &v78 - v18;
  v20 = __chkstk_darwin(v17);
  v87 = &v78 - v23;
  v24 = *&v6[OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath];
  v25 = *&v6[OBJC_IVAR____TtC7Journal5Asset_attachmentsDirectoryPath + 8];
  if (v25)
  {
    v80 = a2;
    v78 = v22;
    v79 = v21;
    v81 = v6;
    v82 = v20;
    v89._countAndFlagsBits = 47;
    v89._object = 0xE100000000000000;

    v26._countAndFlagsBits = a3;
    v26._object = a4;
    String.append(_:)(v26);
    countAndFlagsBits = v89._countAndFlagsBits;
    object = v89._object;
    v89._countAndFlagsBits = v24;
    v89._object = v25;

    v29._countAndFlagsBits = countAndFlagsBits;
    v29._object = object;
    String.append(_:)(v29);

    v30 = v89._countAndFlagsBits;
    v88 = v89;
    if (a6)
    {
      v89._countAndFlagsBits = 46;
      v89._object = 0xE100000000000000;
      v31._countAndFlagsBits = v84;
      v31._object = a6;
      String.append(_:)(v31);
      String.append(_:)(v89);

      v30 = v88._countAndFlagsBits;
    }

    v32 = v85;
    static FileStoreConfiguration.shared.getter();
    v84 = v30;
    FileStoreConfiguration.getAttachmentURL(from:)();
    (*(v11 + 8))(v13, v32);
    v33 = [objc_opt_self() defaultManager];
    URL.deletingLastPathComponent()();
    URL._bridgeToObjectiveC()(v34);
    v36 = v35;
    v37 = v82;
    v85 = *(v86 + 8);
    v85(v19, v82);
    sub_1000F24EC(&qword_100AD77C8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100940080;
    *(inited + 32) = NSFileProtectionKey;
    v39 = qword_100AD0060;
    v40 = NSFileProtectionKey;
    if (v39 != -1)
    {
      swift_once();
    }

    sub_10000617C(v32, qword_100B2FC48);
    v41 = FileStoreConfiguration.protectionClass.getter();
    type metadata accessor for URLFileProtection(0);
    *(inited + 64) = v42;
    *(inited + 40) = v41;
    sub_100362FA8(inited);
    swift_setDeallocating();
    sub_100004F84(inited + 32, &qword_100ADFE90);
    type metadata accessor for FileAttributeKey(0);
    sub_100811424(&qword_100AD1C38, type metadata accessor for FileAttributeKey);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v89._countAndFlagsBits = 0;
    LODWORD(v41) = [v33 createDirectoryAtURL:v36 withIntermediateDirectories:1 attributes:isa error:&v89];

    if (v41)
    {
      v44 = v89._countAndFlagsBits;
      v45 = v87;
      Data.write(to:options:)();
      v57 = v81;
      if (qword_100AD0B50 != -1)
      {
        swift_once();
      }

      v58 = type metadata accessor for Logger();
      sub_10000617C(v58, qword_100AF3B28);
      v59 = *(v86 + 16);
      v60 = v78;
      v59(v78, v45, v37);
      v59(v79, v45, v37);
      v61 = v57;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v83 = v65;
        v86 = swift_slowAlloc();
        v89._countAndFlagsBits = v86;
        *v64 = 138412802;
        *(v64 + 4) = v61;
        *v65 = v61;
        *(v64 + 12) = 2080;
        sub_100811424(&qword_100ADEFD0, &type metadata accessor for URL);
        v66 = v61;
        v67 = dispatch thunk of CustomStringConvertible.description.getter();
        v69 = v68;
        v70 = v60;
        v71 = v85;
        v85(v70, v37);
        v72 = sub_100008458(v67, v69, &v89._countAndFlagsBits);

        *(v64 + 14) = v72;
        *(v64 + 22) = 2048;
        v73 = v79;
        v74 = URL.fileSize.getter();
        if (v75)
        {
          v76 = 0;
        }

        else
        {
          v76 = v74;
        }

        v71(v73, v37);
        *(v64 + 24) = v76;
        _os_log_impl(&_mh_execute_header, v62, v63, "%@ - saved file [from data] %s with size %ld", v64, 0x20u);
        sub_100004F84(v83, &unk_100AD4BB0);

        sub_10000BA7C(v86);

        v71(v87, v37);
      }

      else
      {
        v77 = v85;
        v85(v79, v37);

        v77(v60, v37);
        v77(v45, v37);
      }

      return v84;
    }

    else
    {
      v46 = v89._countAndFlagsBits;

      _convertNSErrorToError(_:)();

      swift_willThrow();
      v85(v87, v37);
      v47 = v81;
      if (qword_100AD0B50 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      sub_10000617C(v48, qword_100AF3B28);
      v49 = v47;
      swift_errorRetain();
      v50 = Logger.logObject.getter();
      v51 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        *v52 = 138412546;
        *(v52 + 4) = v49;
        *v53 = v49;
        *(v52 + 12) = 2112;
        v54 = v49;
        swift_errorRetain();
        v55 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 14) = v55;
        v53[1] = v55;
        _os_log_impl(&_mh_execute_header, v50, v51, "%@, error saving attachment file from data: %@", v52, 0x16u);
        sub_1000F24EC(&unk_100AD4BB0);
        swift_arrayDestroy();
      }

      else
      {
      }

      return 0;
    }
  }

  return v24;
}

void sub_1008111D0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v26 = a8;
  v27 = a5;
  v29 = a7;
  v28 = a6;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100825384(a2, a3, a4);
  if (v16)
  {
    v17 = v16;
    v18 = String._bridgeToObjectiveC()();
    [v17 setFilePath:v18];

    [v17 setNeedsProcessing:v29 & 1];
    return;
  }

  v24[1] = a3;
  v24[2] = a4;
  v25 = a1;
  type metadata accessor for JournalEntryAssetFileAttachmentMO();
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = [v19 initWithContext:v26];
  UUID.init()();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  (*(v13 + 8))(v15, v12);
  [v20 setId:isa];

  v22 = String._bridgeToObjectiveC()();
  [v20 setFilePath:v22];

  [v20 setNeedsProcessing:v29 & 1];
  if (a2 < -32768)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a2 >= 0x8000)
  {
LABEL_8:
    __break(1u);
    return;
  }

  [v20 setIndex:a2];
  v23 = String._bridgeToObjectiveC()();
  [v20 setName:v23];

  [v25 addFileAttachmentsObject:v20];
}

uint64_t sub_100811424(unint64_t *a1, void (*a2)(uint64_t))
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

NSString sub_100811474()
{
  result = String._bridgeToObjectiveC()();
  qword_100B31150 = result;
  return result;
}

NSString sub_1008114AC()
{
  result = String._bridgeToObjectiveC()();
  qword_100B31158 = result;
  return result;
}

id sub_1008114E4(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for EntryMapSheetNavigationController();
  v3 = objc_msgSendSuper2(&v5, "initWithRootViewController:", a1);
  [v3 setDelegate:v3];
  [v3 setModalInPresentation:1];
  [v3 setPreferredContentSize:{400.0, 1.79769313e308}];
  [v3 setTransitioningDelegate:v3];
  [v3 setModalPresentationStyle:4];

  return v3;
}

id sub_10081172C(void *a1, void *a2, void *a3)
{
  v31.receiver = v3;
  v31.super_class = type metadata accessor for EntryMapSheetNavigationController.PresentationController();
  v29 = a2;
  v6 = objc_msgSendSuper2(&v31, "initWithPresentedViewController:presentingViewController:", a1, a2);
  sub_1001F3EEC();
  v7 = qword_100AD0B60;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = qword_100B31158;
  v10 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

  v11 = [objc_opt_self() mediumDetent];
  if (qword_100AD0B58 != -1)
  {
    swift_once();
  }

  v12 = qword_100B31150;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = v12;

  v14 = static UISheetPresentationControllerDetent.custom(identifier:resolver:)();

  sub_1000F24EC(&unk_100AD4780);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_100941D70;
  *(v15 + 32) = v10;
  *(v15 + 40) = v11;
  *(v15 + 48) = v14;
  v16 = v10;
  v17 = v11;
  v18 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v8 setDetents:isa];

  v20 = [v8 traitCollection];
  v21 = [v20 horizontalSizeClass];

  v22 = UISheetPresentationControllerDetentIdentifierMedium;
  if (v21 != 1)
  {
    v22 = qword_100B31150;
  }

  v23 = v22;
  [v8 setLargestUndimmedDetentIdentifier:v23];

  v24 = [v17 identifier];
  [v8 setSelectedDetentIdentifier:v24];

  [v8 setPrefersGrabberVisible:1];
  [v8 setWidthFollowsPreferredContentSizeWhenEdgeAttached:1];
  [v8 _setHorizontalAlignment:2];
  v25 = [a3 traitCollection];
  v26 = [v25 userInterfaceIdiom];

  v27 = 10.0;
  if (v26 == 5)
  {
    v27 = 8.0;
  }

  [v8 _setMarginInRegularWidthRegularHeight:v27];

  [v8 _setForcePresentationInPresenterScene:1];
  [v8 _setAllowsAsymmetricVerticalMargins:1];

  return v8;
}

double sub_100811AFC(void *a1)
{
  v2 = [a1 containerTraitCollection];
  v3 = [v2 horizontalSizeClass];

  if (v3 == 2)
  {
    [a1 maximumDetentValue];
    return v4 + -16.0;
  }

  else
  {
    [a1 maximumDetentValue];
    v7 = v6;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    v9 = 16.0;
    if (Strong)
    {
      v10 = Strong;
      v11 = [Strong containerView];

      if (v11)
      {
        [v11 safeAreaInsets];
        v9 = v12;
      }
    }

    return v7 - v9;
  }
}

void sub_100811C0C()
{
  v7.receiver = v0;
  v7.super_class = type metadata accessor for EntryMapSheetNavigationController.PresentationController();
  objc_msgSendSuper2(&v7, "containerViewWillLayoutSubviews");
  v1 = [v0 containerView];
  if (v1 && (v2 = v1, v3 = [v1 traitCollection], v2, v4 = objc_msgSend(v3, "horizontalSizeClass"), v3, v4 == 1))
  {
    v5 = &UISheetPresentationControllerDetentIdentifierMedium;
  }

  else
  {
    if (qword_100AD0B58 != -1)
    {
      swift_once();
    }

    v5 = &qword_100B31150;
  }

  v6 = *v5;
  [v0 setLargestUndimmedDetentIdentifier:v6];
}

void sub_100811D60()
{
  v9.receiver = v0;
  v9.super_class = type metadata accessor for EntryMapSheetNavigationController.PresentationController();
  objc_msgSendSuper2(&v9, "containerViewDidLayoutSubviews");
  v1 = [v0 containerView];
  v2 = 0.0;
  v3 = 0.0;
  if (v1)
  {
    v4 = v1;
    [v1 safeAreaInsets];
    v3 = v5;
  }

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (!v7)
  {
    v2 = 10.0;
  }

  v8 = [v0 presentedViewController];
  [v8 additionalSafeAreaInsets];
  [v8 setAdditionalSafeAreaInsets:v2 - v3];
}

id sub_100811F00(uint64_t a1, uint64_t (*a2)(void))
{
  v4.receiver = v2;
  v4.super_class = a2();
  return objc_msgSendSuper2(&v4, "dealloc");
}

uint64_t sub_100811FCC()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled);
  if (v1 == 2)
  {
    if ((sub_100812158() & 1) != 0 && (swift_getKeyPath(), ObservationRegistrar.access<A, B>(_:keyPath:)(), , (static Runtime.hasAppProtectionLock.getter() & 1) == 0))
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      LOBYTE(v1) = sub_100014964() != 4;
    }

    else
    {
      LOBYTE(v1) = 0;
    }
  }

  return v1 & 1;
}

uint64_t sub_1008120E8()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return static Runtime.hasAppProtectionLock.getter() & 1;
}

id sub_100812158()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = [*(v0 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel_authEnvironment) state];
  v2 = [v1 userPassword];

  if (!v2)
  {
    return 0;
  }

  v3 = [v2 isSet];

  return v3;
}

uint64_t sub_10081222C(char a1)
{
  v2 = v1;
  v4 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v4 - 8);
  v6 = &v17 - v5;
  if (a1)
  {
    if (v2[OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled] != 2)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v17 - 2) = v2;
      *(&v17 - 8) = 2;
      v18 = v2;
      sub_10051721C();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    *(&v17 - 16) = 1;
    v18 = v2;
    sub_10051721C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v6, 1, 1, v9);
    type metadata accessor for MainActor();
    v10 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    *(v11 + 24) = &protocol witness table for MainActor;
    *(v11 + 32) = 1;
    v12 = &unk_10096CCB0;
  }

  else
  {
    sub_1008128FC(0);
    v13 = type metadata accessor for TaskPriority();
    (*(*(v13 - 8) + 56))(v6, 1, 1, v13);
    type metadata accessor for MainActor();
    v14 = v2;
    v15 = static MainActor.shared.getter();
    v11 = swift_allocObject();
    *(v11 + 16) = v15;
    *(v11 + 24) = &protocol witness table for MainActor;
    *(v11 + 32) = v14;
    *(v11 + 40) = 0;
    v12 = &unk_10096CCA0;
  }

  sub_1003E9628(0, 0, v6, v12, v11);
}

uint64_t sub_100812544()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout);
  if (result == 4)
  {
    return sub_100014964();
  }

  return result;
}

void *sub_100812604()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  v2 = v1;
  return v1;
}

id sub_100812684@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  *a2 = v4;

  return v4;
}

void sub_100812714(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100812744(v1);
}

void sub_100812744(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext;
  v5 = *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  if (!v5)
  {
    if (!a1)
    {
      v9 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10051721C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_1000065A8(0, &qword_100AF3E80);
  v6 = v5;
  v7 = a1;
  v8 = static NSObject.== infix(_:_:)();

  if ((v8 & 1) == 0)
  {
    goto LABEL_6;
  }

  v9 = *(v2 + v4);
LABEL_8:
  *(v2 + v4) = a1;
}

void sub_1008128AC(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  *(a1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext) = a2;
  v3 = a2;
}

uint64_t sub_1008128FC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled);
  if (v2 != 2)
  {
    if (result != 2 && ((v2 ^ result) & 1) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10051721C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (result != 2)
  {
    goto LABEL_6;
  }

LABEL_7:
  *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled) = result;
  return result;
}

uint64_t sub_100812A1C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v2 + *a2);
}

uint64_t sub_100812A8C@<X0>(uint64_t *a1@<X0>, void *a2@<X4>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a3 = *(v5 + *a2);
  return result;
}

uint64_t sub_100812B10(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout);
  if (v2 != 4)
  {
    if (result == 4 || qword_10096CCC0[v2] != qword_10096CCC0[result])
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout) = result;
    return result;
  }

  if (result == 4)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_10051721C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

id sub_100812C60()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LockSettingsViewModel();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100812D2C@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = static Runtime.hasAppProtectionLock.getter();
  *a1 = result & 1;
  return result;
}

BOOL sub_100812DA8()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return sub_100014964() != 4;
}

uint64_t sub_100812E20(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  type metadata accessor for MainActor();
  *(v4 + 16) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v4 + 24) = v6;
  *(v4 + 32) = v5;

  return _swift_task_switch(sub_100812EB8, v6, v5);
}

uint64_t sub_100812EB8()
{
  v1 = *(v0 + 16);

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1001F147C;
  v3 = *(v0 + 48);

  return sub_10015F254(v1, &protocol witness table for MainActor, v3);
}

uint64_t sub_100812F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 120) = a5;
  *(v5 + 40) = a4;
  *(v5 + 48) = type metadata accessor for MainActor();
  *(v5 + 56) = static MainActor.shared.getter();
  v6 = swift_task_alloc();
  *(v5 + 64) = v6;
  *v6 = v5;
  v6[1] = sub_100813030;

  return sub_100813628();
}

uint64_t sub_100813030(char a1)
{
  v2 = *v1;
  *(v2 + 121) = a1;

  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 72) = v4;
  *(v2 + 80) = v3;

  return _swift_task_switch(sub_10081317C, v4, v3);
}

uint64_t sub_10081317C()
{
  if (*(v0 + 121) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    swift_getKeyPath();
    *(swift_task_alloc() + 16) = 0;
    *(v0 + 88) = OBJC_IVAR____TtC7Journal21LockSettingsViewModel___observationRegistrar;
    *(v0 + 24) = v2;
    *(v0 + 96) = sub_10051721C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    *(v0 + 104) = 0;

    v3 = swift_task_alloc();
    *(v0 + 112) = v3;
    *v3 = v0;
    v3[1] = sub_1008133D4;
    v4 = *(v0 + 120);

    return sub_10015F254(v1, &protocol witness table for MainActor, v4);
  }

  else
  {
    v6 = *(v0 + 40);

    if (*(v6 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled) != 2)
    {
      v7 = *(v0 + 40);
      swift_getKeyPath();
      v8 = swift_task_alloc();
      *(v8 + 16) = v7;
      *(v8 + 24) = 2;
      *(v0 + 16) = v7;
      sub_10051721C();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1008133D4()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return _swift_task_switch(sub_100813518, v3, v2);
}

uint64_t sub_100813518()
{
  v1 = v0[5];

  if (*(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalEnabled) != 2)
  {
    v2 = v0[5];
    swift_getKeyPath();
    v3 = swift_task_alloc();
    *(v3 + 16) = v2;
    *(v3 + 24) = 2;
    v0[4] = v2;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v4 = v0[1];

  return v4();
}

uint64_t sub_100813628()
{
  v1[19] = v0;
  type metadata accessor for Locale();
  v1[20] = swift_task_alloc();
  type metadata accessor for String.LocalizationValue();
  v1[21] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[22] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[23] = v3;
  v1[24] = v2;

  return _swift_task_switch(sub_100813718, v3, v2);
}

uint64_t sub_100813718()
{
  v1 = v0[19];
  swift_getKeyPath();
  v0[18] = v1;
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  if (v2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  }

  else
  {
    v3 = [objc_allocWithZone(LAContext) init];
    v2 = 0;
  }

  v0[25] = v3;
  v4 = v2;
  String.LocalizationValue.init(stringLiteral:)();
  if (qword_100AD0BC8 != -1)
  {
    swift_once();
  }

  v5 = qword_100B31298;
  static Locale.current.getter();
  LOWORD(v10) = 2;
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v6 = String._bridgeToObjectiveC()();

  [v3 setOptionCallerName:{v6, "Name of the app that is requesting passcode authorization.", 58, v10}];

  [v3 setTouchIDAuthenticationAllowableReuseDuration:45.0];
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  LOWORD(v11) = 2;
  String.init(localized:defaultValue:table:bundle:locale:comment:)();
  v7 = String._bridgeToObjectiveC()();
  v0[26] = v7;

  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_100813A54;
  v8 = swift_continuation_init();
  v0[17] = sub_1000F24EC(&unk_100AE1D90);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1003D6930;
  v0[13] = &unk_100A81C30;
  v0[14] = v8;
  [v3 evaluatePolicy:2 localizedReason:v7 reply:{v0 + 10, "Describes that the app is requesting authorization before letting the user into lock journal settings.", 102, v11}];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_100813A54()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 192);
  v4 = *(v1 + 184);
  if (v2)
  {
    v5 = sub_100813C40;
  }

  else
  {
    v5 = sub_100813B84;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_100813B84()
{
  v1 = *(v0 + 208);

  v2 = *(v0 + 224);

  v3 = *(v0 + 200);
  if (v2 == 1)
  {
    v4 = v3;
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  sub_100812744(v5);

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t sub_100813C40()
{
  v1 = v0[26];

  swift_willThrow();

  v2 = v0[25];
  sub_100812744(0);

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_100813CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 80) = a5;
  *(v5 + 40) = a4;
  type metadata accessor for MainActor();
  *(v5 + 48) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v5 + 56) = v7;
  *(v5 + 64) = v6;

  return _swift_task_switch(sub_100813D90, v7, v6);
}

uint64_t sub_100813D90()
{
  if (*(v0 + 80) == 4)
  {

    v1 = *(v0 + 40);
    if (*(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout) != 4)
    {
      swift_getKeyPath();
      v2 = swift_task_alloc();
      *(v2 + 16) = v1;
      *(v2 + 24) = 4;
      *(v0 + 16) = v1;
      sub_10051721C();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 72) = v5;
    *v5 = v0;
    v5[1] = sub_100813F18;

    return sub_100813628();
  }
}

uint64_t sub_100813F18(char a1)
{
  v2 = *v1;
  *(*v1 + 81) = a1;

  v3 = *(v2 + 64);
  v4 = *(v2 + 56);

  return _swift_task_switch(sub_100814040, v4, v3);
}

uint64_t sub_100814040()
{
  v1 = *(v0 + 81);

  if (v1 == 1)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 40);
    swift_getKeyPath();
    *(swift_task_alloc() + 16) = v2;
    *(v0 + 24) = v3;
    sub_10051721C();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    if (*(v3 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout) == 4)
    {
      goto LABEL_7;
    }

    v4 = *(v0 + 40);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 4;
    *(v0 + 32) = v4;
  }

  else
  {
    v6 = *(v0 + 40);
    if (*(v6 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__pendingAppFeatureLockJournalTimeout) == 4)
    {
      goto LABEL_7;
    }

    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 4;
    *(v0 + 16) = v6;
    sub_10051721C();
  }

  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_7:
  v8 = *(v0 + 8);

  return v8();
}

void sub_100814268(char a1)
{
  v2 = type metadata accessor for SettingsKey();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000065A8(0, &qword_100AE1A30);
  v6 = static NSUserDefaults.shared.getter();
  v7 = String._bridgeToObjectiveC()();
  [v6 removeObjectForKey:v7];

  v8 = String._bridgeToObjectiveC()();
  [v6 removeObjectForKey:v8];

  v9 = qword_10096CCC0[a1];
  (*(v3 + 104))(v5, enum case for SettingsKey.lockJournalState(_:), v2);
  SettingsKey.rawValue.getter();
  (*(v3 + 8))(v5, v2);
  v10 = String._bridgeToObjectiveC()();

  [v6 setInteger:v9 forKey:v10];
}

uint64_t sub_1008145A4@<X0>(BOOL *a1@<X8>)
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = sub_100014964();
  *a1 = result != 4;
  return result;
}

uint64_t sub_100814628()
{
  swift_getKeyPath();
  sub_10051721C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t sub_1008146C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  type metadata accessor for MainActor();
  *(v4 + 32) = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10081475C, v6, v5);
}

uint64_t sub_10081475C()
{
  v1 = v0[3];

  swift_getKeyPath();
  v0[2] = v1;
  sub_10051721C();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v0[2] = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext;
  [*(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext) invalidate];
  if (*(v1 + v2))
  {
    v3 = v0[3];
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    v0[2] = v3;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_100814A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_1008146C4(a1, v4, v5, v6);
}

void sub_100814AE4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext);
  *(v1 + OBJC_IVAR____TtC7Journal21LockSettingsViewModel__authContext) = v2;
  v4 = v2;
}

void sub_100814B54()
{
  if (*(v0 + 16))
  {
    v1 = 1;
  }

  else
  {
    v1 = 4;
  }

  sub_100554C50(v1);
}

uint64_t sub_100814BA8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100032ECC;

  return sub_100812F7C(a1, v4, v5, v6, v7);
}

uint64_t sub_100814C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100032EC8;

  return sub_100812E20(a1, v4, v5, v6);
}

void *sub_100814D80(void *a1, void *a2)
{
  v3 = v2;
  v6 = [a1 format];
  sub_1008152E0();
  if (static NSObject.== infix(_:_:)())
  {
    v7 = a1;

    return v7;
  }

  v9 = v2[2];
  if (!v9 || (v10 = [v9 outputFormat]) == 0 || (v11 = v10, v12 = a2, v13 = static NSObject.== infix(_:_:)(), v11, v12, (v13 & 1) == 0))
  {
    v14 = [objc_allocWithZone(AVAudioConverter) initFromFormat:v6 toFormat:a2];
    v15 = v3[2];
    v3[2] = v14;
    v16 = v14;

    if (v16)
    {
      [v16 setPrimeMethod:2];
    }
  }

  v17 = v3[2];
  if (v17)
  {
    v18 = v17;
    v19 = [v18 outputFormat];
    [v19 sampleRate];
    v21 = v20;

    v22 = [v18 inputFormat];
    [v22 sampleRate];
    v24 = v23;

    v25 = ceil(v21 / v24 * [a1 frameLength]);
    if ((*&v25 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v25 > -1.0)
    {
      if (v25 < 4294967300.0)
      {
        v26 = v25;
        v27 = [v18 outputFormat];
        v3 = [objc_allocWithZone(AVAudioPCMBuffer) initWithPCMFormat:v27 frameCapacity:v26];

        if (v3)
        {
          v28 = swift_allocObject();
          *(v28 + 16) = 0;
          v29 = swift_allocObject();
          *(v29 + 16) = v28;
          *(v29 + 24) = a1;
          aBlock[4] = sub_100815380;
          aBlock[5] = v29;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_100815250;
          aBlock[3] = &unk_100A81CF8;
          v30 = _Block_copy(aBlock);

          v31 = a1;

          aBlock[0] = 0;
          v32 = [v18 convertToBuffer:v3 error:aBlock withInputFromBlock:v30];
          _Block_release(v30);
          if (v32 == 3)
          {
            v33 = aBlock[0];
            sub_10081532C();
            swift_allocError();
            *v34 = v33;
            swift_willThrow();
            v35 = v33;
          }

          else
          {
          }
        }

        else
        {
          sub_10081532C();
          swift_allocError();
          *v37 = 2;
          swift_willThrow();
        }

        return v3;
      }

LABEL_22:
      __break(1u);
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_10081532C();
  swift_allocError();
  *v36 = 1;
  swift_willThrow();

  return v3;
}

void *sub_1008151C4(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  swift_beginAccess();
  if (*(a3 + 16))
  {
    a4 = 0;
    v7 = 1;
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  *a2 = v7;
  swift_beginAccess();
  *(a3 + 16) = 1;
  return a4;
}

id sub_100815250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v6 = v5(a2, a3);

  return v6;
}

unint64_t sub_1008152E0()
{
  result = qword_100AF3F48;
  if (!qword_100AF3F48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100AF3F48);
  }

  return result;
}

unint64_t sub_10081532C()
{
  result = qword_100AF3F50;
  if (!qword_100AF3F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100AF3F50);
  }

  return result;
}

uint64_t sub_100815388(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1008153AC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100815410(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_100815460(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    *result = a2;
  }

  return result;
}

void sub_1008154A0()
{
  [v0 addSubview:*&v0[OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView]];
  v1 = *&v0[OBJC_IVAR____TtC7Journal14VideoAssetView_thumbnailView];
  [v0 addSubview:v1];
  [v1 setContentMode:2];
  [v1 setAlpha:0.0];
  [v0 setIsAccessibilityElement:1];
  v2 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v2];

  [v0 setAccessibilityIgnoresInvertColors:1];
  [v0 setClipsToBounds:0];
  v3 = objc_opt_self();
  v4 = [v3 defaultCenter];
  [v4 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityVideoAutoplayStatusDidChangeNotification object:0];

  v5 = [v3 defaultCenter];
  [v5 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:UIAccessibilityReduceMotionStatusDidChangeNotification object:0];

  v6 = [v0 traitCollection];
  v7 = [v6 userInterfaceIdiom];

  if (v7 == 5)
  {
    v8 = [v3 defaultCenter];
    v9 = static AccessibilitySettings.animatedImagesEnabledDidChangeNotification.getter();
    [v8 addObserver:v0 selector:"autoPlayEnabledStatusDidChange" name:v9 object:0];
  }
}

void sub_1008156E8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_fallbackView);
  v2 = *((swift_isaMask & *v1) + 0x58);
  v3 = *(v0 + OBJC_IVAR____TtC7Journal16JournalAssetView_sizeType);
  v4 = v1;
  v2(1, v3);
}

uint64_t sub_100815794()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  result = __chkstk_darwin(v5);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) & 1) == 0)
  {
    *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) = 1;
    v10 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
    if (v10)
    {
      v25 = v2;
      v26 = result;
      v11 = qword_100ACFB90;
      v12 = v10;
      if (v11 != -1)
      {
        swift_once();
      }

      v24 = qword_100B2F628;
      v13 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v14 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
      if (v14)
      {
        v15 = v14;
        v16 = [v15 layer];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
        }

        v18 = [v17 player];
      }

      else
      {
        v18 = 0;
      }

      v19 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_resourceConservationLevelWhilePaused);
      v20 = swift_allocObject();
      v20[2] = v13;
      v20[3] = v12;
      v20[4] = v18;
      v20[5] = v19;
      aBlock[4] = sub_1001E1D70;
      aBlock[5] = v20;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100006C7C;
      aBlock[3] = &unk_100A81F18;
      v21 = _Block_copy(aBlock);
      v22 = v18;
      v23 = v12;

      static DispatchQoS.unspecified.getter();
      v27 = _swiftEmptyArrayStorage;
      sub_100006964(&qword_100AD1520, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000F24EC(&unk_100AD6220);
      sub_100006610();
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v21);

      (*(v25 + 8))(v4, v1);
      (*(v6 + 8))(v9, v26);
    }
  }

  return result;
}

uint64_t sub_100815B74(uint64_t a1, uint64_t a2)
{
  v3 = v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate;
  *(v2 + OBJC_IVAR____TtC7Journal16JournalAssetView_loadingDelegate + 8) = a2;
  swift_unknownObjectWeakAssign();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 8);
    ObjectType = swift_getObjectType();
    v6 = (*(v4 + 16))(ObjectType, v4);
    swift_unknownObjectRelease();
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
      if (v7)
      {
        v8 = v7;
        sub_100819680(v6);
      }
    }
  }

  return swift_unknownObjectRelease();
}

void *sub_100815C38()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_videoAsset);
  v2 = v1;
  return v1;
}

id sub_100815C68()
{
  v1 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v2 layer];
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (!v4)
  {
  }

  v5 = [v4 player];

  return v5;
}

void sub_100815D10()
{
  v1 = (v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
  v2 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_finishPlayingAction);
  *v1 = 0;
  v1[1] = 0;
  sub_100004DF8(v2);
  v3 = OBJC_IVAR____TtC7Journal14VideoAssetView_playerView;
  v4 = *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 layer];
    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (!v7)
    {
    }

    v8 = [v7 player];

    [v8 pause];
    v9 = *(v0 + v3);
    if (v9)
    {
      v10 = v9;
      v11 = [v10 layer];
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (!v12)
      {
      }

      v13 = [v12 player];

      if (v13)
      {
        [v13 replaceCurrentItemWithPlayerItem:0];
      }

      v14 = *(v0 + v3);
      if (v14)
      {
        v15 = v14;
        v16 = [v15 layer];
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (!v17)
        {
        }

        [v17 setPlayer:0];
      }
    }
  }

  *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_isLoaded) = 0;
  *(v0 + OBJC_IVAR____TtC7Journal14VideoAssetView_isAutoPlaying) = 0;
}

void sub_100815EE0(void *a1)
{
  v2 = OBJC_IVAR____TtC7Journal14VideoAssetView_preferredVideoDynamicRange;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_preferredVideoDynamicRange);
  *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_preferredVideoDynamicRange) = a1;
  v7 = a1;

  v4 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v4)
  {
    v5 = [v4 layer];
    v6 = *(v1 + v2);
    [v5 setPreferredDynamicRange:v6];
  }
}

void sub_100815F8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC7Journal14VideoAssetView_resourceConservationLevelWhilePaused;
  *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_resourceConservationLevelWhilePaused) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC7Journal14VideoAssetView_playerView);
  if (v3)
  {
    v4 = v3;
    v5 = [v4 layer];
    objc_opt_self();
    v6 = swift_dynamicCastObjCClass();
    if (!v6)
    {
    }

    v7 = [v6 player];

    if (v7)
    {
      [v7 setResourceConservationLevelWhilePaused:*(v1 + v2)];
    }
  }
}