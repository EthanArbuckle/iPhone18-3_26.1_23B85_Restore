uint64_t sub_10011D608()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];

  return String.hash(into:)();
}

Swift::Int sub_10011D660()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  v3 = v0[2];
  v4 = v0[3];
  String.hash(into:)();
  v5 = v0[4];
  v6 = v0[5];
  String.hash(into:)();
  v7 = v0[6];
  v8 = v0[7];
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10011D6C8@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100099DF4(&qword_1002DD4D8, &qword_1002380C8);
  v6 = sub_100003724(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  __chkstk_darwin(v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  sub_10000C4FC(a1, a1[3]);
  sub_10011DB1C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004118(a1);
  }

  LOBYTE(v37[0]) = 0;
  sub_100006D4C();
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = v15;
  LOBYTE(v37[0]) = 1;
  sub_100006D4C();
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v17;
  v29 = v16;
  LOBYTE(v37[0]) = 2;
  sub_100006D4C();
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v30 = v18;
  v38 = 3;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  (*(v8 + 8))(v12, v5);
  v22 = v32;
  *&v33 = v14;
  *(&v33 + 1) = v32;
  v24 = v29;
  v23 = v30;
  *&v34 = v29;
  *(&v34 + 1) = v31;
  *&v35 = v28;
  *(&v35 + 1) = v30;
  *&v36 = v19;
  *(&v36 + 1) = v21;
  sub_10011DB70(&v33, v37);
  sub_100004118(a1);
  v37[0] = v14;
  v37[1] = v22;
  v37[2] = v24;
  v37[3] = v31;
  v37[4] = v28;
  v37[5] = v23;
  v37[6] = v19;
  v37[7] = v21;
  result = sub_10011DBA8(v37);
  v26 = v34;
  *a2 = v33;
  a2[1] = v26;
  v27 = v36;
  a2[2] = v35;
  a2[3] = v27;
  return result;
}

uint64_t sub_10011D980@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10011D1F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10011D9A8(uint64_t a1)
{
  v2 = sub_10011DB1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10011D9E4(uint64_t a1)
{
  v2 = sub_10011DB1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10011DA20@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10011D6C8(a1, v7);
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

Swift::Int sub_10011DA84()
{
  Hasher.init(_seed:)();
  sub_10011D608();
  return Hasher._finalize()();
}

unint64_t sub_10011DAC8()
{
  result = qword_1002DD4D0;
  if (!qword_1002DD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4D0);
  }

  return result;
}

unint64_t sub_10011DB1C()
{
  result = qword_1002DD4E0;
  if (!qword_1002DD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4E0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncWriteConfiguration.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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

unint64_t sub_10011DCB8()
{
  result = qword_1002DD4F0;
  if (!qword_1002DD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4F0);
  }

  return result;
}

unint64_t sub_10011DD10()
{
  result = qword_1002DD4F8;
  if (!qword_1002DD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD4F8);
  }

  return result;
}

unint64_t sub_10011DD68()
{
  result = qword_1002DD500;
  if (!qword_1002DD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD500);
  }

  return result;
}

uint64_t sub_10011DDBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void sub_10011DE50()
{
  sub_100004168();
  v28 = v0;
  v29 = v1;
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002381F0;
  *(inited + 32) = 0x756F53746E657665;
  *(inited + 40) = 0xEB00000000656372;
  *(inited + 48) = 0x746E65696C63;
  *(inited + 56) = 0xE600000000000000;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6449746E65696C63;
  *(inited + 88) = 0xE800000000000000;
  v11 = sub_100099DF4(&qword_1002DCC48, &qword_100238200);
  *(inited + 120) = v11;
  v12 = v3[1];
  if (v12)
  {
    v13 = *v3;
    v14 = v3[2];
    v15 = v3[3];
  }

  else
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  *(inited + 96) = v13;
  *(inited + 104) = v12;
  *(inited + 128) = 0x644972657375;
  *(inited + 136) = 0xE600000000000000;
  *(inited + 144) = v14;
  *(inited + 152) = v15;
  *(inited + 168) = v11;
  *(inited + 176) = 0x6D6954746E657665;
  *(inited + 184) = 0xE900000000000065;
  v16 = type metadata accessor for Date();
  sub_10000307C(v16);
  (*(v17 + 16))(v9, v28, v16);
  sub_100002728(v9, 0, 1, v16);
  v18 = sub_10011E130(v9, v29);
  v20 = v19;
  sub_100004E24(v9, &qword_1002DA970, &qword_1002318B0);
  v21 = sub_100099DF4(&qword_1002DD508, &qword_100238208);
  *(inited + 192) = v18;
  *(inited + 200) = v20 & 1;
  *(inited + 216) = v21;
  strcpy((inited + 224), "osBuildNumber");
  *(inited + 238) = -4864;
  *(inited + 264) = v11;
  if (v12)
  {
    v23 = v3[4];
    v22 = v3[5];
    v26 = v3 + 6;
    v24 = v3[6];
    v25 = v26[1];
  }

  else
  {
    v23 = 0;
    v22 = 0;
    v24 = 0;
    v25 = 0;
  }

  *(inited + 240) = v23;
  *(inited + 248) = v22;
  strcpy((inited + 272), "buildVariant");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  *(inited + 312) = v11;
  *(inited + 288) = v24;
  *(inited + 296) = v25;
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  sub_1000027F8();
}

unint64_t sub_10011E130(uint64_t a1, char a2)
{
  v3 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Date();
  sub_1000038DC();
  v11 = v10;
  v13 = *(v12 + 64);
  __chkstk_darwin(v14);
  sub_10000306C();
  v17 = v16 - v15;
  sub_10003D1E4();
  if (sub_100004DFC(v8, 1, v9) == 1)
  {
    sub_100004E24(v8, &qword_1002DA970, &qword_1002318B0);
    return 0;
  }

  (*(v11 + 32))(v17, v8, v9);
  Date.timeIntervalSince1970.getter();
  v20 = v19;
  v21 = v19;
  result = (*(v11 + 8))(v17, v9);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v20 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v20 < 1.84467441e19)
  {
    return qword_100238360[a2] + 300 * (v20 / 0x12C);
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_10011E500(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v74 = a5;
  v75 = a3;
  v76 = a4;
  v7 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v7);
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v73 = &v70 - v11;
  v12 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  v13 = sub_1000030B8(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000308C();
  v72 = v16 - v17;
  __chkstk_darwin(v18);
  v71 = &v70 - v19;
  __chkstk_darwin(v20);
  v70 = &v70 - v21;
  v22 = sub_100099DF4(&qword_1002DBC28, &qword_100232F70);
  sub_1000030B8(v22);
  v24 = *(v23 + 64);
  sub_100003774();
  __chkstk_darwin(v25);
  v27 = &v70 - v26;
  v28 = type metadata accessor for TSDataSyncDatasetState(0);
  v29 = sub_10000307C(v28);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  sub_10000306C();
  v34 = v33 - v32;
  v35 = *a1;
  v36 = a1[1];
  sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
  v80 = Dictionary.init(dictionaryLiteral:)();
  v38 = *a2;
  v37 = a2[1];
  *(&v78 + 1) = &type metadata for String;
  *&v79 = &protocol witness table for String;
  *(&v79 + 1) = &protocol witness table for String;
  *&v77 = v38;
  *(&v77 + 1) = v37;

  sub_100005D0C();
  sub_1001A9008(&v77);
  *(&v78 + 1) = &type metadata for String;
  *&v79 = &protocol witness table for String;
  *(&v79 + 1) = &protocol witness table for String;
  v39 = v28;
  *&v77 = v35;
  *(&v77 + 1) = v36;

  sub_10000EE48();
  sub_1001A9008(&v77);
  v40 = type metadata accessor for TSDataSyncDatasetGroupState(0);
  sub_1001ABF58(v35, v36, *(v75 + *(v40 + 20)), v27);
  if (sub_100004DFC(v27, 1, v28) == 1)
  {
    sub_100004E24(v27, &qword_1002DBC28, &qword_100232F70);
    *&v79 = &protocol witness table for Int;
    *(&v79 + 1) = &protocol witness table for Int;
    *(&v78 + 1) = &type metadata for Int;
    *&v77 = 0;
    sub_10000DF04();
    result = sub_1001A9008(v41);
    goto LABEL_20;
  }

  sub_100121D08();
  v43 = *(v28 + 80);
  v44 = v70;
  sub_10003D1E4();
  v45 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
  sub_100010DCC(v44);
  v46 = v34;
  if (v47)
  {
    sub_100004E24(v44, &qword_1002DCC10, &unk_100238220);
    v48 = v71;
  }

  else
  {
    v50 = *v44;
    v49 = v44[1];

    sub_100006D5C();
    sub_100121D60(v44, v51);
    v48 = v71;
    if (v49)
    {
      *(&v78 + 1) = &type metadata for String;
      *&v79 = &protocol witness table for String;
      *(&v79 + 1) = &protocol witness table for String;
      *&v77 = v50;
      *(&v77 + 1) = v49;
      sub_10000EE48();
      sub_1001A9008(&v77);
    }
  }

  v52 = *(v46 + *(v39 + 44));
  *&v79 = &protocol witness table for UInt64;
  *(&v79 + 1) = &protocol witness table for UInt64;
  *(&v78 + 1) = &type metadata for UInt64;
  *&v77 = v52;
  sub_10000DF04();
  sub_1001A9008(v53);
  sub_10003D1E4();
  sub_100010DCC(v48);
  if (v47)
  {
    sub_100004E24(v48, &qword_1002DCC10, &unk_100238220);
LABEL_13:
    v78 = 0u;
    v79 = 0u;
    v77 = 0u;
    goto LABEL_14;
  }

  v55 = *(v48 + 80);
  v54 = *(v48 + 88);

  sub_100006D5C();
  sub_100121D60(v48, v56);
  if (!v54)
  {
    goto LABEL_13;
  }

  *(&v78 + 1) = &type metadata for String;
  *&v79 = &protocol witness table for String;
  *(&v79 + 1) = &protocol witness table for String;
  *&v77 = v55;
  *(&v77 + 1) = v54;
LABEL_14:
  sub_1001A9008(&v77);
  v57 = v72;
  sub_10003D1E4();
  sub_100010DCC(v57);
  if (v47)
  {
    sub_100004E24(v57, &qword_1002DCC10, &unk_100238220);
    v58 = type metadata accessor for Date();
    v60 = v73;
    sub_100002728(v73, 1, 1, v58);
  }

  else
  {
    v59 = *(v45 + 40);
    v60 = v73;
    sub_10003D1E4();
    sub_100006D5C();
    sub_100121D60(v57, v61);
  }

  v62 = sub_10011E130(v60, 1);
  v64 = v63;
  sub_100004E24(v60, &qword_1002DA970, &qword_1002318B0);
  if ((v64 & 1) == 0)
  {
    *&v79 = &protocol witness table for UInt64;
    *(&v79 + 1) = &protocol witness table for UInt64;
    *(&v78 + 1) = &type metadata for UInt64;
    *&v77 = v62;
    sub_1001A9008(&v77);
  }

  result = sub_100121D60(v46, type metadata accessor for TSDataSyncDatasetState);
LABEL_20:
  v65 = *(v76 + 24);
  if ((*&v65 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v65 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v65 < 1.84467441e19)
  {
    *&v79 = &protocol witness table for UInt64;
    *(&v79 + 1) = &protocol witness table for UInt64;
    *(&v78 + 1) = &type metadata for UInt64;
    *&v77 = v65;
    sub_1001A9008(&v77);
    v66 = v80;
    v67 = v74;
    sub_100167188();
    v68 = *(*v67 + 16);
    result = sub_1001671FC(v68);
    v69 = *v67;
    *(v69 + 16) = v68 + 1;
    *(v69 + 8 * v68 + 32) = v66;
    return result;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_10011EBD8()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v44[2] = v4;
  v44[3] = v5;
  v44[1] = v6;
  v7 = type metadata accessor for TSDataSyncServerDatasetGroupRequest(0);
  v8 = sub_1000030B8(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000308C();
  __chkstk_darwin(v11);
  v12 = type metadata accessor for TSDataSyncServerDatasetGroupRequest.Get(0);
  v13 = sub_10000307C(v12);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_10000308C();
  v18 = v16 - v17;
  __chkstk_darwin(v19);
  v21 = v44 - v20;
  v51 = _swiftEmptyArrayStorage;
  v50 = 1;
  sub_10000B010();
  v44[0] = v1;
  sub_100122CC4();
  sub_1000045B0();
  sub_100121D08();
  v22 = *&v21[*(v12 + 28)];

  sub_100120DDC();
  v45 = v23;
  sub_1001072CC(&v45);

  v25 = v45;
  __chkstk_darwin(v24);
  v44[-4] = v3;
  v44[-3] = &v50;
  v44[-2] = &v51;
  sub_10011DDBC(sub_100121CE8, &v44[-6], v25);

  sub_100122D1C();
  sub_100121D60(v21, v26);
  sub_10011DE50();
  v49 = v27;
  v28 = v51;
  v48 = sub_100099DF4(&qword_1002DD510, &qword_100238218);
  v45 = v28;

  sub_10000EE48();
  sub_1001A8ED8(&v45);
  v48 = &type metadata for Bool;
  LOBYTE(v45) = v50;
  sub_1001A8ED8(&v45);
  v29 = (v3 + *(type metadata accessor for TSDataSyncDatasetGroupState(0) + 40));
  v30 = v29[1];
  v31 = v29[2];
  v32 = v29[3];
  if (v30 >= 2)
  {
    v33 = *v29;
    v36 = v29[1];

    v35 = &type metadata for String;
    v34 = v30;
  }

  else
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v47 = 0;
  }

  v45 = v33;
  v46 = v34;
  v48 = v35;
  sub_1001A8ED8(&v45);
  if (v30 == 1 || !v32)
  {
    v31 = 0;
    v32 = 0;
    v37 = 0;
    v47 = 0;
  }

  else
  {

    v37 = &type metadata for String;
  }

  v45 = v31;
  v46 = v32;
  v48 = v37;
  sub_1001A8ED8(&v45);
  v39 = *v3;
  v38 = v3[1];
  v48 = &type metadata for String;
  v45 = v39;
  v46 = v38;

  sub_100005D0C();
  sub_1001A8ED8(&v45);
  sub_10000B010();
  sub_100122CC4();
  sub_1000045B0();
  sub_100121D08();
  v40 = (v18 + *(v12 + 24));
  v42 = *v40;
  v41 = v40[1];
  v48 = &type metadata for String;
  v45 = v42;
  v46 = v41;

  sub_100006688();
  sub_1001A8ED8(&v45);
  sub_100122D1C();
  sub_100121D60(v18, v43);
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

  sub_1000027F8();
}

uint64_t sub_10011EFE4(uint64_t *a1, uint64_t a2, _BYTE *a3, uint64_t *a4)
{
  v112 = a4;
  v104 = a3;
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v108 = &v102 - v8;
  v9 = sub_100099DF4(&qword_1002DCC10, &unk_100238220);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v111 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v110 = &v102 - v13;
  __chkstk_darwin(v14);
  v109 = &v102 - v15;
  __chkstk_darwin(v16);
  v107 = &v102 - v17;
  __chkstk_darwin(v18);
  v106 = &v102 - v19;
  __chkstk_darwin(v20);
  v105 = &v102 - v21;
  __chkstk_darwin(v22);
  v24 = &v102 - v23;
  __chkstk_darwin(v25);
  v103 = &v102 - v26;
  __chkstk_darwin(v27);
  v29 = &v102 - v28;
  __chkstk_darwin(v30);
  v32 = &v102 - v31;
  __chkstk_darwin(v33);
  v35 = (&v102 - v34);
  v113 = type metadata accessor for TSDataSyncDatasetState(0);
  v36 = *(v113 - 8);
  v37 = *(v36 + 64);
  __chkstk_darwin(v113);
  __chkstk_darwin(v38);
  v114 = &v102 - v39;
  v41 = *a1;
  v40 = a1[1];
  result = type metadata accessor for TSDataSyncDatasetGroupState(0);
  v43 = *(a2 + *(result + 20));
  if (*(v43 + 16))
  {
    result = sub_10014EB30(v41, v40);
    if (v44)
    {
      v45 = *(v43 + 56);
      v46 = *(v36 + 72);
      sub_100122CC4();
      sub_100121D08();
      sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
      v118 = Dictionary.init(dictionaryLiteral:)();
      *(&v116 + 1) = &type metadata for String;
      *&v117 = &protocol witness table for String;
      *(&v117 + 1) = &protocol witness table for String;
      *&v115 = v41;
      *(&v115 + 1) = v40;

      sub_1001A9008(&v115);
      v47 = *(v113 + 80);
      sub_10003D1E4();
      v48 = type metadata accessor for TSDataSyncDatasetMetricsFields(0);
      if (sub_100004DFC(v35, 1, v48) == 1)
      {
        sub_100004E24(v35, &qword_1002DCC10, &unk_100238220);
        v49 = v110;
      }

      else
      {
        v51 = *v35;
        v50 = v35[1];

        sub_100121D60(v35, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v49 = v110;
        if (v50)
        {
          *(&v116 + 1) = &type metadata for String;
          *&v117 = &protocol witness table for String;
          *(&v117 + 1) = &protocol witness table for String;
          *&v115 = v51;
          *(&v115 + 1) = v50;
          sub_1001A9008(&v115);
        }
      }

      sub_10003D1E4();
      v52 = sub_100004DFC(v32, 1, v48);
      v53 = v105;
      if (v52 == 1)
      {
        v54 = v32;
LABEL_9:
        sub_100004E24(v54, &qword_1002DCC10, &unk_100238220);
        goto LABEL_19;
      }

      v55 = *(v32 + 4);
      v56 = v32[40];
      sub_100121D60(v32, type metadata accessor for TSDataSyncDatasetMetricsFields);
      if ((v56 & 1) == 0)
      {
        sub_10003D1E4();
        if (sub_100004DFC(v29, 1, v48) == 1)
        {
          v54 = v29;
          goto LABEL_9;
        }

        v58 = *(v29 + 6);
        v57 = *(v29 + 7);

        sub_100121D60(v29, type metadata accessor for TSDataSyncDatasetMetricsFields);
        if (v57)
        {
          *&v117 = &protocol witness table for Int;
          *(&v117 + 1) = &protocol witness table for Int;
          *(&v116 + 1) = &type metadata for Int;
          *&v115 = v55;
          sub_1001A9008(&v115);
          *(&v116 + 1) = &type metadata for String;
          *&v117 = &protocol witness table for String;
          *(&v117 + 1) = &protocol witness table for String;
          *&v115 = v58;
          *(&v115 + 1) = v57;
          sub_1001A9008(&v115);
          v59 = v103;
          sub_10003D1E4();
          if (sub_100004DFC(v59, 1, v48) == 1)
          {
            sub_100004E24(v59, &qword_1002DCC10, &unk_100238220);
          }

          else
          {
            v61 = *(v59 + 64);
            v60 = *(v59 + 72);

            sub_100121D60(v59, type metadata accessor for TSDataSyncDatasetMetricsFields);
            if (v60)
            {
              *(&v116 + 1) = &type metadata for String;
              *&v117 = &protocol witness table for String;
              *(&v117 + 1) = &protocol witness table for String;
              *&v115 = v61;
              *(&v115 + 1) = v60;
              sub_1001A9008(&v115);
            }
          }

          *v104 = 0;
        }
      }

LABEL_19:
      sub_10003D1E4();
      if (sub_100004DFC(v24, 1, v48) == 1)
      {
        sub_100004E24(v24, &qword_1002DCC10, &unk_100238220);
        v62 = 0;
      }

      else
      {
        v63 = v24[v48[11]];
        sub_100121D60(v24, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v62 = v63 & 1;
      }

      *(&v116 + 1) = &type metadata for Bool;
      *&v117 = &protocol witness table for Bool;
      *(&v117 + 1) = &protocol witness table for Bool;
      LOBYTE(v115) = v62;
      sub_1001A9008(&v115);
      sub_10003D1E4();
      if (sub_100004DFC(v53, 1, v48) == 1)
      {
        sub_100004E24(v53, &qword_1002DCC10, &unk_100238220);
        v64 = 0;
      }

      else
      {
        v65 = *(v53 + v48[12]);
        sub_100121D60(v53, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v64 = v65 & 1;
      }

      *(&v116 + 1) = &type metadata for Bool;
      *&v117 = &protocol witness table for Bool;
      *(&v117 + 1) = &protocol witness table for Bool;
      LOBYTE(v115) = v64;
      sub_1001A9008(&v115);
      v66 = v114;
      v67 = v106;
      sub_10003D1E4();
      if (sub_100004DFC(v67, 1, v48) == 1)
      {
        sub_100004E24(v67, &qword_1002DCC10, &unk_100238220);
        v68 = v107;
      }

      else
      {
        v70 = *(v67 + 80);
        v69 = *(v67 + 88);

        sub_100121D60(v67, type metadata accessor for TSDataSyncDatasetMetricsFields);
        v68 = v107;
        if (v69)
        {
          *(&v116 + 1) = &type metadata for String;
          *&v117 = &protocol witness table for String;
          *(&v117 + 1) = &protocol witness table for String;
          *&v115 = v70;
          *(&v115 + 1) = v69;
          goto LABEL_30;
        }
      }

      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
LABEL_30:
      v71 = v108;
      sub_1001A9008(&v115);
      v72 = sub_10011E130(v66 + *(v113 + 32), 2);
      if (v73)
      {
        v72 = 0;
        v74 = 0;
        v75 = 0;
        v76 = 0;
        *(&v115 + 1) = 0;
        *&v116 = 0;
      }

      else
      {
        v76 = &protocol witness table for UInt64;
        v75 = &protocol witness table for UInt64;
        v74 = &type metadata for UInt64;
      }

      *&v115 = v72;
      *(&v116 + 1) = v74;
      *&v117 = v75;
      *(&v117 + 1) = v76;
      sub_1001A9008(&v115);
      sub_10003D1E4();
      if (sub_100004DFC(v68, 1, v48) == 1)
      {
        sub_100004E24(v68, &qword_1002DCC10, &unk_100238220);
        v77 = type metadata accessor for Date();
        sub_100002728(v71, 1, 1, v77);
      }

      else
      {
        v78 = v48[13];
        sub_10003D1E4();
        sub_100121D60(v68, type metadata accessor for TSDataSyncDatasetMetricsFields);
      }

      v79 = v109;
      v80 = sub_10011E130(v71, 2);
      v81 = v71;
      v82 = v80;
      v84 = v83;
      sub_100004E24(v81, &qword_1002DA970, &qword_1002318B0);
      if (v84)
      {
        v82 = 0;
        v85 = 0;
        v86 = 0;
        v87 = 0;
        *(&v115 + 1) = 0;
        *&v116 = 0;
      }

      else
      {
        v87 = &protocol witness table for UInt64;
        v86 = &protocol witness table for UInt64;
        v85 = &type metadata for UInt64;
      }

      *&v115 = v82;
      *(&v116 + 1) = v85;
      *&v117 = v86;
      *(&v117 + 1) = v87;
      sub_1001A9008(&v115);
      sub_10003D1E4();
      if (sub_100004DFC(v79, 1, v48) == 1)
      {
        sub_100004E24(v79, &qword_1002DCC10, &unk_100238220);
      }

      else
      {
        v88 = v79 + v48[14];
        v89 = *v88;
        v90 = *(v88 + 8);
        sub_100121D60(v79, type metadata accessor for TSDataSyncDatasetMetricsFields);
        if ((v90 & 1) == 0)
        {
          *&v117 = &protocol witness table for Int;
          *(&v117 + 1) = &protocol witness table for Int;
          *(&v116 + 1) = &type metadata for Int;
          *&v115 = v89;
LABEL_44:
          sub_1001A9008(&v115);
          sub_10003D1E4();
          if (sub_100004DFC(v49, 1, v48) == 1)
          {
            sub_100004E24(v49, &qword_1002DCC10, &unk_100238220);
          }

          else
          {
            v91 = v49 + v48[15];
            v92 = *v91;
            v93 = *(v91 + 8);
            sub_100121D60(v49, type metadata accessor for TSDataSyncDatasetMetricsFields);
            if ((v93 & 1) == 0)
            {
              *&v117 = &protocol witness table for Int;
              *(&v117 + 1) = &protocol witness table for Int;
              *(&v116 + 1) = &type metadata for Int;
              *&v115 = v92;
LABEL_49:
              sub_1001A9008(&v115);
              v94 = v111;
              sub_10003D1E4();
              if (sub_100004DFC(v94, 1, v48) == 1)
              {
                sub_100004E24(v94, &qword_1002DCC10, &unk_100238220);
              }

              else
              {
                v95 = v94 + v48[16];
                v96 = *v95;
                v97 = *(v95 + 8);
                sub_100121D60(v94, type metadata accessor for TSDataSyncDatasetMetricsFields);
                if ((v97 & 1) == 0)
                {
                  *(&v116 + 1) = &type metadata for Double;
                  *&v117 = &protocol witness table for Double;
                  *(&v117 + 1) = &protocol witness table for Double;
                  *&v115 = v96;
                  goto LABEL_54;
                }
              }

              v116 = 0u;
              v117 = 0u;
              v115 = 0u;
LABEL_54:
              sub_1001A9008(&v115);
              v98 = v118;
              v99 = v112;
              sub_100167188();
              v100 = *(*v99 + 16);
              sub_1001671FC(v100);
              result = sub_100121D60(v66, type metadata accessor for TSDataSyncDatasetState);
              v101 = *v99;
              *(v101 + 16) = v100 + 1;
              *(v101 + 8 * v100 + 32) = v98;
              return result;
            }
          }

          v116 = 0u;
          v117 = 0u;
          v115 = 0u;
          goto LABEL_49;
        }
      }

      v116 = 0u;
      v117 = 0u;
      v115 = 0u;
      goto LABEL_44;
    }
  }

  return result;
}

void sub_10011FE60()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v163[2] = v4;
  v163[1] = v5;
  v163[0] = v6;
  v166 = sub_100099DF4(&qword_1002DD528, &qword_100238250);
  sub_10000307C(v166);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  v174 = (v163 - v10);
  v11 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  v16 = v163 - v15;
  sub_10011DE50();
  v191 = v17;
  v18 = *(v1 + 16);
  if (v18)
  {
    v19 = *(v1 + 8);
    v188 = &type metadata for String;
    *&v186 = v19;
    *(&v186 + 1) = v18;

    sub_100006688();
    sub_1001A8ED8(&v186);
  }

  v20 = 0xD000000000000011;
  v21 = type metadata accessor for TSDataSyncExternalEvent(0);
  if (*(v3 + *(v21 + 28)) == 12)
  {
    v32 = type metadata accessor for Date();
    sub_10000307C(v32);
    (*(v33 + 16))(v16, v3, v32);
    v34 = sub_100122DAC();
    sub_100002728(v34, v35, 1, v32);
    v36 = sub_100122DAC();
    v38 = sub_10011E130(v36, v37);
    v40 = v39;
    sub_100004E24(v16, &qword_1002DA970, &qword_1002318B0);
    if (v40)
    {
      v38 = 0;
      v41 = 0;
      *(&v186 + 1) = 0;
      v187 = 0;
    }

    else
    {
      v41 = &type metadata for UInt64;
    }

    *&v186 = v38;
    v188 = v41;
    v42 = &v186;
    goto LABEL_13;
  }

  if (!*(v3 + *(v21 + 28)))
  {
    v22 = type metadata accessor for Date();
    sub_10000307C(v22);
    (*(v23 + 16))(v16, v3, v22);
    v24 = sub_100122DAC();
    sub_100002728(v24, v25, 1, v22);
    v26 = sub_100122DAC();
    v28 = sub_10011E130(v26, v27);
    v30 = v29;
    sub_100004E24(v16, &qword_1002DA970, &qword_1002318B0);
    if (v30)
    {
      v28 = 0;
      v31 = 0;
      *(&v186 + 1) = 0;
      v187 = 0;
    }

    else
    {
      v31 = &type metadata for UInt64;
    }

    *&v186 = v28;
    v188 = v31;
    sub_10000DF04();
LABEL_13:
    sub_1001A8ED8(v42);
  }

  v43 = *(v3 + *(v21 + 32));
  v44 = v43 + 64;
  v45 = 1 << *(v43 + 32);
  v46 = -1;
  if (v45 < 64)
  {
    v46 = ~(-1 << v45);
  }

  v169 = v46 & *(v43 + 64);
  v47 = (v45 + 63) >> 6;
  v167 = v43;

  v48 = 0;
  v49 = _swiftEmptyArrayStorage;
  v165 = v44;
  for (i = v47; ; v47 = i)
  {
    v50 = v169;
    if (!v169)
    {
      break;
    }

    v51 = v48;
LABEL_22:
    v169 = (v50 - 1) & v50;
    v168 = v51;
    v52 = __clz(__rbit64(v50)) | (v51 << 6);
    v53 = v167;
    v54 = *(v167 + 48);
    v55 = type metadata accessor for TSDataSyncDatasetGroupIdentifier(0);
    sub_1000030B8(v55);
    v57 = v54 + *(v56 + 72) * v52;
    v58 = v174;
    sub_100122CC4();
    v59 = *(*(v53 + 56) + 8 * v52);
    *(v58 + *(v166 + 48)) = v59;
    v60 = *(v59 + 16);
    v61 = ( + 40);
    if (v60)
    {
      while (1)
      {
        v171 = v60;
        v172 = v49;
        v62 = *v61;
        v173 = *(v61 - 1);
        v170 = v61;
        v175 = v62;
        swift_bridgeObjectRetain_n();
        sub_100099DF4(&qword_1002DD518, &unk_1002404B0);
        v63 = Dictionary.init(dictionaryLiteral:)();
        v64 = *v174;
        v65 = v174[1];
        v188 = &type metadata for String;
        v189 = &protocol witness table for String;
        v190 = &protocol witness table for String;
        *&v186 = v64;
        *(&v186 + 1) = v65;
        sub_100122C8C(&v186, &v184);
        sub_100008494(&v184, v185);
        sub_1000038DC();
        v67 = *(v66 + 64);
        __chkstk_darwin(v68);
        v70 = sub_100004B1C(v69, v163[0]);
        v71(v70);
        v72 = *v20;
        v73 = v20[1];

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v182 = &protocol witness table for String;
        v183 = v63;
        v180 = &type metadata for String;
        v181 = &protocol witness table for String;
        v178 = v72;
        v179 = v73;

        sub_100014034();
        sub_10000B818();
        v79 = (v77 + v78);
        if (__OFADD__(v77, v78))
        {
          break;
        }

        v80 = v75;
        v81 = v76;
        sub_100099DF4(&unk_1002E0030, &qword_1002403F0);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v79))
        {
          sub_100014034();
          sub_10000A224();
          if (!v83)
          {
            goto LABEL_64;
          }

          v80 = v82;
        }

        v84 = v183;
        if (v81)
        {
          sub_100005300(v183[7]);
        }

        else
        {
          sub_100122D74();
          sub_1000038DC();
          v86 = *(v85 + 64);
          __chkstk_darwin(v87);
          v89 = sub_100004B1C(v88, v163[0]);
          v90(v89);
          v91 = *v79;
          v92 = v79[1];
          v176 = &type metadata for String;
          v177 = &protocol witness table for String;
          sub_1000031D4(v91);
          sub_10000AB34(&v84[v93]);
          v94 = (v84[6] + 16 * v80);
          *v94 = 0x63617073656D616ELL;
          v94[1] = 0xE900000000000065;
          sub_100122D90(v84[7]);
          v95 = v84[2];
          v96 = __OFADD__(v95, 1);
          v97 = v95 + 1;
          if (v96)
          {
            goto LABEL_60;
          }

          v84[2] = v97;
          sub_100004118(&v178);
        }

        sub_100004118(&v184);
        v98 = v174[3];
        v99 = v174[4];
        v100 = &type metadata for String;
        v188 = &type metadata for String;
        v189 = &protocol witness table for String;
        v190 = &protocol witness table for String;
        *&v186 = v98;
        *(&v186 + 1) = v99;
        sub_100122C8C(&v186, &v184);
        sub_100008494(&v184, v185);
        sub_1000038DC();
        v102 = *(v101 + 64);
        __chkstk_darwin(v103);
        sub_10000306C();
        v106 = (v105 - v104);
        (*(v107 + 16))(v105 - v104);
        v20 = *v106;
        v108 = v106[1];

        swift_isUniquelyReferenced_nonNull_native();
        v182 = &protocol witness table for String;
        v183 = v84;
        v180 = &type metadata for String;
        v181 = &protocol witness table for String;
        v178 = v20;
        v179 = v108;

        sub_100122D50();
        v110 = v109;
        sub_10000B818();
        if (__OFADD__(v112, v113))
        {
          goto LABEL_58;
        }

        if (sub_100122DC4(v111, v112 + v113))
        {
          sub_100122D50();
          sub_10000A224();
          if (!v83)
          {
            goto LABEL_64;
          }

          v100 = v114;
        }

        v115 = v183;
        if (v110)
        {
          sub_100005300(v183[7]);
        }

        else
        {
          sub_100122D74();
          sub_1000038DC();
          v117 = *(v116 + 64);
          __chkstk_darwin(v118);
          v120 = sub_100004B1C(v119, v163[0]);
          v121(v120);
          v122 = *v20;
          v123 = v20[1];
          v176 = &type metadata for String;
          v177 = &protocol witness table for String;
          sub_1000031D4(v122);
          sub_10000AB34(&v115[v124]);
          v125 = (v115[6] + 16 * v100);
          *v125 = 0x6E69616D6F446469;
          v125[1] = 0xE800000000000000;
          sub_100122D90(v115[7]);
          v126 = v115[2];
          v96 = __OFADD__(v126, 1);
          v127 = v126 + 1;
          if (v96)
          {
            goto LABEL_61;
          }

          v115[2] = v127;
          sub_100004118(&v178);
        }

        sub_100004118(&v184);
        v128 = &type metadata for String;
        v188 = &type metadata for String;
        v189 = &protocol witness table for String;
        v190 = &protocol witness table for String;
        *&v186 = v173;
        *(&v186 + 1) = v175;
        sub_100122C8C(&v186, &v184);
        sub_100008494(&v184, v185);
        sub_1000038DC();
        v130 = *(v129 + 64);
        __chkstk_darwin(v131);
        v133 = sub_100004B1C(v132, v163[0]);
        v134(v133);
        v135 = *v20;
        v136 = v20[1];
        swift_isUniquelyReferenced_nonNull_native();
        v182 = &protocol witness table for String;
        v183 = v115;
        v180 = &type metadata for String;
        v181 = &protocol witness table for String;
        v178 = v135;
        v179 = v136;

        v137 = sub_100010E28();
        sub_10014EB30(v137, 0xEB00000000656D61);
        v139 = v138;
        sub_10000B818();
        if (__OFADD__(v141, v142))
        {
          goto LABEL_59;
        }

        if (sub_100122DC4(v140, v141 + v142))
        {
          v143 = sub_100010E28();
          sub_10014EB30(v143, 0xEB00000000656D61);
          sub_10000A224();
          if (!v83)
          {
            goto LABEL_64;
          }

          v128 = v144;
        }

        v145 = v183;
        if (v139)
        {
          sub_100005300(v183[7]);
        }

        else
        {
          sub_100122D74();
          v20 = v163;
          sub_1000038DC();
          v147 = *(v146 + 64);
          __chkstk_darwin(v148);
          sub_10000306C();
          v151 = (v150 - v149);
          (*(v152 + 16))(v150 - v149);
          v153 = *v151;
          v154 = v151[1];
          v176 = &type metadata for String;
          v177 = &protocol witness table for String;
          sub_1000031D4(v153);
          sub_10000AB34(&v145[v155]);
          v156 = (v145[6] + 16 * v128);
          *v156 = 0x4E74657361746164;
          v156[1] = 0xEB00000000656D61;
          sub_100122D90(v145[7]);
          v157 = v145[2];
          v96 = __OFADD__(v157, 1);
          v158 = v157 + 1;
          if (v96)
          {
            goto LABEL_62;
          }

          v145[2] = v158;
          sub_100004118(&v178);
        }

        sub_100004118(&v184);
        v49 = v172;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_10013C1FC(0, v49[2] + 1, 1, v49);
          v49 = v161;
        }

        v160 = v49[2];
        v159 = v49[3];
        if (v160 >= v159 >> 1)
        {
          sub_10013C1FC(v159 > 1, v160 + 1, 1, v49);
          v49 = v162;
        }

        v49[2] = v160 + 1;
        v49[v160 + 4] = v145;

        v61 = v170 + 2;
        v60 = v171 - 1;
        if (v171 == 1)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

LABEL_55:
    sub_100004E24(v174, &qword_1002DD528, &qword_100238250);
    v48 = v168;
    v44 = v165;
  }

  while (1)
  {
    v51 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v51 >= v47)
    {

      v188 = sub_100099DF4(&qword_1002DD510, &qword_100238218);
      *&v186 = v49;

      sub_10000EE48();
      sub_1001A8ED8(&v186);
      static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

      sub_1000027F8();
      return;
    }

    v50 = *(v44 + 8 * v51);
    ++v48;
    if (v50)
    {
      goto LABEL_22;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100120BB0()
{
  sub_10000B858();
  if (*(v0 + 16))
  {
    v1 = sub_100013CB4();
    v2(v1);
    sub_100008348();
    sub_1001221C4();
    sub_100007698();
    sub_1000072E4();
    if (!v3)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120C44()
{
  sub_10000B858();
  if (*(v1 + 16))
  {
    v2 = v0;
    v3 = sub_100013CB4();
    v4(v3);
    sub_100008348();
    v2();
    sub_100007698();
    sub_1000072E4();
    if (!v5)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_10000B858();
  a25 = v27;
  a26 = v31;
  v33 = *(v32 + 16);
  if (v33)
  {
    v34 = v30;
    v35 = v29;
    v36 = v28;
    v37 = sub_100013CB4();
    v39 = v38(v37);
    v40 = sub_100099DF4(v36, v35);
    sub_1000030B8(v40);
    v34(&a10, v39 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), v33, v26);
    sub_100007698();
    sub_1000072E4();
    if (!v42)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120DDC()
{
  sub_10000B858();
  if (*(v0 + 16))
  {
    sub_100013CB4();
    sub_10013CA74();
    sub_100008348();
    sub_100122A44(v1, v2, v3, v4);
    sub_100007698();
    sub_1000072E4();
    if (!v5)
    {
      __break(1u);
    }
  }

  sub_10000B3E0();
}

void sub_100120E3C()
{
  sub_1000076BC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v7 == v8)
  {
LABEL_7:
    sub_1000066AC(v6);
    if (v3)
    {
      sub_100099DF4(&qword_1002DBBE0, &qword_100232E80);
      v9 = swift_allocObject();
      v10 = j__malloc_size(v9);
      v9[2] = v2;
      v9[3] = 2 * ((v10 - 32) / 40);
      if (v1)
      {
LABEL_9:
        v11 = sub_10000C038();
        sub_10013CAF8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100099DF4(&qword_1002DD530, &qword_100238258);
    sub_10000F03C();
    goto LABEL_12;
  }

  sub_100007310();
  if (!v7)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100120F1C()
{
  sub_1000076BC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v7 == v8)
  {
LABEL_7:
    sub_1000066AC(v6);
    if (v3)
    {
      sub_100099DF4(&qword_1002DD540, &unk_10023B2E0);
      v9 = swift_allocObject();
      j__malloc_size(v9);
      sub_100007C48();
      v9[2] = v2;
      v9[3] = v10;
      if (v1)
      {
LABEL_9:
        v11 = sub_10000C038();
        sub_10013CAD8(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100099DF4(&qword_1002DB9C8, &qword_100238270);
    sub_10000F03C();
    goto LABEL_12;
  }

  sub_100007310();
  if (!v7)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

size_t sub_100121018(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100099DF4(&qword_1002DD550, &unk_1002382F0);
  v10 = *(sub_100099DF4(&qword_1002DBC48, &qword_100232F80) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100099DF4(&qword_1002DBC48, &qword_100232F80) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10013CB20(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001211E4(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD558, &unk_10023B330);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10013CF04((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC68, &qword_100238300);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_1001212FC(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD568, &qword_100238318);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10013CF04((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC78, &unk_100238320);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

char *sub_100121414(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD570, &unk_10023B340);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_10013CB34((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC80, &unk_100238330);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

size_t sub_10012152C(size_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100099DF4(&qword_1002DD578, &qword_100238340);
  v10 = *(sub_100099DF4(&qword_1002DBC50, &unk_10023B350) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_100099DF4(&qword_1002DBC50, &unk_10023B350) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10013CB5C(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1001216F8(char *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      sub_100099DF4(&qword_1002DD560, &qword_100238308);
      v10 = swift_allocObject();
      v11 = j__malloc_size(v10);
      *(v10 + 2) = v8;
      *(v10 + 3) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_10013CC38((a4 + 32), v8, v10 + 32);
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = _swiftEmptyArrayStorage;
      if (result)
      {
        goto LABEL_13;
      }
    }

    sub_100099DF4(&qword_1002DBC70, &qword_100238310);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100121808()
{
  sub_1000076BC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000066AC(v5);
    if (v2)
    {
      sub_100099DF4(&qword_1002DBF10, &qword_1002334F8);
      v8 = sub_100122D34();
      v9 = j__malloc_size(v8);
      sub_100003C6C(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000C038();
        sub_10013CF00(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100099DF4(&qword_1002DBF08, &qword_1002334F0);
    sub_10000F03C();
    goto LABEL_12;
  }

  sub_100007310();
  if (!v6)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001218C4()
{
  sub_1000076BC();
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v7 == v8)
  {
LABEL_7:
    sub_1000066AC(v6);
    if (v3)
    {
      sub_100099DF4(&qword_1002DD548, &qword_100238278);
      v9 = sub_100122D34();
      v10 = j__malloc_size(v9);
      sub_100003C6C(v10);
      if (v1)
      {
LABEL_9:
        v11 = sub_10000C038();
        sub_1000192B0(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else
    {
      v9 = _swiftEmptyArrayStorage;
      if (v1)
      {
        goto LABEL_9;
      }
    }

    memcpy(v9 + 4, (v0 + 32), 8 * v2);
    goto LABEL_12;
  }

  sub_100007310();
  if (!v7)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1001219A8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      sub_100099DF4(a5, a6);
      v15 = swift_allocObject();
      j__malloc_size(v15);
      sub_100007C48();
      v15[2] = v13;
      v15[3] = v16;
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = &_swiftEmptyArrayStorage;
      if (a1)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_100007310();
  if (!v11)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_100121A90()
{
  sub_1000076BC();
  if (v3)
  {
    sub_100006D74();
    if (v5 != v6)
    {
      sub_100007310();
      if (v5)
      {
LABEL_24:
        __break(1u);
        return;
      }

      sub_100006A00();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 16);
  if (v4 <= v7)
  {
    v8 = *(v0 + 16);
  }

  else
  {
    v8 = v4;
  }

  if (!v8)
  {
    v12 = _swiftEmptyArrayStorage;
    goto LABEL_18;
  }

  sub_100099DF4(&qword_1002DCC58, &unk_100238240);
  v9 = *(type metadata accessor for TSDataSyncTriggerEvent(0) - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  v13 = j__malloc_size(v12);
  if (!v10)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 - v11 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_23;
  }

  v12[2] = v7;
  v12[3] = 2 * ((v13 - v11) / v10);
LABEL_18:
  v15 = *(type metadata accessor for TSDataSyncTriggerEvent(0) - 8);
  if (v1)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_10013CC58(v0 + v16, v7, v12 + v16);
    *(v0 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_100121C2C()
{
  sub_1000076BC();
  if ((v4 & 1) == 0)
  {
    v5 = v3;
    goto LABEL_7;
  }

  sub_100006D74();
  if (v6 == v7)
  {
LABEL_7:
    sub_1000066AC(v5);
    if (v2)
    {
      sub_100099DF4(&qword_1002DD580, &qword_100238348);
      v8 = sub_100122D34();
      v9 = j__malloc_size(v8);
      sub_100003C6C(v9);
      if (v1)
      {
LABEL_9:
        v10 = sub_10000C038();
        sub_10013CF00(v10, v11, v12);
        *(v0 + 16) = 0;
LABEL_12:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_9;
    }

    sub_100099DF4(&qword_1002DD588, &unk_100238350);
    sub_10000F03C();
    goto LABEL_12;
  }

  sub_100007310();
  if (!v6)
  {
    sub_100006A00();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_100121D08()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 32);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_100121D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

char *sub_100121DD0(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_100121DFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_100099DF4(&qword_1002DD520, &unk_100238230);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void sub_100121EFC(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v41 = sub_100099DF4(&qword_1002DBC48, &qword_100232F80);
  v38 = *(v41 - 8);
  v8 = *(v38 + 64);
  __chkstk_darwin(v41);
  v40 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v39 = &v33 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v36 = a4;
    v37 = a3;
    while (1)
    {
      if (v16 >= a3)
      {
        goto LABEL_25;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            a1 = v35;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            v42 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v42 = a2;
      v20 = v17;
LABEL_16:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v20 << 6);
      v23 = *(a4 + 48);
      v24 = *(a4 + 56);
      v25 = (v23 + 16 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = type metadata accessor for Date();
      v29 = *(v28 - 8);
      v30 = v24 + *(v29 + 72) * v22;
      v31 = v40;
      (*(v29 + 16))(&v40[*(v41 + 48)], v30, v28);
      *v31 = v26;
      v31[1] = v27;
      sub_100012D44();
      v32 = v42;
      sub_100012D44();
      a3 = v37;
      if (v19 == v37)
      {
        break;
      }

      a2 = v32 + *(v38 + 72);

      v16 = v19;
      v17 = v20;
      a4 = v36;
    }

    v17 = v20;
    a1 = v35;
    a4 = v36;
LABEL_20:
    v13 = v34;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

void sub_1001221C4()
{
  sub_100004168();
  v3 = v2;
  v5 = v4;
  v6 = v2 + 64;
  v7 = -1 << *(v2 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v2 + 64);
  if (!v0)
  {
    v13 = 0;
LABEL_20:
    *v5 = v3;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    sub_1000027F8();
    return;
  }

  v10 = v1;
  if (!v1)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    v11 = v0;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(v3 + 48) + 16 * v16);
      v18 = v17[1];
      LOBYTE(v16) = *(*(v3 + 56) + v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      *(v11 + 8) = v18;
      *(v11 + 16) = v16;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 24;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_100122314(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = __clz(__rbit64(v9)) | (v15 << 6);
      v17 = (*(a4 + 48) + 16 * v16);
      v18 = v17[1];
      v19 = *(*(a4 + 56) + 8 * v16);
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      v11[2] = v19;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 3;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100122474(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v40 = sub_100099DF4(&qword_1002DBC50, &unk_10023B350);
  v37 = *(v40 - 8);
  v8 = *(v37 + 64);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v32 - v11;
  v12 = a4 + 64;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 64);
  if (!a2)
  {
    v17 = 0;
LABEL_22:
    *a1 = a4;
    a1[1] = v12;
    a1[2] = ~v13;
    a1[3] = v17;
    a1[4] = v15;
    return;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_22;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    v16 = 0;
    v17 = 0;
    v18 = (63 - v13) >> 6;
    v35 = a4;
    v36 = a3;
    while (1)
    {
      if (v16 >= a3)
      {
        goto LABEL_25;
      }

      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_26;
      }

      if (!v15)
      {
        while (1)
        {
          v20 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v20 >= v18)
          {
            v15 = 0;
            a1 = v34;
            goto LABEL_20;
          }

          v15 = *(v12 + 8 * v20);
          ++v17;
          if (v15)
          {
            v41 = a2;
            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v41 = a2;
      v20 = v17;
LABEL_16:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v22 = v21 | (v20 << 6);
      v23 = *(a4 + 48);
      v24 = *(a4 + 56);
      v25 = (v23 + 16 * v22);
      v26 = *v25;
      v27 = v25[1];
      v28 = v24 + *(*(type metadata accessor for TSDataSyncTriggerEvent(0) - 8) + 72) * v22;
      v29 = v39;
      v30 = *(v40 + 48);
      sub_100122CC4();
      *v29 = v26;
      v29[1] = v27;
      sub_100012D44();
      v31 = v41;
      sub_100012D44();
      a3 = v36;
      if (v19 == v36)
      {
        break;
      }

      a2 = v31 + *(v37 + 72);

      v16 = v19;
      v17 = v20;
      a4 = v35;
    }

    v17 = v20;
    a1 = v34;
    a4 = v35;
LABEL_20:
    v13 = v33;
    goto LABEL_22;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_100122738(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_21:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1001228C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!a2)
  {
    v6 = 0;
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
    v6 = 0;
LABEL_14:
    v7 = a4;
LABEL_16:
    *result = a4;
    *(result + 8) = a5;
    *(result + 16) = v7;
    *(result + 24) = v6;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = a4;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v6)
      {
        v6 = 1;
        a3 = v5;
        goto LABEL_16;
      }

      v6 = v7 == a5;
      if (v7 == a5)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_18;
        }
      }

      *(a2 + 8 * v5++) = v7;
      v7 = v9;
      if (v8 == a3)
      {
        v7 = v9;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10012295C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
    v9 = 0;
    a3 = 0;
LABEL_18:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2++ = *(*(a4 + 48) + ((v9 << 9) | (8 * v12)));
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100122A44(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100122C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_10000D034();
  sub_1001219A8(0, v2, 0, v3, v4, v5, v6);
}

_OWORD *sub_100122C8C(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

uint64_t sub_100122CC4()
{
  sub_100002FBC();
  v2 = v1(0);
  sub_10000307C(v2);
  v4 = *(v3 + 16);
  v5 = sub_1000050CC();
  v6(v5);
  return v0;
}

uint64_t sub_100122D34()
{

  return swift_allocObject();
}

uint64_t sub_100122D50()
{

  return sub_10014EB30(0x6E69616D6F446469, 0xE800000000000000);
}

uint64_t sub_100122D74()
{
  v2 = *(v0 - 224);

  return sub_100008494(v0 - 248, v2);
}

_OWORD *sub_100122D90@<X0>(uint64_t a1@<X8>)
{

  return sub_100122C8C((v2 - 296), (a1 + 48 * v1));
}

BOOL sub_100122DC4(uint64_t a1, Swift::Int a2)
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v2, a2);
}

uint64_t type metadata accessor for TSDataSyncNetworkingCore.Errors()
{
  result = qword_1002DD600;
  if (!qword_1002DD600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122E38()
{
  sub_100122EC0();
  if (v0 <= 0x3F)
  {
    sub_100122F2C();
    if (v1 <= 0x3F)
    {
      sub_100122F90();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_100122EC0()
{
  if (!qword_1002DD610)
  {
    type metadata accessor for AccountIdentity.DSID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DD610);
    }
  }
}

void sub_100122F2C()
{
  if (!qword_1002DD618)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1002DD618);
    }
  }
}

void *sub_100122F90()
{
  result = qword_1002DD620;
  if (!qword_1002DD620)
  {
    result = &type metadata for Int;
    atomic_store(&type metadata for Int, &qword_1002DD620);
  }

  return result;
}

uint64_t sub_100122FB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountIdentity.DSID();
  v46 = *(v4 - 8);
  v47 = v4;
  v5 = *(v46 + 64);
  __chkstk_darwin(v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TSDataSyncNetworkingCore.Errors();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = (&v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v14 = (&v46 - v13);
  __chkstk_darwin(v15);
  v17 = (&v46 - v16);
  __chkstk_darwin(v18);
  v20 = &v46 - v19;
  v21 = sub_100099DF4(&qword_1002DD678, &qword_100238508);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v24 = &v46 - v23;
  v26 = (&v46 + *(v25 + 56) - v23);
  sub_1001235D0(a1, &v46 - v23);
  sub_1001235D0(a2, v26);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1001235D0(v24, v17);
      v32 = *v17;
      v31 = v17[1];
      v33 = v17[2];
      if (sub_100004B3C() != 1)
      {

        goto LABEL_17;
      }

      v34 = *v26;
      v35 = v26[1];
      v36 = v26[2];
      if (v32 == v34 && v31 == v35)
      {
      }

      else
      {
        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v38 & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      v30 = v33 == v36;
      goto LABEL_24;
    case 2u:
      sub_1001235D0(v24, v14);
      if (sub_100004B3C() != 2)
      {
        goto LABEL_17;
      }

      v29 = *v14;
      goto LABEL_8;
    case 3u:
      sub_1001235D0(v24, v11);
      if (sub_100004B3C() != 3)
      {
        goto LABEL_17;
      }

      v29 = *v11;
LABEL_8:
      v30 = v29 == *v26;
      goto LABEL_24;
    default:
      sub_1001235D0(v24, v20);
      v27 = *(sub_100099DF4(&qword_1002DD680, &qword_100238510) + 48);
      v28 = *&v20[v27];
      if (sub_100004B3C())
      {
        (*(v46 + 8))(v20, v47);
LABEL_17:
        sub_100123634(v24);
        return 0;
      }

      v40 = *(v26 + v27);
      v42 = v46;
      v41 = v47;
      (*(v46 + 32))(v7, v26, v47);
      v43 = static AccountIdentity.DSID.== infix(_:_:)();
      v44 = *(v42 + 8);
      v44(v7, v41);
      v44(v20, v41);
      if ((v43 & 1) == 0)
      {
LABEL_21:
        sub_10012369C(v24);
        return 0;
      }

      v30 = v28 == v40;
LABEL_24:
      v39 = v30;
      sub_10012369C(v24);
      return v39;
  }
}

uint64_t sub_100123370(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD658);

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1001233C8(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD658);

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10012343C(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD670);

  return AMSCompatibleError.errorCode.getter(a1, v2);
}

uint64_t sub_100123494(uint64_t a1)
{
  v2 = sub_10012358C(&qword_1002DD670);

  return AMSCompatibleError.errorUserInfo.getter(a1, v2);
}

uint64_t sub_10012358C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TSDataSyncNetworkingCore.Errors();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1001235D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncNetworkingCore.Errors();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100123634(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DD678, &qword_100238508);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012369C(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncNetworkingCore.Errors();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10012370C(uint64_t a1, char a2)
{
  if (a2)
  {

    return sub_1000102EC(0xD000000000000028);
  }

  else
  {
    sub_100012C2C(a1, &v7, &qword_1002DB958, &qword_100232B60);
    if (v8)
    {
      sub_10000601C(&v7, v9);
      *&v7 = 0xD000000000000022;
      *(&v7 + 1) = 0x8000000100273D00;
      v3 = sub_10000C4FC(v9, v9[3]);
      v4 = [*(v3 + *(type metadata accessor for AMPAccount() + 20)) ams_isSandboxAccount];
      v5._countAndFlagsBits = sub_10000F454(v3, v4);
      String.append(_:)(v5);

      v6 = sub_1000102EC(v7);
      sub_100004118(v9);
    }

    else
    {
      sub_10003CD48(&v7, &qword_1002DB958, &qword_100232B60);
      return sub_1000102EC(0xD000000000000026);
    }

    return v6;
  }
}

uint64_t sub_100123858@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  if (result)
  {
    v3 = 0;
    v4 = 1;
    v5 = 0.0;
  }

  else
  {
    v4 = 0;
    v5 = 300.0;
    if (a3 < 1800.0)
    {
      v5 = 60.0;
    }

    v3 = 1;
  }

  *a2 = 1;
  *(a2 + 8) = a3;
  *(a2 + 16) = 0;
  *(a2 + 24) = v5;
  *(a2 + 32) = v4;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 49) = 1;
  *(a2 + 50) = v3;
  *(a2 + 51) = 0;
  return result;
}

BOOL sub_1001238EC(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v58[0] = a5;
  v58[1] = a1;
  v11 = type metadata accessor for Date();
  v12 = sub_100003724(v11);
  v59 = v13;
  v60 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v12);
  sub_100004B54();
  __chkstk_darwin(v16);
  v18 = v58 - v17;
  v19 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = v58 - v24;
  __chkstk_darwin(v26);
  v28 = v58 - v27;
  __chkstk_darwin(v29);
  v31 = v58 - v30;
  v32 = type metadata accessor for TSDataSyncDeviceState(0);
  if (a2)
  {
    sub_100012C2C(a3 + *(v32 + 64), v31, &qword_1002DA970, &qword_1002318B0);
    v33 = *(a4 + 56);
    if (*(a4 + 64))
    {
      v34 = 120.0;
    }

    else
    {
      v34 = *(a4 + 56);
    }

    if (a6)
    {
      goto LABEL_6;
    }

    sub_100012C2C(v31, v28, &qword_1002DA970, &qword_1002318B0);
    v38 = v60;
    if (sub_100004DFC(v28, 1, v60) == 1)
    {
      sub_10003CD48(v31, &qword_1002DA970, &qword_1002318B0);
      v35 = v28;
      goto LABEL_16;
    }

    (*(v59 + 32))(v18, v28, v38);
    if ((static Date.== infix(_:_:)() & 1) == 0)
    {
      if ((static Date.< infix(_:_:)() & 1) == 0 || (Date.timeIntervalSince(_:)(), fabs(v46) >= v34))
      {
        if ((static Date.< infix(_:_:)() & 1) == 0)
        {
          v54 = sub_100006D84();
          v55(v54);
LABEL_6:
          v35 = v31;
LABEL_16:
          sub_10003CD48(v35, &qword_1002DA970, &qword_1002318B0);
          return 1;
        }

        v47 = static Date.< infix(_:_:)();
        v48 = sub_100006D84();
        v49(v48);
        v50 = v31;
        goto LABEL_32;
      }
    }

    v41 = sub_100006D84();
    v42(v41);
    v43 = v31;
LABEL_22:
    sub_10003CD48(v43, &qword_1002DA970, &qword_1002318B0);
    return 0;
  }

  sub_100012C2C(a3 + *(v32 + 60), v25, &qword_1002DA970, &qword_1002318B0);
  v36 = *(a4 + 152);
  if (*(a4 + 160))
  {
    v37 = 120.0;
  }

  else
  {
    v37 = *(a4 + 152);
  }

  if (a6)
  {
LABEL_11:
    v35 = v25;
    goto LABEL_16;
  }

  sub_100012C2C(v25, v22, &qword_1002DA970, &qword_1002318B0);
  v39 = v60;
  if (sub_100004DFC(v22, 1, v60) == 1)
  {
    sub_10003CD48(v25, &qword_1002DA970, &qword_1002318B0);
    v35 = v22;
    goto LABEL_16;
  }

  (*(v59 + 32))(v6, v22, v39);
  if ((static Date.== infix(_:_:)() & 1) != 0 || (static Date.< infix(_:_:)() & 1) != 0 && (Date.timeIntervalSince(_:)(), fabs(v51) < v37))
  {
    v44 = sub_100008038();
    v45(v44);
    v43 = v25;
    goto LABEL_22;
  }

  if ((static Date.< infix(_:_:)() & 1) == 0)
  {
    v56 = sub_100008038();
    v57(v56);
    goto LABEL_11;
  }

  v47 = static Date.< infix(_:_:)();
  v52 = sub_100008038();
  v53(v52);
  v50 = v25;
LABEL_32:
  sub_10003CD48(v50, &qword_1002DA970, &qword_1002318B0);
  return (v47 & 1) == 0;
}

uint64_t sub_100123DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for Date();
  v11 = sub_100003724(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_100004B54();
  __chkstk_darwin(v16);
  v18 = &v29 - v17;
  __chkstk_darwin(v19);
  v21 = &v29 - v20;
  v22 = *(a3 + *(type metadata accessor for TSDataSyncDeviceState(0) + 68));
  if (v22)
  {
    if (*(v22 + 16))
    {
      v23 = sub_10000DA08();
      if (v24)
      {
        (*(v13 + 16))(v18, *(v22 + 56) + *(v13 + 72) * v23, v10);
        v25 = *(v13 + 32);
        v25(v21, v18, v10);
        sub_100012C2C(a2, v9, &qword_1002DA970, &qword_1002318B0);
        if (sub_100004DFC(v9, 1, v10) == 1)
        {
          (*(v13 + 8))(v21, v10);
          sub_10003CD48(v9, &qword_1002DA970, &qword_1002318B0);
        }

        else
        {
          v25(v3, v9, v10);
          v26 = static Date.> infix(_:_:)();
          v27 = *(v13 + 8);
          v27(v3, v10);
          v27(v21, v10);
          if (v26)
          {
            return 1;
          }
        }
      }
    }
  }

  return 0;
}

void *sub_10012403C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001070D0(0, v3, 0);
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = _swiftEmptyArrayStorage[2];
      v9 = _swiftEmptyArrayStorage[3];

      if (v8 >= v9 >> 1)
      {
        sub_1001070D0(v9 > 1, v8 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v8 + 1;
      v10 = &_swiftEmptyArrayStorage[2 * v8];
      *(v10 + 4) = v7;
      *(v10 + 5) = v6;
      v5 += 4;
      --v3;
    }

    while (v3);
  }

  v11 = sub_1000B2D90(_swiftEmptyArrayStorage);

  v12 = sub_1001244E4(v11, a2);

  return v12;
}

uint64_t sub_100124144(void *a1, uint64_t a2, uint64_t a3)
{
  *&v7 = a2;
  *(&v7 + 1) = a3;

  v4 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9 = v7;
  v10 = v8;
  if (!*(&v8 + 1))
  {
    goto LABEL_9;
  }

  sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1001ABEF4(0xD000000000000010, 0x8000000100273D60, v6, &v9);

  if (!*(&v10 + 1))
  {
LABEL_9:
    sub_100009DF4(&v9);
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    *&result = v7;
    return result;
  }

LABEL_10:
  *&result = 0.0;
  return result;
}

void *sub_10012429C(void *a1)
{
  v15 = &_swiftEmptySetSingleton;
  v2 = [a1 allKeys];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = v3 + 32;
    do
    {
      sub_100009F20(v5, v14);
      if (swift_dynamicCast())
      {
        v6 = v12;

        v7 = [a1 __swift_objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
        swift_unknownObjectRelease();
        if (v7)
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v12 = 0u;
          v13 = 0u;
        }

        v14[0] = v12;
        v14[1] = v13;
        if (*(&v13 + 1))
        {
          sub_100099DF4(&qword_1002DD3E8, &qword_100237740);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v8 = sub_10014EB30(0xD000000000000010, 0x8000000100273D60), (v9 & 1) != 0))
            {
              sub_100009F20(*(v11 + 56) + 32 * v8, v14);

              if (swift_dynamicCast())
              {
                sub_1000EAA70(v14, v6, *(&v6 + 1));
              }
            }

            else
            {
            }
          }
        }

        else
        {

          sub_100009DF4(v14);
        }
      }

      v5 += 32;
      --v4;
    }

    while (v4);

    return v15;
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }
}

void *sub_1001244E4(uint64_t a1, void *a2)
{
  if (*(a1 + 16) <= a2[2] >> 3)
  {
    sub_100124538(a1);
    return a2;
  }

  else
  {

    return sub_100124664(a1, a2);
  }
}

uint64_t sub_100124538(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_100124B3C(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_100124664(uint64_t a1, void *a2)
{
  v5 = a2;
  if (a2[2])
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v49 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 7;

    v15 = 0;
    v51 = v12;
    v52 = v7;
    v53 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        v20 = v5[5];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v21 = Hasher._finalize()();
        v22 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v21 & v22;
          v4 = (v21 & v22) >> 6;
          v8 = 1 << (v21 & v22);
          if ((v8 & v13[v4]) == 0)
          {
            break;
          }

          v23 = (v5[6] + 16 * v7);
          v24 = *v23 == v3 && v23[1] == v2;
          if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v55 = v49;
            v56 = v16;
            v57 = v11;
            v3 = v52;
            v12 = v53;
            v54[0] = v53;
            v54[1] = v52;

            v26 = *(v5 + 32);
            v46 = ((1 << v26) + 63) >> 6;
            v2 = 8 * v46;
            if ((v26 & 0x3Fu) > 0xD)
            {
              goto LABEL_48;
            }

            while (1)
            {
              v47 = &v45;
              __chkstk_darwin(v25);
              v7 = &v45 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, v5 + 7, v2);
              v27 = *(v7 + 8 * v4) & ~v8;
              v28 = v5[2];
              v50 = v7;
              *(v7 + 8 * v4) = v27;
              v29 = v28 - 1;
              v30 = v51;
              while (1)
              {
                v48 = v29;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v32 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v33 = (*(v12 + 48) + ((v16 << 10) | (16 * v32)));
                v2 = *v33;
                v34 = v33[1];
                v35 = v5[5];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v36 = Hasher._finalize()();
                v37 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v36 & v37;
                  v7 = (v36 & v37) >> 6;
                  v8 = 1 << (v36 & v37);
                  if ((v8 & v13[v7]) == 0)
                  {

                    v3 = v52;
                    v12 = v53;
                    v30 = v51;
                    goto LABEL_24;
                  }

                  v38 = (v5[6] + 16 * v4);
                  if (*v38 == v2 && v38[1] == v34)
                  {
                    break;
                  }

                  v40 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v36 = v4 + 1;
                }

                while ((v40 & 1) == 0);

                v41 = v50[v7];
                v50[v7] = v41 & ~v8;
                v3 = v52;
                v12 = v53;
                v30 = v51;
                if ((v41 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v29 = v48 - 1;
                if (__OFSUB__(v48, 1))
                {
                  __break(1u);
                }

                if (v48 == 1)
                {

                  v5 = &_swiftEmptySetSingleton;
                  goto LABEL_44;
                }
              }

              while (1)
              {
                v31 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v31 >= v30)
                {
                  v5 = sub_100124ED8(v50, v46, v48, v5);
                  goto LABEL_44;
                }

                v11 = *(v3 + 8 * v31);
                ++v16;
                if (v11)
                {
                  v16 = v31;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_47:
              __break(1u);
LABEL_48:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v43 = swift_slowAlloc();
            v44 = sub_100124E50(v43, v46, v5 + 7, v46, v5, v7, v54);

            v49 = v55;
            v5 = v44;
            goto LABEL_44;
          }

          v21 = v7 + 1;
        }

        v15 = v16;
        v7 = v52;
        v14 = v53;
        v12 = v51;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_47;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_44:
    sub_1000122EC();
  }

  else
  {

    return &_swiftEmptySetSingleton;
  }

  return v5;
}

uint64_t sub_100124B3C(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v9 = v7 & v8;
    if (((*(v5 + 56 + (((v7 & v8) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v7 & v8)) & 1) == 0)
    {
      return 0;
    }

    v10 = (*(v5 + 48) + 16 * v9);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v7 = v9 + 1;
  }

  v12 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v19 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1000EC30C();
    v14 = v19;
  }

  v15 = (*(v14 + 48) + 16 * v9);
  v16 = *v15;
  v17 = v15[1];
  sub_1001250F4(v9);
  *v2 = v19;
  return v16;
}

unint64_t *sub_100124C64(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v28 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v27 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    v16 = *(a3 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a3 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v9 + 8 * v20)) == 0)
      {

        goto LABEL_3;
      }

      v22 = (*(a3 + 48) + 16 * v19);
      if (*v22 == v15 && v22[1] == v14)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = v28[v20];
    v28[v20] = v25 & ~v21;
    if ((v25 & v21) == 0)
    {
      goto LABEL_3;
    }

    v8 = v27 - 1;
    if (__OFSUB__(v27, 1))
    {
      goto LABEL_23;
    }

    if (v27 == 1)
    {
      return &_swiftEmptySetSingleton;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_100124ED8(v28, a2, v27, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_100124E50(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_100124C64(a1, a2, a5, a6, a7);

  return v12;
}

uint64_t sub_100124ED8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = &_swiftEmptySetSingleton;
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_100099DF4(&qword_1002DC268, &qword_100234878);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = v9[5];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (v9[6] + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t sub_1001250F4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = (*(v3 + 48) + 16 * v6);
        v13 = *v12;
        v14 = v12[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v15 = Hasher._finalize()();

        v16 = v15 & v7;
        if (v2 >= v10)
        {
          if (v16 >= v10 && v2 >= v16)
          {
LABEL_15:
            v19 = *(v3 + 48);
            v20 = (v19 + 16 * v2);
            v21 = (v19 + 16 * v6);
            if (v2 != v6 || v20 >= v21 + 1)
            {
              *v20 = *v21;
              v2 = v6;
            }
          }
        }

        else if (v16 >= v10 || v2 >= v16)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v23 = *(v3 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v25;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1001252AC(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for MetricsEvent();
  v4 = sub_100003724(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v11 = v10 - v9;
  v12 = a2[4];
  sub_10000C4FC(a2, a2[3]);
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  sub_100004B70();
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

  dispatch thunk of MetricsQueue.enqueue(event:)();
  return (*(v6 + 8))(v11, v3);
}

uint64_t sub_10012540C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v33[1] = a3;
  v33[2] = a5;
  v7 = type metadata accessor for MetricsEvent();
  v8 = sub_100003724(v7);
  v34 = v9;
  v35 = v8;
  v11 = *(v10 + 64);
  __chkstk_darwin(v8);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = v33 - v15;
  v17 = sub_100099DF4(&qword_1002DB948, &unk_100232B50);
  v18 = sub_10000307C(v17);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (v33 - v21);
  sub_100012C94(a1, v33 - v21, &qword_1002DB948, &unk_100232B50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = *v22;
    v24 = a4[3];
    v33[0] = a4[4];
    sub_10000C4FC(a4, v24);
    sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
    inited = swift_initStackObject();
    v26 = sub_100006D94(inited, xmmword_1002329F0);
    v27 = sub_100007C5C(v26, &type metadata for UInt);
    inited[7].n128_u64[1] = &type metadata for Bool;
    inited[6].n128_u8[0] = v27 & 1;
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    Dictionary.init(dictionaryLiteral:)();
    sub_100004B70();
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    dispatch thunk of MetricsQueue.enqueue(event:)();
  }

  else
  {
    sub_100004E24(v22, &qword_1002DB948, &unk_100232B50);
    v28 = a4[4];
    sub_10000C4FC(a4, a4[3]);
    sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
    v29 = swift_initStackObject();
    v30 = sub_100006D94(v29, xmmword_1002329F0);
    v31 = sub_100007C5C(v30, &type metadata for UInt);
    v29[7].n128_u64[1] = &type metadata for Bool;
    v29[6].n128_u8[0] = v31 & 1;
    sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
    Dictionary.init(dictionaryLiteral:)();
    sub_100004B70();
    static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();

    dispatch thunk of MetricsQueue.enqueue(event:)();
    v16 = v13;
  }

  return (*(v34 + 8))(v16, v35);
}

uint64_t sub_100125790(void (*a1)(uint64_t *__return_ptr, char *))
{
  v14 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v13 - v10;
  sub_100012C94(v1, &v13 - v10, &qword_1002DA970, &qword_1002318B0);
  if (sub_100004DFC(v11, 1, v3) == 1)
  {
    return 2;
  }

  (*(v4 + 32))(v7, v11, v3);
  v14(&v15, v7);
  if (v2)
  {
    result = (*(v4 + 8))(v7, v3);
    __break(1u);
  }

  else
  {
    (*(v4 + 8))(v7, v3);
    return v15;
  }

  return result;
}

uint64_t sub_100125960(uint64_t a1)
{
  sub_100099DF4(&qword_1002DBBC0, &unk_100232E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1002329F0;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100273DA0;
  *(inited + 48) = sub_100125AB0(a1);
  *(inited + 72) = &type metadata for UInt;
  strcpy((inited + 80), "requestReason");
  *(inited + 94) = -4864;
  v3 = String.init<A>(describing:)();
  *(inited + 120) = &type metadata for String;
  *(inited + 96) = v3;
  *(inited + 104) = v4;
  sub_100099DF4(&qword_1002DBBC8, &qword_100238210);
  Dictionary.init(dictionaryLiteral:)();
  sub_100004B70();
  static MetricsEvent.event(topic:eventType:fields:allowedBaseFields:error:)();
}

BOOL sub_100125AB0(uint64_t a1)
{
  v2 = type metadata accessor for AccountDataServerRequest.Put(0);
  v3 = sub_10000307C(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v8 = v7 - v6;
  v9 = type metadata accessor for AccountDataServerRequest(0);
  v10 = sub_10000307C(v9);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_10000306C();
  v15 = v14 - v13;
  sub_1000CA2F8(a1, v14 - v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001263B0(v15, type metadata accessor for AccountDataServerRequest);
    return 0;
  }

  else
  {
    sub_10012634C(v15, v8);
    v17 = (v8 + *(v2 + 24));
    v18 = *v17;
    v19 = v17[1];
    sub_1001263B0(v8, type metadata accessor for AccountDataServerRequest.Put);
    v20 = 1;
    if (v18 != 2)
    {
      v20 = 2;
    }

    if (v19 == 2)
    {
      return v18 != 2;
    }

    else
    {
      return v20;
    }
  }
}

uint64_t sub_100125BF0(void *__src, const void *a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (sub_100013900(__dst) == 1)
  {
    v4 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    memcpy(__srca, __dst, sizeof(__srca));
    memcpy(v11, __src, sizeof(v11));
    sub_10012627C(v11, v12);
    sub_1001262D8();
    v4 = DictionaryExpressible.asDictionary()();
    memcpy(v12, __srca, sizeof(v12));
    sub_1000CA2A4(v12);
  }

  memcpy(v12, a2, sizeof(v12));
  if (sub_100013900(v12) == 1)
  {
    v5 = Dictionary.init(dictionaryLiteral:)();
  }

  else
  {
    memcpy(v9, v12, sizeof(v9));
    memcpy(__srca, a2, sizeof(__srca));
    sub_10012627C(__srca, v11);
    sub_1001262D8();
    v5 = DictionaryExpressible.asDictionary()();
    memcpy(v11, v9, sizeof(v11));
    sub_1000CA2A4(v11);
  }

  sub_100099DF4(&qword_1002DD538, &unk_100238260);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10022E400;
  *(v6 + 32) = 0xD000000000000013;
  *(v6 + 40) = 0x8000000100273E00;
  v7 = sub_100125F10(v4, v5, v6);

  swift_setDeallocating();
  sub_10011C2B8();
  return v7;
}

uint64_t sub_100125E0C()
{
  v0 = type metadata accessor for AccountDataState(0);
  v1 = *(v0 + 20);
  v2 = sub_100125790(sub_100126408);
  v3 = (v2 == 2) | v2;
  v4 = *(v0 + 20);
  v5 = sub_100125790(sub_100125ED4);
  return (v3 ^ ((v5 == 2) | v5)) & 1;
}

uint64_t sub_100125ED4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  result = static Date.> infix(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_100125F10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a3;
  v26 = a2;
  v4 = a2 + 64;
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 64);
  v8 = (v5 + 63) >> 6;

  v23 = 0;
  v24 = v4;
  v10 = 0;
  while (v7)
  {
LABEL_8:
    v12 = __clz(__rbit64(v7)) | (v10 << 6);
    v13 = (*(v26 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_10011723C(*(v26 + 56) + 40 * v12, &v32);
    v27 = v32;
    v28 = v33;
    v16 = v34;

    if (!v14)
    {
LABEL_28:

      return v23;
    }

    v42[0] = v27;
    v42[1] = v28;
    v43 = v16;
    *&v32 = v15;
    *(&v32 + 1) = v14;
    __chkstk_darwin(v17);
    v22[2] = &v32;
    if (sub_10015D6FC(sub_10012632C, v22, v25))
    {
      sub_100117298(v42);

      v4 = v24;
      goto LABEL_26;
    }

    if (*(a1 + 16))
    {
      v18 = sub_10014EB30(v15, v14);
      v20 = v19;

      v4 = v24;
      if (v20)
      {
        sub_10011723C(*(a1 + 56) + 40 * v18, &v39);
      }

      else
      {
        v41 = 0;
        v39 = 0u;
        v40 = 0u;
      }
    }

    else
    {

      v41 = 0;
      v39 = 0u;
      v40 = 0u;
      v4 = v24;
    }

    sub_10011723C(v42, v38);
    sub_100012C94(&v39, &v32, &qword_1002DD690, &qword_1002388C0);
    sub_100012C94(v38, &v35, &qword_1002DD690, &qword_1002388C0);
    if (*(&v33 + 1))
    {
      sub_100012C94(&v32, v31, &qword_1002DD690, &qword_1002388C0);
      if (*(&v36 + 1))
      {
        v29[0] = v35;
        v29[1] = v36;
        v30 = v37;
        v21 = static AnyHashable.== infix(_:_:)();
        sub_100117298(v29);
        sub_1000038EC(v38);
        sub_1000038EC(&v39);
        sub_100117298(v42);
        sub_100117298(v31);
        result = sub_1000038EC(&v32);
        if (v21)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }

      sub_1000038EC(v38);
      sub_1000038EC(&v39);
      sub_100117298(v42);
      sub_100117298(v31);
    }

    else
    {
      sub_1000038EC(v38);
      sub_1000038EC(&v39);
      sub_100117298(v42);
      if (!*(&v36 + 1))
      {
        result = sub_100004E24(&v32, &qword_1002DD690, &qword_1002388C0);
        goto LABEL_26;
      }
    }

    result = sub_100004E24(&v32, &qword_1002DD698, &unk_100238520);
LABEL_24:
    if (v23 == -1)
    {
      goto LABEL_30;
    }

    ++v23;
LABEL_26:
    v7 &= v7 - 1;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v8)
    {
      goto LABEL_28;
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1001262D8()
{
  result = qword_1002DD688;
  if (!qword_1002DD688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD688);
  }

  return result;
}

uint64_t sub_10012634C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccountDataServerRequest.Put(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001263B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_10000307C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100126448()
{
  sub_10003D104(319, &qword_1002DD708);
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_100126598(319, &qword_1002DA9F8, &type metadata accessor for Date);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      v5 = type metadata accessor for Date();
      if (v6 > 0x3F)
      {
        return v5;
      }

      sub_10003D104(319, &qword_1002DD710);
      if (v7 > 0x3F)
      {
        return v5;
      }

      sub_100126598(319, &unk_1002DD718, type metadata accessor for CachedServerDataSyncAttempt);
      if (v8 > 0x3F)
      {
        return v5;
      }

      else
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v1;
}

void sub_100126598(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AccountDataChange(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 65282 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65282 < 0xFF0000)
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
        goto LABEL_15;
      }
    }

    else
    {
      if (v3 == 2)
      {
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65283;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AccountDataChange(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_100126794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6C796150776172 && a2 == 0xEA00000000006461;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4173657269707865 && a2 == 0xE900000000000074;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7466417972746572 && a2 == 0xEA00000000007265;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001002737F0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6168436C61636F6CLL && a2 == 0xEB0000000065676ELL;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x4274736575716572 && a2 == 0xEE0074416E616765;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x746867696C666E69 && a2 == 0xEE0065676E616843;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6C6961467473616CLL && a2 == 0xED00007441657275;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x8000000100272610 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000013 && 0x8000000100273E40 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x6C69614668747561 && a2 == 0xED00007441657275)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_100126B24(char a1)
{
  result = 0x6F6C796150776172;
  switch(a1)
  {
    case 1:
      result = 0x4173657269707865;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0x6168436C61636F6CLL;
      break;
    case 5:
      result = 0x4274736575716572;
      break;
    case 6:
      result = 0x746867696C666E69;
      break;
    case 7:
      v3 = 1953718636;
      goto LABEL_11;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      v3 = 1752462689;
LABEL_11:
      result = v3 | 0x6C69614600000000;
      break;
    default:
      return result;
  }

  return result;
}

void sub_100126C8C()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v143 = type metadata accessor for CachedServerDataSyncAttempt(0);
  v4 = sub_10000307C(v143);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v137 = (v8 - v7);
  v9 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v9);
  v11 = *(v10 + 64);
  sub_100003774();
  __chkstk_darwin(v12);
  sub_100003018();
  v139 = v13;
  v141 = sub_100099DF4(&qword_1002DD7D0, &unk_100238880);
  sub_10000307C(v141);
  v15 = *(v14 + 64);
  sub_100003774();
  __chkstk_darwin(v16);
  sub_100003018();
  v142 = v17;
  v18 = type metadata accessor for Date();
  v19 = sub_100003724(v18);
  v21 = v20;
  v23 = *(v22 + 64);
  __chkstk_darwin(v19);
  sub_10000306C();
  v149 = v25 - v24;
  v26 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v27 = sub_1000030B8(v26);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  sub_1000037D4();
  v138 = v30;
  sub_100005238();
  __chkstk_darwin(v31);
  sub_100002DD0();
  v144 = v32;
  sub_100005238();
  __chkstk_darwin(v33);
  sub_100002DD0();
  v146 = v34;
  sub_100005238();
  __chkstk_darwin(v35);
  v37 = &v132[-v36];
  __chkstk_darwin(v38);
  v40 = &v132[-v39];
  v150 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v41 = sub_10000307C(v150);
  v43 = *(v42 + 64);
  __chkstk_darwin(v41);
  sub_1000037D4();
  v140 = v44;
  sub_100005238();
  __chkstk_darwin(v45);
  sub_100002DD0();
  v145 = v46;
  sub_100005238();
  __chkstk_darwin(v47);
  sub_100002DD0();
  v147 = v48;
  sub_100005238();
  __chkstk_darwin(v49);
  v51 = &v132[-v50];
  __chkstk_darwin(v52);
  v54 = &v132[-v53];
  memcpy(v155, v3, sizeof(v155));
  memcpy(v156, v1, sizeof(v156));
  memcpy(v154, v3, 0x148uLL);
  memcpy(&v154[328], v1, 0x148uLL);
  memcpy(v157, v3, 0x148uLL);
  if (sub_100013900(v157) == 1)
  {
    memcpy(v153, &v154[328], 0x148uLL);
    if (sub_100013900(v153) == 1)
    {
      v148 = v1;
      v136 = v21;
      memcpy(v152, v154, sizeof(v152));
      sub_10012EC78();
      sub_10012EC78();
      sub_100004E24(v152, &qword_1002DB920, &qword_100238870);
      goto LABEL_7;
    }

LABEL_5:
    memcpy(v153, v154, sizeof(v153));
    sub_10003D1E4();
    sub_10003D1E4();
    v55 = &unk_1002DD7D8;
    v56 = &unk_100238890;
    v57 = v153;
    goto LABEL_26;
  }

  memcpy(v153, &v154[328], 0x148uLL);
  if (sub_100013900(v153) == 1)
  {
    goto LABEL_5;
  }

  v148 = v1;
  v136 = v21;
  memcpy(v151, &v154[328], sizeof(v151));
  v58 = sub_10012B794();
  sub_10003D1E4();
  sub_10003D1E4();
  sub_100004E24(v151, &qword_1002DB920, &qword_100238870);
  memcpy(v152, v154, sizeof(v152));
  sub_100004E24(v152, &qword_1002DB920, &qword_100238870);
  if (!v58)
  {
    goto LABEL_27;
  }

LABEL_7:
  v134 = type metadata accessor for AccountDataState(0);
  v135 = v18;
  v59 = *(v134 + 20);
  v60 = *(v150 + 48);
  sub_10012EC78();
  v61 = v135;
  sub_10012EC78();
  sub_1000071D8(v54);
  if (v63)
  {
    sub_1000071D8(&v54[v60]);
    if (v63)
    {
      sub_100004E24(v54, &qword_1002DA970, &qword_1002318B0);
      v62 = v61;
      goto LABEL_17;
    }

LABEL_15:
    v55 = &qword_1002DACF0;
    v56 = &qword_100232140;
    v57 = v54;
    goto LABEL_26;
  }

  sub_10003D1E4();
  sub_1000071D8(&v54[v60]);
  v64 = v136;
  if (v63)
  {
    (*(v136 + 8))(v40, v61);
    goto LABEL_15;
  }

  v65 = v149;
  (*(v136 + 32))(v149, &v54[v60], v61);
  sub_100004B94();
  sub_10012D8A8(v66, v67);
  v62 = v61;
  v133 = dispatch thunk of static Equatable.== infix(_:_:)();
  v68 = *(v64 + 8);
  v68(v65, v61);
  v68(v40, v61);
  sub_100004E24(v54, &qword_1002DA970, &qword_1002318B0);
  if ((v133 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_17:
  v69 = v134;
  v70 = *(v134 + 24);
  v71 = *(v150 + 48);
  sub_10012EC78();
  sub_10012EC78();
  sub_10000B3A0(v51, 1, v62);
  v72 = v62;
  if (v63)
  {
    sub_1000071D8(&v51[v71]);
    if (v63)
    {
      sub_100004E24(v51, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_29;
    }

LABEL_25:
    v55 = &qword_1002DACF0;
    v56 = &qword_100232140;
    v57 = v51;
    goto LABEL_26;
  }

  sub_10003D1E4();
  sub_1000071D8(&v51[v71]);
  v74 = v136;
  if (v73)
  {
    (*(v136 + 8))(v37, v62);
    goto LABEL_25;
  }

  v75 = v149;
  (*(v136 + 32))(v149, &v51[v71], v72);
  sub_100004B94();
  sub_10012D8A8(v76, v77);
  v78 = dispatch thunk of static Equatable.== infix(_:_:)();
  v79 = *(v74 + 8);
  v79(v75, v72);
  v79(v37, v72);
  sub_100004E24(v51, &qword_1002DA970, &qword_1002318B0);
  if ((v78 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_29:
  v80 = v69[7];
  v81 = v148;
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_27;
  }

  v82 = sub_100002E90(v69[8]);
  if (v63)
  {
    if (v84 != 3)
    {
      goto LABEL_27;
    }
  }

  else if (v84 == 3 || (sub_100129094(v82, v83) & 1) == 0)
  {
    goto LABEL_27;
  }

  v85 = v69[9];
  v86 = *(v150 + 48);
  v87 = v147;
  sub_100004088();
  sub_100004088();
  v88 = v135;
  sub_10000B3A0(v87, 1, v135);
  if (v63)
  {
    sub_1000071D8(v87 + v86);
    if (!v63)
    {
      goto LABEL_44;
    }

    sub_100004E24(v87, &qword_1002DA970, &qword_1002318B0);
  }

  else
  {
    v89 = v146;
    sub_10003D1E4();
    sub_1000071D8(v87 + v86);
    if (v90)
    {
      (*(v136 + 8))(v89, v88);
      goto LABEL_44;
    }

    v91 = sub_10000DF10();
    v92(v91);
    sub_100004B94();
    sub_10012D8A8(v93, v94);
    dispatch thunk of static Equatable.== infix(_:_:)();
    v95 = sub_10000AE44();
    (qword_1002318B0)(v95);
    (qword_1002318B0)(v89, v88);
    sub_100004E24(v147, &qword_1002DA970, &qword_1002318B0);
    if ((&qword_1002DA970 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  v96 = sub_100002E90(v69[10]);
  if (v63)
  {
    if (v98 != 3)
    {
      goto LABEL_27;
    }
  }

  else if (v98 == 3 || (sub_100129094(v96, v97) & 1) == 0)
  {
    goto LABEL_27;
  }

  v99 = v69[11];
  v100 = *(v150 + 48);
  v87 = v145;
  sub_100004088();
  sub_100004088();
  v101 = v135;
  sub_10000B3A0(v87, 1, v135);
  if (v63)
  {
    sub_1000071D8(v87 + v100);
    if (v63)
    {
      sub_100004E24(v87, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_61;
    }

LABEL_44:
    v55 = &qword_1002DACF0;
    v56 = &qword_100232140;
    v57 = v87;
    goto LABEL_26;
  }

  v102 = v144;
  sub_10003D1E4();
  sub_1000071D8(v87 + v100);
  if (v103)
  {
    (*(v136 + 8))(v102, v101);
    goto LABEL_44;
  }

  v104 = sub_10000DF10();
  v105(v104);
  sub_100004B94();
  sub_10012D8A8(v106, v107);
  dispatch thunk of static Equatable.== infix(_:_:)();
  v108 = sub_10000AE44();
  (qword_1002318B0)(v108);
  v109 = v102;
  v69 = v134;
  (qword_1002318B0)(v109, v101);
  sub_100004E24(v87, &qword_1002DA970, &qword_1002318B0);
  if (&qword_1002DA970)
  {
LABEL_61:
    if (*&v3[v69[12]] != *&v81[v69[12]])
    {
      goto LABEL_27;
    }

    v110 = v69[13];
    v111 = v142;
    v112 = *(v141 + 48);
    sub_100004088();
    v113 = v111;
    sub_100004088();
    v114 = v143;
    sub_10000B3A0(v111, 1, v143);
    if (v63)
    {
      sub_10000B3A0(v111 + v112, 1, v114);
      if (v63)
      {
        sub_100004E24(v111, &qword_1002DB940, &qword_100232B48);
LABEL_67:
        v115 = v69[14];
        v116 = *(v150 + 48);
        v117 = v140;
        sub_100004088();
        sub_100004088();
        sub_10000B3A0(v117, 1, v135);
        if (v63)
        {
          sub_1000071D8(v117 + v116);
          if (v63)
          {
            sub_100004E24(v140, &qword_1002DA970, &qword_1002318B0);
            goto LABEL_27;
          }
        }

        else
        {
          sub_10003D1E4();
          sub_1000071D8(v117 + v116);
          if (!v123)
          {
            v124 = v135;
            v125 = v136;
            v126 = v140;
            (*(v136 + 32))(v149, &v140[v116], v135);
            sub_100004B94();
            sub_10012D8A8(v127, v128);
            v129 = v138;
            dispatch thunk of static Equatable.== infix(_:_:)();
            v130 = *(v125 + 8);
            v131 = sub_100005CF0();
            v130(v131);
            (v130)(v129, v124);
            sub_100004E24(v126, &qword_1002DA970, &qword_1002318B0);
            goto LABEL_27;
          }

          (*(v136 + 8))(v138, v135);
        }

        v55 = &qword_1002DACF0;
        v56 = &qword_100232140;
        v57 = v140;
        goto LABEL_26;
      }
    }

    else
    {
      v118 = v139;
      sub_10003D1E4();
      sub_10000B3A0(v111 + v112, 1, v114);
      if (!v119)
      {
        sub_10012EB84();
        v120 = v137;
        sub_10012E910();
        if (*v118 == *v120)
        {
          v121 = *(v143 + 20);
          v122 = static Date.== infix(_:_:)();
          sub_10012DAE4();
          sub_10012DAE4();
          sub_100004E24(v113, &qword_1002DB940, &qword_100232B48);
          v69 = v134;
          if ((v122 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_67;
        }

        sub_10012DAE4();
        sub_10012DAE4();
        v55 = &qword_1002DB940;
        v56 = &qword_100232B48;
        v57 = v113;
LABEL_26:
        sub_100004E24(v57, v55, v56);
        goto LABEL_27;
      }

      sub_10000A248();
      sub_10012DAE4();
    }

    v55 = &qword_1002DD7D0;
    v56 = &unk_100238880;
    v57 = v111;
    goto LABEL_26;
  }

LABEL_27:
  sub_1000027F8();
}

void sub_100127ADC()
{
  sub_100004868();
  v3 = v0;
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DD7B0, &qword_100238878);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100002970();
  v12 = v5[4];
  sub_100008B3C(v5, v5[3]);
  sub_10012D9E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v23, v3, sizeof(v23));
  memcpy(v22, v3, sizeof(v22));
  sub_10003D1E4();
  sub_10012DB38();
  sub_10012EB78();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v1)
  {
    memcpy(v21, v22, sizeof(v21));
    sub_100004E24(v21, &qword_1002DB920, &qword_100238870);
  }

  else
  {
    memcpy(v21, v22, sizeof(v21));
    sub_100004E24(v21, &qword_1002DB920, &qword_100238870);
    v20 = type metadata accessor for AccountDataState(0);
    v13 = v20[5];
    type metadata accessor for Date();
    sub_100004B94();
    sub_10012D8A8(v14, v15);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v20[6]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v20[7]);
    sub_10000C650();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v24 = *&v3[v20[8]];
    sub_10012DB8C();
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v20[9]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v25 = *&v3[v20[10]];
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v20[11]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *&v3[v20[12]];
    sub_10012EBF4(8);
    sub_10012EB78();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v20[13];
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_10012EBB4();
    sub_10012D8A8(v18, v19);
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10000EE58(v20[14]);
    sub_10000C650();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v8 + 8))(v2, v6);
  sub_100005074();
}

void sub_100127EB4()
{
  sub_100004168();
  v2 = v0;
  v4 = v3;
  v84 = type metadata accessor for CachedServerDataSyncAttempt(0);
  v5 = sub_10000307C(v84);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = (v9 - v8);
  v11 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100003018();
  v82 = v15;
  v16 = type metadata accessor for Date();
  v17 = sub_100003724(v16);
  v85 = v18;
  v20 = *(v19 + 64);
  __chkstk_darwin(v17);
  sub_10000306C();
  v23 = v22 - v21;
  v24 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v25 = sub_1000030B8(v24);
  v27 = *(v26 + 64);
  __chkstk_darwin(v25);
  sub_1000037D4();
  v83 = v28;
  sub_100005238();
  __chkstk_darwin(v29);
  sub_100002DD0();
  v81 = v30;
  sub_100005238();
  __chkstk_darwin(v31);
  sub_100002DD0();
  v80 = v32;
  sub_100005238();
  __chkstk_darwin(v33);
  sub_10012ECA4();
  __chkstk_darwin(v34);
  v36 = &v79 - v35;
  sub_10012EC60(&v86);
  sub_10012EC60(v87);
  if (sub_100013900(v87) == 1)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EC00();
    sub_10012C0E0(v4);
  }

  v37 = type metadata accessor for AccountDataState(0);
  v38 = v37[5];
  sub_10003D1E4();
  sub_1000075D8(v36);
  if (v39)
  {
    sub_100004FC8();
  }

  else
  {
    v79 = v10;
    v40 = v85;
    (*(v85 + 32))(v23, v36, v16);
    sub_10012EC00();
    sub_100004B94();
    sub_10012D8A8(v41, v42);
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v43 = v40;
    v10 = v79;
    v44 = *(v43 + 8);
    v45 = sub_100013DE8();
    v46(v45);
  }

  v47 = v37[6];
  sub_10003D1E4();
  sub_1000075D8(v1);
  if (v39)
  {
    sub_100004FC8();
  }

  else
  {
    (*(v85 + 32))(v23, v1, v16);
    sub_10012EC00();
    sub_100004B94();
    sub_10012D8A8(v48, v49);
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v50 = sub_10000BCE0();
    v51(v50);
  }

  v52 = v37[7];
  sub_100004B94();
  sub_10012D8A8(v53, v54);
  dispatch thunk of Hashable.hash(into:)();
  if (*(v2 + v37[8]) == 3)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EC00();
    sub_10012923C();
  }

  v55 = v37[9];
  v56 = v80;
  sub_10003D1E4();
  sub_1000075D8(v56);
  if (v39)
  {
    sub_100004FC8();
  }

  else
  {
    v57 = sub_100010E3C(v85);
    v58(v57);
    sub_10012EC00();
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v59 = sub_10000BCE0();
    v60(v59);
  }

  if (*(v2 + v37[10]) == 3)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EC00();
    sub_10012923C();
  }

  v61 = v37[11];
  v62 = v81;
  sub_10003D1E4();
  sub_1000075D8(v62);
  if (v39)
  {
    sub_100004FC8();
  }

  else
  {
    v63 = sub_100010E3C(v85);
    v64(v63);
    sub_10012EC00();
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v65 = sub_10000BCE0();
    v66(v65);
  }

  v67 = v84;
  Hasher._combine(_:)(*(v2 + v37[12]));
  v68 = v37[13];
  v69 = v82;
  sub_10003D1E4();
  sub_10000B3A0(v69, 1, v67);
  if (v39)
  {
    sub_100004FC8();
  }

  else
  {
    sub_10012EB84();
    sub_10012E910();
    sub_10012EC00();
    Hasher._combine(_:)(*v10);
    v70 = &v10[*(v67 + 20)];
    dispatch thunk of Hashable.hash(into:)();
    sub_10000A248();
    sub_10012DAE4();
  }

  v71 = v37[14];
  v72 = v83;
  sub_10003D1E4();
  sub_1000075D8(v72);
  if (v39)
  {
    sub_100004FC8();
  }

  else
  {
    v73 = v85;
    v74 = sub_100010E3C(v85);
    v75(v74);
    sub_10012EC00();
    sub_10000D04C();
    dispatch thunk of Hashable.hash(into:)();
    v76 = *(v73 + 8);
    v77 = sub_100013DE8();
    v78(v77);
  }

  sub_1000027F8();
}

void sub_100128490(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11)
{
  sub_100004868();
  v13 = v12;
  v86 = v14;
  v15 = sub_100099DF4(&qword_1002DB940, &qword_100232B48);
  sub_1000030B8(v15);
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  sub_100003018();
  v88 = v19;
  v20 = type metadata accessor for Date();
  v21 = sub_100003724(v20);
  v93 = v22;
  v94 = v21;
  v24 = *(v23 + 64);
  __chkstk_darwin(v21);
  sub_10000306C();
  v89 = v26 - v25;
  v27 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v28 = sub_1000030B8(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_1000037D4();
  v87 = v31;
  sub_100005238();
  __chkstk_darwin(v32);
  v34 = v84 - v33;
  __chkstk_darwin(v35);
  sub_10012ECA4();
  __chkstk_darwin(v36);
  v38 = v84 - v37;
  __chkstk_darwin(v39);
  v92 = sub_100099DF4(&qword_1002DD788, &qword_100238868);
  sub_100003724(v92);
  v90 = v40;
  v42 = *(v41 + 64);
  sub_100003774();
  __chkstk_darwin(v43);
  v45 = v84 - v44;
  v98 = type metadata accessor for AccountDataState(0);
  v46 = sub_10000307C(v98);
  v48 = *(v47 + 64);
  __chkstk_darwin(v46);
  sub_10000306C();
  v95 = v13;
  v96 = (v50 - v49);
  v51 = v13[4];
  sub_100008B3C(v13, v13[3]);
  sub_10012D9E8();
  v91 = v45;
  v52 = v97;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  LODWORD(v53) = v52;
  if (v52)
  {
    v97 = v52;
    v54 = 0;
    sub_10012EC90();
    v55 = v96;
    sub_100004118(v95);
    v56 = 0;
    if (!v51)
    {
      goto LABEL_12;
    }

LABEL_5:
    v57 = v98;
    sub_100004E24(&v55[v98[5]], &qword_1002DA970, &qword_1002318B0);
    if (v38)
    {
      goto LABEL_13;
    }

LABEL_6:
    if (!v53)
    {
      goto LABEL_14;
    }

LABEL_7:
    (*(v93 + 8))(&v55[v57[7]], v94);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_8:
    if (!v56)
    {
      goto LABEL_16;
    }

LABEL_9:
    sub_100004E24(&v55[v57[11]], &qword_1002DA970, &qword_1002318B0);
    if ((v54 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  v97 = v38;
  v84[1] = v34;
  v85 = v11;
  sub_10012DA3C();
  LODWORD(v13) = v91;
  LODWORD(v38) = v92;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v55 = v96;
  memcpy(v96, v99, 0x148uLL);
  LOBYTE(a11) = 1;
  sub_100004B94();
  sub_10012D8A8(v58, v59);
  v53 = v94;
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v60 = v98[5];
  sub_100012D44();
  sub_10012EBF4(2);
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v61 = v98[6];
  sub_100012D44();
  sub_10012EBF4(3);
  v62 = v89;
  sub_1000045C8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v93 + 32))(&v55[v98[7]], v62, v53);
  sub_10012DA90();
  sub_10012EC38();
  *&v55[v98[8]] = a11;
  sub_10012EBF4(5);
  v63 = v85;
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v64 = v98[9];
  sub_100012D44();
  sub_10012EC38();
  *&v55[v98[10]] = a11;
  sub_10012EBF4(7);
  sub_1000045C8();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v97 = 0;
  v65 = v90;
  v66 = v98[11];
  sub_100012D44();
  v67 = v97;
  v68 = KeyedDecodingContainer.decode(_:forKey:)();
  v97 = v67;
  if (v67)
  {
    v69 = *(v65 + 8);
    v70 = sub_10000492C();
    v71(v70);
    sub_100004118(v95);
    v54 = 0;
    sub_10000B028();
    v56 = 1;
  }

  else
  {
    *&v55[v98[12]] = v68;
    type metadata accessor for CachedServerDataSyncAttempt(0);
    sub_10012EBB4();
    sub_10012D8A8(v72, v73);
    v74 = v97;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v97 = v74;
    if (v74)
    {
      v75 = sub_10012EC18();
      v76(v75);
      sub_100004118(v95);
      v54 = 0;
      sub_10000B028();
      v56 = 1;
    }

    else
    {
      v77 = v98[13];
      sub_100012D44();
      sub_10012EBF4(10);
      LODWORD(v13) = v91;
      v78 = v97;
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v97 = v78;
      if (!v78)
      {
        v81 = sub_10012EC18();
        v82(v81);
        v83 = v98[14];
        sub_100012D44();
        sub_10012E8B8();
        sub_100004118(v95);
        sub_10012DAE4();
        goto LABEL_18;
      }

      v79 = sub_10012EC18();
      v80(v79);
      sub_100004118(v95);
      sub_10000B028();
      v56 = 1;
      v54 = 1;
    }

    v55 = v96;
  }

  memcpy(v99, v55, 0x148uLL);
  sub_100004E24(v99, &qword_1002DB920, &qword_100238870);
  if (v63)
  {
    goto LABEL_5;
  }

LABEL_12:
  v57 = v98;
  if (!v38)
  {
    goto LABEL_6;
  }

LABEL_13:
  sub_100004E24(&v55[v57[6]], &qword_1002DA970, &qword_1002318B0);
  if (v53)
  {
    goto LABEL_7;
  }

LABEL_14:
  if (!v13)
  {
    goto LABEL_8;
  }

LABEL_15:
  sub_100004E24(&v55[v57[9]], &qword_1002DA970, &qword_1002318B0);
  if (v56)
  {
    goto LABEL_9;
  }

LABEL_16:
  if (v54)
  {
LABEL_17:
    sub_100004E24(&v55[v57[13]], &qword_1002DB940, &qword_100232B48);
  }

LABEL_18:
  sub_100005074();
}

uint64_t sub_100128D90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100126794(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100128DB8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100126B1C();
  *a1 = result;
  return result;
}

uint64_t sub_100128DE0(uint64_t a1)
{
  v2 = sub_10012D9E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100128E1C(uint64_t a1)
{
  v2 = sub_10012D9E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100128ED4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1002B3C20, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100128F28(char a1)
{
  if (a1)
  {
    return 0x6C616E6F73726570;
  }

  else
  {
    return 0x79616C506F747561;
  }
}

uint64_t sub_100128F90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100128ED4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100128FC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100128F28(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100128FF4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100128ED4(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10012901C(uint64_t a1)
{
  v2 = sub_10012DBE0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100129058(uint64_t a1)
{
  v2 = sub_10012DBE0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100129094(int a1, int a2)
{
  if (a1 == 2)
  {
    if (a2 != 2)
    {
      return 0;
    }

LABEL_6:
    if (BYTE1(a1) == 2)
    {
      if (BYTE1(a2) != 2)
      {
        return 0;
      }
    }

    else if (BYTE1(a2) == 2 || ((BYTE1(a2) ^ BYTE1(a1)) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = 0;
  if (a2 != 2 && ((a2 ^ a1) & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_100129108(uint64_t a1)
{
  v4 = sub_100099DF4(&qword_1002DD7F0, &qword_1002388A0);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100002970();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_10000492C();
  sub_100008B3C(v12, v13);
  sub_10012DBE0();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10012EB78();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v1)
  {
    sub_10000355C();
    sub_10012EB78();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v2, v4);
}

void sub_10012923C()
{
  sub_100002FBC();
  v3 = v2;
  if (v1 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v0 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (v0 >> 8) & 1;
  }

  Hasher._combine(_:)(v5);
}

Swift::Int sub_1001292AC(unsigned int a1)
{
  v2 = a1;
  v3 = BYTE1(a1);
  sub_100005BE8();
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = a1 & 1;
  }

  Hasher._combine(_:)(v4);
  if (v3 == 2)
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v5 = (a1 >> 8) & 1;
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100129340(uint64_t *a1)
{
  v3 = sub_100099DF4(&qword_1002DD7E0, &qword_100238898);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v9 = a1[3];
  sub_100008B3C(a1, v9);
  sub_10012DBE0();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(a1);
  }

  else
  {
    v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10000355C();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v12 = *(v5 + 8);
    v13 = sub_100005CF0();
    v14(v13);
    sub_100004118(a1);
    return v10 | (v11 << 8);
  }

  return v9;
}

uint64_t sub_1001294BC()
{
  sub_100002FBC();
  if ((static AccountIdentity.DSID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for AccountDataServerRequest.Put(0);
  if (*(v1 + *(v2 + 20)) != *(v0 + *(v2 + 20)))
  {
    return 0;
  }

  v3 = *(v2 + 24);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);

  return sub_100129094(v4, v5);
}

void sub_10012952C()
{
  sub_100002834();
  type metadata accessor for AccountIdentity.DSID();
  sub_100006A10();
  sub_10012D8A8(v1, v2);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  v3 = type metadata accessor for AccountDataServerRequest.Put(0);
  Hasher._combine(_:)(*(v0 + *(v3 + 20)));
  v4 = (v0 + *(v3 + 24));
  v5 = *v4;
  v6 = v4[1];
  if (v5 == 2)
  {
    v7 = 0;
  }

  else
  {
    sub_100005C20();
    v7 = v5 & 1;
  }

  Hasher._combine(_:)(v7);
  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    sub_100005C20();
    v8 = v6 & 1;
  }

  Hasher._combine(_:)(v8);
}

uint64_t sub_100129600()
{
  sub_100002834();
  type metadata accessor for AccountIdentity.DSID();
  sub_100006A10();
  sub_10012D8A8(v0, v1);
  sub_100008A44();

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10012966C()
{
  sub_100005BE8();
  type metadata accessor for AccountIdentity.DSID();
  sub_100006A10();
  sub_10012D8A8(v0, v1);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

void sub_1001296DC()
{
  sub_100004168();
  v0 = type metadata accessor for AccountDataServerRequest.Get(0);
  v1 = sub_1000030B8(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_10000306C();
  v4 = sub_100005140();
  v30 = type metadata accessor for AccountDataServerRequest.Put(v4);
  v5 = sub_10000307C(v30);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v10 = v9 - v8;
  v11 = type metadata accessor for AccountDataServerRequest(0);
  v12 = sub_10000307C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  __chkstk_darwin(v15);
  v17 = &v29 - v16;
  v18 = sub_100099DF4(&qword_1002DDBE8, &qword_100238FE8);
  sub_1000030B8(v18);
  v20 = *(v19 + 64);
  sub_100003774();
  __chkstk_darwin(v21);
  v23 = &v29 - v22;
  v25 = *(v24 + 56);
  sub_10012E8B8();
  sub_10012E8B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10000AB4C();
    sub_10012E8B8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_10001405C();
      sub_10012E910();
      static AccountIdentity.DSID.== infix(_:_:)();
      sub_10012DAE4();
      sub_100005CF0();
      sub_10012DAE4();
      sub_10012EB50();
      goto LABEL_13;
    }

    sub_10012EB9C();
LABEL_7:
    sub_10012DAE4();
    sub_100004E24(v23, &qword_1002DDBE8, &qword_100238FE8);
    goto LABEL_13;
  }

  sub_10000AB4C();
  sub_1000050CC();
  sub_10012E8B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1000066BC();
    goto LABEL_7;
  }

  sub_10000D510();
  sub_10012E910();
  sub_10000DBC0();
  if ((static AccountIdentity.DSID.== infix(_:_:)() & 1) != 0 && *&v17[*(v30 + 20)] == *(v10 + *(v30 + 20)))
  {
    v26 = *(v30 + 24);
    v27 = *(v10 + v26);
    v28 = *&v17[v26];
    sub_1000066BC();
    sub_10012DAE4();
    sub_100129094(v28, v27);
  }

  else
  {
    sub_1000066BC();
    sub_10012DAE4();
  }

  sub_1000066BC();
  sub_10012DAE4();
  sub_10012EB50();
LABEL_13:
  sub_1000027F8();
}

uint64_t sub_1001299DC()
{
  v1 = sub_100002834();
  v2 = type metadata accessor for AccountDataServerRequest.Get(v1);
  v3 = sub_1000030B8(v2);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v6 = type metadata accessor for AccountDataServerRequest.Put(0);
  v7 = sub_10000307C(v6);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_10000306C();
  v10 = sub_100005140();
  v11 = type metadata accessor for AccountDataServerRequest(v10);
  v12 = sub_10000307C(v11);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  sub_10000306C();
  sub_10000AB4C();
  sub_10012E8B8();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_10001405C();
    sub_100005CF0();
    sub_10012E910();
    Hasher._combine(_:)(1uLL);
    type metadata accessor for AccountIdentity.DSID();
    sub_100006A10();
    sub_10012D8A8(v15, v16);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    sub_10012EB9C();
  }

  else
  {
    sub_10000D510();
    sub_10012E910();
    Hasher._combine(_:)(0);
    type metadata accessor for AccountIdentity.DSID();
    sub_100006A10();
    sub_10012D8A8(v17, v18);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    Hasher._combine(_:)(*(v0 + *(v6 + 20)));
    v19 = (v0 + *(v6 + 24));
    v20 = *v19;
    v21 = v19[1];
    if (v20 == 2)
    {
      v22 = 0;
    }

    else
    {
      sub_100005C20();
      v22 = v20 & 1;
    }

    Hasher._combine(_:)(v22);
    if (v21 == 2)
    {
      v23 = 0;
    }

    else
    {
      sub_100005C20();
      v23 = v21 & 1;
    }

    Hasher._combine(_:)(v23);
    sub_1000066BC();
  }

  return sub_10012DAE4();
}

Swift::Int sub_100129C0C(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_100129C4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v21;
  a20 = v22;
  v23 = type metadata accessor for Date();
  v24 = sub_100003724(v23);
  v26 = v25;
  v28 = *(v27 + 64);
  __chkstk_darwin(v24);
  sub_10000306C();
  v29 = sub_100005140();
  v30 = type metadata accessor for AccountDataServerResponse.Errors(v29);
  v31 = sub_1000030B8(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_10000306C();
  v36 = v35 - v34;
  v37 = sub_100099DF4(&qword_1002DDBF0, &qword_100238FF0);
  sub_1000030B8(v37);
  v39 = *(v38 + 64);
  sub_100003774();
  __chkstk_darwin(v40);
  v42 = &a9 - v41;
  v44 = *(v43 + 56);
  sub_10012E8B8();
  sub_10012E8B8();
  sub_100099DF4(&qword_1002DDA10, &qword_100238900);
  sub_1000075D8(v42);
  if (!v45)
  {
    sub_10000DBC0();
    sub_10012E8B8();
    sub_1000075D8(&v42[v44]);
    if (!v45)
    {
      (*(v26 + 32))(v20, &v42[v44], v23);
      static Date.== infix(_:_:)();
      v46 = *(v26 + 8);
      v46(v20, v23);
      v46(v36, v23);
      sub_10012EBCC();
      goto LABEL_10;
    }

    (*(v26 + 8))(v36, v23);
LABEL_9:
    sub_100004E24(v42, &qword_1002DDBF0, &qword_100238FF0);
    goto LABEL_10;
  }

  sub_1000075D8(&v42[v44]);
  if (!v45)
  {
    goto LABEL_9;
  }

  sub_10012EBCC();
LABEL_10:
  sub_1000027F8();
}

uint64_t sub_100129E94()
{
  sub_100002FBC();
  sub_10012EC60(&v6);
  memcpy(__dst, v0, sizeof(__dst));
  if (!sub_10012B794())
  {
    return 0;
  }

  v2 = type metadata accessor for AccountDataServerResponse(0);
  v3 = v2[5];
  if ((static Date.== infix(_:_:)() & 1) == 0 || *(v1 + v2[6]) != *&v0[v2[6]])
  {
    return 0;
  }

  v4 = v2[7];

  return static Date.== infix(_:_:)();
}

uint64_t sub_100129F54(uint64_t a1)
{
  v2 = v1;
  sub_10012EC60(v10);
  sub_10012C0E0(a1);
  v4 = type metadata accessor for AccountDataServerResponse(0);
  v5 = v4[5];
  type metadata accessor for Date();
  sub_100004B94();
  sub_10012D8A8(v6, v7);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + v4[6]));
  v8 = v2 + v4[7];
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_10012A02C()
{
  v1 = v0;
  Hasher.init(_seed:)();
  sub_10012EC60(v9);
  sub_10012C0E0(&v8);
  v2 = type metadata accessor for AccountDataServerResponse(0);
  v3 = v2[5];
  type metadata accessor for Date();
  sub_100004B94();
  sub_10012D8A8(v4, v5);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v2[6]));
  v6 = v1 + v2[7];
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10012A11C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v1 == 2)
  {
    v3 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v3 = v1 & 1;
  }

  Hasher._combine(_:)(v3);
  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v4 = v2 & 1;
  }

  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10012A1B0@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  result = sub_100129340(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_10012A25C()
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountIdentity.DSID();
  sub_10012D8A8(&qword_1002DDBE0, &type metadata accessor for AccountIdentity.DSID);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10012A354(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_10012A39C@<X0>(__int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 241);
  v4 = HIBYTE(a1);
  if (a1 == 2)
  {
    v5 = *(v2 + 25);
  }

  else
  {
    v5 = a1;
  }

  v7 = *v2;
  v6 = v2[1];
  if (v4 != 2)
  {
    v3 = v4;
  }

  v8 = *(v2 + 24);
  v9 = v2[4];
  v10 = v2[5];
  v12 = v2[9];
  v11 = v2[8];
  v13 = *(v2 + 88);
  v44 = *(v2 + 208);
  v43 = *(v2 + 240);
  v42 = *(v2 + 312);
  v14 = *(v2 + 89);
  *(a2 + 16) = v2[2];
  v15 = *(v2 + 90);
  *(a2 + 24) = v8;
  v16 = *(v2 + 91);
  *(a2 + 25) = v5 & 1;
  v17 = v2[12];
  *(a2 + 32) = v9;
  LOBYTE(v9) = *(v2 + 104);
  *(a2 + 64) = v11;
  *(a2 + 72) = v12;
  LOBYTE(v12) = *(v2 + 105);
  *(a2 + 88) = v13;
  v18 = *(v2 + 106);
  *(a2 + 89) = v14;
  v19 = *(v2 + 107);
  *(a2 + 90) = v15;
  v20 = *(v2 + 108);
  *(a2 + 91) = v16;
  v21 = *(v2 + 109);
  *(a2 + 96) = v17;
  *(a2 + 104) = v9;
  v22 = v2[14];
  v23 = v2[15];
  *(a2 + 105) = v12;
  *(a2 + 106) = v18;
  v24 = v2[16];
  v25 = v2[17];
  *(a2 + 107) = v19;
  *(a2 + 108) = v20;
  v26 = v2[18];
  v27 = v2[19];
  *(a2 + 109) = v21;
  v28 = *(v2 + 160);
  *(a2 + 112) = v22;
  LOBYTE(v22) = *(v2 + 161);
  *(a2 + 128) = v24;
  *(a2 + 144) = v26;
  v29 = v2[21];
  v30 = v2[22];
  *(a2 + 160) = v28;
  v31 = v2[23];
  *(a2 + 161) = v22;
  v32 = v2[27];
  *(a2 + 168) = v29;
  *(a2 + 184) = v31;
  *(a2 + 208) = v44;
  v33 = v2[31];
  v34 = v2[32];
  *(a2 + 216) = v32;
  *(a2 + 240) = v43;
  LOBYTE(v32) = *(v2 + 264);
  *(a2 + 241) = v3 & 1;
  *(a2 + 248) = v33;
  v35 = v2[34];
  v36 = v2[35];
  *(a2 + 264) = v32;
  *(a2 + 272) = v35;
  v37 = v2[37];
  *(a2 + 288) = v2[36];
  *(a2 + 304) = v2[38];
  *(a2 + 312) = v42;
  *(a2 + 313) = *(v2 + 313);
  v38 = v2[40];
  *(a2 + 48) = *(v2 + 3);
  *(a2 + 320) = v38;
  *(a2 + 192) = *(v2 + 12);
  *a2 = v7;
  *(a2 + 8) = v6;
  v39 = *(v2 + 14);
  v40 = v2[10];
  *(a2 + 40) = v10;
  *(a2 + 80) = v40;
  *(a2 + 120) = v23;
  *(a2 + 136) = v25;
  *(a2 + 152) = v27;
  *(a2 + 176) = v30;
  *(a2 + 224) = v39;
  *(a2 + 256) = v34;
  *(a2 + 280) = v36;
  *(a2 + 296) = v37;
}

uint64_t sub_10012A608(const void *a1)
{
  memcpy(__dst, v1, 0x148uLL);
  sub_1001262D8();
  v3 = DictionaryExpressible.asDictionary()();
  v4 = sub_10014EB30(0xD000000000000013, 0x8000000100273E00);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = v3;
    v8 = *(v3 + 24);
    sub_100099DF4(&qword_1002DD838, &qword_1002388C8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v8);
    v9 = *(*(v22 + 48) + 16 * v6 + 8);

    sub_100006300((*(v22 + 56) + 40 * v6));
    _NativeDictionary._delete(at:)();
  }

  else
  {
    memset(__dst, 0, 40);
  }

  sub_100004E24(__dst, &qword_1002DD690, &qword_1002388C0);
  memcpy(__dst, a1, 0x148uLL);
  v10 = DictionaryExpressible.asDictionary()();
  v11 = sub_10014EB30(0xD000000000000013, 0x8000000100273E00);
  if (v12)
  {
    v13 = v11;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = v10[3];
    sub_100099DF4(&qword_1002DD838, &qword_1002388C8);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(v14, v15);
    v16 = *(v10[6] + 16 * v13 + 8);

    sub_100006300((v10[7] + 40 * v13));
    _NativeDictionary._delete(at:)();
  }

  else
  {
    memset(__dst, 0, 40);
  }

  sub_100004E24(__dst, &qword_1002DD690, &qword_1002388C0);
  v17 = sub_1000050CC();
  sub_100113EE0(v17, v18);
  v20 = v19;

  return v20 & 1;
}

uint64_t sub_10012A858(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E756F6363416361 && a2 == 0xED0000656D614E74;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x8000000100273E00 == a2;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x727550776F6C6C61 && a2 == 0xEE00736573616863;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x79616C506F747561 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000014 && 0x8000000100273E60 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x72656D75736E6F63 && a2 == 0xEE007473694C6449;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6142746964657263 && a2 == 0xED000065636E616CLL;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D614E7473726966 && a2 == 0xE900000000000065;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000017 && 0x8000000100273E80 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000010 && 0x8000000100273EA0 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000023 && 0x8000000100273EC0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD000000000000015 && 0x8000000100273EF0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000014 && 0x8000000100273F10 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0x426F546B73417369 && a2 == 0xEA00000000007975;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000011 && 0x8000000100273F30 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x436461426E497369 && a2 == 0xED00007469646572;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x696D61466E497369 && a2 == 0xEA0000000000796CLL;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000014 && 0x8000000100273F50 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000010 && 0x8000000100273F70 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x6E756F43326F7369 && a2 == 0xEF65646F43797274;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0x6E756F43336F7369 && a2 == 0xEF65646F43797274;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000013 && 0x8000000100273F90 == a2;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000019 && 0x8000000100273FB0 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x656D614E7473616CLL && a2 == 0xE800000000000000;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0xD00000000000001CLL && 0x8000000100273FD0 == a2;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD00000000000001BLL && 0x8000000100273FF0 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0xD000000000000010 && 0x8000000100274010 == a2;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0xD000000000000014 && 0x8000000100274030 == a2;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 0x6C616E6F73726570 && a2 == 0xEF6E6F6974617A69;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0x4C656C69666F7270 && a2 == 0xEB000000006B636FLL;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0x65446C6961746572 && a2 == 0xEA00000000006F6DLL;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else
                                                                {
                                                                  v37 = a1 == 0x6F726665726F7473 && a2 == 0xEC0000006449746ELL;
                                                                  if (v37 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                  {

                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    v38 = a1 == 0xD000000000000019 && 0x8000000100274050 == a2;
                                                                    if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                    {

                                                                      return 33;
                                                                    }

                                                                    else
                                                                    {
                                                                      v39 = a1 == 0xD000000000000018 && 0x8000000100274070 == a2;
                                                                      if (v39 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                      {

                                                                        return 34;
                                                                      }

                                                                      else
                                                                      {
                                                                        v40 = a1 == 0x6968547265646E75 && a2 == 0xED00006E65657472;
                                                                        if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                        {

                                                                          return 35;
                                                                        }

                                                                        else if (a1 == 0xD000000000000016 && 0x8000000100274090 == a2)
                                                                        {

                                                                          return 36;
                                                                        }

                                                                        else
                                                                        {
                                                                          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                          if (v42)
                                                                          {
                                                                            return 36;
                                                                          }

                                                                          else
                                                                          {
                                                                            return 37;
                                                                          }
                                                                        }
                                                                      }
                                                                    }
                                                                  }
                                                                }
                                                              }
                                                            }
                                                          }
                                                        }
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_10012B350(char a1)
{
  result = 0x6E756F6363416361;
  switch(a1)
  {
    case 1:
    case 22:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0x727550776F6C6C61;
      break;
    case 3:
      result = 0x79616C506F747561;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x72656D75736E6F63;
      break;
    case 6:
      result = 0x6142746964657263;
      break;
    case 7:
      result = 0x6D614E7473726966;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 18:
    case 27:
      result = 0xD000000000000010;
      break;
    case 10:
      result = 0xD000000000000023;
      break;
    case 11:
      result = 0xD000000000000015;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0x426F546B73417369;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0x436461426E497369;
      break;
    case 16:
      result = 0x696D61466E497369;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0x746E756F436F7369;
      break;
    case 20:
      v3 = 846164841;
      goto LABEL_21;
    case 21:
      v3 = 862942057;
LABEL_21:
      result = v3 | 0x6E756F4300000000;
      break;
    case 23:
    case 33:
      result = 0xD000000000000019;
      break;
    case 24:
      result = 0x656D614E7473616CLL;
      break;
    case 25:
      result = 0xD00000000000001CLL;
      break;
    case 26:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD000000000000014;
      break;
    case 29:
      result = 0x6C616E6F73726570;
      break;
    case 30:
      result = 0x4C656C69666F7270;
      break;
    case 31:
      result = 0x65446C6961746572;
      break;
    case 32:
      result = 0x6F726665726F7473;
      break;
    case 34:
      result = 0xD000000000000018;
      break;
    case 35:
      result = 0x6968547265646E75;
      break;
    case 36:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10012B794()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(v1 + 16) != *(v0 + 16))
  {
    return 0;
  }

  v4 = *(v1 + 24);
  v5 = *(v0 + 24);
  if (v4 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v5 == 2 || ((v5 ^ v4) & 1) != 0)
    {
      return result;
    }
  }

  if ((*(v1 + 25) ^ *(v0 + 25)))
  {
    return 0;
  }

  v7 = *(v1 + 40);
  v8 = *(v0 + 40);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(v1 + 32) == *(v0 + 32) && v7 == v8;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v8)
  {
    return 0;
  }

  v10 = *(v0 + 48);
  if (*(v1 + 48))
  {
    if (!v10 || (sub_1001442CC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v10)
  {
    return 0;
  }

  v11 = *(v1 + 56) == *(v0 + 56) && *(v1 + 64) == *(v0 + 64);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v1 + 72) == *(v0 + 72) && *(v1 + 80) == *(v0 + 80);
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((*(v1 + 88) ^ *(v0 + 88)) & 1) != 0 || ((*(v1 + 89) ^ *(v0 + 89)) & 1) != 0 || ((*(v1 + 90) ^ *(v0 + 90)) & 1) != 0 || ((*(v1 + 91) ^ *(v0 + 91)) & 1) != 0 || *(v1 + 96) != *(v0 + 96) || ((*(v1 + 104) ^ *(v0 + 104)) & 1) != 0 || ((*(v1 + 105) ^ *(v0 + 105)) & 1) != 0 || ((*(v1 + 106) ^ *(v0 + 106)) & 1) != 0 || ((*(v1 + 107) ^ *(v0 + 107)) & 1) != 0 || ((*(v1 + 108) ^ *(v0 + 108)) & 1) != 0 || ((*(v1 + 109) ^ *(v0 + 109)))
  {
    return 0;
  }

  v13 = *(v1 + 112) == *(v0 + 112) && *(v1 + 120) == *(v0 + 120);
  if (!v13 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v1 + 128) == *(v0 + 128) && *(v1 + 136) == *(v0 + 136);
  if (!v14 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v15 = *(v1 + 144) == *(v0 + 144) && *(v1 + 152) == *(v0 + 152);
  if (!v15 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(v1 + 160) ^ *(v0 + 160)) & 1) != 0)
  {
    return 0;
  }

  v16 = *(v1 + 161);
  v17 = *(v0 + 161);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }

    goto LABEL_71;
  }

  result = 0;
  if (v17 != 2 && ((v17 ^ v16) & 1) == 0)
  {
LABEL_71:
    v18 = *(v1 + 168) == *(v0 + 168) && *(v1 + 176) == *(v0 + 176);
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }

    v19 = *(v1 + 192);
    v20 = *(v0 + 192);
    if (v19)
    {
      if (!v20)
      {
        return 0;
      }

      v21 = *(v1 + 184) == *(v0 + 184) && v19 == v20;
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v20)
    {
      return 0;
    }

    v22 = *(v0 + 208);
    if (*(v1 + 208))
    {
      if (!*(v0 + 208))
      {
        return 0;
      }
    }

    else
    {
      if (*(v1 + 200) != *(v0 + 200))
      {
        v22 = 1;
      }

      if (v22)
      {
        return 0;
      }
    }

    v23 = *(v1 + 224);
    v24 = *(v0 + 224);
    if (v23)
    {
      if (!v24)
      {
        return 0;
      }

      v25 = *(v1 + 216) == *(v0 + 216) && v23 == v24;
      if (!v25 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v24)
    {
      return 0;
    }

    v26 = *(v0 + 240);
    if (*(v1 + 240))
    {
      if (!*(v0 + 240))
      {
        return 0;
      }
    }

    else
    {
      if (*(v1 + 232) != *(v0 + 232))
      {
        v26 = 1;
      }

      if (v26)
      {
        return 0;
      }
    }

    if (((*(v1 + 241) ^ *(v0 + 241)) & 1) == 0)
    {
      v27 = *(v1 + 256);
      v28 = *(v0 + 256);
      if (v27)
      {
        if (!v28)
        {
          return 0;
        }

        v29 = *(v1 + 248) == *(v0 + 248) && v27 == v28;
        if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v28)
      {
        return 0;
      }

      if ((*(v1 + 264) ^ *(v0 + 264)))
      {
        return 0;
      }

      v30 = *(v1 + 272) == *(v0 + 272) && *(v1 + 280) == *(v0 + 280);
      if (!v30 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        return 0;
      }

      v31 = *(v1 + 296);
      v32 = *(v0 + 296);
      if (v31)
      {
        if (!v32)
        {
          return 0;
        }

        v33 = *(v1 + 288) == *(v0 + 288) && v31 == v32;
        if (!v33 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v32)
      {
        return 0;
      }

      v34 = *(v0 + 312);
      if (*(v1 + 312))
      {
        if (!*(v0 + 312))
        {
          return 0;
        }
      }

      else
      {
        if (*(v1 + 304) != *(v0 + 304))
        {
          v34 = 1;
        }

        if (v34)
        {
          return 0;
        }
      }

      if (((*(v1 + 313) ^ *(v0 + 313)) & 1) == 0)
      {
        return *(v1 + 320) == *(v0 + 320);
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_10012BBF0(uint64_t a1)
{
  v4 = v1;
  v6 = sub_100099DF4(&qword_1002DD820, &qword_1002388B8);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100002970();
  v12 = *(a1 + 24);
  v13 = *(a1 + 32);
  v14 = sub_10000492C();
  sub_100008B3C(v14, v15);
  sub_10012DC34();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = *v4;
  v17 = v4[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18 = v4[2];
    sub_100006DC0(1);
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v4 + 24);
    sub_100006DC0(2);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = *(v4 + 25);
    sub_100006DC0(3);
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v4[4];
    v22 = v4[5];
    sub_100007C84(4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v69 = v4[6];
    sub_100099DF4(&qword_1002DD808, &qword_1002388B0);
    sub_10012DCDC(&qword_1002DD828, sub_10012DD50);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v23 = v4[7];
    v24 = v4[8];
    sub_100007C84(6);
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = v4[9];
    v26 = v4[10];
    sub_100007C84(7);
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v4 + 88);
    sub_100006DC0(8);
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v4 + 89);
    sub_100006DC0(9);
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v4 + 90);
    sub_100006DC0(10);
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v4 + 91);
    sub_100006DC0(11);
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = v4[12];
    sub_100006DC0(12);
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v4 + 104);
    sub_100006DC0(13);
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v4 + 105);
    sub_100006DC0(14);
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v4 + 106);
    sub_100006DC0(15);
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = *(v4 + 107);
    sub_100006DC0(16);
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = *(v4 + 108);
    sub_100006DC0(17);
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v4 + 109);
    sub_100006DC0(18);
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = v4[14];
    v39 = v4[15];
    sub_100007C84(19);
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = v4[16];
    v41 = v4[17];
    sub_100007C84(20);
    KeyedEncodingContainer.encode(_:forKey:)();
    v42 = v4[18];
    v43 = v4[19];
    sub_100007C84(21);
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = *(v4 + 160);
    sub_100006DC0(22);
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = *(v4 + 161);
    sub_100006DC0(23);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v46 = v4[21];
    v47 = v4[22];
    sub_100007C84(24);
    KeyedEncodingContainer.encode(_:forKey:)();
    v48 = v4[23];
    v49 = v4[24];
    sub_100007C84(25);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v50 = v4[25];
    v51 = *(v4 + 208);
    sub_100007C84(26);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v52 = v4[27];
    v53 = v4[28];
    sub_100007C84(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v54 = v4[29];
    v55 = *(v4 + 240);
    sub_100007C84(28);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v56 = *(v4 + 241);
    sub_100006DC0(29);
    KeyedEncodingContainer.encode(_:forKey:)();
    v57 = v4[31];
    v58 = v4[32];
    sub_100007C84(30);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v59 = *(v4 + 264);
    sub_100006DC0(31);
    KeyedEncodingContainer.encode(_:forKey:)();
    v60 = v4[34];
    v61 = v4[35];
    sub_100007C84(32);
    KeyedEncodingContainer.encode(_:forKey:)();
    v62 = v4[36];
    v63 = v4[37];
    sub_100007C84(33);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v64 = v4[38];
    v65 = *(v4 + 312);
    sub_100007C84(34);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v66 = *(v4 + 313);
    sub_100006DC0(35);
    KeyedEncodingContainer.encode(_:forKey:)();
    v67 = v4[40];
    sub_100006DC0(36);
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void sub_10012C0E0(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  String.hash(into:)();
  Hasher._combine(_:)(v2[2]);
  v6 = *(v2 + 24);
  if (v6 == 2)
  {
    v7 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v7 = v6 & 1;
  }

  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(*(v2 + 25) & 1);
  if (v2[5])
  {
    v8 = v2[4];
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v9 = v2[6];
  if (v9)
  {
    Hasher._combine(_:)(1u);
    sub_100118390(a1, v9);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = v2[7];
  v11 = v2[8];
  String.hash(into:)();
  v12 = v2[9];
  v13 = v2[10];
  String.hash(into:)();
  Hasher._combine(_:)(v2[11] & 1);
  Hasher._combine(_:)(*(v2 + 89) & 1);
  Hasher._combine(_:)(*(v2 + 90) & 1);
  Hasher._combine(_:)(*(v2 + 91) & 1);
  Hasher._combine(_:)(v2[12]);
  Hasher._combine(_:)(v2[13] & 1);
  Hasher._combine(_:)(*(v2 + 105) & 1);
  Hasher._combine(_:)(*(v2 + 106) & 1);
  Hasher._combine(_:)(*(v2 + 107) & 1);
  Hasher._combine(_:)(*(v2 + 108) & 1);
  Hasher._combine(_:)(*(v2 + 109) & 1);
  v14 = v2[14];
  v15 = v2[15];
  String.hash(into:)();
  v16 = v2[16];
  v17 = v2[17];
  String.hash(into:)();
  v18 = v2[18];
  v19 = v2[19];
  String.hash(into:)();
  Hasher._combine(_:)(v2[20] & 1);
  v20 = *(v2 + 161);
  if (v20 == 2)
  {
    v21 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v21 = v20 & 1;
  }

  Hasher._combine(_:)(v21);
  v22 = v2[21];
  v23 = v2[22];
  String.hash(into:)();
  if (v2[24])
  {
    v24 = v2[23];
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + 208) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v25 = v2[25];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v25);
  }

  if (v2[28])
  {
    v26 = v2[27];
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + 240) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v27 = v2[29];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v27);
  }

  Hasher._combine(_:)(*(v2 + 241) & 1);
  if (v2[32])
  {
    v28 = v2[31];
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v2[33] & 1);
  v29 = v2[34];
  v30 = v2[35];
  String.hash(into:)();
  if (v2[37])
  {
    v31 = v2[36];
    Hasher._combine(_:)(1u);
    sub_10000DBC0();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  if (*(v2 + 312) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v32 = v2[38];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v32);
  }

  Hasher._combine(_:)(*(v2 + 313) & 1);
  Hasher._combine(_:)(v2[40]);
}

Swift::Int sub_10012C404()
{
  sub_100005BE8();
  sub_10012C0E0(v1);
  return Hasher._finalize()();
}

void sub_10012C43C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10)
{
  sub_100004868();
  v12 = v11;
  v14 = v13;
  v15 = sub_100099DF4(&qword_1002DD7F8, &qword_1002388A8);
  sub_100003724(v15);
  v17 = *(v16 + 64);
  sub_100003774();
  __chkstk_darwin(v18);
  v19 = v12[4];
  sub_100008B3C(v12, v12[3]);
  sub_10012DC34();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v10)
  {
    sub_1000031F0();
    sub_100004118(v12);
    if (v12)
    {

      if ((v88 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    else if (!v88)
    {
LABEL_5:
      if (v90)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }

    if (v90)
    {
LABEL_6:

      if ((v92 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_14;
    }

LABEL_13:
    if (!v92)
    {
LABEL_7:
      if (v94)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }

LABEL_14:

    if (v94)
    {
LABEL_8:

      if ((v96 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_16;
    }

LABEL_15:
    if (!v96)
    {
LABEL_9:
      if (!a10)
      {
        goto LABEL_17;
      }

LABEL_10:

      goto LABEL_17;
    }

LABEL_16:

    if ((a10 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_10;
  }

  v174 = v14;
  LOBYTE(v99[0]) = 0;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v87 = v21;
  sub_100008048(1);
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(2);
  v97 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100008048(3);
  v95 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(4);
  v93 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v86 = v23;
  sub_100099DF4(&qword_1002DD808, &qword_1002388B0);
  LOBYTE(v98[0]) = 5;
  sub_10012DCDC(&qword_1002DD810, sub_10012DC88);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v85 = v99[0];
  sub_100008048(6);
  v91 = KeyedDecodingContainer.decode(_:forKey:)();
  v84 = v24;
  sub_100008048(7);
  v89 = KeyedDecodingContainer.decode(_:forKey:)();
  v83 = v25;
  sub_100008048(8);
  v73 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(9);
  v71 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(10);
  v70 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(11);
  v69 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(12);
  v68 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(13);
  v67 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(14);
  v66 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(15);
  v65 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(16);
  v64 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(17);
  v63 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(18);
  v62 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(19);
  v61 = KeyedDecodingContainer.decode(_:forKey:)();
  v80 = v26;
  sub_100008048(20);
  v60 = KeyedDecodingContainer.decode(_:forKey:)();
  v82 = v27;
  sub_100008048(21);
  v59 = KeyedDecodingContainer.decode(_:forKey:)();
  v81 = v28;
  sub_100008048(22);
  v58 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(23);
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  sub_100008048(24);
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v79 = v29;
  sub_100008048(25);
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v78 = v30;
  sub_100008048(26);
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v169 = v31 & 1;
  sub_100008048(27);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v77 = v32;
  sub_100008048(28);
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v167 = v33 & 1;
  sub_100008048(29);
  v50 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(30);
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v76 = v34;
  sub_100008048(31);
  v48 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_100008048(32);
  v47 = KeyedDecodingContainer.decode(_:forKey:)();
  v74 = v35;
  sub_100008048(33);
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v75 = v36;
  sub_100008048(34);
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v163 = v37 & 1;
  sub_100008048(35);
  v44 = KeyedDecodingContainer.decode(_:forKey:)();
  v160 = 36;
  v43 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = v71 & 1;
  v69 &= 1u;
  v70 &= 1u;
  v66 &= 1u;
  v67 &= 1u;
  v64 &= 1u;
  v65 &= 1u;
  v62 &= 1u;
  v63 &= 1u;
  v58 &= 1u;
  v72 = v50 & 1;
  v38 = sub_10000A590();
  v39(v38);
  v98[0] = v20;
  v98[1] = v87;
  v98[2] = v22;
  LOBYTE(v98[3]) = v97;
  BYTE1(v98[3]) = v95 & 1;
  *(&v98[3] + 2) = v172;
  HIWORD(v98[3]) = v173;
  v98[4] = v93;
  v98[5] = v86;
  v98[6] = v85;
  v98[7] = v91;
  v98[8] = v84;
  v98[9] = v89;
  v98[10] = v83;
  LOBYTE(v98[11]) = v73 & 1;
  BYTE1(v98[11]) = v42;
  BYTE2(v98[11]) = v70;
  BYTE3(v98[11]) = v69;
  v98[12] = v68;
  LOBYTE(v98[13]) = v67;
  BYTE1(v98[13]) = v66;
  BYTE2(v98[13]) = v65;
  BYTE3(v98[13]) = v64;
  BYTE4(v98[13]) = v63;
  BYTE5(v98[13]) = v62;
  v98[14] = v61;
  v98[15] = v80;
  v98[16] = v60;
  v98[17] = v82;
  v98[18] = v59;
  v98[19] = v81;
  LOBYTE(v98[20]) = v58;
  BYTE1(v98[20]) = v57;
  *(&v98[20] + 2) = v170;
  HIWORD(v98[20]) = v171;
  v98[21] = v56;
  v98[22] = v79;
  v98[23] = v55;
  v98[24] = v78;
  v98[25] = v54;
  *(&v98[26] + 1) = *v168;
  *(&v98[30] + 2) = v165;
  *(&v98[33] + 1) = *v164;
  v51 = v169;
  LOBYTE(v98[26]) = v169;
  HIDWORD(v98[26]) = *&v168[3];
  v98[27] = v53;
  v98[28] = v77;
  v98[29] = v52;
  *(&v98[39] + 2) = v161;
  v40 = v167;
  LOBYTE(v98[30]) = v167;
  BYTE1(v98[30]) = v72;
  HIWORD(v98[30]) = v166;
  v98[31] = v49;
  v98[32] = v76;
  LOBYTE(v98[33]) = v48 & 1;
  HIDWORD(v98[33]) = *&v164[3];
  v98[34] = v47;
  v98[35] = v74;
  v98[36] = v46;
  v98[37] = v75;
  v98[38] = v45;
  HIWORD(v98[39]) = v162;
  v41 = v163;
  LOBYTE(v98[39]) = v163;
  BYTE1(v98[39]) = v44 & 1;
  v98[40] = v43;
  sub_10012627C(v98, v99);
  sub_100004118(v12);
  v99[0] = v20;
  v99[1] = v87;
  v99[2] = v22;
  v100 = v97;
  v101 = v95 & 1;
  v104 = v93;
  v105 = v86;
  v106 = v85;
  v107 = v91;
  v108 = v84;
  v109 = v89;
  v110 = v83;
  v111 = v73 & 1;
  v112 = v42;
  v113 = v70;
  v114 = v69;
  v115 = v68;
  v116 = v67;
  v117 = v66;
  v118 = v65;
  v119 = v64;
  v120 = v63;
  v121 = v62;
  v122 = v61;
  v123 = v80;
  v102 = v172;
  v103 = v173;
  v124 = v60;
  v125 = v82;
  v126 = v59;
  v127 = v81;
  v128 = v58;
  v129 = v57;
  v130 = v170;
  v131 = v171;
  v132 = v56;
  v133 = v79;
  v134 = v55;
  v135 = v78;
  v136 = v54;
  v137 = v51;
  *v138 = *v168;
  *&v138[3] = *&v168[3];
  v139 = v53;
  v140 = v77;
  v141 = v52;
  v142 = v40;
  v143 = v72;
  v145 = v166;
  v144 = v165;
  v146 = v49;
  v147 = v76;
  v148 = v48 & 1;
  *v149 = *v164;
  *&v149[3] = *&v164[3];
  v150 = v47;
  v151 = v74;
  v152 = v46;
  v153 = v75;
  v154 = v45;
  v155 = v41;
  v156 = v44 & 1;
  v157 = v161;
  v158 = v162;
  v159 = v43;
  sub_1000CA2A4(v99);
  memcpy(v174, v98, 0x148uLL);
LABEL_17:
  sub_100005074();
}

uint64_t sub_10012D1DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656D75736E6F63 && a2 == 0xEA00000000006449;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065)
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

uint64_t sub_10012D2B4(char a1)
{
  if (a1)
  {
    return 0x63617073656D616ELL;
  }

  else
  {
    return 0x72656D75736E6F63;
  }
}

void sub_10012D2F4()
{
  sub_100004868();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DDBD8, &qword_100238FE0);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_100004880();
  v10 = v3[4];
  sub_100008B3C(v3, v3[3]);
  sub_10012E864();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10000355C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v6 + 8))(v1, v4);
  sub_100005074();
}

void sub_10012D43C()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DDBC8, &qword_100238FD8);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100004880();
  v9 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_10012E864();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = *(v5 + 8);
    v11 = sub_100013DE8();
    v12(v11);
  }

  sub_100004118(v2);
  sub_100005074();
}

Swift::Int sub_10012D5E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

uint64_t sub_10012D634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012A858(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012D65C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10012B348();
  *a1 = result;
  return result;
}

uint64_t sub_10012D684(uint64_t a1)
{
  v2 = sub_10012DC34();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012D6C0(uint64_t a1)
{
  v2 = sub_10012DC34();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10012D6FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  sub_10012C43C(a1, a2, a3, a4, a5, a6, a7, a8, v11, __src[0]);
  if (!v9)
  {
    memcpy(a9, __src, 0x148uLL);
  }
}

Swift::Int sub_10012D770()
{
  Hasher.init(_seed:)();
  sub_10012C0E0(v1);
  return Hasher._finalize()();
}

unint64_t sub_10012D7B4()
{
  result = qword_1002DD770;
  if (!qword_1002DD770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD770);
  }

  return result;
}

unint64_t sub_10012D80C()
{
  result = qword_1002DD778;
  if (!qword_1002DD778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD778);
  }

  return result;
}

uint64_t sub_10012D8A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10012D8F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10012D1DC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10012D920(uint64_t a1)
{
  v2 = sub_10012E864();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10012D95C(uint64_t a1)
{
  v2 = sub_10012E864();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10012D998(void *a1@<X8>)
{
  sub_10012D43C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_10012D9C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10012D2F4();
}

unint64_t sub_10012D9E8()
{
  result = qword_1002DD790;
  if (!qword_1002DD790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD790);
  }

  return result;
}

unint64_t sub_10012DA3C()
{
  result = qword_1002DD798;
  if (!qword_1002DD798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD798);
  }

  return result;
}

unint64_t sub_10012DA90()
{
  result = qword_1002DD7A0;
  if (!qword_1002DD7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD7A0);
  }

  return result;
}

uint64_t sub_10012DAE4()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000307C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_10012DB38()
{
  result = qword_1002DD7B8;
  if (!qword_1002DD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD7B8);
  }

  return result;
}

unint64_t sub_10012DB8C()
{
  result = qword_1002DD7C0;
  if (!qword_1002DD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD7C0);
  }

  return result;
}

unint64_t sub_10012DBE0()
{
  result = qword_1002DD7E8;
  if (!qword_1002DD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD7E8);
  }

  return result;
}

unint64_t sub_10012DC34()
{
  result = qword_1002DD800;
  if (!qword_1002DD800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD800);
  }

  return result;
}

unint64_t sub_10012DC88()
{
  result = qword_1002DD818;
  if (!qword_1002DD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD818);
  }

  return result;
}

uint64_t sub_10012DCDC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DD808, &qword_1002388B0);
    a2();
    sub_10000DBC0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10012DD50()
{
  result = qword_1002DD830;
  if (!qword_1002DD830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DD830);
  }

  return result;
}

uint64_t sub_10012DDEC()
{
  result = type metadata accessor for AccountIdentity.DSID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012DE90()
{
  result = type metadata accessor for AccountDataServerRequest.Put(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AccountDataServerRequest.Get(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10012DF4C()
{
  result = type metadata accessor for AccountIdentity.DSID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10012E000()
{
  sub_10012E058();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

void sub_10012E058()
{
  if (!qword_1002DDA98)
  {
    v0 = type metadata accessor for Date();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DDA98);
    }
  }
}

uint64_t sub_10012E0E8()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccountDataPayload.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 37;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x25;
  v5 = v6 - 37;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AccountDataPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xDC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDB)
  {
    v6 = ((a2 - 220) >> 8) + 1;
    *result = a2 + 36;
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
        break;
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
          *result = a2 + 36;
        }

        break;
    }
  }

  return result;
}