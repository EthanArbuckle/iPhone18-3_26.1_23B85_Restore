uint64_t sub_10039AD6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x644965726E6567;
  }

  else
  {
    v3 = 0x65726E6567;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x644965726E6567;
  }

  else
  {
    v5 = 0x65726E6567;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_10039AE10()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039AE90()
{
  String.hash(into:)();
}

Swift::Int sub_10039AEFC()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_10039AF84(uint64_t *a1@<X8>)
{
  v2 = 0x65726E6567;
  if (*v1)
  {
    v2 = 0x644965726E6567;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10039AFC0()
{
  if (*v0)
  {
    return 0x644965726E6567;
  }

  else
  {
    return 0x65726E6567;
  }
}

uint64_t sub_10039B004(uint64_t a1)
{
  v2 = sub_10039D434();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B040(uint64_t a1)
{
  v2 = sub_10039D434();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B07C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10039D25C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10039B0AC()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 1802396018;
  }
}

uint64_t sub_10039B0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1802396018 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10039B1B4(uint64_t a1)
{
  v2 = sub_10039D6EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B1F0(uint64_t a1)
{
  v2 = sub_10039D6EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B270(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C6562616CLL;
  }

  else
  {
    v3 = 0x6449746E65696C63;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C6562616CLL;
  }

  else
  {
    v5 = 0x6449746E65696C63;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
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

Swift::Int sub_10039B314()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039B394()
{
  String.hash(into:)();
}

Swift::Int sub_10039B400()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039B488@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void sub_10039B4E4(uint64_t *a1@<X8>)
{
  v2 = 0x6449746E65696C63;
  if (*v1)
  {
    v2 = 0x6C6562616CLL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10039B520()
{
  if (*v0)
  {
    return 0x6C6562616CLL;
  }

  else
  {
    return 0x6449746E65696C63;
  }
}

uint64_t sub_10039B564@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t sub_10039B5C4(uint64_t a1)
{
  v2 = sub_10039D698();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B600(uint64_t a1)
{
  v2 = sub_10039D698();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10039B680@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X4>, void (*a4)(void)@<X5>, uint64_t *a5@<X8>)
{
  result = sub_10039D4DC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
    a5[2] = v9;
  }

  return result;
}

unint64_t sub_10039B6C4()
{
  result = qword_100782CE0;
  if (!qword_100782CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782CE0);
  }

  return result;
}

uint64_t sub_10039B718(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100399654(*a1);
  v5 = v4;
  if (v3 == sub_100399654(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_10039B7A0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100399654(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039B804()
{
  sub_100399654(*v0);
  String.hash(into:)();
}

Swift::Int sub_10039B858()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100399654(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10039B8B8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10039D740();
  *a1 = result;
  return result;
}

unint64_t sub_10039B8E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100399654(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10039B91C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10039D740();
  *a1 = result;
  return result;
}

uint64_t sub_10039B950(uint64_t a1)
{
  v2 = sub_10039B9E0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10039B98C(uint64_t a1)
{
  v2 = sub_10039B9E0();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10039B9E0()
{
  result = qword_100782CF0;
  if (!qword_100782CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782CF0);
  }

  return result;
}

unint64_t sub_10039BA34()
{
  result = qword_100782CF8;
  if (!qword_100782CF8)
  {
    sub_1001F76D0(&qword_100782BD8);
    sub_100006E3C(&qword_100780CA8, &unk_10077FB40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782CF8);
  }

  return result;
}

unint64_t sub_10039BADC()
{
  result = qword_100782D00;
  if (!qword_100782D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D00);
  }

  return result;
}

unint64_t sub_10039BB30()
{
  result = qword_100782D08;
  if (!qword_100782D08)
  {
    sub_1001F76D0(&qword_100782BE8);
    sub_10039BBBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D08);
  }

  return result;
}

unint64_t sub_10039BBBC()
{
  result = qword_100782D10;
  if (!qword_100782D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D10);
  }

  return result;
}

unint64_t sub_10039BC10()
{
  result = qword_100782D18;
  if (!qword_100782D18)
  {
    sub_1001F76D0(&qword_100782BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D18);
  }

  return result;
}

unint64_t sub_10039BC94()
{
  result = qword_100782D28;
  if (!qword_100782D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D28);
  }

  return result;
}

unint64_t sub_10039BCE8()
{
  result = qword_100782D30;
  if (!qword_100782D30)
  {
    sub_1001F76D0(&qword_100782C10);
    sub_10039BD6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D30);
  }

  return result;
}

unint64_t sub_10039BD6C()
{
  result = qword_100782D38;
  if (!qword_100782D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D38);
  }

  return result;
}

uint64_t sub_10039BDC0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v100 = a3;
  v97 = a2;
  v8 = type metadata accessor for Logger();
  v102 = *(v8 - 8);
  __chkstk_darwin(v8);
  v9 = sub_1001F0C48(&qword_10077F390);
  v10 = __chkstk_darwin(v9 - 8);
  v98 = v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v91 - v12;
  v96 = type metadata accessor for AppStorePackage(0);
  v99 = *(v96 - 8);
  v14 = __chkstk_darwin(v96);
  v94 = v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v93 = v91 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v91 - v19;
  __chkstk_darwin(v18);
  v22 = v91 - v21;
  v95 = type metadata accessor for AppStoreMetadata(0);
  __chkstk_darwin(v95);
  v24 = v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v25 - 8);
  v27 = v91 - v26;
  v28 = type metadata accessor for URL();
  v29 = *(v28 - 8);
  v104 = v28;
  v105 = v29;
  __chkstk_darwin(v28);
  v103 = v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for AppStoreItem(0);
  v107 = *(v31 - 8);
  v108 = v31;
  __chkstk_darwin(v31);
  v101 = v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16) || (v106 = a5, v33 = sub_10052213C(0x6449676E6F73, 0xE600000000000000), a5 = v106, (v34 & 1) == 0) || (sub_10020A6D0(*(a1 + 56) + 32 * v33, v110), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (v92 = v109, v35 = sub_10052213C(0x556B726F77747261, 0xEA00000000004C52), a5 = v106, (v36 & 1) == 0) || (sub_10020A6D0(*(a1 + 56) + 32 * v35, v110), (swift_dynamicCast() & 1) == 0))
  {

LABEL_10:
    v38 = v108;
    return (*(v107 + 56))(a5, 1, 1, v38);
  }

  URL.init(string:)();

  v37 = v104;
  if ((*(v105 + 48))(v27, 1, v104) == 1)
  {

    sub_1000032A8(v27, &unk_1007809F0);
LABEL_17:
    a5 = v106;
    goto LABEL_10;
  }

  (*(v105 + 32))(v103, v27, v37);
  v40 = v37;
  if (!*(a1 + 16) || (v41 = sub_10052213C(0x617461646174656DLL, 0xE800000000000000), (v42 & 1) == 0))
  {

    (*(v105 + 8))(v103, v37);
    goto LABEL_17;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v41, v110);
  v43 = sub_1001F0C48(&qword_100782D80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v105 + 8))(v103, v40);

    goto LABEL_17;
  }

  v91[0] = v43;
  v44 = v109;
  type metadata accessor for AppStoreResponseDecoder();
  swift_initStackObject();
  v91[1] = v44;
  sub_10039CE8C(v44, v24);

  v45 = v108;
  v46 = v101;
  v47 = &v101[v108[6]];
  sub_10039DDE0(v24, v47, type metadata accessor for AppStoreMetadata);
  v48 = v100;
  if (*(a1 + 16) && (v49 = sub_10052213C(0x656365722D707061, 0xEB00000000747069), (v50 & 1) != 0) && (sub_10020A6D0(*(a1 + 56) + 32 * v49, v110), (swift_dynamicCast() & 1) != 0))
  {
    v51 = v109;
  }

  else
  {
    v51 = xmmword_10069E8A0;
  }

  *&v46[v45[8]] = v51;
  if (*(a1 + 16))
  {
    v52 = sub_10052213C(0xD000000000000011, 0x80000001006CA8D0);
    if (v53)
    {
      sub_10020A6D0(*(a1 + 56) + 32 * v52, v110);
      if (swift_dynamicCast())
      {
        v54 = *(&v109 + 1);
        v48 = v109;

        a4 = v54;
      }
    }

    a5 = v106;
    v55 = v45;
  }

  else
  {
    v55 = v45;
    a5 = v106;
  }

  v56 = &v46[v55[9]];
  *v56 = v48;
  *(v56 + 1) = a4;
  if (*(a1 + 16) && (v57 = sub_10052213C(0x2D64656E6E696874, 0xEB00000000707061), a5 = v106, (v58 & 1) != 0) && (sub_10020A6D0(*(a1 + 56) + 32 * v57, v110), (swift_dynamicCast() & 1) != 0))
  {
    sub_100397E74(v109, v13);
    if ((*(v99 + 48))(v13, 1, v96) == 1)
    {
      (*(v105 + 8))(v103, v104);

      sub_1000032A8(v13, &qword_10077F390);
      a5 = v106;
      v45 = v108;
      v46 = v101;
LABEL_51:
      sub_10039DD80(v47, type metadata accessor for AppStoreMetadata);
      sub_1001CEE68(*&v46[v45[8]], *&v46[v45[8] + 8]);

      v38 = v45;
      return (*(v107 + 56))(a5, 1, 1, v38);
    }

    v82 = v47;
    sub_10039DDE0(v13, v22, type metadata accessor for AppStorePackage);
    sub_10039DD18(v22, v20, type metadata accessor for AppStorePackage);
    v83 = sub_1003639E4(0, 1, 1, _swiftEmptyArrayStorage);
    v85 = v83[2];
    v84 = v83[3];
    v86 = v83;
    if (v85 >= v84 >> 1)
    {
      v86 = sub_1003639E4(v84 > 1, v85 + 1, 1, v83);
    }

    sub_10039DD80(v22, type metadata accessor for AppStorePackage);
    v59 = v86;
    *(v86 + 16) = v85 + 1;
    sub_10039DDE0(v20, v86 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v85, type metadata accessor for AppStorePackage);
    v47 = v82;
    a5 = v106;
    v45 = v108;
    v46 = v101;
  }

  else
  {
    v59 = _swiftEmptyArrayStorage;
  }

  v60 = v98;
  if (!v59[2] || (v97 & 1) != 0)
  {
    sub_100397E74(a1, v98);
    if ((*(v99 + 48))(v60, 1, v96) == 1)
    {
      (*(v105 + 8))(v103, v104);

      sub_1000032A8(v60, &qword_10077F390);
      goto LABEL_51;
    }

    v61 = v93;
    sub_10039DDE0(v60, v93, type metadata accessor for AppStorePackage);
    v62 = v94;
    sub_10039DD18(v61, v94, type metadata accessor for AppStorePackage);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v59 = sub_1003639E4(0, v59[2] + 1, 1, v59);
    }

    v64 = v59[2];
    v63 = v59[3];
    if (v64 >= v63 >> 1)
    {
      v59 = sub_1003639E4(v63 > 1, v64 + 1, 1, v59);
    }

    sub_10039DD80(v61, type metadata accessor for AppStorePackage);
    v59[2] = v64 + 1;
    sub_10039DDE0(v62, v59 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v64, type metadata accessor for AppStorePackage);
    a5 = v106;
    v46 = v101;
  }

  else
  {
  }

  if (!v59[2])
  {
    (*(v105 + 8))(v103, v104);

    goto LABEL_51;
  }

  *&v46[v45[7]] = v59;
  *v46 = v92;
  (*(v105 + 16))(&v46[v45[5]], v103, v104);
  v65 = v95;
  v66 = *(v47 + *(v95 + 144));
  if (v66 > 1)
  {
    if (v66 != 2)
    {
      goto LABEL_62;
    }
  }

  else if (!*(v47 + *(v95 + 144)))
  {

    goto LABEL_62;
  }

  v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v67 & 1) == 0)
  {
    v68 = *(v47 + *(v65 + 160));
    if (v68)
    {
      v69 = *(v68 + 16);
      v70 = (v68 + 32);
      v71 = v69;
      v72 = v70;
      while (v71)
      {
        v73 = *v72++;
        --v71;
        if (v73 == 9)
        {
          (*(v105 + 8))(v103, v104);
          v45 = v108;
          v74 = v108[10];
          v75 = &enum case for ManagedApp.BinaryCompatibility.iPad(_:);
          goto LABEL_68;
        }
      }

      do
      {
        if (!v69)
        {
          (*(v105 + 8))(v103, v104);
          v45 = v108;
          v77 = v108[10];
          v78 = type metadata accessor for ManagedApp.BinaryCompatibility();
          v46 = v101;
          (*(*(v78 - 8) + 56))(&v101[v77], 1, 1, v78);
          goto LABEL_63;
        }

        v76 = *v70++;
        --v69;
      }

      while (v76 != 2);
      (*(v105 + 8))(v103, v104);
      v45 = v108;
      v74 = v108[10];
      v75 = &enum case for ManagedApp.BinaryCompatibility.iPhone(_:);
LABEL_68:
      v87 = *v75;
      v88 = type metadata accessor for ManagedApp.BinaryCompatibility();
      v89 = *(v88 - 8);
      v90 = v101;
      (*(v89 + 104))(&v101[v74], v87, v88);
      (*(v89 + 56))(&v90[v74], 0, 1, v88);
      v46 = v90;
      goto LABEL_63;
    }
  }

LABEL_62:
  (*(v105 + 8))(v103, v104);
  v79 = v45[10];
  v80 = type metadata accessor for ManagedApp.BinaryCompatibility();
  (*(*(v80 - 8) + 56))(&v46[v79], 1, 1, v80);
LABEL_63:
  v81 = v106;
  sub_10039DD18(v46, v106, type metadata accessor for AppStoreItem);
  (*(v107 + 56))(v81, 0, 1, v45);
  return sub_10039DD80(v46, type metadata accessor for AppStoreItem);
}

uint64_t sub_10039CE8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v9 = sub_1001F0C48(&qword_100782D80);
  *&v8 = a1;
  v4 = type metadata accessor for AppStoreResponseDecoderImpl();
  v5 = swift_allocObject();
  *(v5 + 16) = _swiftEmptyArrayStorage;
  sub_1001F0C48(&unk_100784380);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10069E680;
  sub_1001F6498(&v8, (v6 + 32));
  *(v5 + 24) = v6;
  v9 = v4;
  v10 = sub_10039DE48(&qword_100782D88, type metadata accessor for AppStoreResponseDecoderImpl);
  *&v8 = v5;

  return sub_100399A64(&v8, a2);
}

uint64_t sub_10039CFA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for AppStoreItem(0);
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = (&v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = &v27 - v15;
  if ((a3 & 1) == 0)
  {
    v22 = *(a4 + 16);
    if (v22)
    {
      v23 = a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
      v24 = *(v11 + 72);
      while (1)
      {
        sub_10039DD18(v23, v14, type metadata accessor for AppStoreItem);
        if ((*v14 & 0x8000000000000000) == 0 && *v14 == a1)
        {
          break;
        }

        sub_10039DD80(v14, type metadata accessor for AppStoreItem);
        v23 += v24;
        if (!--v22)
        {
          return (*(v11 + 56))(a5, 1, 1, v10);
        }
      }

      v25 = v14;
      goto LABEL_19;
    }

    return (*(v11 + 56))(a5, 1, 1, v10);
  }

  v17 = *(a4 + 16);
  if (!v17)
  {
    return (*(v11 + 56))(a5, 1, 1, v10);
  }

  v18 = a4 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v19 = *(v11 + 72);
  while (1)
  {
    sub_10039DD18(v18, v16, type metadata accessor for AppStoreItem);
    v20 = &v16[*(v10 + 24)];
    v21 = *(v20 + 2) == a1 && *(v20 + 3) == a2;
    if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    sub_10039DD80(v16, type metadata accessor for AppStoreItem);
    v18 += v19;
    if (!--v17)
    {
      return (*(v11 + 56))(a5, 1, 1, v10);
    }
  }

  v25 = v16;
LABEL_19:
  sub_10039DDE0(v25, a5, type metadata accessor for AppStoreItem);
  return (*(v11 + 56))(a5, 0, 1, v10);
}

unint64_t sub_10039D210(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100759950, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10039D25C(void *a1)
{
  v3 = sub_1001F0C48(&qword_100782D40);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_10039D434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[15] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v9[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_10039D434()
{
  result = qword_100782D48;
  if (!qword_100782D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D48);
  }

  return result;
}

unint64_t sub_10039D488()
{
  result = qword_100782D50;
  if (!qword_100782D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D50);
  }

  return result;
}

uint64_t sub_10039D4DC(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_1001F0C48(a2);
  v14 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v13 - v9;
  sub_100006D8C(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v4)
  {
    v11 = v14;
    v16 = 0;
    v6 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v11 + 8))(v10, v8);
  }

  sub_10000710C(a1);
  return v6;
}

unint64_t sub_10039D698()
{
  result = qword_100782D60;
  if (!qword_100782D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D60);
  }

  return result;
}

unint64_t sub_10039D6EC()
{
  result = qword_100782D70;
  if (!qword_100782D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D70);
  }

  return result;
}

uint64_t sub_10039D740()
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

uint64_t sub_10039D794(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1001F0C48(&unk_100786710);
  __chkstk_darwin(v8 - 8);
  v10 = v35 - v9;
  v11 = type metadata accessor for AppStoreItem(0);
  v12 = *(v11 - 8);
  v13 = __chkstk_darwin(v11);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v35 - v16;
  if (!a1)
  {

    return 0;
  }

  v41 = 0x737574617473;
  v42 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16))
  {
    goto LABEL_12;
  }

  v18 = sub_1005223D0(v43);
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

  v40 = v12;
  sub_10020A6D0(*(a1 + 56) + 32 * v18, v44);
  sub_10039DCC4(v43);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:

    return 0;
  }

  v36 = v41;
  v41 = 0x7473694C676E6F73;
  v42 = 0xE800000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v20 = sub_1005223D0(v43), (v21 & 1) == 0))
  {
LABEL_12:

    sub_10039DCC4(v43);
    return 0;
  }

  sub_10020A6D0(*(a1 + 56) + 32 * v20, v44);
  sub_10039DCC4(v43);
  sub_1001F0C48(&qword_100782D78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  v22 = v41;
  v44[0] = 0x67616279656BLL;
  v44[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v23 = sub_1005223D0(v43), (v24 & 1) != 0))
  {
    sub_10020A6D0(*(a1 + 56) + 32 * v23, v44);
    sub_10039DCC4(v43);

    v25 = swift_dynamicCast();
    v26 = v41;
    v27 = v42;
    if (!v25)
    {
      v26 = 0;
      v27 = 0xF000000000000000;
    }
  }

  else
  {

    sub_10039DCC4(v43);
    v26 = 0;
    v27 = 0xF000000000000000;
  }

  v29 = *(v22 + 16);
  v35[1] = v26;
  v35[2] = v27;
  v35[0] = v22;
  if (v29)
  {
    v39 = a2;
    v30 = (v22 + 32);
    v38 = (v40 + 48);
    v31 = _swiftEmptyArrayStorage;
    v37 = a3;
    do
    {
      v32 = *v30;

      sub_10039BDC0(v32, v39 & 1, a3, a4, v10);
      if ((*v38)(v10, 1, v11) == 1)
      {
        sub_1000032A8(v10, &unk_100786710);
      }

      else
      {
        sub_10039DDE0(v10, v17, type metadata accessor for AppStoreItem);
        sub_10039DD18(v17, v15, type metadata accessor for AppStoreItem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_100363A0C(0, v31[2] + 1, 1, v31);
        }

        v34 = v31[2];
        v33 = v31[3];
        if (v34 >= v33 >> 1)
        {
          v31 = sub_100363A0C(v33 > 1, v34 + 1, 1, v31);
        }

        sub_10039DD80(v17, type metadata accessor for AppStoreItem);
        v31[2] = v34 + 1;
        sub_10039DDE0(v15, v31 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v34, type metadata accessor for AppStoreItem);
        a3 = v37;
      }

      ++v30;
      --v29;
    }

    while (v29);
  }

  return v36;
}

uint64_t sub_10039DD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039DD80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10039DDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039DE48(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for AppStoreMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AppStoreMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10039E014()
{
  result = qword_100782D90;
  if (!qword_100782D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D90);
  }

  return result;
}

unint64_t sub_10039E06C()
{
  result = qword_100782D98;
  if (!qword_100782D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782D98);
  }

  return result;
}

unint64_t sub_10039E0C4()
{
  result = qword_100782DA0;
  if (!qword_100782DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DA0);
  }

  return result;
}

unint64_t sub_10039E11C()
{
  result = qword_100782DA8;
  if (!qword_100782DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DA8);
  }

  return result;
}

unint64_t sub_10039E174()
{
  result = qword_100782DB0;
  if (!qword_100782DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DB0);
  }

  return result;
}

unint64_t sub_10039E1CC()
{
  result = qword_100782DB8;
  if (!qword_100782DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DB8);
  }

  return result;
}

unint64_t sub_10039E224()
{
  result = qword_100782DC0;
  if (!qword_100782DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DC0);
  }

  return result;
}

unint64_t sub_10039E27C()
{
  result = qword_100782DC8;
  if (!qword_100782DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DC8);
  }

  return result;
}

unint64_t sub_10039E2D4()
{
  result = qword_100782DD0;
  if (!qword_100782DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DD0);
  }

  return result;
}

unint64_t sub_10039E32C()
{
  result = qword_100782DD8;
  if (!qword_100782DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DD8);
  }

  return result;
}

unint64_t sub_10039E384()
{
  result = qword_100782DE0;
  if (!qword_100782DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DE0);
  }

  return result;
}

unint64_t sub_10039E3DC()
{
  result = qword_100782DE8;
  if (!qword_100782DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782DE8);
  }

  return result;
}

void sub_10039E440(int a1, uint64_t a2)
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.metrics.getter();

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v10 = 136446466;
    v20[3] = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0xD000000000000033;
      }

      else
      {
        v11 = 0xD000000000000036;
      }

      if (a1 == 1)
      {
        v12 = "@NSDictionary8@?0";
      }

      else
      {
        v12 = "local-server-info";
      }
    }

    else
    {
      v11 = 0xD00000000000003ALL;
      v12 = ".marketplace.status";
    }

    v13 = sub_1002346CC(v11, v12 | 0x8000000000000000, aBlock);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2080;
    v14 = Dictionary.description.getter();
    v16 = sub_1002346CC(v14, v15, aBlock);

    *(v10 + 14) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Posting CA event for %{public}s: %s", v10, 0x16u);
    swift_arrayDestroy();

    (*(v5 + 8))(v7, v4);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v17 = String._bridgeToObjectiveC()();

  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  aBlock[4] = sub_10039E85C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10039E7D0;
  aBlock[3] = &unk_100762E80;
  v19 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v19);
}

Class sub_10039E7D0(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_10039E86C();
    v4.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

unint64_t sub_10039E86C()
{
  result = qword_100782DF0;
  if (!qword_100782DF0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100782DF0);
  }

  return result;
}

uint64_t sub_10039E8B8()
{
  _StringGuts.grow(_:)(17);
  v1 = type metadata accessor for MarketplaceUpdate();
  v2 = *(v0 + v1[7]);

  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + v1[12]));
  v4._countAndFlagsBits = 58;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + v1[13]));
  v5._countAndFlagsBits = 2108704;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + v1[11]));
  v6._countAndFlagsBits = 40;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + v1[8]));
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v2;
}

uint64_t sub_10039E9DC@<X0>(uint64_t a1@<X0>, os_unfair_lock_s *a2@<X1>, char *a3@<X8>)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v10 - 8);
  v12 = v43 - v11;
  v13 = type metadata accessor for MarketplaceUpdate();
  v14 = *(v13 + 24);
  (*(v7 + 56))(&a3[v14], 1, 1, v6);
  *a3 = a1;
  v15 = v46;
  sub_1005E8114(0, a2);
  if (v15)
  {

    sub_10038B5B4(&a3[v14]);
  }

  else
  {
    v44 = v6;
    v45 = v7;
    v46 = v13;
    *(a3 + 1) = v16;
    *(a3 + 2) = v17;
    sub_1005EBC1C(1, a2, v12);
    sub_1003829B0(v12, &a3[v14]);
    sub_1005E8114(2, a2);
    v18 = a2;
    v19 = v46;
    v20 = v46[7];
    *v20 = v21;
    v20[1] = v22;
    sub_1005E8114(3, a2);
    v23 = v19[8];
    *v23 = v24;
    v23[1] = v25;
    v26 = v9;
    sub_1005E836C(4, v18, v9);
    v27 = v19[10];
    (*(v45 + 32))(v19[9], v26, v44);
    v28 = sub_1005EBBF0(5, v18);
    v30 = v29;
    *v27 = v28;
    v27[1] = v29;
    sub_1005E8114(6, v18);
    v43[1] = v30;
    v31 = v19[11];
    *v31 = v32;
    v31[1] = v33;
    sub_1005E8114(7, v18);
    v34 = v19[12];
    *v34 = v35;
    v34[1] = v36;
    sub_1005E8114(8, v18);
    v38 = v37;
    v40 = v39;

    v42 = v19[13];
    *v42 = v38;
    v42[1] = v40;
  }

  return result;
}

uint64_t sub_10039EDD4()
{
  v1 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v1 - 8);
  v3 = v36 - v2;
  sub_1001F0C48(&qword_100782DF8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8280;
  *(inited + 32) = 0;
  v36[1] = inited + 32;
  v5 = *(v0 + 8);
  v6 = *(v0 + 16);
  *(inited + 64) = &type metadata for String;
  *(inited + 72) = &protocol witness table for String;
  *(inited + 80) = &protocol witness table for String;
  *(inited + 40) = v5;
  *(inited + 48) = v6;
  *(inited + 88) = 1;
  v7 = type metadata accessor for MarketplaceUpdate();
  sub_100337114(v0 + v7[6], v3);
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v3, 1, v8) == 1)
  {

    sub_10038B5B4(v3);
    *(inited + 96) = 0u;
    *(inited + 112) = 0u;
    *(inited + 128) = 0u;
  }

  else
  {
    *(inited + 120) = v8;
    *(inited + 128) = sub_10039F230(&qword_100781BB8);
    *(inited + 136) = sub_10039F230(&qword_100782898);
    v10 = sub_10020A748((inited + 96));
    (*(v9 + 32))(v10, v3, v8);
  }

  *(inited + 144) = 2;
  v11 = (v0 + v7[7]);
  v12 = *v11;
  v13 = v11[1];
  *(inited + 176) = &type metadata for String;
  *(inited + 184) = &protocol witness table for String;
  *(inited + 192) = &protocol witness table for String;
  *(inited + 152) = v12;
  *(inited + 160) = v13;
  *(inited + 200) = 3;
  v14 = (v0 + v7[8]);
  v15 = *v14;
  v16 = v14[1];
  *(inited + 232) = &type metadata for String;
  *(inited + 240) = &protocol witness table for String;
  *(inited + 248) = &protocol witness table for String;
  *(inited + 208) = v15;
  *(inited + 216) = v16;
  *(inited + 256) = 4;
  v17 = v7[9];
  *(inited + 288) = v8;
  *(inited + 296) = sub_10039F230(&qword_100781BB8);
  *(inited + 304) = sub_10039F230(&qword_100782898);
  v18 = sub_10020A748((inited + 264));
  (*(v9 + 16))(v18, v0 + v17, v8);
  *(inited + 312) = 5;
  v19 = (v0 + v7[10]);
  v20 = v19[1];
  if (v20)
  {
    v21 = *v19;
    v22 = &protocol witness table for String;
    v23 = &protocol witness table for String;
    v24 = &type metadata for String;
  }

  else
  {
    v21 = 0;
    v24 = 0;
    v23 = 0;
    v22 = 0;
    *(inited + 336) = 0;
  }

  *(inited + 320) = v21;
  *(inited + 328) = v20;
  *(inited + 344) = v24;
  *(inited + 352) = v23;
  *(inited + 360) = v22;
  *(inited + 368) = 6;
  v25 = (v0 + v7[11]);
  v26 = *v25;
  v27 = v25[1];
  *(inited + 400) = &type metadata for String;
  *(inited + 408) = &protocol witness table for String;
  *(inited + 416) = &protocol witness table for String;
  *(inited + 376) = v26;
  *(inited + 384) = v27;
  *(inited + 424) = 7;
  v28 = (v0 + v7[12]);
  v29 = *v28;
  v30 = v28[1];
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = &protocol witness table for String;
  *(inited + 472) = &protocol witness table for String;
  *(inited + 432) = v29;
  *(inited + 440) = v30;
  *(inited + 480) = 8;
  v31 = (v0 + v7[13]);
  v32 = *v31;
  v33 = v31[1];
  *(inited + 512) = &type metadata for String;
  *(inited + 520) = &protocol witness table for String;
  *(inited + 528) = &protocol witness table for String;
  *(inited + 488) = v32;
  *(inited + 496) = v33;

  v34 = sub_100529840(inited);
  swift_setDeallocating();
  sub_1001F0C48(&unk_100787050);
  swift_arrayDestroy();
  return sub_1004E6928(v34);
}

uint64_t type metadata accessor for MarketplaceUpdate()
{
  result = qword_100782E58;
  if (!qword_100782E58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10039F230(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10039F29C()
{
  sub_10037F89C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for URL();
    if (v1 <= 0x3F)
    {
      sub_10038C230();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_10039F360()
{
  result = qword_100782EB0;
  if (!qword_100782EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100782EB0);
  }

  return result;
}

uint64_t sub_10039F3B4(uint64_t *a1, int a2)
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

uint64_t sub_10039F3FC(uint64_t result, int a2, int a3)
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

uint64_t sub_10039F44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a1;
  v3[15] = a3;
  v4 = type metadata accessor for Logger();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v5 = type metadata accessor for URL.DirectoryHint();
  v3[22] = v5;
  v3[23] = *(v5 - 8);
  v3[24] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v3[25] = v6;
  v3[26] = *(v6 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return _swift_task_switch(sub_10039F620, 0, 0);
}

uint64_t sub_10039F620()
{
  v201 = v0;
  v1 = [objc_opt_self() enumeratorWithOptions:192];
  v0[6] = sub_1003A0900;
  v0[7] = 0;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_100009BE4;
  v0[5] = &unk_100762F40;
  v2 = _Block_copy(v0 + 2);
  [v1 setFilter:v2];
  _Block_release(v2);
  v199 = v1;
  v3 = [v1 nextObject];
  p_name = (&stru_100779FF8 + 8);
  if (v3)
  {
    v5 = v3;
    v174 = 0;
    v189 = _swiftEmptyDictionarySingleton;
    while (1)
    {
      while (1)
      {
        v6 = [v5 bundleIdentifier];
        if (!v6)
        {
          goto LABEL_5;
        }

        v7 = v6;
        v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v10 = v9;

        v11 = [v5 iTunesMetadata];
        v12 = [v11 p_name[60]];

        v13 = [v12 distributorID];
        if (v13)
        {
          break;
        }

LABEL_4:

LABEL_5:

        v5 = [v199 nextObject];
        if (!v5)
        {
          goto LABEL_26;
        }
      }

      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      if ([v5 isManagedAppDistributor])
      {

        p_name = &stru_100779FF8.name;
        goto LABEL_4;
      }

      sub_1001DFE6C(v174);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v200[0] = v189;
      v195 = sub_10052213C(v14, v16);
      v19 = v189[2];
      v20 = (v18 & 1) == 0;
      v21 = v19 + v20;
      if (__OFADD__(v19, v20))
      {
        __break(1u);
LABEL_81:
        __break(1u);
      }

      if (v189[3] < v21)
      {
        v194 = v18;
        sub_1005BA8E4(v21, isUniquelyReferenced_nonNull_native);
        v189 = v200[0];
        v195 = sub_10052213C(v14, v16);
        v23 = v22 & 1;
        v18 = v194;
        if ((v194 & 1) != v23)
        {
LABEL_77:

          return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        }

LABEL_14:
        if ((v18 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_14;
      }

      v25 = v18;
      sub_1005C56E4();
      v189 = v200[0];
      if ((v25 & 1) == 0)
      {
LABEL_17:
        v24 = v189;
        v189[(v195 >> 6) + 8] |= 1 << v195;
        v26 = (v189[6] + 16 * v195);
        *v26 = v14;
        v26[1] = v16;
        *(v189[7] + 8 * v195) = _swiftEmptyArrayStorage;
        v27 = v189[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_81;
        }

        v189[2] = v29;
        goto LABEL_19;
      }

LABEL_15:

      v24 = v189;
LABEL_19:
      v30 = v24[7];
      v31 = *(v30 + 8 * v195);
      v32 = swift_isUniquelyReferenced_nonNull_native();
      *(v30 + 8 * v195) = v31;
      if ((v32 & 1) == 0)
      {
        v31 = sub_100009530(0, *(v31 + 2) + 1, 1, v31);
        *(v30 + 8 * v195) = v31;
      }

      v34 = *(v31 + 2);
      v33 = *(v31 + 3);
      if (v34 >= v33 >> 1)
      {
        *(v30 + 8 * v195) = sub_100009530((v33 > 1), v34 + 1, 1, v31);
      }

      v35 = *(v30 + 8 * v195);
      *(v35 + 16) = v34 + 1;
      v36 = v35 + 16 * v34;
      *(v36 + 32) = v8;
      *(v36 + 40) = v10;
      v5 = [v199 nextObject];
      v174 = sub_1001DFE5C;
      p_name = (&stru_100779FF8 + 8);
      if (!v5)
      {
        goto LABEL_26;
      }
    }
  }

  v174 = 0;
  v189 = _swiftEmptyDictionarySingleton;
LABEL_26:
  v37 = 0;
  v38 = v189;
  v39 = v189 + 8;
  v40 = -1;
  v41 = -1 << *(v189 + 32);
  v42 = v0[23];
  if (-v41 < 64)
  {
    v40 = ~(-1 << -v41);
  }

  v43 = v40 & v189[8];
  v175 = v0[14];
  v44 = (63 - v41) >> 6;
  v193 = enum case for URL.DirectoryHint.inferFromPath(_:);
  v191 = (v42 + 8);
  v192 = (v42 + 104);
  v190 = (v0[26] + 8);
  v181 = (v0[17] + 8);
  v176 = v44;
  while (v43)
  {
    v45 = v37;
LABEL_36:
    v187 = v45;
    v188 = (v43 - 1) & v43;
    v46 = __clz(__rbit64(v43)) | (v45 << 6);
    v47 = (v38[6] + 16 * v46);
    v49 = *v47;
    v48 = v47[1];
    v50 = *(v38[7] + 8 * v46);
    v51 = objc_allocWithZone(LSApplicationRecord);

    v52 = String._bridgeToObjectiveC()();
    v0[10] = 0;
    v53 = [v51 initWithBundleIdentifier:v52 allowPlaceholder:1 error:v0 + 10];

    v54 = v0[10];
    if (v53)
    {
      v182 = v50;
      v55 = v54;
      v185 = v53;
      v56 = [v53 iTunesMetadata];
      v57 = [v56 storeItemIdentifier];

      if (v57)
      {

        v58 = *(v50 + 16);
        v38 = v189;
        if (v58)
        {
          v59 = (v182 + 40);
          v60 = &stru_100779FF8.name;
          while (1)
          {
            v62 = *(v59 - 1);
            v63 = *v59;
            v64 = objc_allocWithZone(LSApplicationRecord);

            v65 = String._bridgeToObjectiveC()();
            v0[11] = 0;
            v66 = [v64 v60[301]];

            v67 = v0[11];
            if (v66)
            {
              v68 = v67;
              v69 = [v66 bundleContainerURL];
              if (v69)
              {
                v196 = v62;
                v70 = v0[24];
                v71 = v0[22];
                v72 = v69;
                static URL._unconditionallyBridgeFromObjectiveC(_:)();

                v0[8] = 0xD000000000000014;
                v0[9] = 0x80000001006C46D0;
                (*v192)(v70, v193, v71);
                sub_100005E50();
                URL.appending<A>(component:directoryHint:)();
                (*v191)(v70, v71);
                v73 = URL.checkResourceIsReachable()();
                if (v75)
                {

LABEL_56:
                  v116 = v0[27];
                  v117 = v0[28];
                  v118 = v0[25];

                  v119 = *v190;
                  (*v190)(v116, v118);
                  v119(v117, v118);
                  v60 = (&stru_100779FF8 + 8);
                  goto LABEL_41;
                }

                if (!v73)
                {
                  goto LABEL_56;
                }

                URL._bridgeToObjectiveC()(v74);
                v77 = v76;
                v78 = objc_opt_self();
                v0[12] = 0;
                v79 = [v78 metadataFromPlistAtURL:v77 error:v0 + 12];

                v80 = v0[12];
                v177 = v0[27];
                v179 = v0[28];
                v81 = v0[25];
                if (v79)
                {
                  v183 = v79;
                  v82 = *v190;
                  v83 = v80;
                  v82(v177, v81);
                  v82(v179, v81);
                  v84 = [v79 distributorInfo];
                  if (v84)
                  {
                    v85 = v84;
                    v86 = [v185 iTunesMetadata];
                    v87 = [v86 distributorInfo];

                    v88 = [v87 domain];
                    v79 = v183;
                    [v85 setMarketplaceDomain:v88];
                  }

                  v89 = [v79 distributorInfo];
                  if (v89)
                  {
                    v90 = v89;
                    v91 = [v185 iTunesMetadata];
                    v92 = [v91 storeItemIdentifier];

                    v93 = objc_allocWithZone(NSNumber);
                    v94 = v92;
                    v79 = v183;
                    v95 = [v93 initWithUnsignedLongLong:v94];
                    [v90 setMarketplaceItemID:v95];
                  }

                  v96 = objc_allocWithZone(IXApplicationIdentity);
                  v97 = String._bridgeToObjectiveC()();
                  v98 = [v96 initWithBundleID:v97];

                  v99 = objc_opt_self();
                  v0[13] = 0;
                  v180 = v98;
                  v100 = [v99 updateiTunesMetadata:v79 forAppWithIdentity:v98 error:v0 + 13];
                  v101 = v0[14];
                  v102 = v0[13];
                  if (v100)
                  {
                    v103 = v102;
                    static Logger.daemon.getter();

                    v104 = v101;

                    v105 = Logger.logObject.getter();
                    v106 = static os_log_type_t.default.getter();

                    v178 = v106;
                    v107 = os_log_type_enabled(v105, v106);
                    v108 = v0[21];
                    v109 = v0[16];
                    if (v107)
                    {
                      v171 = v0[16];
                      v110 = v0[14];
                      v111 = swift_slowAlloc();
                      v169 = v108;
                      v112 = swift_slowAlloc();
                      log = v105;
                      v113 = swift_slowAlloc();
                      v200[0] = v113;
                      *v111 = 138412546;
                      *(v111 + 4) = v110;
                      *v112 = v175;
                      *(v111 + 12) = 2082;
                      v114 = v110;
                      v115 = sub_1002346CC(v196, v63, v200);

                      *(v111 + 14) = v115;
                      _os_log_impl(&_mh_execute_header, log, v178, "[%@] Updated distributor metadata for %{public}s.", v111, 0x16u);
                      sub_1001F8084(v112);

                      sub_10000710C(v113);

                      (*v181)(v169, v171);
LABEL_63:
                      v60 = (&stru_100779FF8 + 8);
                      goto LABEL_41;
                    }
                  }

                  else
                  {
                    v122 = v102;
                    _convertNSErrorToError(_:)();

                    swift_willThrow();
                    static Logger.daemon.getter();

                    v172 = v101;

                    swift_errorRetain();
                    v123 = Logger.logObject.getter();
                    v124 = static os_log_type_t.error.getter();

                    v173 = v124;
                    v125 = v124;
                    v105 = v123;
                    v126 = os_log_type_enabled(v123, v125);
                    v108 = v0[18];
                    v109 = v0[16];
                    if (v126)
                    {
                      v170 = v0[18];
                      v127 = v0[14];
                      v166 = v123;
                      v128 = swift_slowAlloc();
                      v129 = swift_slowAlloc();
                      loga = swift_slowAlloc();
                      v200[0] = loga;
                      *v128 = 138412802;
                      *(v128 + 4) = v127;
                      *v129 = v175;
                      *(v128 + 12) = 2082;
                      v130 = v127;
                      v131 = sub_1002346CC(v196, v63, v200);
                      v197 = v109;
                      v132 = v131;

                      *(v128 + 14) = v132;
                      *(v128 + 22) = 2114;
                      swift_errorRetain();
                      v133 = _swift_stdlib_bridgeErrorToNSError();
                      *(v128 + 24) = v133;
                      v129[1] = v133;
                      _os_log_impl(&_mh_execute_header, v166, v173, "[%@] Failed to update distributor metadata for %{public}s: %{public}@", v128, 0x20u);
                      sub_1001F0C48(&qword_10077F920);
                      swift_arrayDestroy();

                      sub_10000710C(loga);

                      (*v181)(v170, v197);
                      goto LABEL_63;
                    }
                  }

                  (*v181)(v108, v109);
                  goto LABEL_63;
                }

                v120 = v80;
                _convertNSErrorToError(_:)();

                swift_willThrow();

                v121 = *v190;
                (*v190)(v177, v81);
                v121(v179, v81);

                v60 = (&stru_100779FF8 + 8);
              }

              else
              {
              }
            }

            else
            {
              v61 = v67;

              _convertNSErrorToError(_:)();

              swift_willThrow();
            }

LABEL_41:
            v59 += 2;
            if (!--v58)
            {

              v37 = v187;
              v38 = v189;
              goto LABEL_30;
            }
          }
        }

        v37 = v187;
        v43 = v188;
      }

      else
      {
        v150 = v0[14];

        static Logger.daemon.getter();

        v151 = v150;

        v152 = Logger.logObject.getter();
        v153 = static os_log_type_t.error.getter();

        v154 = os_log_type_enabled(v152, v153);
        v155 = v0[20];
        v156 = v0[16];
        v38 = v189;
        if (!v154)
        {

          v148 = *v181;
          v149 = v155;
          v163 = v156;
          goto LABEL_72;
        }

        v198 = v0[16];
        v157 = v0[14];
        v158 = swift_slowAlloc();
        v159 = swift_slowAlloc();
        v184 = v155;
        v160 = swift_slowAlloc();
        v200[0] = v160;
        *v158 = 138412546;
        *(v158 + 4) = v157;
        *v159 = v175;
        *(v158 + 12) = 2082;
        v161 = v157;
        v162 = sub_1002346CC(v49, v48, v200);

        *(v158 + 14) = v162;
        _os_log_impl(&_mh_execute_header, v152, v153, "[%@] Distributor with ID %{public}s not installed from the web, can't update installed app metadata.", v158, 0x16u);
        sub_1001F8084(v159);
        v38 = v189;

        sub_10000710C(v160);

        v148 = *v181;
        v149 = v184;
LABEL_68:
        v163 = v198;
LABEL_72:
        v148(v149, v163);
        v37 = v187;
LABEL_30:
        v44 = v176;
        v39 = v189 + 8;
        v43 = v188;
      }
    }

    else
    {
      v134 = v0[14];
      v135 = v54;

      _convertNSErrorToError(_:)();

      swift_willThrow();

      static Logger.daemon.getter();

      v136 = v134;

      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();

      v139 = os_log_type_enabled(v137, v138);
      v140 = v0[19];
      v141 = v0[16];
      if (v139)
      {
        v198 = v0[16];
        v142 = v0[14];
        v143 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v186 = v140;
        v145 = swift_slowAlloc();
        v200[0] = v145;
        *v143 = 138412546;
        *(v143 + 4) = v142;
        *v144 = v175;
        *(v143 + 12) = 2082;
        v146 = v142;
        v147 = sub_1002346CC(v49, v48, v200);

        *(v143 + 14) = v147;
        _os_log_impl(&_mh_execute_header, v137, v138, "[%@] Distributor with ID %{public}s not found, can't update installed app metadata.", v143, 0x16u);
        sub_1001F8084(v144);
        v38 = v189;

        sub_10000710C(v145);

        v148 = *v181;
        v149 = v186;
        goto LABEL_68;
      }

      (*v181)(v140, v141);
      v37 = v187;
      v43 = v188;
      v44 = v176;
      v39 = v189 + 8;
      v38 = v189;
    }
  }

  while (1)
  {
    v45 = v37 + 1;
    if (__OFADD__(v37, 1))
    {
      __break(1u);
      goto LABEL_77;
    }

    if (v45 >= v44)
    {
      break;
    }

    v43 = v39[v45];
    ++v37;
    if (v43)
    {
      goto LABEL_36;
    }
  }

  sub_1001DFE6C(v174);

  v164 = v0[1];

  return v164();
}

uint64_t sub_1003A0900(void *a1)
{
  v2 = [a1 iTunesMetadata];
  v3 = [v2 distributorInfo];

  v4 = [v3 distributorID];
  if (!v4)
  {
    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v8 = v5 == 0xD000000000000012 && 0x80000001006C2DF0 == v7;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v5 == 0xD000000000000014 ? (v9 = 0x80000001006C47D0 == v7) : (v9 = 0), v9))
  {

    return 0;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return 0;
  }

  v11 = [a1 iTunesMetadata];
  v12 = [v11 distributorInfo];

  v13 = [v12 marketplaceDomain];
  if (v13)
  {

    v14 = [a1 iTunesMetadata];
    v15 = [v14 distributorInfo];

    v16 = [v15 marketplaceItemID];
    if (v16)
    {

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1003A0AEC()
{
  v2 = *v0;
  v3 = v0[2];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1001F0E54;

  return sub_10039F44C(v2, v5, v3);
}

uint64_t sub_1003A0B90(uint64_t a1, uint64_t a2)
{
  v3[160] = v2;
  v3[159] = a2;
  v3[158] = a1;
  v3[161] = type metadata accessor for EnsureAllowedDeveloperTask();
  v3[162] = swift_task_alloc();
  v4 = type metadata accessor for FeatureFlag();
  v3[163] = v4;
  v3[164] = *(v4 - 8);
  v3[165] = swift_task_alloc();
  v5 = type metadata accessor for URL();
  v3[166] = v5;
  v3[167] = *(v5 - 8);
  v3[168] = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  v3[169] = swift_task_alloc();
  v6 = type metadata accessor for AppInstallRequestType();
  v3[170] = v6;
  v3[171] = *(v6 - 8);
  v3[172] = swift_task_alloc();
  v3[173] = swift_task_alloc();
  v3[174] = swift_task_alloc();
  v3[175] = swift_task_alloc();
  v3[176] = swift_task_alloc();
  v3[177] = swift_task_alloc();
  v3[178] = swift_task_alloc();
  v3[179] = swift_task_alloc();
  v3[180] = swift_task_alloc();
  v3[181] = swift_task_alloc();
  sub_1001F0C48(&qword_100782F00);
  v3[182] = swift_task_alloc();
  v7 = type metadata accessor for MediaAPIMetadata();
  v3[183] = v7;
  v3[184] = *(v7 - 8);
  v3[185] = swift_task_alloc();
  v3[186] = swift_task_alloc();
  v3[187] = swift_task_alloc();
  v3[188] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EC90);
  v3[189] = swift_task_alloc();
  v3[190] = swift_task_alloc();
  v3[191] = swift_task_alloc();

  return _swift_task_switch(sub_1003A0EEC, 0, 0);
}

uint64_t sub_1003A0EEC()
{
  v1 = *(v0 + 1528);
  v2 = *(v0 + 1472);
  v3 = *(v0 + 1464);
  v4 = *(v0 + 1280);
  v5 = *v4;
  *(v0 + 1536) = *v4;
  v6 = *(v5 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  *(v0 + 1544) = v6;
  v7 = *(v2 + 56);
  *(v0 + 1552) = v7;
  *(v0 + 1560) = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v1, 1, 1, v3);
  v8 = v4[3];
  v9 = v4[4];
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  *(v0 + 1568) = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage;
  v11 = *(v5 + v10);
  v12 = *(*v11 + class metadata base offset for ManagedBuffer + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  v14 = v6;
  os_unfair_lock_lock((v11 + v13));
  sub_10020A980(v11 + v12, v0 + 728);
  os_unfair_lock_unlock((v11 + v13));
  *(v0 + 696) = v8;
  *(v0 + 704) = v9;
  *(v0 + 712) = 0;
  *(v0 + 720) = v14;
  v15 = swift_task_alloc();
  *(v0 + 1576) = v15;
  *v15 = v0;
  v15[1] = sub_1003A1080;
  v16 = *(v0 + 1520);

  return sub_10033EF00(v16);
}

uint64_t sub_1003A1080()
{
  *(*v1 + 1584) = v0;

  if (v0)
  {
    v2 = sub_1003A62A8;
  }

  else
  {
    v2 = sub_1003A1194;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1003A1194()
{
  v194 = v0;
  v1 = *(v0 + 1552);
  v2 = *(v0 + 1528);
  v3 = *(v0 + 1520);
  v4 = *(v0 + 1512);
  v5 = *(v0 + 1472);
  v6 = *(v0 + 1464);
  sub_1002232F0(v0 + 696);
  sub_1000032A8(v2, &qword_10077EC90);
  v1(v3, 0, 1, v6);
  sub_10038BF68(v3, v2);
  sub_100005934(v2, v4, &qword_10077EC90);
  v7 = (*(v5 + 48))(v4, 1, v6);
  v8 = *(v0 + 1512);
  if (v7 == 1)
  {
    sub_1000032A8(v8, &qword_10077EC90);
    if (qword_10077E510 != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 1544);
    v10 = type metadata accessor for Logger();
    sub_1002710CC(v10, qword_100782EE8);
    v11 = v9;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 1544);
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      *(v15 + 4) = v14;
      *v16 = v14;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v12, v13, "[%@] No metadata available", v15, 0xCu);
      sub_1000032A8(v16, &qword_10077F920);
    }

    v18 = *(v0 + 1544);
    v19 = *(v0 + 1528);

    type metadata accessor for InternalError();
    sub_1003A7B1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    sub_1000032A8(v19, &qword_10077EC90);
    goto LABEL_7;
  }

  v22 = *(v0 + 1504);
  v23 = *(v0 + 1464);
  sub_100222E54(v8, v22);
  v24 = *(v22 + *(v23 + 48));
  *(v0 + 1592) = v24;
  if (sub_1005F5804() < v24)
  {
    if (qword_10077E510 != -1)
    {
      swift_once();
    }

    v25 = *(v0 + 1544);
    v26 = type metadata accessor for Logger();
    *(v0 + 1600) = sub_1002710CC(v26, qword_100782EE8);
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = *(v0 + 1544);
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v30;
      *v32 = v30;
      v33 = v30;
      _os_log_impl(&_mh_execute_header, v28, v29, "[%@] In ADPDistributionValidationTask, device does not meet age rating.", v31, 0xCu);
      sub_1000032A8(v32, &qword_10077F920);
    }

    v34 = *(v0 + 1568);
    v35 = *(v0 + 1536);
    v36 = *(v0 + 1280);
    v37 = *(v0 + 1272);

    *(v0 + 1608) = *(*sub_100006D8C(v37, v37[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_exceptionRequestService);
    v38 = *(v36 + 8);
    *(v0 + 1616) = v38;
    v39 = *(v36 + 16);
    *(v0 + 1624) = v39;
    v40 = *(v35 + v34);
    v41 = *(*v40 + class metadata base offset for ManagedBuffer + 16);
    v42 = (*(*v40 + 48) + 3) & 0x1FFFFFFFCLL;

    os_unfair_lock_lock((v40 + v42));
    sub_10020A980(v40 + v41, v0 + 1144);
    os_unfair_lock_unlock((v40 + v42));
    v43 = *(v0 + 1168);
    v44 = *(v0 + 1176);
    sub_100006D8C((v0 + 1144), v43);
    v45 = (*(v44 + 40))(v43, v44);
    v47 = v46;
    *(v0 + 1632) = v46;
    v48 = swift_task_alloc();
    *(v0 + 1640) = v48;
    *v48 = v0;
    v48[1] = sub_1003A29B4;
    v49 = *(v0 + 1456);

    return sub_10059B568(v49, v38, v39, v45, v47);
  }

  v50 = *(*(v0 + 1536) + *(v0 + 1568));
  v51 = *(*v50 + class metadata base offset for ManagedBuffer + 16);
  v52 = (*(*v50 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v50 + v52));
  sub_10020A980(v50 + v51, v0 + 1024);
  os_unfair_lock_unlock((v50 + v52));
  sub_1001F0C48(&qword_10077E970);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v81 = *(v0 + 1544);
    sub_1000032A8(*(v0 + 1528), &qword_10077EC90);

LABEL_30:
    sub_100222E54(*(v0 + 1504), *(v0 + 1264));

    v20 = *(v0 + 8);
    goto LABEL_8;
  }

  v53 = *(v0 + 1568);
  v54 = *(v0 + 1536);
  v55 = *(v0 + 1432);
  v56 = *(v0 + 1424);
  v57 = *(v0 + 1368);
  v58 = *(v0 + 1360);

  v59 = *(v54 + v53);
  v60 = *(*v59 + class metadata base offset for ManagedBuffer + 16);
  v61 = (*(*v59 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v59 + v61));
  v189 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v188 = v57[2];
  v188(v55, v59 + *(v189 + 28) + v60, v58);
  os_unfair_lock_unlock((v59 + v61));
  v62 = v57[4];
  v62(v56, v55, v58);
  v187 = v57[11];
  v63 = v187(v56, v58);
  v190 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v64 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v181 = enum case for AppInstallRequestType.automaticUpdate(_:);
  v180 = enum case for AppInstallRequestType.update(_:);
  if (v63 == enum case for AppInstallRequestType.automaticUpdate(_:) || v63 == enum case for AppInstallRequestType.update(_:) || v63 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v63 == enum case for AppInstallRequestType.userVPPUpdate(_:) || (v65 = *(v0 + 1568), v182 = enum case for AppInstallRequestType.userVPPUpdate(_:), v66 = *(v0 + 1536), v67 = *(v0 + 1416), v68 = *(v0 + 1408), v69 = *(v0 + 1360), v185 = *(*(v0 + 1368) + 8), v185(*(v0 + 1424), v69), v70 = *(v66 + v65), v71 = *(*v70 + class metadata base offset for ManagedBuffer + 16), v72 = (*(*v70 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v70 + v72)), v73 = v70 + *(v189 + 28) + v71, v64 = v182, v188(v67, v73, v69), os_unfair_lock_unlock((v70 + v72)), v62(v68, v67, v69), v74 = v187(v68, v69), v74 == enum case for AppInstallRequestType.promotion(_:)) || v74 == enum case for AppInstallRequestType.restore(_:) || v74 == enum case for AppInstallRequestType.restoreUpdate(_:))
  {
    v82 = *(v0 + 1344);
    v83 = *(v0 + 1336);
    v84 = *(v0 + 1328);
    (*(v83 + 16))(v82, *(v0 + 1536) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v84);
    v186 = sub_1005D75BC();
    v86 = v85;
    (*(v83 + 8))(v82, v84);
    if (!v86)
    {
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v120 = *(v0 + 1544);
      v121 = type metadata accessor for Logger();
      sub_1002710CC(v121, qword_100782EE8);
      v122 = v120;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v123, v124))
      {
        goto LABEL_56;
      }

      v125 = *(v0 + 1544);
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412290;
      *(v126 + 4) = v125;
      *v127 = v125;
      v128 = v125;
      v129 = "[%@] The domain is invalid for distribution.";
      goto LABEL_55;
    }
  }

  else
  {
    v75 = *(v0 + 1536);
    v76 = *(v0 + 1352);
    v77 = *(v0 + 1336);
    v78 = *(v0 + 1328);
    v185(*(v0 + 1408), *(v0 + 1360));
    sub_100005934(v75 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v76, &unk_1007809F0);
    v79 = (*(v77 + 48))(v76, 1, v78);
    v80 = *(v0 + 1352);
    if (v79 == 1)
    {
      sub_1000032A8(*(v0 + 1352), &unk_1007809F0);
LABEL_51:
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v139 = *(v0 + 1544);
      v140 = type metadata accessor for Logger();
      sub_1002710CC(v140, qword_100782EE8);
      v141 = v139;
      v123 = Logger.logObject.getter();
      v124 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v123, v124))
      {
        goto LABEL_56;
      }

      v142 = *(v0 + 1544);
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      *v126 = 138412290;
      *(v126 + 4) = v142;
      *v127 = v142;
      v143 = v142;
      v129 = "[%@] Required referrer not found, failing.";
LABEL_55:
      _os_log_impl(&_mh_execute_header, v123, v124, v129, v126, 0xCu);
      sub_1000032A8(v127, &qword_10077F920);

LABEL_56:
      v144 = *(v0 + 1544);
      v145 = *(v0 + 1528);
      v132 = *(v0 + 1504);

      v146 = type metadata accessor for MarketplaceKitError();
      sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      (*(*(v146 - 8) + 104))(v147, enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:), v146);
      swift_willThrow();

      v135 = v145;
LABEL_57:
      sub_1000032A8(v135, &qword_10077EC90);
      sub_1003A7BC8(v132, type metadata accessor for MediaAPIMetadata);
LABEL_7:

      v20 = *(v0 + 8);
LABEL_8:

      return v20();
    }

    v136 = *(v0 + 1336);
    v137 = *(v0 + 1328);
    v186 = sub_1005D75BC();
    v86 = v138;
    (*(v136 + 8))(v80, v137);
    if (!v86)
    {
      goto LABEL_51;
    }
  }

  v87 = *(*(v0 + 1504) + *(*(v0 + 1464) + 60));
  if (!v87 || (*(v0 + 1240) = v186, *(v0 + 1248) = v86, v88 = swift_task_alloc(), *(v88 + 16) = v0 + 1240, v89 = sub_10020A1BC(sub_1001F7FFC, v88, v87), , (v89 & 1) == 0))
  {
    v106 = *(v0 + 1280);
    v108 = *(v106 + 8);
    v107 = *(v106 + 16);
    if (qword_10077E510 != -1)
    {
      swift_once();
    }

    v109 = *(v0 + 1544);
    v110 = type metadata accessor for Logger();
    sub_1002710CC(v110, qword_100782EE8);
    v111 = v109;

    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v112, v113))
    {
      v191 = v108;
      v114 = *(v0 + 1544);
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v193[0] = swift_slowAlloc();
      *v115 = 138412802;
      *(v115 + 4) = v114;
      *v116 = v114;
      *(v115 + 12) = 2082;
      v117 = v114;
      v118 = sub_1002346CC(v186, v86, v193);

      *(v115 + 14) = v118;
      *(v115 + 22) = 2082;
      v119 = sub_1002346CC(v191, v107, v193);

      *(v115 + 24) = v119;
      sub_1000032A8(v116, &qword_10077F920);

      swift_arrayDestroy();
    }

    else
    {
    }

    v130 = *(v0 + 1544);
    v131 = *(v0 + 1528);
    v132 = *(v0 + 1504);
    v133 = type metadata accessor for MarketplaceKitError();
    sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    (*(*(v133 - 8) + 104))(v134, enum case for MarketplaceKitError.featureUnavailable(_:), v133);
    swift_willThrow();

    v135 = v131;
    goto LABEL_57;
  }

  v183 = v64;
  v90 = *(v0 + 1504);
  v91 = *(v0 + 1272);
  sub_100006D8C(v91, v91[3]);
  v92 = *(v90 + 32);
  *(v0 + 1680) = v92;
  v93 = *(v90 + 40);
  *(v0 + 1688) = v93;

  LOBYTE(v92) = sub_10058AF60(v92, v93);

  if ((v92 & 1) == 0)
  {
    v94 = *(*(v0 + 1536) + *(v0 + 1568));
    v95 = v94 + *(*v94 + class metadata base offset for ManagedBuffer + 16);
    v96 = (*(*v94 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v94 + v96));
    *(v95 + *(v189 + 40)) = 1;
    os_unfair_lock_unlock((v94 + v96));
  }

  v97 = *(v0 + 1320);
  v98 = *(v0 + 1312);
  v99 = *(v0 + 1304);
  *(v0 + 876) = enum case for FeatureFlag.newInstallSheetFlow(_:);
  v100 = *(v98 + 104);
  *(v0 + 1696) = v100;
  *(v0 + 1704) = (v98 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v100(v97);
  v101 = isFeatureEnabled(_:)();
  v102 = *(v98 + 8);
  *(v0 + 1712) = v102;
  *(v0 + 1720) = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v102(v97, v99);
  v103 = *(v0 + 1504);
  if ((v101 & 1) != 0 && ((*(v103 + *(*(v0 + 1464) + 32)) & 1) != 0 || *(*(v0 + 1280) + 41) == 1))
  {
    v104 = *(v0 + 1544);
    v105 = *(v0 + 1528);

    sub_1000032A8(v105, &qword_10077EC90);
    goto LABEL_30;
  }

  v148 = *(v0 + 1536);
  v149 = *(v0 + 1272);
  sub_1003A7B64(v103, *(v0 + 1480));
  v150 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag;
  sub_10020A980(v148 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 1064);
  sub_100006D8C((v0 + 1064), *(v0 + 1088));
  v151 = sub_1003654A8();
  v178 = v152;
  v179 = v151;
  sub_10020A980(v148 + v150, v0 + 1104);
  sub_100006D8C((v0 + 1104), *(v0 + 1128));
  v153 = sub_100365508();
  v176 = v154;
  v177 = v153;
  v184 = v91;
  v155 = *(*sub_100006D8C(v149, v91[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_approvedDeveloperStore);
  if (*(v148 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) == 2)
  {
    v156 = *(v0 + 1400);
    v157 = *(v0 + 1392);
    v158 = *(*(v0 + 1536) + *(v0 + 1568));
    v159 = *(v0 + 1360);
    v160 = *(*v158 + class metadata base offset for ManagedBuffer + 16);
    v161 = (*(*v158 + 48) + 3) & 0x1FFFFFFFCLL;
    v162 = v155;

    os_unfair_lock_lock((v158 + v161));
    v188(v156, v158 + *(v189 + 28) + v160, v159);
    os_unfair_lock_unlock((v158 + v161));
    v188(v157, v156, v159);
    v163 = v187(v157, v159);
    if (v163 != enum case for AppInstallRequestType.automaticInstall(_:))
    {
      if (v163 == enum case for AppInstallRequestType.install(_:))
      {
        v164 = 1;
        goto LABEL_64;
      }

      if (v163 != v181)
      {
        v164 = 1;
        if (v163 != v180 && v163 != enum case for AppInstallRequestType.promotion(_:))
        {
          v164 = 0;
          if (v163 != enum case for AppInstallRequestType.restore(_:) && v163 != enum case for AppInstallRequestType.deviceVPP(_:) && v163 != v190 && v163 != enum case for AppInstallRequestType.userVPP(_:) && v163 != v183 && v163 != enum case for AppInstallRequestType.upp(_:) && v163 != enum case for AppInstallRequestType.restoreUpdate(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        goto LABEL_64;
      }
    }

    v164 = 0;
LABEL_64:
    v192 = v164;
    (*(*(v0 + 1368) + 8))(*(v0 + 1400), *(v0 + 1360));
    goto LABEL_65;
  }

  v192 = *(v148 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride);
  v162 = v155;

LABEL_65:
  v165 = *(v0 + 1544);
  v166 = *(v0 + 1480);
  v167 = *(v0 + 1296);
  v168 = *(v0 + 1288);
  v169 = *(v0 + 1272);
  v170 = *(*sub_100006D8C(v169, v184[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  LOBYTE(v169) = *(*sub_100006D8C(v169, v184[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108);
  sub_100222E54(v166, v167);
  v171 = (v167 + v168[5]);
  *v171 = v186;
  v171[1] = v86;
  v172 = (v167 + v168[6]);
  *v172 = v179;
  v172[1] = v178;
  v173 = (v167 + v168[7]);
  *v173 = v177;
  v173[1] = v176;
  *(v167 + v168[8]) = v162;
  *(v167 + v168[9]) = v192 & 1;
  *(v167 + v168[10]) = v165;
  *(v167 + v168[11]) = v170;
  *(v167 + v168[12]) = v169;
  v174 = v165;

  sub_10000710C(v0 + 1104);
  sub_10000710C(v0 + 1064);
  v175 = swift_task_alloc();
  *(v0 + 1728) = v175;
  *v175 = v0;
  v175[1] = sub_1003A5A48;

  return sub_1004F04B8();
}

uint64_t sub_1003A29B4()
{
  v1 = *v0;

  sub_10000710C(v1 + 1144);

  return _swift_task_switch(sub_1003A2AF8, 0, 0);
}

uint64_t sub_1003A2AF8()
{
  v169 = v0;
  v1 = *(v0 + 1456);
  v2 = type metadata accessor for AppLibrary.ExceptionRequest();
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    sub_1000032A8(v1, &qword_100782F00);
    v4 = 0;
  }

  else
  {
    v4 = AppLibrary.ExceptionRequest.exceptedRatingValue.getter();
    (*(v3 + 8))(v1, v2);
  }

  v5 = *(v0 + 1544);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 1624);
    v9 = *(v0 + 1616);
    v10 = *(v0 + 1544);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v168[0] = v13;
    *v11 = 138412802;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2080;
    v14 = v10;
    *(v11 + 14) = sub_1002346CC(v9, v8, v168);
    *(v11 + 22) = 2048;
    *(v11 + 24) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%@] Highest approved age rating for %s: %ld", v11, 0x20u);
    sub_1000032A8(v12, &qword_10077F920);

    sub_10000710C(v13);
  }

  if (v4 < *(v0 + 1592))
  {
    type metadata accessor for ATDispatchCenter();
    *(v0 + 1648) = static ATDispatchCenter.shared.getter();
    v15 = sub_1001F64A8(&off_100757400);
    *(v0 + 1656) = v15;
    sub_10023215C(&unk_100757420);
    v16 = swift_task_alloc();
    *(v0 + 1664) = v16;
    *v16 = v0;
    v16[1] = sub_1003A4194;

    return ATDispatchCenter.canAsk(to:requiredCapabilities:)(0, v15);
  }

  v17 = *(v0 + 1544);
  sub_1003A7B64(*(v0 + 1504), *(v0 + 1496));
  v18 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 1544);
    v22 = *(v0 + 1496);
    v23 = *(v0 + 1464);
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412802;
    *(v24 + 4) = v21;
    *v25 = v21;
    *(v24 + 12) = 2048;
    *(v24 + 14) = v4;
    *(v24 + 22) = 2048;
    v26 = *(v22 + *(v23 + 48));
    v27 = v21;
    sub_1003A7BC8(v22, type metadata accessor for MediaAPIMetadata);
    *(v24 + 24) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] The app rating was above the max allowed rating, but an age exception was found. Approved rating: %ld, app's rating: %ld", v24, 0x20u);
    sub_1000032A8(v25, &qword_10077F920);
  }

  else
  {
    sub_1003A7BC8(*(v0 + 1496), type metadata accessor for MediaAPIMetadata);
  }

  v28 = *(*(v0 + 1536) + *(v0 + 1568));
  v29 = *(*v28 + class metadata base offset for ManagedBuffer + 16);
  v30 = (*(*v28 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v28 + v30));
  sub_10020A980(v28 + v29, v0 + 1024);
  os_unfair_lock_unlock((v28 + v30));
  sub_1001F0C48(&qword_10077E970);
  if (!swift_dynamicCast())
  {
    v57 = *(v0 + 1544);
    sub_1000032A8(*(v0 + 1528), &qword_10077EC90);

LABEL_24:
    sub_100222E54(*(v0 + 1504), *(v0 + 1264));

    v58 = *(v0 + 8);
LABEL_52:

    return v58();
  }

  v31 = *(v0 + 1568);
  v32 = *(v0 + 1536);
  v33 = *(v0 + 1432);
  v34 = *(v0 + 1424);
  v35 = *(v0 + 1368);
  v36 = *(v0 + 1360);

  v37 = *(v32 + v31);
  v38 = *(*v37 + class metadata base offset for ManagedBuffer + 16);
  v39 = (*(*v37 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v37 + v39));
  v163 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v162 = v35[2];
  v162(v33, v37 + *(v163 + 28) + v38, v36);
  os_unfair_lock_unlock((v37 + v39));
  v40 = v35[4];
  v40(v34, v33, v36);
  v161 = v35[11];
  v41 = v161(v34, v36);
  v165 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v164 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v157 = enum case for AppInstallRequestType.automaticUpdate(_:);
  v156 = enum case for AppInstallRequestType.update(_:);
  if (v41 == enum case for AppInstallRequestType.automaticUpdate(_:) || v41 == enum case for AppInstallRequestType.update(_:) || v41 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v41 == enum case for AppInstallRequestType.userVPPUpdate(_:) || (v42 = *(v0 + 1568), v43 = *(v0 + 1536), v44 = *(v0 + 1416), v45 = *(v0 + 1408), v46 = *(v0 + 1360), v159 = *(*(v0 + 1368) + 8), v159(*(v0 + 1424), v46), v47 = *(v43 + v42), v48 = *(*v47 + class metadata base offset for ManagedBuffer + 16), v49 = (*(*v47 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v47 + v49)), v162(v44, v47 + *(v163 + 28) + v48, v46), os_unfair_lock_unlock((v47 + v49)), v40(v45, v44, v46), v50 = v161(v45, v46), v50 == enum case for AppInstallRequestType.promotion(_:)) || v50 == enum case for AppInstallRequestType.restore(_:) || v50 == enum case for AppInstallRequestType.restoreUpdate(_:))
  {
    v59 = *(v0 + 1344);
    v60 = *(v0 + 1336);
    v61 = *(v0 + 1328);
    (*(v60 + 16))(v59, *(v0 + 1536) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v61);
    v160 = sub_1005D75BC();
    v63 = v62;
    (*(v60 + 8))(v59, v61);
    if (!v63)
    {
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v97 = *(v0 + 1544);
      v98 = type metadata accessor for Logger();
      sub_1002710CC(v98, qword_100782EE8);
      v99 = v97;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v100, v101))
      {
        goto LABEL_50;
      }

      v102 = *(v0 + 1544);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138412290;
      *(v103 + 4) = v102;
      *v104 = v102;
      v105 = v102;
      v106 = "[%@] The domain is invalid for distribution.";
      goto LABEL_49;
    }
  }

  else
  {
    v51 = *(v0 + 1536);
    v52 = *(v0 + 1352);
    v53 = *(v0 + 1336);
    v54 = *(v0 + 1328);
    v159(*(v0 + 1408), *(v0 + 1360));
    sub_100005934(v51 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v52, &unk_1007809F0);
    v55 = (*(v53 + 48))(v52, 1, v54);
    v56 = *(v0 + 1352);
    if (v55 == 1)
    {
      sub_1000032A8(*(v0 + 1352), &unk_1007809F0);
LABEL_45:
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v117 = *(v0 + 1544);
      v118 = type metadata accessor for Logger();
      sub_1002710CC(v118, qword_100782EE8);
      v119 = v117;
      v100 = Logger.logObject.getter();
      v101 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v100, v101))
      {
        goto LABEL_50;
      }

      v120 = *(v0 + 1544);
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      *v103 = 138412290;
      *(v103 + 4) = v120;
      *v104 = v120;
      v121 = v120;
      v106 = "[%@] Required referrer not found, failing.";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v100, v101, v106, v103, 0xCu);
      sub_1000032A8(v104, &qword_10077F920);

LABEL_50:
      v107 = *(v0 + 1544);
      v108 = *(v0 + 1528);
      v109 = *(v0 + 1504);

      v110 = type metadata accessor for MarketplaceKitError();
      sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      v112 = v122;
      v113 = &enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:);
LABEL_51:
      (*(*(v110 - 8) + 104))(v112, *v113, v110);
      swift_willThrow();

      sub_1000032A8(v108, &qword_10077EC90);
      sub_1003A7BC8(v109, type metadata accessor for MediaAPIMetadata);

      v58 = *(v0 + 8);
      goto LABEL_52;
    }

    v114 = *(v0 + 1336);
    v115 = *(v0 + 1328);
    v160 = sub_1005D75BC();
    v63 = v116;
    (*(v114 + 8))(v56, v115);
    if (!v63)
    {
      goto LABEL_45;
    }
  }

  v64 = *(*(v0 + 1504) + *(*(v0 + 1464) + 60));
  if (!v64 || (*(v0 + 1240) = v160, *(v0 + 1248) = v63, v65 = swift_task_alloc(), *(v65 + 16) = v0 + 1240, v66 = sub_10020A1BC(sub_1001F7FFC, v65, v64), , (v66 & 1) == 0))
  {
    v83 = *(v0 + 1280);
    v85 = *(v83 + 8);
    v84 = *(v83 + 16);
    if (qword_10077E510 != -1)
    {
      swift_once();
    }

    v86 = *(v0 + 1544);
    v87 = type metadata accessor for Logger();
    sub_1002710CC(v87, qword_100782EE8);
    v88 = v86;

    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v89, v90))
    {
      v166 = v85;
      v91 = *(v0 + 1544);
      v92 = swift_slowAlloc();
      v93 = swift_slowAlloc();
      v168[0] = swift_slowAlloc();
      *v92 = 138412802;
      *(v92 + 4) = v91;
      *v93 = v91;
      *(v92 + 12) = 2082;
      v94 = v91;
      v95 = sub_1002346CC(v160, v63, v168);

      *(v92 + 14) = v95;
      *(v92 + 22) = 2082;
      v96 = sub_1002346CC(v166, v84, v168);

      *(v92 + 24) = v96;
      sub_1000032A8(v93, &qword_10077F920);

      swift_arrayDestroy();
    }

    else
    {
    }

    v107 = *(v0 + 1544);
    v108 = *(v0 + 1528);
    v109 = *(v0 + 1504);
    v110 = type metadata accessor for MarketplaceKitError();
    sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v112 = v111;
    v113 = &enum case for MarketplaceKitError.featureUnavailable(_:);
    goto LABEL_51;
  }

  v67 = *(v0 + 1504);
  v68 = *(v0 + 1272);
  sub_100006D8C(v68, v68[3]);
  v69 = *(v67 + 32);
  *(v0 + 1680) = v69;
  v70 = *(v67 + 40);
  *(v0 + 1688) = v70;

  LOBYTE(v69) = sub_10058AF60(v69, v70);

  if ((v69 & 1) == 0)
  {
    v71 = *(*(v0 + 1536) + *(v0 + 1568));
    v72 = v71 + *(*v71 + class metadata base offset for ManagedBuffer + 16);
    v73 = (*(*v71 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v71 + v73));
    *(v72 + *(v163 + 40)) = 1;
    os_unfair_lock_unlock((v71 + v73));
  }

  v74 = *(v0 + 1320);
  v75 = *(v0 + 1312);
  v76 = *(v0 + 1304);
  *(v0 + 876) = enum case for FeatureFlag.newInstallSheetFlow(_:);
  v77 = *(v75 + 104);
  *(v0 + 1696) = v77;
  *(v0 + 1704) = (v75 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v77(v74);
  v78 = isFeatureEnabled(_:)();
  v79 = *(v75 + 8);
  *(v0 + 1712) = v79;
  *(v0 + 1720) = (v75 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v79(v74, v76);
  v80 = *(v0 + 1504);
  if ((v78 & 1) != 0 && ((*(v80 + *(*(v0 + 1464) + 32)) & 1) != 0 || *(*(v0 + 1280) + 41) == 1))
  {
    v81 = *(v0 + 1544);
    v82 = *(v0 + 1528);

    sub_1000032A8(v82, &qword_10077EC90);
    goto LABEL_24;
  }

  v123 = *(v0 + 1536);
  v124 = *(v0 + 1272);
  sub_1003A7B64(v80, *(v0 + 1480));
  v125 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag;
  sub_10020A980(v123 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, v0 + 1064);
  sub_100006D8C((v0 + 1064), *(v0 + 1088));
  v126 = sub_1003654A8();
  v154 = v127;
  v155 = v126;
  sub_10020A980(v123 + v125, v0 + 1104);
  sub_100006D8C((v0 + 1104), *(v0 + 1128));
  v128 = sub_100365508();
  v152 = v129;
  v153 = v128;
  v158 = v68;
  v130 = *(*sub_100006D8C(v124, v68[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_approvedDeveloperStore);
  if (*(v123 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) == 2)
  {
    v131 = *(v0 + 1400);
    v132 = *(v0 + 1392);
    v133 = *(*(v0 + 1536) + *(v0 + 1568));
    v134 = *(v0 + 1360);
    v135 = *(*v133 + class metadata base offset for ManagedBuffer + 16);
    v136 = (*(*v133 + 48) + 3) & 0x1FFFFFFFCLL;
    v137 = v130;

    os_unfair_lock_lock((v133 + v136));
    v162(v131, v133 + *(v163 + 28) + v135, v134);
    os_unfair_lock_unlock((v133 + v136));
    v162(v132, v131, v134);
    v138 = v161(v132, v134);
    if (v138 != enum case for AppInstallRequestType.automaticInstall(_:))
    {
      if (v138 == enum case for AppInstallRequestType.install(_:))
      {
        v139 = 1;
        goto LABEL_61;
      }

      if (v138 != v157)
      {
        v139 = 1;
        if (v138 != v156 && v138 != enum case for AppInstallRequestType.promotion(_:))
        {
          v139 = 0;
          if (v138 != enum case for AppInstallRequestType.restore(_:) && v138 != enum case for AppInstallRequestType.deviceVPP(_:) && v138 != v165 && v138 != enum case for AppInstallRequestType.userVPP(_:) && v138 != v164 && v138 != enum case for AppInstallRequestType.upp(_:) && v138 != enum case for AppInstallRequestType.restoreUpdate(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        goto LABEL_61;
      }
    }

    v139 = 0;
LABEL_61:
    v167 = v139;
    (*(*(v0 + 1368) + 8))(*(v0 + 1400), *(v0 + 1360));
    goto LABEL_62;
  }

  v167 = *(v123 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride);
  v137 = v130;

LABEL_62:
  v140 = *(v0 + 1544);
  v141 = *(v0 + 1480);
  v142 = *(v0 + 1296);
  v143 = *(v0 + 1288);
  v144 = *(v0 + 1272);
  v145 = *(*sub_100006D8C(v144, v158[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  LOBYTE(v144) = *(*sub_100006D8C(v144, v158[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108);
  sub_100222E54(v141, v142);
  v146 = (v142 + v143[5]);
  *v146 = v160;
  v146[1] = v63;
  v147 = (v142 + v143[6]);
  *v147 = v155;
  v147[1] = v154;
  v148 = (v142 + v143[7]);
  *v148 = v153;
  v148[1] = v152;
  *(v142 + v143[8]) = v137;
  *(v142 + v143[9]) = v167 & 1;
  *(v142 + v143[10]) = v140;
  *(v142 + v143[11]) = v145;
  *(v142 + v143[12]) = v144;
  v149 = v140;

  sub_10000710C(v0 + 1104);
  sub_10000710C(v0 + 1064);
  v150 = swift_task_alloc();
  *(v0 + 1728) = v150;
  *v150 = v0;
  v150[1] = sub_1003A5A48;

  return sub_1004F04B8();
}

uint64_t sub_1003A4194(char a1)
{
  v4 = *v2;
  *(v4 + 1672) = v1;

  v5 = *(v4 + 1648);
  if (v1)
  {

    v6 = sub_1003A75BC;
  }

  else
  {

    *(v4 + 874) = a1 & 1;
    v6 = sub_1003A430C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1003A430C()
{
  v179 = v0;
  v1 = v0;
  if (*(v0 + 874) != 1)
  {
    goto LABEL_4;
  }

  v2 = *(v0 + 1568);
  v3 = *(v0 + 1536);
  v4 = *(v0 + 1448);
  v5 = *(v0 + 1440);
  v6 = *(v0 + 1368);
  v177 = v1;
  v7 = v1[170];
  v8 = *(v3 + v2);
  v9 = *(*v8 + class metadata base offset for ManagedBuffer + 16);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  v11 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v12 = *(v6 + 16);
  v12(v4, v8 + *(v11 + 28) + v9, v7);
  os_unfair_lock_unlock((v8 + v10));
  v12(v5, v4, v7);
  v13 = (*(v6 + 88))(v5, v7);
  v14 = enum case for AppInstallRequestType.automaticInstall(_:);
  if (v13 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_3:
    v1 = v177;
    (*(v177[171] + 8))(v177[181], v177[170]);
LABEL_4:
    v15 = v1[193];
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = v1[193];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      *(v19 + 4) = v18;
      *v20 = v18;
      v21 = v18;
      _os_log_impl(&_mh_execute_header, v16, v17, "[%@] Rating above max allowed rating, and there is no exception or this is a background install.", v19, 0xCu);
      sub_1000032A8(v20, &qword_10077F920);
    }

    v22 = v1[193];
    v23 = v1[191];
    v24 = v1[188];

    type metadata accessor for InternalError();
    sub_1003A7B1C(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_7;
  }

  if (v13 != enum case for AppInstallRequestType.install(_:))
  {
    if (v13 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_3;
    }

    if (v13 != enum case for AppInstallRequestType.update(_:) && v13 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v13 == enum case for AppInstallRequestType.restore(_:) || v13 == enum case for AppInstallRequestType.deviceVPP(_:) || v13 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v13 == enum case for AppInstallRequestType.userVPP(_:) || v13 == enum case for AppInstallRequestType.userVPPUpdate(_:) || v13 == enum case for AppInstallRequestType.upp(_:) || v13 == enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        goto LABEL_3;
      }

      return _assertionFailure(_:_:file:line:flags:)();
    }
  }

  v175 = enum case for AppInstallRequestType.install(_:);
  v1 = v177;
  v27 = v177[193];
  v28 = v177[188];
  v29 = v177[186];
  (*(v177[171] + 8))(v177[181], v177[170]);
  sub_1003A7B64(v28, v29);
  v30 = v27;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = v177[193];
    v34 = v177[186];
    v35 = v177[183];
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412546;
    *(v36 + 4) = v33;
    *v37 = v33;
    *(v36 + 12) = 2048;
    v38 = *(v34 + *(v35 + 48));
    v39 = v33;
    sub_1003A7BC8(v34, type metadata accessor for MediaAPIMetadata);
    *(v36 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v31, v32, "[%@] Rating is above max allowed rating, will attempt to ask parents/guardians for an age exception later. App's rating: %ld", v36, 0x16u);
    sub_1000032A8(v37, &qword_10077F920);
  }

  else
  {
    sub_1003A7BC8(v177[186], type metadata accessor for MediaAPIMetadata);
  }

  v40 = *(v177[192] + v177[196]);
  v41 = *(*v40 + class metadata base offset for ManagedBuffer + 16);
  v42 = (*(*v40 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v40 + v42));
  sub_10020A980(v40 + v41, (v177 + 128));
  os_unfair_lock_unlock((v40 + v42));
  sub_1001F0C48(&qword_10077E970);
  if (!swift_dynamicCast())
  {
    v70 = v177[193];
    sub_1000032A8(v177[191], &qword_10077EC90);

LABEL_37:
    sub_100222E54(v1[188], v1[158]);

    v25 = v1[1];
    goto LABEL_8;
  }

  v171 = v14;
  v43 = v177[196];
  v44 = v177[192];
  v45 = v177[179];
  v46 = v177[178];
  v47 = v177[171];
  v48 = v177[170];

  v49 = *(v44 + v43);
  v50 = *(*v49 + class metadata base offset for ManagedBuffer + 16);
  v51 = (*(*v49 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v49 + v51));
  v174 = v47[2];
  v174(v45, v49 + *(v11 + 28) + v50, v48);
  os_unfair_lock_unlock((v49 + v51));
  v52 = v47[4];
  v52(v46, v45, v48);
  v173 = v47[11];
  v53 = v173(v46, v48);
  v170 = enum case for AppInstallRequestType.automaticUpdate(_:);
  v167 = enum case for AppInstallRequestType.userVPPUpdate(_:);
  v168 = enum case for AppInstallRequestType.deviceVPPUpdate(_:);
  v169 = enum case for AppInstallRequestType.update(_:);
  if (v53 == enum case for AppInstallRequestType.automaticUpdate(_:) || v53 == enum case for AppInstallRequestType.update(_:) || v53 == enum case for AppInstallRequestType.deviceVPPUpdate(_:) || v53 == enum case for AppInstallRequestType.userVPPUpdate(_:) || (v54 = v177[196], v55 = v177[192], v56 = v177[177], v57 = v177[176], v58 = v177[170], v165 = *(v177[171] + 8), v165(v177[178], v58), v59 = *(v55 + v54), v60 = *(*v59 + class metadata base offset for ManagedBuffer + 16), v61 = (*(*v59 + 48) + 3) & 0x1FFFFFFFCLL, os_unfair_lock_lock((v59 + v61)), v174(v56, v59 + *(v11 + 28) + v60, v58), v62 = (v59 + v61), v1 = v177, os_unfair_lock_unlock(v62), v52(v57, v56, v58), v63 = v173(v57, v58), v63 == enum case for AppInstallRequestType.promotion(_:)) || v63 == enum case for AppInstallRequestType.restore(_:) || v63 == enum case for AppInstallRequestType.restoreUpdate(_:))
  {
    v71 = v1[168];
    v72 = v1[167];
    v73 = v1[166];
    (*(v72 + 16))(v71, v1[192] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_url, v73);
    v74 = sub_1005D75BC();
    v76 = v75;
    (*(v72 + 8))(v71, v73);
    if (!v76)
    {
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v109 = v1[193];
      v110 = type metadata accessor for Logger();
      sub_1002710CC(v110, qword_100782EE8);
      v111 = v109;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v112, v113))
      {
        goto LABEL_63;
      }

      v114 = v1[193];
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      *(v115 + 4) = v114;
      *v116 = v114;
      v117 = v114;
      v118 = "[%@] The domain is invalid for distribution.";
      goto LABEL_62;
    }
  }

  else
  {
    v64 = v177[192];
    v65 = v177[169];
    v66 = v177[167];
    v67 = v177[166];
    v165(v177[176], v177[170]);
    sub_100005934(v64 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_referrer, v65, &unk_1007809F0);
    v68 = (*(v66 + 48))(v65, 1, v67);
    v69 = v177[169];
    if (v68 == 1)
    {
      sub_1000032A8(v177[169], &unk_1007809F0);
LABEL_58:
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v126 = v177[193];
      v127 = type metadata accessor for Logger();
      sub_1002710CC(v127, qword_100782EE8);
      v128 = v126;
      v112 = Logger.logObject.getter();
      v113 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v112, v113))
      {
        goto LABEL_63;
      }

      v129 = v177[193];
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      *(v115 + 4) = v129;
      *v116 = v129;
      v130 = v129;
      v118 = "[%@] Required referrer not found, failing.";
LABEL_62:
      _os_log_impl(&_mh_execute_header, v112, v113, v118, v115, 0xCu);
      sub_1000032A8(v116, &qword_10077F920);

LABEL_63:
      v22 = v1[193];
      v23 = v1[191];
      v24 = v1[188];

      v119 = type metadata accessor for MarketplaceKitError();
      sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      v121 = v131;
      v122 = &enum case for MarketplaceKitError.invalidAlternativeDistributionPackageURL(_:);
LABEL_64:
      (*(*(v119 - 8) + 104))(v121, *v122, v119);
LABEL_7:
      swift_willThrow();

      sub_1000032A8(v23, &qword_10077EC90);
      sub_1003A7BC8(v24, type metadata accessor for MediaAPIMetadata);

      v25 = v1[1];
LABEL_8:

      return v25();
    }

    v123 = v177[167];
    v124 = v177[166];
    v74 = sub_1005D75BC();
    v76 = v125;
    (*(v123 + 8))(v69, v124);
    if (!v76)
    {
      goto LABEL_58;
    }
  }

  v77 = *(v1[188] + *(v1[183] + 60));
  if (!v77 || (v1[155] = v74, v1[156] = v76, v78 = swift_task_alloc(), *(v78 + 16) = v1 + 155, v79 = sub_10020A1BC(sub_1001F7FFC, v78, v77), , (v79 & 1) == 0))
  {
    v95 = v1[160];
    v97 = *(v95 + 8);
    v96 = *(v95 + 16);
    if (qword_10077E510 != -1)
    {
      swift_once();
    }

    v98 = v1[193];
    v99 = type metadata accessor for Logger();
    sub_1002710CC(v99, qword_100782EE8);
    v100 = v98;

    v101 = Logger.logObject.getter();
    v102 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v101, v102))
    {
      v103 = v1[193];
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v178[0] = swift_slowAlloc();
      *v104 = 138412802;
      *(v104 + 4) = v103;
      *v105 = v103;
      *(v104 + 12) = 2082;
      v106 = v103;
      v107 = sub_1002346CC(v74, v76, v178);

      *(v104 + 14) = v107;
      *(v104 + 22) = 2082;
      v108 = sub_1002346CC(v97, v96, v178);

      *(v104 + 24) = v108;
      sub_1000032A8(v105, &qword_10077F920);
      v1 = v177;

      swift_arrayDestroy();
    }

    else
    {
    }

    v22 = v1[193];
    v23 = v1[191];
    v24 = v1[188];
    v119 = type metadata accessor for MarketplaceKitError();
    sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
    swift_allocError();
    v121 = v120;
    v122 = &enum case for MarketplaceKitError.featureUnavailable(_:);
    goto LABEL_64;
  }

  v80 = v1[188];
  v172 = v1[159];
  sub_100006D8C(v172, v172[3]);
  v81 = *(v80 + 32);
  v1[210] = v81;
  v82 = *(v80 + 40);
  v1[211] = v82;

  LOBYTE(v81) = sub_10058AF60(v81, v82);

  if ((v81 & 1) == 0)
  {
    v83 = *(v1[192] + v1[196]);
    v84 = v83 + *(*v83 + class metadata base offset for ManagedBuffer + 16);
    v85 = (*(*v83 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v83 + v85));
    *(v84 + *(v11 + 40)) = 1;
    os_unfair_lock_unlock((v83 + v85));
  }

  v86 = v1[165];
  v87 = v1[164];
  v88 = v1[163];
  *(v1 + 219) = enum case for FeatureFlag.newInstallSheetFlow(_:);
  v89 = *(v87 + 104);
  v1[212] = v89;
  v1[213] = (v87 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v89(v86);
  v90 = isFeatureEnabled(_:)();
  v91 = *(v87 + 8);
  v1[214] = v91;
  v1[215] = (v87 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v91(v86, v88);
  v92 = v1[188];
  if ((v90 & 1) != 0 && ((*(v92 + *(v1[183] + 32)) & 1) != 0 || *(v1[160] + 41) == 1))
  {
    v93 = v1[193];
    v94 = v1[191];

    sub_1000032A8(v94, &qword_10077EC90);
    goto LABEL_37;
  }

  v132 = v76;
  v161 = v74;
  v133 = v1[192];
  v134 = v1[159];
  sub_1003A7B64(v92, v1[185]);
  v135 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag;
  sub_10020A980(v133 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_bag, (v1 + 133));
  sub_100006D8C(v1 + 133, v1[136]);
  v136 = sub_1003654A8();
  v164 = v137;
  v166 = v136;
  sub_10020A980(v133 + v135, (v1 + 138));
  sub_100006D8C(v1 + 138, v1[141]);
  v138 = sub_100365508();
  v162 = v139;
  v163 = v138;
  v140 = *(*sub_100006D8C(v134, v172[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_approvedDeveloperStore);
  if (*(v133 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride) == 2)
  {
    v141 = v1[175];
    v142 = v1[174];
    v143 = *(v1[192] + v1[196]);
    v144 = v1[170];
    v145 = *(*v143 + class metadata base offset for ManagedBuffer + 16);
    v146 = (*(*v143 + 48) + 3) & 0x1FFFFFFFCLL;
    v147 = v140;

    os_unfair_lock_lock((v143 + v146));
    v174(v141, v143 + *(v11 + 28) + v145, v144);
    os_unfair_lock_unlock((v143 + v146));
    v174(v142, v141, v144);
    v148 = v173(v142, v144);
    if (v148 != v171)
    {
      if (v148 == v175)
      {
        v149 = 1;
        goto LABEL_71;
      }

      if (v148 != v170)
      {
        v149 = 1;
        if (v148 != v169 && v148 != enum case for AppInstallRequestType.promotion(_:))
        {
          v149 = 0;
          if (v148 != enum case for AppInstallRequestType.restore(_:) && v148 != enum case for AppInstallRequestType.deviceVPP(_:) && v148 != v168 && v148 != enum case for AppInstallRequestType.userVPP(_:) && v148 != v167 && v148 != enum case for AppInstallRequestType.upp(_:) && v148 != enum case for AppInstallRequestType.restoreUpdate(_:))
          {
            return _assertionFailure(_:_:file:line:flags:)();
          }
        }

        goto LABEL_71;
      }
    }

    v149 = 0;
LABEL_71:
    v176 = v149;
    v1 = v177;
    (*(v177[171] + 8))(v177[175], v177[170]);
    goto LABEL_72;
  }

  v176 = *(v133 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_userInitiatedOverride);
  v147 = v140;

LABEL_72:
  v150 = v1[193];
  v151 = v1[185];
  v152 = v1[162];
  v153 = v1[161];
  v154 = v1[159];
  v155 = *(*sub_100006D8C(v154, v172[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  LOBYTE(v154) = *(*sub_100006D8C(v154, v172[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_device + 108);
  sub_100222E54(v151, v152);
  v156 = (v152 + v153[5]);
  *v156 = v161;
  v156[1] = v132;
  v157 = (v152 + v153[6]);
  *v157 = v166;
  v157[1] = v164;
  v158 = (v152 + v153[7]);
  *v158 = v163;
  v158[1] = v162;
  *(v152 + v153[8]) = v147;
  *(v152 + v153[9]) = v176 & 1;
  *(v152 + v153[10]) = v150;
  *(v152 + v153[11]) = v155;
  *(v152 + v153[12]) = v154;
  v159 = v150;

  sub_10000710C((v1 + 138));
  sub_10000710C((v1 + 133));
  v160 = swift_task_alloc();
  v1[216] = v160;
  *v160 = v1;
  v160[1] = sub_1003A5A48;

  return sub_1004F04B8();
}

uint64_t sub_1003A5A48(char a1)
{
  v4 = *v2;
  *(*v2 + 1736) = v1;

  if (v1)
  {

    v5 = sub_1003A78D8;
  }

  else
  {
    *(v4 + 875) = a1;
    v5 = sub_1003A5B78;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1003A5B78()
{
  if (*(v0 + 875))
  {
    v1 = *(v0 + 1712);
    v2 = *(v0 + 1696);
    v3 = *(v0 + 876);
    v4 = *(v0 + 1320);
    v5 = *(v0 + 1304);
    *(*(v0 + 1280) + 40) = 1;
    v2(v4, v3, v5);
    v6 = isFeatureEnabled(_:)();
    v1(v4, v5);
    if (v6)
    {
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 1544);
      v8 = type metadata accessor for Logger();
      sub_1002710CC(v8, qword_100782EE8);
      v9 = v7;
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = *(v0 + 1544);
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        *v13 = 138412290;
        *(v13 + 4) = v12;
        *v14 = v12;
        _os_log_impl(&_mh_execute_header, v10, v11, "[%@] Developer not allowed, waiting for developer approval.", v13, 0xCu);
        sub_1000032A8(v14, &qword_10077F920);
      }

      else
      {

        v10 = *(v0 + 1544);
      }

      v26 = *(v0 + 1688);
      v27 = *(v0 + 1680);
      v28 = *(v0 + 1528);
      v29 = *(v0 + 1504);
      v30 = *(v0 + 1296);

      type metadata accessor for InternalError();
      sub_1003A7B1C(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      *v31 = v27;
      v31[1] = v26;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    else
    {
      if (qword_10077E510 != -1)
      {
        swift_once();
      }

      v18 = *(v0 + 1544);
      v19 = type metadata accessor for Logger();
      sub_1002710CC(v19, qword_100782EE8);
      v20 = v18;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = *(v0 + 1544);
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        *v24 = 138412290;
        *(v24 + 4) = v23;
        *v25 = v23;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Developer not allowed, failing.", v24, 0xCu);
        sub_1000032A8(v25, &qword_10077F920);
      }

      else
      {

        v21 = *(v0 + 1544);
      }

      v28 = *(v0 + 1528);
      v29 = *(v0 + 1504);
      v30 = *(v0 + 1296);

      v32 = type metadata accessor for MarketplaceKitError();
      sub_1003A7B1C(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      (*(*(v32 - 8) + 104))(v33, enum case for MarketplaceKitError.cancelled(_:), v32);
      swift_willThrow();
    }

    sub_1003A7BC8(v30, type metadata accessor for EnsureAllowedDeveloperTask);
    sub_1000032A8(v28, &qword_10077EC90);
    sub_1003A7BC8(v29, type metadata accessor for MediaAPIMetadata);

    v17 = *(v0 + 8);
  }

  else
  {
    v15 = *(v0 + 1528);
    v16 = *(v0 + 1296);

    sub_1003A7BC8(v16, type metadata accessor for EnsureAllowedDeveloperTask);
    sub_1000032A8(v15, &qword_10077EC90);
    sub_100222E54(*(v0 + 1504), *(v0 + 1264));

    v17 = *(v0 + 8);
  }

  return v17();
}

uint64_t sub_1003A62A8()
{
  v36 = v0;
  sub_1002232F0(v0 + 696);
  if (qword_10077E510 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 1544);
  v2 = type metadata accessor for Logger();
  sub_1002710CC(v2, qword_100782EE8);
  v3 = v1;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 1544);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v35 = v34;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v8 = v6;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v9 = *(*(v0 + 1192) - 8);
    swift_task_alloc();
    (*(v9 + 16))();
    v10 = v6;
    v11 = String.init<A>(describing:)();
    v13 = v12;

    v14 = sub_1002346CC(v11, v13, &v35);

    *(v7 + 14) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error fetching metadata: %{public}s", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v34);
  }

  v15 = *(v0 + 1384);
  v16 = *(v0 + 1376);
  v17 = *(v0 + 1368);
  v18 = *(v0 + 1360);
  v19 = *(*(v0 + 1536) + *(v0 + 1568));
  v20 = *(*v19 + class metadata base offset for ManagedBuffer + 16);
  v21 = (*(*v19 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v19 + v21));
  v22 = type metadata accessor for ADPInstallConfiguration.Storage(0);
  v23 = *(v17 + 16);
  v23(v15, v19 + *(v22 + 28) + v20, v18);
  os_unfair_lock_unlock((v19 + v21));
  v23(v16, v15, v18);
  v24 = (*(v17 + 88))(v16, v18);
  if (v24 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
    goto LABEL_6;
  }

  if (v24 != enum case for AppInstallRequestType.install(_:))
  {
    if (v24 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
LABEL_6:
      (*(*(v0 + 1368) + 8))(*(v0 + 1384), *(v0 + 1360));
      v25 = *(v0 + 1544);
      v26 = *(v0 + 1528);
      swift_willThrow();

      sub_1000032A8(v26, &qword_10077EC90);

      v27 = *(v0 + 8);

      return v27();
    }

    if (v24 != enum case for AppInstallRequestType.update(_:) && v24 != enum case for AppInstallRequestType.promotion(_:))
    {
      if (v24 != enum case for AppInstallRequestType.restore(_:) && v24 != enum case for AppInstallRequestType.deviceVPP(_:) && v24 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v24 != enum case for AppInstallRequestType.userVPP(_:) && v24 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v24 != enum case for AppInstallRequestType.upp(_:) && v24 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_6;
    }
  }

  v29 = *(v0 + 1272);
  (*(*(v0 + 1368) + 8))(*(v0 + 1384), *(v0 + 1360));
  *(v0 + 808) = 60;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0;
  *(v0 + 872) = 41;
  *(v0 + 880) = 61;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0;
  *(v0 + 944) = 41;
  *(v0 + 952) = 0u;
  *(v0 + 968) = 0u;
  *(v0 + 984) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 1016) = 41;
  v30 = *(*sub_100006D8C(v29, v29[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1744) = v30;

  v31 = swift_allocObject();
  *(v0 + 1752) = v31;
  *(v31 + 16) = 0u;
  *(v31 + 32) = 0u;
  *(v31 + 48) = 0u;
  *(v31 + 64) = 0u;
  *(v31 + 80) = -1;
  *(v31 + 88) = v30;
  v32 = swift_task_alloc();
  *(v0 + 1760) = v32;
  *(v32 + 16) = &unk_10069F2C0;
  *(v32 + 24) = v31;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v33 = swift_task_alloc();
  *(v0 + 1768) = v33;
  *v33 = v0;
  v33[1] = sub_1003A6A84;

  return sub_1006600F0(v0 + 808);
}

uint64_t sub_1003A6A84(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[222] = a1;
  v3[223] = a2;

  v4 = swift_task_alloc();
  v3[224] = v4;
  *v4 = v6;
  v4[1] = sub_1003A6BDC;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_1003A6BDC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[225] = a1;
  v3[226] = a2;

  v4 = swift_task_alloc();
  v3[227] = v4;
  *v4 = v6;
  v4[1] = sub_1003A6D34;

  return sub_1006600F0((v3 + 119));
}

uint64_t sub_1003A6D34(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1824) = a1;
  *(v3 + 1832) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1208, sub_1003A6E3C, v3 + 656);
}

uint64_t sub_1003A6E58()
{
  v6 = *(v0 + 1800);
  v7 = *(v0 + 1824);
  v5 = *(v0 + 1776);
  v1 = *(v0 + 1208);
  v2 = *(v0 + 1216);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1840) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1208, sub_1003A6F30, v0 + 768);
}

uint64_t sub_1003A6F30()
{
  sub_1003A7B1C(&qword_10077EC88, type metadata accessor for SystemAlert);
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1003A6FE4, v1, v0);
}

uint64_t sub_1003A6FE4()
{
  v1 = *(v0 + 1840);

  return _swift_task_switch(sub_1003A707C, v1, 0);
}

uint64_t sub_1003A707C()
{
  if (qword_10077E540 != -1)
  {
    swift_once();
  }

  v1 = qword_100786178;
  *(v0 + 1848) = qword_100786178;

  return _swift_task_switch(sub_1003A7114, v1, 0);
}

uint64_t sub_1003A7114()
{
  v1 = v0[231];
  v2 = v0[230];
  v3 = sub_1003A7B1C(&qword_1007843A0, type metadata accessor for SystemAlertCenter);
  v4 = swift_task_alloc();
  v0[232] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[233] = v5;
  *v5 = v0;
  v5[1] = sub_1003A7250;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 873, v1, v3, 0xD000000000000010, 0x80000001006C40F0, sub_1001F63E0, v4, &type metadata for SystemAlert.Response);
}

uint64_t sub_1003A7250()
{
  v1 = *(*v0 + 1848);

  return _swift_task_switch(sub_1003A737C, v1, 0);
}

uint64_t sub_1003A737C()
{

  return _swift_task_switch(sub_1003A73E4, 0, 0);
}

uint64_t sub_1003A73E4()
{
  *(v0[160] + 40) = 1;
  v1 = v0[193];
  v2 = v0[191];
  swift_willThrow();

  sub_1000032A8(v2, &qword_10077EC90);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A75BC()
{
  v1 = *(v0 + 1544);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 1544);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    *(v5 + 4) = v4;
    *v6 = v4;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Rating above max allowed rating, and there is no exception or this is a background install.", v5, 0xCu);
    sub_1000032A8(v6, &qword_10077F920);
  }

  v8 = *(v0 + 1544);
  v9 = *(v0 + 1528);
  v10 = *(v0 + 1504);

  type metadata accessor for InternalError();
  sub_1003A7B1C(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_1000032A8(v9, &qword_10077EC90);
  sub_1003A7BC8(v10, type metadata accessor for MediaAPIMetadata);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1003A78D8()
{
  v1 = v0[191];
  v2 = v0[188];
  sub_1003A7BC8(v0[162], type metadata accessor for EnsureAllowedDeveloperTask);
  sub_1000032A8(v1, &qword_10077EC90);
  sub_1003A7BC8(v2, type metadata accessor for MediaAPIMetadata);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1003A7AD0()
{
  v0 = type metadata accessor for Logger();
  sub_100367DEC(v0, qword_100782EE8);
  sub_1002710CC(v0, qword_100782EE8);
  return static Logger.install.getter();
}

uint64_t sub_1003A7B1C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1003A7B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaAPIMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003A7BC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1003A7C28@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100526500(0, 22, 0);
  v4 = 0;
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = *(&off_100757878 + v4 + 32);
    v7 = _swiftEmptyArrayStorage[3];
    if (v5 >= v7 >> 1)
    {
      sub_100526500((v7 > 1), v5 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5++) = v6;
  }

  while (v4 != 22);
  v8 = sub_1003A8BDC(_swiftEmptyArrayStorage, a1);

  v9 = [a1 persistentID];

  return sub_1004DD8B8(v9, v8, a2);
}

double sub_1003A7D44@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = _swiftEmptyArrayStorage;
  sub_10052663C(0, 3, 0);
  v5 = _swiftEmptyArrayStorage;
  v7 = _swiftEmptyArrayStorage[2];
  v6 = _swiftEmptyArrayStorage[3];
  v8 = v6 >> 1;
  v9 = v7 + 1;
  if (v6 >> 1 <= v7)
  {
    sub_10052663C((v6 > 1), v7 + 1, 1);
    v5 = v19;
    v6 = v19[3];
    v8 = v6 >> 1;
  }

  v5[2] = v9;
  *(v5 + v7 + 32) = 0;
  v10 = v7 + 2;
  if (v8 < (v7 + 2))
  {
    sub_10052663C((v6 > 1), v7 + 2, 1);
    v5 = v19;
    v6 = v19[3];
    v8 = v6 >> 1;
  }

  v5[2] = v10;
  *(v5 + v9 + 32) = 1;
  if (v8 < (v7 + 3))
  {
    sub_10052663C((v6 > 1), v7 + 3, 1);
  }

  v11 = v19;
  v19[2] = v7 + 3;
  *(v11 + v10 + 32) = 2;
  v12 = sub_1003A9100(v11, a1);

  v13 = [a1 persistentID];

  sub_1005F17A8(v13, v12, v16);
  if (!v2)
  {
    v15 = v16[1];
    *a2 = v16[0];
    *(a2 + 16) = v15;
    result = *&v17;
    *(a2 + 32) = v17;
    *(a2 + 48) = v18;
  }

  return result;
}

uint64_t sub_1003A7ED0@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_1005266FC(0, 9, 0);
  v4 = 0;
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = *(&off_1007578B0 + v4 + 32);
    v7 = _swiftEmptyArrayStorage[3];
    if (v5 >= v7 >> 1)
    {
      sub_1005266FC((v7 > 1), v5 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5++) = v6;
  }

  while (v4 != 9);
  v8 = sub_1003A92DC(_swiftEmptyArrayStorage, a1);

  v9 = [a1 persistentID];

  return sub_10039E9DC(v9, v8, a2);
}

uint64_t sub_1003A7FEC@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  sub_100526770(0, 5, 0);
  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    sub_100526770((v4 > 1), v5 + 1, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  v8 = v5 + 2;
  if (v6 < (v5 + 2))
  {
    sub_100526770((v4 > 1), v5 + 2, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = 1;
  v9 = v5 + 3;
  if (v6 < (v5 + 3))
  {
    sub_100526770((v4 > 1), v5 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v8) = 2;
  v10 = _swiftEmptyArrayStorage[3];
  v11 = v10 >> 1;
  v12 = v5 + 4;
  if ((v10 >> 1) < (v5 + 4))
  {
    sub_100526770((v10 > 1), v5 + 4, 1);
    v10 = _swiftEmptyArrayStorage[3];
    v11 = v10 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v12;
  *(&_swiftEmptyArrayStorage[4] + v9) = 3;
  if (v11 < (v5 + 5))
  {
    sub_100526770((v10 > 1), v5 + 5, 1);
  }

  _swiftEmptyArrayStorage[2] = v5 + 5;
  *(&_swiftEmptyArrayStorage[4] + v12) = 4;
  v13 = sub_1003A962C(_swiftEmptyArrayStorage, a1);

  v14 = [a1 persistentID];

  return sub_10060295C(v14, v13, a2);
}

uint64_t sub_1003A81EC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1005267D0(0, 7, 0);
  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  v6 = v4 >> 1;
  v7 = v5 + 1;
  if (v4 >> 1 <= v5)
  {
    sub_1005267D0((v4 > 1), v5 + 1, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v7;
  *(&_swiftEmptyArrayStorage[4] + v5) = 0;
  v8 = v5 + 2;
  if (v6 <= v7)
  {
    sub_1005267D0((v4 > 1), v5 + 2, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v8;
  *(&_swiftEmptyArrayStorage[4] + v7) = 1;
  v9 = v5 + 3;
  if (v6 <= v8)
  {
    sub_1005267D0((v4 > 1), v5 + 3, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v9;
  *(&_swiftEmptyArrayStorage[4] + v8) = 2;
  v10 = v5 + 4;
  if (v6 <= v9)
  {
    sub_1005267D0((v4 > 1), v5 + 4, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v10;
  *(&_swiftEmptyArrayStorage[4] + v9) = 3;
  v11 = v5 + 5;
  if (v6 <= v10)
  {
    sub_1005267D0((v4 > 1), v5 + 5, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v11;
  *(&_swiftEmptyArrayStorage[4] + v10) = 4;
  v12 = v5 + 6;
  if (v6 <= v11)
  {
    sub_1005267D0((v4 > 1), v5 + 6, 1);
    v4 = _swiftEmptyArrayStorage[3];
    v6 = v4 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v12;
  *(&_swiftEmptyArrayStorage[4] + v11) = 5;
  if (v6 <= v12)
  {
    sub_1005267D0((v4 > 1), v5 + 7, 1);
  }

  _swiftEmptyArrayStorage[2] = v5 + 7;
  *(&_swiftEmptyArrayStorage[4] + v12) = 6;
  v13 = sub_1003A9890(_swiftEmptyArrayStorage, a1);

  v14 = [a1 persistentID];

  return sub_1004DE8EC(v14, v13, a2);
}

uint64_t sub_1003A84AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100526840(0, 17, 0);
  v4 = 0;
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = *(&off_100757908 + v4 + 32);
    v7 = _swiftEmptyArrayStorage[3];
    if (v5 >= v7 >> 1)
    {
      sub_100526840((v7 > 1), v5 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5++) = v6;
  }

  while (v4 != 17);
  v8 = sub_1003A9B4C(_swiftEmptyArrayStorage, a1);

  v9 = [a1 persistentID];

  return sub_1004E838C(v9, v8, a2);
}

uint64_t sub_1003A85C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100526870(0, 41, 0);
  v4 = 0;
  v5 = _swiftEmptyArrayStorage[2];
  do
  {
    v6 = *(&off_100757828 + v4 + 32);
    v7 = _swiftEmptyArrayStorage[3];
    if (v5 >= v7 >> 1)
    {
      sub_100526870((v7 > 1), v5 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v5 + 1;
    *(&_swiftEmptyArrayStorage[4] + v5++) = v6;
  }

  while (v4 != 41);
  v8 = sub_1003A9FEC(_swiftEmptyArrayStorage, a1);

  v9 = [a1 persistentID];

  return sub_1004D6EA8(v9, v8, a2);
}

void sub_1003A86E4(char a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003AA9E8(a1 & 1, a2, a3);
  v24 = sub_1001F0C48(&qword_100782F08);
  v13 = sub_100213FA0(&qword_100782F10, &qword_100782F08);
  LOBYTE(v23) = 0;
  v25 = v13;
  *(&v23 + 1) = v12;
  sub_1001F0C48(&qword_100781490);
  inited = swift_initStackObject();
  v22 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v23, inited + 32);
  sub_1001F0C48(&qword_100782F18);
  v15 = swift_initStackObject();
  *(v15 + 16) = v22;
  *(v15 + 32) = inited;

  v16 = sub_1005AEA34(v15);
  swift_setDeallocating();
  sub_1003AB410(v15 + 32);
  v17 = sub_1003AAF30(0, 0, v16, sub_1003AAEBC, 0, a4);

  if (v17)
  {
    static Logger.updates.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v23 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_1002346CC(a2, a3, &v23);
      _os_log_impl(&_mh_execute_header, v18, v19, "Removing available update for: %{public}s", v20, 0xCu);
      sub_10000710C(v21);
    }

    (*(v9 + 8))(v11, v8);
    [v17 deleteFromDatabase];
  }
}

void sub_1003A89E4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100006190(0, &qword_100784500);
  v8 = *a1;
  v9 = a1[1];
  v10 = sub_10060BC54(*a1, v9, 0, 0, 1);
  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = v10;
  v24 = a4;
  v12 = sub_10060D18C();
  if (v12)
  {
    v13 = v12;
    v14 = [v12 managementDeclarationIdentifier];

    if (v14)
    {
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      if (v15 == a2 && v17 == a3)
      {
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v20 = [v11 bundleVersion];
      if (v20)
      {
        v21 = v20;
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        sub_100006190(0, &qword_1007866D0);
        v23 = a1[2];
        v22 = a1[3];
        LOBYTE(v21) = sub_10060D498();

        if (v21)
        {
          sub_1003AA170(1, v8, v9, v23, v22, v24);

          return;
        }
      }
    }
  }

LABEL_14:

  a4 = v24;
LABEL_15:
  sub_1003A86E4(1, v8, v9, a4);
}

uint64_t sub_1003A8BDC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    v6 = 0x80000001006C3AA0;
    v7 = 0x80000001006C3A70;
    v8 = 0x80000001006C3A20;
    v9 = 0x80000001006C39D0;
    do
    {
      v10 = *v5++;
      v11 = 0xED000064695F6D65;
      v12 = 0x74695F656C707061;
      switch(v10)
      {
        case 1:
          v11 = 0xEA00000000007365;
          v12 = 0x7475626972747461;
          break;
        case 2:
          v12 = 0xD000000000000017;
          v11 = v9;
          break;
        case 3:
          v12 = 0x615F70756B636162;
          v11 = 0xEF617461645F7070;
          break;
        case 4:
          v11 = 0xE900000000000064;
          v12 = 0x695F656C646E7562;
          break;
        case 5:
          v12 = 0x6D5F646568636163;
          v11 = 0xEF61746164617465;
          break;
        case 6:
          v12 = 0x72616C756C6C6563;
          v11 = 0xEF7963696C6F705FLL;
          break;
        case 7:
          v12 = 0xD000000000000013;
          v11 = v8;
          break;
        case 8:
          v12 = 0x746172616C636564;
          v11 = 0xEE0064695F6E6F69;
          break;
        case 9:
          v12 = 0x746172616C636564;
          v11 = 0xEF79656B5F6E6F69;
          break;
        case 10:
          v12 = 0x5F6C6C6174736E69;
          v11 = 0xEE00676E696D6974;
          break;
        case 11:
          v12 = 0xD000000000000019;
          v11 = v7;
          break;
        case 12:
          v12 = 0x62697369765F7369;
          v11 = 0xEA0000000000656CLL;
          break;
        case 13:
          v11 = 0xE700000000000000;
          v12 = 0x65736E6563696CLL;
          break;
        case 14:
          v12 = 0xD000000000000010;
          v11 = v6;
          break;
        case 15:
          v12 = 0x74736566696E616DLL;
          v11 = 0xEC0000006C72755FLL;
          break;
        case 16:
          v11 = 0xE400000000000000;
          v12 = 1701667182;
          break;
        case 17:
          v11 = 0xE700000000000000;
          v12 = 0x616E6F73726570;
          break;
        case 18:
          v12 = 0x765F64656E6E6970;
          v11 = 0xEE006E6F69737265;
          break;
        case 19:
          v11 = 0xE800000000000000;
          v12 = 0x6D726F6674616C70;
          break;
        case 20:
          v12 = 0x6573616863727570;
          v11 = 0xEF646F6874656D5FLL;
          break;
        case 21:
          v12 = 0x6E5F726F646E6576;
          v11 = 0xEB00000000656D61;
          break;
        default:
          break;
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        v23 = v7;
        v24 = v6;
        v21 = v9;
        v22 = v8;
        sub_100526304((v13 > 1), v14 + 1, 1);
        v9 = v21;
        v8 = v22;
        v7 = v23;
        v6 = v24;
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v12;
      v15[5] = v11;
      --v3;
    }

    while (v3);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [a2 getValuesForProperties:isa];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = sub_1002093D0(v18);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v19;
  return result;
}

uint64_t sub_1003A9100(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 1;
      if (v7 == 1)
      {
        v9 = 0x696669746E656469;
      }

      else
      {
        v9 = 0x6E6F6973726576;
      }

      if (v8)
      {
        v10 = 0xEA00000000007265;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (v6)
      {
        v11 = v9;
      }

      else
      {
        v11 = 1701869940;
      }

      if (v6)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0xE400000000000000;
      }

      v14 = _swiftEmptyArrayStorage[2];
      v13 = _swiftEmptyArrayStorage[3];
      if (v14 >= v13 >> 1)
      {
        sub_100526304((v13 > 1), v14 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v14 + 1;
      v15 = &_swiftEmptyArrayStorage[2 * v14];
      v15[4] = v11;
      v15[5] = v12;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v17 = [v2 getValuesForProperties:isa];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = sub_1002093D0(v18);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v19;
  return result;
}

uint64_t sub_1003A92DC(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 7;
      if (v7 == 7)
      {
        v9 = 0x64695F6D657469;
      }

      else
      {
        v9 = 0x5F6E6F6973726576;
      }

      if (v8)
      {
        v10 = 0xE700000000000000;
      }

      else
      {
        v10 = 0xEA00000000006469;
      }

      if (v6 == 6)
      {
        v9 = 0xD000000000000014;
        v10 = 0x80000001006C3EA0;
      }

      v11 = 0xD00000000000001ALL;
      if (v6 == 4)
      {
        v11 = 0x6C72755F706461;
        v12 = 0xE700000000000000;
      }

      else
      {
        v12 = 0x80000001006C2BB0;
      }

      if (v6 <= 5)
      {
        v9 = v11;
        v10 = v12;
      }

      if (v6 == 2)
      {
        v13 = 0x695F656C646E7562;
      }

      else
      {
        v13 = 0x765F656C646E7562;
      }

      if (v6 == 2)
      {
        v14 = 0xE900000000000064;
      }

      else
      {
        v14 = 0xEE006E6F69737265;
      }

      if (v6)
      {
        v15 = 0x726168735F707061;
      }

      else
      {
        v15 = 0x5F746E756F636361;
      }

      if (v6)
      {
        v16 = 0xED00006C72755F65;
      }

      else
      {
        v16 = 0xEA00000000006469;
      }

      if (v6 <= 1)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v6 <= 3)
      {
        v17 = v13;
      }

      else
      {
        v17 = v9;
      }

      if (v6 <= 3)
      {
        v18 = v14;
      }

      else
      {
        v18 = v10;
      }

      v20 = _swiftEmptyArrayStorage[2];
      v19 = _swiftEmptyArrayStorage[3];
      if (v20 >= v19 >> 1)
      {
        sub_100526304((v19 > 1), v20 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v20 + 1;
      v21 = &_swiftEmptyArrayStorage[2 * v20];
      v21[4] = v17;
      v21[5] = v18;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = [v2 getValuesForProperties:isa];

  v24 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = sub_1002093D0(v24);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v25;
  return result;
}

uint64_t sub_1003A962C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 3;
      if (v7 == 3)
      {
        v9 = 0x735F657461647075;
      }

      else
      {
        v9 = 0x736E6F73616572;
      }

      if (v8)
      {
        v10 = 0xEC00000065746174;
      }

      else
      {
        v10 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v9 = 0x6574617473;
        v10 = 0xE500000000000000;
      }

      if (v6)
      {
        v11 = 0xEF79656B5F6E6F69;
      }

      else
      {
        v11 = 0xEE0064695F6E6F69;
      }

      if (v6 <= 1)
      {
        v12 = 0x746172616C636564;
      }

      else
      {
        v12 = v9;
      }

      if (v6 <= 1)
      {
        v13 = v11;
      }

      else
      {
        v13 = v10;
      }

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_100526304((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v12;
      v16[5] = v13;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v18 = [v2 getValuesForProperties:isa];

  v19 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = sub_1002093D0(v19);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v20;
  return result;
}

uint64_t sub_1003A9890(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      v8 = v7 == 5;
      if (v7 == 5)
      {
        v9 = 0x7972746E65;
      }

      else
      {
        v9 = 1701869940;
      }

      if (v8)
      {
        v10 = 0xE500000000000000;
      }

      else
      {
        v10 = 0xE400000000000000;
      }

      if (v6 == 3)
      {
        v11 = 0x7065725F7473616CLL;
      }

      else
      {
        v11 = 0x635F79616C706572;
      }

      if (v6 == 3)
      {
        v12 = 0xEB0000000079616CLL;
      }

      else
      {
        v12 = 0xEC000000746E756FLL;
      }

      if (v6 <= 4)
      {
        v9 = v11;
        v10 = v12;
      }

      v13 = 0x746172616C636564;
      if (v6 == 1)
      {
        v14 = 0xEE0064695F6E6F69;
      }

      else
      {
        v14 = 0xEF79656B5F6E6F69;
      }

      if (!v6)
      {
        v13 = 0x4449574F52;
        v14 = 0xE500000000000000;
      }

      if (v6 <= 2)
      {
        v15 = v13;
      }

      else
      {
        v15 = v9;
      }

      if (v6 <= 2)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      v18 = _swiftEmptyArrayStorage[2];
      v17 = _swiftEmptyArrayStorage[3];
      if (v18 >= v17 >> 1)
      {
        sub_100526304((v17 > 1), v18 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v18 + 1;
      v19 = &_swiftEmptyArrayStorage[2 * v18];
      v19[4] = v15;
      v19[5] = v16;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v21 = [v2 getValuesForProperties:isa];

  v22 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v23 = sub_1002093D0(v22);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v23;
  return result;
}

uint64_t sub_1003A9B4C(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    v6 = 0x80000001006C3D70;
    do
    {
      v7 = *v5++;
      v8 = 0xEC00000074657366;
      v9 = 0x666F5F7365747962;
      switch(v7)
      {
        case 1:
          v9 = 0x645F726568706963;
          v8 = 0xED00007473656769;
          break;
        case 2:
          v9 = 0x73736572706D6F63;
          v8 = 0xEF657A69735F6465;
          break;
        case 3:
          v9 = 0x6F72705F61746164;
          v8 = 0xEF64695F6573696DLL;
          break;
        case 4:
          v8 = 0xE600000000000000;
          v9 = 0x747365676964;
          break;
        case 5:
          v9 = 0x636F6C5F6B736964;
          v8 = 0xED00006E6F697461;
          break;
        case 6:
          v8 = 0xEA00000000006E6FLL;
          v9 = 0x6974707972636E65;
          break;
        case 7:
          v8 = 0xE600000000000000;
          v9 = 0x74616D726F66;
          break;
        case 8:
          v9 = 0x6B636F6C625F7369;
          v8 = 0xEA00000000006465;
          break;
        case 9:
          v9 = 0xD000000000000012;
          v8 = 0x80000001006C3D30;
          break;
        case 10:
          v8 = 0xE900000000000064;
          v9 = 0x695F746E65726170;
          break;
        case 11:
          v9 = 0x5F74736575716572;
          v8 = 0xED0000746E756F63;
          break;
        case 12:
          v9 = 0x7265696669726576;
          v8 = 0xEE0065746174735FLL;
          break;
        case 13:
          v8 = 0xE400000000000000;
          v9 = 1701869940;
          break;
        case 14:
          v9 = 0xD000000000000011;
          v8 = v6;
          break;
        case 15:
          v8 = 0xE300000000000000;
          v9 = 7107189;
          break;
        case 16:
          v8 = 0xE700000000000000;
          v9 = 0x746E6169726176;
          break;
        default:
          break;
      }

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        v18 = v6;
        sub_100526304((v10 > 1), v11 + 1, 1);
        v6 = v18;
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      v12[4] = v9;
      v12[5] = v8;
      --v3;
    }

    while (v3);
    v2 = a2;
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = [v2 getValuesForProperties:isa];

  v15 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = sub_1002093D0(v15);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v16;
  return result;
}

uint64_t sub_1003A9FEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100526304(0, v3, 0);
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v7 = sub_100234CBC(v6);
      v10 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];
      if (v10 >= v9 >> 1)
      {
        v12 = v7;
        v13 = v8;
        sub_100526304((v9 > 1), v10 + 1, 1);
        v8 = v13;
        v7 = v12;
      }

      _swiftEmptyArrayStorage[2] = v10 + 1;
      v11 = &_swiftEmptyArrayStorage[2 * v10];
      v11[4] = v7;
      v11[5] = v8;
      --v3;
    }

    while (v3);
  }

  isa = Array._bridgeToObjectiveC()().super.isa;

  v15 = [a2 getValuesForProperties:isa];

  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = sub_1002093D0(v16);

  sub_1001F0C48(&qword_100782F20);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v17;
  return result;
}

void sub_1003AA170(int a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  v37 = a6;
  v38 = a1;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.updates.getter();

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  v16 = os_log_type_enabled(v14, v15);
  v39 = a4;
  if (v16)
  {
    v17 = swift_slowAlloc();
    *&v36 = v11;
    v18 = a4;
    v19 = v17;
    v20 = swift_slowAlloc();
    v35 = v10;
    *&v40 = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1002346CC(a2, a3, &v40);
    *(v19 + 12) = 2082;
    *(v19 + 14) = sub_1002346CC(v18, a5, &v40);
    _os_log_impl(&_mh_execute_header, v14, v15, "Adding available update for: %{public}s / %{public}s", v19, 0x16u);
    swift_arrayDestroy();

    (*(v36 + 8))(v13, v35);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
  }

  v21 = v38;
  v22 = sub_1003AA9E8(v38 & 1, a2, a3);
  v23 = a2;
  v41 = sub_1001F0C48(&qword_100782F08);
  v24 = sub_100213FA0(&qword_100782F10, &qword_100782F08);
  LOBYTE(v40) = 0;
  v42 = v24;
  *(&v40 + 1) = v22;
  sub_1001F0C48(&qword_100781490);
  inited = swift_initStackObject();
  v36 = xmmword_10069E680;
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v40, inited + 32);
  sub_1001F0C48(&qword_100782F18);
  v26 = swift_initStackObject();
  *(v26 + 16) = v36;
  *(v26 + 32) = inited;
  v27 = v37;

  v28 = sub_1005AEA34(v26);
  swift_setDeallocating();
  sub_1003AB410(v26 + 32);
  v29 = sub_1003AAF30(0, 0, v28, sub_1003AAEBC, 0, v27);

  if (v29)
  {

    sub_1006340A0(v39, a5, 2, v29);
    v27 = v29;
  }

  else
  {
    v30 = 0x65726F7453707061;
    if (v21)
    {
      v30 = 0x6972707265746E65;
    }

    v43[0] = 0;
    v43[1] = v30;
    v31 = 0xEA00000000006573;
    if ((v21 & 1) == 0)
    {
      v31 = 0xE800000000000000;
    }

    v43[2] = v31;
    v43[3] = v23;
    v43[4] = a3;
    v43[5] = v39;
    v43[6] = a5;

    v32 = v43[9];
    v33 = sub_100564840(v43, v27);
    if (!v32)
    {
    }
  }
}

void sub_1003AA5D4(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *&v18 = a1;
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v7 = sub_1003AA9E8(0, v5, v6);

  v20 = sub_1001F0C48(&qword_100782F08);
  LOBYTE(v18) = 0;
  v21 = sub_100213FA0(&qword_100782F10, &qword_100782F08);
  *(&v18 + 1) = v7;
  sub_1001F0C48(&qword_100781490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v18, inited + 32);
  sub_1001F0C48(&qword_100782F18);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10069E680;
  *(v9 + 32) = inited;

  v10 = sub_1005AEA34(v9);
  swift_setDeallocating();
  sub_1003AB410(v9 + 32);
  v11 = sub_1003AAF30(0, 0, v10, sub_1003AAEBC, 0, a2);

  v12 = 0uLL;
  if (v11)
  {
    sub_1003A7D44(v11, &v18);
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
    v17 = v23;
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  *a3 = v12;
  *(a3 + 16) = v13;
  *(a3 + 24) = v14;
  *(a3 + 32) = v15;
  *(a3 + 40) = v16;
  *(a3 + 48) = v17;
}

void sub_1003AA7F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = sub_1003AA9E8(1, a1, a2);
  v19 = sub_1001F0C48(&qword_100782F08);
  LOBYTE(v17) = 0;
  v20 = sub_100213FA0(&qword_100782F10, &qword_100782F08);
  *(&v17 + 1) = v6;
  sub_1001F0C48(&qword_100781490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v17, inited + 32);
  sub_1001F0C48(&qword_100782F18);
  v8 = swift_initStackObject();
  *(v8 + 16) = xmmword_10069E680;
  *(v8 + 32) = inited;

  v9 = sub_1005AEA34(v8);
  swift_setDeallocating();
  sub_1003AB410(v8 + 32);
  v10 = sub_1003AAF30(0, 0, v9, sub_1003AAEBC, 0, a3);

  v11 = 0uLL;
  if (v10)
  {
    sub_1003A7D44(v10, &v17);
    v11 = v17;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    v15 = v21;
    v16 = v22;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
  }

  *a4 = v11;
  *(a4 + 16) = v12;
  *(a4 + 24) = v13;
  *(a4 + 32) = v14;
  *(a4 + 40) = v15;
  *(a4 + 48) = v16;
}

void *sub_1003AA9E8(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = 0x6972707265746E65;
  }

  else
  {
    v5 = 0x65726F7453707061;
  }

  if (a1)
  {
    v6 = 0xEA00000000006573;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = sub_1001F0C48(&qword_100782F28);
  v20 = v7;
  v8 = sub_100213FA0(&qword_100782F30, &qword_100782F28);
  v21 = v8;
  LOWORD(v18) = 0;
  *(&v18 + 1) = v5;
  v19 = v6;
  sub_1001F0C48(&qword_100781490);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v18, inited + 32);
  v16 = v7;
  v17 = v8;
  LOWORD(v14) = 1;
  *(&v14 + 1) = a2;
  v15 = a3;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_10069E680;
  sub_1001DFDBC(&v14, v10 + 32);
  sub_1001F0C48(&qword_100782F18);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_10069F6E0;
  *(v11 + 32) = inited;
  *(v11 + 40) = v10;

  v12 = sub_1005AEA34(v11);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100782F38);
  swift_arrayDestroy();
  return v12;
}

void *sub_1003AABB0()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  v1[2] = sub_1003AAC88;
  v1[3] = 0;
  v1[4] = 0x616470755F6D6464;
  v1[5] = 0xEA00000000006574;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_1003AAC88()
{
  v18[0] = 1701869940;
  v18[1] = 0xE400000000000000;
  v18[2] = 1415071060;
  v18[3] = 0xE400000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  v13[0] = 0x696669746E656469;
  v13[1] = 0xEA00000000007265;
  v13[2] = 1415071060;
  v13[3] = 0xE400000000000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 1;
  v8[0] = 0x6E6F6973726576;
  v8[1] = 0xE700000000000000;
  v8[2] = 1415071060;
  v8[3] = 0xE400000000000000;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 1;
  v0._countAndFlagsBits = 2019846495;
  v0._object = 0xE400000000000000;
  String.append(_:)(v0);
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F230;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v2 = swift_allocObject();
  *(inited + 32) = v2;
  sub_1002783D8(v18, v2 + 16);
  *(inited + 96) = &type metadata for SQLiteColumn;
  *(inited + 104) = &off_10076CDE0;
  v3 = swift_allocObject();
  *(inited + 72) = v3;
  sub_1002783D8(v13, v3 + 16);
  *(inited + 136) = &type metadata for SQLiteColumn;
  *(inited + 144) = &off_10076CDE0;
  v4 = swift_allocObject();
  *(inited + 112) = v4;
  sub_1002783D8(v8, v4 + 16);
  *(inited + 176) = &type metadata for SQLiteIndex;
  *(inited + 184) = &off_10076CDD8;
  v5 = swift_allocObject();
  *(inited + 152) = v5;
  *(v5 + 16) = 0x696669746E656469;
  *(v5 + 24) = 0xEA00000000007265;
  *(v5 + 32) = 0x696669746E656469;
  *(v5 + 40) = 0xEA00000000007265;
  *(v5 + 48) = 1;
  v6 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v8);
  sub_100278434(v13);
  sub_100278434(v18);
  return v6;
}

void sub_1003AAEBC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DDMUpdateEntity.Entity();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithPersistentID:a1 onConnection:a2];
  if (![v6 existsInDatabase])
  {

    v6 = 0;
  }

  *a3 = v6;
}

uint64_t sub_1003AAF30(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v50 = 0;
  type metadata accessor for DDMUpdateEntity.Entity();
  v12 = [objc_allocWithZone(ASUSQLiteQueryDescriptor) initWithEntityClass:swift_getObjCClassFromMetadata() memoryEntityClass:0];
  v13 = sub_10047EDB4(a2 & 1, a3);
  [v12 setPredicate:v13];

  if (a1)
  {
    v14 = *(a1 + 16);
    if (v14)
    {
      v46 = a4;
      v47 = a5;
      v48 = v12;

      v15 = (a1 + 33);
      v16 = _swiftEmptyArrayStorage;
      v17 = _swiftEmptyArrayStorage;
      while (1)
      {
        v18 = *(v15 - 1);
        if (*v15)
        {
          v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v21 = v20;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v23 = *(v16 + 2);
          v22 = *(v16 + 3);
          if (v23 >= v22 >> 1)
          {
            v16 = sub_100009530((v22 > 1), v23 + 1, 1, v16);
          }

          *(v16 + 2) = v23 + 1;
          v24 = &v16[16 * v23];
          *(v24 + 4) = v19;
          *(v24 + 5) = v21;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        else
        {
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = sub_100009530(0, *(v16 + 2) + 1, 1, v16);
          }

          v31 = *(v16 + 2);
          v30 = *(v16 + 3);
          if (v31 >= v30 >> 1)
          {
            v16 = sub_100009530((v30 > 1), v31 + 1, 1, v16);
          }

          *(v16 + 2) = v31 + 1;
          v32 = &v16[16 * v31];
          *(v32 + 4) = v27;
          *(v32 + 5) = v29;
          if (v18)
          {
LABEL_10:
            if (v18 == 1)
            {
              v25 = 0x696669746E656469;
              v26 = 0xEA00000000007265;
            }

            else
            {
              v26 = 0xE700000000000000;
              v25 = 0x6E6F6973726576;
            }

            goto LABEL_19;
          }
        }

        v26 = 0xE400000000000000;
        v25 = 1701869940;
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_100009530(0, *(v17 + 2) + 1, 1, v17);
        }

        v34 = *(v17 + 2);
        v33 = *(v17 + 3);
        if (v34 >= v33 >> 1)
        {
          v17 = sub_100009530((v33 > 1), v34 + 1, 1, v17);
        }

        *(v17 + 2) = v34 + 1;
        v35 = &v17[16 * v34];
        *(v35 + 4) = v25;
        *(v35 + 5) = v26;
        v15 += 2;
        if (!--v14)
        {

          v12 = v48;
          a4 = v46;
          a5 = v47;
          goto LABEL_26;
        }
      }
    }

    v16 = _swiftEmptyArrayStorage;
    v17 = _swiftEmptyArrayStorage;
LABEL_26:
    sub_100235974(v16);

    isa = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingDirections:isa];

    sub_100235974(v17);

    v37 = Array._bridgeToObjectiveC()().super.isa;

    [v12 setOrderingProperties:v37];
  }

  v38 = [objc_allocWithZone(ASUSQLiteQuery) initOnConnection:a6 descriptor:v12];
  v39 = swift_allocObject();
  v39[2] = &v50;
  v39[3] = a4;
  v39[4] = a5;
  v39[5] = a6;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1002398F8;
  *(v40 + 24) = v39;
  aBlock[4] = sub_100239904;
  aBlock[5] = v40;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10047E468;
  aBlock[3] = &unk_100763058;
  v41 = _Block_copy(aBlock);
  v42 = a6;

  [v38 enumeratePersistentIDsUsingBlock:v41];

  _Block_release(v41);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v45 = v50;

    return v45;
  }

  return result;
}

uint64_t sub_1003AB410(uint64_t a1)
{
  v2 = sub_1001F0C48(&qword_10077FA00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1003AB480(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v6)
    {
      v7 = BYTE6(a2);
      goto LABEL_11;
    }

    goto LABEL_8;
  }

  if (v6 != 2)
  {
    v7 = 0;
    goto LABEL_11;
  }

  v9 = *(result + 16);
  v8 = *(result + 24);
  v7 = v8 - v9;
  if (__OFSUB__(v8, v9))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_16:
      __break(1u);
      return result;
    }

    v7 = HIDWORD(result) - result;
  }

LABEL_11:
  v10 = *(a4 + 32);
  result = v10(a3, a4);
  if (!result)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = v7 / result;
  v12 = v10(a3, a4);
  result = v11 * v12;
  if ((v11 * v12) >> 64 != (v11 * v12) >> 63)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_1003AB564(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v69 = a2;
  v70 = a1;
  v68 = type metadata accessor for OSSignpostID();
  v4 = *(v68 - 8);
  v5 = __chkstk_darwin(v68);
  v7 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v65 - v8;
  v10 = type metadata accessor for Logger();
  __chkstk_darwin(v10 - 8);
  v67 = type metadata accessor for OSSignposter();
  v11 = *(v67 - 8);
  __chkstk_darwin(v67);
  v13 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.download.getter();
  OSSignposter.init(logger:)();
  static OSSignpostID.exclusive.getter();
  v14 = OSSignposter.logHandle.getter();
  v15 = static os_signpost_type_t.begin.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    v16 = swift_slowAlloc();
    v66 = v2;
    v17 = v16;
    *v16 = 0;
    v18 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v14, v15, v18, "Download/Decode", "", v17, 2u);
    v3 = v66;
  }

  v19 = v68;
  (*(v4 + 16))(v7, v9, v68);
  type metadata accessor for OSSignpostIntervalState();
  swift_allocObject();
  v20 = OSSignpostIntervalState.init(id:isOpen:)();
  (*(v4 + 8))(v9, v19);
  (*(v11 + 8))(v13, v67);
  v21 = v73;
  v22 = v73[8];
  if (v22 >> 60 == 15)
  {
    v23 = v69;
    v24 = v70;
    *&v72 = v70;
    *(&v72 + 1) = v69;
    sub_10020ABFC(v70, v69);
    v25 = v23;
  }

  else
  {
    v26 = v73[7];
    *&v72 = v26;
    *(&v72 + 1) = v22;
    sub_1001DFECC(v26, v22);
    sub_10020ABFC(v26, v22);
    v23 = v69;
    Data.append(_:)();
    sub_10020B0E0(v26, v22);
    v27 = v21[7];
    v28 = v21[8];
    *(v21 + 7) = xmmword_10069E8A0;
    sub_10020B0E0(v27, v28);
    v29 = v72;
    v25 = v29 >> 64;
    v24 = v29;
  }

  v30 = v21[5];
  v31 = v21[6];
  sub_100006D8C(v21 + 2, v30);
  result = sub_1003AB480(v24, v25, v30, v31);
  v34 = result + v33;
  if (__OFADD__(result, v33))
  {
    __break(1u);
    goto LABEL_64;
  }

  v35 = result;
  v36 = v33;
  v37 = v25 >> 62;
  if ((v25 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = BYTE6(v25);
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v37 != 2)
  {
    v38 = 0;
    goto LABEL_17;
  }

  v40 = *(v24 + 16);
  v39 = *(v24 + 24);
  v41 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v41)
  {
    __break(1u);
LABEL_14:
    LODWORD(v38) = HIDWORD(v24) - v24;
    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_67:
      __break(1u);
      goto LABEL_68;
    }

    v38 = v38;
  }

LABEL_17:
  if (v34 != v38)
  {
LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  if (v33 >= 1)
  {
    sub_10020ABFC(v24, v25);
    sub_1003ABFD4(v35, v24, v25, v71);
    v42 = v21[7];
    v43 = v21[8];
    *(v21 + 7) = *v71;
    sub_10020B0E0(v42, v43);
    sub_10020ABFC(v24, v25);
    sub_1003AC124(v36, v24, v25, v71);
    v44 = *v71;
    result = sub_100007158(v24, v25);
    v72 = v44;
    v37 = *(&v44 + 1) >> 62;
    v25 = *(&v44 + 1);
    v24 = v44;
  }

  if (v37 <= 1)
  {
    v45 = v73;
    if (!v37)
    {
      v46 = BYTE6(v25);
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v45 = v73;
  if (v37 != 2)
  {
    v46 = 0;
    goto LABEL_30;
  }

  v48 = *(v24 + 16);
  v47 = *(v24 + 24);
  v41 = __OFSUB__(v47, v48);
  v46 = v47 - v48;
  if (v41)
  {
    __break(1u);
LABEL_27:
    LODWORD(v46) = HIDWORD(v24) - v24;
    if (__OFSUB__(HIDWORD(v24), v24))
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v46 = v46;
  }

LABEL_30:
  v49 = v45[8];
  if (v49 >> 60 == 15)
  {
LABEL_31:
    v50 = 0;
    goto LABEL_32;
  }

  v50 = v45[7];
  v52 = v49 >> 62;
  if ((v49 >> 62) > 1)
  {
    if (v52 != 2)
    {
      goto LABEL_31;
    }

    v55 = v50 + 16;
    v53 = *(v50 + 16);
    v54 = *(v55 + 8);
    v41 = __OFSUB__(v54, v53);
    v50 = v54 - v53;
    if (v41)
    {
      __break(1u);
      goto LABEL_49;
    }

LABEL_32:
    v41 = __OFADD__(v46, v50);
    v51 = v46 + v50;
    if (!v41)
    {
      if (v51 == v34)
      {
        if (v37 > 1)
        {
          if (v37 != 2 || *(v24 + 16) == *(v24 + 24))
          {
            goto LABEL_54;
          }

LABEL_50:
          if (v35 >= 1)
          {
            goto LABEL_51;
          }

LABEL_54:
          sub_100007158(v24, v25);
          v58 = 0;
LABEL_55:
          v59 = v70;
          sub_1003ABC04(v20, v70, v23);
          sub_100007158(v59, v23);

          return v58;
        }

        if (!v37)
        {
          if ((v25 & 0xFF000000000000) == 0 || v35 <= 0)
          {
            goto LABEL_54;
          }

LABEL_51:
          swift_beginAccess();
          if (v45[10] && (sub_1003AC5C8(v24, v25), v3))
          {
            swift_endAccess();
            v56 = v24;
            v57 = v25;
          }

          else
          {
            swift_endAccess();
            v60 = v45[5];
            v61 = v45[6];
            sub_100006D8C(v45 + 2, v60);
            (*(v61 + 8))(&v72, v60, v61);
            if (!v3)
            {
              v64 = v72;
              v63 = v64 >> 64;
              v58 = v64;
              sub_10020ABFC(v72, *(&v72 + 1));
              sub_100007158(v58, v63);
              goto LABEL_55;
            }

            v62 = v72;
            v57 = v62 >> 64;
            v56 = v62;
          }

          sub_100007158(v56, v57);
          v58 = v70;
          sub_1003ABC04(v20, v70, v23);
          sub_100007158(v58, v23);

          return v58;
        }

LABEL_49:
        if (v24 == v24 >> 32)
        {
          goto LABEL_54;
        }

        goto LABEL_50;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  if (!v52)
  {
    v50 = BYTE6(v49);
    goto LABEL_32;
  }

  v41 = __OFSUB__(HIDWORD(v50), v50);
  LODWORD(v50) = HIDWORD(v50) - v50;
  if (!v41)
  {
    v50 = v50;
    goto LABEL_32;
  }

LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1003ABC04(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = type metadata accessor for OSSignpostError();
  v29 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v31 = *(v8 - 8);
  v32 = v8;
  __chkstk_darwin(v8);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for Logger();
  __chkstk_darwin(v11 - 8);
  v30 = type metadata accessor for OSSignposter();
  v12 = *(v30 - 8);
  __chkstk_darwin(v30);
  v14 = &v27[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Logger.download.getter();
  OSSignposter.init(logger:)();
  sub_10020ABFC(a2, a3);
  v15 = OSSignposter.logHandle.getter();
  OSSignpostIntervalState.signpostID.getter();
  v28 = static os_signpost_type_t.end.getter();
  if ((OS_os_log.signpostsEnabled.getter() & 1) == 0)
  {

    sub_100007158(a2, a3);
LABEL_17:
    (*(v31 + 8))(v10, v32);
    return (*(v12 + 8))(v14, v30);
  }

  checkForErrorAndConsumeState(state:)();

  v16 = v29;
  if ((*(v29 + 88))(v7, v5) == enum case for OSSignpostError.doubleEnd(_:))
  {
    v17 = 0;
    v18 = "[Error] Interval already ended";
  }

  else
  {
    (*(v16 + 8))(v7, v5);
    v18 = "bytes%ld";
    v17 = 1;
  }

  result = swift_slowAlloc();
  *result = 0;
  *(result + 1) = v17;
  *(result + 2) = 2048;
  v20 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v20 != 2)
    {
      v21 = 0;
      goto LABEL_16;
    }

    v23 = *(a2 + 16);
    v22 = *(a2 + 24);
    v24 = __OFSUB__(v22, v23);
    v21 = v22 - v23;
    if (!v24)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  else if (!v20)
  {
    v21 = BYTE6(a3);
LABEL_16:
    *(result + 4) = v21;
    v25 = result;
    sub_100007158(a2, a3);
    v26 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v15, v28, v26, "Download/Decode", v18, v25, 0xCu);

    goto LABEL_17;
  }

  LODWORD(v21) = HIDWORD(a2) - a2;
  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    v21 = v21;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1003ABFD4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v8 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v8 == 2)
      {
        v10 = *(a2 + 16);
        v9 = *(a2 + 24);
      }

      else
      {
        v9 = 0;
        v10 = 0;
      }
    }

    else
    {
      if (v8)
      {
        v9 = a2 >> 32;
      }

      else
      {
        v9 = BYTE6(a3);
      }

      if (v8)
      {
        v10 = a2;
      }

      else
      {
        v10 = 0;
      }
    }

    v11 = sub_1003AC7F0(v10, v9, a2, a3);
    if (!v6 || v11 >= v6)
    {
      v12 = sub_1003AC78C(v10, v6, a2, a3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          v13 = *(a2 + 24);
        }

        else
        {
          v13 = 0;
        }
      }

      else if (v8)
      {
        v13 = a2 >> 32;
      }

      else
      {
        v13 = BYTE6(a3);
      }

      if (v13 < v12)
      {
        __break(1u);
      }
    }

    v14 = Data._Representation.subscript.getter();
    v16 = v15;
    result = sub_100007158(a2, a3);
    *a4 = v14;
    a4[1] = v16;
  }

  return result;
}

uint64_t sub_1003AC124@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a2;
    v7 = a3 >> 62;
    if ((a3 >> 62) > 1)
    {
      if (v7 == 2)
      {
        a2 = *(a2 + 16);
        v8 = *(v5 + 24);
      }

      else
      {
        a2 = 0;
        v8 = 0;
      }
    }

    else
    {
      if (v7)
      {
        a2 = a2;
      }

      else
      {
        a2 = 0;
      }

      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(a3);
      }
    }

    v9 = -result;
    v10 = sub_1003AC7F0(v8, a2, v5, a3);
    if (v10 > 0 || v10 <= v9)
    {
      v11 = sub_1003AC78C(v8, v9, v5, a3);
      if (v7 > 1)
      {
        v12 = 0;
        if (v7 == 2)
        {
          v12 = *(v5 + 16);
        }
      }

      else if (v7)
      {
        v12 = v5;
      }

      else
      {
        v12 = 0;
      }

      if (v11 < v12)
      {
        __break(1u);
      }
    }

    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    result = sub_100007158(v5, a3);
    *a4 = v13;
    a4[1] = v15;
  }

  return result;
}

uint64_t sub_1003AC26C()
{
  v3 = v0;
  v4 = v0[8];
  if (v4 >> 60 == 15)
  {
    v2 = 0;
    v5 = 0xF000000000000000;
  }

  else
  {
    v6 = v0[7];
    swift_beginAccess();
    v7 = v0[10];
    sub_10020ABFC(v6, v4);
    if (v7)
    {
      sub_1003AC5C8(v6, v4);
      if (v1)
      {
        swift_endAccess();
        sub_10020B0E0(v6, v4);

        return v2;
      }
    }

    swift_endAccess();
    sub_10020A980((v3 + 2), v18);
    v2 = v19;
    v13 = v20;
    sub_100006D8C(v18, v19);
    v14 = (*(v13 + 16))(v6, v4, v2, v13);
    if (v1)
    {

      sub_10020B0E0(v6, v4);
LABEL_13:
      sub_10000710C(v18);
      return v2;
    }

    v2 = v14;
    v5 = v15;
    sub_10020B0E0(v6, v4);
    sub_10000710C(v18);
  }

  swift_beginAccess();
  if (!v3[10] || (sub_10031DE30((v3 + 9), v18), sub_10033CF84(), sub_10031DE8C(v18), !v1))
  {
    sub_10020A980((v3 + 2), v18);

    v8 = v19;
    v9 = v20;
    v10 = sub_100006D8C(v18, v19);
    __chkstk_darwin(v10);
    (*(v12 + 16))(&v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 24))(v8, v9);
    if (v1)
    {
      sub_10020B0E0(v2, v5);
    }

    goto LABEL_13;
  }

  sub_10020B0E0(v2, v5);
  return v2;
}

uint64_t sub_1003AC528()
{
  sub_10000710C(v0 + 16);
  sub_10020B0E0(*(v0 + 56), *(v0 + 64));
  sub_1000032A8(v0 + 72, &qword_100782FF0);

  return swift_deallocClassInstance();
}

void sub_1003AC5C8(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v6, 0, 14);
      v3 = v6;
      goto LABEL_9;
    }

    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
LABEL_7:
    sub_1003AC6F8(v4, v5);
    return;
  }

  if (v2)
  {
    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  v6[0] = a1;
  LOWORD(v6[1]) = a2;
  BYTE2(v6[1]) = BYTE2(a2);
  BYTE3(v6[1]) = BYTE3(a2);
  BYTE4(v6[1]) = BYTE4(a2);
  BYTE5(v6[1]) = BYTE5(a2);
  v3 = v6 + BYTE6(a2);
LABEL_9:
  sub_10033CAD4(v6, v3);
}

void sub_1003AC6F8(uint64_t a1, uint64_t a2)
{
  v4 = __DataStorage._bytes.getter();
  if (v4)
  {
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v5))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v4 += a1 - v5;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = __DataStorage._length.getter();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v4;
  if (v4)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  sub_10033CAD4(v4, v11);
}

uint64_t sub_1003AC78C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = __OFADD__(a1, a2);
  result = a1 + a2;
  if (v4)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v6 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v6)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < result || result < v8)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1003AC7F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v6 = *(a3 + 16);
      v5 = *(a3 + 24);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v5 = a3 >> 32;
    if (v4)
    {
      v6 = a3;
    }

    else
    {
      v5 = BYTE6(a4);
      v6 = 0;
    }
  }

  if (v5 < result || v6 > result)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v8 = *(a3 + 16);
      v7 = *(a3 + 24);
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    v7 = BYTE6(a4);
    if (v4)
    {
      v7 = a3 >> 32;
      v8 = a3;
    }

    else
    {
      v8 = 0;
    }
  }

  if (v7 < a2 || v8 > a2)
  {
    goto LABEL_22;
  }

  v9 = __OFSUB__(a2, result);
  result = a2 - result;
  if (v9)
  {
LABEL_23:
    __break(1u);
  }

  return result;
}

uint64_t sub_1003AC8A4(uint64_t a1, __int128 *a2, uint64_t a3)
{
  type metadata accessor for Decrypter();
  v7 = swift_allocObject();
  *(v7 + 56) = xmmword_10069E8A0;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  *(v7 + 120) = 0u;
  *(v7 + 136) = 0u;
  sub_10020A980(a1, v7 + 16);
  v8 = *(a2 + 2);
  if (v8 == 1)
  {
    sub_1000032A8(a3, &qword_10077E968);
    sub_10000710C(a1);
    memset(v11, 0, sizeof(v11));
LABEL_6:
    swift_beginAccess();
    sub_1003ACA30(v11, v7 + 72);
    swift_endAccess();
    return v7;
  }

  v12 = *a2;
  v13 = v8;
  v14 = *(a2 + 24);
  v15 = *(a2 + 5);
  sub_1003ACAA0(a3, v10);
  sub_10033C5F4(&v12, v10, v11);
  if (!v3)
  {
    sub_1000032A8(a3, &qword_10077E968);
    sub_10000710C(a1);
    goto LABEL_6;
  }

  sub_1000032A8(a3, &qword_10077E968);
  sub_10000710C(a1);
  return v7;
}

uint64_t sub_1003ACA30(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100782FF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ACAA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_10077E968);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1003ACB10(uint64_t a1, uint64_t a2)
{
  v28 = a2;
  v5 = type metadata accessor for ApprovedDeveloper();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v22 - v10;
  v12 = *v2;
  result = sub_1002FA824(3, v12);
  if (result)
  {
    v14 = result;
    v23 = v12;
    v24 = v9;
    v25 = v3;
    v29 = result;
    v15 = *(result + 16);

    v26 = v15;
    if (v15)
    {
      v16 = 0;
      v27 = v6 + 16;
      v17 = (v6 + 8);
      v22[1] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v16 < *(v14 + 16))
      {
        (*(v6 + 16))(v11, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v16, v5);
        if (ApprovedDeveloper.identifier.getter() == a1 && v18 == v28)
        {

          v20 = *v17;
          (*v17)(v11, v5);
LABEL_11:

          v21 = v24;
          sub_100669ED4(v16, v24);
          v20(v21, v5);
          sub_1002FA9D4(v29, 3, v23);
        }

        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = *v17;
        result = (*v17)(v11, v5);
        if (v19)
        {
          goto LABEL_11;
        }

        if (v26 == ++v16)
        {
          return swift_bridgeObjectRelease_n();
        }
      }

      __break(1u);
    }

    else
    {
      return swift_bridgeObjectRelease_n();
    }
  }

  return result;
}

void *sub_1003ACD80()
{
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E680;
  *(inited + 56) = &type metadata for SQLiteTable;
  *(inited + 64) = &off_10076CDE8;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  *(v1 + 16) = sub_1003ACE60;
  *(v1 + 24) = 0;
  strcpy((v1 + 32), "secure_storage");
  *(v1 + 47) = -18;
  v2 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_10000710C(inited + 32);
  return v2;
}

void *sub_1003ACE60()
{
  v28[0] = 0xD000000000000012;
  v28[1] = 0x80000001006C3950;
  v28[2] = 0x52454745544E49;
  v28[3] = 0xE700000000000000;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 1;
  v23[0] = 0xD000000000000019;
  v23[1] = 0x80000001006C3930;
  v23[2] = 1112493122;
  v23[3] = 0xE400000000000000;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 1;
  v18[0] = 0xD000000000000016;
  v18[1] = 0x80000001006C3970;
  v18[2] = 1112493122;
  v18[3] = 0xE400000000000000;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 1;
  v13[0] = 0xD000000000000013;
  v13[1] = 0x80000001006C3990;
  v13[2] = 1112493122;
  v13[3] = 0xE400000000000000;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 1;
  v8[0] = 0xD000000000000010;
  v8[1] = 0x80000001006C39B0;
  v8[2] = 1112493122;
  v8[3] = 0xE400000000000000;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 1;
  sub_1001F0C48(&unk_100786ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 56) = &type metadata for SQLiteColumn;
  *(inited + 64) = &off_10076CDE0;
  v1 = swift_allocObject();
  *(inited + 32) = v1;
  sub_1002783D8(v28, v1 + 16);
  *(inited + 96) = &type metadata for SQLiteColumn;
  *(inited + 104) = &off_10076CDE0;
  v2 = swift_allocObject();
  *(inited + 72) = v2;
  sub_1002783D8(v23, v2 + 16);
  *(inited + 136) = &type metadata for SQLiteColumn;
  *(inited + 144) = &off_10076CDE0;
  v3 = swift_allocObject();
  *(inited + 112) = v3;
  sub_1002783D8(v18, v3 + 16);
  *(inited + 176) = &type metadata for SQLiteColumn;
  *(inited + 184) = &off_10076CDE0;
  v4 = swift_allocObject();
  *(inited + 152) = v4;
  sub_1002783D8(v13, v4 + 16);
  *(inited + 216) = &type metadata for SQLiteColumn;
  *(inited + 224) = &off_10076CDE0;
  v5 = swift_allocObject();
  *(inited + 192) = v5;
  sub_1002783D8(v8, v5 + 16);
  v6 = sub_1005A83A0(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_10077F5F0);
  swift_arrayDestroy();
  sub_100278434(v8);
  sub_100278434(v13);
  sub_100278434(v18);
  sub_100278434(v23);
  sub_100278434(v28);
  return v6;
}

uint64_t sub_1003AD104()
{
  *(v1 + 72) = v0;
  v2 = swift_task_alloc();
  *(v1 + 80) = v2;
  *v2 = v1;
  v2[1] = sub_1003AD198;

  return sub_1003B7F18(1);
}

uint64_t sub_1003AD198(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 88) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1003AD2D4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_1003AD2D4()
{
  *(v0 + 64) = *(v0 + 88);
  swift_errorRetain();
  sub_1001F0C48(&unk_10077F940);
  if (swift_dynamicCast() && *(v0 + 32) && (v1 = *(v0 + 16), , v1 == -7006))
  {

    v2 = swift_task_alloc();
    *(v0 + 96) = v2;
    *v2 = v0;
    v2[1] = sub_1003AD424;

    return sub_1003B7F18(0);
  }

  else
  {

    swift_willThrow();
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1003AD424(uint64_t a1)
{
  v3 = *v2;
  v3[5] = v2;
  v3[6] = a1;
  v3[7] = v1;
  v3[13] = v1;

  if (v1)
  {
    v4 = sub_1003AD5A8;
  }

  else
  {
    v4 = sub_1003AD540;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1003AD540()
{

  v1 = *(v0 + 48);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1003AD5A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AD60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003AD72C, v8, v7);
}

uint64_t sub_1003AD72C()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003AD7B8, 0, 0);
}

uint64_t sub_1003AD7B8()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003ADA40, v2, v3);
}

uint64_t sub_1003AD838()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003ADA40, v12, v13);
}

uint64_t sub_1003ADA40()
{
  v1 = v0[13];
  sub_100541758(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003ADB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003ADC48, v8, v7);
}

uint64_t sub_1003ADC48()
{
  sub_10053BBD0();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003ADCD4, 0, 0);
}

uint64_t sub_1003ADCD4()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003ADF68, v2, v3);
}

uint64_t sub_1003ADD54()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000016, 0x80000001006CAAE0, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003ADF68, v12, v13);
}

uint64_t sub_1003ADF68()
{
  v1 = *(v0 + 104);
  sub_100541D0C(sub_1003BE324, *(v0 + 112), *(v0 + 24));
  *(v0 + 120) = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AE050, 0, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1003AE050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AE0B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003AE1D4, v7, v6);
}

uint64_t sub_1003AE1D4()
{
  sub_10053C60C();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003AE260, 0, 0);
}

uint64_t sub_1003AE260()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003AE4F4, v2, v3);
}

uint64_t sub_1003AE2E0()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000011, 0x80000001006CAB00, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003AE4F4, v12, v13);
}

uint64_t sub_1003AE4F4()
{
  v1 = v0[12];
  v2 = sub_100541FB4(sub_1003BE470, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AE5E0, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3 & 1);
  }
}

uint64_t sub_1003AE5E0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1003AE648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003AE768, v7, v6);
}

uint64_t sub_1003AE768()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003AE7F4, 0, 0);
}

uint64_t sub_1003AE7F4()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003AEA88, v2, v3);
}

uint64_t sub_1003AE874()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003AEA88, v12, v13);
}

uint64_t sub_1003AEA88()
{
  v1 = v0[12];
  v2 = sub_100541FB4(sub_1003BE834, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E4, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3 & 1);
  }
}

uint64_t sub_1003AEB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003AEC94, v7, v6);
}

uint64_t sub_1003AEC94()
{
  sub_10053DB08();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003AED20, 0, 0);
}

uint64_t sub_1003AED20()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003AEFB4, v2, v3);
}

uint64_t sub_1003AEDA0()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003AEFB4, v12, v13);
}

uint64_t sub_1003AEFB4()
{
  v1 = v0[12];
  v2 = sub_10054221C(sub_1003BE450, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003AF0AC, 0, 0);
  }

  else
  {
    v4 = v3;
    v5 = v2;

    v6 = v0[1];

    return v6(v5, v4 & 1);
  }
}

uint64_t sub_1003AF0AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003AF110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003AF230, v7, v6);
}

uint64_t sub_1003AF230()
{
  sub_10053DB08();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003AF2BC, 0, 0);
}

uint64_t sub_1003AF2BC()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003AF550, v2, v3);
}

uint64_t sub_1003AF33C()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003AF550, v12, v13);
}

uint64_t sub_1003AF550()
{
  v1 = v0[12];
  v2 = sub_100542490(sub_1003BE864, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v4 = v2;
    v5 = v3;

    v6 = v0[1];

    return v6(v4, v5);
  }
}

uint64_t sub_1003AF648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003AF768, v8, v7);
}

uint64_t sub_1003AF768()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003AF7F4, 0, 0);
}

uint64_t sub_1003AF7F4()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003AFA7C, v2, v3);
}

uint64_t sub_1003AF874()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003AFA7C, v12, v13);
}

uint64_t sub_1003AFA7C()
{
  v1 = v0[13];
  sub_100542700(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003AFB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003AFC84, v7, v6);
}

uint64_t sub_1003AFC84()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003AFD10, 0, 0);
}

uint64_t sub_1003AFD10()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003AFFA4, v2, v3);
}

uint64_t sub_1003AFD90()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003AFFA4, v12, v13);
}

uint64_t sub_1003AFFA4()
{
  v1 = v0[12];
  v2 = sub_100542A4C(sub_1003BE84C, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1003B0094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B01B4, v8, v7);
}

uint64_t sub_1003B01B4()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B0240, 0, 0);
}

uint64_t sub_1003B0240()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B04C8, v2, v3);
}

uint64_t sub_1003B02C0()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B04C8, v12, v13);
}

uint64_t sub_1003B04C8()
{
  v1 = v0[13];
  sub_10054329C(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B05B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B06D0, v7, v6);
}

uint64_t sub_1003B06D0()
{
  sub_10053B1A4();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B075C, 0, 0);
}

uint64_t sub_1003B075C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B09E4, v2, v3);
}

uint64_t sub_1003B07DC()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B09E4, v12, v13);
}

uint64_t sub_1003B09E4()
{
  v1 = v0[12];
  v2 = sub_1005435EC(sub_1003BE84C, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1003B0AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B0BF4, v8, v7);
}

uint64_t sub_1003B0BF4()
{
  sub_10053B1A4();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B0C80, 0, 0);
}

uint64_t sub_1003B0C80()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B0F08, v2, v3);
}

uint64_t sub_1003B0D00()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(5063748, 0xE300000000000000, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B0F08, v12, v13);
}

uint64_t sub_1003B0F08()
{
  v1 = v0[13];
  sub_100543868(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B0FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B1110, v7, v6);
}

uint64_t sub_1003B1110()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B119C, 0, 0);
}

uint64_t sub_1003B119C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B1430, v2, v3);
}

uint64_t sub_1003B121C()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B1430, v12, v13);
}

uint64_t sub_1003B1430()
{
  v1 = v0[12];
  v2 = sub_100543F00(sub_1003BE87C, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v4 = v3;
    v5 = v2;

    v6 = v0[1];

    return v6(v5, v4 & 1);
  }
}

uint64_t sub_1003B1528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  v6 = type metadata accessor for Logger();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();
  v4[2] = a4;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[10] = v8;
  v4[11] = v7;

  return _swift_task_switch(sub_1003B1648, v8, v7);
}

uint64_t sub_1003B1648()
{
  sub_10053D048();
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B16D4, 0, 0);
}

uint64_t sub_1003B16D4()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = *(v0 + 32);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);

  return _swift_task_switch(sub_1003B1968, v2, v3);
}

uint64_t sub_1003B1754()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);
  v6 = *(v0 + 56);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = swift_task_alloc();
  *(v0 + 112) = v11;
  *(v11 + 16) = *(v0 + 32);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 80);
  v13 = *(v0 + 88);

  return _swift_task_switch(sub_1003B1968, v12, v13);
}

uint64_t sub_1003B1968()
{
  v1 = v0[13];
  sub_100544174(sub_1003BE81C, v0[14], v0[3]);
  v0[15] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E0, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_1003B1A50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003B1B14, 0, 0);
}

uint64_t sub_1003B1B14()
{
  *(v0 + 72) = **(v0 + 40);
  *(v0 + 120) = *(sub_1001F0C48(&qword_1007801B0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_1003B1BF0, v2, v1);
}

uint64_t sub_1003B1BF0()
{
  sub_10053F004(*(v0 + 40) + *(v0 + 120));
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B1C88, 0, 0);
}

uint64_t sub_1003B1C88()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_1003B1F1C, v3, v4);
}

uint64_t sub_1003B1D08()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000014, 0x80000001006CAB40, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *(v12 + 16) = *(v0 + 24);
  *(v12 + 32) = v11;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_1003B1F1C, v13, v14);
}

uint64_t sub_1003B1F1C()
{
  sub_1005444C0(sub_1003BE324, v0[14], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1003B1FCC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for Logger();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_1003B2090, 0, 0);
}

uint64_t sub_1003B2090()
{
  *(v0 + 64) = **(v0 + 32);
  *(v0 + 112) = *(sub_1001F0C48(&qword_1007801B0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 72) = v2;
  *(v0 + 80) = v1;

  return _swift_task_switch(sub_1003B216C, v2, v1);
}

uint64_t sub_1003B216C()
{
  sub_10053F004(*(v0 + 32) + *(v0 + 112));
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B2204, 0, 0);
}

uint64_t sub_1003B2204()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 104) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);

  return _swift_task_switch(sub_1003B2498, v3, v4);
}

uint64_t sub_1003B2284()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  v6 = *(v0 + 40);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0xD000000000000014, 0x80000001006CAB40, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = *(v0 + 32);
  v12 = swift_task_alloc();
  *(v0 + 104) = v12;
  *(v12 + 16) = *(v0 + 16);
  *(v12 + 32) = v11;
  v13 = *(v0 + 72);
  v14 = *(v0 + 80);

  return _swift_task_switch(sub_1003B2498, v13, v14);
}

uint64_t sub_1003B2498()
{
  v1 = v0[12];
  v2 = sub_10054480C(sub_1003BE430, v0[13]);

  v4 = v0[1];
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_1003B254C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B266C, v7, v6);
}

uint64_t sub_1003B266C()
{
  sub_10053DB08();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003AE7F4, 0, 0);
}

uint64_t sub_1003B26F8()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x74616470554D4444, 0xE900000000000065, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003AEA88, v12, v13);
}

uint64_t sub_1003B290C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B2A2C, v7, v6);
}

uint64_t sub_1003B2A2C()
{
  sub_10053D048();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B2AB8, 0, 0);
}

uint64_t sub_1003B2AB8()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B2D4C, v2, v3);
}

uint64_t sub_1003B2B38()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x6174736E49707041, 0xEA00000000006C6CLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B2D4C, v12, v13);
}

uint64_t sub_1003B2D4C()
{
  v1 = v0[12];
  v2 = sub_100544A88(sub_1003BE430, v0[13]);
  v0[14] = v1;
  if (v1)
  {

    return _swift_task_switch(sub_1003BE7E8, 0, 0);
  }

  else
  {
    v3 = v2;

    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_1003B2E3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for Logger();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1003B2F00, 0, 0);
}

uint64_t sub_1003B2F00()
{
  *(v0 + 72) = **(v0 + 40);
  *(v0 + 120) = *(sub_1001F0C48(&qword_1007812A0) + 36);
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;

  return _swift_task_switch(sub_1003B2FDC, v2, v1);
}

uint64_t sub_1003B2FDC()
{
  sub_10053FA88(*(v0 + 40) + *(v0 + 120));
  *(v0 + 96) = 0;

  return _swift_task_switch(sub_1003B3074, 0, 0);
}

uint64_t sub_1003B3074()
{
  *(v0 + 104) = *(v0 + 96);
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);

  return _swift_task_switch(sub_1003B3310, v3, v4);
}

uint64_t sub_1003B30F4()
{
  v17 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x5365736E6563694CLL, 0xEE00656761726F74, &v16);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 104) = 0;
  v11 = *(v0 + 40);
  v12 = swift_task_alloc();
  *(v0 + 112) = v12;
  *(v12 + 16) = *(v0 + 24);
  *(v12 + 32) = v11;
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);

  return _swift_task_switch(sub_1003B3310, v13, v14);
}

uint64_t sub_1003B3310()
{
  sub_100544D04(sub_1003BE508, *(v0 + 112), *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1003B33C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  v5 = type metadata accessor for Logger();
  v3[6] = v5;
  v3[7] = *(v5 - 8);
  v3[8] = swift_task_alloc();
  v3[2] = a3;
  type metadata accessor for SQLiteConnection();
  sub_1003BE2DC(&qword_100782FF8, type metadata accessor for SQLiteConnection);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v7;
  v3[10] = v6;

  return _swift_task_switch(sub_1003B34E0, v7, v6);
}

uint64_t sub_1003B34E0()
{
  sub_100540550();
  *(v0 + 88) = 0;

  return _swift_task_switch(sub_1003B356C, 0, 0);
}

uint64_t sub_1003B356C()
{
  *(v0 + 96) = *(v0 + 88);
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v0 + 16;
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);

  return _swift_task_switch(sub_1003B3808, v2, v3);
}

uint64_t sub_1003B35EC()
{
  v16 = v0;
  static Logger.sql.getter();
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.fault.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 56);
  v4 = *(v0 + 64);
  v6 = *(v0 + 48);
  if (v3)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_1002346CC(0x7453657275636553, 0xED0000656761726FLL, &v15);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed to initialize %{public}s database: %{public}@", v7, 0x16u);
    sub_1000032A8(v8, &qword_10077F920);

    sub_10000710C(v9);
  }

  else
  {
  }

  (*(v5 + 8))(v4, v6);
  *(v0 + 96) = 0;
  v11 = swift_task_alloc();
  *(v0 + 104) = v11;
  *(v11 + 16) = *(v0 + 24);
  *(v11 + 32) = v0 + 16;
  v12 = *(v0 + 72);
  v13 = *(v0 + 80);

  return _swift_task_switch(sub_1003B3808, v12, v13);
}