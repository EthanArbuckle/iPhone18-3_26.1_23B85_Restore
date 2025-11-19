uint64_t sub_10009B8B0()
{
  sub_10000309C();
  v2 = *(v1 + *(type metadata accessor for AMPAccount() + 20));
  *&v10 = 0xD000000000000011;
  *(&v10 + 1) = 0x8000000100272520;
  v3 = [v2 objectForKeyedSubscript:_bridgeAnythingNonVerbatimToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  v12[0] = v10;
  v12[1] = v11;
  if (*(&v11 + 1))
  {
    v4 = type metadata accessor for Date();
    v5 = swift_dynamicCast() ^ 1;
    v6 = v0;
    v7 = 1;
    v8 = v4;
  }

  else
  {
    sub_100004E24(v12, &unk_1002DFC10, &qword_10022E6D0);
    type metadata accessor for Date();
    v6 = sub_100007AC8();
  }

  return sub_100002728(v6, v5, v7, v8);
}

uint64_t sub_10009B9E4(void *a1)
{
  v1 = [a1 ams_altDSID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_10009BA48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMPAccount();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009BAAC()
{
  result = type metadata accessor for AccountIdentity();
  if (v1 <= 0x3F)
  {
    result = sub_100003AE0(319, &qword_1002DFC20, ACAccount_ptr);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

Swift::Void __swiftcall AMSDBiometricsTokenUpdateTask.prepareMetricsActivity()()
{
  v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
  v2 = MetricsActivity.init(label:)();
  [v0 setActivity:dispatch thunk of MetricsActivity.nwActivity.getter()];
  swift_unknownObjectRelease();
  dispatch thunk of MetricsActivity.activate()();
}

void AMSDBiometricsTokenUpdateTask.completeMetricsActivity(promise:)()
{
  if ([v0 activity])
  {
    v1 = objc_allocWithZone(type metadata accessor for MetricsActivity());
    swift_unknownObjectRetain();
    v2 = MetricsActivity.init(activity:)();
    dispatch thunk of MetricsActivity.complete(after:)();
    swift_unknownObjectRelease();
  }
}

void *sub_10009BD38()
{
  v1 = type metadata accessor for BagValueType();
  v2 = sub_100003724(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000759C(v5, v122);
  __chkstk_darwin(v6);
  sub_100002DD0();
  v138 = v7;
  sub_100005238();
  __chkstk_darwin(v8);
  sub_100002DD0();
  v137 = v9;
  sub_100005238();
  __chkstk_darwin(v10);
  sub_100002DD0();
  v136 = v11;
  sub_100005238();
  __chkstk_darwin(v12);
  sub_100002DD0();
  v135 = v13;
  sub_100005238();
  __chkstk_darwin(v14);
  sub_100002DD0();
  v134 = v15;
  sub_100005238();
  __chkstk_darwin(v16);
  sub_100002DD0();
  v133 = v17;
  sub_100005238();
  __chkstk_darwin(v18);
  sub_100002DD0();
  v132 = v19;
  sub_100005238();
  __chkstk_darwin(v20);
  v131 = (&v122 - v21);
  v22 = 0;
  v130 = enum case for BagValueType.string(_:);
  sub_100013BFC();
  v129 = v23;
  v24 = enum case for BagValueType.integer(_:);
  sub_100013BFC();
  v127 = v25;
  v128 = v26;
  sub_100013BFC();
  v125 = v27;
  v126 = v28;
  sub_100013BFC();
  v123 = v29;
  v124 = v30;
  v31 = &_swiftEmptyArrayStorage;
  do
  {
    v32 = *(&off_1002B2D40 + v22++ + 32);
    switch(v32)
    {
      case 1:
        v51 = sub_1000068E0(v132, v124);
        v52(v51);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = v31[2];
          v98 = sub_10000657C();
          sub_10000B654(v98, v99, v100, v31);
          v31 = v101;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v53);
          v31 = v102;
        }

        break;
      case 2:
        v41 = sub_1000068E0(v133, v125);
        v42(v41);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = v31[2];
          v74 = sub_10000657C();
          sub_10000B654(v74, v75, v76, v31);
          v31 = v77;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v43);
          v31 = v78;
        }

        break;
      case 3:
        v44 = sub_1000068E0(v134, v126);
        v45(v44);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = v31[2];
          v80 = sub_10000657C();
          sub_10000B654(v80, v81, v82, v31);
          v31 = v83;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v46);
          v31 = v84;
        }

        break;
      case 4:
        v37 = v135;
        *v135 = 0xD00000000000001DLL;
        v38 = sub_1000A183C(v37, v127);
        v39(v38, v24, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = v31[2];
          v68 = sub_10000657C();
          sub_10000B654(v68, v69, v70, v31);
          v31 = v71;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v40);
          v31 = v72;
        }

        break;
      case 5:
        v54 = sub_1000068E0(v136, v128);
        v55(v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = v31[2];
          v104 = sub_10000657C();
          sub_10000B654(v104, v105, v106, v31);
          v31 = v107;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v56);
          v31 = v108;
        }

        break;
      case 6:
        v57 = sub_1000068E0(v137, v129);
        v58(v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = v31[2];
          v110 = sub_10000657C();
          sub_10000B654(v110, v111, v112, v31);
          v31 = v113;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v59);
          v31 = v114;
        }

        break;
      case 7:
        v47 = v138;
        *v138 = 0x755F6769666E6F63;
        v48 = sub_1000A183C(v47, 0xEA00000000006C72);
        v49(v48, v130, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = v31[2];
          v86 = sub_10000657C();
          sub_10000B654(v86, v87, v88, v31);
          v31 = v89;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v50);
          v31 = v90;
        }

        break;
      case 8:
        v60 = v139;
        *v139 = 0x765F6769666E6F63;
        v61 = sub_1000A183C(v60, 0xEE006E6F69737265);
        v62(v61, v130, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = v31[2];
          v116 = sub_10000657C();
          sub_10000B654(v116, v117, v118, v31);
          v31 = v119;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v63);
          v31 = v120;
        }

        break;
      default:
        v33 = sub_1000068E0(v131, v123);
        v34(v33);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = v31[2];
          v92 = sub_10000657C();
          sub_10000B654(v92, v93, v94, v31);
          v31 = v95;
        }

        sub_1000071C8();
        if (v36)
        {
          sub_100007AD8(v35);
          v31 = v96;
        }

        break;
    }

    v31[2] = v0;
    sub_1000A17F0();
    v65 = sub_1000A1848(v31 + v64);
    v66(v65);
  }

  while (v22 != 9);
  return v31;
}

uint64_t sub_10009C374()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B2D70, v2);
  sub_100008C18();
  if (v1 >= 9)
  {
    return 9;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10009C3BC(char a1)
{
  result = 0x755F6769666E6F63;
  switch(a1)
  {
    case 1:
      sub_1000A1880();
      result = v6 + 3;
      break;
    case 2:
      sub_1000A1880();
      result = v4 | 2;
      break;
    case 3:
      sub_1000A1880();
      result = v5 + 1;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      sub_1000A1880();
      result = v7 + 4;
      break;
    case 6:
      sub_1000A1880();
      result = v8 + 9;
      break;
    case 7:
      return result;
    case 8:
      result = 0x765F6769666E6F63;
      break;
    default:
      sub_1000A1880();
      result = v3 + 7;
      break;
  }

  return result;
}

uint64_t sub_10009C538@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10009C374();
  *a2 = result;
  return result;
}

uint64_t sub_10009C568@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009C3BC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009C5B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009C3B4();
  *a1 = result;
  return result;
}

uint64_t sub_10009C5F8(uint64_t a1)
{
  v2 = sub_1000A1050();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009C634(uint64_t a1)
{
  v2 = sub_1000A1050();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL sub_10009C670(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  v6 = *(a1 + 64) == *(a2 + 64) && *(a1 + 72) == *(a2 + 72);
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 88);
  v8 = *(a2 + 88);
  if (v7)
  {
    if (!v8)
    {
      return 0;
    }

    v9 = *(a1 + 80) == *(a2 + 80) && v7 == v8;
    return v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
  }

  return !v8;
}

uint64_t sub_10009C788(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DA8F8, &qword_10022F298);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v27[-v11];
  v13 = a1[4];
  sub_100008B3C(a1, a1[3]);
  sub_1000A1050();
  sub_10000A484();
  v14 = *v3;
  v27[15] = 0;
  sub_100003B2C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v3[1];
    v27[14] = 1;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[2];
    v27[13] = 2;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[3];
    v27[12] = 3;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    v27[11] = 4;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[5];
    v27[10] = 5;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v20 = v3[6];
    v21 = *(v3 + 56);
    v27[9] = 6;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = v3[8];
    v23 = v3[9];
    v27[8] = 7;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = v3[10];
    v25 = v3[11];
    v27[7] = 8;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_10009C9C0()
{
  v2 = sub_1000A1800();
  if (v3)
  {
    v2 = v1;
  }

  Hasher._combine(_:)(*&v2);
  sub_10000AEF8(*(v0 + 8));
  sub_10000AEF8(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  sub_10000AEF8(*(v0 + 32));
  sub_10000AEF8(*(v0 + 40));
  if (*(v0 + 56) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v4 = *(v0 + 48);
    Hasher._combine(_:)(1u);
    if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    Hasher._combine(_:)(v5);
  }

  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  String.hash(into:)();
  if (*(v0 + 88))
  {
    v8 = *(v0 + 80);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10009CAAC()
{
  sub_100005BE8();
  sub_10009C9C0();
  return Hasher._finalize()();
}

void sub_10009CAE4()
{
  sub_10000A788();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA8E8, &qword_10022F290);
  sub_100003724(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000A1050();
  sub_1000A1818();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v33[0]) = 0;
    sub_100003B20();
    KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    sub_100007EAC(1);
    KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    sub_100007EAC(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    sub_100007EAC(3);
    v16 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100007EAC(4);
    KeyedDecodingContainer.decode(_:forKey:)();
    v18 = v17;
    sub_100007EAC(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v20 = v19;
    sub_100007EAC(6);
    v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v22 & 1;
    sub_100007EAC(7);
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = v23;
    v39 = 8;
    sub_100003B20();
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v25 = v24;
    v26 = sub_10000EF48();
    v27(v26);
    v32[0] = v11;
    v32[1] = v13;
    v32[2] = v15;
    v32[3] = v16;
    v32[4] = v18;
    v32[5] = v20;
    v32[6] = v21;
    v28 = v40;
    LOBYTE(v32[7]) = v40;
    v32[8] = v30;
    v32[9] = v31;
    v32[10] = v29;
    v32[11] = v25;
    sub_1000A0F1C(v32, v33);
    sub_100004118(v2);
    v33[0] = v11;
    v33[1] = v13;
    v33[2] = v15;
    v33[3] = v16;
    v33[4] = v18;
    v33[5] = v20;
    v33[6] = v21;
    v34 = v28;
    v35 = v30;
    v36 = v31;
    v37 = v29;
    v38 = v25;
    sub_1000A0E0C(v33);
    memcpy(v4, v32, 0x60uLL);
  }

  sub_1000A185C();
}

void sub_10009CDE8(void *a1@<X8>)
{
  sub_10009CAE4();
  if (!v1)
  {
    memcpy(a1, v3, 0x60uLL);
  }
}

Swift::Int sub_10009CE54()
{
  Hasher.init(_seed:)();
  sub_10009C9C0();
  return Hasher._finalize()();
}

uint64_t sub_10009CE90(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5F74657361746164 && a2 == 0xEC000000656D616ELL)
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

uint64_t sub_10009CF6C(char a1)
{
  if (a1)
  {
    return 0x5F74657361746164;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t static PIPersonalizedPrivateIdentifierMapping.Key.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_10009D050()
{
  sub_100004868();
  v14[0] = v1;
  v14[1] = v2;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA8E0, &qword_10022F288);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = v14 - v11;
  v13 = v4[4];
  sub_100008B3C(v4, v4[3]);
  sub_1000A0FFC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v7 + 8))(v12, v5);
  sub_100005074();
}

uint64_t PIPersonalizedPrivateIdentifierMapping.Key.hash(into:)()
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_10009D1F4()
{
  sub_100005BE8();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_10009D25C()
{
  sub_100004868();
  v2 = v1;
  v3 = sub_100099DF4(&qword_1002DA8D0, &qword_10022F280);
  sub_100003724(v3);
  v5 = *(v4 + 64);
  sub_100003774();
  __chkstk_darwin(v6);
  v7 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000A0FFC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = sub_100002960();
    v9(v8);
  }

  sub_100004118(v2);
  sub_100005074();
}

Swift::Int sub_10009D410()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AvroMessageError.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_10009D45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10009CE90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10009D4A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009CF64();
  *a1 = result;
  return result;
}

uint64_t sub_10009D4CC(uint64_t a1)
{
  v2 = sub_1000A0FFC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009D508(uint64_t a1)
{
  v2 = sub_1000A0FFC();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009D544(void *a1@<X8>)
{
  sub_10009D25C();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_10009D574()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_10009D050();
}

Swift::Int sub_10009D594()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  return sub_10009D1F4();
}

Swift::Int sub_10009D5A0()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  PIPersonalizedPrivateIdentifierMapping.Key.hash(into:)();
  return Hasher._finalize()();
}

char *sub_10009D618()
{
  v2 = type metadata accessor for BagValueType();
  v3 = sub_100003724(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000759C(v8, v113);
  __chkstk_darwin(v9);
  sub_100002DD0();
  v127 = v10;
  sub_100005238();
  __chkstk_darwin(v11);
  sub_100002DD0();
  v126 = v12;
  sub_100005238();
  __chkstk_darwin(v13);
  sub_100002DD0();
  v125 = v14;
  sub_100005238();
  __chkstk_darwin(v15);
  sub_100002DD0();
  v124 = v16;
  sub_100005238();
  __chkstk_darwin(v17);
  sub_100002DD0();
  v123 = v18;
  sub_100005238();
  __chkstk_darwin(v19);
  sub_100002DD0();
  v122 = v20;
  sub_100005238();
  __chkstk_darwin(v21);
  v23 = (&v113 - v22);
  v24 = 0;
  sub_100013BFC();
  v121 = v25;
  v120 = enum case for BagValueType.dictionary(_:);
  v26 = (v5 + 104);
  v27 = enum case for BagValueType.integer(_:);
  sub_100013BFC();
  v118 = v28;
  v119 = v29;
  sub_100013BFC();
  v116 = v30;
  v117 = v31;
  sub_100013BFC();
  v114 = v32;
  v115 = v33;
  sub_100013BFC();
  v113 = v34;
  v35 = &_swiftEmptyArrayStorage;
  do
  {
    v36 = *(&off_1002B2E68 + v24++ + 32);
    switch(v36)
    {
      case 1:
        sub_10000B30C();
        v54 = sub_100003758(v122, v114);
        v55(v54);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = *(v35 + 2);
          v95 = sub_10000657C();
          sub_10000B654(v95, v96, v97, v35);
          v35 = v98;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v56);
          v35 = v99;
        }

        break;
      case 2:
        sub_10000B30C();
        v45 = sub_100003758(v123, v115);
        v46(v45);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v70 = *(v35 + 2);
          v71 = sub_10000657C();
          sub_10000B654(v71, v72, v73, v35);
          v35 = v74;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v47);
          v35 = v75;
        }

        break;
      case 3:
        sub_10000B30C();
        v48 = sub_100003758(v124, v116);
        v49(v48);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v76 = *(v35 + 2);
          v77 = sub_10000657C();
          sub_10000B654(v77, v78, v79, v35);
          v35 = v80;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v50);
          v35 = v81;
        }

        break;
      case 4:
        sub_10000B30C();
        v42 = sub_100003758(v125, v117);
        v43(v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = *(v35 + 2);
          v65 = sub_10000657C();
          sub_10000B654(v65, v66, v67, v35);
          v35 = v68;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v44);
          v35 = v69;
        }

        break;
      case 5:
        sub_10000B30C();
        v57 = sub_100003758(v126, v118);
        v58(v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v100 = *(v35 + 2);
          v101 = sub_10000657C();
          sub_10000B654(v101, v102, v103, v35);
          v35 = v104;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v59);
          v35 = v105;
        }

        break;
      case 6:
        sub_10000B30C();
        v60 = sub_100003758(v127, v119);
        v61(v60);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v106 = *(v35 + 2);
          v107 = sub_10000657C();
          sub_10000B654(v107, v108, v109, v35);
          v35 = v110;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v62);
          v35 = v111;
        }

        break;
      case 7:
        sub_10000B30C();
        v51 = v128;
        *v128 = v52;
        v51[1] = v121;
        (*v26)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = *(v35 + 2);
          v83 = sub_10000657C();
          sub_10000B654(v83, v84, v85, v35);
          v35 = v86;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v53);
          v35 = v87;
        }

        break;
      default:
        sub_10000B30C();
        v38 = v37 + 13;
        v39 = v113;
        *v23 = v38;
        v23[1] = v39;
        (*v26)(v23, v27, v2);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v88 = *(v35 + 2);
          v89 = sub_10000657C();
          sub_10000B654(v89, v90, v91, v35);
          v35 = v92;
        }

        sub_1000030A8();
        if (v41)
        {
          sub_10000B988(v40);
          v35 = v93;
        }

        break;
    }

    *(v35 + 2) = v0;
    sub_1000A17F0();
    (*(v5 + 32))(&v35[v63 + *(v5 + 72) * v1]);
  }

  while (v24 != 8);
  return v35;
}

uint64_t sub_10009DBAC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B2E90, v2);
  sub_100008C18();
  if (v1 >= 8)
  {
    return 8;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_10009DBF4(char a1)
{
  result = 0xD000000000000024;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000020;
      break;
    case 2:
      result = 0xD00000000000001FLL;
      break;
    case 3:
      result = 0xD00000000000001ELL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000021;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_10009DCC8(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v5 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 48) != *(a2 + 48))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v9 = v2;
  v10 = v3;
  v7 = *(a2 + 64);
  if (*(a1 + 64))
  {
    if (v7)
    {
      return (sub_1001442CC() & 1) != 0;
    }

    sub_1000A002C(a2, v8);
  }

  else if (!v7)
  {
    sub_1000A002C(a2, v8);
    return 1;
  }

  return 0;
}

uint64_t sub_10009DDBC(void *a1)
{
  v3 = v1;
  v5 = sub_100099DF4(&qword_1002DA818, &qword_10022EC70);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v23[-v11];
  v13 = a1[4];
  sub_100008B3C(a1, a1[3]);
  sub_1000A0494();
  sub_10000A484();
  v14 = *v3;
  LOBYTE(v24) = 0;
  sub_100003B2C();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v3[1];
    sub_10000BF58(1);
    v16 = v3[2];
    sub_10000BF58(2);
    v17 = v3[3];
    LOBYTE(v24) = 3;
    sub_100003B2C();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v3[4];
    sub_10000BF58(4);
    v19 = v3[5];
    sub_10000BF58(5);
    v20 = v3[6];
    v21 = *(v3 + 56);
    LOBYTE(v24) = 6;
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = v3[8];
    v23[7] = 7;
    sub_100099DF4(&qword_1002DA800, &qword_10022EC68);
    sub_1000A053C(&qword_1002DA820, sub_1000A05B4);
    sub_100003B2C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v12, v5);
}

void sub_10009DFEC()
{
  v3 = sub_1000A1800();
  if (v4)
  {
    v3 = v2;
  }

  Hasher._combine(_:)(*&v3);
  sub_10000AEF8(*(v0 + 8));
  sub_10000AEF8(*(v0 + 16));
  Hasher._combine(_:)(*(v0 + 24));
  sub_10000AEF8(*(v0 + 32));
  sub_10000AEF8(*(v0 + 40));
  if (*(v0 + 56) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v0 + 48);
    Hasher._combine(_:)(1u);
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    Hasher._combine(_:)(v6);
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    Hasher._combine(_:)(1u);

    sub_100118390(v1, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10009E0C4()
{
  sub_100005BE8();
  sub_10009DFEC();
  return Hasher._finalize()();
}

void sub_10009E0FC()
{
  sub_10000A788();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA7F0, &qword_10022EC60);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  v12 = &v29[-v11];
  v13 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000A0494();
  sub_1000A1818();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_100003B20();
    KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v14;
    sub_100006C40(1);
    KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v16;
    sub_100006C40(2);
    KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v18;
    sub_100006C40(3);
    v20 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100006C40(4);
    KeyedDecodingContainer.decode(_:forKey:)();
    v22 = v21;
    sub_100006C40(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    sub_100006C40(6);
    v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = v26 & 1;
    sub_100099DF4(&qword_1002DA800, &qword_10022EC68);
    v29[15] = 7;
    sub_1000A053C(&qword_1002DA808, sub_1000A04E8);
    sub_100003B20();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v7 + 8))(v12, v5);
    v27 = v30;
    v28 = v31;
    sub_100004118(v2);
    *v4 = v15;
    *(v4 + 8) = v17;
    *(v4 + 16) = v19;
    *(v4 + 24) = v20;
    *(v4 + 32) = v22;
    *(v4 + 40) = v24;
    *(v4 + 48) = v25;
    *(v4 + 56) = v28;
    *(v4 + 64) = v27;
  }

  sub_1000A185C();
}

uint64_t sub_10009E39C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10009DBAC();
  *a2 = result;
  return result;
}

unint64_t sub_10009E3CC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10009DBF4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009E414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009DBEC();
  *a1 = result;
  return result;
}

uint64_t sub_10009E45C(uint64_t a1)
{
  v2 = sub_1000A0494();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009E498(uint64_t a1)
{
  v2 = sub_1000A0494();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009E4D4(void *a1@<X8>)
{
  sub_10009E0FC();
  if (!v1)
  {
    memcpy(a1, __src, 0x48uLL);
  }
}

Swift::Int sub_10009E540()
{
  Hasher.init(_seed:)();
  sub_10009DFEC();
  return Hasher._finalize()();
}

void *sub_10009E5C0()
{
  v1 = type metadata accessor for BagValueType();
  v2 = sub_100003724(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_10000759C(v7, v50);
  __chkstk_darwin(v8);
  v10 = (&v50 - v9);
  v12.n128_f64[0] = __chkstk_darwin(v11);
  v14 = (&v50 - v13);
  v15 = 0;
  v53 = enum case for BagValueType.dictionary(_:);
  v16 = (v4 + 104);
  v52 = enum case for BagValueType.BOOL(_:);
  v17 = &_swiftEmptyArrayStorage;
  v51 = enum case for BagValueType.string(_:);
  do
  {
    v18 = *(&off_1002B2F70 + v15++ + 32);
    v19 = 0xE600000000000000;
    v20 = 0x6769666E6F63;
    switch(v18)
    {
      case 1:
        goto LABEL_9;
      case 2:
        v19 = 0xE400000000000000;
        v20 = 1635017060;
LABEL_9:
        *v14 = v20;
        v14[1] = v19;
        (*v16)(v14, v53, v1, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = v17[2];
          v32 = sub_10000657C();
          sub_10000B654(v32, v33, v34, v17);
          v17 = v35;
        }

        sub_1000A17E0();
        if (v22)
        {
          sub_10000B780(v23);
          v17 = v36;
        }

        break;
      case 3:
        v24 = v54;
        *v54 = 0x5F7363697274656DLL;
        v25 = sub_1000A183C(v24, 0xED00006369706F74);
        v26(v25, v51, v1);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = v17[2];
          v38 = sub_10000657C();
          sub_10000B654(v38, v39, v40, v17);
          v17 = v41;
        }

        sub_1000A17E0();
        if (v22)
        {
          sub_10000B780(v27);
          v17 = v42;
        }

        break;
      default:
        *v10 = 0x64656C62616E65;
        v10[1] = 0xE700000000000000;
        (*v16)(v10, v52, v1, v12);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = v17[2];
          v44 = sub_10000657C();
          sub_10000B654(v44, v45, v46, v17);
          v17 = v47;
        }

        sub_1000A17E0();
        if (v22)
        {
          sub_10000B780(v21);
          v17 = v48;
        }

        break;
    }

    v17[2] = v0;
    sub_1000A17F0();
    v29 = sub_1000A1848(v17 + v28);
    v30(v29);
  }

  while (v15 != 4);
  return v17;
}

uint64_t sub_10009E8B0()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B2F98, v2);
  sub_100008C18();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_10009E8F0(char a1)
{
  result = 0x64656C62616E65;
  switch(a1)
  {
    case 1:
      result = 0x6769666E6F63;
      break;
    case 2:
      result = 1635017060;
      break;
    case 3:
      result = 0x5F7363697274656DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10009E974(unsigned __int8 *a1, void *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v11 = v2;
  v12 = v3;
  if (sub_10009C670((a1 + 8), (a2 + 1)))
  {
    memcpy(__dst, a2 + 13, sizeof(__dst));
    if (sub_10009DCC8((a1 + 104), __dst))
    {
      v7 = *(a1 + 23);
      v8 = a2[23];
      if (v7)
      {
        if (v8)
        {
          v9 = *(a1 + 22) == a2[22] && v7 == v8;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10009EA2C()
{
  sub_100004868();
  v3 = v0;
  v5 = v4;
  v6 = sub_100099DF4(&qword_1002DA8B8, &qword_10022F278);
  sub_100003724(v6);
  v8 = v7;
  v10 = *(v9 + 64);
  sub_100003774();
  __chkstk_darwin(v11);
  sub_100002970();
  v12 = v5[4];
  sub_100008B3C(v5, v5[3]);
  sub_1000A0D88();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = *v3;
  v19[0] = 0;
  sub_1000A17B4();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    memcpy(v21, v3 + 1, 0x60uLL);
    memcpy(v19, v3 + 1, sizeof(v19));
    sub_1000A0F1C(v21, v18);
    sub_1000A0F54();
    sub_1000A17B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v18, v19, sizeof(v18));
    sub_1000A0E0C(v18);
    memcpy(v20, v3 + 13, sizeof(v20));
    memcpy(v17, v3 + 13, sizeof(v17));
    sub_1000A002C(v20, v16);
    sub_1000A0FA8();
    sub_1000A17B4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    memcpy(v16, v17, sizeof(v16));
    sub_1000A0DDC(v16);
    v14 = v3[22];
    v15 = v3[23];
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v8 + 8))(v2, v6);
  sub_100005074();
}

void sub_10009EC70()
{
  Hasher._combine(_:)(*v0 & 1);
  sub_10009C9C0();
  sub_10009DFEC();
  if (*(v0 + 184))
  {
    v1 = *(v0 + 176);
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

void sub_10009ED14()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA898, &qword_10022F270);
  sub_100003724(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100005244();
  v9 = v2[4];
  v16 = v2;
  sub_100008B3C(v2, v2[3]);
  sub_1000A0D88();
  sub_100005BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    v18 = 0;
    sub_100008C30();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1000A0E3C();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(&v26[7], v24, 0x60uLL);
    sub_1000A0E90();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    memcpy(v25, v23, sizeof(v25));
    sub_100008C30();
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    v10 &= 1u;
    v14 = sub_100003780();
    v15(v14);
    LOBYTE(v17[0]) = v10;
    memcpy(v17 + 1, v26, 0x67uLL);
    memcpy(&v17[13], v25, 0x48uLL);
    v17[22] = v11;
    v17[23] = v13;
    sub_1000A0EE4(v17, &v18);
    sub_100004118(v16);
    v18 = v10;
    memcpy(v19, v26, sizeof(v19));
    memcpy(v20, v25, sizeof(v20));
    v21 = v11;
    v22 = v13;
    sub_1000A0464(&v18);
    memcpy(v4, v17, 0xC0uLL);
  }

  sub_100005074();
}

uint64_t sub_10009F040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10009E8B0();
  *a2 = result;
  return result;
}

uint64_t sub_10009F070@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10009E8F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_10009F0A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10009E8B0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F0EC(uint64_t a1)
{
  v2 = sub_1000A0D88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F128(uint64_t a1)
{
  v2 = sub_1000A0D88();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009F164(void *a1@<X8>)
{
  sub_10009ED14();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

BOOL sub_10009F1D0()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3040, v2);
  sub_100008C18();
  return v1 != 0;
}

void sub_10009F20C()
{
  sub_100004868();
  v2 = v0;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA7E0, &qword_10022EC58);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100002970();
  v11 = v4[4];
  sub_100008B3C(v4, v4[3]);
  sub_1000A0330();
  sub_100005BDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v2, sizeof(v13));
  sub_1000A03D8(v2, v12);
  sub_1000A0410();
  sub_1000A17B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000A17C4();
  sub_1000A0464(v12);
  (*(v7 + 8))(v1, v5);
  sub_100005074();
}

void sub_10009F350()
{
  sub_100004868();
  v2 = v1;
  v12 = v3;
  v4 = sub_100099DF4(&qword_1002DA7C8, &qword_10022EC50);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100005244();
  v8 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000A0330();
  sub_100005BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_1000A0384();
    sub_10000BC2C();
    v9 = sub_10000CF74();
    v10(v9);
    sub_1000A17C4();
    sub_100004118(v2);
    memcpy(v12, v11, 0xC0uLL);
  }

  sub_100005074();
}

BOOL sub_10009F4B4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10009F1D0();
  *a2 = result;
  return result;
}

BOOL sub_10009F524@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10009F1D0();
  *a1 = result;
  return result;
}

uint64_t sub_10009F590(uint64_t a1)
{
  v2 = sub_1000A0330();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009F5CC(uint64_t a1)
{
  v2 = sub_1000A0330();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009F608(void *a1@<X8>)
{
  sub_10009F350();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

uint64_t sub_10009F6C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BagValueType();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v5);
  v12 = (&v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = a1;
  v12[1] = a2;
  (*(v7 + 104))(v12, enum case for BagValueType.dictionary(_:), v4, v10);
  sub_10000B654(0, 1, 1, &_swiftEmptyArrayStorage);
  v14 = v13;
  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    sub_10000B654(v15 > 1, v16 + 1, 1, v13);
    v14 = v18;
  }

  *(v14 + 16) = v16 + 1;
  (*(v7 + 32))(v14 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v16, v12, v4);
  return v14;
}

BOOL sub_10009F81C()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B30A0, v2);
  sub_100008C18();
  return v1 != 0;
}

uint64_t sub_10009F858(void *a1, void *a2)
{
  if (((*a1 ^ *a2) & 1) == 0)
  {
    v5 = a1[22];
    v4 = a1[23];
    v7 = a2[22];
    v6 = a2[23];
    memcpy(__dst, a1 + 1, sizeof(__dst));
    memcpy(v11, a2 + 1, sizeof(v11));
    if (sub_10009C670(__dst, v11))
    {
      memcpy(v10, a2 + 13, sizeof(v10));
      if (sub_10009DCC8((a1 + 13), v10))
      {
        if (v4)
        {
          if (v6)
          {
            v8 = v5 == v7 && v4 == v6;
            if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              return 1;
            }
          }
        }

        else if (!v6)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_10009F944()
{
  sub_100004868();
  v2 = v0;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DA780, &qword_10022E848);
  sub_100003724(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100002970();
  v11 = v4[4];
  sub_100008B3C(v4, v4[3]);
  sub_10009FEC8();
  sub_100005BDC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  memcpy(v13, v2, sizeof(v13));
  sub_10009FF70(v2, v12);
  sub_10009FFA8();
  sub_1000A17B4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000A17C4();
  sub_10009FFFC(v12);
  (*(v7 + 8))(v1, v5);
  sub_100005074();
}

Swift::Int sub_10009FA88()
{
  sub_100005BE8();
  sub_10009EC70();
  return Hasher._finalize()();
}

void sub_10009FAC0()
{
  sub_100004868();
  v2 = v1;
  v12 = v3;
  v4 = sub_100099DF4(&qword_1002DA768, &qword_10022E840);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100005244();
  v8 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_10009FEC8();
  sub_100005BDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_10009FF1C();
    sub_10000BC2C();
    v9 = sub_10000CF74();
    v10(v9);
    sub_1000A17C4();
    sub_100004118(v2);
    memcpy(v12, v11, 0xC0uLL);
  }

  sub_100005074();
}

BOOL sub_10009FC20@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_10009F81C();
  *a2 = result;
  return result;
}

void sub_10009FC54(uint64_t a1@<X8>)
{
  strcpy(a1, "ts_data_sync");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL sub_10009FC98@<W0>(_BYTE *a1@<X8>)
{
  result = sub_10009F81C();
  *a1 = result;
  return result;
}

uint64_t sub_10009FD08(uint64_t a1)
{
  v2 = sub_10009FEC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10009FD44(uint64_t a1)
{
  v2 = sub_10009FEC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_10009FD80(void *a1@<X8>)
{
  sub_10009FAC0();
  if (!v1)
  {
    memcpy(a1, v3, 0xC0uLL);
  }
}

Swift::Int sub_10009FE20()
{
  Hasher.init(_seed:)();
  sub_10009EC70();
  return Hasher._finalize()();
}

unint64_t sub_10009FE74()
{
  result = qword_1002DA760;
  if (!qword_1002DA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA760);
  }

  return result;
}

unint64_t sub_10009FEC8()
{
  result = qword_1002DA770;
  if (!qword_1002DA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA770);
  }

  return result;
}

unint64_t sub_10009FF1C()
{
  result = qword_1002DA778;
  if (!qword_1002DA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA778);
  }

  return result;
}

unint64_t sub_10009FFA8()
{
  result = qword_1002DA788;
  if (!qword_1002DA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA788);
  }

  return result;
}

uint64_t sub_1000A006C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 72))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 64);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000A00C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2;
    }
  }

  return result;
}

unint64_t sub_1000A014C()
{
  result = qword_1002DA790;
  if (!qword_1002DA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA790);
  }

  return result;
}

unint64_t sub_1000A01D4()
{
  result = qword_1002DA7A8;
  if (!qword_1002DA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7A8);
  }

  return result;
}

unint64_t sub_1000A022C()
{
  result = qword_1002DA7B0;
  if (!qword_1002DA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7B0);
  }

  return result;
}

unint64_t sub_1000A0284()
{
  result = qword_1002DA7B8;
  if (!qword_1002DA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7B8);
  }

  return result;
}

unint64_t sub_1000A02DC()
{
  result = qword_1002DA7C0;
  if (!qword_1002DA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7C0);
  }

  return result;
}

unint64_t sub_1000A0330()
{
  result = qword_1002DA7D0;
  if (!qword_1002DA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7D0);
  }

  return result;
}

unint64_t sub_1000A0384()
{
  result = qword_1002DA7D8;
  if (!qword_1002DA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7D8);
  }

  return result;
}

unint64_t sub_1000A0410()
{
  result = qword_1002DA7E8;
  if (!qword_1002DA7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7E8);
  }

  return result;
}

unint64_t sub_1000A0494()
{
  result = qword_1002DA7F8;
  if (!qword_1002DA7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA7F8);
  }

  return result;
}

unint64_t sub_1000A04E8()
{
  result = qword_1002DA810;
  if (!qword_1002DA810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA810);
  }

  return result;
}

uint64_t sub_1000A053C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(&qword_1002DA800, &qword_10022EC68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A05B4()
{
  result = qword_1002DA828;
  if (!qword_1002DA828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerConfigModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000A0690(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000A0768(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 sub_1000A0810(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1000A081C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000A085C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000A08A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 80);
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

uint64_t sub_1000A08E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A096C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 96))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t sub_1000A09AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000A0A14()
{
  result = qword_1002DA830;
  if (!qword_1002DA830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA830);
  }

  return result;
}

unint64_t sub_1000A0A6C()
{
  result = qword_1002DA838;
  if (!qword_1002DA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA838);
  }

  return result;
}

unint64_t sub_1000A0AC4()
{
  result = qword_1002DA840;
  if (!qword_1002DA840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA840);
  }

  return result;
}

unint64_t sub_1000A0B4C()
{
  result = qword_1002DA858;
  if (!qword_1002DA858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA858);
  }

  return result;
}

unint64_t sub_1000A0BD4()
{
  result = qword_1002DA870;
  if (!qword_1002DA870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA870);
  }

  return result;
}

unint64_t sub_1000A0C2C()
{
  result = qword_1002DA878;
  if (!qword_1002DA878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA878);
  }

  return result;
}

unint64_t sub_1000A0C84()
{
  result = qword_1002DA880;
  if (!qword_1002DA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA880);
  }

  return result;
}

unint64_t sub_1000A0CDC()
{
  result = qword_1002DA888;
  if (!qword_1002DA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA888);
  }

  return result;
}

unint64_t sub_1000A0D34()
{
  result = qword_1002DA890;
  if (!qword_1002DA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA890);
  }

  return result;
}

unint64_t sub_1000A0D88()
{
  result = qword_1002DA8A0;
  if (!qword_1002DA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8A0);
  }

  return result;
}

unint64_t sub_1000A0E3C()
{
  result = qword_1002DA8A8;
  if (!qword_1002DA8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8A8);
  }

  return result;
}

unint64_t sub_1000A0E90()
{
  result = qword_1002DA8B0;
  if (!qword_1002DA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8B0);
  }

  return result;
}

unint64_t sub_1000A0F54()
{
  result = qword_1002DA8C0;
  if (!qword_1002DA8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8C0);
  }

  return result;
}

unint64_t sub_1000A0FA8()
{
  result = qword_1002DA8C8;
  if (!qword_1002DA8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8C8);
  }

  return result;
}

unint64_t sub_1000A0FFC()
{
  result = qword_1002DA8D8;
  if (!qword_1002DA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8D8);
  }

  return result;
}

unint64_t sub_1000A1050()
{
  result = qword_1002DA8F0;
  if (!qword_1002DA8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA8F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncServerDatasetModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
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

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_1000A112C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncBagModel.TSDataSyncBagModelInner.TSDataSyncBagAnalytics.TSDataSyncBagData.LowerPriorityDataset.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1000A12E0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000A13EC()
{
  result = qword_1002DA910;
  if (!qword_1002DA910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA910);
  }

  return result;
}

unint64_t sub_1000A1444()
{
  result = qword_1002DA918;
  if (!qword_1002DA918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA918);
  }

  return result;
}

uint64_t sub_1000A14C8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10009A468(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000A1520()
{
  result = qword_1002DA930;
  if (!qword_1002DA930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA930);
  }

  return result;
}

unint64_t sub_1000A1578()
{
  result = qword_1002DA938;
  if (!qword_1002DA938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA938);
  }

  return result;
}

unint64_t sub_1000A15D0()
{
  result = qword_1002DA940;
  if (!qword_1002DA940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA940);
  }

  return result;
}

unint64_t sub_1000A1628()
{
  result = qword_1002DA948;
  if (!qword_1002DA948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA948);
  }

  return result;
}

unint64_t sub_1000A1680()
{
  result = qword_1002DA950;
  if (!qword_1002DA950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA950);
  }

  return result;
}

unint64_t sub_1000A16D8()
{
  result = qword_1002DA958;
  if (!qword_1002DA958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA958);
  }

  return result;
}

unint64_t sub_1000A1730()
{
  result = qword_1002DA960;
  if (!qword_1002DA960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA960);
  }

  return result;
}

void *sub_1000A17C4()
{

  return memcpy((v0 + 8), (v0 + 200), 0xC0uLL);
}

uint64_t sub_1000A1818()
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

uint64_t sub_1000A183C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(result + 8) = a2;
  v3 = *v2;
  return result;
}

uint64_t sub_1000A1848@<X0>(uint64_t a1@<X8>)
{
  result = a1 + *(v1 + 72) * v2;
  v4 = *(v1 + 32);
  return result;
}

double sub_1000A1894@<D0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for JSONDecoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_1000A1948();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v1)
  {
    result = *&v7;
    *a1 = v7;
    *(a1 + 16) = v8;
    *(a1 + 32) = v9;
    *(a1 + 40) = v10;
  }

  return result;
}

unint64_t sub_1000A1948()
{
  result = qword_1002DA968;
  if (!qword_1002DA968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DA968);
  }

  return result;
}

uint64_t sub_1000A199C(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = Dictionary.init(dictionaryLiteral:)();
  sub_1000A1B24(a1, v10);
  sub_1000A1B88(v10, v6);
  if (*&v6[*(v3 + 28)])
  {
    v14 = *&v6[*(v3 + 28)];
    dispatch thunk of CustomStringConvertible.description.getter();
    swift_isUniquelyReferenced_nonNull_native();
    v14 = v11;
    sub_10014F648();
    sub_1000A1BEC(v6);
    return v14;
  }

  else
  {
    sub_1000A1BEC(v6);
  }

  return v11;
}

uint64_t sub_1000A1B24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A1BEC(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 initializeBufferWithCopyOfBuffer for PIScheduledRotationConfiguration.JitterConfiguration(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000A1C5C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000A1C9C(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1000A1D34()
{
  sub_1000A1E28();
  v1 = v0;
  if (v2 <= 0x3F)
  {
    sub_1000A1EBC();
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_1000A1F0C();
      v1 = v5;
      if (v6 <= 0x3F)
      {
        v7 = type metadata accessor for Date();
        if (v8 > 0x3F)
        {
          return v7;
        }

        else
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v1;
}

void sub_1000A1E28()
{
  if (!qword_1002DA9E0)
  {
    type metadata accessor for TSDataSyncDatasetGroupConfig(255);
    sub_1000A3CC4(&unk_1002DA9E8);
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DA9E0);
    }
  }
}

void sub_1000A1EBC()
{
  if (!qword_1002DA9F0)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DA9F0);
    }
  }
}

void sub_1000A1F0C()
{
  if (!qword_1002DA9F8)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1002DA9F8);
    }
  }
}

uint64_t sub_1000A1F64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);

  return _swift_getEnumTagSinglePayloadGeneric(a1, a2, v4, sub_10001540C);
}

uint64_t sub_1000A1FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);

  return _swift_storeEnumTagSinglePayloadGeneric(a1, a2, a3, v6, sub_100015450);
}

uint64_t sub_1000A2064(uint64_t a1)
{
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(319);
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v2 - 8) + 84);
    return 0;
  }

  return v2;
}

uint64_t sub_1000A2134()
{
  result = type metadata accessor for AccountIdentity();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1000A21F0()
{
  sub_1000A1F0C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Date();
    if (v1 <= 0x3F)
    {
      type metadata accessor for AccountIdentity();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_1000A22A4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

BOOL sub_1000A22C8()
{
  sub_100002FBC();
  if ((static AccountIdentity.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  return *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20));
}

void sub_1000A2314()
{
  sub_100002834();
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  sub_1000A3CC4(v1);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  v2 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  Hasher._combine(_:)(*(v0 + *(v2 + 20)));
}

Swift::Int sub_1000A238C()
{
  sub_100005BE8();
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  v2 = sub_1000A3CC4(v1);
  sub_100002DE8(v2, v3, v2, v4, v5, v6, v7, v8, v11, v12);
  dispatch thunk of Hashable.hash(into:)();
  v9 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  Hasher._combine(_:)(*(v0 + *(v9 + 20)));
  return Hasher._finalize()();
}

uint64_t sub_1000A2410()
{
  v1 = type metadata accessor for TSDataSyncConfigServerRequest.Get(0);
  v2 = sub_10000307C(v1);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  sub_10000308C();
  v7 = v5 - v6;
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = sub_100099DF4(&qword_1002DACF8, &qword_10022FBB0);
  sub_1000030B8(v11);
  v13 = *(v12 + 64);
  sub_100003774();
  __chkstk_darwin(v14);
  sub_100004880();
  v16 = *(v15 + 56);
  sub_1000A9A48();
  sub_1000A9A48();
  sub_1000A1B88(v0, v10);
  sub_1000A1B88(v0 + v16, v7);
  if (static AccountIdentity.== infix(_:_:)())
  {
    v17 = *&v10[*(v1 + 20)];
    sub_1000A9AA4();
    v18 = *(v7 + *(v1 + 20));
    sub_1000A9AA4();
    if (v17 == v18)
    {
      return 1;
    }
  }

  else
  {
    sub_1000A9AA4();
    sub_1000A9AA4();
  }

  return 0;
}

uint64_t sub_1000A25C4()
{
  v0 = sub_100002834();
  v1 = type metadata accessor for TSDataSyncConfigServerRequest.Get(v0);
  v2 = v1 - 8;
  v3 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  sub_10000306C();
  v6 = v5 - v4;
  v7 = type metadata accessor for TSDataSyncConfigServerRequest(0);
  v8 = sub_1000030B8(v7);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  sub_10000306C();
  sub_1000AC3B8();
  sub_1000A9A48();
  v11 = sub_100007B1C();
  sub_1000A1B88(v11, v12);
  Hasher._combine(_:)(0);
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  sub_1000A3CC4(v13);
  sub_100008A44();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v6 + *(v2 + 28)));
  return sub_1000A9AA4();
}

void sub_1000A2708()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v72 = type metadata accessor for Date();
  v4 = sub_100003724(v72);
  v70 = v5;
  v7 = *(v6 + 64);
  __chkstk_darwin(v4);
  sub_10000306C();
  v67 = v9 - v8;
  v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v66 = v14 - v15;
  __chkstk_darwin(v16);
  v69 = &v64[-v17];
  v71 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v18 = sub_10000307C(v71);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  sub_10000308C();
  v68 = (v21 - v22);
  __chkstk_darwin(v23);
  v25 = &v64[-v24];
  v26 = *v3;
  v27 = v3[1];
  v28 = v3[2];
  v29 = v3[3];
  v31 = v3[4];
  v30 = v3[5];
  v32 = *v1;
  v33 = v1[1];
  v35 = v1[2];
  v34 = v1[3];
  v73 = v1;
  v36 = v1[4];
  v37 = v1[5];
  v38 = v26 == v32 && v27 == v33;
  if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v39 = v28 == v35 && v29 == v34;
    if (v39 || (sub_1000AC378(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      v40 = v31 == v36 && v30 == v37;
      if (v40 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v41 = type metadata accessor for TSDataSyncConfigServerResponse(0);
        v42 = v41[5];
        v43 = v71;
        v44 = *(v71 + 48);
        sub_1000A9914(v3 + v42, v25);
        v45 = v73;
        sub_1000A9914(v73 + v42, &v25[v44]);
        v46 = v72;
        if (sub_100004DFC(v25, 1, v72) == 1)
        {
          sub_1000AC2E0();
          if (!v38)
          {
            goto LABEL_31;
          }

          sub_100004E24(v25, &qword_1002DA970, &qword_1002318B0);
        }

        else
        {
          v47 = v69;
          sub_1000A9914(v25, v69);
          sub_1000AC2E0();
          if (v38)
          {
            (*(v70 + 8))(v47, v46);
            goto LABEL_31;
          }

          v48 = sub_100005C00();
          v49(v48);
          sub_1000049CC();
          sub_1000A3CC4(v50);
          sub_1000AC378();
          v65 = dispatch thunk of static Equatable.== infix(_:_:)();
          v36 = *(v36 + 8);
          (v36)(v29, v46);
          (v36)(v47, v46);
          sub_100004E24(v25, &qword_1002DA970, &qword_1002318B0);
          if ((v65 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        v51 = v41[6];
        v52 = *(v43 + 48);
        v25 = v68;
        sub_1000A9914(v3 + v51, v68);
        sub_1000A9914(v45 + v51, &v25[v52]);
        if (sub_100004DFC(v25, 1, v46) == 1)
        {
          sub_1000AC2E0();
          if (!v38)
          {
            goto LABEL_31;
          }

          sub_100004E24(v25, &qword_1002DA970, &qword_1002318B0);
LABEL_34:
          v59 = v41[7];
          if (static Date.== infix(_:_:)())
          {
            v60 = v41[8];
            if (static AccountIdentity.== infix(_:_:)())
            {
              v61 = v41[9];
              v62 = *(v3 + v61);
              v63 = *(v45 + v61);
            }
          }

          goto LABEL_32;
        }

        v53 = v66;
        sub_1000A9914(v25, v66);
        sub_1000AC2E0();
        if (!v38)
        {
          v54 = sub_100005C00();
          v55(v54);
          sub_1000049CC();
          sub_1000A3CC4(v56);
          v57 = dispatch thunk of static Equatable.== infix(_:_:)();
          v58 = *(v36 + 8);
          v58(v29, v46);
          v58(v53, v46);
          sub_100004E24(v25, &qword_1002DA970, &qword_1002318B0);
          if ((v57 & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_34;
        }

        (*(v70 + 8))(v53, v46);
LABEL_31:
        sub_100004E24(v25, &qword_1002DACF0, &qword_100232140);
      }
    }
  }

LABEL_32:
  sub_1000027F8();
}

void sub_1000A2BD8()
{
  sub_100004168();
  v1 = v0;
  sub_100002834();
  v2 = type metadata accessor for Date();
  v3 = sub_100003724(v2);
  v36 = v4;
  v6 = *(v5 + 64);
  __chkstk_darwin(v3);
  sub_10000306C();
  v9 = v8 - v7;
  v10 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v11 = sub_1000030B8(v10);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  sub_10000308C();
  v16 = v14 - v15;
  __chkstk_darwin(v17);
  v19 = &v35 - v18;
  v20 = *v1;
  v21 = v1[1];
  v22 = v1[2];
  v23 = v1[3];
  v24 = v1[4];
  v25 = v1[5];
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  v26 = type metadata accessor for TSDataSyncConfigServerResponse(0);
  sub_1000A9914(v1 + v26[5], v19);
  sub_100007AFC(v19);
  if (v27)
  {
    sub_100008C3C();
    v28 = v36;
  }

  else
  {
    v28 = v36;
    (*(v36 + 32))(v9, v19, v2);
    sub_100005C20();
    sub_1000049CC();
    sub_1000A3CC4(v29);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    (*(v28 + 8))(v9, v2);
  }

  sub_1000A9914(v1 + v26[6], v16);
  sub_100007AFC(v16);
  if (v27)
  {
    sub_100008C3C();
  }

  else
  {
    (*(v28 + 32))(v9, v16, v2);
    sub_100005C20();
    sub_1000049CC();
    sub_1000A3CC4(v30);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    (*(v28 + 8))(v9, v2);
  }

  v31 = v26[7];
  sub_1000049CC();
  sub_1000A3CC4(v32);
  sub_100004ED8();
  dispatch thunk of Hashable.hash(into:)();
  v33 = v26[8];
  type metadata accessor for AccountIdentity();
  sub_100006C58();
  sub_1000A3CC4(v34);
  sub_100004ED8();
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v1 + v26[9]));
  sub_1000027F8();
}

uint64_t sub_1000A2ED0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

BOOL sub_1000A2F60(void *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v5 = a1[5];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  v9 = a2[5];
  v10 = *a1 == *a2 && a1[1] == a2[1];
  result = 0;
  if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    v11 = v2 == v6 && v4 == v7;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v12 = v3 == v8 && v5 == v9;
      if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  return result;
}

void sub_1000A302C()
{
  sub_100002FE8();
  v1 = sub_100099DF4(&qword_1002DAEA8, &qword_1002305F8);
  sub_100003724(v1);
  v3 = *(v2 + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  sub_100002810();
  sub_1000AA63C();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  sub_1000AACA4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v5 = sub_100002980();
  v6(v5);
  sub_1000AC3F8();
}

uint64_t sub_1000A3140()
{
  sub_1000AC358();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  String.hash(into:)();
  sub_10000DB20();

  return String.hash(into:)();
}

Swift::Int sub_1000A3198()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = sub_100005BE8();
  sub_100002DE8(v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
  String.hash(into:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A3210()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v5 = sub_100099DF4(&qword_1002DADB0, &qword_100230598);
  sub_100003724(v5);
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_100003B38();
  v9 = v2[4];
  sub_100008B3C(v2, v2[3]);
  sub_1000AA63C();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v0)
  {
    sub_100004118(v2);
  }

  else
  {
    sub_1000AA690();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v10 = sub_10000B7A4();
    v11(v10, v5);
    sub_100004118(v2);
    *v4 = v12;
    *(v4 + 16) = v13;
    *(v4 + 32) = v14;
    *(v4 + 40) = v15;
  }

  sub_10000A7AC();
  sub_100005074();
}

uint64_t sub_1000A3360(char a1)
{
  if (a1)
  {
    return 0x645F6769666E6F63;
  }

  else
  {
    return 1635018093;
  }
}

uint64_t sub_1000A3398()
{
  sub_100002FBC();
  sub_10000DE4C(v6);
  v9 = v9 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v4 && v3 == v5;
  if (!v10 && (sub_100006260() & 1) == 0)
  {
    return 0;
  }

  if (*(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000A343C()
{
  sub_100002FE8();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DAD20, &qword_10022FBC0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_1000A9B88();
  sub_10000A484();
  v8 = *v1;
  v10 = v1[1];
  sub_1000A9C84();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v9 = v1[2];
    sub_1000A9CD8();
    sub_10000B9AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = sub_10000EF58();
  v7(v6);
  sub_1000048A0();
  sub_1000AC3F8();
}

uint64_t sub_1000A356C()
{
  sub_1000AC358();
  String.hash(into:)();
  sub_10000DB20();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return String.hash(into:)();
}

Swift::Int sub_1000A35B4()
{
  sub_100005BE8();
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = String.hash(into:)();
  sub_100002DE8(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
  String.hash(into:)();
  v13 = v0[4];
  v14 = v0[5];
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A3614()
{
  sub_100004868();
  sub_10000ADE8();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DAD00, &qword_10022FBB8);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003B38();
  v8 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000A9B88();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000A9BDC();
    sub_100008D0C();
    sub_1000AC3A0();
    sub_1000A9C30();
    sub_100008D0C();
    v9 = sub_10000EF48();
    v10(v9);
    sub_100004118(v0);
    *v3 = v11;
    v3[1] = v12;
    v3[2] = v13;
    v3[3] = v14;
    v3[4] = v11;
    v3[5] = v12;
  }

  sub_100003550();
  sub_100005074();
}

Swift::Int sub_1000A37A8(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AccountIdentity();
  sub_1000A3CC4(&qword_1002DE9E0);
  dispatch thunk of Hashable.hash(into:)();
  Hasher._combine(_:)(*(v2 + *(a2 + 20)));
  return Hasher._finalize()();
}

Swift::Int sub_1000A38F0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_1000A3934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A2ED0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1000A397C@<X0>(_BYTE *a1@<X8>)
{
  result = static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1000A39A8(uint64_t a1)
{
  v2 = sub_1000AA63C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A39E4(uint64_t a1)
{
  v2 = sub_1000AA63C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A3A28@<D0>(_OWORD *a1@<X8>)
{
  sub_1000A3210();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1000A3AAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000A3AE4()
{
  v1 = sub_10000B318();
  result = sub_1000A3360(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A3B14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A3B44(uint64_t a1)
{
  v2 = sub_1000A9B88();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A3B80(uint64_t a1)
{
  v2 = sub_1000A9B88();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A3BC4@<D0>(_OWORD *a1@<X8>)
{
  sub_1000A3614();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_1000A3C28()
{
  result = qword_1002DAC10;
  if (!qword_1002DAC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC10);
  }

  return result;
}

unint64_t sub_1000A3CC4(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

BOOL sub_1000A3D98()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3128, v2);
  sub_100008C18();
  return v1 != 0;
}

uint64_t sub_1000A3DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return static AvroSchemaEncodingError.__derived_enum_equals(_:_:)();
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

void sub_1000A3DEC()
{
  sub_100004868();
  v1 = v0;
  v2 = sub_100099DF4(&qword_1002DAE68, &qword_1002305E0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100003B38();
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = sub_1000AC378();
  sub_100008B3C(v8, v9);
  sub_1000AA9F0();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100007B1C();
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = sub_10000EF48();
  v11(v10);
  sub_100005074();
}

Swift::Int sub_1000A3EEC()
{
  sub_100002FBC();
  sub_100005BE8();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A3F30()
{
  sub_100002FE8();
  sub_10000ADE8();
  v2 = sub_100099DF4(&qword_1002DAE48, &qword_1002305D0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = v0[3];
  v7 = v0[4];
  sub_1000075BC(v0);
  sub_1000AA9F0();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000AC368();
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = sub_100002980();
    v9(v8);
  }

  sub_100004118(v0);
  sub_1000AC3F8();
}

BOOL sub_1000A4048()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3160, v2);
  sub_100008C18();
  return v1 != 0;
}

void sub_1000A4084()
{
  sub_100004868();
  sub_10000F398(v1, v2, v3, v4, v5);
  v6 = sub_100099DF4(&qword_1002DAE58, &qword_1002305D8);
  sub_100003724(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  v10 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000AA948();
  sub_100010F58();
  sub_1000AAA44();
  sub_100002FC8();
  v11 = sub_1000AC38C();
  v12(v11);
  sub_100005074();
}

void sub_1000A4184()
{
  sub_100002FE8();
  sub_1000AC3AC();
  v2 = sub_100099DF4(&qword_1002DAE30, &qword_1002305C8);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = v0[3];
  v7 = v0[4];
  sub_1000075BC(v0);
  sub_1000AA948();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000AA99C();
    sub_100008B54();
    v8 = sub_100003E4C();
    v9(v8);
  }

  sub_100004118(v0);
  sub_1000AC320();
  sub_1000AC3F8();
}

void sub_1000A4314()
{
  v2 = sub_100099DF4(&qword_1002DAE08, &qword_1002305B8);
  sub_100003724(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_1000AC3B8();
  sub_100002810();
  sub_1000AA6E4();
  sub_10000CF84();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10000355C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v1, v2);
  sub_10000A7AC();
}

void sub_1000A4450()
{
  sub_100002FBC();
  if (v1 == 0.0)
  {
    v1 = 0.0;
  }

  Hasher._combine(_:)(*&v1);
  Hasher._combine(_:)(v0);
}

Swift::Int sub_1000A448C(Swift::UInt a1, double a2)
{
  sub_100005BE8();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

void sub_1000A44F0()
{
  sub_10000ADE8();
  v1 = sub_100099DF4(&qword_1002DADC8, &qword_1002305A0);
  sub_100003724(v1);
  v3 = *(v2 + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  v5 = v0[3];
  v6 = v0[4];
  sub_1000075BC(v0);
  sub_1000AA6E4();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000AC368();
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_10000355C();
  sub_1000AC368();
  KeyedDecodingContainer.decode(_:forKey:)();
  v7 = sub_100002980();
  v8(v7);
  sub_100004118(v0);
  sub_100003550();
}

uint64_t sub_1000A4648(char a1)
{
  if (a1)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 1635018093;
  }
}

uint64_t sub_1000A467C()
{
  sub_100002FBC();
  sub_10000DE4C(v6);
  v9 = v9 && v7 == v8;
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v2 == v4 && v3 == v5;
  if (!v10 && (sub_100006260() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v1 + 32);
  v12 = *(v0 + 32);

  return sub_100142EEC(v11, v12);
}

void sub_1000A4708()
{
  sub_100002FE8();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DAE10, &qword_1002305C0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_1000AA738();
  sub_10000A484();
  v8 = *v1;
  v10 = v1[1];
  sub_1000AA8A0();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v9 = *(v1 + 4);
    sub_100099DF4(&qword_1002DADF0, &qword_1002305B0);
    sub_1000AA7E0(&unk_1002DAE20);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v6 = sub_10000EF58();
  v7(v6);
  sub_1000048A0();
  sub_1000AC3F8();
}

void sub_1000A4880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, int a17, Swift::UInt8 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  sub_1000AC358();
  String.hash(into:)();
  sub_10000DB20();
  v39 = *(v32 + 32);

  sub_1001144B8(v31, v39, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26, a27, a28, a29, a30, a31);
}

void sub_1000A4928()
{
  sub_100004868();
  sub_10000ADE8();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DADD8, &qword_1002305A8);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  sub_100003B38();
  v8 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000AA738();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_1000AA78C();
    sub_100008D0C();
    sub_100099DF4(&qword_1002DADF0, &qword_1002305B0);
    sub_1000AC3A0();
    sub_1000AA7E0(&unk_1002DADF8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = sub_10000EF48();
    v10(v9);
    sub_100004118(v0);
    *v3 = v11;
    v3[1] = v12;
    v3[2] = v13;
    v3[3] = v14;
    v3[4] = v11;
  }

  sub_100003550();
  sub_100005074();
}

BOOL sub_1000A4B10()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3288, v2);
  sub_100008C18();
  return v1 != 0;
}

BOOL sub_1000A4B4C()
{
  sub_100010948();
  v6 = v6 && v4 == v5;
  result = 0;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v3 == v1 && v2 == v0)
    {
      return 1;
    }

    sub_100010930();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  return result;
}

void sub_1000A4BB4()
{
  sub_100004868();
  sub_10000F398(v1, v2, v3, v4, v5);
  v6 = sub_100099DF4(&qword_1002DAF80, &qword_100231168);
  sub_100003724(v6);
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  v10 = v0[4];
  sub_100008B3C(v0, v0[3]);
  sub_1000AB680();
  sub_100010F58();
  sub_1000AB728();
  sub_100002FC8();
  v11 = sub_1000AC38C();
  v12(v11);
  sub_100005074();
}

void sub_1000A4CB4()
{
  sub_100002FE8();
  sub_1000AC3AC();
  v2 = sub_100099DF4(&qword_1002DAF68, &qword_100231160);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_100004880();
  v6 = v0[3];
  v7 = v0[4];
  sub_1000075BC(v0);
  sub_1000AB680();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_1000AB6D4();
    sub_100008B54();
    v8 = sub_100003E4C();
    v9(v8);
  }

  sub_100004118(v0);
  sub_1000AC320();
  sub_1000AC3F8();
}

uint64_t sub_1000A4DCC(char a1)
{
  if (a1)
  {
    return 0x6C72755F61746164;
  }

  else
  {
    return 0x63617073656D616ELL;
  }
}

uint64_t sub_1000A4E08()
{
  sub_100010948();
  v6 = v6 && v4 == v5;
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3 == v1 && v2 == v0)
    {
      return 1;
    }

    else
    {
      sub_100010930();

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}

void sub_1000A4E88()
{
  sub_100004868();
  v3 = v2;
  v5 = v4;
  v8 = sub_100099DF4(v6, v7);
  sub_100003724(v8);
  v10 = v9;
  v12 = *(v11 + 64);
  sub_100003774();
  __chkstk_darwin(v13);
  sub_100004880();
  v14 = v5[4];
  sub_10000C4FC(v5, v5[3]);
  v3();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    sub_10000355C();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v10 + 8))(v1, v8);
  sub_100005074();
}

void sub_1000A4FD0()
{
  sub_100004868();
  v2 = v1;
  v4 = v3;
  v7 = sub_100099DF4(v5, v6);
  sub_100003724(v7);
  v9 = *(v8 + 64);
  sub_100003774();
  __chkstk_darwin(v10);
  sub_100004880();
  v11 = v4[4];
  sub_10000C4FC(v4, v4[3]);
  v2();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000355C();
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = sub_100002960();
    v13(v12);
  }

  sub_100004118(v4);
  sub_100005074();
}

uint64_t sub_1000A5178()
{
  sub_100002DDC();
  v3._rawValue = v2;
  v4._object = v0;
  _findStringSwitchCase(cases:string:)(v3, v4);
  sub_100008C18();
  if (v1 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (v1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000A51F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  if (a5 == a6 && a1 == a3)
  {
    return sub_100143968(a2, a4);
  }

  else
  {
    return 0;
  }
}

void sub_1000A5210(uint64_t a1)
{
  v4 = sub_100099DF4(&qword_1002DAC70, &qword_10022FB88);
  sub_100003724(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_100003774();
  __chkstk_darwin(v9);
  sub_10000AF24();
  v10 = *(a1 + 24);
  v11 = *(a1 + 32);
  v12 = sub_1000AC378();
  sub_100008B3C(v12, v13);
  sub_1000A90DC();
  sub_1000AC2D4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_1000A91D8();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    sub_100099DF4(&qword_1002DAC58, &qword_10022FB80);
    sub_1000A922C(&unk_1002DAC80);
    sub_1000044E0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v6 + 8))(v2, v4);
  sub_10000A7AC();
}

void sub_1000A53C8(double a1, uint64_t a2, Swift::UInt a3)
{
  if (a1 == 0.0)
  {
    a1 = 0.0;
  }

  Hasher._combine(_:)(*&a1);
  Hasher._combine(_:)(a3);

  sub_1001141DC();
}

Swift::Int sub_1000A542C(Swift::UInt a1, double a2)
{
  sub_100005BE8();
  v4 = 0.0;
  if (a2 != 0.0)
  {
    v4 = a2;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(a1);
  sub_100002DE8(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
  sub_1001141DC();
  return Hasher._finalize()();
}

void sub_1000A54A4()
{
  sub_10000ADE8();
  v1 = sub_100099DF4(&qword_1002DAC40, &qword_10022FB78);
  sub_100003724(v1);
  v3 = *(v2 + 64);
  sub_100003774();
  __chkstk_darwin(v4);
  sub_100004880();
  v5 = v0[3];
  v6 = v0[4];
  sub_1000075BC(v0);
  sub_1000A90DC();
  sub_100004180();
  sub_10000CF84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_1000A9130();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  sub_100099DF4(&qword_1002DAC58, &qword_10022FB80);
  sub_1000AC3A0();
  sub_1000A922C(&unk_1002DAC60);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = sub_100002980();
  v8(v7);
  sub_100004118(v0);
  sub_100003550();
}

uint64_t sub_1000A568C()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3360, v2);
  sub_100008C18();
  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A56CC(char a1)
{
  if (!a1)
  {
    return 1684632420;
  }

  if (a1 == 1)
  {
    return 0x64695F72657375;
  }

  return 0x695F746E65696C63;
}

BOOL sub_1000A572C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A3D98();
  *a2 = result;
  return result;
}

BOOL sub_1000A57AC@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A3D98();
  *a1 = result;
  return result;
}

uint64_t sub_1000A57D8(uint64_t a1)
{
  v2 = sub_1000AA9F0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5814(uint64_t a1)
{
  v2 = sub_1000AA9F0();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A5850()
{
  v1 = *v0;
  v2 = v0[1];
  return sub_1000A3EEC();
}

Swift::Int sub_1000A5860()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A58A8(void *a1@<X8>)
{
  sub_1000A3F30();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
  }
}

void sub_1000A58D4()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000A3DEC();
}

BOOL sub_1000A5910@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A4048();
  *a2 = result;
  return result;
}

BOOL sub_1000A5960@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4048();
  *a1 = result;
  return result;
}

uint64_t sub_1000A598C(uint64_t a1)
{
  v2 = sub_1000AA948();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A59C8(uint64_t a1)
{
  v2 = sub_1000AA948();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000A5A30()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000A4084();
}

uint64_t sub_1000A5A74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

void sub_1000A5AAC()
{
  sub_10000B318();
  sub_1000A429C();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1000A5ADC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5B0C(uint64_t a1)
{
  v2 = sub_1000AB77C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5B48(uint64_t a1)
{
  v2 = sub_1000AB77C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_1000A5BC8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000A4E88();
}

uint64_t sub_1000A5C64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

void sub_1000A5C9C()
{
  sub_10000B318();
  sub_1000A42D0();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1000A5CCC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5CFC(uint64_t a1)
{
  v2 = sub_1000AA6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5D38(uint64_t a1)
{
  v2 = sub_1000AA6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A5D80()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000A4450();
  return result;
}

Swift::Int sub_1000A5D8C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v1 != 0.0)
  {
    v3 = v1;
  }

  Hasher._combine(_:)(*&v3);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000A5DF4(void *a1@<X8>)
{
  sub_1000A44F0();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v3;
  }
}

double sub_1000A5E24()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1000A4314();
  return result;
}

uint64_t sub_1000A5E7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000A5EB4()
{
  v1 = sub_10000B318();
  result = sub_1000A4648(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A5EE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A5F14(uint64_t a1)
{
  v2 = sub_1000AA738();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A5F50(uint64_t a1)
{
  v2 = sub_1000AA738();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000A5FD0@<D0>(uint64_t a1@<X8>)
{
  sub_1000A4928();
  if (!v1)
  {
    result = *&v4;
    *a1 = v4;
    *(a1 + 16) = v5;
    *(a1 + 32) = v6;
  }

  return result;
}

BOOL sub_1000A6034@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A4B10();
  *a2 = result;
  return result;
}

BOOL sub_1000A6068@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1000A4B10();
  *a1 = result;
  return result;
}

uint64_t sub_1000A6094(uint64_t a1)
{
  v2 = sub_1000AB680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A60D0(uint64_t a1)
{
  v2 = sub_1000AB680();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000A6138@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void sub_1000A616C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000A4BB4();
}

uint64_t sub_1000A61D0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

uint64_t sub_1000A6208()
{
  v1 = sub_10000B318();
  result = sub_1000A4DCC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A6238@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A6268(uint64_t a1)
{
  v2 = sub_1000ABFEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A62A4(uint64_t a1)
{
  v2 = sub_1000ABFEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A62E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = v4[1];
  v9 = v4[2];
  v8 = v4[3];
  Hasher.init(_seed:)();
  a4(v11, v6, v7, v9, v8);
  return Hasher._finalize()();
}

void sub_1000A6390(void *a1@<X8>)
{
  sub_1000A4FD0();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_1000A63D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  sub_1000A4E88();
}

uint64_t sub_1000A644C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A5178();
  *a2 = result;
  return result;
}

void sub_1000A6484()
{
  sub_10000B318();
  sub_1000A51BC();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1000A64B4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A5178();
  *a1 = result;
  return result;
}

uint64_t sub_1000A64E4(uint64_t a1)
{
  v2 = sub_1000A90DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A6520(uint64_t a1)
{
  v2 = sub_1000A90DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A6574()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  Hasher.init(_seed:)();
  v4 = 0.0;
  if (v1 != 0.0)
  {
    v4 = v1;
  }

  Hasher._combine(_:)(*&v4);
  Hasher._combine(_:)(v2);
  sub_1001141DC();
  return Hasher._finalize()();
}

void sub_1000A65F0(void *a1@<X8>)
{
  sub_1000A54A4();
  if (!v1)
  {
    *a1 = v5;
    a1[1] = v3;
    a1[2] = v4;
  }
}

double sub_1000A6620(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  sub_1000A5210(a1);
  return result;
}

uint64_t sub_1000A6668@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A568C();
  *a2 = result;
  return result;
}

uint64_t sub_1000A6698()
{
  v1 = sub_10000B318();
  result = sub_1000A56CC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A6788()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B33C8, v2);
  sub_100008C18();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A67C8(char a1)
{
  result = 0x5F74657361746164;
  switch(a1)
  {
    case 1:
      result = 0x6372735F6469;
      break;
    case 2:
      result = 0x69616D6F645F6469;
      break;
    case 3:
      result = 0x79726576696C6564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A6854()
{
  sub_100002FBC();
  v3 = *v2 == *v0 && *(v1 + 8) == *(v0 + 8);
  if (!v3 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if ((sub_100152CD8(*(v1 + 16), *(v0 + 16)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(v1 + 24) == *(v0 + 24) && *(v1 + 32) == *(v0 + 32);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return sub_1000A7074();
}

void sub_1000A68F0()
{
  sub_100002FE8();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DAE90, &qword_1002305F0);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_1000AAA98();
  sub_10000A484();
  v6 = *v1;
  v7 = v1[1];
  sub_100003B48();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v0)
  {
    v12 = *(v1 + 16);
    sub_1000AC3A0();
    sub_1000AABFC();
    sub_10000B9AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v8 = v1[3];
    v9 = v1[4];
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v1 + 5);
    v14 = *(v1 + 7);
    v15 = *(v1 + 9);
    sub_1000AAC50();
    sub_10000B9AC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v10 = sub_10000EF58();
  v11(v10);
  sub_1000048A0();
  sub_1000AC3F8();
}

uint64_t sub_1000A6A68()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  *(v0 + 16);
  String.hash(into:)();

  v3 = v0[3];
  v4 = v0[4];
  String.hash(into:)();
  v5 = v0[6];
  v6 = v0[7];
  v7 = *(v0 + 64);
  v8 = v0[9];
  v9 = v0[10];
  sub_1000A6F34(*(v0 + 40));
  String.hash(into:)();

  sub_10000DB20();
  Hasher._combine(_:)(v7 & 1);

  return String.hash(into:)();
}

Swift::Int sub_1000A6B7C()
{
  sub_100005BE8();
  sub_1000A6A68();
  return Hasher._finalize()();
}

void sub_1000A6BB4()
{
  sub_100004868();
  sub_1000AC3AC();
  v3 = v2;
  v4 = sub_100099DF4(&qword_1002DAE70, &qword_1002305E8);
  sub_100003724(v4);
  v6 = *(v5 + 64);
  sub_100003774();
  __chkstk_darwin(v7);
  v8 = v0[3];
  v9 = v0[4];
  sub_1000075BC(v0);
  sub_1000AAA98();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004118(v0);
  }

  else
  {
    sub_100008C30();
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    LOBYTE(v24[0]) = 1;
    sub_1000AAAEC();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v25[0]) = 2;
    sub_100008C30();
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = v13;
    sub_1000AAB40();
    sub_100008C30();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = sub_100010D1C();
    v15(v14);
    v21 = v35;
    v20 = v36;
    v19 = v37;
    v16 = v38;
    v18 = v39;
    v17 = v40;
    v24[0] = v10;
    v24[1] = v12;
    LOBYTE(v24[2]) = 0;
    v24[3] = v22;
    v24[4] = v23;
    LOBYTE(v24[5]) = v35;
    v24[6] = v36;
    v24[7] = v37;
    LOBYTE(v24[8]) = v38;
    v24[9] = v39;
    v24[10] = v40;
    sub_1000AAB94(v24, v25);
    sub_100004118(v0);
    v25[0] = v10;
    v25[1] = v12;
    v26 = 0;
    v27 = v22;
    v28 = v23;
    v29 = v21;
    v30 = v20;
    v31 = v19;
    v32 = v16;
    v33 = v18;
    v34 = v17;
    sub_1000AABCC(v25);
    memcpy(v3, v24, 0x58uLL);
  }

  sub_100005074();
}

uint64_t sub_1000A6EF4()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B3448, v2);
  sub_100008C18();
  if (v1 >= 5)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1000A6F34(char a1)
{
  result = 0xD000000000000015;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0xD000000000000024;
      break;
    case 3:
    case 4:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A6FBC()
{
  sub_100002DDC();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&off_1002B34E0, v2);
  sub_100008C18();
  if (v1 >= 4)
  {
    return 4;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000A6FFC(char a1)
{
  result = 1701080941;
  switch(a1)
  {
    case 1:
    case 2:
      result = 0x656C756465686373;
      break;
    case 3:
      result = 0x797469726F697270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000A7074()
{
  sub_100002FBC();
  v4 = *v3;
  v5 = sub_1000A6F34(*v2);
  v7 = v6;
  if (v5 == sub_1000A6F34(v4) && v7 == v8)
  {
  }

  else
  {
    sub_100007B1C();
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(v1 + 8) == *(v0 + 8) && *(v1 + 16) == *(v0 + 16);
  if (!v11 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || ((*(v1 + 24) ^ *(v0 + 24)) & 1) != 0)
  {
    return 0;
  }

  if (*(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void sub_1000A7188()
{
  sub_100002FE8();
  sub_10000508C();
  v2 = sub_100099DF4(&qword_1002DAFC8, &qword_100231188);
  sub_100003724(v2);
  v4 = *(v3 + 64);
  sub_100003774();
  __chkstk_darwin(v5);
  sub_10000AF24();
  sub_100002810();
  sub_1000AB824();
  sub_10000A484();
  v13 = *v1;
  sub_1000AB8CC();
  sub_10000B9AC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v6 = *(v1 + 1);
    v7 = *(v1 + 2);
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
    v8 = v1[24];
    sub_10000B9AC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v1 + 4);
    v10 = *(v1 + 5);
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  v11 = sub_10000EF58();
  v12(v11);
  sub_1000048A0();
  sub_1000AC3F8();
}

uint64_t sub_1000A72E0()
{
  sub_1000A6F34(*v0);
  String.hash(into:)();

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 24) & 1);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  return String.hash(into:)();
}

Swift::Int sub_1000A7364()
{
  sub_100005BE8();
  sub_1000A6F34(*v0);
  String.hash(into:)();

  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(*(v0 + 24) & 1);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000A73E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  sub_100004868();
  sub_1000AC3AC();
  v16 = v15;
  v17 = sub_100099DF4(&qword_1002DAFB0, &qword_100231180);
  sub_100003724(v17);
  v19 = *(v18 + 64);
  sub_100003774();
  __chkstk_darwin(v20);
  sub_100003B38();
  v21 = v13[4];
  sub_100008B3C(v13, v13[3]);
  sub_1000AB824();
  sub_1000AC33C();
  sub_1000AC2D4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    sub_100004118(v13);
  }

  else
  {
    sub_1000AB878();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100004890();
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = v23;
    v31 = v22;
    sub_100004890();
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_100004890();
    v26 = KeyedDecodingContainer.decode(_:forKey:)();
    v27 = sub_10000B7A4();
    v29 = v28;
    v30(v27, v17);
    sub_100004118(v13);
    *v16 = a13;
    *(v16 + 8) = v31;
    *(v16 + 16) = v24;
    *(v16 + 24) = v25 & 1;
    *(v16 + 32) = v26;
    *(v16 + 40) = v29;
  }

  sub_100005074();
}

uint64_t sub_1000A75F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736769666E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x8000000100272550 == a2;
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
        v8 = a1 == 0xD000000000000012 && 0x8000000100272570 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000100272590 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000017 && 0x80000001002725B0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000013 && 0x80000001002725D0 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000011 && 0x80000001002725F0 == a2)
              {

                return 7;
              }

              else
              {
                v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1000A787C(char a1)
{
  result = 0x736769666E6F63;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x7466417972746572;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000017;
      break;
    case 5:
      result = 0xD000000000000017;
      break;
    case 6:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

void sub_1000A7984()
{
  sub_100004168();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for Date();
  v5 = sub_100003724(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_10000306C();
  v12 = v11 - v10;
  v13 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v14 = sub_1000030B8(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_10000308C();
  v19 = v17 - v18;
  __chkstk_darwin(v20);
  v22 = &v63[-v21];
  v23 = sub_100099DF4(&qword_1002DACF0, &qword_100232140);
  v24 = sub_10000307C(v23);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  sub_10000308C();
  v29 = v27 - v28;
  __chkstk_darwin(v30);
  v32 = &v63[-v31];
  sub_1000B95B4(*v3, *v1);
  if ((v33 & 1) == 0)
  {
    goto LABEL_40;
  }

  v34 = v3[2];
  v35 = v1[2];
  if (v34)
  {
    if (!v35)
    {
      goto LABEL_40;
    }

    v36 = v3[1] == v1[1] && v34 == v35;
    if (!v36 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_40;
    }
  }

  else if (v35)
  {
    goto LABEL_40;
  }

  v65 = v19;
  v67 = v7;
  v66 = type metadata accessor for TSDataSyncServerConfigModel(0);
  v37 = *(v66 + 24);
  v38 = *(v23 + 48);
  sub_1000A9914(v3 + v37, v32);
  sub_1000A9914(v1 + v37, &v32[v38]);
  sub_1000071D8(v32);
  if (v36)
  {
    sub_1000071D8(&v32[v38]);
    if (v36)
    {
      sub_100004E24(v32, &qword_1002DA970, &qword_1002318B0);
      goto LABEL_22;
    }

LABEL_19:
    v42 = v32;
LABEL_20:
    sub_100004E24(v42, &qword_1002DACF0, &qword_100232140);
    goto LABEL_40;
  }

  sub_1000A9914(v32, v22);
  sub_1000071D8(&v32[v38]);
  if (v39)
  {
    v40 = sub_1000AC3C4();
    v41(v40);
    goto LABEL_19;
  }

  v43 = v67;
  (*(v67 + 32))(v12, &v32[v38], v4);
  sub_1000049CC();
  sub_1000A3CC4(v44);
  v64 = sub_1000AC3D8();
  v45 = *(v43 + 8);
  v45(v12, v4);
  v45(v22, v4);
  sub_100004E24(v32, &qword_1002DA970, &qword_1002318B0);
  if ((v64 & 1) == 0)
  {
    goto LABEL_40;
  }

LABEL_22:
  v46 = v66;
  v47 = *(v66 + 28);
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_40;
  }

  v48 = v46[8];
  v49 = *(v23 + 48);
  sub_1000A9914(v3 + v48, v29);
  sub_1000A9914(v1 + v48, v29 + v49);
  sub_1000071D8(v29);
  if (!v36)
  {
    v50 = v65;
    sub_1000A9914(v29, v65);
    sub_1000071D8(v29 + v49);
    if (!v51)
    {
      v54 = v67;
      (*(v67 + 32))(v12, v29 + v49, v4);
      sub_1000049CC();
      sub_1000A3CC4(v55);
      v56 = sub_1000AC3D8();
      v57 = *(v54 + 8);
      v57(v12, v4);
      v57(v50, v4);
      v46 = v66;
      sub_100004E24(v29, &qword_1002DA970, &qword_1002318B0);
      if ((v56 & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

    v52 = sub_1000AC3C4();
    v53(v52);
    goto LABEL_31;
  }

  sub_1000071D8(v29 + v49);
  if (!v36)
  {
LABEL_31:
    v42 = v29;
    goto LABEL_20;
  }

  sub_100004E24(v29, &qword_1002DA970, &qword_1002318B0);
LABEL_33:
  if (*(v3 + v46[9]) == *(v1 + v46[9]) && *(v3 + v46[10]) == *(v1 + v46[10]))
  {
    v58 = v46[11];
    v59 = *(v3 + v58);
    v60 = *(v3 + v58 + 8);
    v61 = (v1 + v58);
    if (v59 != *v61 || v60 != v61[1])
    {
      _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

LABEL_40:
  sub_1000027F8();
}

void sub_1000A7E30()
{
  sub_100004868();
  sub_10000508C();
  v3 = sub_100099DF4(&qword_1002DACD0, &unk_10022FBA0);
  sub_100003724(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_100003774();
  __chkstk_darwin(v8);
  sub_10000AF24();
  sub_100002810();
  sub_1000A9984();
  sub_10000A484();
  v21 = *v2;
  sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
  sub_1000A9AF8(&unk_1002DACD8);
  sub_1000044E0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v0)
  {
    v9 = v2[1];
    v10 = v2[2];
    sub_100003B48();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = type metadata accessor for TSDataSyncServerConfigModel(0);
    v12 = v11[6];
    type metadata accessor for Date();
    sub_1000049CC();
    sub_1000A3CC4(v13);
    sub_10000AA50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = v11[7];
    sub_10000AA50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = v11[8];
    sub_10000AA50();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v2 + v11[9]);
    sub_1000044E0();
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v2 + v11[10]);
    sub_10000B9AC();
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v2 + v11[11]);
    v19 = *v18;
    v20 = v18[1];
    sub_100003B48();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v5 + 8))(v1, v3);
  sub_10000A7AC();
  sub_100005074();
}

void sub_1000A80B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100004168();
  a19 = v23;
  a20 = v24;
  v25 = v21;
  sub_100002834();
  v26 = type metadata accessor for Date();
  v27 = sub_100003724(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  __chkstk_darwin(v27);
  sub_10000306C();
  sub_1000AC3B8();
  v32 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v33 = sub_1000030B8(v32);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_10000308C();
  v38 = v36 - v37;
  __chkstk_darwin(v39);
  v41 = &a9 - v40;
  sub_1000A9440(v20, *v21);
  if (v21[2])
  {
    v42 = v21[1];
    sub_100005C20();
    String.hash(into:)();
  }

  else
  {
    sub_100008C3C();
  }

  v43 = type metadata accessor for TSDataSyncServerConfigModel(0);
  sub_1000A9914(v21 + v43[6], v41);
  sub_100007AFC(v41);
  if (v44)
  {
    sub_100008C3C();
  }

  else
  {
    (*(v29 + 32))(v22, v41, v26);
    sub_100005C20();
    sub_1000049CC();
    sub_1000A3CC4(v45);
    sub_100008A44();
    dispatch thunk of Hashable.hash(into:)();
    v46 = *(v29 + 8);
    v47 = sub_100007B1C();
    v48(v47);
  }

  v49 = v43[7];
  sub_1000049CC();
  sub_1000A3CC4(v50);
  sub_100004ED8();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000A9914(v25 + v43[8], v38);
  sub_100007AFC(v38);
  if (v44)
  {
    sub_100008C3C();
  }

  else
  {
    (*(v29 + 32))(v22, v38, v26);
    sub_100005C20();
    dispatch thunk of Hashable.hash(into:)();
    v51 = *(v29 + 8);
    v52 = sub_100007B1C();
    v53(v52);
  }

  v54 = *(v25 + v43[9]);
  if (v54 == 0.0)
  {
    v54 = 0.0;
  }

  Hasher._combine(_:)(*&v54);
  Hasher._combine(_:)(*(v25 + v43[10]));
  v55 = (v25 + v43[11]);
  v56 = *v55;
  v57 = v55[1];
  String.hash(into:)();
  sub_1000027F8();
}

Swift::Int sub_1000A8368(void (*a1)(_BYTE *))
{
  sub_100005BE8();
  a1(v3);
  return Hasher._finalize()();
}

void sub_1000A83A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004868();
  v63 = v10;
  v13 = v12;
  v59[1] = v14;
  v15 = type metadata accessor for Date();
  v16 = sub_100003724(v15);
  v60 = v17;
  v61 = v16;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_10000306C();
  sub_1000AC3B8();
  v20 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v21 = sub_1000030B8(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_10000308C();
  v26 = v24 - v25;
  __chkstk_darwin(v27);
  v29 = v59 - v28;
  v62 = sub_100099DF4(&qword_1002DACA0, &qword_10022FB90);
  sub_100003724(v62);
  v31 = *(v30 + 64);
  sub_100003774();
  __chkstk_darwin(v32);
  sub_100003B38();
  v66 = type metadata accessor for TSDataSyncServerConfigModel(0);
  v33 = sub_10000307C(v66);
  v35 = *(v34 + 64);
  __chkstk_darwin(v33);
  sub_10000306C();
  v64 = (v37 - v36);
  v65 = v13;
  v39 = v13[3];
  v38 = v13[4];
  v40 = sub_1000AC378();
  sub_100008B3C(v40, v41);
  sub_1000A9984();
  sub_1000AC33C();
  v42 = v63;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v42)
  {
    sub_100004118(v65);
  }

  else
  {
    v63 = v11;
    v59[0] = v26;
    sub_100099DF4(&qword_1002DACB0, &qword_10022FB98);
    v67 = 0;
    sub_1000A9AF8(&unk_1002DACB8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v43 = v64;
    *v64 = a10;
    v43[1] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v43[2] = v44;
    sub_1000049CC();
    sub_1000A3CC4(v45);
    v46 = v29;
    v47 = v61;
    sub_1000AC348();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v66;
    sub_1000A99D8(v46, v43 + v66[6]);
    v49 = v63;
    sub_1000AC348();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v50 = v43;
    (*(v60 + 32))(v43 + v48[7], v49, v47);
    v51 = v59[0];
    sub_1000AC348();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000A99D8(v51, v50 + v48[8]);
    sub_10000A1AC(5);
    KeyedDecodingContainer.decode(_:forKey:)();
    *(v50 + v48[9]) = v52;
    sub_10000A1AC(6);
    *(v50 + v48[10]) = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10000A1AC(7);
    v53 = KeyedDecodingContainer.decode(_:forKey:)();
    v55 = v54;
    v56 = sub_100003F58();
    v57(v56);
    v58 = (v50 + v48[11]);
    *v58 = v53;
    v58[1] = v55;
    sub_1000A9A48();
    sub_100004118(v65);
    sub_1000A9AA4();
  }

  sub_100005074();
}

uint64_t sub_1000A89A0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A6788();
  *a2 = result;
  return result;
}

uint64_t sub_1000A89D0()
{
  v1 = sub_10000B318();
  result = sub_1000A67C8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A8A00@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6788();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8A28(uint64_t a1)
{
  v2 = sub_1000AAA98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8A64(uint64_t a1)
{
  v2 = sub_1000AAA98();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A8AA8()
{
  Hasher.init(_seed:)();
  sub_1000A6A68();
  return Hasher._finalize()();
}

void sub_1000A8AE4(void *a1@<X8>)
{
  sub_1000A6BB4();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t sub_1000A8B70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A6EF4();
  *a2 = result;
  return result;
}

unint64_t sub_1000A8BA0()
{
  v1 = sub_10000B318();
  result = sub_1000A6F34(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A8C9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1000A6FBC();
  *a2 = result;
  return result;
}

uint64_t sub_1000A8CCC()
{
  v1 = sub_10000B318();
  result = sub_1000A6FFC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1000A8CFC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A6FBC();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8D24(uint64_t a1)
{
  v2 = sub_1000AB824();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8D60(uint64_t a1)
{
  v2 = sub_1000AB824();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A8DBC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

double sub_1000A8E00@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>)
{
  sub_1000A73E8(a1, a2, a3, a4, a5, a6, a7, a8, v12, v14, SWORD2(v14), SBYTE6(v14), SHIBYTE(v14));
  if (!v9)
  {
    *a9 = v13;
    a9[1] = v15;
    result = *&v16;
    a9[2] = v16;
  }

  return result;
}

Swift::Int sub_1000A8E68()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  PIKeypairsModificationKind.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

uint64_t sub_1000A8EB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000A75F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000A8EDC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1000A7874();
  *a1 = result;
  return result;
}

uint64_t sub_1000A8F04(uint64_t a1)
{
  v2 = sub_1000A9984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000A8F40(uint64_t a1)
{
  v2 = sub_1000A9984();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_1000A8FC4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

unint64_t sub_1000A9088()
{
  result = qword_1002DAC38;
  if (!qword_1002DAC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC38);
  }

  return result;
}

unint64_t sub_1000A90DC()
{
  result = qword_1002DAC48;
  if (!qword_1002DAC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC48);
  }

  return result;
}

unint64_t sub_1000A9130()
{
  result = qword_1002DAC50;
  if (!qword_1002DAC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC50);
  }

  return result;
}

unint64_t sub_1000A9184()
{
  result = qword_1002DAC68;
  if (!qword_1002DAC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC68);
  }

  return result;
}

unint64_t sub_1000A91D8()
{
  result = qword_1002DAC78;
  if (!qword_1002DAC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC78);
  }

  return result;
}

unint64_t sub_1000A922C(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002DAC58, &qword_10022FB80);
    v4();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000A9298()
{
  result = qword_1002DAC88;
  if (!qword_1002DAC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAC88);
  }

  return result;
}

void sub_1000A92EC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  Hasher._finalize()();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  for (i = 0; v5; v7 ^= v14)
  {
    v9 = i;
LABEL_9:
    v10 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v11 = (*(a2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v14 = Hasher._finalize()();
  }

  while (1)
  {
    v9 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(a2 + 56 + 8 * v9);
    ++i;
    if (v5)
    {
      i = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1000A9440(const void *a1, uint64_t a2)
{
  v43 = type metadata accessor for TSDataSyncDatasetGroupConfig(0);
  v42 = *(v43 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v43);
  v6 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v40 = Hasher._finalize()();
  v7 = a2 + 56;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;
  v44 = a2;

  v12 = 0;
  v13 = 0;
  v51 = "scheduledDevicePull";
  v52 = "priority";
  v50 = "ediateDevicePull";
  v49 = "eduledDevicePull";
  v48 = "appTriggerImmediateDevicePull";
  v39 = a2 + 56;
  v41 = v6;
  for (i = v11; v10; v13 = v46)
  {
    v47 = v12;
LABEL_9:
    v46 = v13;
    v15 = *(v44 + 48) + *(v42 + 72) * (__clz(__rbit64(v10)) | (v13 << 6));
    sub_1000A9A48();
    Hasher.init(_seed:)();
    v16 = *v6;
    v17 = *(v6 + 1);
    v18 = v6[16];
    v19 = *(v6 + 3);
    v20 = *(v6 + 4);
    String.hash(into:)();
    v45 = v10;
    String.hash(into:)();

    String.hash(into:)();
    v21 = v43;
    v22 = *(v43 + 20);
    type metadata accessor for URL();
    sub_1000A3CC4(&qword_1002DAC98);
    dispatch thunk of Hashable.hash(into:)();
    v23 = *&v6[*(v21 + 24)];
    Hasher._combine(_:)(*(v23 + 16));
    v24 = *(v23 + 16);
    if (v24)
    {
      v25 = (v23 + 48);
      do
      {
        v26 = *(v25 - 2);
        v27 = *(v25 - 1);
        v29 = *v25;
        v28 = v25[1];
        v30 = *(v25 + 16);
        v31 = v25[3];
        v32 = v25[4];
        v33 = *(v25 + 40);

        String.hash(into:)();
        String.hash(into:)();
        switch(v30)
        {
          case 3:
            v34 = &v55;
            goto LABEL_14;
          case 4:
            v34 = &v54;
LABEL_14:
            v35 = *(v34 - 32);
            break;
          default:
            break;
        }

        String.hash(into:)();

        String.hash(into:)();
        Hasher._combine(_:)(v33);

        v25 += 8;
        --v24;
      }

      while (v24);
    }

    v10 = (v45 - 1) & v45;
    v36 = Hasher._finalize()();
    v6 = v41;
    sub_1000A9AA4();
    v12 = v36 ^ v47;
    v7 = v39;
    v11 = i;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      Hasher._combine(_:)(v12);
      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v13;
    if (v10)
    {
      v47 = v12;
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1000A9914(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000A9984()
{
  result = qword_1002DACA8;
  if (!qword_1002DACA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DACA8);
  }

  return result;
}

uint64_t sub_1000A99D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000A9A48()
{
  sub_100002FBC();
  v3 = v2(0);
  sub_10000307C(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1000A9AA4()
{
  v1 = sub_100002834();
  v3 = v2(v1);
  sub_10000307C(v3);
  (*(v4 + 8))(v0);
  return v0;
}

unint64_t sub_1000A9AF8(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002DACB0, &qword_10022FB98);
    sub_1000A3CC4(v4);
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000A9B88()
{
  result = qword_1002DAD08;
  if (!qword_1002DAD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD08);
  }

  return result;
}

unint64_t sub_1000A9BDC()
{
  result = qword_1002DAD10;
  if (!qword_1002DAD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD10);
  }

  return result;
}

unint64_t sub_1000A9C30()
{
  result = qword_1002DAD18;
  if (!qword_1002DAD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD18);
  }

  return result;
}

unint64_t sub_1000A9C84()
{
  result = qword_1002DAD28;
  if (!qword_1002DAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD28);
  }

  return result;
}

unint64_t sub_1000A9CD8()
{
  result = qword_1002DAD30;
  if (!qword_1002DAD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncServerConfigModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000A9E20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_1000A9E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000A9ED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1000A9F14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

      return sub_100005254(result, a2);
    }

    *(result + 48) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

__n128 sub_1000A9F68(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000A9F7C(uint64_t a1, int a2)
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

uint64_t sub_1000A9FBC(uint64_t result, int a2, int a3)
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

__n128 initializeBufferWithCopyOfBuffer for TSDataSyncConfigServerCommonProducer(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TSDataSyncConfigServerCommonProducer(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TSDataSyncConfigServerCommonProducer(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1000AA078(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000AA0B8(uint64_t result, int a2, int a3)
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

unint64_t sub_1000AA118()
{
  result = qword_1002DAD38;
  if (!qword_1002DAD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD38);
  }

  return result;
}

unint64_t sub_1000AA170()
{
  result = qword_1002DAD40;
  if (!qword_1002DAD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD40);
  }

  return result;
}

unint64_t sub_1000AA1C8()
{
  result = qword_1002DAD48;
  if (!qword_1002DAD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD48);
  }

  return result;
}

unint64_t sub_1000AA220()
{
  result = qword_1002DAD50;
  if (!qword_1002DAD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD50);
  }

  return result;
}

unint64_t sub_1000AA278()
{
  result = qword_1002DAD58;
  if (!qword_1002DAD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD58);
  }

  return result;
}

unint64_t sub_1000AA2D0()
{
  result = qword_1002DAD60;
  if (!qword_1002DAD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD60);
  }

  return result;
}

unint64_t sub_1000AA328()
{
  result = qword_1002DAD68;
  if (!qword_1002DAD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD68);
  }

  return result;
}

unint64_t sub_1000AA380()
{
  result = qword_1002DAD70;
  if (!qword_1002DAD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD70);
  }

  return result;
}

unint64_t sub_1000AA3D8()
{
  result = qword_1002DAD78;
  if (!qword_1002DAD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD78);
  }

  return result;
}

unint64_t sub_1000AA430()
{
  result = qword_1002DAD80;
  if (!qword_1002DAD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD80);
  }

  return result;
}

unint64_t sub_1000AA488()
{
  result = qword_1002DAD88;
  if (!qword_1002DAD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD88);
  }

  return result;
}

unint64_t sub_1000AA4E0()
{
  result = qword_1002DAD90;
  if (!qword_1002DAD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD90);
  }

  return result;
}

unint64_t sub_1000AA538()
{
  result = qword_1002DAD98;
  if (!qword_1002DAD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAD98);
  }

  return result;
}

unint64_t sub_1000AA590()
{
  result = qword_1002DADA0;
  if (!qword_1002DADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADA0);
  }

  return result;
}

unint64_t sub_1000AA5E8()
{
  result = qword_1002DADA8;
  if (!qword_1002DADA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADA8);
  }

  return result;
}

unint64_t sub_1000AA63C()
{
  result = qword_1002DADB8;
  if (!qword_1002DADB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADB8);
  }

  return result;
}

unint64_t sub_1000AA690()
{
  result = qword_1002DADC0;
  if (!qword_1002DADC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADC0);
  }

  return result;
}

unint64_t sub_1000AA6E4()
{
  result = qword_1002DADD0;
  if (!qword_1002DADD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADD0);
  }

  return result;
}

unint64_t sub_1000AA738()
{
  result = qword_1002DADE0;
  if (!qword_1002DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADE0);
  }

  return result;
}

unint64_t sub_1000AA78C()
{
  result = qword_1002DADE8;
  if (!qword_1002DADE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DADE8);
  }

  return result;
}

unint64_t sub_1000AA7E0(uint64_t a1)
{
  result = sub_10003CD3C(a1);
  if (!result)
  {
    v4 = v3;
    sub_10009A468(&qword_1002DADF0, &qword_1002305B0);
    v4();
    sub_10000509C();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1000AA84C()
{
  result = qword_1002DAE00;
  if (!qword_1002DAE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE00);
  }

  return result;
}

unint64_t sub_1000AA8A0()
{
  result = qword_1002DAE18;
  if (!qword_1002DAE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE18);
  }

  return result;
}

unint64_t sub_1000AA8F4()
{
  result = qword_1002DAE28;
  if (!qword_1002DAE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE28);
  }

  return result;
}

unint64_t sub_1000AA948()
{
  result = qword_1002DAE38;
  if (!qword_1002DAE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE38);
  }

  return result;
}

unint64_t sub_1000AA99C()
{
  result = qword_1002DAE40;
  if (!qword_1002DAE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE40);
  }

  return result;
}

unint64_t sub_1000AA9F0()
{
  result = qword_1002DAE50;
  if (!qword_1002DAE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE50);
  }

  return result;
}

unint64_t sub_1000AAA44()
{
  result = qword_1002DAE60;
  if (!qword_1002DAE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE60);
  }

  return result;
}

unint64_t sub_1000AAA98()
{
  result = qword_1002DAE78;
  if (!qword_1002DAE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE78);
  }

  return result;
}

unint64_t sub_1000AAAEC()
{
  result = qword_1002DAE80;
  if (!qword_1002DAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE80);
  }

  return result;
}

unint64_t sub_1000AAB40()
{
  result = qword_1002DAE88;
  if (!qword_1002DAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE88);
  }

  return result;
}

unint64_t sub_1000AABFC()
{
  result = qword_1002DAE98;
  if (!qword_1002DAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAE98);
  }

  return result;
}

unint64_t sub_1000AAC50()
{
  result = qword_1002DAEA0;
  if (!qword_1002DAEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEA0);
  }

  return result;
}

unint64_t sub_1000AACA4()
{
  result = qword_1002DAEB0;
  if (!qword_1002DAEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEB0);
  }

  return result;
}

uint64_t sub_1000AAD58(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1000AAD98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncConfigServerDatasetSource(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000AAEF4()
{
  result = qword_1002DAEB8;
  if (!qword_1002DAEB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEB8);
  }

  return result;
}

unint64_t sub_1000AAF4C()
{
  result = qword_1002DAEC0;
  if (!qword_1002DAEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEC0);
  }

  return result;
}

unint64_t sub_1000AAFA4()
{
  result = qword_1002DAEC8;
  if (!qword_1002DAEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEC8);
  }

  return result;
}

unint64_t sub_1000AAFFC()
{
  result = qword_1002DAED0;
  if (!qword_1002DAED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAED0);
  }

  return result;
}

unint64_t sub_1000AB054()
{
  result = qword_1002DAED8;
  if (!qword_1002DAED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAED8);
  }

  return result;
}

unint64_t sub_1000AB0AC()
{
  result = qword_1002DAEE0;
  if (!qword_1002DAEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEE0);
  }

  return result;
}

unint64_t sub_1000AB104()
{
  result = qword_1002DAEE8;
  if (!qword_1002DAEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEE8);
  }

  return result;
}

unint64_t sub_1000AB15C()
{
  result = qword_1002DAEF0;
  if (!qword_1002DAEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEF0);
  }

  return result;
}

unint64_t sub_1000AB1B4()
{
  result = qword_1002DAEF8;
  if (!qword_1002DAEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAEF8);
  }

  return result;
}

unint64_t sub_1000AB20C()
{
  result = qword_1002DAF00;
  if (!qword_1002DAF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF00);
  }

  return result;
}

unint64_t sub_1000AB264()
{
  result = qword_1002DAF08;
  if (!qword_1002DAF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF08);
  }

  return result;
}

unint64_t sub_1000AB2BC()
{
  result = qword_1002DAF10;
  if (!qword_1002DAF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF10);
  }

  return result;
}

unint64_t sub_1000AB314()
{
  result = qword_1002DAF18;
  if (!qword_1002DAF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF18);
  }

  return result;
}

unint64_t sub_1000AB36C()
{
  result = qword_1002DAF20;
  if (!qword_1002DAF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF20);
  }

  return result;
}

unint64_t sub_1000AB3C4()
{
  result = qword_1002DAF28;
  if (!qword_1002DAF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF28);
  }

  return result;
}

unint64_t sub_1000AB41C()
{
  result = qword_1002DAF30;
  if (!qword_1002DAF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF30);
  }

  return result;
}

unint64_t sub_1000AB474()
{
  result = qword_1002DAF38;
  if (!qword_1002DAF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF38);
  }

  return result;
}

unint64_t sub_1000AB4CC()
{
  result = qword_1002DAF40;
  if (!qword_1002DAF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF40);
  }

  return result;
}

unint64_t sub_1000AB524()
{
  result = qword_1002DAF48;
  if (!qword_1002DAF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF48);
  }

  return result;
}

unint64_t sub_1000AB57C()
{
  result = qword_1002DAF50;
  if (!qword_1002DAF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF50);
  }

  return result;
}

unint64_t sub_1000AB5D4()
{
  result = qword_1002DAF58;
  if (!qword_1002DAF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF58);
  }

  return result;
}

unint64_t sub_1000AB62C()
{
  result = qword_1002DAF60;
  if (!qword_1002DAF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF60);
  }

  return result;
}

unint64_t sub_1000AB680()
{
  result = qword_1002DAF70;
  if (!qword_1002DAF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF70);
  }

  return result;
}

unint64_t sub_1000AB6D4()
{
  result = qword_1002DAF78;
  if (!qword_1002DAF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF78);
  }

  return result;
}

unint64_t sub_1000AB728()
{
  result = qword_1002DAF88;
  if (!qword_1002DAF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF88);
  }

  return result;
}

unint64_t sub_1000AB77C()
{
  result = qword_1002DAF98;
  if (!qword_1002DAF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAF98);
  }

  return result;
}

unint64_t sub_1000AB7D0()
{
  result = qword_1002DAFA8;
  if (!qword_1002DAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFA8);
  }

  return result;
}

unint64_t sub_1000AB824()
{
  result = qword_1002DAFB8;
  if (!qword_1002DAFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFB8);
  }

  return result;
}

unint64_t sub_1000AB878()
{
  result = qword_1002DAFC0;
  if (!qword_1002DAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFC0);
  }

  return result;
}

unint64_t sub_1000AB8CC()
{
  result = qword_1002DAFD0;
  if (!qword_1002DAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFD0);
  }

  return result;
}

_BYTE *sub_1000AB920(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100006284(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000ABA08(unsigned __int8 *a1, int a2)
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

  return sub_10000BEA0(a1);
}

_BYTE *sub_1000ABA54(_BYTE *result, int a2, int a3)
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
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TSDataSyncConfigServerDatasetSyncMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1000ABBDC(uint64_t result, int a2, int a3)
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

      return sub_100005254(result, a2);
    }

    *(result + 32) = 0;
    if (a2)
    {
      return sub_100005254(result, a2);
    }
  }

  return result;
}

unint64_t sub_1000ABC28()
{
  result = qword_1002DAFD8;
  if (!qword_1002DAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFD8);
  }

  return result;
}

unint64_t sub_1000ABC80()
{
  result = qword_1002DAFE0;
  if (!qword_1002DAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFE0);
  }

  return result;
}

unint64_t sub_1000ABCD8()
{
  result = qword_1002DAFE8;
  if (!qword_1002DAFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFE8);
  }

  return result;
}

unint64_t sub_1000ABD30()
{
  result = qword_1002DAFF0;
  if (!qword_1002DAFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFF0);
  }

  return result;
}

unint64_t sub_1000ABD88()
{
  result = qword_1002DAFF8;
  if (!qword_1002DAFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DAFF8);
  }

  return result;
}

unint64_t sub_1000ABDE0()
{
  result = qword_1002DB000;
  if (!qword_1002DB000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB000);
  }

  return result;
}

unint64_t sub_1000ABE38()
{
  result = qword_1002DB008;
  if (!qword_1002DB008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB008);
  }

  return result;
}

unint64_t sub_1000ABE90()
{
  result = qword_1002DB010;
  if (!qword_1002DB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB010);
  }

  return result;
}

unint64_t sub_1000ABEE8()
{
  result = qword_1002DB018;
  if (!qword_1002DB018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB018);
  }

  return result;
}

unint64_t sub_1000ABF40()
{
  result = qword_1002DB020;
  if (!qword_1002DB020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB020);
  }

  return result;
}

unint64_t sub_1000ABF98()
{
  result = qword_1002DB028;
  if (!qword_1002DB028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB028);
  }

  return result;
}

unint64_t sub_1000ABFEC()
{
  result = qword_1002DB038;
  if (!qword_1002DB038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB038);
  }

  return result;
}

unint64_t sub_1000AC040()
{
  result = qword_1002DB048;
  if (!qword_1002DB048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB048);
  }

  return result;
}

_BYTE *sub_1000AC094(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_100006284(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000AC170()
{
  result = qword_1002DB050;
  if (!qword_1002DB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB050);
  }

  return result;
}

unint64_t sub_1000AC1C8()
{
  result = qword_1002DB058;
  if (!qword_1002DB058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB058);
  }

  return result;
}

unint64_t sub_1000AC220()
{
  result = qword_1002DB060;
  if (!qword_1002DB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002DB060);
  }

  return result;
}

uint64_t sub_1000AC304(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  return *a1;
}

void sub_1000AC358()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
}

uint64_t sub_1000AC3D8()
{

  return dispatch thunk of static Equatable.== infix(_:_:)();
}

void sub_1000AC40C(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a3;
  v5 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v66 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v67 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = &v66 - v17;
  __chkstk_darwin(v19);
  v21 = &v66 - v20;
  __chkstk_darwin(v22);
  v24 = &v66 - v23;
  v25 = type metadata accessor for TSDataSyncConfigScheduleInput(0);
  sub_1000A9914(a1 + v25[11], v11);
  v26 = sub_100004DFC(v11, 1, v12);
  v68 = a2;
  if (v26 == 1)
  {
    sub_1000ACD3C(v11);
  }

  else
  {
    (*(v13 + 32))(v24, v11, v12);
    v27 = a1[6];
    Date.timeIntervalSince(_:)();
    v29 = v28;
    (*(v13 + 8))(v24, v12);
    if (v27 >= v29)
    {
      goto LABEL_20;
    }
  }

  sub_1000A9914(a1 + v25[10], v8);
  if (sub_100004DFC(v8, 1, v12) != 1)
  {
    v48 = *(v13 + 32);
    v48(v21, v8, v12);
    v50 = *a1;
    v49 = *(a1 + 1);
    v51 = v69;
    v48(v69, v21, v12);
    v52 = type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_100003790(v52);
    *v54 = v50;
LABEL_23:
    *(v54 + 1) = v49;
    sub_100002728(v51, 0, 1, v53);

    return;
  }

  sub_1000ACD3C(v8);
  v30 = v25[13];
  v31 = *(v30 + a1);
  if (!v31)
  {
    v55 = (a1 + v25[14]);
    v56 = v55[1];
    if (!v56 || (*(a1 + v25[17]) & 1) != 0 || (v57 = *v55, v58 = (a1 + v25[15]), (v59 = v58[1]) != 0) && (v57 == *v58 ? (v60 = v56 == v59) : (v60 = 0), !v60 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0) || sub_1000AC92C(*(a1 + v25[16]), *(a1 + v25[16] + 8), v57, v56))
    {
      v61 = *a1;
      v49 = *(a1 + 1);
      v51 = v69;
      (*(v13 + 16))(v69, v68, v12);
      v62 = type metadata accessor for TSDataSyncConfigSchedule(0);
      sub_100003790(v62);
      *v54 = v61;
      goto LABEL_23;
    }

LABEL_20:
    v63 = type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_100002728(v69, 1, 1, v63);
    return;
  }

  v32 = *(a1 + 5);
  v33 = a1[2];
  v34 = *(a1 + 4);
  v35 = v25[12];
  NSDecimal.init(_:)(v30, a1[3]);
  if ((v31 & 0x8000000000000000) == 0)
  {
    pow(_:_:)(v38, v36, v37);
    NSDecimal.init(_:)(v39, v33);
    sub_100007B28();
    static NSDecimal.+ infix(_:_:)();
    NSDecimal.init(_:)(v40, v32);
    sub_100007B28();
    static NSDecimal.* infix(_:_:)();
    NSDecimal._bridgeToObjectiveC()(v41);
    v43 = v42;
    [v42 doubleValue];

    Date.addingTimeInterval(_:)();
    v44 = v68;
    v45 = static Date.> infix(_:_:)();
    v46 = v67;
    if (v45)
    {
      v47 = *(v13 + 32);
      v47(v67, v18, v12);
    }

    else
    {
      (*(v13 + 8))(v18, v12);
      (*(v13 + 16))(v46, v44, v12);
      v47 = *(v13 + 32);
    }

    v64 = *a1;
    v49 = *(a1 + 1);
    v51 = v69;
    v47(v69, v46, v12);
    v65 = type metadata accessor for TSDataSyncConfigSchedule(0);
    sub_100003790(v65);
    *v54 = v64;
    goto LABEL_23;
  }

  __break(1u);
}

BOOL sub_1000AC92C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = 0;
  if (!a2 || !a4)
  {
    return result;
  }

  v9 = v78;
  v10 = 46;
  v11 = 0xE100000000000000;
  v79 = 46;
  v80 = 0xE100000000000000;
  __chkstk_darwin(0);
  v77 = &v79;

  v12 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000ADC60, v76, a1, a2);
  v13 = v78;
  v79 = 46;
  v80 = 0xE100000000000000;
  __chkstk_darwin(v12);
  v77 = &v79;
  v14 = sub_10011BF54(0x7FFFFFFFFFFFFFFFLL, 1, sub_1000ADCD4, v76, a3, a4);
  if (v12[2])
  {
    v9 = v12[4];
    v10 = v12[5];
    v11 = v12[6];
    v13 = v12[7];
  }

  else
  {
    sub_1000068F4();
    sub_100006C70();
  }

  if (!((v10 ^ v9) >> 14))
  {

    goto LABEL_11;
  }

  v15 = sub_1000049E4();
  v20 = sub_1000AD748(v15, v16, v17, v18, v19);
  if ((v21 & 0x100) == 0)
  {
    v22 = v20;
    v23 = v21;

    if ((v23 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_11:

    goto LABEL_27;
  }

  v24 = sub_1000049E4();
  v22 = sub_1000ACDA4(v24, v25, v26, v27, v28);
  v9 = v29;

  if (v9)
  {
    goto LABEL_11;
  }

LABEL_12:
  sub_1000ACC6C(v12);
  sub_100006C70();

  if (!v13)
  {
    sub_1000068F4();
    sub_100006C70();
  }

  if (!((v10 ^ v9) >> 14))
  {
    goto LABEL_11;
  }

  v30 = sub_1000049E4();
  v35 = sub_1000AD748(v30, v31, v32, v33, v34);
  if ((v36 & 0x100) != 0)
  {
    v39 = sub_1000049E4();
    v37 = sub_1000ACDA4(v39, v40, v41, v42, v43);
    v9 = v44;

    if (v9)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v37 = v35;
    v38 = v36;

    if (v38)
    {
      goto LABEL_27;
    }
  }

  if (v14[2])
  {
    v10 = v14[4];
    v11 = v14[5];
    v45 = v14[6];
    v9 = v14[7];
  }

  else
  {
    sub_1000068F4();
    sub_10000658C();
  }

  if (!((v11 ^ v10) >> 14))
  {
    goto LABEL_11;
  }

  v46 = sub_100007EC4();
  v51 = sub_1000AD748(v46, v47, v48, v49, v50);
  if ((v52 & 0x100) == 0)
  {
    v53 = v51;
    v54 = v52;

    if ((v54 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_27:

    return 0;
  }

  v55 = sub_100007EC4();
  v53 = sub_1000ACDA4(v55, v56, v57, v58, v59);
  v10 = v60;

  if (v10)
  {
    goto LABEL_27;
  }

LABEL_30:
  sub_1000ACC6C(v14);
  sub_10000658C();

  if (!v9)
  {
    sub_1000068F4();
    sub_10000658C();
  }

  if (!((v11 ^ v10) >> 14))
  {
    goto LABEL_27;
  }

  v61 = sub_100007EC4();
  v66 = sub_1000AD748(v61, v62, v63, v64, v65);
  if ((v67 & 0x100) != 0)
  {
    v68 = sub_100007EC4();
    v66 = sub_1000ACDA4(v68, v69, v70, v71, v72);
  }

  v73 = v66;
  v74 = v67;

  if (v74)
  {
    return 0;
  }

  if (v53 < v22)
  {
    return 1;
  }

  return v22 >= v53 && v73 < v37;
}

uint64_t sub_1000ACC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (a1 + 32 * v1);
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];

  return v3;
}

uint64_t sub_1000ACCD0(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = (v1 + 16 * v2);
  v5 = *v4;
  v6 = v4[1];

  return v5;
}

uint64_t sub_1000ACD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000ACD3C(uint64_t a1)
{
  v2 = sub_100099DF4(&qword_1002DA970, &qword_1002318B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unsigned __int8 *sub_1000ACDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1000ADC80();

  result = String.init<A>(_:)();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1000AD338();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}