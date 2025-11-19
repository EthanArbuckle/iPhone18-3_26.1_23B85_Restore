uint64_t sub_1004898F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_10048993C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1004899A0()
{
  result = qword_1007848C8;
  if (!qword_1007848C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007848C8);
  }

  return result;
}

uint64_t type metadata accessor for OAuthCredential()
{
  result = qword_100784928;
  if (!qword_100784928)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100489A68()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100489ADC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, __CFString *a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v98 = a5;
  v95 = a2;
  v102 = a6;
  v103 = type metadata accessor for OAuthCredential();
  v101 = *(v103 - 8);
  v10 = __chkstk_darwin(v103);
  v88 = &v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v87 = &v85 - v12;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  v99 = v13;
  v100 = v14;
  v15 = __chkstk_darwin(v13);
  v90 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v92 = (&v85 - v18);
  v19 = __chkstk_darwin(v17);
  v86 = &v85 - v20;
  v21 = __chkstk_darwin(v19);
  v89 = &v85 - v22;
  __chkstk_darwin(v21);
  v91 = (&v85 - v23);
  sub_1001F0C48(&qword_100781718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069E990;
  v104 = kSecClass;
  *(inited + 32) = kSecClass;
  v96 = inited + 32;
  type metadata accessor for CFString(0);
  v97 = v25;
  *(inited + 40) = kSecClassInternetPassword;
  *(inited + 64) = v25;
  *(inited + 72) = kSecMatchLimit;
  *(inited + 80) = kSecMatchLimitOne;
  *(inited + 104) = v25;
  *(inited + 112) = kSecAttrAccount;
  v93 = a1;
  *(inited + 120) = a1;
  *(inited + 128) = a2;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrServer;
  v94 = a3;
  *(inited + 160) = a3;
  *(inited + 168) = a4;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecReturnAttributes;
  *(inited + 200) = 1;
  *(inited + 224) = &type metadata for Bool;
  *(inited + 232) = kSecReturnData;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v26 = v104;
  v27 = kSecClassInternetPassword;
  v28 = kSecMatchLimit;
  v29 = kSecMatchLimitOne;
  v30 = kSecAttrAccount;
  v31 = v95;

  v32 = kSecAttrServer;
  v104 = a4;

  v33 = kSecReturnAttributes;
  v34 = kSecReturnData;
  sub_1005289DC(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100781720);
  swift_arrayDestroy();
  v108 = 0;
  sub_10048C428(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v36 = SecItemCopyMatching(isa, &v108);

  if (v36)
  {
    if (v36 == -25300)
    {
      v37 = v91;
      static Logger.oauth.getter();

      v38 = v98;
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = v31;
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v107[0] = swift_slowAlloc();
        *v42 = 138412803;
        *(v42 + 4) = v38;
        *v43 = v38;
        *(v42 + 12) = 2085;
        v44 = v38;
        *(v42 + 14) = sub_1002346CC(v93, v41, v107);
        *(v42 + 22) = 2085;
        *(v42 + 24) = sub_1002346CC(v94, v104, v107);
        _os_log_impl(&_mh_execute_header, v39, v40, "[%@] No existing token for account: %{sensitive}s@%{sensitive}s", v42, 0x20u);
        sub_1001F8084(v43);

        swift_arrayDestroy();

        (*(v100 + 8))(v91, v99);
      }

      else
      {

        (*(v100 + 8))(v37, v99);
      }
    }

    else
    {
      v54 = v92;
      static Logger.oauth.getter();

      v55 = v98;
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v107[0] = swift_slowAlloc();
        *v58 = 138413059;
        *(v58 + 4) = v55;
        *v59 = v55;
        *(v58 + 12) = 2085;
        v60 = v55;
        *(v58 + 14) = sub_1002346CC(v93, v31, v107);
        *(v58 + 22) = 2085;
        *(v58 + 24) = sub_1002346CC(v94, v104, v107);
        *(v58 + 32) = 1024;
        *(v58 + 34) = v36;
        _os_log_impl(&_mh_execute_header, v56, v57, "[%@] Error fetching token for account: %{sensitive}s@%{sensitive}s status: %d", v58, 0x26u);
        sub_1001F8084(v59);

        swift_arrayDestroy();

        (*(v100 + 8))(v92, v99);
      }

      else
      {

        (*(v100 + 8))(v54, v99);
      }
    }

LABEL_19:
    v68 = 1;
    v69 = v102;
    goto LABEL_20;
  }

  v45 = v86;
  v46 = v87;
  v47 = v88;
  v48 = v89;
  if (!v108)
  {
    goto LABEL_16;
  }

  v107[0] = v108;
  swift_unknownObjectRetain();
  sub_1001F0C48(&qword_100784968);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v49 = v105;
  if (!*(v105 + 16) || (v50 = sub_10052221C(kSecValueData), (v51 & 1) == 0))
  {

    goto LABEL_16;
  }

  sub_10020A6D0(*(v49 + 56) + 32 * v50, v107);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    static Logger.oauth.getter();

    v61 = v98;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = v31;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v107[0] = swift_slowAlloc();
      *v65 = 138412803;
      *(v65 + 4) = v61;
      *v66 = v61;
      *(v65 + 12) = 2085;
      v67 = v61;
      *(v65 + 14) = sub_1002346CC(v93, v64, v107);
      *(v65 + 22) = 2085;
      *(v65 + 24) = sub_1002346CC(v94, v104, v107);
      _os_log_impl(&_mh_execute_header, v62, v63, "[%@] Error not able to read token data for account: %{sensitive}s@%{sensitive}s", v65, 0x20u);
      sub_1001F8084(v66);

      swift_arrayDestroy();
    }

    (*(v100 + 8))(v45, v99);
    goto LABEL_19;
  }

  v53 = v105;
  v52 = v106;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  sub_10048C428(&qword_100784970, type metadata accessor for OAuthCredential);
  v96 = v53;
  v97 = v52;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  static Logger.oauth.getter();
  sub_100391934(v46, v47);

  v71 = v98;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v92 = v76;
    v98 = swift_slowAlloc();
    v107[0] = v98;
    *v75 = 138413059;
    *(v75 + 4) = v71;
    *v76 = v71;
    v91 = v72;
    *(v75 + 12) = 2085;
    v77 = (v47 + *(v103 + 20));
    v79 = *v77;
    v78 = v77[1];
    v80 = v71;

    sub_10048C324(v47);
    v81 = sub_1002346CC(v79, v78, v107);

    *(v75 + 14) = v81;
    *(v75 + 22) = 2085;
    *(v75 + 24) = sub_1002346CC(v93, v31, v107);
    *(v75 + 32) = 2085;
    *(v75 + 34) = sub_1002346CC(v94, v104, v107);
    v82 = v73;
    v83 = v91;
    _os_log_impl(&_mh_execute_header, v91, v82, "[%@] Fetched token '%{sensitive}s' for account: %{sensitive}s@%{sensitive}s", v75, 0x2Au);
    sub_1001F8084(v92);

    swift_arrayDestroy();

    sub_100007158(v96, v97);

    (*(v100 + 8))(v89, v99);
  }

  else
  {
    sub_100007158(v96, v97);

    sub_10048C324(v47);
    (*(v100 + 8))(v48, v99);
  }

  v84 = v102;
  sub_100391AA8(v46, v102);
  v69 = v84;
  v68 = 0;
LABEL_20:
  (*(v101 + 56))(v69, v68, 1, v103);
  return swift_unknownObjectRelease();
}

uint64_t sub_10048A9A4(void *a1)
{
  v3 = v1;
  v5 = sub_1001F0C48(&qword_100784998);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v15 - v7;
  sub_100006D8C(a1, a1[3]);
  sub_10048C380();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29 = 0;
  type metadata accessor for UUID();
  sub_10048C428(&qword_1007849A0, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v3 + *(type metadata accessor for OAuthCredential() + 20);
    v11 = *(v10 + 48);
    v12 = *(v10 + 16);
    v24 = *(v10 + 32);
    v25 = v11;
    v13 = *(v10 + 48);
    v26 = *(v10 + 64);
    v14 = *(v10 + 16);
    v23[0] = *v10;
    v23[1] = v14;
    v19 = v24;
    v20 = v13;
    v21 = *(v10 + 64);
    v27 = *(v10 + 80);
    v22 = *(v10 + 80);
    v17 = v23[0];
    v18 = v12;
    v28 = 1;
    sub_100391998(v23, v15);
    sub_10048C470();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15[2] = v19;
    v15[3] = v20;
    v15[4] = v21;
    v16 = v22;
    v15[0] = v17;
    v15[1] = v18;
    sub_1003919F4(v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10048AC10@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v28 = type metadata accessor for UUID();
  v25 = *(v28 - 8);
  __chkstk_darwin(v28);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1001F0C48(&qword_100784978);
  v7 = *(v6 - 8);
  v26 = v6;
  v27 = v7;
  __chkstk_darwin(v6);
  v9 = &v22 - v8;
  v10 = type metadata accessor for OAuthCredential();
  __chkstk_darwin(v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006D8C(a1, a1[3]);
  sub_10048C380();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000710C(a1);
  }

  v23 = v10;
  v13 = v12;
  v14 = v25;
  LOBYTE(v29) = 0;
  sub_10048C428(&qword_100784988, &type metadata accessor for UUID);
  v15 = v28;
  v16 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 32))(v13, v5, v15);
  v35 = 1;
  sub_10048C3D4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v27 + 8))(v9, v16);
  v17 = v24;
  v18 = v13 + *(v23 + 20);
  v19 = v32;
  *(v18 + 32) = v31;
  *(v18 + 48) = v19;
  *(v18 + 64) = v33;
  *(v18 + 80) = v34;
  v20 = v30;
  *v18 = v29;
  *(v18 + 16) = v20;
  sub_100391934(v13, v17);
  sub_10000710C(a1);
  return sub_10048C324(v13);
}

uint64_t sub_10048AF8C()
{
  if (*v0)
  {
    return 0x6E656B6F74;
  }

  else
  {
    return 0x4449746E65696C63;
  }
}

uint64_t sub_10048AFC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449746E65696C63 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E656B6F74 && a2 == 0xE500000000000000)
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

uint64_t sub_10048B09C(uint64_t a1)
{
  v2 = sub_10048C380();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10048B0D8(uint64_t a1)
{
  v2 = sub_10048C380();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10048B144(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v34 = type metadata accessor for Logger();
  v33 = *(v34 - 8);
  v8 = __chkstk_darwin(v34);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v32 = &v28 - v10;
  sub_1001F0C48(&qword_100781718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A4050;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassInternetPassword;
  *(inited + 64) = v12;
  *(inited + 72) = kSecAttrAccount;
  v30 = a1;
  *(inited + 80) = a1;
  *(inited + 88) = a2;
  *(inited + 104) = &type metadata for String;
  *(inited + 112) = kSecAttrServer;
  *(inited + 144) = &type metadata for String;
  v31 = a3;
  *(inited + 120) = a3;
  *(inited + 128) = a4;
  v13 = kSecClass;
  v14 = kSecClassInternetPassword;
  v15 = kSecAttrAccount;

  v16 = kSecAttrServer;

  sub_1005289DC(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100781720);
  swift_arrayDestroy();
  sub_10048C428(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v18 = SecItemDelete(isa);

  if (v18 && v18 != -25300)
  {
    v24 = v29;
    static Logger.oauth.getter();

    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v27 = 136643331;
      *(v27 + 4) = sub_1002346CC(v30, a2, &v35);
      *(v27 + 12) = 2085;
      *(v27 + 14) = sub_1002346CC(v31, a4, &v35);
      *(v27 + 22) = 1024;
      *(v27 + 24) = v18;
      _os_log_impl(&_mh_execute_header, v25, v26, "Error invalidating token for account: %{sensitive}s@%{sensitive}s status: %d", v27, 0x1Cu);
      swift_arrayDestroy();
    }

    return (*(v33 + 8))(v24, v34);
  }

  else
  {
    v19 = v32;
    static Logger.oauth.getter();

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v22 = 136643075;
      *(v22 + 4) = sub_1002346CC(v30, a2, &v35);
      *(v22 + 12) = 2085;
      *(v22 + 14) = sub_1002346CC(v31, a4, &v35);
      _os_log_impl(&_mh_execute_header, v20, v21, "Invalidated token for account: %{sensitive}s@%{sensitive}s", v22, 0x16u);
      swift_arrayDestroy();
    }

    return (*(v33 + 8))(v19, v34);
  }
}

uint64_t sub_10048B61C(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v97 = a2;
  v98 = a4;
  v99 = type metadata accessor for OAuthCredential();
  v10 = __chkstk_darwin(v99);
  v90 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = &v84 - v12;
  v14 = type metadata accessor for Logger();
  v100 = *(v14 - 8);
  v15 = __chkstk_darwin(v14);
  v17 = &v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v92 = &v84 - v19;
  v20 = __chkstk_darwin(v18);
  v91 = &v84 - v21;
  __chkstk_darwin(v20);
  v23 = &v84 - v22;
  static Logger.oauth.getter();
  v96 = a1;
  sub_100391934(a1, v13);

  v24 = a6;
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();

  LODWORD(v93) = v26;
  v27 = os_log_type_enabled(v25, v26);
  v101 = a5;
  v94 = v24;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v89 = v17;
    v29 = v28;
    v30 = swift_slowAlloc();
    v87 = v30;
    v88 = swift_slowAlloc();
    v102[0] = v88;
    *v29 = 138413059;
    *(v29 + 4) = v24;
    *v30 = v24;
    *(v29 + 12) = 2085;
    v31 = &v13[*(v99 + 20)];
    v86 = v25;
    v32 = v24;
    v33 = a3;
    v34 = *v31;
    v35 = v31[1];
    v36 = v32;

    sub_10048C324(v13);
    v37 = sub_1002346CC(v34, v35, v102);
    a3 = v33;

    *(v29 + 14) = v37;
    v38 = v100;
    *(v29 + 22) = 2085;
    *(v29 + 24) = sub_1002346CC(v97, v33, v102);
    *(v29 + 32) = 2085;
    *(v29 + 34) = sub_1002346CC(v98, a5, v102);
    v39 = v86;
    _os_log_impl(&_mh_execute_header, v86, v93, "[%@] Storing token '%{sensitive}s' for user: %{sensitive}s@%{sensitive}s", v29, 0x2Au);
    sub_1001F8084(v87);

    swift_arrayDestroy();

    v40 = *(v38 + 8);
  }

  else
  {

    sub_10048C324(v13);
    v40 = *(v100 + 8);
  }

  v40(v23, v14);
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  sub_10048C428(&qword_100784960, type metadata accessor for OAuthCredential);
  v41 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v95 = v14;
  v93 = v40;
  v42 = v41;
  v88 = v41;
  v89 = v43;

  sub_1001F0C48(&qword_100781718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006A8420;
  *(inited + 32) = kSecClass;
  v84 = kSecClass;
  v85 = inited + 32;
  type metadata accessor for CFString(0);
  v87 = v45;
  *(inited + 40) = kSecClassInternetPassword;
  *(inited + 64) = v45;
  *(inited + 72) = kSecAttrAccessible;
  *(inited + 80) = kSecAttrAccessibleAfterFirstUnlock;
  *(inited + 104) = v45;
  *(inited + 112) = kSecAttrAccount;
  *(inited + 120) = v97;
  *(inited + 128) = a3;
  *(inited + 144) = &type metadata for String;
  *(inited + 152) = kSecAttrServer;
  v46 = v101;
  *(inited + 160) = v98;
  *(inited + 168) = v46;
  *(inited + 184) = &type metadata for String;
  *(inited + 192) = kSecValueData;
  *(inited + 224) = &type metadata for Data;
  *(inited + 200) = v42;
  v47 = v89;
  *(inited + 208) = v89;
  v86 = a3;

  v48 = v84;
  v49 = kSecClassInternetPassword;
  v50 = kSecAttrAccessible;
  v51 = kSecAttrAccessibleAfterFirstUnlock;
  v52 = kSecAttrAccount;
  v53 = kSecAttrServer;
  v54 = kSecValueData;
  sub_10020ABFC(v88, v47);
  sub_1005289DC(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100781720);
  swift_arrayDestroy();
  v55 = sub_10048C428(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v57 = SecItemAdd(isa, 0);

  if (v57 == -25299)
  {
    v85 = v55;
    v58 = v91;
    static Logger.oauth.getter();
    v59 = v90;
    sub_100391934(v96, v90);

    v60 = v101;

    v61 = v94;
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v102[0] = v96;
      *v64 = 138413059;
      *(v64 + 4) = v61;
      *v65 = v61;
      *(v64 + 12) = 2085;
      v66 = (v59 + *(v99 + 20));
      v67 = *v66;
      v68 = v66[1];
      v69 = v61;

      sub_10048C324(v59);
      v70 = sub_1002346CC(v67, v68, v102);

      *(v64 + 14) = v70;
      *(v64 + 22) = 2085;
      v71 = v97;
      v72 = v86;
      *(v64 + 24) = sub_1002346CC(v97, v86, v102);
      *(v64 + 32) = 2085;
      v73 = v98;
      *(v64 + 34) = sub_1002346CC(v98, v101, v102);
      _os_log_impl(&_mh_execute_header, v62, v63, "[%@] Item already exists, updating token '%{sensitive}s' for user: %{sensitive}s@%{sensitive}s", v64, 0x2Au);
      sub_1001F8084(v65);

      swift_arrayDestroy();

      v60 = v101;

      v93(v91, v95);
    }

    else
    {

      sub_10048C324(v59);
      v93(v58, v95);
      v71 = v97;
      v73 = v98;
      v72 = v86;
    }

    v74 = v92;
    sub_10048B144(v71, v72, v73, v60);
    v83 = Dictionary._bridgeToObjectiveC()().super.isa;

    v57 = SecItemAdd(v83, 0);

    if (!v57)
    {
      return sub_100007158(v88, v89);
    }
  }

  else
  {

    v72 = v86;
    v74 = v92;
    if (!v57)
    {
      return sub_100007158(v88, v89);
    }
  }

  static Logger.oauth.getter();

  v75 = v94;
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.fault.getter();

  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v102[0] = swift_slowAlloc();
    *v78 = 138413059;
    *(v78 + 4) = v75;
    *v79 = v75;
    *(v78 + 12) = 2085;
    v80 = v75;
    *(v78 + 14) = sub_1002346CC(v97, v72, v102);
    *(v78 + 22) = 2085;
    *(v78 + 24) = sub_1002346CC(v98, v101, v102);
    *(v78 + 32) = 1024;
    *(v78 + 34) = v57;
    _os_log_impl(&_mh_execute_header, v76, v77, "[%@] Error storing token for account: %{sensitive}s@%{sensitive}s status: %d", v78, 0x26u);
    sub_1001F8084(v79);

    swift_arrayDestroy();

    sub_100007158(v88, v89);
    v81 = v92;
  }

  else
  {
    sub_100007158(v88, v89);

    v81 = v74;
  }

  return (v93)(v81, v95);
}

uint64_t sub_10048C324(uint64_t a1)
{
  v2 = type metadata accessor for OAuthCredential();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10048C380()
{
  result = qword_100784980;
  if (!qword_100784980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784980);
  }

  return result;
}

unint64_t sub_10048C3D4()
{
  result = qword_100784990;
  if (!qword_100784990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784990);
  }

  return result;
}

uint64_t sub_10048C428(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10048C470()
{
  result = qword_1007849A8;
  if (!qword_1007849A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007849A8);
  }

  return result;
}

uint64_t sub_10048C4C4()
{
  v60 = type metadata accessor for Logger();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v59 = &v49 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for OAuthCredential();
  __chkstk_darwin(v62);
  v61 = &v49 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_100781718);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10069F230;
  *(inited + 32) = kSecClass;
  type metadata accessor for CFString(0);
  *(inited + 40) = kSecClassInternetPassword;
  *(inited + 64) = v3;
  *(inited + 72) = kSecMatchLimit;
  *(inited + 80) = kSecMatchLimitAll;
  *(inited + 104) = v3;
  *(inited + 112) = kSecReturnAttributes;
  *(inited + 120) = 1;
  *(inited + 144) = &type metadata for Bool;
  *(inited + 152) = kSecReturnData;
  *(inited + 184) = &type metadata for Bool;
  *(inited + 160) = 1;
  v4 = kSecClass;
  v5 = kSecClassInternetPassword;
  v6 = kSecMatchLimit;
  v7 = kSecMatchLimitAll;
  v8 = kSecReturnAttributes;
  v9 = kSecReturnData;
  sub_1005289DC(inited);
  swift_setDeallocating();
  sub_1001F0C48(&qword_100781720);
  swift_arrayDestroy();
  v66 = 0;
  sub_10048C428(&qword_10077E8A8, type metadata accessor for CFString);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = SecItemCopyMatching(isa, &v66);

  if (!v11)
  {
    if (v66)
    {
      v65[0] = v66;
      swift_unknownObjectRetain();
      sub_1001F0C48(&qword_1007849B0);
      if (swift_dynamicCast())
      {
        v12 = *(v63 + 16);
        v55 = v63;
        if (v12)
        {
          v13 = kSecValueData;
          v14 = v63 + 32;
          v54 = kSecAttrAccount;
          v53 = kSecAttrServer;
          v56 = _swiftEmptyArrayStorage;
          v15 = &type metadata for Data;
          *&v57 = kSecValueData;
          while (1)
          {
            v20 = *v14;
            if (*(*v14 + 16))
            {

              v21 = sub_10052221C(v13);
              if (v22)
              {
                sub_10020A6D0(*(v20 + 56) + 32 * v21, v65);
                if (swift_dynamicCast())
                {
                  v16 = v15;
                  v18 = v63;
                  v17 = v64;
                  type metadata accessor for JSONDecoder();
                  swift_allocObject();
                  JSONDecoder.init()();
                  sub_10048C428(&qword_100784970, type metadata accessor for OAuthCredential);
                  v19 = v61;
                  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
                  sub_10048C324(v19);

                  if (!*(v20 + 16) || (v23 = sub_10052221C(v54), (v24 & 1) == 0))
                  {
                    sub_100007158(v18, v17);

                    v15 = v16;
                    v13 = v57;
                    goto LABEL_7;
                  }

                  sub_10020A6D0(*(v20 + 56) + 32 * v23, v65);
                  v15 = v16;
                  if ((swift_dynamicCast() & 1) == 0)
                  {

                    sub_100007158(v18, v17);
                    v13 = v57;
                    goto LABEL_7;
                  }

                  v13 = v57;
                  if (*(v20 + 16) && (v51 = v63, v52 = v64, v25 = sub_10052221C(v53), (v26 & 1) != 0))
                  {
                    sub_10020A6D0(*(v20 + 56) + 32 * v25, v65);

                    if (swift_dynamicCast())
                    {
                      v49 = v64;
                      v50 = v63;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        v56 = sub_100362DA8(0, *(v56 + 2) + 1, 1, v56);
                      }

                      v28 = *(v56 + 2);
                      v27 = *(v56 + 3);
                      if (v28 >= v27 >> 1)
                      {
                        v56 = sub_100362DA8((v27 > 1), v28 + 1, 1, v56);
                      }

                      sub_100007158(v18, v17);
                      v29 = v56;
                      *(v56 + 2) = v28 + 1;
                      v30 = &v29[32 * v28];
                      v31 = v52;
                      *(v30 + 4) = v51;
                      *(v30 + 5) = v31;
                      v32 = v49;
                      *(v30 + 6) = v50;
                      *(v30 + 7) = v32;
                      goto LABEL_7;
                    }

                    sub_100007158(v18, v17);
                  }

                  else
                  {
                    sub_100007158(v18, v17);
                  }
                }
              }
            }

LABEL_7:
            v14 += 8;
            if (!--v12)
            {
              goto LABEL_28;
            }
          }
        }

        v56 = _swiftEmptyArrayStorage;
LABEL_28:

        if (*(v56 + 2))
        {
          v33 = sub_10060F2D4(v56);

          v35 = v33[2];
          if (v35)
          {
            v36 = v59;
            v37 = v58 + 1;
            v56 = v33;
            v38 = v33 + 7;
            *&v34 = 136643075;
            v57 = v34;
            ++v58;
            do
            {
              v39 = *(v38 - 3);
              v40 = *(v38 - 2);
              v41 = *v38;
              v62 = *(v38 - 1);

              static Logger.oauth.getter();

              v42 = Logger.logObject.getter();
              v43 = static os_log_type_t.debug.getter();

              if (os_log_type_enabled(v42, v43))
              {
                v44 = swift_slowAlloc();
                v61 = v39;
                v45 = v44;
                v65[0] = swift_slowAlloc();
                *v45 = v57;

                v46 = sub_1002346CC(v61, v40, v65);

                *(v45 + 4) = v46;
                *(v45 + 12) = 2085;

                v47 = sub_1002346CC(v62, v41, v65);

                *(v45 + 14) = v47;
                v37 = v58;
                _os_log_impl(&_mh_execute_header, v42, v43, "Invalidating stale token for account: %{sensitive}s@%{sensitive}s", v45, 0x16u);
                swift_arrayDestroy();
                v36 = v59;

                v39 = v61;
              }

              (*v37)(v36, v60);
              sub_10048B144(v39, v40, v62, v41);

              v38 += 4;
              --v35;
            }

            while (v35);
          }
        }
      }
    }
  }

  return swift_unknownObjectRelease();
}

unint64_t sub_10048CD44()
{
  result = qword_1007849B8;
  if (!qword_1007849B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007849B8);
  }

  return result;
}

unint64_t sub_10048CD9C()
{
  result = qword_1007849C0;
  if (!qword_1007849C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007849C0);
  }

  return result;
}

unint64_t sub_10048CDF4()
{
  result = qword_1007849C8;
  if (!qword_1007849C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007849C8);
  }

  return result;
}

uint64_t sub_10048CE48()
{
  container_get_error_description();

  return String.init(cString:)();
}

uint64_t sub_10048CE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = 1;
  if (container_system_path_for_identifier())
  {
    String.init(cString:)();
    v5 = objc_allocWithZone(NSURL);
    v6 = String._bridgeToObjectiveC()();

    v7 = [v5 initFileURLWithPath:v6];

    v16 = 0;
    v8 = [v7 setResourceValue:NSURLFileProtectionCompleteUntilFirstUserAuthentication forKey:NSURLFileProtectionKey error:&v16];
    v9 = v16;
    if (v8)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      if (a1)
      {
        v10 = v9;
        sub_10048D09C(a1);
        if (v2)
        {

          v11 = type metadata accessor for URL();
          return (*(*(v11 - 8) + 8))(a2, v11);
        }
      }

      else
      {
        v15 = v9;
      }
    }

    else
    {
      v14 = v16;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    sub_10048DA20();
    swift_allocError();
    *v13 = v17;
    return swift_willThrow();
  }
}

uint64_t sub_10048D09C(uint64_t a1)
{
  v3 = v2;
  v70 = a1;
  v4 = type metadata accessor for Logger();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = __chkstk_darwin(v4);
  v7 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v66 = v56 - v8;
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v56 - v14;
  v68 = *(v10 + 16);
  v69 = v10 + 16;
  v68(v56 - v14, v1, v9);
  sub_1005D79D0(0);
  v16 = [objc_opt_self() defaultManager];
  URL._bridgeToObjectiveC()(v17);
  v19 = v18;
  v72[0] = 0;
  v20 = [v16 contentsOfDirectoryAtURL:v18 includingPropertiesForKeys:0 options:0 error:v72];

  v21 = v72[0];
  if (v20)
  {
    v22 = v10;
    v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v21;

    v26 = v23;
    v27 = *(v23 + 16);
    if (v27)
    {
      v58 = v7;
      v57 = v15;
      v28 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v56[1] = v26;
      v29 = v26 + v28;
      v67 = *(v22 + 72);
      v62 = v64 + 1;
      v63 = 0x80000001006CBBB0;
      v30 = (v22 + 8);
      *&v25 = 136315138;
      v59 = v25;
      v60 = v9;
      v64 = v30;
      while (1)
      {
        v68(v13, v29, v9);
        swift_beginAccess();
        v32 = URL.lastPathComponent.getter();
        v34 = v33;
        v71[0] = v32;
        v71[1] = v33;
        __chkstk_darwin(v32);
        v56[-2] = v71;
        if (sub_10020A1BC(sub_1001F7FFC, &v56[-4], v70))
        {
          break;
        }

        if (v32 == 0xD000000000000032 && v63 == v34)
        {
        }

        else
        {
          v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v44 & 1) == 0)
          {
            v45 = v58;
            static Logger.general.getter();
            v46 = Logger.logObject.getter();
            v47 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v46, v47))
            {
              v48 = swift_slowAlloc();
              v61 = v3;
              v49 = v48;
              v50 = swift_slowAlloc();
              v71[0] = v50;
              *v49 = v59;
              sub_1003C7308();
              v51 = dispatch thunk of CustomStringConvertible.description.getter();
              v53 = sub_1002346CC(v51, v52, v71);

              *(v49 + 4) = v53;
              v9 = v60;
              _os_log_impl(&_mh_execute_header, v46, v47, "Update backup to exclude of url: %s", v49, 0xCu);
              sub_10000710C(v50);

              v3 = v61;

              (*v62)(v58, v65);
            }

            else
            {

              (*v62)(v45, v65);
            }

            swift_beginAccess();
            sub_1005D79D0(1);
            swift_endAccess();
            goto LABEL_15;
          }
        }

LABEL_5:
        v31 = *v30;
        (*v30)(v13, v9);
        v29 += v67;
        if (!--v27)
        {

          v15 = v57;
          return (v31)(v15, v9);
        }
      }

      swift_beginAccess();
      sub_1005D79D0(0);
      swift_endAccess();
      v35 = v66;
      static Logger.general.getter();
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v61 = v3;
        v39 = v38;
        v40 = swift_slowAlloc();
        v71[0] = v40;
        *v39 = v59;
        sub_1003C7308();
        v41 = dispatch thunk of CustomStringConvertible.description.getter();
        v43 = sub_1002346CC(v41, v42, v71);

        *(v39 + 4) = v43;
        _os_log_impl(&_mh_execute_header, v36, v37, "Update backup to allow of url: %s", v39, 0xCu);
        sub_10000710C(v40);
        v9 = v60;

        v3 = v61;

        (*v62)(v66, v65);
      }

      else
      {

        (*v62)(v35, v65);
      }

LABEL_15:
      v30 = v64;
      goto LABEL_5;
    }

    v31 = *(v22 + 8);
    return (v31)(v15, v9);
  }

  else
  {
    v54 = v72[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v10 + 8))(v15, v9);
  }
}

uint64_t sub_10048D790@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v21 = 1;
  String.utf8CString.getter();

  v5 = container_system_group_path_for_identifier();

  if (v5)
  {
    String.init(cString:)();
    v6 = objc_allocWithZone(NSURL);
    v7 = String._bridgeToObjectiveC()();

    v8 = [v6 initFileURLWithPath:v7];

    v20 = 0;
    v9 = [v8 setResourceValue:NSURLFileProtectionCompleteUntilFirstUserAuthentication forKey:NSURLFileProtectionKey error:&v20];
    v10 = v20;
    if ((v9 & 1) != 0 && (v11 = v20, isa = Bool._bridgeToObjectiveC()().super.super.isa, v20 = 0, v13 = [v8 setResourceValue:isa forKey:NSURLIsExcludedFromBackupKey error:&v20], isa, v10 = v20, v13))
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();
      if (a1)
      {
        v14 = v10;
        sub_10048D09C(a1);
        if (v2)
        {

          v15 = type metadata accessor for URL();
          return (*(*(v15 - 8) + 8))(a2, v15);
        }
      }

      else
      {
        v19 = v10;
      }
    }

    else
    {
      v17 = v10;

      _convertNSErrorToError(_:)();

      swift_willThrow();
    }
  }

  else
  {

    sub_10048DA20();
    swift_allocError();
    *v18 = v21;
    return swift_willThrow();
  }
}

unint64_t sub_10048DA20()
{
  result = qword_1007849D0;
  if (!qword_1007849D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1007849D0);
  }

  return result;
}

uint64_t sub_10048DA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[33] = a4;
  v5[34] = a5;
  v5[31] = a2;
  v5[32] = a3;
  v5[30] = a1;
  v6 = type metadata accessor for URL();
  v5[35] = v6;
  v5[36] = *(v6 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v7 = type metadata accessor for URLRequest();
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  v8 = type metadata accessor for JSONDecoder.KeyDecodingStrategy();
  v5[44] = v8;
  v5[45] = *(v8 - 8);
  v5[46] = swift_task_alloc();

  return _swift_task_switch(sub_10048DC28, 0, 0);
}

uint64_t sub_10048DC28()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v3 = *(v0 + 352);
  v4 = *(v0 + 304);
  v5 = *(v0 + 280);
  v6 = *(v0 + 288);
  v8 = *(v0 + 256);
  v7 = *(v0 + 264);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v0 + 376) = JSONDecoder.init()();
  (*(v2 + 104))(v1, enum case for JSONDecoder.KeyDecodingStrategy.convertFromSnakeCase(_:), v3);
  dispatch thunk of JSONDecoder.keyDecodingStrategy.setter();
  *(v0 + 104) = v8;
  *(v0 + 144) = 1;
  v9 = *(v6 + 16);

  v9(v4, v7, v5);
  v10 = sub_10051E1C4();
  v11 = *(v0 + 336);
  v12 = *(v0 + 304);
  v31 = *(v0 + 312);
  v32 = *(v0 + 344);
  v13 = *(v0 + 296);
  v29 = *(v0 + 288);
  v30 = *(v0 + 320);
  v14 = *(v0 + 280);
  v33 = *(v0 + 248);
  v34 = *(v0 + 328);
  v16 = v15;
  v17 = v10;
  sub_100391884(v0 + 104, v0 + 152);
  v18 = *(v0 + 192);
  sub_1003918E0(v0 + 152);
  v9(v13, v12, v14);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  sub_10020ABFC(v17, v16);
  URLRequest.httpBody.setter();
  if (v18)
  {
    v19 = 0xD000000000000021;
  }

  else
  {
    v19 = 0xD000000000000010;
  }

  if (v18)
  {
    v20 = "corator";
  }

  else
  {
    v20 = "quest8@NSError16";
  }

  v21._countAndFlagsBits = 0x2D746E65746E6F43;
  v21._object = 0xEC00000065707954;
  v22 = v20 | 0x8000000000000000;
  URLRequest.setValue(_:forHTTPHeaderField:)(*&v19, v21);

  sub_100007158(v17, v16);
  (*(v29 + 8))(v12, v14);
  (*(v30 + 32))(v32, v11, v31);
  (*(v30 + 16))(v34, v32, v31);
  v23.value._countAndFlagsBits = sub_10051E4A4(*(v33 + 24));
  v24._countAndFlagsBits = 0x6567412D72657355;
  v24._object = 0xEA0000000000746ELL;
  URLRequest.setValue(_:forHTTPHeaderField:)(v23, v24);

  URLRequest.timeoutInterval.setter();
  URLRequest.cachePolicy.setter();
  v25 = swift_task_alloc();
  *(v0 + 384) = v25;
  *v25 = v0;
  v25[1] = sub_10048DFF4;
  v26 = *(v0 + 328);
  v27 = *(v0 + 272);

  return sub_10051E728(v26, v27);
}

uint64_t sub_10048DFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v5[49] = a1;
  v5[50] = a2;
  v5[51] = a3;
  v5[52] = v3;

  if (v3)
  {
    v6 = sub_10048E3D0;
  }

  else
  {
    v6 = sub_10048E10C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10048E10C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 344);
  v3 = *(v0 + 312);
  v4 = *(*(v0 + 320) + 8);
  v4(*(v0 + 328), v3);
  v4(v2, v3);
  sub_1003918E0(v0 + 104);
  v5 = [v1 statusCode];
  v6 = *(v0 + 416);
  if (v5 == 200)
  {
    sub_10048C3D4();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v7 = v6;
    v9 = *(v0 + 400);
    v8 = *(v0 + 408);
    v10 = *(v0 + 392);
    if (!v7)
    {
      v18 = *(v0 + 240);

      sub_100007158(v10, v9);

      v19 = *(v0 + 32);
      *v18 = *(v0 + 16);
      *(v18 + 16) = v19;
      v20 = *(v0 + 48);
      v21 = *(v0 + 64);
      v22 = *(v0 + 80);
      *(v18 + 80) = *(v0 + 96);
      *(v18 + 48) = v21;
      *(v18 + 64) = v22;
      *(v18 + 32) = v20;

      v23 = *(v0 + 8);
      goto LABEL_10;
    }

    v11 = v10;
    v12 = v9;
  }

  else
  {
    sub_10048E4C0();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v13 = *(v0 + 400);
    v14 = *(v0 + 408);
    v15 = *(v0 + 392);
    if (v6)
    {

      v16 = [v14 statusCode];
      sub_10039403C();
      swift_allocError();
      *v17 = v16;
      *(v17 + 8) = 0;
    }

    else
    {
      v24 = *(v0 + 232);
      sub_10048E514();
      v27 = *(v0 + 216);
      v28 = *(v0 + 200);
      swift_allocError();
      *v25 = v28;
      *(v25 + 16) = v27;
      *(v25 + 32) = v24;
    }

    swift_willThrow();

    v11 = v15;
    v12 = v13;
  }

  sub_100007158(v11, v12);

  v23 = *(v0 + 8);
LABEL_10:

  return v23();
}

uint64_t sub_10048E3D0()
{
  v1 = v0[43];
  v2 = v0[39];
  v3 = *(v0[40] + 8);
  v3(v0[41], v2);
  v3(v1, v2);
  sub_1003918E0((v0 + 13));

  v4 = v0[1];

  return v4();
}

unint64_t sub_10048E4C0()
{
  result = qword_100784A68;
  if (!qword_100784A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784A68);
  }

  return result;
}

unint64_t sub_10048E514()
{
  result = qword_100784A70;
  if (!qword_100784A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784A70);
  }

  return result;
}

void sub_10048E568()
{
  sub_100526324(0, 43, 0);
  while (1)
  {
    swift_stdlib_random();
  }
}

unint64_t sub_10048E6B0()
{
  result = qword_100784A80;
  if (!qword_100784A80)
  {
    sub_1001F76D0(&qword_100784A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784A80);
  }

  return result;
}

id sub_10048E714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v22 = a2;
  v23 = a3;
  v20 = a1;
  ObjectType = swift_getObjectType();
  v19 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v19 - 8);
  __chkstk_darwin(v19);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  __chkstk_darwin(v8);
  v9 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v9 - 8);
  sub_100310C7C();
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_100491F68(&qword_100784B70, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_1001F0C48(&unk_1007801C0);
  sub_100006344();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v19);
  *(v3 + 2) = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  *&v3[OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor] = 0;
  v11 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_coordinatorID;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = &v4[v11];
  v15 = v20;
  (*(v13 + 16))(v14, v20, v12);
  v16 = v23;
  *&v4[v10] = v22;
  *&v4[OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_logKey] = v16;
  v24.receiver = v4;
  v24.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v24, "init");
  (*(v13 + 8))(v15, v12);
  return v17;
}

uint64_t sub_10048EA18()
{
  v1[6] = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = sub_100491F68(&unk_1007803D0, type metadata accessor for StreamingExtractor);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[11] = v3;
  v1[12] = v4;

  return _swift_task_switch(sub_10048EB64, v3, v4);
}

uint64_t sub_10048EB64()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v0[13] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[19] = v3;
    v4 = v0[10];
    v5 = swift_task_alloc();
    v0[20] = v5;
    *(v5 + 16) = v3;
    v6 = v3;
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_10048F4FC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, v1, v4, 0x2865726170657270, 0xE900000000000029, sub_100491DBC, v5, &type metadata for UInt64);
  }

  v8 = sub_1005F8634((v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_coordinatorID));
  v0[14] = v8;
  if (v8)
  {
    v9 = v8;
    v0[2] = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
    v10 = swift_dynamicCastObjCProtocolConditional();
    v0[15] = v10;
    if (v10)
    {
      v11 = v9;

      return _swift_task_switch(sub_10048EE1C, 0, 0);
    }
  }

  type metadata accessor for InternalError();
  sub_100491F68(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_10048EE1C()
{
  *(v0 + 24) = &OBJC_PROTOCOL___IXCoordinatorWithAppAssetPromise;
  v1 = *(v0 + 120);
  v2 = swift_dynamicCastObjCProtocolUnconditional();
  v3 = v1;
  if ([v2 hasAppAssetPromise])
  {
    *(v0 + 32) = 0;
    v4 = [v2 appAssetPromiseWithError:v0 + 32];
    *(v0 + 128) = v4;
    v5 = *(v0 + 32);
    v6 = *(v0 + 112);
    if (v4)
    {
      v7 = v4;
      v8 = v5;

      objc_opt_self();
      v9 = swift_dynamicCastObjCClass();
      *(v0 + 136) = v9;
      if (v9)
      {
        v10 = *(v0 + 88);
        v11 = *(v0 + 96);
        v12 = sub_10048F174;
      }

      else
      {

        v10 = *(v0 + 88);
        v11 = *(v0 + 96);
        v12 = sub_10048F064;
      }
    }

    else
    {
      v13 = v5;
      *(v0 + 144) = _convertNSErrorToError(_:)();

      swift_willThrow();
      v10 = *(v0 + 88);
      v11 = *(v0 + 96);
      v12 = sub_10048EFC8;
    }
  }

  else
  {

    v10 = *(v0 + 88);
    v11 = *(v0 + 96);
    v12 = sub_100491FC8;
  }

  return _swift_task_switch(v12, v10, v11);
}

uint64_t sub_10048EFC8()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10048F064()
{
  v1 = *(v0 + 112);

  type metadata accessor for InternalError();
  sub_100491F68(&qword_10077F900, type metadata accessor for InternalError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10048F174()
{
  v1 = v0[16];
  static Logger.download.getter();

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[17];
  if (v5)
  {
    v7 = v0[16];
    v8 = v0[14];
    v9 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412546;
    v12 = *(v9 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_logKey);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2114;
    *(v10 + 14) = v6;
    *v11 = v12;
    v11[1] = v6;
    v13 = v7;
    v14 = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Preparing for download using: %{public}@", v10, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
  }

  else
  {
    v15 = v0[14];
  }

  v16 = v0[13];
  v17 = v0[6];
  (*(v0[8] + 8))(v0[9], v0[7]);
  v18 = *(v17 + v16);
  *(v17 + v16) = v6;

  v19 = *(v17 + v16);
  if (v19)
  {
    v0[19] = v19;
    v20 = v0[10];
    v21 = v0[6];
    v22 = swift_task_alloc();
    v0[20] = v22;
    *(v22 + 16) = v19;
    v23 = v19;
    v24 = swift_task_alloc();
    v0[21] = v24;
    *v24 = v0;
    v24[1] = sub_10048F4FC;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 5, v21, v20, 0x2865726170657270, 0xE900000000000029, sub_100491DBC, v22, &type metadata for UInt64);
  }

  else
  {
    type metadata accessor for InternalError();
    sub_100491F68(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_10048F4FC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10048F6F8;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_10048F64C;
  }

  return _swift_task_switch(v5, v3, v4);
}

uint64_t sub_10048F64C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_10048F6F8()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_10048F798(uint64_t a1, void *a2)
{
  v4 = sub_1001F0C48(&qword_100784B58);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_100491DC4;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10048F9C8;
  aBlock[3] = &unk_100766148;
  v10 = _Block_copy(aBlock);

  [a2 prepareForExtraction:v10];
  _Block_release(v10);
}

uint64_t sub_10048F948(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    swift_errorRetain();
    sub_1001F0C48(&qword_100784B58);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&qword_100784B58);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_10048F9C8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_10048FA40(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  swift_getObjectType();
  v4 = sub_1001F0C48(&unk_100784AE0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  sub_100491F68(&unk_1007803D0, type metadata accessor for StreamingExtractor);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[24] = v6;
  v3[25] = v5;

  return _swift_task_switch(sub_10048FB64, v6, v5);
}

uint64_t sub_10048FB64()
{
  v1 = *(v0[20] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor);
  v0[26] = v1;
  if (v1)
  {
    v3 = v0[22];
    v2 = v0[23];
    v4 = v0[21];
    v9 = v1;
    isa = Data._bridgeToObjectiveC()().super.isa;
    v0[27] = isa;
    v0[2] = v0;
    v0[7] = v0 + 29;
    v0[3] = sub_10048FE0C;
    swift_continuation_init();
    v0[17] = v4;
    v6 = sub_10020A748(v0 + 14);
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v3 + 32))(v6, v2, v4);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_100490044;
    v0[13] = &unk_1007660F8;
    [v9 supplyBytes:isa withCompletionBlock:v0 + 10];
    (*(v3 + 8))(v6, v4);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    type metadata accessor for InternalError();
    sub_100491F68(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v7 = v0[1];

    return v7(0);
  }
}

uint64_t sub_10048FE0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 200);
  v4 = *(v1 + 192);
  if (v2)
  {
    v5 = sub_10048FFC0;
  }

  else
  {
    v5 = sub_10048FF3C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10048FF3C()
{
  v1 = *(v0 + 216);

  v2 = *(v0 + 232);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10048FFC0()
{
  v1 = v0[27];
  v2 = v0[26];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

void sub_100490044(uint64_t a1, void *a2)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1004900E8()
{
  v1[19] = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[20] = v2;
  v1[21] = *(v2 - 8);
  v1[22] = swift_task_alloc();
  v3 = sub_1001F0C48(&qword_100784B58);
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  sub_100491F68(&unk_1007803D0, type metadata accessor for StreamingExtractor);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[26] = v5;
  v1[27] = v4;

  return _swift_task_switch(sub_100490264, v5, v4);
}

uint64_t sub_100490264()
{
  v1 = v0[19];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v3 = *(v1 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor);
  v0[28] = v3;
  *(v1 + v2) = 0;
  if (!v3)
  {
LABEL_4:

    v5 = v0[1];

    return v5();
  }

  v4 = [v3 error];
  if (v4)
  {

    goto LABEL_4;
  }

  v8 = v0[24];
  v7 = v0[25];
  v9 = v0[23];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1004904A8;
  swift_continuation_init();
  v0[17] = v9;
  v10 = sub_10020A748(v0 + 14);
  sub_1001F0C48(&unk_10077F940);
  CheckedContinuation.init(continuation:function:)();
  (*(v8 + 32))(v10, v7, v9);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_1004907F4;
  v0[13] = &unk_100766198;
  [v3 suspendStreamWithCompletionBlock:v0 + 10];
  (*(v8 + 8))(v10, v9);

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1004904A8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 232) = v2;
  v3 = *(v1 + 216);
  v4 = *(v1 + 208);
  if (v2)
  {
    v5 = sub_100490764;
  }

  else
  {
    v5 = sub_1004905D8;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1004905D8()
{
  v1 = v0[18];
  static Logger.download.getter();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[28];
  if (v4)
  {
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412546;
    v9 = *(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_logKey);
    *(v7 + 4) = v9;
    *v8 = v9;
    *(v7 + 12) = 2048;
    *(v7 + 14) = v1;
    v10 = v9;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%@] Extractor suspended at %llu", v7, 0x16u);
    sub_1001F8084(v8);
  }

  (*(v0[21] + 8))(v0[22], v0[20]);

  v11 = v0[1];

  return v11();
}

uint64_t sub_100490764()
{
  v1 = *(v0 + 224);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1004907F4(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100006D8C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    sub_1001F0C48(&qword_100784B58);
    CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&qword_100784B58);
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_100490898()
{
  v1[2] = v0;
  swift_getObjectType();
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  sub_100491F68(&unk_1007803D0, type metadata accessor for StreamingExtractor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[7] = v4;
  v1[8] = v3;

  return _swift_task_switch(sub_1004909C0, v4, v3);
}

uint64_t sub_1004909C0()
{
  v1 = sub_1005F8634((v0[2] + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_coordinatorID));
  v0[9] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[10] = v2;
    *v2 = v0;
    v2[1] = sub_100490C30;

    return sub_1005F7114();
  }

  else
  {
    static Logger.download.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_logKey);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Can't reset consumer, coordinator not found", v7, 0xCu);
      sub_1001F8084(v8);
    }

    v12 = v0[4];
    v11 = v0[5];
    v13 = v0[3];

    (*(v12 + 8))(v11, v13);
    type metadata accessor for InternalError();
    sub_100491F68(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_100490C30(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 88) = a1;
  *(v4 + 96) = v1;

  v5 = *(v3 + 64);
  v6 = *(v3 + 56);
  if (v1)
  {
    v7 = sub_100490FC4;
  }

  else
  {
    v7 = sub_100490D74;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_100490D74()
{
  v1 = *(v0 + 88);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    static Logger.download.getter();

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 16);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = *(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_logKey);
      *(v7 + 4) = v9;
      *v8 = v9;
      v10 = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Can't reset consumer, promise not found", v7, 0xCu);
      sub_1001F8084(v8);
    }

    v11 = *(v0 + 72);
    v12 = *(v0 + 48);
    v13 = *(v0 + 24);
    v14 = *(v0 + 32);

    (*(v14 + 8))(v12, v13);
    type metadata accessor for InternalError();
    sub_100491F68(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_100490FC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100491038()
{
  v1[18] = v0;
  swift_getObjectType();
  v2 = sub_1001F0C48(&unk_100784B60);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  sub_100491F68(&unk_1007803D0, type metadata accessor for StreamingExtractor);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[22] = v4;
  v1[23] = v3;

  return _swift_task_switch(sub_100491158, v4, v3);
}

uint64_t sub_100491158()
{
  v1 = v0[18];
  v2 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v0[24] = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_extractor;
  v3 = *(v1 + v2);
  if (v3)
  {
    v0[27] = v3;
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v0[2] = v0;
    v0[3] = sub_10049170C;
    swift_continuation_init();
    v0[17] = v6;
    v7 = sub_10020A748(v0 + 14);
    v8 = v3;
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v5 + 32))(v7, v4, v6);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10041D918;
    v0[13] = &unk_100766170;
    [v8 resetWithCompletion:v0 + 10];
    (*(v5 + 8))(v7, v6);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {
    v9 = swift_task_alloc();
    v0[25] = v9;
    *v9 = v0;
    v9[1] = sub_10049139C;

    return sub_100490898();
  }
}

uint64_t sub_10049139C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v4[26] = a1;
    v8 = v4[22];
    v9 = v4[23];

    return _swift_task_switch(sub_1004914EC, v8, v9);
  }
}

uint64_t sub_1004914EC()
{
  v1 = v0[24];
  v2 = v0[18];
  v3 = *(v2 + v1);
  *(v2 + v1) = v0[26];

  v4 = *(v2 + v1);
  if (v4)
  {
    v0[27] = v4;
    v6 = v0[20];
    v5 = v0[21];
    v7 = v0[19];
    v0[2] = v0;
    v0[3] = sub_10049170C;
    swift_continuation_init();
    v0[17] = v7;
    v8 = sub_10020A748(v0 + 14);
    v9 = v4;
    sub_1001F0C48(&unk_10077F940);
    CheckedContinuation.init(continuation:function:)();
    (*(v6 + 32))(v8, v5, v7);
    v0[10] = _NSConcreteStackBlock;
    v0[11] = 1107296256;
    v0[12] = sub_10041D918;
    v0[13] = &unk_100766170;
    [v9 resetWithCompletion:v0 + 10];
    (*(v6 + 8))(v8, v7);

    return _swift_continuation_await(v0 + 2);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_10049170C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 224) = v2;
  v3 = *(v1 + 184);
  v4 = *(v1 + 176);
  if (v2)
  {
    v5 = sub_1004918A8;
  }

  else
  {
    v5 = sub_10049183C;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_10049183C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004918A8()
{
  v1 = *(v0 + 216);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_100491920(uint64_t a1, void *a2)
{
  v4 = sub_1001F0C48(&unk_100784B60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  aBlock[4] = sub_100491EEC;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100491B44;
  aBlock[3] = &unk_1007661E8;
  v10 = _Block_copy(aBlock);

  [a2 finishStreamWithCompletionBlock:v10];
  _Block_release(v10);
}

uint64_t sub_100491AD0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    sub_1001F0C48(&unk_100784B60);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    sub_1001F0C48(&unk_100784B60);
    return CheckedContinuation.resume(returning:)();
  }
}

void sub_100491B44(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_100491BE0()
{
  v1 = OBJC_IVAR____TtC28ManagedAppDistributionDaemon18StreamingExtractor_coordinatorID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StreamingExtractor()
{
  result = qword_100784AD0;
  if (!qword_100784AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100491D08()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_100491DC4(uint64_t a1, uint64_t a2)
{
  sub_1001F0C48(&qword_100784B58);

  return sub_10048F948(a1, a2);
}

uint64_t sub_100491E50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100491E68(uint64_t *a1)
{
  v2 = sub_1001F0C48(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_100491EEC(uint64_t a1)
{
  sub_1001F0C48(&unk_100784B60);

  return sub_100491AD0(a1);
}

uint64_t sub_100491F68(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100491FC8()
{

  return sub_10048F064();
}

uint64_t sub_10049203C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchQoS.QoSClass();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001F0C48(&qword_100784C30);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 20) = -1;
  *(v6 + 24) = _swiftEmptyArrayStorage;
  *(v0 + 16) = v6;
  out_token = -1;
  sub_1001F0FB0();
  (*(v3 + 104))(v5, enum case for DispatchQoS.QoSClass.default(_:), v2);
  v7 = static OS_dispatch_queue.global(qos:)();
  (*(v3 + 8))(v5, v2);
  aBlock[4] = sub_100492CB0;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1005DBC28;
  aBlock[3] = &unk_100766210;
  v8 = _Block_copy(aBlock);

  notify_register_dispatch(kOSThermalNotificationPressureLevelName, &out_token, v7, v8);
  _Block_release(v8);

  LODWORD(v8) = out_token;
  v9 = *(v1 + 16);

  os_unfair_lock_lock(v9 + 8);
  v9[5]._os_unfair_lock_opaque = v8;
  os_unfair_lock_unlock(v9 + 8);

  v10 = *(v1 + 16);
  os_unfair_lock_lock((v10 + 32));
  LOBYTE(v9) = *(v10 + 16);
  os_unfair_lock_unlock((v10 + 32));
  sub_100492628(v9);
  return v1;
}

uint64_t sub_1004922AC()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = __chkstk_darwin(v1);
  v5 = &state64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v8 = &state64 - v7;
  __chkstk_darwin(v6);
  v10 = &state64 - v9;
  v11 = *(v0 + 16);
  os_unfair_lock_lock((v11 + 32));
  v12 = *(v11 + 20);
  os_unfair_lock_unlock((v11 + 32));
  if (v12 == -1)
  {
    static Logger.daemon.getter();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "[Thermal] Unable to check thermal pressure state, token is invalid", v21, 2u);
    }

    return (*(v2 + 8))(v5, v1);
  }

  else
  {
    os_unfair_lock_lock((v11 + 32));
    v13 = *(v11 + 16);
    os_unfair_lock_unlock((v11 + 32));
    state64 = 0;
    result = notify_get_state(v12, &state64);
    if (result)
    {
      v15 = result;
      static Logger.daemon.getter();
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 67240192;
        *(v18 + 4) = v15;
        _os_log_impl(&_mh_execute_header, v16, v17, "[Thermal] Error getting thermal pressure state with status: %{public}u", v18, 8u);
      }

      return (*(v2 + 8))(v8, v1);
    }

    else
    {
      v22 = state64;
      if (v13 != state64 > 0x13)
      {
        static Logger.daemon.getter();
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          *v25 = 67240192;
          *(v25 + 4) = v22 > 0x13;
          _os_log_impl(&_mh_execute_header, v23, v24, "[Thermal] Thermal pressure state changed, is elevated: %{BOOL,public}d", v25, 8u);
        }

        (*(v2 + 8))(v10, v1);
        os_unfair_lock_lock((v11 + 32));
        *(v11 + 16) = v22 > 0x13;
        os_unfair_lock_unlock((v11 + 32));
        return sub_100492628(v22 > 0x13);
      }
    }
  }

  return result;
}

uint64_t sub_100492628(char a1)
{
  v3 = sub_1001F0C48(&qword_100781408);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v18 - v5;
  v7 = *(v1 + 16);
  os_unfair_lock_lock((v7 + 32));
  v8 = *(v7 + 24);
  *(v7 + 24) = _swiftEmptyArrayStorage;
  os_unfair_lock_unlock((v7 + 32));
  v9 = *(v8 + 16);
  if (v9)
  {
    v12 = *(v4 + 16);
    v10 = v4 + 16;
    v11 = v12;
    v13 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v18 = v8;
    v14 = v8 + v13;
    v15 = *(v10 + 56);
    v16 = a1 & 1;
    do
    {
      v11(v6, v14, v3);
      v19 = v16;
      CheckedContinuation.resume(returning:)();
      (*(v10 - 8))(v6, v3);
      v14 += v15;
      --v9;
    }

    while (v9);
  }
}

uint64_t sub_1004927CC()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 8);
  os_unfair_lock_opaque = v1[5]._os_unfair_lock_opaque;
  os_unfair_lock_unlock(v1 + 8);

  if (os_unfair_lock_opaque != -1)
  {
    notify_cancel(os_unfair_lock_opaque);
    v3 = *(v0 + 16);

    os_unfair_lock_lock(v3 + 8);
    v3[5]._os_unfair_lock_opaque = -1;
    os_unfair_lock_unlock(v3 + 8);
  }

  return v0;
}

uint64_t sub_100492860()
{
  sub_1004927CC();

  return swift_deallocClassInstance();
}

uint64_t sub_1004928BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001F0C48(&qword_100781408);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - v6;
  (*(v5 + 16))(&v12 - v6, a2, v4);
  v8 = *(a1 + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_100363CB4(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_100363CB4(v9 > 1, v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *(a1 + 8) = v8;
  return result;
}

void sub_100492A3C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock(v2 + 8);
  sub_100492C94(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);
}

uint64_t sub_100492A90(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  return _swift_task_switch(sub_100492AB8, 0, 0);
}

uint64_t sub_100492AB8()
{
  if (static Task<>.isCancelled.getter())
  {
    **(v0 + 16) = 2;
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 32) = v3;
    *v3 = v0;
    v3[1] = sub_10042B9E8;
    v4 = *(v0 + 24);

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 40, 0, 0, 0x29287478656ELL, 0xE600000000000000, sub_100492C8C, v4, &type metadata for Bool);
  }
}

uint64_t sub_100492BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_10042BBC4;

  return sub_10042A360(a2, a3);
}

uint64_t sub_100492CDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100492D30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_100492D8C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100006190(0, &qword_100784C70);
    sub_100494CD4();
    Set.Iterator.init(_cocoa:)();
    v1 = v21;
    v2 = v22;
    v3 = v23;
    v4 = v24;
    v5 = v25;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v20 = _swiftEmptyArrayStorage;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (sub_100006190(0, &qword_100784C70), swift_dynamicCast(), (v11 = v26) == 0))
    {
LABEL_24:
      sub_1001DFE18();
      return;
    }

LABEL_17:
    v12 = [v11 bundleIdentifier];
    if (v12)
    {
      v13 = v12;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v20 = sub_100009530(0, *(v20 + 2) + 1, 1, v20);
      }

      v17 = *(v20 + 2);
      v16 = *(v20 + 3);
      if (v17 >= v16 >> 1)
      {
        v20 = sub_100009530((v16 > 1), v17 + 1, 1, v20);
      }

      *(v20 + 2) = v17 + 1;
      v18 = &v20[16 * v17];
      *(v18 + 4) = v19;
      *(v18 + 5) = v15;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

void sub_100493024(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for Logger();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100006190(0, &qword_100784500);
  v16 = sub_10060BC54(a1, a2, a3, a4, 0);
  if (v16)
  {
    v24 = v16;
    sub_1004932B0(v16, a3, a4, a5, a6);
    v17 = v24;
  }

  else
  {
    static Logger.install.getter();

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v25 = v22;
      *v20 = 138412546;
      v23 = sub_100625FA0();
      *(v20 + 4) = v23;
      *v21 = v23;
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_1002346CC(a1, a2, &v25);
      _os_log_impl(&_mh_execute_header, v18, v19, "[%@] Expected record for %{public}s but none was found", v20, 0x16u);
      sub_1000032A8(v21, &qword_10077F920);

      sub_10000710C(v22);
    }

    (*(v13 + 8))(v15, v12);
  }
}

id sub_1004932B0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v89 = a4;
  v90 = a5;
  v91 = a2;
  v85 = type metadata accessor for LogKey.Prefix();
  v72 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_1001F0C48(&qword_100784C68);
  v75 = *(v88 - 8);
  __chkstk_darwin(v88);
  v95 = &v72 - v8;
  *&v86 = type metadata accessor for Container.Part();
  v82 = *(v86 - 8);
  __chkstk_darwin(v86);
  v81 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Container.Attributes();
  __chkstk_darwin(v10 - 8);
  v80 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for Containers();
  v73 = *(v74 - 8);
  __chkstk_darwin(v74);
  v83 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Container.Persona();
  v13 = *(v87 - 8);
  v14 = __chkstk_darwin(v87);
  v79 = &v72 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v18 = (&v72 - v17);
  __chkstk_darwin(v16);
  v20 = &v72 - v19;
  v21 = type metadata accessor for Logger();
  v22 = *(v21 - 8);
  v93 = v21;
  v94 = v22;
  v23 = __chkstk_darwin(v21);
  v76 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  __chkstk_darwin(v25);
  v27 = &v72 - v26;
  static Logger.install.getter();
  v28 = a1;
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v92 = a3;
    v33 = v20;
    v34 = v32;
    *v31 = 138412546;
    v35 = sub_100625FA0();
    *(v31 + 4) = v35;
    *(v31 + 12) = 2112;
    *(v31 + 14) = v28;
    *v34 = v35;
    v34[1] = v28;
    v36 = v28;
    _os_log_impl(&_mh_execute_header, v29, v30, "[%@] Writing receipt for: %@", v31, 0x16u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();
    v20 = v33;
    a3 = v92;
  }

  v37 = *(v94 + 8);
  v94 += 8;
  v92 = v37;
  v37(v27, v93);
  v38 = [v28 applicationExtensionRecords];
  sub_100006190(0, &qword_100784C70);
  sub_100494CD4();
  v39 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100492D8C(v39);
  v41 = v40;

  v42 = sub_1005DA314(v41);

  v96[5] = v42;
  result = [v28 bundleIdentifier];
  if (result)
  {
    v44 = result;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    sub_1003F155C(v96, v45, v47);

    v77 = 0;
    if (a3 >= 2)
    {
      *v18 = v91;
      v18[1] = a3;
      v48 = v87;
      (*(v13 + 104))(v18, enum case for Container.Persona.dataSeparated(_:), v87);
    }

    else
    {
      v48 = v87;
      (*(v13 + 104))(v18, enum case for Container.Persona.primary(_:), v87);
    }

    (*(v13 + 32))(v20, v18, v48);
    static Container.Attributes.appData.getter();
    v91 = v13;
    v49 = *(v13 + 16);
    v78 = v20;
    v49(v79, v20, v48);
    sub_1001F0C48(&qword_100784C80);
    v50 = type metadata accessor for Query.Options();
    v51 = *(v50 - 8);
    v52 = *(v51 + 72);
    v53 = (*(v51 + 80) + 32) & ~*(v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10069F6E0;
    v55 = v54 + v53;
    v56 = *(v51 + 104);
    v56(v55, enum case for Query.Options.requestPath(_:), v50);
    v56(v55 + v52, enum case for Query.Options.requestContainerizedAccess(_:), v50);
    (*(v82 + 104))(v81, enum case for Container.Part.data(_:), v86);
    v57 = v77;
    Containers.init(of:identifiers:includeUnowned:persona:options:part:)();
    if (v57)
    {
      v58 = v76;
      static Logger.install.getter();
      swift_errorRetain();
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        *v61 = 138412546;
        v63 = sub_100625FA0();
        *(v61 + 4) = v63;
        *v62 = v63;
        *(v61 + 12) = 2112;
        swift_errorRetain();
        v64 = _swift_stdlib_bridgeErrorToNSError();
        *(v61 + 14) = v64;
        v62[1] = v64;
        _os_log_impl(&_mh_execute_header, v59, v60, "[%@] Writing receipt failed, container error: %@", v61, 0x16u);
        sub_1001F0C48(&qword_10077F920);
        swift_arrayDestroy();
      }

      v92(v58, v93);
      return (*(v91 + 8))(v78, v87);
    }

    else
    {
      Containers.makeIterator()();
      swift_getOpaqueTypeConformance2();
      v65 = v88;
      v66 = dispatch thunk of IteratorProtocol.next()();
      v68 = v96[0];
      v70 = v90;
      v69 = v91;
      v71 = v89;
      if (v96[0])
      {
        LODWORD(v82) = enum case for LogKey.Prefix.undefined(_:);
        v81 = (v72 + 104);
        *&v67 = 138412546;
        v86 = v67;
        do
        {
          __chkstk_darwin(v66);
          *(&v72 - 4) = v68;
          *(&v72 - 3) = v71;
          *(&v72 - 2) = v70;
          Container.withScopedAccess(required:_:)();

          swift_getOpaqueTypeConformance2();
          v66 = dispatch thunk of IteratorProtocol.next()();
          v68 = v96[0];
        }

        while (v96[0]);
      }

      (*(v75 + 8))(v95, v65);
      (*(v73 + 8))(v83, v74);
      return (*(v69 + 8))(v78, v87);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100493FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a2;
  v65 = a3;
  v3 = type metadata accessor for URL.DirectoryHint();
  v68 = *(v3 - 8);
  v69 = v3;
  __chkstk_darwin(v3);
  v67 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1001F0C48(&unk_1007809F0);
  __chkstk_darwin(v5 - 8);
  v70 = &v58 - v6;
  v7 = type metadata accessor for Logger();
  v73 = *(v7 - 8);
  v74 = v7;
  v8 = __chkstk_darwin(v7);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v58 - v11;
  v13 = sub_1001F0C48(&qword_10077E958);
  __chkstk_darwin(v13 - 8);
  v15 = &v58 - v14;
  v16 = type metadata accessor for FilePath();
  v17 = *(v16 - 8);
  v18 = __chkstk_darwin(v16);
  v72 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v71 = &v58 - v21;
  v22 = __chkstk_darwin(v20);
  v24 = &v58 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v58 - v26;
  __chkstk_darwin(v25);
  v29 = &v58 - v28;
  Container.path.getter();
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1000032A8(v15, &qword_10077E958);
    static Logger.install.getter();
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 138412290;
      v34 = sub_100625FA0();
      *(v32 + 4) = v34;
      *v33 = v34;
      _os_log_impl(&_mh_execute_header, v30, v31, "[%@] Failed to write receipt, data container URL was nil", v32, 0xCu);
      sub_1000032A8(v33, &qword_10077F920);
    }

    return (*(v73 + 8))(v10, v74);
  }

  else
  {
    FilePath.appending(_:)();
    (*(v17 + 32))(v29, v27, v16);
    static Logger.install.getter();
    v62 = *(v17 + 16);
    v63 = v29;
    v62(v24, v29, v16);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();
    v38 = os_log_type_enabled(v36, v37);
    v61 = v17;
    if (v38)
    {
      v39 = swift_slowAlloc();
      v60 = v17 + 16;
      v40 = v39;
      v41 = swift_slowAlloc();
      v58 = v41;
      v59 = swift_slowAlloc();
      v76 = v59;
      *v40 = 138412546;
      v42 = sub_100625FA0();
      *(v40 + 4) = v42;
      *v41 = v42;
      *(v40 + 12) = 2082;
      sub_100494D5C();
      v43 = dispatch thunk of CustomStringConvertible.description.getter();
      v45 = v44;
      v66 = *(v17 + 8);
      v66(v24, v16);
      v46 = sub_1002346CC(v43, v45, &v76);

      *(v40 + 14) = v46;
      _os_log_impl(&_mh_execute_header, v36, v37, "[%@] Writing receipt to: %{public}s", v40, 0x16u);
      sub_1000032A8(v58, &qword_10077F920);

      sub_10000710C(v59);
    }

    else
    {

      v66 = *(v17 + 8);
      v66(v24, v16);
    }

    (*(v73 + 8))(v12, v74);
    v47 = v75;
    v48 = [objc_opt_self() defaultManager];
    v49 = v72;
    v50 = v62;
    v51 = v63;
    v62(v72, v63, v16);
    v52 = v71;
    FilePath.removingLastComponent()();
    sub_1004D65FC(v52);
    if (v47)
    {

      v53 = v66;
      v66(v52, v16);
      return v53(v51, v16);
    }

    else
    {
      v66(v52, v16);

      v50(v49, v51, v16);
      v54 = v67;
      (*(v68 + 104))(v67, enum case for URL.DirectoryHint.inferFromPath(_:), v69);
      v55 = v70;
      sub_10060D54C(v49, v54, v70);
      v56 = type metadata accessor for URL();
      v57 = *(v56 - 8);
      result = (*(v57 + 48))(v55, 1, v56);
      if (result == 1)
      {
        __break(1u);
      }

      else
      {
        Data.write(to:options:)();
        v66(v51, v16);
        return (*(v57 + 8))(v55, v56);
      }
    }
  }

  return result;
}

uint64_t sub_1004947CC(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1001F0C48(&qword_100784C48);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - v8;
  sub_100006D8C(a1, a1[3]);
  sub_100494B68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = a2;
  v12 = a3;
  sub_10020ABFC(a2, a3);
  sub_100329F2C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_100007158(v11, v12);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_100494934(uint64_t a1)
{
  v2 = sub_100494B68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100494970(uint64_t a1)
{
  v2 = sub_100494B68();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1004949AC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1004949F4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

void *sub_1004949F4(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784C38);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = sub_100006D8C(a1, a1[3]);
  sub_100494B68();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000710C(a1);
  }

  else
  {
    sub_100329ED8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
    v7 = v9;
    sub_10000710C(a1);
  }

  return v7;
}

unint64_t sub_100494B68()
{
  result = qword_100784C40;
  if (!qword_100784C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784C40);
  }

  return result;
}

unint64_t sub_100494BD0()
{
  result = qword_100784C50;
  if (!qword_100784C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784C50);
  }

  return result;
}

unint64_t sub_100494C28()
{
  result = qword_100784C58;
  if (!qword_100784C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784C58);
  }

  return result;
}

unint64_t sub_100494C80()
{
  result = qword_100784C60;
  if (!qword_100784C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784C60);
  }

  return result;
}

unint64_t sub_100494CD4()
{
  result = qword_100784C78;
  if (!qword_100784C78)
  {
    sub_100006190(255, &qword_100784C70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784C78);
  }

  return result;
}

unint64_t sub_100494D5C()
{
  result = qword_100784C88;
  if (!qword_100784C88)
  {
    type metadata accessor for FilePath();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784C88);
  }

  return result;
}

uint64_t sub_100494DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005934(a3, v22 - v9, &unk_100780380);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000032A8(v10, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000032A8(a3, &unk_100780380);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000032A8(a3, &unk_100780380);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100495060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_100005934(a3, v22 - v9, &unk_100780380);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1000032A8(v10, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v22[0] = a2;
      v18 = String.utf8CString.getter() + 32;
      type metadata accessor for AppInstallTaskResult();

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_1000032A8(a3, &unk_100780380);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000032A8(a3, &unk_100780380);
  type metadata accessor for AppInstallTaskResult();
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_100495318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v8 = type metadata accessor for AppVersion();
  v4[9] = v8;
  v4[10] = *(v8 - 8);
  v4[11] = swift_task_alloc();
  sub_1001F0C48(&qword_10077EDE0);
  v9 = swift_task_alloc();
  v4[12] = v9;
  v10 = type metadata accessor for _AppExtensionProcess();
  v4[13] = v10;
  v4[14] = *(v10 - 8);
  v4[15] = swift_task_alloc();
  v11 = swift_task_alloc();
  v4[16] = v11;
  *v11 = v4;
  v11[1] = sub_1004954C8;

  return sub_100496758(v9, a2, a3, a4);
}

uint64_t sub_1004954C8()
{

  if (v0)
  {

    v1 = sub_100495C00;
  }

  else
  {
    v1 = sub_1004955E0;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004955E0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = *(v0 + 64);
  v12 = *(v0 + 48);
  v6 = *(v0 + 40);
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  type metadata accessor for ContinuationResumptionState();
  v7 = swift_allocObject();
  *(v0 + 136) = v7;
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v5;
  *(v8 + 32) = v7;
  *(v8 + 40) = v12;
  *(v8 + 56) = v6;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  v10 = sub_1001F0C48(&qword_100784D90);
  *v9 = v0;
  v9[1] = sub_100495780;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0xD00000000000003BLL, 0x80000001006CBEA0, sub_1004A2898, v8, v10);
}

uint64_t sub_100495780()
{

  if (v0)
  {

    v1 = sub_100495CB4;
  }

  else
  {

    v1 = sub_1004958C8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004958C8()
{
  if (!os_variant_has_internal_content() || (v1 = String._bridgeToObjectiveC()(), v2 = String._bridgeToObjectiveC()(), v3 = CFPreferencesCopyAppValue(v1, v2), v2, v1, !v3) || (v0[3] = v3, sub_1001F0C48(&qword_100784D98), (swift_dynamicCast() & 1) == 0) || (v4 = sub_1004FEC5C(v0[4]), , !v4))
  {

    goto LABEL_19;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = v0[10];
    v7 = v4 + 4;
    v8 = _swiftEmptyArrayStorage;
    do
    {
      v9 = *v7;
      if (*(*v7 + 16))
      {

        sub_10052213C(0x44496D657469, 0xE600000000000000);
        if (v10 & 1) != 0 && *(v9 + 16) && (sub_10052213C(1684633189, 0xE400000000000000), (v11))
        {

          AppVersion.init(appleItemID:appleVersionID:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v8 = sub_100362988(0, v8[2] + 1, 1, v8);
          }

          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_100362988(v12 > 1, v13 + 1, 1, v8);
          }

          v14 = v0[11];
          v15 = v0[9];
          v8[2] = v13 + 1;
          (*(v6 + 32))(v8 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v14, v15);
        }

        else
        {
        }
      }

      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = _swiftEmptyArrayStorage;
  }

  if (!v8[2])
  {
    goto LABEL_26;
  }

  if (v0[2])
  {

    sub_100654074(v22);
LABEL_26:

    goto LABEL_19;
  }

  v0[2] = v8;
LABEL_19:
  v17 = v0[14];
  v16 = v0[15];
  v18 = v0[13];
  v19 = v0[2];
  _AppExtensionProcess.invalidate()();
  (*(v17 + 8))(v16, v18);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_100495C00()
{
  v1 = v0[12];
  (*(v0[14] + 56))(v1, 1, 1, v0[13]);
  sub_1000032A8(v1, &qword_10077EDE0);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_100495CB4()
{
  v0[2] = 0;
  if (!os_variant_has_internal_content() || (v1 = String._bridgeToObjectiveC()(), v2 = String._bridgeToObjectiveC()(), v3 = CFPreferencesCopyAppValue(v1, v2), v2, v1, !v3) || (v0[3] = v3, sub_1001F0C48(&qword_100784D98), (swift_dynamicCast() & 1) == 0) || (v4 = sub_1004FEC5C(v0[4]), , !v4))
  {

    goto LABEL_19;
  }

  v5 = v4[2];
  if (v5)
  {
    v6 = v4 + 4;
    v22 = v0[10];
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = *v6;
      if (*(*v6 + 16))
      {

        sub_10052213C(0x44496D657469, 0xE600000000000000);
        if (v9 & 1) != 0 && *(v8 + 16) && (sub_10052213C(1684633189, 0xE400000000000000), (v10))
        {

          AppVersion.init(appleItemID:appleVersionID:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_100362988(0, v7[2] + 1, 1, v7);
          }

          v12 = v7[2];
          v11 = v7[3];
          if (v12 >= v11 >> 1)
          {
            v7 = sub_100362988(v11 > 1, v12 + 1, 1, v7);
          }

          v13 = v0[11];
          v14 = v0[9];
          v7[2] = v12 + 1;
          (*(v22 + 32))(v7 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v12, v13, v14);
        }

        else
        {
        }
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (!v7[2])
  {
    goto LABEL_26;
  }

  if (v0[2])
  {

    sub_100654074(v21);
LABEL_26:

    goto LABEL_19;
  }

  v0[2] = v7;
LABEL_19:
  v16 = v0[14];
  v15 = v0[15];
  v17 = v0[13];
  v18 = v0[2];
  _AppExtensionProcess.invalidate()();
  (*(v16 + 8))(v15, v17);

  v19 = v0[1];

  return v19(v18);
}

uint64_t sub_100495FFC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_100496040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_1001F0C48(&qword_10077EDE0);
  v8 = swift_task_alloc();
  v4[4] = v8;
  v9 = type metadata accessor for _AppExtensionProcess();
  v4[5] = v9;
  v4[6] = *(v9 - 8);
  v4[7] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[8] = v10;
  *v10 = v4;
  v10[1] = sub_100496190;

  return sub_100496758(v8, a2, a3, a4);
}

uint64_t sub_100496190()
{

  if (v0)
  {

    v1 = sub_100496608;
  }

  else
  {
    v1 = sub_1004962A8;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_1004962A8()
{
  v2 = v0[6];
  v1 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 56))(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  type metadata accessor for ContinuationResumptionState();
  v7 = swift_allocObject();
  v0[9] = v7;
  swift_defaultActor_initialize();
  *(v7 + 112) = 0;
  v8 = swift_task_alloc();
  v0[10] = v8;
  v8[2] = v1;
  v8[3] = v5;
  v8[4] = v7;
  v8[5] = v6;
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_100496418;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 12, 0, 0, 0xD000000000000026, 0x80000001006CBE00, sub_10049E540, v8, &type metadata for Bool);
}

uint64_t sub_100496418()
{

  if (v0)
  {

    v1 = sub_1004966B4;
  }

  else
  {

    v1 = sub_100496560;
  }

  return _swift_task_switch(v1, 0, 0);
}

uint64_t sub_100496560()
{

  v1 = *(v0 + 96);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 40);
  _AppExtensionProcess.invalidate()();
  (*(v3 + 8))(v2, v4);

  v5 = *(v0 + 8);

  return v5(v1);
}

uint64_t sub_100496608()
{
  v1 = v0[4];
  (*(v0[6] + 56))(v1, 1, 1, v0[5]);
  sub_1000032A8(v1, &qword_10077EDE0);

  v2 = v0[1];

  return v2(0);
}

uint64_t sub_1004966B4()
{

  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  _AppExtensionProcess.invalidate()();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_100496758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[9] = a1;
  v4[10] = a2;
  v5 = type metadata accessor for Logger();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();

  return _swift_task_switch(sub_10049681C, 0, 0);
}

void sub_10049681C()
{
  v48 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = objc_allocWithZone(LSApplicationRecord);

  v4 = sub_10049E57C(v1, v2, 0);
  v0[16] = v4;
  v44 = v4;
  v5 = [v4 applicationExtensionRecords];
  sub_1004A1F74();
  sub_1004A2730(&qword_100784C78, sub_1004A1F74);
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  if ((v6 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    Set.Iterator.init(_cocoa:)();
    v6 = v0[2];
    v7 = v0[3];
    v8 = v0[4];
    v9 = v0[5];
    v10 = v0[6];
  }

  else
  {
    v11 = -1 << *(v6 + 32);
    v7 = v6 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(v6 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v9;
  v16 = v10;
  if (v10)
  {
LABEL_12:
    v10 = (v16 - 1) & v16;
    v17 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v16)))));
    v0[17] = v17;
    if (v17)
    {
      while (1)
      {
        v19 = [v17 extensionPointRecord];
        v20 = [v19 identifier];

        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == 0xD00000000000001FLL && 0x80000001006C49F0 == v23)
        {
          break;
        }

        v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v25)
        {
          goto LABEL_31;
        }

        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v18 = __CocoaSet.Iterator.next()();
        if (v18)
        {
          v0[8] = v18;
          swift_dynamicCast();
          v17 = v0[7];
          v0[17] = v17;
          if (v17)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

LABEL_31:
      sub_1001DFE18();

      v42 = swift_task_alloc();
      v0[18] = v42;
      *v42 = v0;
      v42[1] = sub_100496DF4;
      v43 = v0[9];

      sub_10049AB44(v43, v17);
    }

    else
    {
LABEL_23:
      v26 = v0[12];
      sub_1001DFE18();

      static Logger.install.getter();

      v27 = v26;
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.error.getter();

      v30 = os_log_type_enabled(v28, v29);
      v31 = v0[14];
      v32 = v0[15];
      v33 = v0[13];
      if (v30)
      {
        v46 = v0[15];
        v35 = v0[11];
        v34 = v0[12];
        v36 = v0[10];
        v45 = v0[13];
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v47 = v39;
        *v37 = 138412546;
        *(v37 + 4) = v34;
        *v38 = v34;
        *(v37 + 12) = 2082;
        v40 = v34;
        *(v37 + 14) = sub_1002346CC(v36, v35, &v47);
        _os_log_impl(&_mh_execute_header, v28, v29, "[%@] No extension found for %{public}s", v37, 0x16u);
        sub_1000032A8(v38, &qword_10077F920);

        sub_10000710C(v39);

        (*(v31 + 8))(v46, v45);
      }

      else
      {

        (*(v31 + 8))(v32, v33);
      }

      type metadata accessor for InternalError();
      sub_1004A2730(&qword_10077F900, type metadata accessor for InternalError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      v41 = v0[1];

      v41();
    }
  }

  else
  {
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_23;
      }

      v16 = *(v7 + 8 * v9);
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t sub_100496DF4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_100496F7C;
  }

  else
  {
    v2 = sub_100496F08;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100496F08()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100496F7C()
{
  v1 = *(v0 + 128);

  v2 = *(v0 + 8);

  return v2();
}

void sub_100496FEC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v46[2] = a7;
  v46[3] = a8;
  v47 = a5;
  v48 = a6;
  v49 = a2;
  v12 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v12 - 8);
  isa = (v46 - v13);
  v14 = sub_1001F0C48(&qword_100784D68);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v50 = v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = v46 - v18;
  v20 = *(v15 + 16);
  v56 = a1;
  v52 = v20;
  v20(v46 - v18, a1, v14);
  v21 = *(v15 + 80);
  v51 = ~v21;
  v22 = swift_allocObject();
  *(v22 + 2) = a4;
  v23 = v19;
  v24 = v14;
  v53 = *(v15 + 32);
  v53(&v22[(v21 + 24) & ~v21], v23, v14);
  v54 = a4;

  v25 = a3;
  sub_1004A15C0(v49, a3, sub_1004A1FC0, v22);
  v46[1] = a9;
  v49 = v26;

  v27 = type metadata accessor for TaskPriority();
  (*(*(v27 - 8) + 56))(isa, 1, 1, v27);
  v28 = v50;
  v46[0] = v24;
  v52(v50, v56, v24);
  v29 = (v21 + 64) & v51;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v54;
  *(v30 + 5) = v25;
  v31 = v48;
  *(v30 + 6) = v47;
  *(v30 + 7) = v31;
  v53(&v30[v29], v28, v24);

  v32 = v25;
  v33 = v48;

  sub_100494DB4(0, 0, isa, &unk_1006AD2A8, v30);

  isa = URLRequest._bridgeToObjectiveC()().super.isa;
  v34 = String._bridgeToObjectiveC()();
  v35 = v28;
  v36 = v28;
  v37 = v46[0];
  v52(v36, v56, v46[0]);
  v38 = (v21 + 48) & v51;
  v39 = swift_allocObject();
  v40 = v47;
  *(v39 + 2) = v32;
  *(v39 + 3) = v40;
  v41 = v53;
  v42 = v54;
  *(v39 + 4) = v33;
  *(v39 + 5) = v42;
  v41(&v39[v38], v35, v37);
  aBlock[4] = sub_1004A22F0;
  aBlock[5] = v39;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10049858C;
  aBlock[3] = &unk_100766628;
  v43 = _Block_copy(aBlock);

  v44 = v32;

  v45 = isa;
  [v49 additionalHeadersFor:isa accountID:v34 reply:v43];
  _Block_release(v43);
  swift_unknownObjectRelease();
}

uint64_t sub_100497558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10049757C, a4, 0);
}

uint64_t sub_10049757C()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_1004975AC, 0, 0);
}

uint64_t sub_1004975AC()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 16) = *(v0 + 40);
    swift_errorRetain();
    sub_1001F0C48(&qword_100784D68);
    CheckedContinuation.resume(throwing:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100497640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for Logger();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_100497764, 0, 0);
}

uint64_t sub_100497764()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100497830;

  return sub_10049E724(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_100497830()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1004A333C;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_1004979B0;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_1004979B0()
{
  v1 = *(v0 + 24);
  *(v0 + 128) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_1004979E0, 0, 0);
}

uint64_t sub_1004979E0()
{
  v21 = v0;
  if ((*(v0 + 128) & 1) == 0)
  {
    v1 = *(v0 + 32);
    static Logger.install.getter();
    v2 = v1;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    if (v5)
    {
      v9 = *(v0 + 40);
      v18 = *(v0 + 48);
      v10 = *(v0 + 32);
      v19 = *(v0 + 80);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2082;
      v14 = v10;
      *(v11 + 14) = sub_1002346CC(v9, v18, &v20);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Timed out waiting to received additional headers from %{public}s", v11, 0x16u);
      sub_1000032A8(v12, &qword_10077F920);

      sub_10000710C(v13);

      (*(v6 + 8))(v19, v8);
    }

    else
    {

      (*(v6 + 8))(v7, v8);
    }

    type metadata accessor for InternalError();
    sub_1004A2730(&qword_10077F900, type metadata accessor for InternalError);
    v15 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *(v0 + 16) = v15;
    sub_1001F0C48(&qword_100784D68);
    CheckedContinuation.resume(throwing:)();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_100497C78(unint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v67 = a3;
  v10 = sub_1001F0C48(&qword_100784D68);
  v11 = *(v10 - 8);
  v71 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = &v63 - v12;
  v14 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v14 - 8);
  v72 = &v63 - v15;
  v16 = type metadata accessor for Logger();
  v69 = *(v16 - 8);
  v70 = v16;
  v17 = __chkstk_darwin(v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v17);
  v22 = &v63 - v21;
  __chkstk_darwin(v20);
  v24 = &v63 - v23;
  if (os_variant_has_internal_content())
  {
    v68 = v10;
    if (a1)
    {
      static Logger.install.getter();
      v25 = a2;

      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v65 = a1;
        v29 = v64;
        v66 = swift_slowAlloc();
        v74 = v66;
        *v28 = 138412802;
        *(v28 + 4) = v25;
        *v29 = v25;
        *(v28 + 12) = 2082;
        v30 = v25;
        *(v28 + 14) = sub_1002346CC(v67, a4, &v74);
        *(v28 + 22) = 2080;
        v31 = Dictionary.description.getter();
        v33 = a5;
        v34 = sub_1002346CC(v31, v32, &v74);

        *(v28 + 24) = v34;
        a5 = v33;
        v35 = v73;
        _os_log_impl(&_mh_execute_header, v26, v27, "[%@] Received additional headers from %{public}s: %s", v28, 0x20u);
        sub_1000032A8(v64, &qword_10077F920);
        a1 = v65;

        swift_arrayDestroy();

        (*(v69 + 8))(v24, v70);
LABEL_11:
        v10 = v68;
        goto LABEL_18;
      }

      (*(v69 + 8))(v24, v70);
    }

    else
    {
      static Logger.install.getter();
      v44 = a2;
      v45 = a4;

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v65 = 0;
        v49 = v48;
        v50 = swift_slowAlloc();
        v66 = v13;
        v51 = a5;
        v52 = v50;
        v53 = v45;
        v54 = swift_slowAlloc();
        v74 = v54;
        *v49 = 138412546;
        *(v49 + 4) = v44;
        *v52 = v44;
        *(v49 + 12) = 2082;
        v55 = v44;
        *(v49 + 14) = sub_1002346CC(v67, v53, &v74);
        _os_log_impl(&_mh_execute_header, v46, v47, "[%@] Received no additional headers from %{public}s", v49, 0x16u);
        sub_1000032A8(v52, &qword_10077F920);
        a5 = v51;
        v35 = v73;
        v13 = v66;

        sub_10000710C(v54);

        a1 = v65;

        (*(v69 + 8))(v22, v70);
        goto LABEL_11;
      }

      (*(v69 + 8))(v22, v70);
    }

    v10 = v68;
LABEL_17:
    v35 = v73;
    goto LABEL_18;
  }

  v66 = v13;
  static Logger.install.getter();
  swift_bridgeObjectRetain_n();
  v36 = a1;
  v37 = a2;

  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v65 = a4;

  if (!os_log_type_enabled(v38, v39))
  {

    swift_bridgeObjectRelease_n();
    (*(v69 + 8))(v19, v70);
    a1 = v36;
    v13 = v66;
    goto LABEL_17;
  }

  v68 = v10;
  v64 = a5;
  v40 = swift_slowAlloc();
  v41 = swift_slowAlloc();
  v42 = swift_slowAlloc();
  v74 = v42;
  *v40 = 138412802;
  *(v40 + 4) = v37;
  *v41 = v37;
  *(v40 + 12) = 2048;
  if (v36)
  {
    v43 = *(v36 + 16);
  }

  else
  {
    v43 = 0;
  }

  v56 = v37;

  *(v40 + 14) = v43;

  *(v40 + 22) = 2082;
  *(v40 + 24) = sub_1002346CC(v67, v65, &v74);
  _os_log_impl(&_mh_execute_header, v38, v39, "[%@] Received %ld additional headers from %{public}s", v40, 0x20u);
  sub_1000032A8(v41, &qword_10077F920);

  sub_10000710C(v42);

  (*(v69 + 8))(v19, v70);
  a5 = v64;
  a1 = v36;
  v10 = v68;
  v35 = v73;
  v13 = v66;
LABEL_18:
  v57 = type metadata accessor for TaskPriority();
  v58 = v72;
  (*(*(v57 - 8) + 56))(v72, 1, 1, v57);
  (*(v11 + 16))(v13, v35, v10);
  v59 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v60 = (v71 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v61 = swift_allocObject();
  *(v61 + 2) = 0;
  *(v61 + 3) = 0;
  *(v61 + 4) = a5;
  (*(v11 + 32))(&v61[v59], v13, v10);
  *&v61[v60] = a1;

  sub_1004A673C(0, 0, v58, &unk_1006AD2B8, v61);
}

uint64_t sub_1004984A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_1004984C8, a4, 0);
}

uint64_t sub_1004984C8()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_1004984F8, 0, 0);
}

uint64_t sub_1004984F8()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 16) = *(v0 + 40);

    sub_1001F0C48(&qword_100784D68);
    CheckedContinuation.resume(returning:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10049858C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_100498610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_100498634, a4, 0);
}

uint64_t sub_100498634()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_1004A331C, 0, 0);
}

uint64_t sub_100498664(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v29 = a5;
  v30 = a2;
  v31 = a3;
  v7 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v7 - 8);
  v37 = &v29 - v8;
  v9 = sub_1001F0C48(&unk_100784AE0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v29 - v14;
  v35 = *(v10 + 16);
  v36 = a1;
  v35(&v29 - v14, a1, v9);
  v16 = *(v10 + 80);
  v32 = ~v16;
  v17 = (v16 + 24) & ~v16;
  v18 = swift_allocObject();
  *(v18 + 2) = a4;
  v33 = *(v10 + 32);
  v33(&v18[v17], v15, v9);
  v34 = a4;

  sub_1004A15C0(v30, v31, sub_10049E54C, v18);
  v31 = v19;

  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v37, 1, 1, v20);
  v35(v13, v36, v9);
  v21 = (v16 + 40) & v32;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v23 = v34;
  v22[4] = v34;
  v24 = v22 + v21;
  v25 = v33;
  v33(v24, v13, v9);

  sub_100494DB4(0, 0, v37, &unk_1006AD238, v22);

  v35(v13, v36, v9);
  v26 = swift_allocObject();
  *(v26 + 16) = v23;
  v25(v26 + v17, v13, v9);
  aBlock[4] = sub_1004A1C74;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100499390;
  aBlock[3] = &unk_100766498;
  v27 = _Block_copy(aBlock);

  [v31 requestFailed:v29 reply:v27];
  _Block_release(v27);
  return swift_unknownObjectRelease();
}

uint64_t sub_100498B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_100498B40, a4, 0);
}

uint64_t sub_100498B40()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_100498B70, 0, 0);
}

uint64_t sub_100498B70()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 16) = *(v0 + 40);
    swift_errorRetain();
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(throwing:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100498C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = type metadata accessor for ContinuousClock();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();

  return _swift_task_switch(sub_100498CC4, 0, 0);
}

uint64_t sub_100498CC4()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_100498D90;

  return sub_10049E724(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_100498D90()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  v5 = *(*v1 + 40);
  *(*v1 + 72) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_100499048;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_100498F10;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100498F10()
{
  v1 = *(v0 + 24);
  *(v0 + 80) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_100498F40, 0, 0);
}

uint64_t sub_100498F40()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    type metadata accessor for InternalError();
    sub_1004A2730(&qword_10077F900, type metadata accessor for InternalError);
    v1 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *(v0 + 16) = v1;
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(throwing:)();
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100499048()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1004990AC(char a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1001F0C48(&unk_100784AE0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v18 - v9;
  v11 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v11 - 8);
  v13 = &v18 - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  (*(v7 + 16))(v10, a3, v6);
  v15 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = a2;
  (*(v7 + 32))(&v16[v15], v10, v6);
  v16[v15 + v8] = a1;

  sub_1004A673C(0, 0, v13, &unk_1006AD248, v16);
}

uint64_t sub_1004992AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 33) = a6;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  return _swift_task_switch(sub_1004992D0, a4, 0);
}

uint64_t sub_1004992D0()
{
  v1 = *(v0 + 16);
  *(v0 + 34) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_100499300, 0, 0);
}

uint64_t sub_100499300()
{
  if ((*(v0 + 34) & 1) == 0)
  {
    *(v0 + 32) = *(v0 + 33);
    sub_1001F0C48(&unk_100784AE0);
    CheckedContinuation.resume(returning:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100499390(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_1004993E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_100499408, a4, 0);
}

uint64_t sub_100499408()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_1004A3320, 0, 0);
}

void sub_100499438(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v39[1] = a7;
  v40 = a5;
  v41 = a6;
  v42 = a2;
  v10 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v10 - 8);
  isa = (v39 - v11);
  v12 = sub_1001F0C48(&qword_100784DA0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v43 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = v39 - v16;
  v18 = *(v13 + 16);
  v49 = a1;
  v47 = v18;
  v18(v39 - v16, a1, v12);
  v19 = *(v13 + 80);
  v45 = ~v19;
  v20 = swift_allocObject();
  *(v20 + 2) = a4;
  v44 = *(v13 + 32);
  v44(&v20[(v19 + 24) & ~v19], v17, v12);
  v46 = a4;

  v21 = v42;
  v42 = a3;
  sub_1004A15C0(v21, a3, sub_1004A2968, v20);
  v39[0] = v22;

  v23 = type metadata accessor for TaskPriority();
  (*(*(v23 - 8) + 56))(isa, 1, 1, v23);
  v24 = v43;
  v47(v43, v49, v12);
  v25 = (v19 + 64) & v45;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v27 = v42;
  v26[4] = v46;
  v26[5] = v27;
  v28 = v41;
  v26[6] = v40;
  v26[7] = v28;
  v29 = v26 + v25;
  v30 = v44;
  v44(v29, v24, v12);

  v42 = v27;
  v31 = v41;

  sub_100494DB4(0, 0, isa, &unk_1006AD340, v26);

  isa = Array._bridgeToObjectiveC()().super.isa;
  v47(v24, v49, v12);
  v32 = (v19 + 48) & v45;
  v33 = swift_allocObject();
  v34 = v42;
  v35 = v40;
  *(v33 + 2) = v42;
  *(v33 + 3) = v35;
  *(v33 + 4) = v31;
  *(v33 + 5) = v46;
  v30(&v33[v32], v24, v12);
  aBlock[4] = sub_1004A2DA4;
  aBlock[5] = v33;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10049AA68;
  aBlock[3] = &unk_1007667E0;
  v36 = _Block_copy(aBlock);

  v37 = v34;

  v38 = isa;
  [v39[0] availableAppsForAppleItemIDs:isa reply:v36];
  _Block_release(v36);
  swift_unknownObjectRelease();
}

uint64_t sub_100499988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1001F0C48(a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - v14;
  v16 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v16 - 8);
  v18 = &v23 - v17;
  v19 = type metadata accessor for TaskPriority();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v12 + 16))(v15, a3, v11);
  v20 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  *(v21 + 4) = a2;
  (*(v12 + 32))(&v21[v20], v15, v11);
  *&v21[(v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8] = a1;

  swift_errorRetain();
  sub_1004A673C(0, 0, v18, a7, v21);
}

uint64_t sub_100499B84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_100499BA8, a4, 0);
}

uint64_t sub_100499BA8()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_100499BD8, 0, 0);
}

uint64_t sub_100499BD8()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 16) = *(v0 + 40);
    swift_errorRetain();
    sub_1001F0C48(&qword_100784DA0);
    CheckedContinuation.resume(throwing:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_100499C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;
  v9 = type metadata accessor for Logger();
  v8[8] = v9;
  v8[9] = *(v9 - 8);
  v8[10] = swift_task_alloc();
  v10 = type metadata accessor for ContinuousClock();
  v8[11] = v10;
  v8[12] = *(v10 - 8);
  v8[13] = swift_task_alloc();

  return _swift_task_switch(sub_100499D90, 0, 0);
}

uint64_t sub_100499D90()
{
  static Clock<>.continuous.getter();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_100499E5C;

  return sub_10049E724(0x40AAD21B3B700000, 3, 0, 0, 1);
}

uint64_t sub_100499E5C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  *(*v1 + 120) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_10049A2A4;
    v7 = 0;
  }

  else
  {
    v7 = *(v2 + 24);
    v6 = sub_100499FDC;
  }

  return _swift_task_switch(v6, v7, 0);
}

uint64_t sub_100499FDC()
{
  v1 = *(v0 + 24);
  *(v0 + 128) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_10049A00C, 0, 0);
}

uint64_t sub_10049A00C()
{
  v21 = v0;
  if ((*(v0 + 128) & 1) == 0)
  {
    v1 = *(v0 + 32);
    static Logger.install.getter();
    v2 = v1;

    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();

    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v0 + 72);
    v7 = *(v0 + 80);
    v8 = *(v0 + 64);
    if (v5)
    {
      v9 = *(v0 + 40);
      v18 = *(v0 + 48);
      v10 = *(v0 + 32);
      v19 = *(v0 + 80);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20 = v13;
      *v11 = 138412546;
      *(v11 + 4) = v10;
      *v12 = v10;
      *(v11 + 12) = 2082;
      v14 = v10;
      *(v11 + 14) = sub_1002346CC(v9, v18, &v20);
      _os_log_impl(&_mh_execute_header, v3, v4, "[%@] Timed out waiting to receive available apps from %{public}s", v11, 0x16u);
      sub_1000032A8(v12, &qword_10077F920);

      sub_10000710C(v13);

      (*(v6 + 8))(v19, v8);
    }

    else
    {

      (*(v6 + 8))(v7, v8);
    }

    type metadata accessor for InternalError();
    sub_1004A2730(&qword_10077F900, type metadata accessor for InternalError);
    v15 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    *(v0 + 16) = v15;
    sub_1001F0C48(&qword_100784DA0);
    CheckedContinuation.resume(throwing:)();
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_10049A2A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10049A314(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v56 = a7;
  v49 = a4;
  v57 = sub_1001F0C48(&qword_100784DA0);
  v10 = *(v57 - 8);
  v53 = *(v10 + 64);
  __chkstk_darwin(v57);
  v55 = &v48 - v11;
  v12 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v12 - 8);
  v54 = &v48 - v13;
  v14 = type metadata accessor for Logger();
  v51 = *(v14 - 8);
  v52 = v14;
  v15 = __chkstk_darwin(v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = &v48 - v18;
  sub_1001F0C48(&qword_100784D90);
  sub_1004A2E38();
  sub_1004A2EF4();
  decodeXPCValues<A>(from:)();
  v20 = v58;
  if (v58)
  {
    v50 = a6;

    static Logger.install.getter();
    swift_bridgeObjectRetain_n();
    v21 = a3;

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v58 = v48;
      *v24 = 138413058;
      *(v24 + 4) = v21;
      *v25 = v21;
      *(v24 + 12) = 2050;
      v26 = *(v20 + 16);
      v27 = v21;

      *(v24 + 14) = v26;

      *(v24 + 22) = 2082;
      *(v24 + 24) = sub_1002346CC(v49, a5, &v58);
      *(v24 + 32) = 2080;
      type metadata accessor for AppVersion();
      v28 = Array.description.getter();
      v30 = v29;

      v31 = sub_1002346CC(v28, v30, &v58);

      *(v24 + 34) = v31;
      _os_log_impl(&_mh_execute_header, v22, v23, "[%@] Received %{public}ld available apps from %{public}s: %s, privacy: .public)", v24, 0x2Au);
      sub_1000032A8(v25, &qword_10077F920);

      swift_arrayDestroy();
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    (*(v51 + 8))(v19, v52);
    a6 = v50;
  }

  else
  {
    static Logger.install.getter();
    v32 = a3;

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v50 = a6;
      v38 = v37;
      v58 = v37;
      *v35 = 138412546;
      *(v35 + 4) = v32;
      *v36 = v32;
      *(v35 + 12) = 2082;
      v39 = v32;
      *(v35 + 14) = sub_1002346CC(v49, a5, &v58);
      _os_log_impl(&_mh_execute_header, v33, v34, "[%@] Received no available apps from %{public}s", v35, 0x16u);
      sub_1000032A8(v36, &qword_10077F920);

      sub_10000710C(v38);
      a6 = v50;
    }

    (*(v51 + 8))(v17, v52);
  }

  v40 = type metadata accessor for TaskPriority();
  v41 = v54;
  (*(*(v40 - 8) + 56))(v54, 1, 1, v40);
  v42 = v55;
  v43 = v57;
  (*(v10 + 16))(v55, v56, v57);
  v44 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v45 = (v53 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = a6;
  (*(v10 + 32))(&v46[v44], v42, v43);
  *&v46[v45] = v20;

  sub_1004A673C(0, 0, v41, &unk_1006AD350, v46);
}

uint64_t sub_10049A980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10049A9A4, a4, 0);
}

uint64_t sub_10049A9A4()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_10049A9D4, 0, 0);
}

uint64_t sub_10049A9D4()
{
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 16) = *(v0 + 40);

    sub_1001F0C48(&qword_100784DA0);
    CheckedContinuation.resume(returning:)();
  }

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10049AA68(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v3(v5, v7);
  sub_100007158(v5, v7);
}

uint64_t sub_10049AAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(sub_10049AB14, a4, 0);
}

uint64_t sub_10049AB14()
{
  v1 = *(v0 + 24);
  *(v0 + 48) = *(v1 + 112);
  *(v1 + 112) = 1;
  return _swift_task_switch(sub_1004A3324, 0, 0);
}

uint64_t sub_10049AB44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  type metadata accessor for _AppExtensionIdentity();
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for _AppExtensionProcess.Configuration();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10049AC3C, 0, 0);
}

uint64_t sub_10049AC3C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = [objc_allocWithZone(_EXExtensionIdentity) initWithApplicationExtensionRecord:v0[3]];
  v0[9] = v5;
  v6 = v5;
  _AppExtensionIdentity.init(_:)();
  _AppExtensionProcess.Configuration.init(appExtension:onInterruption:)();
  (*(v4 + 16))(v1, v2, v3);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_10049AD60;
  v8 = v0[7];
  v9 = v0[2];

  return _AppExtensionProcess.init(configuration:)(v9, v8);
}

uint64_t sub_10049AD60()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_10049AF20;
  }

  else
  {
    v2 = sub_10049AE74;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049AE74()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10049AF20()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 40);

  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_10049AFCC(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.install.getter();
  v11 = a2;

  swift_errorRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v23 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v24 = v7;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    *v15 = 138412802;
    *(v15 + 4) = v11;
    *v17 = v11;
    *(v15 + 12) = 2082;
    v19 = v11;
    *(v15 + 14) = sub_1002346CC(v23, a4, &v25);
    *(v15 + 22) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 24) = v20;
    v17[1] = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "[%@] XPC error for %{public}s: %{public}@", v15, 0x20u);
    sub_1001F0C48(&qword_10077F920);
    swift_arrayDestroy();

    sub_10000710C(v18);

    return (*(v8 + 8))(v10, v24);
  }

  else
  {

    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_10049B22C(uint64_t a1, void *a2, void *a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, unint64_t a8, int a9, int a10, int a11, int a12, int a13, int a14, uint64_t a15, uint64_t a16)
{
  v123 = a8;
  v119 = a7;
  v118 = a6;
  v126 = a2;
  v125 = a1;
  v115 = type metadata accessor for MarketplaceKitError();
  v120 = *(v115 - 8);
  v19 = __chkstk_darwin(v115);
  v21 = &v111 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v111 - v22;
  v24 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v24 - 8);
  v116 = &v111 - v25;
  v26 = sub_1001F0C48(&qword_100784D70);
  v27 = __chkstk_darwin(v26 - 8);
  v122 = &v111 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v129 = &v111 - v30;
  __chkstk_darwin(v29);
  v130 = &v111 - v31;
  v32 = type metadata accessor for Logger();
  v131 = *(v32 - 8);
  v33 = __chkstk_darwin(v32);
  v121 = &v111 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v127 = &v111 - v36;
  v37 = __chkstk_darwin(v35);
  v112 = &v111 - v38;
  __chkstk_darwin(v37);
  v40 = &v111 - v39;
  static Logger.install.getter();
  v41 = a3;

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  v44 = os_log_type_enabled(v42, v43);
  v128 = v32;
  v117 = a4;
  v113 = v21;
  v124 = v41;
  if (v44)
  {
    v45 = a4;
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v48 = a5;
    v114 = v23;
    v49 = v32;
    v50 = v47;
    v51 = swift_slowAlloc();
    *&v132[0] = v51;
    *v46 = 138412546;
    *(v46 + 4) = v41;
    *v50 = v41;
    *(v46 + 12) = 2082;
    v52 = v41;
    *(v46 + 14) = sub_1002346CC(v45, v48, v132);
    _os_log_impl(&_mh_execute_header, v42, v43, "[%@] Reply received from: %{public}s", v46, 0x16u);
    sub_1000032A8(v50, &qword_10077F920);

    sub_10000710C(v51);

    v53 = *(v131 + 8);
    v54 = v49;
    v23 = v114;
    a5 = v48;
    v53(v40, v54);
  }

  else
  {

    v53 = *(v131 + 8);
    v53(v40, v32);
  }

  v55 = sub_1001F0C48(&qword_100784D78);
  sub_1004A26E0(&qword_100784D80);
  sub_1004A26E0(&qword_100784D88);
  v56 = v130;
  decodeXPCValues<A>(from:)();
  v57 = v129;
  v58 = v127;
  v59 = v124;
  v60 = *(v55 - 8);
  (*(v60 + 56))(v56, 0, 1, v55);
  sub_100005934(v56, v57, &qword_100784D70);
  if ((*(v60 + 48))(v57, 1, v55) == 1)
  {
    v61 = v121;
    static Logger.install.getter();
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&_mh_execute_header, v62, v63, "Failed to decode response", v64, 2u);
    }

    v53(v61, v128);
    goto LABEL_18;
  }

  v65 = v122;
  sub_100005934(v57, v122, &qword_100784D70);
  v66 = (*(v60 + 88))(v65, v55);
  if (v66 == enum case for MarketplaceKitServiceResult.success<A>(_:))
  {
    v113 = a16;
    v111 = a15;
    v127 = HIDWORD(v123);
    LODWORD(v126) = a9;
    LODWORD(v125) = a10;
    LODWORD(v121) = a11;
    LODWORD(v120) = a12;
    LODWORD(v115) = a13;
    LODWORD(v114) = a14;
    (*(v60 + 96))(v65, v55);
    v67 = *v65;
    v68 = v112;
    static Logger.install.getter();
    swift_bridgeObjectRetain_n();
    v69 = v59;

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v124 = v53;
      v73 = v72;
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v122 = a5;
      v76 = v75;
      *&v132[0] = v75;
      *v73 = 138412802;
      *(v73 + 4) = v69;
      *v74 = v69;
      *(v73 + 12) = 2082;
      v77 = v69;
      v78 = v117;
      *(v73 + 14) = sub_1002346CC(v117, v122, v132);
      *(v73 + 22) = 2050;
      v79 = *(v67 + 16);

      *(v73 + 24) = v79;

      _os_log_impl(&_mh_execute_header, v70, v71, "[%@] %{public}s returned with %{public}ld available updates", v73, 0x20u);
      sub_1000032A8(v74, &qword_10077F920);
      v57 = v129;

      sub_10000710C(v76);
      v80 = v78;
      a5 = v122;

      v124(v68, v128);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v53(v68, v128);
      v80 = v117;
    }

    v98 = type metadata accessor for TaskPriority();
    v99 = v116;
    (*(*(v98 - 8) + 56))(v116, 1, 1, v98);
    sub_10020A980(v111, &v133);
    sub_100231CE8(v113, v132);
    v100 = swift_allocObject();
    *(v100 + 16) = 0;
    *(v100 + 24) = 0;
    v101 = v118;
    *(v100 + 32) = v67;
    *(v100 + 40) = v101;
    *(v100 + 48) = v119;
    *(v100 + 56) = v69;
    *(v100 + 64) = v80;
    *(v100 + 72) = a5;
    v102 = v127;
    *(v100 + 80) = v123;
    *(v100 + 84) = v102;
    v103 = v125;
    *(v100 + 88) = v126;
    *(v100 + 92) = v103;
    v104 = v120;
    *(v100 + 96) = v121;
    *(v100 + 100) = v104;
    v105 = v114;
    *(v100 + 104) = v115;
    *(v100 + 108) = v105;
    sub_1001DFDBC(&v133, v100 + 112);
    sub_100231D54(v132, (v100 + 152));
    v106 = v69;

    v107 = v101;

    sub_1004A673C(0, 0, v99, &unk_1006AD2F8, v100);

    goto LABEL_17;
  }

  if (v66 == enum case for MarketplaceKitServiceResult.failure<A>(_:))
  {
    (*(v60 + 96))(v65, v55);
    v81 = v120;
    v82 = v115;
    (*(v120 + 32))(v23, v65, v115);
    static Logger.install.getter();
    v83 = *(v81 + 16);
    v84 = v58;
    v85 = v113;
    v83(v113, v23, v82);
    v86 = Logger.logObject.getter();
    v87 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      LODWORD(v127) = v87;
      v89 = v88;
      v90 = swift_slowAlloc();
      v124 = v53;
      v126 = v90;
      *v89 = 138543362;
      sub_1004A2730(&qword_10077F950, &type metadata accessor for MarketplaceKitError);
      swift_allocError();
      v91 = v120;
      v114 = v23;
      v92 = v84;
      v93 = v82;
      v83(v94, v85, v82);
      v95 = _swift_stdlib_bridgeErrorToNSError();
      v96 = *(v91 + 8);
      v96(v85, v93);
      *(v89 + 4) = v95;
      v97 = v126;
      *v126 = v95;
      _os_log_impl(&_mh_execute_header, v86, v127, "Client failed to determine available automatic updates: %{public}@", v89, 0xCu);
      sub_1000032A8(v97, &qword_10077F920);

      v124(v92, v128);
      v96(v114, v93);
    }

    else
    {

      v108 = v82;
      v109 = *(v120 + 8);
      v109(v85, v108);
      v53(v84, v128);
      v109(v23, v108);
    }

LABEL_17:
    v56 = v130;
LABEL_18:
    sub_1000032A8(v56, &qword_100784D70);
    return sub_1000032A8(v57, &qword_100784D70);
  }

  (*(v60 + 8))(v65, v55);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10049C024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 224) = v19;
  *(v8 + 192) = v17;
  *(v8 + 208) = v18;
  *(v8 + 176) = v16;
  *(v8 + 160) = a7;
  *(v8 + 168) = a8;
  *(v8 + 144) = a5;
  *(v8 + 152) = a6;
  *(v8 + 136) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 232) = v9;
  *(v8 + 240) = *(v9 - 8);
  *(v8 + 248) = swift_task_alloc();
  *(v8 + 256) = swift_task_alloc();
  type metadata accessor for UUID();
  *(v8 + 264) = swift_task_alloc();
  sub_1001F0C48(&unk_1007809F0);
  *(v8 + 272) = swift_task_alloc();
  *(v8 + 280) = swift_task_alloc();
  v10 = type metadata accessor for AppInstallRequestType();
  *(v8 + 288) = v10;
  *(v8 + 296) = *(v10 - 8);
  *(v8 + 304) = swift_task_alloc();
  type metadata accessor for URL();
  *(v8 + 312) = swift_task_alloc();
  v11 = type metadata accessor for AppInstallRequest();
  *(v8 + 320) = v11;
  *(v8 + 328) = *(v11 - 8);
  *(v8 + 336) = swift_task_alloc();
  v12 = type metadata accessor for AppVersion();
  *(v8 + 344) = v12;
  *(v8 + 352) = *(v12 - 8);
  *(v8 + 360) = swift_task_alloc();
  v13 = type metadata accessor for AutomaticUpdate();
  *(v8 + 368) = v13;
  *(v8 + 376) = *(v13 - 8);
  *(v8 + 384) = swift_task_alloc();
  *(v8 + 392) = swift_task_alloc();

  return _swift_task_switch(sub_10049C32C, 0, 0);
}

uint64_t sub_10049C32C()
{
  v60 = v0;
  v1 = *(*(v0 + 136) + 16);
  *(v0 + 400) = v1;
  if (v1)
  {
    v2 = 0;
    v3 = *(v0 + 376);
    *(v0 + 516) = *(v3 + 80);
    *(v0 + 520) = enum case for AppInstallRequestType.automaticUpdate(_:);
    *(v0 + 408) = *(v3 + 72);
    *(v0 + 416) = *(v3 + 16);
    p_name = &stru_100779FF8.name;
    v5 = &stru_100779FF8.name;
    while (1)
    {
      *(v0 + 424) = v2;
      v6 = *(v0 + 144);
      (*(v0 + 416))(*(v0 + 392), *(v0 + 136) + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(v0 + 408) * v2, *(v0 + 368));
      v7 = AutomaticUpdate.appleItemID.getter();
      v8 = [v6 p_name[62]];
      v9 = [v8 v5[100]];

      if (v9)
      {
        v10 = [*(v0 + 144) iTunesMetadata];
        v11 = [v10 storeItemIdentifier];

        if (v7 == v11)
        {
          break;
        }
      }

      v12 = 0;
      v13 = *(*(v0 + 152) + 16);
      while (v13 != v12)
      {
        v15 = *(v0 + 352);
        v14 = *(v0 + 360);
        v16 = *(v0 + 344);
        (*(v15 + 16))(v14, *(v0 + 152) + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v12++, v16);
        v17 = AppVersion.appleItemID.getter();
        v18 = AutomaticUpdate.appleItemID.getter();
        (*(v15 + 8))(v14, v16);
        if (v17 == v18)
        {
          goto LABEL_16;
        }
      }

      v19 = *(v0 + 416);
      v20 = *(v0 + 384);
      v21 = *(v0 + 392);
      v22 = *(v0 + 368);
      v23 = *(v0 + 160);
      static Logger.install.getter();
      v19(v20, v21, v22);
      v24 = v23;

      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();

      v27 = os_log_type_enabled(v25, v26);
      v28 = *(v0 + 384);
      v29 = *(v0 + 392);
      v30 = *(v0 + 368);
      v31 = *(v0 + 376);
      v32 = *(v0 + 256);
      v33 = *(v0 + 240);
      v58 = *(v0 + 232);
      if (v27)
      {
        v53 = *(v0 + 168);
        v54 = *(v0 + 176);
        v34 = *(v0 + 160);
        v57 = *(v0 + 392);
        v35 = swift_slowAlloc();
        v56 = v32;
        v36 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v59 = v55;
        *v35 = 138412802;
        *(v35 + 4) = v34;
        *v36 = v34;
        *(v35 + 12) = 2082;
        v37 = v34;
        *(v35 + 14) = sub_1002346CC(v53, v54, &v59);
        *(v35 + 22) = 2050;
        v38 = AutomaticUpdate.appleItemID.getter();
        v39 = *(v31 + 8);
        v39(v28, v30);
        *(v35 + 24) = v38;
        _os_log_impl(&_mh_execute_header, v25, v26, "[%@] %{public}s asked us to update %{public}llu but they don't have it installed.", v35, 0x20u);
        sub_1000032A8(v36, &qword_10077F920);

        sub_10000710C(v55);

        (*(v33 + 8))(v56, v58);
        v39(v57, v30);
      }

      else
      {
        v40 = *(v31 + 8);
        v40(v28, v30);

        (*(v33 + 8))(v32, v58);
        v40(v29, v30);
      }

      p_name = (&stru_100779FF8 + 8);
      v5 = (&stru_100779FF8 + 8);
      v2 = *(v0 + 424) + 1;
      if (v2 == *(v0 + 400))
      {
        goto LABEL_13;
      }
    }

LABEL_16:
    v43 = *(v0 + 520);
    v44 = *(v0 + 304);
    v45 = *(v0 + 288);
    v46 = *(v0 + 296);
    AutomaticUpdate.alternativeDistributionPackage.getter();
    (*(v46 + 104))(v44, v43, v45);
    AutomaticUpdate.installVerificationToken.getter();
    AutomaticUpdate.account.getter();
    AutomaticUpdate.appShareURL.getter();
    AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)();
    v47 = swift_task_alloc();
    *(v0 + 432) = v47;
    *v47 = v0;
    v47[1] = sub_10049C90C;
    v48 = *(v0 + 200);
    v49 = *(v0 + 208);
    v50 = *(v0 + 184);
    v51 = *(v0 + 192);
    v52 = *(v0 + 160);

    return sub_10042BEB0(v0 + 16, v50, v51, v48, v49, v52);
  }

  else
  {
LABEL_13:

    v41 = *(v0 + 8);

    return v41();
  }
}

uint64_t sub_10049C90C()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_10049D47C;
  }

  else
  {
    v2 = sub_10049CA20;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049CA20()
{
  v25 = *(v0 + 312);
  v34 = *(v0 + 304);
  v1 = *(v0 + 272);
  v24 = *(v0 + 280);
  v35 = *(v0 + 264);
  v2 = *(v0 + 216);
  v3 = *(v0 + 224);
  v28 = *(v0 + 160);
  v31 = type metadata accessor for ADPInstallConfiguration(0);
  v36 = *(v0 + 200);
  v37 = *(v0 + 184);
  AppInstallRequest.id.getter();
  sub_10020A980(v0 + 16, v0 + 56);
  AppInstallRequest.type.getter();
  v4 = AppInstallRequest.oAuthToken.getter();
  v32 = v5;
  v33 = v4;
  v6 = AppInstallRequest.installVerificationToken.getter();
  v29 = v7;
  v30 = v6;
  v8 = AppInstallRequest.accountID.getter();
  v26 = v9;
  v27 = v8;
  AppInstallRequest.adp.getter();
  AppInstallRequest.referrer.getter();
  sub_10020A980(v2, v0 + 96);
  AppInstallRequest.appShareURL.getter();
  v10 = v3[3];
  v11 = v3[8];
  v12 = sub_100006D8C(v3, v10);
  v14 = *(v0 + 80);
  v13 = *(v0 + 88);
  v15 = sub_100231ED8(v0 + 56, v14);
  v16 = *(v14 - 8);
  v17 = swift_task_alloc();
  (*(v16 + 16))(v17, v15, v14);
  v18 = *(v10 - 8);
  v19 = swift_task_alloc();
  (*(v18 + 16))(v19, v12, v10);
  *(v0 + 448) = sub_10038B61C(v35, v28, v17, v34, v33, v32, v30, v29, v27, v26, 0, 0, v25, v24, v0 + 96, 0, 0xF000000000000000, 2u, 1u, 0, 1u, 0, 1u, v1, 0, v19, v31, v14, v10, v13, v11);

  sub_10000710C(v0 + 56);

  *(v0 + 480) = v37;
  *(v0 + 496) = v36;
  *(v0 + 512) = 0;
  type metadata accessor for ADPInstallTask();
  swift_allocObject();

  *(v0 + 456) = sub_100400560(v20, v0 + 480);
  v21 = swift_task_alloc();
  *(v0 + 464) = v21;
  *v21 = v0;
  v21[1] = sub_10049CD58;
  v22 = *(v0 + 224);

  return sub_1003FF6B0(v22);
}

uint64_t sub_10049CD58()
{
  *(*v1 + 472) = v0;

  if (v0)
  {
    v2 = sub_10049DB78;
  }

  else
  {
    v2 = sub_10049CE6C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049CE6C()
{
  v64 = v0;
  v1 = *(v0 + 392);
  v2 = *(v0 + 368);
  v3 = *(v0 + 376);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 320);

  sub_10000710C(v0 + 16);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = *(v0 + 424) + 1;
  if (v7 == *(v0 + 400))
  {
LABEL_2:

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    p_name = &stru_100779FF8.name;
    v11 = &stru_100779FF8.name;
    while (1)
    {
      *(v0 + 424) = v7;
      v12 = *(v0 + 144);
      (*(v0 + 416))(*(v0 + 392), *(v0 + 136) + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(v0 + 408) * v7, *(v0 + 368));
      v13 = AutomaticUpdate.appleItemID.getter();
      v14 = [v12 p_name[62]];
      v15 = [v14 v11[100]];

      if (v15)
      {
        v16 = [*(v0 + 144) iTunesMetadata];
        v17 = [v16 storeItemIdentifier];

        if (v13 == v17)
        {
          break;
        }
      }

      v18 = 0;
      v19 = *(*(v0 + 152) + 16);
      while (v19 != v18)
      {
        v21 = *(v0 + 352);
        v20 = *(v0 + 360);
        v22 = *(v0 + 344);
        (*(v21 + 16))(v20, *(v0 + 152) + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v18++, v22);
        v23 = AppVersion.appleItemID.getter();
        v24 = AutomaticUpdate.appleItemID.getter();
        (*(v21 + 8))(v20, v22);
        if (v23 == v24)
        {
          goto LABEL_17;
        }
      }

      v25 = *(v0 + 416);
      v26 = *(v0 + 384);
      v27 = *(v0 + 392);
      v28 = *(v0 + 368);
      v29 = *(v0 + 160);
      static Logger.install.getter();
      v25(v26, v27, v28);
      v30 = v29;

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      v33 = os_log_type_enabled(v31, v32);
      v34 = *(v0 + 384);
      v35 = *(v0 + 392);
      v36 = *(v0 + 368);
      v37 = *(v0 + 376);
      v38 = *(v0 + 256);
      v39 = *(v0 + 240);
      v62 = *(v0 + 232);
      if (v33)
      {
        v57 = *(v0 + 168);
        v58 = *(v0 + 176);
        v40 = *(v0 + 160);
        v61 = *(v0 + 392);
        v41 = swift_slowAlloc();
        v60 = v38;
        v42 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v63 = v59;
        *v41 = 138412802;
        *(v41 + 4) = v40;
        *v42 = v40;
        *(v41 + 12) = 2082;
        v43 = v40;
        *(v41 + 14) = sub_1002346CC(v57, v58, &v63);
        *(v41 + 22) = 2050;
        v44 = AutomaticUpdate.appleItemID.getter();
        v45 = *(v37 + 8);
        v45(v34, v36);
        *(v41 + 24) = v44;
        _os_log_impl(&_mh_execute_header, v31, v32, "[%@] %{public}s asked us to update %{public}llu but they don't have it installed.", v41, 0x20u);
        sub_1000032A8(v42, &qword_10077F920);

        sub_10000710C(v59);

        (*(v39 + 8))(v60, v62);
        v45(v61, v36);
      }

      else
      {
        v46 = *(v37 + 8);
        v46(v34, v36);

        (*(v39 + 8))(v38, v62);
        v46(v35, v36);
      }

      p_name = (&stru_100779FF8 + 8);
      v11 = (&stru_100779FF8 + 8);
      v7 = *(v0 + 424) + 1;
      if (v7 == *(v0 + 400))
      {
        goto LABEL_2;
      }
    }

LABEL_17:
    v47 = *(v0 + 520);
    v48 = *(v0 + 304);
    v49 = *(v0 + 288);
    v50 = *(v0 + 296);
    AutomaticUpdate.alternativeDistributionPackage.getter();
    (*(v50 + 104))(v48, v47, v49);
    AutomaticUpdate.installVerificationToken.getter();
    AutomaticUpdate.account.getter();
    AutomaticUpdate.appShareURL.getter();
    AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)();
    v51 = swift_task_alloc();
    *(v0 + 432) = v51;
    *v51 = v0;
    v51[1] = sub_10049C90C;
    v52 = *(v0 + 200);
    v53 = *(v0 + 208);
    v54 = *(v0 + 184);
    v55 = *(v0 + 192);
    v56 = *(v0 + 160);

    return sub_10042BEB0(v0 + 16, v54, v55, v52, v53, v56);
  }
}

uint64_t sub_10049D47C()
{
  v69 = v0;
  (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
  static Logger.install.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed while enqueuing automatic updates: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 368);
  v8 = *(v0 + 376);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 232);

  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);
  v12 = *(v0 + 424) + 1;
  if (v12 == *(v0 + 400))
  {
LABEL_4:

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    p_name = &stru_100779FF8.name;
    v16 = &stru_100779FF8.name;
    while (1)
    {
      *(v0 + 424) = v12;
      v17 = *(v0 + 144);
      (*(v0 + 416))(*(v0 + 392), *(v0 + 136) + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(v0 + 408) * v12, *(v0 + 368));
      v18 = AutomaticUpdate.appleItemID.getter();
      v19 = [v17 p_name[62]];
      v20 = [v19 v16[100]];

      if (v20)
      {
        v21 = [*(v0 + 144) iTunesMetadata];
        v22 = [v21 storeItemIdentifier];

        if (v18 == v22)
        {
          break;
        }
      }

      v23 = 0;
      v24 = *(*(v0 + 152) + 16);
      while (v24 != v23)
      {
        v26 = *(v0 + 352);
        v25 = *(v0 + 360);
        v27 = *(v0 + 344);
        (*(v26 + 16))(v25, *(v0 + 152) + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23++, v27);
        v28 = AppVersion.appleItemID.getter();
        v29 = AutomaticUpdate.appleItemID.getter();
        (*(v26 + 8))(v25, v27);
        if (v28 == v29)
        {
          goto LABEL_19;
        }
      }

      v30 = *(v0 + 416);
      v31 = *(v0 + 384);
      v32 = *(v0 + 392);
      v33 = *(v0 + 368);
      v34 = *(v0 + 160);
      static Logger.install.getter();
      v30(v31, v32, v33);
      v35 = v34;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 384);
      v40 = *(v0 + 392);
      v41 = *(v0 + 368);
      v42 = *(v0 + 376);
      v43 = *(v0 + 256);
      v44 = *(v0 + 240);
      v67 = *(v0 + 232);
      if (v38)
      {
        v62 = *(v0 + 168);
        v63 = *(v0 + 176);
        v45 = *(v0 + 160);
        v66 = *(v0 + 392);
        v46 = swift_slowAlloc();
        v65 = v43;
        v47 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v68 = v64;
        *v46 = 138412802;
        *(v46 + 4) = v45;
        *v47 = v45;
        *(v46 + 12) = 2082;
        v48 = v45;
        *(v46 + 14) = sub_1002346CC(v62, v63, &v68);
        *(v46 + 22) = 2050;
        v49 = AutomaticUpdate.appleItemID.getter();
        v50 = *(v42 + 8);
        v50(v39, v41);
        *(v46 + 24) = v49;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%@] %{public}s asked us to update %{public}llu but they don't have it installed.", v46, 0x20u);
        sub_1000032A8(v47, &qword_10077F920);

        sub_10000710C(v64);

        (*(v44 + 8))(v65, v67);
        v50(v66, v41);
      }

      else
      {
        v51 = *(v42 + 8);
        v51(v39, v41);

        (*(v44 + 8))(v43, v67);
        v51(v40, v41);
      }

      p_name = (&stru_100779FF8 + 8);
      v16 = (&stru_100779FF8 + 8);
      v12 = *(v0 + 424) + 1;
      if (v12 == *(v0 + 400))
      {
        goto LABEL_4;
      }
    }

LABEL_19:
    v52 = *(v0 + 520);
    v53 = *(v0 + 304);
    v54 = *(v0 + 288);
    v55 = *(v0 + 296);
    AutomaticUpdate.alternativeDistributionPackage.getter();
    (*(v55 + 104))(v53, v52, v54);
    AutomaticUpdate.installVerificationToken.getter();
    AutomaticUpdate.account.getter();
    AutomaticUpdate.appShareURL.getter();
    AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)();
    v56 = swift_task_alloc();
    *(v0 + 432) = v56;
    *v56 = v0;
    v56[1] = sub_10049C90C;
    v57 = *(v0 + 200);
    v58 = *(v0 + 208);
    v59 = *(v0 + 184);
    v60 = *(v0 + 192);
    v61 = *(v0 + 160);

    return sub_10042BEB0(v0 + 16, v59, v60, v57, v58, v61);
  }
}

uint64_t sub_10049DB78()
{
  v69 = v0;

  sub_10000710C(v0 + 16);
  (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
  static Logger.install.getter();
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
    _os_log_impl(&_mh_execute_header, v1, v2, "Failed while enqueuing automatic updates: %{public}@", v3, 0xCu);
    sub_1000032A8(v4, &qword_10077F920);
  }

  v6 = *(v0 + 392);
  v7 = *(v0 + 368);
  v8 = *(v0 + 376);
  v10 = *(v0 + 240);
  v9 = *(v0 + 248);
  v11 = *(v0 + 232);

  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);
  v12 = *(v0 + 424) + 1;
  if (v12 == *(v0 + 400))
  {
LABEL_4:

    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    p_name = &stru_100779FF8.name;
    v16 = &stru_100779FF8.name;
    while (1)
    {
      *(v0 + 424) = v12;
      v17 = *(v0 + 144);
      (*(v0 + 416))(*(v0 + 392), *(v0 + 136) + ((*(v0 + 516) + 32) & ~*(v0 + 516)) + *(v0 + 408) * v12, *(v0 + 368));
      v18 = AutomaticUpdate.appleItemID.getter();
      v19 = [v17 p_name[62]];
      v20 = [v19 v16[100]];

      if (v20)
      {
        v21 = [*(v0 + 144) iTunesMetadata];
        v22 = [v21 storeItemIdentifier];

        if (v18 == v22)
        {
          break;
        }
      }

      v23 = 0;
      v24 = *(*(v0 + 152) + 16);
      while (v24 != v23)
      {
        v26 = *(v0 + 352);
        v25 = *(v0 + 360);
        v27 = *(v0 + 344);
        (*(v26 + 16))(v25, *(v0 + 152) + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v23++, v27);
        v28 = AppVersion.appleItemID.getter();
        v29 = AutomaticUpdate.appleItemID.getter();
        (*(v26 + 8))(v25, v27);
        if (v28 == v29)
        {
          goto LABEL_19;
        }
      }

      v30 = *(v0 + 416);
      v31 = *(v0 + 384);
      v32 = *(v0 + 392);
      v33 = *(v0 + 368);
      v34 = *(v0 + 160);
      static Logger.install.getter();
      v30(v31, v32, v33);
      v35 = v34;

      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();

      v38 = os_log_type_enabled(v36, v37);
      v39 = *(v0 + 384);
      v40 = *(v0 + 392);
      v41 = *(v0 + 368);
      v42 = *(v0 + 376);
      v43 = *(v0 + 256);
      v44 = *(v0 + 240);
      v67 = *(v0 + 232);
      if (v38)
      {
        v62 = *(v0 + 168);
        v63 = *(v0 + 176);
        v45 = *(v0 + 160);
        v66 = *(v0 + 392);
        v46 = swift_slowAlloc();
        v65 = v43;
        v47 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v68 = v64;
        *v46 = 138412802;
        *(v46 + 4) = v45;
        *v47 = v45;
        *(v46 + 12) = 2082;
        v48 = v45;
        *(v46 + 14) = sub_1002346CC(v62, v63, &v68);
        *(v46 + 22) = 2050;
        v49 = AutomaticUpdate.appleItemID.getter();
        v50 = *(v42 + 8);
        v50(v39, v41);
        *(v46 + 24) = v49;
        _os_log_impl(&_mh_execute_header, v36, v37, "[%@] %{public}s asked us to update %{public}llu but they don't have it installed.", v46, 0x20u);
        sub_1000032A8(v47, &qword_10077F920);

        sub_10000710C(v64);

        (*(v44 + 8))(v65, v67);
        v50(v66, v41);
      }

      else
      {
        v51 = *(v42 + 8);
        v51(v39, v41);

        (*(v44 + 8))(v43, v67);
        v51(v40, v41);
      }

      p_name = (&stru_100779FF8 + 8);
      v16 = (&stru_100779FF8 + 8);
      v12 = *(v0 + 424) + 1;
      if (v12 == *(v0 + 400))
      {
        goto LABEL_4;
      }
    }

LABEL_19:
    v52 = *(v0 + 520);
    v53 = *(v0 + 304);
    v54 = *(v0 + 288);
    v55 = *(v0 + 296);
    AutomaticUpdate.alternativeDistributionPackage.getter();
    (*(v55 + 104))(v53, v52, v54);
    AutomaticUpdate.installVerificationToken.getter();
    AutomaticUpdate.account.getter();
    AutomaticUpdate.appShareURL.getter();
    AppInstallRequest.init(adp:type:oAuthToken:installVerificationToken:accountID:appShareURL:)();
    v56 = swift_task_alloc();
    *(v0 + 432) = v56;
    *v56 = v0;
    v56[1] = sub_10049C90C;
    v57 = *(v0 + 200);
    v58 = *(v0 + 208);
    v59 = *(v0 + 184);
    v60 = *(v0 + 192);
    v61 = *(v0 + 160);

    return sub_10042BEB0(v0 + 16, v59, v60, v57, v58, v61);
  }
}

uint64_t sub_10049E28C(void *a1, void (*a2)(uint64_t))
{
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.install.getter();
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "[%@] XPC connection invalidated", v11, 0xCu);
    sub_1000032A8(v12, &qword_10077F920);
  }

  (*(v5 + 8))(v7, v4);
  type metadata accessor for InternalError();
  sub_1004A2730(&qword_10077F900, type metadata accessor for InternalError);
  v14 = swift_allocError();
  swift_storeEnumTagMultiPayload();
  a2(v14);
}

void sub_10049E4B4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_10049E57C(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10049E658()
{
  v1 = String._bridgeToObjectiveC()();

  v6 = 0;
  v2 = [v0 initWithIdentifier:v1 error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_10049E724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = type metadata accessor for ContinuousClock.Instant();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_10049E824, 0, 0);
}

uint64_t sub_10049E824()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = type metadata accessor for ContinuousClock();
  v5 = sub_1004A2730(&qword_10077EA80, &type metadata accessor for ContinuousClock);
  dispatch thunk of Clock.now.getter();
  sub_1004A2730(&qword_100784D58, &type metadata accessor for ContinuousClock.Instant);
  dispatch thunk of InstantProtocol.advanced(by:)();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_10049E9B4;
  v8 = v0[11];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v8, v0 + 2, v4, v5);
}

uint64_t sub_10049E9B4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return _swift_task_switch(sub_10049EB70, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_10049EB70()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10049EBDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 336) = a1;
  *(v8 + 344) = a2;
  v15 = type metadata accessor for ContinuousClock();
  *(v8 + 352) = v15;
  *(v8 + 360) = *(v15 - 8);
  *(v8 + 368) = swift_task_alloc();
  sub_1001F0C48(&qword_10077EDE0);
  *(v8 + 376) = swift_task_alloc();
  v16 = type metadata accessor for _AppExtensionProcess();
  *(v8 + 384) = v16;
  *(v8 + 392) = *(v16 - 8);
  *(v8 + 400) = swift_task_alloc();
  *(v8 + 408) = swift_task_alloc();
  *(v8 + 416) = swift_task_alloc();
  v17 = type metadata accessor for Logger();
  *(v8 + 424) = v17;
  *(v8 + 432) = *(v17 - 8);
  *(v8 + 440) = swift_task_alloc();
  *(v8 + 448) = swift_task_alloc();
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = swift_task_alloc();
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 40) = a4;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 80) = v21;
  *(v8 + 96) = v22;
  *(v8 + 104) = v23;
  v18 = sub_10020A748((v8 + 16));
  (*(*(a4 - 8) + 16))(v18, a3, a4);

  return _swift_task_switch(sub_10049EE78, 0, 0);
}

uint64_t sub_10049EE78()
{
  sub_100006D8C((v0 + 16), *(v0 + 40));

  v1 = sub_10042A954();

  v2 = *(v0 + 344);
  if (!v1)
  {
    static Logger.install.getter();
    v16 = v2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 344);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "[%@] Ignoring update poll request as device is locked", v20, 0xCu);
      sub_1000032A8(v21, &qword_10077F920);
    }

    v23 = *(v0 + 472);
    v24 = *(v0 + 424);
    v25 = *(v0 + 432);

    (*(v25 + 8))(v23, v24);
    sub_100231094(0);
LABEL_27:
    sub_10000710C(v0 + 16);

    v55 = *(v0 + 8);

    return v55();
  }

  static Logger.install.getter();
  v3 = v2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Granting run time for automatic updates for extensions", v7, 0xCu);
    sub_1000032A8(v8, &qword_10077F920);
  }

  v10 = *(v0 + 480);
  v11 = *(v0 + 424);
  v12 = *(v0 + 432);

  v13 = *(v12 + 8);
  *(v0 + 488) = v13;
  *(v0 + 496) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v10, v11);
  v14 = objc_allocWithZone(LSExtensionPointRecord);
  v15 = sub_10049E658();
  *(v0 + 504) = v15;
  v26 = [objc_opt_self() enumeratorWithExtensionPointRecord:v15 options:0];
  *(v0 + 512) = v26;
  v27 = [v26 nextObject];
  v28 = v27;
  v29 = _swiftEmptyArrayStorage;
  if (!v28)
  {
LABEL_20:
    *(v0 + 552) = v29;
    if (v29[2])
    {
      static Clock<>.continuous.getter();
      v40 = swift_task_alloc();
      *(v0 + 600) = v40;
      *v40 = v0;
      v40[1] = sub_1004A0ECC;

      return sub_10049E724(0xA055690D9DB80000, 1, 0, 0, 1);
    }

    v42 = *(v0 + 344);
    static Logger.install.getter();
    v43 = v42;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = *(v0 + 344);
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      *(v47 + 4) = v46;
      *v48 = v46;
      v49 = v46;
      _os_log_impl(&_mh_execute_header, v44, v45, "[%@] Automatic updates for extensions is complete", v47, 0xCu);
      sub_1000032A8(v48, &qword_10077F920);
    }

    v51 = *(v0 + 504);
    v50 = *(v0 + 512);
    v52 = *(v0 + 488);
    v53 = *(v0 + 440);
    v54 = *(v0 + 424);

    v52(v53, v54);
    goto LABEL_27;
  }

  *(v0 + 520) = _swiftEmptyArrayStorage;
  while (1)
  {
    *(v0 + 528) = v28;
    v31 = [v28 containingBundleRecord];
    *(v0 + 536) = v31;
    if (!v31)
    {
      goto LABEL_12;
    }

    v32 = v31;
    objc_opt_self();
    v33 = swift_dynamicCastObjCClass();
    *(v0 + 544) = v33;
    if (!v33)
    {
      goto LABEL_10;
    }

    v34 = [v33 bundleIdentifier];
    if (!v34)
    {
      v30 = v28;
      v28 = v32;
      goto LABEL_11;
    }

    v35 = v34;
    v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v38 = v37;

    v39 = sub_100616B70(v36, v38);
    *(v0 + 560) = v39;

    if (v39[2])
    {
      break;
    }

LABEL_10:
    v30 = v32;
LABEL_11:

LABEL_12:
    v28 = [*(v0 + 512) nextObject];
    if (!v28)
    {
      v29 = *(v0 + 520);
      goto LABEL_20;
    }
  }

  v56 = [v28 bundleIdentifier];
  if (v56)
  {
    v57 = v56;
    v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
  }

  else
  {
    v60 = 0xE700000000000000;
    v58 = 0x6E776F6E6B6E75;
  }

  *(v0 + 576) = v60;
  *(v0 + 568) = v58;
  v61 = swift_task_alloc();
  *(v0 + 584) = v61;
  *v61 = v0;
  v61[1] = sub_10049F7E4;
  v62 = *(v0 + 376);

  return sub_10049AB44(v62, v28);
}

uint64_t sub_10049F7E4()
{
  *(*v1 + 592) = v0;

  if (v0)
  {

    v2 = sub_1004A0854;
  }

  else
  {
    v2 = sub_10049F90C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10049F90C()
{
  v135 = v0;
  v1 = *(v0 + 592);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 416);
  v5 = *(v0 + 384);
  v6 = *(v0 + 392);
  v7 = *(v0 + 376);
  v8 = *(v0 + 344);
  (*(v6 + 56))(v7, 0, 1, v5);
  v9 = v5;
  v10 = *(v6 + 32);
  v10(v4, v7, v9);
  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = v3;
  v11[4] = v2;
  v12 = v8;

  sub_1004A15C0(v4, v12, sub_100231C40, v11);
  if (!v1)
  {
    v31 = v13;
    v130 = v10;
    v32 = *(v0 + 344);

    v121 = _AppExtensionProcess.auditToken.getter();
    v122 = v33;
    v124 = v34;
    v127 = v35;
    static Logger.install.getter();
    swift_bridgeObjectRetain_n();
    v36 = v32;

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    v133 = v31;
    if (os_log_type_enabled(v37, v38))
    {
      v112 = *(v0 + 568);
      v114 = *(v0 + 576);
      v39 = *(v0 + 560);
      v118 = *(v0 + 464);
      v119 = *(v0 + 488);
      v116 = *(v0 + 424);
      v40 = *(v0 + 344);
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v134[0] = v43;
      *v41 = 138412802;
      *(v41 + 4) = v40;
      *v42 = v40;
      *(v41 + 12) = 2082;
      v44 = v40;
      *(v41 + 14) = sub_1002346CC(v112, v114, v134);
      *(v41 + 22) = 2050;
      v45 = *(v39 + 16);

      *(v41 + 24) = v45;

      _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Granting automatic update run time to: %{public}s with %{public}ld installed apps", v41, 0x20u);
      sub_1000032A8(v42, &qword_10077F920);

      sub_10000710C(v43);

      v119(v118, v116);
    }

    else
    {
      v77 = *(v0 + 488);
      v78 = *(v0 + 464);
      v79 = *(v0 + 424);
      swift_bridgeObjectRelease_n();

      v77(v78, v79);
    }

    *(v0 + 328) = *(v0 + 560);
    sub_1001F0C48(&qword_10077EDE8);
    sub_1004A2644(&qword_10077EDF0, &qword_10077EDF8);
    sub_1004A2644(&qword_10077EE00, &qword_10077EE08);
    v80 = encodeXPCValues<A>(_:)();
    v132 = *(v0 + 576);
    v108 = *(v0 + 568);
    v109 = *(v0 + 560);
    v107 = *(v0 + 544);
    v111 = *(v0 + 536);
    v120 = *(v0 + 416);
    v113 = *(v0 + 392);
    v115 = *(v0 + 384);
    v117 = *(v0 + 408);
    v81 = *(v0 + 336);
    v82 = *(v0 + 344);
    v83 = v80;
    v85 = v84;
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100007158(v83, v85);
    sub_10020A980(v81, v0 + 256);
    sub_100231CE8(v0 + 16, v0 + 112);
    v86 = swift_allocObject();
    *(v86 + 16) = v82;
    *(v86 + 24) = v108;
    *(v86 + 32) = v132;
    *(v86 + 40) = v107;
    *(v86 + 48) = v109;
    *(v86 + 56) = v121;
    *(v86 + 64) = v122;
    *(v86 + 72) = v124;
    *(v86 + 80) = v127;
    sub_1001DFDBC((v0 + 256), v86 + 88);
    sub_100231D54((v0 + 112), (v86 + 128));
    *(v0 + 240) = sub_100231D74;
    *(v0 + 248) = v86;
    *(v0 + 208) = _NSConcreteStackBlock;
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_10049AA68;
    *(v0 + 232) = &unk_1007666F0;
    v87 = _Block_copy((v0 + 208));
    v88 = v82;
    v89 = v111;

    [v133 automaticUpdatesFor:isa reply:v87];
    _Block_release(v87);

    (*(v113 + 16))(v117, v120, v115);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v61 = *(v0 + 520);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v61 = sub_1003629B0(0, *(v61 + 2) + 1, 1, *(v0 + 520));
    }

    v92 = *(v61 + 2);
    v91 = *(v61 + 3);
    if (v92 >= v91 >> 1)
    {
      v61 = sub_1003629B0(v91 > 1, v92 + 1, 1, v61);
    }

    v93 = *(v0 + 536);
    v94 = *(v0 + 528);
    v95 = *(v0 + 416);
    v125 = *(v0 + 408);
    v128 = *(v0 + 512);
    v97 = *(v0 + 384);
    v96 = *(v0 + 392);
    swift_unknownObjectRelease();

    (*(v96 + 8))(v95, v97);
    *(v61 + 2) = v92 + 1;
    v130(&v61[((*(v96 + 80) + 32) & ~*(v96 + 80)) + *(v96 + 72) * v92], v125, v97);
    v98 = [v128 nextObject];
    if (v98)
    {
      v50 = v98;
      *(v0 + 520) = v61;
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v14 = *(v0 + 416);
  v15 = *(v0 + 384);
  v16 = *(v0 + 392);

  (*(v16 + 8))(v14, v15);
  v17 = *(v0 + 344);
  static Logger.install.getter();
  v18 = v17;

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  v21 = os_log_type_enabled(v19, v20);
  v22 = *(v0 + 576);
  if (v21)
  {
    v23 = *(v0 + 568);
    v24 = *(v0 + 528);
    v129 = *(v0 + 536);
    v131 = *(v0 + 488);
    v123 = *(v0 + 424);
    v126 = *(v0 + 448);
    v25 = *(v0 + 344);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v134[0] = v28;
    *v26 = 138412546;
    *(v26 + 4) = v25;
    *v27 = v25;
    *(v26 + 12) = 2082;
    v29 = v25;
    v30 = sub_1002346CC(v23, v22, v134);

    *(v26 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "[%@] Failed to create proxy for extension: %{public}s", v26, 0x16u);
    sub_1000032A8(v27, &qword_10077F920);

    sub_10000710C(v28);

    v131(v126, v123);
  }

  else
  {
    v46 = *(v0 + 536);
    v47 = *(v0 + 488);
    v48 = *(v0 + 448);
    v49 = *(v0 + 424);

    v47(v48, v49);
  }

  v50 = [*(v0 + 512) nextObject];
  if (!v50)
  {
LABEL_18:
    v61 = *(v0 + 520);
LABEL_19:
    *(v0 + 552) = v61;
    if (*(v61 + 2))
    {
      static Clock<>.continuous.getter();
      v62 = swift_task_alloc();
      *(v0 + 600) = v62;
      *v62 = v0;
      v62[1] = sub_1004A0ECC;

      return sub_10049E724(0xA055690D9DB80000, 1, 0, 0, 1);
    }

    else
    {

      v64 = *(v0 + 344);
      static Logger.install.getter();
      v65 = v64;
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = *(v0 + 344);
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        *(v69 + 4) = v68;
        *v70 = v68;
        v71 = v68;
        _os_log_impl(&_mh_execute_header, v66, v67, "[%@] Automatic updates for extensions is complete", v69, 0xCu);
        sub_1000032A8(v70, &qword_10077F920);
      }

      v73 = *(v0 + 504);
      v72 = *(v0 + 512);
      v74 = *(v0 + 488);
      v75 = *(v0 + 440);
      v76 = *(v0 + 424);

      v74(v75, v76);
      sub_10000710C(v0 + 16);

      v99 = *(v0 + 8);

      return v99();
    }
  }

  while (1)
  {
LABEL_12:
    *(v0 + 528) = v50;
    v52 = [v50 containingBundleRecord];
    *(v0 + 536) = v52;
    if (!v52)
    {
      goto LABEL_11;
    }

    v53 = v52;
    objc_opt_self();
    v54 = swift_dynamicCastObjCClass();
    *(v0 + 544) = v54;
    if (!v54)
    {
      goto LABEL_9;
    }

    v55 = [v54 bundleIdentifier];
    if (!v55)
    {
      v51 = v50;
      v50 = v53;
      goto LABEL_10;
    }

    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = sub_100616B70(v57, v59);
    *(v0 + 560) = v60;

    if (v60[2])
    {
      break;
    }

LABEL_9:
    v51 = v53;
LABEL_10:

LABEL_11:
    v50 = [*(v0 + 512) nextObject];
    if (!v50)
    {
      goto LABEL_18;
    }
  }

  v100 = [v50 bundleIdentifier];
  if (v100)
  {
    v101 = v100;
    v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v104 = v103;
  }

  else
  {
    v104 = 0xE700000000000000;
    v102 = 0x6E776F6E6B6E75;
  }

  *(v0 + 576) = v104;
  *(v0 + 568) = v102;
  v105 = swift_task_alloc();
  *(v0 + 584) = v105;
  *v105 = v0;
  v105[1] = sub_10049F7E4;
  v106 = *(v0 + 376);

  return sub_10049AB44(v106, v50);
}

uint64_t sub_1004A0854()
{
  v61 = v0;
  v1 = *(v0 + 376);
  (*(*(v0 + 392) + 56))(v1, 1, 1, *(v0 + 384));
  sub_1000032A8(v1, &qword_10077EDE0);
  v2 = *(v0 + 344);
  static Logger.install.getter();
  v3 = v2;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 576);
  if (v6)
  {
    v8 = *(v0 + 568);
    v9 = *(v0 + 528);
    v58 = *(v0 + 536);
    v59 = *(v0 + 488);
    v56 = *(v0 + 424);
    v57 = *(v0 + 448);
    v10 = *(v0 + 344);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v60 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v10;
    *v12 = v10;
    *(v11 + 12) = 2082;
    v14 = v10;
    v15 = sub_1002346CC(v8, v7, &v60);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Failed to create proxy for extension: %{public}s", v11, 0x16u);
    sub_1000032A8(v12, &qword_10077F920);

    sub_10000710C(v13);

    v59(v57, v56);
  }

  else
  {
    v16 = *(v0 + 536);
    v17 = *(v0 + 488);
    v18 = *(v0 + 448);
    v19 = *(v0 + 424);

    v17(v18, v19);
  }

  v20 = [*(v0 + 512) nextObject];
  if (!v20)
  {
LABEL_15:
    v32 = *(v0 + 520);
    *(v0 + 552) = v32;
    if (*(v32 + 16))
    {
      static Clock<>.continuous.getter();
      v33 = swift_task_alloc();
      *(v0 + 600) = v33;
      *v33 = v0;
      v33[1] = sub_1004A0ECC;

      return sub_10049E724(0xA055690D9DB80000, 1, 0, 0, 1);
    }

    else
    {

      v35 = *(v0 + 344);
      static Logger.install.getter();
      v36 = v35;
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = *(v0 + 344);
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v39;
        *v41 = v39;
        v42 = v39;
        _os_log_impl(&_mh_execute_header, v37, v38, "[%@] Automatic updates for extensions is complete", v40, 0xCu);
        sub_1000032A8(v41, &qword_10077F920);
      }

      v44 = *(v0 + 504);
      v43 = *(v0 + 512);
      v45 = *(v0 + 488);
      v46 = *(v0 + 440);
      v47 = *(v0 + 424);

      v45(v46, v47);
      sub_10000710C(v0 + 16);

      v48 = *(v0 + 8);

      return v48();
    }
  }

  v21 = v20;
  while (1)
  {
    *(v0 + 528) = v21;
    v23 = [v21 containingBundleRecord];
    *(v0 + 536) = v23;
    if (!v23)
    {
      goto LABEL_8;
    }

    v24 = v23;
    objc_opt_self();
    v25 = swift_dynamicCastObjCClass();
    *(v0 + 544) = v25;
    if (!v25)
    {
      goto LABEL_6;
    }

    v26 = [v25 bundleIdentifier];
    if (!v26)
    {
      v22 = v21;
      v21 = v24;
      goto LABEL_7;
    }

    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_100616B70(v28, v30);
    *(v0 + 560) = v31;

    if (v31[2])
    {
      break;
    }

LABEL_6:
    v22 = v24;
LABEL_7:

LABEL_8:
    v21 = [*(v0 + 512) nextObject];
    if (!v21)
    {
      goto LABEL_15;
    }
  }

  v49 = [v21 bundleIdentifier];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v53 = 0xE700000000000000;
    v51 = 0x6E776F6E6B6E75;
  }

  *(v0 + 576) = v53;
  *(v0 + 568) = v51;
  v54 = swift_task_alloc();
  *(v0 + 584) = v54;
  *v54 = v0;
  v54[1] = sub_10049F7E4;
  v55 = *(v0 + 376);

  return sub_10049AB44(v55, v21);
}

uint64_t sub_1004A0ECC()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  (*(v2[45] + 8))(v2[46], v2[44]);
  if (v0)
  {

    v3 = sub_1004A1288;
  }

  else
  {
    v3 = sub_1004A101C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1004A101C()
{
  v1 = v0[69];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[49];
    v6 = *(v3 + 16);
    v4 = v3 + 16;
    v5 = v6;
    v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v8 = *(v4 + 56);
    do
    {
      v9 = v0[50];
      v10 = v0[48];
      v5(v9, v7, v10);
      _AppExtensionProcess.invalidate()();
      (*(v4 - 8))(v9, v10);
      v7 += v8;
      --v2;
    }

    while (v2);
  }

  v11 = v0[43];
  static Logger.install.getter();
  v12 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[43];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v15;
    *v17 = v15;
    v18 = v15;
    _os_log_impl(&_mh_execute_header, v13, v14, "[%@] Automatic updates for extensions is complete", v16, 0xCu);
    sub_1000032A8(v17, &qword_10077F920);
  }

  v20 = v0[63];
  v19 = v0[64];
  v21 = v0[61];
  v22 = v0[55];
  v23 = v0[53];

  v21(v22, v23);
  sub_10000710C((v0 + 2));

  v24 = v0[1];

  return v24();
}

uint64_t sub_1004A1288()
{
  v25 = v0;
  v1 = *(v0 + 504);

  v2 = *(v0 + 344);
  static Logger.install.getter();
  v3 = v2;
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v23 = *(v0 + 488);
    v21 = *(v0 + 424);
    v22 = *(v0 + 456);
    v6 = *(v0 + 344);
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24 = v20;
    *v7 = 138412546;
    *(v7 + 4) = v6;
    *v19 = v6;
    *(v7 + 12) = 2082;
    swift_getErrorValue();
    v8 = *(*(v0 + 304) - 8);
    swift_task_alloc();
    (*(v8 + 16))();
    v9 = v6;
    v10 = String.init<A>(describing:)();
    v12 = v11;

    v13 = sub_1002346CC(v10, v12, &v24);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%@] Error granting automatic update runtime: %{public}s", v7, 0x16u);
    sub_1000032A8(v19, &qword_10077F920);

    sub_10000710C(v20);

    v23(v22, v21);
  }

  else
  {
    v14 = *(v0 + 488);
    v15 = *(v0 + 456);
    v16 = *(v0 + 424);

    v14(v15, v16);
  }

  sub_10000710C(v0 + 16);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1004A15C0(uint64_t a1, void *a2, uint64_t (*a3)(), void *a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11.super.isa = _AppExtensionProcess.makeXPCConnection()().super.isa;
  if (!v12)
  {
    isa = v11.super.isa;
    v27 = v8;
    v26[0] = 0;
    v14 = swift_allocObject();
    v14[2] = a2;
    v14[3] = a3;
    v14[4] = a4;
    v32 = sub_1004A1E28;
    v33 = v14;
    aBlock = _NSConcreteStackBlock;
    v29 = 1107296256;
    v26[1] = &v30;
    v30 = sub_100495FFC;
    v31 = &unk_100766510;
    v15 = _Block_copy(&aBlock);
    v16 = a2;

    [(objc_class *)isa setInvalidationHandler:v15];
    _Block_release(v15);
    v17 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP14MarketplaceKit31MarketplaceExtensionXPCProtocol_];
    [(objc_class *)isa setRemoteObjectInterface:v17];

    if (_AppExtensionProcess.isValid.getter())
    {
      [(objc_class *)isa resume];
      v32 = a3;
      v33 = a4;
      aBlock = _NSConcreteStackBlock;
      v29 = 1107296256;
      v30 = sub_10049E4B4;
      v31 = &unk_100766538;
      v18 = _Block_copy(&aBlock);

      v19 = [(objc_class *)isa remoteObjectProxyWithErrorHandler:v18];
      _Block_release(v18);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_1001F0C48(&qword_100784D60);
      if (swift_dynamicCast())
      {

        return;
      }
    }

    else
    {
      static Logger.install.getter();
      v20 = v16;
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v23 = 138412290;
        *(v23 + 4) = v20;
        *v24 = v20;
        v25 = v20;
        _os_log_impl(&_mh_execute_header, v21, v22, "[%@] Process became invalid before XPC connection activation", v23, 0xCu);
        sub_1000032A8(v24, &qword_10077F920);
      }

      (*(v27 + 8))(v10, v7);
      [(objc_class *)isa invalidate];
    }

    type metadata accessor for InternalError();
    sub_1004A2730(&qword_10077F900, type metadata accessor for InternalError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1004A1A30(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&unk_100784AE0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_1004993E4(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A1B70(uint64_t a1)
{
  v4 = *(sub_1001F0C48(&unk_100784AE0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_100498C04(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1004A1C74(char a1)
{
  v3 = *(sub_1001F0C48(&unk_100784AE0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1004990AC(a1, v4, v5);
}

uint64_t sub_1004A1CFC(uint64_t a1)
{
  v4 = *(sub_1001F0C48(&unk_100784AE0) - 8);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1 + ((*(v4 + 80) + 40) & ~*(v4 + 80));
  v9 = *(v8 + *(v4 + 64));
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100214EFC;

  return sub_1004992AC(a1, v5, v6, v7, v8, v9);
}

uint64_t sub_1004A1E34(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&unk_100784AE0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_100498B1C(a1, v7, v8, v9, v1 + v6, v10);
}

unint64_t sub_1004A1F74()
{
  result = qword_100784C70;
  if (!qword_100784C70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100784C70);
  }

  return result;
}

uint64_t sub_1004A208C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&qword_100784D68) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_100498610(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A21CC(uint64_t a1)
{
  v4 = *(sub_1001F0C48(&qword_100784D68) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_100214EFC;

  return sub_100497640(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1004A22F0(unint64_t a1)
{
  v3 = *(sub_1001F0C48(&qword_100784D68) - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_100497C78(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1004A2374(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&qword_100784D68) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_1004984A4(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A24B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&qword_100784D68) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_100497558(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A25F4(void (*a1)(void))
{
  a1(*(v1 + 32));

  return _swift_deallocObject(v1, 40, 7);
}

uint64_t sub_1004A2644(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_10077EDE8);
    sub_1004A2730(a2, &type metadata accessor for AppVersion);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004A26E0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1001F76D0(&qword_100784D78);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1004A2730(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1004A2778(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100214EFC;

  return sub_10049C024(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1004A28A8(uint64_t *a1)
{
  v2 = sub_1001F0C48(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004A2998(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&qword_100784DA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_10049AAF0(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A2AD8(uint64_t *a1)
{
  v2 = sub_1001F0C48(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 64) & ~v4;
  v6 = *(v3 + 64);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004A2BB0(uint64_t a1)
{
  v4 = *(sub_1001F0C48(&qword_100784DA0) - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = v1[7];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1001F0E54;

  return sub_100499C6C(a1, v6, v7, v8, v9, v10, v11, v1 + v5);
}

uint64_t sub_1004A2CD4(uint64_t *a1)
{
  v2 = sub_1001F0C48(a1);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 48) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1004A2DA4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1001F0C48(&qword_100784DA0) - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2 + ((*(v5 + 80) + 48) & ~*(v5 + 80));

  return sub_10049A314(a1, a2, v6, v7, v8, v9, v10);
}

unint64_t sub_1004A2E38()
{
  result = qword_100784DA8;
  if (!qword_100784DA8)
  {
    sub_1001F76D0(&qword_100784D90);
    sub_1004A2644(&qword_10077EDF0, &qword_10077EDF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DA8);
  }

  return result;
}

unint64_t sub_1004A2EF4()
{
  result = qword_100784DB0;
  if (!qword_100784DB0)
  {
    sub_1001F76D0(&qword_100784D90);
    sub_1004A2644(&qword_10077EE00, &qword_10077EE08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DB0);
  }

  return result;
}

uint64_t sub_1004A2FB0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&qword_100784DA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1001F0E54;

  return sub_10049A980(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A30F0(uint64_t *a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_1001F0C48(a1);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 40) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v6 + 8))(v3 + v8, v5);
  a3(*(v3 + v9));

  return _swift_deallocObject(v3, v9 + 8, v7 | 7);
}

uint64_t sub_1004A31DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1001F0C48(&qword_100784DA0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_100214EFC;

  return sub_100499B84(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_1004A3374(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784DB8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  sub_100006D8C(a1, a1[3]);
  sub_1004A380C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1004A3518()
{
  v1 = 0x4B65736E6563696CLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x526C6177656E6572;
  }
}

uint64_t sub_1004A3588@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1004A3860(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1004A35B0(uint64_t a1)
{
  v2 = sub_1004A380C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004A35EC(uint64_t a1)
{
  v2 = sub_1004A380C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004A3640()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x65736E6563696CLL;
  }
}

uint64_t sub_1004A3680@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65736E6563696CLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006CBF00 == a2)
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

uint64_t sub_1004A3764(uint64_t a1)
{
  v2 = sub_1004A3B94();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1004A37A0(uint64_t a1)
{
  v2 = sub_1004A3B94();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1004A37DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1004A3990(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1004A380C()
{
  result = qword_100784DC0;
  if (!qword_100784DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DC0);
  }

  return result;
}

uint64_t sub_1004A3860(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x526C6177656E6572 && a2 == 0xEE00747365757165;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4B65736E6563696CLL && a2 == 0xEA00000000007965 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001006CA2A0 == a2)
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

uint64_t sub_1004A3990(void *a1)
{
  v3 = sub_1001F0C48(&qword_100784DC8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  sub_100006D8C(a1, a1[3]);
  sub_1004A3B94();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[31] = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_1001F0C48(&unk_10077FB40);
    v9[15] = 1;
    sub_10035CEB4();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000710C(a1);
  return v7;
}

unint64_t sub_1004A3B94()
{
  result = qword_100784DD0;
  if (!qword_100784DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DD0);
  }

  return result;
}

unint64_t sub_1004A3C0C()
{
  result = qword_100784DD8;
  if (!qword_100784DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DD8);
  }

  return result;
}

unint64_t sub_1004A3C64()
{
  result = qword_100784DE0;
  if (!qword_100784DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DE0);
  }

  return result;
}

unint64_t sub_1004A3CBC()
{
  result = qword_100784DE8;
  if (!qword_100784DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DE8);
  }

  return result;
}

unint64_t sub_1004A3D14()
{
  result = qword_100784DF0;
  if (!qword_100784DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DF0);
  }

  return result;
}

unint64_t sub_1004A3D6C()
{
  result = qword_100784DF8;
  if (!qword_100784DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784DF8);
  }

  return result;
}

unint64_t sub_1004A3DC4()
{
  result = qword_100784E00;
  if (!qword_100784E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100784E00);
  }

  return result;
}

uint64_t sub_1004A3E18(uint64_t a1, char a2)
{
  *(v2 + 761) = a2;
  *(v2 + 1040) = a1;
  return _swift_task_switch(sub_1004A3E3C, 0, 0);
}

uint64_t sub_1004A3E3C()
{
  v1 = *(v0 + 1040);
  v2 = 54;
  if (*(v0 + 761))
  {
    v2 = 55;
  }

  *(v0 + 696) = v2;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0;
  *(v0 + 760) = 41;
  *(v0 + 944) = 41;
  v3 = *(v0 + 744);
  *(v0 + 912) = *(v0 + 728);
  *(v0 + 928) = v3;
  v4 = *(v0 + 712);
  *(v0 + 880) = *(v0 + 696);
  *(v0 + 896) = v4;
  *(v0 + 808) = 51;
  *(v0 + 864) = 0;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 872) = 41;
  *(v0 + 984) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 952) = 0u;
  *(v0 + 968) = 0u;
  *(v0 + 1016) = 41;
  v5 = swift_allocObject();
  *(v0 + 1048) = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = -1;
  *(v5 + 88) = v1;
  v6 = swift_task_alloc();
  *(v0 + 1056) = v6;
  *(v6 + 16) = &unk_1006AD690;
  *(v6 + 24) = v5;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  *(v0 + 1064) = v7;
  *v7 = v0;
  v7[1] = sub_1004A3FEC;

  return sub_1006600F0(v0 + 808);
}

uint64_t sub_1004A3FEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[134] = a1;
  v3[135] = a2;

  v4 = swift_task_alloc();
  v3[136] = v4;
  *v4 = v6;
  v4[1] = sub_1004A4144;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_1004A4144(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[137] = a1;
  v3[138] = a2;

  sub_100222FFC((v3 + 87));
  v4 = swift_task_alloc();
  v3[139] = v4;
  *v4 = v6;
  v4[1] = sub_1004A42A4;

  return sub_1006600F0((v3 + 119));
}

uint64_t sub_1004A42A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1120) = a1;
  *(v3 + 1128) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1024, sub_1004A43AC, v3 + 656);
}

uint64_t sub_1004A43C8()
{
  v6 = *(v0 + 1096);
  v7 = *(v0 + 1120);
  v5 = *(v0 + 1072);
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1032);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1136) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1024, sub_1004A44A0, v0 + 768);
}

uint64_t sub_1004A44A0()
{
  sub_1004A4CAC();
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A4524, v1, v0);
}

uint64_t sub_1004A4524()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 1136);

  return v1(v2);
}

uint64_t sub_1004A45A0(uint64_t a1, char a2)
{
  *(v2 + 761) = a2;
  *(v2 + 1040) = a1;
  return _swift_task_switch(sub_1004A45C4, 0, 0);
}

uint64_t sub_1004A45C4()
{
  v1 = *(v0 + 1040);
  v2 = 49;
  if (*(v0 + 761))
  {
    v2 = 50;
  }

  *(v0 + 696) = v2;
  *(v0 + 704) = 0u;
  *(v0 + 720) = 0u;
  *(v0 + 736) = 0u;
  *(v0 + 752) = 0;
  *(v0 + 760) = 41;
  *(v0 + 944) = 41;
  v3 = *(v0 + 744);
  *(v0 + 912) = *(v0 + 728);
  *(v0 + 928) = v3;
  v4 = *(v0 + 712);
  *(v0 + 880) = *(v0 + 696);
  *(v0 + 896) = v4;
  *(v0 + 808) = 48;
  *(v0 + 864) = 0;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 872) = 41;
  *(v0 + 984) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 952) = 0u;
  *(v0 + 968) = 0u;
  *(v0 + 1016) = 41;
  v5 = swift_allocObject();
  *(v0 + 1048) = v5;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 80) = -1;
  *(v5 + 88) = v1;
  v6 = swift_task_alloc();
  *(v0 + 1056) = v6;
  *(v6 + 16) = &unk_10069F2C0;
  *(v6 + 24) = v5;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v7 = swift_task_alloc();
  *(v0 + 1064) = v7;
  *v7 = v0;
  v7[1] = sub_1004A4774;

  return sub_1006600F0(v0 + 808);
}

uint64_t sub_1004A4774(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[134] = a1;
  v3[135] = a2;

  v4 = swift_task_alloc();
  v3[136] = v4;
  *v4 = v6;
  v4[1] = sub_1004A48CC;

  return sub_1006600F0((v3 + 110));
}

uint64_t sub_1004A48CC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[137] = a1;
  v3[138] = a2;

  sub_100222FFC((v3 + 87));
  v4 = swift_task_alloc();
  v3[139] = v4;
  *v4 = v6;
  v4[1] = sub_1004A4A2C;

  return sub_1006600F0((v3 + 119));
}

uint64_t sub_1004A4A2C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1120) = a1;
  *(v3 + 1128) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1024, sub_1004A4B34, v3 + 656);
}

uint64_t sub_1004A4B50()
{
  v6 = *(v0 + 1096);
  v7 = *(v0 + 1120);
  v5 = *(v0 + 1072);
  v1 = *(v0 + 1024);
  v2 = *(v0 + 1032);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1136) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1024, sub_1004A4C28, v0 + 768);
}

uint64_t sub_1004A4C28()
{
  sub_1004A4CAC();
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A6440, v1, v0);
}

unint64_t sub_1004A4CAC()
{
  result = qword_10077EC88;
  if (!qword_10077EC88)
  {
    type metadata accessor for SystemAlert();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10077EC88);
  }

  return result;
}

uint64_t sub_1004A4D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[173] = a7;
  v7[172] = a6;
  v7[171] = a5;
  v7[170] = a4;
  v7[169] = a3;
  v7[168] = a2;
  v7[167] = a1;
  type metadata accessor for MediaAPIMetadata();
  v7[174] = swift_task_alloc();
  v8 = type metadata accessor for AppInstallRequestType();
  v7[175] = v8;
  v7[176] = *(v8 - 8);
  v7[177] = swift_task_alloc();
  v7[178] = swift_task_alloc();

  return _swift_task_switch(sub_1004A4E14, 0, 0);
}

uint64_t sub_1004A4E14()
{
  v1 = *(v0 + 1424);
  v2 = *(v0 + 1408);
  v3 = *(v0 + 1400);
  v4 = *(v0 + 1376);
  v5 = *(v0 + 1368);
  v6 = *(v0 + 1360);
  v7 = *(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_lockedStorage);
  v8 = v7 + *(*v7 + class metadata base offset for ManagedBuffer + 16);
  v9 = (*(*v7 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v7 + v9));
  v10 = *(type metadata accessor for ADPInstallConfiguration.Storage(0) + 28);
  v11 = *(v2 + 16);
  *(v0 + 1432) = v11;
  *(v0 + 1440) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v1, v8 + v10, v3);
  os_unfair_lock_unlock((v7 + v9));
  os_unfair_lock_lock((v7 + v9));
  sub_10020A980(v8, v0 + 1168);
  os_unfair_lock_unlock((v7 + v9));
  v12 = *(v6 + OBJC_IVAR____TtC28ManagedAppDistributionDaemon23ADPInstallConfiguration_logKey);
  sub_10020A980(v0 + 1168, v0 + 728);
  *(v0 + 696) = v5;
  *(v0 + 704) = v4;
  *(v0 + 712) = 0;
  *(v0 + 720) = v12;
  v13 = v12;
  v14 = swift_task_alloc();
  *(v0 + 1448) = v14;
  *v14 = v0;
  v14[1] = sub_1004A4FD0;
  v15 = *(v0 + 1392);

  return sub_10033EF00(v15);
}

uint64_t sub_1004A4FD0()
{
  *(*v1 + 1456) = v0;

  if (v0)
  {
    v2 = sub_1004A62BC;
  }

  else
  {
    v2 = sub_1004A50E4;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1004A50E4()
{
  v1 = *(v0 + 1432);
  v2 = *(v0 + 1424);
  v3 = *(v0 + 1416);
  v4 = *(v0 + 1408);
  v5 = *(v0 + 1400);
  v6 = *(v0 + 1392);
  *(v0 + 1464) = *v6;
  *(v0 + 1472) = v6[1];

  sub_1004A637C(v6);
  v1(v3, v2, v5);
  v7 = (*(v4 + 88))(v3, v5);
  if (v7 == enum case for AppInstallRequestType.automaticInstall(_:))
  {
LABEL_2:
    v8 = *(v0 + 1424);
    v9 = *(v0 + 1408);
    v10 = *(v0 + 1400);

    sub_1002232F0(v0 + 696);
    (*(v9 + 8))(v8, v10);
    sub_10000710C(v0 + 1168);

    v11 = *(v0 + 8);

    return v11(0);
  }

  if (v7 != enum case for AppInstallRequestType.install(_:))
  {
    if (v7 == enum case for AppInstallRequestType.automaticUpdate(_:))
    {
      goto LABEL_2;
    }

    if (v7 != enum case for AppInstallRequestType.update(_:))
    {
      if (v7 != enum case for AppInstallRequestType.promotion(_:) && v7 != enum case for AppInstallRequestType.restore(_:) && v7 != enum case for AppInstallRequestType.deviceVPP(_:) && v7 != enum case for AppInstallRequestType.deviceVPPUpdate(_:) && v7 != enum case for AppInstallRequestType.userVPP(_:) && v7 != enum case for AppInstallRequestType.userVPPUpdate(_:) && v7 != enum case for AppInstallRequestType.upp(_:) && v7 != enum case for AppInstallRequestType.restoreUpdate(_:))
      {
        return _assertionFailure(_:_:file:line:flags:)();
      }

      goto LABEL_2;
    }
  }

  sub_10042D85C(*(v0 + 1336), v0 + 1208);
  if (!*(v0 + 1232))
  {
    sub_1004A63D8(v0 + 1208);
    goto LABEL_24;
  }

  sub_1001F0C48(&qword_10077E970);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    sub_10042D85C(*(v0 + 1336), v0 + 1248);
    if (*(v0 + 1272))
    {
      sub_1001F0C48(&qword_10077E970);
      if (swift_dynamicCast())
      {

        v13 = 0;
        v14 = 0xE000000000000000;
        v18 = 1;
        goto LABEL_31;
      }
    }

    else
    {
      sub_1004A63D8(v0 + 1248);
    }

    v19 = *(v0 + 1456);
    v20 = *(v0 + 1352);
    v21 = *(v0 + 1344);
    objc_allocWithZone(LSApplicationRecord);

    v22 = sub_10049E57C(v21, v20, 0);
    if (v19)
    {
    }

    else if (v22)
    {
      v38 = v22;
      v39 = [v22 iTunesMetadata];
      v40 = [v39 distributorInfo];

      v41 = [v40 distributorNameForCurrentLocale];
      if (v41)
      {
        v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v42;

        v18 = 0;
        goto LABEL_31;
      }
    }

    v18 = 0;
    v14 = 0xE100000000000000;
    v13 = 63;
LABEL_31:
    v23 = *(v0 + 1192);
    v24 = *(v0 + 1200);
    sub_100006D8C((v0 + 1168), v23);
    v25 = (*(v24 + 56))(v23, v24);
    if (v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = 63;
    }

    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = 0xE100000000000000;
    }

    if (v18)
    {

      v29 = 5;
    }

    else
    {
      *(v0 + 1128) = v27;
      *(v0 + 1136) = v28;
      v29 = 4;
      v27 = v13;
      v28 = v14;
    }

    v30 = *(v0 + 1472);
    v31 = *(v0 + 1384);
    *(v0 + 1096) = *(v0 + 1464);
    *(v0 + 1104) = v30;
    *(v0 + 1112) = v27;
    *(v0 + 1120) = v28;
    *(v0 + 1160) = v29;
    v32 = *(v0 + 1144);
    *(v0 + 984) = *(v0 + 1128);
    *(v0 + 1000) = v32;
    *(v0 + 1016) = *(v0 + 1160);
    v33 = *(v0 + 1112);
    *(v0 + 952) = *(v0 + 1096);
    *(v0 + 968) = v33;
    *(v0 + 880) = 19;
    *(v0 + 936) = 0;
    *(v0 + 904) = 0u;
    *(v0 + 920) = 0u;
    *(v0 + 888) = 0u;
    *(v0 + 944) = 41;
    *(v0 + 1056) = 0u;
    *(v0 + 1072) = 0u;
    *(v0 + 1024) = 0u;
    *(v0 + 1040) = 0u;
    *(v0 + 1088) = 41;
    v34 = *(*sub_100006D8C(v31, v31[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
    *(v0 + 1512) = v34;

    v35 = swift_allocObject();
    *(v0 + 1520) = v35;
    *(v35 + 16) = 0u;
    *(v35 + 32) = 0u;
    *(v35 + 48) = 0u;
    *(v35 + 64) = 0u;
    *(v35 + 80) = -1;
    *(v35 + 88) = v34;
    v36 = swift_task_alloc();
    *(v0 + 1528) = v36;
    *(v36 + 16) = &unk_1006AD6A8;
    *(v36 + 24) = v35;

    sub_1001F0C48(&unk_10077FA80);
    swift_asyncLet_begin();
    v37 = swift_task_alloc();
    *(v0 + 1536) = v37;
    *v37 = v0;
    v37[1] = sub_1004A5C28;
    v17 = v0 + 880;
    goto LABEL_41;
  }

  v13 = *(v0 + 1320);
  v14 = *(v0 + 1328);
  if ((v13 != 0xD000000000000012 || 0x80000001006C2DF0 != v14) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    v43 = *(v0 + 1456);
    v44 = objc_allocWithZone(LSApplicationRecord);

    v45 = sub_10049E57C(v13, v14, 0);
    if (v43)
    {

      v18 = 0;
    }

    else if (v45)
    {
      v46 = v45;
      v47 = [v45 localizedName];

      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v49 = v48;

      v18 = 0;
      v14 = v49;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_31;
  }

  v15 = *(v0 + 1384);

  *(v0 + 1480) = *(*sub_100006D8C(v15, v15[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 808) = 20;
  *(v0 + 816) = 0u;
  *(v0 + 832) = 0u;
  *(v0 + 848) = 0u;
  *(v0 + 864) = 0;
  *(v0 + 872) = 41;

  v16 = swift_task_alloc();
  *(v0 + 1488) = v16;
  *v16 = v0;
  v16[1] = sub_1004A58C4;
  v17 = v0 + 808;
LABEL_41:

  return sub_1006600F0(v17);
}

uint64_t sub_1004A58C4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1496) = a1;
  *(v3 + 1504) = a2;

  return _swift_task_switch(sub_1004A59E8, 0, 0);
}

uint64_t sub_1004A59E8()
{
  v1 = (v0 + 1096);
  v2 = *(v0 + 1504);
  v3 = *(v0 + 1496);
  v4 = *(v0 + 1192);
  v5 = *(v0 + 1200);
  sub_100006D8C((v0 + 1168), v4);
  v6 = (*(v5 + 56))(v4, v5);
  v8 = 63;
  if (v7)
  {
    v8 = v6;
  }

  v9 = 0xE100000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(v0 + 1128) = v8;
  *(v0 + 1136) = v9;
  v10 = *(v0 + 1384);
  *v1 = *(v0 + 1464);
  *(v0 + 1112) = v3;
  *(v0 + 1120) = v2;
  *(v0 + 1160) = 4;
  *(v0 + 1016) = 4;
  v11 = *(v0 + 1112);
  *(v0 + 952) = *v1;
  *(v0 + 968) = v11;
  v12 = *(v0 + 1144);
  *(v0 + 984) = *(v0 + 1128);
  *(v0 + 1000) = v12;
  *(v0 + 880) = 19;
  *(v0 + 936) = 0;
  *(v0 + 904) = 0u;
  *(v0 + 920) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 944) = 41;
  *(v0 + 1072) = 0u;
  *(v0 + 1056) = 0u;
  *(v0 + 1040) = 0u;
  *(v0 + 1024) = 0u;
  *(v0 + 1088) = 41;
  v13 = *(*sub_100006D8C(v10, v10[3]) + OBJC_IVAR____TtC28ManagedAppDistributionDaemon12Dependencies_localizer);
  *(v0 + 1512) = v13;

  v14 = swift_allocObject();
  *(v0 + 1520) = v14;
  *(v14 + 16) = 0u;
  *(v14 + 32) = 0u;
  *(v14 + 48) = 0u;
  *(v14 + 64) = 0u;
  *(v14 + 80) = -1;
  *(v14 + 88) = v13;
  v15 = swift_task_alloc();
  *(v0 + 1528) = v15;
  *(v15 + 16) = &unk_1006AD6A8;
  *(v15 + 24) = v14;

  sub_1001F0C48(&unk_10077FA80);
  swift_asyncLet_begin();
  v16 = swift_task_alloc();
  *(v0 + 1536) = v16;
  *v16 = v0;
  v16[1] = sub_1004A5C28;

  return sub_1006600F0(v0 + 880);
}

uint64_t sub_1004A5C28(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[193] = a1;
  v3[194] = a2;

  v4 = swift_task_alloc();
  v3[195] = v4;
  *v4 = v6;
  v4[1] = sub_1004A5D80;

  return sub_1006600F0((v3 + 119));
}

uint64_t sub_1004A5D80(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v6 = *v2;
  v3[196] = a1;
  v3[197] = a2;

  sub_100222FFC((v3 + 137));
  v4 = swift_task_alloc();
  v3[198] = v4;
  *v4 = v6;
  v4[1] = sub_1004A5EE0;

  return sub_1006600F0((v3 + 128));
}

uint64_t sub_1004A5EE0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 1592) = a1;
  *(v3 + 1600) = a2;

  return _swift_asyncLet_get(v3 + 16, v3 + 1288, sub_1004A5FE8, v3 + 656);
}

uint64_t sub_1004A6004()
{
  v6 = *(v0 + 1568);
  v7 = *(v0 + 1592);
  v5 = *(v0 + 1544);
  v1 = *(v0 + 1288);
  v2 = *(v0 + 1296);
  type metadata accessor for SystemAlert();
  v3 = swift_allocObject();
  *(v0 + 1608) = v3;

  swift_defaultActor_initialize();
  *(v3 + 112) = v5;
  *(v3 + 128) = v6;
  *(v3 + 144) = v7;
  *(v3 + 160) = v1;
  *(v3 + 168) = v2;
  *(v3 + 176) = 0;

  return _swift_asyncLet_finish(v0 + 16, v0 + 1288, sub_1004A60E0, v0 + 768);
}

uint64_t sub_1004A60E0()
{
  sub_1004A4CAC();
  swift_getObjectType();
  v1 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1004A6164, v1, v0);
}

uint64_t sub_1004A6164()
{

  return _swift_task_switch(sub_1004A61F8, 0, 0);
}

uint64_t sub_1004A61F8()
{
  v1 = v0[178];
  v2 = v0[176];
  v3 = v0[175];
  sub_1002232F0((v0 + 87));
  (*(v2 + 8))(v1, v3);
  v4 = v0[201];
  sub_10000710C((v0 + 146));

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1004A62BC()
{
  v1 = v0[178];
  v2 = v0[176];
  v3 = v0[175];
  sub_1002232F0((v0 + 87));
  (*(v2 + 8))(v1, v3);
  sub_10000710C((v0 + 146));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1004A637C(uint64_t a1)
{
  v2 = type metadata accessor for MediaAPIMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004A63D8(uint64_t a1)
{
  v2 = sub_1001F0C48(&unk_10077FA50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1004A6444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1001F0C48(&unk_100780380);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  sub_100005934(a3, v25 - v10, &unk_100780380);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000032A8(v11, &unk_100780380);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1000032A8(a3, &unk_100780380);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1000032A8(a3, &unk_100780380);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}