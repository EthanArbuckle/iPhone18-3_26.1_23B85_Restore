uint64_t sub_1000DC2F0()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

void sub_1000DC490(char *a1)
{
  v2 = v1;
  v66 = a1;
  v3 = _s8SOSBuddy4DataVMa_1(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v60[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1000040A8(&qword_10035D1F0);
  __chkstk_darwin(v7 - 8);
  v64 = &v60[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v11 = &v60[-v10];
  __chkstk_darwin(v12);
  v14 = &v60[-v13];
  __chkstk_darwin(v15);
  v65 = &v60[-v16];
  __chkstk_darwin(v17);
  v19 = &v60[-v18];
  v20 = OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_data;
  swift_beginAccess();
  sub_100006C20(v2 + v20, v19, &qword_10035D1F0);
  v23 = *(v4 + 48);
  v22 = v4 + 48;
  v21 = v23;
  if ((v23)(v19, 1, v3))
  {
    sub_100008FA0(v19, &qword_10035D1F0);
  }

  else
  {
    v63 = v22;
    sub_1000DE918(v19, v6);
    sub_100008FA0(v19, &qword_10035D1F0);
    v24 = sub_1000DCBF4();
    v26 = v25;
    sub_1000DE7E8(v6);
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_10000F53C(v27, qword_100381C68);

    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v61 = v29;
      v31 = v24;
      v32 = v30;
      v33 = swift_slowAlloc();
      v62 = v3;
      v34 = v33;
      *&v69 = v33;
      *v32 = 136380675;
      v35 = sub_10017C9E8(v31, v26, &v69);
      v36 = v28;
      v37 = v35;

      *(v32 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v36, v61, "QuestionnaireProgressTiming: previous event for %{private}s was not concluded, resetting", v32, 0xCu);
      sub_100008964(v34);
      v3 = v62;
    }

    else
    {
    }
  }

  v38 = *(v66 + 24);
  v69 = *(v66 + 8);
  v70 = v38;
  v71 = *(v66 + 5);
  sub_100006C20(v2 + v20, v14, &qword_10035D1F0);
  v39 = v65;
  sub_1000DCDB8(&v69, v14, v65);
  sub_100008FA0(v14, &qword_10035D1F0);
  swift_beginAccess();
  sub_1000DE844(v39, v2 + v20);
  swift_endAccess();
  sub_100006C20(v2 + v20, v11, &qword_10035D1F0);
  v66 = v21;
  v40 = (v21)(v11, 1, v3);
  sub_100008FA0(v11, &qword_10035D1F0);
  if (v40 != 1)
  {
    if (qword_100353A08 != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    sub_10000F53C(v49, qword_100381C68);

    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      *&v72 = v53;
      *v52 = 136380675;
      v54 = v64;
      sub_100006C20(v2 + v20, v64, &qword_10035D1F0);
      v55 = (v66)(v54, 1, v3);

      if (v55 == 1)
      {
        __break(1u);
        return;
      }

      v56 = sub_1000DCBF4();
      v58 = v57;
      sub_1000DE7E8(v54);
      v59 = sub_10017C9E8(v56, v58, &v72);

      *(v52 + 4) = v59;
      _os_log_impl(&_mh_execute_header, v50, v51, "QuestionnaireProgressTiming: started tracking page event for %{private}s", v52, 0xCu);
      sub_100008964(v53);
    }

    else
    {
    }

    return;
  }

  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  sub_10000F53C(v41, qword_100381C68);
  v72 = v70;
  v73 = v71;

  sub_100006C20(&v72, v68, &qword_10035D1F8);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();

  sub_100008FA0(&v72, &qword_10035D1F8);
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v68[0] = v45;
    *v44 = 136315138;
    v67 = BYTE8(v69);
    v46 = String.init<A>(describing:)();
    v48 = sub_10017C9E8(v46, v47, v68);

    *(v44 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v42, v43, "QuestionnaireProgressTiming: ignoring Appeared event for %s", v44, 0xCu);
    sub_100008964(v45);
  }
}

uint64_t sub_1000DCBF4()
{
  v1 = _s8SOSBuddy4DataVMa_1(0);
  v2 = v1;
  v3 = (v0 + *(v1 + 36));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    _StringGuts.grow(_:)(21);

    if (*(v0 + *(v2 + 20)))
    {
      v6 = 82;
    }

    else
    {
      v6 = 69;
    }

    v7 = 0xE100000000000000;
    String.append(_:)(*&v6);
    v8._countAndFlagsBits = 45;
    v8._object = 0xE100000000000000;
    String.append(_:)(v8);
    v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 0x697473657551205DLL;
    v10._object = 0xED0000203D206E6FLL;
    String.append(_:)(v10);
    v11 = v5;
    v12 = v4;
  }

  else
  {
    if (*(v0 + *(v1 + 20)))
    {
      v13 = 82;
    }

    else
    {
      v13 = 69;
    }

    v14 = 0xE100000000000000;
    String.append(_:)(*&v13);
    v15._countAndFlagsBits = 45;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 8285;
    v17._object = 0xE200000000000000;
    String.append(_:)(v17);
    v18 = (v0 + *(v2 + 32));
    v11 = *v18;
    v12 = v18[1];
  }

  String.append(_:)(*&v11);
  return 91;
}

uint64_t sub_1000DCDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000040A8(&qword_10035D1F0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - v11;
  v13 = _s8SOSBuddy4DataVMa_1(0);
  v15 = __chkstk_darwin(v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 8);
  if (v18 <= 1)
  {
    if (*(a1 + 8))
    {
      v42 = v14;
      v40 = 0xE500000000000000;
      v19 = 0x6F72746E49;
      goto LABEL_11;
    }
  }

  else
  {
    if (v18 == 2)
    {
      v42 = v14;
      v40 = 0xE800000000000000;
      v19 = 0x6E6F697473657551;
      goto LABEL_11;
    }

    if (v18 == 3)
    {
      v42 = v14;
      v40 = 0xE800000000000000;
      v19 = 0x646E65536F747541;
LABEL_11:
      v39 = v19;
      sub_100006C20(a2, v12, &qword_10035D1F0);
      v22 = (*(v42 + 48))(v12, 1, v13);
      v41 = v6;
      if (v22 == 1)
      {
        sub_100008FA0(v12, &qword_10035D1F0);
        v37 = 0;
        v38 = 0;
        v23 = 1;
      }

      else
      {
        sub_1000DE8B4(v12, v17);
        v38 = v17[v13[7]];
        v24 = &v17[v13[9]];
        v23 = *(v24 + 1);
        v37 = *v24;

        sub_1000DE7E8(v17);
      }

      static DispatchTime.now()();
      v25 = *(*a1 + 344);
      v26 = *(v25 + 32);
      v27 = *(v25 + 88);
      v28 = *(a1 + 16);
      if (v28)
      {
        v30 = *(v28 + 16);
        v29 = *(v28 + 24);
      }

      else
      {
        v30 = 0;
        v29 = 0;
      }

      (*(v7 + 32))(a3, v9, v41);
      *(a3 + v13[5]) = v26;
      *(a3 + v13[6]) = v27;
      *(a3 + v13[7]) = v18;
      v31 = (a3 + v13[8]);
      v32 = v40;
      *v31 = v39;
      v31[1] = v32;
      v33 = (a3 + v13[9]);
      *v33 = v30;
      v33[1] = v29;
      v34 = (a3 + v13[10]);
      *v34 = 0;
      v34[1] = 0;
      v35 = (a3 + v13[11]);
      v36 = v37;
      *v35 = v38;
      v35[1] = v36;
      v35[2] = v23;
      return (*(v42 + 56))(a3, 0, 1, v13);
    }
  }

  v20 = *(v14 + 56);

  return v20(a3, 1, 1, v13, v15);
}

void sub_1000DD17C(uint64_t a1)
{
  v3 = sub_1000040A8(&qword_10035D1F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v100 - v7;
  __chkstk_darwin(v9);
  v11 = &v100 - v10;
  v12 = _s8SOSBuddy4DataVMa_1(0);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v103 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v102 = &v100 - v16;
  __chkstk_darwin(v17);
  v104 = &v100 - v18;
  __chkstk_darwin(v19);
  v21 = &v100 - v20;
  v22 = OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_data;
  swift_beginAccess();
  sub_100006C20(v1 + v22, v11, &qword_10035D1F0);
  v23 = *(v13 + 48);
  if (v23(v11, 1, v12) != 1)
  {
    sub_1000DE8B4(v11, v21);
    v33 = *(a1 + 24);
    v109 = *(a1 + 8);
    v110 = v33;
    v111 = *(a1 + 40);
    (*(v13 + 56))(v5, 1, 1, v12);
    sub_1000DCDB8(&v109, v5, v8);
    sub_100008FA0(v5, &qword_10035D1F0);
    v34 = v23;
    v35 = v23(v8, 1, v12);
    v36 = v21;
    if (v35 == 1)
    {
      sub_100008FA0(v8, &qword_10035D1F0);
      if (qword_100353A08 != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for Logger();
      sub_10000F53C(v37, qword_100381C68);
      v106 = v110;
      v107 = v111;

      sub_100006C20(&v106, v108, &qword_10035D1F8);
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.debug.getter();

      sub_100008FA0(&v106, &qword_10035D1F8);
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v108[0] = v41;
        *v40 = 136315138;
        v105 = BYTE8(v109);
        v42 = String.init<A>(describing:)();
        v44 = v36;
        v45 = sub_10017C9E8(v42, v43, v108);

        *(v40 + 4) = v45;
        _os_log_impl(&_mh_execute_header, v38, v39, "QuestionnaireProgressTiming: ignoring Concluded event for %s", v40, 0xCu);
        sub_100008964(v41);

        v46 = v44;
LABEL_23:
        sub_1000DE7E8(v46);
        return;
      }

LABEL_22:
      v46 = v36;
      goto LABEL_23;
    }

    v101 = v12;
    v47 = v104;
    sub_1000DE8B4(v8, v104);
    v48 = sub_1000DCBF4();
    v50 = v49;
    if (v48 == sub_1000DCBF4() && v50 == v51)
    {
    }

    else
    {
      v52 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v52 & 1) == 0)
      {
        if (qword_100353A08 != -1)
        {
          swift_once();
        }

        v54 = type metadata accessor for Logger();
        sub_10000F53C(v54, qword_100381C68);
        v55 = v102;
        sub_1000DE918(v47, v102);
        v56 = v103;
        sub_1000DE918(v21, v103);
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          *&v106 = swift_slowAlloc();
          *v59 = 136380931;
          v60 = sub_1000DCBF4();
          v62 = v61;
          sub_1000DE7E8(v55);
          v63 = sub_10017C9E8(v60, v62, &v106);

          *(v59 + 4) = v63;
          *(v59 + 12) = 2081;
          v64 = sub_1000DCBF4();
          v65 = v36;
          v67 = v66;
          sub_1000DE7E8(v56);
          v68 = sub_10017C9E8(v64, v67, &v106);

          *(v59 + 14) = v68;
          _os_log_impl(&_mh_execute_header, v57, v58, "QuestionnaireProgressTiming: mismatched page concluded event for [%{private}s], expected [%{private}s], ignoring", v59, 0x16u);
          swift_arrayDestroy();

          sub_1000DE7E8(v47);
          v46 = v65;
          goto LABEL_23;
        }

        sub_1000DE7E8(v56);
        sub_1000DE7E8(v55);
        goto LABEL_20;
      }
    }

    if (BYTE8(v109) != 2 || (v53 = v110) == 0 || *(v110 + 32) - 1 < 2)
    {
LABEL_19:
      sub_1000DDC48();
LABEL_20:
      sub_1000DE7E8(v47);
      goto LABEL_22;
    }

    if (!*(v110 + 32))
    {
      v69 = v109;
      swift_beginAccess();
      v70 = *(v69 + 48);
      if (!*(v70 + 16))
      {
        goto LABEL_19;
      }

      v71 = sub_1001921F0(v53);
      if ((v72 & 1) == 0)
      {
        goto LABEL_19;
      }

      v73 = *(v70 + 56) + 16 * v71;
      v74 = *(v73 + 8);
      if (!v74 || *v73)
      {
        goto LABEL_19;
      }

      v75 = v21;
      swift_retain_n();
      v76 = sub_1000DC430();
      v78 = v77;
      v79 = v101;
      if (!v34(v77, 1, v101))
      {
        v80 = *(v74 + 24);
        v81 = (v78 + *(v79 + 40));
        *v81 = *(v74 + 16);
        v81[1] = v80;
      }

      (v76)(&v106, 0);

      goto LABEL_52;
    }

    v82 = *(v110 + 64);
    if ((v82 | 2) != 3)
    {
      goto LABEL_19;
    }

    v83 = v109;
    swift_beginAccess();
    v84 = *(v83 + 64);
    if (!*(v84 + 16))
    {
      goto LABEL_19;
    }

    v85 = sub_1001921EC(v82);
    if ((v86 & 1) == 0)
    {
      goto LABEL_19;
    }

    sub_100048F80(*(v84 + 56) + 32 * v85, &v106);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v87 = v105;
    if (v82 == 3)
    {
      v75 = v21;
      v88 = sub_1000DC430();
      v90 = v96;
      v91 = v101;
      if (v34(v96, 1, v101))
      {
LABEL_51:
        (v88)(&v106, 0);
LABEL_52:
        v36 = v75;
        goto LABEL_19;
      }

      v92 = 0xD00000000000001ALL;
      v93 = 0xD000000000000010;
      v94 = "ContinuedWithRSA";
      v95 = "ContinuedWithRSA";
    }

    else
    {
      if (v82 != 1)
      {
        goto LABEL_19;
      }

      v75 = v21;
      v88 = sub_1000DC430();
      v90 = v89;
      v91 = v101;
      if (v34(v89, 1, v101))
      {
        goto LABEL_51;
      }

      v92 = 0xD00000000000001ALL;
      v93 = 0xD000000000000016;
      v94 = "ContinuedWithEmergency";
      v95 = "ContinuedWithEmergency";
    }

    v97 = v95 - 32;
    if (v87)
    {
      v98 = v94;
    }

    else
    {
      v92 = v93;
      v98 = v97;
    }

    v99 = (v90 + *(v91 + 40));
    *v99 = v92;
    v99[1] = v98 | 0x8000000000000000;

    goto LABEL_51;
  }

  sub_100008FA0(v11, &qword_10035D1F0);
  if (qword_100353A08 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000F53C(v24, qword_100381C68);
  v25 = *(a1 + 16);
  v109 = *(a1 + 24);
  *&v110 = *(a1 + 40);

  sub_100006C20(&v109, &v106, &qword_10035D1F8);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  sub_100008FA0(&v109, &qword_10035D1F8);
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *&v106 = v29;
    *v28 = 136315138;
    LOBYTE(v108[0]) = v25;
    v30 = String.init<A>(describing:)();
    v32 = sub_10017C9E8(v30, v31, &v106);

    *(v28 + 4) = v32;
    _os_log_impl(&_mh_execute_header, v26, v27, "QuestionnaireProgressTiming: untracked page concluded for %s, ignoring", v28, 0xCu);
    sub_100008964(v29);
  }
}

uint64_t sub_1000DDC48()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_10035D1F0);
  __chkstk_darwin(v2 - 8);
  v19 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v18 - v5;
  __chkstk_darwin(v7);
  v9 = &v18 - v8;
  v10 = OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_data;
  swift_beginAccess();
  sub_100006C20(v1 + v10, v9, &qword_10035D1F0);
  v11 = _s8SOSBuddy4DataVMa_1(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(v9, 1, v11);
  result = sub_100008FA0(v9, &qword_10035D1F0);
  if (v14 != 1)
  {
    sub_100006C20(v1 + v10, v6, &qword_10035D1F0);
    result = v13(v6, 1, v11);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v16 = sub_1000DDE88();
      sub_1000DE7E8(v6);
      sub_10017EEA8(3, v16);

      v17 = v19;
      (*(v12 + 56))(v19, 1, 1, v11);
      swift_beginAccess();
      sub_1000DE844(v17, v1 + v10);
      return swift_endAccess();
    }
  }

  return result;
}

unint64_t sub_1000DDE88()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000040A8(&qword_100358320);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100279170;
  *(inited + 32) = 0x6570795465676170;
  *(inited + 40) = 0xE800000000000000;
  v7 = _s8SOSBuddy4DataVMa_1(0);
  *(inited + 48) = String._bridgeToObjectiveC()();
  strcpy((inited + 56), "responseTime");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  static DispatchTime.now()();
  v8 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() < v8)
  {
    v9 = DispatchTime.uptimeNanoseconds.getter();
    v10 = DispatchTime.uptimeNanoseconds.getter();
    v11 = *(v3 + 8);
    v3 += 8;
    v11(v5, v2);
    if (v9 >= v10)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  (*(v3 + 8))(v5, v2);
LABEL_5:
  *(inited + 72) = UInt64._bridgeToObjectiveC()();
  v12 = sub_10025663C(inited);
  swift_setDeallocating();
  sub_1000040A8(&qword_100358328);
  swift_arrayDestroy();
  v13 = String._bridgeToObjectiveC()();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v12;
  sub_1001894D4(v13, 0x5465636976726573, 0xEB00000000657079, isUniquelyReferenced_nonNull_native);
  v15 = v32;
  isa = UInt64._bridgeToObjectiveC()().super.super.isa;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v32 = v15;
  sub_1001894D4(isa, 0x6E6F697473657571, 0xEF6449657269616ELL, v17);
  v18 = v32;
  if (*(v1 + v7[9] + 8))
  {
    v19 = String._bridgeToObjectiveC()();
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    sub_1001894D4(v19, 0x6E6F697473657571, 0xEA00000000006449, v20);
    v18 = v32;
  }

  if (*(v1 + v7[10] + 8))
  {
    v21 = String._bridgeToObjectiveC()();
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v32 = v18;
    sub_1001894D4(v21, 0xD000000000000010, 0x800000010029C120, v22);
    v18 = v32;
  }

  if (*(v1 + v7[7]) == 3)
  {
    v23 = (v1 + v7[11]);
    v24 = *(v23 + 2);
    if (v24 != 1)
    {
      v25 = *v23;
      if (v25 <= 1)
      {
        if (!v25)
        {
          goto LABEL_17;
        }
      }

      else if (v25 != 2 && v25 != 3)
      {
LABEL_17:
        if (v24)
        {
          v28 = String._bridgeToObjectiveC()();
          v29 = swift_isUniquelyReferenced_nonNull_native();
          v32 = v18;
          sub_1001894D4(v28, 0xD000000000000014, 0x800000010029C100, v29);
          return v32;
        }

        return v18;
      }

      v26 = String._bridgeToObjectiveC()();

      v27 = swift_isUniquelyReferenced_nonNull_native();
      v32 = v18;
      sub_1001894D4(v26, 0xD000000000000012, 0x800000010029C0E0, v27);
      v18 = v32;
      goto LABEL_17;
    }
  }

  return v18;
}

uint64_t sub_1000DE338()
{

  sub_100008FA0(v0 + OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_data, &qword_10035D1F0);

  return swift_deallocClassInstance();
}

void sub_1000DE3DC()
{
  sub_1000DE484();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000DE484()
{
  if (!qword_10035CFE8)
  {
    _s8SOSBuddy4DataVMa_1(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10035CFE8);
    }
  }
}

uint64_t sub_1000DE510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 32) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000DE5E4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DispatchTime();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 32) + 8) = (a2 - 1);
  }

  return result;
}

void sub_1000DE6A0()
{
  type metadata accessor for DispatchTime();
  if (v0 <= 0x3F)
  {
    sub_100087F94(319, &qword_100359EE8);
    if (v1 <= 0x3F)
    {
      sub_100087F94(319, &unk_10035D1A8);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000DE790(uint64_t result)
{
  v2 = *v1 + OBJC_IVAR____TtC8SOSBuddy36AnalyticsQuestionnaireProgressTiming_currentQuestionnaireId;
  *v2 = *(*(result + 344) + 88);
  *(v2 + 8) = 0;
  return result;
}

void sub_1000DE7B4(char *a1)
{
  if (*a1)
  {
    sub_1000DD17C(a1);
  }

  else
  {
    sub_1000DC490(a1);
  }
}

uint64_t sub_1000DE7E8(uint64_t a1)
{
  v2 = _s8SOSBuddy4DataVMa_1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000DE844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035D1F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DE8B4(uint64_t a1, uint64_t a2)
{
  v4 = _s8SOSBuddy4DataVMa_1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DE918(uint64_t a1, uint64_t a2)
{
  v4 = _s8SOSBuddy4DataVMa_1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000DE9A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    result = sub_100071A54(0, *(a1 + 200));
    if (result)
    {
      type metadata accessor for BannerAppearanceModel();
      sub_1000E08D4(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
      v4 = EnvironmentObject.init()();
      v6 = v5;
      type metadata accessor for UIMetrics();
      sub_1000E08D4(&qword_100354D40, type metadata accessor for UIMetrics);
      v7 = EnvironmentObject.init()();
      v9 = v8;
      v10 = static Edge.Set.trailing.getter();
      result = EdgeInsets.init(_all:)();
      *(&v12 + 1) = v11;
      *(&v14 + 1) = v13;
      v15 = v10;
    }

    else
    {
      v6 = 0;
      v7 = 0;
      v9 = 0;
      v15 = 0;
      v12 = 0uLL;
      v14 = 0uLL;
      v4 = 1;
    }

    *a2 = v4;
    *(a2 + 8) = v6;
    *(a2 + 16) = v7;
    *(a2 + 24) = v9;
    *(a2 + 32) = v15;
    *(a2 + 40) = v12;
    *(a2 + 56) = v14;
    *(a2 + 72) = 0;
  }

  else
  {
    type metadata accessor for BannerAppearanceModel();
    sub_1000E08D4(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000DEB5C()
{
  result = qword_10035D200;
  if (!qword_10035D200)
  {
    sub_100008CF0(&qword_10035D208);
    sub_1000DEBE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D200);
  }

  return result;
}

unint64_t sub_1000DEBE0()
{
  result = qword_10035D210;
  if (!qword_10035D210)
  {
    sub_100008CF0(&qword_10035D218);
    sub_100092CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D210);
  }

  return result;
}

uint64_t sub_1000DEC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a2;
  v151 = a4;
  v130 = sub_1000040A8(&qword_10035B5E0);
  __chkstk_darwin(v130);
  v129 = &v122 - v6;
  v143 = sub_1000040A8(&qword_10035B5E8);
  __chkstk_darwin(v143);
  v132 = &v122 - v7;
  v149 = sub_1000040A8(&qword_10035D220);
  __chkstk_darwin(v149);
  v150 = &v122 - v8;
  v144 = sub_1000040A8(&qword_10035D228);
  __chkstk_darwin(v144);
  v146 = &v122 - v9;
  v140 = sub_1000040A8(&qword_10035D230);
  __chkstk_darwin(v140);
  v141 = &v122 - v10;
  v145 = sub_1000040A8(&qword_10035D238);
  __chkstk_darwin(v145);
  v142 = &v122 - v11;
  v148 = sub_1000040A8(&qword_10035D240);
  __chkstk_darwin(v148);
  v147 = &v122 - v12;
  v133 = sub_1000040A8(&qword_10035D248);
  __chkstk_darwin(v133);
  v134 = &v122 - v13;
  v14 = type metadata accessor for SymbolVariants();
  v137 = *(v14 - 8);
  v138 = v14;
  __chkstk_darwin(v14);
  v136 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000040A8(&qword_100354FC0);
  __chkstk_darwin(v16 - 8);
  v18 = &v122 - v17;
  v19 = sub_1000040A8(&qword_10035D250);
  v124 = *(v19 - 8);
  v125 = v19;
  __chkstk_darwin(v19);
  v123 = &v122 - v20;
  v126 = sub_1000040A8(&qword_10035D258);
  __chkstk_darwin(v126);
  v127 = &v122 - v21;
  v131 = sub_1000040A8(&qword_10035D260);
  __chkstk_darwin(v131);
  v128 = &v122 - v22;
  v139 = sub_1000040A8(&qword_10035D268);
  __chkstk_darwin(v139);
  v135 = &v122 - v23;
  v24 = sub_1000040A8(&qword_100354F50);
  __chkstk_darwin(v24 - 8);
  v26 = &v122 - v25;
  if (a3)
  {
    v28 = a3[9];
    v27 = a3[10];
    sub_1000088DC(a3 + 6, v28);
    v29 = *(v27 + 16);

    v29(v177, v28, v27);
    if (a1)
    {
      v30 = OBJC_IVAR____TtC8SOSBuddy21BannerAppearanceModel_bannerMode;
      swift_beginAccess();
      sub_1000E040C(a1 + v30, v26);
      v31 = type metadata accessor for ConnectionAssistantBanner.Mode();
      if ((*(*(v31 - 8) + 48))(v26, 1, v31) == 1)
      {

        swift_storeEnumTagMultiPayload();
        sub_1000E047C();
        _ConditionalContent<>.init(storage:)();
        return sub_100008964(v177);
      }

      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 2)
      {
        if (EnumCaseMultiPayload == 3)
        {

          v67 = a3[9];
          v68 = a3[10];
          sub_1000088DC(a3 + 6, v67);
          (*(v68 + 40))(v67, v68);
          static Font.Weight.regular.getter();
          v69 = type metadata accessor for Font.Design();
          (*(*(v69 - 8) + 56))(v18, 1, 1, v69);
          v70 = static Font.system(size:weight:design:)();
          sub_1000E09CC(v18);
          v71 = Image.init(systemName:)();
          KeyPath = swift_getKeyPath();
          *&v160 = v71;
          *(&v160 + 1) = KeyPath;
          *&v161 = v70;

          v73 = v136;
          static SymbolVariants.fill.getter();
          sub_1000040A8(&qword_100355050);
          sub_10000C700();
          v74 = v129;
          View.symbolVariant(_:)();
          (*(v137 + 8))(v73, v138);

          *(v74 + *(v130 + 36)) = static Color.green.getter();
          sub_1000A4A68();
          v75 = v132;
          View.accessibility(hidden:)();
          sub_100008FA0(v74, &qword_10035B5E0);

          sub_100006C20(v75, v141, &qword_10035B5E8);
          swift_storeEnumTagMultiPayload();
          sub_1000E05C0();
          sub_1000E0670(&qword_10035D2A8, &qword_10035B5E8, &unk_100280BA8, sub_1000A4A68);
          v76 = v142;
          _ConditionalContent<>.init(storage:)();
          sub_100006C20(v76, v146, &qword_10035D238);
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_10035D2B8);
          sub_1000E0508();
          sub_1000E0850();
          v77 = v147;
          _ConditionalContent<>.init(storage:)();
          sub_100008FA0(v76, &qword_10035D238);
          sub_100006C20(v77, v150, &qword_10035D240);
          swift_storeEnumTagMultiPayload();
          sub_1000E047C();
          _ConditionalContent<>.init(storage:)();
          sub_100008FA0(v77, &qword_10035D240);
          v78 = v75;
          v79 = &qword_10035B5E8;
LABEL_18:
          sub_100008FA0(v78, v79);
          return sub_100008964(v177);
        }

        if (EnumCaseMultiPayload != 4)
        {

          type metadata accessor for ConnectionClosedModel(0);
          sub_1000E08D4(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
          v80 = EnvironmentObject.init()();
          v142 = v81;
          v143 = v80;
          type metadata accessor for ConnectivityModel();
          sub_1000E08D4(&qword_100354F78, type metadata accessor for ConnectivityModel);
          v141 = EnvironmentObject.init()();
          v83 = v82;
          type metadata accessor for GuidanceModel(0);
          sub_1000E08D4(&qword_100354F80, type metadata accessor for GuidanceModel);
          v84 = EnvironmentObject.init()();
          v86 = v85;
          type metadata accessor for OrientationModel();
          sub_1000E08D4(&qword_10035B1B0, type metadata accessor for OrientationModel);
          v87 = EnvironmentObject.init()();
          v89 = v88;
          type metadata accessor for StewieModel(0);
          sub_1000E08D4(&qword_1003561B8, type metadata accessor for StewieModel);
          v90 = EnvironmentObject.init()();
          v92 = v91;
          type metadata accessor for UIMetrics();
          sub_1000E08D4(&qword_100354D40, type metadata accessor for UIMetrics);
          v93 = EnvironmentObject.init()();
          *&v168 = v143;
          *(&v168 + 1) = v142;
          *&v169 = v141;
          *(&v169 + 1) = v83;
          *&v170 = v84;
          *(&v170 + 1) = v86;
          *&v171 = v87;
          *(&v171 + 1) = v89;
          *&v172 = v90;
          *(&v172 + 1) = v92;
          *&v173 = v93;
          *(&v173 + 1) = v94;
          LOBYTE(v174) = 4;
          v175 = 0;
          v156 = v172;
          v157 = v173;
          v158 = v174;
          v152 = v168;
          v153 = v169;
          v154 = v170;
          v155 = v171;
          v176 = 1;
          v159 = 1;
          goto LABEL_17;
        }
      }

      else
      {
        if (!EnumCaseMultiPayload)
        {

          if (*v26)
          {
            v48 = Image.init(_internalSystemName:)();
            v132 = v48;
            static Font.Weight.regular.getter();
            v49 = type metadata accessor for Font.Design();
            (*(*(v49 - 8) + 56))(v18, 1, 1, v49);
            v50 = static Font.system(size:weight:design:)();
            sub_1000E09CC(v18);
            v51 = swift_getKeyPath();
            *&v160 = v48;
            *(&v160 + 1) = v51;
            *&v161 = v50;
            v52 = v136;
            static SymbolVariants.circle.getter();
            v53 = sub_1000040A8(&qword_100355050);
            v54 = sub_10000C700();
            v55 = v123;
            View.symbolVariant(_:)();
            v56 = v138;
            v137 = *(v137 + 8);
            (v137)(v52, v138);

            static SymbolVariants.fill.getter();
            *&v160 = v53;
            *(&v160 + 1) = v54;
            swift_getOpaqueTypeConformance2();
            v57 = v127;
            v58 = v125;
            View.symbolVariant(_:)();
            (v137)(v52, v56);
            (*(v124 + 8))(v55, v58);
            v59 = static Color.white.getter();
            v60 = static Color.red.getter();
            v61 = (v57 + *(v126 + 36));
            *v61 = v59;
            v61[1] = v60;
            LocalizedStringKey.init(stringLiteral:)();
            v62 = Text.init(_:tableName:bundle:comment:)();
            v64 = v63;
            LOBYTE(v56) = v65;
            sub_1000E0724();
            v66 = v128;
            View.accessibility(label:)();
            sub_1000317C4(v62, v64, v56 & 1);
          }

          else
          {
            v101 = Image.init(_internalSystemName:)();
            v132 = v101;
            static Font.Weight.regular.getter();
            v102 = type metadata accessor for Font.Design();
            (*(*(v102 - 8) + 56))(v18, 1, 1, v102);
            v103 = static Font.system(size:weight:design:)();
            sub_1000E09CC(v18);
            v104 = swift_getKeyPath();
            *&v160 = v101;
            *(&v160 + 1) = v104;
            *&v161 = v103;
            v105 = v136;
            static SymbolVariants.circle.getter();
            v106 = sub_1000040A8(&qword_100355050);
            v107 = sub_10000C700();
            v108 = v123;
            View.symbolVariant(_:)();
            v109 = v138;
            v137 = *(v137 + 8);
            (v137)(v105, v138);

            static SymbolVariants.fill.getter();
            *&v160 = v106;
            *(&v160 + 1) = v107;
            swift_getOpaqueTypeConformance2();
            v57 = v127;
            v110 = v125;
            View.symbolVariant(_:)();
            (v137)(v105, v109);
            (*(v124 + 8))(v108, v110);
            v111 = static Color.white.getter();
            v112 = static Color.red.getter();
            v113 = (v57 + *(v126 + 36));
            *v113 = v111;
            v113[1] = v112;
            LocalizedStringKey.init(stringLiteral:)();
            v114 = Text.init(_:tableName:bundle:comment:)();
            v116 = v115;
            v118 = v117;
            sub_1000E0724();
            v66 = v128;
            View.accessibility(label:)();
            sub_1000317C4(v114, v116, v118 & 1);
          }

          sub_100008FA0(v57, &qword_10035D258);
          sub_100006C20(v66, v134, &qword_10035D260);
          swift_storeEnumTagMultiPayload();
          sub_1000E0670(&qword_10035D288, &qword_10035D260, &unk_100283218, sub_1000E0724);
          v119 = v135;
          _ConditionalContent<>.init(storage:)();
          sub_100008FA0(v66, &qword_10035D260);
          sub_100006C20(v119, v141, &qword_10035D268);
          swift_storeEnumTagMultiPayload();
          sub_1000E05C0();
          sub_1000E0670(&qword_10035D2A8, &qword_10035B5E8, &unk_100280BA8, sub_1000A4A68);
          v120 = v142;
          _ConditionalContent<>.init(storage:)();
          sub_100006C20(v120, v146, &qword_10035D238);
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_10035D2B8);
          sub_1000E0508();
          sub_1000E0850();
          v121 = v147;
          _ConditionalContent<>.init(storage:)();
          sub_100008FA0(v120, &qword_10035D238);
          sub_100006C20(v121, v150, &qword_10035D240);
          swift_storeEnumTagMultiPayload();
          sub_1000E047C();
          _ConditionalContent<>.init(storage:)();
          sub_100008FA0(v121, &qword_10035D240);
          v78 = v119;
          v79 = &qword_10035D268;
          goto LABEL_18;
        }

        if (EnumCaseMultiPayload == 1)
        {

          sub_10002B444(v26);
LABEL_12:
          type metadata accessor for ConnectionClosedModel(0);
          sub_1000E08D4(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
          v33 = EnvironmentObject.init()();
          v142 = v34;
          v143 = v33;
          type metadata accessor for ConnectivityModel();
          sub_1000E08D4(&qword_100354F78, type metadata accessor for ConnectivityModel);
          v141 = EnvironmentObject.init()();
          v36 = v35;
          type metadata accessor for GuidanceModel(0);
          sub_1000E08D4(&qword_100354F80, type metadata accessor for GuidanceModel);
          v37 = EnvironmentObject.init()();
          v39 = v38;
          type metadata accessor for OrientationModel();
          sub_1000E08D4(&qword_10035B1B0, type metadata accessor for OrientationModel);
          v40 = EnvironmentObject.init()();
          v42 = v41;
          type metadata accessor for StewieModel(0);
          sub_1000E08D4(&qword_1003561B8, type metadata accessor for StewieModel);
          v43 = EnvironmentObject.init()();
          v45 = v44;
          type metadata accessor for UIMetrics();
          sub_1000E08D4(&qword_100354D40, type metadata accessor for UIMetrics);
          v46 = EnvironmentObject.init()();
          *&v168 = v143;
          *(&v168 + 1) = v142;
          *&v169 = v141;
          *(&v169 + 1) = v36;
          *&v170 = v37;
          *(&v170 + 1) = v39;
          *&v171 = v40;
          *(&v171 + 1) = v42;
          *&v172 = v43;
          *(&v172 + 1) = v45;
          *&v173 = v46;
          *(&v173 + 1) = v47;
          LOBYTE(v174) = 3;
          v175 = 0;
          v156 = v172;
          v157 = v173;
          v158 = v174;
          v152 = v168;
          v153 = v169;
          v154 = v170;
          v155 = v171;
          v176 = 0;
          v159 = 0;
LABEL_17:
          sub_1000E091C(&v168, &v160);
          sub_1000A11AC();
          _ConditionalContent<>.init(storage:)();
          v95 = v165;
          v96 = v146;
          *(v146 + 64) = v164;
          *(v96 + 80) = v95;
          *(v96 + 96) = v166;
          *(v96 + 112) = v167;
          v97 = v161;
          *v96 = v160;
          *(v96 + 16) = v97;
          v98 = v163;
          *(v96 + 32) = v162;
          *(v96 + 48) = v98;
          swift_storeEnumTagMultiPayload();
          sub_1000040A8(&qword_10035D2B8);
          sub_1000E0508();
          sub_1000E0850();
          v99 = v147;
          _ConditionalContent<>.init(storage:)();
          sub_100006C20(v99, v150, &qword_10035D240);
          swift_storeEnumTagMultiPayload();
          sub_1000E047C();
          _ConditionalContent<>.init(storage:)();
          sub_1000E0978(&v168);
          v78 = v99;
          v79 = &qword_10035D240;
          goto LABEL_18;
        }
      }

      goto LABEL_12;
    }
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000E08D4(&qword_100354D40, type metadata accessor for UIMetrics);
    EnvironmentObject.error()();
    __break(1u);
  }

  type metadata accessor for BannerAppearanceModel();
  sub_1000E08D4(&qword_100354F20, type metadata accessor for BannerAppearanceModel);
  result = EnvironmentObject.error()();
  __break(1u);
  return result;
}

uint64_t sub_1000E040C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100354F50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000E047C()
{
  result = qword_10035D270;
  if (!qword_10035D270)
  {
    sub_100008CF0(&qword_10035D240);
    sub_1000E0508();
    sub_1000E0850();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D270);
  }

  return result;
}

unint64_t sub_1000E0508()
{
  result = qword_10035D278;
  if (!qword_10035D278)
  {
    sub_100008CF0(&qword_10035D238);
    sub_1000E05C0();
    sub_1000E0670(&qword_10035D2A8, &qword_10035B5E8, &unk_100280BA8, sub_1000A4A68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D278);
  }

  return result;
}

unint64_t sub_1000E05C0()
{
  result = qword_10035D280;
  if (!qword_10035D280)
  {
    sub_100008CF0(&qword_10035D268);
    sub_1000E0670(&qword_10035D288, &qword_10035D260, &unk_100283218, sub_1000E0724);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D280);
  }

  return result;
}

uint64_t sub_1000E0670(unint64_t *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100008CF0(a2);
    a4();
    sub_1000E08D4(&qword_100355078, &type metadata accessor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000E0724()
{
  result = qword_10035D290;
  if (!qword_10035D290)
  {
    sub_100008CF0(&qword_10035D258);
    sub_100008CF0(&qword_10035D250);
    sub_100008CF0(&qword_100355050);
    sub_10000C700();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_100009274(&qword_10035D298, &qword_10035D2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D290);
  }

  return result;
}

unint64_t sub_1000E0850()
{
  result = qword_10035D2B0;
  if (!qword_10035D2B0)
  {
    sub_100008CF0(&qword_10035D2B8);
    sub_1000A11AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D2B0);
  }

  return result;
}

uint64_t sub_1000E08D4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E09CC(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_100354FC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000E0A40()
{
  result = qword_10035D2C0;
  if (!qword_10035D2C0)
  {
    sub_100008CF0(&qword_10035D2C8);
    sub_1000E047C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D2C0);
  }

  return result;
}

void sub_1000E0ACC()
{
  v1 = v0;
  v2 = *(v0 + 16);
  [v2 lock];
  v3 = *(v1 + 24);
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v3 + 1;
    [v2 unlock];
    if (qword_100353A30 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v4 = type metadata accessor for Logger();
  sub_10000F53C(v4, qword_100381CE0);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134349056;
    *(v7 + 4) = *(v1 + 24);

    _os_log_impl(&_mh_execute_header, v5, v6, "Keep alive counter: %{public}ld", v7, 0xCu);

    if (v3)
    {
      return;
    }
  }

  else
  {

    if (v3)
    {
      return;
    }
  }

  *(v1 + 32) = sub_1000E1C30(0xD000000000000011, 0x8000000100283300, 0x76696C417065654BLL, 0xE900000000000065);

  _objc_release_x1();
}

void sub_1000E0C7C()
{
  v1 = v0;
  v2 = *(v0 + 16);
  [v2 lock];
  v3 = *(v1 + 24);
  v4 = v3 - 1;
  if (__OFSUB__(v3, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 24) = v4;
    [v2 unlock];
    if (qword_100353A30 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381CE0);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134349056;
    *(v8 + 4) = *(v1 + 24);

    _os_log_impl(&_mh_execute_header, v6, v7, "Keep alive counter: %{public}ld", v8, 0xCu);

    if (v4 > 0)
    {
      return;
    }
  }

  else
  {

    if (v4 > 0)
    {
      return;
    }
  }

  sub_1000E0DF8();
}

uint64_t sub_1000E0DF8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + 32);
  if (v10)
  {
    v35 = v7;
    v36 = v6;
    v11 = qword_100353A30;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000F53C(v13, qword_100381CE0);
    v14 = v12;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v34 = v2;
      v18 = v17;
      v19 = swift_slowAlloc();
      v33 = v3;
      v20 = v19;
      aBlock[0] = v19;
      *v18 = 136446210;
      v21 = [v14 debugDescription];
      v32 = v1;
      v22 = v21;
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_10017C9E8(v23, v25, aBlock);

      *(v18 + 4) = v26;
      v1 = v32;
      _os_log_impl(&_mh_execute_header, v15, v16, "Releasing RBSAssertion: %{public}s", v18, 0xCu);
      sub_100008964(v20);
      v3 = v33;

      v2 = v34;
    }

    v7 = v35;
    [v14 invalidate];

    v27 = *(v1 + 32);
    *(v1 + 32) = 0;

    v6 = v36;
  }

  sub_10001D630(0, &qword_10035BA10);
  v28 = static OS_dispatch_queue.main.getter();
  aBlock[4] = sub_1000E11FC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001D2438;
  aBlock[3] = &unk_10032EFC0;
  v29 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100071864();
  sub_1000040A8(&unk_100355D70);
  sub_100035010();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v29);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

void sub_1000E11FC()
{
  if (qword_100353A30 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CE0);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Terminating SOSBuddy app", v3, 2u);
  }

  v4 = [objc_opt_self() sharedApplication];
  [v4 terminateWithSuccess];
}

uint64_t sub_1000E1320()
{

  return swift_deallocClassInstance();
}

id sub_1000E1384()
{
  type metadata accessor for KeepAppAlive();
  v0 = swift_allocObject();
  result = [objc_allocWithZone(NSLock) init];
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = result;
  qword_10035D2D0 = v0;
  return result;
}

uint64_t sub_1000E13E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;

  if (qword_100353A30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CE0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_10017C9E8(a3, a4, &v14);
    _os_log_impl(&_mh_execute_header, v9, v10, "Acquiring BackgroundAssertion: '%{public}s'", v11, 0xCu);
    sub_100008964(v12);
  }

  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  if (qword_1003539F8 != -1)
  {
    swift_once();
  }

  sub_1000E0ACC();

  return v5;
}

uint64_t sub_1000E1590()
{
  v1 = v0;
  if (qword_100353A30 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381CE0);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10017C9E8(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "Releasing BackgroundAssertion: '%{public}s'", v5, 0xCu);
    sub_100008964(v6);
  }

  if (qword_1003539F8 != -1)
  {
    swift_once();
  }

  sub_1000E0C7C();

  return v1;
}

uint64_t sub_1000E1728()
{
  sub_1000E1590();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E17A4(char a1)
{
  result = v1[4];
  if (a1)
  {
    if (result)
    {
      return result;
    }

    v5 = v1[2];
    v6 = v1[3];
    type metadata accessor for PreventSuspensionAssertion();
    v4 = swift_allocObject();

    sub_1000E13E0(v7, 0x8000000100283300, v5, v6);
  }

  else
  {
    v4 = 0;
  }

  v1[4] = v4;
}

uint64_t sub_1000E185C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000E18C0()
{
  v1 = v0;
  *(v0 + 16) = 0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for BackgroundActivityAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000E1A38()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;
    type metadata accessor for BackgroundActivityAgent();

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  *(v1 + 16) = 0;

  return v1;
}

uint64_t sub_1000E1BC0()
{
  sub_1000E1A38();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E1C18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_1000E1C30(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_100353A30 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000F53C(v8, qword_100381CE0);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_10017C9E8(a1, a2, &v46);
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_10017C9E8(a3, a4, &v46);
    _os_log_impl(&_mh_execute_header, v9, v10, "Acquiring RBSAssertion: '%{public}s' for '%{public}s'", v11, 0x16u);
    swift_arrayDestroy();
  }

  v12 = getpid();
  v13 = [objc_opt_self() targetWithPid:v12];
  v14 = [objc_opt_self() mainBundle];
  v15 = [v14 bundleIdentifier];

  if (v15)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v16 = String._bridgeToObjectiveC()();

  v17 = String._bridgeToObjectiveC()();
  v18 = [objc_opt_self() attributeWithDomain:v16 name:v17];

  sub_1000040A8(&qword_1003681A0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_100281610;
  *(v19 + 32) = v18;
  v20 = objc_allocWithZone(RBSAssertion);
  v21 = v13;
  v22 = v18;
  v23 = String._bridgeToObjectiveC()();
  sub_10001D630(0, &qword_10035D6B0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v25 = [v20 initWithExplanation:v23 target:v21 attributes:isa];

  v46 = 0;
  if ([v25 acquireWithError:&v46])
  {
    v26 = v46;
    v27 = v25;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v46 = v31;
      *v30 = 136446210;
      v32 = [v27 debugDescription];
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;

      v36 = sub_10017C9E8(v33, v35, &v46);

      *(v30 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v28, v29, "RBSAssertion acquired: %{public}s", v30, 0xCu);
      sub_100008964(v31);
    }
  }

  else
  {
    v37 = v46;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v46 = v41;
      *v40 = 136446210;
      swift_errorRetain();
      sub_1000040A8(&qword_100355DA0);
      v42 = String.init<A>(describing:)();
      v44 = sub_10017C9E8(v42, v43, &v46);

      *(v40 + 4) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Error acquiring RBSAssertion assertion: %{public}s", v40, 0xCu);
      sub_100008964(v41);
    }

    else
    {
    }

    return 0;
  }

  return v27;
}

uint64_t sub_1000E2234()
{
  v1 = v0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  *(v0 + 16) = PassthroughSubject.init()();
  swift_allocObject();
  *(v0 + 24) = PassthroughSubject.init()();
  v2 = qword_100353A10;
  swift_retain_n();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381C80);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136446210;

    v8 = String.init<A>(describing:)();
    v10 = sub_10017C9E8(v8, v9, &v12);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] init", v6, 0xCu);
    sub_100008964(v7);
  }

  return v1;
}

uint64_t sub_1000E2434()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000E25E0()
{
  sub_1000E2434();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E2638()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100353A38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381CF8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "BluetoothModel start", v9, 2u);
  }

  sub_10000F574();
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v10)
  {
    swift_weakInit();
    swift_weakDestroy();
    type metadata accessor for BluetoothAgent();
    *(v1 + 32) = swift_allocObject();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000E2840()
{
  if (qword_100353A38 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000F53C(v0, qword_100381CF8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "BluetoothModel stop", v2, 2u);
  }
}

void sub_1000E2928()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = v3;
  }

  else
  {
    v4 = 0x8000000100294A20;
    v2 = 0xD000000000000012;
  }

  qword_10035D770 = v2;
  *algn_10035D778 = v4;
}

uint64_t sub_1000E2D24(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  sub_1000885F4(v3, a2);
  sub_10000F53C(v3, a2);
  if (qword_100353A00 != -1)
  {
    swift_once();
  }

  return Logger.init(subsystem:category:)();
}

SOSBuddy::ConnectionAssistantEarth::LightAngle __swiftcall ConnectionAssistantEarth.LightAngle.init(angle:perpendicularAngle:)(Swift::Float angle, Swift::Float_optional *perpendicularAngle)
{
  result.perpendicularAngle.is_nil = perpendicularAngle;
  result.angle = angle;
  return result;
}

void *ConnectionAssistantEarth.init(sun:highlight:atmosphere:at:)@<X0>(float a1@<W0>, char a2@<W1>, unint64_t a3@<X2>, __int16 a4@<W3>, unint64_t a5@<X4>, __int16 a6@<W5>, void *a7@<X8>, float a8@<S0>, double a9@<D1>, double a10@<D2>)
{
  v18 = a9;
  v19 = (v18 * -3.1416) / 180.0;
  v20 = -90.0 - a10;
  v21 = (v20 * 3.1416) / 180.0;
  v38 = v21 + a8;
  v22 = v19 + a1;
  if (a2)
  {
    v22 = 0.0;
  }

  v23 = __sincosf_stret(v22);
  v24 = __sincosf_stret(v21 + a8);
  v25 = *&a3;
  v26 = HIDWORD(a3);
  if ((a4 & 0x100) != 0)
  {
    v25 = a8;
    *&v26 = a1;
    v27 = a2;
  }

  else
  {
    v27 = a4;
  }

  v28 = v21 + v25;
  v29 = v19 + *&v26;
  if (v27)
  {
    v29 = 0.0;
  }

  __sincosf_stret(v29);
  __sincosf_stret(v28);
  v30 = *&a5;
  v31 = HIDWORD(a5);
  if ((a6 & 0x100) != 0)
  {
    v30 = a8;
    *&v31 = a1;
    v32 = a2;
  }

  else
  {
    v32 = a6;
  }

  v33 = v21 + v30;
  v34 = v19 + *&v31;
  if (v32)
  {
    v34 = 0.0;
  }

  v35.f32[0] = v23.__cosval * v24.__cosval;
  v35.f32[1] = v23.__cosval * v24.__sinval;
  v35.i64[1] = LODWORD(v23.__sinval);
  v37 = v35;
  __sincosf_stret(v34);
  __sincosf_stret(v33);
  sub_1000E4134(__src, v38, v37);
  return memcpy(a7, __src, 0x203uLL);
}

void ConnectionAssistantEarth.point(for:camera:)(double a1, double a2)
{
  v3 = a1;
  v4 = -90.0 - a2;
  v5 = ((v4 * 3.1416) / 180.0) + v2[8].f32[0];
  v6 = __sincosf_stret((v3 * -3.1416) / 180.0);
  v7 = __sincosf_stret(v5);
  v8 = v2[8].f32[1];
  *v9.f32 = vsub_f32(*v2, vmul_n_f32(vmul_n_f32(__PAIR64__(LODWORD(v7.__sinval), LODWORD(v7.__cosval)), v6.__cosval), v8));
  v9.f32[2] = COERCE_FLOAT(*&v2[1]) - (v6.__sinval * v8);
  v9.i32[3] = 0;
  ConnectionAssistantCamera.projectToViewport(point:)(v9);
}

double ConnectionAssistantEarth.direction(for:)(double a1, double a2)
{
  v3 = a1;
  v4 = -90.0 - a2;
  v5 = ((v4 * 3.1416) / 180.0) + *(v2 + 64);
  cosval = __sincosf_stret((v3 * -3.1416) / 180.0).__cosval;
  v7 = __sincosf_stret(v5);
  *&v8 = cosval * v7.__cosval;
  *(&v8 + 1) = cosval * v7.__sinval;
  return v8;
}

double static ConnectionAssistantEarth.direction(for:)(double a1, double a2)
{
  v2 = a1;
  v3 = -90.0 - a2;
  v4 = (v3 * 3.1416) / 180.0;
  cosval = __sincosf_stret((v2 * -3.1416) / 180.0).__cosval;
  v6 = __sincosf_stret(v4);
  *&v7 = cosval * v6.__cosval;
  *(&v7 + 1) = cosval * v6.__sinval;
  return v7;
}

double static ConnectionAssistantEarth.coordinate(for:)(__n128 a1)
{
  v3 = a1.n128_u64[0];
  v1 = asinf(a1.n128_f32[2]);
  atan2f(*(&v3 + 1), *&v3);
  return -((v1 / 3.1416) * 180.0);
}

void ConnectionAssistantEarth.project(camera:)(float32x4_t *a1@<X0>, uint64_t a2@<X8>, double a3@<D1>)
{
  LODWORD(a3) = *(v3 + 68);
  v29 = *v3;
  sub_10025D1E4(a1, v30, *v3, a3);
  if (v32)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0uLL;
    v9 = 1;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0;
    v14 = 0;
    v15 = 0;
  }

  else
  {
    v9 = 0;
    v6 = v31;
    v14 = v30[2];
    v15 = v30[3];
    v7 = v30[0];
    v13 = v30[1];
    v8 = vaddq_f32(a1[15], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a1[12], v29.f32[0]), a1[13], *v29.f32, 1), a1[14], v29, 2));
    v8.i32[3] = 0;
    v16 = a1[8];
    v17 = a1[9];
    v18 = a1[10];
    v19 = a1[11];
    v20 = vaddq_f32(v19, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(v3 + 16))), v17, *(v3 + 16), 1), v18, *(v3 + 16), 2));
    v21 = vmulq_f32(v20, v20);
    v22 = vaddv_f32(*v21.f32);
    *v21.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v22));
    *v21.f32 = vmul_f32(*v21.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v22), vmul_f32(*v21.f32, *v21.f32)));
    v10 = vmulq_n_f32(v20, vmul_f32(*v21.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v21.f32[2] + v22), vmul_f32(*v21.f32, *v21.f32))).f32[0]);
    v23 = vaddq_f32(v19, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(v3 + 32))), v17, *(v3 + 32), 1), v18, *(v3 + 32), 2));
    v24 = vmulq_f32(v23, v23);
    *&v25 = v24.f32[2] + vaddv_f32(*v24.f32);
    *v24.f32 = vrsqrte_f32(v25);
    *v24.f32 = vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32)));
    v11 = vmulq_n_f32(v23, vmul_f32(*v24.f32, vrsqrts_f32(v25, vmul_f32(*v24.f32, *v24.f32))).f32[0]);
    v26 = vaddq_f32(v19, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(*(v3 + 48))), v17, *(v3 + 48), 1), v18, *(v3 + 48), 2));
    v27 = vmulq_f32(v26, v26);
    *&v28 = v27.f32[2] + vaddv_f32(*v27.f32);
    *v27.f32 = vrsqrte_f32(v28);
    *v27.f32 = vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32)));
    v12 = vmulq_n_f32(v26, vmul_f32(*v27.f32, vrsqrts_f32(v28, vmul_f32(*v27.f32, *v27.f32))).f32[0]);
  }

  *a2 = v8;
  *(a2 + 16) = v10;
  *(a2 + 32) = v11;
  *(a2 + 48) = v12;
  *(a2 + 64) = v7;
  *(a2 + 72) = v13;
  *(a2 + 80) = v14;
  *(a2 + 88) = v15;
  *(a2 + 96) = v6;
  *(a2 + 100) = v9;
}

double ConnectionAssistantEarth.model.getter()
{
  v1.i64[0] = 0;
  v1.i32[3] = 0;
  v2 = v0[4].f32[0];
  v3 = v0[4].u32[1];
  v4.i32[0] = 0;
  v4.i32[3] = 0;
  if (v2 != 0.0)
  {
    *(v4.i64 + 4) = v0[4].u32[1];
    v9 = v4;
    v1.i32[2] = v0[4].i32[1];
    v10 = v1;
    v8 = v1.u32[2];
    __sincosf_stret(v2 * 0.5);
    simd_float4x4.init(_:)();
    v3 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v8, v5.f32[0]), v9, *v5.f32, 1), v10, v5, 2), xmmword_1002784A0, v5, 3);
  }

  v6 = *v0;
  v6.i32[3] = 1.0;
  *&result = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_100278450, v3.f32[0]), xmmword_100278470, *v3.f32, 1), xmmword_100278490, v3, 2), v6, v3, 3).u64[0];
  return result;
}

double sub_1000E35B4()
{
  result = 0.0000305175853;
  static ConnectionAssistantEarth.sunPosition = xmmword_100283380;
  return result;
}

__int128 *ConnectionAssistantEarth.sunPosition.unsafeMutableAddressor()
{
  if (qword_100353AE0 != -1)
  {
    swift_once();
  }

  return &static ConnectionAssistantEarth.sunPosition;
}

double static ConnectionAssistantEarth.sunPosition.getter()
{
  if (qword_100353AE0 != -1)
  {
    swift_once();
  }

  return *&static ConnectionAssistantEarth.sunPosition;
}

double sub_1000E3694(uint64_t a1, float32x4_t a2)
{
  *v2.i32 = __exp10f(a1);
  *&result = vdivq_f32(vrndaq_f32(vmulq_n_f32(a2, *v2.i32)), vdupq_lane_s32(v2, 0)).u64[0];
  return result;
}

__n128 ConnectionAssistantEarth.dot.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  *(a1 + 32) = *(v1 + 112);
  *(a1 + 48) = v2;
  *(a1 + 61) = *(v1 + 141);
  result = *(v1 + 96);
  *a1 = *(v1 + 80);
  *(a1 + 16) = result;
  return result;
}

__n128 ConnectionAssistantEarth.dot.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 112) = *(a1 + 32);
  *(v1 + 128) = v2;
  *(v1 + 141) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = result;
  return result;
}

__n128 ConnectionAssistantEarth.cone.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 240);
  *(a1 + 64) = *(v1 + 224);
  *(a1 + 80) = v2;
  *(a1 + 96) = *(v1 + 256);
  *(a1 + 112) = *(v1 + 272);
  v3 = *(v1 + 176);
  *a1 = *(v1 + 160);
  *(a1 + 16) = v3;
  result = *(v1 + 192);
  v5 = *(v1 + 208);
  *(a1 + 32) = result;
  *(a1 + 48) = v5;
  return result;
}

__n128 ConnectionAssistantEarth.cone.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 224) = *(a1 + 64);
  *(v1 + 240) = v2;
  *(v1 + 256) = *(a1 + 96);
  *(v1 + 272) = *(a1 + 112);
  v3 = *(a1 + 16);
  *(v1 + 160) = *a1;
  *(v1 + 176) = v3;
  result = *(a1 + 32);
  v5 = *(a1 + 48);
  *(v1 + 192) = result;
  *(v1 + 208) = v5;
  return result;
}

__n128 ConnectionAssistantEarth.arrow.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 336);
  *(a1 + 32) = *(v1 + 320);
  *(a1 + 48) = v2;
  result = *(v1 + 304);
  *a1 = *(v1 + 288);
  *(a1 + 16) = result;
  *(a1 + 61) = *(v1 + 349);
  return result;
}

__n128 ConnectionAssistantEarth.arrow.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 320) = *(a1 + 32);
  *(v1 + 336) = v2;
  *(v1 + 349) = *(a1 + 61);
  result = *(a1 + 16);
  *(v1 + 288) = *a1;
  *(v1 + 304) = result;
  return result;
}

__n128 ConnectionAssistantEarth.satellite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 480);
  *(a1 + 96) = *(v1 + 464);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 496);
  v3 = *(v1 + 416);
  *(a1 + 32) = *(v1 + 400);
  *(a1 + 48) = v3;
  v4 = *(v1 + 448);
  *(a1 + 64) = *(v1 + 432);
  *(a1 + 80) = v4;
  result = *(v1 + 368);
  v6 = *(v1 + 384);
  *a1 = result;
  *(a1 + 16) = v6;
  *(a1 + 143) = *(v1 + 511);
  return result;
}

__n128 ConnectionAssistantEarth.satellite.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 464) = *(a1 + 96);
  *(v1 + 480) = v2;
  *(v1 + 496) = *(a1 + 128);
  *(v1 + 511) = *(a1 + 143);
  v3 = *(a1 + 48);
  *(v1 + 400) = *(a1 + 32);
  *(v1 + 416) = v3;
  v4 = *(a1 + 80);
  *(v1 + 432) = *(a1 + 64);
  *(v1 + 448) = v4;
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 368) = *a1;
  *(v1 + 384) = v6;
  return result;
}

__n128 ConnectionAssistantEarth.Projection.ellipse.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[4];
  v3 = v1[5].n128_u64[0];
  v4 = v1[5].n128_u64[1];
  v5 = v1[6].n128_u32[0];
  *a1 = result;
  a1[1].n128_u64[0] = v3;
  a1[1].n128_u64[1] = v4;
  a1[2].n128_u32[0] = v5;
  return result;
}

double sub_1000E3A18()
{
  v0 = [objc_allocWithZone(GEOAlmanac) init];
  v6 = 0.0;
  v7 = 0.0;
  v5 = 0;
  isa = Date._bridgeToObjectiveC()().super.isa;
  [v0 calculateGeocentricDirectionForSunX:&v7 Y:&v6 Z:&v5 date:isa];

  *&v2 = v7;
  *&v3 = v6;
  return COERCE_DOUBLE(__PAIR64__(v3, v2));
}

uint64_t sub_1000E3AE8(void *__src, const void *a2)
{
  memcpy(v4, __src, 0x203uLL);
  memcpy(__dst, a2, 0x203uLL);
  return _s8SOSBuddy24ConnectionAssistantEarthV23__derived_struct_equalsySbAC_ACtFZ_0(v4, __dst) & 1;
}

uint64_t _s8SOSBuddy24ConnectionAssistantEarthV14LightDirectionV23__derived_struct_equalsySbAE_AEtFZ_0(float32x4_t a1, int8x16_t a2, float32x4_t a3, float32x4_t a4, int8x16_t a5, float32x4_t a6)
{
  v6 = vmovn_s32(vceqq_f32(a1, a4));
  if ((v6.i8[0] & 1) == 0)
  {
    return 0;
  }

  v7 = 0;
  if (v6.i8[2] & 1) != 0 && (v6.i8[4] & 1) != 0 && (vmovn_s32(vceqq_f32(a2, a5)).u8[0])
  {
    if ((vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(a2, a2, 0xCuLL), a3, 8uLL), vextq_s8(vextq_s8(a5, a5, 0xCuLL), a6, 8uLL)))) & 1) == 0)
    {
      return 0;
    }

    v7 = vmovn_s32(vceqq_f32(a3, a6)).i8[4];
  }

  return v7 & 1;
}

uint64_t _s8SOSBuddy24ConnectionAssistantEarthV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, float32x4_t *a2)
{
  v2 = vmovn_s32(vceqq_f32(*a1, *a2));
  if ((v2.i8[0] & 1) == 0)
  {
    goto LABEL_29;
  }

  if ((v2.i16[1] & v2.i16[2] & 1) == 0)
  {
    goto LABEL_29;
  }

  v3 = vmovn_s32(vceqq_f32(*(a1 + 16), a2[1]));
  if ((v3.i8[0] & 1) == 0)
  {
    goto LABEL_29;
  }

  v4 = 0;
  if (v3.i8[2] & 1) != 0 && (v3.i8[4])
  {
    v5 = *(a1 + 32);
    v6 = a2[2];
    if (vmovn_s32(vceqq_f32(v5, v6)).u8[0])
    {
      v4 = 0;
      v7 = *(a1 + 48);
      v8 = a2[3];
      if (vminv_u16(vmovn_s32(vceqq_f32(vextq_s8(vextq_s8(v5, v5, 0xCuLL), v7, 8uLL), vextq_s8(vextq_s8(v6, v6, 0xCuLL), v8, 8uLL)))) & 1) != 0 && (vmovn_s32(vceqq_f32(v7, v8)).i32[1])
      {
        if (*(a1 + 64) != a2[4].f32[0] || *(a1 + 68) != a2[4].f32[1] || *(a1 + 72) != a2[4].f32[2] || *(a1 + 76) != a2[4].f32[3])
        {
          goto LABEL_29;
        }

        if (*(a1 + 148))
        {
          if ((a2[9].i8[4] & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (a2[9].i8[4])
          {
            goto LABEL_29;
          }

          v9 = *(a1 + 88);
          v10 = *(a1 + 96);
          v11 = *(a1 + 112);
          v12 = *(a1 + 120);
          v13 = *(a1 + 128);
          v14 = *(a1 + 136);
          v15 = *(a1 + 144);
          v16 = a2[5].i64[0];
          v17 = a2[5].i64[1];
          v18 = a2[6].i64[0];
          v19 = a2[7].i64[0];
          v20 = a2[7].i64[1];
          v21 = a2[8].i64[0];
          v22 = a2[8].i64[1];
          v23 = a2[9].i32[0];
          v95.i64[0] = *(a1 + 80);
          v95.i64[1] = v9;
          v96 = v10;
          v97 = v11;
          v98 = v12;
          v99 = v13;
          v100 = v14;
          v101 = v15;
          v102.i64[0] = v16;
          v102.i64[1] = v17;
          v103 = v18;
          v104 = v19;
          v105 = v20;
          v106 = v21;
          v107 = v22;
          v108 = v23;
          v24 = a1;
          v25 = a2;
          v26 = _s8SOSBuddy30ConnectionAssistantLocationDotV23__derived_struct_equalsySbAC_ACtFZ_0(&v95, &v102);
          a2 = v25;
          v27 = v26;
          a1 = v24;
          if (!v27)
          {
            goto LABEL_29;
          }
        }

        v28 = a2[17].i8[1];
        if ((*(a1 + 273) & 1) == 0)
        {
          if (a2[17].i8[1])
          {
            goto LABEL_29;
          }

          v29 = a2[15];
          v93[4] = a2[14];
          v93[5] = v29;
          v93[6] = a2[16];
          v94 = a2[17].i8[0];
          v30 = a2[11];
          v93[0] = a2[10];
          v93[1] = v30;
          v31 = a2[13];
          v93[2] = a2[12];
          v93[3] = v31;
          v32 = *(a1 + 160);
          v33 = *(a1 + 176);
          v34 = *(a1 + 208);
          v91[2] = *(a1 + 192);
          v91[3] = v34;
          v91[0] = v32;
          v91[1] = v33;
          v35 = *(a1 + 224);
          v36 = *(a1 + 240);
          v37 = *(a1 + 256);
          v92 = *(a1 + 272);
          v91[5] = v36;
          v91[6] = v37;
          v91[4] = v35;
          v38 = a1;
          v39 = a2;
          v40 = _s8SOSBuddy23ConnectionAssistantConeV23__derived_struct_equalsySbAC_ACtFZ_0(v91, v93);
          a2 = v39;
          v28 = v40;
          a1 = v38;
        }

        if (v28)
        {
          v41 = a2[22].i8[4];
          if ((*(a1 + 356) & 1) == 0)
          {
            if (a2[22].i8[4])
            {
              goto LABEL_29;
            }

            v42 = a2[21];
            v89[2] = a2[20];
            v89[3] = v42;
            v90 = a2[22].i32[0];
            v43 = a2[19];
            v89[0] = a2[18];
            v89[1] = v43;
            v44 = *(a1 + 336);
            v87[2] = *(a1 + 320);
            v87[3] = v44;
            v88 = *(a1 + 352);
            v45 = *(a1 + 304);
            v87[0] = *(a1 + 288);
            v87[1] = v45;
            v46 = a1;
            v47 = a2;
            v48 = _s8SOSBuddy24ConnectionAssistantArrowV23__derived_struct_equalsySbAC_ACtFZ_0(v87, v89);
            a2 = v47;
            v41 = v48;
            a1 = v46;
          }

          if (v41)
          {
            v49 = a1 + 368;
            v50 = a2 + 23;
            v51 = *(a1 + 480);
            v81[6] = *(a1 + 464);
            v81[7] = v51;
            v82[0] = *(a1 + 496);
            v52 = *(a1 + 416);
            v81[2] = *(a1 + 400);
            v81[3] = v52;
            v53 = *(a1 + 448);
            v81[4] = *(a1 + 432);
            v81[5] = v53;
            v54 = *(a1 + 384);
            v81[0] = *(a1 + 368);
            v81[1] = v54;
            *(v82 + 15) = *(a1 + 511);
            if (sub_1000E45DC(v81) != 1)
            {
              v59 = v50[7];
              v78 = v50[6];
              v79 = v59;
              v80[0] = v50[8];
              *(&v80[0].i32[3] + 3) = *(&v50[8].i32[3] + 3);
              v60 = v50[3];
              v74 = v50[2];
              v75 = v60;
              v61 = v50[5];
              v76 = v50[4];
              v77 = v61;
              v62 = v50[1];
              v72 = *v50;
              v73 = v62;
              if (sub_1000E45DC(&v72) != 1)
              {
                v64 = v50[7];
                v85[6] = v50[6];
                v85[7] = v64;
                v85[8] = v50[8];
                v86 = v50[9].i16[0];
                v65 = v50[3];
                v85[2] = v50[2];
                v85[3] = v65;
                v66 = v50[5];
                v85[4] = v50[4];
                v85[5] = v66;
                v67 = v50[1];
                v85[0] = *v50;
                v85[1] = v67;
                v68 = *(v49 + 112);
                v83[6] = *(v49 + 96);
                v83[7] = v68;
                v83[8] = *(v49 + 128);
                v84 = *(v49 + 144);
                v69 = *(v49 + 48);
                v83[2] = *(v49 + 32);
                v83[3] = v69;
                v70 = *(v49 + 80);
                v83[4] = *(v49 + 64);
                v83[5] = v70;
                v71 = *(v49 + 16);
                v83[0] = *v49;
                v83[1] = v71;
                v4 = _s8SOSBuddy28ConnectionAssistantSatelliteV23__derived_struct_equalsySbAC_ACtFZ_0(v83, v85);
                return v4 & 1;
              }

              goto LABEL_29;
            }

            v55 = v50[7];
            v78 = v50[6];
            v79 = v55;
            v80[0] = v50[8];
            *(&v80[0].i32[3] + 3) = *(&v50[8].i32[3] + 3);
            v56 = v50[3];
            v74 = v50[2];
            v75 = v56;
            v57 = v50[5];
            v76 = v50[4];
            v77 = v57;
            v58 = v50[1];
            v72 = *v50;
            v73 = v58;
            v4 = sub_1000E45DC(&v72) == 1;
            return v4 & 1;
          }
        }

LABEL_29:
        v4 = 0;
      }
    }
  }

  return v4 & 1;
}

double sub_1000E3FA0@<D0>(uint64_t a1@<X8>, float32x4_t a2@<Q0>, float32x4_t a3@<Q1>, float a4@<S4>)
{
  sub_100004418(v15);
  *&v14[107] = v15[6];
  *&v14[123] = v15[7];
  *&v14[139] = v16[0];
  *&v14[43] = v15[2];
  *&v14[59] = v15[3];
  *&v14[75] = v15[4];
  *&v14[91] = v15[5];
  *&v14[11] = v15[0];
  *&v14[27] = v15[1];
  v6 = vdupq_n_s32(0x447A0000u);
  *&v14[154] = *(v16 + 15);
  v6.i64[0] = vdivq_f32(vrndaq_f32(vmulq_f32(a2, v6)), v6).u64[0];
  v6.i64[1] = COERCE_UNSIGNED_INT(roundf(vmuls_lane_f32(1000.0, a2, 2)) / 1000.0);
  v12 = v6;
  *&v7 = sub_1000E3694(3, a3);
  *a1 = v12;
  *(a1 + 16) = v7;
  *(a1 + 32) = v8;
  *(a1 + 48) = v9;
  *(a1 + 64) = a4;
  *(a1 + 68) = 0x3FE000003CB7CB7DLL;
  *(a1 + 76) = 1065353216;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 148) = 1;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 273) = 1;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0;
  *(a1 + 356) = 1;
  *(a1 + 453) = *&v14[96];
  *(a1 + 469) = *&v14[112];
  *(a1 + 485) = *&v14[128];
  *(a1 + 499) = *&v14[142];
  *(a1 + 389) = *&v14[32];
  *(a1 + 405) = *&v14[48];
  *(a1 + 421) = *&v14[64];
  *(a1 + 437) = *&v14[80];
  result = *v14;
  *(a1 + 357) = *v14;
  *(a1 + 373) = *&v14[16];
  return result;
}

void *sub_1000E4134@<X0>(void *a1@<X8>, float a2@<S0>, float32x4_t a3@<Q1>)
{
  if (qword_100353AE0 != -1)
  {
    v7 = a2;
    swift_once();
    a2 = v7;
  }

  v8 = static ConnectionAssistantEarth.sunPosition;
  v4 = __sincosf_stret(a2);
  *v5.f32 = vadd_f32(vmul_f32(__PAIR64__(LODWORD(v4.__sinval), LODWORD(v4.__cosval)), vdup_n_s32(0x3E3E5BE6u)), *&v8);
  v5.f32[2] = *(&v8 + 2) + 0.0;
  v5.i32[3] = 0;
  sub_1000E3FA0(__src, v5, a3, 0.0);
  return memcpy(a1, __src, 0x203uLL);
}

void sub_1000E4208(_BYTE *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = objc_allocWithZone(GEOSolarEclipticCelestialBodyData);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v11 = *(v5 + 8);
  v11(v8, v4);
  v12 = [v9 initWithDate:isa body:3];

  if (v12)
  {
    [v12 longitude];
    *&v13 = v13;
    v14 = (*&v13 * 3.1416) / 180.0;
    *v15.i64 = sub_1000E3A18();
    sub_1000E4134(v16, v14, v15);

    v11(a1, v4);
    memcpy(a2, v16, 0x203uLL);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000E43D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 515))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E43F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 504) = 0;
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
    *(result + 514) = 0;
    *(result + 512) = 0;
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

  *(result + 515) = v3;
  return result;
}

__n128 sub_1000E44C8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1000E44F4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 100))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E4514(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
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

  *(result + 100) = v3;
  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ConnectionAssistantEarth.LightAngle(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionAssistantEarth.LightAngle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ConnectionAssistantEarth.LightAngle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1000E45DC(uint64_t a1)
{
  if (*(a1 + 146))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000E45F8(double a1, double a2)
{
  if (a1 == 0.0 && a2 == 0.0)
  {
    return 0x6F72657A2ELL;
  }

  v3._countAndFlagsBits = 10366;
  v3._object = 0xE200000000000000;
  String.append(_:)(v3);
  Double.write<A>(to:)();
  v4._countAndFlagsBits = 8236;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  Double.write<A>(to:)();
  v5._countAndFlagsBits = 41;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return 0;
}

uint64_t sub_1000E46EC(uint64_t a1, double a2, double a3)
{
  if (a2 == 0.0 && a3 == 0.0)
  {
    return 0x6F72657A2ELL;
  }

  v5._countAndFlagsBits = 10366;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  __exp10(a1);
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 8236;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  Double.write<A>(to:)();
  v7._countAndFlagsBits = 41;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0;
}

uint64_t sub_1000E47E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000040A8(&qword_100356A90);
  __chkstk_darwin(v4 - 8);
  v6 = &v16[-1] - v5;
  type metadata accessor for AppEvents();
  sub_1000E4A60(&qword_100354D48, type metadata accessor for AppEvents);
  *a2 = EnvironmentObject.init()();
  *(a2 + 8) = v7;
  type metadata accessor for AppRuntimeStateModel();
  sub_1000E4A60(&qword_10035D780, type metadata accessor for AppRuntimeStateModel);
  *(a2 + 16) = EnvironmentObject.init()();
  *(a2 + 24) = v8;
  v9 = *(a1 + 16);
  *(a2 + 32) = *a1;
  *(a2 + 48) = v9;
  *(a2 + 64) = *(a1 + 32);
  sub_100038298();
  v10 = [objc_opt_self() mainRunLoop];
  v11 = type metadata accessor for NSRunLoop.SchedulerOptions();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  v12 = static NSTimer.publish(every:tolerance:on:in:options:)();

  sub_100008FA0(v6, &qword_100356A90);
  v16[0] = v12;
  type metadata accessor for NSTimer.TimerPublisher();
  State.init(wrappedValue:)();
  v13 = *(&v17[0] + 1);
  *(a2 + 72) = *&v17[0];
  *(a2 + 80) = v13;
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1000E4AA8(v17, v16);
  sub_1000040A8(&qword_100356B58);
  State.init(wrappedValue:)();
  return sub_100008FA0(v17, &qword_100356B58);
}

uint64_t sub_1000E4A60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E4AA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100356B58);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E4B18(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000E4B30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_1000E4B78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000E4C04@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = static VerticalAlignment.center.getter();
  v5 = v1[10];
  *&v31 = v1[9];
  *(&v31 + 1) = v5;
  sub_1000040A8(&qword_10035D788);
  State.wrappedValue.getter();
  v6 = v40;
  sub_100008AA8(v1, &v31);
  v7 = swift_allocObject();
  v8 = v38;
  *(v7 + 112) = v37;
  *(v7 + 128) = v8;
  *(v7 + 144) = v39;
  v9 = v34;
  *(v7 + 48) = v33;
  *(v7 + 64) = v9;
  v10 = v36;
  *(v7 + 80) = v35;
  *(v7 + 96) = v10;
  v11 = v32;
  *(v7 + 16) = v31;
  *(v7 + 32) = v11;
  v12 = *v1;
  if (*v1)
  {
    v13 = v7;
    v14 = *(v12 + 104);
    sub_100008AA8(v2, &v31);
    v15 = swift_allocObject();
    v16 = v38;
    *(v15 + 112) = v37;
    *(v15 + 128) = v16;
    *(v15 + 144) = v39;
    v17 = v34;
    *(v15 + 48) = v33;
    *(v15 + 64) = v17;
    v18 = v36;
    *(v15 + 80) = v35;
    *(v15 + 96) = v18;
    v19 = v32;
    *(v15 + 16) = v31;
    *(v15 + 32) = v19;
    LOBYTE(v40) = 0;
    sub_100008AA8(v2, &v31);
    v20 = swift_allocObject();
    v21 = v38;
    *(v20 + 112) = v37;
    *(v20 + 128) = v21;
    *(v20 + 144) = v39;
    v22 = v34;
    *(v20 + 48) = v33;
    *(v20 + 64) = v22;
    v23 = v36;
    *(v20 + 80) = v35;
    *(v20 + 96) = v23;
    v24 = v32;
    *(v20 + 16) = v31;
    *(v20 + 32) = v24;
    sub_100008AA8(v2, &v31);
    v25 = swift_allocObject();
    v26 = v38;
    *(v25 + 112) = v37;
    *(v25 + 128) = v26;
    *(v25 + 144) = v39;
    v27 = v34;
    *(v25 + 48) = v33;
    *(v25 + 64) = v27;
    v28 = v36;
    *(v25 + 80) = v35;
    *(v25 + 96) = v28;
    v29 = v32;
    *(v25 + 16) = v31;
    *(v25 + 32) = v29;
    *a1 = v4;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v6;
    *(a1 + 32) = sub_1000E5A50;
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = sub_1000E5A58;
    *(a1 + 64) = v15;
    *(a1 + 72) = sub_1000E5A60;
    *(a1 + 80) = v20;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = sub_1000E5B08;
    *(a1 + 128) = v25;
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000E4A60(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000E4E84(uint64_t a1, void *a2)
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000F53C(v3, qword_100381E48);
  sub_100008AA8(a2, v25);
  sub_100008AA8(a2, v23);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v6 = 136446467;
    v7 = sub_1000B9A7C();
    v9 = v8;
    sub_100008B74(v25);
    v10 = sub_10017C9E8(v7, v9, &v22);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2081;
    v11 = v24;

    sub_1000C70B0(v11);
    v12 = String.init<A>(describing:)();
    v14 = v13;
    sub_100008B74(v23);
    v15 = sub_10017C9E8(v12, v14, &v22);

    *(v6 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v4, v5, "[%{public}s] User inactivity timer fired for %{private}s", v6, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008B74(v23);
    sub_100008B74(v25);
  }

  sub_1000E51FC();
  result = sub_1000E54B0();
  if (result)
  {
    v17 = a2[2];
    if (!v17)
    {
      type metadata accessor for AppRuntimeStateModel();
      v20 = &qword_10035D780;
      v21 = type metadata accessor for AppRuntimeStateModel;
      goto LABEL_17;
    }

    v18 = *(v17 + 40);
    v19 = 3;
    if (*(*(a2[4] + 344) + 32))
    {
      v19 = 8;
    }

    if (v19 == v18)
    {
      result = sub_1000BD2DC();
      if (result)
      {
        if (*a2)
        {

          sub_1000040A8(&unk_100365610);
          sub_100009274(&qword_10035CF00, &unk_100365610);
          Subject<>.send()();
        }

        type metadata accessor for AppEvents();
        v20 = &qword_100354D48;
        v21 = type metadata accessor for AppEvents;
LABEL_17:
        sub_1000E4A60(v20, v21);
        result = EnvironmentObject.error()();
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_1000E51FC()
{
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381E48);
  sub_100008AA8(v0, v17);
  sub_100008AA8(v0, v16);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v4 = 136446467;
    v5 = sub_1000B9A7C();
    v7 = v6;
    sub_100008B74(v17);
    v8 = sub_10017C9E8(v5, v7, &v15);

    *(v4 + 4) = v8;
    *(v4 + 12) = 2081;
    v9 = v16[6];

    sub_1000C70B0(v9);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    sub_100008B74(v16);
    v13 = sub_10017C9E8(v10, v12, &v15);

    *(v4 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v2, v3, "[%{public}s] _cancelInactivityTimer for %{private}s", v4, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008B74(v16);
    sub_100008B74(v17);
  }

  sub_1000040A8(&qword_10035D790);
  State.wrappedValue.getter();
  if (!v18)
  {
    return sub_100008FA0(v17, &qword_100356B58);
  }

  sub_1000089B0(v17, v16);
  sub_100008FA0(v17, &qword_100356B58);
  sub_1000088DC(v16, v16[3]);
  dispatch thunk of Cancellable.cancel()();
  return sub_100008964(v16);
}

uint64_t sub_1000E54B0()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 32);
  result = swift_beginAccess();
  v4 = *(v2 + 144);
  v5 = *(v4 + 16);
  if (v5)
  {
    if (v1 != *(v4 + v5 + 31))
    {
      LOBYTE(v7) = 0;
      return v7 & 1;
    }

    if (v1 == 2)
    {
      v6 = *(v0 + 48);
      if (!v6)
      {
        LOBYTE(v7) = *(v2 + 136) == 0;
        return v7 & 1;
      }

      v7 = *(v2 + 136);

      if (!v7)
      {
        goto LABEL_11;
      }

      if (*(v6 + 16) != *(v7 + 16) || *(v6 + 24) != *(v7 + 24))
      {
        LOBYTE(v7) = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_11:

        return v7 & 1;
      }
    }

    LOBYTE(v7) = 1;
    return v7 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000E558C(uint64_t result, uint64_t a2)
{
  if (*result == *(a2 + 32))
  {
    result = sub_1000E54B0();
    if (result)
    {
      return sub_1000E55C8();
    }
  }

  return result;
}

uint64_t sub_1000E55C8()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_100356A90);
  __chkstk_darwin(v2 - 8);
  v4 = v25 - v3;
  if (qword_100353AA8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381E48);
  sub_100008AA8(v0, &v36);
  sub_100008AA8(v0, v31);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v8 = 136446467;
    v9 = sub_1000B9A7C();
    v11 = v10;
    sub_100008B74(&v36);
    v12 = sub_10017C9E8(v9, v11, &v30);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2081;
    v13 = v33;
    v25[1] = v31[4];
    v26 = v32;
    v27 = v33;
    v28 = v34;
    v29 = v35;

    sub_1000C70B0(v13);
    v14 = String.init<A>(describing:)();
    v16 = v15;
    sub_100008B74(v31);
    v17 = sub_10017C9E8(v14, v16, &v30);

    *(v8 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "[%{public}s] _resetInactivityTimer for %{private}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100008B74(v31);
    sub_100008B74(&v36);
  }

  sub_1000040A8(&qword_10035D790);
  State.wrappedValue.getter();
  if (v38)
  {
    sub_1000089B0(&v36, v31);
    sub_100008FA0(&v36, &qword_100356B58);
    sub_1000088DC(v31, v31[3]);
    dispatch thunk of Cancellable.cancel()();
    sub_100008964(v31);
  }

  else
  {
    sub_100008FA0(&v36, &qword_100356B58);
  }

  v18 = v1[4];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    result = swift_unknownObjectRelease();
    if ((*(*(v18 + 344) + 80) & 1) == 0)
    {
      sub_100038298();
      v20 = [objc_opt_self() mainRunLoop];
      v21 = type metadata accessor for NSRunLoop.SchedulerOptions();
      (*(*(v21 - 8) + 56))(v4, 1, 1, v21);
      v22 = static NSTimer.publish(every:tolerance:on:in:options:)();

      sub_100008FA0(v4, &qword_100356A90);
      v24 = v1[10];
      v36 = v1[9];
      v23 = v36;
      v37 = v24;
      v31[0] = v22;
      sub_1000040A8(&qword_10035D788);
      State.wrappedValue.setter();
      v36 = v23;
      v37 = v24;
      State.wrappedValue.getter();
      NSTimer.TimerPublisher.connect()();

      sub_1000E4AA8(&v36, v31);
      State.wrappedValue.setter();
      return sub_100008FA0(&v36, &qword_100356B58);
    }
  }

  return result;
}

uint64_t sub_1000E5A84()
{

  if (*(v0 + 64))
  {
  }

  if (*(v0 + 128))
  {
    sub_100008964(v0 + 104);
  }

  return _swift_deallocObject(v0, 152, 7);
}

unint64_t sub_1000E5B30()
{
  result = qword_10035D798;
  if (!qword_10035D798)
  {
    sub_100008CF0(&qword_10035D7A0);
    sub_1000E5BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D798);
  }

  return result;
}

unint64_t sub_1000E5BBC()
{
  result = qword_10035D7A8;
  if (!qword_10035D7A8)
  {
    sub_100008CF0(&qword_10035D7B0);
    sub_100009274(&qword_10035D7B8, &qword_10035D7C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D7A8);
  }

  return result;
}

void *sub_1000E5C80()
{
  v1 = v0;
  sub_1000040A8(&unk_100365610);
  swift_allocObject();
  v0[2] = PassthroughSubject.init()();
  swift_allocObject();
  v0[3] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D918);
  swift_allocObject();
  v0[4] = PassthroughSubject.init()();
  swift_allocObject();
  v0[5] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D920);
  swift_allocObject();
  v0[6] = PassthroughSubject.init()();
  swift_allocObject();
  v0[7] = PassthroughSubject.init()();
  swift_allocObject();
  v0[8] = PassthroughSubject.init()();
  swift_allocObject();
  v0[9] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D928);
  swift_allocObject();
  v0[10] = PassthroughSubject.init()();
  swift_allocObject();
  v0[11] = PassthroughSubject.init()();
  swift_allocObject();
  v0[12] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D930);
  swift_allocObject();
  v0[13] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D938);
  swift_allocObject();
  v0[14] = PassthroughSubject.init()();
  swift_allocObject();
  v0[15] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D940);
  swift_allocObject();
  v0[16] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D948);
  swift_allocObject();
  v0[17] = PassthroughSubject.init()();
  sub_1000040A8(&unk_100365630);
  swift_allocObject();
  v0[18] = PassthroughSubject.init()();
  swift_allocObject();
  v0[19] = PassthroughSubject.init()();
  sub_1000040A8(&qword_100356508);
  swift_allocObject();
  v0[20] = PassthroughSubject.init()();
  swift_allocObject();
  v0[21] = PassthroughSubject.init()();
  sub_1000040A8(&qword_100365640);
  swift_allocObject();
  v0[22] = PassthroughSubject.init()();
  swift_allocObject();
  v0[23] = PassthroughSubject.init()();
  sub_1000040A8(&qword_10035D950);
  swift_allocObject();
  v0[24] = PassthroughSubject.init()();
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] init", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000E6168()
{
  v1 = v0;
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_10000F53C(v2, qword_100381C80);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136446210;

    v7 = String.init<A>(describing:)();
    v9 = sub_10017C9E8(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "[%{public}s] deinit", v5, 0xCu);
    sub_100008964(v6);
  }

  return v1;
}

uint64_t sub_1000E63B4()
{
  sub_1000E6168();

  return swift_deallocClassInstance();
}

uint64_t sub_1000E642C@<X0>(uint64_t *a1@<X8>)
{
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1000E6490()
{
  result = qword_10035D958;
  if (!qword_10035D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D958);
  }

  return result;
}

uint64_t ConnectionAssistantSatelliteRenderer.__allocating_init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ConnectionAssistantSatelliteRenderer.init(device:buffers:renderPipelines:)(a1, a2, a3);
  return v6;
}

uint64_t ConnectionAssistantSatelliteRenderer.init(device:buffers:renderPipelines:)(void *a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 128) = 0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 136) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  v8 = sub_1001C86CC(a1, a2, a3);
  if (v4)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    *(v3 + 40) = v8;
    *(v3 + 48) = v9;
    *(v3 + 56) = v10;
    *(v3 + 64) = v11;
    v12 = [a1 newBufferWithLength:32 options:1];
    if (v12)
    {
      v13 = v12;
      swift_unknownObjectRelease();

      *(v3 + 72) = v13;
      return v3;
    }

    sub_100022AD4();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();

  if (!v4)
  {

    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  type metadata accessor for ConnectionAssistantSatelliteRenderer();
  swift_deallocPartialClassInstance();
  return v3;
}

void ConnectionAssistantSatelliteRenderer.compute(dt:satellite:earth:camera:computeCommandEncoder:)(double a1, uint64_t a2, uint64_t a3, float32x4_t *a4, void *a5)
{
  ConnectionAssistantSatellite.cone(camera:earth:)(a4, a3, v7);
  if ((v9 & 1) == 0)
  {
    v11[4] = v7[4];
    v11[5] = v7[5];
    v11[6] = v7[6];
    v12 = v8;
    v11[0] = v7[0];
    v11[1] = v7[1];
    v11[2] = v7[2];
    v11[3] = v7[3];
    sub_1001C8800(v11, v10);
    ConnectionAssistantStarsRenderer.compute(dt:stars:computeCommandEncoder:)(v10, a5, a1);
  }
}

void ConnectionAssistantSatelliteRenderer.render(satellite:earth:camera:destination:renderCommandEncoder:)(uint64_t a1, uint64_t a2, float32x4_t *a3, void *a4, void *a5)
{
  v6 = v5;
  ConnectionAssistantSatellite.cone(camera:earth:)(a3, a2, v50);
  v12 = *a2;
  if ((v52 & 1) == 0)
  {
    v53[4] = v50[4];
    v53[5] = v50[5];
    v53[6] = v50[6];
    v54 = v51;
    v53[0] = v50[0];
    v53[1] = v50[1];
    v53[2] = v50[2];
    v53[3] = v50[3];
    v41 = v12;
    ConnectionAssistantConeRenderer.render(cone:parameters:camera:destination:renderCommandEncoder:)(v53, a3, a4, a5, *(v5 + 40), *(v5 + 48), *(v5 + 56), *(v5 + 64), v12, *(a2 + 32));
    v12 = v41;
  }

  *v13.i64 = ConnectionAssistantSatellite.center(camera:earthCenter:)(a3, v12);
  ConnectionAssistantCamera.projectUV(point:)(v13);
  if ((v15 & 1) == 0)
  {
    v16 = v14;
    v42 = *(a1 + 16);
    v17 = *(a1 + 32);
    v18 = *(v5 + 72);
    v19 = [swift_unknownObjectRetain() contents];
    v20 = v18;
    *v19 = v42;
    v19[4] = v17;
    v40 = a3->i64[1];
    v43 = a3->i64[0];
    v21 = *a3[1].i64;
    sub_1000E6B38(v21, *(a1 + 8));
    v22 = v6[14];
    if (v22)
    {
      v38 = v6[12];
      v36 = v6[13];
      swift_unknownObjectRetain();
      v23 = sub_100254A80(7);
      if (v23)
      {
        v24 = v23;
        v25 = String._bridgeToObjectiveC()();
        [a5 setLabel:v25];

        [a5 setRenderPipelineState:v24];
        v44 = 0;
        v45 = 0;
        *&v46 = [a4 width];
        *(&v46 + 1) = [a4 height];
        [a5 setScissorRect:&v44];
        [a5 setVertexBuffer:*(v6[3] + 24) offset:0 atIndex:0];
        *&v26 = ConnectionAssistantSatellite.model(projectedCenter:textureSize:camera:)(v38, v36, a3, v16);
        v37 = v27;
        v39 = v26;
        v34 = v28;
        v35 = v30;
        v29 = 1.0;
        LODWORD(v30) = 1.0;
        if (v43)
        {
          LODWORD(v30) = 1.0;
          if (v40)
          {
            v31 = v43 / v40;
            v29 = fminf(v31, 1.0);
            *&v30 = fmaxf(v31, 1.0);
          }
        }

        *(&v30 + 1) = 1.0 / v29;
        v33 = v30;
        v32 = ConnectionAssistantCamera.Viewport.normalizedPointSize.getter(v43, v40, v21);
        v44 = v33;
        *&v45 = v32;
        v46 = v39;
        v47 = v37;
        v48 = v35;
        v49 = v34;
        [a5 setVertexBytes:&v44 length:80 atIndex:1];
        [a5 setFragmentBuffer:v18 offset:0 atIndex:0];
        [a5 setFragmentTexture:v22 atIndex:0];
        [a5 drawPrimitives:4 vertexStart:0 vertexCount:4];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease();
      }
    }
  }
}

void sub_1000E6B38(double a1, double a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1000040A8(&qword_100357460);
  __chkstk_darwin(v7 - 8);
  v9 = v22 - v8;
  if (!*(v2 + 14) || (v2[10] == a1 ? (v10 = v2[11] == a2) : (v10 = 0), !v10))
  {
    if (*(v2 + 136) == 1)
    {
      if (qword_100353AD8 != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      sub_10000F53C(v11, qword_100381ED8);
      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v23 = v15;
        *v14 = 136315138;
        *&v22[1] = a1;
        *&v22[2] = a2;
        v16 = String.init<A>(describing:)();
        v18 = sub_10017C9E8(v16, v17, &v23);

        *(v14 + 4) = v18;
        _os_log_impl(&_mh_execute_header, v12, v13, "Creating satellite texture for %s", v14, 0xCu);
        sub_100008964(v15);
      }

      v3[15] = a1;
      v3[16] = a2;
      *(v3 + 136) = 0;
      static TaskPriority.userInitiated.getter();
      v19 = type metadata accessor for TaskPriority();
      (*(*(v19 - 8) + 56))(v9, 0, 1, v19);
      v20 = swift_allocObject();
      swift_weakInit();
      v21 = swift_allocObject();
      *(v21 + 16) = 0;
      *(v21 + 24) = 0;
      *(v21 + 32) = v20;
      *(v21 + 40) = a1;
      *(v21 + 48) = a2;
      *(v21 + 56) = v6;
      sub_10020AA80(0, 0, v9, &unk_100283A78, v21);

      sub_100008FA0(v9, &qword_100357460);
    }
  }
}

uint64_t sub_1000E6E1C(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 192) = a1;
  *(v6 + 200) = a2;
  *(v6 + 184) = a6;
  v7 = type metadata accessor for DispatchTime();
  *(v6 + 208) = v7;
  *(v6 + 216) = *(v7 - 8);
  *(v6 + 224) = swift_task_alloc();
  *(v6 + 232) = swift_task_alloc();
  *(v6 + 240) = swift_task_alloc();

  return (_swift_task_switch)(sub_1000E6EF8, 0, 0);
}

uint64_t sub_1000E6EF8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 31) = Strong;
  if (Strong)
  {
    v2 = Strong;
    static DispatchTime.now()();
    v3 = *(v2 + 16);
    *(v0 + 32) = v3;
    swift_unknownObjectRetain();
    v4 = swift_task_alloc();
    *(v0 + 33) = v4;
    *v4 = v0;
    v4[1] = sub_1000E7040;
    v5 = v0[24];
    v6 = v0[25];

    return sub_1000E8478((v0 + 7), v3, v5, v6, 64.0, 32.0, 1.3);
  }

  else
  {

    v8 = *(v0 + 1);

    return v8();
  }
}

uint64_t sub_1000E7040()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v3 = sub_1000E7400;
  }

  else
  {
    *(v2 + 280) = *(v2 + 56);
    *(v2 + 296) = *(v2 + 72);
    *(v2 + 312) = *(v2 + 88);
    swift_unknownObjectRelease();
    v3 = sub_1000E717C;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_1000E717C()
{
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[30];
  v3 = v0[26];
  v4 = v0[27];
  v5 = type metadata accessor for Logger();
  sub_10000F53C(v5, qword_100381ED8);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    static DispatchTime.now()();
    v9 = DispatchTime.uptimeNanoseconds.getter();
    if (DispatchTime.uptimeNanoseconds.getter() >= v9)
    {
      v15 = *(v0[27] + 8);
      v15(v0[28], v0[26]);
      v19 = 0;
    }

    else
    {
      v10 = v0[28];
      v11 = v0[26];
      v12 = v0[27];
      v13 = DispatchTime.uptimeNanoseconds.getter();
      v14 = DispatchTime.uptimeNanoseconds.getter();
      v15 = *(v12 + 8);
      v16 = v15(v10, v11);
      v19 = v13 - v14;
      if (v13 < v14)
      {
        __break(1u);
        return (_swift_task_switch)(v16, v17, v18);
      }
    }

    v20 = v19;
    v15(v0[29], v0[26]);
    *(v8 + 4) = v20 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v6, v7, "Created satellite texture asynchronously in %llu ms", v8, 0xCu);
  }

  else
  {
    (*(v0[27] + 8))(v0[29], v0[26]);
  }

  swift_weakInit();
  type metadata accessor for MainActor();
  v0[40] = static MainActor.shared.getter();
  v21 = dispatch thunk of Actor.unownedExecutor.getter();
  v23 = v22;
  v16 = sub_1000E75E0;
  v17 = v21;
  v18 = v23;

  return (_swift_task_switch)(v16, v17, v18);
}

uint64_t sub_1000E7400()
{
  swift_unknownObjectRelease();
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381ED8);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_errorRetain();
    v6 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&_mh_execute_header, v2, v3, "Failed to create satellite texture: %@", v4, 0xCu);
    sub_100008FA0(v5, &qword_100359B00);
  }

  swift_weakInit();
  type metadata accessor for MainActor();
  *(v0 + 328) = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_1000E7750, v8, v7);
}

uint64_t sub_1000E75E0()
{

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 296);
    *(v0 + 16) = *(v0 + 280);
    v2 = *(v0 + 312);
    *(v0 + 32) = v1;
    *(v0 + 48) = v2;
    sub_1000E7B34(v0 + 16);
  }

  swift_weakDestroy();

  return (_swift_task_switch)(sub_1000E769C, 0, 0);
}

uint64_t sub_1000E769C()
{
  sub_1000E8E04((v0 + 7));
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  sub_1000E78A4(v1);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1000E7750()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(Strong + 120) = 0;
    *(Strong + 128) = 0;
    *(Strong + 136) = 1;
  }

  swift_weakDestroy();

  return (_swift_task_switch)(sub_1000E77F0, 0, 0);
}

uint64_t sub_1000E77F0()
{

  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[27];
  sub_1000E78A4(v1);

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_1000E78A4(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v19 - v7;
  if (qword_100353AD8 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_10000F53C(v9, qword_100381ED8);
  (*(v3 + 16))(v8, a1, v2);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v10, v11))
  {
    (*(v3 + 8))(v8, v2);
LABEL_10:

    return;
  }

  v12 = swift_slowAlloc();
  *v12 = 134217984;
  static DispatchTime.now()();
  v13 = DispatchTime.uptimeNanoseconds.getter();
  if (DispatchTime.uptimeNanoseconds.getter() >= v13)
  {
    v16 = *(v3 + 8);
    v16(v5, v2);
    v17 = 0;
LABEL_9:
    v18 = v17;
    v16(v8, v2);
    *(v12 + 4) = v18 / 0xF4240;
    _os_log_impl(&_mh_execute_header, v10, v11, "Done handling satellite texture asynchronously in %llu ms", v12, 0xCu);

    goto LABEL_10;
  }

  v14 = DispatchTime.uptimeNanoseconds.getter();
  v15 = DispatchTime.uptimeNanoseconds.getter();
  v16 = *(v3 + 8);
  v16(v5, v2);
  v17 = v14 - v15;
  if (v14 >= v15)
  {
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1000E7B34(uint64_t a1)
{
  v2 = v1;
  result = *(a1 + 32);
  if (result)
  {
    v6 = *a1;
    v5 = *(a1 + 8);
    if ((*(v1 + 136) & 1) == 0 && (v6 == *(v1 + 120) ? (v7 = v5 == *(v1 + 128)) : (v7 = 0), v7))
    {
      v20 = *(a1 + 16);
      *(v1 + 80) = v6;
      *(v1 + 88) = v5;
      *(v1 + 96) = v20;
      *(v1 + 112) = result;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRelease();
    }

    else
    {
      v8 = qword_100353AD8;
      swift_unknownObjectRetain();
      if (v8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_10000F53C(v9, qword_100381ED8);
      sub_1000E82B8(a1, &v22);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.default.getter();
      sub_100008FA0(a1, &qword_10035DA90);

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v12 = 136315394;
        *&v22 = v6;
        *(&v22 + 1) = v5;
        v13 = String.init<A>(describing:)();
        v15 = sub_10017C9E8(v13, v14, &v21);

        *(v12 + 4) = v15;
        *(v12 + 12) = 2080;
        v16 = *(v2 + 136);
        v22 = *(v2 + 120);
        v23 = v16;
        sub_1000040A8(&qword_10035DA98);
        v17 = String.init<A>(describing:)();
        v19 = sub_10017C9E8(v17, v18, &v21);

        *(v12 + 14) = v19;
        _os_log_impl(&_mh_execute_header, v10, v11, "Ignoring satellite texture created for %s, expecting one for %s", v12, 0x16u);
        swift_arrayDestroy();
      }

      result = sub_100008FA0(a1, &qword_10035DA90);
    }
  }

  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 136) = 1;
  return result;
}

void sub_1000E7DA0(void *a1, void *a2, CGFloat a3, CGFloat a4, long double a5, double a6)
{
  v12 = [a1 CGContext];
  CGContextSetBlendMode(v12, kCGBlendModePlusLighter);

  [a2 size];
  v14 = v13;
  [a2 size];
  v16 = v15;
  [a2 size];
  v18 = v17;
  v20 = v19;
  v21 = [a1 CGContext];
  CGContextTranslateCTM(v21, -a3, -a4);

  v22 = [a1 CGContext];
  CGContextTranslateCTM(v22, a3 * 0.5, a4 * 0.5);

  v23 = [a1 CGContext];
  CGContextRotateCTM(v23, 0.785398163);

  v24 = log2(a5) + -1.0;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v25 = v24;
  GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
  if (v25 < 0)
  {
LABEL_14:
    __break(1u);
    return;
  }

  offset = a4;
  v42 = v18;
  color = GenericRGB;
  if (v25)
  {
    v27 = v20;
    v28 = a3;
    v29 = v14 * -0.5;
    v30 = v16 * -0.5;
    v31 = exp2((v25 - 1));
    v32 = a6;
    v33 = v31;
    v34 = 0;
    v35 = 1.0 / v25 * v32;
    do
    {
      v36 = v34 + 1;
      v37 = exp2(v34) / v33 * a5;
      v38 = [a1 CGContext];
      CGContextSetBlendMode(v38, kCGBlendModePlusLighter);

      v39 = [a1 CGContext];
      v45.width = v28;
      v45.height = offset;
      CGContextSetShadowWithColor(v39, v45, v37, color);

      v40 = [a1 CGContext];
      CGContextSetAlpha(v40, v35);

      [a2 drawInRect:27 blendMode:v29 alpha:{v30, v42, v27, v35}];
      v34 = v36;
    }

    while (v25 != v36);
  }
}

uint64_t ConnectionAssistantSatelliteRenderer.deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t ConnectionAssistantSatelliteRenderer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_1000E81A4()
{
  result = qword_10035D968;
  if (!qword_10035D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035D968);
  }

  return result;
}

uint64_t sub_1000E8218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000E8260(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t sub_1000E82B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035DA90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E8328()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000E8360()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000E83A0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1000490DC;

  return sub_1000E6E1C(v7, v8, a1, v4, v5, v6);
}

uint64_t sub_1000E8478(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7)
{
  *(v7 + 200) = a2;
  *(v7 + 184) = a6;
  *(v7 + 192) = a7;
  *(v7 + 168) = a4;
  *(v7 + 176) = a5;
  *(v7 + 160) = a3;
  *(v7 + 152) = a1;
  return (_swift_task_switch)(sub_1000E84A8, 0, 0);
}

uint64_t sub_1000E84A8()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 160);
  v3 = [objc_allocWithZone(UIGraphicsImageRendererFormat) init];
  *(v0 + 208) = v3;
  [v3 setScale:v2];
  [v3 setOpaque:1];
  v4 = [objc_opt_self() configurationWithPointSize:v1];
  *(v0 + 216) = v4;
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() _systemImageNamed:v5];

  if (!v6 || (v7 = [v6 imageWithSymbolConfiguration:v4], *(v0 + 224) = v7, v6, !v7))
  {
    sub_1000E8E34();
    swift_allocError();
    *v32 = 1;
    swift_willThrow();

    goto LABEL_10;
  }

  v38 = v4;
  v9 = *(v0 + 184);
  v8 = *(v0 + 192);
  [v7 size];
  v11 = v10;
  [v7 size];
  v13 = v9 + v9 + ceil(hypot(v11, v12));
  v14 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v3 format:{v13, v13}];
  *(v0 + 232) = v14;
  v15 = swift_allocObject();
  *(v0 + 240) = v15;
  *(v15 + 16) = v13;
  *(v15 + 24) = v13;
  *(v15 + 32) = v7;
  *(v15 + 40) = v9;
  *(v15 + 48) = v8;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000E8EC0;
  *(v16 + 24) = v15;
  *(v0 + 112) = sub_1000E8EE0;
  *(v0 + 120) = v16;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10008B6F4;
  *(v0 + 104) = &unk_10032F710;
  v17 = _Block_copy((v0 + 80));
  v18 = v7;

  v19 = [v14 imageWithActions:v17];
  *(v0 + 248) = v19;
  _Block_release(v17);
  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
    goto LABEL_15;
  }

  v37 = v18;
  v21 = v13 * (*(v0 + 168) / *(v0 + 176));
  v22 = [objc_allocWithZone(UIGraphicsImageRenderer) initWithSize:v3 format:{v21, v21}];
  *(v0 + 256) = v22;
  v23 = swift_allocObject();
  *(v0 + 264) = v23;
  *(v23 + 16) = v19;
  *(v23 + 24) = v21;
  *(v23 + 32) = v21;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000E8F38;
  *(v24 + 24) = v23;
  *(v0 + 112) = sub_1000E8F78;
  *(v0 + 120) = v24;
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_10008B6F4;
  *(v0 + 104) = &unk_10032F788;
  v25 = _Block_copy((v0 + 80));
  v36 = v19;

  v26 = [v22 imageWithActions:v25];
  *(v0 + 272) = v26;
  _Block_release(v25);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_15:
    __break(1u);
    return _swift_continuation_await(v20);
  }

  v28 = [v26 CGImage];
  *(v0 + 280) = v28;
  if (v28)
  {
    v29 = v28;
    v30 = [objc_allocWithZone(MTKTextureLoader) initWithDevice:{*(v0 + 200), v36, v37}];
    *(v0 + 288) = v30;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 144;
    *(v0 + 24) = sub_1000E8AF8;
    v31 = swift_continuation_init();
    *(v0 + 136) = sub_1000040A8(&qword_100357488);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1000477F0;
    *(v0 + 104) = &unk_10032F7B0;
    *(v0 + 112) = v31;
    [v30 newTextureWithCGImage:v29 options:0 completionHandler:v0 + 80];
    v20 = v0 + 16;

    return _swift_continuation_await(v20);
  }

  sub_1000E8E34();
  swift_allocError();
  *v35 = 2;
  swift_willThrow();

LABEL_10:
  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1000E8AF8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_1000E8D2C;
  }

  else
  {
    v2 = sub_1000E8C08;
  }

  return (_swift_task_switch)(v2, 0, 0);
}

uint64_t sub_1000E8C08()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  v4 = *(v0 + 224);
  v14 = *(v0 + 256);
  v15 = *(v0 + 232);
  v5 = *(v0 + 208);
  v16 = *(v0 + 216);
  v7 = *(v0 + 160);
  v6 = *(v0 + 168);
  v8 = *(v0 + 144);
  v9 = *(v0 + 152);

  v10 = [v8 width];
  v11 = [v8 height];

  *v9 = v7;
  v9[1] = v6;
  v9[2] = v10;
  v9[3] = v11;
  v9[4] = v8;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1000E8D2C()
{
  v2 = v0[34];
  v1 = v0[35];
  v3 = v0[32];
  v11 = v0[36];
  v4 = v0[31];
  v5 = v0[28];
  v6 = v0[29];
  v7 = v0[26];
  v8 = v0[27];
  swift_willThrow();

  v9 = v0[1];

  return v9();
}

unint64_t sub_1000E8E34()
{
  result = qword_10035DAA0;
  if (!qword_10035DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035DAA0);
  }

  return result;
}

uint64_t sub_1000E8E88()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000E8EE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000E8F00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000E8F7C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000E8FF8(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v15.origin.x = 0.0;
  v15.origin.y = 0.0;
  v15.size.width = 0.0;
  v15.size.height = 0.0;
  if (CGRectEqualToRect(*&a2, v15))
  {
    return 0x6F72657A2ELL;
  }

  _StringGuts.grow(_:)(23);

  v11._countAndFlagsBits = sub_1000E46EC(a1, a2, a3);
  String.append(_:)(v11);

  v12._countAndFlagsBits = 0x203A657A6973202CLL;
  v12._object = 0xE800000000000000;
  String.append(_:)(v12);
  v13._countAndFlagsBits = sub_1000E46EC(a1, a4, a5);
  String.append(_:)(v13);

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  return 0x6E696769726F287ELL;
}

uint64_t sub_1000E9150@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for UIMetrics();
  sub_1000E9CC0(&qword_100354D40, type metadata accessor for UIMetrics);
  v15 = EnvironmentObject.init()();
  v3 = v2;
  type metadata accessor for CGSize(0);
  State.init(wrappedValue:)();
  v4 = [objc_opt_self() mainBundle];
  v19._object = 0x800000010029C850;
  v5._countAndFlagsBits = 0x794D20646E6946;
  v5._object = 0xE700000000000000;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v19._countAndFlagsBits = 0xD000000000000021;
  v7 = NSLocalizedString(_:tableName:bundle:value:comment:)(v5, 0, v4, v6, v19);

  v8 = (a1 + *(sub_1000040A8(&qword_10035DBA8) + 36));
  v9 = v8 + *(sub_1000040A8(&qword_10035B5A8) + 36);
  v10 = sub_1000040A8(&qword_10035B5B8);
  v11 = *(v10 + 36);
  v12 = type metadata accessor for ToolbarItemPlacement();
  result = (*(*(v12 - 8) + 56))(&v9[v11], 1, 1, v12);
  *v9 = 1;
  v14 = &v9[*(v10 + 40)];
  *v14 = sub_1000E98CC;
  v14[1] = 0;
  *v8 = v7;
  *a1 = v15;
  a1[1] = v3;
  a1[2] = sub_1000E9384;
  a1[3] = 0;
  a1[4] = sub_1000E9814;
  a1[5] = 0;
  a1[6] = v16;
  a1[7] = v17;
  a1[8] = v18;
  return result;
}

double sub_1000E9384@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  v25 = 0;
  sub_1000E94E4(&v12);
  v34 = v20;
  v35 = v21;
  v36 = v22;
  v37 = v23;
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v29 = v15;
  v38[8] = v20;
  v38[9] = v21;
  v38[10] = v22;
  v38[11] = v23;
  v38[4] = v16;
  v38[5] = v17;
  v38[6] = v18;
  v38[7] = v19;
  v38[0] = v12;
  v38[1] = v13;
  v38[2] = v14;
  v38[3] = v15;
  sub_1000E9BE8(&v26, &v11);
  sub_1000E9C58(v38);
  *&v24[135] = v34;
  *&v24[151] = v35;
  *&v24[167] = v36;
  *&v24[183] = v37;
  *&v24[71] = v30;
  *&v24[87] = v31;
  *&v24[103] = v32;
  *&v24[119] = v33;
  *&v24[7] = v26;
  *&v24[23] = v27;
  *&v24[39] = v28;
  *&v24[55] = v29;
  v3 = *&v24[128];
  *(a1 + 161) = *&v24[144];
  v4 = *&v24[176];
  *(a1 + 177) = *&v24[160];
  *(a1 + 193) = v4;
  v5 = *&v24[64];
  *(a1 + 97) = *&v24[80];
  v6 = *&v24[112];
  *(a1 + 113) = *&v24[96];
  *(a1 + 129) = v6;
  *(a1 + 145) = v3;
  v7 = *v24;
  *(a1 + 33) = *&v24[16];
  result = *&v24[32];
  v9 = *&v24[48];
  *(a1 + 49) = *&v24[32];
  *(a1 + 65) = v9;
  *(a1 + 81) = v5;
  v10 = v25;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = v10;
  *(a1 + 208) = *&v24[191];
  *(a1 + 17) = v7;
  return result;
}

uint64_t sub_1000E94E4@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ConnectionClosedModel(0);
  sub_1000E9CC0(&qword_10035B1A8, type metadata accessor for ConnectionClosedModel);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for ConnectivityModel();
  sub_1000E9CC0(&qword_100354F78, type metadata accessor for ConnectivityModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  type metadata accessor for GuidanceModel(0);
  sub_1000E9CC0(&qword_100354F80, type metadata accessor for GuidanceModel);
  v8 = EnvironmentObject.init()();
  v38 = v9;
  v39 = v8;
  type metadata accessor for OrientationModel();
  sub_1000E9CC0(&qword_10035B1B0, type metadata accessor for OrientationModel);
  v10 = EnvironmentObject.init()();
  v36 = v11;
  v37 = v10;
  type metadata accessor for StewieModel(0);
  sub_1000E9CC0(&qword_1003561B8, type metadata accessor for StewieModel);
  v35 = EnvironmentObject.init()();
  v42 = v12;
  type metadata accessor for UIMetrics();
  sub_1000E9CC0(&qword_100354D40, type metadata accessor for UIMetrics);
  v13 = EnvironmentObject.init()();
  v40 = v14;
  v41 = v13;
  v15 = EnvironmentObject.init()();
  v33 = v16;
  v34 = v15;
  v17 = EnvironmentObject.init()();
  v31 = v18;
  v32 = v17;
  type metadata accessor for GuidanceMessagesModel();
  sub_1000E9CC0(&qword_100357820, type metadata accessor for GuidanceMessagesModel);
  v19 = EnvironmentObject.init()();
  v29 = v20;
  v30 = v19;
  v21 = EnvironmentObject.init()();
  *&v43 = v2;
  *(&v43 + 1) = v4;
  *&v44 = v5;
  *(&v44 + 1) = v7;
  *&v45 = v39;
  *(&v45 + 1) = v38;
  *&v46 = v37;
  *(&v46 + 1) = v36;
  *&v47 = v35;
  *(&v47 + 1) = v42;
  *&v48 = v41;
  *(&v48 + 1) = v40;
  LOBYTE(v49) = 0;
  *(&v49 + 1) = 0;
  v22 = v44;
  *a1 = v43;
  *(a1 + 16) = v22;
  v23 = v45;
  v24 = v46;
  v25 = v49;
  v26 = v47;
  *(a1 + 80) = v48;
  *(a1 + 96) = v25;
  *(a1 + 48) = v24;
  *(a1 + 64) = v26;
  *(a1 + 32) = v23;
  *(a1 + 112) = v34;
  *(a1 + 120) = v33;
  *(a1 + 128) = v32;
  *(a1 + 136) = v31;
  *(a1 + 144) = 32;
  *(a1 + 152) = 0xE100000000000000;
  *(a1 + 160) = v30;
  *(a1 + 168) = v29;
  *(a1 + 176) = v21;
  *(a1 + 184) = v27;
  sub_1000E091C(&v43, v50);
  v50[0] = v2;
  v50[1] = v4;
  v50[2] = v5;
  v50[3] = v7;
  v50[4] = v39;
  v50[5] = v38;
  v50[6] = v37;
  v50[7] = v36;
  v50[8] = v35;
  v50[9] = v42;
  v50[10] = v41;
  v50[11] = v40;
  v51 = 0;
  v52 = 0;
  return sub_1000E0978(v50);
}

double sub_1000E9814@<D0>(uint64_t a1@<X8>)
{
  v2 = static HorizontalAlignment.center.getter();
  type metadata accessor for AppEvents();
  sub_1000E9CC0(&qword_100354D48, type metadata accessor for AppEvents);
  v3 = EnvironmentObject.init()();
  v5 = v4;
  v6 = static Edge.Set.top.getter();
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_1000E98CC@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AppEvents();
  sub_1000E9CC0(&qword_100354D48, type metadata accessor for AppEvents);
  v2 = EnvironmentObject.init()();
  v4 = v3;
  type metadata accessor for StewieModel(0);
  sub_1000E9CC0(&qword_1003561B8, type metadata accessor for StewieModel);
  v5 = EnvironmentObject.init()();
  v7 = v6;
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  return result;
}

uint64_t sub_1000E99DC()
{
  if (*v0)
  {
    sub_1000089B0(*v0 + 48, v4);
    v1 = v5;
    v2 = v6;
    sub_1000088DC(v4, v5);
    (*(v2 + 32))(v7, v1, v2);
    sub_100008964(v4);
    sub_1000040A8(&qword_10035DBA8);
    sub_1000E9B04();
    NavigationStack.init<>(root:)();
    return sub_100008964(v7);
  }

  else
  {
    type metadata accessor for UIMetrics();
    sub_1000E9CC0(&qword_100354D40, type metadata accessor for UIMetrics);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000E9B04()
{
  result = qword_10035DBB0;
  if (!qword_10035DBB0)
  {
    sub_100008CF0(&qword_10035DBA8);
    sub_100009274(&qword_10035DBB8, &qword_10035DBC0);
    sub_100009274(&qword_10035B5A0, &qword_10035B5A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035DBB0);
  }

  return result;
}

uint64_t sub_1000E9BE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_10035DBC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000E9C58(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035DBC8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E9CC0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000E9D7C()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x8000000100297060;
  v1.value._countAndFlagsBits = 0x5072656972726143;
  v1.value._object = 0xED00006E6F656769;
  v2._object = 0x8000000100297040;
  v5._countAndFlagsBits = 0xD00000000000004ELL;
  v2._countAndFlagsBits = 0xD000000000000019;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  sub_100031770();
  return Text.init<A>(_:)();
}

uint64_t sub_1000E9E80@<X0>(uint64_t a1@<X8>)
{
  v2 = *(sub_1000EA1BC() + 16);

  if (v2 < 2)
  {
    v4 = 1;
  }

  else
  {
    result = sub_1000EA1BC();
    if (*(result + 16) < 2uLL)
    {
      __break(1u);
      return result;
    }

    static WelcomeAction.tertiary(title:)();

    v4 = 0;
  }

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, v4, 1, v5);
}

uint64_t sub_1000E9F58@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v9._object = 0x800000010029CA60;
  v3._object = 0x800000010029CA40;
  v9._countAndFlagsBits = 0xD00000000000003CLL;
  v3._countAndFlagsBits = 0xD000000000000019;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v9);

  v5 = type metadata accessor for WelcomeAction();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 1, 1, v5);
}

unint64_t sub_1000EA090()
{
  result = qword_10035DBE0;
  if (!qword_10035DBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035DBE0);
  }

  return result;
}

unint64_t sub_1000EA140(uint64_t a1)
{
  result = sub_1000EA168();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000EA168()
{
  result = qword_10035DBE8;
  if (!qword_10035DBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035DBE8);
  }

  return result;
}

uint64_t sub_1000EA1BC()
{
  sub_1000040A8(&qword_10035DBF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100279170;
  v1 = objc_opt_self();
  v2 = [v1 mainBundle];
  v11._object = 0x800000010029C8A0;
  v3._countAndFlagsBits = 0xD00000000000001BLL;
  v3._object = 0x800000010029C880;
  v11._countAndFlagsBits = 0xD00000000000003ALL;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v5 = NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v11);

  *(v0 + 32) = v5;
  *(v0 + 48) = 512;
  v6 = [v1 mainBundle];
  v12._object = 0x800000010029C900;
  v7._object = 0x800000010029C8E0;
  v12._countAndFlagsBits = 0xD000000000000042;
  v7._countAndFlagsBits = 0xD000000000000012;
  v8._countAndFlagsBits = 0;
  v8._object = 0xE000000000000000;
  v9 = NSLocalizedString(_:tableName:bundle:value:comment:)(v7, 0, v6, v8, v12);

  *(v0 + 56) = v9;
  *(v0 + 72) = 2;
  return v0;
}

uint64_t sub_1000EA338()
{
  v0 = [objc_opt_self() mainBundle];
  v5._object = 0x800000010029CA00;
  v1.value._countAndFlagsBits = 0x5072656972726143;
  v1.value._object = 0xED00006E6F656769;
  v2._object = 0x800000010029C950;
  v2._countAndFlagsBits = 0x10000000000000A2;
  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  v5._countAndFlagsBits = 0xD000000000000035;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v2, v1, v0, v3, v5);

  sub_100031770();
  return Text.init<A>(_:)();
}

uint64_t sub_1000EA444@<X0>(uint64_t a1@<X8>)
{
  v12 = a1;
  v11 = sub_1000040A8(&qword_10035DBF8);
  v13 = *(v11 - 8);
  __chkstk_darwin(v11);
  v3 = &v10 - v2;
  v4 = swift_allocObject();
  v5 = v1[1];
  v4[1] = *v1;
  v4[2] = v5;
  v6 = v1[3];
  v4[3] = v1[2];
  v4[4] = v6;
  sub_1000EAF6C(v1, &v18);
  sub_1000040A8(&qword_10035DC00);
  sub_1000EAFA4();
  Button.init(action:label:)();
  v16 = sub_1000EA7F0();
  v17 = v7;
  v15 = v1[3];
  sub_1000040A8(&qword_100354AA8);
  State.projectedValue.getter();
  v14 = v1;
  sub_1000040A8(&qword_10035DC10);
  sub_100009274(&qword_10035DC18, &qword_10035DBF8);
  sub_100031770();
  sub_100009274(&qword_10035DC20, &qword_10035DC10);
  v8 = v11;
  View.confirmationDialog<A, B>(_:isPresented:titleVisibility:actions:)();

  return (*(v13 + 8))(v3, v8);
}

uint64_t sub_1000EA6F4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() mainBundle];
  v14._object = 0x8000000100298930;
  v3._countAndFlagsBits = 6581829;
  v3._object = 0xE300000000000000;
  v4._countAndFlagsBits = 0;
  v4._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0xD000000000000082;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v3, 0, v2, v4, v14);

  sub_100031770();
  v5 = Text.init<A>(_:)();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = static Color.primary.getter();
  result = swift_getKeyPath();
  *a1 = v5;
  *(a1 + 8) = v7;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v11;
  *(a1 + 32) = result;
  *(a1 + 40) = v12;
  return result;
}

uint64_t sub_1000EA7F0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 56);
    v3 = v2 >> 9 < 0x7F;
    v4 = (v2 & 0xFFFFC0FF) == 0x4000;
    v5 = [objc_opt_self() mainBundle];
    v6 = "nfirmation button title";
    if (v3 && v4)
    {
      v6 = "mo mode alert title";
      v7 = "nd the Emergency SOS demo?";
    }

    else
    {
      v7 = " Connection demo?";
    }

    if (v3 && v4)
    {
      v8 = 0xD00000000000002ALL;
    }

    else
    {
      v8 = 0xD000000000000031;
    }

    v13._object = (v7 | 0x8000000000000000);
    v9 = v6 | 0x8000000000000000;
    v10._countAndFlagsBits = 0;
    v10._object = 0xE000000000000000;
    v13._countAndFlagsBits = 0xD000000000000023;
    countAndFlagsBits = NSLocalizedString(_:tableName:bundle:value:comment:)(*&v8, 0, v5, v10, v13)._countAndFlagsBits;

    return countAndFlagsBits;
  }

  else
  {
    type metadata accessor for TryOutModel();
    sub_1000EB0BC(&qword_100357990, type metadata accessor for TryOutModel);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EA950@<X0>(_OWORD *a1@<X0>, char *a2@<X8>)
{
  v44 = a2;
  v3 = sub_1000040A8(&qword_100357560);
  __chkstk_darwin(v3 - 8);
  v5 = &v39 - v4;
  v6 = sub_1000040A8(&qword_100357568);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v43 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v42 = &v39 - v10;
  __chkstk_darwin(v11);
  v41 = &v39 - v12;
  __chkstk_darwin(v13);
  v40 = &v39 - v14;
  v15 = objc_opt_self();
  v16 = [v15 mainBundle];
  v46._object = 0x800000010029CAA0;
  v17._countAndFlagsBits = 0x656D75736552;
  v17._object = 0xE600000000000000;
  v18._countAndFlagsBits = 0;
  v18._object = 0xE000000000000000;
  v46._countAndFlagsBits = 0xD00000000000002CLL;
  v19 = NSLocalizedString(_:tableName:bundle:value:comment:)(v17, 0, v16, v18, v46);

  v45[0] = v19;
  static ButtonRole.cancel.getter();
  v20 = type metadata accessor for ButtonRole();
  v21 = *(*(v20 - 8) + 56);
  v21(v5, 0, 1, v20);
  v39 = sub_100031770();
  Button<>.init<A>(_:role:action:)();
  v22 = [v15 mainBundle];
  v47._object = 0x800000010029CAD0;
  v23._countAndFlagsBits = 0x6F6D654420646E45;
  v47._countAndFlagsBits = 0xD000000000000037;
  v23._object = 0xE800000000000000;
  v24._countAndFlagsBits = 0;
  v24._object = 0xE000000000000000;
  v25 = NSLocalizedString(_:tableName:bundle:value:comment:)(v23, 0, v22, v24, v47);

  v45[4] = v25;
  static ButtonRole.destructive.getter();
  v21(v5, 0, 1, v20);
  v26 = swift_allocObject();
  v27 = a1[1];
  v26[1] = *a1;
  v26[2] = v27;
  v28 = a1[3];
  v26[3] = a1[2];
  v26[4] = v28;
  sub_1000EAF6C(a1, v45);
  v29 = v41;
  Button<>.init<A>(_:role:action:)();
  v30 = *(v7 + 16);
  v31 = v42;
  v32 = v40;
  v30(v42, v40, v6);
  v33 = v43;
  v34 = v29;
  v30(v43, v29, v6);
  v35 = v44;
  v30(v44, v31, v6);
  v36 = sub_1000040A8(&qword_10035DC28);
  v30(&v35[*(v36 + 48)], v33, v6);
  v37 = *(v7 + 8);
  v37(v34, v6);
  v37(v32, v6);
  v37(v33, v6);
  return (v37)(v31, v6);
}

uint64_t sub_1000EADD8(void *a1)
{
  if (*a1)
  {

    sub_1000040A8(&unk_100365610);
    sub_100009274(&qword_10035CF00, &unk_100365610);
    Subject<>.send()();
  }

  else
  {
    type metadata accessor for AppEvents();
    sub_1000EB0BC(&qword_100354D48, type metadata accessor for AppEvents);
    result = EnvironmentObject.error()();
    __break(1u);
  }

  return result;
}

unint64_t sub_1000EAFA4()
{
  result = qword_10035DC08;
  if (!qword_10035DC08)
  {
    sub_100008CF0(&qword_10035DC00);
    sub_100009274(&qword_100355068, &qword_100355070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035DC08);
  }

  return result;
}

uint64_t sub_1000EB064()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000EB0BC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000EB10C()
{
  sub_100008CF0(&qword_10035DBF8);
  sub_100008CF0(&qword_10035DC10);
  sub_100009274(&qword_10035DC18, &qword_10035DBF8);
  sub_100031770();
  sub_100009274(&qword_10035DC20, &qword_10035DC10);
  return swift_getOpaqueTypeConformance2();
}

id sub_1000EB214()
{
  isEscapingClosureAtFileLocation = v0;
  v2 = *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_exclusionPath);
  if (v2)
  {
    sub_1000089B0(*(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_uiMetrics) + 48, &aBlock);
    d = aBlock.d;
    tx = aBlock.tx;
    sub_1000088DC(&aBlock, *&aBlock.d);
    v5 = *(*&tx + 48);
    v88 = v2;
    v5(v89, *&d, *&tx);
    sub_100008964(v89);
    sub_100008964(&aBlock);
    v6 = *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel);
    v7 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleBody];
    v87 = objc_opt_self();
    v8 = [v87 preferredFontForTextStyle:UIFontTextStyleBody];
    v9 = [v7 scaledFontForFont:v8 maximumPointSize:22.0];

    sub_1000040A8(&qword_10035DC30);
    inited = swift_initStackObject();
    v86 = xmmword_100279160;
    *(inited + 16) = xmmword_100279160;
    *(inited + 32) = UIFontWeightTrait;
    *(inited + 40) = UIFontWeightMedium;
    v85 = UIFontWeightTrait;
    v11 = sub_1002562B8(inited);
    swift_setDeallocating();
    sub_1000EC2E8(inited + 32);
    v12 = sub_1001C8988(v11);

    [v6 setFont:v12];

    [v6 setTextAlignment:4];
    ty = COERCE_DOUBLE(&ConnectionAssistantRenderer.RenderPipelines.ivar_base_size);
    v14 = [v6 textContainer];
    v15 = &selRef_setShouldIgnoreDoNotDisturb_;
    v16 = [v14 exclusionPaths];

    sub_10004AD90();
    v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (!(v17 >> 62))
    {
      v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v61 = *(v0 + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel);
    v62 = objc_opt_self();
    v63 = [v62 preferredFontForTextStyle:UIFontTextStyleHeadline];
    [v61 setFont:v63];

    v6 = &selRef_setShouldIgnoreDoNotDisturb_;
    [v61 setTextAlignment:1];
    v64 = [v61 textContainer];
    sub_10004AD90();
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v64 setExclusionPaths:isa];

    v66 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel);
    v67 = [v62 preferredFontForTextStyle:UIFontTextStyleFootnote];
    [v66 setFont:v67];

    [v66 setTextAlignment:1];
    v15 = objc_opt_self();
    v68 = swift_allocObject();
    *(v68 + 16) = isEscapingClosureAtFileLocation;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_1000EC2B0;
    *(v69 + 24) = v68;
    *&aBlock.tx = sub_1000EC2C8;
    *&aBlock.ty = v69;
    *&aBlock.a = _NSConcreteStackBlock;
    *&aBlock.b = 1107296256;
    *&aBlock.c = sub_100193668;
    *&aBlock.d = &unk_10032F9C0;
    v70 = _Block_copy(&aBlock);
    ty = aBlock.ty;
    v71 = isEscapingClosureAtFileLocation;

    [(SEL *)v15 performWithoutAnimation:v70];
    _Block_release(v70);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
LABEL_4:

  if (!v18)
  {
    [v88 copy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (swift_dynamicCast())
    {
      v19 = v89[0];
      CGAffineTransformMakeTranslation(&aBlock, -28.0, -24.0);
      [*&v19 applyTransform:&aBlock];
      v20 = [v6 *(*&ty + 3336)];
      sub_1000040A8(&qword_1003681A0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_100281610;
      *(v21 + 32) = v19;
      v22 = *&v19;
      v23 = Array._bridgeToObjectiveC()().super.isa;

      [v20 setExclusionPaths:v23];
    }
  }

  result = [isEscapingClosureAtFileLocation view];
  if (!result)
  {
    goto LABEL_26;
  }

  v25 = result;
  [result bounds];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;

  v91.origin.x = v27;
  v91.origin.y = v29;
  v91.size.width = v31;
  v91.size.height = v33;
  v89[0] = CGRectGetWidth(v91) + -28.0 + -28.0;
  v34 = [v6 *(*&ty + 3336)];
  v35 = [v34 v15[91]];

  v36 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  if (v36 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_10;
    }

LABEL_20:

    goto LABEL_21;
  }

  result = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_20;
  }

LABEL_10:
  if ((v36 & 0xC000000000000001) != 0)
  {
    goto LABEL_24;
  }

  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(v36 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v38 = i;

      result = [isEscapingClosureAtFileLocation view];
      if (!result)
      {
        break;
      }

      v39 = result;
      [result bounds];
      v41 = v40;
      v43 = v42;
      v45 = v44;
      v47 = v46;

      v92.origin.x = v41;
      v92.origin.y = v43;
      v92.size.width = v45;
      v92.size.height = v47;
      Width = CGRectGetWidth(v92);
      result = [isEscapingClosureAtFileLocation view];
      if (!result)
      {
        goto LABEL_28;
      }

      v49 = result;
      v50 = Width + -28.0;
      [result bounds];
      v52 = v51;
      v54 = v53;
      v56 = v55;
      v58 = v57;

      v93.origin.x = v52;
      v93.origin.y = v54;
      v93.size.width = v56;
      v93.size.height = v58;
      v59 = CGRectGetWidth(v93);
      [v38 bounds];
      MaxX = CGRectGetMaxX(v94);

      v89[0] = v50 + MaxX - v59;
LABEL_21:
      v72 = *(isEscapingClosureAtFileLocation + OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel);
      v73 = [objc_allocWithZone(UIFontMetrics) initForTextStyle:UIFontTextStyleFootnote];
      v74 = [v87 preferredFontForTextStyle:UIFontTextStyleFootnote];
      v75 = [v73 scaledFontForFont:v74 maximumPointSize:20.0];

      v76 = swift_initStackObject();
      *(v76 + 16) = v86;
      *(v76 + 32) = v85;
      v77 = v76 + 32;
      *(v76 + 40) = UIFontWeightRegular;
      v78 = sub_1002562B8(v76);
      swift_setDeallocating();
      sub_1000EC2E8(v77);
      v79 = sub_1001C8988(v78);

      [v72 setFont:v79];

      [v72 setTextAlignment:4];
      v80 = objc_opt_self();
      v81 = swift_allocObject();
      *(v81 + 16) = isEscapingClosureAtFileLocation;
      *(v81 + 24) = v89;
      *(v81 + 32) = xmmword_100283DB0;
      *(v81 + 48) = xmmword_100283DB0;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_1000EC388;
      *(v82 + 24) = v81;
      *&aBlock.tx = sub_1000EC3A0;
      *&aBlock.ty = v82;
      *&aBlock.a = _NSConcreteStackBlock;
      *&aBlock.b = 1107296256;
      *&aBlock.c = sub_100193668;
      *&aBlock.d = &unk_10032FA38;
      v83 = _Block_copy(&aBlock);
      v84 = isEscapingClosureAtFileLocation;

      [v80 performWithoutAnimation:v83];

      _Block_release(v83);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return result;
      }

      __break(1u);
LABEL_24:
      ;
    }

    goto LABEL_27;
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

id sub_1000EBC7C(char *a1, double *a2, double a3, double a4)
{
  v8 = *&a1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
  v9 = *a2;
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v11 = result;
  [result bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v36.origin.x = v13;
  v36.origin.y = v15;
  v36.size.width = v17;
  v36.size.height = v19;
  [v8 sizeThatFits:{v9, CGRectGetHeight(v36)}];
  [v8 bounds];
  [v8 setBounds:?];
  [v8 bounds];
  v20 = CGRectGetMidX(v37) + a4;
  [v8 bounds];
  [v8 setCenter:{v20, CGRectGetMidY(v38) + a3}];
  v21 = *&a1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
  v22 = *a2;
  result = [a1 view];
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v23 = result;
  [result bounds];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v39.origin.x = v25;
  v39.origin.y = v27;
  v39.size.width = v29;
  v39.size.height = v31;
  [v21 sizeThatFits:{v22, CGRectGetHeight(v39)}];
  [v21 bounds];
  [v21 setBounds:?];
  [v21 bounds];
  v32 = CGRectGetMidX(v40) + a4;
  [v8 bounds];
  v33 = CGRectGetHeight(v41) + a3 + 3.0;
  [v21 bounds];
  v34 = v33 + CGRectGetMidY(v42);

  return [v21 setCenter:{v32, v34}];
}

id sub_1000EBED0(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceTitleLabel];
  result = [a1 view];
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v4 = result;
  [result bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v69.origin.x = v6;
  v69.origin.y = v8;
  v69.size.width = v10;
  v69.size.height = v12;
  Width = CGRectGetWidth(v69);
  result = [a1 view];
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v14 = result;
  [result bounds];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v70.origin.x = v16;
  v70.origin.y = v18;
  v70.size.width = v20;
  v70.size.height = v22;
  [v2 sizeThatFits:{Width + -32.0 + -32.0, CGRectGetHeight(v70)}];
  [v2 bounds];
  [v2 setBounds:?];
  v23 = *&a1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_guidanceSubtitleLabel];
  result = [a1 view];
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = result;
  [result bounds];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;

  v71.origin.x = v26;
  v71.origin.y = v28;
  v71.size.width = v30;
  v71.size.height = v32;
  v33 = CGRectGetWidth(v71);
  result = [a1 view];
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v34 = result;
  [result bounds];
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;

  v72.origin.x = v36;
  v72.origin.y = v38;
  v72.size.width = v40;
  v72.size.height = v42;
  [v23 sizeThatFits:{v33 + -32.0 + -32.0, CGRectGetHeight(v72)}];
  [v23 bounds];
  [v23 setBounds:?];
  result = [a1 view];
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v43 = result;
  [result bounds];
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v51 = v50;

  v73.origin.x = v45;
  v73.origin.y = v47;
  v73.size.width = v49;
  v73.size.height = v51;
  MidX = CGRectGetMidX(v73);
  v53 = &a1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation];
  v54 = *&a1[OBJC_IVAR____TtC8SOSBuddy43ConnectionAssistantConnectionViewController_centerLocation + 8] + 64.0;
  [v2 bounds];
  [v2 setCenter:{MidX, v54 + CGRectGetMidY(v74)}];
  result = [a1 view];
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v55 = result;
  [result bounds];
  v57 = v56;
  v59 = v58;
  v61 = v60;
  v63 = v62;

  v75.origin.x = v57;
  v75.origin.y = v59;
  v75.size.width = v61;
  v75.size.height = v63;
  v64 = CGRectGetMidX(v75);
  v65 = v53[1] + 64.0;
  [v2 bounds];
  v66 = v65 + CGRectGetHeight(v76) + 6.0;
  [v23 bounds];
  v67 = v66 + CGRectGetMidY(v77);

  return [v23 setCenter:{v64, v67}];
}

uint64_t sub_1000EC278()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000EC2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000EC2E8(uint64_t a1)
{
  v2 = sub_1000040A8(&qword_10035DC38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EC350()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000EC3A8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10017B444(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EC494(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10017B548(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 32 * v7 + 32), (v6 + 32), 32 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EC580(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_10017B338(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EC674(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_10017B8A0(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1000EC760(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1000F4818(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000F6898(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1000EC850(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_10017BD5C(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_1000040A8(&qword_100356188);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1000EC988(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1000040A8(&qword_100356188);
  v6 = *(v19 - 8);
  __chkstk_darwin(v19);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_1001872D4(0, v9, 0);
    v10 = v20;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v13 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v17 = *(v11 + 56);
    v18 = v12;
    do
    {
      v18(v5, v13, v2);
      swift_dynamicCast();
      v20 = v10;
      v15 = v10[2];
      v14 = v10[3];
      if (v15 >= v14 >> 1)
      {
        sub_1001872D4(v14 > 1, v15 + 1, 1);
        v10 = v20;
      }

      v10[2] = v15 + 1;
      sub_10000CF4C(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, &qword_100356188);
      v13 += v17;
      --v9;
    }

    while (v9);
  }

  return v10;
}

char *sub_1000ECBCC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_100187354(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        sub_10001D630(0, &qword_10035E460);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_100187354((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_1000456C8(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_10001D630(0, &qword_10035E460);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_100187354((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_1000456C8(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000ECDC8()
{
  if ((static Angle.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Angle.== infix(_:_:)();
}

BOOL sub_1000ECE1C(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return (static Angle.== infix(_:_:)() & 1) != 0 && (static Angle.== infix(_:_:)() & 1) != 0 && (static Angle.== infix(_:_:)() & 1) != 0 && (static Angle.== infix(_:_:)() & 1) != 0;
}

uint64_t sub_1000ECEB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 3)
  {
    if (v3 == 3)
    {
      return 1;
    }
  }

  else if (v2 == v3)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000ECEE8(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      return 1;
    }
  }

  else if ((*a2 & 1) == 0)
  {
    return 1;
  }

  return 0;
}

void sub_1000ECF44()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v14 - v10;
  sub_100006C20(v1, &v14 - v10, &qword_100356188);
  v12 = *(v3 + 48);
  if (v12(v11, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v11, v2);
    Hasher._combine(_:)(1u);
    sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  v13 = type metadata accessor for ServiceOutages.Outage(0);
  sub_100006C20(v1 + *(v13 + 20), v8, &qword_100356188);
  if (v12(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }
}

Swift::Int sub_1000ED248()
{
  Hasher.init(_seed:)();
  sub_1000ECF44();
  return Hasher._finalize()();
}

Swift::Int sub_1000ED28C()
{
  Hasher.init(_seed:)();
  sub_1000ECF44();
  return Hasher._finalize()();
}

Swift::Int sub_1000ED2E4(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000F649C(v4, *(v1 + *(a1 + 24)));
  return Hasher._finalize()();
}

void sub_1000ED3B0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Date();
  sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  v5 = *(v2 + *(a2 + 24));

  sub_1000F649C(a1, v5);
}

Swift::Int sub_1000ED470(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  sub_1000F649C(v5, *(v2 + *(a2 + 24)));
  return Hasher._finalize()();
}

uint64_t sub_1000ED538()
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  return static Date.== infix(_:_:)();
}

Swift::Int sub_1000ED5A0()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000ED650()
{
  type metadata accessor for Date();
  sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int sub_1000ED6F0()
{
  Hasher.init(_seed:)();
  type metadata accessor for Date();
  sub_1000F1E40(&qword_10035E3D8, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_1000ED7C4(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return (static Angle.== infix(_:_:)() & 1) != 0 && (static Angle.== infix(_:_:)() & 1) != 0;
}

uint64_t sub_1000ED828(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);

  return sub_100202B38(v7, v8);
}

uint64_t sub_1000ED8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return a5(v9, v10);
}

id sub_1000ED93C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource_connectionDidChange;
  sub_1000040A8(&qword_10035E430);
  swift_allocObject();
  *&v0[v2] = PassthroughSubject.init()();
  v3 = OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource_carrierNamesDidChange;
  sub_1000040A8(&qword_10035E438);
  swift_allocObject();
  *&v0[v3] = PassthroughSubject.init()();
  *&v0[OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__agent] = 0;
  v4 = &v0[OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastVersionForwarded];
  *v4 = 0;
  v4[8] = 1;
  v5 = OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastStateForwarded;
  v6 = type metadata accessor for ConnectionAssistantState(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v23.receiver = v1;
  v23.super_class = type metadata accessor for TargetConnectionSource(0);
  v7 = objc_msgSendSuper2(&v23, "init");
  v8 = qword_100353A10;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381C80);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v22 = v14;
    *v13 = 136446210;
    v15 = v9;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_10017C9E8(v17, v19, &v22);

    *(v13 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v11, v12, "init: %{public}s", v13, 0xCu);
    sub_100008964(v14);
  }

  else
  {
  }

  return v9;
}

id sub_1000EDBF8()
{
  if (qword_100353A10 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000F53C(v1, qword_100381C80);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136446210;
    v7 = v2;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_10017C9E8(v9, v11, &v15);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v3, v4, "deinit: %{public}s", v5, 0xCu);
    sub_100008964(v6);
  }

  v13 = type metadata accessor for TargetConnectionSource(0);
  v16.receiver = v2;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, "dealloc");
}

void sub_1000EDE64()
{
  sub_1000EFCE8(319, &qword_10035DCA0, type metadata accessor for ConnectionAssistantState, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000EDF48()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_100353A40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v7 = type metadata accessor for Logger();
  sub_10000F53C(v7, qword_100381D10);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "start", v10, 2u);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = objc_allocWithZone(type metadata accessor for CoreTelephonyCAAgent());
  v14 = sub_100019078(sub_1000F903C, v11, sub_1000F9044, v12);
  v15 = *(v1 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__agent);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__agent) = v14;
}

void sub_1000EE1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject *a5, double a6, double a7)
{
  v66 = a4;
  v67 = a2;
  v68 = a3;
  v65 = a1;
  v70 = type metadata accessor for ConnectionAssistantState(0);
  v10 = *(v70 - 8);
  __chkstk_darwin(v70);
  v57 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1000040A8(&qword_10035E420);
  __chkstk_darwin(v63);
  v13 = &v57 - v12;
  v64 = type metadata accessor for TargetConnection(0);
  v14 = __chkstk_darwin(v64);
  v16 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v69 = &v57 - v17;
  v18 = sub_1000040A8(&qword_10035E418);
  v19 = __chkstk_darwin(v18 - 8);
  v62 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v59 = &v57 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v57 - v24;
  __chkstk_darwin(v23);
  v27 = &v57 - v26;
  v28 = type metadata accessor for DispatchPredicate();
  v29 = *(v28 - 8);
  __chkstk_darwin(v28);
  v31 = (&v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v31 = static OS_dispatch_queue.main.getter();
  (*(v29 + 104))(v31, enum case for DispatchPredicate.onQueue(_:), v28);
  v32 = _dispatchPreconditionTest(_:)();
  v34 = *(v29 + 8);
  v33 = v29 + 8;
  v34(v31, v28);
  if (v32)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    a5 = Strong;
    v58 = v16;
    v36 = OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastStateForwarded;
    swift_beginAccess();
    v60 = v36;
    sub_100006C20(a5 + v36, v27, &qword_10035E418);
    v61 = v10;
    v37 = *(v10 + 48);
    v38 = v37(v27, 1, v70);
    sub_100008FA0(v27, &qword_10035E418);
    v39 = v68;
    v28 = v69;
    v40 = v67;
    sub_1000EEA7C(v38 == 1, v67, v68, v66, v69, a6, a7);
    if (v38 != 1 && !v40 && !v39)
    {
      sub_1000F8F2C(v28, v25, type metadata accessor for ConnectionAssistantState);
      v41 = v70;
      (*(v61 + 56))(v25, 0, 1, v70);
      v42 = *(v63 + 48);
      sub_100006C20(v25, v13, &qword_10035E418);
      sub_100006C20(a5 + v60, &v13[v42], &qword_10035E418);
      if (v37(v13, 1, v41) == 1)
      {
        sub_100008FA0(v25, &qword_10035E418);
        if (v37(&v13[v42], 1, v41) == 1)
        {
          sub_100008FA0(v13, &qword_10035E418);
LABEL_18:
          sub_1000F8E1C(v28, type metadata accessor for TargetConnection);

          return;
        }

        goto LABEL_11;
      }

      v43 = v59;
      sub_100006C20(v13, v59, &qword_10035E418);
      if (v37(&v13[v42], 1, v41) == 1)
      {
        sub_100008FA0(v25, &qword_10035E418);
        sub_1000F8E1C(v43, type metadata accessor for ConnectionAssistantState);
LABEL_11:
        sub_100008FA0(v13, &qword_10035E420);
        goto LABEL_12;
      }

      v54 = v57;
      sub_1000F8E7C(&v13[v42], v57, type metadata accessor for ConnectionAssistantState);
      v55 = v43;
      v56 = sub_1000F6EDC(v43);
      sub_1000F8E1C(v54, type metadata accessor for ConnectionAssistantState);
      sub_100008FA0(v25, &qword_10035E418);
      sub_1000F8E1C(v55, type metadata accessor for ConnectionAssistantState);
      sub_100008FA0(v13, &qword_10035E418);
      if (v56)
      {
        goto LABEL_18;
      }
    }

LABEL_12:
    v44 = a5 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastVersionForwarded;
    v16 = v64;
    v45 = *(v28 + *(v64 + 20));
    v10 = v58;
    if ((*(&a5[1].isa + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastVersionForwarded) & 1) != 0 || (v33 = *v44, v45 >= *v44))
    {
      *v44 = v45;
      v44[8] = 0;
      v52 = v62;
      sub_1000F8F2C(v28, v62, type metadata accessor for ConnectionAssistantState);
      (*(v61 + 56))(v52, 0, 1, v70);
      v53 = v60;
      swift_beginAccess();
      sub_1000F8F94(v52, a5 + v53);
      swift_endAccess();
      PassthroughSubject.send(_:)();
      goto LABEL_18;
    }

    if (qword_100353A40 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_25;
  }

  __break(1u);
LABEL_25:
  swift_once();
LABEL_15:
  v46 = type metadata accessor for Logger();
  sub_10000F53C(v46, qword_100381D10);
  sub_1000F8F2C(v28, v10, type metadata accessor for TargetConnection);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134218240;
    v50 = *(v10 + *(v16 + 5));
    sub_1000F8E1C(v10, type metadata accessor for TargetConnection);
    *(v49 + 4) = v50;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v47, v48, "Received CA state version %llu is less than the last processed one  %llu, ignoring", v49, 0x16u);

    v51 = a5;
  }

  else
  {
    sub_1000F8E1C(v10, type metadata accessor for TargetConnection);
    v51 = v47;
    v47 = a5;
  }

  sub_1000F8E1C(v28, type metadata accessor for TargetConnection);
}

id sub_1000EEA7C@<X0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v8 = v7;
  v141 = a4;
  v140 = a3;
  v142 = a2;
  v138 = a1;
  v139 = a5;
  v11 = sub_1000040A8(&qword_100356510);
  __chkstk_darwin(v11 - 8);
  v13 = &v112 - v12;
  v14 = sub_1000040A8(&qword_100359798);
  __chkstk_darwin(v14 - 8);
  v16 = &v112 - v15;
  v17 = sub_1000040A8(&qword_10035E270);
  __chkstk_darwin(v17 - 8);
  v19 = &v112 - v18;
  v20 = sub_1000040A8(&qword_10035E268);
  __chkstk_darwin(v20 - 8);
  v22 = &v112 - v21;
  v23 = type metadata accessor for ConnectionAssistantState(0);
  __chkstk_darwin(v23);
  v25 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = [v7 emergencyOrRoadsideSessionInitiatedBy];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31._countAndFlagsBits = v28;
    v31._object = v30;
    LODWORD(v27) = _findStringSwitchCase(cases:string:)(&off_100321730, v31) != 0;

    v32 = v27 << 8;
  }

  else
  {
    v32 = 256;
  }

  v143 = v32;
  v33 = [v8 currentTarget];
  v134 = v33;
  if (v33)
  {
    v34 = v33;
    sub_1000F1FB0(v144, a6, a7);
    v131 = v144[1];
    v132 = v144[0];
    v133 = v145;
  }

  else
  {
    v133 = 0;
    v132 = 0u;
    v131 = 0u;
  }

  v35 = [v8 targetVisibility];
  if (v35)
  {
    v36 = v35;
    v37 = [v35 aggregateVisibility];

    if (v37 > 3)
    {
      v38 = 3;
    }

    else
    {
      v38 = 0x2010003u >> (8 * v37);
    }
  }

  else
  {
    v38 = 4;
  }

  v130 = v38;
  v39 = [v8 locationState];
  v129 = v39;
  if (v39)
  {
    v40 = v39;
    v41 = [v39 locationAcquisitionStatus];

    v128 = v41 != 1;
  }

  else
  {
    v128 = 0;
  }

  v42 = [v8 serviceIntervals];
  if (v42)
  {
    v43 = v42;
    sub_1000F2174(v22);
  }

  else
  {
    v44 = type metadata accessor for ServiceOutages(0);
    (*(*(v44 - 8) + 56))(v22, 1, 1, v44);
  }

  v45 = [v8 silenceInterval];
  if (v45)
  {
    v46 = v45;
    sub_1000F29C8(v19);
  }

  else
  {
    v47 = type metadata accessor for SilencePeriod(0);
    (*(*(v47 - 8) + 56))(v19, 1, 1, v47);
  }

  v48 = [v8 connectionState];
  v136 = v19;
  v135 = v22;
  if (v48)
  {
    v49 = v48;
    sub_1000F2C40(v16);

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = type metadata accessor for LinkState(0);
  v52 = *(*(v51 - 8) + 56);
  v137 = v16;
  v52(v16, v50, 1, v51);
  v53 = [v8 conversationState];
  if (v53)
  {
    v54 = v53;
    v55 = v13;
    v56 = sub_1000F3584([v53 requestReason]);
    if (v56 == 4)
    {
      v57 = 1;
    }

    else
    {
      v57 = v56;
    }

    v58 = [v54 conversationId];
    v127 = [v58 int64ValueSafe];

    v59 = [v54 committed];
    v60 = [v54 fromService];
    if (v60)
    {
      v126 = [v54 fromService];
    }

    else
    {
      v126 = 0;
    }

    v125 = v57;
    v123 = v59;
    v124 = v143 | (v60 == 0);
    v13 = v55;
  }

  else
  {
    v125 = 0;
    v127 = 0;
    v126 = 0;
    v124 = 0;
    v123 = 2;
  }

  v61 = [v8 roadsideConversationState];
  if (!v61)
  {
    goto LABEL_38;
  }

  v62 = v61;
  v118 = v13;
  v63 = [v61 conversationId];
  v13 = [v63 int64ValueSafe];

  v64 = [v62 committed];
  v65 = [v62 providerId];
  v66 = v65;
  if (!v65)
  {
    v122 = 0;
LABEL_40:
    v71 = [v62 fromService];
    if (v71)
    {
      v121 = [v62 fromService];
    }

    else
    {
      v121 = 0;
    }

    v120 = v66 == 0;

    v119 = v64;
    v143 |= v71 == 0;
    v70 = v13;
    v13 = v118;
    goto LABEL_44;
  }

  result = [v62 providerId];
  if (!result)
  {
    __break(1u);
    return result;
  }

  v68 = result;
  v69 = [result int64ValueSafe];

  v122 = v69;
  if ((v69 & 0x8000000000000000) == 0)
  {
    goto LABEL_40;
  }

  __break(1u);
LABEL_38:
  v70 = 0;
  v122 = 0;
  v120 = 0;
  v121 = 0;
  v143 = 0;
  v119 = 2;
LABEL_44:
  v72 = [v8 iso3166Alpha3CountryCode];
  if (v72)
  {
    v73 = v72;
    v118 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v117 = v74;
  }

  else
  {
    v118 = 0;
    v117 = 0;
  }

  v75 = [v8 servicePartners];
  if (v75)
  {
    v76 = v75;
    v77 = sub_1000F2E18();
    v116 = v78;
  }

  else
  {
    v116 = 0;
    v77 = 1;
  }

  v79 = [v8 connectionClosedState];
  if (v79)
  {
    v80 = v79;
    sub_1000F30E0(v13);

    v81 = 0;
  }

  else
  {
    v81 = 1;
  }

  v82 = type metadata accessor for ConnectionClosed(0);
  v83 = v13;
  (*(*(v82 - 8) + 56))(v13, v81, 1, v82);
  v84 = [v8 stewieState];
  if (v84)
  {
    v85 = v84;
    sub_10001E414([v8 internetInterface] == 2, objc_msgSend(v8, "isEmergencyVoiceCallCapable"), v146);
    v114 = v146[1];
    v115 = v146[0];
    v112 = v146[3];
    v113 = v146[2];
    v86 = v147;
    v87 = v148;
    v88 = v149;
  }

  else
  {
    v86 = 0;
    v87 = 0;
    v88 = 0;
    v115 = 0u;
    v114 = 0u;
    v113 = 0u;
    v112 = 0u;
  }

  v89 = v129 == 0;
  v90 = v134 == 0;
  v91 = v131;
  *v25 = v132;
  *(v25 + 1) = v91;
  *(v25 + 4) = v133;
  v25[40] = v90;
  v25[41] = v130;
  v25[42] = v128;
  v25[43] = v89;
  sub_10000CF4C(v135, &v25[v23[7]], &qword_10035E268);
  sub_10000CF4C(v136, &v25[v23[8]], &qword_10035E270);
  sub_10000CF4C(v137, &v25[v23[9]], &qword_100359798);
  v92 = &v25[v23[10]];
  v93 = v127;
  *v92 = v125;
  *(v92 + 1) = v93;
  v94 = v126;
  *(v92 + 2) = v123;
  *(v92 + 3) = v94;
  *(v92 + 16) = v124;
  v95 = &v25[v23[11]];
  v96 = v119;
  *v95 = v70;
  *(v95 + 1) = v96;
  v97 = v120;
  *(v95 + 2) = v122;
  *(v95 + 3) = v97;
  *(v95 + 4) = v121;
  *(v95 + 20) = v143;
  v98 = &v25[v23[12]];
  v99 = v117;
  *v98 = v118;
  v98[1] = v99;
  v100 = &v25[v23[13]];
  v101 = v116;
  *v100 = v77;
  v100[1] = v101;
  sub_10000CF4C(v83, &v25[v23[14]], &qword_100356510);
  v102 = &v25[v23[15]];
  v103 = v114;
  *v102 = v115;
  *(v102 + 1) = v103;
  v104 = v112;
  *(v102 + 2) = v113;
  *(v102 + 3) = v104;
  *(v102 + 8) = v86;
  *(v102 + 9) = v87;
  *(v102 + 10) = v88;
  v105 = v139;
  sub_1000F8F2C(v25, v139, type metadata accessor for ConnectionAssistantState);
  v106 = [v8 version];
  sub_1000F8E1C(v25, type metadata accessor for ConnectionAssistantState);
  v107 = type metadata accessor for TargetConnection(0);
  *(v105 + v107[5]) = v106;
  *(v105 + v107[6]) = v138 & 1;
  v108 = (v105 + v107[7]);
  v109 = v140;
  v110 = v141;
  v111 = v142;
  *v108 = v140;
  v108[1] = v110;
  *(v105 + v107[8]) = v111;
  sub_10001D9B4(v109);
}

uint64_t sub_1000EF674(uint64_t a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v5, v2);
  if (v6)
  {
    swift_beginAccess();
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v8 = result;

      v9 = a1;
      PassthroughSubject.send(_:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1000EF7F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_100353A40 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000F53C(v6, qword_100381D10);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "fetchConnectionAssistantState", v9, 2u);
  }

  v10 = *(v3 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__agent);
  if (v10)
  {
    type metadata accessor for PreventSuspensionAssertion();
    swift_allocObject();
    v11 = v10;
    v12 = sub_1000E13E0(0xD000000000000011, 0x8000000100294FD0, 0xD000000000000021, 0x800000010029CC90);
    sub_10001A2C4(v12, a1, a2);
  }
}

uint64_t sub_1000EF984()
{
  v1 = v0;
  v2 = sub_1000040A8(&qword_10035E418);
  __chkstk_darwin(v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10001D630(0, &qword_10035BA10);
  *v8 = static OS_dispatch_queue.main.getter();
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v9 = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if (v9)
  {
    if (qword_100353A40 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000F53C(v10, qword_100381D10);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "stop", v13, 2u);
  }

  v14 = *(v1 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__agent);
  *(v1 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__agent) = 0;

  v15 = v1 + OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastVersionForwarded;
  *v15 = 0;
  *(v15 + 8) = 1;
  v16 = type metadata accessor for ConnectionAssistantState(0);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  v17 = OBJC_IVAR____TtC8SOSBuddy22TargetConnectionSource__lastStateForwarded;
  swift_beginAccess();
  sub_1000F8F94(v4, v1 + v17);
  return swift_endAccess();
}

void sub_1000EFCE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1000EFD80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
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

uint64_t sub_1000EFE50(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
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

void sub_1000EFF08()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    sub_1000F1B30(319, &unk_10035DDB0, &type metadata for TargetTracks.Target, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000EFFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000040A8(&qword_100356188);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_1000F00A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1000040A8(&qword_100356188);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000F018C()
{
  sub_1000F1B30(319, &qword_10035DE48, &type metadata for ConnectionClosed.ExitReason, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000EFCE8(319, &qword_10035DE50, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000F027C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F027C()
{
  if (!qword_10035DE58)
  {
    sub_1000F02D8();
    v0 = type metadata accessor for Set();
    if (!v1)
    {
      atomic_store(v0, &qword_10035DE58);
    }
  }
}

unint64_t sub_1000F02D8()
{
  result = qword_10035DE60;
  if (!qword_10035DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035DE60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConnectionClosed.ExitReason(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ConnectionClosed.ExitReason(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1000F04D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000F0550(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1000F05E0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1000F0660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1000F0730(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Date();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_1000F0828(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  type metadata accessor for Date();
  if (v7 <= 0x3F)
  {
    sub_1000EFCE8(319, a4, a5, &type metadata accessor for Array);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F090C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100356188);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000F0998(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000040A8(&qword_100356188);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_1000F0A14()
{
  sub_1000EFCE8(319, &qword_10035DE50, &type metadata accessor for Date, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_1000F0AD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_1000040A8(&qword_100356188);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1000F0BB0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000040A8(&qword_100356188);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000F0C80()
{
  sub_1000F1B30(319, &qword_100359EE8, &type metadata for String, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000EFCE8(319, &qword_10035DE50, &type metadata accessor for Date, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000F1B30(319, &qword_10035E0C0, &type metadata for Int, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000F1B30(319, &unk_10035E0C8, &type metadata for TransmissionProgress.PayloadType, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1000F0DF8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_1000040A8(&qword_100354FD8);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 32)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1000F0EC8(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = sub_1000040A8(&qword_100354FD8);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 32)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1000F0F94()
{
  sub_1000F1B30(319, &qword_100359EE0, &type metadata for Bool, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000F1B30(319, &unk_10035E170, &type metadata for LinkState.Congestion, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000EFCE8(319, &qword_100359EF8, type metadata accessor for TransmissionProgress, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1000F10D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ConnectionAssistantState(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1000F11B0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ConnectionAssistantState(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = a2;
  }

  return result;
}

void sub_1000F1288()
{
  type metadata accessor for ConnectionAssistantState(319);
  if (v0 <= 0x3F)
  {
    sub_1000F136C();
    if (v1 <= 0x3F)
    {
      sub_1000EFCE8(319, &unk_10035E228, type metadata accessor for PreventSuspensionAssertion, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1000F136C()
{
  if (!qword_10035E218)
  {
    sub_100008CF0(&qword_10035E220);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10035E218);
    }
  }
}

uint64_t sub_1000F13E4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1000040A8(&qword_10035E268);
  if (*(*(v6 - 8) + 84) == a2)
  {
    v7 = v6;
    v8 = *(v6 - 8);
    v9 = a3[7];
LABEL_7:
    v12 = *(v8 + 48);

    return v12(a1 + v9, a2, v7);
  }

  v10 = sub_1000040A8(&qword_10035E270);
  if (*(*(v10 - 8) + 84) == a2)
  {
    v7 = v10;
    v8 = *(v10 - 8);
    v9 = a3[8];
    goto LABEL_7;
  }

  v11 = sub_1000040A8(&qword_100359798);
  if (*(*(v11 - 8) + 84) == a2)
  {
    v7 = v11;
    v8 = *(v11 - 8);
    v9 = a3[9];
    goto LABEL_7;
  }

  if (a2 == 2147483646)
  {
    v14 = *(a1 + a3[12] + 8);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    v15 = v14 - 1;
    if (v15 < 0)
    {
      v15 = -1;
    }

    return (v15 + 1);
  }

  else
  {
    v16 = sub_1000040A8(&qword_100356510);
    v17 = *(*(v16 - 8) + 48);
    v18 = a1 + a3[14];

    return v17(v18, a2, v16);
  }
}

uint64_t sub_1000F15F0(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1000040A8(&qword_10035E268);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[7];
LABEL_7:
    v14 = *(v10 + 56);

    return v14(a1 + v11, a2, a2, v9);
  }

  v12 = sub_1000040A8(&qword_10035E270);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[8];
    goto LABEL_7;
  }

  result = sub_1000040A8(&qword_100359798);
  if (*(*(result - 8) + 84) == a3)
  {
    v9 = result;
    v10 = *(result - 8);
    v11 = a4[9];
    goto LABEL_7;
  }

  if (a3 == 2147483646)
  {
    *(a1 + a4[12] + 8) = a2;
  }

  else
  {
    v15 = sub_1000040A8(&qword_100356510);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[14];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

void sub_1000F17DC()
{
  sub_1000F1B30(319, &qword_1003582E0, &type metadata for Target, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1000F1B30(319, &qword_10035E2E0, &type metadata for TargetVisibility, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1000F1B30(319, &qword_10035E2E8, &type metadata for LocationState, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1000EFCE8(319, &qword_10035E2F0, type metadata accessor for ServiceOutages, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1000EFCE8(319, &qword_10035E2F8, type metadata accessor for SilencePeriod, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1000EFCE8(319, &qword_10035E300, type metadata accessor for LinkState, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1000F1B30(319, &qword_10035E308, &type metadata for EmergencyConversationState, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1000F1B30(319, &qword_10035E310, &type metadata for RoadsideAssistanceConversationState, &type metadata accessor for Optional);
                if (v7 <= 0x3F)
                {
                  sub_1000F1B30(319, &qword_100359EE8, &type metadata for String, &type metadata accessor for Optional);
                  if (v8 <= 0x3F)
                  {
                    sub_1000F1B30(319, &qword_10035E318, &type metadata for ServicePartners, &type metadata accessor for Optional);
                    if (v9 <= 0x3F)
                    {
                      sub_1000EFCE8(319, &qword_10035E320, type metadata accessor for ConnectionClosed, &type metadata accessor for Optional);
                      if (v10 <= 0x3F)
                      {
                        sub_1000F1B30(319, &unk_10035E328, &type metadata for StewieState, &type metadata accessor for Optional);
                        if (v11 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_1000F1B30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TargetVisibility(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 4;
  if (v6 < 3)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

uint64_t sub_1000F1C44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000F1C64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

unint64_t sub_1000F1CAC()
{
  result = qword_10035E380;
  if (!qword_10035E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E380);
  }

  return result;
}

unint64_t sub_1000F1D04()
{
  result = qword_10035E388;
  if (!qword_10035E388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E388);
  }

  return result;
}

unint64_t sub_1000F1D5C()
{
  result = qword_10035E390;
  if (!qword_10035E390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E390);
  }

  return result;
}

uint64_t sub_1000F1E40(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000F1F04()
{
  result = qword_10035E3C0;
  if (!qword_10035E3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E3C0);
  }

  return result;
}

unint64_t sub_1000F1F5C()
{
  result = qword_10035E3C8;
  if (!qword_10035E3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10035E3C8);
  }

  return result;
}

void sub_1000F1FB0(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  v4 = v3;
  v8 = [v3 x];
  [v8 doubleValueSafe];
  v10 = v9;

  v11 = round(v10);
  v12 = [v4 y];
  [v12 doubleValueSafe];
  v14 = v13;

  v15 = round(v14);
  v16 = v15 * 0.0174532925;
  if (a2 != 0.0 || (v17 = v11 * 0.0174532925, v18 = v15 * 0.0174532925, a3 != 0.0))
  {
    v17 = (v11 + a2) * 0.0174532925;
    if (v17 < 0.0 || v17 >= 6.28318531)
    {
      v17 = v17 - floor(v17 / 6.28318531) * 6.28318531;
    }

    v19 = (v15 + a3) * 0.0174532925;
    Angle.animatableData.getter();
    Angle.animatableData.setter();
    if (v19 < 1.57079633)
    {
      Angle.animatableData.getter();
      Angle.animatableData.setter();
      v19 = 1.57079633;
    }

    if (v19 <= 1.57079633)
    {
      v18 = v19;
    }

    else
    {
      v18 = 1.57079633;
    }
  }

  v20 = [v4 targetId];
  v21 = [v20 int64ValueSafe];

  *a1 = v21;
  *(a1 + 8) = v11 * 0.0174532925;
  *(a1 + 16) = v16;
  *(a1 + 24) = v17;
  *(a1 + 32) = v18;
}

id sub_1000F2174@<X0>(uint64_t a1@<X8>)
{
  v75 = a1;
  v78 = type metadata accessor for Date();
  v1 = *(v78 - 8);
  v2 = __chkstk_darwin(v78);
  v73 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __chkstk_darwin(v2);
  v71 = &v68 - v5;
  __chkstk_darwin(v4);
  v72 = &v68 - v6;
  v7 = type metadata accessor for ServiceOutages.Outage(0);
  v80 = *(v7 - 8);
  v81 = v7;
  __chkstk_darwin(v7);
  v83 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000040A8(&qword_100356188);
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v70 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v69 = &v68 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = &v68 - v16;
  __chkstk_darwin(v15);
  v19 = &v68 - v18;
  v77 = sub_1000040A8(&qword_10035E428);
  v20 = *(v10 + 72);
  v21 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v22 = swift_allocObject();
  v76 = xmmword_100279160;
  *(v22 + 16) = xmmword_100279160;
  v74 = v1;
  v23 = *(v1 + 56);
  v23(v22 + v21, 1, 1, v78);
  v24 = [v79 changesAt];
  v25 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v26 = sub_1000EC988(v25);

  v84 = v22;
  sub_1000EC850(v26);
  v82 = v20;
  v27 = v21;
  v28 = swift_allocObject();
  *(v28 + 16) = v76;
  *&v76 = v1 + 56;
  v77 = v23;
  v23(v28 + v27, 1, 1, v78);
  sub_1000EC850(v28);
  v29 = v84;
  result = [v79 atStart];
  v31 = *(v29 + 16);
  if (v31)
  {
    v32 = v31 - 1;
    if (v31 == 1)
    {

      v35 = _swiftEmptyArrayStorage;
    }

    else
    {
      v33 = result;
      v68 = v29;
      v34 = v29 + v27;
      v35 = _swiftEmptyArrayStorage;
      v36 = v82;
      do
      {
        sub_100006C20(v34, v19, &qword_100356188);
        sub_100006C20(v34 + v36, v17, &qword_100356188);
        if (v33)
        {
          sub_100008FA0(v17, &qword_100356188);
          sub_100008FA0(v19, &qword_100356188);
        }

        else
        {
          v37 = v83;
          sub_100006C20(v19, v83, &qword_100356188);
          sub_100006C20(v17, v37 + *(v81 + 20), &qword_100356188);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_10017BD34(0, v35[2] + 1, 1, v35);
          }

          v39 = v35[2];
          v38 = v35[3];
          v40 = v35;
          if (v39 >= v38 >> 1)
          {
            v40 = sub_10017BD34(v38 > 1, v39 + 1, 1, v35);
          }

          sub_100008FA0(v17, &qword_100356188);
          sub_100008FA0(v19, &qword_100356188);
          *(v40 + 16) = v39 + 1;
          v35 = v40;
          sub_1000F8E7C(v83, v40 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v39, type metadata accessor for ServiceOutages.Outage);
          v36 = v82;
        }

        v33 ^= 1u;
        v34 += v36;
        --v32;
      }

      while (v32);
    }

    v42 = v78;
    v41 = v79;
    v44 = v73;
    v43 = v74;
    v45 = v72;
    if (v35[2])
    {
      v46 = [v79 startsAt];
      if (v46)
      {
        v47 = v45;
        v48 = v71;
        v49 = v46;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v50 = *(v43 + 32);
        v51 = v44;
        v52 = v69;
        v53 = v48;
        v45 = v47;
        v50(v69, v53, v42);
        v77(v52, 0, 1, v42);
        v54 = v52;
        v44 = v51;
        v50(v47, v54, v42);
        v41 = v79;
      }

      else
      {
        v56 = v69;
        v77(v69, 1, 1, v42);
        Date.init()();
        if ((*(v43 + 48))(v56, 1, v42) != 1)
        {
          sub_100008FA0(v56, &qword_100356188);
        }
      }

      v57 = [v41 endsAt];
      if (v57)
      {
        v58 = v71;
        v59 = v57;
        static Date._unconditionallyBridgeFromObjectiveC(_:)();

        v60 = *(v43 + 32);
        v61 = v45;
        v62 = v70;
        v60(v70, v58, v42);
        v77(v62, 0, 1, v42);
        v63 = v62;
        v45 = v61;
        v60(v44, v63, v42);
      }

      else
      {
        v64 = v70;
        v77(v70, 1, 1, v42);
        Date.init()();
        if ((*(v43 + 48))(v64, 1, v42) != 1)
        {
          sub_100008FA0(v64, &qword_100356188);
        }
      }

      v65 = *(v43 + 32);
      v66 = v75;
      v65(v75, v45, v42);
      v67 = type metadata accessor for ServiceOutages(0);
      v65(v66 + *(v67 + 20), v44, v42);
      *(v66 + *(v67 + 24)) = v35;
      return (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    }

    else
    {

      v55 = type metadata accessor for ServiceOutages(0);
      return (*(*(v55 - 8) + 56))(v75, 1, 1, v55);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000F29C8@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v6);
  v11 = &v25 - v10;
  v12 = __chkstk_darwin(v9);
  v14 = &v25 - v13;
  __chkstk_darwin(v12);
  v16 = &v25 - v15;
  v17 = [v2 startsAt];
  if (v17)
  {
    v18 = v17;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v19 = *(v5 + 32);
    v19(v16, v14, v4);
    v20 = [v2 endsAt];
    if (v20)
    {
      v21 = v20;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v19(v11, v8, v4);
      v19(a1, v16, v4);
      v22 = type metadata accessor for SilencePeriod(0);
      v19(&a1[*(v22 + 20)], v11, v4);
      return (*(*(v22 - 8) + 56))(a1, 0, 1, v22);
    }

    (*(v5 + 8))(v16, v4);
  }

  v24 = type metadata accessor for SilencePeriod(0);
  return (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
}

uint64_t sub_1000F2C40@<X0>(BOOL *a1@<X8>)
{
  v3 = sub_1000040A8(&qword_100354FD8);
  __chkstk_darwin(v3 - 8);
  v5 = (&v18 - v4);
  v6 = [v1 connectionStatus];
  v7 = [v1 syncStatus];
  v8 = [v1 registrationStatus];
  v9 = [v1 congestionStatus];
  v10 = [v1 currentTransmissionProgress];
  if (v10)
  {
    v11 = v10;
    sub_1000F3268(v5);
  }

  else
  {
    v12 = type metadata accessor for TransmissionProgress(0);
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  }

  v13 = 0x302010004uLL >> (8 * v9);
  if (v9 >= 5)
  {
    LOBYTE(v13) = 4;
  }

  v14 = 0x10002u >> (8 * v8);
  if (v8 >= 3)
  {
    LOBYTE(v14) = 2;
  }

  v15 = 0x10002u >> (8 * v7);
  if (v7 >= 3)
  {
    LOBYTE(v15) = 2;
  }

  *a1 = v6 == 3;
  a1[1] = v15;
  a1[2] = v14;
  a1[3] = v13;
  v16 = type metadata accessor for LinkState(0);
  return sub_10000CF4C(v5, &a1[*(v16 + 32)], &qword_100354FD8);
}

uint64_t sub_1000F2E18()
{
  if ([v0 footnotesToShowMask])
  {
    if ([v0 footnotesToShowMask])
    {
      v1 = sub_10017BF4C(0, 1, 1, _swiftEmptyArrayStorage);
      v4 = *(v1 + 2);
      v3 = *(v1 + 3);
      if (v4 >= v3 >> 1)
      {
        v1 = sub_10017BF4C((v3 > 1), v4 + 1, 1, v1);
      }

      *(v1 + 2) = v4 + 1;
      v1[v4 + 32] = 0;
    }

    else
    {
      v1 = _swiftEmptyArrayStorage;
    }

    if (([v0 footnotesToShowMask] & 2) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10017BF4C(0, *(v1 + 2) + 1, 1, v1);
      }

      v6 = *(v1 + 2);
      v5 = *(v1 + 3);
      if (v6 >= v5 >> 1)
      {
        v1 = sub_10017BF4C((v5 > 1), v6 + 1, 1, v1);
      }

      *(v1 + 2) = v6 + 1;
      v1[v6 + 32] = 1;
    }

    if (([v0 footnotesToShowMask] & 4) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v1 = sub_10017BF4C(0, *(v1 + 2) + 1, 1, v1);
      }

      v8 = *(v1 + 2);
      v7 = *(v1 + 3);
      if (v8 >= v7 >> 1)
      {
        v1 = sub_10017BF4C((v7 > 1), v8 + 1, 1, v1);
      }

      *(v1 + 2) = v8 + 1;
      v1[v8 + 32] = 2;
    }

    sub_1000C6B70(v1);

    v2 = [v0 partners];
    if (!v2)
    {
      return 0;
    }
  }

  else
  {
    v2 = [v0 partners];
    if (!v2)
    {
      return 0;
    }
  }

  v9 = v2;
  sub_10001D630(0, &qword_10035CF30);
  sub_1000040A8(&qword_100355E30);
  sub_1000F904C();
  v10 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  return v10;
}

uint64_t sub_1000F30E0@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v4 - 8);
  v6 = &v15 - v5;
  v7 = sub_1000F37D4([v2 reason]);
  v8 = [v2 closedAt];
  if (v8)
  {
    v9 = v8;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v10 = type metadata accessor for Date();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  }

  else
  {
    v11 = type metadata accessor for Date();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v12 = sub_10015D518([v2 wasActiveServices]);
  *a1 = v7;
  v13 = type metadata accessor for ConnectionClosed(0);
  result = sub_10000CF4C(v6, &a1[*(v13 + 20)], &qword_100356188);
  *&a1[*(v13 + 24)] = v12;
  return result;
}

id sub_1000F3268@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1000040A8(&qword_100356188);
  __chkstk_darwin(v4 - 8);
  v6 = &v30 - v5;
  v7 = [v2 payloadType];
  v8 = v7 - 1;
  if ((v7 - 1) > 6)
  {
    v14 = type metadata accessor for TransmissionProgress(0);
    v15 = *(*(v14 - 8) + 56);

    return v15(a1, 1, 1, v14);
  }

  else
  {
    v9 = [v2 messageId];
    if (v9)
    {
      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v17 = [v2 startedAt];
    if (v17)
    {
      v18 = v17;
      static Date._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = type metadata accessor for Date();
      (*(*(v19 - 8) + 56))(v6, 0, 1, v19);
    }

    else
    {
      v20 = type metadata accessor for Date();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
    }

    v21 = [v2 estimatedDurationSeconds];
    v22 = v21;
    if (v21)
    {

      result = [v2 estimatedDurationSeconds];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v23 = result;
      v24 = [result int64ValueSafe];
    }

    else
    {
      v24 = 0;
    }

    v25 = [v2 progressPercents];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 int64ValueSafe];
    }

    else
    {
      v27 = 0;
    }

    *a1 = v11;
    a1[1] = v13;
    v28 = type metadata accessor for TransmissionProgress(0);
    sub_10000CF4C(v6, a1 + v28[5], &qword_100356188);
    v29 = a1 + v28[6];
    *v29 = v24;
    v29[8] = v22 == 0;
    *(a1 + v28[7]) = v27;
    *(a1 + v28[8]) = v8;
    return (*(*(v28 - 1) + 56))(a1, 0, 1, v28);
  }
}

uint64_t sub_1000F3584(uint64_t a1)
{
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      return 2;
    }

    if (a1 != 4)
    {
      if (a1 == 5)
      {
        if (qword_100353A40 != -1)
        {
          swift_once();
        }

        v2 = type metadata accessor for Logger();
        sub_10000F53C(v2, qword_100381D10);
        v3 = Logger.logObject.getter();
        v4 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v3, v4))
        {
          goto LABEL_19;
        }

        v5 = swift_slowAlloc();
        *v5 = 0;
        _os_log_impl(&_mh_execute_header, v3, v4, "CTCAStewieEmergencyRequestReasonTryOut should never reach SOSBuddy", v5, 2u);
        goto LABEL_18;
      }

LABEL_14:
      if (qword_100353A40 != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      sub_10000F53C(v6, qword_100381D10);
      v3 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v3, v7))
      {
        goto LABEL_19;
      }

      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136446210;
      type metadata accessor for CTCAStewieEmergencyRequestReason(0);
      v10 = String.init<A>(describing:)();
      v12 = sub_10017C9E8(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v3, v7, "Unhandled CTCAStewieEmergencyRequestReason value: %{public}s", v8, 0xCu);
      sub_100008964(v9);

LABEL_18:

LABEL_19:

      return 4;
    }

    return 3;
  }

  else
  {
    if (!a1)
    {
      return 4;
    }

    if (a1 != 1)
    {
      if (a1 == 2)
      {
        return 1;
      }

      goto LABEL_14;
    }

    return 0;
  }
}

uint64_t sub_1000F37D4(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 12;
  }

  else
  {
    return byte_100284863[a1 - 1];
  }
}

void sub_1000F37F8(uint64_t a1@<X8>)
{
  v25 = &_swiftEmptyArrayStorage;
  v3 = [v1 targets];
  sub_10001D630(0, &qword_10035E410);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_15:

LABEL_16:
    sub_1000F3A94(&v25);
    v21 = [v1 at];
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = v25;
    *(a1 + *(type metadata accessor for TargetTracks.TimePoint(0) + 20)) = v22;
    return;
  }

  v5 = _CocoaArrayWrapper.endIndex.getter();
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_3:
  if (v5 >= 1)
  {
    v23 = v1;
    v24 = a1;
    v6 = 0;
    v7 = &_swiftEmptyArrayStorage;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = [v8 x];
      [v10 doubleValueSafe];
      v12 = v11;

      v13 = [v9 y];
      [v13 doubleValueSafe];
      v15 = v14;

      v16 = [v9 targetId];
      v17 = [v16 int64ValueSafe];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_10017C04C(0, *(v7 + 2) + 1, 1, v7);
      }

      v19 = *(v7 + 2);
      v18 = *(v7 + 3);
      if (v19 >= v18 >> 1)
      {
        v7 = sub_10017C04C((v18 > 1), v19 + 1, 1, v7);
      }

      ++v6;

      *(v7 + 2) = v19 + 1;
      v20 = &v7[24 * v19];
      *(v20 + 4) = v17;
      *(v20 + 5) = v12 * 0.0174532925;
      *(v20 + 6) = v15 * 0.0174532925;
    }

    while (v5 != v6);

    v25 = v7;
    v1 = v23;
    a1 = v24;
    goto LABEL_16;
  }

  __break(1u);
}