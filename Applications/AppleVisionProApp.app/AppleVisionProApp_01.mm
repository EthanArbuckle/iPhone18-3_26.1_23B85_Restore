unint64_t sub_1000183C8()
{
  result = qword_100169CB8;
  if (!qword_100169CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CB8);
  }

  return result;
}

unint64_t sub_10001841C()
{
  result = qword_100169CC0;
  if (!qword_100169CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CC0);
  }

  return result;
}

unint64_t sub_100018470()
{
  result = qword_100169CC8;
  if (!qword_100169CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CC8);
  }

  return result;
}

unint64_t sub_1000184C4()
{
  result = qword_100169CD0;
  if (!qword_100169CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CD0);
  }

  return result;
}

unint64_t sub_100018518()
{
  result = qword_100169CD8;
  if (!qword_100169CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CD8);
  }

  return result;
}

unint64_t sub_10001856C()
{
  result = qword_100169CE0;
  if (!qword_100169CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169CE0);
  }

  return result;
}

uint64_t sub_1000185C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472656C61 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010011D260 == a2)
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

uint64_t sub_1000186E4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v69 = sub_100002BE4(&qword_100169CE8, &qword_10010DA28);
  v65 = *(v69 - 8);
  v3 = *(v65 + 64);
  __chkstk_darwin(v69);
  v68 = &v60 - v4;
  v5 = sub_100002BE4(&qword_100169CF0, &qword_10010DA30);
  v6 = *(v5 - 8);
  v63 = v5;
  v64 = v6;
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v60 - v8;
  v10 = sub_100002BE4(&qword_100169CF8, &qword_10010DA38);
  v66 = *(v10 - 8);
  v11 = *(v66 + 64);
  __chkstk_darwin(v10);
  v13 = &v60 - v12;
  v14 = sub_100002BE4(&qword_100169D00, &unk_10010DA40);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v60 - v17;
  v20 = a1[3];
  v19 = a1[4];
  v71 = a1;
  sub_10000524C(a1, v20);
  sub_100018F50();
  v21 = v70;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return sub_1000052E4(v71);
  }

  v22 = v9;
  v61 = 0;
  v62 = v18;
  v23 = v68;
  v24 = v69;
  v70 = v15;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v26 = v25;
  v27 = *(v25 + 16);
  if (!v27 || ((LODWORD(v28) = *(v25 + 32), v27 == 1) ? (v29 = v28 == 3) : (v29 = 1), v29))
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    v33 = *(sub_100002BE4(&qword_100169D10, &qword_100119030) + 48);
    *v32 = &type metadata for RemoteNotification.Kind;
    v34 = v62;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, enum case for DecodingError.typeMismatch(_:), v30);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!*(v25 + 32))
  {
    v75 = 0;
    sub_10001904C();
    v40 = v61;
    v34 = v62;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v40)
    {
      v74 = 0;
      v41 = v10;
      v42 = KeyedDecodingContainer.decode(_:forKey:)();
      v49 = v48;
      v60 = v42;
      v69 = v26;
      v73 = 1;
      v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v53 = v52;
      v68 = v50;
      v72 = 2;
      v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
      v61 = 0;
      v56 = v54;
      v58 = v57;
      (*(v66 + 8))(v13, v41);
      (*(v70 + 8))(v62, v14);
      swift_unknownObjectRelease();
      v39 = v67;
      v59 = v68;
      goto LABEL_21;
    }

LABEL_9:
    (*(v70 + 8))(v34, v14);
    swift_unknownObjectRelease();
    return sub_1000052E4(v71);
  }

  if (v28 != 1)
  {
    v79 = 2;
    sub_100018FA4();
    v43 = v61;
    v34 = v62;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v44 = v70;
    v39 = v67;
    if (!v43)
    {
      v78 = 0;
      v47 = v23;
      v60 = KeyedDecodingContainer.decode(_:forKey:)();
      v77 = 1;
      v51 = KeyedDecodingContainer.decode(_:forKey:)();
      v61 = 0;
      v49 = v51;
      v59 = v55;
      (*(v65 + 8))(v47, v24);
      (*(v44 + 8))(v62, v14);
      swift_unknownObjectRelease();
      v53 = 0;
      v56 = 0;
      v58 = 0;
      goto LABEL_21;
    }

    goto LABEL_9;
  }

  LODWORD(v69) = 1;
  v76 = 1;
  sub_100018FF8();
  v36 = v22;
  v37 = v61;
  v28 = v62;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v38 = v70;
  v39 = v67;
  if (v37)
  {
    (*(v70 + 8))(v28, v14);
    swift_unknownObjectRelease();
    return sub_1000052E4(v71);
  }

  v45 = v63;
  v46 = KeyedDecodingContainer.decode(_:forKey:)();
  v61 = 0;
  v60 = v46;
  (*(v64 + 8))(v36, v45);
  (*(v38 + 8))(v28, v14);
  swift_unknownObjectRelease();
  v49 = 0;
  v59 = 0;
  v53 = 0;
  v56 = 0;
  v58 = 0;
  LOBYTE(v28) = v69;
LABEL_21:
  result = sub_1000052E4(v71);
  *v39 = v60;
  *(v39 + 8) = v49;
  *(v39 + 16) = v59;
  *(v39 + 24) = v53;
  *(v39 + 32) = v56;
  *(v39 + 40) = v58;
  *(v39 + 48) = v28;
  return result;
}

unint64_t sub_100018F50()
{
  result = qword_100169D08;
  if (!qword_100169D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D08);
  }

  return result;
}

unint64_t sub_100018FA4()
{
  result = qword_100169D18;
  if (!qword_100169D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D18);
  }

  return result;
}

unint64_t sub_100018FF8()
{
  result = qword_100169D20;
  if (!qword_100169D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D20);
  }

  return result;
}

unint64_t sub_10001904C()
{
  result = qword_100169D28;
  if (!qword_100169D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D28);
  }

  return result;
}

unint64_t sub_1000190A0()
{
  result = qword_100169D58;
  if (!qword_100169D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D58);
  }

  return result;
}

unint64_t sub_1000190F4()
{
  result = qword_100169D60;
  if (!qword_100169D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D60);
  }

  return result;
}

uint64_t sub_1000191BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100019204(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000193E8()
{
  result = qword_100169D68;
  if (!qword_100169D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D68);
  }

  return result;
}

unint64_t sub_100019440()
{
  result = qword_100169D70;
  if (!qword_100169D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D70);
  }

  return result;
}

unint64_t sub_100019498()
{
  result = qword_100169D78;
  if (!qword_100169D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D78);
  }

  return result;
}

unint64_t sub_1000194F0()
{
  result = qword_100169D80;
  if (!qword_100169D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D80);
  }

  return result;
}

unint64_t sub_100019548()
{
  result = qword_100169D88;
  if (!qword_100169D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D88);
  }

  return result;
}

unint64_t sub_1000195A0()
{
  result = qword_100169D90;
  if (!qword_100169D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D90);
  }

  return result;
}

unint64_t sub_1000195F8()
{
  result = qword_100169D98;
  if (!qword_100169D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169D98);
  }

  return result;
}

unint64_t sub_100019650()
{
  result = qword_100169DA0;
  if (!qword_100169DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DA0);
  }

  return result;
}

unint64_t sub_1000196A8()
{
  result = qword_100169DA8;
  if (!qword_100169DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DA8);
  }

  return result;
}

unint64_t sub_100019700()
{
  result = qword_100169DB0;
  if (!qword_100169DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DB0);
  }

  return result;
}

unint64_t sub_100019758()
{
  result = qword_100169DB8;
  if (!qword_100169DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DB8);
  }

  return result;
}

unint64_t sub_1000197B0()
{
  result = qword_100169DC0;
  if (!qword_100169DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DC0);
  }

  return result;
}

unint64_t sub_100019808()
{
  result = qword_100169DC8;
  if (!qword_100169DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DC8);
  }

  return result;
}

unint64_t sub_100019860()
{
  result = qword_100169DD0;
  if (!qword_100169DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DD0);
  }

  return result;
}

unint64_t sub_1000198B8()
{
  result = qword_100169DD8;
  if (!qword_100169DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DD8);
  }

  return result;
}

unint64_t sub_100019910()
{
  result = qword_100169DE0;
  if (!qword_100169DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DE0);
  }

  return result;
}

unint64_t sub_100019968()
{
  result = qword_100169DE8;
  if (!qword_100169DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DE8);
  }

  return result;
}

unint64_t sub_1000199C0()
{
  result = qword_100169DF0;
  if (!qword_100169DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DF0);
  }

  return result;
}

unint64_t sub_100019A18()
{
  result = qword_100169DF8;
  if (!qword_100169DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169DF8);
  }

  return result;
}

unint64_t sub_100019A70()
{
  result = qword_100169E00;
  if (!qword_100169E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E00);
  }

  return result;
}

unint64_t sub_100019AC8()
{
  result = qword_100169E08;
  if (!qword_100169E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E08);
  }

  return result;
}

unint64_t sub_100019B20()
{
  result = qword_100169E10;
  if (!qword_100169E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E10);
  }

  return result;
}

unint64_t sub_100019B78()
{
  result = qword_100169E18;
  if (!qword_100169E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E18);
  }

  return result;
}

unint64_t sub_100019BD0()
{
  result = qword_100169E20;
  if (!qword_100169E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E20);
  }

  return result;
}

unint64_t sub_100019C28()
{
  result = qword_100169E28;
  if (!qword_100169E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E28);
  }

  return result;
}

uint64_t sub_100019C7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 2036625250 && a2 == 0xE400000000000000)
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

uint64_t sub_100019D90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_100169E30, &qword_10010E590);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_100019FDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000052E4(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_1000052E4(a1);
  *a2 = v24;
  a2[1] = v13;
  v20 = v23;
  a2[2] = v22;
  a2[3] = v20;
  a2[4] = v15;
  a2[5] = v18;
  return result;
}

unint64_t sub_100019FDC()
{
  result = qword_100169E38;
  if (!qword_100169E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E38);
  }

  return result;
}

uint64_t sub_10001A030(uint64_t *a1)
{
  v2 = sub_100002BE4(&qword_100169E40, &qword_10010E598);
  v15 = *(v2 - 8);
  v3 = *(v15 + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  v6 = sub_100002BE4(&qword_100169E48, &qword_10010E5A0);
  v16 = *(v6 - 8);
  v7 = *(v16 + 64);
  __chkstk_darwin(v6);
  v9 = &v14 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_10001A288();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = v15;
  sub_10001A2DC();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v11 + 8))(v5, v2);
  (*(v16 + 8))(v9, v6);
  sub_1000052E4(a1);
  return v12;
}

unint64_t sub_10001A288()
{
  result = qword_100169E50;
  if (!qword_100169E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E50);
  }

  return result;
}

unint64_t sub_10001A2DC()
{
  result = qword_100169E58;
  if (!qword_100169E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E58);
  }

  return result;
}

unint64_t sub_10001A330()
{
  result = qword_100169E68;
  if (!qword_100169E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E68);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ModelLoadingError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ModelLoadingError(_WORD *result, int a2, int a3)
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

unint64_t sub_10001A494()
{
  result = qword_100169E78;
  if (!qword_100169E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E78);
  }

  return result;
}

unint64_t sub_10001A4EC()
{
  result = qword_100169E80;
  if (!qword_100169E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E80);
  }

  return result;
}

unint64_t sub_10001A544()
{
  result = qword_100169E88;
  if (!qword_100169E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E88);
  }

  return result;
}

unint64_t sub_10001A59C()
{
  result = qword_100169E90;
  if (!qword_100169E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E90);
  }

  return result;
}

unint64_t sub_10001A5F4()
{
  result = qword_100169E98;
  if (!qword_100169E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169E98);
  }

  return result;
}

unint64_t sub_10001A64C()
{
  result = qword_100169EA0;
  if (!qword_100169EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EA0);
  }

  return result;
}

unint64_t sub_10001A6A4()
{
  result = qword_100169EA8;
  if (!qword_100169EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EA8);
  }

  return result;
}

unint64_t sub_10001A6FC()
{
  result = qword_100169EB0;
  if (!qword_100169EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EB0);
  }

  return result;
}

unint64_t sub_10001A754()
{
  result = qword_100169EB8;
  if (!qword_100169EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EB8);
  }

  return result;
}

unint64_t sub_10001A7AC()
{
  result = qword_100169EC0;
  if (!qword_100169EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EC0);
  }

  return result;
}

unint64_t sub_10001A804()
{
  result = qword_100169EC8;
  if (!qword_100169EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169EC8);
  }

  return result;
}

unint64_t sub_10001A85C()
{
  result = qword_100169ED0;
  if (!qword_100169ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169ED0);
  }

  return result;
}

__n128 sub_10001A910(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10001A91C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10001A964(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_10001A9D0()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x534555475F444E45;
  v1._object = 0xEE00524553555F54;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_100169ED8 = v4;
}

void sub_10001AA90()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D2F0;
  v2._countAndFlagsBits = 0xD000000000000021;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100169EE8 = v4;
}

void sub_10001AB48()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D2A0;
  v2._countAndFlagsBits = 0xD000000000000023;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100169EF8 = v4;
}

void sub_10001AC00()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v1.value._object = 0xEB00000000656C62;
  v2._object = 0x800000010011D2D0;
  v2._countAndFlagsBits = 0xD00000000000001DLL;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  xmmword_100169F08 = v4;
}

uint64_t sub_10001ACB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v85 = a4;
  v84 = a3;
  v83 = a2;
  v100 = sub_100002BE4(&qword_100169F20, &qword_10010EB20);
  v7 = *(*(v100 - 8) + 64);
  __chkstk_darwin(v100);
  v9 = v77 - v8;
  v10 = sub_100002BE4(&qword_100169F28, &qword_10010EB28);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v89 = v77 - v12;
  v13 = type metadata accessor for CircularProgressViewStyle();
  v96 = *(v13 - 8);
  v97 = v13;
  v14 = *(v96 + 64);
  __chkstk_darwin(v13);
  v94 = v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_100002BE4(&qword_100169F30, &qword_10010EB30);
  v93 = *(v95 - 8);
  v16 = *(v93 + 64);
  __chkstk_darwin(v95);
  v92 = v77 - v17;
  v99 = sub_100002BE4(&qword_100169F38, &qword_10010EB38);
  v87 = *(v99 - 8);
  v18 = *(v87 + 64);
  __chkstk_darwin(v99);
  v98 = v77 - v19;
  v20 = sub_100002BE4(&qword_100169F40, &qword_10010EB40);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v88 = v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v90 = v77 - v24;
  v82 = sub_100002BE4(&qword_100169F48, &qword_10010EB48);
  v81 = *(v82 - 8);
  v25 = *(v81 + 64);
  __chkstk_darwin(v82);
  v27 = v77 - v26;
  v80 = sub_100002BE4(&qword_100169F50, &qword_10010EB50);
  v28 = *(*(v80 - 8) + 64);
  v29 = __chkstk_darwin(v80);
  v86 = v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v33 = v77 - v32;
  __chkstk_darwin(v31);
  v91 = v77 - v34;
  swift_getKeyPath();
  v101 = a1;
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 32) && (swift_getKeyPath(), v101 = a1, ObservationRegistrar.access<A, B>(_:keyPath:)(), v35 = , *(a1 + 16) == 1))
  {
    v77[3] = v10;
    v78 = v9;
    v79 = a5;
    v77[2] = v77;
    __chkstk_darwin(v35);
    v77[1] = &v77[-6];
    v36 = v83;
    v77[-4] = a1;
    v77[-3] = v36;
    LOBYTE(v77[-2]) = v84 & 1;
    v77[-1] = v85;
    v85 = sub_100002BE4(&qword_100169F78, &qword_10010EBA8);
    v37 = sub_10000459C(&qword_100169F80, &qword_10010EBB0);
    v38 = sub_10000459C(&qword_100169F88, &qword_10010EBB8);
    v39 = sub_10001D248();
    v40 = sub_100012C48(&qword_100169FF8, &qword_100169F88, &qword_10010EBB8);
    v101 = v37;
    v102 = v38;
    v103 = v39;
    v104 = v40;
    v41 = 1;
    swift_getOpaqueTypeConformance2();
    NavigationStack.init<>(root:)();
    swift_getKeyPath();
    v101 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + 17) == 1)
    {
      v42 = 0.0;
    }

    else
    {
      v42 = 1.0;
    }

    (*(v81 + 32))(v33, v27, v82);
    *&v33[*(v80 + 36)] = v42;
    sub_10001D504(v33, v91, &qword_100169F50, &qword_10010EB50);
    swift_getKeyPath();
    v101 = a1;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v43 = *(a1 + 17);
    v44 = v99;
    if (v43 == 1)
    {
      v45 = v92;
      ProgressView<>.init<>()();
      static Color.gray.getter();
      v46 = v94;
      CircularProgressViewStyle.init(tint:)();
      sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30);
      sub_10001D7F8(&qword_100169F60, &type metadata accessor for CircularProgressViewStyle);
      v48 = v97;
      v47 = v98;
      v49 = v95;
      View.progressViewStyle<A>(_:)();
      (*(v96 + 8))(v46, v48);
      (*(v93 + 8))(v45, v49);
      static UnitPoint.center.getter();
      v50 = v47 + *(v44 + 36);
      __asm { FMOV            V2.2D, #2.0 }

      *v50 = _Q2;
      *(v50 + 16) = v56;
      *(v50 + 24) = v57;
      sub_10001D504(v47, v90, &qword_100169F38, &qword_10010EB38);
      v41 = 0;
    }

    v58 = v90;
    (*(v87 + 56))(v90, v41, 1, v44);
    v59 = v91;
    v60 = v86;
    sub_10000C178(v91, v86, &qword_100169F50, &qword_10010EB50);
    v61 = v88;
    sub_10000C178(v58, v88, &qword_100169F40, &qword_10010EB40);
    v62 = v89;
    sub_10000C178(v60, v89, &qword_100169F50, &qword_10010EB50);
    v63 = sub_100002BE4(&qword_10016A000, &qword_10010EC18);
    sub_10000C178(v61, v62 + *(v63 + 48), &qword_100169F40, &qword_10010EB40);
    sub_100009908(v61, &qword_100169F40, &qword_10010EB40);
    sub_100009908(v60, &qword_100169F50, &qword_10010EB50);
    sub_10000C178(v62, v78, &qword_100169F28, &qword_10010EB28);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_100169F68, &qword_100169F28, &qword_10010EB28);
    sub_10001D0E4();
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v62, &qword_100169F28, &qword_10010EB28);
    sub_100009908(v58, &qword_100169F40, &qword_10010EB40);
    v64 = v59;
    v65 = &qword_100169F50;
    v66 = &qword_10010EB50;
  }

  else
  {
    v67 = v92;
    ProgressView<>.init<>()();
    static Color.gray.getter();
    v68 = v94;
    CircularProgressViewStyle.init(tint:)();
    sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30);
    sub_10001D7F8(&qword_100169F60, &type metadata accessor for CircularProgressViewStyle);
    v69 = v97;
    v70 = v98;
    v71 = v95;
    View.progressViewStyle<A>(_:)();
    (*(v96 + 8))(v68, v69);
    (*(v93 + 8))(v67, v71);
    static UnitPoint.center.getter();
    v72 = v70 + *(v99 + 36);
    __asm { FMOV            V2.2D, #2.0 }

    *v72 = _Q2;
    *(v72 + 16) = v74;
    *(v72 + 24) = v75;
    sub_10000C178(v70, v9, &qword_100169F38, &qword_10010EB38);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_100169F68, &qword_100169F28, &qword_10010EB28);
    sub_10001D0E4();
    _ConditionalContent<>.init(storage:)();
    v64 = v70;
    v65 = &qword_100169F38;
    v66 = &qword_10010EB38;
  }

  return sub_100009908(v64, v65, v66);
}

uint64_t sub_10001B834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v6 = a3;
  v33 = a3;
  v7 = a2;
  v32 = a2;
  v31 = a1;
  v35 = a5;
  v9 = sub_100002BE4(&qword_100169F80, &qword_10010EBB0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v27 - v11;
  v30 = static Alignment.center.getter();
  v29 = v13;
  sub_10001BB8C(a1, v7, v6, a4, &v41);
  v27 = v41;
  v28 = v42;
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  LOBYTE(v7) = static Edge.Set.all.getter();
  v14 = static SafeAreaRegions.all.getter();
  v15 = static Color.black.getter();
  v16 = static Edge.Set.all.getter();
  KeyPath = swift_getKeyPath();
  v18 = &v12[*(v9 + 36)];
  v19 = *(sub_100002BE4(&qword_100169FF0, &qword_10010EBE8) + 28);
  v20 = enum case for ColorScheme.dark(_:);
  v21 = type metadata accessor for ColorScheme();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = KeyPath;
  *(v12 + 1) = v27;
  v22 = v43;
  *(v12 + 88) = v44;
  v23 = v46;
  *(v12 + 104) = v45;
  *(v12 + 120) = v23;
  *(v12 + 136) = v47;
  v24 = v42;
  *(v12 + 40) = v41;
  *(v12 + 56) = v24;
  v25 = v29;
  *v12 = v30;
  *(v12 + 1) = v25;
  *(v12 + 4) = v28;
  *(v12 + 72) = v22;
  *(v12 + 19) = v14;
  v12[160] = v7;
  *(v12 + 161) = *v40;
  *(v12 + 41) = *&v40[3];
  *(v12 + 21) = v15;
  v12[176] = v16;
  v36 = v31;
  v37 = v32;
  v38 = v33;
  v39 = v34;
  sub_100002BE4(&qword_100169F88, &qword_10010EBB8);
  sub_10001D248();
  sub_100012C48(&qword_100169FF8, &qword_100169F88, &qword_10010EBB8);
  View.toolbar<A>(content:)();
  return sub_100009908(v12, &qword_100169F80, &qword_10010EBB0);
}

uint64_t sub_10001BB8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t (**a5)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  swift_getKeyPath();
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + 32))
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    *(v10 + 32) = a3 & 1;
    *(v10 + 40) = a4;

    v11 = sub_10001DA4C;
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(a1 + 24);
  v13 = v12;
  sub_10001D9F4(v11);
  v14 = v13;
  sub_100014104(v11);
  *a5 = v11;
  a5[1] = v10;
  a5[2] = v12;

  return sub_100014104(v11);
}

uint64_t sub_10001BD38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10001DA5C(a1, a2);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  GeometryProxy.size.getter();
  v6 = v5 * 0.5;
  GeometryProxy.size.getter();
  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 16) = v9;
  *(a3 + 24) = v10;
  *(a3 + 32) = v11;
  *(a3 + 40) = v12;
  *(a3 + 48) = v13;
  *(a3 + 56) = v14;
  *(a3 + 64) = v6;
  *(a3 + 72) = v7 * 0.5;
}

uint64_t sub_10001BE24(uint64_t a1)
{
  v2 = type metadata accessor for ColorScheme();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.colorScheme.setter();
}

uint64_t sub_10001BEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v43 = a5;
  v46 = sub_100002BE4(&qword_10016A008, &qword_10010EC50);
  v9 = *(*(v46 - 8) + 64);
  __chkstk_darwin(v46);
  v41 = &v35 - v10;
  v42 = sub_100002BE4(&qword_10016A010, &qword_10010EC58);
  v40 = *(v42 - 8);
  v11 = *(v40 + 64);
  __chkstk_darwin(v42);
  v37 = &v35 - v12;
  v39 = sub_100002BE4(&qword_10016A018, &qword_10010EC60);
  v38 = *(v39 - 8);
  v13 = *(v38 + 64);
  __chkstk_darwin(v39);
  v44 = &v35 - v14;
  v15 = type metadata accessor for ToolbarItemPlacement();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v36 = sub_100002BE4(&qword_10016A020, &qword_10010EC68);
  v45 = *(v36 - 8);
  v17 = *(v45 + 64);
  __chkstk_darwin(v36);
  v35 = &v35 - v18;
  static ToolbarItemPlacement.topBarLeading.getter();
  v55 = a1;
  v56 = a2;
  v57 = a3;
  v58 = a4;
  sub_100002BE4(&qword_10016A028, &qword_10010EC70);
  sub_100012C48(&qword_10016A030, &qword_10016A028, &qword_10010EC70);
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.bottomBar.getter();
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  sub_100002BE4(&qword_10016A038, &qword_10010EC78);
  sub_10001D5C4();
  ToolbarItem<>.init(placement:content:)();
  static ToolbarItemPlacement.topBarLeading.getter();
  v47 = a1;
  v48 = a2;
  v49 = a3;
  v50 = a4;
  sub_100002BE4(&qword_10016A078, &qword_10010EC98);
  v19 = sub_10000459C(&qword_10016A080, &unk_10010ECA0);
  v20 = sub_10000459C(&qword_10016A088, &unk_100116A60);
  v21 = sub_100012C48(&qword_10016A090, &qword_10016A080, &unk_10010ECA0);
  v22 = sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
  v59 = v19;
  v60 = v20;
  v61 = &type metadata for Text;
  v62 = v21;
  v63 = v22;
  v64 = &protocol witness table for Text;
  swift_getOpaqueTypeConformance2();
  v23 = v37;
  ToolbarItem<>.init(placement:content:)();
  v24 = *(v46 + 48);
  v25 = *(v46 + 64);
  v26 = v41;
  v27 = v35;
  v28 = v36;
  (*(v45 + 16))(v41, v35, v36);
  v29 = v38;
  v30 = v44;
  v31 = v39;
  (*(v38 + 16))(&v26[v24], v44, v39);
  v32 = v40;
  v33 = v42;
  (*(v40 + 16))(&v26[v25], v23, v42);
  TupleToolbarContent.init(_:)();
  (*(v32 + 8))(v23, v33);
  (*(v29 + 8))(v30, v31);
  return (*(v45 + 8))(v27, v28);
}

uint64_t sub_10001C4C8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = type metadata accessor for ButtonRole();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  static ButtonRole.close.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;

  return Button<>.init(role:action:)();
}

uint64_t sub_10001C5C0()
{
  swift_getKeyPath();
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A36D0(0xD00000000000001FLL, 0x800000010011D340);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_10001C690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a3;
  v27 = a5;
  v8 = sub_100002BE4(&qword_10016A048, &unk_10010EC80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v25[-v10];
  v12 = sub_100002BE4(&qword_10016A0B0, &qword_10010ECC0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v25[-v15];
  swift_getKeyPath();
  v28 = a2;
  sub_10001D7F8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + 32) == 1)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a1;
    *(v17 + 24) = a2;
    *(v17 + 32) = v26 & 1;
    *(v17 + 40) = a4;

    sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    Button.init(action:label:)();
    static Color.red.getter();
    v18 = Color.opacity(_:)();

    KeyPath = swift_getKeyPath();
    v20 = &v11[*(v8 + 36)];
    *v20 = KeyPath;
    v20[1] = v18;
    sub_10001D684();
    View.bold(_:)();
    sub_100009908(v11, &qword_10016A048, &unk_10010EC80);
    v21 = v27;
    (*(v13 + 32))(v27, v16, v12);
    v22 = 0;
    v23 = v21;
  }

  else
  {
    v22 = 1;
    v23 = v27;
  }

  return (*(v13 + 56))(v23, v22, 1, v12);
}

double sub_10001C98C@<D0>(uint64_t a1@<X8>)
{
  if (qword_100168EC0 != -1)
  {
    swift_once();
  }

  sub_100012928();

  v2 = Text.init<A>(_:)();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = static Edge.Set.all.getter();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  result = 8.0;
  *(a1 + 40) = xmmword_10010EA70;
  *(a1 + 56) = xmmword_10010EA70;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_10001CA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a5;
  v9 = sub_100002BE4(&qword_10016A080, &unk_10010ECA0);
  v31 = *(v9 - 8);
  v32 = v9;
  v10 = *(v31 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;

  v30 = v12;
  Button.init(action:label:)();
  if (qword_100168EC8 != -1)
  {
    swift_once();
  }

  v33 = xmmword_100169EE8;
  sub_100012928();

  v14 = Text.init<A>(_:)();
  v27 = v15;
  v28 = v14;
  v17 = v16;
  v19 = v18;
  v35 = a3 & 1;
  v36 = a4;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  v20 = State.projectedValue.getter();
  v26 = v25;
  v25[1] = v34;
  __chkstk_darwin(v20);
  sub_100002BE4(&qword_10016A088, &unk_100116A60);
  sub_100012C48(&qword_10016A090, &qword_10016A080, &unk_10010ECA0);
  sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60);
  v21 = v32;
  v22 = v28;
  v23 = v30;
  View.alert<A, B>(_:isPresented:actions:message:)();

  sub_10001297C(v22, v17, v19 & 1);

  return (*(v31 + 8))(v23, v21);
}

uint64_t sub_10001CDE0@<X0>(uint64_t *a1@<X8>)
{
  result = Image.init(systemName:)();
  *a1 = result;
  return result;
}

uint64_t sub_10001CE20(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = sub_100002BE4(&qword_10016A0A8, &qword_100119A80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v15 - v10;
  if (qword_100168ED8 != -1)
  {
    swift_once();
  }

  v15 = xmmword_100169F08;

  static ButtonRole.destructive.getter();
  v12 = type metadata accessor for ButtonRole();
  (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3 & 1;
  *(v13 + 40) = a4;
  sub_100012928();

  return Button<>.init<A>(_:role:action:)();
}

uint64_t sub_10001CFC4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100168ED0 != -1)
  {
    swift_once();
  }

  sub_100012928();

  result = Text.init<A>(_:)();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_10001D068@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  *a1 = static Alignment.center.getter();
  a1[1] = v7;
  v8 = sub_100002BE4(&qword_100169F18, &qword_10010EB18);
  return sub_10001ACB8(v3, v4, v5, v6, a1 + *(v8 + 44));
}

unint64_t sub_10001D0E4()
{
  result = qword_100169F70;
  if (!qword_100169F70)
  {
    sub_10000459C(&qword_100169F38, &qword_10010EB38);
    sub_10000459C(&qword_100169F30, &qword_10010EB30);
    type metadata accessor for CircularProgressViewStyle();
    sub_100012C48(&qword_100169F58, &qword_100169F30, &qword_10010EB30);
    sub_10001D7F8(&qword_100169F60, &type metadata accessor for CircularProgressViewStyle);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169F70);
  }

  return result;
}

unint64_t sub_10001D248()
{
  result = qword_100169F90;
  if (!qword_100169F90)
  {
    sub_10000459C(&qword_100169F80, &qword_10010EBB0);
    sub_10001D300();
    sub_100012C48(&qword_100169FE8, &qword_100169FF0, &qword_10010EBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169F90);
  }

  return result;
}

unint64_t sub_10001D300()
{
  result = qword_100169F98;
  if (!qword_100169F98)
  {
    sub_10000459C(&qword_100169FA0, &qword_10010EBC0);
    sub_10001D3B8();
    sub_100012C48(&qword_100169FD8, &qword_100169FE0, &qword_10010EBE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169F98);
  }

  return result;
}

unint64_t sub_10001D3B8()
{
  result = qword_100169FA8;
  if (!qword_100169FA8)
  {
    sub_10000459C(&qword_100169FB0, &qword_10010EBC8);
    sub_10001D444();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169FA8);
  }

  return result;
}

unint64_t sub_10001D444()
{
  result = qword_100169FB8;
  if (!qword_100169FB8)
  {
    sub_10000459C(&qword_100169FC0, &qword_10010EBD0);
    sub_100012C48(&qword_100169FC8, &qword_100169FD0, &qword_10010EBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169FB8);
  }

  return result;
}

uint64_t sub_10001D504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002BE4(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001D5C4()
{
  result = qword_10016A040;
  if (!qword_10016A040)
  {
    sub_10000459C(&qword_10016A038, &qword_10010EC78);
    sub_10000459C(&qword_10016A048, &unk_10010EC80);
    sub_10001D684();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A040);
  }

  return result;
}

unint64_t sub_10001D684()
{
  result = qword_10016A050;
  if (!qword_10016A050)
  {
    sub_10000459C(&qword_10016A048, &unk_10010EC80);
    sub_100012C48(&qword_10016A058, &qword_10016A060, &qword_100113B50);
    sub_100012C48(&qword_10016A068, &qword_10016A070, &qword_10010EC90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A050);
  }

  return result;
}

uint64_t sub_10001D7F8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10001D840()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  return State.wrappedValue.setter();
}

unint64_t sub_10001D8A0()
{
  result = qword_10016A0C0;
  if (!qword_10016A0C0)
  {
    sub_10000459C(&qword_10016A0B8, &qword_10010ECF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A0C0);
  }

  return result;
}

uint64_t sub_10001D924@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001D950@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.tintColor.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10001D97C(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_10001D9A8(uint64_t *a1)
{
  v1 = *a1;

  return EnvironmentValues.tintColor.setter();
}

uint64_t sub_10001D9D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  return sub_10001C5C0();
}

uint64_t sub_10001D9F4(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10001DA04()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10001DA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  return sub_10001BD38(a1, *(v2 + 16), a2);
}

double sub_10001DA5C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_10001D7F8(&qword_100169C08, type metadata accessor for MirroringViewModel);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = *(a2 + 40);
  if (v3)
  {
    [v3 videoFrameSize];
    if (v4 > 0.0 && v5 > 0.0)
    {
      sub_10002FAC4(COERCE__INT64(v5 / v4), 0);
    }
  }

  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a2 + 56))
  {
    GeometryProxy.size.getter();
    v7 = v6;
  }

  else
  {
    v8 = *(a2 + 48);
    GeometryProxy.size.getter();
    v7 = v10;
    if (v8 > 1.0)
    {
      v7 = v9 / v8;
    }
  }

  GeometryProxy.size.getter();
  return v7;
}

id sub_10001DC30(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR____TtC17AppleVisionProApp21PrivacyViewController_buttonHandler];
  *v3 = a1;
  *(v3 + 1) = a2;
  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v13._object = 0xE000000000000000;
  v6._countAndFlagsBits = 0x5F59434156495250;
  v6._object = 0xED0000454C544954;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v6, v7, v5, v8, v13);

  v9 = String._bridgeToObjectiveC()();

  v12.receiver = v2;
  v12.super_class = type metadata accessor for PrivacyViewController();
  v10 = objc_msgSendSuper2(&v12, "initWithTitle:detailText:icon:contentLayout:", v9, 0, 0, 2);

  return v10;
}

void sub_10001DD64()
{
  v48.receiver = v0;
  v48.super_class = type metadata accessor for PrivacyViewController();
  objc_msgSendSuper2(&v48, "viewDidLoad");
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v49._object = 0xE000000000000000;
  v3._object = 0x800000010011D460;
  v3._countAndFlagsBits = 0xD000000000000018;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._countAndFlagsBits = 0;
  v5._object = 0xE000000000000000;
  v49._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, v4, v2, v5, v49);

  v6 = String._bridgeToObjectiveC()();

  v7 = [v1 mainBundle];
  v50._object = 0xE000000000000000;
  v8._countAndFlagsBits = 0xD00000000000001ELL;
  v8._object = 0x800000010011D480;
  v9.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v9.value._object = 0xEB00000000656C62;
  v10._countAndFlagsBits = 0;
  v10._object = 0xE000000000000000;
  v50._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v9, v7, v10, v50);

  v11 = String._bridgeToObjectiveC()();

  v12 = String._bridgeToObjectiveC()();
  [v0 addBulletedListItemWithTitle:v6 description:v11 symbolName:v12];

  v13 = [v1 mainBundle];
  v51._object = 0xE000000000000000;
  v14._object = 0x800000010011D4A0;
  v14._countAndFlagsBits = 0xD000000000000018;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._countAndFlagsBits = 0;
  v16._object = 0xE000000000000000;
  v51._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v14, v15, v13, v16, v51);

  v17 = String._bridgeToObjectiveC()();

  v18 = [v1 mainBundle];
  v52._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD00000000000001ELL;
  v19._object = 0x800000010011D4C0;
  v20.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v20.value._object = 0xEB00000000656C62;
  v21._countAndFlagsBits = 0;
  v21._object = 0xE000000000000000;
  v52._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v19, v20, v18, v21, v52);

  v22 = String._bridgeToObjectiveC()();

  v23 = String._bridgeToObjectiveC()();
  [v0 addBulletedListItemWithTitle:v17 description:v22 symbolName:v23];

  v24 = [v1 mainBundle];
  v53._object = 0xE000000000000000;
  v25._countAndFlagsBits = 0xD00000000000001ALL;
  v25._object = 0x800000010011D500;
  v26.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v26.value._object = 0xEB00000000656C62;
  v27._countAndFlagsBits = 0;
  v27._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v25, v26, v24, v27, v53);

  v28 = String._bridgeToObjectiveC()();

  v29 = [v1 mainBundle];
  v54._object = 0xE000000000000000;
  v30._countAndFlagsBits = 0xD000000000000020;
  v30._object = 0x800000010011D520;
  v31.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v31.value._object = 0xEB00000000656C62;
  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  v54._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v30, v31, v29, v32, v54);

  v33 = String._bridgeToObjectiveC()();

  v34 = String._bridgeToObjectiveC()();
  [v0 addBulletedListItemWithTitle:v28 description:v33 symbolName:v34];

  v35 = String._bridgeToObjectiveC()();
  [v0 setAccessibilityIdentifier:v35];

  v36 = [objc_opt_self() boldButton];
  v37 = String._bridgeToObjectiveC()();
  [v36 setAccessibilityIdentifier:v37];

  [v36 addTarget:v0 action:"didTapContinueButton" forControlEvents:64];
  v38 = [v1 mainBundle];
  v39._countAndFlagsBits = 0xD000000000000010;
  v55._object = 0xE000000000000000;
  v39._object = 0x800000010011D590;
  v40.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v40.value._object = 0xEB00000000656C62;
  v41._countAndFlagsBits = 0;
  v41._object = 0xE000000000000000;
  v55._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v39, v40, v38, v41, v55);

  v42 = String._bridgeToObjectiveC()();

  [v36 setTitle:v42 forState:0];

  v43 = [v0 buttonTray];
  [v43 addButton:v36];

  v44 = [v0 buttonTray];
  sub_100002BE4(&qword_1001695D0, &unk_10010CF70);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_10010D3B0;
  *(v45 + 32) = static BundleIdentifierConstants.privacyBundleIdentifier.getter();
  *(v45 + 40) = v46;
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v44 setPrivacyLinkForBundles:isa];
}

id sub_10001E4A4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PrivacyViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_10001E510()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(type metadata accessor for PrivacyViewController());

  return sub_10001DC30(v1, v2);
}

uint64_t sub_10001E5A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001E708();

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_10001E608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_10001E708();

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_10001E66C()
{
  sub_10001E708();
  UIViewControllerRepresentable.body.getter();
  __break(1u);
}

unint64_t sub_10001E6A8()
{
  result = qword_10016A108;
  if (!qword_10016A108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A108);
  }

  return result;
}

unint64_t sub_10001E708()
{
  result = qword_10016A110;
  if (!qword_10016A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A110);
  }

  return result;
}

uint64_t sub_10001E770(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10001E840(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for EpicShowcaseComponentModel()
{
  result = qword_10016A178;
  if (!qword_10016A178)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10001E93C()
{
  sub_10001EA88();
  if (v0 <= 0x3F)
  {
    sub_10001EB04();
    if (v1 <= 0x3F)
    {
      sub_10001EBF0(319, &qword_10016A1A8);
      if (v2 <= 0x3F)
      {
        sub_10001EBF0(319, &qword_10016A1B0);
        if (v3 <= 0x3F)
        {
          sub_10001EC3C(319, &qword_10016A1B8, &qword_10016A1C0, &qword_10010EF28);
          if (v4 <= 0x3F)
          {
            sub_10001EC3C(319, &qword_10016A1C8, &unk_10016A1D0, &qword_10010EF30);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10001EA88()
{
  if (!qword_10016A188)
  {
    v0 = type metadata accessor for CodeAnyHashable();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A188);
    }
  }
}

void sub_10001EB04()
{
  if (!qword_10016A190)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    sub_10001EB74();
    v0 = type metadata accessor for CodeByExpressibleByJSON();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A190);
    }
  }
}

unint64_t sub_10001EB74()
{
  result = qword_10016A1A0;
  if (!qword_10016A1A0)
  {
    sub_10000459C(&qword_10016A198, &qword_10010EF20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A1A0);
  }

  return result;
}

void sub_10001EBF0(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_10001EC3C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_10000459C(a3, a4);
    v5 = type metadata accessor for DiscardOnError();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 sub_10001EC90(uint64_t a1, uint64_t a2)
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

uint64_t sub_10001ECA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_10001ED00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_10001ED74(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x65726E6567;
    v7 = 0x657A696C61636F6CLL;
    if (a1 != 10)
    {
      v7 = 0x6567646162;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x736567616D69;
    v9 = 0xD000000000000011;
    if (a1 != 7)
    {
      v9 = 0x6575676573;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x656C746974;
    v3 = 1701869940;
    if (a1 != 4)
    {
      v3 = 7107189;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x65746F4E676E6F6CLL;
    if (a1 != 1)
    {
      v4 = 0x746F4E74726F6873;
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
}

uint64_t sub_10001EEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002014C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001EF10(uint64_t a1)
{
  v2 = sub_10001FCD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001EF4C(uint64_t a1)
{
  v2 = sub_10001FCD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10001EF88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v93 = a2;
  v91 = type metadata accessor for FlowAction();
  v3 = *(*(v91 - 8) + 64);
  __chkstk_darwin(v91);
  v92 = v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016A198, &qword_10010EF20);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v100 = v85 - v7;
  v97 = sub_100002BE4(&qword_10016A240, &unk_10010F040);
  v95 = *(v97 - 8);
  v8 = *(v95 + 64);
  __chkstk_darwin(v97);
  v10 = v85 - v9;
  v11 = type metadata accessor for EpicShowcaseComponentModel();
  v12 = *(*(v11 - 1) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v17 = type metadata accessor for ImpressionMetrics();
  v18 = *(*(v17 - 8) + 56);
  v101 = v16;
  v94 = v17;
  v18(&v15[v16], 1, 1);
  v19 = v11[11];
  sub_10001FC78(v112);
  v102 = v19;
  memcpy(&v15[v19], v112, 0x150uLL);
  v20 = &v15[v11[12]];
  *v20 = 0;
  *(v20 + 1) = 0;
  v21 = &v15[v11[13]];
  *v21 = 0;
  *(v21 + 1) = 0;
  v22 = v11[14];
  *&v15[v22] = 0;
  v23 = v11[15];
  v103 = v15;
  v24 = &v15[v23];
  memset(v111, 0, 40);
  *v24 = 0u;
  *(v24 + 1) = 0u;
  *(v24 + 4) = 0;
  v98 = &v15[v23];
  sub_10001FD78(v111, &v15[v23], &qword_10016A248, &qword_100114390);
  v25 = a1[3];
  v26 = a1[4];
  v99 = a1;
  sub_10000524C(a1, v25);
  sub_10001FCD0();
  v96 = v10;
  v27 = v113;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    v113 = v27;
    v34 = v103;
    sub_1000052E4(v99);
    v100 = 0;
LABEL_4:
    v35 = v102;
    sub_100009908(v34 + v101, &qword_10016A118, &unk_10010EEF0);

    memcpy(v111, (v34 + v35), sizeof(v111));
    sub_100009908(v111, &qword_10016A258, &qword_10010F050);

    return sub_100009908(v98, &qword_10016A230, &unk_10010F030);
  }

  v28 = v95;
  v89 = v20;
  v90 = v22;
  v29 = v100;
  v88 = v21;
  LOBYTE(v111[0]) = 0;
  v30 = v96;
  v31 = v97;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v113 = 0;
  v37 = 1701736302;
  if (v33)
  {
    v37 = v32;
  }

  v38 = 0xE400000000000000;
  if (v33)
  {
    v38 = v33;
  }

  v111[0] = v37;
  v111[1] = v38;
  v39 = v103;
  AnyHashable.init<A>(_:)();
  LOBYTE(v111[0]) = 1;
  v40 = v113;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  if (v40)
  {
    v113 = v40;
    (*(v28 + 8))(v30, v31);
    v86 = 0;
    v43 = v39;
    sub_1000052E4(v99);
    v100 = 0;
    v87 = 0;
LABEL_12:
    v34 = v43;
    sub_100009908(v43, &qword_10016A238, &qword_100114380);
    goto LABEL_4;
  }

  v44 = (v39 + v11[6]);
  *v44 = v41;
  v44[1] = v42;
  v85[2] = v42;
  LOBYTE(v111[0]) = 2;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v46 = (v39 + v11[7]);
  *v46 = v45;
  v46[1] = v47;
  v85[1] = v47;
  LOBYTE(v111[0]) = 3;
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v49 = (v39 + v11[8]);
  *v49 = v48;
  v49[1] = v50;
  v86 = v50;
  LOBYTE(v111[0]) = 4;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = (v39 + v11[9]);
  *v52 = v51;
  v52[1] = v53;
  LOBYTE(v111[0]) = 5;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v113 = 0;
  v56 = (v39 + v11[10]);
  *v56 = v54;
  v56[1] = v55;
  v87 = v55;
  v110[343] = 6;
  v57 = v54;
  sub_10001FD24();
  v58 = v113;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v113 = v58;
  if (v58)
  {
    (*(v28 + 8))(v30, v31);
    sub_1000052E4(v99);
    v100 = 0;
    v43 = v39;
    goto LABEL_12;
  }

  v85[0] = v57;
  memcpy(v109, v111, sizeof(v109));
  v59 = v102;
  memcpy(v110, (v39 + v102), 0x150uLL);
  sub_100009908(v110, &qword_10016A258, &qword_10010F050);
  memcpy((v39 + v59), v109, 0x150uLL);
  LOBYTE(v104) = 7;
  sub_10001FFCC(&qword_10016A268, &type metadata accessor for ImpressionMetrics);
  v60 = v113;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v113 = v60;
  if (v60 || (sub_10001FD78(v29, &v103[v101], &qword_10016A198, &qword_10010EF20), sub_100002BE4(&qword_10016A270, &qword_10010F058), v108 = 9, sub_10001FDE0(), v61 = v113, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v113 = v61) != 0))
  {
    (*(v28 + 8))(v30, v31);
    sub_1000052E4(v99);
LABEL_18:
    v100 = 0;
    v43 = v103;
    goto LABEL_12;
  }

  *&v103[v90] = v104;
  LOBYTE(v104) = 10;
  v62 = v30;
  v63 = v113;
  v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v100 = v65;
  v113 = v63;
  if (v63)
  {
    (*(v28 + 8))(v30, v97);
    sub_1000052E4(v99);
    goto LABEL_18;
  }

  v66 = v89;
  v67 = v100;
  *v89 = v64;
  v66[1] = v67;
  LOBYTE(v104) = 11;
  v68 = v113;
  v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v113 = v68;
  if (v68)
  {
    (*(v28 + 8))(v30, v97);
    sub_1000052E4(v99);
    v43 = v103;
    goto LABEL_12;
  }

  v71 = v87;
  v72 = v88;
  *v88 = v69;
  v72[1] = v70;
  if (v71)
  {
    v104 = v85[0];
    v105 = v87;

    v73._object = 0x800000010011D5B0;
    v73._countAndFlagsBits = 0xD000000000000017;
    String.append(_:)(v73);
    v74 = v104;
    v75 = v105;
    v76 = v91;
    v77 = v92;
    v78 = &v92[*(v91 + 20)];
    static ActionMetrics.notInstrumented.getter();
    v79 = v77 + *(v76 + 24);
    *(v79 + 3) = &type metadata for TVPageIntent;
    *(v79 + 4) = sub_10001FF78();
    *v79 = v74;
    *(v79 + 1) = v75;
    v79[40] = 0;
    v80 = static FlowActionPresentation.sheetPresent.getter();
    *v77 = 0x656761507674;
    v77[1] = 0xE600000000000000;
    v81 = (v77 + *(v76 + 28));
    *v81 = v80;
    v81[1] = v82;
    v106 = v76;
    v107 = sub_10001FFCC(&qword_10016A290, type metadata accessor for FlowAction);
    v83 = sub_100020014(&v104);
    sub_100020078(v77, v83);
    (*(v28 + 8))(v62, v97);
    sub_10001FD78(&v104, v98, &qword_10016A248, &qword_100114390);
  }

  else
  {
    (*(v28 + 8))(v30, v97);
  }

  v84 = v103;
  sub_10001FEB8(v103, v93);
  sub_1000052E4(v99);
  return sub_10001FF1C(v84);
}

double sub_10001F974@<D0>(uint64_t a1@<X8>)
{
  sub_10000C178(v1, v5, &qword_10016A238, &qword_100114380);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_10001F9CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000C178(v2 + *(a1 + 60), v6, &qword_10016A230, &unk_10010F030);
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v7;
  return result;
}

uint64_t sub_10001FA44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A118, &unk_10010EEF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v10 - v7;
  sub_10000C178(v2 + *(a1 + 20), &v10 - v7, &qword_10016A118, &unk_10010EEF0);
  return sub_1000200DC(v8, a2);
}

uint64_t sub_10001FAF4()
{
  v1 = 25705;
  v2 = 1701869940;
  if (*v0 != 2)
  {
    v2 = 7107189;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t sub_10001FB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10002050C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10001FB74(uint64_t a1)
{
  v2 = sub_100020968();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001FBB0(uint64_t a1)
{
  v2 = sub_100020968();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10001FBEC@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100020668(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

_OWORD *sub_10001FC78(uint64_t a1)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 328) = 0;
  *(a1 + 40) = 0u;
  result = (a1 + 40);
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  return result;
}

unint64_t sub_10001FCD0()
{
  result = qword_10016A250;
  if (!qword_10016A250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A250);
  }

  return result;
}

unint64_t sub_10001FD24()
{
  result = qword_10016A260;
  if (!qword_10016A260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A260);
  }

  return result;
}

uint64_t sub_10001FD78(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100002BE4(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_10001FDE0()
{
  result = qword_10016A278;
  if (!qword_10016A278)
  {
    sub_10000459C(&qword_10016A270, &qword_10010F058);
    sub_10001FE64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A278);
  }

  return result;
}

unint64_t sub_10001FE64()
{
  result = qword_10016A280;
  if (!qword_10016A280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A280);
  }

  return result;
}

uint64_t sub_10001FEB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpicShowcaseComponentModel();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10001FF1C(uint64_t a1)
{
  v2 = type metadata accessor for EpicShowcaseComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10001FF78()
{
  result = qword_10016A288;
  if (!qword_10016A288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A288);
  }

  return result;
}

uint64_t sub_10001FFCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_100020014(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100020078(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlowAction();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000200DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A198, &qword_10010EF20);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002014C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746F4E676E6F6CLL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746F4E74726F6873 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736567616D69 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x800000010011D5D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xED00006570795464 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6567646162 && a2 == 0xE500000000000000)
  {

    return 11;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

uint64_t sub_10002050C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_100020668@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100002BE4(&qword_10016A298, &qword_10010F060);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29 - v8;
  v10 = a1[4];
  sub_10000524C(a1, a1[3]);
  sub_100020968();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_1000052E4(a1);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    return sub_1000209BC(&v37);
  }

  else
  {
    LOBYTE(v37) = 0;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v6;
    v32 = v12;
    v30 = a2;
    LOBYTE(v37) = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    LOBYTE(v37) = 2;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v18 = v17;
    v45 = 3;
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v20 = *(v31 + 8);
    v31 = v19;
    v21 = v9;
    v23 = v22;
    v20(v21, v5);
    v24 = v32;
    *&v33 = v11;
    *(&v33 + 1) = v32;
    *&v34 = v13;
    *(&v34 + 1) = v15;
    *&v35 = v16;
    *(&v35 + 1) = v18;
    *&v36 = v31;
    *(&v36 + 1) = v23;
    sub_1000209EC(&v33, &v37);
    sub_1000052E4(a1);
    v37 = v11;
    v38 = v24;
    v39 = v13;
    v40 = v15;
    v41 = v16;
    v42 = v18;
    v43 = v31;
    v44 = v23;
    result = sub_1000209BC(&v37);
    v26 = v34;
    v27 = v30;
    *v30 = v33;
    v27[1] = v26;
    v28 = v36;
    v27[2] = v35;
    v27[3] = v28;
  }

  return result;
}

unint64_t sub_100020968()
{
  result = qword_10016A2A0;
  if (!qword_10016A2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EpicShowcaseComponentModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EpicShowcaseComponentModel.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100020B88()
{
  result = qword_10016A2A8;
  if (!qword_10016A2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2A8);
  }

  return result;
}

unint64_t sub_100020BE0()
{
  result = qword_10016A2B0;
  if (!qword_10016A2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2B0);
  }

  return result;
}

unint64_t sub_100020C38()
{
  result = qword_10016A2B8;
  if (!qword_10016A2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2B8);
  }

  return result;
}

unint64_t sub_100020C90()
{
  result = qword_10016A2C0;
  if (!qword_10016A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2C0);
  }

  return result;
}

unint64_t sub_100020CE8()
{
  result = qword_10016A2C8;
  if (!qword_10016A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2C8);
  }

  return result;
}

unint64_t sub_100020D40()
{
  result = qword_10016A2D0;
  if (!qword_10016A2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A2D0);
  }

  return result;
}

uint64_t sub_100020DA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tip(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_100020E28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Tip(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for TipLabelView()
{
  result = qword_10016A330;
  if (!qword_10016A330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100020EE4()
{
  result = type metadata accessor for Tip(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100020F6C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v3 = sub_100002BE4(&qword_10016A370, &qword_10010F2F8);
  v91 = *(v3 - 8);
  v92 = v3;
  v4 = *(v91 + 64);
  __chkstk_darwin(v3);
  v73 = (&v73 - v5);
  v6 = sub_100002BE4(&qword_10016A378, &unk_10010F300);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v93 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v90 = &v73 - v10;
  v85 = type metadata accessor for AutomationSemantics();
  v84 = *(v85 - 8);
  v11 = *(v84 + 64);
  __chkstk_darwin(v85);
  v83 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v13 = *(*(v80 - 8) + 64);
  __chkstk_darwin(v80);
  v15 = &v73 - v14;
  v82 = sub_100002BE4(&qword_10016A380, &qword_10010F310);
  v81 = *(v82 - 8);
  v16 = *(v81 + 64);
  __chkstk_darwin(v82);
  v78 = &v73 - v17;
  v18 = sub_100002BE4(&qword_10016A388, &qword_10010F318);
  v87 = *(v18 - 8);
  v88 = v18;
  v19 = *(v87 + 64);
  v20 = __chkstk_darwin(v18);
  v86 = &v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v79 = &v73 - v22;
  v89 = a1;
  v23 = *(a1 + 16);
  v24 = *(a1 + 24);
  *&v96 = v23;
  *(&v96 + 1) = v24;
  sub_100012928();

  v25 = Text.init<A>(_:)();
  v27 = v26;
  v29 = v28;
  static Font.headline.getter();
  v30 = Text.font(_:)();
  v32 = v31;
  v34 = v33;

  sub_10001297C(v25, v27, v29 & 1);

  static Font.Weight.bold.getter();
  v35 = Text.fontWeight(_:)();
  v37 = v36;
  LOBYTE(v27) = v38;
  v40 = v39;
  sub_10001297C(v30, v32, v34 & 1);

  KeyPath = swift_getKeyPath();
  v77 = v35;
  *&v96 = v35;
  *(&v96 + 1) = v37;
  v76 = v37;
  v42 = v27 & 1;
  LOBYTE(v97) = v27 & 1;
  *(&v97 + 1) = v40;
  v98 = KeyPath;
  v99 = 0;
  v43 = enum case for DynamicTypeSize.accessibility2(_:);
  v44 = type metadata accessor for DynamicTypeSize();
  (*(*(v44 - 8) + 104))(v15, v43, v44);
  sub_1000128D0();
  v45 = v15;
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v75 = sub_100002BE4(&qword_10016A390, &qword_10010F350);
    v74 = sub_100021FAC();
    v47 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    v48 = v78;
    v49 = v80;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v45, &qword_100169A10, &qword_10010D450);
    sub_10001297C(v77, v76, v42);

    v96 = 0u;
    v97 = 0u;
    memset(v95, 0, sizeof(v95));
    v50 = v83;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(v95, &qword_100169A38, &qword_10010D460);
    sub_100009908(&v96, &qword_100169A38, &qword_10010D460);
    *&v96 = v75;
    *(&v96 + 1) = v49;
    *&v97 = v74;
    *(&v97 + 1) = v47;
    v51 = 1;
    swift_getOpaqueTypeConformance2();
    v52 = v79;
    v53 = v82;
    View.automationSemantics(_:)();
    (*(v84 + 8))(v50, v85);
    (*(v81 + 8))(v48, v53);
    v54 = *(v89 + 40);
    if (v54)
    {
      v55 = *(v89 + 32);
      v56 = static VerticalAlignment.center.getter();
      v57 = v73;
      *v73 = v56;
      *(v57 + 8) = 0x4018000000000000;
      *(v57 + 16) = 0;
      v58 = sub_100002BE4(&qword_10016A3B8, &qword_10010F370);
      sub_1000217CC(v55, v54, (v57 + *(v58 + 44)));
      v59 = static Font.subheadline.getter();
      v60 = swift_getKeyPath();
      v61 = (v57 + *(sub_100002BE4(&qword_10016A3C0, &qword_10010F3A8) + 36));
      *v61 = v60;
      v61[1] = v59;
      v62 = static HierarchicalShapeStyle.secondary.getter();
      v63 = v92;
      *(v57 + *(v92 + 36)) = v62;
      v64 = v90;
      sub_100022144(v57, v90);
      v51 = 0;
    }

    else
    {
      v63 = v92;
      v64 = v90;
    }

    (*(v91 + 56))(v64, v51, 1, v63);
    v66 = v87;
    v65 = v88;
    v67 = *(v87 + 16);
    v68 = v86;
    v67(v86, v52, v88);
    v69 = v93;
    sub_100022064(v64, v93);
    v70 = v94;
    v67(v94, v68, v65);
    v71 = sub_100002BE4(&qword_10016A3B0, &qword_10010F368);
    sub_100022064(v69, &v70[*(v71 + 48)]);
    sub_1000220D4(v64);
    v72 = *(v66 + 8);
    v72(v52, v65);
    sub_1000220D4(v69);
    return (v72)(v68, v65);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000217CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v68 = a3;
  v5 = sub_100002BE4(&qword_10016A3C8, &qword_10010F3B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v77 = &v59 - v11;
  v12 = type metadata accessor for AutomationSemantics();
  v73 = *(v12 - 8);
  v74 = v12;
  v13 = *(v73 + 64);
  __chkstk_darwin(v12);
  v70 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  v15 = *(*(v62 - 8) + 64);
  __chkstk_darwin(v62);
  v17 = &v59 - v16;
  v67 = sub_100002BE4(&qword_10016A380, &qword_10010F310);
  v66 = *(v67 - 8);
  v18 = *(v66 + 64);
  __chkstk_darwin(v67);
  v20 = &v59 - v19;
  v21 = sub_100002BE4(&qword_10016A388, &qword_10010F318);
  v71 = *(v21 - 8);
  v72 = v21;
  v22 = *(v71 + 64);
  v23 = __chkstk_darwin(v21);
  v69 = &v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v76 = &v59 - v25;
  *&v81 = a1;
  *(&v81 + 1) = a2;
  sub_100012928();

  v26 = Text.init<A>(_:)();
  v28 = v27;
  LOBYTE(a2) = v29;
  v31 = v30;
  KeyPath = swift_getKeyPath();
  *&v81 = v26;
  *(&v81 + 1) = v28;
  v65 = v28;
  v63 = a2 & 1;
  LOBYTE(v82) = a2 & 1;
  *(&v82 + 1) = v31;
  v83 = KeyPath;
  v64 = KeyPath;
  v84 = 0;
  v33 = enum case for DynamicTypeSize.accessibility2(_:);
  v34 = type metadata accessor for DynamicTypeSize();
  (*(*(v34 - 8) + 104))(v17, v33, v34);
  sub_1000128D0();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    v36 = sub_100002BE4(&qword_10016A390, &qword_10010F350);
    v75 = v6;
    v59 = v36;
    v37 = sub_100021FAC();
    v61 = v5;
    v38 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450);
    v60 = v10;
    v39 = v38;
    v40 = v62;
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v17, &qword_100169A10, &qword_10010D450);
    sub_10001297C(v26, v65, v63);

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v41 = v70;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(&v79, &qword_100169A38, &qword_10010D460);
    sub_100009908(&v81, &qword_100169A38, &qword_10010D460);
    *&v81 = v59;
    *(&v81 + 1) = v40;
    *&v82 = v37;
    *(&v82 + 1) = v39;
    swift_getOpaqueTypeConformance2();
    v42 = v76;
    v43 = v67;
    View.automationSemantics(_:)();
    v44 = v74;
    v45 = *(v73 + 8);
    v45(v41, v74);
    (*(v66 + 8))(v20, v43);
    v78 = Image.init(systemName:)();
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    static AutomationSemantics.productPage(elementName:id:parentId:)();
    sub_100009908(&v79, &qword_100169A38, &qword_10010D460);
    sub_100009908(&v81, &qword_100169A38, &qword_10010D460);
    v46 = v77;
    View.automationSemantics(_:)();
    v45(v41, v44);

    v48 = v71;
    v47 = v72;
    v49 = *(v71 + 16);
    v50 = v69;
    v49(v69, v42, v72);
    v51 = *(v75 + 16);
    v52 = v60;
    v53 = v46;
    v54 = v61;
    v51(v60, v53, v61);
    v55 = v68;
    v49(v68, v50, v47);
    v56 = sub_100002BE4(&qword_10016A3D0, &qword_10010F3B8);
    v51(&v55[*(v56 + 48)], v52, v54);
    v57 = *(v75 + 8);
    v57(v77, v54);
    v58 = *(v48 + 8);
    v58(v76, v47);
    v57(v52, v54);
    return (v58)(v50, v47);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100021F50@<X0>(uint64_t a1@<X8>)
{
  *a1 = static HorizontalAlignment.leading.getter();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_100002BE4(&qword_10016A368, &qword_10010F2F0);
  return sub_100020F6C(v1, (a1 + *(v3 + 44)));
}

unint64_t sub_100021FAC()
{
  result = qword_10016A398;
  if (!qword_10016A398)
  {
    sub_10000459C(&qword_10016A390, &qword_10010F350);
    sub_100012C48(&qword_10016A3A0, &qword_10016A3A8, &unk_10010F358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A398);
  }

  return result;
}

uint64_t sub_100022064(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A378, &unk_10010F300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000220D4(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A378, &unk_10010F300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100022144(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A370, &qword_10010F2F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002220C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ScenePhase();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000222DC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ScenePhase();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000223CC()
{
  result = qword_10016A450;
  if (!qword_10016A450)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_10016A450);
  }

  return result;
}

uint64_t sub_100022438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v4 = type metadata accessor for ScenePhase();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ScenePhaseChangeViewModifier(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_100023850(a3, v11, type metadata accessor for ScenePhaseChangeViewModifier);
  (*(v5 + 16))(v7, v23, v4);
  type metadata accessor for MainActor();
  v17 = static MainActor.shared.getter();
  v18 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v19 = (v10 + *(v5 + 80) + v18) & ~*(v5 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  *(v20 + 24) = &protocol witness table for MainActor;
  sub_1000239DC(v11, v20 + v18, type metadata accessor for ScenePhaseChangeViewModifier);
  (*(v5 + 32))(v20 + v19, v7, v4);
  sub_1000EE5F8(0, 0, v15, &unk_10010F528, v20);
}

uint64_t sub_1000226EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100022784, v7, v6);
}

uint64_t sub_100022784()
{
  v1 = v0[2];
  v2 = (v1 + *(type metadata accessor for ScenePhaseChangeViewModifier(0) + 20));
  v3 = v2[1];
  v8 = (*v2 + **v2);
  v4 = (*v2)[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_100022888;
  v6 = v0[3];

  return v8(v6);
}

uint64_t sub_100022888()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_100024390, v4, v3);
}

uint64_t sub_1000229CC(uint64_t a1)
{
  v2 = type metadata accessor for ScenePhase();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return EnvironmentValues.scenePhase.setter();
}

uint64_t sub_100022A94(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(a1);
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100024110(&qword_10016A488, &qword_10010F480, &type metadata accessor for ScenePhase, v9);
  sub_100023850(v2, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScenePhaseChangeViewModifier);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  sub_1000239DC(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for ScenePhaseChangeViewModifier);
  sub_100002BE4(&qword_10016A550, &unk_10010F510);
  sub_100023AC4(&qword_10016A558, &qword_10016A550, &unk_10010F510);
  sub_100023B18(&qword_10016A560, &type metadata accessor for ScenePhase);
  View.onChange<A>(of:initial:_:)();

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100022D08(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for MainActor();
  v2[4] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[5] = v4;
  v2[6] = v3;

  return _swift_task_switch(sub_100022DA0, v4, v3);
}

uint64_t sub_100022DA0()
{
  v2 = v0[2];
  v1 = v0[3];
  if (static ScenePhase.== infix(_:_:)())
  {
    v3 = v0[3];
    v4 = (v3 + *(type metadata accessor for ScenePhaseViewModifier(0) + 20));
    v5 = v4[1];
    v11 = (*v4 + **v4);
    v6 = (*v4)[1];
    v7 = swift_task_alloc();
    v0[7] = v7;
    *v7 = v0;
    v7[1] = sub_100022EE0;

    return v11();
  }

  else
  {
    v9 = v0[4];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100022EE0()
{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v6 = *v0;

  v3 = *(v1 + 48);
  v4 = *(v1 + 40);

  return _swift_task_switch(sub_100023000, v4, v3);
}

uint64_t sub_100023000()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100023084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(a1);
  sub_100023850(v7, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ScenePhaseViewModifier);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_1000239DC(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for ScenePhaseViewModifier);
  v10 = (a3 + *(sub_100002BE4(&qword_10016A480, &qword_10010F448) + 36));
  *v10 = swift_getKeyPath();
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  swift_storeEnumTagMultiPayload();
  v11 = (v10 + *(type metadata accessor for ScenePhaseChangeViewModifier(0) + 20));
  *v11 = &unk_10010F440;
  v11[1] = v9;
  v12 = sub_100002BE4(&qword_10016A490, &qword_10010F488);
  return (*(*(v12 - 8) + 16))(a3, a1, v12);
}

uint64_t sub_100023244()
{
  v1 = (type metadata accessor for ScenePhaseViewModifier(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = type metadata accessor for ScenePhase();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = *(v0 + v3 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100023330(uint64_t a1)
{
  v4 = *(type metadata accessor for ScenePhaseViewModifier(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000FA04;

  return sub_100022D08(a1, v1 + v5);
}

uint64_t sub_100023450(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002349C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_100023578(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_100002BE4(&qword_10016A498, &unk_10010F490);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_100023654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1000223CC();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1000236DC()
{
  if (!qword_10016A508)
  {
    type metadata accessor for ScenePhase();
    v0 = type metadata accessor for Environment();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A508);
    }
  }
}

unint64_t sub_100023738()
{
  result = qword_10016A538;
  if (!qword_10016A538)
  {
    sub_10000459C(&qword_10016A480, &qword_10010F448);
    sub_100023AC4(&qword_10016A540, &qword_10016A490, &qword_10010F488);
    sub_100023B18(&qword_10016A548, type metadata accessor for ScenePhaseChangeViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A538);
  }

  return result;
}

uint64_t sub_100023850(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000238B8()
{
  v1 = type metadata accessor for ScenePhaseChangeViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = (v0 + v3);
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for ScenePhase();
    (*(*(v6 - 8) + 8))(v0 + v3, v6);
  }

  else
  {
    v7 = *v5;
  }

  v8 = *(v5 + *(v1 + 20) + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1000239DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100023A44(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for ScenePhaseChangeViewModifier(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_100022438(a1, a2, v6);
}

uint64_t sub_100023AC4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100023B18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100023B60()
{
  v1 = type metadata accessor for ScenePhaseChangeViewModifier(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = type metadata accessor for ScenePhase();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(v0 + 16);
  swift_unknownObjectRelease();
  v10 = (v0 + v3);
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  else
  {
    v11 = *v10;
  }

  v12 = (v3 + v4 + v7) & ~v7;
  v13 = *(v10 + *(v1 + 20) + 8);

  (*(v6 + 8))(v0 + v12, v5);

  return _swift_deallocObject(v0, v12 + v8, v2 | v7 | 7);
}

uint64_t sub_100023CFC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for ScenePhaseChangeViewModifier(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ScenePhase() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_100024388;

  return sub_1000226EC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_100023E4C()
{
  sub_10000459C(&qword_10016A550, &unk_10010F510);
  type metadata accessor for ScenePhase();
  sub_100023AC4(&qword_10016A558, &qword_10016A550, &unk_10010F510);
  sub_100023B18(&qword_10016A560, &type metadata accessor for ScenePhase);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100023F18@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EnvironmentValues();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016A570, &unk_100113970);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = (&v16 - v11);
  sub_10000C178(v2, &v16 - v11, &qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_100024310(v12, a1);
  }

  v14 = *v12;
  static os_log_type_t.fault.getter();
  v15 = static Log.runtimeIssuesLog.getter();
  os_log(_:dso:log:_:_:)();

  EnvironmentValues.init()();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100024110@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for EnvironmentValues();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_100002BE4(a1, a2);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v18 = (&v23 - v17);
  sub_10000C178(v8, &v23 - v17, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = a3(0);
    return (*(*(v19 - 8) + 32))(a4, v18, v19);
  }

  else
  {
    v21 = *v18;
    static os_log_type_t.fault.getter();
    v22 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_100024310(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000243F4()
{
  result = qword_10016A588;
  if (!qword_10016A588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A588);
  }

  return result;
}

uint64_t sub_100024448()
{
  static Color.white.getter();
  v0 = Color.opacity(_:)();

  qword_10016A580 = v0;
  return result;
}

uint64_t sub_10002448C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AppTextComponentModel() + 24));
  v4 = *v3;
  v5 = v3[1];
  v6 = [objc_opt_self() mainBundle];
  v23._object = 0xE000000000000000;
  v7.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v7.value._object = 0xEB00000000656C62;
  v8._countAndFlagsBits = v4;
  v8._object = v5;
  v9._countAndFlagsBits = 0;
  v9._object = 0xE000000000000000;
  v23._countAndFlagsBits = 0;
  v10 = NSLocalizedString(_:tableName:bundle:value:comment:)(v8, v7, v6, v9, v23);

  v11 = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  if (qword_100168EE0 != -1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v14;
    v21 = v15;
    swift_once();
    v15 = v21;
    v14 = v20;
    v13 = v19;
    v12 = v18;
  }

  v16 = qword_10016A580;
  *a2 = v10;
  *(a2 + 16) = 3;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = v13;
  *(a2 + 48) = v14;
  *(a2 + 56) = v15;
  *(a2 + 64) = 0;
  *(a2 + 72) = v16;
}

uint64_t sub_1000245F8()
{
  sub_1000243F4();

  return _ComponentBody.init(_:)();
}

unint64_t sub_100024640()
{
  result = qword_10016A590;
  if (!qword_10016A590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A590);
  }

  return result;
}

uint64_t sub_100024740(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002478C()
{
  result = qword_10016A5A8;
  if (!qword_10016A5A8)
  {
    sub_10000459C(&qword_10016A5B0, &qword_10010F620);
    sub_100024818();
    sub_1000248F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5A8);
  }

  return result;
}

unint64_t sub_100024818()
{
  result = qword_10016A5B8;
  if (!qword_10016A5B8)
  {
    sub_10000459C(&qword_10016A5C0, &qword_10010F628);
    sub_1000248A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5B8);
  }

  return result;
}

unint64_t sub_1000248A4()
{
  result = qword_10016A5C8;
  if (!qword_10016A5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5C8);
  }

  return result;
}

unint64_t sub_1000248F8()
{
  result = qword_10016A5D0;
  if (!qword_10016A5D0)
  {
    sub_10000459C(&qword_10016A5D8, &unk_10010F630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A5D0);
  }

  return result;
}

uint64_t sub_100024988()
{
  v1 = *(*(sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0) - 8) + 64) + 15;
  v0[2] = swift_task_alloc();
  v0[3] = type metadata accessor for MainActor();
  v0[4] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100024A58, v3, v2);
}

uint64_t sub_100024A58()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];

  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = static MainActor.shared.getter();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = &protocol witness table for MainActor;
  sub_1000EE5F8(0, 0, v3, &unk_10010F700, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_100024B58()
{
  v0[7] = type metadata accessor for MainActor();
  v0[8] = static MainActor.shared.getter();
  v1 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *v2 = v0;
  v2[1] = sub_100024C08;

  return static Task<>.sleep(nanoseconds:)(3000000000);
}

uint64_t sub_100024C08()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {

    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v8;
    v10 = sub_1000253C4;
  }

  else
  {
    v7 = dispatch thunk of Actor.unownedExecutor.getter();
    v9 = v11;
    v10 = sub_100024D8C;
  }

  return _swift_task_switch(v10, v7, v9);
}

uint64_t sub_100024D8C()
{
  v1 = v0[8];

  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 1;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100024E34()
{
  type metadata accessor for MainActor();
  *(v0 + 56) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100024EC8, v2, v1);
}

uint64_t sub_100024EC8()
{
  v1 = v0[7];

  sub_10004F388(0);
  v0[5] = &_s20TetsuoAnalyticsEventON;
  v0[6] = sub_1000250D8();
  *(v0 + 16) = 0;
  static AnalyticsCoordinator.submitEvent(_:payload:)();

  sub_1000052E4(v0 + 2);
  v2 = v0[1];

  return v2();
}

uint64_t sub_100024F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a2 + *(sub_100002BE4(&qword_10016A5E0, &qword_10010F6D0) + 36);
  v5 = enum case for ScenePhase.active(_:);
  v6 = type metadata accessor for ScenePhase();
  v7 = *(*(v6 - 8) + 104);
  v7(v4, v5, v6);
  v8 = type metadata accessor for ScenePhaseViewModifier(0);
  v9 = (v4 + *(v8 + 20));
  *v9 = &unk_10010F6C8;
  v9[1] = 0;
  v10 = sub_100002BE4(&qword_10016A5E8, &qword_10010F6D8);
  (*(*(v10 - 8) + 16))(a2, a1, v10);
  v11 = a2 + *(sub_100002BE4(&qword_10016A5F0, &qword_10010F6E8) + 36);
  result = (v7)(v11, enum case for ScenePhase.background(_:), v6);
  v13 = (v11 + *(v8 + 20));
  *v13 = &unk_10010F6E0;
  v13[1] = 0;
  return result;
}

unint64_t sub_1000250D8()
{
  result = qword_1001714E0;
  if (!qword_1001714E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001714E0);
  }

  return result;
}

uint64_t sub_10002512C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100025164()
{
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000FA04;

  return sub_100024B58();
}

uint64_t sub_100025284(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10000459C(a2, a3);
    a4();
    sub_10002536C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100025308()
{
  result = qword_10016A608;
  if (!qword_10016A608)
  {
    sub_10000459C(&qword_10016A5E8, &qword_10010F6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A608);
  }

  return result;
}

unint64_t sub_10002536C()
{
  result = qword_10016A610;
  if (!qword_10016A610)
  {
    type metadata accessor for ScenePhaseViewModifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A610);
  }

  return result;
}

uint64_t sub_1000253DC(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for MetricsPipeline();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_9;
  }

  v14 = sub_100002BE4(&qword_10016A678, &unk_100113980);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[10];

  return v15(v16, a2, v14);
}

uint64_t sub_100025574(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for MetricsPipeline();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_100002BE4(&qword_10016A498, &unk_10010F490);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  v14 = sub_100002BE4(&qword_10016A678, &unk_100113980);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[10];

  return v15(v16, a2, a2, v14);
}

void sub_100025718()
{
  sub_10002589C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for MetricsPipeline();
    if (v1 <= 0x3F)
    {
      sub_1000259EC(319, &qword_10016A6F0, &qword_10016A6F8, &unk_10010F740, &type metadata accessor for State);
      if (v2 <= 0x3F)
      {
        sub_100025908();
        if (v3 <= 0x3F)
        {
          sub_100025958();
          if (v4 <= 0x3F)
          {
            sub_10002C300(319, &qword_10016A508, &type metadata accessor for ScenePhase, &type metadata accessor for Environment);
            if (v5 <= 0x3F)
            {
              sub_1000259EC(319, &qword_10016A718, &qword_10016A578, &qword_10010F540, &type metadata accessor for Environment);
              if (v6 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_10002589C()
{
  result = qword_10016A6E8;
  if (!qword_10016A6E8)
  {
    type metadata accessor for TetsuoDiscoverFeedPage();
    result = swift_getExtendedExistentialTypeMetadata();
    atomic_store(result, &qword_10016A6E8);
  }

  return result;
}

void sub_100025908()
{
  if (!qword_10016A700)
  {
    v0 = type metadata accessor for State();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A700);
    }
  }
}

void sub_100025958()
{
  if (!qword_10016A708)
  {
    type metadata accessor for AppDelegate();
    sub_10002C038(&qword_10016A710, type metadata accessor for AppDelegate);
    v0 = type metadata accessor for EnvironmentObject();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A708);
    }
  }
}

void sub_1000259EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_10000459C(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_100025A6C()
{
  v0 = type metadata accessor for ShelfGridPadding();
  sub_100010158(v0, qword_10016A618);
  sub_100006B0C(v0, qword_10016A618);
  return ShelfGridPadding.init(floatLiteral:)();
}

uint64_t sub_100025ABC()
{
  v0 = type metadata accessor for ShelfGridPadding();
  sub_100010158(v0, qword_10016A630);
  sub_100006B0C(v0, qword_10016A630);
  return ShelfGridPadding.init(leading:trailing:)();
}

uint64_t sub_100025B30(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ShelfGridSpacing();
  sub_100010158(v3, a2);
  sub_100006B0C(v3, a2);
  return ShelfGridSpacing.init(vertical:horizontal:)();
}

uint64_t sub_100025BC0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v39 = a1;
  v45 = a3;
  v48 = sub_100002BE4(&qword_10016A760, &qword_10010F7A0);
  v4 = *(v48 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v48);
  v43 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v46 = v38 - v8;
  v42 = type metadata accessor for IntentViewConfiguration();
  v47 = *(v42 - 8);
  v9 = *(v47 + 64);
  v10 = __chkstk_darwin(v42);
  v40 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v38 - v12;
  v14 = type metadata accessor for GeometryProxy();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v17 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TetsuoDiscoverPageView(0);
  v19 = *(v18 - 8);
  v44 = v18 - 8;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v21 = v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10002AE8C(a2, v21, type metadata accessor for TetsuoDiscoverPageView);
  (*(v15 + 16))(v17, v39, v14);
  v22 = (*(v19 + 80) + 16) & ~*(v19 + 80);
  v23 = (v20 + *(v15 + 80) + v22) & ~*(v15 + 80);
  v24 = swift_allocObject();
  v38[1] = v24;
  sub_100028BAC(v21, v24 + v22);
  (*(v15 + 32))(v24 + v23, v17, v14);
  v39 = static Transaction._loading.getter();
  v38[0] = v13;
  IntentViewConfiguration.init()();
  v41 = a2;
  v25 = a2[3];
  v26 = sub_10000524C(a2, v25);
  v27 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v26);
  (*(v29 + 16))(v38 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for TetsuoDiscoverFeedPage();
  v30 = v46;
  AnyIntentModel.init<A>(_:)();
  (*(v4 + 16))(v43, v30, v48);
  v31 = v13;
  v32 = v42;
  (*(v47 + 16))(v40, v31, v42);
  sub_100002BE4(&qword_10016A768, &qword_10010F7A8);
  type metadata accessor for _TaskViewDefaultWorking();
  type metadata accessor for _TaskViewDefaultFailed();
  sub_100012C48(&qword_10016A770, &qword_10016A760, &qword_10010F7A0);
  sub_100028DDC();
  sub_10002C038(&qword_10016A7D0, &type metadata accessor for _TaskViewDefaultWorking);
  sub_10002C038(&qword_10016A7D8, &type metadata accessor for _TaskViewDefaultFailed);
  v33 = v48;
  v34 = v45;
  IntentView.init(what:transaction:configuration:working:failed:content:)();
  (*(v4 + 8))(v46, v33);
  (*(v47 + 8))(v38[0], v32);
  v35 = *(v44 + 48);
  v36 = sub_100002BE4(&qword_10016A7E0, &qword_10010F7D8);
  return sub_100023F18(v34 + *(v36 + 36));
}

uint64_t sub_1000261CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v54 = a3;
  v58 = a2;
  v67 = a4;
  v68 = a1;
  v5 = sub_100002BE4(&qword_10016A7E8, &qword_10010F7E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v66 = &v53 - v7;
  v8 = sub_100002BE4(&qword_10016A7F0, &qword_10010F7E8);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v65 = &v53 - v10;
  v62 = type metadata accessor for AutomationSemantics();
  v60 = *(v62 - 8);
  v11 = *(v60 + 64);
  __chkstk_darwin(v62);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for GeometryProxy();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = type metadata accessor for TetsuoDiscoverPageView(0);
  v17 = *(v16 - 8);
  v61 = v16 - 8;
  v18 = *(v17 + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100002BE4(&qword_10016A788, &qword_10010F7B8);
  v20 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v22 = &v53 - v21;
  v23 = sub_100002BE4(&qword_10016A780, &qword_10010F7B0);
  v24 = *(v23 - 8);
  v63 = v23;
  v64 = v24;
  v25 = *(v24 + 64);
  __chkstk_darwin(v23);
  v55 = &v53 - v26;
  v56 = type metadata accessor for TetsuoDiscoverFeedPage();
  v27 = *(v68 + *(v56 + 28));
  sub_10002AE8C(a2, v19, type metadata accessor for TetsuoDiscoverPageView);
  (*(v14 + 16))(&v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v54, v13);
  v28 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v29 = (v18 + *(v14 + 80) + v28) & ~*(v14 + 80);
  v30 = swift_allocObject();
  sub_100028BAC(v19, v30 + v28);
  (*(v14 + 32))(v30 + v29, &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v13);

  static ShelfPageConfiguration.standard.getter();
  *&v69 = v27;
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = j___s18_JetEngine_SwiftUI35_IntentViewDefaultContinuousWorkingVACycfC;
  v31[4] = 0;
  v31[5] = sub_100029490;
  v31[6] = 0;
  v31[7] = sub_1000293A0;
  v31[8] = v30;
  sub_100002BE4(&qword_10016A7F8, &qword_10010F7F0);
  sub_100002BE4(&qword_10016A800, &unk_10010F7F8);
  sub_100012C48(&qword_10016A808, &qword_10016A800, &unk_10010F7F8);
  ShelfPage.init(_:spacing:configuration:content:)();
  LOBYTE(v29) = static Edge.Set.top.getter();
  v32 = static SafeAreaRegions.all.getter();
  v33 = &v22[*(sub_100002BE4(&qword_10016A7A0, &qword_10010F7C0) + 36)];
  *v33 = v32;
  v33[8] = v29;
  *&v69 = 0;
  *(&v69 + 1) = 0xE000000000000000;
  type metadata accessor for PageID();
  v34 = v68;
  _print_unlocked<A, B>(_:_:)();
  v69 = 0u;
  v70 = 0u;
  v35 = v59;
  static AutomationSemantics.page(name:id:)();

  sub_100009908(&v69, &qword_100169A38, &qword_10010D460);
  v36 = sub_100028F14();
  v37 = v55;
  v38 = v57;
  View.automationSemantics(_:)();
  (*(v60 + 8))(v35, v62);
  v39 = sub_100002BE4(&qword_10016A7B0, &qword_10010F7C8);
  (*(*(v39 - 8) + 8))(v22, v39);
  v40 = *(v56 + 20);
  v41 = type metadata accessor for PageMetrics();
  v42 = *(v41 - 8);
  v43 = v65;
  (*(v42 + 16))(v65, v34 + v40, v41);
  (*(v42 + 56))(v43, 0, 1, v41);
  v44 = *(v61 + 28);
  v45 = v58 + *(v61 + 32);
  v46 = *(v45 + 16);
  v69 = *v45;
  *&v70 = v46;
  sub_100002BE4(&qword_10016A810, &qword_10010F808);
  State.wrappedValue.getter();
  v47 = type metadata accessor for ClickLocationConfiguration();
  v48 = v66;
  (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
  *&v69 = v38;
  *(&v69 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v49 = v67;
  v50 = v63;
  View.pageMetrics(_:pipeline:tracker:clickLocationConfiguration:)();
  swift_unknownObjectRelease();
  sub_100009908(v48, &qword_10016A7E8, &qword_10010F7E0);
  sub_100009908(v43, &qword_10016A7F0, &qword_10010F7E8);
  (*(v64 + 8))(v37, v50);
  result = sub_100002BE4(&qword_10016A768, &qword_10010F7A8);
  v52 = (v49 + *(result + 36));
  *v52 = 0x6C6C6F726373;
  v52[1] = 0xE600000000000000;
  return result;
}

uint64_t sub_1000269D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v99 = a3;
  v104 = a4;
  v6 = type metadata accessor for TetsuoDiscoverPageView(0);
  v87 = *(v6 - 8);
  v7 = *(v87 + 64);
  __chkstk_darwin(v6 - 8);
  v108 = v8;
  v98 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v89 = type metadata accessor for TetsuoDiscoverPageShelf();
  v9 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v88 = &v79[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = sub_100002BE4(&qword_10016A880, &qword_10010F838);
  v93 = *(v94 - 8);
  v11 = *(v93 + 64);
  __chkstk_darwin(v94);
  v92 = &v79[-v12];
  v90 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  v13 = *(*(v90 - 8) + 64);
  v14 = __chkstk_darwin(v90);
  v96 = &v79[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v91 = &v79[-v17];
  __chkstk_darwin(v16);
  v95 = &v79[-v18];
  v19 = type metadata accessor for ShelfGridSpacing();
  v103 = *(v19 - 8);
  v20 = *(v103 + 64);
  v21 = __chkstk_darwin(v19);
  v86 = &v79[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v107 = &v79[-v23];
  v24 = type metadata accessor for ShelfGridPadding();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  v27 = __chkstk_darwin(v24);
  v85 = &v79[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v27);
  v109 = &v79[-v29];
  v30 = type metadata accessor for ShelfGridLayout();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v84 = &v79[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v33);
  v36 = &v79[-v35];
  sub_100002BE4(&qword_10016A890, &qword_10010F848);
  ShelfPageContext.shelfOffset.getter();
  v83 = v110;
  v37 = MCGestaltIsiPad();
  v100 = a1;
  if (v37)
  {
    v38 = a2;
    v39 = *(a1 + 8);
    v40 = *(a1 + 16);
    if (v39 == 0x656C746954 && v40 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v39 == 1954047316 && v40 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      *v36 = 1;
      (*(v31 + 104))(v36, enum case for ShelfGridLayout.vertical(_:), v30);
    }

    else
    {
      sub_100028798(v100, v36);
    }
  }

  else
  {
    v38 = a2;
    sub_100028628(a1, v36);
  }

  v41 = MCGestaltIsiPad();
  v105 = v30;
  v106 = v36;
  if (v41)
  {
    if (qword_100168EF0 != -1)
    {
      swift_once();
    }

    v42 = qword_10016A630;
  }

  else
  {
    if (qword_100168EE8 != -1)
    {
      swift_once();
    }

    v42 = qword_10016A618;
  }

  v43 = sub_100006B0C(v24, v42);
  v97 = v25;
  v44 = *(v25 + 16);
  v101 = v24;
  v44(v109, v43, v24);
  v45 = MCGestaltIsiPad();
  v102 = v38;
  if (v45)
  {
    if (qword_100168F00 != -1)
    {
      swift_once();
    }

    v46 = qword_10016A660;
  }

  else
  {
    if (qword_100168EF8 != -1)
    {
      swift_once();
    }

    v46 = qword_10016A648;
  }

  v47 = sub_100006B0C(v19, v46);
  v48 = *(v103 + 16);
  v49 = v107;
  v81 = v19;
  v48(v107, v47, v19);
  GeometryProxy.size.getter();
  LODWORD(v99) = v50 <= 1724.0;
  v80 = v50 > 1724.0;
  v51 = static VerticalAlignment.center.getter();
  v52 = v104;
  *v104 = v51;
  v52[1] = 0;
  *(v52 + 16) = 1;
  sub_10002AE8C(v100, v88, type metadata accessor for TetsuoDiscoverPageShelf);
  v82 = v31;
  (*(v31 + 16))(v84, v106, v105);
  v44(v85, v109, v101);
  v48(v86, v49, v19);
  v100 = type metadata accessor for TetsuoDiscoverPageView;
  v53 = v98;
  sub_10002AE8C(v102, v98, type metadata accessor for TetsuoDiscoverPageView);
  v54 = *(v87 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = v83;
  *(v55 + 24) = 0;
  sub_100028BAC(v53, v55 + ((v54 + 25) & ~v54));
  sub_100002BE4(&qword_10016A898, &qword_10010F850);
  sub_10002C038(&qword_1001693A0, type metadata accessor for TetsuoDiscoverPageShelf);
  v56 = sub_10000459C(&qword_10016A8A0, &qword_10010F858);
  v57 = sub_10002B1D4();
  *&v111 = v56;
  *(&v111 + 1) = v57;
  swift_getOpaqueTypeConformance2();
  v58 = v92;
  ShelfGrid.init(_:layout:padding:spacing:shelfPosition:itemContent:itemDivider:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v59 = v91;
  (*(v93 + 32))(v91, v58, v94);
  v60 = (v59 + *(v90 + 36));
  v61 = v116;
  v60[4] = v115;
  v60[5] = v61;
  v60[6] = v117;
  v62 = v112;
  *v60 = v111;
  v60[1] = v62;
  v63 = v114;
  v60[2] = v113;
  v60[3] = v63;
  v64 = v95;
  sub_10002B2B8(v59, v95);
  v65 = sub_100002BE4(&qword_10016A8D0, &qword_10010F870);
  v66 = v104;
  v67 = v104 + *(v65 + 44);
  v68 = v96;
  sub_10002B328(v64, v96);
  *v67 = 0;
  v69 = v80;
  v67[8] = v80;
  v70 = v99;
  v67[9] = v99;
  v71 = sub_100002BE4(&qword_10016A8D8, &qword_10010F878);
  sub_10002B328(v68, &v67[*(v71 + 48)]);
  v72 = &v67[*(v71 + 64)];
  *v72 = 0;
  v72[8] = v69;
  v72[9] = v70;
  sub_10002B398(v64);
  sub_10002B398(v68);
  sub_10002AE8C(v102, v53, v100);
  v73 = swift_allocObject();
  sub_100028BAC(v53, v73 + ((v54 + 16) & ~v54));
  v74 = v66 + *(sub_100002BE4(&qword_10016A820, &qword_10010F818) + 36);
  v75 = enum case for ScenePhase.background(_:);
  v76 = type metadata accessor for ScenePhase();
  (*(*(v76 - 8) + 104))(v74, v75, v76);
  v77 = &v74[*(type metadata accessor for ScenePhaseViewModifier(0) + 20)];
  *v77 = &unk_10010F888;
  *(v77 + 1) = v73;
  (*(v103 + 8))(v107, v81);
  (*(v97 + 8))(v109, v101);
  return (*(v82 + 8))(v106, v105);
}

uint64_t sub_1000275E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a1;
  v34 = a2;
  v32 = sub_100002BE4(&qword_10016A9D0, &qword_10010F930);
  v2 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v33 = &v26 - v3;
  v4 = type metadata accessor for ContentMarginPlacement();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016A9D8, &qword_10010F938);
  v10 = *(v9 - 8);
  v30 = v9;
  v31 = v10;
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v26 - v12;
  v29 = sub_100002BE4(&qword_10016A9E0, &qword_10010F940);
  v14 = *(v29 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v29);
  v35 = &v26 - v16;
  MCGestaltIsiPad();
  static Edge.Set.top.getter();
  static ContentMarginPlacement.automatic.getter();
  v17 = sub_100002BE4(&qword_10016A9E8, &qword_10010F948);
  v18 = sub_100012C48(&qword_10016A9F0, &qword_10016A9E8, &qword_10010F948);
  v5 += 8;
  v19 = (v31 + 8);
  v31 = v14;
  v26 = v19;
  v27 = (v14 + 16);
  View.contentMargins(_:_:for:)();
  v20 = *v5;
  (*v5)(v8, v4);
  static Edge.Set.bottom.getter();
  static ContentMarginPlacement.automatic.getter();
  v36 = v17;
  v37 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v35;
  v23 = v30;
  View.contentMargins(_:_:for:)();
  v20(v8, v4);
  (*v26)(v13, v23);
  v24 = v29;
  (*v27)(v33, v22, v29);
  swift_storeEnumTagMultiPayload();
  v36 = v23;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  _ConditionalContent<>.init(storage:)();
  return (*(v31 + 8))(v35, v24);
}

uint64_t sub_100027AE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a4;
  v23 = a2;
  v24 = a3;
  v25 = a5;
  v6 = type metadata accessor for TetsuoDiscoverPageView(0);
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = type metadata accessor for ShelfGridItem();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&qword_10016A8A0, &qword_10010F858);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = &v21 - v14;
  ShelfGridItem.model.getter();
  sub_10002B724();
  ComponentView.init(_:content:)();
  v16 = &v15[*(v12 + 36)];
  ShelfGridItem.model.getter();
  *(v16 + 40) = xmmword_10010F710;
  *(v16 + 7) = sub_100027EC0;
  *(v16 + 8) = 0;
  (*(v9 + 16))(v11, a1, v8);
  sub_10002AE8C(v22, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TetsuoDiscoverPageView);
  v17 = (*(v9 + 80) + 25) & ~*(v9 + 80);
  v18 = (v10 + *(v21 + 80) + v17) & ~*(v21 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v23;
  *(v19 + 24) = v24 & 1;
  (*(v9 + 32))(v19 + v17, v11, v8);
  sub_100028BAC(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
  sub_10002B1D4();
  View.onScrollVisibilityChange(threshold:_:)();

  return sub_100009908(v15, &qword_10016A8A0, &qword_10010F858);
}

uint64_t sub_100027DEC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DiscoveryFeedStateProvider();
  sub_10002C038(&qword_100169930, type metadata accessor for DiscoveryFeedStateProvider);
  v2 = Environment.init<A>(_:)();
  v4 = sub_100029988(v2, v3 & 1, &_swiftEmptyDictionarySingleton);
  v5 = sub_10002981C(v4);

  v6 = sub_1000296B0(v5);

  v7 = sub_100029544(v6);

  *a1 = v7;
  return result;
}

uint64_t sub_100027EC0(uint64_t a1)
{
  v2 = type metadata accessor for AppTitleComponentModel();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_10002BFD4(a1, v9);
  sub_100002BE4(&qword_10016A8F0, &qword_10010F8B0);
  result = swift_dynamicCast();
  if (result)
  {
    v7 = result;
    sub_10002BEBC(v5);
    return v7;
  }

  return result;
}

uint64_t sub_100027F88(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for TetsuoDiscoverPageView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v12 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  v13 = *(*(v12 - 8) + 64);
  result = __chkstk_darwin(v12 - 8);
  v16 = &v23 - v15;
  if ((a1 & 1) != 0 && (a3 & 1) == 0)
  {
    result = ShelfGridItem.offset.getter();
    v17 = __OFADD__(a2, result);
    v18 = a2 + result;
    if (v17)
    {
      __break(1u);
    }

    else
    {
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v16, 1, 1, v19);
      sub_10002AE8C(a5, &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TetsuoDiscoverPageView);
      type metadata accessor for MainActor();
      v20 = static MainActor.shared.getter();
      v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = v20;
      *(v22 + 24) = &protocol witness table for MainActor;
      sub_100028BAC(&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21);
      *(v22 + ((v11 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;
      sub_1000EE5F8(0, 0, v16, &unk_10010F8A8, v22);
    }
  }

  return result;
}

uint64_t sub_10002819C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  type metadata accessor for MainActor();
  v5[4] = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[5] = v7;
  v5[6] = v6;

  return _swift_task_switch(sub_100028234, v7, v6);
}

uint64_t sub_100028234()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for TetsuoDiscoverPageView(0) + 32));
  if (*v2)
  {
    v3 = *(*v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pageViewScrollAnalyticsCoordinator);
    *(v0 + 56) = v3;

    return _swift_task_switch(sub_100028344, v3, 0);
  }

  else
  {
    v4 = v2[1];
    type metadata accessor for AppDelegate();
    sub_10002C038(&qword_10016A710, type metadata accessor for AppDelegate);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_100028344()
{
  v1 = v0[7];
  sub_1000C9450(v0[3]);

  v2 = v0[5];
  v3 = v0[6];

  return _swift_task_switch(sub_100023000, v2, v3);
}

uint64_t sub_1000283B4(uint64_t a1)
{
  v1[2] = a1;
  type metadata accessor for MainActor();
  v1[3] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[4] = v3;
  v1[5] = v2;

  return _swift_task_switch(sub_10002844C, v3, v2);
}

uint64_t sub_10002844C()
{
  v1 = *(v0 + 16);
  v2 = (v1 + *(type metadata accessor for TetsuoDiscoverPageView(0) + 32));
  if (*v2)
  {
    v3 = *(*v2 + OBJC_IVAR____TtC17AppleVisionProApp11AppDelegate_pageViewScrollAnalyticsCoordinator);
    *(v0 + 48) = v3;

    return _swift_task_switch(sub_10002855C, v3, 0);
  }

  else
  {
    v4 = v2[1];
    type metadata accessor for AppDelegate();
    sub_10002C038(&qword_10016A710, type metadata accessor for AppDelegate);

    return EnvironmentObject.error()();
  }
}

uint64_t sub_10002855C()
{
  v1 = v0[6];
  sub_1000C9624();

  v2 = v0[4];
  v3 = v0[5];

  return _swift_task_switch(sub_1000285C8, v2, v3);
}

uint64_t sub_1000285C8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100028628@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for TetsuoDiscoverPageShelf() + 28)) == 1)
  {

LABEL_4:
    v4 = *(sub_100002BE4(&qword_10016A8E0, &unk_10010F890) + 48);
    *a2 = 1;
    *&a2[v4] = 0x3FF0000000000000;
    v5 = enum case for ShelfGridItemWidth.fraction(_:);
    v6 = type metadata accessor for ShelfGridItemWidth();
    (*(*(v6 - 8) + 104))(&a2[v4], v5, v6);
    v7 = &enum case for ShelfGridLayout.horizontal(_:);
    goto LABEL_6;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    goto LABEL_4;
  }

  *a2 = 1;
  v7 = &enum case for ShelfGridLayout.vertical(_:);
LABEL_6:
  v8 = *v7;
  v9 = type metadata accessor for ShelfGridLayout();
  v10 = *(*(v9 - 8) + 104);

  return v10(a2, v8, v9);
}

uint64_t sub_100028798@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + *(type metadata accessor for TetsuoDiscoverPageShelf() + 28)))
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      v4 = *(sub_100002BE4(&qword_10016A8E0, &unk_10010F890) + 48);
      *a2 = 1;
      *(a2 + v4) = 0x3FD8000000000000;
      v5 = enum case for ShelfGridItemWidth.fraction(_:);
      v6 = type metadata accessor for ShelfGridItemWidth();
      (*(*(v6 - 8) + 104))(a2 + v4, v5, v6);
      v7 = &enum case for ShelfGridLayout.horizontal(_:);
      goto LABEL_18;
    }
  }

  else
  {
  }

  GeometryProxy.size.getter();
  if (v8 >= 714.0)
  {
    GeometryProxy.size.getter();
    if (v12 >= 1034.0)
    {
      v13 = [objc_opt_self() sharedApplication];
      v14 = [v13 connectedScenes];

      sub_100015140();
      sub_10002C038(&qword_100171520, sub_100015140);
      v15 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = sub_1000F34B8(v15);

      if (v16)
      {
        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = [v17 screen];
          [v18 bounds];
          Width = CGRectGetWidth(v28);
          [v18 bounds];
          if (CGRectGetHeight(v29) >= Width)
          {
            v24 = static Alignment.center.getter();
            v26 = v25;

            *a2 = 2;
            a2[1] = v24;
            a2[2] = v26;
            goto LABEL_17;
          }
        }

        else
        {
          v18 = v16;
        }
      }

      v9 = static Alignment.center.getter();
      v11 = 3;
    }

    else
    {
      v9 = static Alignment.center.getter();
      v11 = 2;
    }
  }

  else
  {
    v9 = static Alignment.center.getter();
    v11 = 1;
  }

  *a2 = v11;
  a2[1] = v9;
  a2[2] = v10;
LABEL_17:
  v7 = &enum case for ShelfGridLayout.verticalWithAlignment(_:);
LABEL_18:
  v20 = *v7;
  v21 = type metadata accessor for ShelfGridLayout();
  v22 = *(*(v21 - 8) + 104);

  return v22(a2, v20, v21);
}

uint64_t sub_100028AA8@<X0>(uint64_t a1@<X0>, uint64_t (**a2)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  sub_10002AE8C(v2, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TetsuoDiscoverPageView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_100028BAC(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  *a2 = sub_100028C10;
  a2[1] = v7;
  return result;
}

uint64_t sub_100028BAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TetsuoDiscoverPageView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_100025BC0(a1, v6, a2);
}

uint64_t sub_100028C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000261CC(a1, v2 + v6, v9, a2);
}

uint64_t sub_100028D7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _TaskViewDefaultFailed.init(error:retry:)(a1, a2, a3);
}

unint64_t sub_100028DDC()
{
  result = qword_10016A778;
  if (!qword_10016A778)
  {
    sub_10000459C(&qword_10016A768, &qword_10010F7A8);
    sub_10000459C(&qword_10016A780, &qword_10010F7B0);
    sub_10000459C(&qword_10016A788, &qword_10010F7B8);
    sub_100028F14();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100012C48(&qword_10016A7C0, &qword_10016A7C8, &qword_10010F7D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A778);
  }

  return result;
}

unint64_t sub_100028F14()
{
  result = qword_10016A790;
  if (!qword_10016A790)
  {
    sub_10000459C(&qword_10016A788, &qword_10010F7B8);
    sub_100028FA0();
    sub_100029058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A790);
  }

  return result;
}

unint64_t sub_100028FA0()
{
  result = qword_10016A798;
  if (!qword_10016A798)
  {
    sub_10000459C(&qword_10016A7A0, &qword_10010F7C0);
    sub_100012C48(&qword_10016A7A8, &qword_10016A7B0, &qword_10010F7C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A798);
  }

  return result;
}

unint64_t sub_100029058()
{
  result = qword_10016A7B8;
  if (!qword_10016A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A7B8);
  }

  return result;
}

uint64_t sub_1000290AC()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v24 = *(*(v1 - 1) + 64);
  v4 = type metadata accessor for GeometryProxy();
  v5 = *(v4 - 8);
  v6 = *(v5 + 80);
  v23 = *(v5 + 64);
  v7 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v8 = v1[5];
  v9 = type metadata accessor for MetricsPipeline();
  (*(*(v9 - 8) + 8))(v0 + v3 + v8, v9);
  v10 = (v0 + v3 + v1[6]);
  v11 = *v10;
  swift_unknownObjectRelease();
  v12 = v10[2];

  v13 = *(v0 + v3 + v1[7] + 8);

  v14 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = type metadata accessor for ScenePhase();
    (*(*(v15 - 8) + 8))(v7 + v14, v15);
  }

  else
  {
    v16 = *(v7 + v14);
  }

  v17 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for UserInterfaceSizeClass();
    v19 = *(v18 - 8);
    if (!(*(v19 + 48))(v7 + v17, 1, v18))
    {
      (*(v19 + 8))(v7 + v17, v18);
    }
  }

  else
  {
    v20 = *(v7 + v17);
  }

  v21 = (v3 + v24 + v6) & ~v6;
  (*(v5 + 8))(v0 + v21, v4);

  return _swift_deallocObject(v0, v21 + v23, v2 | v6 | 7);
}

uint64_t sub_1000293A0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for GeometryProxy() - 8);
  v9 = v2 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));

  return sub_1000269D4(a1, v2 + v6, v9, a2);
}

uint64_t sub_100029490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_errorRetain();

  return _IntentViewDefaultContinuousFailed.init(error:retry:)(a1, a2, a3);
}

uint64_t sub_1000294F0(uint64_t a1)
{
  sub_10002BFD4(a1, v2);
  sub_100002BE4(&qword_10016A878, &qword_10010F830);
  return AnyIntentModel.init(_:)();
}

uint64_t sub_100029544(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueMetatype();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for EpicShowcaseComponentModel();

  OpaqueMetatype.init(_:)();
  v13 = &type metadata for EpicShowcaseComponent;
  v14 = sub_10002BF18();
  sub_10002BF6C(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = a1;
  sub_10002BF84(v11, v11[3]);
  sub_100029B80(v6, isUniquelyReferenced_nonNull_native, &v10, &type metadata for EpicShowcaseComponent, sub_10002BF18, sub_10002BF18);
  (*(v3 + 8))(v6, v2);
  sub_1000052E4(v11);
  return v10;
}

uint64_t sub_1000296B0(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueMetatype();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppTextComponentModel();

  OpaqueMetatype.init(_:)();
  v13 = &type metadata for AppTextComponent;
  v14 = sub_1000243F4();
  sub_10002BF6C(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = a1;
  sub_10002BF84(v11, v11[3]);
  sub_100029B80(v6, isUniquelyReferenced_nonNull_native, &v10, &type metadata for AppTextComponent, sub_1000243F4, sub_1000243F4);
  (*(v3 + 8))(v6, v2);
  sub_1000052E4(v11);
  return v10;
}

uint64_t sub_10002981C(uint64_t a1)
{
  v2 = type metadata accessor for OpaqueMetatype();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppTitleComponentModel();

  OpaqueMetatype.init(_:)();
  v13 = &type metadata for AppTitleHeaderComponent;
  v14 = sub_10002C080();
  sub_10002BF6C(&v12, v11);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = a1;
  sub_10002BF84(v11, v11[3]);
  sub_100029B80(v6, isUniquelyReferenced_nonNull_native, &v10, &type metadata for AppTitleHeaderComponent, sub_10002C080, sub_10002C080);
  (*(v3 + 8))(v6, v2);
  sub_1000052E4(v11);
  return v10;
}

uint64_t sub_100029988(uint64_t a1, char a2, uint64_t a3)
{
  v6 = type metadata accessor for OpaqueMetatype();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppHeroModel();

  OpaqueMetatype.init(_:)();
  v24 = &type metadata for AppHeroComponent;
  v25 = sub_10002C0D4();
  *&v23 = a1;
  BYTE8(v23) = a2 & 1;
  sub_10002BF6C(&v23, v21);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = a3;
  v12 = v22;
  v13 = sub_10002BF84(v21, v22);
  v14 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  sub_100029D68(*v16, v16[8], v10, isUniquelyReferenced_nonNull_native, &v20);
  (*(v7 + 8))(v10, v6);
  sub_1000052E4(v21);
  return v20;
}

uint64_t sub_100029B80(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v31 = a6;
  v11 = type metadata accessor for OpaqueMetatype();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a4;
  v34 = a5(v14);
  v17 = *a3;
  v19 = sub_100029FF0(a1);
  v20 = v17[2];
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v17[3];
  if (v24 >= v22 && (a2 & 1) != 0)
  {
LABEL_7:
    v25 = *a3;
    if (v23)
    {
LABEL_8:
      v26 = (v25[7] + 40 * v19);
      sub_1000052E4(v26);
      return sub_10002BF6C(&v32, v26);
    }

    goto LABEL_11;
  }

  if (v24 >= v22 && (a2 & 1) == 0)
  {
    sub_10002A408();
    goto LABEL_7;
  }

  sub_10002A690(v22, a2 & 1);
  v28 = *a3;
  v29 = sub_100029FF0(a1);
  if ((v23 & 1) != (v30 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v19 = v29;
  v25 = *a3;
  if (v23)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v12 + 16))(v16, a1, v11);
  sub_10002BF84(&v32, v33);
  sub_10002A088(v19, v16, v25, a4, v31);
  return sub_1000052E4(&v32);
}

uint64_t sub_100029D68(uint64_t a1, char a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for OpaqueMetatype();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = &type metadata for AppHeroComponent;
  v38 = sub_10002C0D4();
  *&v36 = a1;
  BYTE8(v36) = a2 & 1;
  v15 = *a5;
  v17 = sub_100029FF0(a3);
  v18 = v15[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_14;
  }

  v21 = v16;
  v22 = v15[3];
  if (v22 >= v20 && (a4 & 1) != 0)
  {
LABEL_7:
    v23 = *a5;
    if (v21)
    {
LABEL_8:
      v24 = (v23[7] + 40 * v17);
      sub_1000052E4(v24);
      return sub_10002BF6C(&v36, v24);
    }

    goto LABEL_11;
  }

  if (v22 >= v20 && (a4 & 1) == 0)
  {
    sub_10002A408();
    goto LABEL_7;
  }

  sub_10002A690(v20, a4 & 1);
  v26 = *a5;
  v27 = sub_100029FF0(a3);
  if ((v21 & 1) != (v28 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v17 = v27;
  v23 = *a5;
  if (v21)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v11 + 16))(v14, a3, v10);
  v29 = v37;
  v30 = sub_10002BF84(&v36, v37);
  v31 = *(v29[-1].Description + 8);
  __chkstk_darwin(v30);
  v33 = &v35 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v34 + 16))(v33);
  sub_10002A158(v17, v14, *v33, v33[8], v23);
  return sub_1000052E4(&v36);
}

unint64_t sub_100029FF0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for OpaqueMetatype();
  sub_10002C038(&qword_10016A908, &type metadata accessor for OpaqueMetatype);
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return sub_10002A248(a1, v5);
}

uint64_t sub_10002A088(unint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v15 = a4;
  v16 = a5();
  a3[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a3[6];
  v9 = type metadata accessor for OpaqueMetatype();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_10002BF6C(&v14, a3[7] + 40 * a1);
  v11 = a3[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v13;
  }

  return result;
}

uint64_t sub_10002A158(unint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v17 = &type metadata for AppHeroComponent;
  v18 = sub_10002C0D4();
  *&v16 = a3;
  BYTE8(v16) = a4 & 1;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for OpaqueMetatype();
  (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  result = sub_10002BF6C(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

unint64_t sub_10002A248(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = type metadata accessor for OpaqueMetatype();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_10002C038(&qword_10016A910, &type metadata accessor for OpaqueMetatype);
      v16 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

void *sub_10002A408()
{
  v1 = v0;
  v30 = type metadata accessor for OpaqueMetatype();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100002BE4(&qword_10016A900, &qword_10010F8B8);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_10002BFD4(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_10002BF6C(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
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

uint64_t sub_10002A690(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for OpaqueMetatype();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100002BE4(&qword_10016A900, &qword_10010F8B8);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_10002BF6C((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_10002BFD4(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_10002C038(&qword_10016A908, &type metadata accessor for OpaqueMetatype);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_10002BF6C(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_10002AA74(uint64_t *a1)
{
  v2 = *a1;

  sub_100002BE4(&qword_10016A818, &qword_10010F810);
  sub_100002BE4(&qword_10016A820, &qword_10010F818);
  type metadata accessor for _IntentViewDefaultContinuousWorking();
  type metadata accessor for _IntentViewDefaultContinuousFailed();
  sub_10002ACF4();
  sub_10002ADA4();
  sub_10002C038(&qword_10016A850, &type metadata accessor for _IntentViewDefaultContinuousWorking);
  sub_10002C038(&qword_10016A858, &type metadata accessor for _IntentViewDefaultContinuousFailed);
  sub_100012C48(&qword_10016A860, &qword_10016A868, &qword_10010F828);
  sub_100012C48(&qword_10016A870, &qword_10016A878, &qword_10010F830);
  return _ShelfPageContinuousContent.init(_:transaction:working:failed:content:)();
}

uint64_t sub_10002AC90()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10002ACE0(uint64_t *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  return sub_10002AA74(a1);
}

unint64_t sub_10002ACF4()
{
  result = qword_10016A828;
  if (!qword_10016A828)
  {
    sub_10000459C(&qword_10016A818, &qword_10010F810);
    sub_100012C48(&qword_10016A830, &qword_10016A7F8, &qword_10010F7F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A828);
  }

  return result;
}

unint64_t sub_10002ADA4()
{
  result = qword_10016A838;
  if (!qword_10016A838)
  {
    sub_10000459C(&qword_10016A820, &qword_10010F818);
    sub_100012C48(&qword_10016A840, &qword_10016A848, &qword_10010F820);
    sub_10002C038(&qword_10016A610, type metadata accessor for ScenePhaseViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A838);
  }

  return result;
}

uint64_t sub_10002AE8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10002AEF4()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 25) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[6]);
  v9 = *v8;
  swift_unknownObjectRelease();
  v10 = v8[2];

  v11 = *(v0 + v3 + v1[7] + 8);

  v12 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for UserInterfaceSizeClass();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B14C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 25) & ~*(v5 + 80));

  return sub_100027AE4(a1, v6, v7, v8, a2);
}

unint64_t sub_10002B1D4()
{
  result = qword_10016A8A8;
  if (!qword_10016A8A8)
  {
    sub_10000459C(&qword_10016A8A0, &qword_10010F858);
    sub_100012C48(&qword_10016A8B0, &qword_10016A8B8, &qword_10010F860);
    sub_100012C48(&qword_10016A8C0, &qword_10016A8C8, &qword_10010F868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8A8);
  }

  return result;
}

uint64_t sub_10002B2B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B328(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10002B398(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A888, &qword_10010F840);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10002B400()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v6 = v1[5];
  v7 = type metadata accessor for MetricsPipeline();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);
  v8 = (v0 + v3 + v1[6]);
  v9 = *v8;
  swift_unknownObjectRelease();
  v10 = v8[2];

  v11 = *(v0 + v3 + v1[7] + 8);

  v12 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = type metadata accessor for ScenePhase();
    (*(*(v13 - 8) + 8))(v5 + v12, v13);
  }

  else
  {
    v14 = *(v5 + v12);
  }

  v15 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = type metadata accessor for UserInterfaceSizeClass();
    v17 = *(v16 - 8);
    if (!(*(v17 + 48))(v5 + v15, 1, v16))
    {
      (*(v17 + 8))(v5 + v15, v16);
    }
  }

  else
  {
    v18 = *(v5 + v15);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_10002B658()
{
  v2 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100024388;

  return sub_1000283B4(v0 + v3);
}

unint64_t sub_10002B724()
{
  result = qword_10016A8E8;
  if (!qword_10016A8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8E8);
  }

  return result;
}

uint64_t sub_10002B778()
{
  v1 = type metadata accessor for ShelfGridItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 25) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for TetsuoDiscoverPageView(0);
  v7 = *(*(v6 - 1) + 80);
  v8 = (v4 + v5 + v7) & ~v7;
  v9 = *(*(v6 - 1) + 64);
  (*(v2 + 8))(v0 + v4, v1);
  v10 = v0 + v8;
  sub_1000052E4((v0 + v8));
  v11 = v6[5];
  v12 = type metadata accessor for MetricsPipeline();
  (*(*(v12 - 8) + 8))(v0 + v8 + v11, v12);
  v13 = (v0 + v8 + v6[6]);
  v14 = *v13;
  swift_unknownObjectRelease();
  v15 = v13[2];

  v16 = *(v0 + v8 + v6[7] + 8);

  v17 = v6[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = type metadata accessor for ScenePhase();
    (*(*(v18 - 8) + 8))(v10 + v17, v18);
  }

  else
  {
    v19 = *(v10 + v17);
  }

  v20 = v6[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = type metadata accessor for UserInterfaceSizeClass();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v10 + v20, 1, v21))
    {
      (*(v22 + 8))(v10 + v20, v21);
    }
  }

  else
  {
    v23 = *(v10 + v20);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_10002BA54(char a1)
{
  v3 = *(type metadata accessor for ShelfGridItem() - 8);
  v4 = (*(v3 + 80) + 25) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_100027F88(a1, v7, v8, v1 + v4, v9);
}

uint64_t sub_10002BB30()
{
  v1 = type metadata accessor for TetsuoDiscoverPageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  sub_1000052E4((v0 + v3));
  v7 = v1[5];
  v8 = type metadata accessor for MetricsPipeline();
  (*(*(v8 - 8) + 8))(v0 + v3 + v7, v8);
  v9 = (v0 + v3 + v1[6]);
  v10 = *v9;
  swift_unknownObjectRelease();
  v11 = v9[2];

  v12 = *(v0 + v3 + v1[7] + 8);

  v13 = v1[9];
  sub_100002BE4(&qword_10016A488, &qword_10010F480);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = type metadata accessor for ScenePhase();
    (*(*(v14 - 8) + 8))(v6 + v13, v14);
  }

  else
  {
    v15 = *(v6 + v13);
  }

  v16 = v1[10];
  sub_100002BE4(&qword_10016A570, &unk_100113970);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = type metadata accessor for UserInterfaceSizeClass();
    v18 = *(v17 - 8);
    if (!(*(v18 + 48))(v6 + v16, 1, v17))
    {
      (*(v18 + 8))(v6 + v16, v17);
    }
  }

  else
  {
    v19 = *(v6 + v16);
  }

  return _swift_deallocObject(v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_10002BD9C(uint64_t a1)
{
  v4 = *(type metadata accessor for TetsuoDiscoverPageView(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000FA04;

  return sub_10002819C(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_10002BEBC(uint64_t a1)
{
  v2 = type metadata accessor for AppTitleComponentModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10002BF18()
{
  result = qword_10016A8F8;
  if (!qword_10016A8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A8F8);
  }

  return result;
}

uint64_t sub_10002BF6C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_10002BF84(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_10002BFD4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10002C038(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10002C080()
{
  result = qword_10016A918;
  if (!qword_10016A918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A918);
  }

  return result;
}

unint64_t sub_10002C0D4()
{
  result = qword_10016A920;
  if (!qword_10016A920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A920);
  }

  return result;
}

uint64_t sub_10002C13C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10002C1C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016A578, &qword_10010F540);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_10002C264()
{
  sub_10002C300(319, &unk_10016A990, &type metadata accessor for UserInterfaceSizeClass, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10002C300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_10002C3C8()
{
  result = qword_10016A9F8;
  if (!qword_10016A9F8)
  {
    sub_10000459C(qword_10016AA00, &unk_10010F950);
    sub_10000459C(&qword_10016A9D8, &qword_10010F938);
    sub_10000459C(&qword_10016A9E8, &qword_10010F948);
    sub_100012C48(&qword_10016A9F0, &qword_10016A9E8, &qword_10010F948);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016A9F8);
  }

  return result;
}

void sub_10002C528(Swift::String *a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 mainBundle];
  v13._object = 0xE000000000000000;
  v4._object = 0x800000010011D6C0;
  v4._countAndFlagsBits = 0xD000000000000019;
  v5.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v5.value._object = 0xEB00000000656C62;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v13._countAndFlagsBits = 0;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v4, v5, v3, v6, v13);

  v8 = [v2 mainBundle];
  v14._object = 0xE000000000000000;
  v9._countAndFlagsBits = 0xD00000000000001BLL;
  v9._object = 0x800000010011D6E0;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = 0;
  v11._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v12 = NSLocalizedString(_:tableName:bundle:value:comment:)(v9, v10, v8, v11, v14);

  a1->_countAndFlagsBits = 0x702E6E6F69736976;
  a1->_object = 0xEA00000000006F72;
  a1[1] = v7;
  a1[2] = v12;
}

uint64_t sub_10002C684()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_10002C76C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = static HorizontalAlignment.center.getter();
  v39 = 0;
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_10002C9F4(v3, &v22);
  v52 = v34;
  v53 = v35;
  v54 = v36;
  v48 = v30;
  v49 = v31;
  v50 = v32;
  v51 = v33;
  v44 = v26;
  v45 = v27;
  v46 = v28;
  v47 = v29;
  v40 = v22;
  v41 = v23;
  v42 = v24;
  v43 = v25;
  v56[12] = v34;
  v56[13] = v35;
  v56[14] = v36;
  v56[8] = v30;
  v56[9] = v31;
  v56[10] = v32;
  v56[11] = v33;
  v56[4] = v26;
  v56[5] = v27;
  v56[6] = v28;
  v56[7] = v29;
  v56[0] = v22;
  v56[1] = v23;
  v55 = v37;
  v57 = v37;
  v56[2] = v24;
  v56[3] = v25;
  sub_10000C178(&v40, v21, &qword_10016AA98, &qword_10010FA88);
  sub_100009908(v56, &qword_10016AA98, &qword_10010FA88);
  *&v38[199] = v52;
  *&v38[215] = v53;
  *&v38[231] = v54;
  *&v38[135] = v48;
  *&v38[151] = v49;
  *&v38[167] = v50;
  *&v38[183] = v51;
  *&v38[71] = v44;
  *&v38[87] = v45;
  *&v38[103] = v46;
  *&v38[119] = v47;
  *&v38[7] = v40;
  *&v38[23] = v41;
  *&v38[39] = v42;
  v38[247] = v55;
  *&v38[55] = v43;
  LOBYTE(a1) = v39;
  LOBYTE(v3) = static Edge.Set.horizontal.getter();
  result = EdgeInsets.init(_all:)();
  v10 = *&v38[208];
  *(a2 + 209) = *&v38[192];
  *(a2 + 225) = v10;
  *(a2 + 241) = *&v38[224];
  v11 = *&v38[144];
  *(a2 + 145) = *&v38[128];
  *(a2 + 161) = v11;
  v12 = *&v38[176];
  *(a2 + 177) = *&v38[160];
  *(a2 + 193) = v12;
  v13 = *&v38[80];
  *(a2 + 81) = *&v38[64];
  *(a2 + 97) = v13;
  v14 = *&v38[112];
  *(a2 + 113) = *&v38[96];
  *(a2 + 129) = v14;
  v15 = *&v38[16];
  *(a2 + 17) = *v38;
  *(a2 + 33) = v15;
  v16 = *&v38[48];
  *(a2 + 49) = *&v38[32];
  *a2 = v6;
  *(a2 + 8) = 0;
  *(a2 + 16) = a1;
  *(a2 + 257) = *&v38[240];
  *(a2 + 65) = v16;
  *(a2 + 272) = v3;
  *(a2 + 280) = v17;
  *(a2 + 288) = v18;
  *(a2 + 296) = v19;
  *(a2 + 304) = v20;
  *(a2 + 312) = 0;
  return result;
}

uint64_t sub_10002C9F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v3 = type metadata accessor for Image.Interpolation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v72[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for Image.ResizingMode();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v72[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v14 = a1[1];

  Image.init(_internalSystemName:)();
  (*(v9 + 104))(v12, enum case for Image.ResizingMode.stretch(_:), v8);
  Image.resizable(capInsets:resizingMode:)();

  (*(v9 + 8))(v12, v8);
  (*(v4 + 104))(v7, enum case for Image.Interpolation.high(_:), v3);
  v81 = Image.interpolation(_:)();

  (*(v4 + 8))(v7, v3);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  LOBYTE(v118) = 1;
  *&v93[6] = v95;
  *&v93[22] = v96;
  *&v93[38] = v97;
  v80 = static Edge.Set.all.getter();
  EdgeInsets.init(_all:)();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v76 = a1;
  v23 = a1[3];
  v118 = a1[2];
  v119 = v23;
  v75 = sub_100012928();

  v24 = Text.init<A>(_:)();
  v26 = v25;
  LOBYTE(v13) = v27;
  LODWORD(v118) = static HierarchicalShapeStyle.primary.getter();
  v28 = Text.foregroundStyle<A>(_:)();
  v30 = v29;
  LOBYTE(v3) = v31;
  sub_10001297C(v24, v26, v13 & 1);

  static Font.title3.getter();
  v32 = Text.font(_:)();
  v34 = v33;
  LOBYTE(v14) = v35;

  sub_10001297C(v28, v30, v3 & 1);

  static Font.Weight.bold.getter();
  v78 = Text.fontWeight(_:)();
  v79 = v36;
  v74 = v37;
  LOBYTE(v3) = v38;
  sub_10001297C(v32, v34, v14 & 1);

  v39 = static Edge.Set.bottom.getter();
  LOBYTE(v24) = v39;
  v73 = v39;
  EdgeInsets.init(_all:)();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  LOBYTE(v9) = v3 & 1;
  LOBYTE(v118) = v3 & 1;
  LOBYTE(v98[0]) = 0;
  v48 = v76[5];
  v118 = v76[4];
  v119 = v48;

  v49 = Text.init<A>(_:)();
  v51 = v50;
  LOBYTE(v32) = v52;
  LODWORD(v118) = static HierarchicalShapeStyle.secondary.getter();
  v53 = Text.foregroundStyle<A>(_:)();
  v55 = v54;
  LODWORD(v75) = v56;
  v76 = v57;
  sub_10001297C(v49, v51, v32 & 1);

  KeyPath = swift_getKeyPath();
  v98[0] = v81;
  v98[1] = 0;
  LOWORD(v99[0]) = 1;
  *&v99[3] = *&v93[46];
  *(&v99[1] + 2) = *&v93[16];
  *(&v99[2] + 2) = *&v93[32];
  *(v99 + 2) = *v93;
  BYTE8(v99[3]) = v80;
  *(&v99[3] + 9) = *v94;
  HIDWORD(v99[3]) = *&v94[3];
  *&v100 = v16;
  *(&v100 + 1) = v18;
  *&v101 = v20;
  *(&v101 + 1) = v22;
  v102 = 0;
  LOBYTE(v90[0]) = 0;
  v83 = v81;
  v84 = v99[0];
  v85 = v99[1];
  v86 = v99[2];
  v87 = v99[3];
  v88 = v100;
  v89 = v101;
  *&v103 = v78;
  v59 = v74;
  *(&v103 + 1) = v74;
  LOBYTE(v104) = v9;
  DWORD1(v104) = *&v92[3];
  *(&v104 + 1) = *v92;
  *(&v104 + 1) = v79;
  LOBYTE(v105) = v24;
  DWORD1(v105) = *&v91[3];
  *(&v105 + 1) = *v91;
  *(&v105 + 1) = v41;
  *&v106[0] = v43;
  *(&v106[0] + 1) = v45;
  *&v106[1] = v47;
  BYTE8(v106[1]) = 0;
  *(v90 + 8) = v103;
  *(&v90[4] + 1) = *(v106 + 9);
  *(&v90[3] + 8) = v106[0];
  *(&v90[2] + 8) = v105;
  *(&v90[1] + 8) = v104;
  LOBYTE(v32) = v75 & 1;
  v82 = v75 & 1;
  v60 = v81;
  v61 = v99[0];
  v62 = v99[2];
  v63 = v77;
  *(v77 + 32) = v99[1];
  *(v63 + 48) = v62;
  *v63 = v60;
  *(v63 + 16) = v61;
  v64 = v87;
  v65 = v88;
  v66 = v90[0];
  *(v63 + 96) = v89;
  *(v63 + 112) = v66;
  *(v63 + 64) = v64;
  *(v63 + 80) = v65;
  v67 = v90[1];
  v68 = v90[2];
  v69 = v90[4];
  v70 = *&v90[5];
  *(v63 + 160) = v90[3];
  *(v63 + 176) = v69;
  *(v63 + 128) = v67;
  *(v63 + 144) = v68;
  *(v63 + 192) = v70;
  *(v63 + 200) = v53;
  *(v63 + 208) = v55;
  *(v63 + 216) = v32;
  *(v63 + 224) = v76;
  *(v63 + 232) = KeyPath;
  *(v63 + 240) = 1;
  sub_10000C178(v98, &v118, &qword_10016AAA0, &unk_10010FAC0);
  sub_10000C178(&v103, &v118, &qword_10016A0B8, &qword_10010ECF0);
  sub_100003AE4(v53, v55, v32);

  sub_10001297C(v53, v55, v32);

  v107[0] = v78;
  v107[1] = v59;
  v108 = v9;
  *v109 = *v92;
  *&v109[3] = *&v92[3];
  v110 = v79;
  v111 = v73;
  *v112 = *v91;
  *&v112[3] = *&v91[3];
  v113 = v41;
  v114 = v43;
  v115 = v45;
  v116 = v47;
  v117 = 0;
  sub_100009908(v107, &qword_10016A0B8, &qword_10010ECF0);
  v121 = *v93;
  v118 = v81;
  v119 = 0;
  v120 = 1;
  v122 = *&v93[16];
  *v123 = *&v93[32];
  *&v123[14] = *&v93[46];
  v124 = v80;
  *v125 = *v94;
  *&v125[3] = *&v94[3];
  v126 = v16;
  v127 = v18;
  v128 = v20;
  v129 = v22;
  v130 = 0;
  return sub_100009908(&v118, &qword_10016AAA0, &unk_10010FAC0);
}

uint64_t sub_10002D180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  return sub_10002C76C(a1, a2);
}

unint64_t sub_10002D1F8()
{
  result = qword_10016AAA8;
  if (!qword_10016AAA8)
  {
    sub_10000459C(&qword_10016AAB0, &qword_10010FAD0);
    sub_100012C48(&qword_10016AAB8, &qword_10016AAC0, &qword_10010FAD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AAA8);
  }

  return result;
}

uint64_t sub_10002D2BC()
{
  static BundleIdentifierConstants.tetsuoBundleIdentifier.getter();
  String.utf8CString.getter();

  has_internal_ui = os_variant_has_internal_ui();

  if (has_internal_ui)
  {
    v1 = static UserDefaultUtilities.isUsingStagingForCloudChannels()();
    if (qword_100168EA0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100182108);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315394;
      *(v5 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v9);
      *(v5 + 12) = 1024;
      *(v5 + 14) = v1 & 1;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Push notification environment is staging: %{BOOL}d", v5, 0x12u);
      sub_1000052E4(v6);
    }

    v7 = v1 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_10002D454(char a1)
{
  *(v1 + 80) = a1;
  v2 = type metadata accessor for PushNotificationService();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_10002D514, 0, 0);
}

uint64_t sub_10002D514()
{
  v1 = *(v0 + 32);
  PushNotificationService.init()();
  v2 = async function pointer to PushNotificationService.activate()[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10002D5B0;
  v4 = *(v0 + 32);

  return PushNotificationService.activate()();
}

uint64_t sub_10002D5B0()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10002D6AC, 0, 0);
}

uint64_t sub_10002D6AC()
{
  v18 = v0;
  v1 = sub_10002D2BC();
  v2 = *(v0 + 80);
  v3 = "/2sbWvYVEe8AAKpp3X8o0g==";
  v4 = "RemoteNotificationsUtilities";
  if (v2 != 2)
  {
    v4 = "STORE_NOT_AVAILABLE_MESSAGE";
  }

  if (*(v0 + 80))
  {
    v3 = "0n7oiTKlEfAAAOYe7g8NMw==";
  }

  if (*(v0 + 80) > 1u)
  {
    v3 = v4;
  }

  v5 = "vnsFHvYWEe8AALaqsIHZDA==";
  v6 = "TGdm/z2ZEfAAAMJ1L5v+8Q==";
  if (v2 != 2)
  {
    v6 = "nKvCfPYWEe8AAKpp3X8o0g==";
  }

  if (*(v0 + 80))
  {
    v5 = "+ubhGDKlEfAAAHLUCeQW0A==";
  }

  if (*(v0 + 80) <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(v0 + 48) = v8;
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  *(v0 + 56) = sub_100006B0C(v9, qword_100182108);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100006B44(0xD000000000000018, v8 | 0x8000000000000000, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Registering push notification channel %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = async function pointer to PushNotificationService.registerChannel(channelID:)[1];
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_10002D95C;
  v15 = *(v0 + 32);

  return PushNotificationService.registerChannel(channelID:)(0xD000000000000018, v8 | 0x8000000000000000);
}

uint64_t sub_10002D95C()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10002DB08;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10002DA7C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002DA7C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  PushNotificationService.invalidate()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_10002DB08()
{
  v19 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v18);
    *(v9 + 12) = 2080;
    v11 = sub_100006B44(0xD000000000000018, v8 | 0x8000000000000000, &v18);

    *(v9 + 14) = v11;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Error registering push notification channel:  %s / %@", v9, 0x20u);
    sub_1000077E0(v10);

    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  PushNotificationService.invalidate()();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002DD48(char a1)
{
  *(v1 + 80) = a1;
  v2 = type metadata accessor for PushNotificationService();
  *(v1 + 16) = v2;
  v3 = *(v2 - 8);
  *(v1 + 24) = v3;
  v4 = *(v3 + 64) + 15;
  *(v1 + 32) = swift_task_alloc();

  return _swift_task_switch(sub_10002DE08, 0, 0);
}

uint64_t sub_10002DE08()
{
  v1 = *(v0 + 32);
  PushNotificationService.init()();
  v2 = async function pointer to PushNotificationService.activate()[1];
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_10002DEA4;
  v4 = *(v0 + 32);

  return PushNotificationService.activate()();
}

uint64_t sub_10002DEA4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10002DFA0, 0, 0);
}

uint64_t sub_10002DFA0()
{
  v18 = v0;
  v1 = sub_10002D2BC();
  v2 = *(v0 + 80);
  v3 = "/2sbWvYVEe8AAKpp3X8o0g==";
  v4 = "RemoteNotificationsUtilities";
  if (v2 != 2)
  {
    v4 = "STORE_NOT_AVAILABLE_MESSAGE";
  }

  if (*(v0 + 80))
  {
    v3 = "0n7oiTKlEfAAAOYe7g8NMw==";
  }

  if (*(v0 + 80) > 1u)
  {
    v3 = v4;
  }

  v5 = "vnsFHvYWEe8AALaqsIHZDA==";
  v6 = "TGdm/z2ZEfAAAMJ1L5v+8Q==";
  if (v2 != 2)
  {
    v6 = "nKvCfPYWEe8AAKpp3X8o0g==";
  }

  if (*(v0 + 80))
  {
    v5 = "+ubhGDKlEfAAAHLUCeQW0A==";
  }

  if (*(v0 + 80) <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (v1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  *(v0 + 48) = v8;
  if (qword_100168EA0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  *(v0 + 56) = sub_100006B0C(v9, qword_100182108);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v12 = 136315394;
    *(v12 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v17);
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_100006B44(0xD000000000000018, v8 | 0x8000000000000000, &v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Unregistering push notification channel  %s", v12, 0x16u);
    swift_arrayDestroy();
  }

  v13 = async function pointer to PushNotificationService.unregisterChannel(channelID:)[1];
  v14 = swift_task_alloc();
  *(v0 + 64) = v14;
  *v14 = v0;
  v14[1] = sub_10002E250;
  v15 = *(v0 + 32);

  return PushNotificationService.unregisterChannel(channelID:)(0xD000000000000018, v8 | 0x8000000000000000);
}

uint64_t sub_10002E250()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_10002E370;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_10002EA64;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10002E370()
{
  v19 = v0;
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  v8 = v0[6];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v9 = 136315650;
    *(v9 + 4) = sub_100006B44(0xD00000000000001CLL, 0x800000010011D720, &v18);
    *(v9 + 12) = 2080;
    v11 = sub_100006B44(0xD000000000000018, v8 | 0x8000000000000000, &v18);

    *(v9 + 14) = v11;
    *(v9 + 22) = 2112;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v12;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s Error unregistering push notification channel: %s / %@", v9, 0x20u);
    sub_1000077E0(v10);

    swift_arrayDestroy();
  }

  else
  {
  }

  v14 = v0[3];
  v13 = v0[4];
  v15 = v0[2];
  PushNotificationService.invalidate()();
  (*(v14 + 8))(v13, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002E5D0()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  v0[3] = v2;
  v0[4] = 0;
  v3 = (v1 + 32);
  while (v2)
  {
    v4 = *v3++;
    --v2;
    if (!v4)
    {
      v5 = swift_task_alloc();
      v0[5] = v5;
      *v5 = v0;
      v5[1] = sub_10002E6F4;

      return sub_10002D454(0);
    }
  }

  v7 = swift_task_alloc();
  v0[6] = v7;
  *v7 = v0;
  v7[1] = sub_10002E968;

  return sub_10002DD48(0);
}

uint64_t sub_10002E6F4()
{
  v1 = *(*v0 + 40);
  v3 = *v0;

  return _swift_task_switch(sub_10002E7F0, 0, 0);
}

uint64_t sub_10002E7F0()
{
  v1 = v0[4] + 1;
  if (v0[4] == 3)
  {
    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[4] = v1;
    v4 = *(&off_100159888 + v1 + 32);
    v5 = 32;
    while (v5 - v0[3] != 32)
    {
      v6 = *(v0[2] + v5++);
      if (v6 == v4)
      {
        v7 = swift_task_alloc();
        v0[5] = v7;
        *v7 = v0;
        v7[1] = sub_10002E6F4;

        return sub_10002D454(v4);
      }
    }

    v8 = swift_task_alloc();
    v0[6] = v8;
    *v8 = v0;
    v8[1] = sub_10002E968;

    return sub_10002DD48(v4);
  }
}

uint64_t sub_10002E968()
{
  v1 = *(*v0 + 48);
  v3 = *v0;

  return _swift_task_switch(sub_10002EA68, 0, 0);
}

uint64_t sub_10002EA6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000010;
  v4 = 0x800000010011C670;
  if (v2 == 1)
  {
    v5 = 0x800000010011C670;
  }

  else
  {
    v3 = 0x69736E6172546E69;
    v5 = 0xEC0000006E6F6974;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xEA00000000006E65;
  }

  v8 = 0xD000000000000010;
  if (*a2 != 1)
  {
    v8 = 0x69736E6172546E69;
    v4 = 0xEC0000006E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x657263536C6C7566;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA00000000006E65;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_10002EB78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10002EC2C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10002ECCC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10002ED7C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000315E0(*a1);
  *a2 = result;
  return result;
}

void sub_10002EDAC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E65;
  v4 = 0x800000010011C670;
  v5 = 0xD000000000000010;
  if (v2 != 1)
  {
    v5 = 0x69736E6172546E69;
    v4 = 0xEC0000006E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x657263536C6C7566;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_10002EE1C()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 16);
}

uint64_t sub_10002EE8C(uint64_t result)
{
  if (*(v1 + 16) == (result & 1))
  {
    *(v1 + 16) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

uint64_t sub_10002EF74()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 17);
}

uint64_t sub_10002EFE4(char a1)
{
  v2 = v1;
  v4 = 0xEA00000000006E65;
  v5 = 0x657263536C6C7566;
  v6 = 0xD000000000000010;
  v7 = 0x800000010011C670;
  if (*(v2 + 17) != 1)
  {
    v6 = 0x69736E6172546E69;
    v7 = 0xEC0000006E6F6974;
  }

  if (*(v2 + 17))
  {
    v8 = v6;
  }

  else
  {
    v8 = 0x657263536C6C7566;
  }

  if (*(v2 + 17))
  {
    v9 = v7;
  }

  else
  {
    v9 = 0xEA00000000006E65;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0x69736E6172546E69;
    }

    if (a1 == 1)
    {
      v4 = 0x800000010011C670;
    }

    else
    {
      v4 = 0xEC0000006E6F6974;
    }
  }

  if (v8 == v5 && v9 == v4)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_100031634();
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }
  }

  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A3CA8(a1);
    result = swift_unknownObjectRelease();
  }

  *(v2 + 17) = a1;
  return result;
}

uint64_t sub_10002F208(uint64_t a1, char a2)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_1000A3CA8(a2);
    result = swift_unknownObjectRelease();
  }

  *(a1 + 17) = a2;
  return result;
}

void *sub_10002F2A4()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

id sub_10002F31C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 24);
  *a2 = v4;

  return v4;
}

void sub_10002F3A4(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002F3D4(v2);
}

void sub_10002F3D4(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 24);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE98, CALayer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 24);
LABEL_8:
  *(v2 + 24) = a1;
}

void *sub_10002F534()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

id sub_10002F5AC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

void sub_10002F634(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002F664(v2);
}

void sub_10002F664(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 32);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE98, CALayer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 32);
LABEL_8:
  *(v2 + 32) = a1;
}

void *sub_10002F7C4()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_10002F83C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 40);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016F2D0, APRKStreamRenderer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 40);
LABEL_8:
  *(v2 + 40) = a1;
}

uint64_t sub_10002F99C()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t sub_10002FA10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_10002FAC4(uint64_t result, char a2)
{
  if ((*(v2 + 56) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *(v2 + 48) != *&result)
    {
      goto LABEL_7;
    }

LABEL_6:
    *(v2 + 48) = *&result;
    *(v2 + 56) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_100031634();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  *&result = COERCE_DOUBLE();
  return result;
}

uint64_t sub_10002FBCC()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v2 = *(v0 + 72);
  return result;
}

uint64_t sub_10002FC64()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_10002FCD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void sub_10002FD54(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002FD84(v2);
}

void sub_10002FD84(void *a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    if (!a1)
    {
      goto LABEL_6;
    }

LABEL_10:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  v2 = Strong;
  if (!a1)
  {

    goto LABEL_10;
  }

  sub_100031904(0, &unk_10016F330, UIWindowScene_ptr);
  v3 = v2;
  v4 = static NSObject.== infix(_:_:)();

  if ((v4 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  swift_unknownObjectWeakAssign();
}

void *sub_10002FEFC()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

void sub_10002FF74(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 88);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE90, UIView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 88);
LABEL_8:
  *(v2 + 88) = a1;
}

void sub_1000300D4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 88);
  *(a1 + 88) = a2;
  v3 = a2;
}

void *sub_100030108()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 96);
  v2 = v1;
  return v1;
}

void sub_100030180(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 96);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  sub_100031904(0, &qword_10016AE90, UIView_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 96);
LABEL_8:
  *(v2 + 96) = a1;
}

void sub_1000302E0(uint64_t a1, void *a2)
{
  v2 = *(a1 + 96);
  *(a1 + 96) = a2;
  v3 = a2;
}

void *sub_100030314()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 104);
  v2 = v1;
  return v1;
}

void sub_10003038C(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 104);
  if (!v4)
  {
    if (!a1)
    {
      v8 = 0;
      goto LABEL_8;
    }

LABEL_6:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for MirroringPIPCoordinator();
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }

  v8 = *(v2 + 104);
LABEL_8:
  *(v2 + 104) = a1;
}

void sub_1000304DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 104);
  *(a1 + 104) = a2;
  v3 = a2;
}

void sub_100030510(void *a1)
{
  v2 = v1;
  v4 = a1;
  sub_10002F83C(a1);
  v5 = [v4 mirroringLayer];
  v6 = v5;
  if (v5)
  {
    [v5 setContentsGravity:kCAGravityCenter];
    [v6 setNeedsDisplayOnBoundsChange:0];
  }

  v17 = v6;
  sub_10002F664(v6);
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = *(v2 + 40);
  if (v7)
  {
    [v7 videoFrameSize];
    if (v8 > 0.0 && v9 > 0.0)
    {
      sub_10002FAC4(COERCE__INT64(v9 / v8), 0);
    }
  }

  if (a1)
  {
    v10 = [v4 HUDLayer];
    v11 = v10;
    if (v10)
    {
      [v10 setContentsGravity:kCAGravityCenter];
      [v11 setNeedsDisplayOnBoundsChange:0];
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;
  sub_10002F3D4(v11);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + 40))
  {
    goto LABEL_12;
  }

  if (*(v2 + 16))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  else
  {
    *(v2 + 16) = 0;
  }

  sub_10002EFE4(0);
  if (*(v2 + 104))
  {
    v14 = swift_getKeyPath();
    __chkstk_darwin(v14);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (*(v2 + 88))
  {
    v15 = swift_getKeyPath();
    __chkstk_darwin(v15);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  if (!*(v2 + 96))
  {
LABEL_12:
  }

  else
  {
    v16 = swift_getKeyPath();
    __chkstk_darwin(v16);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

void *sub_100030910()
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v1 = *(v0 + 112);
  v2 = v1;
  return v1;
}

void sub_100030988(void *a1)
{
  v2 = v1;
  v4 = *(v1 + 112);
  if (!v4)
  {
    if (!a1)
    {
      goto LABEL_4;
    }

LABEL_8:
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_100031634();
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    return;
  }

  if (!a1)
  {
    goto LABEL_8;
  }

  sub_100031904(0, &qword_10016F2D0, APRKStreamRenderer_ptr);
  v5 = v4;
  v6 = a1;
  v7 = static NSObject.== infix(_:_:)();

  if ((v7 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  sub_100030510(a1);
  v8 = *(v2 + 112);
  *(v2 + 112) = a1;
}

void sub_100030AEC(uint64_t a1, void *a2)
{
  sub_100030510(a2);
  v4 = *(a1 + 112);
  *(a1 + 112) = a2;
  v5 = a2;
}

void sub_100030B38(void *a1, char a2)
{
  v3 = v2;
  if (!a2)
  {

    goto LABEL_7;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
LABEL_7:
    v8 = a1;
    sub_100030180(a1);
    swift_getKeyPath();
    sub_100031634();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v3 + 104))
    {
      v9 = objc_allocWithZone(type metadata accessor for MirroringPIPViewController());

      v10 = sub_10001535C();

      objc_allocWithZone(type metadata accessor for MirroringPIPCoordinator());
      v11 = v8;

      v12 = sub_1000135E4(v11, v10, v3);
      sub_10003038C(v12);
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v13 = *(v3 + 104);
    if (v13)
    {
      v14 = *&v13[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView];
      *&v13[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_sourceView] = v8;
      v15 = v8;
      v16 = v13;

      [*&v16[OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy] viewFrameForInteractiveTransitionAnimationWhenEnteringBackgroundDidChangeForViewController];
    }

    return;
  }

  if (a2 == 2)
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v7 & 1) == 0)
    {
      return;
    }
  }

  else
  {
  }

  v17 = a1;

  sub_10002FF74(a1);
}

void sub_100030DB8(char a1)
{
  swift_getKeyPath();
  sub_100031634();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = v1[4];
  if (v3)
  {
    v4 = v3;
    sub_10002EFE4(2);
    if (a1)
    {
      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v5 & 1) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v6 = v1[11];
        if (!v6)
        {
          goto LABEL_9;
        }

        goto LABEL_8;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v6 = v1[12];
    if (!v6)
    {
LABEL_9:

      return;
    }

LABEL_8:
    v7 = objc_opt_self();
    v8 = v6;
    [v7 begin];
    [v7 setDisableActions:1];
    v9 = [v8 layer];
    [v9 addSublayer:v4];

    [v8 bounds];
    [v4 setFrame:?];
    [v7 commit];

    v4 = v8;
    goto LABEL_9;
  }
}

uint64_t sub_100030FFC(char a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  if (a1)
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {
    v8 = 1;
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181F88);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v12 = 136315650;
    v13 = _typeName(_:qualified:)();
    v15 = sub_100006B44(v13, v14, &v22);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    if (v8)
    {
      v16 = 1886352499;
    }

    else
    {
      v16 = 0x7472617473;
    }

    if (v8)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = sub_100006B44(v16, v17, &v22);

    *(v12 + 14) = v18;
    *(v12 + 22) = 2080;
    *(v12 + 24) = sub_100006B44(a2, a3, &v22);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Manually triggering PiP %s for reason: %s", v12, 0x20u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  if (v8)
  {
    v22 = v4;
    sub_100031634();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v19 = *(v4 + 104);
    if (v19)
    {
      [*(v19 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy) stopPictureInPictureAndRestoreUserInterface:1];
    }
  }

  else
  {
    v22 = v4;
    sub_100031634();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v20 = *(v4 + 104);
    if (v20)
    {
      [*(v20 + OBJC_IVAR____TtC17AppleVisionProApp23MirroringPIPCoordinator_pictureInPictureProxy) startPictureInPicture];
    }
  }

  return sub_10002EFE4(2);
}

id *sub_10003134C()
{
  sub_1000319E0((v0 + 8));
  swift_unknownObjectWeakDestroy();

  v1 = OBJC_IVAR____TtC17AppleVisionProApp18MirroringViewModel___observationRegistrar;
  v2 = type metadata accessor for ObservationRegistrar();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1000313F4()
{
  sub_10003134C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MirroringViewModel()
{
  result = qword_10016AAF8;
  if (!qword_10016AAF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000314A0()
{
  result = type metadata accessor for ObservationRegistrar();
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

unint64_t sub_10003158C()
{
  result = qword_10016AE88;
  if (!qword_10016AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016AE88);
  }

  return result;
}

unint64_t sub_1000315E0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001598B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_100031634()
{
  result = qword_100169C08;
  if (!qword_100169C08)
  {
    type metadata accessor for MirroringViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100169C08);
  }

  return result;
}

void sub_100031694()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 96);
  *(v1 + 96) = v2;
  v4 = v2;
}

void sub_1000316D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
  v4 = v2;
}

void sub_100031714()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 104);
  *(v1 + 104) = v2;
  v4 = v2;
}

void sub_100031768(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002F664(v2);
}

void sub_1000317A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_100030510(v2);
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
  v4 = v2;
}

void sub_1000317F0(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002FD84(v2);
}

uint64_t sub_100031820()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  return swift_unknownObjectWeakAssign();
}

void sub_100031880()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  *(v1 + 48) = *(v0 + 24);
  *(v1 + 56) = v2;
}

void sub_100031894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

void sub_1000318CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_100031904(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_100031950(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  sub_10002F3D4(v2);
}

void sub_100031980()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

uint64_t sub_100031A7C(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_100031B4C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_100002BE4(&qword_10016AEC0, &unk_10010FF00);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100031C1C()
{
  type metadata accessor for DeviceProvider();
  if (v0 <= 0x3F)
  {
    sub_100035E1C(319, &qword_10016AF30, &type metadata accessor for DismissAction);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100031CD8()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0xE000000000000000;
  v1._countAndFlagsBits = 0x495645445F4C4C41;
  v1._object = 0xEB00000000534543;
  v2.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v2.value._object = 0xEB00000000656C62;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0;
  v4 = NSLocalizedString(_:tableName:bundle:value:comment:)(v1, v2, v0, v3, v5);

  xmmword_10016AEA0 = v4;
}

uint64_t sub_100031D94@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v82 = type metadata accessor for AutomationUtilities.AutomationAttributeType();
  v79 = *(v82 - 8);
  v2 = *(v79 + 64);
  __chkstk_darwin(v82);
  v80 = (&v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AutomationSemantics();
  v83 = *(v4 - 8);
  v84 = v4;
  v5 = *(v83 + 64);
  __chkstk_darwin(v4);
  v81 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v74 = *(v76 - 8);
  v7 = *(v74 + 64);
  __chkstk_darwin(v76);
  v72 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for InsetGroupedListStyle();
  v66 = *(v65 - 8);
  v9 = *(v66 + 64);
  __chkstk_darwin(v65);
  v11 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_100002BE4(&qword_10016AF60, &qword_10010FF78);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v63 - v15;
  v17 = sub_100002BE4(&qword_10016AF68, &qword_10010FF80);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v63 - v20;
  v64 = sub_100002BE4(&qword_10016AF70, &qword_10010FF88);
  v22 = *(*(v64 - 8) + 64);
  __chkstk_darwin(v64);
  v24 = &v63 - v23;
  v71 = sub_100002BE4(&qword_10016AF78, &qword_10010FF90);
  v68 = *(v71 - 8);
  v25 = *(v68 + 64);
  __chkstk_darwin(v71);
  v67 = &v63 - v26;
  v73 = sub_100002BE4(&qword_10016AF80, &qword_10010FF98);
  v70 = *(v73 - 8);
  v27 = *(v70 + 64);
  __chkstk_darwin(v73);
  v69 = &v63 - v28;
  v29 = sub_100002BE4(&qword_10016AF88, &qword_10010FFA0);
  v77 = *(v29 - 8);
  v78 = v29;
  v30 = *(v77 + 64);
  __chkstk_darwin(v29);
  v75 = &v63 - v31;
  v85 = v1;
  v87 = v1;
  sub_100002BE4(&qword_10016AF90, &qword_10010FFA8);
  sub_1000343E4();
  List<>.init(content:)();
  v32 = sub_100012C48(&qword_10016AFB0, &qword_10016AF60, &qword_10010FF78);
  View.listHasLazyStackBehavior()();
  (*(v13 + 8))(v16, v12);
  InsetGroupedListStyle.init()();
  *&v88 = v12;
  *(&v88 + 1) = v32;
  swift_getOpaqueTypeConformance2();
  v33 = v65;
  View.listStyle<A>(_:)();
  (*(v66 + 8))(v11, v33);
  v34 = v21;
  v35 = v64;
  (*(v18 + 8))(v34, v17);
  v36 = [objc_opt_self() systemBackgroundColor];
  v37 = Color.init(_:)();
  v38 = static Edge.Set.all.getter();
  v39 = &v24[*(v35 + 36)];
  *v39 = v37;
  v39[8] = v38;
  if (qword_100168F08 != -1)
  {
    swift_once();
  }

  v88 = xmmword_10016AEA0;
  v40 = sub_1000344D8();
  v41 = sub_100012928();
  v42 = v67;
  View.navigationTitle<A>(_:)();
  sub_100009908(v24, &qword_10016AF70, &qword_10010FF88);
  v43 = v74;
  v44 = v72;
  v45 = v76;
  (*(v74 + 104))(v72, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v76);
  *&v88 = v35;
  *(&v88 + 1) = &type metadata for String;
  v89 = v40;
  v90 = v41;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v47 = v69;
  v48 = v71;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v43 + 8))(v44, v45);
  (*(v68 + 8))(v42, v48);
  v49 = v80;
  *v80 = 515;
  swift_storeEnumTagMultiPayload();
  sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
  v50 = *(v79 + 72);
  v51 = (*(v79 + 80) + 32) & ~*(v79 + 80);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_10010D3B0;
  sub_10003466C(v49, v52 + v51, type metadata accessor for AutomationUtilities.AutomationAttributeType);
  v53 = v81;
  sub_1000FCC48(0x89u, v52, v81);
  swift_setDeallocating();
  v54 = *(v52 + 16);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1000129F4(v49);
  *&v88 = v48;
  *(&v88 + 1) = OpaqueTypeConformance2;
  v55 = swift_getOpaqueTypeConformance2();
  v56 = v75;
  v57 = v73;
  View.automationSemantics(_:)();
  (*(v83 + 8))(v53, v84);
  v58 = (*(v70 + 8))(v47, v57);
  __chkstk_darwin(v58);
  *(&v63 - 2) = v85;
  sub_100002BE4(&qword_10016AFC0, &qword_10010FFC8);
  *&v88 = v57;
  *(&v88 + 1) = v55;
  swift_getOpaqueTypeConformance2();
  v59 = sub_10000459C(&qword_10016AFC8, &qword_10010FFD0);
  v60 = sub_100012C48(&qword_10016AFD0, &qword_10016AFC8, &qword_10010FFD0);
  *&v88 = v59;
  *(&v88 + 1) = v60;
  swift_getOpaqueTypeConformance2();
  v61 = v78;
  View.toolbar<A>(content:)();
  return (*(v77 + 8))(v56, v61);
}