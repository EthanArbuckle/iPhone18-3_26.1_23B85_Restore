uint64_t sub_10001C24C()
{
  sub_10000DA7C(*(v0 + 48), *(*(v0 + 48) + 24));
  v1 = swift_task_alloc();
  *(v0 + 256) = v1;
  *v1 = v0;
  v1[1] = sub_10001C2F0;
  v2 = *(v0 + 240);

  return sub_100157BD8(v2, 19);
}

uint64_t sub_10001C2F0()
{
  v1 = *(*v0 + 256);
  v3 = *v0;

  return _swift_task_switch(sub_10001C3EC, 0, 0);
}

uint64_t sub_10001C3EC()
{
  v1 = v0[30];
  v2 = v0[24];
  v3 = v0[25];
  v4 = *(v3 + 48);
  v5 = v4(v1, 1, v2);
  v6 = v0[31];
  if (v5 == 1)
  {
    v7 = v0[31];
    URL.init(string:)();
    if (v4(v1, 1, v2) != 1)
    {
      sub_10000DAF8(v0[30], &qword_10023C230, &qword_1001B4FB0);
    }
  }

  else
  {
    (*(v3 + 32))(v0[31], v1, v2);
    (*(v3 + 56))(v6, 0, 1, v2);
  }

  v8 = v0[29];
  v9 = v0[24];
  sub_10001B8EC(v0[31], v8);
  if (v4(v8, 1, v9) == 1)
  {
    sub_10000DAF8(v0[29], &qword_10023C230, &qword_1001B4FB0);
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000DAC0(v10, qword_10023FC88);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Invalid URL for token fetch task", v13, 2u);
    }

    v14 = v0[31];

    sub_10001E5B0();
    swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 1;
    swift_willThrow();
    sub_10000DAF8(v14, &qword_10023C230, &qword_1001B4FB0);
    v17 = v0[30];
    v16 = v0[31];
    v19 = v0[28];
    v18 = v0[29];
    v21 = v0[26];
    v20 = v0[27];
    v22 = v0[23];
    v24 = v0[19];
    v23 = v0[20];
    v25 = v0[16];
    v54 = v0[13];
    v56 = v0[10];
    v58 = v0[7];

    v26 = v0[1];

    return v26();
  }

  v29 = v0[27];
  v28 = v0[28];
  v30 = v0[25];
  v31 = v0[26];
  v32 = v0[24];
  v33 = v0[12];
  v53 = v0[13];
  v55 = v0[16];
  v52 = v0[11];
  v59 = v0[9];
  v60 = v0[8];
  v57 = v0[7];
  (*(v30 + 32))(v28, v0[29], v32);
  v34 = *(v30 + 16);
  v34(v29, v28, v32);
  v34(v31, v29, v32);
  URLRequest.init(url:cachePolicy:timeoutInterval:)();
  URLRequest.httpMethod.setter();
  URLRequest.httpBody.setter();
  v35 = *(v30 + 8);
  v0[33] = v35;
  v0[34] = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v35(v29, v32);
  (*(v33 + 104))(v53, enum case for Calendar.Identifier.iso8601(_:), v52);
  Calendar.init(identifier:)();
  (*(v33 + 8))(v53, v52);
  TimeZone.init(secondsFromGMT:)();
  result = (*(v59 + 48))(v57, 1, v60);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v37 = v0[19];
  v36 = v0[20];
  v38 = v0[17];
  v39 = v0[18];
  v41 = v0[15];
  v40 = v0[16];
  v42 = v0[14];
  (*(v0[9] + 32))(v0[10], v0[7], v0[8]);
  Calendar.timeZone.setter();
  static Date.now.getter();
  Calendar.startOfDay(for:)();
  v43 = *(v39 + 8);
  v0[35] = v43;
  v0[36] = (v39 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v43(v37, v38);
  (*(v41 + 8))(v40, v42);
  result = Date.timeIntervalSince1970.getter();
  v45 = v44 * 1000.0;
  if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v45 <= -1.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v45 >= 1.84467441e19)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v46 = v0[23];
  v47 = v0[6];
  v0[4] = v45;
  v48.value._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  v49._object = 0x80000001001CA360;
  v49._countAndFlagsBits = 0xD000000000000015;
  URLRequest.setValue(_:forHTTPHeaderField:)(v48, v49);

  v50 = swift_task_alloc();
  v0[37] = v50;
  *(v50 + 16) = v47;
  *(v50 + 24) = v46;
  v51 = swift_task_alloc();
  v0[38] = v51;
  *v51 = v0;
  v51[1] = sub_10001CA68;

  return sub_10001DB1C((v0 + 2), 0, dword_1001B4FC0, v50);
}

uint64_t sub_10001CA68()
{
  v2 = *v1;
  v3 = *(*v1 + 304);
  v4 = *v1;
  *(*v1 + 312) = v0;

  v5 = *(v2 + 296);

  if (v0)
  {
    v6 = sub_10001CEF8;
  }

  else
  {
    v6 = sub_10001CB9C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10001CB9C()
{
  v1 = v0[39];
  v2 = v0[22];
  v3 = v0[2];
  v4 = v0[3];
  v5 = type metadata accessor for JSONDecoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONDecoder.init()();
  sub_10001E6B0();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  v8 = (v2 + 8);
  v9 = v0[35];
  v45 = v0[36];
  v48 = v0[34];
  v46 = v0[33];
  v50 = v0[31];
  if (v1)
  {
    v10 = v0[28];
    v11 = v0[24];
    v12 = v0[20];
    v40 = v0[21];
    v42 = v0[23];
    v13 = v0[17];

    sub_10001BABC(v3, v4);
    v9(v12, v13);
    v46(v10, v11);
    sub_10000DAF8(v50, &qword_10023C230, &qword_1001B4FB0);
    (*v8)(v42, v40);
    v15 = v0[30];
    v14 = v0[31];
    v17 = v0[28];
    v16 = v0[29];
    v19 = v0[26];
    v18 = v0[27];
    v20 = v0[23];
    v22 = v0[19];
    v21 = v0[20];
    v23 = v0[16];
    v47 = v0[13];
    v49 = v0[10];
    v51 = v0[7];

    v24 = v0[1];

    return v24();
  }

  else
  {
    v34 = v0[30];
    v35 = v0[29];
    v26 = v0[28];
    v36 = v0[27];
    v37 = v0[26];
    v27 = v0[24];
    v28 = v0[20];
    v32 = v0[23];
    v33 = v0[21];
    v29 = v0[17];
    v38 = v0[19];
    v39 = v0[16];
    v41 = v0[13];
    v43 = v0[10];
    v44 = v0[7];

    sub_10001BABC(v3, v4);
    v9(v28, v29);
    v46(v26, v27);
    sub_10000DAF8(v50, &qword_10023C230, &qword_1001B4FB0);
    v30 = v0[5];
    (*v8)(v32, v33);

    v31 = v0[1];

    return v31(v30);
  }
}

uint64_t sub_10001CEF8()
{
  v1 = *(v0 + 288);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v4 = *(v0 + 248);
  v5 = *(v0 + 224);
  v7 = *(v0 + 184);
  v6 = *(v0 + 192);
  v8 = *(v0 + 168);
  v9 = *(v0 + 176);
  (*(v0 + 280))(*(v0 + 160), *(v0 + 136));
  v3(v5, v6);
  sub_10000DAF8(v4, &qword_10023C230, &qword_1001B4FB0);
  (*(v9 + 8))(v7, v8);
  v11 = *(v0 + 240);
  v10 = *(v0 + 248);
  v13 = *(v0 + 224);
  v12 = *(v0 + 232);
  v15 = *(v0 + 208);
  v14 = *(v0 + 216);
  v16 = *(v0 + 184);
  v18 = *(v0 + 152);
  v17 = *(v0 + 160);
  v19 = *(v0 + 128);
  v22 = *(v0 + 104);
  v23 = *(v0 + 80);
  v24 = *(v0 + 56);
  v25 = *(v0 + 312);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_10001D068(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = type metadata accessor for URLRequest();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();

  return _swift_task_switch(sub_10001D12C, 0, 0);
}

uint64_t sub_10001D12C()
{
  v1 = v0[3];
  v3 = *(v1 + 96);
  v2 = *(v1 + 104);
  (*(v0[6] + 16))(v0[7], v0[4], v0[5]);
  v4 = String._bridgeToObjectiveC()();
  v5 = String._bridgeToObjectiveC()();
  v6 = [objc_opt_self() bagForProfile:v4 profileVersion:v5];
  v0[8] = v6;

  v7 = *(v2 + 40);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[9] = v9;
  *v9 = v0;
  v9[1] = sub_10001D2E0;
  v10 = v0[7];

  return v12(v10, v6, v3, v2);
}

uint64_t sub_10001D2E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 72);
  v7 = *(*v4 + 64);
  v8 = *(*v4 + 56);
  v9 = *(*v4 + 48);
  v10 = *(*v4 + 40);
  v13 = *v4;
  v5[10] = a1;
  v5[11] = a2;
  v5[12] = a3;
  v5[13] = v3;

  (*(v9 + 8))(v8, v10);

  if (v3)
  {
    v11 = sub_10001D688;
  }

  else
  {
    v11 = sub_10001D478;
  }

  return _swift_task_switch(v11, 0, 0);
}

uint64_t sub_10001D478()
{
  if ([*(v0 + 96) statusCode] == 200)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 16);
    v18 = *(v0 + 80);

    *v2 = v18;

    v3 = *(v0 + 8);
  }

  else
  {
    if (qword_100239CC8 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 96);
    v5 = type metadata accessor for Logger();
    sub_10000DAC0(v5, qword_10023FC88);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 96);
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      *(v10 + 4) = [v9 statusCode];

      _os_log_impl(&_mh_execute_header, v7, v8, "Currency exchange rate fetch has failed with status code: %ld", v10, 0xCu);

      v11 = *(v0 + 96);
    }

    else
    {

      v11 = *(v0 + 96);
      v7 = v11;
    }

    v13 = *(v0 + 80);
    v12 = *(v0 + 88);

    v14 = [v11 statusCode];
    sub_10001E5B0();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    swift_willThrow();

    sub_10001BABC(v13, v12);
    v16 = *(v0 + 56);

    v3 = *(v0 + 8);
  }

  return v3();
}

uint64_t sub_10001D688()
{
  v1 = v0[13];
  v2 = v0[7];

  v3 = v0[1];

  return v3();
}

Swift::Int sub_10001D6F4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10001D778()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10001D7D4@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1002139D8, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_10001D874@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&off_100213A10, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_10001D8D8(uint64_t a1)
{
  v2 = sub_10001EA48();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10001D914(uint64_t a1)
{
  v2 = sub_10001EA48();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_10001D950@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10001E8C4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10001D97C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10001DA0C;

  return sub_10001BF14();
}

uint64_t sub_10001DA0C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t sub_10001DB1C(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  v7 = v5;
  v7[5] = a4;
  v7[6] = v4;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = type metadata accessor for ContinuousClock();
  v7[7] = v9;
  v10 = *(v9 - 8);
  v7[8] = v10;
  v11 = *(v10 + 64) + 15;
  v7[9] = swift_task_alloc();
  v15 = (a3 + *a3);
  v12 = a3[1];
  v13 = swift_task_alloc();
  v7[10] = v13;
  *v13 = v7;
  v13[1] = sub_10001DC90;

  return v15(a1);
}

uint64_t sub_10001DC90()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  v3[11] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_10001DDCC, 0, 0);
  }

  else
  {
    v4 = v3[9];

    v5 = v3[1];

    return v5();
  }
}

void sub_10001DDCC()
{
  if (qword_100239CD0 != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  sub_10000DAC0(v2, qword_10023FCA0);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[11];
    v6 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 134218242;
    *(v7 + 4) = v6;
    *(v7 + 12) = 2112;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "Task failed on attempt %ld with error: %@", v7, 0x16u);
    sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
  }

  v10 = v0[6];

  v11 = *(v10 + 8);
  v12 = __OFSUB__(v11, 1);
  v13 = (v11 - 1);
  if (v12)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v13 > v0[3])
  {
    v14 = v0[6];
    NSDecimal.init(integerLiteral:)(v13, 2);
    pow(_:_:)(v17, v15, v16);
    NSDecimal._bridgeToObjectiveC()(v18);
    v20 = v19;
    v21 = [v19 integerValue];

    v22 = *v14;
    v23 = *v14 * v21;
    if ((v22 * v21) >> 64 == v23 >> 63)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v24, v25, "Sleeping for %ld seconds before next attempt", v26, 0xCu);
      }

      v27 = v0[9];

      static Clock<>.continuous.getter();
      v28 = swift_task_alloc();
      v0[12] = v28;
      *v28 = v0;
      v28[1] = sub_10001E19C;
      v29 = v0[9];

      sub_100161C3C(1000000000000000000 * v23, ((v23 >> 63) & 0xF21F494C589C0000) + ((v23 * 0xDE0B6B3A7640000uLL) >> 64), 0, 0, 1);
      return;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Max retry attempts exceeded", v32, 2u);
  }

  v33 = v0[11];

  swift_willThrow();
  v34 = v0[11];
  v35 = v0[9];

  v36 = v0[1];

  v36();
}

uint64_t sub_10001E19C()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  v3[13] = v0;

  if (v0)
  {
    (*(v3[8] + 8))(v3[9], v3[7]);

    return _swift_task_switch(sub_10001E46C, 0, 0);
  }

  else
  {
    v4 = v3[3];
    (*(v3[8] + 8))(v3[9], v3[7]);
    v5 = swift_task_alloc();
    v3[14] = v5;
    *v5 = v3;
    v5[1] = sub_10001E358;
    v6 = v3[5];
    v7 = v3[6];
    v8 = v3[4];
    v9 = v3[2];

    return sub_10001DB1C(v9, v4 + 1, v8, v6);
  }
}

uint64_t sub_10001E358()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_10001E544;
  }

  else
  {
    v3 = sub_10001E4D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10001E46C()
{
  v1 = v0[11];

  v2 = v0[13];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_10001E4D8()
{
  v1 = v0[11];

  v2 = v0[9];

  v3 = v0[1];

  return v3();
}

uint64_t sub_10001E544()
{
  v1 = v0[11];

  v2 = v0[15];
  v3 = v0[9];

  v4 = v0[1];

  return v4();
}

unint64_t sub_10001E5B0()
{
  result = qword_10023A678;
  if (!qword_10023A678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A678);
  }

  return result;
}

uint64_t sub_10001E604(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000BD30;

  return sub_10001D068(a1, v5, v4);
}

unint64_t sub_10001E6B0()
{
  result = qword_10023A680;
  if (!qword_10023A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A680);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CurrencyExchangeRateTaskError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for CurrencyExchangeRateTaskError(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CurrencyExchangeRateTaskError(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

uint64_t sub_10001E778(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10001E794(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

__n128 sub_10001E7C4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_10001E7E8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_10001E830(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10001E89C(uint64_t a1)
{
  result = sub_10001E5B0();
  *(a1 + 8) = result;
  return result;
}

void *sub_10001E8C4(uint64_t *a1)
{
  v3 = sub_10000CDE0(&qword_10023A6A0, &qword_1001B5130);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_10000DA7C(a1, a1[3]);
  sub_10001EA48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_10000DB58(a1);
  }

  else
  {
    sub_10000CDE0(&qword_10023A6B0, &qword_1001B5138);
    sub_10001EA9C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_10000DB58(a1);
  }

  return v9;
}

unint64_t sub_10001EA48()
{
  result = qword_10023A6A8;
  if (!qword_10023A6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6A8);
  }

  return result;
}

unint64_t sub_10001EA9C()
{
  result = qword_10023A6B8;
  if (!qword_10023A6B8)
  {
    sub_10000CCC0(&qword_10023A6B0, &qword_1001B5138);
    sub_10001EB28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6B8);
  }

  return result;
}

unint64_t sub_10001EB28()
{
  result = qword_10023A6C0;
  if (!qword_10023A6C0)
  {
    type metadata accessor for Decimal(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6C0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CurrencyExchangeRateTask.Response.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for CurrencyExchangeRateTask.Response.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_10001EC6C()
{
  result = qword_10023A6C8;
  if (!qword_10023A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6C8);
  }

  return result;
}

unint64_t sub_10001ECC4()
{
  result = qword_10023A6D0;
  if (!qword_10023A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6D0);
  }

  return result;
}

unint64_t sub_10001ED1C()
{
  result = qword_10023A6D8;
  if (!qword_10023A6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A6D8);
  }

  return result;
}

void sub_10001ED70(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SnoutStoryModel();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100010394(a1, v13);
  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v15 = v14;
  (*(v6 + 8))(v9, v5);
  v16 = v15 * 1000.0;
  if (COERCE__INT64(fabs(v15 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v16 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *&v13[*(v10 + 52)] = v16;
  v17 = [v3 connection];
  v18 = sub_1000EC8C4(v13, v17);
  if (v2)
  {
    sub_1000103F8(v13);
  }

  else
  {
    v19 = v18;

    sub_1000103F8(v13);
  }
}

void sub_10001EF6C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = v18 - v10;
  v12 = [v2 connection];
  v13 = *(v5 + 16);
  v13(v11, a1, v4);
  v14 = String._bridgeToObjectiveC()();
  v13(v9, v11, v4);
  v15 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v16 = [objc_opt_self() predicateWithProperty:v14 equalToValue:v15];
  swift_unknownObjectRelease();

  (*(v5 + 8))(v11, v4);
  v17 = sub_100085138(v12, v16, _swiftEmptyArrayStorage, 0, 0);
  if (([v17 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    v18[1] = 8;
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

void sub_10001F1D4()
{
  v1 = [v0 connection];
  v2 = String._bridgeToObjectiveC()();

  v3 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v4 = [objc_opt_self() predicateWithProperty:v2 equalToValue:v3];
  swift_unknownObjectRelease();

  v5 = sub_100085138(v1, v4, _swiftEmptyArrayStorage, 0, 0);
  if (([v5 deleteAllEntities] & 1) == 0)
  {
    type metadata accessor for AKSQLError(0);
    sub_10008976C(_swiftEmptyArrayStorage);
    sub_10001558C();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }
}

uint64_t sub_10001F3F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10001F43C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10000CDE0(&qword_100239EE0, &qword_1001B3640);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = aBlock - v12;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a2;
  v15[5] = a3;
  v15[6] = a4;
  v15[7] = a5;
  v15[8] = a1;

  v16 = a1;
  v17 = sub_10001267C(0, 0, v13, &unk_1001B5318, v15);
  v18 = swift_allocObject();
  v18[2] = a2;
  v18[3] = a3;
  v18[4] = v17;
  aBlock[4] = sub_10001FDC0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10001F3F8;
  aBlock[3] = &unk_1002178C0;
  v19 = _Block_copy(aBlock);

  [v16 setExpirationHandler:v19];
  _Block_release(v19);
}

uint64_t sub_10001F644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return _swift_task_switch(sub_10001F66C, 0, 0);
}

uint64_t sub_10001F66C()
{
  v15 = v0;
  if (qword_100239D00 != -1)
  {
    swift_once();
  }

  v1 = v0[3];
  v2 = type metadata accessor for Logger();
  v0[7] = sub_10000DAC0(v2, qword_10023FD30);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[2];
    v5 = v0[3];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10017AD04(v6, v5, &v14);
    _os_log_impl(&_mh_execute_header, v3, v4, "Begin task for identifier: %s", v7, 0xCu);
    sub_10000DB58(v8);
  }

  v13 = (v0[4] + *v0[4]);
  v9 = *(v0[4] + 4);
  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_10001F888;
  v11 = v0[5];

  return v13();
}

uint64_t sub_10001F888()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_10001F984, 0, 0);
}

uint64_t sub_10001F984()
{
  v12 = v0;
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  [*(v0 + 48) setTaskCompleted];

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 16);
    v5 = *(v0 + 24);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10017AD04(v6, v5, &v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "Task completed for identifier: %s", v7, 0xCu);
    sub_10000DB58(v8);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10001FAD0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

uint64_t sub_10001FB20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000BD30;

  return sub_10001F644(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_10001FBFC(uint64_t a1, unint64_t a2)
{
  if (qword_100239D00 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD30);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_10017AD04(a1, a2, &v9);
    _os_log_impl(&_mh_execute_header, v5, v6, "System requested task expiration for identifier: %s", v7, 0xCu);
    sub_10000DB58(v8);
  }

  Task.cancel()();
}

uint64_t sub_10001FD80()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10001FDCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10001FDF4(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  type metadata accessor for MainActor();
  v3[22] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[23] = v5;
  v3[24] = v4;

  return _swift_task_switch(sub_10001FE90, v5, v4);
}

uint64_t sub_10001FE90()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  type metadata accessor for _ASCLockupKey(0);
  sub_10002020C();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v0[25] = isa;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10001FFF0;
  v5 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A708, qword_1001B53D0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100020264;
  v0[13] = &unk_100217958;
  v0[14] = v5;
  [v1 _lockupDictionaryForRequest:v3 includingKeys:isa withCompletionBlock:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10001FFF0()
{
  v1 = *v0;
  v2 = *v0;
  v3 = *(*v0 + 48);
  *(*v0 + 208) = v3;
  v4 = *(v1 + 192);
  v5 = *(v1 + 184);
  if (v3)
  {
    v6 = sub_100020194;
  }

  else
  {
    v6 = sub_100020120;
  }

  return _swift_task_switch(v6, v5, v4);
}

uint64_t sub_100020120()
{
  v1 = v0[25];
  v2 = v0[22];

  v3 = v0[18];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100020194()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[22];

  swift_willThrow();

  v4 = v0[1];
  v5 = v0[26];

  return v4();
}

unint64_t sub_10002020C()
{
  result = qword_100239FB0;
  if (!qword_100239FB0)
  {
    type metadata accessor for _ASCLockupKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100239FB0);
  }

  return result;
}

uint64_t sub_100020264(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return _swift_continuation_throwingResumeWithError(v4, v5);
  }

  else
  {
    type metadata accessor for _ASCLockupKey(0);
    sub_10002020C();
    **(*(v4 + 64) + 40) = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return _swift_continuation_throwingResume(v4);
  }
}

uint64_t sub_10002036C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000203E0(uint64_t a1)
{
  *(v1 + 640) = a1;

  return _swift_task_switch(sub_100020470, 0, 0);
}

uint64_t sub_100020470()
{
  v95 = v0;
  v1 = v0 + 10;
  v2 = v0 + 69;
  v3 = v0[80];
  v0[78] = _swiftEmptyArrayStorage;
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v88 = (v0 + 79);
    v6 = v3 + 32;
    v90 = *(v3 + 16);
    v91 = _swiftEmptyArrayStorage;
    v86 = v0 + 69;
    v87 = v0 + 10;
    v89 = v3 + 32;
    while (1)
    {
      v93 = v5;
      sub_10000CE28(v6 + 40 * v5, v2);
      v10 = sub_10000DA7C(v2, v0[72]);
      v11 = type metadata accessor for JSONEncoder();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      JSONEncoder.init()();
      memcpy(__dst, v10, sizeof(__dst));
      memcpy(v1, __dst, 0x1D8uLL);
      sub_100025BD8();
      v17 = dispatch thunk of JSONEncoder.encode<A>(_:)();
      v19 = v18;
      v20 = objc_opt_self();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *v88 = 0;
      v22 = [v20 JSONObjectWithData:isa options:4 error:v88];

      v23 = *v88;
      if (v22)
      {
        break;
      }

      v49 = v23;
      _convertNSErrorToError(_:)();

      swift_willThrow();

      sub_10001BABC(v17, v19);
      v6 = v89;
      if (qword_100239CF8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_10000DAC0(v14, qword_10023FD18);
      swift_errorRetain();
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v15, v16))
      {

LABEL_10:

        goto LABEL_4;
      }

      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v15, v16, "Error encoding metrics event: %@", v7, 0xCu);
      sub_10000DAF8(v8, &qword_100239F10, &qword_1001B4FD0);
      v4 = v90;

LABEL_4:
      v5 = v93 + 1;
      sub_10000DB58(v2);
      if (v93 + 1 == v4)
      {
        v62 = v91;
        if (!(v91 >> 62))
        {
          goto LABEL_73;
        }

LABEL_84:
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_85;
        }

LABEL_74:
        if (qword_100239CF8 != -1)
        {
          swift_once();
        }

        v63 = v2;
        v64 = v1;
        v65 = type metadata accessor for Logger();
        v0[81] = sub_10000DAC0(v65, qword_10023FD18);

        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 134217984;
          if (v62 >> 62)
          {
            v84 = v68;
            v69 = _CocoaArrayWrapper.endIndex.getter();
            v68 = v84;
          }

          else
          {
            v69 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v68 + 4) = v69;
          _os_log_impl(&_mh_execute_header, v66, v67, "Enqueueing %ld events", v68, 0xCu);
        }

        v70 = String._bridgeToObjectiveC()();
        v71 = String._bridgeToObjectiveC()();
        v72 = [objc_opt_self() bagForProfile:v70 profileVersion:v71];

        v73 = objc_allocWithZone(AMSMetrics);
        v74 = String._bridgeToObjectiveC()();
        v75 = [v73 initWithContainerID:v74 bag:v72];
        v0[82] = v75;

        sub_100025C2C();
        v76 = Array._bridgeToObjectiveC()().super.isa;

        v77 = [v75 promiseForEnqueueingEvents:v76];
        v0[83] = v77;

        v0[2] = v0;
        v0[7] = v63;
        v0[3] = sub_100021220;
        v78 = swift_continuation_init();
        v0[17] = sub_10000CDE0(&qword_10023A750, &qword_1001B5478);
        v0[10] = _NSConcreteStackBlock;
        v0[11] = 1107296256;
        v0[12] = sub_100021CD4;
        v0[13] = &unk_1002179C8;
        v0[14] = v78;
        [v77 resultWithCompletion:v64];

        return _swift_continuation_await(v0 + 2);
      }
    }

    _bridgeAnyObjectToAny(_:)();

    sub_10001BABC(v17, v19);
    swift_unknownObjectRelease();
    sub_10000CDE0(&qword_10023A758, &qword_1001B5880);
    if (swift_dynamicCast())
    {
      v24 = v0[10];
      v25 = objc_allocWithZone(AMSMetricsEvent);
      v26 = Dictionary._bridgeToObjectiveC()().super.isa;

      v92 = [v25 initWithUnderlyingDictionary:v26];

      v6 = v89;
      if (sub_10000DA7C(v2, v0[72])[3])
      {
        [v92 setEventTime:?];
      }

      v27 = sub_10000DA7C(v2, v0[72]);
      if (v27[1])
      {
        v28 = *v27;
        v29 = v27[1];

        v30 = String._bridgeToObjectiveC()();

        [v92 setDiagnosticsSubmissionBugType:v30];
      }

      v31 = *(sub_10000DA7C(v2, v0[72]) + 16);
      if (v31 != 2)
      {
        [v92 setPreventSampling:v31 & 1];
      }

      [v92 setAnonymous:{1, v86, v87}];
      v32 = sub_10000DA7C(v2, v0[72])[4];
      if (!v32)
      {
        goto LABEL_69;
      }

      v33 = *(v32 + 16);
      if (v33)
      {

        sub_100146DA4(0, v33, 0);
        v34 = 32;
        do
        {
          v35 = *(v32 + v34);
          if (v35 == 6)
          {
            v36 = 0x6F6973726556736FLL;
          }

          else
          {
            v36 = 0x656E6F7A656D6974;
          }

          if (v35 == 6)
          {
            v37 = 0xE90000000000006ELL;
          }

          else
          {
            v37 = 0xEE0074657366664FLL;
          }

          if (v35 == 4)
          {
            v38 = 0x56646C697542736FLL;
          }

          else
          {
            v38 = 0x656D614E736FLL;
          }

          if (v35 == 4)
          {
            v39 = 0xEE006E6F69737265;
          }

          else
          {
            v39 = 0xE600000000000000;
          }

          if (*(v32 + v34) <= 5u)
          {
            v36 = v38;
            v37 = v39;
          }

          v40 = 0x726556746E657665;
          if (v35 == 2)
          {
            v40 = 0x7372655665736162;
            v41 = 0xEB000000006E6F69;
          }

          else
          {
            v41 = 0xEC0000006E6F6973;
          }

          v42 = 0x6973726556707061;
          if (!*(v32 + v34))
          {
            v42 = 7368801;
          }

          v43 = 0xEA00000000006E6FLL;
          if (!*(v32 + v34))
          {
            v43 = 0xE300000000000000;
          }

          if (*(v32 + v34) <= 1u)
          {
            v40 = v42;
            v41 = v43;
          }

          if (*(v32 + v34) <= 3u)
          {
            v44 = v40;
          }

          else
          {
            v44 = v36;
          }

          if (*(v32 + v34) <= 3u)
          {
            v45 = v41;
          }

          else
          {
            v45 = v37;
          }

          v47 = _swiftEmptyArrayStorage[2];
          v46 = _swiftEmptyArrayStorage[3];
          if (v47 >= v46 >> 1)
          {
            sub_100146DA4((v46 > 1), v47 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v47 + 1;
          v48 = &_swiftEmptyArrayStorage[2 * v47];
          v48[4] = v44;
          v48[5] = v45;
          ++v34;
          --v33;
        }

        while (v33);

        v2 = v86;
        v1 = v87;
        v6 = v89;
        v4 = v90;
        v53 = _swiftEmptyArrayStorage[2];
        if (v53)
        {
LABEL_61:
          sub_100147160(0, v53, 0);
          v54 = &_swiftEmptyArrayStorage[5];
          do
          {
            v55 = *v54;
            v0[74] = *(v54 - 1);
            v0[75] = v55;

            swift_dynamicCast();
            v57 = _swiftEmptyArrayStorage[2];
            v56 = _swiftEmptyArrayStorage[3];
            if (v57 >= v56 >> 1)
            {
              sub_100147160((v56 > 1), v57 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v57 + 1;
            sub_100025CA4(v1, &_swiftEmptyArrayStorage[4 * v57 + 4]);
            v54 += 2;
            --v53;
          }

          while (v53);

          v6 = v89;
          v4 = v90;
LABEL_68:
          v58 = Array._bridgeToObjectiveC()().super.isa;

          [v92 removePropertiesForKeys:v58];

LABEL_69:
          v59 = v92;
          v60 = v0 + 78;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v61 = *((v0[78] & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v60 = v0 + 78;
            v6 = v89;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v91 = *v60;
          goto LABEL_4;
        }
      }

      else
      {
        v53 = _swiftEmptyArrayStorage[2];
        if (v53)
        {
          goto LABEL_61;
        }
      }

      goto LABEL_68;
    }

    v6 = v89;
    if (qword_100239CF8 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_10000DAC0(v50, qword_10023FD18);
    v15 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v15, v51, "Failed to get dictionary for event", v52, 2u);
    }

    goto LABEL_10;
  }

  v62 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage >> 62)
  {
    goto LABEL_84;
  }

LABEL_73:
  if (*((v62 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

LABEL_85:

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v79 = type metadata accessor for Logger();
  sub_10000DAC0(v79, qword_10023FD18);
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&_mh_execute_header, v80, v81, "No events to flush", v82, 2u);
  }

  v83 = v0[1];

  return v83();
}

uint64_t sub_100021220()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 672) = v2;
  if (v2)
  {
    v3 = sub_1000213F0;
  }

  else
  {
    v3 = sub_10002135C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10002135C()
{
  v1 = *(v0 + 664);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1000213F0()
{
  v1 = v0[84];
  v2 = v0[83];
  v3 = v0[81];
  swift_willThrow();

  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[84];
  v8 = v0[82];
  if (v6)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Failed to enqueue events to AMS: %@", v9, 0xCu);
    sub_10000DAF8(v10, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1000215A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return _swift_task_switch(sub_1000215C0, 0, 0);
}

uint64_t sub_1000215C0()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = String._bridgeToObjectiveC()();
  v4 = String._bridgeToObjectiveC()();
  v5 = [objc_opt_self() bagForProfile:v3 profileVersion:v4];

  v6 = objc_allocWithZone(AMSMetrics);
  v7 = String._bridgeToObjectiveC()();
  v8 = [v6 initWithContainerID:v7 bag:v5];
  v0[21] = v8;

  v9 = String._bridgeToObjectiveC()();
  v10 = [v8 flushTopic:v9];
  v0[22] = v10;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1000217F0;
  v11 = swift_continuation_init();
  v0[17] = sub_10000CDE0(&qword_10023A760, &qword_1001B5490);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_100021DA0;
  v0[13] = &unk_1002179F0;
  v0[14] = v11;
  [v10 resultWithCompletion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_1000217F0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 184) = v2;
  if (v2)
  {
    v3 = sub_100021B10;
  }

  else
  {
    v3 = sub_100021900;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100021900()
{
  v18 = v0;
  v1 = *(v0 + 144);

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 160);
  v3 = type metadata accessor for Logger();
  sub_10000DAC0(v3, qword_10023FD18);
  v4 = v1;

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 168);
  if (v7)
  {
    v10 = *(v0 + 152);
    v9 = *(v0 + 160);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v11 = 138412546;
    *(v11 + 4) = v4;
    *v12 = v4;
    *(v11 + 12) = 2080;
    v14 = v4;
    *(v11 + 14) = sub_10017AD04(v10, v9, &v17);
    _os_log_impl(&_mh_execute_header, v5, v6, "Flushed %@ events to %s", v11, 0x16u);
    sub_10000DAF8(v12, &qword_100239F10, &qword_1001B4FD0);

    sub_10000DB58(v13);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_100021B10()
{
  v1 = v0[22];
  v2 = v0[23];
  swift_willThrow();

  if (qword_100239CF8 != -1)
  {
    swift_once();
  }

  v3 = v0[23];
  v4 = type metadata accessor for Logger();
  sub_10000DAC0(v4, qword_10023FD18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[23];
  v9 = v0[21];
  if (v7)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138412290;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    _os_log_impl(&_mh_execute_header, v5, v6, "Failed to enqueue events to AMS: %@", v10, 0xCu);
    sub_10000DAF8(v11, &qword_100239F10, &qword_1001B4FD0);
  }

  else
  {
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100021CD4(uint64_t a1, char a2, void *a3)
{
  v5 = *sub_10000DA7C((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_100021DA0(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000DA7C((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

unint64_t sub_100021EA0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100025F1C(*a1);
  *a2 = result;
  return result;
}

void sub_100021ED0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368801;
  v5 = 0xE90000000000006ELL;
  v6 = 0x6F6973726556736FLL;
  if (v2 != 6)
  {
    v6 = 0x656E6F7A656D6974;
    v5 = 0xEE0074657366664FLL;
  }

  v7 = 0xEE006E6F69737265;
  v8 = 0x56646C697542736FLL;
  if (v2 != 4)
  {
    v8 = 0x656D614E736FLL;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEB000000006E6F69;
  v10 = 0x7372655665736162;
  if (v2 != 2)
  {
    v10 = 0x726556746E657665;
    v9 = 0xEC0000006E6F6973;
  }

  if (*v1)
  {
    v4 = 0x6973726556707061;
    v3 = 0xEA00000000006E6FLL;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_100021FF4(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1000236F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100022144(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_100025B94(&qword_10023A728);
  v36 = a2;
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v11 + 56;
  v34 = v11 + 56;
  v35 = v11;
  v15 = -1 << *(v11 + 32);
  v16 = v13 & ~v15;
  if ((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v31 = v3;
    v32 = a1;
    v33 = ~v15;
    v30 = v7;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    v21 = (v18 - 8);
    v29[1] = v18 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v22 = v17;
      v17(v10, *(v35 + 48) + v20 * v16, v6);
      sub_100025B94(&qword_10023A730);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      v24 = *v21;
      (*v21)(v10, v6);
      if (v23)
      {
        break;
      }

      v16 = (v16 + 1) & v33;
      v17 = v22;
      if (((*(v34 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        v3 = v31;
        a1 = v32;
        v7 = v30;
        goto LABEL_7;
      }
    }

    v24(v36, v6);
    v22(v32, *(v35 + 48) + v20 * v16, v6);
    return 0;
  }

  else
  {
    v17 = *(v7 + 16);
LABEL_7:
    v25 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v36;
    v17(v10, v36, v6);
    v37 = *v3;
    sub_100023870(v10, v16, isUniquelyReferenced_nonNull_native);
    *v3 = v37;
    (*(v7 + 32))(a1, v27, v6);
    return 1;
  }
}

uint64_t sub_1000223FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = AnyHashable._rawHashValue(seed:)(*(*v2 + 40));
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_100025CC4(*(v6 + 48) + 40 * v9, v17);
      v11 = static AnyHashable.== infix(_:_:)();
      sub_100025D20(v17);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_100025D20(a2);
    sub_100025CC4(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v12 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100025CC4(a2, v17);
    v16 = *v3;
    sub_100023AEC(v17, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v16;
    v14 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v14;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_100022548(_BYTE *a1, Swift::Int a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v20 = v2;
  v21 = a1;
  String.hash(into:)();

  v7 = Hasher._finalize()();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_21:
    v17 = *v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v20;
    sub_100023C64(a2, v9, isUniquelyReferenced_nonNull_native);
    *v20 = v22;
    result = 1;
    goto LABEL_24;
  }

  v10 = ~v8;
  while (!*(*(v5 + 48) + v9))
  {
    v12 = 0xE800000000000000;
    v11 = 0x64616F6C6E776F64;
    v13 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

LABEL_8:
    if (v13 == 1)
    {
      v14 = 0x6F6C6E776F646572;
    }

    else
    {
      v14 = 0x6761676E652D6572;
    }

    if (v13 == 1)
    {
      v15 = 0xEA00000000006461;
    }

    else
    {
      v15 = 0xED0000746E656D65;
    }

    if (v11 == v14)
    {
      goto LABEL_18;
    }

LABEL_19:
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v16)
    {
      goto LABEL_23;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (*(*(v5 + 48) + v9) == 1)
  {
    v11 = 0x6F6C6E776F646572;
    v12 = 0xEA00000000006461;
    v13 = a2;
    if (!a2)
    {
      goto LABEL_17;
    }

    goto LABEL_8;
  }

  v11 = 0x6761676E652D6572;
  v12 = 0xED0000746E656D65;
  v13 = a2;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_17:
  v15 = 0xE800000000000000;
  if (v11 != 0x64616F6C6E776F64)
  {
    goto LABEL_19;
  }

LABEL_18:
  if (v12 != v15)
  {
    goto LABEL_19;
  }

LABEL_23:
  result = 0;
  LOBYTE(a2) = *(*(v5 + 48) + v9);
LABEL_24:
  *v21 = a2;
  return result;
}

uint64_t sub_1000227CC(_BYTE *a1, char a2)
{
  v4 = 0xEA00000000006E6FLL;
  v5 = *v2;
  v6 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v20 = a2;
  if (a2)
  {
    v7 = 0x69746375646F7270;
  }

  else
  {
    v7 = 0x6D706F6C65766564;
  }

  if ((a2 & 1) == 0)
  {
    v4 = 0xEB00000000746E65;
  }

  String.hash(into:)();

  v8 = Hasher._finalize()();
  v9 = -1 << *(v5 + 32);
  v10 = v8 & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v5 + 48) + v10) ? 0x69746375646F7270 : 0x6D706F6C65766564;
      v13 = *(*(v5 + 48) + v10) ? 0xEA00000000006E6FLL : 0xEB00000000746E65;
      if (v12 == v7 && v13 == v4)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v15)
      {
        goto LABEL_22;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

LABEL_22:
    result = 0;
    v18 = *(*(v5 + 48) + v10);
  }

  else
  {
LABEL_20:
    v16 = *v21;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v18 = v20 & 1;
    sub_100023F28(v20 & 1, v10, isUniquelyReferenced_nonNull_native);
    *v21 = v23;
    result = 1;
  }

  *a1 = v18;
  return result;
}

uint64_t sub_100022998(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A768, &qword_1001B5498);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100022BF8(uint64_t a1)
{
  v2 = v1;
  v41 = type metadata accessor for Calendar.Component();
  v4 = *(v41 - 8);
  v5 = v4[8];
  __chkstk_darwin(v41);
  v40 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v36 = v7;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v39 = v4 + 4;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(v7 + 48) + v4[9] * (v19 | (v11 << 6));
      v23 = v4[4];
      v37 = v4[9];
      v38 = v23;
      v23(v40, v22, v41);
      v24 = v10;
      v25 = *(v10 + 40);
      sub_100025B94(&qword_10023A728);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v10 = v24;
      v26 = -1 << *(v24 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v38(*(v24 + 48) + v18 * v37, v40, v41);
      ++*(v24 + 16);
      v7 = v36;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v33 = 1 << *(v7 + 32);
    if (v33 >= 64)
    {
      bzero(v12, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v33;
    }

    v2 = v35;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_100022F40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v29 = *v19;
      v30 = *(v19 + 16);
      v31 = *(v19 + 32);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v29;
      *(v15 + 16) = v30;
      *(v15 + 32) = v31;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1000231A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A770, &unk_1001B54A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_100023458(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_1000236F0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100022998(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100024150();
      goto LABEL_16;
    }

    sub_1000248DC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100023870(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100022BF8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1000242AC();
      goto LABEL_12;
    }

    sub_100024B14(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_100025B94(&qword_10023A728);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_100025B94(&qword_10023A730);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100023AEC(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100022F40(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1000244E4();
      goto LABEL_12;
    }

    sub_100024E1C(v7 + 1);
  }

  v9 = *v3;
  result = AnyHashable._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_100025CC4(*(v9 + 48) + 40 * a2, v19);
      v12 = static AnyHashable.== infix(_:_:)();
      result = sub_100025D20(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100023C64(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1000231A0(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        result = sub_10002465C();
        goto LABEL_28;
      }

      sub_100025048(v6 + 1);
    }

    v8 = *v3;
    v9 = *(*v3 + 40);
    Hasher.init(_seed:)();
    String.hash(into:)();

    result = Hasher._finalize()();
    v10 = -1 << *(v8 + 32);
    a2 = result & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0x6F6C6E776F646572;
            v13 = 0xEA00000000006461;
            v14 = v5;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v12 = 0x6761676E652D6572;
            v13 = 0xED0000746E656D65;
            v14 = v5;
            if (!v5)
            {
LABEL_24:
              v16 = 0xE800000000000000;
              if (v12 == 0x64616F6C6E776F64)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v13 = 0xE800000000000000;
          v12 = 0x64616F6C6E776F64;
          v14 = v5;
          if (!v5)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0x6F6C6E776F646572;
        }

        else
        {
          v15 = 0x6761676E652D6572;
        }

        if (v14 == 1)
        {
          v16 = 0xEA00000000006461;
        }

        else
        {
          v16 = 0xED0000746E656D65;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

Swift::Int sub_100023F28(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v23 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    sub_100023458(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10002479C();
      goto LABEL_25;
    }

    sub_1000252D0(v6 + 1);
  }

  v8 = 0x69746375646F7270;
  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  if (v5)
  {
    v11 = 0xEA00000000006E6FLL;
  }

  else
  {
    v8 = 0x6D706F6C65766564;
    v11 = 0xEB00000000746E65;
  }

  String.hash(into:)();

  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v9 + 48) + a2) ? 0x69746375646F7270 : 0x6D706F6C65766564;
      v15 = *(*(v9 + 48) + a2) ? 0xEA00000000006E6FLL : 0xEB00000000746E65;
      if (v14 == v8 && v15 == v11)
      {
        goto LABEL_28;
      }

      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v17)
      {
        goto LABEL_29;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_25:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = v23 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_28:

LABEL_29:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *sub_100024150()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A768, &qword_1001B5498);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1000242AC()
{
  v1 = v0;
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
  v7 = *v0;
  v8 = static _SetStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    v23 = v1;
    result = (v8 + 56);
    v11 = v7 + 56;
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || result >= v11 + 8 * v12)
    {
      result = memmove(result, (v7 + 56), 8 * v12);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v7 + 56);
    v17 = (v14 + 63) >> 6;
    v24 = v3 + 32;
    for (i = v3 + 16; v16; result = (*(v3 + 32))(*(v9 + 48) + v21, v6, v2))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_14:
      v21 = *(v3 + 72) * (v18 | (v13 << 6));
      (*(v3 + 16))(v6, *(v7 + 48) + v21, v2);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= v17)
      {

        v1 = v23;
        goto LABEL_18;
      }

      v20 = *(v11 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1000244E4()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_100025CC4(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002465C()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A770, &unk_1001B54A0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_10002479C()
{
  v1 = v0;
  sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1000248DC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A768, &qword_1001B5498);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100024B14(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Calendar.Component();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_100025B94(&qword_10023A728);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100024E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A780, &qword_1001B54D8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_100025CC4(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v28);
      result = AnyHashable._rawHashValue(seed:)(*(v6 + 40));
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v28[0];
      v16 = v28[1];
      *(v14 + 32) = v29;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v27;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100025048(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A770, &unk_1001B54A0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_1000252D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

void *sub_100025538(uint64_t a1)
{
  v22 = a1;
  v1 = type metadata accessor for Calendar.Component();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin(v1);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v19 = &v18 - v6;
  sub_10000CDE0(&qword_10023A720, &unk_1001B5460);
  v7 = *(v2 + 72);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1001B5420;
  v18 = v9;
  v10 = v9 + v8;
  v11 = *(v2 + 104);
  v11(v9 + v8, enum case for Calendar.Component.year(_:), v1);
  v11(v10 + v7, enum case for Calendar.Component.month(_:), v1);
  v11(v10 + 2 * v7, enum case for Calendar.Component.day(_:), v1);
  v11(v10 + 3 * v7, enum case for Calendar.Component.hour(_:), v1);
  v11(v10 + 4 * v7, enum case for Calendar.Component.minute(_:), v1);
  v11(v10 + 5 * v7, enum case for Calendar.Component.second(_:), v1);
  v20 = v7;
  v11(v10 + 6 * v7, enum case for Calendar.Component.nanosecond(_:), v1);
  v23 = &_swiftEmptySetSingleton;
  v12 = *(v2 + 16);
  v13 = 8;
  do
  {
    if (!--v13)
    {
      break;
    }

    v14 = v21;
    v15 = v10 + v20;
    v12(v21, v10, v1);
    v16 = v19;
    sub_100022144(v19, v14);
    (*(v2 + 8))(v16, v1);
    v10 = v15;
  }

  while ((static Calendar.Component.== infix(_:_:)() & 1) == 0);

  return v23;
}

id sub_100025808(uint64_t a1, uint64_t a2)
{
  v3 = sub_10000CDE0(&qword_10023A718, qword_1001BBA70);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v27 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v27 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Calendar();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DateComponents();
  v16 = *(v28 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v28);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Calendar.current.getter();
  sub_100025538(a2);
  Calendar.dateComponents(_:from:)();

  v20 = *(v12 + 8);
  v20(v15, v11);
  static Calendar.current.getter();
  Calendar.date(from:)();
  v20(v15, v11);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    (*(v16 + 8))(v19, v28);
    sub_10000DAF8(v6, &qword_10023A718, qword_1001BBA70);
    return 0;
  }

  else
  {
    v22 = v27;
    (*(v8 + 32))(v27, v6, v7);
    v23 = objc_opt_self();
    isa = Date._bridgeToObjectiveC()().super.isa;
    v25 = [v23 serverTimeFromDate:isa];

    v26 = [v25 unsignedLongLongValue];
    (*(v8 + 8))(v22, v7);
    (*(v16 + 8))(v19, v28);
    return v26;
  }
}

uint64_t sub_100025B94(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Calendar.Component();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100025BD8()
{
  result = qword_10023A740;
  if (!qword_10023A740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A740);
  }

  return result;
}

unint64_t sub_100025C2C()
{
  result = qword_10023A748;
  if (!qword_10023A748)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10023A748);
  }

  return result;
}

_OWORD *sub_100025CA4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t getEnumTagSinglePayload for Metrics.AMSBaseProperties(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Metrics.AMSBaseProperties(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100025EC8()
{
  result = qword_10023A788;
  if (!qword_10023A788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10023A788);
  }

  return result;
}

unint64_t sub_100025F1C(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100213A98, v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100025F80()
{
  v0 = sub_10000CDE0(&qword_10023A790, &qword_1001B55F0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  qword_10023FC30 = result;
  return result;
}

uint64_t sub_100025FE0()
{
  v0 = type metadata accessor for Logger();
  sub_100026610(v0, qword_10023FC38);
  sub_10000DAC0(v0, qword_10023FC38);
  v1 = Logger.aakSubsystem.unsafeMutableAddressor();
  v2 = *v1;
  v3 = v1[1];

  return Logger.init(subsystem:category:)();
}

void *sub_100026060(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_100026080()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v16[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100239C98 != -1)
  {
    swift_once();
  }

  TaskLocal.get()();
  if (v16[1])
  {
    v5 = v16[0];

    if (v5)
    {
    }
  }

  v7 = Logger.general.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v7, v0);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v10 = 136315138;
    v12 = StaticString.description.getter();
    v14 = sub_10017AD04(v12, v13, v16);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s", v10, 0xCu);
    sub_10000DB58(v11);
  }

  return (*(v1 + 8))(v4, v0);
}

void sub_1000262C0(unint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    sub_100026080();
    if (qword_100239CA0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_10000DAC0(v5, qword_10023FC38);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136446210;
      sub_100014BF8(a1, a2, 1);
      *(v8 + 4) = sub_10017AD04(a1, a2, &v19);
      _os_log_impl(&_mh_execute_header, v6, v7, "Activity associated with %{public}s", v8, 0xCu);
      sub_10000DB58(v9);
    }

    else
    {

      sub_100014BF8(a1, a2, 1);
    }
  }

  else
  {
    sub_100026080();
    if (qword_100239CA0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000DAC0(v10, qword_10023FC38);
    sub_10001EC50();
    sub_10001EC50();
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = HIDWORD(a1);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19 = v14;
      *v13 = 136315650;
      if (a1)
      {
        if (a1 == 1)
        {
          v15 = 4931905;
        }

        else
        {
          v15 = 1162891086;
        }

        if (a1 == 1)
        {
          v16 = 0xE300000000000000;
        }

        else
        {
          v16 = 0xE400000000000000;
        }
      }

      else
      {
        v16 = 0xE300000000000000;
        v15 = 5129543;
      }

      v17 = sub_10017AD04(v15, v16, &v19);

      *(v13 + 4) = v17;
      *(v13 + 12) = 1040;
      *(v13 + 14) = 8;
      *(v13 + 18) = 1024;
      *(v13 + 20) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v11, "Activity associated with %s%.*X", v13, 0x18u);
      sub_10000DB58(v14);
    }

    else
    {
    }
  }
}

uint64_t *sub_100026610(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100026674(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1000266BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_100026714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 688))
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

uint64_t sub_10002675C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 680) = 0;
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
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
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
      *(result + 688) = 1;
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

    *(result + 688) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100026860@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 sharedScheduler];
  v17 = &type metadata for ActivityManager;
  v18 = &off_100223E90;
  v4 = swift_allocObject();
  v16[0] = v4;
  v4[5] = &type metadata for BackgroundSystemTaskScheduler;
  v4[6] = &off_100217910;
  v4[2] = v3;
  v14 = &type metadata for LaunchServicesRecordFactory;
  v15 = &off_10021CBA8;
  sub_1000B8524(v16, v13, a1);
  if (qword_100239CA8 != -1)
  {
    swift_once();
  }

  v5 = qword_10023FC50;
  v6 = [v2 sharedScheduler];
  *(a1 + 280) = &type metadata for ActivityManager;
  *(a1 + 288) = &off_100223E90;
  v7 = swift_allocObject();
  *(a1 + 256) = v7;
  v7[5] = &type metadata for BackgroundSystemTaskScheduler;
  v7[6] = &off_100217910;
  v7[2] = v6;
  *(a1 + 344) = &type metadata for AttributionKitCanineArbiter;
  *(a1 + 352) = &off_1002191C8;
  if (qword_100239C90 != -1)
  {
    swift_once();
  }

  v8 = qword_10023FC28;
  *(a1 + 384) = type metadata accessor for TaskGreyhound();
  *(a1 + 392) = &off_1002169F0;
  *(a1 + 360) = v8;
  *(a1 + 424) = &type metadata for LaunchServicesRecordFactory;
  *(a1 + 432) = &off_10021CBA8;
  *(a1 + 464) = &type metadata for AMSDogBag;
  *(a1 + 472) = &off_100222F48;

  v9 = [v2 sharedScheduler];
  v17 = &type metadata for ActivityManager;
  v18 = &off_100223E90;
  v10 = swift_allocObject();
  v15 = &off_10021CBA8;
  v16[0] = v10;
  v10[5] = &type metadata for BackgroundSystemTaskScheduler;
  v10[6] = &off_100217910;
  v10[2] = v9;
  v14 = &type metadata for LaunchServicesRecordFactory;
  sub_1000B8524(v16, v13, a1 + 480);
  *(a1 + 592) = &type metadata for AppStoreDaemonSKANInterop;
  *(a1 + 600) = &off_100222C60;
  sub_1000B42E0((a1 + 608));
  if (qword_100239D30 != -1)
  {
    swift_once();
  }

  v11 = qword_10023FD90;
  *(a1 + 672) = type metadata accessor for SnoutManager();
  *(a1 + 680) = &off_100223858;
  *(a1 + 648) = v11;
  strcpy((a1 + 88), "postback_store");
  *(a1 + 103) = -18;
  *(a1 + 104) = v5;
  *(a1 + 112) = 0x63616274736F6867;
  *(a1 + 120) = 0xEF65726F74735F6BLL;
  *(a1 + 128) = v5;
  *(a1 + 136) = 0xD000000000000010;
  *(a1 + 144) = 0x80000001001CB320;
  *(a1 + 152) = v5;
  *(a1 + 160) = 0x74735F6E656B6F74;
  *(a1 + 168) = 0xEB0000000065726FLL;
  *(a1 + 176) = v5;
  *(a1 + 184) = 0xD000000000000012;
  *(a1 + 192) = 0x80000001001CB340;
  *(a1 + 200) = v5;
  *(a1 + 208) = 0xD000000000000014;
  *(a1 + 216) = 0x80000001001CB360;
  *(a1 + 224) = v5;
  *(a1 + 232) = 0xD000000000000018;
  *(a1 + 240) = 0x80000001001CB380;
  *(a1 + 248) = v5;
  *(a1 + 296) = 0xD000000000000011;
  *(a1 + 304) = 0x80000001001CB3A0;
  *(a1 + 312) = v5;
}

uint64_t sub_100026C34()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = Logger.developerMode.unsafeMutableAddressor();
  (*(v1 + 16))(v4, v5, v0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "[DeveloperModeService] Get developer mode", v8, 2u);
  }

  (*(v1 + 8))(v4, v0);
  return sub_1000B86A8() & 1;
}

void sub_100026D9C(char a1)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = Logger.developerMode.unsafeMutableAddressor();
  (*(v3 + 16))(v6, v7, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v8, v9, "[DeveloperModeService] Set developer mode to: %{BOOL}d", v10, 8u);
  }

  (*(v3 + 8))(v6, v2);
  sub_1000B8AD8(a1 & 1);
}

uint64_t sub_100026F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Logger.developerMode.unsafeMutableAddressor();
  (*(v6 + 16))(v9, v10, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v16 = a1;
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "[DeveloperModeService] Retrieve developer postback url", v13, 2u);
    a1 = v16;
  }

  (*(v6 + 8))(v9, v5);
  return sub_1000B93A8(a1, a2, v17);
}

uint64_t sub_1000270C8(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = type metadata accessor for DevelopmentPostbackConfiguration();
  v3[20] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = type metadata accessor for Logger();
  v3[23] = v6;
  v7 = *(v6 - 8);
  v3[24] = v7;
  v8 = *(v7 + 64) + 15;
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();

  return _swift_task_switch(sub_1000271D4, 0, 0);
}

uint64_t sub_1000271D4()
{
  v37 = v0;
  v1 = *(v0 + 208);
  v3 = *(v0 + 184);
  v2 = *(v0 + 192);
  Logger.developerMode.unsafeMutableAddressor();
  (*(v2 + 16))(v1);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "[DeveloperModeService] Create development postbacks", v6, 2u);
  }

  v7 = *(v0 + 208);
  v8 = *(v0 + 184);
  v9 = *(v0 + 192);
  v11 = *(v0 + 160);
  v10 = *(v0 + 168);
  v13 = *(v0 + 136);
  v12 = *(v0 + 144);

  (*(v9 + 8))(v7, v8);
  v14 = type metadata accessor for PropertyListDecoder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  PropertyListDecoder.init()();
  sub_100028CF0(&qword_10023A7A0, type metadata accessor for DevelopmentPostbackConfiguration);
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  v18 = *(v0 + 168);
  v17 = *(v0 + 176);
  v19 = *(v0 + 152);

  sub_1000288C4(v18, v17);
  sub_1000B9960(v17, v32);
  v21 = v32[0];
  v20 = v32[1];
  v22 = v32[2];
  v23 = v32[3];
  v24 = v32[4];
  v25 = v33;
  v26 = v34;
  v27 = v35;
  v28 = v36;
  v29 = *(v0 + 152);
  *(v0 + 16) = v32[0];
  *(v0 + 24) = v20;
  *(v0 + 32) = v22;
  *(v0 + 40) = v23;
  *(v0 + 48) = v24;
  *(v0 + 56) = v25;
  *(v0 + 57) = v26;
  *(v0 + 64) = v27;
  *(v0 + 72) = v28;
  v30 = swift_task_alloc();
  *(v0 + 216) = v30;
  *v30 = v0;
  v30[1] = sub_1000275CC;

  return sub_100106118(v21);
}

uint64_t sub_1000275CC()
{
  v2 = *(*v1 + 216);
  v3 = *v1;
  *(v3 + 224) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_100027908, 0, 0);
  }

  else
  {
    v4 = *(v3 + 152);
    v5 = *(v3 + 40);
    *(v3 + 80) = *(v3 + 24);
    *(v3 + 96) = v5;
    *(v3 + 112) = *(v3 + 56);
    *(v3 + 128) = *(v3 + 72);
    v6 = swift_task_alloc();
    *(v3 + 232) = v6;
    *v6 = v3;
    v6[1] = sub_100027760;

    return sub_1001091AC(v3 + 80);
  }
}

uint64_t sub_100027760()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v4 = *v0;

  sub_10000DAF8(v1 + 16, &qword_10023A7A8, &qword_1001B57E8);

  return _swift_task_switch(sub_100027874, 0, 0);
}

uint64_t sub_100027874()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[21];
  sub_100028928(v0[22]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_100027908()
{
  v1 = v0[22];
  sub_10000DAF8((v0 + 2), &qword_10023A7A8, &qword_1001B57E8);
  sub_100028928(v1);
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[21];
  v5 = v0[22];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1000279B4()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100027A74, 0, 0);
}

uint64_t sub_100027A74()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = Logger.developerMode.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[DeveloperModeService] Transmit development postbacks", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v12 = sub_1000286A4(&off_100213C98);
  v0[6] = v12;
  v13 = swift_task_alloc();
  v0[7] = v13;
  *v13 = v0;
  v13[1] = sub_100027BE0;

  return sub_10010B00C(v12);
}

uint64_t sub_100027BE0()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 40);
  v6 = *v0;

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100027D10()
{
  v1[2] = v0;
  v2 = type metadata accessor for Logger();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();

  return _swift_task_switch(sub_100027DD0, 0, 0);
}

uint64_t sub_100027DD0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = Logger.developerMode.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "[DeveloperModeService] Clear development postbacks", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v11 = v0[2];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v12 = swift_task_alloc();
  v0[6] = v12;
  *v12 = v0;
  v12[1] = sub_100027F24;

  return sub_10010B9C4();
}

uint64_t sub_100027F24()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

Swift::Int sub_100028038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A7C0, &qword_1001B5808);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v32 = v3 + 56;
    v30 = v1;
    v31 = a1 + 32;
    v29 = v3;
    while (1)
    {
      v5 = *(v31 + 8 * v4);
      v6 = *(v3 + 40);
      Hasher.init(_seed:)();
      v7 = *(v5 + 16);
      Hasher._combine(_:)(v7);
      v8 = *(v5 + 16);
      if (v8)
      {

        v9 = (v5 + 40);
        do
        {
          v10 = *(v9 - 1);
          v11 = *v9;

          String.hash(into:)();

          v9 += 2;
          --v8;
        }

        while (v8);
      }

      else
      {
      }

      result = Hasher._finalize()();
      v13 = -1 << *(v3 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      v16 = *(v32 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      v18 = *(v3 + 48);
      if (((1 << v14) & v16) != 0)
      {
        break;
      }

LABEL_26:
      *(v32 + 8 * v15) = v16 | v17;
      *(v18 + 8 * v14) = v5;
      v26 = *(v3 + 16);
      v27 = __OFADD__(v26, 1);
      v28 = v26 + 1;
      if (v27)
      {
        goto LABEL_31;
      }

      *(v3 + 16) = v28;
LABEL_4:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    v19 = ~v13;
    while (1)
    {
      v20 = *(v18 + 8 * v14);
      if (*(v20 + 16) == v7)
      {
        break;
      }

LABEL_12:
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = *(v32 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if ((v16 & (1 << v14)) == 0)
      {
        v3 = v29;
        v1 = v30;
        v18 = *(v29 + 48);
        goto LABEL_26;
      }
    }

    if (!v7 || v20 == v5)
    {
LABEL_3:

      v3 = v29;
      v1 = v30;
      goto LABEL_4;
    }

    v21 = *(v5 + 16);
    v22 = (v20 + 40);
    v23 = (v5 + 40);
    v24 = v7;
    while (v21)
    {
      result = *(v22 - 1);
      if (result != *(v23 - 1) || *v22 != *v23)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      --v21;
      v22 += 2;
      v23 += 2;
      if (!--v24)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_10002826C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A798, &qword_1001B57C8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = static Hasher._hash(seed:_:)();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100028384(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_10000CDE0(&qword_10023A738, &qword_1001B5800);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_100028CF0(&qword_10023A728, &type metadata accessor for Calendar.Component);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_100028CF0(&qword_10023A730, &type metadata accessor for Calendar.Component);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_1000286A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A778, &qword_1001B57D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    while (1)
    {
      v6 = *(v26 + v4);
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      if (v6)
      {
        v8 = 0x69746375646F7270;
      }

      else
      {
        v8 = 0x6D706F6C65766564;
      }

      if (v6)
      {
        v9 = 0xEA00000000006E6FLL;
      }

      else
      {
        v9 = 0xEB00000000746E65;
      }

      String.hash(into:)();

      result = Hasher._finalize()();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) != 0)
      {
        v24 = v6;
        v16 = ~v11;
        do
        {
          if (*(*(v3 + 48) + v12))
          {
            v17 = 0x69746375646F7270;
          }

          else
          {
            v17 = 0x6D706F6C65766564;
          }

          if (*(*(v3 + 48) + v12))
          {
            v18 = 0xEA00000000006E6FLL;
          }

          else
          {
            v18 = 0xEB00000000746E65;
          }

          if (v17 == v8 && v18 == v9)
          {

            goto LABEL_4;
          }

          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v20)
          {
            goto LABEL_4;
          }

          v12 = (v12 + 1) & v16;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while ((v14 & (1 << v12)) != 0);
        LOBYTE(v6) = v24;
      }

      *(v5 + 8 * v13) = v14 | v15;
      *(*(v3 + 48) + v12) = v6;
      v21 = *(v3 + 16);
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        break;
      }

      *(v3 + 16) = v23;
LABEL_4:
      if (++v4 == v25)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_1000288C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DevelopmentPostbackConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100028928(uint64_t a1)
{
  v2 = type metadata accessor for DevelopmentPostbackConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100028984(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A7B8, &qword_1001B57F8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100028B78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10000CDE0(&qword_10023A7B0, &qword_1001B57F0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      v8 = *(v3 + 40);
      Hasher.init(_seed:)();
      if (v7 == 2)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v7 & 1);
      }

      result = Hasher._finalize()();
      v10 = ~(-1 << *(v3 + 32));
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v5 + 8 * v12);
      v14 = 1 << (result & v10);
      v15 = *(v3 + 48);
      if ((v14 & v13) != 0)
      {
        do
        {
          v19 = *(v15 + v11);
          if (v19 == 2)
          {
            if (v7 == 2)
            {
              goto LABEL_3;
            }
          }

          else if (v7 != 2 && ((v19 ^ v7) & 1) == 0)
          {
            goto LABEL_3;
          }

          v11 = (v11 + 1) & v10;
          v12 = v11 >> 6;
          v13 = *(v5 + 8 * (v11 >> 6));
          v14 = 1 << v11;
        }

        while ((v13 & (1 << v11)) != 0);
      }

      *(v5 + 8 * v12) = v13 | v14;
      *(v15 + v11) = v7;
      v16 = *(v3 + 16);
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      *(v3 + 16) = v18;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

uint64_t sub_100028CF0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100028D38()
{
  sub_10000DB58((v0 + 16));

  return _swift_deallocObject(v0, 56, 7);
}

Swift::Int sub_100028D84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100028DF8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100028E3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[463] = v5;
  v6[457] = a5;
  v6[451] = a4;
  v6[445] = a3;
  v6[439] = a2;
  v6[433] = a1;
  v7 = type metadata accessor for Calendar.Component();
  v6[469] = v7;
  v8 = *(v7 - 8);
  v6[475] = v8;
  v9 = *(v8 + 64) + 15;
  v6[481] = swift_task_alloc();
  v10 = type metadata accessor for Date();
  v6[487] = v10;
  v11 = *(v10 - 8);
  v6[493] = v11;
  v12 = *(v11 + 64) + 15;
  v6[499] = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  v6[505] = v13;
  v14 = *(v13 - 8);
  v6[511] = v14;
  v15 = *(v14 + 64) + 15;
  v6[517] = swift_task_alloc();
  v6[523] = swift_task_alloc();
  v6[524] = swift_task_alloc();
  v6[525] = swift_task_alloc();
  v6[526] = swift_task_alloc();

  return _swift_task_switch(sub_100028FF8, 0, 0);
}

uint64_t sub_100028FF8()
{
  v1 = *(v0 + 3704);
  sub_10003B67C(v1, v0 + 2648);
  v2 = swift_allocObject();
  *(v0 + 4216) = v2;
  v3 = *(v0 + 2728);
  *(v2 + 80) = *(v0 + 2712);
  *(v2 + 96) = v3;
  *(v2 + 112) = *(v0 + 2744);
  v4 = *(v0 + 2664);
  *(v2 + 16) = *(v0 + 2648);
  *(v2 + 32) = v4;
  v5 = *(v0 + 2696);
  *(v2 + 48) = *(v0 + 2680);
  *(v2 + 64) = v5;
  swift_asyncLet_begin();
  sub_10003B67C(v1, v0 + 2792);
  v6 = swift_allocObject();
  *(v0 + 4224) = v6;
  v7 = *(v0 + 2872);
  *(v6 + 80) = *(v0 + 2856);
  *(v6 + 96) = v7;
  *(v6 + 112) = *(v0 + 2888);
  v8 = *(v0 + 2808);
  *(v6 + 16) = *(v0 + 2792);
  *(v6 + 32) = v8;
  v9 = *(v0 + 2840);
  *(v6 + 48) = *(v0 + 2824);
  *(v6 + 64) = v9;
  sub_10000CDE0(&unk_10023C250, &qword_1001B58B0);
  swift_asyncLet_begin();
  sub_10003B67C(v1, v0 + 2936);
  v10 = swift_allocObject();
  *(v0 + 4232) = v10;
  v11 = *(v0 + 3016);
  *(v10 + 80) = *(v0 + 3000);
  *(v10 + 96) = v11;
  *(v10 + 112) = *(v0 + 3032);
  v12 = *(v0 + 2952);
  *(v10 + 16) = *(v0 + 2936);
  *(v10 + 32) = v12;
  v13 = *(v0 + 2984);
  *(v10 + 48) = *(v0 + 2968);
  *(v10 + 64) = v13;
  swift_asyncLet_begin();

  return _swift_asyncLet_get(v0 + 16, v0 + 4343, sub_1000291F0, v0 + 2752);
}

uint64_t sub_100029218()
{
  *(v0 + 4240) = *(v0 + 3416);

  return _swift_asyncLet_get(v0 + 1296, v0 + 3368, sub_100029288, v0 + 4048);
}

uint64_t sub_1000292A4()
{
  v84 = v0;
  if (*(v0 + 4345) == 1)
  {
    v1 = *(v0 + 3368);
    v2 = *(v0 + 3512);
    v3 = *(v0 + 3464);

    v4 = static JWS.headerDictionary(fromJWS:)(v3, v2);
    *(v0 + 4248) = 0;
    v80 = v1;
    v19 = 0;
    v81 = v4;
    v20 = v4 + 64;
    v21 = -1;
    v22 = -1 << *(v4 + 32);
    if (-v22 < 64)
    {
      v21 = ~(-1 << -v22);
    }

    v23 = v21 & *(v4 + 64);
    v24 = (63 - v22) >> 6;
    if (v23)
    {
      while (1)
      {
        v25 = v19;
LABEL_17:
        v26 = __clz(__rbit64(v23));
        v23 &= v23 - 1;
        v27 = v26 | (v25 << 6);
        v28 = (*(v81 + 48) + 16 * v27);
        v30 = *v28;
        v29 = v28[1];
        sub_10002036C(*(v81 + 56) + 32 * v27, v0 + 3336);
        *(v0 + 3272) = v30;
        *(v0 + 3280) = v29;
        sub_100025CA4((v0 + 3336), (v0 + 3288));
        sub_100014B50(v0 + 3272, v0 + 3224, &qword_10023A830, &qword_1001B58C8);
        v31 = *(v0 + 3224);
        v32 = *(v0 + 3232);

        sub_100021FF4(&v83, v31, v32);

        sub_10000DAF8(v0 + 3272, &qword_10023A830, &qword_1001B58C8);
        v4 = sub_10000DB58((v0 + 3240));
        if (!v23)
        {
          goto LABEL_13;
        }
      }
    }

    while (1)
    {
LABEL_13:
      v25 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return _swift_asyncLet_finish(v4, v5, v6, v7);
      }

      if (v25 >= v24)
      {
        break;
      }

      v23 = *(v20 + 8 * v25);
      ++v19;
      if (v23)
      {
        v19 = v25;
        goto LABEL_17;
      }
    }

    v33 = *(v0 + 4240);

    v34 = sub_10002C05C(v33, &_swiftEmptySetSingleton);

    if (v34)
    {
      v4 = static JWS.payloadDictionary(fromJWS:)(*(v0 + 3464), *(v0 + 3512));
      *(v0 + 4256) = 0;
      v46 = 0;
      v82 = v4;
      v47 = v4 + 64;
      v48 = -1;
      v49 = -1 << *(v4 + 32);
      if (-v49 < 64)
      {
        v48 = ~(-1 << -v49);
      }

      v50 = v48 & *(v4 + 64);
      for (i = (63 - v49) >> 6; v50; v4 = sub_10000DB58((v0 + 3096)))
      {
        v52 = v46;
LABEL_32:
        v53 = __clz(__rbit64(v50));
        v50 &= v50 - 1;
        v54 = v53 | (v52 << 6);
        v55 = (*(v82 + 48) + 16 * v54);
        v57 = *v55;
        v56 = v55[1];
        sub_10002036C(*(v82 + 56) + 32 * v54, v0 + 3192);
        *(v0 + 3128) = v57;
        *(v0 + 3136) = v56;
        sub_100025CA4((v0 + 3192), (v0 + 3144));
        sub_100014B50(v0 + 3128, v0 + 3080, &qword_10023A830, &qword_1001B58C8);
        v58 = *(v0 + 3080);
        v59 = *(v0 + 3088);

        sub_100021FF4(&v83, v58, v59);

        sub_10000DAF8(v0 + 3128, &qword_10023A830, &qword_1001B58C8);
      }

      while (1)
      {
        v52 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_42;
        }

        if (v52 >= i)
        {
          v60 = *(v0 + 4088);

          v61 = sub_10002C05C(v80, &_swiftEmptySetSingleton);

          v62 = Logger.impression.unsafeMutableAddressor();
          v63 = *(v60 + 16);
          v64 = *(v0 + 4040);
          if (v61)
          {
            v63(*(v0 + 4208), v62, v64);
            v65 = Logger.logObject.getter();
            v66 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v65, v66))
            {
              v67 = *(v0 + 3560);
              v68 = swift_slowAlloc();
              *v68 = 134217984;
              *(v68 + 4) = v67;
              _os_log_impl(&_mh_execute_header, v65, v66, "Validated impression for advertised app: %llu", v68, 0xCu);
            }

            v69 = *(v0 + 4208);
            v70 = *(v0 + 4088);
            v71 = *(v0 + 4040);

            (*(v70 + 8))(v69, v71);
            v6 = sub_100029A98;
            v4 = v0 + 1296;
            v5 = v0 + 3368;
            v7 = v0 + 3424;
          }

          else
          {
            v63(*(v0 + 4200), v62, v64);
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 0;
              _os_log_impl(&_mh_execute_header, v72, v73, "Payload is not a subset of allowed header properties", v74, 2u);
            }

            v75 = *(v0 + 4200);
            v76 = *(v0 + 4088);
            v77 = *(v0 + 4040);

            (*(v76 + 8))(v75, v77);
            sub_10003AEE0();
            *(v0 + 4264) = swift_allocError();
            *v78 = 3;
            swift_willThrow();
            v6 = sub_100029C20;
            v4 = v0 + 1296;
            v5 = v0 + 3368;
            v7 = v0 + 3568;
          }

          goto LABEL_6;
        }

        v50 = *(v47 + 8 * v52);
        ++v46;
        if (v50)
        {
          v46 = v52;
          goto LABEL_32;
        }
      }
    }

    v35 = *(v0 + 4192);
    v36 = *(v0 + 4088);
    v37 = *(v0 + 4040);

    v38 = Logger.impression.unsafeMutableAddressor();
    (*(v36 + 16))(v35, v38, v37);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Header is not a subset of allowed header properties", v41, 2u);
    }

    v42 = *(v0 + 4192);
    v43 = *(v0 + 4088);
    v44 = *(v0 + 4040);

    (*(v43 + 8))(v42, v44);
    sub_10003AEE0();
    *(v0 + 4272) = swift_allocError();
    *v45 = 2;
    swift_willThrow();
    v6 = sub_10002A324;
    v4 = v0 + 1296;
    v5 = v0 + 3368;
    v7 = v0 + 3904;
  }

  else
  {
    v8 = *(v0 + 4240);
    v9 = *(v0 + 4184);
    v10 = *(v0 + 4088);
    v11 = *(v0 + 4040);

    v12 = Logger.impression.unsafeMutableAddressor();
    (*(v10 + 16))(v9, v12, v11);
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "Strict impression decoding is disabled", v15, 2u);
    }

    v16 = *(v0 + 4184);
    v17 = *(v0 + 4088);
    v18 = *(v0 + 4040);

    (*(v17 + 8))(v16, v18);
    v6 = sub_10002AA28;
    v4 = v0 + 1296;
    v5 = v0 + 3368;
    v7 = v0 + 4000;
  }

LABEL_6:

  return _swift_asyncLet_finish(v4, v5, v6, v7);
}

uint64_t sub_100029B30()
{
  v1 = v0[529];
  v2 = v0[528];
  v3 = v0[527];
  v4 = v0[526];
  v5 = v0[525];
  v6 = v0[524];
  v7 = v0[523];
  v8 = v0[517];
  v9 = v0[499];
  v10 = v0[481];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100029CB8()
{
  v1 = *(v0 + 4264);
  *(v0 + 4280) = v1;
  v2 = *(v0 + 4136);
  v3 = *(v0 + 4088);
  v4 = *(v0 + 4040);
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered failure while validating impression JWS: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 4136);
  v55 = (v0 + 4338);
  v12 = *(v0 + 4088);
  v56 = (v0 + 4321);
  v13 = *(v0 + 4040);
  v14 = *(v0 + 3992);
  v15 = *(v0 + 3944);
  v50 = *(v0 + 3896);
  v16 = *(v0 + 3848);
  v17 = v6;
  v18 = *(v0 + 3800);
  v48 = *(v0 + 3752);
  v57 = *(v0 + 3704);
  v19 = *(v0 + 3656);
  v54 = *(v0 + 3608);

  (*(v12 + 8))(v11, v13);
  swift_errorRetain();
  v49 = sub_1000C7C10(v1);
  v52 = v21;
  v53 = v20;
  v51 = v22;

  static Date.now.getter();
  (*(v18 + 104))(v16, enum case for Calendar.Component.hour(_:), v48);
  v23 = sub_100025808(v14, v16);
  LOBYTE(v11) = v24;
  (*(v18 + 8))(v16, v48);
  (*(v15 + 8))(v14, v50);
  if (v11)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = [objc_opt_self() buildVersion];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 4344) = 1;
  *(v0 + 4320) = 1;
  *(v0 + 4312) = 1;
  *(v0 + 4304) = 1;
  *(v0 + 4296) = 1;
  *(v0 + 1976) = 0;
  *(v0 + 1978) = *(v0 + 4332);
  *(v0 + 1982) = *(v0 + 4336);
  *(v0 + 1984) = v49;
  *(v0 + 1992) = v53;
  *(v0 + 2000) = v52;
  *(v0 + 2008) = v51;
  *(v0 + 2016) = v54;
  *(v0 + 2024) = v19;
  *(v0 + 2032) = v25;
  *(v0 + 2040) = v27;
  *(v0 + 2048) = v29;
  *(v0 + 2056) = 0;
  *(v0 + 2061) = 2;
  *(v0 + 2057) = 33686018;
  *(v0 + 2064) = 0;
  v30 = *(v0 + 4344);
  *(v0 + 2072) = v30;
  *(v0 + 2073) = *(v0 + 4305);
  *(v0 + 2076) = *(v0 + 4308);
  *(v0 + 2080) = 0;
  v31 = *(v0 + 4320);
  *(v0 + 2088) = v31;
  *(v0 + 2089) = 3;
  *(v0 + 2090) = *(v0 + 4326);
  *(v0 + 2094) = *(v0 + 4330);
  *(v0 + 2096) = 0;
  v32 = *(v0 + 4312);
  *(v0 + 2104) = v32;
  *(v0 + 2108) = *(v0 + 4316);
  *(v0 + 2105) = *(v0 + 4313);
  *(v0 + 2112) = 0;
  v33 = *(v0 + 4304);
  *(v0 + 2120) = v33;
  *(v0 + 2121) = 770;
  *(v0 + 2127) = *(v0 + 4342);
  *(v0 + 2123) = *v55;
  *(v0 + 2128) = 0;
  v34 = *(v0 + 4296);
  *(v0 + 2136) = v34;
  v35 = *(v0 + 4297);
  *(v0 + 2140) = *(v0 + 4300);
  *(v0 + 2137) = v35;
  *(v0 + 2144) = 0u;
  *(v0 + 2160) = 514;
  *(v0 + 2162) = 2;
  v36 = *v56;
  *(v0 + 2167) = *(v0 + 4325);
  *(v0 + 2163) = v36;
  *(v0 + 2168) = 0u;
  *(v0 + 2184) = 0u;
  *(v0 + 2424) = 0;
  v37 = *(v0 + 4332);
  *(v0 + 2430) = *(v0 + 4336);
  *(v0 + 2426) = v37;
  *(v0 + 2432) = v49;
  *(v0 + 2440) = v53;
  *(v0 + 2448) = v52;
  *(v0 + 2456) = v51;
  *(v0 + 2464) = v54;
  *(v0 + 2472) = v19;
  *(v0 + 2480) = v25;
  *(v0 + 2488) = v27;
  *(v0 + 2496) = v29;
  *(v0 + 2504) = 0;
  *(v0 + 2509) = 2;
  *(v0 + 2505) = 33686018;
  *(v0 + 2512) = 0;
  *(v0 + 2520) = v30;
  v38 = *(v0 + 4305);
  *(v0 + 2524) = *(v0 + 4308);
  *(v0 + 2521) = v38;
  *(v0 + 2528) = 0;
  *(v0 + 2536) = v31;
  *(v0 + 2537) = 3;
  v39 = *(v0 + 4326);
  *(v0 + 2542) = *(v0 + 4330);
  *(v0 + 2538) = v39;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = v32;
  v40 = *(v0 + 4313);
  *(v0 + 2556) = *(v0 + 4316);
  *(v0 + 2553) = v40;
  *(v0 + 2560) = 0;
  *(v0 + 2568) = v33;
  *(v0 + 2569) = 770;
  v41 = *v55;
  *(v0 + 2575) = *(v0 + 4342);
  *(v0 + 2571) = v41;
  *(v0 + 2576) = 0;
  *(v0 + 2584) = v34;
  v42 = *(v0 + 4297);
  *(v0 + 2588) = *(v0 + 4300);
  *(v0 + 2585) = v42;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 514;
  *(v0 + 2610) = 2;
  v43 = *v56;
  *(v0 + 2615) = *(v0 + 4325);
  *(v0 + 2611) = v43;
  *(v0 + 2616) = 0u;
  *(v0 + 2632) = 0u;
  sub_100010568(v0 + 1976, v0 + 2200);
  sub_10003AE8C(v0 + 2424);
  sub_10000DA7C((v57 + 24), *(v57 + 48));
  v44 = type metadata accessor for SnoutManager();
  v45 = swift_task_alloc();
  *(v0 + 4288) = v45;
  *v45 = v0;
  v45[1] = sub_10002AAC0;
  v46 = *(v0 + 3560);

  return (sub_10016E27C)(v0 + 1976, v46, 0, 0, v44, &off_100223858);
}

uint64_t sub_10002A3BC()
{
  v1 = *(v0 + 4272);
  *(v0 + 4280) = v1;
  v2 = *(v0 + 4136);
  v3 = *(v0 + 4088);
  v4 = *(v0 + 4040);
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered failure while validating impression JWS: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 4136);
  v55 = (v0 + 4338);
  v12 = *(v0 + 4088);
  v56 = (v0 + 4321);
  v13 = *(v0 + 4040);
  v14 = *(v0 + 3992);
  v15 = *(v0 + 3944);
  v50 = *(v0 + 3896);
  v16 = *(v0 + 3848);
  v17 = v6;
  v18 = *(v0 + 3800);
  v48 = *(v0 + 3752);
  v57 = *(v0 + 3704);
  v19 = *(v0 + 3656);
  v54 = *(v0 + 3608);

  (*(v12 + 8))(v11, v13);
  swift_errorRetain();
  v49 = sub_1000C7C10(v1);
  v52 = v21;
  v53 = v20;
  v51 = v22;

  static Date.now.getter();
  (*(v18 + 104))(v16, enum case for Calendar.Component.hour(_:), v48);
  v23 = sub_100025808(v14, v16);
  LOBYTE(v11) = v24;
  (*(v18 + 8))(v16, v48);
  (*(v15 + 8))(v14, v50);
  if (v11)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = [objc_opt_self() buildVersion];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 4344) = 1;
  *(v0 + 4320) = 1;
  *(v0 + 4312) = 1;
  *(v0 + 4304) = 1;
  *(v0 + 4296) = 1;
  *(v0 + 1976) = 0;
  *(v0 + 1978) = *(v0 + 4332);
  *(v0 + 1982) = *(v0 + 4336);
  *(v0 + 1984) = v49;
  *(v0 + 1992) = v53;
  *(v0 + 2000) = v52;
  *(v0 + 2008) = v51;
  *(v0 + 2016) = v54;
  *(v0 + 2024) = v19;
  *(v0 + 2032) = v25;
  *(v0 + 2040) = v27;
  *(v0 + 2048) = v29;
  *(v0 + 2056) = 0;
  *(v0 + 2061) = 2;
  *(v0 + 2057) = 33686018;
  *(v0 + 2064) = 0;
  v30 = *(v0 + 4344);
  *(v0 + 2072) = v30;
  *(v0 + 2073) = *(v0 + 4305);
  *(v0 + 2076) = *(v0 + 4308);
  *(v0 + 2080) = 0;
  v31 = *(v0 + 4320);
  *(v0 + 2088) = v31;
  *(v0 + 2089) = 3;
  *(v0 + 2090) = *(v0 + 4326);
  *(v0 + 2094) = *(v0 + 4330);
  *(v0 + 2096) = 0;
  v32 = *(v0 + 4312);
  *(v0 + 2104) = v32;
  *(v0 + 2108) = *(v0 + 4316);
  *(v0 + 2105) = *(v0 + 4313);
  *(v0 + 2112) = 0;
  v33 = *(v0 + 4304);
  *(v0 + 2120) = v33;
  *(v0 + 2121) = 770;
  *(v0 + 2127) = *(v0 + 4342);
  *(v0 + 2123) = *v55;
  *(v0 + 2128) = 0;
  v34 = *(v0 + 4296);
  *(v0 + 2136) = v34;
  v35 = *(v0 + 4297);
  *(v0 + 2140) = *(v0 + 4300);
  *(v0 + 2137) = v35;
  *(v0 + 2144) = 0u;
  *(v0 + 2160) = 514;
  *(v0 + 2162) = 2;
  v36 = *v56;
  *(v0 + 2167) = *(v0 + 4325);
  *(v0 + 2163) = v36;
  *(v0 + 2168) = 0u;
  *(v0 + 2184) = 0u;
  *(v0 + 2424) = 0;
  v37 = *(v0 + 4332);
  *(v0 + 2430) = *(v0 + 4336);
  *(v0 + 2426) = v37;
  *(v0 + 2432) = v49;
  *(v0 + 2440) = v53;
  *(v0 + 2448) = v52;
  *(v0 + 2456) = v51;
  *(v0 + 2464) = v54;
  *(v0 + 2472) = v19;
  *(v0 + 2480) = v25;
  *(v0 + 2488) = v27;
  *(v0 + 2496) = v29;
  *(v0 + 2504) = 0;
  *(v0 + 2509) = 2;
  *(v0 + 2505) = 33686018;
  *(v0 + 2512) = 0;
  *(v0 + 2520) = v30;
  v38 = *(v0 + 4305);
  *(v0 + 2524) = *(v0 + 4308);
  *(v0 + 2521) = v38;
  *(v0 + 2528) = 0;
  *(v0 + 2536) = v31;
  *(v0 + 2537) = 3;
  v39 = *(v0 + 4326);
  *(v0 + 2542) = *(v0 + 4330);
  *(v0 + 2538) = v39;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = v32;
  v40 = *(v0 + 4313);
  *(v0 + 2556) = *(v0 + 4316);
  *(v0 + 2553) = v40;
  *(v0 + 2560) = 0;
  *(v0 + 2568) = v33;
  *(v0 + 2569) = 770;
  v41 = *v55;
  *(v0 + 2575) = *(v0 + 4342);
  *(v0 + 2571) = v41;
  *(v0 + 2576) = 0;
  *(v0 + 2584) = v34;
  v42 = *(v0 + 4297);
  *(v0 + 2588) = *(v0 + 4300);
  *(v0 + 2585) = v42;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 514;
  *(v0 + 2610) = 2;
  v43 = *v56;
  *(v0 + 2615) = *(v0 + 4325);
  *(v0 + 2611) = v43;
  *(v0 + 2616) = 0u;
  *(v0 + 2632) = 0u;
  sub_100010568(v0 + 1976, v0 + 2200);
  sub_10003AE8C(v0 + 2424);
  sub_10000DA7C((v57 + 24), *(v57 + 48));
  v44 = type metadata accessor for SnoutManager();
  v45 = swift_task_alloc();
  *(v0 + 4288) = v45;
  *v45 = v0;
  v45[1] = sub_10002AAC0;
  v46 = *(v0 + 3560);

  return (sub_10016E27C)(v0 + 1976, v46, 0, 0, v44, &off_100223858);
}

uint64_t sub_10002AAC0()
{
  v1 = *v0;
  v2 = *(*v0 + 4288);
  v4 = *v0;

  sub_10003AE8C(v1 + 1976);

  return _swift_task_switch(sub_10002ABC4, 0, 0);
}

uint64_t sub_10002ABC4()
{
  v1 = v0[535];
  v2 = v0[529];
  v3 = v0[528];
  v4 = v0[527];
  v5 = v0[526];
  v6 = v0[525];
  v7 = v0[524];
  v8 = v0[523];
  v9 = v0[517];
  v13 = v0[499];
  v14 = v0[481];
  swift_willThrow();

  v10 = v0[1];
  v11 = v0[535];

  return v10();
}

uint64_t sub_10002AD5C()
{
  v1 = *(v0 + 4248);
  *(v0 + 4280) = v1;
  v2 = *(v0 + 4136);
  v3 = *(v0 + 4088);
  v4 = *(v0 + 4040);
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered failure while validating impression JWS: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 4136);
  v55 = (v0 + 4338);
  v12 = *(v0 + 4088);
  v56 = (v0 + 4321);
  v13 = *(v0 + 4040);
  v14 = *(v0 + 3992);
  v15 = *(v0 + 3944);
  v50 = *(v0 + 3896);
  v16 = *(v0 + 3848);
  v17 = v6;
  v18 = *(v0 + 3800);
  v48 = *(v0 + 3752);
  v57 = *(v0 + 3704);
  v19 = *(v0 + 3656);
  v54 = *(v0 + 3608);

  (*(v12 + 8))(v11, v13);
  swift_errorRetain();
  v49 = sub_1000C7C10(v1);
  v52 = v21;
  v53 = v20;
  v51 = v22;

  static Date.now.getter();
  (*(v18 + 104))(v16, enum case for Calendar.Component.hour(_:), v48);
  v23 = sub_100025808(v14, v16);
  LOBYTE(v11) = v24;
  (*(v18 + 8))(v16, v48);
  (*(v15 + 8))(v14, v50);
  if (v11)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = [objc_opt_self() buildVersion];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 4344) = 1;
  *(v0 + 4320) = 1;
  *(v0 + 4312) = 1;
  *(v0 + 4304) = 1;
  *(v0 + 4296) = 1;
  *(v0 + 1976) = 0;
  *(v0 + 1978) = *(v0 + 4332);
  *(v0 + 1982) = *(v0 + 4336);
  *(v0 + 1984) = v49;
  *(v0 + 1992) = v53;
  *(v0 + 2000) = v52;
  *(v0 + 2008) = v51;
  *(v0 + 2016) = v54;
  *(v0 + 2024) = v19;
  *(v0 + 2032) = v25;
  *(v0 + 2040) = v27;
  *(v0 + 2048) = v29;
  *(v0 + 2056) = 0;
  *(v0 + 2061) = 2;
  *(v0 + 2057) = 33686018;
  *(v0 + 2064) = 0;
  v30 = *(v0 + 4344);
  *(v0 + 2072) = v30;
  *(v0 + 2073) = *(v0 + 4305);
  *(v0 + 2076) = *(v0 + 4308);
  *(v0 + 2080) = 0;
  v31 = *(v0 + 4320);
  *(v0 + 2088) = v31;
  *(v0 + 2089) = 3;
  *(v0 + 2090) = *(v0 + 4326);
  *(v0 + 2094) = *(v0 + 4330);
  *(v0 + 2096) = 0;
  v32 = *(v0 + 4312);
  *(v0 + 2104) = v32;
  *(v0 + 2108) = *(v0 + 4316);
  *(v0 + 2105) = *(v0 + 4313);
  *(v0 + 2112) = 0;
  v33 = *(v0 + 4304);
  *(v0 + 2120) = v33;
  *(v0 + 2121) = 770;
  *(v0 + 2127) = *(v0 + 4342);
  *(v0 + 2123) = *v55;
  *(v0 + 2128) = 0;
  v34 = *(v0 + 4296);
  *(v0 + 2136) = v34;
  v35 = *(v0 + 4297);
  *(v0 + 2140) = *(v0 + 4300);
  *(v0 + 2137) = v35;
  *(v0 + 2144) = 0u;
  *(v0 + 2160) = 514;
  *(v0 + 2162) = 2;
  v36 = *v56;
  *(v0 + 2167) = *(v0 + 4325);
  *(v0 + 2163) = v36;
  *(v0 + 2168) = 0u;
  *(v0 + 2184) = 0u;
  *(v0 + 2424) = 0;
  v37 = *(v0 + 4332);
  *(v0 + 2430) = *(v0 + 4336);
  *(v0 + 2426) = v37;
  *(v0 + 2432) = v49;
  *(v0 + 2440) = v53;
  *(v0 + 2448) = v52;
  *(v0 + 2456) = v51;
  *(v0 + 2464) = v54;
  *(v0 + 2472) = v19;
  *(v0 + 2480) = v25;
  *(v0 + 2488) = v27;
  *(v0 + 2496) = v29;
  *(v0 + 2504) = 0;
  *(v0 + 2509) = 2;
  *(v0 + 2505) = 33686018;
  *(v0 + 2512) = 0;
  *(v0 + 2520) = v30;
  v38 = *(v0 + 4305);
  *(v0 + 2524) = *(v0 + 4308);
  *(v0 + 2521) = v38;
  *(v0 + 2528) = 0;
  *(v0 + 2536) = v31;
  *(v0 + 2537) = 3;
  v39 = *(v0 + 4326);
  *(v0 + 2542) = *(v0 + 4330);
  *(v0 + 2538) = v39;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = v32;
  v40 = *(v0 + 4313);
  *(v0 + 2556) = *(v0 + 4316);
  *(v0 + 2553) = v40;
  *(v0 + 2560) = 0;
  *(v0 + 2568) = v33;
  *(v0 + 2569) = 770;
  v41 = *v55;
  *(v0 + 2575) = *(v0 + 4342);
  *(v0 + 2571) = v41;
  *(v0 + 2576) = 0;
  *(v0 + 2584) = v34;
  v42 = *(v0 + 4297);
  *(v0 + 2588) = *(v0 + 4300);
  *(v0 + 2585) = v42;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 514;
  *(v0 + 2610) = 2;
  v43 = *v56;
  *(v0 + 2615) = *(v0 + 4325);
  *(v0 + 2611) = v43;
  *(v0 + 2616) = 0u;
  *(v0 + 2632) = 0u;
  sub_100010568(v0 + 1976, v0 + 2200);
  sub_10003AE8C(v0 + 2424);
  sub_10000DA7C((v57 + 24), *(v57 + 48));
  v44 = type metadata accessor for SnoutManager();
  v45 = swift_task_alloc();
  *(v0 + 4288) = v45;
  *v45 = v0;
  v45[1] = sub_10002AAC0;
  v46 = *(v0 + 3560);

  return (sub_10016E27C)(v0 + 1976, v46, 0, 0, v44, &off_100223858);
}

uint64_t sub_10002B460()
{
  v1 = *(v0 + 4256);
  *(v0 + 4280) = v1;
  v2 = *(v0 + 4136);
  v3 = *(v0 + 4088);
  v4 = *(v0 + 4040);
  v5 = Logger.impression.unsafeMutableAddressor();
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Encountered failure while validating impression JWS: %@", v8, 0xCu);
    sub_10000DAF8(v9, &qword_100239F10, &qword_1001B4FD0);
  }

  v11 = *(v0 + 4136);
  v55 = (v0 + 4338);
  v12 = *(v0 + 4088);
  v56 = (v0 + 4321);
  v13 = *(v0 + 4040);
  v14 = *(v0 + 3992);
  v15 = *(v0 + 3944);
  v50 = *(v0 + 3896);
  v16 = *(v0 + 3848);
  v17 = v6;
  v18 = *(v0 + 3800);
  v48 = *(v0 + 3752);
  v57 = *(v0 + 3704);
  v19 = *(v0 + 3656);
  v54 = *(v0 + 3608);

  (*(v12 + 8))(v11, v13);
  swift_errorRetain();
  v49 = sub_1000C7C10(v1);
  v52 = v21;
  v53 = v20;
  v51 = v22;

  static Date.now.getter();
  (*(v18 + 104))(v16, enum case for Calendar.Component.hour(_:), v48);
  v23 = sub_100025808(v14, v16);
  LOBYTE(v11) = v24;
  (*(v18 + 8))(v16, v48);
  (*(v15 + 8))(v14, v50);
  if (v11)
  {
    v25 = 0;
  }

  else
  {
    v25 = v23;
  }

  v26 = [objc_opt_self() buildVersion];
  v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v29 = v28;

  *(v0 + 4344) = 1;
  *(v0 + 4320) = 1;
  *(v0 + 4312) = 1;
  *(v0 + 4304) = 1;
  *(v0 + 4296) = 1;
  *(v0 + 1976) = 0;
  *(v0 + 1978) = *(v0 + 4332);
  *(v0 + 1982) = *(v0 + 4336);
  *(v0 + 1984) = v49;
  *(v0 + 1992) = v53;
  *(v0 + 2000) = v52;
  *(v0 + 2008) = v51;
  *(v0 + 2016) = v54;
  *(v0 + 2024) = v19;
  *(v0 + 2032) = v25;
  *(v0 + 2040) = v27;
  *(v0 + 2048) = v29;
  *(v0 + 2056) = 0;
  *(v0 + 2061) = 2;
  *(v0 + 2057) = 33686018;
  *(v0 + 2064) = 0;
  v30 = *(v0 + 4344);
  *(v0 + 2072) = v30;
  *(v0 + 2073) = *(v0 + 4305);
  *(v0 + 2076) = *(v0 + 4308);
  *(v0 + 2080) = 0;
  v31 = *(v0 + 4320);
  *(v0 + 2088) = v31;
  *(v0 + 2089) = 3;
  *(v0 + 2090) = *(v0 + 4326);
  *(v0 + 2094) = *(v0 + 4330);
  *(v0 + 2096) = 0;
  v32 = *(v0 + 4312);
  *(v0 + 2104) = v32;
  *(v0 + 2108) = *(v0 + 4316);
  *(v0 + 2105) = *(v0 + 4313);
  *(v0 + 2112) = 0;
  v33 = *(v0 + 4304);
  *(v0 + 2120) = v33;
  *(v0 + 2121) = 770;
  *(v0 + 2127) = *(v0 + 4342);
  *(v0 + 2123) = *v55;
  *(v0 + 2128) = 0;
  v34 = *(v0 + 4296);
  *(v0 + 2136) = v34;
  v35 = *(v0 + 4297);
  *(v0 + 2140) = *(v0 + 4300);
  *(v0 + 2137) = v35;
  *(v0 + 2144) = 0u;
  *(v0 + 2160) = 514;
  *(v0 + 2162) = 2;
  v36 = *v56;
  *(v0 + 2167) = *(v0 + 4325);
  *(v0 + 2163) = v36;
  *(v0 + 2168) = 0u;
  *(v0 + 2184) = 0u;
  *(v0 + 2424) = 0;
  v37 = *(v0 + 4332);
  *(v0 + 2430) = *(v0 + 4336);
  *(v0 + 2426) = v37;
  *(v0 + 2432) = v49;
  *(v0 + 2440) = v53;
  *(v0 + 2448) = v52;
  *(v0 + 2456) = v51;
  *(v0 + 2464) = v54;
  *(v0 + 2472) = v19;
  *(v0 + 2480) = v25;
  *(v0 + 2488) = v27;
  *(v0 + 2496) = v29;
  *(v0 + 2504) = 0;
  *(v0 + 2509) = 2;
  *(v0 + 2505) = 33686018;
  *(v0 + 2512) = 0;
  *(v0 + 2520) = v30;
  v38 = *(v0 + 4305);
  *(v0 + 2524) = *(v0 + 4308);
  *(v0 + 2521) = v38;
  *(v0 + 2528) = 0;
  *(v0 + 2536) = v31;
  *(v0 + 2537) = 3;
  v39 = *(v0 + 4326);
  *(v0 + 2542) = *(v0 + 4330);
  *(v0 + 2538) = v39;
  *(v0 + 2544) = 0;
  *(v0 + 2552) = v32;
  v40 = *(v0 + 4313);
  *(v0 + 2556) = *(v0 + 4316);
  *(v0 + 2553) = v40;
  *(v0 + 2560) = 0;
  *(v0 + 2568) = v33;
  *(v0 + 2569) = 770;
  v41 = *v55;
  *(v0 + 2575) = *(v0 + 4342);
  *(v0 + 2571) = v41;
  *(v0 + 2576) = 0;
  *(v0 + 2584) = v34;
  v42 = *(v0 + 4297);
  *(v0 + 2588) = *(v0 + 4300);
  *(v0 + 2585) = v42;
  *(v0 + 2592) = 0u;
  *(v0 + 2608) = 514;
  *(v0 + 2610) = 2;
  v43 = *v56;
  *(v0 + 2615) = *(v0 + 4325);
  *(v0 + 2611) = v43;
  *(v0 + 2616) = 0u;
  *(v0 + 2632) = 0u;
  sub_100010568(v0 + 1976, v0 + 2200);
  sub_10003AE8C(v0 + 2424);
  sub_10000DA7C((v57 + 24), *(v57 + 48));
  v44 = type metadata accessor for SnoutManager();
  v45 = swift_task_alloc();
  *(v0 + 4288) = v45;
  *v45 = v0;
  v45[1] = sub_10002AAC0;
  v46 = *(v0 + 3560);

  return (sub_10016E27C)(v0 + 1976, v46, 0, 0, v44, &off_100223858);
}

uint64_t sub_10002BACC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002BB74;

  return sub_100158B54(4);
}

uint64_t sub_10002BB74(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10002BC74, 0, 0);
}

uint64_t sub_10002BC74()
{
  v1 = *(v0 + 32);
  if (v1 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1 & 1;
  }

  **(v0 + 16) = v2;
  return (*(v0 + 8))();
}

uint64_t sub_10002BCA4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002BD4C;

  return sub_10007B174(5);
}

uint64_t sub_10002BD4C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10002BE4C, 0, 0);
}

uint64_t sub_10002BE4C()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = &off_100213CC0;
  }

  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10002BE80(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_10002BF28;

  return sub_10007B174(6);
}

uint64_t sub_10002BF28(uint64_t a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return _swift_task_switch(sub_10002C028, 0, 0);
}

uint64_t sub_10002C028()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v1 = &off_100213D00;
  }

  **(v0 + 16) = v1;
  return (*(v0 + 8))();
}

uint64_t sub_10002C05C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_10003AC90(a2);
    v8[0] = result;
    v8[1] = v6;
    if (v6)
    {
      __chkstk_darwin(result);
      v7[2] = v8;
      v3 = sub_1000E1818(sub_10003B8DC, v7, a1);

      return v3 & 1;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      v3 = 1;
      return v3 & 1;
    }

    return sub_10003AD0C(a1, a2);
  }

  return result;
}

uint64_t sub_10002C13C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 720) = v5;
  *(v6 + 817) = a5;
  *(v6 + 712) = a4;
  *(v6 + 704) = a3;
  *(v6 + 696) = a2;
  *(v6 + 688) = a1;
  v7 = type metadata accessor for Calendar.Component();
  *(v6 + 728) = v7;
  v8 = *(v7 - 8);
  *(v6 + 736) = v8;
  v9 = *(v8 + 64) + 15;
  *(v6 + 744) = swift_task_alloc();
  v10 = type metadata accessor for Date();
  *(v6 + 752) = v10;
  v11 = *(v10 - 8);
  *(v6 + 760) = v11;
  v12 = *(v11 + 64) + 15;
  *(v6 + 768) = swift_task_alloc();
  v13 = type metadata accessor for Logger();
  *(v6 + 776) = v13;
  v14 = *(v13 - 8);
  *(v6 + 784) = v14;
  v15 = *(v14 + 64) + 15;
  *(v6 + 792) = swift_task_alloc();

  return _swift_task_switch(sub_10002C2C8, 0, 0);
}

uint64_t sub_10002C2C8()
{
  v1 = v0[88];
  v2 = v0[87];
  v3 = v0[86];
  v4 = type metadata accessor for AppImpressionPayload();
  v5 = sub_10003AFB8();
  v6 = sub_10003B00C();
  v7 = sub_10003C160(&qword_10023A808, type metadata accessor for AppImpressionPayload);
  v8 = sub_10003C160(&qword_10023A810, type metadata accessor for AppImpressionPayload);

  JWS.init(compactJWS:)(v2, v1, v4, v5, v6, v7, v8, v3);
  v0[100] = 0;
  v9 = v0[99];
  v10 = v0[96];
  v11 = v0[93];

  v12 = v0[1];

  return v12();
}

uint64_t sub_10002C8E0()
{
  v1 = *v0;
  v2 = *(*v0 + 808);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10002C9E4, 0, 0);
}

uint64_t sub_10002C9E4()
{
  v1 = v0[100];
  v2 = v0[99];
  v3 = v0[96];
  v4 = v0[93];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[100];

  return v5();
}

uint64_t sub_10002CA7C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 1576) = v5;
  *(v6 + 2075) = a5;
  *(v6 + 2074) = a4;
  *(v6 + 1568) = a3;
  *(v6 + 1560) = a2;
  *(v6 + 1552) = a1;
  v7 = *(*(sub_10000CDE0(&qword_10023A7C8, &qword_1001C17F0) - 8) + 64) + 15;
  *(v6 + 1584) = swift_task_alloc();
  *(v6 + 1592) = swift_task_alloc();
  *(v6 + 1600) = swift_task_alloc();
  *(v6 + 1608) = swift_task_alloc();
  v8 = type metadata accessor for Logger();
  *(v6 + 1616) = v8;
  v9 = *(v8 - 8);
  *(v6 + 1624) = v9;
  v10 = *(v9 + 64) + 15;
  *(v6 + 1632) = swift_task_alloc();
  *(v6 + 1640) = swift_task_alloc();
  *(v6 + 1648) = swift_task_alloc();
  *(v6 + 1656) = swift_task_alloc();
  *(v6 + 1664) = swift_task_alloc();
  *(v6 + 1672) = swift_task_alloc();
  v11 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
  *(v6 + 1680) = v11;
  v12 = *(*(v11 - 8) + 64) + 15;
  *(v6 + 1688) = swift_task_alloc();
  v13 = type metadata accessor for ImpressionModel();
  *(v6 + 1696) = v13;
  v14 = *(v13 - 8);
  *(v6 + 1704) = v14;
  *(v6 + 1712) = *(v14 + 64);
  *(v6 + 1720) = swift_task_alloc();
  *(v6 + 1728) = swift_task_alloc();
  *(v6 + 1736) = swift_task_alloc();
  *(v6 + 1744) = swift_task_alloc();
  v15 = type metadata accessor for Calendar.Component();
  *(v6 + 1752) = v15;
  v16 = *(v15 - 8);
  *(v6 + 1760) = v16;
  v17 = *(v16 + 64) + 15;
  *(v6 + 1768) = swift_task_alloc();
  v18 = type metadata accessor for Date();
  *(v6 + 1776) = v18;
  v19 = *(v18 - 8);
  *(v6 + 1784) = v19;
  v20 = *(v19 + 64) + 15;
  *(v6 + 1792) = swift_task_alloc();
  *(v6 + 1800) = swift_task_alloc();

  return _swift_task_switch(sub_10002CD70, 0, 0);
}

uint64_t sub_10002CD70()
{
  v1 = *(v0 + 1800);
  v2 = *(v0 + 1784);
  v90 = *(v0 + 1792);
  v91 = *(v0 + 1776);
  v3 = *(v0 + 1768);
  v4 = *(v0 + 1760);
  v5 = *(v0 + 1752);
  v88 = *(v0 + 1576);
  v89 = *(v0 + 1568);
  v87 = *(v0 + 1552);
  v84 = *(v0 + 1680);
  v85 = v89 + *(v84 + 68);
  v86 = type metadata accessor for AppImpressionPayload();
  v6 = &v85[v86[10]];
  v7 = v6[1];
  v93 = *v6;
  v8 = v85[v86[11]];

  static Date.now.getter();
  (*(v4 + 104))(v3, enum case for Calendar.Component.hour(_:), v5);
  v9 = sub_100025808(v1, v3);
  v11 = v10;
  (*(v4 + 8))(v3, v5);
  v12 = *(v2 + 8);
  *(v0 + 1808) = v12;
  *(v0 + 1816) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13 = v91;
  v92 = v12;
  v12(v1, v13);
  if (v11)
  {
    v9 = 0;
  }

  v14 = [objc_opt_self() buildVersion];
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v0 + 2072) = 1;
  *(v0 + 2080) = 1;
  *(v0 + 2088) = 1;
  *(v0 + 2096) = 1;
  *(v0 + 2104) = 1;
  *(v0 + 688) = 0;
  *(v0 + 696) = 0u;
  *(v0 + 712) = 0u;
  *(v0 + 728) = v93;
  *(v0 + 736) = v7;
  *(v0 + 744) = v9;
  *(v0 + 752) = v15;
  *(v0 + 760) = v17;
  *(v0 + 768) = 512;
  *(v0 + 770) = v8;
  *(v0 + 771) = 512;
  *(v0 + 773) = 2;
  *(v0 + 776) = 0;
  *(v0 + 784) = 1;
  *(v0 + 792) = 0;
  v18 = *(v0 + 2080);
  *(v0 + 800) = v18;
  *(v0 + 801) = 3;
  *(v0 + 808) = 0;
  v19 = *(v0 + 2088);
  *(v0 + 816) = v19;
  *(v0 + 824) = 0;
  v20 = *(v0 + 2096);
  *(v0 + 832) = v20;
  *(v0 + 833) = 770;
  *(v0 + 840) = 0;
  v21 = *(v0 + 2104);
  *(v0 + 848) = v21;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 514;
  *(v0 + 874) = 2;
  *(v0 + 880) = 0u;
  *(v0 + 896) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 472) = 0u;
  *(v0 + 488) = 0u;
  *(v0 + 504) = v93;
  *(v0 + 512) = v7;
  *(v0 + 520) = v9;
  *(v0 + 528) = v15;
  *(v0 + 536) = v17;
  *(v0 + 544) = 512;
  *(v0 + 546) = v8;
  *(v0 + 547) = 512;
  *(v0 + 549) = 2;
  *(v0 + 552) = 0;
  *(v0 + 560) = 1;
  *(v0 + 568) = 0;
  *(v0 + 576) = v18;
  *(v0 + 577) = 3;
  *(v0 + 584) = 0;
  *(v0 + 592) = v19;
  *(v0 + 600) = 0;
  *(v0 + 608) = v20;
  *(v0 + 609) = 770;
  *(v0 + 616) = 0;
  *(v0 + 624) = v21;
  *(v0 + 632) = 0u;
  *(v0 + 648) = 514;
  *(v0 + 650) = 2;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;
  sub_100010568(v0 + 688, v0 + 912);
  sub_10003AE8C(v0 + 464);
  v22 = *(v0 + 704);
  *(v0 + 1824) = *(v0 + 688);
  *(v0 + 1840) = v22;
  v23 = *(v0 + 872);
  *(v0 + 1488) = *(v0 + 856);
  *(v0 + 1504) = v23;
  *(v0 + 1520) = *(v0 + 888);
  v24 = *(v0 + 808);
  *(v0 + 1424) = *(v0 + 792);
  *(v0 + 1440) = v24;
  v25 = *(v0 + 840);
  *(v0 + 1456) = *(v0 + 824);
  *(v0 + 1472) = v25;
  v26 = *(v0 + 744);
  *(v0 + 1360) = *(v0 + 728);
  *(v0 + 1376) = v26;
  v27 = *(v0 + 776);
  *(v0 + 1392) = *(v0 + 760);
  *(v0 + 1856) = *(v0 + 720);
  *(v0 + 1536) = *(v0 + 904);
  *(v0 + 1408) = v27;
  v28 = sub_100030604(v87);
  Date.init(timeIntervalSinceNow:)();
  sub_100030798(v89, v90);
  v29 = *(v0 + 1576);
  v30 = *&v85[v86[5]];
  sub_100031330(v30, v93, v7, *(v0 + 1552));
  if (v28)
  {
    v31 = [objc_opt_self() standardUserDefaults];
    v32 = sub_1000BC488(0, 9);

    if (v32 == 2)
    {
      v33 = 1;
    }

    else
    {
      v33 = v32 ^ 1;
    }
  }

  else
  {
    v33 = v30 != 0;
  }

  v94 = v33;
  v34 = *(v0 + 1800);
  v35 = *(v0 + 1776);
  v36 = *(v0 + 1744);
  v37 = *(v0 + 1696);
  v38 = *(v0 + 1688);
  v39 = *(v0 + 1680);
  sub_100014B50(*(v0 + 1568), v38, &qword_10023A7D0, &unk_1001B5840);
  *v36 = 0;
  *(v36 + 8) = 1;
  v40 = v38 + *(v84 + 68);
  v41 = v37[5];
  v42 = type metadata accessor for UUID();
  (*(*(v42 - 8) + 16))(v36 + v41, v40, v42);
  *(v36 + v37[6]) = *(v40 + v86[5]);
  *(v36 + v37[7]) = *(v40 + v86[6]);
  v43 = (v40 + v86[10]);
  v45 = *v43;
  v44 = v43[1];
  v46 = (v36 + v37[8]);
  *v46 = v45;
  v46[1] = v44;
  *(v36 + v37[9]) = *(v40 + v86[8]);
  *(v36 + v37[10]) = 0;
  v47 = (v38 + *(v39 + 76));
  v48 = *v47;
  *(v0 + 1864) = *v47;
  v49 = v47[1];
  *(v0 + 1872) = v49;
  v50 = (v36 + v37[11]);
  *v50 = v48;
  v50[1] = v49;

  static Date.now.getter();
  Date.timeIntervalSince1970.getter();
  v52 = v51;
  *(v0 + 1880) = v51;
  v92(v34, v35);
  result = sub_10000DAF8(v38, &qword_10023A7D0, &unk_1001B5840);
  v54 = v52 * 1000.0;
  if (COERCE__INT64(fabs(v52 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v54 <= -1.0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v54 >= 1.84467441e19)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v55 = *(v0 + 1744);
  v56 = *(v0 + 1696);
  v57 = *(v0 + 2074);
  *(v55 + *(v56 + 48)) = v54;
  *(v55 + *(v56 + 52)) = v94 & 1;
  if (v57)
  {
    v58 = *(v0 + 1744);
    v59 = *(v0 + 1736);
    v60 = *(v0 + 1712);
    v61 = *(v0 + 1704);
    v62 = *(v0 + 1576);
    v63 = *v62;
    if (*(v0 + 2075) == 1)
    {
      v64 = v62[1];
      v65 = v62[2];
      sub_10003C208(v58, *(v0 + 1736), type metadata accessor for ImpressionModel);
      v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
      v67 = swift_allocObject();
      *(v0 + 1912) = v67;
      sub_10003C270(v59, v67 + v66, type metadata accessor for ImpressionModel);
      v68 = swift_task_alloc();
      *(v0 + 1920) = v68;
      *v68 = v0;
      v68[1] = sub_10002DC5C;
      v69 = *(v0 + 1608);
      v70 = sub_10003B334;
    }

    else
    {
      *(v0 + 1936) = v63;
      v64 = v62[1];
      *(v0 + 1944) = v64;
      v65 = v62[2];
      *(v0 + 1952) = v65;
      sub_10003C208(v58, v59, type metadata accessor for ImpressionModel);
      v81 = *(v61 + 80);
      *(v0 + 2076) = v81;
      v82 = (v81 + 16) & ~v81;
      v67 = swift_allocObject();
      *(v0 + 1960) = v67;
      sub_10003C270(v59, v67 + v82, type metadata accessor for ImpressionModel);
      v83 = swift_task_alloc();
      *(v0 + 1968) = v83;
      *v83 = v0;
      v83[1] = sub_10002E5A4;
      v69 = *(v0 + 1592);
      v70 = sub_10003B060;
    }

    return sub_100110668(v69, v70, v67, v63, v64, v65);
  }

  else
  {
    v71 = *(v0 + 1736);
    v72 = *(v0 + 1712);
    v73 = *(v0 + 1704);
    v74 = *(v0 + 1576);
    v76 = *v74;
    v75 = v74[1];
    v77 = v74[2];
    sub_10003C208(*(v0 + 1744), v71, type metadata accessor for ImpressionModel);
    v78 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v79 = swift_allocObject();
    *(v0 + 1888) = v79;
    sub_10003C270(v71, v79 + v78, type metadata accessor for ImpressionModel);
    v80 = swift_task_alloc();
    *(v0 + 1896) = v80;
    *v80 = v0;
    v80[1] = sub_10002D860;

    return sub_10010E730(sub_10010E730, sub_10003B4C0, v79, v76, v75, v77);
  }
}

uint64_t sub_10002D860()
{
  v2 = *v1;
  v3 = *(*v1 + 1896);
  v15 = *v1;
  *(*v1 + 1904) = v0;

  v4 = *(v2 + 1888);
  if (v0)
  {

    v5 = sub_10002FAD4;
  }

  else
  {
    v6 = *(v2 + 1856);
    v13 = *(v2 + 1840);
    v14 = *(v2 + 1824);

    *(v2 + 1152) = v13;
    *(v2 + 1136) = v14;
    *(v2 + 1168) = v6;
    v7 = *(v2 + 1504);
    *(v2 + 1304) = *(v2 + 1488);
    *(v2 + 1320) = v7;
    *(v2 + 1336) = *(v2 + 1520);
    *(v2 + 1352) = *(v2 + 1536);
    v8 = *(v2 + 1440);
    *(v2 + 1240) = *(v2 + 1424);
    *(v2 + 1256) = v8;
    v9 = *(v2 + 1472);
    *(v2 + 1272) = *(v2 + 1456);
    *(v2 + 1288) = v9;
    v10 = *(v2 + 1376);
    *(v2 + 1176) = *(v2 + 1360);
    *(v2 + 1192) = v10;
    v11 = *(v2 + 1408);
    *(v2 + 1208) = *(v2 + 1392);
    *(v2 + 1224) = v11;
    sub_10003AE8C(v2 + 1136);
    v5 = sub_10002DA04;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_10002DA04()
{
  v1 = v0[209];
  v2 = v0[203];
  v3 = v0[202];
  v4 = Logger.impression.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully added pending impression", v7, 2u);
  }

  v8 = v0[227];
  v9 = v0[226];
  v10 = v0[224];
  v11 = v0[222];
  v12 = v0[218];
  v13 = v0[209];
  v14 = v0[203];
  v15 = v0[202];

  (*(v14 + 8))(v13, v15);
  v9(v10, v11);
  sub_10003C1A8(v12, type metadata accessor for ImpressionModel);
  v16 = v0[225];
  v17 = v0[224];
  v18 = v0[221];
  v19 = v0[218];
  v20 = v0[217];
  v21 = v0[216];
  v22 = v0[215];
  v23 = v0[211];
  v24 = v0[209];
  v25 = v0[208];
  v28 = v0[207];
  v29 = v0[206];
  v30 = v0[205];
  v31 = v0[204];
  v32 = v0[201];
  v33 = v0[200];
  v34 = v0[199];
  v35 = v0[198];

  v26 = v0[1];

  return v26();
}

uint64_t sub_10002DC5C()
{
  v2 = *v1;
  v3 = *(*v1 + 1920);
  v4 = *v1;
  *(*v1 + 1928) = v0;

  v5 = *(v2 + 1912);

  if (v0)
  {
    v6 = sub_10002FD04;
  }

  else
  {
    v6 = sub_10002DD90;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002DD90()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1600);
  sub_100014B50(*(v0 + 1608), v3, &qword_10023A7C8, &qword_1001C17F0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = *(v0 + 1648);
    v5 = *(v0 + 1624);
    v6 = *(v0 + 1616);
    sub_10000DAF8(*(v0 + 1600), &qword_10023A7C8, &qword_1001C17F0);
    v7 = Logger.impression.unsafeMutableAddressor();
    (*(v5 + 16))(v4, v7, v6);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "No pending impression found during finalization", v10, 2u);
    }

    v100 = *(v0 + 1816);
    v11 = *(v0 + 1808);
    v12 = *(v0 + 1792);
    v13 = *(v0 + 1776);
    v14 = *(v0 + 1744);
    v15 = *(v0 + 1648);
    v16 = *(v0 + 1624);
    v17 = *(v0 + 1616);
    v18 = *(v0 + 1608);

    (*(v16 + 8))(v15, v17);
    v19 = v14;
    sub_10003AEE0();
    v20 = swift_allocError();
    *v21 = 10;
    swift_willThrow();
    sub_10000DAF8(v18, &qword_10023A7C8, &qword_1001C17F0);
    v11(v12, v13);
  }

  else
  {
    v22 = *(v0 + 1872);
    v23 = *(v0 + 1864);
    v24 = *(v0 + 1728);
    v25 = *(v0 + 1696);
    sub_10003C270(*(v0 + 1600), v24, type metadata accessor for ImpressionModel);
    v26 = (v24 + *(v25 + 44));
    result = *v26;
    v28 = *v26 == v23 && v26[1] == v22;
    if (v28 || (v29 = *(v0 + 1872), v30 = *(v0 + 1864), result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
    {
      v31 = *(v0 + 1728);
      v32 = *(v0 + 1880) * 1000.0;
      v33 = *(v31 + *(*(v0 + 1696) + 48));
      v34 = v32 >= v33;
      v35 = v32 - v33;
      if (!v34)
      {
        __break(1u);
        return result;
      }

      if (v35 >= 0x7D1)
      {
        sub_10000DAF8(*(v0 + 1608), &qword_10023A7C8, &qword_1001C17F0);
        sub_10003C1A8(v31, type metadata accessor for ImpressionModel);
        v36 = *(v0 + 1744);
        v37 = *(v0 + 1736);
        v38 = *(v0 + 1712);
        v39 = *(v0 + 1704);
        v40 = *(v0 + 1576);
        v41 = *v40;
        *(v0 + 1936) = *v40;
        v42 = v40[1];
        *(v0 + 1944) = v42;
        v43 = v40[2];
        *(v0 + 1952) = v43;
        sub_10003C208(v36, v37, type metadata accessor for ImpressionModel);
        v44 = *(v39 + 80);
        *(v0 + 2076) = v44;
        v45 = (v44 + 16) & ~v44;
        v46 = swift_allocObject();
        *(v0 + 1960) = v46;
        sub_10003C270(v37, v46 + v45, type metadata accessor for ImpressionModel);
        v47 = swift_task_alloc();
        *(v0 + 1968) = v47;
        *v47 = v0;
        v47[1] = sub_10002E5A4;
        v48 = *(v0 + 1592);
        v49 = sub_10003B060;
        v50 = v46;
        v51 = v41;
        v52 = v42;
        v53 = v43;
        v54 = sub_100110668;

        return v54(v48, v49, v50, v51, v52, v53);
      }

      v55 = *(v0 + 1664);
      v56 = *(v0 + 1624);
      v57 = *(v0 + 1616);
      v58 = Logger.impression.unsafeMutableAddressor();
      (*(v56 + 16))(v55, v58, v57);
      v59 = Logger.logObject.getter();
      v60 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&_mh_execute_header, v59, v60, "Impression ended too soon", v61, 2u);
      }

      v62 = *(v0 + 1808);
      v63 = *(v0 + 1792);
      v64 = *(v0 + 1776);
      v19 = *(v0 + 1744);
      v99 = *(v0 + 1728);
      v101 = *(v0 + 1816);
      v65 = *(v0 + 1664);
      v66 = *(v0 + 1624);
      v67 = *(v0 + 1616);
      v68 = *(v0 + 1608);

      (*(v66 + 8))(v65, v67);
      sub_10003AEE0();
      v20 = swift_allocError();
      v70 = 12;
    }

    else
    {
      v71 = *(v0 + 1656);
      v72 = *(v0 + 1624);
      v73 = *(v0 + 1616);
      v74 = Logger.impression.unsafeMutableAddressor();
      (*(v72 + 16))(v71, v74, v73);
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "Intake JWS doesn't match pending JWS", v77, 2u);
      }

      v62 = *(v0 + 1808);
      v63 = *(v0 + 1792);
      v64 = *(v0 + 1776);
      v19 = *(v0 + 1744);
      v99 = *(v0 + 1728);
      v102 = *(v0 + 1816);
      v78 = *(v0 + 1656);
      v79 = *(v0 + 1624);
      v80 = *(v0 + 1616);
      v68 = *(v0 + 1608);

      (*(v79 + 8))(v78, v80);
      sub_10003AEE0();
      v20 = swift_allocError();
      v70 = 11;
    }

    *v69 = v70;
    swift_willThrow();
    sub_10000DAF8(v68, &qword_10023A7C8, &qword_1001C17F0);
    v62(v63, v64);
    sub_10003C1A8(v99, type metadata accessor for ImpressionModel);
  }

  sub_10003C1A8(v19, type metadata accessor for ImpressionModel);
  *(v0 + 2056) = v20;
  v81 = *(v0 + 1824);
  v82 = *(v0 + 1576);
  v83 = *(v0 + 720);
  v84 = *(v0 + 704);
  v85 = sub_1000C7C10(v20);
  v87 = v86;
  v89 = v88;
  v91 = v90;

  sub_10000DA7C((v82 + 24), *(v82 + 48));
  *(v0 + 240) = v81;
  *(v0 + 248) = v85;
  *(v0 + 256) = v87;
  *(v0 + 264) = v89;
  *(v0 + 272) = v91;
  v92 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v92;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v93 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v93;
  v94 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v94;
  v95 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v95;
  v96 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v96;
  v97 = type metadata accessor for SnoutManager();
  v98 = swift_task_alloc();
  *(v0 + 2064) = v98;
  *v98 = v0;
  v98[1] = sub_10002F6DC;
  v49 = *(v0 + 1560);
  v48 = v0 + 240;
  v50 = 0;
  v51 = 0;
  v52 = v97;
  v53 = &off_100223858;
  v54 = sub_10016E27C;

  return v54(v48, v49, v50, v51, v52, v53);
}

uint64_t sub_10002E5A4()
{
  v2 = *v1;
  v3 = *(*v1 + 1968);
  v4 = *v1;
  *(*v1 + 1976) = v0;

  v5 = *(v2 + 1960);

  if (v0)
  {
    v6 = sub_10002FF34;
  }

  else
  {
    v6 = sub_10002E6D8;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002E6D8()
{
  v1 = *(v0 + 1704);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1584);
  sub_100014B50(*(v0 + 1592), v3, &qword_10023A7C8, &qword_1001C17F0);
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_10000DAF8(*(v0 + 1584), &qword_10023A7C8, &qword_1001C17F0);
LABEL_10:
    v43 = *(v0 + 1736);
    v44 = *(v0 + 1712);
    v45 = (*(v0 + 2076) + 16) & ~*(v0 + 2076);
    sub_10003C208(*(v0 + 1744), v43, type metadata accessor for ImpressionModel);
    v46 = swift_allocObject();
    *(v0 + 1984) = v46;
    sub_10003C270(v43, v46 + v45, type metadata accessor for ImpressionModel);
    v47 = swift_task_alloc();
    *(v0 + 1992) = v47;
    *v47 = v0;
    v47[1] = sub_10002EC0C;
    v48 = *(v0 + 1952);
    v49 = *(v0 + 1944);
    v50 = *(v0 + 1936);

    return sub_10010E730(sub_10010E730, sub_10003B104, v46, v50, v49, v48);
  }

  v4 = *(v0 + 1720);
  v5 = *(v0 + 1696);
  sub_10003C270(*(v0 + 1584), v4, type metadata accessor for ImpressionModel);
  if (*(v4 + *(v5 + 40)) != 1)
  {
    sub_10003C1A8(*(v0 + 1720), type metadata accessor for ImpressionModel);
    goto LABEL_10;
  }

  v6 = *(v0 + 1640);
  v7 = *(v0 + 1624);
  v8 = *(v0 + 1616);
  v9 = Logger.impression.unsafeMutableAddressor();
  (*(v7 + 16))(v6, v9, v8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "Finalized impression with higher interaction type already exists", v12, 2u);
  }

  v51 = *(v0 + 1808);
  v52 = *(v0 + 1816);
  v13 = *(v0 + 1792);
  v14 = *(v0 + 1776);
  v15 = *(v0 + 1744);
  v16 = *(v0 + 1720);
  v17 = *(v0 + 1640);
  v18 = *(v0 + 1624);
  v19 = *(v0 + 1616);
  v20 = *(v0 + 1592);

  (*(v18 + 8))(v17, v19);
  sub_10003AEE0();
  v21 = swift_allocError();
  *v22 = 13;
  swift_willThrow();
  sub_10003C1A8(v16, type metadata accessor for ImpressionModel);
  sub_10000DAF8(v20, &qword_10023A7C8, &qword_1001C17F0);
  v51(v13, v14);
  sub_10003C1A8(v15, type metadata accessor for ImpressionModel);
  *(v0 + 2056) = v21;
  v23 = *(v0 + 1824);
  v24 = *(v0 + 1576);
  v25 = *(v0 + 720);
  v26 = *(v0 + 704);
  v27 = sub_1000C7C10(v21);
  v29 = v28;
  v31 = v30;
  v33 = v32;

  sub_10000DA7C((v24 + 24), *(v24 + 48));
  *(v0 + 240) = v23;
  *(v0 + 248) = v27;
  *(v0 + 256) = v29;
  *(v0 + 264) = v31;
  *(v0 + 272) = v33;
  v34 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v34;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v35 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v35;
  v36 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v36;
  v37 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v37;
  v38 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v38;
  v39 = type metadata accessor for SnoutManager();
  v40 = swift_task_alloc();
  *(v0 + 2064) = v40;
  *v40 = v0;
  v40[1] = sub_10002F6DC;
  v41 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v41, 0, 0, v39, &off_100223858);
}

uint64_t sub_10002EC0C()
{
  v2 = *v1;
  v3 = *(*v1 + 1992);
  v4 = *v1;
  *(*v1 + 2000) = v0;

  v5 = *(v2 + 1984);

  if (v0)
  {
    v6 = sub_100030164;
  }

  else
  {
    v6 = sub_10002ED40;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002ED40()
{
  v1 = swift_task_alloc();
  *(v0 + 2008) = v1;
  *v1 = v0;
  v1[1] = sub_10002EDE4;

  return sub_1001581F0(7);
}

uint64_t sub_10002EDE4(uint64_t a1, char a2)
{
  v3 = *v2;
  v4 = *(*v2 + 2008);
  v6 = *v2;
  *(v3 + 2016) = a1;
  *(v3 + 2081) = a2;

  return _swift_task_switch(sub_10002EEE8, 0, 0);
}

uint64_t sub_10002EEE8()
{
  v1 = *(v0 + 1736);
  v2 = *(v0 + 1712);
  v3 = (*(v0 + 2076) + 16) & ~*(v0 + 2076);
  if (*(v0 + 2081))
  {
    v4 = 15;
  }

  else
  {
    v4 = *(v0 + 2016);
  }

  sub_10003C208(*(v0 + 1744), *(v0 + 1736), type metadata accessor for ImpressionModel);
  v5 = swift_allocObject();
  *(v0 + 2024) = v5;
  sub_10003C270(v1, v5 + v3, type metadata accessor for ImpressionModel);
  *(v5 + ((v2 + v3 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v6 = swift_task_alloc();
  *(v0 + 2032) = v6;
  *v6 = v0;
  v6[1] = sub_10002F050;
  v7 = *(v0 + 1952);
  v8 = *(v0 + 1944);
  v9 = *(v0 + 1936);

  return sub_10010E730(sub_10010E730, sub_10003B28C, v5, v9, v8, v7);
}

uint64_t sub_10002F050()
{
  v2 = *v1;
  v3 = *(*v1 + 2032);
  v4 = *v1;
  *(*v1 + 2040) = v0;

  v5 = *(v2 + 2024);

  if (v0)
  {
    v6 = sub_1000303B4;
  }

  else
  {
    v6 = sub_10002F184;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_10002F184()
{
  v1 = *(v0 + 1632);
  v2 = *(v0 + 1624);
  v3 = *(v0 + 1616);
  v4 = Logger.impression.unsafeMutableAddressor();
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Successfully finalized view through impression", v7, 2u);
  }

  v8 = *(v0 + 1856);
  v9 = *(v0 + 1632);
  v10 = *(v0 + 1624);
  v11 = *(v0 + 1616);
  v12 = *(v0 + 1576);
  v17 = *(v0 + 1840);
  v18 = *(v0 + 1824);

  (*(v10 + 8))(v9, v11);
  sub_10000DA7C((v12 + 24), *(v12 + 48));
  *(v0 + 32) = v17;
  *(v0 + 16) = v18;
  *(v0 + 48) = v8;
  *(v0 + 184) = *(v0 + 1488);
  *(v0 + 200) = *(v0 + 1504);
  *(v0 + 216) = *(v0 + 1520);
  *(v0 + 232) = *(v0 + 1536);
  *(v0 + 120) = *(v0 + 1424);
  *(v0 + 136) = *(v0 + 1440);
  *(v0 + 152) = *(v0 + 1456);
  *(v0 + 168) = *(v0 + 1472);
  *(v0 + 56) = *(v0 + 1360);
  *(v0 + 72) = *(v0 + 1376);
  *(v0 + 88) = *(v0 + 1392);
  *(v0 + 104) = *(v0 + 1408);
  v13 = type metadata accessor for SnoutManager();
  v14 = swift_task_alloc();
  *(v0 + 2048) = v14;
  *v14 = v0;
  v14[1] = sub_10002F424;
  v15 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 16, v15, 0, 0, v13, &off_100223858);
}

uint64_t sub_10002F424()
{
  v1 = *v0;
  v2 = *(*v0 + 2048);
  v4 = *v0;

  sub_10003AE8C(v1 + 16);

  return _swift_task_switch(sub_10002F528, 0, 0);
}

uint64_t sub_10002F528()
{
  v1 = v0[227];
  v2 = v0[226];
  v3 = v0[224];
  v4 = v0[222];
  v5 = v0[218];
  sub_10000DAF8(v0[199], &qword_10023A7C8, &qword_1001C17F0);
  v2(v3, v4);
  sub_10003C1A8(v5, type metadata accessor for ImpressionModel);
  v6 = v0[225];
  v7 = v0[224];
  v8 = v0[221];
  v9 = v0[218];
  v10 = v0[217];
  v11 = v0[216];
  v12 = v0[215];
  v13 = v0[211];
  v14 = v0[209];
  v15 = v0[208];
  v18 = v0[207];
  v19 = v0[206];
  v20 = v0[205];
  v21 = v0[204];
  v22 = v0[201];
  v23 = v0[200];
  v24 = v0[199];
  v25 = v0[198];

  v16 = v0[1];

  return v16();
}

uint64_t sub_10002F6DC()
{
  v1 = *v0;
  v2 = *(*v0 + 2064);
  v4 = *v0;

  sub_10003AE8C(v1 + 240);

  return _swift_task_switch(sub_10002F7E0, 0, 0);
}

uint64_t sub_10002F7E0()
{
  *(v0 + 1544) = *(v0 + 2056);
  swift_errorRetain();
  sub_10000CDE0(&qword_10023A710, &qword_1001B5480);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 2073);
    v2 = *(v0 + 2056);
    if (v1 == 13)
    {
      v3 = *(v0 + 2056);

      v4 = *(v0 + 1800);
      v5 = *(v0 + 1792);
      v6 = *(v0 + 1768);
      v7 = *(v0 + 1744);
      v8 = *(v0 + 1736);
      v9 = *(v0 + 1728);
      v10 = *(v0 + 1720);
      v11 = *(v0 + 1688);
      v12 = *(v0 + 1672);
      v13 = *(v0 + 1664);
      v29 = *(v0 + 1656);
      v31 = *(v0 + 1648);
      v33 = *(v0 + 1640);
      v35 = *(v0 + 1632);
      v37 = *(v0 + 1608);
      v39 = *(v0 + 1600);
      v41 = *(v0 + 1592);
      v43 = *(v0 + 1584);

      v14 = *(v0 + 8);
      goto LABEL_7;
    }

    sub_10003AEE0();
    swift_allocError();
    *v16 = v1;
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 2056);
    swift_willThrow();
    v44 = *(v0 + 2056);
  }

  v17 = *(v0 + 1800);
  v18 = *(v0 + 1792);
  v19 = *(v0 + 1768);
  v20 = *(v0 + 1744);
  v21 = *(v0 + 1736);
  v22 = *(v0 + 1728);
  v23 = *(v0 + 1720);
  v24 = *(v0 + 1688);
  v25 = *(v0 + 1672);
  v26 = *(v0 + 1664);
  v28 = *(v0 + 1656);
  v30 = *(v0 + 1648);
  v32 = *(v0 + 1640);
  v34 = *(v0 + 1632);
  v36 = *(v0 + 1608);
  v38 = *(v0 + 1600);
  v40 = *(v0 + 1592);
  v42 = *(v0 + 1584);

  v14 = *(v0 + 8);
LABEL_7:

  return v14();
}

uint64_t sub_10002FAD4()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1744);
  (*(v0 + 1808))(*(v0 + 1792), *(v0 + 1776));
  sub_10003C1A8(v2, type metadata accessor for ImpressionModel);
  v3 = *(v0 + 1904);
  *(v0 + 2056) = v3;
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 720);
  v7 = *(v0 + 704);
  v8 = sub_1000C7C10(v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000DA7C((v5 + 24), *(v5 + 48));
  *(v0 + 240) = v4;
  *(v0 + 248) = v8;
  *(v0 + 256) = v10;
  *(v0 + 264) = v12;
  *(v0 + 272) = v14;
  v15 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v15;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v16 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v16;
  v17 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v17;
  v18 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v18;
  v19 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v19;
  v20 = type metadata accessor for SnoutManager();
  v21 = swift_task_alloc();
  *(v0 + 2064) = v21;
  *v21 = v0;
  v21[1] = sub_10002F6DC;
  v22 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v22, 0, 0, v20, &off_100223858);
}

uint64_t sub_10002FD04()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1744);
  (*(v0 + 1808))(*(v0 + 1792), *(v0 + 1776));
  sub_10003C1A8(v2, type metadata accessor for ImpressionModel);
  v3 = *(v0 + 1928);
  *(v0 + 2056) = v3;
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 720);
  v7 = *(v0 + 704);
  v8 = sub_1000C7C10(v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000DA7C((v5 + 24), *(v5 + 48));
  *(v0 + 240) = v4;
  *(v0 + 248) = v8;
  *(v0 + 256) = v10;
  *(v0 + 264) = v12;
  *(v0 + 272) = v14;
  v15 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v15;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v16 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v16;
  v17 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v17;
  v18 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v18;
  v19 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v19;
  v20 = type metadata accessor for SnoutManager();
  v21 = swift_task_alloc();
  *(v0 + 2064) = v21;
  *v21 = v0;
  v21[1] = sub_10002F6DC;
  v22 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v22, 0, 0, v20, &off_100223858);
}

uint64_t sub_10002FF34()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1744);
  (*(v0 + 1808))(*(v0 + 1792), *(v0 + 1776));
  sub_10003C1A8(v2, type metadata accessor for ImpressionModel);
  v3 = *(v0 + 1976);
  *(v0 + 2056) = v3;
  v4 = *(v0 + 1824);
  v5 = *(v0 + 1576);
  v6 = *(v0 + 720);
  v7 = *(v0 + 704);
  v8 = sub_1000C7C10(v3);
  v10 = v9;
  v12 = v11;
  v14 = v13;

  sub_10000DA7C((v5 + 24), *(v5 + 48));
  *(v0 + 240) = v4;
  *(v0 + 248) = v8;
  *(v0 + 256) = v10;
  *(v0 + 264) = v12;
  *(v0 + 272) = v14;
  v15 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v15;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v16 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v16;
  v17 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v17;
  v18 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v18;
  v19 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v19;
  v20 = type metadata accessor for SnoutManager();
  v21 = swift_task_alloc();
  *(v0 + 2064) = v21;
  *v21 = v0;
  v21[1] = sub_10002F6DC;
  v22 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v22, 0, 0, v20, &off_100223858);
}

uint64_t sub_100030164()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1776);
  v5 = *(v0 + 1744);
  sub_10000DAF8(*(v0 + 1592), &qword_10023A7C8, &qword_1001C17F0);
  v2(v3, v4);
  sub_10003C1A8(v5, type metadata accessor for ImpressionModel);
  v6 = *(v0 + 2000);
  *(v0 + 2056) = v6;
  v7 = *(v0 + 1824);
  v8 = *(v0 + 1576);
  v9 = *(v0 + 720);
  v10 = *(v0 + 704);
  v11 = sub_1000C7C10(v6);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10000DA7C((v8 + 24), *(v8 + 48));
  *(v0 + 240) = v7;
  *(v0 + 248) = v11;
  *(v0 + 256) = v13;
  *(v0 + 264) = v15;
  *(v0 + 272) = v17;
  v18 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v18;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v19 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v19;
  v20 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v20;
  v21 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v21;
  v22 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v22;
  v23 = type metadata accessor for SnoutManager();
  v24 = swift_task_alloc();
  *(v0 + 2064) = v24;
  *v24 = v0;
  v24[1] = sub_10002F6DC;
  v25 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v25, 0, 0, v23, &off_100223858);
}

uint64_t sub_1000303B4()
{
  v1 = *(v0 + 1816);
  v2 = *(v0 + 1808);
  v3 = *(v0 + 1792);
  v4 = *(v0 + 1776);
  v5 = *(v0 + 1744);
  sub_10000DAF8(*(v0 + 1592), &qword_10023A7C8, &qword_1001C17F0);
  v2(v3, v4);
  sub_10003C1A8(v5, type metadata accessor for ImpressionModel);
  v6 = *(v0 + 2040);
  *(v0 + 2056) = v6;
  v7 = *(v0 + 1824);
  v8 = *(v0 + 1576);
  v9 = *(v0 + 720);
  v10 = *(v0 + 704);
  v11 = sub_1000C7C10(v6);
  v13 = v12;
  v15 = v14;
  v17 = v16;

  sub_10000DA7C((v8 + 24), *(v8 + 48));
  *(v0 + 240) = v7;
  *(v0 + 248) = v11;
  *(v0 + 256) = v13;
  *(v0 + 264) = v15;
  *(v0 + 272) = v17;
  v18 = *(v0 + 1504);
  *(v0 + 408) = *(v0 + 1488);
  *(v0 + 424) = v18;
  *(v0 + 440) = *(v0 + 1520);
  *(v0 + 456) = *(v0 + 1536);
  v19 = *(v0 + 1440);
  *(v0 + 344) = *(v0 + 1424);
  *(v0 + 360) = v19;
  v20 = *(v0 + 1472);
  *(v0 + 376) = *(v0 + 1456);
  *(v0 + 392) = v20;
  v21 = *(v0 + 1376);
  *(v0 + 280) = *(v0 + 1360);
  *(v0 + 296) = v21;
  v22 = *(v0 + 1408);
  *(v0 + 312) = *(v0 + 1392);
  *(v0 + 328) = v22;
  v23 = type metadata accessor for SnoutManager();
  v24 = swift_task_alloc();
  *(v0 + 2064) = v24;
  *v24 = v0;
  v24[1] = sub_10002F6DC;
  v25 = *(v0 + 1560);

  return (sub_10016E27C)(v0 + 240, v25, 0, 0, v23, &off_100223858);
}

uint64_t sub_100030604(uint64_t a1)
{
  sub_100014B50(a1, &v11, &qword_10023A7E0, &qword_1001B5850);
  if (!v12)
  {
    sub_10000DAF8(&v11, &qword_10023A7E0, &qword_1001B5850);
LABEL_19:
    v9 = 0;
    return v9 & 1;
  }

  sub_10000DA64(&v11, v13);
  v1 = v14;
  v2 = v15;
  sub_10000DA7C(v13, v14);
  v3 = (*(v2 + 24))(v1, v2);
  if (!v4)
  {
    sub_10000DB58(v13);
    goto LABEL_19;
  }

  v5 = v4;
  v6 = v3 == 0xD000000000000012 && v4 == 0x80000001001CB3C0;
  if (v6 || (v7 = v3, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) || (v7 == 0x6C7070612E6D6F63 ? (v8 = v5 == 0xEE007377656E2E65) : (v8 = 0), v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v7 == 0xD000000000000010 && v5 == 0x80000001001CB3E0))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  sub_10000DB58(v13);
  return v9 & 1;
}

uint64_t sub_100030798(uint64_t *a1, uint64_t *a2)
{
  v106 = a2;
  v3 = type metadata accessor for Logger();
  v109 = *(v3 - 8);
  v110 = v3;
  v4 = *(v109 + 64);
  v5 = __chkstk_darwin(v3);
  v102 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v107 = &v99 - v8;
  v9 = __chkstk_darwin(v7);
  v105 = &v99 - v10;
  v11 = __chkstk_darwin(v9);
  v103 = &v99 - v12;
  v13 = __chkstk_darwin(v11);
  v101 = &v99 - v14;
  __chkstk_darwin(v13);
  v100 = &v99 - v15;
  v111 = type metadata accessor for Date();
  v108 = *(v111 - 8);
  v16 = *(v108 + 64);
  v17 = __chkstk_darwin(v111);
  v104 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v99 - v20;
  __chkstk_darwin(v19);
  v23 = &v99 - v22;
  v24 = type metadata accessor for AppImpressionPayload();
  v25 = *(*(v24 - 1) + 64);
  v26 = __chkstk_darwin(v24);
  v28 = &v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v112 = &v99 - v29;
  v30 = *a1;
  v31 = a1[1];
  if (*a1 == v32 && v31 == 0xE500000000000000 || ((v49 = *a1, v50 = a1[1], v51 = _stringCompareWithSmolCheck(_:_:expecting:)(), v30 == 0x3239315345) ? (v52 = v31 == 0xE500000000000000) : (v52 = 0), !v52 ? (v53 = 0) : (v53 = 1), (v51 & 1) != 0 || (v53 & 1) != 0 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v33 = sub_10000CDE0(&qword_10023A7D0, &unk_1001B5840);
    v34 = v112;
    sub_10003C208(a1 + *(v33 + 68), v112, type metadata accessor for AppImpressionPayload);
    v35 = (*(v34 + v24[8]) / 0x3E8uLL);
    Date.init(timeIntervalSince1970:)();
    v36 = v106;
    if (static Date.> infix(_:_:)())
    {
      static Date.now.getter();
      v37 = static Date.< infix(_:_:)();
      v38 = *(v108 + 8);
      v39 = v111;
      v38(v21, v111);
      v40 = v109;
      if (v37)
      {
        v41 = v112;
        v42 = v110;
        if (*(v112 + v24[6]))
        {
          v43 = (v112 + v24[10]);
          v45 = *v43;
          v44 = v43[1];
          v46 = v45 & 0xFFFFFFFFFFFFLL;
          if ((v44 & 0x2000000000000000) != 0)
          {
            v47 = HIBYTE(v44) & 0xF;
          }

          else
          {
            v47 = v46;
          }

          if (v47)
          {
            if (*(v112 + v24[7]) >> 4 < 0x271uLL)
            {
              v38(v23, v39);
              return sub_10003C1A8(v41, type metadata accessor for AppImpressionPayload);
            }

            v77 = v23;
            v95 = Logger.impression.unsafeMutableAddressor();
            (*(v40 + 16))(v100, v95, v42);
            v96 = Logger.logObject.getter();
            v97 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v96, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 0;
              _os_log_impl(&_mh_execute_header, v96, v97, "Invalid source identifier found in impression", v98, 2u);
            }

            (*(v40 + 8))(v100, v42);
            sub_10003AEE0();
            swift_allocError();
            v84 = 6;
          }

          else
          {
            v77 = v23;
            v91 = Logger.impression.unsafeMutableAddressor();
            (*(v40 + 16))(v101, v91, v42);
            v92 = Logger.logObject.getter();
            v93 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v92, v93))
            {
              v94 = swift_slowAlloc();
              *v94 = 0;
              _os_log_impl(&_mh_execute_header, v92, v93, "Invalid ad network ID found in impression", v94, 2u);
            }

            (*(v40 + 8))(v101, v42);
            sub_10003AEE0();
            swift_allocError();
            v84 = 7;
          }
        }

        else
        {
          v77 = v23;
          v87 = Logger.impression.unsafeMutableAddressor();
          (*(v40 + 16))(v103, v87, v42);
          v88 = Logger.logObject.getter();
          v89 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v88, v89))
          {
            v90 = swift_slowAlloc();
            *v90 = 0;
            _os_log_impl(&_mh_execute_header, v88, v89, "Invalid advertiser item id found in impression", v90, 2u);
          }

          (*(v40 + 8))(v103, v42);
          sub_10003AEE0();
          swift_allocError();
          v84 = 5;
        }
      }

      else
      {
        v77 = v23;
        v78 = Logger.impression.unsafeMutableAddressor();
        v79 = v110;
        (*(v40 + 16))(v105, v78, v110);
        v80 = Logger.logObject.getter();
        v81 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v80, v81))
        {
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&_mh_execute_header, v80, v81, "Impression is from the future", v82, 2u);
        }

        (*(v40 + 8))(v105, v79);
        sub_10003AEE0();
        swift_allocError();
        v84 = 9;
      }

      *v83 = v84;
      swift_willThrow();
      v38(v77, v39);
      v86 = v112;
    }

    else
    {
      v105 = v23;
      v62 = Logger.impression.unsafeMutableAddressor();
      v63 = v109;
      (*(v109 + 16))(v107, v62, v110);
      sub_10003C208(v34, v28, type metadata accessor for AppImpressionPayload);
      v64 = v108;
      v65 = v104;
      v66 = v111;
      (*(v108 + 16))(v104, v36, v111);
      v67 = Logger.logObject.getter();
      v68 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v113 = v106;
        *v69 = 134218242;
        v70 = *&v28[v24[8]];
        sub_10003C1A8(v28, type metadata accessor for AppImpressionPayload);
        *(v69 + 4) = v70;
        *(v69 + 12) = 2080;
        sub_10003C160(&qword_10023A7F0, &type metadata accessor for Date);
        v71 = dispatch thunk of CustomStringConvertible.description.getter();
        v73 = v72;
        v74 = *(v64 + 8);
        v74(v65, v111);
        v75 = sub_10017AD04(v71, v73, &v113);

        *(v69 + 14) = v75;
        _os_log_impl(&_mh_execute_header, v67, v68, "Impression age too old to process %llu %s", v69, 0x16u);
        sub_10000DB58(v106);
        v76 = v112;

        v66 = v111;

        (*(v63 + 8))(v107, v110);
      }

      else
      {
        sub_10003C1A8(v28, type metadata accessor for AppImpressionPayload);

        v74 = *(v64 + 8);
        v74(v65, v66);
        (*(v63 + 8))(v107, v110);
        v76 = v112;
      }

      sub_10003AEE0();
      swift_allocError();
      *v85 = 8;
      swift_willThrow();
      v74(v105, v66);
      v86 = v76;
    }

    return sub_10003C1A8(v86, type metadata accessor for AppImpressionPayload);
  }

  else
  {
    v54 = Logger.impression.unsafeMutableAddressor();
    v56 = v109;
    v55 = v110;
    v57 = v102;
    (*(v109 + 16))(v102, v54, v110);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&_mh_execute_header, v58, v59, "Unsupported signing algorithm used in impression", v60, 2u);
    }

    (*(v56 + 8))(v57, v55);
    sub_10003AEE0();
    swift_allocError();
    *v61 = 1;
    return swift_willThrow();
  }
}

uint64_t sub_100031330(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v83 = a3;
  v84 = a2;
  v82 = a1;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v77 - v12;
  v14 = __chkstk_darwin(v11);
  v80 = &v77 - v15;
  v16 = __chkstk_darwin(v14);
  v81 = &v77 - v17;
  __chkstk_darwin(v16);
  v79 = &v77 - v18;
  v19 = type metadata accessor for URL();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  __chkstk_darwin(v19);
  v23 = &v77 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100014B50(a4, &v85, &qword_10023A7E0, &qword_1001B5850);
  if (v86)
  {
    v78 = v6;
    sub_10000DA64(&v85, v88);
    if (sub_100030604(a4))
    {
      v24 = Logger.impression.unsafeMutableAddressor();
      v25 = v78;
      (*(v78 + 16))(v13, v24, v5);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Skipping publisher item ID validation", v28, 2u);
      }

      (*(v25 + 8))(v13, v5);
      return sub_10000DB58(v88);
    }

    v34 = type metadata accessor for PropertyListDecoder();
    v35 = *(v34 + 48);
    v36 = *(v34 + 52);
    swift_allocObject();
    v37 = PropertyListDecoder.init()();
    v38 = v89;
    v39 = v90;
    sub_10000DA7C(v88, v89);
    (*(v39 + 40))(v38, v39);
    v40 = v91;
    v41 = Data.init(contentsOf:options:)();
    if (v40)
    {
      (*(v20 + 8))(v23, v19);
    }

    else
    {
      v43 = v41;
      v44 = v42;
      (*(v20 + 8))(v23, v19);
      sub_10003AF64();
      dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
      v91 = v43;
      v45 = v83;
      v46 = sub_1000C20E0(v84, v83, v85);

      if (v46)
      {
        v84 = v37;
        v47 = v89;
        v48 = v90;
        sub_10000DA7C(v88, v89);
        v49 = (*(v48 + 16))(v47, v48);
        v50 = Logger.impression.unsafeMutableAddressor();
        v51 = v78;
        v52 = *(v78 + 16);
        v53 = v5;
        if (v49 == v82)
        {
          v54 = v79;
          v52(v79, v50, v5);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v55, v56, "Successfully validated publisher application", v57, 2u);
          }

          sub_10001BABC(v91, v44);

          (*(v51 + 8))(v54, v5);
          return sub_10000DB58(v88);
        }

        v52(v81, v50, v5);
        sub_10000CE28(v88, &v85);
        v67 = Logger.logObject.getter();
        v68 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v67, v68))
        {
          v69 = swift_slowAlloc();
          *v69 = 134218240;
          v70 = v44;
          v71 = v86;
          v72 = v87;
          sub_10000DA7C(&v85, v86);
          v73 = v71;
          v44 = v70;
          v74 = (*(v72 + 16))(v73, v72);
          sub_10000DB58(&v85);
          *(v69 + 4) = v74;
          *(v69 + 12) = 2048;
          *(v69 + 14) = v82;
          _os_log_impl(&_mh_execute_header, v67, v68, "Application record item ID %llu does not match impression publisher item ID %llu", v69, 0x16u);
        }

        else
        {
          sub_10000DB58(&v85);
        }

        (*(v51 + 8))(v81, v53);
        sub_10003AEE0();
        swift_allocError();
        *v76 = 15;
        swift_willThrow();
        sub_10001BABC(v91, v44);
      }

      else
      {
        v82 = v44;
        v58 = Logger.impression.unsafeMutableAddressor();
        v59 = v78;
        v60 = v80;
        v61 = v5;
        (*(v78 + 16))(v80, v58, v5);

        v62 = Logger.logObject.getter();
        v63 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v62, v63))
        {
          v64 = v60;
          v65 = swift_slowAlloc();
          v66 = swift_slowAlloc();
          *&v85 = v66;
          *v65 = 136315138;
          *(v65 + 4) = sub_10017AD04(v84, v45, &v85);
          _os_log_impl(&_mh_execute_header, v62, v63, "Ad network '%s' not found in publisher app Info.plist", v65, 0xCu);
          sub_10000DB58(v66);

          (*(v59 + 8))(v64, v61);
        }

        else
        {

          (*(v59 + 8))(v60, v5);
        }

        sub_10003AEE0();
        swift_allocError();
        *v75 = 14;
        swift_willThrow();
        sub_10001BABC(v91, v82);
      }
    }

    return sub_10000DB58(v88);
  }

  sub_10000DAF8(&v85, &qword_10023A7E0, &qword_1001B5850);
  v30 = Logger.impression.unsafeMutableAddressor();
  (*(v6 + 16))(v10, v30, v5);
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&_mh_execute_header, v31, v32, "Skipping publisher app plist validation", v33, 2u);
  }

  return (*(v6 + 8))(v10, v5);
}