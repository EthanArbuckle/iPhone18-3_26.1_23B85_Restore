uint64_t sub_10006150C()
{
  sub_100025A94();
  sub_10004622C();
  v2 = v1[22];
  v3 = v1[18];
  v4 = v1[17];
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  dispatch thunk of Actor.unownedExecutor.getter();
  sub_100062F98();
  v7 = sub_100062F00();

  return _swift_task_switch(v7, v8, v9);
}

uint64_t sub_10006162C()
{
  sub_10003DCD8();
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  v3 = sub_100064BAC();
  sub_100107E70(v3);
  if (qword_1001881E0 != -1)
  {
    sub_10004F43C();
  }

  v4 = *(v0 + 128);
  v5 = type metadata accessor for Logger();
  sub_10000C2D4(v5, qword_1001A5760);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 128);
  if (v8)
  {
    v10 = swift_slowAlloc();
    *v10 = 67109376;
    v11 = sub_1000605E8();
    *(v10 + 10) = sub_10006301C(v11);

    sub_100062FFC(&_mh_execute_header, v12, v13, "Wi-Fi Power is now: %{BOOL}d joined: %{BOOL}d");
    sub_100008744();
  }

  else
  {
    v14 = *(v0 + 128);
  }

  sub_10000875C();

  return v15();
}

uint64_t sub_100061764()
{
  v1 = *(v0 + 144);

  if (qword_1001881E0 != -1)
  {
    sub_10004F43C();
  }

  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  sub_10000C2D4(v3, qword_1001A5760);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 160);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Diagnostic error occured while turning on Wi-Fi: %@", v7, 0xCu);
    sub_100044F98(v8, &qword_100189390, &qword_1001241D0);
    sub_100008744();
    sub_100008744();
  }

  v10 = *(v0 + 160);
  v11 = *(v0 + 128);

  *(v0 + 16) = v10 & 0xFFFFFFFFFFFFFFFLL;
  *(v0 + 32) = 0;
  *(v0 + 48) = 0;
  *(v0 + 64) = 0;
  *(v0 + 80) = 0;
  *(v0 + 104) = 0;
  *(v0 + 120) = 0x4000;
  swift_errorRetain();
  sub_10005F50C((v0 + 16));

  if (qword_1001881E0 != -1)
  {
    sub_10004F43C();
  }

  v12 = *(v0 + 128);
  sub_10000C2D4(v3, qword_1001A5760);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 128);
  if (v15)
  {
    v17 = swift_slowAlloc();
    *v17 = 67109376;
    v18 = sub_1000605E8();
    *(v17 + 10) = sub_10006301C(v18);

    sub_100062FFC(&_mh_execute_header, v19, v20, "Wi-Fi Power is now: %{BOOL}d joined: %{BOOL}d");
    sub_100008744();
  }

  else
  {
    v21 = *(v0 + 128);
  }

  sub_10000875C();

  return v22();
}

uint64_t sub_1000619E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_10005F3C4(v11);
  v3 = v13;
  if ((v13 & 0xC000) != 0)
  {
    result = sub_1000628FC(v11);
    v4 = 0;
    v3 = 0;
    v9 = 0uLL;
    v10 = 0uLL;
    v8 = 0uLL;
    v7 = 0uLL;
    v6 = 0uLL;
    v5 = 0uLL;
  }

  else
  {
    v4 = v12;
    v6 = v11[4];
    v5 = v11[5];
    v8 = v11[2];
    v7 = v11[3];
    v9 = v11[0];
    v10 = v11[1];
  }

  *a1 = v9;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  *(a1 + 48) = v7;
  *(a1 + 64) = v6;
  *(a1 + 80) = v5;
  *(a1 + 96) = v4;
  *(a1 + 104) = v3;
  return result;
}

uint64_t sub_100061A74()
{
  sub_1000619E8(v3);
  if (!v5)
  {
    return 0;
  }

  v0 = v4;
  v1 = v3[1];
  sub_100044F98(v3, &qword_10018B388, &qword_100125C38);
  if (v0)
  {
    return 0;
  }

  return v1;
}

uint64_t sub_100061AD4()
{
  sub_1000619E8(__src);
  if (!v5 || (memcpy(__dst, __src, 0x5BuLL), v0 = __dst[9], v1 = __dst[10], sub_10006292C(__dst, &v3), sub_100044F98(__src, &qword_10018B388, &qword_100125C38), !v1))
  {

    return 0;
  }

  return v0;
}

uint64_t sub_100061B64()
{
  sub_10005F3C4(v1);
  if ((v2 & 0xC000) == 0x4000)
  {
    return v1[0];
  }

  sub_1000628FC(v1);
  return 0;
}

uint64_t sub_100061C34(int8x16_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v7 = a1[5].i64[0];
  v6 = a1[5].i64[1];
  v8 = a1[6].i64[0];
  v9 = a1[6].u16[4];
  if (!(v9 >> 14))
  {
    v19 = *(a2 + 52);
    if (v19 < 0x4000)
    {
      v20 = a2[12];
      v21 = *(a2 + 22);
      v22 = a2[10];
      v32[0] = *a1;
      v32[1] = v2;
      v32[2] = v3;
      v32[3] = v4;
      v32[4] = v5;
      v33 = v7;
      v34 = v6;
      v35 = BYTE2(v6);
      v23 = *(a2 + 1);
      v36[0] = *a2;
      v36[1] = v23;
      v24 = *(a2 + 3);
      v36[2] = *(a2 + 2);
      v36[3] = v24;
      v36[4] = *(a2 + 4);
      v37 = v22;
      v39 = BYTE2(v21);
      v38 = v21;
      if ((static WiFiDiagnosticsData.__derived_struct_equals(_:_:)(v32, v36) & 1) != 0 && (sub_10004C210(v8, v20) & 1) != 0 && ((v9 ^ v19) & 1) == 0 && ((v9 >> 8) & 1) == (v19 & 0x100) >> 8)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_28;
  }

  if (v9 >> 14 == 1)
  {
    if ((a2[13] & 0xC000) == 0x4000)
    {
      v10 = *a2;
      v11 = a1->i64[0];
      swift_getErrorValue();
      v12 = Error.localizedDescription.getter();
      v14 = v13;
      swift_getErrorValue();
      if (v12 != Error.localizedDescription.getter() || v14 != v15)
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        LOBYTE(v18) = v17 ^ 1;
        return v18 & 1;
      }

LABEL_31:
      LOBYTE(v18) = 0;
      return v18 & 1;
    }

LABEL_28:
    LOBYTE(v18) = 1;
    return v18 & 1;
  }

  v25 = vorrq_s8(vorrq_s8(v5, v3), vorrq_s8(v4, v2));
  if (v7 | *&vorr_s8(*v25.i8, *&vextq_s8(v25, v25, 8uLL)) | v6 | v8 | a1->i64[0] | a1->i64[1] || v9 != 0x8000)
  {
    v28 = *(a2 + 52);
    if ((v28 & 0xC000) != 0x8000)
    {
      goto LABEL_28;
    }

    if (v28 != 0x8000 || *a2 != 1)
    {
      goto LABEL_28;
    }

    v30 = vorrq_s8(vorrq_s8(vorrq_s8(*(a2 + 5), *(a2 + 9)), vorrq_s8(*(a2 + 7), *(a2 + 11))), vorrq_s8(*(a2 + 1), *(a2 + 3)));
    *v30.i8 = vorr_s8(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
    LOBYTE(v18) = v30.i8[0];
    if (v30.i64[0])
    {
      goto LABEL_28;
    }
  }

  else
  {
    v26 = *(a2 + 52);
    if ((v26 & 0xC000) != 0x8000)
    {
      goto LABEL_28;
    }

    if (v26 != 0x8000)
    {
      goto LABEL_28;
    }

    v27 = vorrq_s8(vorrq_s8(vorrq_s8(*(a2 + 5), *(a2 + 9)), vorrq_s8(*(a2 + 7), *(a2 + 11))), vorrq_s8(*(a2 + 1), *(a2 + 3)));
    v18 = *&vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL)) | *a2;
    if (v18)
    {
      goto LABEL_28;
    }
  }

  return v18 & 1;
}

uint64_t sub_100061EDC()
{
  sub_100062F10(v0 + qword_10018C3A0);
  v1 = qword_10018C3D0;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  v4 = *(v3 + 8);

  return v4(v0 + v1);
}

uint64_t sub_100061F50()
{
  v0 = sub_10011484C();
  sub_100062F10(v0 + qword_10018C3A0);
  v1 = qword_10018C3D0;
  v2 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v2);
  (*(v3 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_100061FC4()
{
  v0 = sub_100061F50();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for WiFiFlowViewModel()
{
  result = qword_10018C400;
  if (!qword_10018C400)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100062064()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100062118(uint64_t a1)
{
  v1 = *(a1 + 104);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_100062140(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 106))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = (*a1 >> 60) & 0xF | (16 * (*(a1 + 16) >> 1));
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_100062194(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 104) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 106) = 1;
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
      v4 = -a2;
      *a1 = v4 << 60;
      *(a1 + 8) = 0;
      *(a1 + 16) = (v4 >> 3) & 0x1FFFFFFE;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 106) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006222C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 16) & 1;
    v3 = *(result + 32) & 1;
    v4 = *(result + 48) & 1;
    v5 = *(result + 64) & 1;
    v6 = *(result + 88) & 0x10101;
    v7 = *(result + 104) & 0x101 | (a2 << 14);
    *result &= 0xFFFFFFFFFFFFFFFuLL;
    *(result + 16) = v2;
    *(result + 32) = v3;
    *(result + 48) = v4;
    *(result + 64) = v5;
    *(result + 88) = v6;
    *(result + 104) = v7;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0x8000;
  }

  return result;
}

BOOL sub_1000622D4()
{
  static Bool.simulateBadWiFiConnection.getter();
  sub_100062FE4();
  if (!v1 && (v0 & 1) != 0)
  {
    return 0;
  }

  sub_1000619E8(v4);
  if (!v5)
  {
    return 0;
  }

  v2 = v4[2];
  sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
  return (v2 - 4) < 0xFFFFFFFD;
}

uint64_t sub_100062348()
{
  static Bool.simulateNoInternetConnectivity.getter();
  sub_100062FE4();
  if (!v1 && (v0 & 1) != 0)
  {
    return 0;
  }

  sub_1000619E8(v4);
  if (!v4[12])
  {
    return 0;
  }

  v2 = v5;
  sub_100044F98(v4, &qword_10018B388, &qword_100125C38);
  return (v2 >> 8) & 1;
}

uint64_t sub_1000623B4()
{
  swift_getErrorValue();
  Error.localizedDescription.getter();
  sub_100062FA4();
  if (v1 == Error.localizedDescription.getter() && v0 == v2)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v4 & 1;
}

uint64_t sub_100062454(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_1000623B4();
}

uint64_t sub_100062460()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = sub_100008780(v0);
  v3 = v2;
  v5 = *(v4 + 64);
  __chkstk_darwin(v1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  sub_10000C270(v8, qword_1001A5760);
  sub_10000C2D4(v8, qword_1001A5760);
  (*(v3 + 104))(v7, enum case for SupportFlowIdentifier.wifi(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_100062558()
{
  sub_100025A94();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100062F48(v1);

  return sub_1000A2880();
}

uint64_t sub_1000625D8()
{
  type metadata accessor for MainActor();
  *(v0 + 16) = static MainActor.shared.getter();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006266C, v2, v1);
}

uint64_t sub_10006266C()
{
  sub_100025A94();
  v1 = *(v0 + 16);

  sub_10000875C();

  return v2();
}

uint64_t sub_1000626C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int16 a14)
{
  v14 = a14 >> 14;
  if (v14 == 1)
  {
  }

  else if (!v14)
  {
  }

  return result;
}

uint64_t sub_10006273C()
{
  sub_100025A94();
  v0 = swift_task_alloc();
  v1 = sub_100056A10(v0);
  *v1 = v2;
  sub_100062F48(v1);

  return sub_1000625D8();
}

uint64_t sub_1000627C0()
{
  sub_10003DCD8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v6 = sub_1000569D8(v4);

  return v7(v6);
}

__n128 sub_10006286C(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_100062878()
{
  result = qword_10018A178;
  if (!qword_10018A178)
  {
    sub_100004D48(&qword_10018A170, &unk_100127780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018A178);
  }

  return result;
}

void sub_1000628DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(*v1 + 144);
  sub_100062F90(v1);
}

uint64_t sub_100062988()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_100060E40(v0);
}

uint64_t sub_100062A0C()
{
  sub_10003DCD8();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = sub_100056A10(v3);
  *v4 = v5;
  v6 = sub_1000569D8(v4);

  return v7(v6);
}

uint64_t sub_100062AA4()
{
  sub_100025A94();
  v1 = swift_task_alloc();
  v2 = sub_100056A10(v1);
  *v2 = v3;
  sub_100062F48(v2);

  return sub_100060EE4(v0);
}

uint64_t sub_100062B28()
{
  sub_100025A94();
  v2 = v1;
  sub_10004622C();
  v4 = *(v3 + 16);
  v5 = *v0;
  sub_10000870C();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(v2);
}

uint64_t sub_100062C70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10005F9B0();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100062CDC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10005F99C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100062D48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_10005F6DC();
  *a2 = result & 1;
  return result;
}

uint64_t sub_100062E20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_100062E60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100062EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(a1 + 8) = sub_10005EEAC;
  v12 = *(v11 + 1336);
  return a11;
}

uint64_t sub_100062F10@<X0>(uint64_t a1@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v14 = *(a1 + 104);
  v13 = *(a1 + 96);
  v11 = *(a1 + 64);
  v12 = *(a1 + 80);

  return sub_1000626C4(v2, v3, v4, v5, v6, v7, v8, v9, v11, *(&v11 + 1), v12, *(&v12 + 1), v13, v14);
}

__n128 sub_100062F74(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 72);
  v3 = *(a2 + 40);
  v4 = *(a2 + 88);
  v5 = *(a2 + 56);
  v6 = *(a2 + 24);
  v7 = *(a2 + 8);
  return result;
}

uint64_t sub_100062FA4()
{

  return swift_getErrorValue();
}

uint64_t sub_100062FC8()
{
  *(v1 + 16) = v0;

  return type metadata accessor for MainActor();
}

void sub_100062FFC(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xEu);
}

BOOL sub_10006301C(char a1)
{
  *(v1 + 4) = a1 & 1;
  *(v1 + 8) = 1024;

  return sub_10005F124();
}

uint64_t sub_10006303C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176280, v2);

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

uint64_t sub_100063090(char a1)
{
  if (a1)
  {
    return 0x73746E756F636361;
  }

  else
  {
    return 0x53746E756F636361;
  }
}

uint64_t sub_1000630F8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006303C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100063128@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063090(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100063154(char a1)
{
  if (a1)
  {
    if (qword_1001881F0 != -1)
    {
      swift_once();
    }

    v2 = &qword_10018C868;
  }

  else
  {
    if (qword_1001881E8 != -1)
    {
      swift_once();
    }

    v2 = &qword_10018C858;
  }

  v3 = *v2;
  v4 = v2[1];

  v7 = &type metadata for MailActionInfoType;
  v8 = sub_100063464();
  v6[0] = a1 & 1;
  return sub_1000ED3F8(v3, v4, 0xD00000000000004BLL, 0x8000000100136A70, v6);
}

uint64_t sub_100063254()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018C858 = result;
  unk_10018C860 = v5;
  return result;
}

uint64_t sub_10006335C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  result = String.init(localized:table:bundle:locale:comment:)();
  qword_10018C868 = result;
  unk_10018C870 = v5;
  return result;
}

unint64_t sub_100063464()
{
  result = qword_10018C878;
  if (!qword_10018C878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C878);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailActionInfoType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100063584);
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

unint64_t sub_1000635BC(uint64_t a1)
{
  result = sub_100063464();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000635E8()
{
  result = qword_10018C880;
  if (!qword_10018C880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C880);
  }

  return result;
}

unint64_t sub_10006363C(uint64_t a1)
{
  result = sub_100063664();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100063664()
{
  result = qword_10018C888;
  if (!qword_10018C888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C888);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MailStepOverrideProvider(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x100063784);
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

unint64_t sub_1000637D8(char a1)
{
  result = 0x20746E756F636341;
  switch(a1)
  {
    case 1:
      result = 0x412065766F6D6552;
      break;
    case 2:
      result = 0x20746361746E6F43;
      break;
    case 3:
      result = 0x6F63634120646441;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000638B8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001762D0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100063904(char a1)
{
  result = 0x49746E756F636361;
  switch(a1)
  {
    case 1:
      result = 0x634165766F6D6572;
      break;
    case 2:
      result = 0x53746361746E6F63;
      break;
    case 3:
      result = 0x756F636341646461;
      break;
    case 4:
      result = 0x75516E6F6D6D6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000639E8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1000E3F5C();
}

unint64_t sub_100063A0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000638B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100063A3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063904(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_100063AAC()
{
  result = qword_10018C890;
  if (!qword_10018C890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C890);
  }

  return result;
}

unint64_t sub_100063B00()
{
  result = qword_10018C898;
  if (!qword_10018C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C898);
  }

  return result;
}

uint64_t sub_100063BBC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018C8A8, &qword_100127AD8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100063C38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100063C74()
{
  result = qword_10018C8F0;
  if (!qword_10018C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C8F0);
  }

  return result;
}

unint64_t sub_100063CC8()
{
  result = qword_10018C8F8;
  if (!qword_10018C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C8F8);
  }

  return result;
}

unint64_t sub_100063D20()
{
  result = qword_10018C900;
  if (!qword_10018C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C900);
  }

  return result;
}

uint64_t sub_100063DA4(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = sub_10006451C(0x206C6C41u);
      break;
    case 3:
      result = 0x726941206F6D6544;
      break;
    case 4:
      result = 0x4120656C676E6953;
      break;
    default:
      result = 0xD00000000000001ALL;
      break;
  }

  return result;
}

unint64_t sub_100063E64(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1001763B8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100063EB0(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x6F507269416C6C61;
      break;
    case 3:
      result = sub_10006451C(0x6F6D6564u);
      break;
    case 4:
      result = 0x6941656C676E6973;
      break;
    default:
      result = 0xD000000000000018;
      break;
  }

  return result;
}

uint64_t sub_100063F6C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1000E4228();
}

unint64_t sub_100063F90@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100063E64(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100063FC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100063EB0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AirPodsOptionsOverride(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x1000640B8);
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

uint64_t sub_10006410C@<X0>(_BYTE *a1@<X8>)
{
  result = nullsub_1(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_10006417C()
{
  result = qword_10018C908;
  if (!qword_10018C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C908);
  }

  return result;
}

unint64_t sub_1000641D0()
{
  result = qword_10018C910;
  if (!qword_10018C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C910);
  }

  return result;
}

uint64_t sub_10006428C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018C920, &qword_100127CE8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100064308()
{
  result = qword_10018C968;
  if (!qword_10018C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C968);
  }

  return result;
}

unint64_t sub_10006435C()
{
  result = qword_10018C970;
  if (!qword_10018C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C970);
  }

  return result;
}

uint64_t sub_1000643E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006441C()
{
  result = qword_10018C978;
  if (!qword_10018C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C978);
  }

  return result;
}

unint64_t sub_100064470()
{
  result = qword_10018C980;
  if (!qword_10018C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C980);
  }

  return result;
}

unint64_t sub_1000644C8()
{
  result = qword_10018C988;
  if (!qword_10018C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C988);
  }

  return result;
}

uint64_t sub_100064528(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_100064568(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1000645E0()
{
  v1 = type metadata accessor for ActionInfoType(0);
  v2 = sub_10000AF7C(v1);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v26 - v16;
  __chkstk_darwin(v15);
  v19 = &v26 - v18;
  if ((*(v0 + 8) & 1) != 0 || *v0 != 6)
  {
    v23 = *(v0 + 32);
    v22 = *(v0 + 40);
    v24 = qword_100188388;

    if (v24 != -1)
    {
      swift_once();
    }

    v34 = 0u;
    v35 = 0u;
    v32 = v23;
    v33 = v22;
    v36 = 0;
    v37 = qword_1001A5990;
    v38 = *algn_1001A5998;
    v39 = 0;
    v40 = 0;
    v41 = 0;
    sub_10000EC9C(&v32, v29, &unk_1001893B0, &unk_100121480);
    v31 = 1;

    sub_100003768(&unk_1001893B0, &unk_100121480);
    sub_100004CE4();
    _ConditionalContent<>.init(storage:)();
  }

  else
  {
    v20 = *(v0 + 24);
    v26 = *(v0 + 16);
    *v19 = 2;
    swift_storeEnumTagMultiPayload();
    sub_100003CE8(v19, 0, 1, v1);
    v30 = 0;
    memset(v29, 0, sizeof(v29));
    sub_10000EC9C(v19, v17, &qword_10018ADD0, &unk_1001256A0);
    sub_10000EC9C(v29, v27, &qword_100189310, &qword_1001221A0);
    sub_10000EC9C(v17, v14, &qword_10018ADD0, &unk_1001256A0);
    if (sub_10000E5F0(v14, 1, v1) == 1)
    {

      sub_10000ABCC(v17, &qword_10018ADD0, &unk_1001256A0);
      sub_10000ABCC(v29, &qword_100189310, &qword_1001221A0);
      sub_10000ABCC(v19, &qword_10018ADD0, &unk_1001256A0);
      v21 = 0;
    }

    else
    {
      sub_10003F558(v14, v9);
      type metadata accessor for ActionInfo(0);
      sub_10003F5BC(v9, v7);

      v21 = sub_1000ED69C(v7, 1, 0, 0);
      sub_10003F620(v9);
      sub_10000ABCC(v17, &qword_10018ADD0, &unk_1001256A0);
      sub_10000ABCC(v29, &qword_100189310, &qword_1001221A0);
      sub_10000ABCC(v19, &qword_10018ADD0, &unk_1001256A0);
    }

    v34 = v27[0];
    v35 = v27[1];
    v32 = v26;
    v33 = v20;
    v36 = v28;
    v37 = 0;
    v38 = 0;
    v39 = v21;
    v40 = 0;
    v41 = 0;
    sub_10000EC9C(&v32, v29, &unk_1001893B0, &unk_100121480);
    v31 = 0;
    sub_100003768(&unk_1001893B0, &unk_100121480);
    sub_100004CE4();
    _ConditionalContent<>.init(storage:)();
  }

  return sub_10000ABCC(&v32, &unk_1001893B0, &unk_100121480);
}

unint64_t sub_100064A54()
{
  result = qword_10018C990;
  if (!qword_10018C990)
  {
    sub_100004D48(&qword_10018C998, &qword_100127EE8);
    sub_100004CE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C990);
  }

  return result;
}

uint64_t sub_100064AD8()
{
  v0 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v6 - v2;
  if (qword_100188368 != -1)
  {
    swift_once();
  }

  Date.init()();
  v4 = type metadata accessor for Date();
  sub_100003CE8(v3, 0, 1, v4);
  return Defaults.lastNotifiedAboutVPN.setter(v3);
}

uint64_t sub_100064BAC()
{
  if (sub_100061B64())
  {

    return 7;
  }

  else if (sub_1000605E8())
  {
    if (sub_10005F124())
    {
      if (sub_1000622D4())
      {
        if (sub_100062348())
        {
          return 2;
        }

        else if (sub_10005FA34() & 1) == 0 && sub_100060648() && (sub_1000606C0())
        {
          return 5;
        }

        else
        {

          return sub_100064C48();
        }
      }

      else
      {
        return 3;
      }
    }

    else
    {
      return 1;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100064C48()
{
  if (sub_10005F9B0())
  {
    return 7;
  }

  else
  {
    return 6;
  }
}

uint64_t sub_100064C6C()
{
  if ((sub_10005FA34() & 1) == 0)
  {
    return 5;
  }

  return sub_100064CA4();
}

uint64_t sub_100064CA4()
{
  if (sub_100062348())
  {
    return 2;
  }

  else
  {
    return 8;
  }
}

uint64_t sub_100064CCC()
{
  if ((sub_10005F99C() & 1) == 0)
  {
    return 4;
  }

  return sub_100064C48();
}

uint64_t sub_100064D30@<X0>(__int16 a1@<W1>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = HIBYTE(a1);
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000E7240(v4);
  v12 = v11;

  if ((v2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v13 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v14 = sub_100064CCC();

  *(a2 + 72) = &type metadata for WiFiStepProvider;
  *(a2 + 80) = sub_10000737C();
  *(a2 + 48) = v14;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  *a2 = Environment.init<A>(_:)();
  *(a2 + 8) = v15 & 1;
  if (qword_1001881C8 != -1)
  {
    swift_once();
  }

  *(a2 + 16) = qword_1001A5738;
  v20[1] = 0;
  v21 = -1;

  sub_100003768(&qword_10018A630, &qword_100128450);
  result = State.init(wrappedValue:)();
  v17 = v22;
  v18 = v23;
  v19 = v24;
  *(a2 + 96) = 0;
  *(a2 + 104) = v17;
  *(a2 + 112) = v18;
  *(a2 + 120) = v19;
  *(a2 + 32) = v10;
  *(a2 + 40) = v12;
  *(a2 + 24) = 0;
  *(a2 + 88) = 0;
  return result;
}

uint64_t sub_100064F9C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_100064FDC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100065068()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1000651A8()
{
  sub_100065290(v0);
  sub_10002D87C(v0, v3);
  v1 = swift_allocObject();
  memcpy((v1 + 16), v3, 0x80uLL);
  sub_100003768(&qword_10018C9A0, &qword_100128138);
  sub_100065AB0();
  View.onLoad(perform:)();

  return sub_10001D724(v4, &qword_10018C9A0, &qword_100128138);
}

uint64_t sub_100065290(uint64_t a1)
{
  v2 = *(a1 + 112);
  v3 = *(a1 + 120);
  *&v15 = *(a1 + 104);
  BYTE8(v15) = v2;
  v16 = v3;
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.getter();
  v4 = v14;
  if (v14 == 255)
  {
    v19 = 1;
    sub_100003768(&qword_10018C9C8, &qword_100128148);
    sub_100065BC0();
    sub_100057D3C();
    return _ConditionalContent<>.init(storage:)();
  }

  v5 = v13;
  sub_100006578(a1 + 48, &v15, &qword_100189310, &qword_1001221A0);
  if (v17)
  {
    sub_10003C91C(&v15, v10);
    if ((v4 & 1) == 0 || v5 != 2)
    {
      v7 = v11;
      v8 = v12;
      sub_100025734(v10, v11);
      v9 = *(*(v8 + 8) + 16);
      *&v15 = sub_1000C2D64(v7);
      v18 = 0;
      sub_100003768(&qword_10018BFB0, &qword_100126DB0);
      sub_100065C4C();
      _ConditionalContent<>.init(storage:)();
      sub_1000086BC(v10);
      goto LABEL_10;
    }

    sub_1000086BC(v10);
  }

  else
  {
    sub_10001D724(&v15, &qword_100189310, &qword_1001221A0);
  }

  sub_10000B2C0(*(a1 + 32), *(a1 + 40), a1 + 48, *(a1 + 88), *(a1 + 96), v5, v4 & 1);
  sub_100006578(v10, &v15, &qword_10018BFB0, &qword_100126DB0);
  v18 = 1;
  sub_100003768(&qword_10018BFB0, &qword_100126DB0);
  sub_100065C4C();
  _ConditionalContent<>.init(storage:)();
  sub_10001D724(v10, &qword_10018BFB0, &qword_100126DB0);
LABEL_10:
  sub_100006578(&v13, &v15, &qword_10018C9C8, &qword_100128148);
  v19 = 0;
  sub_100003768(&qword_10018C9C8, &qword_100128148);
  sub_100065BC0();
  sub_100057D3C();
  _ConditionalContent<>.init(storage:)();
  return sub_10001D724(&v13, &qword_10018C9C8, &qword_100128148);
}

uint64_t sub_100065548(uint64_t a1)
{
  v1[12] = a1;
  type metadata accessor for MainActor();
  v1[13] = static MainActor.shared.getter();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_1000655E0, v3, v2);
}

uint64_t sub_1000655E0()
{
  sub_100025A94();
  v1 = *(v0 + 96);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = swift_task_alloc();
  *(v0 + 128) = v4;
  *v4 = v0;
  v4[1] = sub_100065678;

  return sub_100054350();
}

uint64_t sub_100065678()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 128);
  v9 = *v0;
  *(v2 + 136) = v4;
  *(v2 + 73) = v5;

  v6 = *(v1 + 120);
  v7 = *(v1 + 112);

  return _swift_task_switch(sub_1000657A0, v7, v6);
}

uint64_t sub_1000657A0()
{
  v1 = *(v0 + 73);
  v2 = *(v0 + 136);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);

  v5 = *(v4 + 104);
  v6 = *(v4 + 112);
  v7 = *(v4 + 120);
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
  *(v0 + 32) = v7;
  *(v0 + 64) = v2;
  *(v0 + 72) = v1 & 1;
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.setter();
  *(v0 + 40) = v5;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  State.wrappedValue.getter();
  if (*(v0 + 88) != 255)
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 96);
    sub_100065068();
    sub_100085FE4();
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1000658C0()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[7];

  if (v0[11])
  {
    sub_1000086BC(v0 + 8);
  }

  if (v0[13])
  {
    v4 = v0[14];
  }

  v5 = v0[17];

  return _swift_deallocObject(v0, 144, 7);
}

uint64_t sub_100065930()
{
  sub_100025A94();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1000659C0;

  return sub_100065548(v0 + 16);
}

uint64_t sub_1000659C0()
{
  sub_100025A94();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100065AB0()
{
  result = qword_10018C9A8;
  if (!qword_10018C9A8)
  {
    sub_100004D48(&qword_10018C9A0, &qword_100128138);
    sub_100065B34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9A8);
  }

  return result;
}

unint64_t sub_100065B34()
{
  result = qword_10018C9B0;
  if (!qword_10018C9B0)
  {
    sub_100004D48(&qword_10018C9B8, &qword_100128140);
    sub_100065BC0();
    sub_100057D3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9B0);
  }

  return result;
}

unint64_t sub_100065BC0()
{
  result = qword_10018C9C0;
  if (!qword_10018C9C0)
  {
    sub_100004D48(&qword_10018C9C8, &qword_100128148);
    sub_100065C4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9C0);
  }

  return result;
}

unint64_t sub_100065C4C()
{
  result = qword_10018BFA8;
  if (!qword_10018BFA8)
  {
    sub_100004D48(&qword_10018BFB0, &qword_100126DB0);
    sub_10000B604();
    sub_10000B658();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018BFA8);
  }

  return result;
}

uint64_t sub_100065CD8()
{
  sub_100004D48(&qword_10018C9A0, &qword_100128138);
  sub_100065AB0();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_100065D3C()
{
  sub_100025A94();
  v0[14] = v1;
  v2 = type metadata accessor for Logger();
  v0[15] = v2;
  v3 = *(v2 - 8);
  v0[16] = v3;
  v4 = *(v3 + 64) + 15;
  v0[17] = swift_task_alloc();
  v0[18] = swift_task_alloc();
  v5 = swift_task_alloc();
  v0[19] = v5;
  *v5 = v0;
  v5[1] = sub_100065E30;

  return sub_10006636C();
}

uint64_t sub_100065E30()
{
  sub_100025A94();
  v2 = *v1;
  v3 = *(*v1 + 152);
  v7 = *v1;
  *(v2 + 160) = v4;
  *(v2 + 168) = v0;

  if (v0)
  {
    v5 = sub_100066124;
  }

  else
  {
    v5 = sub_100065F40;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100065F40()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  static Logger.supportFlowApp.getter();

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 160);
  if (v5)
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v6 + 16);

    _os_log_impl(&_mh_execute_header, v3, v4, "Fetched %ld reports.", v7, 0xCu);
  }

  else
  {
    v8 = *(v0 + 160);
  }

  v9 = *(v0 + 160);
  (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
  v10 = *(v9 + 16);
  v11 = *(v0 + 160);
  if (v10)
  {
    v12 = *(v0 + 112);
    v14 = v11[3];
    v13 = v11[4];
    *(v0 + 16) = v11[2];
    *(v0 + 32) = v14;
    *(v0 + 48) = v13;
    sub_10004B340(v0 + 16, v0 + 64);

    v15 = sub_1000998C4(v0 + 16, v12);
  }

  else
  {
    v16 = *(v0 + 160);

    v15 = 0;
  }

  v18 = *(v0 + 136);
  v17 = *(v0 + 144);

  v19 = *(v0 + 8);

  return v19(v15);
}

uint64_t sub_100066124()
{
  v1 = v0[21];
  v2 = _convertErrorToNSError(_:)();
  sub_100025778(0, &qword_1001893A0, NSError_ptr);
  v3 = sub_10004B038();
  v4 = static NSObject.== infix(_:_:)();

  v5 = v0[21];
  if (v4)
  {
    v7 = v0[17];
    v6 = v0[18];
    v8 = v0[21];
    swift_willThrow();

    v9 = v0[1];
    v10 = v0[21];

    return v9();
  }

  else
  {
    v12 = v0[17];
    static Logger.supportFlowApp.getter();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[21];
    if (v15)
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      swift_errorRetain();
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "Encountered error, returning report with unknown values: %@", v17, 0xCu);
      sub_1000083A0(v18);
    }

    else
    {
      v20 = v0[21];
    }

    (*(v0[16] + 8))(v0[17], v0[15]);
    v22 = v0[17];
    v21 = v0[18];

    v23 = v0[1];

    return v23(0, 1, 0, 257);
  }
}

uint64_t sub_10006636C()
{
  sub_100025A94();
  v1 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_10006643C;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 0x29286863746566, 0xE700000000000000, sub_100066580, 0, &unk_100179FE0);
}

uint64_t sub_10006643C()
{
  sub_100025A94();
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_100066568;
  }

  else
  {
    v3 = sub_10006654C;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100066580(uint64_t a1)
{
  v2 = sub_100003768(&qword_10018C9D8, &qword_100128160);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &aBlock[-1] - v5;
  sub_100025778(0, &qword_10018C9E0, DKComponentPredicate_ptr);
  v7 = sub_100066804(0x79726574746142, 0xE700000000000000, 0x6C616E7265746E49, 0xE800000000000000);
  v8 = [objc_allocWithZone(DKReportManager) init];
  sub_100003768(&qword_10018B570, &qword_100125E78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100125DA0;
  *(inited + 32) = v7;
  if (sub_100114850(inited))
  {
    v10 = v7;
    v11 = sub_100066D34(inited);
  }

  else
  {
    swift_setDeallocating();
    v12 = v7;
    sub_10006EC24();
    v11 = &_swiftEmptySetSingleton;
  }

  (*(v3 + 16))(v6, a1, v2);
  v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v14 = swift_allocObject();
  (*(v3 + 32))(v14 + v13, v6, v2);
  aBlock[4] = sub_100066F8C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000560DC;
  aBlock[3] = &unk_10017B310;
  v15 = _Block_copy(aBlock);

  sub_10006734C(v11, v15, v8);
  _Block_release(v15);
}

id sub_100066804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() componentPredicateWithType:v5 identifier:v6];

  return v7;
}

uint64_t sub_1000668A4(void *a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v37 = a2;
    swift_errorRetain();
LABEL_3:
    sub_100003768(&qword_10018C9D8, &qword_100128160);
    return CheckedContinuation.resume(throwing:)();
  }

  if (!a1)
  {
    sub_100025778(0, &qword_1001893A0, NSError_ptr);
    v37 = sub_10004AE10();
    goto LABEL_3;
  }

  isa = [a1 arrayForJSON];
  if (!isa)
  {
    sub_100003768(&qword_10018B580, &unk_100128EB0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  sub_100003768(&qword_10018B580, &unk_100128EB0);
  static Array._unconditionallyBridgeFromObjectiveC(_:)();
  static Logger.supportFlowApp.getter();

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v36 = a3;
    v16 = v15;
    v17 = swift_slowAlloc();
    v37 = v17;
    *v16 = 136315138;
    v18 = Array.description.getter();
    v20 = sub_10009CACC(v18, v19, &v37);
    v35 = v14;
    v21 = isa;
    v22 = v20;

    *(v16 + 4) = v22;
    isa = v21;
    _os_log_impl(&_mh_execute_header, v13, v35, "Successfully fetched reports: %s", v16, 0xCu);
    sub_1000086BC(v17);
  }

  (*(v7 + 8))(v10, v6);
  v23 = objc_opt_self();
  v37 = 0;
  v24 = [v23 dataWithJSONObject:isa options:0 error:&v37];

  v25 = v37;
  if (v24)
  {
    v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    v29 = type metadata accessor for JSONDecoder();
    v30 = *(v29 + 48);
    v31 = *(v29 + 52);
    swift_allocObject();
    JSONDecoder.init()();
    sub_100003768(&qword_10018C9F0, &qword_100128168);
    sub_100067454();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    sub_100008408(v26, v28);

    sub_100003768(&qword_10018C9D8, &qword_100128160);
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    v32 = v25;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    sub_100025778(0, &qword_1001893A0, NSError_ptr);
    v33 = sub_10004AEF0();

    v37 = v33;
    sub_100003768(&qword_10018C9D8, &qword_100128160);
    CheckedContinuation.resume(throwing:)();
  }
}

Swift::Int sub_100066D34(uint64_t a1)
{
  if (sub_1000C9790())
  {
    sub_100003768(&qword_10018CA08, &qword_100128170);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v20 = sub_100114850(a1);
  if (v20)
  {
    v3 = 0;
    v4 = (v2 + 7);
    v18 = a1;
    v19 = a1 & 0xC000000000000001;
    v17 = a1 + 32;
    while (1)
    {
      sub_100096700(v3, v19 == 0, a1);
      result = v19 ? specialized _ArrayBuffer._getElementSlowPath(_:)() : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = NSObject._rawHashValue(seed:)(v2[5]);
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *&v4[8 * v10];
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_100025778(0, &qword_10018C9E0, DKComponentPredicate_ptr);
        v13 = *(v2[6] + 8 * v9);
        v14 = static NSObject.== infix(_:_:)();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *&v4[8 * v10] = v12 | v11;
      *(v2[6] + 8 * v9) = v6;
      v15 = v2[2];
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      v2[2] = v16;
LABEL_17:
      a1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

uint64_t sub_100066EF8()
{
  v1 = sub_100003768(&qword_10018C9D8, &qword_100128160);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100066F8C(void *a1, void *a2)
{
  v5 = *(sub_100003768(&qword_10018C9D8, &qword_100128160) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1000668A4(a1, a2, v6);
}

uint64_t sub_100067018(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100067030(uint64_t a1)
{
  v2 = type metadata accessor for PresentationDetent();
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v38 = &v29 - v7;
  if (!*(a1 + 16))
  {
    v9 = &_swiftEmptySetSingleton;
    goto LABEL_15;
  }

  sub_100003768(&qword_10018CA10, &qword_100128178);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_15:

    return v9;
  }

  v10 = 0;
  v37 = result + 56;
  v11 = *(v34 + 80);
  v31 = a1;
  v32 = a1 + ((v11 + 32) & ~v11);
  v36 = v34 + 16;
  v12 = (v34 + 8);
  v30 = (v34 + 32);
  while (v10 < *(a1 + 16))
  {
    v13 = *(v34 + 72);
    v35 = v10 + 1;
    v14 = *(v34 + 16);
    v14(v38, v32 + v13 * v10, v2);
    v15 = v9[5];
    sub_10006752C(&qword_10018CA18);
    v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
    v17 = ~(-1 << *(v9 + 32));
    while (1)
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v37 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) == 0)
      {
        break;
      }

      v22 = v9;
      v14(v6, v9[6] + v18 * v13, v2);
      sub_10006752C(&qword_10018CA20);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v12;
      (*v12)(v6, v2);
      if (v23)
      {
        result = (v24)(v38, v2);
        v9 = v22;
        goto LABEL_12;
      }

      v16 = v18 + 1;
      v9 = v22;
    }

    v25 = v38;
    *(v37 + 8 * v19) = v21 | v20;
    result = (*v30)(v9[6] + v18 * v13, v25, v2);
    v26 = v9[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_17;
    }

    v9[2] = v28;
LABEL_12:
    v10 = v35;
    a1 = v31;
    if (v35 == v33)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

void sub_10006734C(uint64_t a1, uint64_t a2, void *a3)
{
  sub_100025778(0, &qword_10018C9E0, DKComponentPredicate_ptr);
  sub_1000673EC();
  isa = Set._bridgeToObjectiveC()().super.isa;

  [a3 reportWithComponentPredicateManifest:isa completion:a2];
}

unint64_t sub_1000673EC()
{
  result = qword_10018C9E8;
  if (!qword_10018C9E8)
  {
    sub_100025778(255, &qword_10018C9E0, DKComponentPredicate_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9E8);
  }

  return result;
}

unint64_t sub_100067454()
{
  result = qword_10018C9F8;
  if (!qword_10018C9F8)
  {
    sub_100004D48(&qword_10018C9F0, &qword_100128168);
    sub_1000674D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018C9F8);
  }

  return result;
}

unint64_t sub_1000674D8()
{
  result = qword_10018CA00;
  if (!qword_10018CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CA00);
  }

  return result;
}

uint64_t sub_10006752C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PresentationDetent();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100067574()
{
  v1 = v0;
  v2 = type metadata accessor for SupportFlowIdentifier();
  v3 = sub_100008780(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = type metadata accessor for DefaultFlowOverride();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_10000C30C();
  v15 = v14 - v13;
  sub_10002CE08(v1, v14 - v13);
  if (sub_10000E5F0(v15, 1, v2) == 1)
  {
    return 1701736270;
  }

  (*(v5 + 32))(v10, v15, v2);
  v16 = SupportFlowIdentifier.rawValue.getter();
  (*(v5 + 8))(v10, v2);
  return v16;
}

uint64_t type metadata accessor for DefaultFlowOverride()
{
  result = qword_10018CA98;
  if (!qword_10018CA98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100067714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v29 - v8;
  v10 = type metadata accessor for SupportFlowIdentifier();
  v11 = sub_100008780(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  __chkstk_darwin(v11);
  sub_10000C30C();
  v18 = (v17 - v16);
  v19 = type metadata accessor for DefaultFlowOverride();
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19);
  sub_10000C30C();
  v23 = v22 - v21;

  SupportFlowIdentifier.init(rawValue:)();
  if (sub_10000E5F0(v9, 1, v10) == 1)
  {
    sub_100067BEC(v9);
    if (a1 == 1701736302 && a2 == 0xE400000000000000)
    {

      v26 = 1;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v26 = 1;
      if ((v25 & 1) == 0)
      {
        return sub_100003CE8(a3, v26, 1, v19);
      }
    }
  }

  else
  {

    v27 = *(v13 + 32);
    v27(v18, v9, v10);
    v27(v23, v18, v10);
    v26 = 0;
  }

  sub_100003CE8(v23, v26, 1, v10);
  sub_100067C54(v23, a3);
  v26 = 0;
  return sub_100003CE8(a3, v26, 1, v19);
}

uint64_t sub_100067958()
{
  v0 = type metadata accessor for DefaultFlowOverride();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  sub_10000C30C();
  v5 = v4 - v3;
  sub_100003768(&qword_10018CB50, &unk_100128350);
  v6 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v20 = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100121620;
  v9 = type metadata accessor for SupportFlowIdentifier();
  v22 = v7;
  sub_100003CE8(v8 + v7, 1, 1, v9);
  v10 = static SupportFlowIdentifier.allCases.getter();
  v11 = *(v10 + 16);
  if (v11)
  {
    v19 = v8;
    sub_1000D1174(0, v11, 0);
    v12 = *(v9 - 8);
    v21 = *(v12 + 16);
    v13 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    v15 = v20;
    do
    {
      v21(v5, v13, v9);
      sub_100003CE8(v5, 0, 1, v9);
      v17 = _swiftEmptyArrayStorage[2];
      v16 = _swiftEmptyArrayStorage[3];
      if (v17 >= v16 >> 1)
      {
        sub_1000D1174(v16 > 1, v17 + 1, 1);
        v15 = v20;
      }

      _swiftEmptyArrayStorage[2] = (v17 + 1);
      sub_100067C54(v5, _swiftEmptyArrayStorage + v22 + v17 * v15);
      v13 += v14;
      --v11;
    }

    while (v11);

    v8 = v19;
  }

  else
  {
  }

  sub_10006ECC4(_swiftEmptyArrayStorage);
  return v8;
}

uint64_t sub_100067BC4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067574();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_100067BEC(uint64_t a1)
{
  v2 = sub_100003768(&unk_10018A300, &unk_1001241E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100067C54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DefaultFlowOverride();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100067CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SupportFlowIdentifier();
  v5 = sub_10000E5F0(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100067D28(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = type metadata accessor for SupportFlowIdentifier();

  return sub_100003CE8(a1, v5, a3, v6);
}

uint64_t sub_100067D84()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t sub_100067DDC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100067958();
  *a1 = result;
  return result;
}

uint64_t sub_100067F2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5, unint64_t *a6)
{
  *(a1 + 8) = sub_100067FEC(a4);
  result = sub_100067FEC(a6);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100067FEC(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for DefaultFlowOverride();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100068064(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018CAE8, &qword_100128268);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000680FC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = type metadata accessor for EnvironmentValues();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v10 = static Log.runtimeIssuesLog.getter();
    sub_10006897C();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v11 = sub_10006D73C();

  v12 = 0xD00000000000001BLL;
  v13 = "openApp";
  switch(v11)
  {
    case 1:
      v14 = "BATTERY_NORMAL_SUGGESTIONS";
      goto LABEL_7;
    case 2:
      v13 = "BATTERY_NORMAL_SUGGESTIONS";
      v12 = 0xD000000000000017;
      break;
    case 3:
      v14 = "BATTERY_REPORT_UNAVAILABLE";
LABEL_7:
      v13 = v14 - 32;
      v12 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if ((a2 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v15 = static Log.runtimeIssuesLog.getter();
    sub_10006897C();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v6 + 8))(v9, v5);
  }

  v16 = sub_10006C624();

  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  v26 = 0u;
  v27 = 0u;
  v28 = 0;
  v21 = Environment.init<A>(_:)();
  v22 = v17 & 1;
  v23 = v12;
  v24 = v13 | 0x8000000000000000;
  v29 = 0;
  v30 = 0;
  v25 = v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2 & 1;
  sub_1000103C8();

  View.onForeground(perform:)();

  return sub_1000688DC(&v21);
}

uint64_t sub_100068420(uint64_t a1, char a2)
{
  *(v2 + 96) = a2;
  *(v2 + 24) = a1;
  v3 = type metadata accessor for EnvironmentValues();
  *(v2 + 32) = v3;
  v4 = *(v3 - 8);
  *(v2 + 40) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 48) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v2 + 56) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v2 + 64) = v7;
  *(v2 + 72) = v6;

  return _swift_task_switch(sub_100068518, v7, v6);
}

uint64_t sub_100068518()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  if ((v1 & 1) == 0)
  {
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 32);
    static os_log_type_t.fault.getter();
    v6 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v4 + 8))(v3, v5);
    v2 = *(v0 + 16);
  }

  *(v0 + 80) = v2;
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = sub_100068650;

  return sub_10006BC38();
}

uint64_t sub_100068650()
{
  v1 = *v0;
  v2 = *(*v0 + 88);
  v3 = *(*v0 + 80);
  v7 = *v0;

  v4 = *(v1 + 72);
  v5 = *(v1 + 64);

  return _swift_task_switch(sub_100068794, v5, v4);
}

uint64_t sub_100068794()
{
  v2 = v0[6];
  v1 = v0[7];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100068808()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_100068840()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000D870;

  return sub_100068420(v2, v3);
}

uint64_t sub_10006897C()
{

  return os_log(_:dso:log:_:_:)();
}

uint64_t sub_10006899C()
{
  v1 = type metadata accessor for EnvironmentValues();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 8);
  v6 = *v0;
  v11 = *v0;
  v7 = v12;

  if ((v7 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    v8 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();
    sub_10001D724(&v11, &qword_10018CBA0, &qword_1001285B8);
    (*(v2 + 8))(v5, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_100068AF8()
{
  sub_100068BE0(v0);
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x5AuLL);
  sub_100069D2C(v0, &v3);
  sub_100003768(&qword_10018CB60, &qword_100128578);
  sub_100069D64();
  View.onLoad(perform:)();

  return sub_10001D724(v4, &qword_10018CB60, &qword_100128578);
}

uint64_t sub_100068BE0(uint64_t a1)
{
  v11 = *(a1 + 16);
  sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.getter();
  if (v18 == 1)
  {
    v17 = 0;
    sub_100003768(&qword_10018CB88, &qword_100128588);
    sub_100057D3C();
    sub_100069E74();
    return _ConditionalContent<>.init(storage:)();
  }

  v11 = *(a1 + 48);
  v12 = *(a1 + 64);
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.getter();
  if (v19 != 255 && (v19 & 1) != 0 && v18 == 2)
  {
    v3 = *(a1 + 72);
    v4 = *(a1 + 80);
    v5 = *(a1 + 88);
    v13 = &type metadata for AirPodsStepProvider;
    v14 = sub_100004C8C();
    LOBYTE(v11) = v5;
    sub_10000B2C0(v3, v4, &v11, 0, 0, v18, 1);
    sub_10001D724(&v11, &qword_100189310, &qword_1001221A0);
    sub_100006578(v9, &v11, &qword_10018BFB0, &qword_100126DB0);
    v15 = 0;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100065C4C();
    sub_100004984();
    _ConditionalContent<>.init(storage:)();
    sub_100006578(v10, &v11, &qword_10018CB98, &qword_100128590);
    v16 = 0;
    sub_100003768(&qword_10018CB98, &qword_100128590);
    sub_100069F00();
    _ConditionalContent<>.init(storage:)();
    sub_10001D724(v10, &qword_10018CB98, &qword_100128590);
    v6 = v9;
    v7 = &qword_10018BFB0;
    v8 = &qword_100126DB0;
  }

  else
  {
    v11 = *(a1 + 32);
    State.wrappedValue.getter();
    if (v18 != 1)
    {
      LOBYTE(v11) = *(a1 + 89);
      v16 = 1;
      sub_100003768(&qword_10018CB98, &qword_100128590);
      sub_100069F00();
      sub_100004984();
      _ConditionalContent<>.init(storage:)();
      goto LABEL_11;
    }

    LOBYTE(v11) = *(a1 + 88);
    v15 = 1;
    sub_100003768(&qword_10018BFB0, &qword_100126DB0);
    sub_100065C4C();
    sub_100004984();
    _ConditionalContent<>.init(storage:)();
    sub_100006578(v10, &v11, &qword_10018CB98, &qword_100128590);
    v16 = 0;
    sub_100003768(&qword_10018CB98, &qword_100128590);
    sub_100069F00();
    _ConditionalContent<>.init(storage:)();
    v6 = v10;
    v7 = &qword_10018CB98;
    v8 = &qword_100128590;
  }

  sub_10001D724(v6, v7, v8);
LABEL_11:
  sub_100006578(&v18, &v11, &qword_10018CB88, &qword_100128588);
  v17 = 1;
  sub_100003768(&qword_10018CB88, &qword_100128588);
  sub_100057D3C();
  sub_100069E74();
  _ConditionalContent<>.init(storage:)();
  return sub_10001D724(&v18, &qword_10018CB88, &qword_100128588);
}

uint64_t sub_100068FF0(uint64_t a1)
{
  v1[14] = a1;
  v2 = *(*(sub_100003768(&qword_1001888B0, &qword_1001228F0) - 8) + 64) + 15;
  v1[15] = swift_task_alloc();
  v1[16] = type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000690C4, v4, v3);
}

uint64_t sub_1000690C4()
{
  v2 = v0[16];
  v1 = v0[17];
  v4 = v0[14];
  v3 = v0[15];

  v5 = type metadata accessor for TaskPriority();
  sub_100003CE8(v3, 1, 1, v5);
  sub_100069D2C(v4, (v0 + 2));
  v6 = static MainActor.shared.getter();
  v7 = swift_allocObject();
  v7[2] = v6;
  v7[3] = &protocol witness table for MainActor;
  memcpy(v7 + 4, v4, 0x5AuLL);
  sub_100085200();

  sub_10000875C();

  return v8();
}

uint64_t sub_1000691C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[22] = a4;
  type metadata accessor for MainActor();
  v4[23] = static MainActor.shared.getter();
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[24] = v6;
  v4[25] = v5;

  return _swift_task_switch(sub_10006925C, v6, v5);
}

uint64_t sub_10006925C()
{
  sub_100025A94();
  v1 = v0[22];
  v0[26] = sub_10006899C();
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1000692F4;

  return sub_10010A154();
}

uint64_t sub_1000692F4()
{
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = v1[27];
  v5 = v1[26];
  v6 = *v0;
  sub_1000461C8();
  *v7 = v6;
  *(v9 + 157) = v8;

  v10 = v1[25];
  v11 = v1[24];

  return _swift_task_switch(sub_100069438, v11, v10);
}

uint64_t sub_100069438()
{
  v1 = *(v0 + 157);
  v2 = *(v0 + 176);
  *(v0 + 64) = *(v2 + 32);
  v3 = *(v2 + 32);
  *(v0 + 153) = v1;
  *(v0 + 80) = v3;
  *(v0 + 224) = sub_100003768(&qword_100189B68, &qword_1001239F0);
  State.wrappedValue.setter();
  *(v0 + 96) = *(v2 + 32);
  State.wrappedValue.getter();
  if (*(v0 + 154))
  {
    if (qword_1001881C8 != -1)
    {
      swift_once();
    }

    v4 = swift_task_alloc();
    *(v0 + 232) = v4;
    *v4 = v0;
    v4[1] = sub_100069614;

    return sub_100054350();
  }

  else
  {
    v6 = *(v0 + 184);

    v7 = *(v0 + 224);
    v8 = *(v0 + 176);
    v9 = sub_10006899C();
    v10 = sub_10006A104(v9);
    v12 = *(v10 + *(v11 + 136));

    sub_10006A13C(*(v0 + 64));
    v13 = *(v0 + 155);
    sub_100085FE4();

    sub_10006A114();
    sub_10000875C();

    return v14();
  }
}

uint64_t sub_100069614()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = v1[29];
  v5 = *v0;
  sub_1000461C8();
  *v6 = v5;
  *(v8 + 240) = v7;
  *(v8 + 158) = v9;

  v10 = v1[25];
  v11 = v1[24];

  return _swift_task_switch(sub_100069734, v11, v10);
}

uint64_t sub_100069734()
{
  v1 = *(v0 + 158);
  v2 = *(v0 + 240);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);

  v5 = *(v4 + 48);
  v6 = *(v4 + 64);
  *(v0 + 144) = v2;
  *(v0 + 32) = v6;
  *(v0 + 16) = v5;
  *(v0 + 152) = v1 & 1;
  sub_100003768(&qword_10018C9D0, &qword_1001285B0);
  State.wrappedValue.setter();
  v7 = *(v4 + 48);
  *(v0 + 56) = *(v4 + 64);
  *(v0 + 40) = v7;
  State.wrappedValue.getter();
  if (*(v0 + 168) != 255)
  {
    v8 = *(v0 + 160);
    v9 = *(v0 + 176);
    v10 = sub_10006899C();
    v11 = sub_10006A104(v10);
    v13 = *(v11 + *(v12 + 136));

    sub_100085FE4();
  }

  v14 = *(v0 + 224);
  v15 = *(v0 + 176);
  v16 = sub_10006899C();
  v17 = sub_10006A104(v16);
  v19 = *(v17 + *(v18 + 136));

  sub_10006A13C(*(v0 + 64));
  v20 = *(v0 + 155);
  sub_100085FE4();

  sub_10006A114();
  sub_10000875C();

  return v21();
}

uint64_t sub_1000698C8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for AirPodsFlowViewModel();
  sub_1000699F4();
  v2 = Environment.init<A>(_:)();
  v8 = v3 & 1;
  State.init(wrappedValue:)();
  State.init(wrappedValue:)();
  sub_100003768(&qword_10018A630, &qword_100128450);
  result = State.init(wrappedValue:)();
  *a1 = v2;
  *(a1 + 8) = v8;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = v7;
  *(a1 + 72) = 0xD000000000000018;
  *(a1 + 80) = 0x8000000100133320;
  *(a1 + 88) = 3083;
  return result;
}

unint64_t sub_1000699F4()
{
  result = qword_10018CB58;
  if (!qword_10018CB58)
  {
    type metadata accessor for AirPodsFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB58);
  }

  return result;
}

uint64_t sub_100069A98(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 90))
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

uint64_t sub_100069AD8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100069B5C()
{
  v1 = v0[2];

  v2 = v0[5];

  v3 = v0[7];

  v4 = v0[10];

  v5 = v0[12];

  return _swift_deallocObject(v0, 106, 7);
}

uint64_t sub_100069BB4()
{
  sub_100025A94();
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100069C44;

  return sub_100068FF0(v0 + 16);
}

uint64_t sub_100069C44()
{
  sub_100025A94();
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1000461C8();
  *v3 = v2;

  sub_10000875C();

  return v4();
}

unint64_t sub_100069D64()
{
  result = qword_10018CB68;
  if (!qword_10018CB68)
  {
    sub_100004D48(&qword_10018CB60, &qword_100128578);
    sub_100069DE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB68);
  }

  return result;
}

unint64_t sub_100069DE8()
{
  result = qword_10018CB70;
  if (!qword_10018CB70)
  {
    sub_100004D48(&qword_10018CB78, &qword_100128580);
    sub_100057D3C();
    sub_100069E74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB70);
  }

  return result;
}

unint64_t sub_100069E74()
{
  result = qword_10018CB80;
  if (!qword_10018CB80)
  {
    sub_100004D48(&qword_10018CB88, &qword_100128588);
    sub_100069F00();
    sub_100004984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB80);
  }

  return result;
}

unint64_t sub_100069F00()
{
  result = qword_10018CB90;
  if (!qword_10018CB90)
  {
    sub_100004D48(&qword_10018CB98, &qword_100128590);
    sub_100065C4C();
    sub_100004984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CB90);
  }

  return result;
}

uint64_t sub_100069F8C()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[7];

  v4 = v0[9];

  v5 = v0[12];

  v6 = v0[14];

  return _swift_deallocObject(v0, 122, 7);
}

uint64_t sub_100069FEC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10006A100;

  return sub_1000691C4(a1, v4, v5, v1 + 32);
}

uint64_t sub_10006A09C()
{
  sub_100004D48(&qword_10018CB60, &qword_100128578);
  sub_100069D64();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_10006A114()
{
  *(v1 + 128) = *(v0 + 16);
  *(v1 + 156) = 0;

  return State.wrappedValue.setter();
}

uint64_t sub_10006A13C(__n128 a1)
{
  v1[7] = a1;

  return State.wrappedValue.getter();
}

uint64_t sub_10006A15C()
{
  swift_getKeyPath();
  sub_10006B880();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  return result;
}

uint64_t sub_10006A1D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = sub_10006A15C();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  return result;
}

uint64_t sub_10006A240(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  result = sub_10006B3E4(*(v4 + 24), *(v4 + 32), *(v4 + 40), *(v4 + 48), a1, a2, a3, a4);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006B35C();
  }

  else
  {
    *(v4 + 24) = a1;
    *(v4 + 32) = a2;
    *(v4 + 40) = a3;
    *(v4 + 48) = a4;
  }

  return result;
}

uint64_t sub_10006A328()
{
  *(v0 + 16) = &_swiftEmptySetSingleton;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 1280;
  ObservationRegistrar.init()();

  sub_10006AF90();

  return v0;
}

uint64_t sub_10006A394()
{
  v0 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for TaskPriority();
  sub_100003CE8(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v5;
  sub_1000854B8();
}

uint64_t sub_10006A494(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return _swift_task_switch(sub_10006A4B4, 0, 0);
}

uint64_t sub_10006A4B4()
{
  sub_100025A94();
  v1 = *(v0 + 48);
  sub_10006BA20();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for MainActor();
    *(v0 + 64) = static MainActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_10006A598, v4, v3);
  }

  else
  {
    **(v0 + 40) = 1;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_10006A598()
{
  sub_100025A94();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);

  sub_10006BA00();

  return _swift_task_switch(sub_10006A608, 0, 0);
}

uint64_t sub_10006A630()
{
  sub_100025A94();
  *(v1 + 48) = v0;
  *(v1 + 44) = v2;
  v3 = type metadata accessor for Logger();
  *(v1 + 56) = v3;
  v4 = *(v3 - 8);
  *(v1 + 64) = v4;
  v5 = *(v4 + 64) + 15;
  *(v1 + 72) = swift_task_alloc();
  *(v1 + 80) = swift_task_alloc();
  type metadata accessor for MainActor();
  *(v1 + 88) = static MainActor.shared.getter();
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v1 + 96) = v7;
  *(v1 + 104) = v6;

  return _swift_task_switch(sub_10006A730, v7, v6);
}

uint64_t sub_10006A730()
{
  if (*(v0 + 44) != 1 || (v1 = *(v0 + 48), v2 = sub_10006A15C(), (v4 & 0xFF00) == 0x500) || (v8 = v2, (v3 & 1) != 0) && !v2 && (v4 & 0xFF00) == 0x100 && (v4 & 1) != 0)
  {
    v5 = *(v0 + 48);
    sub_10006BA00();
    v6 = swift_task_alloc();
    *(v0 + 112) = v6;
    *v6 = v0;
    v6[1] = sub_10006A8A4;

    return sub_100065D3C();
  }

  else
  {
    v9 = *(v0 + 88);

    v11 = *(v0 + 72);
    v10 = *(v0 + 80);

    v12 = *(v0 + 8);

    return v12(v8);
  }
}

uint64_t sub_10006A8A4(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v6 = *v5;
  v7 = *v5;
  v8 = *(*v5 + 112);
  v9 = *v5;
  *(v7 + 45) = a2;
  *(v7 + 120) = a1;
  *(v7 + 128) = a3;
  *(v7 + 42) = a4;
  *(v7 + 136) = v4;

  v10 = *(v6 + 104);
  v11 = *(v6 + 96);
  if (v4)
  {
    v12 = sub_10006AD04;
  }

  else
  {
    v12 = sub_10006A9F4;
  }

  return _swift_task_switch(v12, v11, v10);
}

uint64_t sub_10006A9F4()
{
  v35 = v0;
  v3 = *(v0 + 80);
  v2 = *(v0 + 88);

  static Logger.supportFlowApp.getter();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 42);
    v7 = *(v0 + 45);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v31 = *(v0 + 64);
    v32 = *(v0 + 56);
    v33 = *(v0 + 80);
    v1 = v6 >> 8;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v34 = v11;
    *v10 = 136315138;
    *(v0 + 16) = v9;
    *(v0 + 24) = v7 & 1;
    *(v0 + 32) = v8;
    *(v0 + 40) = v6 & 1;
    *(v0 + 41) = BYTE1(v6);
    v12 = String.init<A>(describing:)();
    v14 = sub_10009CACC(v12, v13, &v34);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received Report: %s", v10, 0xCu);
    sub_1000086BC(v11);
    sub_100008744();
    sub_100008744();

    (*(v31 + 8))(v33, v32);
  }

  else
  {
    v8 = *(v0 + 80);
    v9 = *(v0 + 56);
    v15 = *(v0 + 64);

    (*(v15 + 8))(v8, v9);
  }

  v16 = *(v0 + 42);
  v17 = *(v0 + 45);
  v18 = v16 >> 8;
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = sub_10006B2F8();
  if ((static Bool.allowOverrides.getter() & 1) == 0)
  {
    goto LABEL_13;
  }

  v8 = 1701736302;
  if (sub_10006F614(v21) == 1701736302 && v22 == 0xE400000000000000)
  {

    goto LABEL_13;
  }

  v8 = sub_10006B9C8();

  if (v8)
  {
LABEL_13:
    sub_10006B9EC();
    goto LABEL_14;
  }

  v24 = sub_10006B2F8();
  LOWORD(v18) = 2;
  v8 = 1;
  v9 = 100;
  v25 = 0;
  LOBYTE(v1) = 1;
  switch(v24)
  {
    case 1:
      v25 = 0;
      LOBYTE(v1) = 1;
      v9 = 72;
      v8 = 4;
      goto LABEL_20;
    case 2:
      v25 = 0;
      v8 = 1;
      v9 = 100;
      LOBYTE(v1) = 1;
      goto LABEL_20;
    case 3:
      break;
    case 4:
      v8 = 0;
      v9 = 0;
      LOBYTE(v1) = 1;
      v25 = 1;
LABEL_20:
      LOWORD(v18) = 1;
      break;
    default:
      sub_10006B9EC();
      LOWORD(v18) = v16 >> 8;
      break;
  }

LABEL_14:
  v26 = *(v0 + 48);
  sub_10006A240(v8, v1 & 1, v9, v25 & 1 | (v18 << 8));
  v28 = *(v0 + 72);
  v27 = *(v0 + 80);

  v29 = *(v0 + 8);

  return v29(v8);
}

uint64_t sub_10006AD04()
{
  v1 = v0[17];
  v2 = v0[11];
  v3 = v0[9];

  static Logger.supportFlowApp.getter();
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[17];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to fetch battery diagnostics report: %@", v8, 0xCu);
    sub_1000083A0(v9);
    sub_100008744();
    sub_100008744();
  }

  else
  {
    v11 = v0[17];
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v12 = sub_10006B2F8();
  if (static Bool.allowOverrides.getter())
  {
    if (sub_10006F614(v12) == 1701736302 && v13 == 0xE400000000000000)
    {
    }

    else
    {
      v15 = sub_10006B9C8();

      if ((v15 & 1) == 0)
      {
        v16 = 2;
        v17 = 100;
        v18 = 1;
        v19 = 0;
        switch(sub_10006B2F8())
        {
          case 1u:
            v19 = 0;
            v16 = 1;
            v17 = 72;
            v18 = 4;
            break;
          case 2u:
            v19 = 0;
            v18 = 1;
            v17 = 100;
            goto LABEL_14;
          case 3u:
            goto LABEL_15;
          default:
            goto LABEL_13;
        }

        goto LABEL_15;
      }
    }
  }

LABEL_13:
  v18 = 0;
  v17 = 0;
  v19 = 1;
LABEL_14:
  v16 = 1;
LABEL_15:
  v20 = v0[6];
  sub_10006A240(v18, 1, v17, v19 | (v16 << 8));
  v22 = v0[9];
  v21 = v0[10];

  v23 = v0[1];

  return v23(v18, 1, v17, v19 | ((v16 & 3) << 8));
}

uint64_t (*sub_10006AFF4(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v6 = swift_allocObject();
  v6[2] = a1;
  v6[3] = a2;
  v6[4] = a3;

  return sub_10006B714;
}

uint64_t sub_10006B070(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = sub_100003768(&qword_1001888B0, &qword_1001228F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = &v14 - v7;
  a1(v6);
  v9 = type metadata accessor for TaskPriority();
  sub_100003CE8(v8, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for MainActor();

  v11 = static MainActor.shared.getter();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = &protocol witness table for MainActor;
  v12[4] = v10;
  v12[5] = a1;
  v12[6] = a2;

  sub_1000854B8();
}

uint64_t sub_10006B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a1;
  v6[6] = a4;
  type metadata accessor for MainActor();
  v6[9] = static MainActor.shared.getter();
  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006B264, v8, v7);
}

uint64_t sub_10006B264()
{
  sub_100025A94();
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);

  sub_10006BA20();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    sub_10006AF90();
  }

  **(v0 + 40) = Strong == 0;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10006B2F8()
{
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    return sub_1000FB3CC();
  }

  else
  {
    return 0;
  }
}

BOOL sub_10006B3E4(uint64_t a1, char a2, uint64_t a3, __int16 a4, unint64_t a5, int a6, uint64_t a7, __int16 a8)
{
  v8 = (a4 & 0xFF00) == 1280;
  if ((a8 & 0xFF00) != 0x500)
  {
    v8 = 0;
  }

  if ((a4 & 0xFF00) != 0x500 && (a8 & 0xFF00) != 0x500)
  {
    if (a2)
    {
      switch(a1)
      {
        case 1:
          v9 = a5 == 1;
          goto LABEL_17;
        case 2:
          v9 = a5 == 2;
          goto LABEL_17;
        case 3:
          v9 = a5 == 3;
          goto LABEL_17;
        case 4:
          v9 = a5 == 4;
          goto LABEL_17;
        case 5:
          v9 = a5 == 5;
          goto LABEL_17;
        case 6:
          v9 = a5 == 6;
          goto LABEL_17;
        case 7:
          v9 = a5 == 7;
          goto LABEL_17;
        case 8:
          v10 = a5 > 7;
          goto LABEL_20;
        default:
          v9 = a5 == 0;
LABEL_17:
          v10 = v9;
LABEL_20:
          if (a6 & v10)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
      }
    }

    if (a6 & 1 | (a1 != a5))
    {
      goto LABEL_23;
    }

LABEL_21:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
LABEL_23:
        v8 = 0;
        return !v8;
      }

LABEL_26:
      v8 = (a8 ^ a4) < 0x100u;
      return !v8;
    }

    v8 = 0;
    if ((a8 & 1) == 0 && a3 == a7)
    {
      goto LABEL_26;
    }
  }

  return !v8;
}

uint64_t sub_10006B500()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC11SupportFlow25BatteryDiagnosticsManager___observationRegistrar;
  v3 = type metadata accessor for ObservationRegistrar();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v4, v5);
}

uint64_t type metadata accessor for BatteryDiagnosticsManager()
{
  result = qword_10018CBD8;
  if (!qword_10018CBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006B5F8()
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

uint64_t sub_10006B6A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_10006B2F8();
  *a1 = result;
  return result;
}

uint64_t sub_10006B6D4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006B720()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006B758()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10006B7A0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v8 = sub_100008768(v7);

  return sub_10006B1C8(v8, v9, v10, v4, v5, v6);
}

__n128 sub_10006B860()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  result = *(v0 + 24);
  *(v1 + 24) = result;
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
  return result;
}

unint64_t sub_10006B880()
{
  result = qword_10018CD20;
  if (!qword_10018CD20)
  {
    type metadata accessor for BatteryDiagnosticsManager();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018CD20);
  }

  return result;
}

uint64_t sub_10006B8E0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006B920()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = sub_100008768(v5);

  return sub_10006A494(v6, v7, v8, v4);
}

uint64_t sub_10006B9C8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10006BA00()
{

  return sub_10006A240(0, 0, 0, 1280);
}

uint64_t sub_10006BA20()
{

  return swift_beginAccess();
}

uint64_t sub_10006BA40()
{
  v1 = v0;
  sub_100003768(&qword_10018A148, &qword_100131EE0);
  sub_10006EFF8();
  sub_10000AAEC(&qword_10018A158, &qword_10018A148, &qword_100131EE0);
  swift_getKeyPath();
  v2 = *(*v0 + 200);
  sub_10000AAEC(&qword_10018D1E0, &qword_10018D1E8, &qword_1001287E0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v1 + *(*v1 + 144));
}

id *sub_10006BB60(uint64_t a1)
{
  v2 = 0;
  result = _swiftEmptyArrayStorage;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_11:
      __break(1u);
      return result;
    }

    v6 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      goto LABEL_11;
    }

    if (*(v5 + 8 * v2++))
    {

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      result = _swiftEmptyArrayStorage;
      v2 = v6;
    }
  }

  return result;
}

uint64_t sub_10006BC38()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8();
  sub_10006F37C();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  sub_10006F35C(v2, v3);

  return _swift_task_switch(sub_10006BCB8, v5, v4);
}

uint64_t sub_10006BCB8()
{
  sub_10003DCD8();
  if (qword_100188208 != -1)
  {
    sub_10006F31C();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C2D4(v1, qword_1001A5778);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Retrieving battery suggestions...", v4, 2u);
  }

  v5 = v0[2];

  v6 = *(v5 + qword_10018CD40);
  if (static Bool.allowOverrides.getter())
  {
    if (sub_10006F614(v6) == 1701736302 && v7 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        v11 = v0[2];
        v10 = v0[3];

        v12 = sub_10006DCD0();
        v13 = sub_100114850(v12);
        if (!v13)
        {

          if (qword_1001881F8 != -1)
          {
            sub_10006F2FC();
          }

          v12 = qword_10018CD28;
        }

        v14 = v13 != 0;
        v15 = v0[2];
        sub_10006C6BC(v12);
        sub_10006C574(v14);
        v16 = *(v15 + *(*v15 + 136));
        sub_10006C624();
        sub_100086430();

        sub_10000875C();

        return v17();
      }
    }
  }

  v19 = swift_task_alloc();
  v0[6] = v19;
  *v19 = v0;
  sub_10006F33C(v19);

  return sub_10006DDA0();
}

uint64_t sub_10006BF24()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v4 = v1[6];
  v5 = *v0;
  sub_1000461C8();
  *v6 = v5;
  *(v8 + 56) = v7;

  v9 = v1[5];
  v10 = v1[4];

  return _swift_task_switch(sub_10006C040, v10, v9);
}

uint64_t sub_10006C040()
{
  sub_10003DCD8();
  v1 = v0[3];

  v2 = v0[7];
  v3 = sub_100114850(v2);
  if (!v3)
  {

    if (qword_1001881F8 != -1)
    {
      sub_10006F2FC();
    }

    v2 = qword_10018CD28;
  }

  v4 = v3 != 0;
  v5 = v0[2];
  sub_10006C6BC(v2);
  sub_10006C574(v4);
  v6 = *(v5 + *(*v5 + 136));
  sub_10006C624();
  sub_100086430();

  sub_10000875C();

  return v7();
}

uint64_t sub_10006C138()
{
  swift_getKeyPath();
  sub_10006F154();
  sub_10006F2DC();

  v1 = v0 + qword_10018CD48;
  v2 = *(v0 + qword_10018CD48);
  v3 = *(v0 + qword_10018CD48 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = sub_10006F394();
  sub_10006F2C8(v6, v7, v8, v9);
  return sub_10006F394();
}

uint64_t sub_10006C1B8(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a1 + 24);
  sub_10006F2C8(*a1, v3, v4, v6);
  return sub_10006C21C(v2, v3, v4, v6);
}

uint64_t sub_10006C21C(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  swift_getKeyPath();
  sub_10006D758();
  sub_10006DCBC(a1, a2, a3, a4);
}

uint64_t sub_10006C2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v5 = a1 + qword_10018CD48;
  v6 = *(a1 + qword_10018CD48);
  v7 = *(a1 + qword_10018CD48 + 8);
  v8 = *(a1 + qword_10018CD48 + 16);
  *v5 = a2;
  *(v5 + 8) = a3;
  *(v5 + 16) = a4;
  v9 = *(v5 + 24);
  *(v5 + 24) = a5;
  sub_10006F2C8(a2, a3, a4, a5);
  return sub_10006DCBC(v6, v7, v8, v9);
}

uint64_t sub_10006C340()
{
  swift_getKeyPath();
  sub_10006F154();
  sub_10006F2DC();

  return sub_10006F36C((v0 + qword_10018CD50));
}

uint64_t sub_10006C3AC(uint64_t *a1)
{
  v2 = sub_10006F388(a1);
  result = v3(v2);
  *v1 = result;
  *(v1 + 8) = v5;
  *(v1 + 16) = v6;
  *(v1 + 24) = v7;
  return result;
}

uint64_t sub_10006C418(unint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v9 = v4 + qword_10018CD50;
  result = sub_10006D7E0(*(v4 + qword_10018CD50), *(v4 + qword_10018CD50 + 8), *(v4 + qword_10018CD50 + 16), *(v4 + qword_10018CD50 + 24), a1, a2, a3, a4);
  if (result)
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006D758();
  }

  else
  {
    *v9 = a1;
    *(v9 + 8) = a2;
    *(v9 + 16) = a3;
    *(v9 + 24) = a4;
  }

  return result;
}

uint64_t sub_10006C50C()
{
  swift_getKeyPath();
  sub_10006F154();
  sub_10006F2DC();

  return *(v0 + qword_10018CD58);
}

uint64_t sub_10006C574(uint64_t result)
{
  if (*(v1 + qword_10018CD58) == (result & 1))
  {
    *(v1 + qword_10018CD58) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006D758();
  }

  return result;
}

uint64_t sub_10006C624()
{
  swift_getKeyPath();
  sub_10006F154();
  sub_10006F2DC();

  v1 = *(v0 + qword_10018CD60);
}

uint64_t sub_10006C690(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  return sub_10006C6BC(v4);
}

uint64_t sub_10006C6BC(uint64_t a1)
{
  v3 = qword_10018CD60;
  v4 = *(v1 + qword_10018CD60);

  v6 = sub_10004C3FC(v5, a1);

  if (v6)
  {
    v7 = *(v1 + v3);
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_10006D758();
  }
}

uint64_t sub_10006C7B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + qword_10018CD60);
  *(a1 + qword_10018CD60) = a2;
}

uint64_t sub_10006C7FC()
{
  v1 = type metadata accessor for Locale();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  sub_10000C30C();
  v3 = type metadata accessor for String.LocalizationValue();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  sub_10000C30C();
  v5 = type metadata accessor for SupportFlowIdentifier();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  sub_10000C30C();
  v10 = v9 - v8;
  v11 = qword_10018CD38;
  v12 = type metadata accessor for BatteryDiagnosticsManager();
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  *(v0 + v11) = sub_10006A328();
  if (qword_100188360 != -1)
  {
    swift_once();
  }

  if (qword_1001A5950)
  {
    v15 = sub_1000FB3CC();
  }

  else
  {
    v15 = 0;
  }

  *(v0 + qword_10018CD40) = v15;
  v16 = v0 + qword_10018CD48;
  *(v16 + 8) = 0;
  *(v16 + 16) = 0;
  *v16 = 0;
  *(v16 + 24) = 0x8000;
  v17 = v0 + qword_10018CD50;
  *v17 = 0;
  *(v17 + 8) = 0;
  *(v17 + 16) = 0;
  *(v17 + 24) = 1280;
  *(v0 + qword_10018CD58) = 0;
  *(v0 + qword_10018CD60) = _swiftEmptyArrayStorage;
  ObservationRegistrar.init()();
  (*(v6 + 104))(v10, enum case for SupportFlowIdentifier.battery(_:), v5);

  sub_10010571C();
  v19 = v18;
  swift_retain_n();
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  sub_10004F504();
  String.init(localized:table:bundle:locale:comment:)();
  sub_1001061A8();
  if (qword_100188238 != -1)
  {
    swift_once();
  }

  sub_10010497C();

  return v19;
}

uint64_t sub_10006CB24()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8();
  sub_10006F37C();
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  sub_10006F35C(v2, v3);

  return _swift_task_switch(sub_10006CBA4, v5, v4);
}

uint64_t sub_10006CBA4()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  sub_10004F504();
  sub_10006C418(v2, v3, v4, 1280);
  v5 = swift_task_alloc();
  *(v0 + 48) = v5;
  *v5 = v0;
  sub_10006F33C(v5);

  return sub_10006D10C();
}

uint64_t sub_10006CC40()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 48);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v1 + 40);
  v6 = *(v1 + 32);

  return _swift_task_switch(sub_10006CD54, v6, v5);
}

uint64_t sub_10006CD54()
{
  v1 = v0[2];
  v2 = sub_10006C138();
  v6 = v2;
  v7 = v3;
  if (v5 >> 14 == 1)
  {
    v11 = v0[3];

    if (qword_100188208 != -1)
    {
      sub_10006F31C();
    }

    v12 = type metadata accessor for Logger();
    sub_10000C2D4(v12, qword_1001A5778);
    sub_10006F37C();
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v17;
      *v16 = v17;
      _os_log_impl(&_mh_execute_header, v13, v14, "Failed to run diagnostics: %@", v15, 0xCu);
      sub_100044F98(v16, &qword_100189390, &qword_1001241D0);
    }

    else
    {

      sub_10006F3A8();
    }

    goto LABEL_15;
  }

  if (v5 >> 14)
  {
    v18 = v0[3];

LABEL_15:
    sub_10006F3A8();
    goto LABEL_16;
  }

  v8 = v0[2];
  sub_10006C418(v2, v3 & 1, v4, v5 & 0xFF01);
  if ((v7 & 1) != 0 && v6 == 1)
  {
    v9 = swift_task_alloc();
    v0[7] = v9;
    *v9 = v0;
    sub_10006F33C(v9);

    return sub_10006BC38();
  }

  v19 = v0[3];

LABEL_16:
  sub_10000875C();

  return v20();
}

uint64_t sub_10006CFA0()
{
  sub_100025A94();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *v0;
  sub_10000870C();
  *v4 = v3;

  v5 = *(v1 + 40);
  v6 = *(v1 + 32);

  return _swift_task_switch(sub_10006D0B4, v6, v5);
}

uint64_t sub_10006D0B4()
{
  sub_100025A94();
  v1 = *(v0 + 24);

  sub_10000875C();

  return v2();
}

uint64_t sub_10006D10C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  *(v1 + 90) = v2;
  type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8();
  sub_10006F37C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  sub_10006F35C(v3, v4);

  return _swift_task_switch(sub_10006D190, v6, v5);
}

uint64_t sub_10006D190()
{
  sub_100025A94();
  v1 = *(v0 + 16);
  sub_10004F504();
  sub_10006C21C(v2, v3, v4, 0x8000);
  *(v0 + 48) = *(v1 + qword_10018CD38);

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_10006D250;
  v6 = *(v0 + 90);

  return sub_10006A630();
}

uint64_t sub_10006D250(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v10 = *v5;
  sub_1000461C8();
  *v11 = v10;
  v13 = *(v12 + 56);
  v14 = *v5;
  sub_10000870C();
  *v15 = v14;
  *(v10 + 64) = v4;

  if (v4)
  {
    v16 = *(v10 + 32);
    v17 = *(v10 + 40);
    v18 = sub_10006D424;
  }

  else
  {
    v19 = *(v10 + 48);

    *(v10 + 88) = a4;
    *(v10 + 91) = a2;
    *(v10 + 72) = a3;
    *(v10 + 80) = a1;
    v16 = *(v10 + 32);
    v17 = *(v10 + 40);
    v18 = sub_10006D398;
  }

  return _swift_task_switch(v18, v16, v17);
}

uint64_t sub_10006D398()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 91);
  v4 = *(v0 + 88);
  v6 = *(v0 + 16);
  v5 = *(v0 + 24);

  sub_10006C21C(v2, v3 & 1, v1, v4 & 0xFF01);
  sub_10000875C();

  return v7();
}

uint64_t sub_10006D424()
{
  sub_10003DCD8();
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[2];
  v3 = v0[3];

  swift_errorRetain();
  sub_10004F504();
  sub_10006C21C(v5, v6, v7, 0x4000);

  sub_10000875C();

  return v8();
}

uint64_t sub_10006D4B4()
{
  v0 = sub_10006C138();
  if ((v3 & 0xC000) != 0)
  {
    sub_10006DCBC(v0, v1, v2, v3);
    v4 = 3;
  }

  else
  {
    v4 = sub_10006D518(v0, v1 & 1, v2, v3 & 0x3F01);
  }

  return sub_100107BB8(v4);
}

uint64_t sub_10006D518(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  if (a2)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return sub_10006D73C();
      }
    }

    else if (a4 & 0xFF00) == 0x100 && (a4)
    {
      return 3;
    }
  }

  return 2;
}

uint64_t sub_10006D54C()
{
  sub_100025A94();
  *(v1 + 16) = v0;
  type metadata accessor for MainActor();
  *(v1 + 24) = sub_10006F3C8();
  sub_10006F37C();
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006D5D4, v3, v2);
}

void sub_10006D5D4()
{
  sub_10003DCD8();
  v1 = *(v0 + 16);
  v2 = sub_10006BA40();
  v3 = *(v0 + 16);
  if (v2)
  {
    sub_10006C340();
    v4 = *(*(v0 + 16) + *(**(v0 + 16) + 136));
    sub_100085FE4();
    v3 = *(v0 + 16);
  }

  v5 = *(v3 + *(*v3 + 136));
  _AXSAutoBrightnessEnabled();
  sub_100085FE4();
  v6 = [objc_opt_self() sharedConnection];
  if (!v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = v6;
  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = sub_10006EF28(v8, v9, v7);

  if (!v10)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v11 = *(v0 + 24);

  [v10 integerValue];

  sub_100085FE4();
  sub_10000875C();

  v12();
}

BOOL sub_10006D7E0(uint64_t a1, char a2, uint64_t a3, __int16 a4, unint64_t a5, int a6, uint64_t a7, __int16 a8)
{
  v8 = (a4 & 0xFF00) == 1280;
  if ((a8 & 0xFF00) != 0x500)
  {
    v8 = 0;
  }

  if ((a4 & 0xFF00) != 0x500 && (a8 & 0xFF00) != 0x500)
  {
    if (a2)
    {
      switch(a1)
      {
        case 1:
          v9 = a5 == 1;
          goto LABEL_17;
        case 2:
          v9 = a5 == 2;
          goto LABEL_17;
        case 3:
          v9 = a5 == 3;
          goto LABEL_17;
        case 4:
          v9 = a5 == 4;
          goto LABEL_17;
        case 5:
          v9 = a5 == 5;
          goto LABEL_17;
        case 6:
          v9 = a5 == 6;
          goto LABEL_17;
        case 7:
          v9 = a5 == 7;
          goto LABEL_17;
        case 8:
          v10 = a5 > 7;
          goto LABEL_20;
        default:
          v9 = a5 == 0;
LABEL_17:
          v10 = v9;
LABEL_20:
          if (a6 & v10)
          {
            goto LABEL_21;
          }

          goto LABEL_23;
      }
    }

    if (a6 & 1 | (a1 != a5))
    {
      goto LABEL_23;
    }

LABEL_21:
    if (a4)
    {
      if ((a8 & 1) == 0)
      {
LABEL_23:
        v8 = 0;
        return !v8;
      }

LABEL_26:
      v8 = (a8 ^ a4) < 0x100u;
      return !v8;
    }

    v8 = 0;
    if ((a8 & 1) == 0 && a3 == a7)
    {
      goto LABEL_26;
    }
  }

  return !v8;
}

uint64_t sub_10006D8FC()
{
  v1 = *(v0 + qword_10018CD38);

  v2 = sub_10006F36C((v0 + qword_10018CD48));
  sub_10006DCBC(v2, v3, v4, v5);
  v6 = *(v0 + qword_10018CD60);

  v7 = qword_10018CD68;
  v8 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v8);
  v10 = *(v9 + 8);

  return v10(v0 + v7);
}

uint64_t sub_10006D98C()
{
  v0 = sub_10011484C();
  v1 = *(v0 + qword_10018CD38);

  v2 = sub_10006F36C((v0 + qword_10018CD48));
  sub_10006DCBC(v2, v3, v4, v5);
  v6 = *(v0 + qword_10018CD60);

  v7 = qword_10018CD68;
  v8 = type metadata accessor for ObservationRegistrar();
  sub_10000C31C(v8);
  (*(v9 + 8))(v0 + v7);
  return v0;
}

uint64_t sub_10006DA1C()
{
  v0 = sub_10006D98C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for BatteryFlowViewModel()
{
  result = qword_10018CD98;
  if (!qword_10018CD98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006DABC()
{
  result = type metadata accessor for ObservationRegistrar();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006DB90(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = v1;
  v3 = v1 >> 14;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 2);
  }
}

__n128 sub_10006DBB0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_10006DBC4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      v3 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8) >> 1;
      if (v2 > 0x80000000)
      {
        v3 = ~v2;
      }

      else
      {
        v3 = -1;
      }
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_10006DC0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      *(result + 24) = 0;
      return result;
    }

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006DC6C(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 24) & 0x701 | (a2 << 14);
    *(result + 8) &= 1uLL;
    *(result + 24) = v2;
  }

  else
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2;
    *(result + 24) = 0x8000;
  }

  return result;
}

uint64_t sub_10006DCBC(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0xC000) == 0x4000)
  {
  }

  return result;
}

id *sub_10006DCD0()
{
  if (sub_10006F614(*(v0 + qword_10018CD40)) == 0xD000000000000011 && 0x80000001001330C0 == v1)
  {
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v3 & 1) == 0)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  if (qword_100188200 != -1)
  {
    swift_once();
  }
}

uint64_t sub_10006DDA0()
{
  v1 = type metadata accessor for BatterySuggestion();
  v0[2] = v1;
  v2 = *(v1 - 8);
  v0[3] = v2;
  v3 = *(v2 + 64) + 15;
  v0[4] = swift_task_alloc();
  v0[5] = type metadata accessor for MainActor();
  v0[6] = static MainActor.shared.getter();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_10006DEA0;

  return sub_10006E21C();
}

uint64_t sub_10006DEA0()
{
  sub_100025A94();
  v1 = *v0;
  sub_1000461C8();
  *v3 = v2;
  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  v8 = *v0;
  sub_10000870C();
  *v9 = v8;
  *(v11 + 64) = v10;

  v13 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10006DFD4, v13, v12);
}

uint64_t sub_10006DFD4()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0[8];
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    type metadata accessor for PlacardInfoItem(0);
    v31 = v7[9];
    v29 = v7[6];
    v30 = (v5 + v7[8]);
    v28 = (v5 + v7[5]);
    v32 = v5;
    v27 = (v5 + v7[7]);
    v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v26 = *(v6 + 72);
    v33 = v0;
    do
    {
      v37 = v3;
      v9 = v0[4];
      sub_10006F04C(v8, v9);
      v36 = UUID.uuidString.getter();
      v11 = v10;
      v35 = URL.absoluteString.getter();
      v13 = v12;
      v15 = *v30;
      v14 = v30[1];
      v16 = v28[1];
      v34 = *v28;
      v18 = *v27;
      v17 = v27[1];
      v19 = sub_10001E360(*(v32 + v29));
      v20 = sub_1000F012C(v36, v11, v35, v13, v15, v14, v34, v16, v18, v17, v19);

      sub_10006F0B0(v9);
      if (v20)
      {
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v8 += v26;
      v3 = v37 - 1;
      v0 = v33;
    }

    while (v37 != 1);
    v21 = v33[8];
  }

  else
  {
    v22 = v0[8];
  }

  v23 = v0[4];

  v24 = v0[1];

  return v24(_swiftEmptyArrayStorage);
}

uint64_t sub_10006E21C()
{
  sub_100025A94();
  v1 = *(*(sub_100003768(&qword_10018D200, &unk_100128820) - 8) + 64) + 15;
  v0[11] = swift_task_alloc();
  v2 = type metadata accessor for BatterySuggestion();
  v0[12] = v2;
  v3 = *(v2 - 8);
  v0[13] = v3;
  v4 = *(v3 + 64) + 15;
  v0[14] = swift_task_alloc();
  sub_10004F504();

  return _swift_task_switch(v5, v6, v7);
}

uint64_t sub_10006E308()
{
  v1 = batteryUISuggestionSummary();
  v2 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v3 = batteryUIInsightSummary();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10006EDD8(v2);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = v4 + 32;
    v7 = _swiftEmptyArrayStorage;
    v8 = v0[13];
    while (1)
    {
      sub_10001E894(v6, (v0 + 2));
      sub_10001E894((v0 + 2), (v0 + 6));
      sub_100003768(&qword_10018B580, &unk_100128EB0);
      v9 = swift_dynamicCast();
      v11 = v0[11];
      v10 = v0[12];
      if (v9)
      {
        sub_10001DF34(v0[10], v0[11]);
        sub_1000086BC(v0 + 2);
        if (sub_10000E5F0(v11, 1, v10) != 1)
        {
          sub_10001E8F0(v0[11], v0[14]);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = v7[2];
            sub_1000D0A10();
            v7 = v15;
          }

          v12 = v7[2];
          if (v12 >= v7[3] >> 1)
          {
            sub_1000D0A10();
            v7 = v16;
          }

          v13 = v0[14];
          v7[2] = (v12 + 1);
          sub_10001E8F0(v13, v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12);
          goto LABEL_12;
        }
      }

      else
      {
        sub_1000086BC(v0 + 2);
        sub_100003CE8(v11, 1, 1, v10);
      }

      sub_100044F98(v0[11], &qword_10018D200, &unk_100128820);
LABEL_12:
      v6 += 32;
      if (!--v5)
      {

        goto LABEL_15;
      }
    }
  }

  v7 = _swiftEmptyArrayStorage;
LABEL_15:
  v17 = v0[14];
  v18 = v0[11];

  v19 = v0[1];

  return v19(v7);
}

uint64_t sub_10006E57C()
{
  sub_100003768(&qword_10018D1F0, &qword_100128808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100121620;
  type metadata accessor for PlacardInfoItem(0);
  *(inited + 32) = sub_1000E8E48();
  v1 = sub_10006BB60(inited);
  swift_setDeallocating();
  result = sub_10006EC64();
  qword_10018CD28 = v1;
  return result;
}

uint64_t sub_10006E60C()
{
  v0 = type metadata accessor for Locale();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v2 = type metadata accessor for String.LocalizationValue();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  sub_100003768(&qword_10018D1F0, &qword_100128808);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100128690;
  type metadata accessor for PlacardInfoItem(0);
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v5 = String.init(localized:table:bundle:locale:comment:)();
  v6 = sub_1000F012C(0xD000000000000013, 0x8000000100136CC0, 0xD000000000000018, 0x8000000100136CE0, 0xD000000000000023, 0x8000000100136D00, 0x5520746E65636552, 0xEC00000065676173, 0xD000000000000062, 0x8000000100136D30, v5);

  *(inited + 32) = v6;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v7 = String.init(localized:table:bundle:locale:comment:)();
  v8 = sub_1000F012C(0xD000000000000016, 0x8000000100136DA0, 0xD000000000000020, 0x8000000100136DC0, 0xD000000000000020, 0x8000000100136DF0, 0xD000000000000010, 0x8000000100136E20, 0xD000000000000049, 0x8000000100136E40, v7);

  *(inited + 40) = v8;
  String.LocalizationValue.init(stringLiteral:)();
  static Locale.current.getter();
  v9 = String.init(localized:table:bundle:locale:comment:)();
  v10 = sub_1000F012C(0xD000000000000018, 0x8000000100136E90, 0xD00000000000003ELL, 0x8000000100136EB0, 0xD00000000000001ELL, 0x8000000100136EF0, 0xD000000000000011, 0x8000000100136F10, 0xD00000000000006FLL, 0x8000000100136F30, v9);

  *(inited + 48) = v10;
  v11 = sub_10006BB60(inited);
  swift_setDeallocating();
  result = sub_10006EC64();
  qword_10018CD30 = v11;
  return result;
}

uint64_t sub_10006E9E8()
{
  v0 = type metadata accessor for SupportFlowIdentifier();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  sub_10000C270(v5, qword_1001A5778);
  sub_10000C2D4(v5, qword_1001A5778);
  (*(v1 + 104))(v4, enum case for SupportFlowIdentifier.battery(_:), v0);
  return Logger.init(flowId:)();
}

uint64_t sub_10006EAEC(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A091C();
  *v1 = result & 1;
  return result;
}

uint64_t sub_10006EB40()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_10006F34C();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_10006EBAC(uint64_t (*a1)(void))
{
  v2 = *(*(a1(0) - 8) + 80);
  v3 = *(v1 + 16);
  swift_arrayDestroy();
  v4 = sub_10006F34C();

  return _swift_deallocClassInstance(v4, v5, v6);
}

uint64_t sub_10006EC24()
{
  v1 = *(v0 + 16);
  swift_arrayDestroy();
  v2 = sub_10006F34C();

  return _swift_deallocClassInstance(v2, v3, v4);
}

uint64_t sub_10006EC64()
{
  v1 = *(v0 + 16);
  sub_100003768(&qword_10018D1F8, &qword_100128810);
  swift_arrayDestroy();

  return _swift_deallocClassInstance(v0, 32, 7);
}

uint64_t sub_10006ECC4(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_10006EEB0(result, 1, sub_1000CFE98);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for DefaultFlowOverride();
  v8 = *(result - 8);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = *(v8 + 72);
  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v11 = *(v6 + 16);
  v12 = __OFADD__(v11, v3);
  v13 = v11 + v3;
  if (!v12)
  {
    *(v6 + 16) = v13;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10006EDD8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = sub_10006EEB0(result, 1, sub_1000D0AE8);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v7 = *(v6 + 16);
  v8 = __OFADD__(v7, v3);
  v9 = v7 + v3;
  if (!v8)
  {
    *(v6 + 16) = v9;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_10006EEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    if (*(v6 + 16) > a1)
    {
      v8 = *(v6 + 16);
    }

    result = a3();
    *v3 = result;
  }

  return result;
}

id sub_10006EF28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = String._bridgeToObjectiveC()();

  v5 = [a3 effectiveValueForSetting:v4];

  return v5;
}

uint64_t sub_10006EF8C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_1000A091C();
  *v1 = result & 1;
  return result;
}

__n128 sub_10006EFEC(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

unint64_t sub_10006EFF8()
{
  result = qword_10018D1D8;
  if (!qword_10018D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D1D8);
  }

  return result;
}

uint64_t sub_10006F04C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatterySuggestion();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006F0B0(uint64_t a1)
{
  v2 = type metadata accessor for BatterySuggestion();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006F10C(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10006C624();
  *v1 = result;
  return result;
}

unint64_t sub_10006F154()
{
  result = qword_100188710;
  if (!qword_100188710)
  {
    type metadata accessor for BatteryFlowViewModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100188710);
  }

  return result;
}

uint64_t sub_10006F1AC(uint64_t *a1)
{
  sub_10006F388(a1);
  result = sub_10006C50C();
  *v1 = result & 1;
  return result;
}

__n128 sub_10006F248()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = (*(v0 + 16) + qword_10018CD50);
  result = *(v0 + 24);
  *v3 = result;
  v3[1].n128_u64[0] = v1;
  v3[1].n128_u16[4] = v2;
  return result;
}

uint64_t sub_10006F2C8(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  if ((a4 & 0xC000) == 0x4000)
  {
    return swift_errorRetain();
  }

  return result;
}

uint64_t sub_10006F2DC()
{

  return ObservationRegistrar.access<A, B>(_:keyPath:)();
}

uint64_t sub_10006F2FC()
{

  return swift_once();
}

uint64_t sub_10006F31C()
{

  return swift_once();
}

uint64_t sub_10006F33C(uint64_t result)
{
  *(result + 8) = v1;
  v3 = *(v2 + 16);
  return result;
}

uint64_t sub_10006F35C(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_10006F36C@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 12);
  return result;
}

uint64_t sub_10006F3A8()
{

  return sub_10006DCBC(v0, v1, v2, v3);
}

uint64_t sub_10006F3C8()
{

  return static MainActor.shared.getter();
}

_BYTE *storeEnumTagSinglePayload for BatteryDiagnosticsOverride(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x10006F4ACLL);
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

unint64_t sub_10006F50C(char a1)
{
  result = 1701736270;
  switch(a1)
  {
    case 1:
      result = 0x7474614220776F4CLL;
      break;
    case 2:
      result = 0x42206C616D726F4ELL;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006F5C8(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100176508, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10006F614(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6574746142776F6CLL;
      break;
    case 2:
      result = 0x61426C616D726F6ELL;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10006F6CC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1000E3B24();
}

unint64_t sub_10006F6F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006F5C8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10006F720@<X0>(unint64_t *a1@<X8>)
{
  result = sub_10006F614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_10006F790()
{
  result = qword_10018D208;
  if (!qword_10018D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D208);
  }

  return result;
}

unint64_t sub_10006F7E4()
{
  result = qword_10018D210;
  if (!qword_10018D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D210);
  }

  return result;
}

uint64_t sub_10006F8A0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_100004D48(&qword_10018D220, &qword_100128958);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006F91C()
{
  result = qword_10018D268;
  if (!qword_10018D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D268);
  }

  return result;
}

unint64_t sub_10006F970()
{
  result = qword_10018D270;
  if (!qword_10018D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D270);
  }

  return result;
}

uint64_t sub_10006F9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10006FA2C()
{
  result = qword_10018D278;
  if (!qword_10018D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D278);
  }

  return result;
}

unint64_t sub_10006FA80()
{
  result = qword_10018D280;
  if (!qword_10018D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D280);
  }

  return result;
}

unint64_t sub_10006FADC()
{
  result = qword_10018D288;
  if (!qword_10018D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D288);
  }

  return result;
}

uint64_t sub_10006FB30(char a1)
{
  switch(a1)
  {
    case 1:
      return 0x72662F6163;
    case 14:
      return 0;
    case 7:
      return 27509;
    case 3:
      return 1701079139;
  }

  sub_10006FBD8(a1);
  countAndFlagsBits = String.lowercased()()._countAndFlagsBits;

  return countAndFlagsBits;
}

uint64_t sub_10006FBD8(char a1)
{
  result = 21825;
  switch(a1)
  {
    case 1:
      result = 1094939238;
      break;
    case 2:
      result = 16707;
      break;
    case 3:
      result = 18499;
      break;
    case 4:
      result = 20035;
      break;
    case 5:
      result = 17732;
      break;
    case 6:
      result = 21317;
      break;
    case 7:
      result = 16967;
      break;
    case 8:
      result = 17737;
      break;
    case 9:
      result = 20041;
      break;
    case 10:
      result = 21577;
      break;
    case 11:
      result = 22605;
      break;
    case 12:
      result = 23118;
      break;
    case 13:
      result = 18259;
      break;
    case 14:
      result = 21333;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_10006FCD4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100174DC0, v2);

  if (v3 >= 0xF)
  {
    return 15;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10006FD44@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006FCD4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006FD74@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10006FBD8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ServiceStatusInfoProvider(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
        JUMPOUT(0x10006FE6CLL);
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
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_10006FEA8()
{
  result = qword_10018D290;
  if (!qword_10018D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10018D290);
  }

  return result;
}

double sub_10006FF28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v5 = type metadata accessor for ActionInfoType(0);
  v6 = sub_10000AF7C(v5);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = sub_100003768(&qword_10018ADD0, &unk_1001256A0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v16);
  v21 = &v27 - v20;
  __chkstk_darwin(v19);
  v23 = &v27 - v22;
  *(&v27 - v22) = 1;
  swift_storeEnumTagMultiPayload();
  sub_100003CE8(v23, 0, 1, v5);
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  sub_10000EC9C(v23, v21, &qword_10018ADD0, &unk_1001256A0);
  sub_10000EC9C(v30, v28, &qword_100189310, &qword_1001221A0);
  sub_10000EC9C(v21, v18, &qword_10018ADD0, &unk_1001256A0);
  if (sub_10000E5F0(v18, 1, v5) == 1)
  {

    sub_10000ABCC(v21, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v30, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v23, &qword_10018ADD0, &unk_1001256A0);
    v24 = 0;
  }

  else
  {
    sub_10003F558(v18, v13);
    type metadata accessor for ActionInfo(0);
    sub_10003F5BC(v13, v11);

    v24 = sub_1000ED69C(v11, 1, 0, 0);
    sub_10003F620(v13);
    sub_10000ABCC(v21, &qword_10018ADD0, &unk_1001256A0);
    sub_10000ABCC(v30, &qword_100189310, &qword_1001221A0);
    sub_10000ABCC(v23, &qword_10018ADD0, &unk_1001256A0);
  }

  *a3 = v27;
  *(a3 + 8) = a2;
  *(a3 + 64) = 0;
  *(a3 + 72) = v24;
  result = *v28;
  v26 = v28[1];
  *(a3 + 16) = v28[0];
  *(a3 + 32) = v26;
  *(a3 + 48) = v29;
  *(a3 + 56) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  return result;
}

double sub_100070248@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for EnvironmentValues();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v14[1] = a1;
  }

  else
  {

    static os_log_type_t.fault.getter();
    v11 = static Log.runtimeIssuesLog.getter();
    os_log(_:dso:log:_:_:)();

    EnvironmentValues.init()();
    swift_getAtKeyPath();

    (*(v7 + 8))(v10, v6);
  }

  *(a3 + 72) = &type metadata for WiFiStepProvider;
  *(a3 + 80) = sub_10000737C();
  *(a3 + 48) = 7;
  type metadata accessor for FlowViewDataProvider(0);
  sub_10000B550();
  *a3 = Environment.init<A>(_:)();
  *(a3 + 8) = v12 & 1;
  *(a3 + 32) = 0xD000000000000016;
  *(a3 + 40) = 0x8000000100135C30;
  *&result = 1229343063;
  *(a3 + 16) = xmmword_100128CD0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
  return result;
}

id *sub_100070428(uint64_t a1, void (*a2)(void, void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  sub_1000780C0();
  v8 = sub_10007788C(v5, v6, v7, a1);
  sub_100077BA0();
  if (v8 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v2;
}

id *sub_1000704B4(uint64_t a1, void (*a2)(void, void), uint64_t (*a3)(void))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  a2(*(a1 + 16), 0);
  sub_1000780C0();
  v6 = a3();
  sub_100077BA0();
  if (v6 != v4)
  {
    __break(1u);
LABEL_4:

    return _swiftEmptyArrayStorage;
  }

  return v3;
}

void *sub_100070548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v313 = a2;
  v271 = a3;
  v4 = 0;
  v5 = type metadata accessor for TriageRequest.HMTContext.UserAction();
  v6 = sub_100008780(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v6);
  v13 = v266 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = v266 - v14;
  v303 = type metadata accessor for TriageRequest.HMTContext.Article();
  v16 = sub_100008780(v303);
  v291 = v17;
  v19 = *(v18 + 64);
  __chkstk_darwin(v16);
  sub_100077C50();
  v286 = v20;
  sub_10002B0CC();
  __chkstk_darwin(v21);
  sub_100077F40();
  v285 = v22;
  sub_10002B0CC();
  __chkstk_darwin(v23);
  sub_100077F40();
  v289 = v24;
  sub_10002B0CC();
  __chkstk_darwin(v25);
  sub_100077EF8();
  v288 = v26;
  sub_100077EEC();
  v287 = type metadata accessor for TriageRequest.HMTContext.BCSArticle();
  v27 = sub_100008780(v287);
  v284 = v28;
  v30 = *(v29 + 64);
  __chkstk_darwin(v27);
  sub_100077C50();
  v278 = v31;
  sub_10002B0CC();
  __chkstk_darwin(v32);
  sub_100077F40();
  v277 = v33;
  sub_10002B0CC();
  __chkstk_darwin(v34);
  sub_100077F40();
  v280 = v35;
  sub_10002B0CC();
  __chkstk_darwin(v36);
  sub_100077EF8();
  v279 = v37;
  sub_100077EEC();
  v38 = type metadata accessor for HMTSolution.Article.ArticleType();
  v39 = sub_100008780(v38);
  v276 = v40;
  v42 = *(v41 + 64);
  __chkstk_darwin(v39);
  sub_100077C50();
  v304 = v43;
  sub_10002B0CC();
  __chkstk_darwin(v44);
  sub_100077EF8();
  v305 = v45;
  sub_100077EEC();
  v46 = type metadata accessor for HMTSolution.Article();
  v307 = sub_100008780(v46);
  v308 = v47;
  v49 = *(v48 + 64);
  __chkstk_darwin(v307);
  sub_100077C50();
  v298 = v50;
  sub_10002B0CC();
  __chkstk_darwin(v51);
  sub_100077F40();
  v314 = v52;
  sub_10002B0CC();
  __chkstk_darwin(v53);
  sub_100077F40();
  v300 = v54;
  sub_10002B0CC();
  __chkstk_darwin(v55);
  sub_100077EF8();
  v306 = v56;
  sub_100077EEC();
  v270 = type metadata accessor for TriageRequest.HMTContext.UserSelection();
  v57 = sub_100008780(v270);
  v297 = v58;
  v60 = *(v59 + 64);
  __chkstk_darwin(v57);
  v269 = v266 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100077EEC();
  v321 = type metadata accessor for TriageRequest.HMTContext.SettingsGroup();
  v62 = sub_100008780(v321);
  v310 = v63;
  v65 = *(v64 + 64);
  __chkstk_darwin(v62);
  sub_100077C50();
  v320 = v66;
  sub_10002B0CC();
  __chkstk_darwin(v67);
  sub_100077EF8();
  v319 = v68;
  sub_100077EEC();
  v322 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent();
  v69 = sub_100008780(v322);
  v302 = v70;
  v72 = *(v71 + 64);
  __chkstk_darwin(v69);
  sub_100077C50();
  v318 = v73;
  sub_10002B0CC();
  __chkstk_darwin(v74);
  sub_100077EF8();
  v299 = v75;
  v76 = sub_100003768(&qword_10018D298, &qword_100128DC0);
  v77 = sub_10000ED84(v76);
  v79 = *(v78 + 64);
  __chkstk_darwin(v77);
  sub_100077C50();
  v301 = v80;
  sub_10002B0CC();
  __chkstk_darwin(v81);
  sub_100077EF8();
  v316 = v82;
  sub_100077EEC();
  v292 = type metadata accessor for HandoffBundle();
  v293 = a1;
  v83 = *(a1 + v292[6]);
  v84 = *(v83 + 16);
  v85 = _swiftEmptyArrayStorage;
  v309 = v38;
  v323 = v8;
  if (v84)
  {
    v311 = v15;
    *&v331[0] = _swiftEmptyArrayStorage;
    sub_1000780F4();
    v85 = *&v331[0];
    v317 = (v8 + 4);
    sub_100077DA4();
    v88 = sub_100075780(v86, v87);
    v315 = v88;
    v89 = v13;
    v90 = (v83 + 72);
    do
    {
      v312 = v85;
      v91 = *(v90 - 4);
      v92 = *(v90 - 3);
      v93 = *(v90 - 2);
      v94 = *(v90 - 8);
      v95 = *v90;
      v336[0] = *(v90 - 5);
      v336[1] = v91;
      v336[2] = v92;
      v336[3] = v93;
      v337 = v94;
      v338 = v95;
      __chkstk_darwin(v88);
      sub_100077FA0();
      *(v96 - 16) = v336;

      sub_100077FC0();

      v85 = v312;
      sub_1000780D4();
      if (v98)
      {
        sub_100077FF4(v97);
        v85 = *&v331[0];
      }

      v85[2] = v93;
      v8 = v323;
      v99 = *(v323 + 80);
      sub_100077EAC();
      v88 = (v8[4])(v85 + v100 + v8[9] * v91, v89, v5);
      v90 += 6;
      --v84;
    }

    while (v84);
    v15 = v311;
  }

  v312 = v85;
  v101 = *(v293 + v292[7]);
  v102 = *(v101 + 16);
  if (v102)
  {
    *&v331[0] = _swiftEmptyArrayStorage;
    sub_1000780F4();
    v103 = *&v331[0];
    v317 = (v8 + 4);
    sub_100077DA4();
    v106 = sub_100075780(v104, v105);
    v315 = v106;
    v107 = (v101 + 72);
    do
    {
      v311 = v103;
      v8 = v266;
      v108 = *(v107 - 4);
      v109 = *(v107 - 3);
      v110 = *(v107 - 2);
      v111 = *(v107 - 8);
      v112 = *v107;
      v333[0] = *(v107 - 5);
      v333[1] = v108;
      v333[2] = v109;
      v333[3] = v110;
      v334 = v111;
      v335 = v112;
      __chkstk_darwin(v106);
      sub_100077FA0();
      *(v113 - 16) = v333;

      sub_100077FC0();

      v103 = v311;
      sub_1000780D4();
      if (v98)
      {
        sub_100077FF4(v114);
        v103 = *&v331[0];
      }

      v103[2] = v108;
      v115 = *(v323 + 80);
      sub_100077EAC();
      v106 = (*(v117 + 32))(v103 + v116 + *(v117 + 72) * v110, v15, v5);
      v107 += 6;
      v102 = (v102 - 1);
    }

    while (v102);
  }

  else
  {
    v103 = _swiftEmptyArrayStorage;
  }

  v311 = v103;
  v330 = _swiftEmptyArrayStorage;
  v329 = _swiftEmptyArrayStorage;
  v328 = _swiftEmptyArrayStorage;
  v327 = _swiftEmptyArrayStorage;
  v118 = *(*(v293 + v292[8]) + 16);
  if (v118)
  {
    sub_100077F24();
    v296 = (v119 + 88);
    v295 = *v120;
    LODWORD(v283) = *v121;
    LODWORD(v282) = *v122;
    v275 = *v123;
    v294 = (v124 + 8);
    v267 = (v284 + 16);
    v268 = (v119 + 8);
    v266[1] = v284 + 32;
    v266[2] = v284 + 8;
    v273 = v291 + 8;
    v274 = (v291 + 16);
    v272 = v291 + 32;
    v126 = v125 + 56;
    v281 = _swiftEmptyArrayStorage;
    v290 = _swiftEmptyArrayStorage;
    while (1)
    {
      v127 = *(v313 + 32);
      if (*(v127 + 16))
      {
        break;
      }

LABEL_23:
      v126 += 32;
      if (!--v118)
      {
        goto LABEL_43;
      }
    }

    sub_100078030();

    v128 = sub_100083754(v8, v102);
    if (v129)
    {
      v131 = v307;
      v130 = v308;
      v132 = v298;
      (v308[2])(v298, *(v127 + 56) + v308[9] * v128, v307);

      v133 = v314;
      (v130[4])(v314, v132, v131);
      v134 = v304;
      HMTSolution.Article.type.getter();
      v135 = (*v296)(v134, v309);
      if (v135 != v295)
      {
        if (v135 == v283 || v135 == v282)
        {
          __chkstk_darwin(v135);
          sub_100077DF0(v266);
          *(v137 - 16) = v133;
          sub_100077D5C();
          sub_100075780(&qword_10018D2D0, v138);
          sub_100078144();

          v139 = *v274;
          sub_100078074();
          v140();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v153 = v290[2];
            sub_100077CBC();
            sub_1000D063C();
            v290 = v154;
          }

          sub_100077DE0(v290);
          if (v98)
          {
            sub_100077C78(v141);
            sub_1000D063C();
            v290 = v155;
          }

          v8 = v291;
          v142 = v303;
          (*(v291 + 8))(v285, v303);
          v102 = v290;
          v143 = sub_100077C2C();
          v144(v143, v286, v142);
          v330 = v102;
          goto LABEL_41;
        }

        if (v135 == v275)
        {
          __chkstk_darwin(v135);
          sub_100077DF0(v266);
          *(v145 - 16) = v133;
          sub_100077D44();
          sub_100075780(&qword_10018D2C8, v146);
          v147 = v277;
          v148 = v287;
          sub_100078144();

          (*v267)(v278, v147, v148);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v156 = v281[2];
            sub_100077CBC();
            sub_1000D0564();
            v281 = v157;
          }

          sub_100077DE0(v281);
          if (v98)
          {
            sub_100077C78(v149);
            sub_1000D0564();
            v281 = v158;
          }

          v8 = v284;
          v150 = v287;
          (*(v284 + 8))(v277, v287);
          v102 = v281;
          v151 = sub_100077C2C();
          v152(v151, v278, v150);
          v328 = v102;
LABEL_41:
          (*v294)(v314, v307);
          goto LABEL_23;
        }

        (*v294)(v133, v307);

        (*v268)(v304, v309);
        goto LABEL_22;
      }

      (*v294)(v133, v131);
    }

    else
    {
    }

LABEL_22:
    v4 = v323;
    goto LABEL_23;
  }

LABEL_43:
  v159 = *(*(v293 + v292[9]) + 16);
  if (v159)
  {
    sub_100077F24();
    v314 = (v160 + 88);
    LODWORD(v304) = enum case for HMTSolution.Article.ArticleType.unknown(_:);
    v295 = enum case for HMTSolution.Article.ArticleType.support(_:);
    LODWORD(v294) = enum case for HMTSolution.Article.ArticleType.userGuide(_:);
    LODWORD(v286) = enum case for HMTSolution.Article.ArticleType.apple(_:);
    v298 = (v161 + 8);
    v278 = (v284 + 16);
    v276 = v284 + 32;
    v277 = v284 + 8;
    v285 = (v291 + 16);
    v283 = v291 + 8;
    v281 = (v160 + 8);
    v282 = v291 + 32;
    v163 = v162 + 56;
    v290 = _swiftEmptyArrayStorage;
    v296 = _swiftEmptyArrayStorage;
    v164 = v307;
    do
    {
      v165 = *(v313 + 32);
      if (*(v165 + 16))
      {
        sub_100078030();

        v166 = sub_100083754(v8, v102);
        if (v167)
        {
          v168 = v308;
          v169 = v300;
          (v308[2])(v300, *(v165 + 56) + v308[9] * v166, v164);

          v170 = v306;
          (v168[4])(v306, v169, v164);
          v171 = v164;
          v172 = v305;
          HMTSolution.Article.type.getter();
          v173 = (*v314)(v172, v309);
          if (v173 == v304)
          {
            (*v298)(v170, v171);

            v164 = v171;
          }

          else
          {
            if (v173 == v295 || v173 == v294)
            {
              __chkstk_darwin(v173);
              sub_100077DF0(v266);
              *(v175 - 16) = v306;
              sub_100077D5C();
              sub_100075780(&qword_10018D2D0, v176);
              sub_100078144();

              v177 = *v285;
              sub_100078074();
              v178();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v164 = v307;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v193 = v296[2];
                sub_100077CBC();
                sub_1000D063C();
                v296 = v194;
              }

              sub_100077DE0(v296);
              if (v98)
              {
                sub_100077C78(v180);
                sub_1000D063C();
                v296 = v195;
              }

              v8 = v291;
              v181 = v303;
              (*(v291 + 8))(v288, v303);
              v102 = v296;
              v182 = sub_100077C2C();
              v183(v182, v289, v181);
              v329 = v102;
              goto LABEL_70;
            }

            v164 = v307;
            if (v173 == v286)
            {
              __chkstk_darwin(v306);
              sub_100077DF0(v266);
              *(v185 - 16) = v184;
              sub_100077D44();
              sub_100075780(&qword_10018D2C8, v186);
              v187 = v279;
              v188 = v287;
              sub_100078144();

              (*v278)(v280, v187, v188);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v196 = v290[2];
                sub_100077CBC();
                sub_1000D0564();
                v290 = v197;
              }

              sub_100077DE0(v290);
              if (v98)
              {
                sub_100077C78(v189);
                sub_1000D0564();
                v290 = v198;
              }

              v8 = v284;
              v190 = v287;
              (*(v284 + 8))(v279, v287);
              v102 = v290;
              v191 = sub_100077C2C();
              v192(v191, v280, v190);
              v327 = v102;
LABEL_70:
              (*v298)(v306, v164);
              goto LABEL_51;
            }

            (*v298)(v306, v307);

            (*v281)(v305, v309);
          }
        }

        else
        {
        }

        v4 = v323;
      }

LABEL_51:
      v163 += 32;
      --v159;
    }

    while (v159);
  }

  v200 = v292;
  v199 = v293;
  v201 = sub_100074238(*(v293 + v292[10]));
  result = sub_100074238(*(v199 + v200[11]));
  v309 = result;
  v203 = 0;
  v205 = v201 + 8;
  v204 = v201[8];
  v300 = v201;
  v206 = 1 << *(v201 + 32);
  v207 = _swiftEmptyArrayStorage;
  v326 = _swiftEmptyArrayStorage;
  v208 = -1;
  if (v206 < 64)
  {
    v208 = ~(-1 << v206);
  }

  v209 = v208 & v204;
  v210 = (v206 + 63) >> 6;
  v211 = v301;
  v298 = (v302 + 16);
  v315 = (v302 + 32);
  v306 = (v310 + 16);
  v307 = v210;
  v304 = v310 + 32;
  v305 = v310 + 8;
  v303 = (v302 + 8);
  v308 = v201 + 8;
  while (1)
  {
    v212 = v316;
    v317 = v207;
    if (!v209)
    {
      break;
    }

    v323 = v4;
    v213 = v203;
LABEL_80:
    v214 = __clz(__rbit64(v209));
    v209 &= v209 - 1;
    v215 = v214 | (v213 << 6);
    v216 = v299;
    v217 = v300[7];
    v218 = v300[6] + 16 * v215;
    v219 = *(v218 + 8);
    v314 = *v218;
    v220 = v302;
    v221 = v322;
    (*(v302 + 16))(v299, v217 + *(v302 + 72) * v215, v322);
    v222 = sub_100003768(&qword_10018D2A8, &qword_100128DC8);
    v223 = *(v222 + 48);
    v224 = v301;
    *v301 = v314;
    *(v224 + 1) = v219;
    v225 = v216;
    v211 = v224;
    (*(v220 + 32))(&v224[v223], v225, v221);
    sub_100003CE8(v211, 0, 1, v222);

    v212 = v316;
    v4 = v323;
LABEL_81:
    sub_1000754A8(v211, v212);
    v226 = sub_100003768(&qword_10018D2A8, &qword_100128DC8);
    if (sub_10000E5F0(v212, 1, v226) == 1)
    {

      v248 = *(v293 + v292[12]);
      v249 = *(v248 + 16);
      v250 = _swiftEmptyArrayStorage;
      if (v249)
      {
        v325 = _swiftEmptyArrayStorage;
        sub_1000D11CC(0, v249, 0);
        v250 = v325;
        v252 = (v248 + 32);
        v323 = (v297 + 32);
        v254 = v269;
        v253 = v270;
        do
        {
          v255 = *v252;
          v256 = v252[1];
          v257 = v252[2];
          v332 = *(v252 + 6);
          v331[1] = v256;
          v331[2] = v257;
          v331[0] = v255;
          __chkstk_darwin(v251);
          sub_100077FA0();
          *(v258 - 16) = v331;
          sub_100075534(v331, &v324);
          sub_100075780(&qword_10018D2B0, &type metadata accessor for TriageRequest.HMTContext.UserSelection);
          static Message.with(_:)();
          sub_100075590(v331);
          v325 = v250;
          v260 = v250[2];
          v259 = v250[3];
          if (v260 >= v259 >> 1)
          {
            sub_1000D11CC(v259 > 1, v260 + 1, 1);
            v250 = v325;
          }

          v250[2] = (v260 + 1);
          v261 = *(v297 + 80);
          sub_100077EAC();
          v251 = (*(v263 + 32))(v250 + v262 + *(v263 + 72) * v260, v254, v253);
          v252 = (v252 + 56);
          --v249;
        }

        while (v249);
      }

      v264 = type metadata accessor for TriageRequest.HMTContext();
      __chkstk_darwin(v264);
      v265 = v311;
      v266[-8] = v312;
      v266[-7] = v265;
      v266[-6] = &v330;
      v266[-5] = &v329;
      v266[-4] = &v328;
      v266[-3] = &v327;
      v266[-2] = &v326;
      v266[-1] = v250;
      sub_100075780(&qword_10018D2B8, &type metadata accessor for TriageRequest.HMTContext);
      static Message.with(_:)();
    }

    v227 = v212;
    v229 = *v212;
    v228 = v212[1];
    v230 = v318;
    v231 = (*v315)(v318, v227 + *(v226 + 48), v322);
    __chkstk_darwin(v231);
    v266[-4] = v229;
    v266[-3] = v228;
    v232 = v309;
    v266[-2] = v230;
    v266[-1] = v232;
    sub_100075780(&qword_10018D2C0, &type metadata accessor for TriageRequest.HMTContext.SettingsGroup);
    v233 = v319;
    v234 = v321;
    static Message.with(_:)();

    (*v306)(v320, v233, v234);
    v235 = v317;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v245 = v235[2];
      sub_100077CBC();
      sub_1000D048C();
      v235 = v246;
    }

    v236 = v211;
    v238 = v235[2];
    v237 = v235[3];
    if (v238 >= v237 >> 1)
    {
      sub_100077C78(v237);
      sub_1000D048C();
      v239 = v247;
    }

    else
    {
      v239 = v235;
    }

    v240 = v310;
    v241 = v321;
    (*(v310 + 8))(v319, v321);
    v239[2] = (v238 + 1);
    v242 = *(v240 + 80);
    sub_100077EAC();
    v207 = v239;
    (*(v240 + 32))(v239 + v243 + *(v240 + 72) * v238, v320, v241);
    v326 = v239;
    result = (*v303)(v318, v322);
    v210 = v307;
    v205 = v308;
    v211 = v236;
  }

  while (1)
  {
    v213 = v203 + 1;
    if (__OFADD__(v203, 1))
    {
      break;
    }

    if (v213 >= v210)
    {
      v244 = sub_100003768(&qword_10018D2A8, &qword_100128DC8);
      sub_100003CE8(v211, 1, 1, v244);
      v209 = 0;
      goto LABEL_81;
    }

    v209 = v205[v213];
    ++v203;
    if (v209)
    {
      v323 = v4;
      v203 = v213;
      goto LABEL_80;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100071D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[24] = a3;
  v4[25] = a4;
  v4[22] = a1;
  v4[23] = a2;
  v5 = type metadata accessor for ContactType();
  v4[26] = v5;
  sub_100052F6C(v5);
  v4[27] = v6;
  v8 = *(v7 + 64);
  v4[28] = sub_100052FA4();
  v9 = type metadata accessor for Logger();
  v4[29] = v9;
  sub_100052F6C(v9);
  v4[30] = v10;
  v12 = *(v11 + 64);
  v4[31] = sub_100052FA4();
  v13 = type metadata accessor for UUID();
  v4[32] = v13;
  sub_100052F6C(v13);
  v4[33] = v14;
  v16 = *(v15 + 64);
  v4[34] = sub_100052FA4();
  v17 = type metadata accessor for DeviceExpertTroubleshooting.UserSelection();
  v4[35] = v17;
  sub_100052F6C(v17);
  v4[36] = v18;
  v20 = *(v19 + 64);
  v4[37] = sub_100052FA4();
  v21 = type metadata accessor for DeviceExpertTroubleshooting.Setting();
  v4[38] = v21;
  sub_100052F6C(v21);
  v4[39] = v22;
  v24 = *(v23 + 64);
  v4[40] = sub_100052FA4();
  v25 = type metadata accessor for DeviceExpertTroubleshooting.Article();
  v4[41] = v25;
  sub_100052F6C(v25);
  v4[42] = v26;
  v28 = *(v27 + 64);
  v4[43] = sub_100052FA4();
  v29 = type metadata accessor for Date();
  v4[44] = v29;
  sub_100052F6C(v29);
  v4[45] = v30;
  v32 = *(v31 + 64);
  v4[46] = sub_100052FA4();
  v33 = sub_100003768(&qword_10018C850, &qword_1001277D0);
  sub_10000ED84(v33);
  v35 = *(v34 + 64) + 15;
  v4[47] = swift_task_alloc();
  v4[48] = swift_task_alloc();
  v4[49] = swift_task_alloc();
  v4[50] = swift_task_alloc();
  v36 = type metadata accessor for DeviceExpertTroubleshooting.ActionType();
  v4[51] = v36;
  sub_100052F6C(v36);
  v4[52] = v37;
  v39 = *(v38 + 64) + 15;
  v4[53] = swift_task_alloc();
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v40 = type metadata accessor for DeviceExpertTroubleshooting.Action();
  v4[59] = v40;
  sub_100052F6C(v40);
  v4[60] = v41;
  v43 = *(v42 + 64);
  v4[61] = sub_100052FA4();
  v44 = type metadata accessor for DeviceExpertTroubleshooting.Entity();
  v4[62] = v44;
  sub_100052F6C(v44);
  v4[63] = v45;
  v47 = *(v46 + 64);
  v4[64] = sub_100052FA4();
  v48 = type metadata accessor for DeviceExpertTroubleshooting.Interaction();
  v4[65] = v48;
  sub_100052F6C(v48);
  v4[66] = v49;
  v51 = *(v50 + 64) + 15;
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();
  v4[71] = swift_task_alloc();
  v52 = type metadata accessor for DeviceExpertTroubleshooting();
  v4[72] = v52;
  sub_100052F6C(v52);
  v4[73] = v53;
  v55 = *(v54 + 64);
  v4[74] = sub_100052FA4();
  v56 = sub_100003768(&qword_10018D300, &qword_100128DE8);
  sub_10000ED84(v56);
  v58 = *(v57 + 64);
  v4[75] = sub_100052FA4();
  v59 = sub_100003768(&qword_10018D308, &qword_100128DF0);
  v4[76] = v59;
  sub_100052F6C(v59);
  v4[77] = v60;
  v62 = *(v61 + 64);
  v4[78] = sub_100052FA4();
  v63 = sub_100003768(&qword_10018D310, &qword_100128DF8);
  v4[79] = v63;
  sub_100052F6C(v63);
  v4[80] = v64;
  v66 = *(v65 + 64);
  v4[81] = sub_100052FA4();

  return _swift_task_switch(sub_1000722C8, 0, 0);
}

uint64_t sub_1000722C8()
{
  v1 = *(v0 + 624);
  v2 = *(v0 + 616);
  v16 = *(v0 + 608);
  v17 = *(v0 + 648);
  v3 = *(v0 + 184);
  sub_100077CF4();
  v19 = Dictionary.init(dictionaryLiteral:)();
  sub_100077CF4();
  v18 = Dictionary.init(dictionaryLiteral:)();
  sub_100077CF4();
  v15 = sub_10007812C();
  sub_100077CF4();
  v14 = sub_10007812C();
  sub_100077CF4();
  v4 = sub_10007812C();
  sub_100077CF4();
  v5 = sub_10007812C();
  sub_100077CF4();
  v6 = Dictionary.init(dictionaryLiteral:)();
  *(v0 + 96) = v3;
  sub_100003768(&qword_10018D318, &qword_100128E00);
  sub_10000AAEC(&qword_10018D320, &qword_10018D318, &qword_100128E00);
  Publisher.values.getter();
  AsyncThrowingPublisher.makeAsyncIterator()();
  v7 = *(v2 + 8);
  v8 = sub_100077DD4();
  v9(v8);
  *(v0 + 784) = enum case for DeviceExpertTroubleshooting.Entity.action(_:);
  *(v0 + 788) = enum case for DeviceExpertTroubleshooting.Entity.article(_:);
  *(v0 + 792) = enum case for DeviceExpertTroubleshooting.Entity.setting(_:);
  *(v0 + 796) = enum case for DeviceExpertTroubleshooting.Entity.selection(_:);
  *(v0 + 800) = enum case for DeviceExpertTroubleshooting.ActionType.suggested(_:);
  *(v0 + 760) = v19;
  *(v0 + 752) = v18;
  *(v0 + 744) = v15;
  *(v0 + 736) = v14;
  *(v0 + 728) = v4;
  *(v0 + 720) = v5;
  *(v0 + 712) = v6;
  *(v0 + 704) = v19;
  *(v0 + 696) = v18;
  *(v0 + 688) = v15;
  *(v0 + 680) = v6;
  *(v0 + 672) = v5;
  *(v0 + 664) = v4;
  *(v0 + 656) = v14;
  sub_100077E00(&qword_10018D328, &qword_10018D310, &qword_100128DF8);
  v10 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
  v11 = swift_task_alloc();
  *(v0 + 768) = v11;
  *v11 = v0;
  v12 = sub_100077D00(v11);

  return dispatch thunk of AsyncIteratorProtocol.next()(v12);
}

uint64_t sub_10007254C()
{
  v2 = *(*v1 + 768);
  v5 = *v1;
  *(*v1 + 776) = v0;

  if (v0)
  {
    v3 = sub_100073F44;
  }

  else
  {
    v3 = sub_100072660;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_100072660()
{
  v487 = v0;
  v1 = *(v0 + 600);
  v2 = *(v0 + 576);
  if (sub_10000E5F0(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 248);
    (*(*(v0 + 640) + 8))(*(v0 + 648), *(v0 + 632));
    static Logger.supportFlowApp.getter();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Biome stream read finished", v6, 2u);
    }

    v7 = *(v0 + 776);
    v8 = *(v0 + 760);
    v9 = *(v0 + 248);
    v10 = *(v0 + 232);
    v11 = *(v0 + 240);
    v12 = v4;
    v13 = *(v0 + 216);
    v14 = *(v0 + 224);
    v15 = *(v0 + 208);
    v16 = *(v0 + 192);

    (*(v11 + 8))(v9, v10);
    (*(v13 + 16))(v14, v16, v15);

    sub_100077DBC();
    v19 = sub_1000704B4(v17, v18, sub_1000779F8);
    sub_100078018(v19);
    sub_1000758C0(v486);
    if (!v7)
    {
      v20 = *(v0 + 752);

      v21 = v486[0];

      sub_100077DBC();
      v24 = sub_1000704B4(v22, v23, sub_1000779F8);
      sub_100078018(v24);
      sub_1000758C0(v486);
      v25 = *(v0 + 744);

      v26 = v486[0];

      v28 = sub_100077E68(v27);
      sub_100078018(v28);
      sub_100077D8C();
      sub_100075834(v486, v29, v30, sub_1000D1EFC);
      v31 = *(v0 + 736);

      v32 = v486[0];

      v34 = sub_100077E68(v33);
      sub_100078018(v34);
      sub_100077D8C();
      sub_100075834(v486, v35, v36, sub_1000D1EFC);
      v37 = *(v0 + 728);

      v38 = v486[0];

      v40 = sub_100077E34(v39);
      sub_100078018(v40);
      sub_100077D74();
      sub_100075834(v486, v41, v42, sub_1000D1EFC);
      v43 = *(v0 + 720);

      v44 = v486[0];

      v46 = sub_100077E34(v45);
      sub_100078018(v46);
      sub_100077D74();
      sub_100075834(v486, v47, v48, sub_1000D1EFC);
      v49 = *(v0 + 712);

      v50 = v486[0];

      v486[0] = sub_1000704B4(v51, sub_1000D0EBC, sub_1000776E4);

      sub_1000757C8(v486);
      v435 = *(v0 + 744);
      v436 = *(v0 + 752);
      v434 = *(v0 + 736);
      v431 = *(v0 + 728);
      v428 = *(v0 + 712);
      v429 = *(v0 + 720);
      v437 = *(v0 + 648);
      v438 = *(v0 + 624);
      v439 = *(v0 + 760);
      v440 = *(v0 + 600);
      v441 = *(v0 + 592);
      v442 = *(v0 + 568);
      v443 = *(v0 + 560);
      v444 = *(v0 + 552);
      v445 = *(v0 + 544);
      v446 = *(v0 + 536);
      v447 = *(v0 + 512);
      v448 = *(v0 + 488);
      v449 = *(v0 + 464);
      v450 = *(v0 + 456);
      v451 = *(v0 + 448);
      v452 = *(v0 + 440);
      v453 = *(v0 + 432);
      v455 = *(v0 + 424);
      v456 = *(v0 + 400);
      v458 = *(v0 + 392);
      v460 = *(v0 + 384);
      v465 = *(v0 + 376);
      v468 = *(v0 + 368);
      v471 = *(v0 + 344);
      v474 = *(v0 + 320);
      v477 = *(v0 + 296);
      v483 = *(v0 + 272);
      v485 = *(v0 + 248);
      v417 = v0;
      v420 = v0 + 216;
      v419 = *(v0 + 216);
      v418 = *(v420 + 8);
      v432 = v50;
      v433 = v44;
      v421 = v417[26];
      v427 = v417[25];
      v422 = v417[22];

      v430 = v486[0];
      (*(v419 + 32))(v422, v418, v421);
      sub_10007592C(v427, (v417 + 2));

      v423 = type metadata accessor for HandoffBundle();
      memcpy((v422 + v423[5]), v427, 0x50uLL);
      *(v422 + v423[6]) = v21;
      *(v422 + v423[7]) = v26;
      *(v422 + v423[8]) = v32;
      *(v422 + v423[9]) = v38;
      *(v422 + v423[10]) = v433;
      *(v422 + v423[11]) = v432;
      *(v422 + v423[12]) = v430;

      v424 = v417[1];
      sub_100077F04();

      __asm { BRAA            X1, X16 }
    }

    sub_100077F04();
    return;
  }

  v478 = *(v0 + 784);
  v52 = *(v0 + 568);
  v53 = *(v0 + 528);
  v54 = *(v0 + 520);
  v56 = *(v0 + 504);
  v55 = *(v0 + 512);
  v57 = *(v0 + 496);
  (*(*(v0 + 584) + 32))(*(v0 + 592), v1, v2);
  DeviceExpertTroubleshooting.interaction.getter();
  DeviceExpertTroubleshooting.Interaction.entity.getter();
  v60 = *(v53 + 8);
  v59 = v53 + 8;
  v58 = v60;
  v60(v52, v54);
  v61 = (*(v56 + 88))(v55, v57);
  if (v61 != v478)
  {
    if (v61 != *(v0 + 788))
    {
      if (v61 != *(v0 + 792))
      {
        v192 = *(v0 + 592);
        if (v61 != *(v0 + 796))
        {
          v295 = *(v0 + 504);
          v294 = *(v0 + 512);
          v296 = *(v0 + 496);
          (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
          v297 = *(v295 + 8);
          v129 = v295 + 8;
          v298 = sub_100077FE8();
          v299(v298);
          sub_100077CCC();
          sub_100077F68();
          sub_100077CA4();
          v123 = *(v0 + 672);
          v121 = *(v0 + 664);
          goto LABEL_118;
        }

        v193 = *(v0 + 512);
        v195 = *(v0 + 288);
        v194 = *(v0 + 296);
        v196 = *(v0 + 280);
        (*(*(v0 + 504) + 96))(v193, *(v0 + 496));
        v197 = *v193;
        v198 = swift_projectBox();
        (*(v195 + 16))(v194, v198, v196);
        v199 = DeviceExpertTroubleshooting.step.getter();
        if (v200)
        {
          v201 = v199;
          v202 = v200;
        }

        else
        {
          v355 = *(v0 + 264);
          v354 = *(v0 + 272);
          v356 = *(v0 + 256);
          UUID.init()();
          v201 = UUID.uuidString.getter();
          v202 = v357;
          v358 = *(v355 + 8);
          v359 = sub_100077CF4();
          v360(v359);
        }

        v361 = *(v0 + 592);
        v362 = *(v0 + 376);
        v363 = *(v0 + 352);
        v364 = *(v0 + 296);
        DeviceExpertTroubleshooting.UserSelection.question.getter();
        DeviceExpertTroubleshooting.UserSelection.answer.getter();
        DeviceExpertTroubleshooting.writeTimestamp.getter();
        sub_1000780A0();
        if (sub_10000E5F0(v365, v366, v367) == 1)
        {
          v368 = (v0 + 368);
          v369 = *(v0 + 368);
          sub_10001D724(*(v0 + 376), &qword_10018C850, &qword_1001277D0);
          Date.init()();
        }

        else
        {
          v368 = (v0 + 376);
        }

        v370 = *v368;
        v371 = *(v0 + 680);
        v372 = *(v0 + 352);
        v373 = *(v0 + 360);
        Date.timeIntervalSince1970.getter();
        v374 = *(v373 + 8);
        v375 = sub_100077CF4();
        v376(v375);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + 112) = v371;
        v378 = sub_100077DD4();
        v380 = sub_100083754(v378, v379);
        v382 = *(v371 + 16);
        v383 = (v381 & 1) == 0;
        v384 = v382 + v383;
        if (__OFADD__(v382, v383))
        {
          goto LABEL_133;
        }

        v385 = v380;
        v386 = v381;
        sub_100003768(&qword_10018D338, &qword_100128E08);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v384))
        {
          v387 = *(v0 + 112);
          v388 = sub_100077DD4();
          v390 = sub_100083754(v388, v389);
          if ((v386 & 1) != (v391 & 1))
          {
            goto LABEL_103;
          }

          v385 = v390;
        }

        v57 = *(v0 + 112);
        if (v386)
        {
          v395 = (*(v57 + 56) + 56 * v385);
          v396 = v395[1];
          v397 = v395[3];
          v398 = v395[5];
          sub_100077F74(v395);
        }

        else
        {
          sub_100077E8C(v57 + 8 * (v385 >> 6));
          v399 = (*(v57 + 48) + 16 * v385);
          *v399 = v201;
          v399[1] = v202;
          sub_100077F74((*(v57 + 56) + 56 * v385));
          v400 = *(v57 + 16);
          v218 = __OFADD__(v400, 1);
          v401 = v400 + 1;
          if (v218)
          {
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          *(v57 + 16) = v401;
        }

        sub_100077D34();
        (*(*(v0 + 288) + 8))(*(v0 + 296), *(v0 + 280));
        v402 = *(v202 + 8);
        v403 = sub_100077CF4();
        v404(v403);

        sub_100077CCC();
        sub_100077F68();
        v129 = *(v0 + 704);
        v55 = *(v0 + 696);
        v59 = *(v0 + 688);
        v123 = *(v0 + 672);
        v121 = *(v0 + 664);
        v231 = v57;
        goto LABEL_118;
      }

      v135 = *(v0 + 592);
      v136 = *(v0 + 512);
      v137 = *(v0 + 384);
      v138 = *(v0 + 352);
      v140 = *(v0 + 312);
      v139 = *(v0 + 320);
      v141 = *(v0 + 304);
      (*(*(v0 + 504) + 96))(v136, *(v0 + 496));
      v142 = *v136;
      v143 = swift_projectBox();
      (*(v140 + 16))(v139, v143, v141);
      v129 = DeviceExpertTroubleshooting.Setting.settingId.getter();
      v145 = v144;
      DeviceExpertTroubleshooting.Setting.value.getter();
      v146 = String._bridgeToObjectiveC()();

      v484 = [v146 BOOLValue];

      DeviceExpertTroubleshooting.writeTimestamp.getter();
      sub_1000780A0();
      if (sub_10000E5F0(v147, v148, v149) == 1)
      {
        v150 = (v0 + 368);
        v151 = *(v0 + 368);
        sub_10001D724(*(v0 + 384), &qword_10018C850, &qword_1001277D0);
        Date.init()();
      }

      else
      {
        v150 = (v0 + 384);
      }

      v251 = *v150;
      v252 = *(v0 + 728);
      v253 = *(v0 + 352);
      v254 = *(v0 + 360);
      Date.timeIntervalSince1970.getter();
      v256 = v255;
      v257 = *(v254 + 8);
      v258 = sub_100077CF4();
      v259(v258);
      v260 = *(v252 + 16);

      if (v260)
      {
        v261 = *(v0 + 728);
        v262 = sub_100077DD4();
        sub_100083754(v262, v263);
        if (v264)
        {
          v265 = *(v0 + 672);
          v59 = swift_isUniquelyReferenced_nonNull_native();
          *(v0 + 136) = v265;
          v266 = sub_100077DD4();
          sub_100083754(v266, v267);
          sub_100052F7C();
          v272 = v270 + v271;
          if (__OFADD__(v270, v271))
          {
LABEL_136:
            __break(1u);
            goto LABEL_137;
          }

          v55 = v268;
          v57 = v269;
          sub_100003768(&qword_10018D340, &qword_100128E10);
          if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v59, v272))
          {
            v273 = *(v0 + 136);
            v274 = sub_100077DD4();
            sub_100083754(v274, v275);
            sub_100077FB0();
            v277 = v484;
            if (!v191)
            {
              goto LABEL_103;
            }

            v55 = v276;
          }

          else
          {
            v277 = v484;
          }

          v123 = *(v0 + 136);
          if (v57)
          {
            v393 = *(v123 + 56) + 32 * v55;
            v394 = *(v393 + 8);
            *v393 = v129;
            *(v393 + 8) = v145;
            *(v393 + 16) = v277;
            *(v393 + 24) = v256;
          }

          else
          {
            sub_100077E8C(v123 + 8 * (v55 >> 6));
            v405 = (*(v123 + 48) + 16 * v55);
            *v405 = v129;
            v405[1] = v145;
            v406 = *(v123 + 56) + 32 * v55;
            *v406 = v129;
            *(v406 + 8) = v145;
            *(v406 + 16) = v407;
            *(v406 + 24) = v256;
            v408 = *(v123 + 16);
            v218 = __OFADD__(v408, 1);
            v409 = v408 + 1;
            if (v218)
            {
LABEL_140:
              __break(1u);
_$sScI4next7ElementQzSgyYaKFTj:
              dispatch thunk of AsyncIteratorProtocol.next()();
              return;
            }

            *(v123 + 16) = v409;
          }

          sub_100077D34();
          (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
          v410 = *(v145 + 8);
          v411 = sub_100077CF4();
          v412(v411);

          sub_100077CCC();
          v413 = *(v0 + 728);
          sub_100077CA4();
          v121 = *(v0 + 664);
          v232 = v123;
          goto LABEL_118;
        }
      }

      v278 = *(v0 + 664);

      v279 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 120) = v278;
      v280 = sub_100077DD4();
      sub_100083754(v280, v281);
      sub_100052F7C();
      v286 = v284 + v285;
      if (__OFADD__(v284, v285))
      {
LABEL_131:
        __break(1u);
LABEL_132:
        __break(1u);
LABEL_133:
        __break(1u);
        goto LABEL_134;
      }

      v287 = v282;
      v288 = v283;
      v55 = sub_100003768(&qword_10018D340, &qword_100128E10);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v279, v286))
      {
        v289 = *(v0 + 120);
        v290 = sub_100077DD4();
        v292 = sub_100083754(v290, v291);
        if ((v288 & 1) != (v293 & 1))
        {
          goto LABEL_103;
        }

        v287 = v292;
      }

      v121 = *(v0 + 120);
      if (v288)
      {
        v328 = v121[7] + 32 * v287;
        v329 = *(v328 + 8);
        sub_100077E9C(v328);
      }

      else
      {
        sub_100077E8C(&v121[v287 >> 6]);
        v330 = (v121[6] + 16 * v287);
        *v330 = v129;
        v330[1] = v145;
        sub_100077E9C(v121[7] + 32 * v287);
        v331 = v121[2];
        v218 = __OFADD__(v331, 1);
        v332 = v331 + 1;
        if (v218)
        {
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v121[2] = v332;
      }

      v333 = *(v0 + 672);
      v334 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 128) = v333;
      v335 = sub_100077DD4();
      sub_100083754(v335, v336);
      v59 = v337;
      sub_100052F7C();
      if (__OFADD__(v339, v340))
      {
        goto LABEL_132;
      }

      v57 = v338;
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v334, v339 + v340))
      {
        v341 = *(v0 + 128);
        v342 = sub_100077DD4();
        v344 = sub_100083754(v342, v343);
        if ((v59 & 1) != (v345 & 1))
        {
          goto LABEL_103;
        }

        v57 = v344;
      }

      v123 = *(v0 + 128);
      if (v59)
      {
        v346 = *(v123 + 56) + 32 * v57;
        v347 = *(v346 + 8);
        sub_100077E9C(v346);
      }

      else
      {
        sub_100077E8C(v123 + 8 * (v57 >> 6));
        v348 = (*(v123 + 48) + 16 * v57);
        *v348 = v129;
        v348[1] = v145;
        sub_100077E9C(*(v123 + 56) + 32 * v57);
        v349 = *(v123 + 16);
        v218 = __OFADD__(v349, 1);
        v350 = v349 + 1;
        if (v218)
        {
LABEL_138:
          __break(1u);
          goto LABEL_139;
        }

        *(v123 + 16) = v350;
      }

      sub_100077D34();
      (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
      v351 = *(v145 + 8);
      v352 = sub_100077CF4();
      v353(v352);

      sub_100077CCC();
      sub_100077CA4();
      v232 = v123;
      v230 = v121;
      goto LABEL_118;
    }

    v476 = *(v0 + 800);
    v82 = *(v0 + 544);
    v481 = *(v0 + 520);
    v83 = v58;
    v84 = *(v0 + 512);
    v85 = *(v0 + 440);
    v463 = *(v0 + 592);
    v467 = *(v0 + 432);
    v86 = *(v0 + 408);
    v87 = *(v0 + 416);
    v89 = *(v0 + 336);
    v88 = *(v0 + 344);
    v90 = *(v0 + 328);
    (*(*(v0 + 504) + 96))(v84, *(v0 + 496));
    v457 = *v84;
    v91 = swift_projectBox();
    (*(v89 + 16))(v88, v91, v90);
    v470 = DeviceExpertTroubleshooting.Article.articleId.getter();
    v473 = v92;
    DeviceExpertTroubleshooting.interaction.getter();
    DeviceExpertTroubleshooting.Interaction.type.getter();
    v93 = v481;
    v482 = v83;
    v83(v82, v93);
    (*(v87 + 32))(v467, v85, v86);
    v94 = *(v87 + 88);
    v95 = sub_100077CF4();
    v464 = v96;
    if ((v96)(v95) != v476)
    {
      (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
    }

    v97 = *(v0 + 592);
    v98 = *(v0 + 392);
    v99 = *(v0 + 352);
    DeviceExpertTroubleshooting.writeTimestamp.getter();
    sub_1000780A0();
    if (sub_10000E5F0(v100, v101, v102) == 1)
    {
      v103 = (v0 + 368);
      v104 = *(v0 + 368);
      sub_10001D724(*(v0 + 392), &qword_10018C850, &qword_1001277D0);
      Date.init()();
    }

    else
    {
      v103 = (v0 + 392);
    }

    v172 = *v103;
    v129 = *(v0 + 800);
    v173 = *(v0 + 592);
    v174 = *(v0 + 536);
    v175 = *(v0 + 520);
    v176 = *(v0 + 424);
    v177 = *(v0 + 408);
    v179 = *(v0 + 352);
    v178 = *(v0 + 360);
    Date.timeIntervalSince1970.getter();
    v181 = *(v178 + 8);
    v180 = v178 + 8;
    v181(v172, v179);
    v121 = v473;

    DeviceExpertTroubleshooting.interaction.getter();
    DeviceExpertTroubleshooting.Interaction.type.getter();
    v482(v174, v175);
    if (v464(v176, v177) != v129)
    {
      v203 = *(v0 + 656);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 144) = v203;
      sub_100078114();
      sub_100052F7C();
      v208 = v206 + v207;
      if (!__OFADD__(v206, v207))
      {
        v209 = v204;
        v210 = v205;
        sub_100003768(&qword_10018D348, &qword_100128E18);
        if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v59, v208))
        {
          v211 = *(v0 + 144);
          sub_100078114();
          sub_100077FB0();
          if (!v191)
          {
            goto LABEL_103;
          }

          v209 = v212;
        }

        v213 = *(v0 + 144);
        if (v210)
        {
          sub_100077EB8(v213[7]);
        }

        else
        {
          sub_100077C64();
          sub_100077E58();
          v311 = (v213[6] + 16 * v209);
          *v311 = v470;
          v311[1] = v473;
          v312 = v213[7];
          sub_100078054(v313);
          v314 = v213[2];
          v218 = __OFADD__(v314, 1);
          v315 = v314 + 1;
          if (v218)
          {
LABEL_135:
            __break(1u);
            goto LABEL_136;
          }

          v213[2] = v315;
        }

        v316 = *(v0 + 592);
        v317 = *(v0 + 584);
        v318 = *(v0 + 576);
        v320 = *(v0 + 416);
        v319 = *(v0 + 424);
        v129 = *(v0 + 408);
        (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
        v321 = *(v317 + 8);
        v55 = v317 + 8;
        v322 = sub_100077CF4();
        v323(v322);
        v324 = *(v320 + 8);
        v57 = v320 + 8;
        v324(v319, v129);

        v325 = *(v0 + 760);
        v326 = *(v0 + 752);
        v327 = *(v0 + 744);
        sub_100077F68();
        sub_100077CA4();
        v123 = *(v0 + 672);
        v229 = v213;
        v121 = *(v0 + 664);
        goto LABEL_119;
      }

LABEL_128:
      __break(1u);
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    v182 = *(v0 + 688);
    v183 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 152) = v182;
    sub_100078114();
    sub_100052F7C();
    v123 = v186 + v187;
    if (!__OFADD__(v186, v187))
    {
      v188 = v184;
      v57 = v185;
      sub_100003768(&qword_10018D348, &qword_100128E18);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v183, v123))
      {
        v189 = *(v0 + 152);
        sub_100078114();
        sub_100077FB0();
        if (!v191)
        {
          goto LABEL_103;
        }

        v188 = v190;
      }

      v59 = *(v0 + 152);
      if (v57)
      {
        sub_100077EB8(*(v59 + 56));
      }

      else
      {
        sub_100077C64();
        sub_100077E58();
        v300 = (*(v59 + 48) + 16 * v188);
        *v300 = v470;
        v300[1] = v473;
        v301 = *(v59 + 56);
        sub_100078054(v302);
        v303 = *(v59 + 16);
        v218 = __OFADD__(v303, 1);
        v304 = v303 + 1;
        if (v218)
        {
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        *(v59 + 16) = v304;
      }

      sub_100077D34();
      (*(*(v0 + 336) + 8))(*(v0 + 344), *(v0 + 328));
      v305 = *(v180 + 8);
      v306 = sub_100077CF4();
      v307(v306);

      v308 = *(v0 + 760);
      v309 = *(v0 + 752);
      v310 = *(v0 + 736);
      sub_100077CE0();
      v55 = *(v0 + 696);
      sub_100077E24();
      v228 = v59;
      goto LABEL_118;
    }

LABEL_127:
    __break(1u);
    goto LABEL_128;
  }

  v475 = *(v0 + 800);
  v62 = *(v0 + 560);
  v479 = *(v0 + 520);
  v63 = v58;
  v64 = *(v0 + 512);
  v65 = *(v0 + 488);
  v66 = *(v0 + 472);
  v67 = *(v0 + 480);
  v68 = *(v0 + 464);
  v466 = *(v0 + 456);
  v69 = *(v0 + 416);
  v459 = *(v0 + 592);
  v461 = *(v0 + 408);
  (*(*(v0 + 504) + 96))(v64, *(v0 + 496));
  v454 = *v64;
  v70 = swift_projectBox();
  (*(v67 + 16))(v65, v70, v66);
  v469 = DeviceExpertTroubleshooting.Action.actionId.getter();
  v72 = v71;
  DeviceExpertTroubleshooting.Action.title.getter();
  DeviceExpertTroubleshooting.interaction.getter();
  DeviceExpertTroubleshooting.Interaction.type.getter();
  v73 = v479;
  v480 = v63;
  v63(v62, v73);
  (*(v69 + 32))(v466, v68, v461);
  v74 = *(v69 + 88);
  v75 = sub_100077CF4();
  v462 = v76;
  if ((v76)(v75) != v475)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 456), *(v0 + 408));
  }

  v77 = *(v0 + 592);
  v78 = *(v0 + 400);
  v79 = *(v0 + 352);
  DeviceExpertTroubleshooting.writeTimestamp.getter();
  v472 = v72;
  if (sub_10000E5F0(v78, 1, v79) == 1)
  {
    v80 = (v0 + 368);
    v81 = *(v0 + 368);
    sub_10001D724(*(v0 + 400), &qword_10018C850, &qword_1001277D0);
    Date.init()();
  }

  else
  {
    v80 = (v0 + 400);
  }

  v105 = *v80;
  v57 = *(v0 + 800);
  v106 = *(v0 + 592);
  v107 = *(v0 + 552);
  v108 = *(v0 + 520);
  v109 = *(v0 + 448);
  v110 = *(v0 + 408);
  v112 = *(v0 + 352);
  v111 = *(v0 + 360);
  Date.timeIntervalSince1970.getter();
  (*(v111 + 8))(v105, v112);

  DeviceExpertTroubleshooting.interaction.getter();
  DeviceExpertTroubleshooting.Interaction.type.getter();
  v480(v107, v108);
  if (v462(v109, v110) != v57)
  {
    v152 = *(v0 + 696);
    v153 = swift_isUniquelyReferenced_nonNull_native();
    *(v0 + 160) = v152;
    v154 = sub_100077FE8();
    sub_100083754(v154, v155);
    sub_100052F7C();
    v160 = v158 + v159;
    if (!__OFADD__(v158, v159))
    {
      v161 = v156;
      v123 = v157;
      sub_100003768(&qword_10018D350, &unk_100128E20);
      if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v153, v160))
      {
        v162 = *(v0 + 160);
        v163 = sub_100077FE8();
        v165 = sub_100083754(v163, v164);
        if ((v123 & 1) != (v166 & 1))
        {
          goto LABEL_103;
        }

        v161 = v165;
      }

      v55 = *(v0 + 160);
      if (v123)
      {
        sub_100077C64();
        v167 = *(v55 + 56);
        sub_100078068();
        v169 = *(v168 + 8);
        v170 = *(v168 + 24);
        sub_100077C8C(v171);
      }

      else
      {
        sub_100077C64();
        sub_100077E58();
        v234 = (*(v55 + 48) + 16 * v161);
        *v234 = v469;
        v234[1] = v472;
        v235 = *(v55 + 56);
        sub_100078068();
        sub_100077C8C(v236);
        v237 = *(v55 + 16);
        v218 = __OFADD__(v237, 1);
        v238 = v237 + 1;
        if (v218)
        {
LABEL_130:
          __break(1u);
          goto LABEL_131;
        }

        *(v55 + 16) = v238;
      }

      v239 = *(v0 + 592);
      v240 = *(v0 + 584);
      v241 = *(v0 + 576);
      v242 = *(v0 + 448);
      v129 = *(v0 + 408);
      v243 = *(v0 + 416);
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      v244 = *(v240 + 8);
      v121 = (v240 + 8);
      v245 = sub_100077CF4();
      v246(v245);
      v247 = *(v243 + 8);
      v57 = v243 + 8;
      v247(v242, v129);

      v248 = *(v0 + 760);
      v249 = *(v0 + 744);
      v250 = *(v0 + 736);
      sub_100077CE0();
      v59 = *(v0 + 688);
      sub_100077E24();
      v227 = v55;
      goto LABEL_118;
    }

    goto LABEL_126;
  }

  v113 = *(v0 + 704);
  v114 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 168) = v113;
  v115 = sub_100077FE8();
  sub_100083754(v115, v116);
  sub_100052F7C();
  v121 = (v119 + v120);
  if (__OFADD__(v119, v120))
  {
    __break(1u);
LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

  v122 = v117;
  v123 = v118;
  sub_100003768(&qword_10018D350, &unk_100128E20);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(v114, v121))
  {
LABEL_28:
    v129 = *(v0 + 168);
    if (v123)
    {
      sub_100077C64();
      v130 = *(v129 + 56);
      sub_100078068();
      v132 = *(v131 + 8);
      v133 = *(v131 + 24);
      sub_100077C8C(v134);

LABEL_60:
      sub_100077D34();
      (*(*(v0 + 480) + 8))(*(v0 + 488), *(v0 + 472));
      v220 = *(v472 + 8);
      v221 = sub_100077CF4();
      v222(v221);

      v223 = *(v0 + 752);
      v224 = *(v0 + 744);
      v225 = *(v0 + 736);
      sub_100077F68();
      v226 = *(v0 + 712);
      v55 = *(v0 + 696);
      v59 = *(v0 + 688);
      sub_100077E24();
      v233 = v129;
LABEL_118:
      v213 = *(v0 + 656);
LABEL_119:
      *(v0 + 760) = v233;
      *(v0 + 752) = v227;
      *(v0 + 744) = v228;
      *(v0 + 736) = v229;
      *(v0 + 728) = v230;
      *(v0 + 720) = v232;
      *(v0 + 712) = v231;
      *(v0 + 704) = v129;
      *(v0 + 696) = v55;
      *(v0 + 688) = v59;
      *(v0 + 680) = v57;
      *(v0 + 672) = v123;
      *(v0 + 664) = v121;
      *(v0 + 656) = v213;
      sub_100077E00(&qword_10018D328, &qword_10018D310, &qword_100128DF8);
      v414 = async function pointer to dispatch thunk of AsyncIteratorProtocol.next()[1];
      v415 = swift_task_alloc();
      *(v0 + 768) = v415;
      *v415 = v0;
      sub_100077D00();
      sub_100077F04();

      goto _$sScI4next7ElementQzSgyYaKFTj;
    }

    sub_100077C64();
    sub_100077E58();
    v214 = (*(v129 + 48) + 16 * v122);
    *v214 = v469;
    v214[1] = v472;
    v215 = *(v129 + 56);
    sub_100078068();
    sub_100077C8C(v216);
    v217 = *(v129 + 16);
    v218 = __OFADD__(v217, 1);
    v219 = v217 + 1;
    if (!v218)
    {
      *(v129 + 16) = v219;
      goto LABEL_60;
    }

    goto LABEL_129;
  }

  v124 = *(v0 + 168);
  v125 = sub_100077FE8();
  v127 = sub_100083754(v125, v126);
  if ((v123 & 1) == (v128 & 1))
  {
    v122 = v127;
    goto LABEL_28;
  }

LABEL_103:
  sub_100077F04();

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

uint64_t sub_100073F44()
{
  *(v0 + 104) = *(v0 + 776);
  sub_100003768(&qword_100189398, &unk_100122910);
  swift_willThrowTypedImpl();

  return _swift_task_switch(sub_100073FD8, 0, 0);
}

uint64_t sub_100073FD8()
{
  v1 = v0[95];
  v2 = v0[94];
  v3 = v0[93];
  v4 = v0[92];
  v5 = v0[91];
  v6 = v0[90];
  v7 = v0[89];
  v8 = v0[78];
  v12 = v0[75];
  v13 = v0[74];
  v14 = v0[71];
  v15 = v0[70];
  v16 = v0[69];
  v17 = v0[68];
  v18 = v0[67];
  v19 = v0[64];
  v20 = v0[61];
  v21 = v0[58];
  v22 = v0[57];
  v23 = v0[56];
  v24 = v0[55];
  v25 = v0[54];
  v26 = v0[53];
  v27 = v0[50];
  v28 = v0[49];
  v29 = v0[48];
  v30 = v0[47];
  v31 = v0[46];
  v32 = v0[43];
  v33 = v0[40];
  v34 = v0[37];
  v35 = v0[34];
  v36 = v0[31];
  v37 = v0[28];
  (*(v0[80] + 8))(v0[81], v0[79]);

  v9 = v0[1];
  v10 = v0[97];

  return v9();
}

void *sub_100074238(uint64_t a1)
{
  v2 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v94 = v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v93 = v76 - v8;
  v9 = __chkstk_darwin(v7);
  v85 = v76 - v10;
  v11 = __chkstk_darwin(v9);
  v79 = v76 - v12;
  __chkstk_darwin(v11);
  v88 = v76 - v13;
  v96 = type metadata accessor for TriageRequest.HMTContext.Setting();
  v14 = *(v96 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v96);
  v86 = v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v97 = v76 - v18;
  v19 = Dictionary.init(dictionaryLiteral:)();
  v20 = *(a1 + 16);
  if (v20)
  {
    v76[2] = 0x8000000100137040;
    v76[1] = 0x8000000100137060;
    v92 = (v3 + 16);
    v87 = v3 + 32;
    v77 = (v14 + 16);
    v76[3] = v14 + 32;
    v81 = (v3 + 40);
    v90 = (v3 + 8);
    v91 = v3;
    v78 = v14;
    v89 = (v14 + 8);
    v21 = (a1 + 56);
    while (2)
    {
      v22 = *(v21 - 3);
      v23 = *(v21 - 2);
      v24 = *(v21 - 8);
      v25 = *v21;
      swift_bridgeObjectRetain_n();
      v26 = sub_10009A9A8();
      v27 = 0xE800000000000000;
      v98 = 0x6C69614D2D534F69;
      switch(v26)
      {
        case 3:
        case 4:
        case 5:
        case 6:
          v98 = 0x694669572D534F69;
          goto LABEL_9;
        case 7:
        case 8:
        case 9:
          v98 = 0x656E65472D534F69;
          v28 = 7102834;
          goto LABEL_8;
        case 10:
        case 11:
          v98 = 0x7373654D2D534F69;
          v27 = 0xEC00000073656761;
          goto LABEL_9;
        case 12:
        case 13:
        case 14:
          v98 = 0x507269412D534F69;
          v28 = 7562351;
          goto LABEL_8;
        case 15:
          v98 = 0xD000000000000010;
          v71 = &v100;
          goto LABEL_41;
        case 16:
          v98 = 0xD000000000000011;
          v71 = &v101;
LABEL_41:
          v27 = *(v71 - 32);
          goto LABEL_9;
        case 17:
          goto LABEL_9;
        case 18:

          goto LABEL_35;
        default:
          v98 = 0x747461422D534F69;
          v28 = 7959141;
LABEL_8:
          v27 = v28 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
LABEL_9:
          v95 = v20;
          __chkstk_darwin(v26);
          v76[-4] = v22;
          v76[-3] = v23;
          LOBYTE(v76[-2]) = v24;
          v76[-1] = v25;
          sub_100075780(&qword_10018D2E0, &type metadata accessor for TriageRequest.HMTContext.Setting);
          v29 = static Message.with(_:)();
          if (v19[2] && (v29 = sub_100083754(v98, v27), (v30 & 1) != 0))
          {
            v31 = v29;

            v32 = v19[7];
            v33 = v91;
            v82 = *(v91 + 72);
            v34 = v32 + v82 * v31;
            v35 = *(v91 + 16);
            v36 = v79;
            v35(v79, v34, v2);
            v80 = *(v33 + 32);
            v80(v88, v36, v2);
            (*v77)(v86, v97, v96);
            v37 = TriageRequest.HMTContext.SettingsEvent.settings.modify();
            v39 = v38;
            v40 = *v38;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *v39 = v40;
            v84 = v35;
            v83 = v37;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v72 = *(v40 + 16);
              sub_1000D03B4();
              v40 = v73;
              *v39 = v73;
            }

            v20 = v95;
            v42 = *(v40 + 16);
            if (v42 >= *(v40 + 24) >> 1)
            {
              sub_1000D03B4();
              v40 = v74;
              *v39 = v74;
            }

            *(v40 + 16) = v42 + 1;
            (*(v78 + 32))(v40 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v42, v86, v96);
            v83(&v99, 0);
            v84(v85, v88, v2);
            v43 = swift_isUniquelyReferenced_nonNull_native();
            v99 = v19;
            v44 = sub_100083754(v98, v27);
            v46 = v19[2];
            v47 = (v45 & 1) == 0;
            v48 = v46 + v47;
            if (__OFADD__(v46, v47))
            {
              goto LABEL_45;
            }

            v49 = v44;
            v50 = v45;
            sub_100003768(&qword_10018D2F0, &qword_100128DD8);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v43, v48))
            {
              v51 = sub_100083754(v98, v27);
              if ((v50 & 1) != (v52 & 1))
              {
                goto LABEL_47;
              }

              v49 = v51;
            }

            v19 = v99;
            if (v50)
            {
              (*v81)(v99[7] + v49 * v82, v85, v2);
            }

            else
            {
              v99[(v49 >> 6) + 8] |= 1 << v49;
              v68 = (v19[6] + 16 * v49);
              *v68 = v98;
              v68[1] = v27;
              v80((v19[7] + v49 * v82), v85, v2);
              v69 = v19[2];
              v66 = __OFADD__(v69, 1);
              v70 = v69 + 1;
              if (v66)
              {
                goto LABEL_46;
              }

              v19[2] = v70;
            }

            (*v90)(v88, v2);
          }

          else
          {
            __chkstk_darwin(v29);
            v76[-6] = v22;
            v76[-5] = v23;
            LOBYTE(v76[-4]) = v24;
            v76[-3] = v25;
            v76[-2] = v97;
            sub_100075780(&qword_10018D2E8, &type metadata accessor for TriageRequest.HMTContext.SettingsEvent);
            v53 = v93;
            static Message.with(_:)();

            (*v92)(v94, v53, v2);
            v54 = swift_isUniquelyReferenced_nonNull_native();
            v99 = v19;
            v55 = sub_100083754(v98, v27);
            v57 = v19[2];
            v58 = (v56 & 1) == 0;
            v59 = v57 + v58;
            if (__OFADD__(v57, v58))
            {
              __break(1u);
LABEL_44:
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
LABEL_47:
              KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
              __break(1u);
              JUMPOUT(0x100074C44);
            }

            v60 = v55;
            v61 = v56;
            sub_100003768(&qword_10018D2F0, &qword_100128DD8);
            if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v54, v59))
            {
              v62 = sub_100083754(v98, v27);
              v20 = v95;
              if ((v61 & 1) != (v63 & 1))
              {
                goto LABEL_47;
              }

              v60 = v62;
            }

            else
            {
              v20 = v95;
            }

            v19 = v99;
            if (v61)
            {
              (*(v91 + 40))(v99[7] + *(v91 + 72) * v60, v94, v2);
            }

            else
            {
              v99[(v60 >> 6) + 8] |= 1 << v60;
              v64 = (v19[6] + 16 * v60);
              *v64 = v98;
              v64[1] = v27;
              (*(v91 + 32))(v19[7] + *(v91 + 72) * v60, v94, v2);
              v65 = v19[2];
              v66 = __OFADD__(v65, 1);
              v67 = v65 + 1;
              if (v66)
              {
                goto LABEL_44;
              }

              v19[2] = v67;
            }

            (*v90)(v93, v2);
          }

          (*v89)(v97, v96);
LABEL_35:
          v21 += 4;
          if (!--v20)
          {
            return v19;
          }

          continue;
      }
    }
  }

  return v19;
}

uint64_t sub_100074C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a4;
  v24 = a5;
  v7 = sub_100003768(&qword_10018D2D8, &qword_100128DD0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for TriageRequest.HMTContext.SettingsEvent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v22 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v21 - v16;

  TriageRequest.HMTContext.SettingsGroup.groupKey.setter();
  v18 = *(v12 + 16);
  v18(v17, v23, v11);
  TriageRequest.HMTContext.SettingsGroup.pre.setter();
  sub_100082D34(a2, a3, v24, v10);
  if (sub_10000E5F0(v10, 1, v11) == 1)
  {
    return sub_10001D724(v10, &qword_10018D2D8, &qword_100128DD0);
  }

  v20 = v22;
  (*(v12 + 32))(v22, v10, v11);
  v18(v17, v20, v11);
  TriageRequest.HMTContext.SettingsGroup.post.setter();
  return (*(v12 + 8))(v20, v11);
}

uint64_t sub_100074EB4(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];

  TriageRequest.HMTContext.UserSelection.id.setter();
  v5 = a2[2];
  v6 = a2[3];

  TriageRequest.HMTContext.UserSelection.question.setter();
  v7 = a2[4];
  v8 = a2[5];

  return TriageRequest.HMTContext.UserSelection.answer.setter();
}

uint64_t sub_100074F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{

  TriageRequest.HMTContext.suggestedUserActions.setter();

  TriageRequest.HMTContext.executedUserActions.setter();
  v13 = *a4;

  TriageRequest.HMTContext.suggestedArticles.setter();
  v14 = *a5;

  TriageRequest.HMTContext.openedArticles.setter();
  v15 = *a6;

  TriageRequest.HMTContext.suggestedBcsArticles.setter();
  v16 = *a7;

  TriageRequest.HMTContext.openedBcsArticles.setter();
  v17 = *a8;

  TriageRequest.HMTContext.settingsGroups.setter();

  return TriageRequest.HMTContext.userSelections.setter();
}

uint64_t sub_100074FFC()
{

  TriageRequest.HMTContext.Setting.key.setter();
  return TriageRequest.HMTContext.Setting.value.setter();
}

uint64_t sub_100075070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = type metadata accessor for Google_Protobuf_Timestamp();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  Google_Protobuf_Timestamp.init(timeIntervalSince1970:)();
  TriageRequest.HMTContext.SettingsEvent.capturedTimestamp.setter();
  sub_100003768(&qword_10018D2F8, &qword_10012E030);
  v8 = type metadata accessor for TriageRequest.HMTContext.Setting();
  v9 = *(v8 - 8);
  v10 = *(v9 + 72);
  v11 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100121620;
  (*(v9 + 16))(v12 + v11, a5, v8);
  return TriageRequest.HMTContext.SettingsEvent.settings.setter();
}

uint64_t sub_1000751D4(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Google_Protobuf_Timestamp();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = *a2;
  v6 = a2[1];

  TriageRequest.HMTContext.UserAction.id.setter();
  v7 = a2[2];
  v8 = a2[3];

  TriageRequest.HMTContext.UserAction.actionTitle.setter();
  v9 = a2[5];
  Google_Protobuf_Timestamp.init(timeIntervalSince1970:)();
  return TriageRequest.HMTContext.UserAction.capturedTimestamp.setter();
}

uint64_t sub_10007529C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t), void (*a7)(uint64_t), void (*a8)(uint64_t, unint64_t), uint64_t (*a9)(char *))
{
  v35 = a9;
  v14 = type metadata accessor for Google_Protobuf_Timestamp();
  v15 = sub_10000ED84(v14);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_100003768(&qword_100188EE0, &unk_100122AE0);
  v21 = sub_10000ED84(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v35 - v24;

  a6(a2, a3);
  v26 = HMTSolution.Article.title.getter();
  a7(v26);
  HMTSolution.Article.url.getter();
  v27 = type metadata accessor for URL();
  sub_1000780A0();
  if (sub_10000E5F0(v28, v29, v30) == 1)
  {
    sub_10001D724(v25, &qword_100188EE0, &unk_100122AE0);
    v31 = 0;
    v32 = 0xE000000000000000;
  }

  else
  {
    v31 = URL.absoluteString.getter();
    v32 = v33;
    (*(*(v27 - 8) + 8))(v25, v27);
  }

  a8(v31, v32);
  Google_Protobuf_Timestamp.init(timeIntervalSince1970:)();
  return v35(v19);
}

uint64_t sub_1000754A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018D298, &qword_100128DC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100075780(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_1000757C8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100077B8C(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_10007599C(v6);
  *a1 = v2;
  return result;
}

Swift::Int sub_100075834(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = a2(v8);
  }

  v9 = *(v8 + 16);
  v11[0] = v8 + 32;
  v11[1] = v9;
  result = sub_100075A90(v11, a3, a4);
  *a1 = v8;
  return result;
}

Swift::Int sub_1000758C0(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_100077BD0(v2);
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_100075B94(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_10007592C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003768(&qword_10018D330, &qword_10012A460);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Int sub_10007599C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7[0] = (v6 + 4);
      v7[1] = v5;
      sub_100075E38(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100075C88(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100075A90(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v10 = result;
      v11 = v5 / 2;
      if (v5 <= 1)
      {
        v12 = _swiftEmptyArrayStorage;
      }

      else
      {
        v12 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v12[2] = v11;
      }

      v13[0] = v12 + 4;
      v13[1] = v11;
      sub_10007637C(v13, v14, a1, v10, a3, v7, v8, v9);
      v12[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100075D24(0, v5, 1, a1);
  }

  return result;
}

Swift::Int sub_100075B94(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v8 = result;
      v9 = v2 / 2;
      if (v2 <= 1)
      {
        v10 = _swiftEmptyArrayStorage;
      }

      else
      {
        v10 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v10[2] = v9;
      }

      v11[0] = v10 + 4;
      v11[1] = v9;
      sub_100076870(v11, v12, a1, v8, v4, v5, v6, v7);
      v10[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_100075DA4(0, v2, 1, a1);
  }

  return result;
}