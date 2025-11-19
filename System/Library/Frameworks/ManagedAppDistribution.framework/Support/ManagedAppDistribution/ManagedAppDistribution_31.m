uint64_t sub_100439020@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v58 = a5;
  v59 = a2;
  v60 = a3;
  v61 = a4;
  v62 = a1;
  v57 = a6;
  v6 = type metadata accessor for Date.ISO8601FormatStyle();
  v53 = *(v6 - 8);
  v54 = v6;
  __chkstk_darwin(v6);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Date();
  v51 = *(v9 - 8);
  v52 = v9;
  __chkstk_darwin(v9);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DateInterval();
  v49 = *(v12 - 8);
  v50 = v12;
  __chkstk_darwin(v12);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for URLRequest();
  v16 = *(v15 - 8);
  v17 = __chkstk_darwin(v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v49 - v20;
  sub_1001F0C48(&qword_100783D88);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_10069E680;
  v55 = v16;
  v56 = v15;
  v23 = *(v16 + 16);
  v24 = v15;
  v25 = v58;
  v23(v21, v62, v24);
  v26 = v59;
  sub_10020ABFC(v60, v61);
  if (v25)
  {
    v27 = [v25 taskInterval];
    static DateInterval._unconditionallyBridgeFromObjectiveC(_:)();

    DateInterval.start.getter();
    (*(v49 + 8))(v14, v50);
  }

  else
  {
    static Date.now.getter();
  }

  sub_100430430(v8);
  v28 = Date.ISO8601Format(_:)();
  v30 = v29;
  (*(v53 + 8))(v8, v54);
  (*(v51 + 8))(v11, v52);
  v31 = v56;
  v23(v19, v21, v56);
  sub_100433BF4(v19, v64);
  v32 = v59;
  v34 = v60;
  v33 = v61;
  sub_10020ABFC(v60, v61);
  sub_100435100(v32, v34, v33, v63);
  sub_100007158(v34, v33);

  sub_100436604(v58, v65);
  sub_100007158(v34, v33);

  v35 = *(v55 + 8);
  v35(v21, v31);
  *(v22 + 32) = v28;
  *(v22 + 40) = v30;
  *(v22 + 48) = -1;
  v36 = v64[5];
  *(v22 + 120) = v64[4];
  *(v22 + 136) = v36;
  v37 = v64[7];
  *(v22 + 152) = v64[6];
  *(v22 + 168) = v37;
  v38 = v64[1];
  *(v22 + 56) = v64[0];
  *(v22 + 72) = v38;
  v39 = v64[3];
  *(v22 + 88) = v64[2];
  *(v22 + 104) = v39;
  v40 = v63[1];
  *(v22 + 184) = v63[0];
  v41 = v63[8];
  *(v22 + 296) = v63[7];
  *(v22 + 312) = v41;
  v42 = v63[6];
  v43 = v63[4];
  *(v22 + 264) = v63[5];
  *(v22 + 280) = v42;
  *(v22 + 248) = v43;
  v44 = v63[2];
  *(v22 + 232) = v63[3];
  *(v22 + 216) = v44;
  *(v22 + 200) = v40;
  *(v22 + 408) = 0u;
  *(v22 + 424) = 0u;
  *(v22 + 376) = 0u;
  *(v22 + 392) = 0u;
  *(v22 + 344) = 0u;
  *(v22 + 360) = 0u;
  *(v22 + 328) = 0u;
  v45 = v65[3];
  *(v22 + 472) = v65[2];
  *(v22 + 488) = v45;
  *(v22 + 504) = v65[4];
  *(v22 + 520) = v66;
  v46 = v65[1];
  *(v22 + 440) = v65[0];
  *(v22 + 456) = v46;
  *(v22 + 528) = 0u;
  *(v22 + 544) = 0u;
  result = (v35)(v62, v31);
  v48 = v57;
  *v57 = 3288625;
  v48[1] = 0xE300000000000000;
  v48[2] = 0xD000000000000016;
  v48[3] = 0x80000001006C51C0;
  v48[4] = 3157553;
  v48[5] = 0xE300000000000000;
  v48[6] = v22;
  return result;
}

uint64_t sub_100439524(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F7461657263 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x73656972746E65 && a2 == 0xE700000000000000)
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

uint64_t sub_10043963C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100783ED8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043B18C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  LOBYTE(v23) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v22 = v9;
  v27 = 1;
  sub_10043B1E0();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v23;
  v20 = v24;
  v18 = v25;
  v21 = v26;
  sub_1001F0C48(&qword_100783EF0);
  v27 = 2;
  sub_10043B234();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v23;

  v13 = v20;

  v14 = v21;

  sub_10000710C(a1);

  *a2 = v22;
  a2[1] = v11;
  v16 = v18;
  a2[2] = v19;
  a2[3] = v13;
  a2[4] = v16;
  a2[5] = v14;
  a2[6] = v12;
  return result;
}

uint64_t sub_100439928()
{
  v66 = type metadata accessor for URL.DirectoryHint();
  v0 = *(v66 - 8);
  __chkstk_darwin(v66);
  v65 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = type metadata accessor for NSScanner.NumberRepresentation();
  v2 = *(v72 - 8);
  __chkstk_darwin(v72);
  v71 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for NSFastEnumerationIterator();
  v67 = *(v4 - 8);
  v68 = v4;
  __chkstk_darwin(v4);
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v7);
  v9 = &v53 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v64 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  if (qword_10077E530 != -1)
  {
    swift_once();
  }

  v16 = sub_1002710CC(v7, qword_100783D60);
  sub_100005934(v16, v9, &unk_1007809F0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1000032A8(v9, &unk_1007809F0);
  }

  (*(v11 + 32))(v15, v9, v10);
  v58 = objc_opt_self();
  v18 = [v58 defaultManager];
  URL.path(percentEncoded:)(1);
  v19 = String._bridgeToObjectiveC()();

  v20 = [v18 enumeratorAtPath:v19];

  if (!v20)
  {
    return (*(v11 + 8))(v15, v10);
  }

  Date.timeIntervalSinceReferenceDate.getter();
  v22 = v21;
  v57 = v20;
  NSEnumerator.makeIterator()();
  NSFastEnumerationIterator.next()();
  v23 = v15;
  if (v78)
  {
    v24 = 22;
    if (("ricKit.lockoutStateChanged" & 0x2000000000000000) != 0)
    {
      v24 = ("ricKit.lockoutStateChanged" >> 56) & 0xF;
    }

    v70 = v24;
    v61 = enum case for NSScanner.NumberRepresentation.decimal(_:);
    v60 = (v2 + 104);
    v59 = (v2 + 8);
    v25 = 0x80000001006CB560;
    v56 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v55 = (v0 + 104);
    v54 = (v0 + 8);
    v53 = (v11 + 8);
    v63 = v11;
    v69 = v15;
    v62 = 0x80000001006CB560;
    v73 = v6;
    do
    {
      sub_1001F6498(&v77, v76);
      v26 = swift_dynamicCast();
      if (v26)
      {
        v28 = v74;
        v27 = v75;
        *&v76[0] = 95;
        *(&v76[0] + 1) = 0xE100000000000000;
        __chkstk_darwin(v26);
        v52 = v76;

        v30 = sub_100432C48(0x7FFFFFFFFFFFFFFFLL, 1, sub_10020A824, (&v53 - 4), v28, v27, v29);
        if (v30[2] == 2 && (v30[6] == 0xD000000000000016 ? (v31 = v25 == v30[7]) : (v31 = 0), v31 ? (v32 = v30[4] >> 16 == 0) : (v32 = 0), v32 ? (v33 = v30[5] >> 16 == v70) : (v33 = 0), v33 || (LOBYTE(v52) = 0, (_stringCompareInternal(_:_:_:_:expecting:)() & 1) != 0)))
        {
          v34 = v10;

          static String._fromSubstring(_:)();

          v35 = objc_allocWithZone(NSScanner);
          v36 = String._bridgeToObjectiveC()();

          v37 = [v35 initWithString:v36];

          v39 = v71;
          v38 = v72;
          (*v60)(v71, v61, v72);
          v40 = COERCE_DOUBLE(NSScanner.scanDouble(representation:)());
          v42 = v41;
          (*v59)(v39, v38);
          if ((v42 & 1) != 0 || v22 < v40)
          {

            v10 = v34;
          }

          else
          {
            v43 = [v58 defaultManager];
            *&v76[0] = v28;
            *(&v76[0] + 1) = v27;
            v44 = v65;
            v45 = v66;
            (*v55)(v65, v56, v66);
            sub_100005E50();
            v46 = v64;
            URL.appending<A>(component:directoryHint:)();
            (*v54)(v44, v45);

            URL._bridgeToObjectiveC()(v47);
            v49 = v48;
            v10 = v34;
            (*v53)(v46, v34);
            *&v76[0] = 0;
            LODWORD(v45) = [v43 removeItemAtURL:v49 error:v76];

            if (v45)
            {
              v50 = *&v76[0];
            }

            else
            {
              v51 = *&v76[0];
              _convertNSErrorToError(_:)();

              swift_willThrow();
            }
          }

          v11 = v63;
          v23 = v69;
          v25 = v62;
        }

        else
        {
        }

        v6 = v73;
      }

      NSFastEnumerationIterator.next()();
    }

    while (v78);
  }

  (*(v67 + 8))(v6, v68);
  return (*(v11 + 8))(v23, v10);
}

unint64_t sub_10043A21C()
{
  result = qword_100783D80;
  if (!qword_100783D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783D80);
  }

  return result;
}

uint64_t sub_10043A2A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077EF30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10043A36C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10043A3B4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10043A3D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 528))
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

uint64_t sub_10043A41C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 520) = 0;
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
      *(result + 528) = 1;
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

    *(result + 528) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10043A514()
{
  result = qword_100783DA0;
  if (!qword_100783DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DA0);
  }

  return result;
}

unint64_t sub_10043A5A0()
{
  result = qword_100783DA8;
  if (!qword_100783DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DA8);
  }

  return result;
}

unint64_t sub_10043A5F4()
{
  result = qword_100783DB8;
  if (!qword_100783DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DB8);
  }

  return result;
}

uint64_t sub_10043A648(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

unint64_t sub_10043A698()
{
  result = qword_100783DC8;
  if (!qword_100783DC8)
  {
    sub_1001F76D0(&qword_100783DC0);
    sub_10043A71C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DC8);
  }

  return result;
}

unint64_t sub_10043A71C()
{
  result = qword_100783DD0;
  if (!qword_100783DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DD0);
  }

  return result;
}

unint64_t sub_10043A770()
{
  result = qword_100783DE0;
  if (!qword_100783DE0)
  {
    sub_1001F76D0(&qword_100783DD8);
    sub_10043A7F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DE0);
  }

  return result;
}

unint64_t sub_10043A7F4()
{
  result = qword_100783DE8;
  if (!qword_100783DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DE8);
  }

  return result;
}

unint64_t sub_10043A848()
{
  result = qword_100783DF8;
  if (!qword_100783DF8)
  {
    sub_1001F76D0(&qword_100783DF0);
    sub_10043A8CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783DF8);
  }

  return result;
}

unint64_t sub_10043A8CC()
{
  result = qword_100783E00;
  if (!qword_100783E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E00);
  }

  return result;
}

unint64_t sub_10043A920()
{
  result = qword_100783E08;
  if (!qword_100783E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E08);
  }

  return result;
}

unint64_t sub_10043A9DC()
{
  result = qword_100783E18;
  if (!qword_100783E18)
  {
    sub_1001F76D0(&qword_100783DC0);
    sub_10043AA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E18);
  }

  return result;
}

unint64_t sub_10043AA60()
{
  result = qword_100783E20;
  if (!qword_100783E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E20);
  }

  return result;
}

unint64_t sub_10043AAB4()
{
  result = qword_100783E28;
  if (!qword_100783E28)
  {
    sub_1001F76D0(&qword_100783DD8);
    sub_10043AB38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E28);
  }

  return result;
}

unint64_t sub_10043AB38()
{
  result = qword_100783E30;
  if (!qword_100783E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E30);
  }

  return result;
}

unint64_t sub_10043AB8C()
{
  result = qword_100783E38;
  if (!qword_100783E38)
  {
    sub_1001F76D0(&qword_100783DF0);
    sub_10043AC10();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E38);
  }

  return result;
}

unint64_t sub_10043AC10()
{
  result = qword_100783E40;
  if (!qword_100783E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E40);
  }

  return result;
}

unint64_t sub_10043AC64()
{
  result = qword_100783E48;
  if (!qword_100783E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E48);
  }

  return result;
}

unint64_t sub_10043ACB8()
{
  result = qword_100783E58;
  if (!qword_100783E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E58);
  }

  return result;
}

unint64_t sub_10043AD0C()
{
  result = qword_100783E70;
  if (!qword_100783E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E70);
  }

  return result;
}

unint64_t sub_10043AD60()
{
  result = qword_100783E88;
  if (!qword_100783E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E88);
  }

  return result;
}

unint64_t sub_10043AE14()
{
  result = qword_100783E90;
  if (!qword_100783E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E90);
  }

  return result;
}

unint64_t sub_10043AE68()
{
  result = qword_100783E98;
  if (!qword_100783E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783E98);
  }

  return result;
}

unint64_t sub_10043AEBC()
{
  result = qword_100783EA0;
  if (!qword_100783EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EA0);
  }

  return result;
}

unint64_t sub_10043AF10()
{
  result = qword_100783EA8;
  if (!qword_100783EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EA8);
  }

  return result;
}

unint64_t sub_10043AFCC()
{
  result = qword_100783EB8;
  if (!qword_100783EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EB8);
  }

  return result;
}

unint64_t sub_10043B058()
{
  result = qword_100783EC0;
  if (!qword_100783EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EC0);
  }

  return result;
}

unint64_t sub_10043B0E4()
{
  result = qword_100783EC8;
  if (!qword_100783EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EC8);
  }

  return result;
}

unint64_t sub_10043B138()
{
  result = qword_100783ED0;
  if (!qword_100783ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783ED0);
  }

  return result;
}

unint64_t sub_10043B18C()
{
  result = qword_100783EE0;
  if (!qword_100783EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EE0);
  }

  return result;
}

unint64_t sub_10043B1E0()
{
  result = qword_100783EE8;
  if (!qword_100783EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EE8);
  }

  return result;
}

unint64_t sub_10043B234()
{
  result = qword_100783EF8;
  if (!qword_100783EF8)
  {
    sub_1001F76D0(&qword_100783EF0);
    sub_10043B2B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783EF8);
  }

  return result;
}

unint64_t sub_10043B2B8()
{
  result = qword_100783F00;
  if (!qword_100783F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F00);
  }

  return result;
}

unint64_t sub_10043B30C()
{
  result = qword_100783F10;
  if (!qword_100783F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F10);
  }

  return result;
}

unint64_t sub_10043B360()
{
  result = qword_100783F18;
  if (!qword_100783F18)
  {
    sub_1001F76D0(&qword_100783EF0);
    sub_10043B3E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F18);
  }

  return result;
}

unint64_t sub_10043B3E4()
{
  result = qword_100783F20;
  if (!qword_100783F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F20);
  }

  return result;
}

uint64_t sub_10043B438@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1001F0C48(&qword_100783F28);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10043A514();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  sub_10043B5D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  v14 = v15;
  v9 = v17;
  v12 = v18;
  result = sub_10000710C(a1);
  v11 = v13;
  *a2 = v14;
  *(a2 + 16) = v11;
  *(a2 + 32) = v9;
  *(a2 + 40) = v12;
  return result;
}

unint64_t sub_10043B5D8()
{
  result = qword_100783F30;
  if (!qword_100783F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F30);
  }

  return result;
}

__n128 sub_10043B64C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10043B670(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 81))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10043B690(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
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

  *(result + 81) = v3;
  return result;
}

__n128 sub_10043B6E4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10043B710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_10043B758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10043B7CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10043B828(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_10043B8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10043B920(uint64_t result, int a2, int a3)
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

unint64_t sub_10043B9AC()
{
  result = qword_100783F38;
  if (!qword_100783F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F38);
  }

  return result;
}

unint64_t sub_10043BA04()
{
  result = qword_100783F40;
  if (!qword_100783F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F40);
  }

  return result;
}

unint64_t sub_10043BA5C()
{
  result = qword_100783F48;
  if (!qword_100783F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F48);
  }

  return result;
}

unint64_t sub_10043BAB4()
{
  result = qword_100783F50;
  if (!qword_100783F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F50);
  }

  return result;
}

unint64_t sub_10043BB0C()
{
  result = qword_100783F58;
  if (!qword_100783F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F58);
  }

  return result;
}

unint64_t sub_10043BB64()
{
  result = qword_100783F60;
  if (!qword_100783F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F60);
  }

  return result;
}

unint64_t sub_10043BBBC()
{
  result = qword_100783F68;
  if (!qword_100783F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F68);
  }

  return result;
}

unint64_t sub_10043BC14()
{
  result = qword_100783F70;
  if (!qword_100783F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F70);
  }

  return result;
}

unint64_t sub_10043BC6C()
{
  result = qword_100783F78;
  if (!qword_100783F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F78);
  }

  return result;
}

unint64_t sub_10043BCC4()
{
  result = qword_100783F80;
  if (!qword_100783F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F80);
  }

  return result;
}

unint64_t sub_10043BD1C()
{
  result = qword_100783F88;
  if (!qword_100783F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F88);
  }

  return result;
}

unint64_t sub_10043BD74()
{
  result = qword_100783F90;
  if (!qword_100783F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F90);
  }

  return result;
}

unint64_t sub_10043BDCC()
{
  result = qword_100783F98;
  if (!qword_100783F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783F98);
  }

  return result;
}

unint64_t sub_10043BE24()
{
  result = qword_100783FA0;
  if (!qword_100783FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FA0);
  }

  return result;
}

unint64_t sub_10043BE7C()
{
  result = qword_100783FA8;
  if (!qword_100783FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FA8);
  }

  return result;
}

unint64_t sub_10043BED4()
{
  result = qword_100783FB0;
  if (!qword_100783FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FB0);
  }

  return result;
}

unint64_t sub_10043BF2C()
{
  result = qword_100783FB8;
  if (!qword_100783FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FB8);
  }

  return result;
}

unint64_t sub_10043BF84()
{
  result = qword_100783FC0;
  if (!qword_100783FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FC0);
  }

  return result;
}

unint64_t sub_10043BFD8()
{
  result = qword_100783FD0;
  if (!qword_100783FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FD0);
  }

  return result;
}

unint64_t sub_10043C094()
{
  result = qword_100783FE0;
  if (!qword_100783FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100783FE0);
  }

  return result;
}

unint64_t sub_10043C0E8()
{
  result = qword_100784000;
  if (!qword_100784000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784000);
  }

  return result;
}

unint64_t sub_10043C13C()
{
  result = qword_100784008;
  if (!qword_100784008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784008);
  }

  return result;
}

unint64_t sub_10043C190()
{
  result = qword_100784018;
  if (!qword_100784018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784018);
  }

  return result;
}

unint64_t sub_10043C1E4()
{
  result = qword_100784020;
  if (!qword_100784020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784020);
  }

  return result;
}

uint64_t sub_10043C238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_10043C288()
{
  result = qword_100784030;
  if (!qword_100784030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784030);
  }

  return result;
}

unint64_t sub_10043C314()
{
  result = qword_100784040;
  if (!qword_100784040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784040);
  }

  return result;
}

unint64_t sub_10043C368()
{
  result = qword_100784058;
  if (!qword_100784058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784058);
  }

  return result;
}

unint64_t sub_10043C3BC()
{
  result = qword_100784070;
  if (!qword_100784070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784070);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HTTPArchive.Log.Entry.Timings.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for HTTPArchive.Log.Entry.Timings.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_10043C570(uint64_t a1, int a2)
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

uint64_t sub_10043C5B8(uint64_t result, int a2, int a3)
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

uint64_t sub_10043C624(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_10043C66C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for MarketplaceUpdateEntity.Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MarketplaceUpdateEntity.Property(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10043C83C()
{
  result = qword_100784080;
  if (!qword_100784080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784080);
  }

  return result;
}

unint64_t sub_10043C894()
{
  result = qword_100784088;
  if (!qword_100784088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784088);
  }

  return result;
}

unint64_t sub_10043C8EC()
{
  result = qword_100784090;
  if (!qword_100784090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784090);
  }

  return result;
}

unint64_t sub_10043C944()
{
  result = qword_100784098;
  if (!qword_100784098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784098);
  }

  return result;
}

unint64_t sub_10043C99C()
{
  result = qword_1007840A0;
  if (!qword_1007840A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840A0);
  }

  return result;
}

unint64_t sub_10043C9F4()
{
  result = qword_1007840A8;
  if (!qword_1007840A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840A8);
  }

  return result;
}

unint64_t sub_10043CA4C()
{
  result = qword_1007840B0;
  if (!qword_1007840B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840B0);
  }

  return result;
}

unint64_t sub_10043CAA4()
{
  result = qword_1007840B8;
  if (!qword_1007840B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840B8);
  }

  return result;
}

unint64_t sub_10043CAFC()
{
  result = qword_1007840C0;
  if (!qword_1007840C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840C0);
  }

  return result;
}

unint64_t sub_10043CB54()
{
  result = qword_1007840C8;
  if (!qword_1007840C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840C8);
  }

  return result;
}

unint64_t sub_10043CBAC()
{
  result = qword_1007840D0;
  if (!qword_1007840D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840D0);
  }

  return result;
}

unint64_t sub_10043CC04()
{
  result = qword_1007840D8;
  if (!qword_1007840D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840D8);
  }

  return result;
}

unint64_t sub_10043CC5C()
{
  result = qword_1007840E0;
  if (!qword_1007840E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840E0);
  }

  return result;
}

unint64_t sub_10043CCB4()
{
  result = qword_1007840E8;
  if (!qword_1007840E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840E8);
  }

  return result;
}

unint64_t sub_10043CD0C()
{
  result = qword_1007840F0;
  if (!qword_1007840F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840F0);
  }

  return result;
}

unint64_t sub_10043CD64()
{
  result = qword_1007840F8;
  if (!qword_1007840F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007840F8);
  }

  return result;
}

unint64_t sub_10043CDBC()
{
  result = qword_100784100;
  if (!qword_100784100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784100);
  }

  return result;
}

unint64_t sub_10043CE14()
{
  result = qword_100784108;
  if (!qword_100784108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784108);
  }

  return result;
}

unint64_t sub_10043CE68()
{
  result = qword_100784118;
  if (!qword_100784118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784118);
  }

  return result;
}

unint64_t sub_10043CEBC()
{
  result = qword_100784128;
  if (!qword_100784128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784128);
  }

  return result;
}

unint64_t sub_10043CF34()
{
  result = qword_100784140;
  if (!qword_100784140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784140);
  }

  return result;
}

unint64_t sub_10043CF8C()
{
  result = qword_100784148;
  if (!qword_100784148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784148);
  }

  return result;
}

unint64_t sub_10043CFE4()
{
  result = qword_100784150;
  if (!qword_100784150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784150);
  }

  return result;
}

unint64_t sub_10043D03C()
{
  result = qword_100784158;
  if (!qword_100784158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784158);
  }

  return result;
}

unint64_t sub_10043D094()
{
  result = qword_100784160;
  if (!qword_100784160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784160);
  }

  return result;
}

unint64_t sub_10043D0EC()
{
  result = qword_100784168;
  if (!qword_100784168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784168);
  }

  return result;
}

void sub_10043D15C(char a1)
{
  v3 = type metadata accessor for Logger();
  __chkstk_darwin(v3);
  if ((a1 & 1) == 0 || os_variant_has_internal_content() && (keyExistsAndHasValidFormat = 0, v4 = String._bridgeToObjectiveC()(), v5 = String._bridgeToObjectiveC()(), AppBooleanValue = CFPreferencesGetAppBooleanValue(v4, v5, &keyExistsAndHasValidFormat), v4, v5, keyExistsAndHasValidFormat) && AppBooleanValue)
  {
    [v1 set_atsContext:0];
  }

  else
  {
    v7 = v1;
    type metadata accessor for PropertyListEncoder();
    swift_allocObject();
    PropertyListEncoder.init()();
    keyExistsAndHasValidFormat = 0;
    sub_10043D474();
    v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
    v10 = v9;

    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100007158(v8, v10);
    [v7 set_atsContext:isa];
  }
}

unint64_t sub_10043D474()
{
  result = qword_100784170;
  if (!qword_100784170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784170);
  }

  return result;
}

Swift::Int sub_10043D4C8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10043D53C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10043D590@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10075A3D8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10043D620@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_10075A410, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10043D678(uint64_t a1)
{
  v2 = sub_10043D8D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10043D6B4(uint64_t a1)
{
  v2 = sub_10043D8D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10043D6F0(void *a1)
{
  v2 = sub_1001F0C48(&qword_100784178);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_100006D8C(a1, a1[3]);
  sub_10043D8D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t _s10ATSContextVwet(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_10043D8D8()
{
  result = qword_100784180;
  if (!qword_100784180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784180);
  }

  return result;
}

unint64_t sub_10043D940()
{
  result = qword_100784188;
  if (!qword_100784188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784188);
  }

  return result;
}

unint64_t sub_10043D998()
{
  result = qword_100784190;
  if (!qword_100784190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784190);
  }

  return result;
}

unint64_t sub_10043D9F0()
{
  result = qword_100784198;
  if (!qword_100784198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784198);
  }

  return result;
}

uint64_t sub_10043DA44()
{
  v1[144] = v0;
  v2 = type metadata accessor for Platform();
  v1[145] = v2;
  v1[146] = *(v2 - 8);
  v1[147] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v1[148] = swift_task_alloc();
  v3 = type metadata accessor for URL();
  v1[149] = v3;
  v1[150] = *(v3 - 8);
  v1[151] = swift_task_alloc();
  v1[152] = type metadata accessor for ManifestValidationTask();
  v1[153] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[154] = v4;
  v1[155] = *(v4 - 8);
  v1[156] = swift_task_alloc();
  v1[157] = swift_task_alloc();
  v1[158] = swift_task_alloc();

  return _swift_task_switch(sub_10043DC3C, 0, 0);
}

uint64_t sub_10043DC3C()
{
  v161 = v0;
  v1 = v0[153];
  v2 = v0[144];
  static Logger.general.getter();
  sub_100440080(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[158];
  v7 = v0[155];
  v8 = v0[154];
  v9 = v0[153];
  if (v5)
  {
    v156 = v0[158];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v160[0]._countAndFlagsBits = v11;
    *v10 = 136446210;
    v12 = URL.absoluteString.getter();
    v14 = v13;
    sub_1004400E4(v9);
    v15 = sub_1002346CC(v12, v14, &v160[0]._countAndFlagsBits);

    *(v10 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v3, v4, "Validating manifest from %{public}s...", v10, 0xCu);
    sub_10000710C(v11);

    v16 = *(v7 + 8);
    v16(v156, v8);
  }

  else
  {

    sub_1004400E4(v9);
    v16 = *(v7 + 8);
    v16(v6, v8);
  }

  v0[159] = v16;
  v17 = v0[144];
  v18 = *(v0[152] + 24);
  if ((URL.isFileURL.getter() & 1) == 0)
  {
    URL.scheme.getter();
    if (v19)
    {

      v20 = [objc_opt_self() ephemeralSessionConfiguration];
      v0[160] = [objc_opt_self() sessionWithConfiguration:v20];

      v21 = swift_task_alloc();
      v0[161] = v21;
      *v21 = v0;
      v21[1] = sub_10043ED40;
      v22 = v17 + v18;
      v23 = 0;

      return NSURLSession.data(from:delegate:)(v22, v23);
    }
  }

  if (URL.isFileURL.getter())
  {
    (*(v0[150] + 16))(v0[151], v17 + v18, v0[149]);
  }

  else
  {
    v24 = v0[150];
    v25 = v0[149];
    v26 = v0[148];
    v160[0]._countAndFlagsBits = 0x2F2F3A656C6966;
    v160[0]._object = 0xE700000000000000;
    v27 = URL.path(percentEncoded:)(0);
    String.append(_:)(v27);

    URL.init(string:)();

    v22 = (*(v24 + 48))(v26, 1, v25);
    if (v22 == 1)
    {
      goto LABEL_103;
    }

    (*(v0[150] + 32))(v0[151], v0[148], v0[149]);
  }

  v28 = Data.init(contentsOf:options:)();
  v30 = v29;
  (*(v0[150] + 8))(v0[151], v0[149]);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10033B044();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  v32 = *(v0 + 25);
  *(v0 + 11) = *(v0 + 24);
  *(v0 + 12) = v32;
  *(v0 + 13) = *(v0 + 26);
  v33 = *(v0 + 21);
  *(v0 + 7) = *(v0 + 20);
  *(v0 + 8) = v33;
  v34 = *(v0 + 23);
  *(v0 + 9) = *(v0 + 22);
  *(v0 + 10) = v34;
  v35 = *(v0 + 17);
  *(v0 + 3) = *(v0 + 16);
  *(v0 + 4) = v35;
  v36 = *(v0 + 19);
  *(v0 + 5) = *(v0 + 18);
  *(v0 + 6) = v36;
  v37 = *(v0 + 15);
  *(v0 + 1) = *(v0 + 14);
  *(v0 + 2) = v37;
  static Logger.general.getter();
  sub_100440140((v0 + 2), (v0 + 54));
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  sub_10044019C((v0 + 2));
  v40 = os_log_type_enabled(v38, v39);
  v41 = v0[159];
  v42 = v0[157];
  v43 = v0[154];
  if (v40)
  {
    v44 = swift_slowAlloc();
    v150 = v30;
    v45 = swift_slowAlloc();
    *v44 = 136446210;
    v155 = v42;
    v46 = v28;
    v157 = v41;
    v160[0]._countAndFlagsBits = v45;
    v48 = v0[5];
    v47 = v0[6];

    v49 = sub_1002346CC(v48, v47, &v160[0]._countAndFlagsBits);

    *(v44 + 4) = v49;
    v28 = v46;
    sub_10000710C(v45);
    v30 = v150;

    v157(v155, v43);
  }

  else
  {

    v41(v42, v43);
  }

  v50 = v0[147];
  v51 = v0[146];
  v158 = v0[145];
  swift_getObjectType();
  v160[0]._countAndFlagsBits = 0x4920656C646E7542;
  v160[0]._object = 0xEB00000000203A44;
  v52 = v0[5];
  v53 = v0[6];

  v54._countAndFlagsBits = v52;
  v54._object = v53;
  String.append(_:)(v54);

  XPCClientProtocol.logMessage(_:)(v160[0]);

  v55 = v0[20];
  static Platform.iOS.getter();
  Platform.description.getter();
  (*(v51 + 8))(v50, v158);
  v56 = String.lowercased()();

  if (!*(v55 + 16))
  {
    sub_10044019C((v0 + 2));

LABEL_40:
    v93 = "managedappdistribution_";
    v94 = 0xD000000000000030;
LABEL_41:
    v95 = v93 | 0x8000000000000000;
    XPCClientProtocol.logMessage(_:)(*&v94);
LABEL_42:
    sub_100007158(v28, v30);
    goto LABEL_43;
  }

  v57 = sub_10052213C(v56._countAndFlagsBits, v56._object);
  v59 = v58;

  if ((v59 & 1) == 0)
  {
    sub_10044019C((v0 + 2));
    goto LABEL_40;
  }

  v60 = v0[144];
  v61 = (*(v55 + 56) + 40 * v57);
  v63 = v61[3];
  v62 = v61[4];
  v64 = *(v60 + 64);
  v65 = v64 < *v61;
  if (v64 == *v61)
  {
    v66 = v61[1];
    v67 = *(v60 + 72);
    v65 = v67 < v66;
    if (v67 == v66)
    {
      if (*(v60 + 80) >= v61[2])
      {
        goto LABEL_25;
      }

LABEL_46:

      sub_10044019C((v0 + 2));
      v160[0]._countAndFlagsBits = 0;
      v160[0]._object = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v97._countAndFlagsBits = 0xD00000000000002BLL;
      v97._object = 0x80000001006CB670;
      String.append(_:)(v97);
      v98._countAndFlagsBits = v63;
      v98._object = v62;
      String.append(_:)(v98);

      v99._countAndFlagsBits = 0x6C6175746341202CLL;
      v99._object = 0xEA0000000000203ALL;
      String.append(_:)(v99);
      String.append(_:)(*(v60 + 88));
      v100._countAndFlagsBits = 41;
      v100._object = 0xE100000000000000;
      String.append(_:)(v100);
      XPCClientProtocol.logMessage(_:)(v160[0]);

      goto LABEL_42;
    }
  }

  if (v65)
  {
    goto LABEL_46;
  }

LABEL_25:
  v68 = *(v60 + 8);
  v69 = *(v60 + 40);
  *(v0 + 41) = *(v60 + 24);
  *(v0 + 42) = v69;
  *(v0 + 40) = v68;
  v70 = *(v60 + 56);
  v71 = *(v60 + 72);
  v72 = *(v60 + 88);
  *(v0 + 735) = *(v60 + 103);
  *(v0 + 44) = v71;
  *(v0 + 45) = v72;
  *(v0 + 43) = v70;
  sub_100337D34((v0 + 80), v0 + 65);
  v73 = v0[131];
  if (!v73)
  {
    sub_10044019C((v0 + 2));
    v93 = "current platform";
    v94 = 0xD000000000000019;
    goto LABEL_41;
  }

  v137 = v28;
  v151 = v30;
  v143 = *(v0 + 65);
  v0[122] = v143._countAndFlagsBits;
  v0[123] = v73;
  v74 = *(v0 + 67);
  *(v0 + 62) = *(v0 + 66);
  *(v0 + 63) = v74;
  *(v0 + 64) = *(v0 + 68);
  sub_10043FDD8((v0 + 2), (v0 + 122));
  sub_10044019C((v0 + 2));
  v75 = v0[124];
  v0[142] = v75;
  v76 = *(v60 + 8);
  v77 = *(v60 + 40);
  *(v0 + 48) = *(v60 + 24);
  *(v0 + 49) = v77;
  *(v0 + 47) = v76;
  v78 = *(v60 + 56);
  v79 = *(v60 + 72);
  v80 = *(v60 + 88);
  *(v0 + 847) = *(v60 + 103);
  *(v0 + 51) = v79;
  *(v0 + 52) = v80;
  *(v0 + 50) = v78;
  v146 = v75;
  v81 = *(v75 + 16);
  v138 = v0[94];
  v139 = v0[95];
  swift_bridgeObjectRetain_n();
  sub_1004401F0((v0 + 142), (v0 + 143));
  v159 = v0;
  v136 = (v0 + 94);
  sub_10020A7AC((v0 + 94), (v0 + 108));
  if (!v81)
  {
LABEL_47:

    v0 = v159;
    sub_1000032A8((v159 + 142), &qword_1007841A0);
    sub_10020A92C(v136);

    v160[0]._countAndFlagsBits = 0;
    v160[0]._object = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v101._countAndFlagsBits = 0xD00000000000004CLL;
    v101._object = 0x80000001006CB620;
    String.append(_:)(v101);

    String.append(_:)(v143);
    sub_1000032A8((v159 + 130), &qword_10077EC80);
    goto LABEL_100;
  }

  v82 = 0;
  v83 = v0 + 138;
  v141 = v0 + 140;
  v84 = (v146 + 80);
  while (1)
  {
    v85 = *(v84 - 6);
    v86 = *(v84 - 5);
    v154 = *(v84 - 4);
    v152 = *(v84 - 3);
    v148 = *(v84 - 1);
    v149 = *(v84 - 2);
    v87 = *v84;
    v88 = v159[96];
    v159[138] = v85;
    v159[139] = v86;
    v89 = swift_task_alloc();
    *(v89 + 16) = v83;

    v153 = v88;
    LOBYTE(v88) = sub_10020A1BC(sub_1001F7FFC, v89, v88);

    if (v88)
    {
      if (!v87)
      {
        break;
      }

      v90 = v159[101];
      v91 = v90 < v154;
      if (v90 != v154 || (v92 = v159[102], v91 = v92 < v152, v92 != v152))
      {
        if (!v91)
        {
          break;
        }

        goto LABEL_31;
      }

      if (v159[103] >= v149)
      {
        break;
      }
    }

LABEL_31:

    ++v82;
    v84 += 7;

    if (v81 == v82)
    {
      goto LABEL_47;
    }
  }

  if (v81 - 1 != v82)
  {
    v102 = v82 + 1;
    v103 = v146 + 80;
    v104 = v138;
    v105 = v139;
    v131 = v146 + 80;
    v132 = v81;
LABEL_50:
    v133 = v86;
    v134 = v87;
    v107 = v85 == v104 && v86 == v105;
    v135 = v107;
    v108 = (v103 + 56 * v102);
    for (i = v102; i < v81; v108 += 7)
    {
      v102 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_102;
      }

      v86 = *(v108 - 5);
      v144 = *(v108 - 3);
      v145 = *(v108 - 4);
      v142 = *(v108 - 2);
      v140 = *(v108 - 1);
      v87 = *v108;
      v147 = *(v108 - 6);
      v159[140] = v147;
      v159[141] = v86;
      v110 = swift_task_alloc();
      *(v110 + 16) = v141;

      v111 = sub_10020A1BC(sub_1001F80EC, v110, v153);

      if (v111)
      {
        if (!v87)
        {
          goto LABEL_65;
        }

        v112 = v159[101];
        v113 = v112 < v145;
        if (v112 == v145)
        {
          v114 = v159[102];
          v113 = v114 < v144;
          if (v114 == v144)
          {
            v113 = v159[103] < v142;
          }
        }

        if (!v113)
        {
LABEL_65:
          if (v147 == v138 && v86 == v139)
          {
            if (!v135 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v104 = v138;
              v147 = v138;
              goto LABEL_93;
            }
          }

          else
          {
            v115 = _stringCompareWithSmolCheck(_:_:expecting:)();
            v116 = v115;
            if (v135)
            {
              v81 = v132;
              if ((v115 & 1) == 0)
              {
                goto LABEL_85;
              }
            }

            else
            {
              v117 = _stringCompareWithSmolCheck(_:_:expecting:)();
              if (v116)
              {
                v81 = v132;
                if ((v117 & 1) == 0)
                {
                  v104 = v138;
LABEL_93:
                  v103 = v131;
                  v118 = v140;

                  v105 = v139;
                  goto LABEL_91;
                }
              }

              else
              {
                v81 = v132;
                if (v117)
                {
                  goto LABEL_85;
                }
              }
            }
          }

          if (!v87 || !v134)
          {
            goto LABEL_90;
          }

          if (v154 == v145)
          {
            if (v152 == v144)
            {
              if (v149 < v142)
              {
                v144 = v152;
                v145 = v154;
                goto LABEL_90;
              }
            }

            else if (v152 < v144)
            {
              v145 = v154;
LABEL_90:

              v104 = v138;
              v105 = v139;
              v103 = v131;
              v118 = v140;
LABEL_91:
              v148 = v118;
              v149 = v142;
              v152 = v144;
              v154 = v145;
              v85 = v147;
              if (v102 != v81)
              {
                goto LABEL_50;
              }

              goto LABEL_96;
            }
          }

          else if (v154 < v145)
          {
            goto LABEL_90;
          }
        }
      }

LABEL_85:

      if (v102 == v81)
      {
        v147 = v85;
        v86 = v133;
        v87 = v134;
        goto LABEL_95;
      }

      ++i;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    return NSURLSession.data(from:delegate:)(v22, v23);
  }

  v147 = v85;
LABEL_95:
  v118 = v148;
LABEL_96:

  sub_1000032A8((v159 + 142), &qword_1007841A0);
  sub_10020A92C(v136);

  if (v87)
  {
    v160[0]._countAndFlagsBits = 14897;
    v160[0]._object = 0xE200000000000000;
    v119._countAndFlagsBits = v147;
    v119._object = v86;
    String.append(_:)(v119);
    v120._countAndFlagsBits = 47;
    v120._object = 0xE100000000000000;
    String.append(_:)(v120);
    v121 = v118;
    v122 = v87;
  }

  else
  {
    v160[0]._countAndFlagsBits = 14896;
    v160[0]._object = 0xE200000000000000;
    v121 = v147;
    v122 = v86;
  }

  String.append(_:)(*&v121);

  countAndFlagsBits = v160[0]._countAndFlagsBits;
  object = v160[0]._object;
  v160[0]._countAndFlagsBits = 0;
  v160[0]._object = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v160[0]._countAndFlagsBits = 0xD000000000000012;
  v160[0]._object = 0x80000001006CB600;
  v125._countAndFlagsBits = countAndFlagsBits;
  v125._object = object;
  String.append(_:)(v125);

  v126._countAndFlagsBits = 10272;
  v126._object = 0xE200000000000000;
  String.append(_:)(v126);
  v0 = v159;
  v127 = v159[122];
  v128 = v159[123];

  v129._countAndFlagsBits = v127;
  v129._object = v128;
  String.append(_:)(v129);
  sub_1000032A8((v159 + 130), &qword_10077EC80);
LABEL_100:

  v130._countAndFlagsBits = 41;
  v130._object = 0xE100000000000000;
  String.append(_:)(v130);
  XPCClientProtocol.logMessage(_:)(v160[0]);
  sub_100007158(v137, v151);

LABEL_43:

  v96 = v0[1];

  return v96();
}

uint64_t sub_10043ED40(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = *v4;
  *(*v4 + 1296) = v3;

  if (v3)
  {
    v9 = sub_10043FBE8;
  }

  else
  {

    *(v8 + 1304) = a2;
    *(v8 + 1312) = a1;
    v9 = sub_10043EE80;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10043EE80()
{
  v136 = v0;

  v1 = *(v0 + 1312);
  v2 = *(v0 + 1304);
  v3 = *(v0 + 1296);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10033B044();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v3)
  {
    sub_100007158(v1, v2);

    static Logger.general.getter();
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *v6 = 138543362;
      swift_errorRetain();
      v8 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 4) = v8;
      *v7 = v8;
      _os_log_impl(&_mh_execute_header, v4, v5, "Error fetching valid manifest: %{public}@", v6, 0xCu);
      sub_1000032A8(v7, &qword_10077F920);
    }

    v9 = v4;
    v10 = *(v0 + 1272);
    v11 = *(v0 + 1248);
    v12 = *(v0 + 1232);

    v10(v11, v12);
    swift_willThrow();

    v13 = *(v0 + 8);
    goto LABEL_32;
  }

  v14 = *(v0 + 400);
  *(v0 + 176) = *(v0 + 384);
  *(v0 + 192) = v14;
  *(v0 + 208) = *(v0 + 416);
  v15 = *(v0 + 336);
  *(v0 + 112) = *(v0 + 320);
  *(v0 + 128) = v15;
  v16 = *(v0 + 368);
  *(v0 + 144) = *(v0 + 352);
  *(v0 + 160) = v16;
  v17 = *(v0 + 272);
  *(v0 + 48) = *(v0 + 256);
  *(v0 + 64) = v17;
  v18 = *(v0 + 304);
  *(v0 + 80) = *(v0 + 288);
  *(v0 + 96) = v18;
  v19 = *(v0 + 240);
  *(v0 + 16) = *(v0 + 224);
  *(v0 + 32) = v19;
  static Logger.general.getter();
  sub_100440140(v0 + 16, v0 + 432);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  sub_10044019C(v0 + 16);
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v0 + 1272);
  v24 = *(v0 + 1256);
  v25 = *(v0 + 1232);
  v132 = v1;
  if (v22)
  {
    v133 = *(v0 + 1256);
    v26 = swift_slowAlloc();
    v127 = v2;
    v27 = swift_slowAlloc();
    v135._countAndFlagsBits = v27;
    *v26 = 136446210;
    v29 = *(v0 + 40);
    v28 = *(v0 + 48);

    v30 = sub_1002346CC(v29, v28, &v135._countAndFlagsBits);

    *(v26 + 4) = v30;
    sub_10000710C(v27);
    v2 = v127;

    v31 = v133;
  }

  else
  {

    v31 = v24;
  }

  v23(v31, v25);
  v32 = *(v0 + 1176);
  v33 = *(v0 + 1168);
  v34 = *(v0 + 1160);
  swift_getObjectType();
  v135._countAndFlagsBits = 0x4920656C646E7542;
  v135._object = 0xEB00000000203A44;
  v35 = *(v0 + 40);
  v36 = *(v0 + 48);

  v37._countAndFlagsBits = v35;
  v37._object = v36;
  String.append(_:)(v37);

  XPCClientProtocol.logMessage(_:)(v135);

  v38 = *(v0 + 160);
  static Platform.iOS.getter();
  Platform.description.getter();
  (*(v33 + 8))(v32, v34);
  v39 = String.lowercased()();

  if (!*(v38 + 16))
  {
    sub_10044019C(v0 + 16);

LABEL_28:
    v75 = "managedappdistribution_";
    v76 = 0xD000000000000030;
LABEL_29:
    v77 = v75 | 0x8000000000000000;
    XPCClientProtocol.logMessage(_:)(*&v76);
LABEL_30:
    sub_100007158(v132, v2);
    goto LABEL_31;
  }

  v40 = sub_10052213C(v39._countAndFlagsBits, v39._object);
  v42 = v41;

  if ((v42 & 1) == 0)
  {
    sub_10044019C(v0 + 16);
    goto LABEL_28;
  }

  v43 = *(v0 + 1152);
  v44 = (*(v38 + 56) + 40 * v40);
  v46 = v44[3];
  v45 = v44[4];
  v47 = *(v43 + 64);
  v48 = v47 < *v44;
  if (v47 == *v44)
  {
    v49 = v44[1];
    v50 = *(v43 + 72);
    v48 = v50 < v49;
    if (v50 == v49)
    {
      if (*(v43 + 80) >= v44[2])
      {
        goto LABEL_13;
      }

LABEL_37:

      sub_10044019C(v0 + 16);
      v135._countAndFlagsBits = 0;
      v135._object = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v79._countAndFlagsBits = 0xD00000000000002BLL;
      v79._object = 0x80000001006CB670;
      String.append(_:)(v79);
      v80._countAndFlagsBits = v46;
      v80._object = v45;
      String.append(_:)(v80);

      v81._countAndFlagsBits = 0x6C6175746341202CLL;
      v81._object = 0xEA0000000000203ALL;
      String.append(_:)(v81);
      String.append(_:)(*(v43 + 88));
      v82._countAndFlagsBits = 41;
      v82._object = 0xE100000000000000;
      String.append(_:)(v82);
      XPCClientProtocol.logMessage(_:)(v135);

      goto LABEL_30;
    }
  }

  if (v48)
  {
    goto LABEL_37;
  }

LABEL_13:
  v51 = *(v43 + 8);
  v52 = *(v43 + 40);
  *(v0 + 656) = *(v43 + 24);
  *(v0 + 672) = v52;
  *(v0 + 640) = v51;
  v53 = *(v43 + 56);
  v54 = *(v43 + 72);
  v55 = *(v43 + 88);
  *(v0 + 735) = *(v43 + 103);
  *(v0 + 704) = v54;
  *(v0 + 720) = v55;
  *(v0 + 688) = v53;
  sub_100337D34(v0 + 640, (v0 + 1040));
  v56 = *(v0 + 1048);
  if (!v56)
  {
    sub_10044019C(v0 + 16);
    v75 = "current platform";
    v76 = 0xD000000000000019;
    goto LABEL_29;
  }

  v128 = v2;
  v120 = *(v0 + 1040);
  *(v0 + 976) = v120._countAndFlagsBits;
  *(v0 + 984) = v56;
  v57 = *(v0 + 1072);
  *(v0 + 992) = *(v0 + 1056);
  *(v0 + 1008) = v57;
  *(v0 + 1024) = *(v0 + 1088);
  sub_10043FDD8(v0 + 16, v0 + 976);
  sub_10044019C(v0 + 16);
  v58 = *(v0 + 992);
  *(v0 + 1136) = v58;
  v59 = *(v43 + 8);
  v60 = *(v43 + 40);
  *(v0 + 768) = *(v43 + 24);
  *(v0 + 784) = v60;
  *(v0 + 752) = v59;
  v61 = *(v43 + 56);
  v62 = *(v43 + 72);
  v63 = *(v43 + 88);
  *(v0 + 847) = *(v43 + 103);
  *(v0 + 816) = v62;
  *(v0 + 832) = v63;
  *(v0 + 800) = v61;
  v123 = v58;
  v64 = *(v58 + 16);
  v116 = *(v0 + 752);
  v117 = *(v0 + 760);
  swift_bridgeObjectRetain_n();
  sub_1004401F0(v0 + 1136, v0 + 1144);
  v115 = v0 + 752;
  sub_10020A7AC(v0 + 752, v0 + 864);
  v134 = v64;
  if (!v64)
  {
LABEL_38:

    sub_1000032A8(v0 + 1136, &qword_1007841A0);
    sub_10020A92C(v115);

    v135._countAndFlagsBits = 0;
    v135._object = 0xE000000000000000;
    _StringGuts.grow(_:)(79);
    v83._countAndFlagsBits = 0xD00000000000004CLL;
    v83._object = 0x80000001006CB620;
    String.append(_:)(v83);

    String.append(_:)(v120);
    sub_1000032A8(v0 + 1040, &qword_10077EC80);
    goto LABEL_91;
  }

  v65 = 0;
  v66 = (v123 + 80);
  while (1)
  {
    v67 = *(v66 - 6);
    v68 = *(v66 - 5);
    v131 = *(v66 - 4);
    v129 = *(v66 - 3);
    v125 = *(v66 - 1);
    v126 = *(v66 - 2);
    v69 = *v66;
    v70 = *(v0 + 768);
    *(v0 + 1104) = v67;
    *(v0 + 1112) = v68;
    v71 = swift_task_alloc();
    *(v71 + 16) = v0 + 1104;

    v130 = v70;
    LOBYTE(v70) = sub_10020A1BC(sub_1001F7FFC, v71, v70);

    if (v70)
    {
      if (!v69)
      {
        break;
      }

      v72 = *(v0 + 808);
      v73 = v72 < v131;
      if (v72 != v131 || (v74 = *(v0 + 816), v73 = v74 < v129, v74 != v129))
      {
        if (!v73)
        {
          break;
        }

        goto LABEL_19;
      }

      if (*(v0 + 824) >= v126)
      {
        break;
      }
    }

LABEL_19:

    ++v65;
    v66 += 7;

    if (v64 == v65)
    {
      goto LABEL_38;
    }
  }

  if (v64 - 1 == v65)
  {
    v124 = v67;
LABEL_86:
    v98 = v125;
    goto LABEL_87;
  }

  v84 = v65 + 1;
  v85 = v123 + 80;
  v86 = v116;
  result = v117;
  v111 = v123 + 80;
  while (2)
  {
    v112 = v68;
    v113 = v69;
    v88 = v67 == v86 && v68 == result;
    v114 = v88;
    v89 = (v85 + 56 * v84);
    while (2)
    {
      if (v84 >= v134)
      {
        __break(1u);
LABEL_93:
        __break(1u);
        return result;
      }

      if (__OFADD__(v84, 1))
      {
        goto LABEL_93;
      }

      v68 = *(v89 - 5);
      v121 = *(v89 - 3);
      v122 = *(v89 - 4);
      v119 = *(v89 - 2);
      v118 = *(v89 - 1);
      v69 = *v89;
      v124 = *(v89 - 6);
      *(v0 + 1120) = v124;
      *(v0 + 1128) = v68;
      v90 = swift_task_alloc();
      *(v90 + 16) = v0 + 1120;

      v91 = sub_10020A1BC(sub_1001F80EC, v90, v130);

      if ((v91 & 1) == 0)
      {
        goto LABEL_77;
      }

      if (v69)
      {
        v92 = *(v0 + 808);
        v93 = v92 < v122;
        if (v92 == v122)
        {
          v94 = *(v0 + 816);
          v93 = v94 < v121;
          if (v94 == v121)
          {
            v93 = *(v0 + 824) < v119;
          }
        }

        if (v93)
        {
          goto LABEL_77;
        }
      }

      if (v124 != v116 || v68 != v117)
      {
        v95 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v96 = v95;
        if (v114)
        {
          if ((v95 & 1) == 0)
          {
            goto LABEL_77;
          }
        }

        else
        {
          v97 = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (v96)
          {
            if ((v97 & 1) == 0)
            {
              v86 = v116;
              goto LABEL_84;
            }
          }

          else if (v97)
          {
            goto LABEL_77;
          }
        }

        goto LABEL_68;
      }

      if (v114 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
LABEL_68:
        if (!v69 || !v113)
        {
          goto LABEL_81;
        }

        if (v131 == v122)
        {
          if (v129 == v121)
          {
            if (v126 < v119)
            {
              v121 = v129;
              v122 = v131;
LABEL_81:

              v86 = v116;
              v85 = v111;
              ++v84;
              goto LABEL_82;
            }
          }

          else if (v129 < v121)
          {
            v122 = v131;
            goto LABEL_81;
          }
        }

        else if (v131 < v122)
        {
          goto LABEL_81;
        }

LABEL_77:

        if (v84 + 1 == v134)
        {
          v124 = v67;
          v68 = v112;
          v69 = v113;
          goto LABEL_86;
        }

        ++v84;
        v89 += 7;
        continue;
      }

      break;
    }

    v86 = v116;
    v124 = v116;
LABEL_84:
    v85 = v111;
    ++v84;

LABEL_82:
    result = v117;
    v98 = v118;
    v125 = v118;
    v126 = v119;
    v129 = v121;
    v67 = v124;
    v131 = v122;
    if (v84 != v134)
    {
      continue;
    }

    break;
  }

LABEL_87:

  sub_1000032A8(v0 + 1136, &qword_1007841A0);
  sub_10020A92C(v115);

  if (v69)
  {
    v135._countAndFlagsBits = 14897;
    v135._object = 0xE200000000000000;
    v99._countAndFlagsBits = v124;
    v99._object = v68;
    String.append(_:)(v99);
    v100._countAndFlagsBits = 47;
    v100._object = 0xE100000000000000;
    String.append(_:)(v100);
    v101 = v98;
    v102 = v69;
  }

  else
  {
    v135._countAndFlagsBits = 14896;
    v135._object = 0xE200000000000000;
    v101 = v124;
    v102 = v68;
  }

  String.append(_:)(*&v101);

  countAndFlagsBits = v135._countAndFlagsBits;
  object = v135._object;
  v135._countAndFlagsBits = 0;
  v135._object = 0xE000000000000000;
  _StringGuts.grow(_:)(25);

  v135._countAndFlagsBits = 0xD000000000000012;
  v135._object = 0x80000001006CB600;
  v105._countAndFlagsBits = countAndFlagsBits;
  v105._object = object;
  String.append(_:)(v105);

  v106._countAndFlagsBits = 10272;
  v106._object = 0xE200000000000000;
  String.append(_:)(v106);
  v107 = *(v0 + 976);
  v108 = *(v0 + 984);

  v109._countAndFlagsBits = v107;
  v109._object = v108;
  String.append(_:)(v109);
  sub_1000032A8(v0 + 1040, &qword_10077EC80);
LABEL_91:

  v110._countAndFlagsBits = 41;
  v110._object = 0xE100000000000000;
  String.append(_:)(v110);
  XPCClientProtocol.logMessage(_:)(v135);
  sub_100007158(v132, v128);

LABEL_31:

  v13 = *(v0 + 8);
LABEL_32:

  return v13();
}

uint64_t sub_10043FBE8()
{
  static Logger.general.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Error fetching valid manifest: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v1;
  v7 = *(v0 + 1272);
  v8 = *(v0 + 1248);
  v9 = *(v0 + 1232);

  v7(v8, v9);
  swift_willThrow();

  v10 = *(v0 + 8);

  return v10();
}

void sub_10043FDD8(uint64_t a1, uint64_t a2)
{
  if (sub_1005F5734())
  {
    swift_getObjectType();
    v4._countAndFlagsBits = 0xD00000000000001ELL;
    v4._object = 0x80000001006CB6F0;
    XPCClientProtocol.logMessage(_:)(v4);
  }

  else if (sub_1004FED84(*(a1 + 152))[2])
  {
    swift_getObjectType();
    _StringGuts.grow(_:)(27);

    v5 = Array.description.getter();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 0xD000000000000019;
    v9._object = 0x80000001006CB6A0;
    XPCClientProtocol.logMessage(_:)(v9);
  }

  else
  {

    v10 = sub_1004FF1E8();
    if ((v10 & 0x8000000000000000) != 0 || v10 < *(a2 + 40))
    {
      swift_getObjectType();
      _StringGuts.grow(_:)(52);
      v11._countAndFlagsBits = 0xD000000000000023;
      v11._object = 0x80000001006CB6C0;
      String.append(_:)(v11);
      v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 0x616C69617661202CLL;
      v13._object = 0xED0000203A656C62;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 0;
      v15._object = 0xE000000000000000;
      XPCClientProtocol.logMessage(_:)(v15);
    }
  }
}

uint64_t type metadata accessor for ManifestValidationTask()
{
  result = qword_100784200;
  if (!qword_100784200)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100440080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ManifestValidationTask();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1004400E4(uint64_t a1)
{
  v2 = type metadata accessor for ManifestValidationTask();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004401F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_1007841A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100440288()
{
  result = sub_1000063A8();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100440314(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v61 = _swiftEmptyArrayStorage;
  sub_100526960(0, v1, 0);
  v2 = _swiftEmptyArrayStorage;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v7 = *(v3 + 36);
    v33 = v3 + 72;
    v34 = v1;
    v8 = 1;
    v35 = v7;
    v36 = v3 + 64;
    v37 = v3;
    while (1)
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v7 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v62 = 1 << v6;
      v38 = v8;
      v10 = *(v3 + 56) + 104 * v6;
      v12 = *(v10 + 16);
      v11 = *(v10 + 32);
      v42 = *v10;
      v43 = v12;
      v44 = v11;
      v14 = *(v10 + 64);
      v13 = *(v10 + 80);
      v15 = *(v10 + 48);
      v47 = *(v10 + 96);
      *v46 = v14;
      *&v46[16] = v13;
      v45 = v15;
      v16 = *(v10 + 48);
      v41 = *(v10 + 64);
      v40 = v16;
      v48 = v42;
      v49 = v43;
      v50 = v44;
      v51 = v16;
      *v52 = v41;
      *&v52[8] = *&v46[8];
      *&v52[24] = *&v46[24];
      v53 = v47;

      sub_10046DA84(&v42, &v39);
      sub_10046DA84(&v48, &v39);

      v58 = *v52;
      v59 = *&v52[16];
      v60 = v53;
      v54 = v48;
      v55 = v49;
      v56 = v50;
      v57 = v51;
      v61 = v2;
      v18 = v2[2];
      v17 = v2[3];
      if (v18 >= v17 >> 1)
      {
        result = sub_100526960((v17 > 1), v18 + 1, 1);
        v2 = v61;
      }

      v2[2] = v18 + 1;
      v19 = &v2[13 * v18];
      v20 = v54;
      v21 = v56;
      *(v19 + 3) = v55;
      *(v19 + 4) = v21;
      *(v19 + 2) = v20;
      v22 = v57;
      v23 = v58;
      v24 = v59;
      *(v19 + 128) = v60;
      *(v19 + 6) = v23;
      *(v19 + 7) = v24;
      *(v19 + 5) = v22;
      v3 = v37;
      v25 = 1 << *(v37 + 32);
      if (v6 >= v25)
      {
        goto LABEL_27;
      }

      v4 = v36;
      v26 = *(v36 + 8 * v9);
      if ((v26 & v62) == 0)
      {
        goto LABEL_28;
      }

      v7 = v35;
      if (v35 != *(v37 + 36))
      {
        goto LABEL_29;
      }

      v27 = v26 & (-2 << (v6 & 0x3F));
      if (v27)
      {
        v6 = __clz(__rbit64(v27)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v9 << 6;
        v29 = v9 + 1;
        v30 = (v33 + 8 * v9);
        while (v29 < (v25 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_100323C00(v6, v35, 0);
            v6 = __clz(__rbit64(v31)) + v28;
            goto LABEL_19;
          }
        }

        result = sub_100323C00(v6, v35, 0);
        v6 = v25;
      }

LABEL_19:
      if (v38 == v34)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        v8 = v38 + 1;
        if (v6 < 1 << *(v37 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1004406C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v25[0] = a7;
  v9 = v7;
  v13 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v13 - 8);
  v15 = v25 - v14;
  sub_100005934(a1, v25 - v14, &unk_100780380);
  v16 = type metadata accessor for TaskPriority();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000032A8(v15, &unk_100780380);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v18 = dispatch thunk of Actor.unownedExecutor.getter();
      v20 = v19;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v17 + 8))(v15, v16);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
  v20 = 0;
LABEL_6:
  v21 = *v9;
  v22 = swift_allocObject();
  *(v22 + 16) = a2;
  *(v22 + 24) = a3;
  sub_1001F0C48(a5);
  v23 = (v20 | v18);
  if (v20 | v18)
  {
    v26[0] = 0;
    v26[1] = 0;
    v23 = v26;
    v26[2] = v18;
    v26[3] = v20;
  }

  v25[1] = 1;
  v25[2] = v23;
  v25[3] = v21;
  swift_task_create();
}

unint64_t sub_1004408E8(unint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    sub_1001F0C48(&unk_100784480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10069E680;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = inited + 32;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v8;
    *(inited + 48) = a1;
    *(inited + 56) = a2;
    sub_10047536C(a1, a2, 0);
    goto LABEL_14;
  }

  if (a3 != 1)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        sub_1001F0C48(&unk_100784480);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10069E680;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = inited + 32;
        v10 = 0x80000001006CB850;
        *(inited + 72) = &type metadata for String;
        v11 = 0xD000000000000013;
        goto LABEL_13;
      }

      sub_1001F0C48(&unk_100784480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = inited + 32;
      v12 = "Has active restore";
    }

    else
    {
      if (!(a1 | a2))
      {
        sub_1001F0C48(&unk_100784480);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10069E680;
        *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v6 = inited + 32;
        v10 = 0x80000001006CB8B0;
        *(inited + 72) = &type metadata for String;
        v11 = 0xD000000000000019;
LABEL_13:
        *(inited + 40) = v9;
        *(inited + 48) = v11;
        *(inited + 56) = v10;
        goto LABEL_14;
      }

      sub_1001F0C48(&unk_100784480);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10069E680;
      *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v6 = inited + 32;
      v12 = "Has active install";
    }

    v10 = (v12 - 32) | 0x8000000000000000;
    *(inited + 72) = &type metadata for String;
    v11 = 0xD000000000000012;
    goto LABEL_13;
  }

  sub_1001F0C48(&unk_100784480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = inited + 32;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = v7;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  sub_10047536C(a1, a2, 1u);
LABEL_14:
  v13 = sub_100528684(inited);
  swift_setDeallocating();
  sub_1000032A8(v6, &unk_10077F9B0);
  return v13;
}

unint64_t sub_100440BE0(unint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v3 = a1;
  if (a3 >= 2u)
  {
    if (a1 ^ 2 | a2)
    {
      v4 = 0xD000000000000013;
    }

    else
    {
      v4 = 0xD000000000000012;
    }

    v5 = 0xD000000000000019;
    if (a1 | a2)
    {
      v5 = 0xD000000000000012;
    }

    if (a1 <= 1)
    {
      v3 = v5;
    }

    else
    {
      v3 = v4;
    }
  }

  sub_10047536C(a1, a2, a3);
  return v3;
}

uint64_t sub_100440CB4(uint64_t a1)
{
  v2 = sub_100475318();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_100440CF0(uint64_t a1)
{
  v2 = sub_100475318();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100440D2C()
{
  if (!*(v0 + 16))
  {
    return 700;
  }

  if (*(v0 + 16) == 1)
  {
    return 799;
  }

  return qword_1006AC610[*v0];
}

uint64_t sub_100440D78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *(type metadata accessor for Restore() - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  sub_1001F0C48(&qword_100784408);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  sub_1001F0C48(&qword_100784410);
  v3[13] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v5 = sub_1001F0C48(&qword_100784418);
  v3[17] = v5;
  v3[18] = *(v5 - 8);
  v3[19] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v3[20] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  sub_1001F0C48(&qword_100784300);
  v3[24] = swift_task_alloc();

  return _swift_task_switch(sub_10044107C, 0, 0);
}

uint64_t sub_10044107C()
{
  v1 = *(*(v0 + 56) + 16);
  *(v0 + 200) = v1;

  return _swift_task_switch(sub_100441110, v1, 0);
}

uint64_t sub_100441110()
{
  v1 = v0[24];
  v3 = v0[22];
  v2 = v0[23];
  v4 = v0[21];
  sub_100005934(v0[25] + *(*v0[25] + 104), v1, &qword_100784300);
  (*(v3 + 32))(v2, v1, v4);
  v5 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v6);
  v8 = v7;
  type metadata accessor for URLResourceKey(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v0[2] = 0;
  v10 = [v5 contentsOfDirectoryAtURL:v8 includingPropertiesForKeys:isa options:0 error:v0 + 2];

  v11 = v0[2];
  v13 = v0[22];
  v12 = v0[23];
  v14 = v0[21];
  if (v10)
  {
    v0[26] = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v11;

    (*(v13 + 8))(v12, v14);
    v16 = sub_10044131C;
  }

  else
  {
    v17 = v11;
    v0[27] = _convertNSErrorToError(_:)();

    swift_willThrow();
    (*(v13 + 8))(v12, v14);
    v16 = sub_100441500;
  }

  return _swift_task_switch(v16, 0, 0);
}

uint64_t sub_10044131C()
{
  v1 = v0[26];
  v2 = v0[20];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;
  sub_1004406C8(v2, &unk_1006AC378, v4, &unk_100765988, &qword_100784318, &unk_1006AC240, &unk_1006AC398);
  sub_1000032A8(v2, &unk_100780380);
  sub_1001F0C48(&qword_100784318);
  TaskGroup.makeAsyncIterator()();
  v0[29] = _swiftEmptyDictionarySingleton;
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_100441738;
  v6 = v0[17];

  return TaskGroup.Iterator.next(isolation:)(v0 + 3, 0, 0, v6);
}

uint64_t sub_100441500()
{
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to lookup active restores: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);

  (*(v7 + 8))(v6, v8);
  v9 = sub_10052A65C(_swiftEmptyArrayStorage);

  **(v0 + 40) = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100441738()
{

  return _swift_task_switch(sub_100441860, 0, 0);
}

uint64_t sub_100441860()
{
  v1 = *(v0 + 24);
  if (v1 == 1)
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
    **(v0 + 40) = *(v0 + 232);

    v51 = *(v0 + 8);

    return v51();
  }

  else
  {
    if (v1)
    {
      v2 = *(v0 + 232);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 32) = v2;
      v56 = v1 + 64;
      v4 = -1;
      v5 = -1 << *(v1 + 32);
      if (-v5 < 64)
      {
        v4 = ~(-1 << -v5);
      }

      v6 = v4 & *(v1 + 64);
      v55 = (63 - v5) >> 6;
      v7 = *(v0 + 232);
      v57 = v1;

      for (i = 0; ; i = v58)
      {
        v59 = isUniquelyReferenced_nonNull_native;
        if (!v6)
        {
          if (v55 <= i + 1)
          {
            v10 = i + 1;
          }

          else
          {
            v10 = v55;
          }

          while (1)
          {
            v9 = i + 1;
            if (__OFADD__(i, 1))
            {
              break;
            }

            if (v9 >= v55)
            {
              v58 = v10 - 1;
              v49 = *(v0 + 96);
              v50 = sub_1001F0C48(&qword_100784420);
              (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
              v6 = 0;
              goto LABEL_17;
            }

            v6 = *(v56 + 8 * v9);
            ++i;
            if (v6)
            {
              goto LABEL_16;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          __break(1u);
        }

        v9 = i;
LABEL_16:
        v11 = *(v0 + 96);
        v12 = *(v0 + 80);
        v13 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v14 = v13 | (v9 << 6);
        v15 = (*(v57 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        sub_100007CE8(*(v57 + 56) + *(*(v0 + 64) + 72) * v14, v12, type metadata accessor for Restore);
        v18 = sub_1001F0C48(&qword_100784420);
        v19 = *(v18 + 48);
        *v11 = v16;
        v11[1] = v17;
        sub_1004640D8(v12, v11 + v19);
        (*(*(v18 - 8) + 56))(v11, 0, 1, v18);

        v58 = v9;
LABEL_17:
        v20 = *(v0 + 88);
        sub_10020A668(*(v0 + 96), v20, &qword_100784408);
        v21 = sub_1001F0C48(&qword_100784420);
        v22 = (*(*(v21 - 8) + 48))(v20, 1, v21);
        v23 = *(v0 + 104);
        if (v22 == 1)
        {
          v24 = sub_1001F0C48(&qword_100784428);
          (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
        }

        else
        {
          v25 = *(v0 + 88);
          v26 = *(v21 + 48);
          v27 = sub_1001F0C48(&qword_100784428);
          v28 = *v25;
          v29 = v25[1];
          sub_100007CE8(v25 + v26, v23 + *(v27 + 48), type metadata accessor for Restore);
          *v23 = v28;
          v23[1] = v29;

          sub_1000032A8(v25, &qword_100784420);
          (*(*(v27 - 8) + 56))(v23, 0, 1, v27);
        }

        v30 = *(v0 + 104);
        v31 = sub_1001F0C48(&qword_100784428);
        if ((*(*(v31 - 8) + 48))(v30, 1, v31) == 1)
        {

          sub_1001D6E24(v57);
          *(v0 + 232) = v7;
          break;
        }

        v32 = *(v31 + 48);
        v34 = *v30;
        v33 = v30[1];
        sub_1004640D8(v30 + v32, *(v0 + 72));
        v36 = sub_10052213C(v34, v33);
        v37 = v7[2];
        v38 = (v35 & 1) == 0;
        v39 = v37 + v38;
        if (__OFADD__(v37, v38))
        {
          goto LABEL_42;
        }

        v40 = v35;
        if (v7[3] >= v39)
        {
          if ((v59 & 1) == 0)
          {
            sub_1005C5F0C();
          }
        }

        else
        {
          sub_1005BD5A4(v39, v59 & 1);
          v41 = sub_10052213C(v34, v33);
          if ((v40 & 1) != (v42 & 1))
          {

            return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          }

          v36 = v41;
        }

        v7 = *(v0 + 32);
        v43 = *(v0 + 64);
        v44 = *(v0 + 72);
        if (v40)
        {

          sub_10047408C(v44, v7[7] + *(v43 + 72) * v36);
        }

        else
        {
          v7[(v36 >> 6) + 8] |= 1 << v36;
          v45 = (v7[6] + 16 * v36);
          *v45 = v34;
          v45[1] = v33;
          sub_1004640D8(v44, v7[7] + *(v43 + 72) * v36);
          v46 = v7[2];
          v47 = __OFADD__(v46, 1);
          v48 = v46 + 1;
          if (v47)
          {
            goto LABEL_43;
          }

          v7[2] = v48;
        }

        isUniquelyReferenced_nonNull_native = 1;
      }
    }

    v53 = swift_task_alloc();
    *(v0 + 224) = v53;
    *v53 = v0;
    v53[1] = sub_100441738;
    v54 = *(v0 + 136);

    return TaskGroup.Iterator.next(isolation:)(v0 + 24, 0, 0, v54);
  }
}

uint64_t sub_100441F78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v5 = type metadata accessor for Restore();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  sub_1001F0C48(&qword_1007842F8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();

  return _swift_task_switch(sub_1004420E4, 0, 0);
}

uint64_t sub_1004420E4()
{
  v0[14] = *(v0[4] + 16);
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = _swiftEmptyDictionarySingleton;
  return _swift_task_switch(sub_100442118, 0, 0);
}

uint64_t sub_100442118(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[16];
  v5 = v3[14];
  if (v4 >= v5)
  {
    v13 = *(v3[6] + 56);
    v13(v3[13], 1, 1, v3[5]);
    v19 = v3[15];
    v18 = v3[16];
    goto LABEL_11;
  }

  if (v4 >= v5)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    return _swift_task_switch(a1, a2, a3);
  }

  v6 = *(v3[9] + 80);
  v7 = v3[4] + ((v6 + 32) & ~v6);
  v8 = v3[15];
  while (1)
  {
    (*(v3[9] + 16))(v3[10], v7 + *(v3[9] + 72) * v4, v3[8]);
    v14 = Data.init(contentsOf:options:)();
    if (!v8)
    {
      break;
    }

    v9 = v3[14];
    v10 = v3[12];
    v11 = v3[5];
    v12 = v3[6];
    (*(v3[9] + 8))(v3[10], v3[8]);
    v13 = *(v12 + 56);
    v13(v10, 1, 1, v11);
    sub_1000032A8(v10, &qword_1007842F8);
    v8 = 0;
    if (++v4 == v9)
    {
      v13(v3[13], 1, 1, v3[5]);
      v19 = 0;
      v18 = v3[14];
      goto LABEL_11;
    }
  }

  v16 = v14;
  v17 = v15;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100006EA4(&qword_100784308, type metadata accessor for Restore);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v20 = v3[12];
  v21 = v3[13];
  v22 = v3[5];
  v23 = v3[6];
  (*(v3[9] + 8))(v3[10], v3[8]);
  sub_100007158(v16, v17);

  v13 = *(v23 + 56);
  v13(v20, 0, 1, v22);
  sub_1004640D8(v20, v21);
  a1 = (v13)(v21, 0, 1, v22);
  v18 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_15;
  }

  v19 = 0;
LABEL_11:
  v3[19] = v13;
  v3[20] = v18;
  v3[18] = v19;
  a1 = sub_100442428;
  a2 = 0;
  a3 = 0;

  return _swift_task_switch(a1, a2, a3);
}

uint64_t sub_100442428()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 40);
  v3 = (*(*(v0 + 48) + 48))(v1, 1, v2);
  v4 = *(v0 + 136);
  if (v3 == 1)
  {
    **(v0 + 24) = v4;

    v5 = *(v0 + 8);

    return v5();
  }

  sub_100007CE8(v1, *(v0 + 56), type metadata accessor for Restore);
  v7 = (v1 + *(v2 + 36));
  v9 = *v7;
  v8 = v7[1];

  sub_1004751E8(v1, type metadata accessor for Restore);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v4;
  v11 = sub_10052213C(v9, v8);
  v13 = *(v4 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  LOBYTE(v1) = v12;
  if (*(*(v0 + 136) + 24) >= v16)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_12:
      if (v1)
      {
LABEL_13:
        v18 = *(v0 + 88);
        v20 = *(v0 + 48);
        v19 = *(v0 + 56);
        v21 = v11;

        v22 = *(v0 + 16);
        v23 = *(v20 + 72) * v21;
        sub_1004640D8(v22[7] + v23, v18);
        sub_1004640D8(v19, v22[7] + v23);
        v24 = 0;
        goto LABEL_18;
      }

LABEL_16:
      v27 = *(v0 + 48);
      v26 = *(v0 + 56);
      v22 = *(v0 + 16);
      v22[(v11 >> 6) + 8] |= 1 << v11;
      v28 = (v22[6] + 16 * v11);
      *v28 = v9;
      v28[1] = v8;
      v29 = sub_1004640D8(v26, v22[7] + *(v27 + 72) * v11);
      v32 = v22[2];
      v15 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v15)
      {
        __break(1u);
        return _swift_task_switch(v29, v30, v31);
      }

      v22[2] = v33;
      v24 = 1;
LABEL_18:
      v34 = *(v0 + 88);
      (*(v0 + 152))(v34, v24, 1, *(v0 + 40));
      sub_1000032A8(v34, &qword_1007842F8);
      v35 = *(v0 + 144);
      *(v0 + 128) = *(v0 + 160);
      *(v0 + 136) = v22;
      *(v0 + 120) = v35;
      v29 = sub_100442118;
      v30 = 0;
      v31 = 0;

      return _swift_task_switch(v29, v30, v31);
    }

LABEL_15:
    v25 = v11;
    sub_1005C5F0C();
    v11 = v25;
    if (v1)
    {
      goto LABEL_13;
    }

    goto LABEL_16;
  }

  sub_1005BD5A4(v16, isUniquelyReferenced_nonNull_native);
  v11 = sub_10052213C(v9, v8);
  if ((v1 & 1) == (v17 & 1))
  {
    goto LABEL_12;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100442740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 289) = v16;
  *(v8 + 160) = v15;
  *(v8 + 168) = v17;
  *(v8 + 288) = v13;
  *(v8 + 144) = v12;
  *(v8 + 152) = v14;
  *(v8 + 128) = a7;
  *(v8 + 136) = a8;
  *(v8 + 112) = a5;
  *(v8 + 120) = a6;
  *(v8 + 96) = a1;
  *(v8 + 104) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 176) = v9;
  *(v8 + 184) = *(v9 - 8);
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();

  return _swift_task_switch(sub_1004428B8, 0, 0);
}

uint64_t sub_1004428B8()
{
  v2 = *(v0 + 160);
  v1 = *(v0 + 168);
  v3 = *(v0 + 289);
  v4 = *(v0 + 152);
  v5 = *(v0 + 288);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v10 = *(v0 + 104);
  v11 = *(v0 + 136);
  (*(*(v0 + 184) + 56))(*(v0 + 224), 1, 1, *(v0 + 176));
  v8 = swift_task_alloc();
  *(v0 + 232) = v8;
  *(v8 + 16) = v10;
  *(v8 + 32) = v7;
  *(v8 + 40) = v6;
  *(v8 + 48) = v11;
  *(v8 + 64) = v5;
  *(v8 + 72) = v4;
  *(v8 + 80) = v2;
  *(v8 + 88) = v3;
  *(v8 + 96) = v1;

  return _swift_task_switch(sub_1004429C8, 0, 0);
}

uint64_t sub_1004429C8()
{
  sub_100005934(v0[14].opaque[0], v0[13].opaque[1], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[15].opaque[0] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Begin Restoring", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[15].opaque[1] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[16].opaque[0] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[13].opaque[0];
  v8 = v0[11].opaque[0];
  v7 = v0[11].opaque[1];
  sub_100005934(v0[13].opaque[1], v6, &unk_10077F8E0);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[13].opaque[1];
  if (v9 == 1)
  {
    sub_1000032A8(v0[13].opaque[1], &unk_10077F8E0);

    v11 = 0;
  }

  else
  {
    v12 = v0[12].opaque[1];
    v13 = v0[11].opaque[1];
    v14 = v0[12].opaque[0];
    v15 = v0[11].opaque[0];
    (*(v13 + 32))(v12, v0[13].opaque[0], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v11 = sub_1005AD4D8("Begin Restoring", 15, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0);
  }

  v0[16].opaque[1] = v11;
  v16 = v0[14].opaque[1];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[17].opaque[0] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AC238;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[17].opaque[1] = v18;
  *v18 = v0;
  v18[1] = sub_100442EA8;
  v19 = v0[6].opaque[0];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v19, &v0[3], &unk_10069F3A0, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100442EA8()
{

  if (v0)
  {

    v1 = sub_100443184;
  }

  else
  {

    v1 = sub_100443068;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100443068()
{
  v1 = *(v0 + 224);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100443184()
{
}

uint64_t sub_100443220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 224) = v13;
  *(v8 + 281) = v12;
  *(v8 + 208) = v11;
  *(v8 + 280) = a8;
  *(v8 + 192) = a6;
  *(v8 + 200) = a7;
  *(v8 + 176) = a4;
  *(v8 + 184) = a5;
  *(v8 + 160) = a2;
  *(v8 + 168) = a3;
  sub_1001F0C48(&unk_100780380);
  *(v8 + 232) = swift_task_alloc();

  return _swift_task_switch(sub_1004432E4, 0, 0);
}

uint64_t sub_1004432E4()
{
  v1 = sub_1001F0C48(&qword_100784318);
  v2 = sub_1001F0C48(&qword_100784320);
  v3 = swift_task_alloc();
  *(v0 + 240) = v3;
  *v3 = v0;
  v3[1] = sub_1004433E0;
  v4 = *(v0 + 160);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 152, v1, v2, 0, 0, &unk_1006AC250, v4, v1);
}

uint64_t sub_1004433E0()
{

  return _swift_task_switch(sub_1004434DC, 0, 0);
}

uint64_t sub_1004434DC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v10 = *(v0 + 152);
  *(v0 + 248) = v10.i64[0];
  v5 = sub_10046D470(v4, v3, v1);
  *(v0 + 256) = v5;
  v6 = sub_1001F0C48(&qword_100784328);
  v7 = swift_task_alloc();
  *(v0 + 264) = v7;
  *(v7 + 16) = v5;
  *(v7 + 24) = vextq_s8(v10, v10, 8uLL);
  *(v7 + 40) = v4;
  *(v7 + 48) = v2;
  v8 = swift_task_alloc();
  *(v0 + 272) = v8;
  *v8 = v0;
  v8[1] = sub_100443618;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v8, v6, &type metadata for () + 8, 0, 0, &unk_1006AC270, v7, v6);
}

uint64_t sub_100443618()
{

  return _swift_task_switch(sub_100443770, 0, 0);
}

uint64_t sub_100443770()
{
  v2 = *(v0 + 224);
  v1 = *(v0 + 232);
  v17 = *(v0 + 281);
  v4 = *(v0 + 208);
  v3 = *(v0 + 216);
  v5 = *(v0 + 280);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 160);
  v9 = *(v0 + 168);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v1, 1, 1, v10);
  sub_10020A980(v6, v0 + 112);
  sub_100231CE8(v7, v0 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v8;
  *(v11 + 40) = v9;
  sub_1001DFDBC((v0 + 112), v11 + 48);
  *(v11 + 88) = v5;
  *(v11 + 96) = v4;
  *(v11 + 104) = v3;
  v12 = *(v2 + 32);
  v13 = *(v2 + 16);
  *(v11 + 112) = *v2;
  *(v11 + 128) = v13;
  *(v11 + 144) = v12;
  sub_100231D54((v0 + 16), (v11 + 152));
  *(v11 + 248) = v17;

  v14 = v9;
  sub_100494DB4(0, 0, v1, &unk_1006AC280, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100443900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[28] = a6;
  v7[29] = a7;
  v7[26] = a4;
  v7[27] = a5;
  v7[24] = a2;
  v7[25] = a3;
  v8 = type metadata accessor for Logger();
  v7[30] = v8;
  v7[31] = *(v8 - 8);
  v7[32] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v9 = sub_1001F0C48(&qword_1007843A8);
  v7[35] = v9;
  v7[36] = *(v9 - 8);
  v7[37] = swift_task_alloc();
  v10 = *(type metadata accessor for Restore() - 8);
  v7[38] = v10;
  v7[39] = *(v10 + 64);
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();

  return _swift_task_switch(sub_100443AE0, 0, 0);
}

uint64_t sub_100443AE0()
{
  v1 = *(v0 + 200);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 304);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v33 = (v4 + 40) & ~v4;
    v32 = (*(v0 + 312) + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v31 = **(v0 + 192);
    v29 = *(v3 + 72);
    do
    {
      v37 = v2;
      v8 = *(v0 + 320);
      v9 = *(v0 + 328);
      v10 = *(v0 + 272);
      v11 = *(v0 + 232);
      v34 = *(v0 + 224);
      v35 = *(v0 + 264);
      v12 = *(v0 + 208);
      v13 = *(v0 + 216);
      v36 = v5;
      sub_100007CE8(v5, v9, type metadata accessor for Restore);
      v14 = type metadata accessor for TaskPriority();
      v15 = *(v14 - 8);
      (*(v15 + 56))(v10, 1, 1, v14);
      sub_100007CE8(v9, v8, type metadata accessor for Restore);
      sub_100231CE8(v11, v0 + 16);
      v16 = swift_allocObject();
      v16[2] = 0;
      v17 = v16 + 2;
      v16[3] = 0;
      v16[4] = v13;
      sub_1004640D8(v8, v16 + v33);
      *(v16 + v32) = v34;
      *(v16 + v30) = v12;
      sub_100231D54((v0 + 16), (v16 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)));
      sub_100005934(v10, v35, &unk_100780380);
      v18 = (*(v15 + 48))(v35, 1, v14);

      v19 = v34;

      v20 = *(v0 + 264);
      if (v18 == 1)
      {
        sub_1000032A8(*(v0 + 264), &unk_100780380);
        if (*v17)
        {
          goto LABEL_8;
        }
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v15 + 8))(v20, v14);
        if (*v17)
        {
LABEL_8:
          swift_getObjectType();
          swift_unknownObjectRetain();
          v21 = dispatch thunk of Actor.unownedExecutor.getter();
          v22 = v23;
          swift_unknownObjectRelease();
          goto LABEL_9;
        }
      }

      v21 = 0;
      v22 = 0;
LABEL_9:
      v24 = swift_allocObject();
      *(v24 + 16) = &unk_1006AC338;
      *(v24 + 24) = v16;

      sub_1001F0C48(&qword_100784328);
      v25 = v22 | v21;
      if (v22 | v21)
      {
        v25 = v0 + 112;
        *(v0 + 112) = 0;
        *(v0 + 120) = 0;
        *(v0 + 128) = v21;
        *(v0 + 136) = v22;
      }

      v6 = *(v0 + 328);
      v7 = *(v0 + 272);
      *(v0 + 144) = 1;
      *(v0 + 152) = v25;
      *(v0 + 160) = v31;
      swift_task_create();

      sub_1000032A8(v7, &unk_100780380);
      sub_1004751E8(v6, type metadata accessor for Restore);
      v5 = v36 + v29;
      v2 = v37 - 1;
    }

    while (v37 != 1);
  }

  sub_1001F0C48(&qword_100784328);
  TaskGroup.makeAsyncIterator()();
  v26 = swift_task_alloc();
  *(v0 + 336) = v26;
  *v26 = v0;
  v26[1] = sub_100443F48;
  v27 = *(v0 + 280);

  return TaskGroup.Iterator.next(isolation:)(v0 + 168, 0, 0, v27);
}

uint64_t sub_100443F48()
{

  return _swift_task_switch(sub_100444044, 0, 0);
}

uint64_t sub_100444044()
{
  v27 = v0;
  v1 = *(v0 + 168);
  v2 = *(v0 + 184);
  if (v2 == 255)
  {
    (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v3 = *(v0 + 176);
    if (v2)
    {
      sub_100474300(*(v0 + 168), *(v0 + 176), *(v0 + 184));
    }

    else
    {
      v6 = *(v0 + 224);
      sub_100474328(*(v0 + 168), *(v0 + 176), 0);
      static Logger.restore.getter();
      v7 = v6;
      sub_100474338(v1, v3, v2);
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      sub_100474300(v1, v3, v2);
      v10 = os_log_type_enabled(v8, v9);
      v12 = *(v0 + 248);
      v11 = *(v0 + 256);
      v13 = *(v0 + 240);
      if (v10)
      {
        log = v8;
        v14 = *(v0 + 224);
        v22 = v9;
        v15 = swift_slowAlloc();
        v25 = v13;
        v16 = swift_slowAlloc();
        v24 = v11;
        v17 = swift_slowAlloc();
        v26 = v17;
        *v15 = 138412546;
        *(v15 + 4) = v14;
        *v16 = v14;
        *(v15 + 12) = 2082;
        v18 = v14;
        v19 = sub_1002346CC(v1, v3, &v26);
        sub_100474300(v1, v3, v2);
        *(v15 + 14) = v19;
        _os_log_impl(&_mh_execute_header, log, v22, "[%@][%{public}s] Saved new restore", v15, 0x16u);
        sub_1000032A8(v16, &qword_10077F920);

        sub_10000710C(v17);

        sub_100474300(v1, v3, v2);
        (*(v12 + 8))(v24, v25);
      }

      else
      {
        sub_100474300(v1, v3, v2);
        sub_100474300(v1, v3, v2);

        (*(v12 + 8))(v11, v13);
      }
    }

    v20 = swift_task_alloc();
    *(v0 + 336) = v20;
    *v20 = v0;
    v20[1] = sub_100443F48;
    v21 = *(v0 + 280);

    return TaskGroup.Iterator.next(isolation:)(v0 + 168, 0, 0, v21);
  }
}

uint64_t sub_1004443AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a1;
  v8[12] = a4;
  v9 = type metadata accessor for UUID();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  sub_1001F0C48(&qword_1007843B0);
  v8[20] = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_1007843B8);
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v11 = type metadata accessor for Restore();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  sub_1001F0C48(&qword_1007842F8);
  v8[36] = swift_task_alloc();

  return _swift_task_switch(sub_10044464C, 0, 0);
}

uint64_t sub_10044464C()
{
  v1 = v0[27];
  v2 = v0[12];
  v3 = (v0[13] + *(v1 + 36));
  v4 = *v3;
  v0[37] = *v3;
  v5 = v3[1];
  v0[38] = v5;
  if (*(v2 + 16) && (v6 = sub_10052213C(v4, v5), v1 = v0[27], (v7 & 1) != 0))
  {
    v8 = v0[36];
    v9 = v0[30];
    v10 = v0[28];
    v11 = v0[13];
    v12 = v0[14];
    v13 = v0[27];
    sub_100007CE8(*(v0[12] + 56) + *(v10 + 72) * v6, v8, type metadata accessor for Restore);
    (*(v10 + 56))(v8, 0, 1, v13);
    sub_1000032A8(v8, &qword_1007842F8);
    static Logger.restore.getter();
    sub_100007CE8(v11, v9, type metadata accessor for Restore);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    v17 = os_log_type_enabled(v15, v16);
    v18 = v0[30];
    if (v17)
    {
      v19 = v0[27];
      v20 = v0[14];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412546;
      *(v21 + 4) = v20;
      *v22 = v20;
      *(v21 + 12) = 2112;
      v23 = *(v18 + *(v19 + 20));
      v24 = v20;
      v25 = v23;
      sub_1004751E8(v18, type metadata accessor for Restore);
      *(v21 + 14) = v25;
      v22[1] = v25;
      _os_log_impl(&_mh_execute_header, v15, v16, "[%@][%@)] Skipping active bootstrapping restore", v21, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v18, type metadata accessor for Restore);
    }

    v37 = v0[11];
    (*(v0[32] + 8))(v0[35], v0[31]);
    sub_100473E74();
    v38 = swift_allocError();
    *v39 = xmmword_1006AC1B0;
    *(v39 + 16) = 2;
    *v37 = v38;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;

    v40 = v0[1];

    return v40();
  }

  else
  {
    v26 = v0[36];
    v27 = v0[16];
    (*(v0[28] + 56))(v26, 1, 1, v1);
    sub_1000032A8(v26, &qword_1007842F8);
    v28 = v27[3];
    v29 = v27[6];
    v30 = sub_100006D8C(v27, v28);
    v0[5] = v28;
    v0[6] = v29;
    v31 = sub_10020A748(v0 + 2);
    (*(*(v28 - 8) + 16))(v31, v30, v28);
    v32 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    v0[39] = v32;
    v33 = swift_task_alloc();
    v0[40] = v33;
    *(v33 + 16) = v4;
    *(v33 + 24) = v5;

    v34 = swift_task_alloc();
    v0[41] = v34;
    *v34 = v0;
    v34[1] = sub_100444B28;
    v35 = v0[20];

    return sub_1003B5410(v35, sub_100474350, v33, v32);
  }
}

uint64_t sub_100444B28()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_100444C74;
  }

  else
  {

    sub_10000710C(v2 + 16);
    v3 = sub_100444CFC;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100444C74()
{
  (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
  sub_10000710C((v0 + 2));

  return _swift_task_switch(sub_100444CFC, 0, 0);
}

uint64_t sub_100444CFC()
{
  v53 = v0;
  v1 = v0[20];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    sub_1000032A8(v1, &qword_1007843B0);
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_100445324;
    v3 = v0[13];

    return sub_100445810(v3);
  }

  else
  {
    v5 = v0[29];
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = v0[13];
    v50 = v0[14];
    sub_10020A668(v1, v6, &qword_1007843B8);
    static Logger.restore.getter();
    sub_100007CE8(v9, v5, type metadata accessor for Restore);
    sub_100005934(v6, v7, &qword_1007843B8);
    sub_100005934(v6, v8, &qword_1007843B8);
    v10 = v50;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[34];
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[29];
    if (v13)
    {
      log = v11;
      v18 = v0[27];
      v44 = v0[24];
      v45 = v0[25];
      v19 = v0[23];
      v43 = v0[21];
      v46 = v0[19];
      v47 = v12;
      v20 = v0[17];
      v21 = v0[18];
      v51 = v0[31];
      v22 = v0[14];
      v49 = v0[34];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v23 = 138413058;
      *(v23 + 4) = v22;
      *v24 = v22;
      *(v23 + 12) = 2112;
      v25 = *(v17 + *(v18 + 20));
      v26 = v22;
      v27 = v25;
      sub_1004751E8(v17, type metadata accessor for Restore);
      *(v23 + 14) = v27;
      v24[1] = v27;
      *(v23 + 22) = 2082;
      sub_10020A668(v45, v19, &qword_1007843B8);
      v28 = *v19;
      v29 = v19[1];
      v30 = *(v21 + 8);
      v30(v19 + *(v43 + 48), v20);
      v31 = sub_1002346CC(v28, v29, &v52);

      *(v23 + 24) = v31;
      *(v23 + 32) = 2082;
      sub_100005934(v44, v19, &qword_1007843B8);

      (*(v21 + 32))(v46, v19 + *(v43 + 48), v20);
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v30(v46, v20);
      sub_1000032A8(v44, &qword_1007843B8);
      v35 = sub_1002346CC(v32, v34, &v52);

      *(v23 + 34) = v35;
      _os_log_impl(&_mh_execute_header, log, v47, "[%@][%@] Skipping active install: %{public}s installID: %{public}s", v23, 0x2Au);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      swift_arrayDestroy();

      (*(v15 + 8))(v49, v51);
    }

    else
    {
      v36 = v0[24];
      v37 = v0[25];

      sub_1000032A8(v36, &qword_1007843B8);
      sub_1000032A8(v37, &qword_1007843B8);
      sub_1004751E8(v17, type metadata accessor for Restore);
      (*(v15 + 8))(v14, v16);
    }

    v38 = v0[26];
    v39 = v0[11];
    sub_100473E74();
    v40 = swift_allocError();
    *v41 = xmmword_10069E890;
    *(v41 + 16) = 2;
    sub_1000032A8(v38, &qword_1007843B8);
    *v39 = v40;
    *(v39 + 8) = 0;
    *(v39 + 16) = 1;

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_100445324()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_100445544;
  }

  else
  {
    v2 = sub_100445438;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100445438()
{
  v1 = v0[38];
  v2 = v0[11];
  *v2 = v0[37];
  *(v2 + 8) = v1;
  *(v2 + 16) = 0;

  v3 = v0[1];

  return v3();
}

uint64_t sub_100445544()
{
  v20 = v0;
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v17 = v0[31];
    v18 = v0[33];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = *(v0[8] - 8);
    swift_task_alloc();
    (*(v6 + 16))();
    v7 = String.init<A>(describing:)();
    v9 = v8;

    v10 = sub_1002346CC(v7, v9, &v19);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create a restore: %s", v4, 0xCu);
    sub_10000710C(v5);

    (*(v3 + 8))(v18, v17);
  }

  else
  {
    v12 = v0[32];
    v11 = v0[33];
    v13 = v0[31];

    (*(v12 + 8))(v11, v13);
  }

  v14 = v0[11];
  *v14 = v0[43];
  *(v14 + 8) = 0;
  *(v14 + 16) = 1;

  v15 = v0[1];

  return v15();
}

uint64_t sub_100445810(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Logger();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v4 = type metadata accessor for URL.DirectoryHint();
  v2[9] = v4;
  v2[10] = *(v4 - 8);
  v2[11] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v2[12] = v5;
  v2[13] = *(v5 - 8);
  v2[14] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[15] = v6;
  v2[16] = *(v6 - 8);
  v2[17] = swift_task_alloc();

  return _swift_task_switch(sub_1004459E4, 0, 0);
}

uint64_t sub_1004459E4()
{
  v1 = *(*(v0 + 40) + 16);
  *(v0 + 144) = v1;
  return _swift_task_switch(sub_100445A08, v1, 0);
}

uint64_t sub_100445A08()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[11];
  v15 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  (*(v1 + 16))(v2);
  v0[2] = UUID.uuidString.getter();
  v0[3] = v6;
  (*(v4 + 104))(v3, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v4 + 8))(v3, v5);

  (*(v1 + 8))(v2, v15);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for Restore();
  sub_100006EA4(&qword_100784330, type metadata accessor for Restore);
  v7 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v9 = v8;

  Data.write(to:options:)();
  v11 = v0[16];
  v10 = v0[17];
  v12 = v0[15];
  sub_100007158(v7, v9);
  (*(v11 + 8))(v10, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_100445CDC()
{
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to save checkpoint: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[6];

  (*(v7 + 8))(v6, v8);
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

uint64_t sub_100445E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a1;
  v4[13] = a4;
  v5 = type metadata accessor for Logger();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();

  return _swift_task_switch(sub_100445FDC, 0, 0);
}

uint64_t sub_100445FDC()
{
  (*(v0[15] + 56))(v0[20], 1, 1, v0[14]);

  return _swift_task_switch(sub_100446088, 0, 0);
}

uint64_t sub_100446088()
{
  sub_100005934(v0[10].opaque[0], v0[9].opaque[1], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[10].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Cleanup restore metadata on start", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[11].opaque[0] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[11].opaque[1] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[9].opaque[0];
  v8 = v0[7].opaque[0];
  v7 = v0[7].opaque[1];
  sub_100005934(v0[9].opaque[1], v6, &unk_10077F8E0);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[9].opaque[1];
  if (v9 == 1)
  {
    sub_1000032A8(v0[9].opaque[1], &unk_10077F8E0);

    v11 = 0;
  }

  else
  {
    v12 = v0[8].opaque[1];
    v13 = v0[7].opaque[1];
    v14 = v0[8].opaque[0];
    v15 = v0[7].opaque[0];
    (*(v13 + 32))(v12, v0[9].opaque[0], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v11 = sub_1005AD4D8("Cleanup restore metadata on start", 33, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0);
  }

  v0[12].opaque[0] = v11;
  v16 = v0[6].opaque[1];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[12].opaque[1] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AC490;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[13].opaque[0] = v18;
  *v18 = v0;
  v18[1] = sub_100446568;
  v19 = v0[6].opaque[0];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v19, &v0[3], &unk_1006AC498, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100446568()
{

  if (v0)
  {

    v1 = sub_10044683C;
  }

  else
  {

    v1 = sub_100446728;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100446728()
{
  v1 = *(v0 + 160);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10044683C()
{
}

uint64_t sub_1004468D8(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = *(type metadata accessor for Restore() - 8);
  v2[5] = swift_task_alloc();

  return _swift_task_switch(sub_100446994, 0, 0);
}

uint64_t sub_100446994()
{
  v1 = objc_allocWithZone(type metadata accessor for LogKey());
  v0[6] = LogKey.init(string:)();
  v2 = sub_1001F0C48(&qword_100784318);
  v3 = sub_1001F0C48(&qword_100784320);
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_100446ABC;
  v5 = v0[3];

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 2, v2, v3, 0, 0, &unk_1006AC4A0, v5, v2);
}

uint64_t sub_100446ABC()
{

  return _swift_task_switch(sub_100446BB8, 0, 0);
}

uint64_t sub_100446BB8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  *(v0 + 64) = v2;
  v3 = *(v2 + 32);
  *(v0 + 96) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 72) = v6;
    *(v0 + 80) = v7;
    sub_100007CE8(*(v2 + 56) + *(v1 + 72) * (__clz(__rbit64(v6)) | (v7 << 6)), *(v0 + 40), type metadata accessor for Restore);
    v10 = swift_task_alloc();
    *(v0 + 88) = v10;
    *v10 = v0;
    v10[1] = sub_100446D44;
    v12 = *(v0 + 40);
    v11 = *(v0 + 48);

    return sub_100446FE0(v12, v11);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v5) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_100446D44()
{
  v1 = *(*v0 + 40);

  sub_1004751E8(v1, type metadata accessor for Restore);

  return _swift_task_switch(sub_100446E70, 0, 0);
}

void sub_100446E70()
{
  v1 = *(v0 + 80);
  v2 = (*(v0 + 72) - 1) & *(v0 + 72);
  if (v2)
  {
    v3 = *(v0 + 64);
LABEL_7:
    *(v0 + 72) = v2;
    *(v0 + 80) = v1;
    sub_100007CE8(*(v3 + 56) + *(*(v0 + 32) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), *(v0 + 40), type metadata accessor for Restore);
    v5 = swift_task_alloc();
    *(v0 + 88) = v5;
    *v5 = v0;
    v5[1] = sub_100446D44;
    v7 = *(v0 + 40);
    v6 = *(v0 + 48);

    sub_100446FE0(v7, v6);
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      v3 = *(v0 + 64);
      if (v4 >= (((1 << *(v0 + 96)) + 63) >> 6))
      {
        break;
      }

      v2 = *(v3 + 8 * v4 + 64);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    v8 = *(v0 + 8);

    v8();
  }
}

uint64_t sub_100446FE0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Restore();
  v3[6] = swift_task_alloc();
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();

  return _swift_task_switch(sub_1004470EC, 0, 0);
}

uint64_t sub_1004470EC()
{
  v1 = *(*(v0 + 32) + 16);
  *(v0 + 96) = v1;
  return _swift_task_switch(sub_100447110, v1, 0);
}

uint64_t sub_100447110()
{
  sub_100463D54(*(v0 + 16));
  *(v0 + 104) = 0;

  return _swift_task_switch(sub_1004471B8, 0, 0);
}

uint64_t sub_1004471B8()
{
  v1 = v0[7];
  v2 = v0[2];
  v3 = v0[3];
  static Logger.restore.getter();
  sub_100007CE8(v2, v1, type metadata accessor for Restore);
  v4 = v3;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[7];
  if (v7)
  {
    v9 = v0[5];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = *(v8 + *(v9 + 20));
    v14 = v10;
    v15 = v13;
    sub_1004751E8(v8, type metadata accessor for Restore);
    *(v11 + 14) = v15;
    v12[1] = v15;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Remove restore bootstrap metadata", v11, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004751E8(v8, type metadata accessor for Restore);
  }

  (*(v0[9] + 8))(v0[11], v0[8]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1004473D8()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = v0[3];
  static Logger.restore.getter();
  sub_100007CE8(v2, v1, type metadata accessor for Restore);
  v4 = v3;
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[6];
  if (v7)
  {
    v9 = v0[5];
    v10 = v0[3];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412802;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2112;
    v13 = *(v8 + *(v9 + 20));
    v14 = v10;
    v15 = v13;
    sub_1004751E8(v8, type metadata accessor for Restore);
    *(v11 + 14) = v15;
    v12[1] = v15;
    *(v11 + 22) = 2112;
    swift_errorRetain();
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v16;
    v12[2] = v16;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@][%@] Failed to remove due to error: %@", v11, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {

    sub_1004751E8(v8, type metadata accessor for Restore);
  }

  (*(v0[9] + 8))(v0[10], v0[8]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_100447644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a8;
  v8[18] = v12;
  v8[15] = a6;
  v8[16] = a7;
  v8[13] = a4;
  v8[14] = a5;
  v8[12] = a1;
  v9 = type metadata accessor for Logger();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();
  sub_1001F0C48(&unk_10077F8E0);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();

  return _swift_task_switch(sub_1004477A0, 0, 0);
}

uint64_t sub_1004477A0()
{
  v4 = *(v0 + 120);
  v5 = *(v0 + 104);
  v3 = *(v0 + 136);
  (*(*(v0 + 160) + 56))(*(v0 + 200), 1, 1, *(v0 + 152));
  v1 = swift_task_alloc();
  *(v0 + 208) = v1;
  v1[1] = v5;
  v1[2] = v4;
  v1[3] = v3;

  return _swift_task_switch(sub_10044787C, 0, 0);
}

uint64_t sub_10044787C()
{
  sub_100005934(v0[12].opaque[1], v0[12].opaque[0], &unk_10077F8E0);
  type metadata accessor for LogActivity();
  v1 = swift_allocObject();
  v0[13].opaque[1] = v1;
  if (qword_10077E5A8 != -1)
  {
    swift_once();
  }

  v2 = _os_activity_create(&_mh_execute_header, "Promote Apps", qword_10078A090, OS_ACTIVITY_FLAG_DEFAULT);
  v0[5].opaque[0] = 0;
  v0[5].opaque[1] = 0;
  os_activity_scope_enter(v2, v0 + 5);
  swift_unknownObjectRelease();
  *(v1 + 16) = v0[5];
  if (qword_10077E598 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  v3 = v0[1].opaque[1];
  if (v3)
  {
  }

  else
  {
    sub_1001F0C48(&qword_100784310);
    v3 = swift_allocObject();
    *(v3 + 24) = 0;
    *(v3 + 16) = 0;
  }

  v0[14].opaque[0] = v3;
  type metadata accessor for Transaction();
  v4 = swift_allocObject();
  v0[14].opaque[1] = v4;

  *(v4 + 16) = StaticString.description.getter();
  *(v4 + 24) = v5;
  if (qword_10077E570 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_100788650);
  sub_1005B8C24(&off_100788658, v4);
  os_unfair_lock_unlock(&dword_100788650);
  v6 = v0[11].opaque[1];
  v8 = v0[9].opaque[1];
  v7 = v0[10].opaque[0];
  sub_100005934(v0[12].opaque[0], v6, &unk_10077F8E0);
  v9 = (*(v7 + 48))(v6, 1, v8);
  v10 = v0[12].opaque[0];
  if (v9 == 1)
  {
    sub_1000032A8(v0[12].opaque[0], &unk_10077F8E0);

    v11 = 0;
  }

  else
  {
    v12 = v0[11].opaque[0];
    v13 = v0[10].opaque[0];
    v14 = v0[10].opaque[1];
    v15 = v0[9].opaque[1];
    (*(v13 + 32))(v12, v0[11].opaque[1], v15);
    (*(v13 + 16))(v14, v12, v15);
    type metadata accessor for SignpostInterval();
    swift_allocObject();
    v11 = sub_1005AD4D8("Promote Apps", 12, 2, v14);

    (*(v13 + 8))(v12, v15);
    sub_1000032A8(v10, &unk_10077F8E0);
  }

  v0[15].opaque[0] = v11;
  v16 = v0[13].opaque[0];
  v0[3].opaque[0] = v1;
  v0[3].opaque[1] = v3;
  v0[4].opaque[0] = v4;
  v0[4].opaque[1] = v11;
  v17 = swift_task_alloc();
  v0[15].opaque[1] = v17;
  v17[2] = 0;
  v17[3] = v1;
  v17[4] = v3;
  v17[5] = v4;
  v17[6] = v11;
  v17[7] = &unk_1006AC418;
  v17[8] = v16;

  v18 = swift_task_alloc();
  v0[16].opaque[0] = v18;
  *v18 = v0;
  v18[1] = sub_100447D5C;
  v19 = v0[6].opaque[0];

  return TaskLocal.withValue<A>(_:operation:isolation:file:line:)(v19, &v0[3], &unk_1006AC420, v17, 0, 0, 0xD000000000000033, 0x80000001006C49B0);
}

uint64_t sub_100447D5C()
{

  if (v0)
  {

    v1 = sub_100448038;
  }

  else
  {

    v1 = sub_100447F1C;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100447F1C()
{
  v1 = *(v0 + 200);

  sub_1000032A8(v1, &unk_10077F8E0);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100448038()
{
}

uint64_t sub_1004480D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v8 = type metadata accessor for Logger();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v7[29] = swift_task_alloc();

  return _swift_task_switch(sub_1004481D4, 0, 0);
}

uint64_t sub_1004481D4()
{
  v1 = sub_10046DE40(*(v0 + 168), *(v0 + 176));
  *(v0 + 240) = v1;
  if (v1[2])
  {
    v2 = sub_1001F0C48(&qword_100784318);
    v3 = sub_1001F0C48(&qword_100784320);
    v4 = swift_task_alloc();
    *(v0 + 248) = v4;
    *v4 = v0;
    v4[1] = sub_10044843C;
    v5 = *(v0 + 160);

    return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 152, v2, v3, 0, 0, &unk_1006AC428, v5, v2);
  }

  else
  {
    v6 = *(v0 + 176);

    static Logger.restore.getter();
    v7 = v6;
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 176);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v10;
      *v12 = v10;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v8, v9, "[%@] No new promotions discovered", v11, 0xCu);
      sub_1000032A8(v12, &qword_10077F920);
    }

    v15 = *(v0 + 216);
    v14 = *(v0 + 224);
    v16 = *(v0 + 208);

    (*(v15 + 8))(v14, v16);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10044843C()
{

  return _swift_task_switch(sub_100448538, 0, 0);
}

uint64_t sub_100448538()
{
  v1 = *(v0 + 240);
  v3 = *(v0 + 176);
  v2 = *(v0 + 184);
  v8 = *(v0 + 152);
  *(v0 + 256) = v8.i64[0];
  v4 = sub_1001F0C48(&qword_100784440);
  v5 = swift_task_alloc();
  *(v0 + 264) = v5;
  v5[1].i64[0] = v1;
  v5[1].i64[1] = v3;
  v5[2] = vextq_s8(v8, v8, 8uLL);
  v5[3].i64[0] = v2;
  v6 = swift_task_alloc();
  *(v0 + 272) = v6;
  *v6 = v0;
  v6[1] = sub_100448664;

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v6, v4, &type metadata for () + 8, 0, 0, &unk_1006AC440, v5, v4);
}

uint64_t sub_100448664()
{

  return _swift_task_switch(sub_1004487BC, 0, 0);
}

uint64_t sub_1004487BC()
{
  v1 = *(v0 + 168);
  if (v1[2])
  {
    v3 = v1[4];
    v2 = v1[5];
  }

  else
  {
    v3 = 0;
    v2 = 0;
  }

  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  v8 = *(v0 + 176);
  v7 = *(v0 + 184);
  v9 = *(v0 + 160);
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  sub_10020A980(v5, v0 + 112);
  sub_100231CE8(v7, v0 + 16);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v9;
  *(v11 + 40) = v8;
  sub_1001DFDBC((v0 + 112), v11 + 48);
  *(v11 + 88) = 1;
  *(v11 + 96) = v3;
  *(v11 + 104) = v2;
  v12 = *(v6 + 32);
  v13 = *(v6 + 16);
  *(v11 + 112) = *v6;
  *(v11 + 128) = v13;
  *(v11 + 144) = v12;
  sub_100231D54((v0 + 16), (v11 + 152));
  *(v11 + 248) = 2;

  v14 = v8;
  sub_100494DB4(0, 0, v4, &unk_1006AC448, v11);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100448968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[25] = a6;
  v7[26] = a7;
  v7[23] = a4;
  v7[24] = a5;
  v7[21] = a2;
  v7[22] = a3;
  v8 = sub_1001F0C48(&qword_100784440);
  v7[27] = v8;
  v7[28] = *(v8 - 8);
  v7[29] = swift_task_alloc();
  sub_1001F0C48(&unk_100780380);
  v7[30] = swift_task_alloc();
  v7[31] = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  v7[32] = v9;
  v7[33] = *(v9 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  sub_1001F0C48(&qword_100784448);
  v7[36] = swift_task_alloc();
  v10 = sub_1001F0C48(&unk_100784450);
  v7[37] = v10;
  v7[38] = *(v10 - 8);
  v7[39] = swift_task_alloc();
  v11 = type metadata accessor for Restore();
  v7[40] = v11;
  v12 = *(v11 - 8);
  v7[41] = v12;
  v7[42] = *(v12 + 64);
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v7[45] = swift_task_alloc();
  v7[46] = swift_task_alloc();
  v7[47] = swift_task_alloc();

  return _swift_task_switch(sub_100448C1C, 0, 0);
}

uint64_t sub_100448C1C()
{
  v1 = *(v0 + 176);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 328);
    v44 = *(v0 + 320);
    v45 = *(v0 + 184);
    v4 = *(v3 + 80);
    v5 = v1 + ((v4 + 32) & ~v4);
    v51 = (*(v0 + 264) + 8);
    v50 = (v4 + 40) & ~v4;
    v49 = (*(v0 + 336) + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = *(v3 + 72);
    v47 = **(v0 + 168);
    v48 = (v49 + 15) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v54 = v5;
      v55 = v2;
      v10 = *(v0 + 368);
      v9 = *(v0 + 376);
      v11 = *(v0 + 184);
      sub_100007CE8(v5, v9, type metadata accessor for Restore);
      static Logger.restore.getter();
      sub_100007CE8(v9, v10, type metadata accessor for Restore);
      v12 = v11;
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      v15 = os_log_type_enabled(v13, v14);
      v16 = *(v0 + 368);
      if (v15)
      {
        v17 = *(v0 + 184);
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412546;
        *(v18 + 4) = v17;
        *v19 = v45;
        *(v18 + 12) = 2112;
        v20 = *(v16 + *(v44 + 20));
        v21 = v17;
        v22 = v20;
        sub_1004751E8(v16, type metadata accessor for Restore);
        *(v18 + 14) = v22;
        v19[1] = v22;
        _os_log_impl(&_mh_execute_header, v13, v14, "[%@][%@] Begin promotion", v18, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      else
      {

        sub_1004751E8(v16, type metadata accessor for Restore);
      }

      v23 = *(v0 + 376);
      v24 = *(v0 + 360);
      v25 = *(v0 + 248);
      v53 = *(v0 + 240);
      v26 = *(v0 + 200);
      v27 = *(v0 + 208);
      v28 = *(v0 + 184);
      v52 = *(v0 + 192);
      (*v51)(*(v0 + 280), *(v0 + 256));
      v29 = type metadata accessor for TaskPriority();
      v30 = *(v29 - 8);
      (*(v30 + 56))(v25, 1, 1, v29);
      sub_100007CE8(v23, v24, type metadata accessor for Restore);
      sub_100231CE8(v27, v0 + 16);
      v31 = swift_allocObject();
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v26;
      sub_1004640D8(v24, v31 + v50);
      *(v31 + v49) = v28;
      *(v31 + v48) = v52;
      sub_100231D54((v0 + 16), (v31 + ((v48 + 15) & 0xFFFFFFFFFFFFFFF8)));
      sub_100005934(v25, v53, &unk_100780380);
      v32 = v29;
      LODWORD(v29) = (*(v30 + 48))(v53, 1, v29);
      v33 = v28;

      v34 = *(v0 + 240);
      if (v29 == 1)
      {
        sub_1000032A8(*(v0 + 240), &unk_100780380);
      }

      else
      {
        TaskPriority.rawValue.getter();
        (*(v30 + 8))(v34, v32);
      }

      if (v31[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v35 = dispatch thunk of Actor.unownedExecutor.getter();
        v37 = v36;
        swift_unknownObjectRelease();
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = swift_allocObject();
      *(v38 + 16) = &unk_1006AC468;
      *(v38 + 24) = v31;

      if (v37 | v35)
      {
        v6 = v0 + 112;
        *(v0 + 112) = 0;
        *(v0 + 120) = 0;
        *(v0 + 128) = v35;
        *(v0 + 136) = v37;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v0 + 376);
      v8 = *(v0 + 248);
      *(v0 + 144) = 1;
      *(v0 + 152) = v6;
      *(v0 + 160) = v47;
      swift_task_create();

      sub_1000032A8(v8, &unk_100780380);
      sub_1004751E8(v7, type metadata accessor for Restore);
      v5 = v54 + v46;
      v2 = v55 - 1;
    }

    while (v55 != 1);
    v39 = v45;
  }

  else
  {
    v39 = *(v0 + 184);
  }

  *(v0 + 384) = v39;
  TaskGroup.makeAsyncIterator()();
  v40 = swift_task_alloc();
  *(v0 + 392) = v40;
  *v40 = v0;
  v40[1] = sub_100449230;
  v41 = *(v0 + 288);
  v42 = *(v0 + 296);

  return TaskGroup.Iterator.next(isolation:)(v41, 0, 0, v42);
}

uint64_t sub_100449230()
{

  return _swift_task_switch(sub_10044932C, 0, 0);
}

uint64_t sub_10044932C()
{
  v1 = v0[36];
  if ((*(v0[28] + 48))(v1, 1, v0[27]) == 1)
  {
    (*(v0[38] + 8))(v0[39], v0[37]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    sub_10020A668(v1, v0[29], &qword_100784440);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1000032A8(v0[29], &qword_100784440);
    }

    else
    {
      v4 = v0[43];
      v5 = v0[44];
      v6 = v0[23];
      sub_1004640D8(v0[29], v5);
      static Logger.restore.getter();
      sub_100007CE8(v5, v4, type metadata accessor for Restore);
      v7 = v6;
      v8 = Logger.logObject.getter();
      v9 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v8, v9))
      {
        v10 = v0[48];
        v11 = v0[43];
        v12 = v0[40];
        v13 = v0[33];
        v30 = v0[34];
        v31 = v0[44];
        v29 = v0[32];
        v14 = v0[23];
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        *v15 = 138412546;
        *(v15 + 4) = v14;
        *v16 = v10;
        *(v15 + 12) = 2112;
        v17 = *(v11 + *(v12 + 20));
        v18 = v14;
        v19 = v17;
        sub_1004751E8(v11, type metadata accessor for Restore);
        *(v15 + 14) = v19;
        v16[1] = v19;
        _os_log_impl(&_mh_execute_header, v8, v9, "[%@][%@] Saved new promoting restore", v15, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        (*(v13 + 8))(v30, v29);
        v20 = v31;
      }

      else
      {
        v22 = v0[43];
        v21 = v0[44];
        v24 = v0[33];
        v23 = v0[34];
        v25 = v0[32];

        sub_1004751E8(v22, type metadata accessor for Restore);
        (*(v24 + 8))(v23, v25);
        v20 = v21;
      }

      sub_1004751E8(v20, type metadata accessor for Restore);
    }

    v26 = swift_task_alloc();
    v0[49] = v26;
    *v26 = v0;
    v26[1] = sub_100449230;
    v27 = v0[36];
    v28 = v0[37];

    return TaskGroup.Iterator.next(isolation:)(v27, 0, 0, v28);
  }
}

uint64_t sub_100449730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[15] = a7;
  v8[16] = a8;
  v8[13] = a5;
  v8[14] = a6;
  v8[11] = a1;
  v8[12] = a4;
  v9 = type metadata accessor for UUID();
  v8[17] = v9;
  v8[18] = *(v9 - 8);
  v8[19] = swift_task_alloc();
  sub_1001F0C48(&qword_1007843B0);
  v8[20] = swift_task_alloc();
  v10 = sub_1001F0C48(&qword_1007843B8);
  v8[21] = v10;
  v8[22] = *(v10 - 8);
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = swift_task_alloc();
  v11 = type metadata accessor for Restore();
  v8[27] = v11;
  v8[28] = *(v11 - 8);
  v8[29] = swift_task_alloc();
  v8[30] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v8[31] = v12;
  v8[32] = *(v12 - 8);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v8[35] = swift_task_alloc();
  sub_1001F0C48(&qword_1007842F8);
  v8[36] = swift_task_alloc();

  return _swift_task_switch(sub_1004499D0, 0, 0);
}

uint64_t sub_1004499D0()
{
  v1 = v0[27];
  v2 = (v0[13] + *(v1 + 36));
  v3 = *v2;
  v4 = v2[1];
  if (*(v0[12] + 16) && (v5 = sub_10052213C(v3, v4), v1 = v0[27], (v6 & 1) != 0))
  {
    v7 = v0[36];
    v8 = v0[30];
    v9 = v0[28];
    v10 = v0[13];
    v11 = v0[14];
    v12 = v0[27];
    sub_100007CE8(*(v0[12] + 56) + *(v9 + 72) * v5, v7, type metadata accessor for Restore);
    (*(v9 + 56))(v7, 0, 1, v12);
    sub_1000032A8(v7, &qword_1007842F8);
    static Logger.restore.getter();
    sub_100007CE8(v10, v8, type metadata accessor for Restore);
    v13 = v11;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[30];
    if (v16)
    {
      v18 = v0[27];
      v19 = v0[14];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412546;
      *(v20 + 4) = v19;
      *v21 = v19;
      *(v20 + 12) = 2112;
      v22 = *(v17 + *(v18 + 20));
      v23 = v19;
      v24 = v22;
      sub_1004751E8(v17, type metadata accessor for Restore);
      *(v20 + 14) = v24;
      v21[1] = v24;
      _os_log_impl(&_mh_execute_header, v14, v15, "[%@][%@] Skipping active promoting restore", v20, 0x16u);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();
    }

    else
    {

      sub_1004751E8(v17, type metadata accessor for Restore);
    }

    v36 = v0[11];
    (*(v0[32] + 8))(v0[35], v0[31]);
    sub_100473E74();
    v37 = swift_allocError();
    *v38 = xmmword_1006AC1B0;
    *(v38 + 16) = 2;
    *v36 = v37;
    sub_1001F0C48(&qword_100784440);
    swift_storeEnumTagMultiPayload();

    v39 = v0[1];

    return v39();
  }

  else
  {
    v25 = v0[36];
    v26 = v0[16];
    (*(v0[28] + 56))(v25, 1, 1, v1);
    sub_1000032A8(v25, &qword_1007842F8);
    v27 = v26[3];
    v28 = v26[6];
    v29 = sub_100006D8C(v26, v27);
    v0[5] = v27;
    v0[6] = v28;
    v30 = sub_10020A748(v0 + 2);
    (*(*(v27 - 8) + 16))(v30, v29, v27);
    v31 = *(*sub_100006D8C(v0 + 2, v0[5]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_installDatabase);
    v0[37] = v31;
    v32 = swift_task_alloc();
    v0[38] = v32;
    *(v32 + 16) = v3;
    *(v32 + 24) = v4;

    v33 = swift_task_alloc();
    v0[39] = v33;
    *v33 = v0;
    v33[1] = sub_100449EBC;
    v34 = v0[20];

    return sub_1003B5410(v34, sub_100475404, v32, v31);
  }
}

uint64_t sub_100449EBC()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_10044A008;
  }

  else
  {

    sub_10000710C(v2 + 16);
    v3 = sub_10044A090;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10044A008()
{
  (*(v0[22] + 56))(v0[20], 1, 1, v0[21]);
  sub_10000710C((v0 + 2));

  return _swift_task_switch(sub_10044A090, 0, 0);
}

uint64_t sub_10044A090()
{
  v53 = v0;
  v1 = v0[20];
  if ((*(v0[22] + 48))(v1, 1, v0[21]) == 1)
  {
    sub_1000032A8(v1, &qword_1007843B0);
    v2 = swift_task_alloc();
    v0[40] = v2;
    *v2 = v0;
    v2[1] = sub_10044A6D4;
    v3 = v0[13];

    return sub_100445810(v3);
  }

  else
  {
    v5 = v0[29];
    v7 = v0[25];
    v6 = v0[26];
    v8 = v0[24];
    v9 = v0[13];
    v50 = v0[14];
    sub_10020A668(v1, v6, &qword_1007843B8);
    static Logger.restore.getter();
    sub_100007CE8(v9, v5, type metadata accessor for Restore);
    sub_100005934(v6, v7, &qword_1007843B8);
    sub_100005934(v6, v8, &qword_1007843B8);
    v10 = v50;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[34];
    v16 = v0[31];
    v15 = v0[32];
    v17 = v0[29];
    if (v13)
    {
      log = v11;
      v18 = v0[27];
      v44 = v0[24];
      v45 = v0[25];
      v19 = v0[23];
      v43 = v0[21];
      v46 = v0[19];
      v47 = v12;
      v20 = v0[17];
      v21 = v0[18];
      v51 = v0[31];
      v22 = v0[14];
      v49 = v0[34];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v23 = 138413058;
      *(v23 + 4) = v22;
      *v24 = v22;
      *(v23 + 12) = 2112;
      v25 = *(v17 + *(v18 + 20));
      v26 = v22;
      v27 = v25;
      sub_1004751E8(v17, type metadata accessor for Restore);
      *(v23 + 14) = v27;
      v24[1] = v27;
      *(v23 + 22) = 2082;
      sub_10020A668(v45, v19, &qword_1007843B8);
      v28 = *v19;
      v29 = v19[1];
      v30 = *(v21 + 8);
      v30(v19 + *(v43 + 48), v20);
      v31 = sub_1002346CC(v28, v29, &v52);

      *(v23 + 24) = v31;
      *(v23 + 32) = 2082;
      sub_100005934(v44, v19, &qword_1007843B8);

      (*(v21 + 32))(v46, v19 + *(v43 + 48), v20);
      sub_100006EA4(&qword_100789F60, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      v30(v46, v20);
      sub_1000032A8(v44, &qword_1007843B8);
      v35 = sub_1002346CC(v32, v34, &v52);

      *(v23 + 34) = v35;
      _os_log_impl(&_mh_execute_header, log, v47, "[%@][%@] Skipping active install: %{public}s installID: %{public}s", v23, 0x2Au);
      sub_1001F0C48(&qword_10077F920);
      swift_arrayDestroy();

      swift_arrayDestroy();

      (*(v15 + 8))(v49, v51);
    }

    else
    {
      v36 = v0[24];
      v37 = v0[25];

      sub_1000032A8(v36, &qword_1007843B8);
      sub_1000032A8(v37, &qword_1007843B8);
      sub_1004751E8(v17, type metadata accessor for Restore);
      (*(v15 + 8))(v14, v16);
    }

    v38 = v0[26];
    v39 = v0[11];
    sub_100473E74();
    v40 = swift_allocError();
    *v41 = xmmword_10069E890;
    *(v41 + 16) = 2;
    sub_1000032A8(v38, &qword_1007843B8);
    *v39 = v40;
    sub_1001F0C48(&qword_100784440);
    swift_storeEnumTagMultiPayload();

    v42 = v0[1];

    return v42();
  }
}

uint64_t sub_10044A6D4()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_10044A920;
  }

  else
  {
    v2 = sub_10044A7E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10044A7E8()
{
  sub_100007CE8(v0[13], v0[11], type metadata accessor for Restore);
  sub_1001F0C48(&qword_100784440);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_10044A920()
{
  v19 = v0;
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 256);
    v16 = *(v0 + 248);
    v17 = *(v0 + 264);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v18 = v5;
    *v4 = 136315138;
    swift_getErrorValue();
    v6 = *(*(v0 + 64) - 8);
    swift_task_alloc();
    (*(v6 + 16))();
    v7 = String.init<A>(describing:)();
    v9 = v8;

    v10 = sub_1002346CC(v7, v9, &v18);

    *(v4 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to create a promoting restore: %s", v4, 0xCu);
    sub_10000710C(v5);

    (*(v3 + 8))(v17, v16);
  }

  else
  {
    v12 = *(v0 + 256);
    v11 = *(v0 + 264);
    v13 = *(v0 + 248);

    (*(v12 + 8))(v11, v13);
  }

  **(v0 + 88) = *(v0 + 328);
  sub_1001F0C48(&qword_100784440);
  swift_storeEnumTagMultiPayload();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_10044AC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 426) = v18;
  *(v8 + 1256) = v17;
  *(v8 + 1240) = v16;
  *(v8 + 1232) = a8;
  *(v8 + 425) = a7;
  *(v8 + 1224) = a6;
  *(v8 + 1216) = a5;
  *(v8 + 1208) = a4;
  sub_1001F0C48(&unk_100780380);
  *(v8 + 1264) = swift_task_alloc();
  v9 = type metadata accessor for URL.DirectoryHint();
  *(v8 + 1272) = v9;
  *(v8 + 1280) = *(v9 - 8);
  *(v8 + 1288) = swift_task_alloc();
  v10 = type metadata accessor for UUID();
  *(v8 + 1296) = v10;
  *(v8 + 1304) = *(v10 - 8);
  *(v8 + 1312) = swift_task_alloc();
  v11 = type metadata accessor for URL();
  *(v8 + 1320) = v11;
  *(v8 + 1328) = *(v11 - 8);
  *(v8 + 1336) = swift_task_alloc();
  v12 = type metadata accessor for Restore();
  *(v8 + 1344) = v12;
  *(v8 + 1352) = *(v12 - 8);
  *(v8 + 1360) = swift_task_alloc();
  *(v8 + 1368) = swift_task_alloc();
  *(v8 + 1376) = swift_task_alloc();
  *(v8 + 1384) = swift_task_alloc();
  *(v8 + 1392) = swift_task_alloc();
  *(v8 + 1400) = swift_task_alloc();
  *(v8 + 1408) = swift_task_alloc();
  *(v8 + 1416) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v8 + 1424) = v13;
  *(v8 + 1432) = *(v13 - 8);
  *(v8 + 1440) = swift_task_alloc();
  *(v8 + 1448) = swift_task_alloc();
  *(v8 + 1456) = swift_task_alloc();
  *(v8 + 1464) = swift_task_alloc();
  *(v8 + 1472) = swift_task_alloc();
  *(v8 + 1480) = swift_task_alloc();
  *(v8 + 1488) = swift_task_alloc();
  *(v8 + 1496) = swift_task_alloc();
  *(v8 + 1504) = swift_task_alloc();
  *(v8 + 1512) = swift_task_alloc();
  *(v8 + 1520) = swift_task_alloc();
  *(v8 + 1528) = swift_task_alloc();
  *(v8 + 1536) = swift_task_alloc();

  return _swift_task_switch(sub_10044AFB0, 0, 0);
}

uint64_t sub_10044AFB0()
{
  v1 = sub_1001F0C48(&qword_100784318);
  v2 = sub_1001F0C48(&qword_100784320);
  v3 = swift_task_alloc();
  *(v0 + 1544) = v3;
  *v3 = v0;
  v3[1] = sub_10044B0E0;
  v4 = *(v0 + 1208);

  return withTaskGroup<A, B>(of:returning:isolation:body:)(v0 + 1176, v1, v2, 0, 0, &unk_1006AC288, v4, v1);
}

uint64_t sub_10044B0E0()
{

  return _swift_task_switch(sub_10044B208, 0, 0);
}

uint64_t sub_10044B208()
{
  v366 = v0;
  v2 = *(v0 + 1176);
  *(v0 + 1552) = v2;
  v3 = *(v0 + 1216);
  if (!*(v2 + 16))
  {

    static Logger.restore.getter();
    v23 = v3;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = *(v0 + 1216);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v26;
      *v28 = v26;
      v29 = v26;
      _os_log_impl(&_mh_execute_header, v24, v25, "[%@] No active restores found", v27, 0xCu);
      sub_1000032A8(v28, &qword_10077F920);
    }

    v30 = *(v0 + 1448);
    v31 = *(v0 + 1432);
    v32 = *(v0 + 1424);

    (*(v31 + 8))(v30, v32);
    goto LABEL_103;
  }

  static Logger.restore.getter();
  v4 = v3;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 1536);
  v9 = *(v0 + 1432);
  v10 = *(v0 + 1424);
  v11 = &unk_10069D000;
  v12 = *(v0 + 1216);
  if (v7)
  {
    v353 = *(v0 + 1536);
    v13 = swift_slowAlloc();
    p_isa = swift_slowAlloc();
    v343 = swift_slowAlloc();
    *&v359 = v343;
    *v13 = 138412546;
    *(v13 + 4) = v12;
    *p_isa = v12;
    *(v13 + 12) = 2082;
    v347 = v10;
    v14 = v12;
    v15 = *(v2 + 16);
    v16 = v14;
    v17 = sub_10060008C(v15, 115, 0xE100000000000000, 0x65726F74736572, 0xE700000000000000);
    v19 = sub_1002346CC(v17, v18, &v359);
    v12 = v14;

    *(v13 + 14) = v19;
    v11 = 0x10069D000;
    _os_log_impl(&_mh_execute_header, v5, v6, "[%@] Bootstrapping %{public}s", v13, 0x16u);
    sub_1000032A8(p_isa, &qword_10077F920);

    v6 = v343;
    sub_10000710C(v343);

    v22 = *(v9 + 8);
    v21 = v9 + 8;
    v20 = v22;
    v22(v353, v347);
  }

  else
  {

    v33 = *(v9 + 8);
    v21 = v9 + 8;
    v20 = v33;
    v33(v8, v10);
  }

  v326 = (v0 + 1184);
  *(v0 + 1576) = v20;
  *(v0 + 1568) = v12;
  *(v0 + 1560) = v21;
  v34 = *(v2 + 32);
  *(v0 + 427) = v34;
  v35 = 1 << v34;
  if (v35 < 64)
  {
    v36 = ~(-1 << v35);
  }

  else
  {
    v36 = -1;
  }

  v37 = v36 & *(v2 + 64);
  *(v0 + 428) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v324 = (v0 + 1624);
  v325 = (v0 + 1616);

  v38 = 0;
  v39 = 0;
  v40 = _swiftEmptyDictionarySingleton;
  v41 = _swiftEmptyArrayStorage;
  v42 = vdupq_n_s64(_swiftEmptyDictionarySingleton);
  LODWORD(v354) = *(v11 + 1000);
  v43 = v42;
LABEL_12:
  *(v0 + 1592) = v38;
  *(v0 + 1584) = v40;
  *(v0 + 1616) = v43;
  *(v0 + 1600) = v42;
  v344 = v41;
  *(v0 + 1640) = v41;
  *(v0 + 1632) = 0;
LABEL_16:
  if (v37)
  {
    v53 = *(v0 + 1552);
    goto LABEL_22;
  }

  while (1)
  {
    v54 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_118:
      __break(1u);
      goto LABEL_119;
    }

    if (v54 >= (((1 << *(v0 + 427)) + 63) >> 6))
    {
      break;
    }

    v53 = *(v0 + 1552);
    v37 = *(v53 + 8 * v54 + 64);
    ++v39;
    if (v37)
    {
      v39 = v54;
LABEL_22:
      *(v0 + 1656) = v39;
      *(v0 + 1648) = v37;
      v55 = *(v0 + 1416);
      v56 = *(v0 + 1408);
      v57 = *(v0 + 1344);
      v58 = *(v53 + 56);
      v59 = *(*(v0 + 1352) + 72);
      *(v0 + 1664) = v59;
      sub_100007CE8(v58 + v59 * (__clz(__rbit64(v37)) | (v39 << 6)), v55, type metadata accessor for Restore);
      sub_1004640D8(v55, v56);
      swift_beginAccess();
      if ((*(v56 + *(v57 + 44)) | 2) != 2)
      {
        v108 = *(v0 + 1216);
        static Logger.restore.getter();
        v109 = v108;
        v110 = Logger.logObject.getter();
        v111 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = *(v0 + 1568);
          v113 = *(v0 + 1408);
          v114 = *(v0 + 1344);
          v115 = *(v0 + 1216);
          v116 = swift_slowAlloc();
          v117 = swift_slowAlloc();
          *v116 = v354;
          *(v116 + 4) = v115;
          *v117 = v112;
          *(v116 + 12) = 2112;
          v118 = *(v113 + *(v114 + 20));
          *(v116 + 14) = v118;
          v117[1] = v118;
          v119 = v115;
          v120 = v118;
          _os_log_impl(&_mh_execute_header, v110, v111, "[%@][%@] Already bootstrapping", v116, 0x16u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();
        }

        v11 = *(v0 + 1576);
        v2 = *(v0 + 1456);
        v6 = *(v0 + 1424);
        p_isa = *(v0 + 1408);

        (v11)(v2, v6);
        sub_1004751E8(p_isa, type metadata accessor for Restore);
        v38 = *(v0 + 1592);
        v40 = *(v0 + 1584);
        v39 = *(v0 + 1656);
        v41 = *(v0 + 1640);
        v43 = *(v0 + 1616);
        v42 = *(v0 + 1600);
        v37 = (*(v0 + 1648) - 1) & *(v0 + 1648);
        goto LABEL_12;
      }

      v60 = *(v0 + 1216);
      static Logger.restore.getter();
      v61 = v60;
      v62 = Logger.logObject.getter();
      v63 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = *(v0 + 1568);
        v348 = *(v0 + 1408);
        v65 = *(v0 + 1344);
        v66 = *(v0 + 1216);
        v67 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        *v67 = v354;
        *(v67 + 4) = v66;
        *v68 = v64;
        *(v67 + 12) = 2112;
        v69 = *(v348 + *(v65 + 20));
        *(v67 + 14) = v69;
        v68[1] = v69;
        v70 = v66;
        v71 = v69;
        _os_log_impl(&_mh_execute_header, v62, v63, "[%@][%@] Moved to bootstrapping", v67, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      v72 = *(v0 + 1576);
      v73 = *(v0 + 1560);
      v74 = *(v0 + 1528);
      v75 = *(v0 + 1424);
      v11 = *(v0 + 1408);
      v76 = *(v0 + 1344);

      *(v0 + 1672) = v73 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v72(v74, v75);
      v77 = (v11 + *(v76 + 48));
      *(v0 + 1680) = *v77;
      v78 = v77[1];
      *(v0 + 1688) = v78;
      if (v78)
      {
        v79 = *(v0 + 1408);
        v80 = *(v0 + 1344);
        v81 = (v79 + v80[14]);
        v6 = v81[1];
        *(v0 + 1696) = v6;
        if (v6)
        {
          v2 = *v81;
          *(v0 + 1704) = *v81;
          v82 = (v79 + v80[13]);
          v83 = *v82;
          *(v0 + 1712) = *v82;
          p_isa = v82[1];
          *(v0 + 1720) = p_isa;
          if (!p_isa)
          {
            v84 = *(v0 + 1216);
            static Logger.restore.getter();
            v85 = v84;
            v86 = Logger.logObject.getter();
            v87 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v86, v87))
            {
              v52 = *(v0 + 1480);
              goto LABEL_15;
            }

            v44 = *(v0 + 1568);
            v327 = *(v0 + 1408);
            v45 = *(v0 + 1344);
            v11 = *(v0 + 1216);
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            *v46 = v354;
            *(v46 + 4) = v11;
            *v47 = v44;
            *(v46 + 12) = 2112;
            v48 = *(v327 + *(v45 + 20));
            *(v46 + 14) = v48;
            v47[1] = v48;
            v49 = v11;
            v50 = v48;
            _os_log_impl(&_mh_execute_header, v86, v87, "[%@][%@] Could not find distributorID for app", v46, 0x16u);
            v51 = (v0 + 1480);
LABEL_14:
            v52 = *v51;
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();

            goto LABEL_15;
          }

          v344 = v83;
          v218 = *(v0 + 1400);
          sub_100007CE8(v79, v218, type metadata accessor for Restore);
          v219 = (v218 + v80[13]);
          v220 = v219[1];
          if (v220)
          {
            v221 = *v219;
            v222 = (v218 + v80[9]);
            if (v221 == *v222 && v220 == v222[1])
            {
              *(v0 + 529) = 1;
              v223 = *(v0 + 1400);

              sub_1004751E8(v223, type metadata accessor for Restore);
LABEL_133:
              v294 = *(v0 + 1408);
              v295 = *(v0 + 1384);
              *(v294 + *(*(v0 + 1344) + 44)) = 1;
              sub_100007CE8(v294, v295, type metadata accessor for Restore);
              v296 = swift_task_alloc();
              *(v0 + 1784) = v296;
              *v296 = v0;
              v296[1] = sub_10044F594;
              v297 = *(v0 + 1384);

              return sub_100445810(v297);
            }

LABEL_113:
            v225 = _stringCompareWithSmolCheck(_:_:expecting:)();
            *(v0 + 529) = v225 & 1;
            v226 = *(v0 + 1400);

            sub_1004751E8(v226, type metadata accessor for Restore);
            if (v225)
            {
              goto LABEL_133;
            }

LABEL_114:
            v227 = objc_allocWithZone(LSApplicationRecord);
            v228 = String._bridgeToObjectiveC()();
            *v326 = 0;
            v39 = [v227 initWithBundleIdentifier:v228 allowPlaceholder:0 error:v326];

            v11 = *v326;
            if (v39)
            {
              v229 = v11;
              if ([v39 isPlaceholder])
              {

                v230 = *(v0 + 1624);
                v141 = *(v0 + 1616);
                goto LABEL_141;
              }

LABEL_130:
              v279 = *(v0 + 1216);
              static Logger.restore.getter();
              v280 = v279;
              v281 = Logger.logObject.getter();
              v282 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v281, v282))
              {
                v283 = *(v0 + 1568);
                v351 = *(v0 + 1408);
                v284 = *(v0 + 1344);
                v285 = *(v0 + 1216);
                v286 = swift_slowAlloc();
                v287 = swift_slowAlloc();
                *v286 = v354;
                *(v286 + 4) = v285;
                *v287 = v283;
                *(v286 + 12) = 2112;
                v288 = *(v351 + *(v284 + 20));
                *(v286 + 14) = v288;
                v287[1] = v288;
                v289 = v285;
                v290 = v288;
                _os_log_impl(&_mh_execute_header, v281, v282, "[%@][%@] Found marketplace app", v286, 0x16u);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();
              }

              v291 = *(v0 + 1576);
              v292 = *(v0 + 1512);
              v293 = *(v0 + 1424);

              v291(v292, v293);
              goto LABEL_133;
            }

LABEL_119:
            v231 = *(v0 + 1216);
            v232 = v11;

            _convertNSErrorToError(_:)();

            swift_willThrow();

            static Logger.restore.getter();
            v233 = v231;
            v234 = Logger.logObject.getter();
            v235 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v234, v235))
            {
              v236 = *(v0 + 1568);
              v337 = *(v0 + 1344);
              v341 = *(v0 + 1408);
              v237 = *(v0 + 1216);
              v238 = swift_slowAlloc();
              v239 = swift_slowAlloc();
              *v238 = v354;
              *(v238 + 4) = v237;
              *v239 = v236;
              *(v238 + 12) = 2112;
              v240 = *(v341 + *(v337 + 20));
              *(v238 + 14) = v240;
              v239[1] = v240;
              v241 = v237;
              v242 = v240;
              _os_log_impl(&_mh_execute_header, v234, v235, "[%@][%@] Could not find marketplace app", v238, 0x16u);
              sub_1001F0C48(&qword_10077F920);
              swift_arrayDestroy();
            }

            v243 = *(v0 + 1576);
            v244 = *(v0 + 1520);
            v245 = *(v0 + 1424);
            v246 = *(v0 + 1408);
            v247 = *(v0 + 1344);

            v243(v244, v245);
            v248 = (v246 + *(v247 + 80));
            v249 = v248[1];
            if (!v249 || (v250 = *(v0 + 1408), v251 = *(v0 + 1344), v252 = (v250 + *(v251 + 84)), (v252[1] & 1) != 0))
            {
LABEL_126:
              v141 = *v325;
              v263 = *(v0 + 1216);
              static Logger.restore.getter();
              v264 = v263;
              v136 = Logger.logObject.getter();
              v265 = static os_log_type_t.error.getter();

              if (os_log_type_enabled(v136, v265))
              {
                v357 = v265;
                v266 = *(v0 + 1568);
                v267 = *(v0 + 1408);
                v268 = *(v0 + 1344);
                v269 = *(v0 + 1216);
                v270 = swift_slowAlloc();
                v271 = swift_slowAlloc();
                *(v0 + 1192) = swift_slowAlloc();
                *v270 = 138413314;
                *(v270 + 4) = v269;
                *v271 = v266;
                *(v270 + 12) = 2112;
                v272 = *(v267 + *(v268 + 20));
                *(v270 + 14) = v272;
                v271[1] = v272;
                *(v270 + 22) = 2080;
                v273 = v269;

                v274 = v272;
                v275 = sub_1002346CC(v344, p_isa, (v0 + 1192));

                *(v270 + 24) = v275;
                *(v270 + 32) = 2080;
                v276 = (v267 + *(v268 + 80));
                if (v276[1])
                {
                  v277 = *v276;
                  v278 = v276[1];
                }

                else
                {
                  v278 = 0xE200000000000000;
                  v277 = 16718;
                }

                v301 = v357;
                v358 = *(v0 + 1576);
                v302 = *(v0 + 1440);
                v346 = *(v0 + 1424);
                v303 = *(v0 + 1408);
                v304 = *(v0 + 1344);

                v305 = sub_1002346CC(v277, v278, (v0 + 1192));

                *(v270 + 34) = v305;
                *(v270 + 42) = 2080;
                v306 = (v303 + *(v304 + 84));
                v307 = *v306;
                LOBYTE(v306) = *(v306 + 8);
                *(v0 + 1160) = v307;
                *(v0 + 1168) = v306;
                sub_1001F0C48(&qword_100784338);
                v308 = String.init<A>(describing:)();
                v310 = sub_1002346CC(v308, v309, (v0 + 1192));

                *(v270 + 44) = v310;
                _os_log_impl(&_mh_execute_header, v136, v301, "[%@][%@] Unable to find distributor details distributorDomain: %s marketplaceDomain: %s marketplaceItemID: %s", v270, 0x34u);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();

                swift_arrayDestroy();

                v358(v302, v346);
              }

              else
              {
LABEL_137:
                v298 = *(v0 + 1576);
                v299 = *(v0 + 1440);
                v300 = *(v0 + 1424);

                v298(v299, v300);
              }

              v230 = *(v0 + 1624);
LABEL_141:
              v311 = *(v0 + 1608);
            }

            else
            {
              v356 = *v248;
              v253 = *v252;
              v254 = *(*v324 + 16);

              if (v254)
              {
                v255 = sub_10052213C(v344, p_isa);
                if (v256)
                {
                  v257 = *(*v324 + 56) + 104 * v255;
                  v259 = *(v257 + 16);
                  v258 = *(v257 + 32);
                  *(v0 + 224) = *v257;
                  *(v0 + 240) = v259;
                  *(v0 + 256) = v258;
                  v261 = *(v257 + 64);
                  v260 = *(v257 + 80);
                  v262 = *(v257 + 48);
                  *(v0 + 320) = *(v257 + 96);
                  *(v0 + 288) = v261;
                  *(v0 + 304) = v260;
                  *(v0 + 272) = v262;
                  sub_10046DA84(v0 + 224, v0 + 328);

                  sub_10046DAE0(v0 + 224);
                  v325 = v324;
                  goto LABEL_126;
                }

                v352 = v253;
                v250 = *(v0 + 1408);
                v251 = *(v0 + 1344);
              }

              else
              {
                v352 = v253;
              }

              v316 = *(v0 + 1312);
              v317 = *(v0 + 1304);
              v333 = *(v0 + 1296);
              v318 = (v250 + *(v251 + 76));
              v319 = v318[1];
              v338 = *v318;
              v342 = *(v0 + 1608);

              UUID.init()();
              v320 = UUID.uuidString.getter();
              v322 = v321;
              (*(v317 + 8))(v316, v333);
              LOBYTE(v359) = 0;
              *(v0 + 16) = v320;
              *(v0 + 24) = v322;
              *(v0 + 32) = v356;
              *(v0 + 40) = v249;
              *(v0 + 48) = v344;
              *(v0 + 56) = p_isa;
              *(v0 + 64) = v352;
              *(v0 + 72) = 0;
              *(v0 + 80) = v338;
              *(v0 + 88) = v319;
              *(v0 + 96) = v2;
              *(v0 + 104) = v6;
              *(v0 + 112) = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *&v359 = v342;
              sub_1005C2A0C(v0 + 16, v344, p_isa, isUniquelyReferenced_nonNull_native);

              v311 = v359;
              v141 = v359;
              v230 = v359;
            }

            *(v0 + 1752) = v230;
            *(v0 + 1744) = v141;
            *(v0 + 1736) = v311;
            *(v0 + 1728) = 0;
            v312 = *(v0 + 1408);
            v313 = *(v0 + 1392);
            v314 = *(v0 + 1208);
            *(v312 + *(*(v0 + 1344) + 44)) = 2;
            sub_100007CE8(v312, v313, type metadata accessor for Restore);
            v315 = *(v314 + 16);
            *(v0 + 1760) = v315;

            return _swift_task_switch(sub_10044D214, v315, 0);
          }

LABEL_111:
          *(v0 + 529) = 0;
          v224 = *(v0 + 1400);

          sub_1004751E8(v224, type metadata accessor for Restore);
          goto LABEL_114;
        }

        v98 = *(v0 + 1216);
        static Logger.restore.getter();
        v99 = v98;
        v86 = Logger.logObject.getter();
        v100 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v100))
        {
          v101 = *(v0 + 1568);
          v329 = *(v0 + 1408);
          v102 = *(v0 + 1344);
          v11 = *(v0 + 1216);
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *v103 = v354;
          *(v103 + 4) = v11;
          *v104 = v101;
          *(v103 + 12) = 2112;
          v105 = *(v329 + *(v102 + 20));
          *(v103 + 14) = v105;
          v104[1] = v105;
          v106 = v11;
          v107 = v105;
          _os_log_impl(&_mh_execute_header, v86, v100, "[%@][%@] Could not find accountID for app", v103, 0x16u);
          v51 = (v0 + 1472);
          goto LABEL_14;
        }

        v52 = *(v0 + 1472);
      }

      else
      {
        v88 = *(v0 + 1216);
        static Logger.restore.getter();
        v89 = v88;
        v86 = Logger.logObject.getter();
        v90 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v86, v90))
        {
          v91 = *(v0 + 1568);
          v328 = *(v0 + 1408);
          v92 = *(v0 + 1344);
          v11 = *(v0 + 1216);
          v93 = swift_slowAlloc();
          v94 = swift_slowAlloc();
          *v93 = v354;
          *(v93 + 4) = v11;
          *v94 = v91;
          *(v93 + 12) = 2112;
          v95 = *(v328 + *(v92 + 20));
          *(v93 + 14) = v95;
          v94[1] = v95;
          v96 = v11;
          v97 = v95;
          _os_log_impl(&_mh_execute_header, v86, v90, "[%@][%@] Could not find distributorDomain for app", v93, 0x16u);
          v51 = (v0 + 1464);
          goto LABEL_14;
        }

        v52 = *(v0 + 1464);
      }

LABEL_15:
      v37 &= v37 - 1;
      v2 = *(v0 + 1576);
      v6 = *(v0 + 1424);
      p_isa = *(v0 + 1408);

      (v2)(v52, v6);
      sub_1004751E8(p_isa, type metadata accessor for Restore);
      goto LABEL_16;
    }
  }

  v2 = *(v0 + 1600);

  v324 = (v2 + 64);
  v121 = -1 << *(v2 + 32);
  if (-v121 < 64)
  {
    v122 = ~(-1 << -v121);
  }

  else
  {
    v122 = -1;
  }

  v123 = v122 & *(v2 + 64);
  v124 = (63 - v121) >> 6;
  v326 = v2;

  v125 = 0;
  v126 = 0;
  v325 = v124;
  v334 = v0;
LABEL_44:
  *(v0 + 1808) = v344;
  *(v0 + 1800) = v125;
  if (v123)
  {
    v127 = v126;
LABEL_49:
    v330 = v127;
    v331 = v123;
    v128 = __clz(__rbit64(v123)) | (v127 << 6);
    v129 = v326[6] + 104 * v128;
    v130 = *v129;
    v131 = *(v129 + 32);
    *(v0 + 448) = *(v129 + 16);
    *(v0 + 464) = v131;
    *(v0 + 432) = v130;
    v132 = *(v129 + 48);
    v133 = *(v129 + 64);
    v134 = *(v129 + 80);
    *(v0 + 528) = *(v129 + 96);
    *(v0 + 496) = v133;
    *(v0 + 512) = v134;
    *(v0 + 480) = v132;
    v39 = *(v326[7] + 8 * v128);
    v354 = *(v39 + 16);
    if (!v354)
    {
      v354 = v125;
      sub_10046DA84(v0 + 432, v0 + 744);
      v136 = _swiftEmptyDictionarySingleton;
LABEL_73:
      v160 = 0;
      v332 = (v331 - 1) & v331;
      p_isa = &v136[8].isa;
      v161 = -1 << LOBYTE(v136[4].isa);
      if (-v161 < 64)
      {
        v162 = ~(-1 << -v161);
      }

      else
      {
        v162 = -1;
      }

      v163 = v162 & v136[8].isa;
      for (i = (63 - v161) >> 6; v163; *(v175 + 19) = v6)
      {
LABEL_82:
        v166 = __clz(__rbit64(v163)) | (v160 << 6);
        v167 = (v136[6].isa + 16 * v166);
        v168 = *v167;
        v169 = v167[1];
        v6 = *(v136[7].isa + v166);
        sub_10046DA84(v334 + 432, v334 + 640);

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v170 = v344;
        }

        else
        {
          v170 = sub_100363F78(0, *(v344 + 16) + 1, 1, v344);
        }

        v2 = *(v170 + 2);
        v171 = *(v170 + 3);
        v39 = v2 + 1;
        if (v2 >= v171 >> 1)
        {
          v170 = sub_100363F78((v171 > 1), v2 + 1, 1, v170);
        }

        v163 &= v163 - 1;
        v365 = *(v334 + 528);
        v172 = *(v334 + 512);
        v363 = *(v334 + 496);
        v364 = v172;
        v173 = *(v334 + 480);
        v361 = *(v334 + 464);
        v362 = v173;
        v174 = *(v334 + 448);
        v359 = *(v334 + 432);
        v360 = v174;
        *(v170 + 2) = v39;
        v344 = v170;
        v175 = &v170[128 * v2];
        *(v175 + 4) = v168;
        *(v175 + 5) = v169;
        v176 = v359;
        v177 = v361;
        *(v175 + 4) = v360;
        *(v175 + 5) = v177;
        *(v175 + 3) = v176;
        v178 = v362;
        v179 = v363;
        v180 = v364;
        v175[144] = v365;
        *(v175 + 7) = v179;
        *(v175 + 8) = v180;
        *(v175 + 6) = v178;
      }

      v0 = v334;
      while (1)
      {
        v165 = v160 + 1;
        if (__OFADD__(v160, 1))
        {
          break;
        }

        if (v165 >= i)
        {
          sub_10046DAE0(v334 + 432);

          v126 = v330;
          v123 = v332;
          v124 = v325;
          v125 = v354;
          goto LABEL_44;
        }

        v163 = p_isa[v165];
        ++v160;
        if (v163)
        {
          v160 = v165;
          goto LABEL_82;
        }
      }

      __break(1u);
      goto LABEL_111;
    }

    v135 = *(*(v0 + 1352) + 80);
    v335 = (v135 + 32) & ~v135;
    v349 = (v39 + v335);
    sub_10046DA84(v0 + 432, v0 + 536);

    v11 = 0;
    v136 = _swiftEmptyDictionarySingleton;
    v339 = v39;
    while (1)
    {
      if (v11 >= *(v39 + 16))
      {
        __break(1u);
        goto LABEL_113;
      }

      v137 = *(v0 + 1368);
      v2 = *(v0 + 1344);
      v6 = *(*(v0 + 1352) + 72);
      sub_100007CE8(&v349[v6 * v11], v137, type metadata accessor for Restore);
      v138 = (v137 + *(v2 + 56));
      v139 = v138[1];
      v140 = *(v0 + 1368);
      if (v139)
      {
        break;
      }

      sub_1004751E8(v140, type metadata accessor for Restore);
LABEL_52:
      if (v354 == ++v11)
      {
        v354 = v125;

        goto LABEL_73;
      }
    }

    v141 = *v138;
    sub_100007CE8(v140, *(v0 + 1360), type metadata accessor for Restore);

    sub_1001DFE6C(v125);
    v142 = swift_isUniquelyReferenced_nonNull_native();
    *&v359 = v136;
    v144 = sub_10052213C(v141, v139);
    isa = v136[2].isa;
    v146 = (v143 & 1) == 0;
    v147 = isa + v146;
    if (__OFADD__(isa, v146))
    {
      goto LABEL_118;
    }

    v148 = v143;
    if (v136[3].isa < v147)
    {
      sub_1005BE0C4(v147, v142);
      v136 = v359;
      v149 = sub_10052213C(v141, v139);
      if ((v148 & 1) != (v150 & 1))
      {

        return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      }

      v144 = v149;
      if ((v148 & 1) == 0)
      {
        goto LABEL_59;
      }

LABEL_63:

LABEL_64:
      p_isa = v136[7].isa;
      v155 = p_isa[v144];
      v156 = swift_isUniquelyReferenced_nonNull_native();
      p_isa[v144] = v155;
      if ((v156 & 1) == 0)
      {
        v155 = sub_100363E00(0, v155[2] + 1, 1, v155);
        p_isa[v144] = v155;
      }

      v2 = v155[2];
      v157 = v155[3];
      if (v2 >= v157 >> 1)
      {
        p_isa[v144] = sub_100363E00(v157 > 1, v2 + 1, 1, v155);
      }

      v158 = *(v0 + 1360);
      sub_1004751E8(*(v0 + 1368), type metadata accessor for Restore);
      v159 = p_isa[v144];
      *(v159 + 16) = v2 + 1;
      sub_1004640D8(v158, v159 + v335 + v2 * v6);
      v125 = sub_100475384;
      v39 = v339;
      goto LABEL_52;
    }

    if (v142)
    {
      if (v143)
      {
        goto LABEL_63;
      }
    }

    else
    {
      sub_1005C6388();
      v136 = v359;
      if (v148)
      {
        goto LABEL_63;
      }
    }

LABEL_59:
    v136[(v144 >> 6) + 8].isa = (v136[(v144 >> 6) + 8].isa | (1 << v144));
    v151 = (v136[6].isa + 16 * v144);
    *v151 = v141;
    v151[1] = v139;
    *(v136[7].isa + v144) = _swiftEmptyArrayStorage;
    v152 = v136[2].isa;
    v153 = __OFADD__(v152, 1);
    v154 = (v152 + 1);
    if (v153)
    {
      __break(1u);
      goto LABEL_137;
    }

    v136[2].isa = v154;
    goto LABEL_64;
  }

  while (1)
  {
    v127 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      __break(1u);
      goto LABEL_130;
    }

    if (v127 >= v124)
    {
      break;
    }

    v123 = v324[v127];
    ++v126;
    if (v123)
    {
      goto LABEL_49;
    }
  }

  if (*(v344 + 16))
  {
    v181 = swift_task_alloc();
    *(v0 + 1816) = v181;
    *v181 = v0;
    v181[1] = sub_100451D54;
    v182 = *(v0 + 1256);
    v183 = *(v0 + 1248);
    v184 = *(v0 + 1240);
    v185 = *(v0 + 1232);
    v186 = *(v0 + 1224);
    v187 = *(v0 + 1216);
    v188 = *(v0 + 425);

    return sub_100452554(v344, v186, v188, v185, v184, v187, v183, v182);
  }

  v190 = *(v0 + 1624);
  v191 = *(v0 + 1240);
  if (*(v190 + 16) && (v191 != 0) | *(v0 + 426) & 1)
  {
    v350 = *(v0 + 1592);
    v355 = *(v0 + 1800);
    v192 = *(v0 + 1264);
    v193 = *(v0 + 1256);
    v194 = *(v0 + 1248);
    v195 = *(v0 + 1224);
    v336 = *(v0 + 1216);
    v340 = *(v0 + 1232);
    v345 = *(v0 + 1208);
    v196 = sub_100440314(v190);

    v197 = type metadata accessor for TaskPriority();
    (*(*(v197 - 8) + 56))(v192, 1, 1, v197);
    sub_100231CE8(v193, v0 + 944);
    sub_10020A980(v195, v0 + 1080);
    v198 = swift_allocObject();
    *(v198 + 16) = 0;
    *(v198 + 24) = 0;
    *(v198 + 32) = v196;
    *(v198 + 40) = v340;
    *(v198 + 48) = v191;
    *(v198 + 56) = v336;
    sub_100231D54((v0 + 944), (v198 + 64));
    *(v198 + 160) = v345;
    sub_1001DFDBC((v0 + 1080), v198 + 168);
    v199 = *(v194 + 32);
    v200 = *(v194 + 16);
    *(v198 + 208) = *v194;
    *(v198 + 224) = v200;
    *(v198 + 240) = v199;

    v201 = v336;
    sub_1004A673C(0, 0, v192, &unk_1006AC2C8, v198);

    sub_1001DFE6C(v350);
    v202 = v355;
  }

  else
  {

    v203 = *(v190 + 16);
    v204 = *(v0 + 1800);
    v205 = *(v0 + 1592);
    if (v203)
    {
      v206 = *(v0 + 1264);
      v207 = *(v0 + 1256);
      v208 = *(v0 + 1248);
      v209 = *(v0 + 1224);
      v210 = *(v0 + 1216);
      v211 = *(v0 + 1208);
      v212 = type metadata accessor for TaskPriority();
      (*(*(v212 - 8) + 56))(v206, 1, 1, v212);
      sub_100231CE8(v207, v0 + 848);
      sub_10020A980(v209, v0 + 1040);
      v213 = swift_allocObject();
      *(v213 + 16) = 0;
      *(v213 + 24) = 0;
      *(v213 + 32) = v211;
      sub_100231D54((v0 + 848), (v213 + 40));
      *(v213 + 136) = v210;
      sub_1001DFDBC((v0 + 1040), v213 + 144);
      v214 = *(v208 + 32);
      v215 = *(v208 + 16);
      *(v213 + 184) = *v208;
      *(v213 + 200) = v215;
      *(v213 + 216) = v214;
      v216 = v210;

      sub_1004A673C(0, 0, v206, &unk_1006AC2B8, v213);
    }

    sub_1001DFE6C(v205);
    v202 = v204;
  }

  sub_1001DFE6C(v202);
LABEL_103:

  v217 = *(v0 + 8);

  return v217();
}

uint64_t sub_10044D214()
{
  v1 = *(v0 + 428);
  v19 = *(v0 + 1728);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v18 = *(v0 + 1296);
  v4 = *(v0 + 1288);
  v5 = *(v0 + 1280);
  v6 = *(v0 + 1272);
  (*(v3 + 16))(v2);
  *(v0 + 1144) = UUID.uuidString.getter();
  *(v0 + 1152) = v7;
  (*(v5 + 104))(v4, v1, v6);
  sub_100005E50();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v4, v6);

  (*(v3 + 8))(v2, v18);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  sub_100006EA4(&qword_100784330, type metadata accessor for Restore);
  v8 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (v19)
  {

    *(v0 + 1776) = v19;
    (*(*(v0 + 1328) + 8))(*(v0 + 1336), *(v0 + 1320));
    v12 = sub_10044F20C;
  }

  else
  {
    v10 = v8;
    v11 = v9;

    Data.write(to:options:)();
    *(v0 + 1768) = 0;
    v13 = *(v0 + 1392);
    v14 = *(v0 + 1336);
    v15 = *(v0 + 1328);
    v16 = *(v0 + 1320);
    sub_100007158(v10, v11);
    (*(v15 + 8))(v14, v16);
    sub_1004751E8(v13, type metadata accessor for Restore);
    v12 = sub_10044D4EC;
  }

  return _swift_task_switch(v12, 0, 0);
}

uint64_t sub_10044D4EC()
{
  v283 = (v2 + 1184);
  sub_1004751E8(*(v2 + 1408), type metadata accessor for Restore);
  v5 = (v2 + 1752);
  v6 = (v2 + 1744);
  v7 = (v2 + 1736);
  v8 = *(v2 + 1768);
  v9 = (*(v2 + 1648) - 1) & *(v2 + 1648);
  v285 = (v2 + 1624);
  v286 = (v2 + 1616);
  LODWORD(v311) = 138412546;
  v284 = v8;
LABEL_2:
  v10 = *v6;
  v302 = *(v2 + 1640);
  v11 = *(v2 + 1656);
  v12 = *v7;
  *(v2 + 1624) = *v5;
  *(v2 + 1616) = v10;
  *(v2 + 1608) = v12;
  *(v2 + 1632) = v8;
LABEL_6:
  if (v9)
  {
    v22 = *(v2 + 1552);
    goto LABEL_12;
  }

  while (1)
  {
    v23 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }

    if (v23 >= (((1 << *(v2 + 427)) + 63) >> 6))
    {
      break;
    }

    v22 = *(v2 + 1552);
    v9 = *(v22 + 8 * v23 + 64);
    ++v11;
    if (v9)
    {
      v11 = v23;
LABEL_12:
      *(v2 + 1656) = v11;
      *(v2 + 1648) = v9;
      v24 = *(v2 + 1416);
      v25 = *(v2 + 1408);
      v26 = *(v2 + 1344);
      v27 = *(v22 + 56);
      v28 = *(*(v2 + 1352) + 72);
      *(v2 + 1664) = v28;
      sub_100007CE8(v27 + v28 * (__clz(__rbit64(v9)) | (v11 << 6)), v24, type metadata accessor for Restore);
      sub_1004640D8(v24, v25);
      swift_beginAccess();
      if ((*(v25 + *(v26 + 44)) | 2) != 2)
      {
        v77 = *(v2 + 1216);
        static Logger.restore.getter();
        v78 = v77;
        v79 = Logger.logObject.getter();
        v80 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v79, v80))
        {
          v81 = *(v2 + 1568);
          v82 = *(v2 + 1408);
          v83 = *(v2 + 1344);
          v84 = *(v2 + 1216);
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *v85 = 138412546;
          *(v85 + 4) = v84;
          *v86 = v81;
          *(v85 + 12) = 2112;
          v87 = *(v82 + *(v83 + 20));
          *(v85 + 14) = v87;
          v86[1] = v87;
          v88 = v84;
          v89 = v87;
          _os_log_impl(&_mh_execute_header, v79, v80, "[%@][%@] Already bootstrapping", v85, 0x16u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();
        }

        v1 = *(v2 + 1576);
        v0 = *(v2 + 1456);
        v3 = *(v2 + 1424);
        v4 = *(v2 + 1408);

        (v1)(v0, v3);
        sub_1004751E8(v4, type metadata accessor for Restore);
        v9 = (*(v2 + 1648) - 1) & *(v2 + 1648);
        v7 = (v2 + 1608);
        v8 = v284;
        v5 = (v2 + 1624);
        v6 = (v2 + 1616);
        goto LABEL_2;
      }

      v29 = *(v2 + 1216);
      static Logger.restore.getter();
      v30 = v29;
      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = *(v2 + 1568);
        v305 = *(v2 + 1408);
        v34 = *(v2 + 1344);
        v35 = *(v2 + 1216);
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        *v36 = 138412546;
        *(v36 + 4) = v35;
        *v37 = v33;
        *(v36 + 12) = 2112;
        v38 = *(v305 + *(v34 + 20));
        *(v36 + 14) = v38;
        v37[1] = v38;
        v39 = v35;
        v40 = v38;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%@][%@] Moved to bootstrapping", v36, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      v41 = *(v2 + 1576);
      v42 = *(v2 + 1560);
      v43 = *(v2 + 1528);
      v44 = *(v2 + 1424);
      v1 = *(v2 + 1408);
      v45 = *(v2 + 1344);

      *(v2 + 1672) = v42 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v41(v43, v44);
      v46 = (v1 + *(v45 + 48));
      *(v2 + 1680) = *v46;
      v47 = v46[1];
      *(v2 + 1688) = v47;
      if (v47)
      {
        v48 = *(v2 + 1408);
        v49 = *(v2 + 1344);
        v50 = (v48 + v49[14]);
        v3 = v50[1];
        *(v2 + 1696) = v3;
        if (v3)
        {
          v0 = *v50;
          *(v2 + 1704) = *v50;
          v51 = (v48 + v49[13]);
          v52 = *v51;
          *(v2 + 1712) = *v51;
          v4 = v51[1];
          *(v2 + 1720) = v4;
          if (!v4)
          {
            v53 = *(v2 + 1216);
            static Logger.restore.getter();
            v54 = v53;
            v55 = Logger.logObject.getter();
            v56 = static os_log_type_t.default.getter();

            if (!os_log_type_enabled(v55, v56))
            {
              v21 = *(v2 + 1480);
              goto LABEL_5;
            }

            v13 = *(v2 + 1568);
            v287 = *(v2 + 1408);
            v14 = *(v2 + 1344);
            v1 = *(v2 + 1216);
            v15 = swift_slowAlloc();
            v16 = swift_slowAlloc();
            *v15 = 138412546;
            *(v15 + 4) = v1;
            *v16 = v13;
            *(v15 + 12) = 2112;
            v17 = *(v287 + *(v14 + 20));
            *(v15 + 14) = v17;
            v16[1] = v17;
            v18 = v1;
            v19 = v17;
            _os_log_impl(&_mh_execute_header, v55, v56, "[%@][%@] Could not find distributorID for app", v15, 0x16u);
            v20 = (v2 + 1480);
LABEL_4:
            v21 = *v20;
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();

            goto LABEL_5;
          }

          v302 = v52;
          v176 = *(v2 + 1400);
          sub_100007CE8(v48, v176, type metadata accessor for Restore);
          v177 = (v176 + v49[13]);
          v178 = v177[1];
          if (v178)
          {
            v179 = *v177;
            v180 = (v176 + v49[9]);
            if (v179 == *v180 && v178 == v180[1])
            {
              *(v2 + 529) = 1;
              v181 = *(v2 + 1400);

              sub_1004751E8(v181, type metadata accessor for Restore);
LABEL_120:
              v254 = *(v2 + 1408);
              v255 = *(v2 + 1384);
              *(v254 + *(*(v2 + 1344) + 44)) = 1;
              sub_100007CE8(v254, v255, type metadata accessor for Restore);
              v256 = swift_task_alloc();
              *(v2 + 1784) = v256;
              *v256 = v2;
              v256[1] = sub_10044F594;
              v257 = *(v2 + 1384);

              return sub_100445810(v257);
            }

LABEL_100:
            v183 = _stringCompareWithSmolCheck(_:_:expecting:)();
            *(v2 + 529) = v183 & 1;
            v184 = *(v2 + 1400);

            sub_1004751E8(v184, type metadata accessor for Restore);
            if (v183)
            {
              goto LABEL_120;
            }
          }

          else
          {
LABEL_98:
            *(v2 + 529) = 0;
            v182 = *(v2 + 1400);

            sub_1004751E8(v182, type metadata accessor for Restore);
          }

          v185 = objc_allocWithZone(LSApplicationRecord);
          v186 = String._bridgeToObjectiveC()();
          *v283 = 0;
          v11 = [v185 initWithBundleIdentifier:v186 allowPlaceholder:0 error:v283];

          v1 = *v283;
          if (v11)
          {
            v187 = v1;
            if ([v11 isPlaceholder])
            {

              v188 = *v285;
              v110 = *v286;
              v189 = v284;
              v190 = *(v2 + 1608);
              goto LABEL_131;
            }

LABEL_117:
            v239 = *(v2 + 1216);
            static Logger.restore.getter();
            v240 = v239;
            v241 = Logger.logObject.getter();
            v242 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v241, v242))
            {
              v243 = *(v2 + 1568);
              v309 = *(v2 + 1408);
              v244 = *(v2 + 1344);
              v245 = *(v2 + 1216);
              v246 = swift_slowAlloc();
              v247 = swift_slowAlloc();
              *v246 = v311;
              *(v246 + 4) = v245;
              *v247 = v243;
              *(v246 + 12) = 2112;
              v248 = *(v309 + *(v244 + 20));
              *(v246 + 14) = v248;
              v247[1] = v248;
              v249 = v245;
              v250 = v248;
              _os_log_impl(&_mh_execute_header, v241, v242, "[%@][%@] Found marketplace app", v246, 0x16u);
              sub_1001F0C48(&qword_10077F920);
              swift_arrayDestroy();
            }

            v251 = *(v2 + 1576);
            v252 = *(v2 + 1512);
            v253 = *(v2 + 1424);

            v251(v252, v253);
            goto LABEL_120;
          }

LABEL_106:
          v191 = *(v2 + 1216);
          v192 = v1;

          _convertNSErrorToError(_:)();

          swift_willThrow();

          static Logger.restore.getter();
          v193 = v191;
          v194 = Logger.logObject.getter();
          v195 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v194, v195))
          {
            v196 = *(v2 + 1568);
            v296 = *(v2 + 1344);
            v300 = *(v2 + 1408);
            v197 = *(v2 + 1216);
            v198 = swift_slowAlloc();
            v199 = swift_slowAlloc();
            *v198 = v311;
            *(v198 + 4) = v197;
            *v199 = v196;
            *(v198 + 12) = 2112;
            v200 = *(v300 + *(v296 + 20));
            *(v198 + 14) = v200;
            v199[1] = v200;
            v201 = v197;
            v202 = v200;
            _os_log_impl(&_mh_execute_header, v194, v195, "[%@][%@] Could not find marketplace app", v198, 0x16u);
            sub_1001F0C48(&qword_10077F920);
            swift_arrayDestroy();
          }

          v203 = *(v2 + 1576);
          v204 = *(v2 + 1520);
          v205 = *(v2 + 1424);
          v206 = *(v2 + 1408);
          v207 = *(v2 + 1344);

          v203(v204, v205);
          v208 = (v206 + *(v207 + 80));
          v209 = v208[1];
          if (v209)
          {
            v210 = *(v2 + 1408);
            v211 = *(v2 + 1344);
            v212 = (v210 + *(v211 + 84));
            if ((v212[1] & 1) == 0)
            {
              v313 = *v208;
              v213 = *v212;
              v214 = *(*v285 + 16);

              if (v214)
              {
                v215 = sub_10052213C(v302, v4);
                if (v216)
                {
                  v217 = *(*v285 + 56) + 104 * v215;
                  v219 = *(v217 + 16);
                  v218 = *(v217 + 32);
                  *(v2 + 224) = *v217;
                  *(v2 + 240) = v219;
                  *(v2 + 256) = v218;
                  v221 = *(v217 + 64);
                  v220 = *(v217 + 80);
                  v222 = *(v217 + 48);
                  *(v2 + 320) = *(v217 + 96);
                  *(v2 + 288) = v221;
                  *(v2 + 304) = v220;
                  *(v2 + 272) = v222;
                  sub_10046DA84(v2 + 224, v2 + 328);

                  sub_10046DAE0(v2 + 224);
                  v286 = v285;
                  goto LABEL_113;
                }

                v310 = v213;
                v210 = *(v2 + 1408);
                v211 = *(v2 + 1344);
              }

              else
              {
                v310 = v213;
              }

              v271 = *(v2 + 1312);
              v272 = *(v2 + 1304);
              v293 = *(v2 + 1296);
              v273 = (v210 + *(v211 + 76));
              v274 = v273[1];
              v297 = *v273;
              v301 = *(v2 + 1608);

              UUID.init()();
              v275 = UUID.uuidString.getter();
              v277 = v276;
              (*(v272 + 8))(v271, v293);
              *(v2 + 16) = v275;
              *(v2 + 24) = v277;
              *(v2 + 32) = v313;
              *(v2 + 40) = v209;
              *(v2 + 48) = v302;
              *(v2 + 56) = v4;
              *(v2 + 64) = v310;
              *(v2 + 72) = 0;
              *(v2 + 80) = v297;
              *(v2 + 88) = v274;
              *(v2 + 96) = v0;
              *(v2 + 104) = v3;
              *(v2 + 112) = 1;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              sub_1005C2A0C(v2 + 16, v302, v4, isUniquelyReferenced_nonNull_native);

              v189 = 0;
              v190 = v301;
              v110 = v301;
              v188 = v301;
              goto LABEL_131;
            }
          }

LABEL_113:
          v110 = *v286;
          v223 = *(v2 + 1216);
          static Logger.restore.getter();
          v224 = v223;
          v105 = Logger.logObject.getter();
          v225 = static os_log_type_t.error.getter();

          if (!os_log_type_enabled(v105, v225))
          {
            goto LABEL_124;
          }

          v314 = v225;
          v226 = *(v2 + 1568);
          v227 = *(v2 + 1408);
          v228 = *(v2 + 1344);
          v229 = *(v2 + 1216);
          v230 = swift_slowAlloc();
          v231 = swift_slowAlloc();
          *(v2 + 1192) = swift_slowAlloc();
          *v230 = 138413314;
          *(v230 + 4) = v229;
          *v231 = v226;
          *(v230 + 12) = 2112;
          v232 = *(v227 + *(v228 + 20));
          *(v230 + 14) = v232;
          v231[1] = v232;
          *(v230 + 22) = 2080;
          v233 = v229;

          v234 = v232;
          v235 = sub_1002346CC(v302, v4, (v2 + 1192));

          *(v230 + 24) = v235;
          *(v230 + 32) = 2080;
          v236 = (v227 + *(v228 + 80));
          if (v236[1])
          {
            v237 = *v236;
            v238 = v236[1];
          }

          else
          {
            v238 = 0xE200000000000000;
            v237 = 16718;
          }

          v261 = v314;
          v315 = *(v2 + 1576);
          v262 = *(v2 + 1440);
          v304 = *(v2 + 1424);
          v263 = *(v2 + 1408);
          v264 = *(v2 + 1344);

          v265 = sub_1002346CC(v237, v238, (v2 + 1192));

          *(v230 + 34) = v265;
          *(v230 + 42) = 2080;
          v266 = (v263 + *(v264 + 84));
          v267 = *v266;
          LOBYTE(v266) = *(v266 + 8);
          *(v2 + 1160) = v267;
          *(v2 + 1168) = v266;
          sub_1001F0C48(&qword_100784338);
          v268 = String.init<A>(describing:)();
          v270 = sub_1002346CC(v268, v269, (v2 + 1192));

          *(v230 + 44) = v270;
          _os_log_impl(&_mh_execute_header, v105, v261, "[%@][%@] Unable to find distributor details distributorDomain: %s marketplaceDomain: %s marketplaceItemID: %s", v230, 0x34u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();

          swift_arrayDestroy();

          v315(v262, v304);
          goto LABEL_127;
        }

        v67 = *(v2 + 1216);
        static Logger.restore.getter();
        v68 = v67;
        v55 = Logger.logObject.getter();
        v69 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v69))
        {
          v70 = *(v2 + 1568);
          v289 = *(v2 + 1408);
          v71 = *(v2 + 1344);
          v1 = *(v2 + 1216);
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          *v72 = 138412546;
          *(v72 + 4) = v1;
          *v73 = v70;
          *(v72 + 12) = 2112;
          v74 = *(v289 + *(v71 + 20));
          *(v72 + 14) = v74;
          v73[1] = v74;
          v75 = v1;
          v76 = v74;
          _os_log_impl(&_mh_execute_header, v55, v69, "[%@][%@] Could not find accountID for app", v72, 0x16u);
          v20 = (v2 + 1472);
          goto LABEL_4;
        }

        v21 = *(v2 + 1472);
      }

      else
      {
        v57 = *(v2 + 1216);
        static Logger.restore.getter();
        v58 = v57;
        v55 = Logger.logObject.getter();
        v59 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v55, v59))
        {
          v60 = *(v2 + 1568);
          v288 = *(v2 + 1408);
          v61 = *(v2 + 1344);
          v1 = *(v2 + 1216);
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *v62 = 138412546;
          *(v62 + 4) = v1;
          *v63 = v60;
          *(v62 + 12) = 2112;
          v64 = *(v288 + *(v61 + 20));
          *(v62 + 14) = v64;
          v63[1] = v64;
          v65 = v1;
          v66 = v64;
          _os_log_impl(&_mh_execute_header, v55, v59, "[%@][%@] Could not find distributorDomain for app", v62, 0x16u);
          v20 = (v2 + 1464);
          goto LABEL_4;
        }

        v21 = *(v2 + 1464);
      }

LABEL_5:
      v9 &= v9 - 1;
      v0 = *(v2 + 1576);
      v3 = *(v2 + 1424);
      v4 = *(v2 + 1408);

      (v0)(v21, v3);
      sub_1004751E8(v4, type metadata accessor for Restore);
      goto LABEL_6;
    }
  }

  v0 = *(v2 + 1600);

  v284 = v0 + 64;
  v90 = -1 << *(v0 + 32);
  if (-v90 < 64)
  {
    v91 = ~(-1 << -v90);
  }

  else
  {
    v91 = -1;
  }

  v92 = v91 & *(v0 + 64);
  v93 = (63 - v90) >> 6;
  v286 = v0;

  v94 = 0;
  v95 = 0;
  v285 = v93;
  while (1)
  {
    *(v2 + 1808) = v302;
    *(v2 + 1800) = v94;
    if (!v92)
    {
      while (1)
      {
        v96 = v95 + 1;
        if (__OFADD__(v95, 1))
        {
          break;
        }

        if (v96 >= v93)
        {

          if (*(v302 + 2))
          {
            v141 = swift_task_alloc();
            *(v2 + 1816) = v141;
            *v141 = v2;
            v141[1] = sub_100451D54;
            v142 = *(v2 + 1256);
            v143 = *(v2 + 1248);
            v144 = *(v2 + 1240);
            v145 = *(v2 + 1232);
            v146 = *(v2 + 1224);
            v147 = *(v2 + 1216);
            v148 = *(v2 + 425);

            return sub_100452554(v302, v146, v148, v145, v144, v147, v143, v142);
          }

          v150 = *(v2 + 1624);
          v151 = *(v2 + 1240);
          if (*(v150 + 16) && (v151 != 0) | *(v2 + 426) & 1)
          {
            v152 = *(v2 + 1800);
            v153 = *(v2 + 1592);
            v154 = *(v2 + 1264);
            v155 = *(v2 + 1248);
            v295 = *(v2 + 1256);
            v299 = *(v2 + 1224);
            v303 = *(v2 + 1216);
            v308 = *(v2 + 1232);
            v312 = *(v2 + 1208);
            v156 = sub_100440314(v150);

            v157 = v152;

            v158 = type metadata accessor for TaskPriority();
            (*(*(v158 - 8) + 56))(v154, 1, 1, v158);
            sub_100231CE8(v295, v2 + 944);
            sub_10020A980(v299, v2 + 1080);
            v159 = swift_allocObject();
            *(v159 + 16) = 0;
            *(v159 + 24) = 0;
            *(v159 + 32) = v156;
            *(v159 + 40) = v308;
            *(v159 + 48) = v151;
            *(v159 + 56) = v303;
            sub_100231D54((v2 + 944), (v159 + 64));
            *(v159 + 160) = v312;
            sub_1001DFDBC((v2 + 1080), v159 + 168);
            v160 = *(v155 + 32);
            v161 = *(v155 + 16);
            *(v159 + 208) = *v155;
            *(v159 + 224) = v161;
            *(v159 + 240) = v160;

            v162 = v303;
            v163 = &unk_1006AC2C8;
            v164 = v154;
            goto LABEL_89;
          }

          v157 = *(v2 + 1800);
          v153 = *(v2 + 1592);
          if (*(v150 + 16))
          {
            v165 = *(v2 + 1264);
            v166 = *(v2 + 1256);
            v167 = *(v2 + 1248);
            v168 = *(v2 + 1224);
            v169 = *(v2 + 1216);
            v170 = *(v2 + 1208);
            v171 = type metadata accessor for TaskPriority();
            (*(*(v171 - 8) + 56))(v165, 1, 1, v171);
            sub_100231CE8(v166, v2 + 848);
            sub_10020A980(v168, v2 + 1040);
            v159 = swift_allocObject();
            *(v159 + 16) = 0;
            *(v159 + 24) = 0;
            *(v159 + 32) = v170;
            sub_100231D54((v2 + 848), (v159 + 40));
            *(v159 + 136) = v169;
            sub_1001DFDBC((v2 + 1040), v159 + 144);
            v172 = *(v167 + 32);
            v173 = *(v167 + 16);
            *(v159 + 184) = *v167;
            *(v159 + 200) = v173;
            *(v159 + 216) = v172;
            v174 = v169;

            v163 = &unk_1006AC2B8;
            v164 = v165;
LABEL_89:
            sub_1004A673C(0, 0, v164, v163, v159);
          }

          sub_1001DFE6C(v153);
          sub_1001DFE6C(v157);

          v175 = *(v2 + 8);

          return v175();
        }

        v92 = *(v284 + 8 * v96);
        ++v95;
        if (v92)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_117;
    }

    v96 = v95;
LABEL_39:
    v290 = v96;
    v291 = v92;
    v97 = __clz(__rbit64(v92)) | (v96 << 6);
    v98 = v286[6] + 104 * v97;
    v99 = *v98;
    v100 = *(v98 + 32);
    *(v2 + 448) = *(v98 + 16);
    *(v2 + 464) = v100;
    *(v2 + 432) = v99;
    v101 = *(v98 + 48);
    v102 = *(v98 + 64);
    v103 = *(v98 + 80);
    *(v2 + 528) = *(v98 + 96);
    *(v2 + 496) = v102;
    *(v2 + 512) = v103;
    *(v2 + 480) = v101;
    v11 = *(v286[7] + 8 * v97);
    v311 = *(v11 + 16);
    if (v311)
    {
      break;
    }

    v307 = v94;
    sub_10046DA84(v2 + 432, v2 + 744);
LABEL_63:
    v129 = 0;
    v292 = (v291 - 1) & v291;
    v4 = &_swiftEmptyDictionarySingleton[8];
    v130 = -1 << LOBYTE(_swiftEmptyDictionarySingleton[4]);
    if (-v130 < 64)
    {
      v131 = ~(-1 << -v130);
    }

    else
    {
      v131 = -1;
    }

    v132 = v131 & _swiftEmptyDictionarySingleton[8];
    for (i = (63 - v130) >> 6; v132; *(v140 + 19) = v3)
    {
LABEL_71:
      v135 = __clz(__rbit64(v132)) | (v129 << 6);
      v136 = (_swiftEmptyDictionarySingleton[6] + 16 * v135);
      v137 = *v136;
      v138 = v136[1];
      v3 = *(_swiftEmptyDictionarySingleton[7] + 8 * v135);
      sub_10046DA84(v2 + 432, v2 + 640);

      v311 = v137;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v302 = sub_100363F78(0, *(v302 + 2) + 1, 1, v302);
      }

      v0 = *(v302 + 2);
      v139 = *(v302 + 3);
      v11 = v0 + 1;
      if (v0 >= v139 >> 1)
      {
        v302 = sub_100363F78((v139 > 1), v0 + 1, 1, v302);
      }

      v132 &= v132 - 1;
      v322 = *(v2 + 528);
      v320 = *(v2 + 496);
      v321 = *(v2 + 512);
      v318 = *(v2 + 464);
      v319 = *(v2 + 480);
      v316 = *(v2 + 432);
      v317 = *(v2 + 448);
      *(v302 + 2) = v11;
      v140 = &v302[128 * v0];
      *(v140 + 4) = v311;
      *(v140 + 5) = v138;
      *(v140 + 4) = v317;
      *(v140 + 5) = v318;
      *(v140 + 3) = v316;
      v140[144] = v322;
      *(v140 + 7) = v320;
      *(v140 + 8) = v321;
      *(v140 + 6) = v319;
    }

    while (1)
    {
      v134 = v129 + 1;
      if (__OFADD__(v129, 1))
      {
        __break(1u);
        goto LABEL_98;
      }

      if (v134 >= i)
      {
        break;
      }

      v132 = *&v4[8 * v134];
      ++v129;
      if (v132)
      {
        v129 = v134;
        goto LABEL_71;
      }
    }

    sub_10046DAE0(v2 + 432);

    v95 = v290;
    v92 = v292;
    v93 = v285;
    v94 = v307;
  }

  v104 = *(*(v2 + 1352) + 80);
  v294 = (v104 + 32) & ~v104;
  v306 = (v11 + v294);
  sub_10046DA84(v2 + 432, v2 + 536);

  v1 = 0;
  v105 = _swiftEmptyDictionarySingleton;
  v298 = v11;
  while (1)
  {
    if (v1 >= *(v11 + 16))
    {
      __break(1u);
      goto LABEL_100;
    }

    v106 = *(v2 + 1368);
    v0 = *(v2 + 1344);
    v3 = *(*(v2 + 1352) + 72);
    sub_100007CE8(&v306[v3 * v1], v106, type metadata accessor for Restore);
    v107 = (v106 + *(v0 + 56));
    v108 = v107[1];
    v109 = *(v2 + 1368);
    if (v108)
    {
      break;
    }

    sub_1004751E8(v109, type metadata accessor for Restore);
LABEL_42:
    if (v311 == ++v1)
    {
      v307 = v94;

      goto LABEL_63;
    }
  }

  v110 = *v107;
  sub_100007CE8(v109, *(v2 + 1360), type metadata accessor for Restore);

  sub_1001DFE6C(v94);
  v111 = swift_isUniquelyReferenced_nonNull_native();
  v113 = sub_10052213C(v110, v108);
  v114 = _swiftEmptyDictionarySingleton[2];
  v115 = (v112 & 1) == 0;
  v116 = v114 + v115;
  if (__OFADD__(v114, v115))
  {
    goto LABEL_105;
  }

  v117 = v112;
  if (_swiftEmptyDictionarySingleton[3] >= v116)
  {
    if (v111)
    {
      if ((v112 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    else
    {
      sub_1005C6388();
      if ((v117 & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    goto LABEL_52;
  }

  sub_1005BE0C4(v116, v111);
  v118 = sub_10052213C(v110, v108);
  if ((v117 & 1) != (v119 & 1))
  {

    return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  }

  v113 = v118;
  if (v117)
  {
LABEL_52:

LABEL_56:
    v4 = _swiftEmptyDictionarySingleton[7];
    v124 = *&v4[8 * v113];
    v125 = swift_isUniquelyReferenced_nonNull_native();
    *&v4[8 * v113] = v124;
    if ((v125 & 1) == 0)
    {
      v124 = sub_100363E00(0, v124[2] + 1, 1, v124);
      *&v4[8 * v113] = v124;
    }

    v0 = v124[2];
    v126 = v124[3];
    if (v0 >= v126 >> 1)
    {
      *&v4[8 * v113] = sub_100363E00(v126 > 1, v0 + 1, 1, v124);
    }

    v127 = *(v2 + 1360);
    sub_1004751E8(*(v2 + 1368), type metadata accessor for Restore);
    v128 = *&v4[8 * v113];
    *(v128 + 16) = v0 + 1;
    sub_1004640D8(v127, v128 + v294 + v0 * v3);
    v94 = sub_100475384;
    v11 = v298;
    goto LABEL_42;
  }

LABEL_54:
  _swiftEmptyDictionarySingleton[(v113 >> 6) + 8] |= 1 << v113;
  v120 = (_swiftEmptyDictionarySingleton[6] + 16 * v113);
  *v120 = v110;
  v120[1] = v108;
  *(_swiftEmptyDictionarySingleton[7] + 8 * v113) = _swiftEmptyArrayStorage;
  v121 = _swiftEmptyDictionarySingleton[2];
  v122 = __OFADD__(v121, 1);
  v123 = v121 + 1;
  if (!v122)
  {
    _swiftEmptyDictionarySingleton[2] = v123;
    goto LABEL_56;
  }

  __break(1u);
LABEL_124:
  v258 = *(v2 + 1576);
  v259 = *(v2 + 1440);
  v260 = *(v2 + 1424);

  v258(v259, v260);
LABEL_127:
  v189 = 0;
  v188 = *(v2 + 1624);
  v190 = *(v2 + 1608);
LABEL_131:
  *(v2 + 1752) = v188;
  *(v2 + 1744) = v110;
  *(v2 + 1736) = v190;
  *(v2 + 1728) = v189;
  v279 = *(v2 + 1408);
  v280 = *(v2 + 1392);
  v281 = *(v2 + 1208);
  *(v279 + *(*(v2 + 1344) + 44)) = 2;
  sub_100007CE8(v279, v280, type metadata accessor for Restore);
  v282 = *(v281 + 16);
  *(v2 + 1760) = v282;

  return _swift_task_switch(sub_10044D214, v282, 0);
}

uint64_t sub_10044F20C()
{
  static Logger.restore.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138543362;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to save checkpoint: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = v1;
  v7 = v0[197];
  v8 = v0[188];
  v9 = v0[178];
  v10 = v0[174];

  v7(v8, v9);
  swift_willThrow();

  sub_1004751E8(v10, type metadata accessor for Restore);

  v11 = v0[199];
  sub_1004751E8(v0[176], type metadata accessor for Restore);

  sub_1001DFE6C(v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_10044F594()
{
  v2 = *v1;
  *(*v1 + 1792) = v0;

  if (v0)
  {
    v3 = *(v2 + 1384);

    sub_1004751E8(v3, type metadata accessor for Restore);

    v4 = sub_100452314;
  }

  else
  {
    sub_1004751E8(*(v2 + 1384), type metadata accessor for Restore);
    v4 = sub_10044F76C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_10044F76C()
{
  v441 = v0;
  v1 = *(v0 + 529);
  v2 = *(v0 + 1720);
  v426 = *(v0 + 1712);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 1680);
  v5 = *(v0 + 1312);
  v6 = *(v0 + 1304);
  v7 = *(v0 + 1296);

  UUID.init()();
  v8 = UUID.uuidString.getter();
  v10 = v9;
  (*(v6 + 8))(v5, v7);
  *(v0 + 120) = v8;
  LOBYTE(v434) = 1;
  v11 = v0 + 16;
  v401 = v0 + 432;
  v404 = v0 + 120;
  i = (v0 + 1184);
  v419 = v10;
  *(v0 + 128) = v10;
  *(v0 + 136) = v4;
  *(v0 + 144) = v3;
  *(v0 + 152) = v426;
  *(v0 + 160) = v2;
  *(v0 + 168) = 0;
  *(v0 + 176) = 1;
  *(v0 + 184) = 0u;
  *(v0 + 200) = 0u;
  *(v0 + 216) = v1;
  v433 = v0;
  if ((v1 & 1) == 0)
  {
    v43 = *(v0 + 1592);
    v44 = *(v0 + 1584);
    sub_100007CE8(*(v0 + 1408), *(v0 + 1376), type metadata accessor for Restore);
    sub_1001DFE6C(v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 1200) = v44;
    v46 = v44;
    v48 = sub_100523054((v0 + 120));
    v49 = v44[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      __break(1u);
    }

    else
    {
      v52 = v47;
      v1 = v0;
      if (*(*(v0 + 1584) + 24) >= v51)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1005C64FC();
        }
      }

      else
      {
        sub_1005BE0D8(v51, isUniquelyReferenced_nonNull_native);
        v53 = sub_100523054((v0 + 120));
        if ((v52 & 1) != (v54 & 1))
        {
LABEL_94:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

        v48 = v53;
      }

      v4 = *(v0 + 1200);
      if (v52)
      {
        sub_10046DAE0(v0 + 120);
      }

      else
      {
        sub_1005C3694(v48, v0 + 120, _swiftEmptyArrayStorage, *(v0 + 1200));
      }

      v0 = *(v4 + 56);
      v46 = *(v0 + 8 * v48);
      v217 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 8 * v48) = v46;
      if (v217)
      {
LABEL_107:
        v219 = v46[2];
        v218 = v46[3];
        v386 = v11;
        if (v219 >= v218 >> 1)
        {
          v46 = sub_100363E00(v218 > 1, v219 + 1, 1, v46);
          *(v0 + 8 * v48) = v46;
        }

        v220 = *(v1 + 1664);
        v221 = *(v1 + 1376);
        v222 = *(v1 + 1352);
        v223 = *(v1 + 1216);
        v46[2] = v219 + 1;
        sub_1004640D8(v221, v46 + ((*(v222 + 80) + 32) & ~*(v222 + 80)) + v220 * v219);
        static Logger.restore.getter();
        v224 = v223;

        v225 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();

        v226 = os_log_type_enabled(v225, v31);
        v227 = *(v1 + 1720);
        if (v226)
        {
          v415 = *(v1 + 1576);
          v228 = *(v1 + 1568);
          v410 = *(v1 + 1488);
          v393 = *(v1 + 1712);
          v399 = *(v1 + 1424);
          v229 = *(v1 + 1408);
          v230 = *(v1 + 1344);
          v231 = *(v1 + 1216);
          v431 = v4;
          v232 = swift_slowAlloc();
          v233 = swift_slowAlloc();
          v234 = swift_slowAlloc();
          *&v434 = v234;
          *v232 = 138412802;
          *(v232 + 4) = v231;
          *v233 = v228;
          *(v232 + 12) = 2112;
          v235 = *(v229 + *(v230 + 20));
          *(v232 + 14) = v235;
          v233[1] = v235;
          *(v232 + 22) = 2080;
          v236 = v231;
          v237 = v235;
          v42 = sub_1002346CC(v393, v227, &v434);

          *(v232 + 24) = v42;
          _os_log_impl(&_mh_execute_header, v225, v31, "[%@][%@] Added candidate with distributorID: %s", v232, 0x20u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();

          sub_10000710C(v234);
          v1 = v433;

          v4 = v431;

          v415(v410, v399);
          v238 = v229;
        }

        else
        {
          v239 = *(v1 + 1576);
          v42 = *(v1 + 1488);
          v240 = *(v1 + 1424);
          v241 = *(v1 + 1408);

          v239(v42, v240);
          v238 = v241;
        }

        sub_1004751E8(v238, type metadata accessor for Restore);
        v57 = *(v1 + 1792);
        v242 = sub_100475384;
        v243 = v4;
        v60 = v404;
LABEL_113:
        v58 = *(v1 + 1656);
        v59 = (*(v1 + 1648) - 1) & *(v1 + 1648);
        v61 = *(v1 + 1640);
        *(v1 + 1600) = v243;
        *(v1 + 1592) = v242;
        *(v1 + 1584) = v4;
        goto LABEL_14;
      }
    }

    v46 = sub_100363E00(0, v46[2] + 1, 1, v46);
    *(v0 + 8 * v48) = v46;
    goto LABEL_107;
  }

  v12 = v1;
  v386 = v0 + 16;
  v13 = *(v0 + 1408);
  v14 = *(v0 + 1352);

  sub_1001F0C48(&unk_100784340);
  v15 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_10069E680;
  sub_100007CE8(v13, v16 + v15, type metadata accessor for Restore);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v0 + 1640);
  if ((v17 & 1) == 0)
  {
    v18 = sub_100363F78(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  v4 = v20 + 1;
  if (v20 >= v19 >> 1)
  {
    v413 = sub_100363F78((v19 > 1), v20 + 1, 1, v18);
  }

  else
  {
    v413 = v18;
  }

  v21 = *(v0 + 1720);
  v22 = *(v0 + 1712);
  v23 = *(v0 + 1704);
  v24 = *(v0 + 1696);
  v25 = *(v0 + 1688);
  v26 = *(v0 + 1680);
  v27 = *(v0 + 1216);
  *(v0 + 217) = *(v0 + 113);
  *(v0 + 220) = *(v0 + 116);
  *(v413 + 2) = v4;
  v28 = &v413[128 * v20];
  *(v28 + 4) = v23;
  *(v28 + 5) = v24;
  *(v28 + 6) = v8;
  *(v28 + 7) = v419;
  *(v28 + 8) = v26;
  *(v28 + 9) = v25;
  *(v28 + 10) = v22;
  *(v28 + 11) = v21;
  *(v28 + 12) = 0;
  v28[104] = 1;
  LODWORD(v21) = *(v0 + 217);
  *(v28 + 27) = *(v0 + 220);
  *(v28 + 105) = v21;
  *(v28 + 7) = 0u;
  *(v28 + 8) = 0u;
  v28[144] = v12;
  LODWORD(v21) = *(v0 + 321);
  *(v28 + 37) = *(v0 + 324);
  *(v28 + 145) = v21;
  *(v28 + 19) = v16;
  static Logger.restore.getter();
  v29 = v27;

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  v1 = v0;

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 1688);
  if (v32)
  {
    v420 = *(v0 + 1576);
    v388 = *(v0 + 1568);
    v390 = *(v0 + 1680);
    v406 = *(v0 + 1496);
    v395 = *(v0 + 1424);
    v34 = *(v0 + 1408);
    v35 = *(v0 + 1344);
    v36 = *(v0 + 1216);
    v4 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *&v434 = v38;
    *v4 = 138412802;
    *(v4 + 4) = v36;
    *v37 = v388;
    *(v4 + 12) = 2112;
    v39 = *(v34 + *(v35 + 20));
    *(v4 + 14) = v39;
    v37[1] = v39;
    *(v4 + 22) = 2080;
    v40 = v36;
    v41 = v39;
    v42 = sub_1002346CC(v390, v33, &v434);

    *(v4 + 24) = v42;
    _os_log_impl(&_mh_execute_header, v30, v31, "[%@][%@] Added candidate with distributorDomain: %s", v4, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v38);

    v420(v406, v395);
  }

  else
  {
    v55 = *(v0 + 1576);
    v42 = *(v0 + 1496);
    v56 = *(v0 + 1424);
    v34 = *(v0 + 1408);

    v55(v42, v56);
  }

  sub_1004751E8(v34, type metadata accessor for Restore);
  v57 = *(v433 + 1792);
  v58 = *(v433 + 1656);
  v59 = (*(v433 + 1648) - 1) & *(v433 + 1648);
  v60 = v404;
  v61 = v413;
LABEL_14:
  *(v1 + 1640) = v61;
  *(v1 + 1632) = v57;
  v407 = (v1 + 1480);
  v414 = v61;
  v389 = v57;
  v391 = (v1 + 1472);
  v396 = (v1 + 1464);
  v62 = 1;
  LODWORD(v421) = 138412546;
  if (v59)
  {
LABEL_15:
    v1 = v433;
    v63 = *(v433 + 1552);
    goto LABEL_21;
  }

LABEL_16:
  v1 = v433;
  while (1)
  {
    v64 = v58 + 1;
    if (__OFADD__(v58, 1))
    {
      __break(1u);
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    if (v64 >= (((1 << *(v433 + 427)) + 63) >> 6))
    {
      break;
    }

    v63 = *(v433 + 1552);
    v59 = *(v63 + 8 * v64 + 64);
    ++v58;
    if (v59)
    {
      v58 = v64;
LABEL_21:
      *(v1 + 1656) = v58;
      *(v1 + 1648) = v59;
      v65 = *(v1 + 1416);
      v66 = *(v1 + 1408);
      v67 = *(v1 + 1344);
      v68 = *(v63 + 56);
      v69 = *(*(v1 + 1352) + 72);
      *(v1 + 1664) = v69;
      sub_100007CE8(v68 + v69 * (__clz(__rbit64(v59)) | (v58 << 6)), v65, type metadata accessor for Restore);
      sub_1004640D8(v65, v66);
      swift_beginAccess();
      if ((*(v66 + *(v67 + 44)) | 2) == 2)
      {
        v70 = *(v1 + 1216);
        static Logger.restore.getter();
        v71 = v70;
        v72 = Logger.logObject.getter();
        v73 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = *(v1 + 1568);
          v427 = *(v1 + 1408);
          v75 = *(v1 + 1344);
          v76 = *(v1 + 1216);
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *v77 = 138412546;
          *(v77 + 4) = v76;
          *v78 = v74;
          *(v77 + 12) = 2112;
          v79 = *(v427 + *(v75 + 20));
          *(v77 + 14) = v79;
          v78[1] = v79;
          v80 = v76;
          v81 = v79;
          _os_log_impl(&_mh_execute_header, v72, v73, "[%@][%@] Moved to bootstrapping", v77, 0x16u);
          sub_1001F0C48(&qword_10077F920);
          swift_arrayDestroy();
        }

        v82 = *(v1 + 1576);
        v83 = *(v1 + 1560);
        v84 = *(v1 + 1528);
        v4 = *(v1 + 1424);
        v85 = *(v1 + 1408);
        v86 = *(v1 + 1344);

        *(v1 + 1672) = v83 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v82(v84, v4);
        v87 = (v85 + *(v86 + 48));
        *(v1 + 1680) = *v87;
        v88 = v87[1];
        *(v1 + 1688) = v88;
        if (v88)
        {
          v89 = *(v1 + 1408);
          v90 = *(v1 + 1344);
          v91 = (v89 + v90[14]);
          v4 = v91[1];
          *(v1 + 1696) = v4;
          if (v4)
          {
            v62 = *v91;
            *(v1 + 1704) = *v91;
            v92 = (v89 + v90[13]);
            v31 = *v92;
            *(v1 + 1712) = *v92;
            v60 = v1;
            v1 = v92[1];
            v60[215] = v1;
            if (!v1)
            {
              v93 = v60[152];
              static Logger.restore.getter();
              v94 = v93;
              v95 = Logger.logObject.getter();
              v96 = static os_log_type_t.default.getter();

              v1 = v60;
              if (os_log_type_enabled(v95, v96))
              {
                v97 = v60[196];
                v98 = v60[176];
                v99 = v60[168];
                v100 = *(v1 + 1216);
                v101 = swift_slowAlloc();
                v4 = swift_slowAlloc();
                *v101 = 138412546;
                *(v101 + 4) = v100;
                *v4 = v97;
                *(v101 + 12) = 2112;
                v102 = *(v98 + *(v99 + 20));
                *(v101 + 14) = v102;
                *(v4 + 8) = v102;
                v103 = v100;
                v104 = v102;
                _os_log_impl(&_mh_execute_header, v95, v96, "[%@][%@] Could not find distributorID for app", v101, 0x16u);
                v105 = v407;
                goto LABEL_33;
              }

              v128 = v407;
LABEL_37:
              v31 = *v128;
LABEL_38:
              v60 = v404;
              v62 = 1;
              v59 &= v59 - 1;
              v129 = *(v1 + 1576);
              v42 = *(v1 + 1424);
              v130 = *(v1 + 1408);

              v129(v31, v42);
              sub_1004751E8(v130, type metadata accessor for Restore);
              if (v59)
              {
                goto LABEL_15;
              }

              goto LABEL_16;
            }

            v272 = v60[175];
            sub_100007CE8(v89, v272, type metadata accessor for Restore);
            v273 = (v272 + v90[13]);
            v274 = v273[1];
            if (v274)
            {
              v275 = *v273;
              v276 = (v272 + v90[9]);
              if (v275 == *v276 && v274 == v276[1])
              {
                v277 = v433;
                *(v433 + 529) = 1;
                v278 = *(v433 + 1400);

                sub_1004751E8(v278, type metadata accessor for Restore);
LABEL_145:
                v332 = v277[176];
                v333 = v277[173];
                *(v332 + *(v277[168] + 44)) = 1;
                sub_100007CE8(v332, v333, type metadata accessor for Restore);
                v334 = swift_task_alloc();
                v277[223] = v334;
                *v334 = v277;
                v334[1] = sub_10044F594;
                v335 = v277[173];

                return sub_100445810(v335);
              }

LABEL_130:
              v280 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v277 = v433;
              *(v433 + 529) = v280 & 1;
              v281 = *(v433 + 1400);

              sub_1004751E8(v281, type metadata accessor for Restore);
              if (v280)
              {
                goto LABEL_145;
              }
            }

            else
            {
LABEL_128:
              *(v60 + 529) = 0;
              v279 = v60[175];

              sub_1004751E8(v279, type metadata accessor for Restore);
            }

            v282 = objc_allocWithZone(LSApplicationRecord);
            v283 = String._bridgeToObjectiveC()();
            *i = 0;
            v60 = [v282 initWithBundleIdentifier:v283 allowPlaceholder:0 error:i];

            v42 = *i;
            if (v60)
            {
              v284 = v42;
              if ([v60 isPlaceholder])
              {

                v285 = v433;
                v286 = *(v433 + 1624);
                v287 = *(v433 + 1616);
                v288 = *(v433 + 1608);
                v289 = v389;
LABEL_162:
                v285[219] = v286;
                v285[218] = v287;
                v285[217] = v288;
                v285[216] = v289;
                v382 = v285[176];
                v383 = v285[174];
                v384 = v285[151];
                *(v382 + *(v285[168] + 44)) = 2;
                sub_100007CE8(v382, v383, type metadata accessor for Restore);
                v385 = *(v384 + 16);
                v285[220] = v385;

                return _swift_task_switch(sub_10044D214, v385, 0);
              }

LABEL_142:
              v314 = v433;
              v315 = *(v433 + 1216);
              static Logger.restore.getter();
              v316 = v315;
              v317 = Logger.logObject.getter();
              v318 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v317, v318))
              {
                v319 = *(v433 + 1568);
                v320 = *(v433 + 1408);
                v321 = *(v433 + 1344);
                v322 = *(v433 + 1216);
                v323 = swift_slowAlloc();
                v324 = swift_slowAlloc();
                *v323 = v421;
                *(v323 + 4) = v322;
                *v324 = v319;
                *(v323 + 12) = 2112;
                v325 = *(v321 + 20);
                v314 = v433;
                v326 = *(v320 + v325);
                *(v323 + 14) = v326;
                v324[1] = v326;
                v327 = v322;
                v328 = v326;
                _os_log_impl(&_mh_execute_header, v317, v318, "[%@][%@] Found marketplace app", v323, 0x16u);
                sub_1001F0C48(&qword_10077F920);
                swift_arrayDestroy();
              }

              v329 = v314[197];
              v330 = v314[189];
              v331 = v314[178];

              v329(v330, v331);
              v277 = v314;
              goto LABEL_145;
            }

LABEL_136:
            v290 = *(v433 + 1216);
            v291 = v42;

            _convertNSErrorToError(_:)();

            swift_willThrow();

            static Logger.restore.getter();
            v292 = v290;
            v293 = Logger.logObject.getter();
            v294 = static os_log_type_t.default.getter();

            if (os_log_type_enabled(v293, v294))
            {
              v295 = *(v433 + 1568);
              v411 = *(v433 + 1344);
              v416 = *(v433 + 1408);
              v296 = *(v433 + 1216);
              v297 = swift_slowAlloc();
              v298 = swift_slowAlloc();
              *v297 = v421;
              *(v297 + 4) = v296;
              *v298 = v295;
              *(v297 + 12) = 2112;
              v299 = *(v416 + *(v411 + 20));
              *(v297 + 14) = v299;
              v298[1] = v299;
              v300 = v296;
              v301 = v299;
              _os_log_impl(&_mh_execute_header, v293, v294, "[%@][%@] Could not find marketplace app", v297, 0x16u);
              sub_1001F0C48(&qword_10077F920);
              swift_arrayDestroy();
            }

            v302 = *(v433 + 1576);
            v303 = *(v433 + 1520);
            v304 = *(v433 + 1424);
            v305 = *(v433 + 1408);
            v306 = *(v433 + 1344);

            v302(v303, v304);
            v307 = (v305 + *(v306 + 80));
            v308 = v307[1];
            if (v308)
            {
              v309 = v433;
              v310 = *(v433 + 1408);
              v311 = *(v433 + 1344);
              v312 = (v310 + *(v311 + 84));
              if (*(v312 + 8) == 1)
              {
                v313 = (v433 + 1616);
                goto LABEL_153;
              }

              v423 = *v307;
              v336 = *v312;
              v337 = *(*(v433 + 1624) + 16);

              if (v337)
              {
                v338 = sub_10052213C(v31, v1);
                if (v339)
                {
                  v309 = v433;
                  v313 = (v433 + 1624);
                  v340 = *(*(v433 + 1624) + 56) + 104 * v338;
                  v342 = *(v340 + 16);
                  v341 = *(v340 + 32);
                  *(v404 + 104) = *v340;
                  *(v404 + 120) = v342;
                  *(v404 + 136) = v341;
                  v344 = *(v340 + 64);
                  v343 = *(v340 + 80);
                  v345 = *(v340 + 96);
                  *(v404 + 152) = *(v340 + 48);
                  *(v404 + 200) = v345;
                  *(v404 + 184) = v343;
                  *(v404 + 168) = v344;
                  sub_10046DA84(v404 + 104, v404 + 208);

                  sub_10046DAE0(v404 + 104);
LABEL_153:
                  v287 = *v313;
                  v346 = v309[152];
                  static Logger.restore.getter();
                  v347 = v346;
                  v348 = Logger.logObject.getter();
                  v349 = static os_log_type_t.error.getter();

                  if (os_log_type_enabled(v348, v349))
                  {
                    v417 = v349;
                    v424 = v348;
                    v350 = v309[196];
                    v351 = v309[176];
                    v352 = v309[168];
                    v353 = v309[152];
                    v354 = swift_slowAlloc();
                    v355 = swift_slowAlloc();
                    v309[149] = swift_slowAlloc();
                    *v354 = 138413314;
                    *(v354 + 4) = v353;
                    *v355 = v350;
                    *(v354 + 12) = 2112;
                    v356 = *(v351 + *(v352 + 20));
                    *(v354 + 14) = v356;
                    v355[1] = v356;
                    *(v354 + 22) = 2080;
                    v357 = v353;

                    v358 = v356;
                    v359 = sub_1002346CC(v31, v1, (v404 + 1072));

                    *(v354 + 24) = v359;
                    *(v354 + 32) = 2080;
                    v360 = (v351 + *(v352 + 80));
                    if (v360[1])
                    {
                      v361 = *v360;
                      v362 = v360[1];
                    }

                    else
                    {
                      v362 = 0xE200000000000000;
                      v361 = 16718;
                    }

                    v366 = v424;
                    v425 = *(v433 + 1576);
                    v394 = *(v433 + 1440);
                    v400 = *(v433 + 1424);
                    v367 = *(v433 + 1408);
                    v368 = *(v433 + 1344);

                    v369 = sub_1002346CC(v361, v362, (v404 + 1072));

                    *(v354 + 34) = v369;
                    *(v354 + 42) = 2080;
                    v370 = (v367 + *(v368 + 84));
                    v371 = *v370;
                    LOBYTE(v370) = *(v370 + 8);
                    *(v433 + 1160) = v371;
                    *(v433 + 1168) = v370;
                    sub_1001F0C48(&qword_100784338);
                    v372 = String.init<A>(describing:)();
                    v374 = sub_1002346CC(v372, v373, (v404 + 1072));

                    *(v354 + 44) = v374;
                    _os_log_impl(&_mh_execute_header, v366, v417, "[%@][%@] Unable to find distributor details distributorDomain: %s marketplaceDomain: %s marketplaceItemID: %s", v354, 0x34u);
                    sub_1001F0C48(&qword_10077F920);
                    swift_arrayDestroy();

                    swift_arrayDestroy();

                    v285 = v433;
                    v425(v394, v400);
                    v289 = 0;
                    v286 = *(v433 + 1624);
                    v288 = *(v433 + 1608);
                  }

                  else
                  {
                    v363 = v309[197];
                    v364 = v309[180];
                    v365 = v309[178];

                    v363(v364, v365);
                    v289 = 0;
                    v286 = v309[203];
                    v288 = v309[201];
                    v285 = v309;
                  }

                  goto LABEL_162;
                }

                v432 = v336;
                v285 = v433;
                v310 = *(v433 + 1408);
                v311 = *(v433 + 1344);
              }

              else
              {
                v432 = v336;
                v285 = v433;
              }

              v375 = v285[164];
              v376 = v285[163];
              v377 = (v310 + *(v311 + 76));
              v412 = *v377;
              v418 = v285[201];
              v403 = v285[162];
              v405 = v377[1];

              UUID.init()();
              v378 = UUID.uuidString.getter();
              v380 = v379;
              (*(v376 + 8))(v375, v403);
              LOBYTE(v434) = 0;
              v285[2] = v378;
              v285[3] = v380;
              v285[4] = v423;
              v285[5] = v308;
              v285[6] = v31;
              v285[7] = v1;
              v285[8] = v432;
              *(v285 + 72) = 0;
              v285[10] = v412;
              v285[11] = v405;
              v285[12] = v62;
              v285[13] = v4;
              *(v285 + 112) = 1;
              v381 = swift_isUniquelyReferenced_nonNull_native();
              *&v434 = v418;
              sub_1005C2A0C(v386, v31, v1, v381);

              v289 = 0;
              v288 = v434;
              v287 = v434;
              v286 = v434;
              goto LABEL_162;
            }

LABEL_149:
            v309 = v433;
            v313 = (v433 + 1616);
            goto LABEL_153;
          }

          v117 = *(v1 + 1216);
          static Logger.restore.getter();
          v118 = v117;
          v95 = Logger.logObject.getter();
          v119 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v95, v119))
          {
            v128 = v391;
            goto LABEL_37;
          }

          v120 = *(v1 + 1568);
          v121 = *(v1 + 1408);
          v122 = *(v1 + 1344);
          v123 = *(v1 + 1216);
          v124 = swift_slowAlloc();
          v4 = swift_slowAlloc();
          *v124 = 138412546;
          *(v124 + 4) = v123;
          *v4 = v120;
          *(v124 + 12) = 2112;
          v125 = *(v121 + *(v122 + 20));
          *(v124 + 14) = v125;
          *(v4 + 8) = v125;
          v126 = v123;
          v127 = v125;
          _os_log_impl(&_mh_execute_header, v95, v119, "[%@][%@] Could not find accountID for app", v124, 0x16u);
          v105 = v391;
        }

        else
        {
          v106 = *(v1 + 1216);
          static Logger.restore.getter();
          v107 = v106;
          v95 = Logger.logObject.getter();
          v108 = static os_log_type_t.default.getter();

          if (!os_log_type_enabled(v95, v108))
          {
            v128 = v396;
            goto LABEL_37;
          }

          v109 = *(v1 + 1568);
          v110 = *(v1 + 1408);
          v111 = *(v1 + 1344);
          v112 = *(v1 + 1216);
          v113 = swift_slowAlloc();
          v4 = swift_slowAlloc();
          *v113 = 138412546;
          *(v113 + 4) = v112;
          *v4 = v109;
          *(v113 + 12) = 2112;
          v114 = *(v110 + *(v111 + 20));
          *(v113 + 14) = v114;
          *(v4 + 8) = v114;
          v115 = v112;
          v116 = v114;
          _os_log_impl(&_mh_execute_header, v95, v108, "[%@][%@] Could not find distributorDomain for app", v113, 0x16u);
          v105 = v396;
        }

LABEL_33:
        v31 = *v105;
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();

        v1 = v433;
        goto LABEL_38;
      }

      v256 = *(v1 + 1216);
      static Logger.restore.getter();
      v257 = v256;
      v258 = Logger.logObject.getter();
      v259 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v258, v259))
      {
        v260 = *(v1 + 1568);
        v261 = *(v1 + 1408);
        v262 = *(v1 + 1344);
        v263 = *(v433 + 1216);
        v264 = swift_slowAlloc();
        v265 = swift_slowAlloc();
        *v264 = 138412546;
        *(v264 + 4) = v263;
        *v265 = v260;
        *(v264 + 12) = 2112;
        v266 = *(v261 + *(v262 + 20));
        *(v264 + 14) = v266;
        v265[1] = v266;
        v267 = v263;
        v1 = v433;
        v268 = v266;
        _os_log_impl(&_mh_execute_header, v258, v259, "[%@][%@] Already bootstrapping", v264, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      v269 = *(v1 + 1576);
      v42 = *(v1 + 1456);
      v270 = *(v1 + 1424);
      v271 = *(v1 + 1408);

      v269(v42, v270);
      sub_1004751E8(v271, type metadata accessor for Restore);
      v243 = *(v1 + 1600);
      v242 = *(v1 + 1592);
      v4 = *(v1 + 1584);
      v60 = v404;
      v57 = v389;
      goto LABEL_113;
    }
  }

  v131 = *(v433 + 1600);

  v386 = v131 + 64;
  v132 = -1 << *(v131 + 32);
  if (-v132 < 64)
  {
    v133 = ~(-1 << -v132);
  }

  else
  {
    v133 = -1;
  }

  v397 = v133 & *(v131 + 64);
  v134 = (63 - v132) >> 6;
  v389 = v131;

  v4 = 0;
  v135 = 0;
  for (i = v134; ; v134 = i)
  {
    *(v1 + 1808) = v414;
    *(v1 + 1800) = v4;
    v136 = v397;
    if (!v397)
    {
      break;
    }

    v137 = v135;
    v138 = v401;
LABEL_51:
    v392 = v137;
    v398 = v136;
    v139 = __clz(__rbit64(v136)) | (v137 << 6);
    v140 = *(v389 + 48) + 104 * v139;
    v141 = *v140;
    v142 = *(v140 + 32);
    *(v138 + 16) = *(v140 + 16);
    *(v138 + 32) = v142;
    *v138 = v141;
    v143 = *(v140 + 48);
    v144 = *(v140 + 64);
    v145 = *(v140 + 80);
    *(v138 + 96) = *(v140 + 96);
    *(v138 + 64) = v144;
    *(v138 + 80) = v145;
    *(v138 + 48) = v143;
    v60 = *(*(v389 + 56) + 8 * v139);
    v428 = v60[2];
    if (v428)
    {
      v146 = *(*(v1 + 1352) + 80);
      v408 = (v146 + 32) & ~v146;
      v421 = v60 + v408;
      sub_10046DA84(v138, v404 + 416);

      v147 = 0;
      v148 = _swiftEmptyDictionarySingleton;
      while (1)
      {
        if (v147 >= v60[2])
        {
          __break(1u);
          goto LABEL_130;
        }

        v149 = *(v1 + 1368);
        v150 = *(v1 + 1344);
        v62 = *(*(v1 + 1352) + 72);
        sub_100007CE8(&v421[v62 * v147], v149, type metadata accessor for Restore);
        v151 = (v149 + *(v150 + 56));
        v31 = v151[1];
        v152 = *(v1 + 1368);
        if (v31)
        {
          break;
        }

        sub_1004751E8(v152, type metadata accessor for Restore);
LABEL_54:
        if (v428 == ++v147)
        {

          goto LABEL_75;
        }
      }

      v153 = *v151;
      sub_100007CE8(v152, *(v1 + 1360), type metadata accessor for Restore);

      sub_1001DFE6C(v4);
      v42 = swift_isUniquelyReferenced_nonNull_native();
      *&v434 = v148;
      v4 = sub_10052213C(v153, v31);
      v155 = v148[2];
      v156 = (v154 & 1) == 0;
      v157 = v155 + v156;
      if (__OFADD__(v155, v156))
      {
        goto LABEL_135;
      }

      v158 = v154;
      if (v148[3] >= v157)
      {
        if (v42)
        {
          if ((v154 & 1) == 0)
          {
            goto LABEL_61;
          }
        }

        else
        {
          sub_1005C6388();
          v148 = v434;
          if ((v158 & 1) == 0)
          {
            goto LABEL_61;
          }
        }
      }

      else
      {
        sub_1005BE0C4(v157, v42);
        v148 = v434;
        v159 = sub_10052213C(v153, v31);
        if ((v158 & 1) != (v160 & 1))
        {
          goto LABEL_94;
        }

        v4 = v159;
        if ((v158 & 1) == 0)
        {
LABEL_61:
          v148[(v4 >> 6) + 8] |= 1 << v4;
          v161 = (v148[6] + 16 * v4);
          *v161 = v153;
          v161[1] = v31;
          *(v148[7] + 8 * v4) = _swiftEmptyArrayStorage;
          v162 = v148[2];
          v163 = __OFADD__(v162, 1);
          v164 = v162 + 1;
          if (v163)
          {
            __break(1u);
            goto LABEL_149;
          }

          v148[2] = v164;
          goto LABEL_66;
        }
      }

LABEL_66:
      v165 = v148[7];
      v166 = *(v165 + 8 * v4);
      v167 = swift_isUniquelyReferenced_nonNull_native();
      *(v165 + 8 * v4) = v166;
      if ((v167 & 1) == 0)
      {
        v166 = sub_100363E00(0, v166[2] + 1, 1, v166);
        *(v165 + 8 * v4) = v166;
      }

      v31 = v166[2];
      v168 = v166[3];
      if (v31 >= v168 >> 1)
      {
        *(v165 + 8 * v4) = sub_100363E00(v168 > 1, v31 + 1, 1, v166);
      }

      v1 = v433;
      v169 = *(v433 + 1360);
      sub_1004751E8(*(v433 + 1368), type metadata accessor for Restore);
      v170 = *(v165 + 8 * v4);
      *(v170 + 16) = v31 + 1;
      sub_1004640D8(v169, v170 + v408 + v31 * v62);
      v4 = sub_100475384;
      goto LABEL_54;
    }

    sub_10046DA84(v138, v404 + 624);
    v148 = _swiftEmptyDictionarySingleton;
LABEL_75:
    v171 = 0;
    v172 = v401;
    v397 = (v398 - 1) & v398;
    v173 = -1 << *(v148 + 32);
    if (-v173 < 64)
    {
      v174 = ~(-1 << -v173);
    }

    else
    {
      v174 = -1;
    }

    v31 = v174 & v148[8];
    v62 = (63 - v173) >> 6;
    for (j = v4; v31; v1 = v433)
    {
LABEL_83:
      v176 = __clz(__rbit64(v31)) | (v171 << 6);
      v177 = v148[6] + 16 * v176;
      v60 = *v177;
      v178 = *(v177 + 8);
      v179 = *(v148[7] + 8 * v176);
      sub_10046DA84(v172, v404 + 520);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v180 = v414;
      }

      else
      {
        v180 = sub_100363F78(0, *(v414 + 16) + 1, 1, v414);
      }

      v182 = *(v180 + 2);
      v181 = *(v180 + 3);
      v172 = v401;
      if (v182 >= v181 >> 1)
      {
        v180 = sub_100363F78((v181 > 1), v182 + 1, 1, v180);
        v172 = v401;
      }

      v31 &= v31 - 1;
      v440 = *(v172 + 96);
      v183 = *(v172 + 80);
      v438 = *(v172 + 64);
      v439 = v183;
      v184 = *(v172 + 48);
      v436 = *(v172 + 32);
      v437 = v184;
      v185 = *(v172 + 16);
      v434 = *v172;
      v435 = v185;
      *(v180 + 2) = v182 + 1;
      v414 = v180;
      v186 = &v180[128 * v182];
      *(v186 + 4) = v60;
      *(v186 + 5) = v178;
      v187 = v434;
      v188 = v436;
      *(v186 + 4) = v435;
      *(v186 + 5) = v188;
      *(v186 + 3) = v187;
      v189 = v437;
      v190 = v438;
      v191 = v439;
      v186[144] = v440;
      *(v186 + 7) = v190;
      *(v186 + 8) = v191;
      *(v186 + 6) = v189;
      *(v186 + 19) = v179;
      v4 = j;
    }

    while (1)
    {
      v175 = v171 + 1;
      if (__OFADD__(v171, 1))
      {
        __break(1u);
        goto LABEL_128;
      }

      if (v175 >= v62)
      {
        break;
      }

      v31 = v148[v175 + 8];
      ++v171;
      if (v31)
      {
        v171 = v175;
        goto LABEL_83;
      }
    }

    sub_10046DAE0(v172);

    v135 = v392;
  }

  v138 = v401;
  while (1)
  {
    v137 = v135 + 1;
    if (__OFADD__(v135, 1))
    {
      __break(1u);
      goto LABEL_142;
    }

    if (v137 >= v134)
    {
      break;
    }

    v136 = *(v386 + 8 * v137);
    ++v135;
    if (v136)
    {
      goto LABEL_51;
    }
  }

  if (*(v414 + 16))
  {
    v192 = swift_task_alloc();
    *(v1 + 1816) = v192;
    *v192 = v1;
    v192[1] = sub_100451D54;
    v193 = *(v1 + 1256);
    v194 = *(v1 + 1248);
    v195 = *(v1 + 1240);
    v196 = *(v1 + 1232);
    v197 = *(v1 + 1224);
    v198 = *(v1 + 1216);
    v199 = *(v1 + 425);

    return sub_100452554(v414, v197, v199, v196, v195, v198, v194, v193);
  }

  v201 = *(v1 + 1624);
  v202 = *(v1 + 1240);
  if (*(v201 + 16) && (v202 != 0) | *(v1 + 426) & 1)
  {
    v430 = *(v1 + 1592);
    v203 = *(v1 + 1264);
    v422 = *(v1 + 1800);
    v204 = *(v1 + 1256);
    v205 = *(v433 + 1248);
    v409 = *(v433 + 1232);
    v206 = *(v433 + 1224);
    v402 = *(v433 + 1216);
    v207 = *(v433 + 1208);
    v208 = sub_100440314(v201);

    v209 = type metadata accessor for TaskPriority();
    (*(*(v209 - 8) + 56))(v203, 1, 1, v209);
    sub_100231CE8(v204, v404 + 824);
    sub_10020A980(v206, v404 + 960);
    v210 = swift_allocObject();
    *(v210 + 16) = 0;
    *(v210 + 24) = 0;
    *(v210 + 32) = v208;
    *(v210 + 40) = v409;
    *(v210 + 48) = v202;
    *(v210 + 56) = v402;
    sub_100231D54((v404 + 824), (v210 + 64));
    *(v210 + 160) = v207;
    v211 = v422;
    sub_1001DFDBC((v404 + 960), v210 + 168);
    v212 = *(v205 + 32);
    v213 = *(v205 + 16);
    *(v210 + 208) = *v205;
    *(v210 + 224) = v213;
    *(v210 + 240) = v212;

    v214 = v402;
    v215 = &unk_1006AC2C8;
    v216 = v203;
    goto LABEL_116;
  }

  v211 = *(v1 + 1800);
  v244 = *(v1 + 1592);
  if (*(v201 + 16))
  {
    v430 = *(v1 + 1592);
    v245 = *(v1 + 1264);
    v246 = *(v1 + 1256);
    v247 = *(v1 + 1248);
    v248 = *(v1 + 1224);
    v249 = *(v1 + 1216);
    v250 = *(v1 + 1208);
    v251 = type metadata accessor for TaskPriority();
    (*(*(v251 - 8) + 56))(v245, 1, 1, v251);
    sub_100231CE8(v246, v404 + 728);
    sub_10020A980(v248, v404 + 920);
    v210 = swift_allocObject();
    *(v210 + 16) = 0;
    *(v210 + 24) = 0;
    *(v210 + 32) = v250;
    sub_100231D54((v404 + 728), (v210 + 40));
    *(v210 + 136) = v249;
    sub_1001DFDBC((v404 + 920), v210 + 144);
    v252 = *(v247 + 32);
    v253 = *(v247 + 16);
    *(v210 + 184) = *v247;
    *(v210 + 200) = v253;
    *(v210 + 216) = v252;
    v254 = v249;

    v215 = &unk_1006AC2B8;
    v216 = v245;
LABEL_116:
    sub_1004A673C(0, 0, v216, v215, v210);

    v244 = v430;
  }

  sub_1001DFE6C(v244);
  sub_1001DFE6C(v211);

  v255 = *(v433 + 8);

  return v255();
}