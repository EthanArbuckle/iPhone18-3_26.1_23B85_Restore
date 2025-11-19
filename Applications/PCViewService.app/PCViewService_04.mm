uint64_t sub_1000600AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10006018C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100060250()
{
  sub_100060520(319, &qword_1000E0470, type metadata accessor for PCActivityType);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PCActivityAssetType(319);
    if (v1 <= 0x3F)
    {
      sub_100060328();
      if (v2 <= 0x3F)
      {
        type metadata accessor for ActivityDisplayContext.DynamicTextScheme(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100060328()
{
  if (!qword_1000E0478)
  {
    sub_10000ED88(255, &qword_1000E0480, UIImage_ptr);
    v0 = type metadata accessor for NSCodingCodableOptional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E0478);
    }
  }
}

uint64_t sub_100060390()
{
  result = type metadata accessor for ActivityDisplayContext.CallDisplayContext(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_100060480()
{
  sub_10001AB30();
  if (v0 <= 0x3F)
  {
    sub_100060520(319, &unk_1000E05D0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_100060520(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_100060588(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100060664(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_100060714()
{
  sub_10001AB30();
  if (v0 <= 0x3F)
  {
    sub_100060520(319, &unk_1000E05D0, &type metadata accessor for Date);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000607B8()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000F3CE0);
  sub_1000047A0(v0, qword_1000F3CE0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100060838()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E03F0);
  v1 = sub_1000047A0(v0, qword_1000E03F0);
  if (qword_1000D97D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1000047A0(v0, qword_1000F3CE0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_100060900()
{
  v1 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8, v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for ActivityDisplayContext(0);
  sub_100065218(v0 + *(v16 + 32), v15, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_8;
    }

    sub_100065280(v15, v5, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v18 = sub_100062630();
    v21 = v20;
    v22 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
    v23 = v5;
LABEL_7:
    sub_100064EFC(v23, v22);
    if (v21)
    {
      return v18;
    }

LABEL_8:
    v25 = [objc_opt_self() localizedStringForKey:10];
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v18;
  }

  if (EnumCaseMultiPayload)
  {
    sub_100065280(v15, v10, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v18 = sub_100062158();
    v21 = v24;
    v22 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    v23 = v10;
    goto LABEL_7;
  }

  v18 = *v15;
  v19 = v15[1];
  return v18;
}

uint64_t sub_100060B3C()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12, v14);
  v16 = (&v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100065218(v1, v16, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v18 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload > 1)
  {
    result = 0;
    if (v18 == 2)
    {
      sub_100065280(v16, v6, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
      v21 = sub_100062630();
      sub_100064EFC(v6, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
      return v21;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_100065280(v16, v11, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v22 = sub_100062158();
    sub_100064EFC(v11, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    return v22;
  }

  else
  {
    result = *v16;
    v20 = v16[1];
  }

  return result;
}

uint64_t sub_100060D40()
{
  v1 = sub_1000056EC(&qword_1000E07C0, &qword_100097EE0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1, v4);
  v6 = &v45 - v5;
  v7 = sub_1000056EC(&qword_1000E07C8, &qword_100097EE8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v45 - v10;
  v12 = sub_1000056EC(&qword_1000E07D0, &qword_100097EF0);
  v49 = *(v12 - 8);
  v13 = *(v49 + 64);
  __chkstk_darwin(v12, v14);
  v47 = &v45 - v15;
  v16 = sub_1000056EC(&qword_1000E07D8, &qword_100097EF8);
  v50 = *(v16 - 8);
  v51 = v16;
  v17 = *(v50 + 64);
  __chkstk_darwin(v16, v18);
  v48 = &v45 - v19;
  v20 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v46 = *(v20 - 8);
  v21 = *(v46 + 64);
  v23 = __chkstk_darwin(v20, v22);
  v24 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23, v25);
  v27 = &v45 - v26;
  v52 = v0;
  sub_100065218(v0, &v45 - v26, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_100064EFC(v27, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    }

    v53 = sub_100060B3C();
    v54 = v43;
    sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
    Just.init(_:)();
    sub_10000EE58(&qword_1000E0818, &qword_1000E07C0, &qword_100097EE0);
    v42 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v6, v1);
  }

  else
  {
    sub_100064EFC(v27, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_10000ED88(0, &qword_1000E07E0, NSTimer_ptr);
    v29 = v12;
    v30 = [objc_opt_self() mainRunLoop];
    v31 = type metadata accessor for NSRunLoop.SchedulerOptions();
    (*(*(v31 - 8) + 56))(v11, 1, 1, v31);
    v32 = static NSTimer.publish(every:tolerance:on:in:options:)();

    sub_10000A628(v11, &qword_1000E07C8, &qword_100097EE8);
    v53 = v32;
    type metadata accessor for NSTimer.TimerPublisher();
    sub_100064EB4(&qword_1000E07E8, &type metadata accessor for NSTimer.TimerPublisher);
    v33 = ConnectablePublisher.autoconnect()();

    v53 = v33;
    sub_1000056EC(&qword_1000E07F0, &qword_100097F00);
    v34 = *(type metadata accessor for Date() - 8);
    v35 = *(v34 + 72);
    v36 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    *(swift_allocObject() + 16) = xmmword_1000938F0;
    Date.init()();
    sub_1000056EC(&qword_1000E07F8, &unk_100097F08);
    sub_10000EE58(&qword_1000E0800, &qword_1000E07F8, &unk_100097F08);
    v37 = v47;
    Publisher.prepend(_:)();

    sub_100065218(v52, v24, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    v38 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v39 = swift_allocObject();
    sub_100065280(v24, v39 + v38, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_1000056EC(&qword_1000DAC58, &qword_100097C10);
    sub_10000EE58(&qword_1000E0808, &qword_1000E07D0, &qword_100097EF0);
    v40 = v48;
    Publisher.map<A>(_:)();

    (*(v49 + 8))(v37, v29);
    sub_10000EE58(&qword_1000E0810, &qword_1000E07D8, &qword_100097EF8);
    v41 = v51;
    v42 = Publisher.eraseToAnyPublisher()();
    (*(v50 + 8))(v40, v41);
  }

  return v42;
}

uint64_t sub_10006149C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  if (v4)
  {
    v5 = *a1;
    v6 = v4;
  }

  else
  {
    v7 = [objc_opt_self() localizedStringForKey:10];
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v8;
  }

  *a2 = v5;
  a2[1] = v6;
}

uint64_t sub_10006165C(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E06D0, &qword_100097E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v19 - v9;
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100064E60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *(v3 + 8);
  v19 = *v3;
  v20 = v12;
  v21 = 0;
  type metadata accessor for PCActivityType(0);
  sub_100064EB4(&qword_1000E06D8, type metadata accessor for PCActivityType);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v19 = v3[2];
    v21 = 1;
    type metadata accessor for PCActivityAssetType(0);
    sub_100064EB4(&qword_1000E06E0, type metadata accessor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v3[3];
    v14 = v3[4];
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v3[5];
    v21 = 3;
    sub_1000056EC(&qword_1000E06B8, &qword_100097E58);
    sub_10000EE58(&qword_1000E06E8, &qword_1000E06B8, &qword_100097E58);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = type metadata accessor for ActivityDisplayContext(0);
    v16 = *(v15 + 32);
    LOBYTE(v19) = 4;
    type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
    sub_100064EB4(&qword_1000E06F0, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = *(v15 + 36);
    LOBYTE(v19) = 5;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

void sub_1000619D0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v4 = *(*(v3 - 8) + 64);
  v6 = __chkstk_darwin(v3, v5);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v9);
  v11 = v34 - v10;
  v12 = sub_1000056EC(&qword_1000E0698, &qword_100097E50);
  v38 = *(v12 - 8);
  v39 = v12;
  v13 = *(v38 + 64);
  __chkstk_darwin(v12, v14);
  v16 = v34 - v15;
  v17 = type metadata accessor for ActivityDisplayContext(0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17, v19);
  v21 = v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a1[3];
  v22 = a1[4];
  v42 = a1;
  sub_100006768(a1, v23);
  sub_100064E60();
  v40 = v16;
  v24 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    sub_10000529C(v42);
  }

  else
  {
    v41 = v11;
    v36 = v8;
    v25 = v38;
    type metadata accessor for PCActivityType(0);
    v45 = 0;
    sub_100064EB4(&qword_1000E06A8, type metadata accessor for PCActivityType);
    v26 = v39;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v27 = v44;
    v28 = v21;
    *v21 = v43;
    v21[8] = v27;
    type metadata accessor for PCActivityAssetType(0);
    v45 = 1;
    sub_100064EB4(&qword_1000E06B0, type metadata accessor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v29 = v25;
    v28[2] = v43;
    LOBYTE(v43) = 2;
    v28[3] = KeyedDecodingContainer.decode(_:forKey:)();
    v28[4] = v30;
    sub_1000056EC(&qword_1000E06B8, &qword_100097E58);
    v35 = v28;
    v45 = 3;
    sub_10000EE58(&qword_1000E06C0, &qword_1000E06B8, &qword_100097E58);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34[1] = v43;
    v31 = v35;
    v35[5] = v43;
    LOBYTE(v43) = 4;
    sub_100064EB4(&qword_1000E06C8, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    v32 = v41;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_100065280(v32, v31 + *(v17 + 32), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    LOBYTE(v43) = 5;
    v33 = v36;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v40, v26);
    sub_100065280(v33, v31 + *(v17 + 36), type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
    sub_100065218(v31, v37, type metadata accessor for ActivityDisplayContext);
    sub_10000529C(v42);
    sub_100064EFC(v31, type metadata accessor for ActivityDisplayContext);
  }
}

uint64_t sub_100061F90()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0x6461654864726163;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x74786554746E6968;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7079547465737361;
  if (v1 != 1)
  {
    v5 = 0x614E656369766564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100062078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066168(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000620AC(uint64_t a1)
{
  v2 = sub_100064E60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000620E8(uint64_t a1)
{
  v2 = sub_100064E60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100062158()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v47 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v47 - v15;
  v17 = v1[1];
  if (!v17)
  {
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_1000047A0(v24, qword_1000E03F0);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&_mh_execute_header, v25, v26, "### CallDisplayContext: No displayName", v27, 2u);
    }

    v28 = *(type metadata accessor for ActivityDisplayContext.CallDisplayContext(0) + 24);
    goto LABEL_21;
  }

  v18 = *v1;
  v19 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  sub_100046CBC(v1 + *(v19 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000A628(v6, &qword_1000DEC68, &qword_1000969D8);
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000047A0(v20, qword_1000E03F0);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "### CallDisplayContext: No startDate", v23, 2u);
    }

LABEL_20:
    v28 = *(v19 + 24);
LABEL_21:
    v44 = (v1 + v28);
    v39 = *v44;
    v45 = v44[1];

    return v39;
  }

  (*(v8 + 32))(v16, v6, v7);
  Date.init()();
  Date.timeIntervalSince(_:)();
  v30 = v29;
  v31 = *(v8 + 8);
  v31(v13, v7);
  v32 = [objc_opt_self() formattedDurationFor:v30];
  if (!v32)
  {
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000047A0(v40, qword_1000E03F0);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "### CallDisplayContext: Could not get formattedDuration??", v43, 2u);
    }

    v31(v16, v7);
    goto LABEL_20;
  }

  v33 = v32;
  v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v36 = v35;

  v47[0] = v18;
  v47[1] = v17;

  v37._countAndFlagsBits = 2108704;
  v37._object = 0xE300000000000000;
  String.append(_:)(v37);
  v38._countAndFlagsBits = v34;
  v38._object = v36;
  String.append(_:)(v38);

  v39 = v47[0];
  v31(v16, v7);
  return v39;
}

uint64_t sub_100062630()
{
  v1 = v0;
  v2 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = v47 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v14);
  v16 = v47 - v15;
  v17 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  sub_100046CBC(v1 + *(v17 + 20), v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_10000A628(v6, &qword_1000DEC68, &qword_1000969D8);
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_1000047A0(v18, qword_1000E03F0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### TimerDisplayContext: No startDate", v21, 2u);
    }

LABEL_7:
    v22 = *v1;
    v23 = v1[1];

    return v22;
  }

  (*(v8 + 32))(v16, v6, v7);
  Date.init()();
  v24 = static Date.> infix(_:_:)();
  v25 = *(v8 + 8);
  v25(v13, v7);
  if (v24)
  {
    Date.timeIntervalSinceNow.getter();
    v27 = [objc_opt_self() formattedDurationFor:v26];
    if (!v27)
    {
      if (qword_1000D97D8 != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      sub_1000047A0(v43, qword_1000E03F0);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        *v46 = 0;
        _os_log_impl(&_mh_execute_header, v44, v45, "### TimerDisplayContext: Could not get formattedDuration??", v46, 2u);
      }

      v25(v16, v7);
      goto LABEL_7;
    }

    v28 = v27;
    v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v31 = v30;

    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    v32 = v1[1];
    if (v32)
    {
      v33 = *v1;
    }

    else
    {
      v33 = 0;
    }

    if (v32)
    {
      v34 = v32;
    }

    else
    {
      v34 = 0xE000000000000000;
    }

    v35._countAndFlagsBits = v33;
    v35._object = v34;
    String.append(_:)(v35);

    v36._countAndFlagsBits = 2108704;
    v36._object = 0xE300000000000000;
    String.append(_:)(v36);
    v37._countAndFlagsBits = v29;
    v37._object = v31;
    String.append(_:)(v37);

    v22 = v47[0];
    v25(v16, v7);
  }

  else
  {
    if (qword_1000D97D8 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_1000047A0(v38, qword_1000E03F0);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "### TimerDisplayContext: fireDate is past", v41, 2u);
    }

    v25(v16, v7);
    return 0;
  }

  return v22;
}

uint64_t sub_100062B34@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100065218(a1, v18, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    v20 = 0;
    v21 = 0;
    if (result != 2)
    {
      goto LABEL_8;
    }

    sub_100065280(v18, v8, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v20 = sub_100062630();
    v21 = v22;
    v23 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
    v24 = v8;
LABEL_7:
    result = sub_100064EFC(v24, v23);
    goto LABEL_8;
  }

  if (result)
  {
    sub_100065280(v18, v13, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v20 = sub_100062158();
    v21 = v25;
    v23 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    v24 = v13;
    goto LABEL_7;
  }

  v20 = *v18;
  v21 = v18[1];
LABEL_8:
  *a2 = v20;
  a2[1] = v21;
  return result;
}

uint64_t sub_100062D28(void *a1)
{
  v2 = sub_1000056EC(&qword_1000E0758, &qword_100097E98);
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = *(v63 + 64);
  __chkstk_darwin(v2, v4);
  v62 = &v51 - v5;
  v60 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v6 = *(*(v60 - 8) + 64);
  __chkstk_darwin(v60, v7);
  v61 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000056EC(&qword_1000E0760, &qword_100097EA0);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  __chkstk_darwin(v9, v11);
  v57 = &v51 - v12;
  v55 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v13 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55, v14);
  v56 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000056EC(&qword_1000E0768, &qword_100097EA8);
  v53 = *(v16 - 8);
  v54 = v16;
  v17 = *(v53 + 64);
  __chkstk_darwin(v16, v18);
  v20 = &v51 - v19;
  v21 = sub_1000056EC(&qword_1000E0770, &qword_100097EB0);
  v52 = *(v21 - 8);
  v22 = *(v52 + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v51 - v24;
  v26 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26, v28);
  v30 = (&v51 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = sub_1000056EC(&qword_1000E0778, &qword_100097EB8);
  v66 = *(v31 - 8);
  v67 = v31;
  v32 = *(v66 + 64);
  __chkstk_darwin(v31, v33);
  v35 = &v51 - v34;
  v36 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100065074();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100065218(v65, v30, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v39 = *v30;
      v38 = v30[1];
      v69 = 1;
      sub_100065170();
      v40 = v67;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v41 = v54;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v53 + 8))(v20, v41);
      return (*(v66 + 8))(v35, v40);
    }

    v43 = v56;
    sub_100065280(v30, v56, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v70 = 2;
    sub_10006511C();
    v48 = v57;
    v45 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100064EB4(&qword_1000E0788, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
    v49 = v59;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v58 + 8))(v48, v49);
    v47 = type metadata accessor for ActivityDisplayContext.CallDisplayContext;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v43 = v61;
    sub_100065280(v30, v61, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v71 = 3;
    sub_1000650C8();
    v44 = v62;
    v45 = v67;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    sub_100064EB4(&qword_1000E0780, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
    v46 = v64;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v63 + 8))(v44, v46);
    v47 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext;
LABEL_7:
    sub_100064EFC(v43, v47);
    return (*(v66 + 8))(v35, v45);
  }

  v68 = 0;
  sub_1000651C4();
  v50 = v67;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v52 + 8))(v25, v21);
  return (*(v66 + 8))(v35, v50);
}

uint64_t sub_100063454@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v88 = a2;
  v79 = sub_1000056EC(&qword_1000E06F8, &qword_100097E68);
  v82 = *(v79 - 8);
  v3 = *(v82 + 64);
  __chkstk_darwin(v79, v4);
  v87 = &v71 - v5;
  v6 = sub_1000056EC(&qword_1000E0700, &qword_100097E70);
  v80 = *(v6 - 8);
  v81 = v6;
  v7 = *(v80 + 64);
  __chkstk_darwin(v6, v8);
  v86 = &v71 - v9;
  v10 = sub_1000056EC(&qword_1000E0708, &qword_100097E78);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  v12 = *(v11 + 64);
  __chkstk_darwin(v10, v13);
  v85 = &v71 - v14;
  v15 = sub_1000056EC(&qword_1000E0710, &qword_100097E80);
  v75 = *(v15 - 8);
  v76 = v15;
  v16 = *(v75 + 64);
  __chkstk_darwin(v15, v17);
  v83 = &v71 - v18;
  v84 = sub_1000056EC(&qword_1000E0718, &unk_100097E88);
  v89 = *(v84 - 8);
  v19 = *(v89 + 64);
  __chkstk_darwin(v84, v20);
  v22 = &v71 - v21;
  v23 = type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0);
  v24 = *(*(v23 - 8) + 64);
  v26 = __chkstk_darwin(v23, v25);
  v28 = &v71 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v26, v29);
  v32 = &v71 - v31;
  v34 = __chkstk_darwin(v30, v33);
  v36 = (&v71 - v35);
  __chkstk_darwin(v34, v37);
  v39 = &v71 - v38;
  v41 = a1[3];
  v40 = a1[4];
  v91 = a1;
  sub_100006768(a1, v41);
  sub_100065074();
  v42 = v90;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v42)
  {
    v71 = v36;
    v72 = v32;
    v73 = v28;
    v43 = v85;
    v44 = v86;
    v45 = v87;
    v74 = v39;
    v90 = v23;
    v46 = v88;
    v47 = v84;
    v48 = KeyedDecodingContainer.allKeys.getter();
    v49 = (2 * *(v48 + 16)) | 1;
    v92 = v48;
    v93 = v48 + 32;
    v94 = 0;
    v95 = v49;
    v50 = sub_1000718A4();
    v51 = v22;
    if (v50 != 4 && v94 == v95 >> 1)
    {
      if (v50 > 1u)
      {
        v59 = v89;
        if (v50 == 2)
        {
          v96 = 2;
          sub_10006511C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
          sub_100064EB4(&qword_1000E0740, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
          v60 = v72;
          v61 = v81;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v80 + 8))(v44, v61);
          (*(v59 + 8))(v51, v47);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v66 = v60;
        }

        else
        {
          v96 = 3;
          sub_1000650C8();
          v62 = v45;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
          sub_100064EB4(&qword_1000E0730, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
          v64 = v73;
          v65 = v79;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v82 + 8))(v62, v65);
          (*(v59 + 8))(v51, v47);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v66 = v64;
        }
      }

      else
      {
        if (!v50)
        {
          v96 = 0;
          sub_1000651C4();
          v52 = v83;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v75 + 8))(v52, v76);
          (*(v89 + 8))(v51, v47);
          swift_unknownObjectRelease();
          v53 = v74;
          swift_storeEnumTagMultiPayload();
LABEL_14:
          sub_100065280(v53, v46, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
          return sub_10000529C(v91);
        }

        v96 = 1;
        sub_100065170();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v77;
        v67 = KeyedDecodingContainer.decode(_:forKey:)();
        v69 = v68;
        (*(v78 + 8))(v43, v63);
        (*(v89 + 8))(v22, v47);
        swift_unknownObjectRelease();
        v70 = v71;
        *v71 = v67;
        v70[1] = v69;
        swift_storeEnumTagMultiPayload();
        v66 = v70;
      }

      v53 = v74;
      sub_100065280(v66, v74, type metadata accessor for ActivityDisplayContext.DynamicTextScheme);
      goto LABEL_14;
    }

    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    v57 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v56 = v90;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, enum case for DecodingError.typeMismatch(_:), v54);
    swift_willThrow();
    (*(v89 + 8))(v51, v47);
    swift_unknownObjectRelease();
  }

  return sub_10000529C(v91);
}

uint64_t sub_100063E10(uint64_t a1)
{
  v2 = sub_10006511C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063E4C(uint64_t a1)
{
  v2 = sub_10006511C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100063E88()
{
  v1 = 1701736302;
  v2 = 1819042147;
  if (*v0 != 2)
  {
    v2 = 0x72656D6974;
  }

  if (*v0)
  {
    v1 = 0x636974617473;
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

uint64_t sub_100063EEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066390(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100063F20(uint64_t a1)
{
  v2 = sub_100065074();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063F5C(uint64_t a1)
{
  v2 = sub_100065074();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100063F98(uint64_t a1)
{
  v2 = sub_1000651C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100063FD4(uint64_t a1)
{
  v2 = sub_1000651C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064010(uint64_t a1)
{
  v2 = sub_100065170();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006404C(uint64_t a1)
{
  v2 = sub_100065170();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064088(uint64_t a1)
{
  v2 = sub_1000650C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000640C4(uint64_t a1)
{
  v2 = sub_1000650C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100064130(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E07B8, &qword_100097ED8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v20[-v9];
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_1000653AC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  v20[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
    v15 = *(v14 + 20);
    v20[14] = 1;
    type metadata accessor for Date();
    sub_100064EB4(&qword_1000DC588, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + *(v14 + 24));
    v17 = *v16;
    v18 = v16[1];
    v20[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_10006431C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = v29 - v7;
  v9 = sub_1000056EC(&qword_1000E07A8, &qword_100097ED0);
  v32 = *(v9 - 8);
  v33 = v9;
  v10 = *(v32 + 64);
  __chkstk_darwin(v9, v11);
  v13 = v29 - v12;
  v14 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = (v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_1000653AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000529C(a1);
  }

  v20 = v32;
  v36 = 0;
  *v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18[1] = v21;
  v29[1] = v21;
  v30 = v18;
  type metadata accessor for Date();
  v35 = 1;
  sub_100064EB4(&qword_1000DC508, &type metadata accessor for Date);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  sub_10006533C(v8, v30 + *(v14 + 20));
  v34 = 2;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v23;
  (*(v20 + 8))(v13, v33);
  v26 = v30;
  v25 = v31;
  v27 = (v30 + *(v14 + 24));
  *v27 = v22;
  v27[1] = v24;
  sub_100065218(v26, v25, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
  sub_10000529C(a1);
  return sub_100064EFC(v26, type metadata accessor for ActivityDisplayContext.CallDisplayContext);
}

uint64_t sub_1000646AC()
{
  v1 = 0x7461447472617473;
  if (*v0 != 1)
  {
    v1 = 0x656C746974;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_100064710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000664EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100064738(uint64_t a1)
{
  v2 = sub_1000653AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064774(uint64_t a1)
{
  v2 = sub_1000653AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000647E0(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E07A0, &qword_100097EC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v16[-v9];
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_1000652E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = *v3;
  v13 = v3[1];
  v16[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v14 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
    v16[14] = 1;
    type metadata accessor for Date();
    sub_100064EB4(&qword_1000DC588, &type metadata accessor for Date);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_100064998@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v25 - v7;
  v9 = sub_1000056EC(&qword_1000E0790, &qword_100097EC0);
  v27 = *(v9 - 8);
  v28 = v9;
  v10 = *(v27 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v25 - v12;
  v14 = type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14, v16);
  v18 = (&v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_1000652E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000529C(a1);
  }

  v25 = v14;
  v20 = v27;
  v30 = 0;
  v21 = v18;
  *v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v18[1] = v22;
  type metadata accessor for Date();
  v29 = 1;
  sub_100064EB4(&qword_1000DC508, &type metadata accessor for Date);
  v23 = v28;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 8))(v13, v23);
  sub_10006533C(v8, v21 + *(v25 + 20));
  sub_100065218(v21, v26, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
  sub_10000529C(a1);
  return sub_100064EFC(v21, type metadata accessor for ActivityDisplayContext.TimerDisplayContext);
}

uint64_t sub_100064C94()
{
  if (*v0)
  {
    result = 0x6574614465726966;
  }

  else
  {
    result = 0x4E79616C70736964;
  }

  *v0;
  return result;
}

uint64_t sub_100064CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574614465726966 && a2 == 0xE800000000000000)
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

uint64_t sub_100064DB8(uint64_t a1)
{
  v2 = sub_1000652E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100064DF4(uint64_t a1)
{
  v2 = sub_1000652E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100064E60()
{
  result = qword_1000E06A0;
  if (!qword_1000E06A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E06A0);
  }

  return result;
}

uint64_t sub_100064EB4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100064EFC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__CFString *sub_100064F5C(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v1 = @"FPO_O";
      }

      else
      {
        v1 = @"miniBasalt";
      }

      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v1 = @"b620Dark";
      goto LABEL_18;
    }

    if (a1 == 8)
    {
      v1 = @"b620Light";
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v1 = @"FPO_B";
      }

      else
      {
        v1 = @"FPO_Y";
      }

      goto LABEL_18;
    }

    if (a1 == 1)
    {
      v1 = @"miniDark";
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      v1 = @"miniLight";
LABEL_18:
      v2 = v1;
      goto LABEL_19;
    }
  }

  v1 = [NSString stringWithFormat:@"? (%ld)", a1];
LABEL_19:

  return v1;
}

unint64_t sub_100065074()
{
  result = qword_1000E0720;
  if (!qword_1000E0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0720);
  }

  return result;
}

unint64_t sub_1000650C8()
{
  result = qword_1000E0728;
  if (!qword_1000E0728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0728);
  }

  return result;
}

unint64_t sub_10006511C()
{
  result = qword_1000E0738;
  if (!qword_1000E0738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0738);
  }

  return result;
}

unint64_t sub_100065170()
{
  result = qword_1000E0748;
  if (!qword_1000E0748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0748);
  }

  return result;
}

unint64_t sub_1000651C4()
{
  result = qword_1000E0750;
  if (!qword_1000E0750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0750);
  }

  return result;
}

uint64_t sub_100065218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100065280(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000652E8()
{
  result = qword_1000E0798;
  if (!qword_1000E0798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0798);
  }

  return result;
}

uint64_t sub_10006533C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000056EC(&qword_1000DEC68, &qword_1000969D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000653AC()
{
  result = qword_1000E07B0;
  if (!qword_1000E07B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E07B0);
  }

  return result;
}

uint64_t sub_100065400()
{
  v1 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 2:
      v14 = *(v5 + 8);

      v15 = *(type metadata accessor for ActivityDisplayContext.TimerDisplayContext(0) + 20);
      v16 = type metadata accessor for Date();
      v17 = *(v16 - 8);
      if (!(*(v17 + 48))(v5 + v15, 1, v16))
      {
        (*(v17 + 8))(v5 + v15, v16);
      }

      break;
    case 1:
      v8 = *(v5 + 8);

      v9 = type metadata accessor for ActivityDisplayContext.CallDisplayContext(0);
      v10 = *(v9 + 20);
      v11 = type metadata accessor for Date();
      v12 = *(v11 - 8);
      if (!(*(v12 + 48))(v5 + v10, 1, v11))
      {
        (*(v12 + 8))(v5 + v10, v11);
      }

      v13 = *(v5 + *(v9 + 24) + 8);

      break;
    case 0:
      v7 = *(v5 + 8);

      break;
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100065600@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for ActivityDisplayContext.DynamicTextScheme(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_100062B34(v4, a1);
}

uint64_t getEnumTagSinglePayload for ActivityDisplayContext.DynamicTextScheme.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDisplayContext.DynamicTextScheme.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityDisplayContext.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ActivityDisplayContext.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100065984()
{
  result = qword_1000E0820;
  if (!qword_1000E0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0820);
  }

  return result;
}

unint64_t sub_1000659DC()
{
  result = qword_1000E0828;
  if (!qword_1000E0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0828);
  }

  return result;
}

unint64_t sub_100065A34()
{
  result = qword_1000E0830;
  if (!qword_1000E0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0830);
  }

  return result;
}

unint64_t sub_100065A8C()
{
  result = qword_1000E0838;
  if (!qword_1000E0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0838);
  }

  return result;
}

unint64_t sub_100065AE4()
{
  result = qword_1000E0840;
  if (!qword_1000E0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0840);
  }

  return result;
}

unint64_t sub_100065B3C()
{
  result = qword_1000E0848;
  if (!qword_1000E0848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0848);
  }

  return result;
}

unint64_t sub_100065B94()
{
  result = qword_1000E0850;
  if (!qword_1000E0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0850);
  }

  return result;
}

unint64_t sub_100065BEC()
{
  result = qword_1000E0858;
  if (!qword_1000E0858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0858);
  }

  return result;
}

unint64_t sub_100065C44()
{
  result = qword_1000E0860;
  if (!qword_1000E0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0860);
  }

  return result;
}

unint64_t sub_100065C9C()
{
  result = qword_1000E0868;
  if (!qword_1000E0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0868);
  }

  return result;
}

unint64_t sub_100065CF4()
{
  result = qword_1000E0870;
  if (!qword_1000E0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0870);
  }

  return result;
}

unint64_t sub_100065D4C()
{
  result = qword_1000E0878;
  if (!qword_1000E0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0878);
  }

  return result;
}

unint64_t sub_100065DA4()
{
  result = qword_1000E0880;
  if (!qword_1000E0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0880);
  }

  return result;
}

unint64_t sub_100065DFC()
{
  result = qword_1000E0888;
  if (!qword_1000E0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0888);
  }

  return result;
}

unint64_t sub_100065E54()
{
  result = qword_1000E0890;
  if (!qword_1000E0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0890);
  }

  return result;
}

unint64_t sub_100065EAC()
{
  result = qword_1000E0898;
  if (!qword_1000E0898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0898);
  }

  return result;
}

unint64_t sub_100065F04()
{
  result = qword_1000E08A0;
  if (!qword_1000E08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08A0);
  }

  return result;
}

unint64_t sub_100065F5C()
{
  result = qword_1000E08A8;
  if (!qword_1000E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08A8);
  }

  return result;
}

unint64_t sub_100065FB4()
{
  result = qword_1000E08B0;
  if (!qword_1000E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08B0);
  }

  return result;
}

unint64_t sub_10006600C()
{
  result = qword_1000E08B8;
  if (!qword_1000E08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08B8);
  }

  return result;
}

unint64_t sub_100066064()
{
  result = qword_1000E08C0;
  if (!qword_1000E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08C0);
  }

  return result;
}

unint64_t sub_1000660BC()
{
  result = qword_1000E08C8;
  if (!qword_1000E08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08C8);
  }

  return result;
}

unint64_t sub_100066114()
{
  result = qword_1000E08D0;
  if (!qword_1000E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08D0);
  }

  return result;
}

uint64_t sub_100066168(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7079547465737361 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614E656369766564 && a2 == 0xEA0000000000656DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6461654864726163 && a2 == 0xEF6567616D497265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A5B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x74786554746E6968 && a2 == 0xEE00656D65686353)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100066390(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636974617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1819042147 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656D6974 && a2 == 0xE500000000000000)
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

uint64_t sub_1000664EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
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

uint64_t *sub_100066634@<X0>(uint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_100066718()
{
  v1 = 0x736F6C4365766F6DLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72746E69;
  }
}

unint64_t sub_100066778()
{
  result = qword_1000E08D8;
  if (!qword_1000E08D8)
  {
    sub_100005818(&qword_1000E08E0, qword_100098838);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08D8);
  }

  return result;
}

unint64_t sub_1000667E0()
{
  result = qword_1000E08E8;
  if (!qword_1000E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08E8);
  }

  return result;
}

uint64_t sub_100066834(void *a1, int a2)
{
  v34 = a2;
  v3 = sub_1000056EC(&qword_1000E0938, &qword_1000989F8);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  __chkstk_darwin(v3, v5);
  v31 = &v27 - v6;
  v7 = sub_1000056EC(&qword_1000E0940, &qword_100098A00);
  v29 = *(v7 - 8);
  v30 = v7;
  v8 = *(v29 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v27 - v10;
  v12 = sub_1000056EC(&qword_1000E0948, &qword_100098A08);
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  __chkstk_darwin(v12, v14);
  v16 = &v27 - v15;
  v17 = sub_1000056EC(&qword_1000E0950, &qword_100098A10);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17, v20);
  v22 = &v27 - v21;
  v23 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100067564();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24 = (v18 + 8);
  if (v34)
  {
    if (v34 == 1)
    {
      v36 = 1;
      sub_10006760C();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v29 + 8))(v11, v30);
    }

    else
    {
      v37 = 2;
      sub_1000675B8();
      v25 = v31;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v32 + 8))(v25, v33);
    }
  }

  else
  {
    v35 = 0;
    sub_100067660();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v28 + 8))(v16, v12);
  }

  return (*v24)(v22, v17);
}

uint64_t sub_100066BB4()
{
  v1 = 0xD000000000000012;
  if (*v0 == 1)
  {
    v1 = 0x65756E69746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756E69746E6F63;
  }
}

uint64_t sub_100066C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100066EC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100066C44(uint64_t a1)
{
  v2 = sub_100067564();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066C80(uint64_t a1)
{
  v2 = sub_100067564();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066CBC(uint64_t a1)
{
  v2 = sub_100067660();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066CF8(uint64_t a1)
{
  v2 = sub_100067660();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066D34(uint64_t a1)
{
  v2 = sub_10006760C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066D70(uint64_t a1)
{
  v2 = sub_10006760C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066DAC(uint64_t a1)
{
  v2 = sub_1000675B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100066DE8(uint64_t a1)
{
  v2 = sub_1000675B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100066E24@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100066FF4(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100066E70()
{
  result = qword_1000E08F0;
  if (!qword_1000E08F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E08F0);
  }

  return result;
}

uint64_t sub_100066EC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x65756E69746E6F63 && a2 == 0xEE00646570706154;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756E69746E6F63 && a2 == 0xEF74756F656D6954 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000A5B70 == a2)
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

uint64_t sub_100066FF4(uint64_t *a1)
{
  v40 = sub_1000056EC(&qword_1000E08F8, &qword_1000989D0);
  v37 = *(v40 - 8);
  v2 = *(v37 + 64);
  __chkstk_darwin(v40, v3);
  v42 = &v35 - v4;
  v41 = sub_1000056EC(&qword_1000E0900, &qword_1000989D8);
  v39 = *(v41 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v41, v6);
  v8 = &v35 - v7;
  v9 = sub_1000056EC(&qword_1000E0908, &qword_1000989E0);
  v38 = *(v9 - 8);
  v10 = *(v38 + 64);
  __chkstk_darwin(v9, v11);
  v13 = &v35 - v12;
  v14 = sub_1000056EC(&qword_1000E0910, &unk_1000989E8);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v35 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v44 = a1;
  sub_100006768(a1, v20);
  sub_100067564();
  v22 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v36 = v9;
    v23 = v42;
    v43 = v15;
    v24 = v19;
    v25 = KeyedDecodingContainer.allKeys.getter();
    v26 = (2 * *(v25 + 16)) | 1;
    v45 = v25;
    v46 = v25 + 32;
    v47 = 0;
    v48 = v26;
    v27 = sub_100074828();
    if (v27 != 3 && v47 == v48 >> 1)
    {
      v15 = v27;
      if (v27)
      {
        if (v27 == 1)
        {
          v49 = 1;
          sub_10006760C();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v43;
          (*(v39 + 8))(v8, v41);
          (*(v28 + 8))(v19, v14);
LABEL_13:
          swift_unknownObjectRelease();
          sub_10000529C(v44);
          return v15;
        }

        v49 = 2;
        sub_1000675B8();
        v33 = v19;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v34 = v43;
        (*(v37 + 8))(v23, v40);
      }

      else
      {
        v49 = 0;
        sub_100067660();
        v33 = v19;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v38 + 8))(v13, v36);
        v34 = v43;
      }

      (*(v34 + 8))(v33, v14);
      goto LABEL_13;
    }

    v29 = type metadata accessor for DecodingError();
    swift_allocError();
    v31 = v30;
    v15 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v31 = &type metadata for EducationViewEvent;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v29 - 8) + 104))(v31, enum case for DecodingError.typeMismatch(_:), v29);
    swift_willThrow();
    (*(v43 + 8))(v24, v14);
    swift_unknownObjectRelease();
  }

  sub_10000529C(v44);
  return v15;
}

unint64_t sub_100067564()
{
  result = qword_1000E0918;
  if (!qword_1000E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0918);
  }

  return result;
}

unint64_t sub_1000675B8()
{
  result = qword_1000E0920;
  if (!qword_1000E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0920);
  }

  return result;
}

unint64_t sub_10006760C()
{
  result = qword_1000E0928;
  if (!qword_1000E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0928);
  }

  return result;
}

unint64_t sub_100067660()
{
  result = qword_1000E0930;
  if (!qword_1000E0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0930);
  }

  return result;
}

unint64_t sub_1000676B4()
{
  result = qword_1000E0958;
  if (!qword_1000E0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0958);
  }

  return result;
}

unint64_t sub_10006774C()
{
  result = qword_1000E0960;
  if (!qword_1000E0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0960);
  }

  return result;
}

unint64_t sub_1000677A4()
{
  result = qword_1000E0968;
  if (!qword_1000E0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0968);
  }

  return result;
}

unint64_t sub_1000677FC()
{
  result = qword_1000E0970;
  if (!qword_1000E0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0970);
  }

  return result;
}

unint64_t sub_100067854()
{
  result = qword_1000E0978;
  if (!qword_1000E0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0978);
  }

  return result;
}

unint64_t sub_1000678AC()
{
  result = qword_1000E0980;
  if (!qword_1000E0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0980);
  }

  return result;
}

unint64_t sub_100067904()
{
  result = qword_1000E0988;
  if (!qword_1000E0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0988);
  }

  return result;
}

unint64_t sub_10006795C()
{
  result = qword_1000E0990;
  if (!qword_1000E0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0990);
  }

  return result;
}

unint64_t sub_1000679B4()
{
  result = qword_1000E0998;
  if (!qword_1000E0998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0998);
  }

  return result;
}

unint64_t sub_100067A0C()
{
  result = qword_1000E09A0;
  if (!qword_1000E09A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09A0);
  }

  return result;
}

uint64_t Publisher.conditionalDebounce<A>(for:tolerance:scheduler:options:when:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v72 = a5;
  v70 = a4;
  v71 = a6;
  v69 = a3;
  v66 = a1;
  v67 = a2;
  v73 = a9;
  v60 = a8;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v77 = *(v13 - 8);
  v78 = v13;
  v68 = *(v77 + 64);
  v15 = __chkstk_darwin(v13, v14);
  v76 = &v51 - v16;
  v74 = *(a8 - 8);
  v64 = *(v74 + 64);
  __chkstk_darwin(v15, v17);
  v75 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v54 = v20;
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = __chkstk_darwin(v20, v23);
  v26 = &v51 - v25;
  v56 = &v51 - v25;
  v53 = AssociatedTypeWitness;
  v27 = *(AssociatedTypeWitness - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v24, v29);
  v31 = &v51 - v30;
  v55 = &v51 - v30;
  v58 = a10;
  v57 = a7;
  swift_getAssociatedTypeWitness();
  v61 = type metadata accessor for AnyPublisher();
  v32 = type metadata accessor for Publishers.Map();
  v33 = *(v32 - 8);
  v62 = v32;
  v63 = v33;
  v34 = *(v33 + 64);
  __chkstk_darwin(v32, v35);
  v59 = &v51 - v36;
  (*(v27 + 16))(v31, v66, AssociatedTypeWitness);
  v37 = v21;
  v52 = v21;
  (*(v21 + 16))(v26, v67, v20);
  v38 = v74;
  v39 = v60;
  (*(v74 + 16))(v75, v69, v60);
  v40 = v77;
  (*(v77 + 16))(v76, v70, v78);
  v41 = (*(v27 + 80) + 64) & ~*(v27 + 80);
  v42 = (v28 + *(v37 + 80) + v41) & ~*(v37 + 80);
  v43 = (v22 + *(v38 + 80) + v42) & ~*(v38 + 80);
  v44 = (v64 + *(v40 + 80) + v43) & ~*(v40 + 80);
  v45 = swift_allocObject();
  *(v45 + 2) = v57;
  *(v45 + 3) = v39;
  v46 = v65;
  *(v45 + 4) = v58;
  *(v45 + 5) = v46;
  v47 = v71;
  *(v45 + 6) = v72;
  *(v45 + 7) = v47;
  (*(v27 + 32))(&v45[v41], v55, v53);
  (*(v52 + 32))(&v45[v42], v56, v54);
  (*(v74 + 32))(&v45[v43], v75, v39);
  (*(v77 + 32))(&v45[v44], v76, v78);

  v48 = v59;
  Publisher.map<A>(_:)();

  v49 = v62;
  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v63 + 8))(v48, v49);
}

uint64_t sub_100068080@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v39 = a6;
  v40 = a7;
  v38 = a5;
  v36 = a4;
  v42 = a3;
  v43 = a2;
  v44 = a8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(AssociatedTypeWitness, v15);
  v17 = &v33 - v16;
  v18 = type metadata accessor for Just();
  v41 = *(v18 - 8);
  v19 = *(v41 + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v33 - v21;
  WitnessTable = swift_getWitnessTable();
  v45 = v18;
  v46 = a9;
  v35 = a9;
  v47 = WitnessTable;
  v48 = a11;
  v37 = a11;
  v24 = type metadata accessor for Publishers.Delay();
  v34 = *(v24 - 8);
  v25 = *(v34 + 64);
  __chkstk_darwin(v24, v26);
  v28 = &v33 - v27;
  v29 = v43(a1);
  (*(v13 + 16))(v17, a1, AssociatedTypeWitness);
  Just.init(_:)();
  v30 = (v41 + 8);
  if (v29)
  {
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    (*v30)(v22, v18);
    swift_getWitnessTable();
    v31 = Publisher.eraseToAnyPublisher()();
    result = (*(v34 + 8))(v28, v24);
  }

  else
  {
    v31 = Publisher.eraseToAnyPublisher()();
    result = (*v30)(v22, v18);
  }

  *v44 = v31;
  return result;
}

uint64_t sub_100068398()
{
  v1 = *(v0 + 3);
  v2 = *(v0 + 5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v23 = *(v4 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for Optional() - 8);
  v22 = *(v6 + 80);
  v7 = (((v23 + 64) & ~v23) + v5 + v22) & ~v22;
  v8 = *(v1 - 8);
  v21 = *(v8 + 80);
  v9 = (v7 + *(v6 + 64) + v21) & ~v21;
  v10 = *(v8 + 64);
  v11 = swift_getAssociatedTypeWitness();
  v12 = *(type metadata accessor for Optional() - 8);
  v13 = *(v12 + 80);
  v19 = v9;
  v14 = (v9 + v10 + v13) & ~v13;
  v20 = *(v12 + 64);
  v15 = *(v0 + 7);

  v16 = *(v4 + 8);
  v16(&v0[(v23 + 64) & ~v23], AssociatedTypeWitness);
  if (!(*(v4 + 48))(&v0[v7], 1, AssociatedTypeWitness))
  {
    v16(&v0[v7], AssociatedTypeWitness);
  }

  (*(v8 + 8))(&v0[v19], v1);
  v17 = *(v11 - 8);
  if (!(*(v17 + 48))(&v0[v14], 1, v11))
  {
    (*(v17 + 8))(&v0[v14], v11);
  }

  return _swift_deallocObject(v0, v14 + v20, v23 | v22 | v21 | v13 | 7);
}

uint64_t sub_100068700@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v17 = *(v2 + 16);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v13 = *(*(v4 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v14 = *(type metadata accessor for Optional() - 8);
  return sub_100068080(a1, *(v2 + 48), *(v2 + 56), v2 + v8, v2 + v11, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a2, v4, v6, v5);
}

uint64_t sub_100068938(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  swift_getAssociatedTypeWitness();
  type metadata accessor for AnyPublisher();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for Publishers.SetFailureType();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  type metadata accessor for Publishers.Map();
  swift_getWitnessTable();
  swift_getWitnessTable();
  type metadata accessor for Publishers.SwitchToLatest();
  return swift_getWitnessTable();
}

uint64_t sub_100068AF8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72656E6E6162;
  }

  else
  {
    v4 = 0x6572757472657061;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  if (*a2)
  {
    v6 = 0x72656E6E6162;
  }

  else
  {
    v6 = 0x6572757472657061;
  }

  if (*a2)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100068B9C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100068C1C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100068C88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100068D10(uint64_t *a1@<X8>)
{
  v2 = 0x6572757472657061;
  if (*v1)
  {
    v2 = 0x72656E6E6162;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_100068E0C()
{
  if (*v0)
  {
    result = 0x72656E6E6142;
  }

  else
  {
    result = 0x2063696D616E7944;
  }

  *v0;
  return result;
}

unint64_t sub_100068E84()
{
  result = qword_1000E09B8;
  if (!qword_1000E09B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09B8);
  }

  return result;
}

uint64_t sub_100068ED8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000014;
  }

  else
  {
    v4 = 0x74696D69786F7270;
  }

  if (v3)
  {
    v5 = 0xED00006472614379;
  }

  else
  {
    v5 = 0x80000001000A0B50;
  }

  if (*a2)
  {
    v6 = 0xD000000000000014;
  }

  else
  {
    v6 = 0x74696D69786F7270;
  }

  if (*a2)
  {
    v7 = 0x80000001000A0B50;
  }

  else
  {
    v7 = 0xED00006472614379;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int sub_100068F90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100069024()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000690A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100069140(unint64_t *a1@<X8>)
{
  v2 = 0x80000001000A0B50;
  v3 = 0x74696D69786F7270;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xED00006472614379;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_100069250()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 0x74696D69786F7270;
  }

  *v0;
  return result;
}

unint64_t sub_1000692D0()
{
  result = qword_1000E09D0;
  if (!qword_1000E09D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09D0);
  }

  return result;
}

unint64_t sub_100069324()
{
  result = qword_1000E09D8;
  if (!qword_1000E09D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09D8);
  }

  return result;
}

unint64_t sub_100069378()
{
  result = qword_1000E09E0;
  if (!qword_1000E09E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E09E0);
  }

  return result;
}

uint64_t sub_1000693CC()
{
  result = SBUIIsSystemApertureEnabled();
  byte_1000F3CF8 = result;
  return result;
}

uint64_t _s8CardInfoOMa()
{
  result = qword_1000E0A58;
  if (!qword_1000E0A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100069438()
{
  sub_1000694AC();
  if (v0 <= 0x3F)
  {
    sub_100069514();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1000694AC()
{
  if (!qword_1000E0A68)
  {
    type metadata accessor for UUID();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000E0A68);
    }
  }
}

void sub_100069514()
{
  if (!qword_1000E0A70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1000E0A70);
    }
  }
}

uint64_t sub_100069574(void *a1)
{
  v46 = sub_1000056EC(&qword_1000E0AD8, &qword_100099140);
  v44 = *(v46 - 8);
  v2 = *(v44 + 64);
  __chkstk_darwin(v46, v3);
  v48 = &v41 - v4;
  v45 = sub_1000056EC(&qword_1000E0AE0, &qword_100099148);
  v43 = *(v45 - 8);
  v5 = *(v43 + 64);
  __chkstk_darwin(v45, v6);
  v52 = &v41 - v7;
  v8 = type metadata accessor for UUID();
  v42 = *(v8 - 8);
  v9 = *(v42 + 64);
  v11 = __chkstk_darwin(v8, v10);
  v51 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11, v13);
  v15 = &v41 - v14;
  v16 = _s8CardInfoOMa();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v18);
  v20 = (&v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_1000056EC(&qword_1000E0AE8, &qword_100099150);
  v50 = *(v21 - 8);
  v22 = *(v50 + 64);
  __chkstk_darwin(v21, v23);
  v25 = &v41 - v24;
  v26 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10006A734();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_10006A894(v47, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v20;
    v27 = v20[1];
    v30 = v20[2];
    v29 = v20[3];
    v58 = 1;
    sub_10006A788();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v57 = 0;
    v31 = v46;
    v32 = v49;
    KeyedEncodingContainer.encode(_:forKey:)();

    if (v32)
    {

      (*(v44 + 8))(v48, v31);
    }

    else
    {
      v56 = 1;
      v39 = v48;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v44 + 8))(v39, v31);
    }
  }

  else
  {
    v33 = *(sub_1000056EC(&qword_1000E0AD0, &qword_100099138) + 48);
    v34 = v42;
    v35 = *(v42 + 32);
    v35(v15, v20, v8);
    v35(v51, (v20 + v33), v8);
    v55 = 0;
    sub_10006A840();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = 0;
    sub_10006A8F8(&qword_1000DB440);
    v36 = v45;
    v37 = v49;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v37)
    {
      v53 = 1;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v43 + 8))(v52, v36);
    v38 = *(v34 + 8);
    v38(v51, v8);
    v38(v15, v8);
  }

  return (*(v50 + 8))(v25, v21);
}

uint64_t sub_100069AD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_1000056EC(&qword_1000E0AA0, &qword_100099118);
  v64 = *(v3 - 8);
  v65 = v3;
  v4 = *(v64 + 64);
  __chkstk_darwin(v3, v5);
  v68 = &v60 - v6;
  v7 = sub_1000056EC(&qword_1000E0AA8, &qword_100099120);
  v66 = *(v7 - 8);
  v67 = v7;
  v8 = *(v66 + 64);
  __chkstk_darwin(v7, v9);
  v11 = &v60 - v10;
  v12 = sub_1000056EC(&qword_1000E0AB0, &unk_100099128);
  v13 = *(v12 - 8);
  v70 = v12;
  v71 = v13;
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v60 - v16;
  v18 = _s8CardInfoOMa();
  v19 = *(*(v18 - 8) + 64);
  v21 = __chkstk_darwin(v18, v20);
  v23 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v21, v24);
  v27 = &v60 - v26;
  __chkstk_darwin(v25, v28);
  v30 = &v60 - v29;
  v32 = a1[3];
  v31 = a1[4];
  v73 = a1;
  sub_100006768(a1, v32);
  sub_10006A734();
  v33 = v72;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v33)
  {
    v61 = v23;
    v62 = v30;
    v63 = v27;
    v35 = v67;
    v34 = v68;
    v72 = v18;
    v36 = v69;
    v37 = v70;
    v38 = KeyedDecodingContainer.allKeys.getter();
    v39 = (2 * *(v38 + 16)) | 1;
    v74 = v38;
    v75 = v38 + 32;
    v76 = 0;
    v77 = v39;
    v40 = sub_10007482C();
    v41 = v17;
    if (v40 == 2 || v76 != v77 >> 1)
    {
      v45 = type metadata accessor for DecodingError();
      swift_allocError();
      v47 = v46;
      v48 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
      *v47 = v72;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v45 - 8) + 104))(v47, enum case for DecodingError.typeMismatch(_:), v45);
      swift_willThrow();
      (*(v71 + 8))(v41, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v40)
      {
        v42 = v71;
        v78 = 1;
        sub_10006A788();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v78 = 0;
        v43 = v65;
        v44 = KeyedDecodingContainer.decode(_:forKey:)();
        v52 = v51;
        v67 = v44;
        v78 = 1;
        v53 = KeyedDecodingContainer.decode(_:forKey:)();
        v66 = v54;
        v56 = v53;
        (*(v64 + 8))(v34, v43);
        (*(v42 + 8))(v17, v70);
        swift_unknownObjectRelease();
        v57 = v66;
        v58 = v61;
        *v61 = v67;
        v58[1] = v52;
        v58[2] = v56;
        v58[3] = v57;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v78 = 0;
        sub_10006A840();
        v50 = v11;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for UUID();
        v78 = 0;
        sub_10006A8F8(&qword_1000DB460);
        v58 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v55 = *(sub_1000056EC(&qword_1000E0AD0, &qword_100099138) + 48);
        v78 = 1;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v66 + 8))(v50, v35);
        (*(v71 + 8))(v17, v37);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v36 = v69;
      }

      v59 = v62;
      sub_10006A7DC(v58, v62);
      sub_10006A7DC(v59, v36);
    }
  }

  return sub_10000529C(v73);
}

uint64_t sub_10006A260()
{
  if (*v0)
  {
    result = 0x756F52616964656DLL;
  }

  else
  {
    result = 0x74696B656D6F68;
  }

  *v0;
  return result;
}

uint64_t sub_10006A2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74696B656D6F68 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F52616964656DLL && a2 == 0xEA00000000006574)
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

uint64_t sub_10006A384(uint64_t a1)
{
  v2 = sub_10006A734();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A3C0(uint64_t a1)
{
  v2 = sub_10006A734();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A3FC()
{
  if (*v0)
  {
    result = 0x4449656D6F68;
  }

  else
  {
    result = 0x726F737365636361;
  }

  *v0;
  return result;
}

uint64_t sub_10006A43C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F737365636361 && a2 == 0xEB00000000444979;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000)
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

uint64_t sub_10006A518(uint64_t a1)
{
  v2 = sub_10006A840();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A554(uint64_t a1)
{
  v2 = sub_10006A840();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006A590()
{
  if (*v0)
  {
    result = 1701667182;
  }

  else
  {
    result = 25705;
  }

  *v0;
  return result;
}

uint64_t sub_10006A5B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000)
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

uint64_t sub_10006A68C(uint64_t a1)
{
  v2 = sub_10006A788();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006A6C8(uint64_t a1)
{
  v2 = sub_10006A788();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_10006A734()
{
  result = qword_1000E0AB8;
  if (!qword_1000E0AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AB8);
  }

  return result;
}

unint64_t sub_10006A788()
{
  result = qword_1000E0AC0;
  if (!qword_1000E0AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AC0);
  }

  return result;
}

uint64_t sub_10006A7DC(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10006A840()
{
  result = qword_1000E0AC8;
  if (!qword_1000E0AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AC8);
  }

  return result;
}

uint64_t sub_10006A894(uint64_t a1, uint64_t a2)
{
  v4 = _s8CardInfoOMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10006A8F8(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10006A970()
{
  result = qword_1000E0AF0;
  if (!qword_1000E0AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AF0);
  }

  return result;
}

unint64_t sub_10006A9C8()
{
  result = qword_1000E0AF8;
  if (!qword_1000E0AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0AF8);
  }

  return result;
}

unint64_t sub_10006AA20()
{
  result = qword_1000E0B00;
  if (!qword_1000E0B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B00);
  }

  return result;
}

unint64_t sub_10006AA78()
{
  result = qword_1000E0B08;
  if (!qword_1000E0B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B08);
  }

  return result;
}

unint64_t sub_10006AAD0()
{
  result = qword_1000E0B10;
  if (!qword_1000E0B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B10);
  }

  return result;
}

unint64_t sub_10006AB28()
{
  result = qword_1000E0B18;
  if (!qword_1000E0B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B18);
  }

  return result;
}

unint64_t sub_10006AB80()
{
  result = qword_1000E0B20;
  if (!qword_1000E0B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B20);
  }

  return result;
}

unint64_t sub_10006ABD8()
{
  result = qword_1000E0B28;
  if (!qword_1000E0B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B28);
  }

  return result;
}

unint64_t sub_10006AC30()
{
  result = qword_1000E0B30;
  if (!qword_1000E0B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B30);
  }

  return result;
}

uint64_t sub_10006AC84(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 - 8) + 64);
  __chkstk_darwin(a1, a2);
  (*(v6 + 16))(&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return AnyView.init<A>(_:)();
}

uint64_t AnyTransition.init(arrayLiteral:)(uint64_t a1)
{
  static AnyTransition.identity.getter();
  v2 = *(a1 + 16);

  v4 = result;
  if (v2)
  {
    v5 = 0;
    while (v5 < *(a1 + 16))
    {
      v6 = v5 + 1;
      v7 = *(a1 + 32 + 8 * v5);

      v4 = AnyTransition.combined(with:)();

      v5 = v6;
      if (v2 == v6)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:

    return v4;
  }

  return result;
}

uint64_t sub_10006AE08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = AnyTransition.init(arrayLiteral:)(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006AE30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_10006AE78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006AEC8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v15 = a4;
  v6 = sub_1000056EC(&qword_1000E0B58, &qword_100099648);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10006B830();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    sub_10006B8D8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v11, v6);
}

uint64_t sub_10006B054()
{
  if (*v0)
  {
    return 1684957547;
  }

  else
  {
    return 1868983913;
  }
}

uint64_t sub_10006B078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t sub_10006B154(uint64_t a1)
{
  v2 = sub_10006B830();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10006B190(uint64_t a1)
{
  v2 = sub_10006B830();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10006B1CC(uint64_t a1)
{
  v2 = sub_10006B344();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10006B208(uint64_t a1)
{
  v2 = sub_10006B344();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10006B260()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3._countAndFlagsBits = sub_10006B398(*(v0 + 16));
  String.append(_:)(v3);

  v4._countAndFlagsBits = 656423463;
  v4._object = 0xE400000000000000;
  String.append(_:)(v4);
  v5._countAndFlagsBits = v1;
  v5._object = v2;
  String.append(_:)(v5);
  v6._countAndFlagsBits = 39;
  v6._object = 0xE100000000000000;
  String.append(_:)(v6);
  return 39;
}

uint64_t sub_10006B2F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10006B640(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_10006B344()
{
  result = qword_1000E0B38;
  if (!qword_1000E0B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B38);
  }

  return result;
}

unint64_t sub_10006B398(char a1)
{
  result = 0x4979646165726C41;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 5:
      result = 0xD000000000000012;
      break;
    case 3:
      return result;
    case 4:
      result = 0x7075727265746E69;
      break;
    case 6:
      result = 0x6974696E49746F4ELL;
      break;
    case 7:
      result = 0x6F6974617265704FLL;
      break;
    case 8:
      result = 0x74756F656D6954;
      break;
    case 9:
      result = 0x7463657078656E55;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6E776F6E6B6E55;
      break;
    case 12:
      result = 0x726F707075736E55;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

unint64_t sub_10006B55C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10006BC40(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10006B640(uint64_t *a1)
{
  v3 = sub_1000056EC(&qword_1000E0B40, &qword_100099640);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_10006B830();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11[15] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11[13] = 1;
    sub_10006B884();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v8, v3);
  }

  sub_10000529C(a1);
  return v9;
}

unint64_t sub_10006B830()
{
  result = qword_1000E0B48;
  if (!qword_1000E0B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B48);
  }

  return result;
}

unint64_t sub_10006B884()
{
  result = qword_1000E0B50;
  if (!qword_1000E0B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B50);
  }

  return result;
}

unint64_t sub_10006B8D8()
{
  result = qword_1000E0B60;
  if (!qword_1000E0B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B60);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DaemonError.Kind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DaemonError.Kind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10006BA90()
{
  result = qword_1000E0B68;
  if (!qword_1000E0B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B68);
  }

  return result;
}

unint64_t sub_10006BAE8()
{
  result = qword_1000E0B70;
  if (!qword_1000E0B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B70);
  }

  return result;
}

unint64_t sub_10006BB40()
{
  result = qword_1000E0B78;
  if (!qword_1000E0B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B78);
  }

  return result;
}

unint64_t sub_10006BB98()
{
  result = qword_1000E0B80;
  if (!qword_1000E0B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B80);
  }

  return result;
}

unint64_t sub_10006BBEC()
{
  result = qword_1000E0B88;
  if (!qword_1000E0B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0B88);
  }

  return result;
}

unint64_t sub_10006BC40(unint64_t result)
{
  if (result >= 0xD)
  {
    return 13;
  }

  return result;
}

uint64_t sub_10006BC50(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 32); ; ++i)
    {
      v7 = *i;

      v5(&v7);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_10006BCE8()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = sub_1000056EC(&qword_1000DAB20, &qword_100099A00);
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    v6 = v2;
    v7 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v8 = *(v0 + 16);
    *(v7 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10006BD88()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    v8 = *(v0 + 24);
    v2 = sub_1000056EC(&qword_1000DA8E8, &qword_100091BC0);
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    v5 = v0;
    v1 = CurrentValueSubject.init(_:)();
    v6 = *(v0 + 16);
    *(v5 + 16) = v1;
  }

  return v1;
}

uint64_t sub_10006BE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  *(v2 + 40) = -1;
  *(v2 + 48) = &_swiftEmptyArrayStorage;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E00C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

void *sub_10006BF30()
{
  v1 = v0;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E00C8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 136315394;
    *(v5 + 4) = sub_1000343F8(0x56746E6572727563, 0xEE00292865756C61, &v12);
    *(v5 + 12) = 2080;
    sub_10006F64C(*(v1 + 32), *(v1 + 40));
    sub_1000056EC(&qword_1000E0EF0, &unk_1000999D0);
    v6 = String.init<A>(describing:)();
    v8 = sub_1000343F8(v6, v7, &v12);

    *(v5 + 14) = v8;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s: self.state=%s", v5, 0x16u);
    swift_arrayDestroy();
  }

  v9 = *(v1 + 40);
  if (v9 > 0xFD)
  {
    return 0;
  }

  v10 = *(v1 + 32);
  sub_100019E1C(v10, v9 & 1);
  return v10;
}

void sub_10006C130()
{
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E00C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x292864616F6CLL, 0xE600000000000000, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10006C284(0, 0);
}

void sub_10006C284(void (*a1)(uint64_t **), uint64_t a2)
{
  v3 = v2;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000047A0(v6, qword_1000E00C8);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v37 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1000343F8(0x61682865756C6176, 0xEF293A72656C646ELL, &v37);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s", v9, 0xCu);
    sub_10000529C(v10);
  }

  v11 = *(v2 + 40);
  if (v11 == 254)
  {
    if (a1)
    {

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "Load in progress - caching handler", v23, 2u);
      }

      v24 = swift_allocObject();
      *(v24 + 16) = a1;
      *(v24 + 24) = a2;
      swift_beginAccess();
      v25 = *(v3 + 48);
      sub_10000B16C(a1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v3 + 48) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_10006F518(0, v25[2] + 1, 1, v25);
        *(v3 + 48) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_10006F518((v27 > 1), v28 + 1, 1, v25);
      }

      v25[2] = v28 + 1;
      v29 = &v25[2 * v28];
      v29[4] = sub_1000701E4;
      v29[5] = v24;
      *(v3 + 48) = v25;
      swift_endAccess();
      sub_10000B17C(a1);
    }

    else
    {
      oslog = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(oslog, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, oslog, v34, "Load in progress", v35, 2u);
      }
    }
  }

  else if (v11 == 255)
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Value not yet loaded - loading now", v14, 2u);
    }

    v15 = *(v3 + 32);
    *(v3 + 32) = 0;
    v16 = *(v3 + 40);
    *(v3 + 40) = -2;
    sub_1000701CC(v15, v16);
    v18 = *(v3 + 16);
    v17 = *(v3 + 24);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a1;
    v20[4] = a2;

    sub_10000B16C(a1);
    v18(sub_100070270, v20);
  }

  else
  {
    v30 = *(v2 + 32);
    v37 = v30;
    v38 = v11 & 1;
    sub_100019E1C(v30, v11 & 1);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v31, v32, "Returning cached value", v33, 2u);
    }

    if (a1)
    {
      a1(&v37);
    }

    sub_1000701CC(v30, v11);
  }
}

uint64_t sub_10006C7CC(void *a1, char a2, uint64_t a3, uint64_t (*a4)(void **))
{
  v25 = a1;
  v26 = a2 & 1;
  if (qword_1000D97A8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000E00C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Finished loading value", v10, 2u);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = *(Strong + 32);
    v13 = *(Strong + 40);
    v14 = a2 & 1;
    v15 = Strong;
    sub_100019E1C(a1, v14);
    *(v15 + 32) = a1;
    *(v15 + 40) = v14;
    sub_1000701CC(v12, v13);
  }

  swift_beginAccess();
  v16 = swift_weakLoadStrong();
  if (v16)
  {
    v17 = v16;
    swift_beginAccess();
    v18 = *(v17 + 48);

    __chkstk_darwin(v19, v20);
    v24[2] = &v25;
    sub_10006BC50(sub_100070288, v24, v18);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    swift_beginAccess();
    v23 = *(v22 + 48);
    *(v22 + 48) = _swiftEmptyArrayStorage;
  }

  if (a4)
  {
    return a4(&v25);
  }

  return result;
}

void sub_10006CA44(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_10006CAD0()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E0B90);
  sub_1000047A0(v0, qword_1000E0B90);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10006CB50()
{
  sub_10006FF74(v0 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel_cardInfo);
  v1 = *(v0 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel__mediaTransferStatus);

  v2 = *(v0 + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel__mrResponse);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for HomeAccessoryViewHandleModel()
{
  result = qword_1000E0BE0;
  if (!qword_1000E0BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10006CC28()
{
  result = _s8CardInfoOMa();
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

uint64_t sub_10006CCEC(void *a1)
{
  v3 = *(v1 + 40);
  v4 = *(v3 + 24);
  *(v3 + 24) = a1;

  v5 = a1;

  sub_10006BCE8();
  v6 = *(v3 + 24);
  CurrentValueSubject.send(_:)();
}

void *sub_10006CD78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[4] = 0;
  sub_1000056EC(&qword_1000E0F18, qword_100099A08);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  v2[5] = v6;
  v2[6] = 0;
  v2[7] = 0;
  v2[8] = &_swiftEmptySetSingleton;
  v2[9] = 0;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000047A0(v7, qword_1000E0B90);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Init", v10, 2u);
  }

  v3[2] = a1;
  v3[3] = a2;
  return v3;
}

void *sub_10006CEA8()
{
  v1 = v0;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  v10 = v1[7];
  sub_10000B17C(v1[6]);
  v11 = v1[8];

  v12 = v1[9];

  return v1;
}

uint64_t sub_10006CFC0()
{
  sub_10006CEA8();

  return _swift_deallocClassInstance(v0, 80, 7);
}

uint64_t sub_10006D018()
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000047A0(v0, qword_1000E0B90);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_1000343F8(0x292864616F6CLL, 0xE600000000000000, &v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000529C(v4);
  }

  sub_10006D334();
  sub_10006C130();
}

uint64_t sub_10006D178(uint64_t a1, uint64_t a2)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E0B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0xD000000000000018, 0x80000001000A5F40, &v11);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  sub_10006D334();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  sub_10006C284(sub_100070198, v9);
}

uint64_t sub_10006D334()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = swift_allocObject();
    swift_weakInit();
    sub_1000056EC(&qword_1000E0EF8, &qword_1000999E0);
    swift_allocObject();
    v3 = v0;
    v1 = sub_10006BE24(sub_10006F6DC, v2);
    v4 = *(v0 + 72);
    *(v3 + 72) = v1;
  }

  return v1;
}

uint64_t sub_10006D3F8(void (*a1)(uint64_t *), uint64_t a2)
{
  v4 = _s8CardInfoOMa();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_10006A894(*(Strong + 16) + OBJC_IVAR____TtC13PCViewService28HomeAccessoryViewHandleModel_cardInfo, v8);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = swift_allocObject();
    v12[2] = v11;
    v12[3] = sub_10006F6E4;
    v12[4] = v9;

    sub_10006FCE4(v8, sub_10006F764, v12);

    sub_10006FF74(v8);
  }

  else
  {

    sub_10000F850();
    v14 = swift_allocError();
    *v15 = 0;
    *(v15 + 8) = 0xE000000000000000;
    *(v15 + 16) = 9;
    v17 = v14;
    v18 = 1;
    a1(&v17);
  }
}

uint64_t sub_10006D5DC(void *a1, char a2, uint64_t a3, void (*a4)(void))
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    if (a2)
    {
      if (qword_1000D97E8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000047A0(v9, qword_1000E0B90);
      swift_errorRetain();
      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();
      sub_100019E10(a1, 1);
      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        *v12 = 138412290;
        swift_errorRetain();
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v12 + 4) = v14;
        *v13 = v14;
        _os_log_impl(&_mh_execute_header, v10, v11, "Failed to load homeCard: error=%@", v12, 0xCu);
        sub_100031FEC(v13);
      }

      v15 = *(*(v8 + 24) + 16);
      sub_100019E1C(a1, 1);

      sub_1000816E8(a1, v40);
      v36 = v40[0];
      v37 = v40[1];
      *v38 = v41;
      *&v38[8] = v42;
      v38[24] = 0;
      PassthroughSubject.send(_:)();

      *aBlock = v36;
      *&aBlock[16] = v37;
      *&aBlock[32] = *v38;
      *&aBlock[41] = *&v38[9];
      sub_100070094(aBlock);
      (a4)(a1, 1);
    }

    else
    {
      if (qword_1000D97E8 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      sub_1000047A0(v18, qword_1000E0B90);
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, v20, "Finished loading homeCard", v21, 2u);
      }

      v22 = *(*(v8 + 24) + 16);
      *aBlock = 1;
      memset(&aBlock[8], 0, 48);
      aBlock[56] = 2;

      PassthroughSubject.send(_:)();

      v23 = [a1 topViewController];
      if (v23)
      {
        v24 = v23;
        [v23 removeFromParentViewController];
        v25 = [objc_opt_self() sharedInstance];
        v26 = [v25 nowPlayingViewController];

        if (v26)
        {
          v27 = swift_allocObject();
          swift_weakInit();
          *&aBlock[32] = sub_1000700E8;
          *&aBlock[40] = v27;
          *aBlock = _NSConcreteStackBlock;
          *&aBlock[8] = 1107296256;
          *&aBlock[16] = sub_10006DD4C;
          *&aBlock[24] = &unk_1000CB670;
          v28 = _Block_copy(aBlock);

          [v26 setCoordinatedDismissalBlock:v28];
          _Block_release(v28);
        }

        else
        {
          v26 = Logger.logObject.getter();
          v33 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v26, v33))
          {
            v34 = swift_slowAlloc();
            *v34 = 0;
            _os_log_impl(&_mh_execute_header, v26, v33, "### Could not set coordinatedDismissalBlock - no nowPlayingViewController", v34, 2u);
          }
        }

        v35 = v24;
        (a4)(v24, 0);
      }

      else
      {
        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          *v31 = 0;
          _os_log_impl(&_mh_execute_header, v29, v30, "### No topViewController?", v31, 2u);
        }

        sub_10000F850();
        swift_allocError();
        *v32 = 0;
        *(v32 + 8) = 0xE000000000000000;
        *(v32 + 16) = 9;
        a4();
      }
    }
  }

  else
  {
    sub_10000F850();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0xE000000000000000;
    *(v16 + 16) = 9;
    a4();
  }
}

void sub_10006DBA8(void (*a1)(void), uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v5 = *(Strong + 48), sub_10000B16C(v5), , v5))
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_10000B16C(a1);
    v5(sub_100070168, v6);

    sub_10000B17C(v5);
  }

  else
  {
    if (qword_1000D97E8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_1000047A0(v7, qword_1000E0B90);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v8, v9, "### No coordinatedDismissalRequestedHandler?", v10, 2u);
    }

    if (a1)
    {
      a1();
    }
  }
}

uint64_t sub_10006DD4C(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  if (v4)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v4 = sub_10000EEE4;
  }

  else
  {
    v5 = 0;
  }

  v3(v4, v5);
  sub_10000B17C(v4);
}

void sub_10006DDF4(void *a1)
{
  v2 = v1;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E0B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0xD00000000000002CLL, 0x80000001000A5E50, &v24);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v9 = *(qword_1000F3C58 + 520);
  v10 = sub_100025508();

  if (v10)
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "### Skipping due to Defaults.shared.skipMRCoordinator = true";
    goto LABEL_13;
  }

  if (*(*(v2 + 40) + 24))
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v11))
    {
      goto LABEL_20;
    }

    v12 = swift_slowAlloc();
    *v12 = 0;
    v13 = "mrCoordinator already exists - not initiating a new mrCoordinator";
    goto LABEL_13;
  }

  v14 = [objc_opt_self() sharedInstance];
  v15 = [v14 nowPlayingViewController];

  if (v15)
  {
    v16 = [objc_allocWithZone(MRUNowPlayingQueueHandoffCoordinator) init];
    [v16 setResponse:a1];
    [v16 setHideArtwork:0];
    oslog = v16;
    sub_10006CCEC(v16);
    v17 = a1;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v17;
      *v21 = a1;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v18, v19, "Initiating QueueHandoffTransition with mrResponse: %@", v20, 0xCu);
      sub_100031FEC(v21);
    }

    [v15 initiateQueueHandoffTansitionWithCoordinator:oslog];
    [oslog setupTransition];
    [oslog beginTransition];
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      v13 = "### No nowPlayingViewController?";
LABEL_13:
      _os_log_impl(&_mh_execute_header, oslog, v11, v13, v12, 2u);
    }
  }

LABEL_20:
}

void sub_10006E250()
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_1000047A0(v1, qword_1000E0B90);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v10 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_1000343F8(0xD000000000000014, 0x80000001000A5E30, &v10);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000529C(v5);
  }

  v6 = *(*(v0 + 40) + 24);
  if (v6)
  {
    v9 = v6;
    [v9 endTransition];
    [v9 completeHandoff];
    sub_10006CCEC(0);
  }

  else
  {
    v9 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v9, v7, "### No mrCoordinator?", v8, 2u);
    }
  }
}

void sub_10006E450(uint64_t a1, uint64_t a2)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000047A0(v5, qword_1000E0B90);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1000343F8(0xD000000000000020, 0x80000001000A5E00, &v17);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000529C(v9);
  }

  if (*(v2 + 32))
  {

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Transition animation starting", v12, 2u);
    }

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;

    sub_10005E8C4(sub_10006F69C, v13);
  }

  else
  {
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, "### No existing ArtworkAnimation - Was prepareForPresentation called?", v15, 2u);
    }
  }
}

uint64_t sub_10006E718(uint64_t (*a1)(void))
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Transition animation ended", v5, 2u);
  }

  return a1();
}

void sub_10006E80C(char a1)
{
  v2 = v1;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000047A0(v4, qword_1000E0B90);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1000343F8(0xD000000000000026, 0x80000001000A5DD0, &v14);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000529C(v8);
  }

  v9 = sub_10006EA3C(a1 & 1);
  if (v9)
  {
    v10 = *(v2 + 32);
    *(v2 + 32) = v9;

    sub_10005E430();
  }

  else
  {
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v11, "### Could not create AlbumArtwork", v12, 2u);
    }
  }
}

uint64_t sub_10006EA3C(char a1)
{
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E0B90);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v33 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1000343F8(0xD00000000000001DLL, 0x80000001000A5DB0, &v33);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000529C(v6);
  }

  sub_10006D334();
  v7 = sub_10006BF30();
  v9 = v8;
  v10 = ~v8;

  if (!v10)
  {
    goto LABEL_14;
  }

  if ((v9 & 1) != 0 || (objc_opt_self(), (v11 = swift_dynamicCastObjCClass()) == 0))
  {
    sub_10006F3F4(v7, v9);
LABEL_14:
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "### No viewController?", v21, 2u);
    }

    goto LABEL_16;
  }

  v12 = v11;
  v13 = [objc_opt_self() sharedInstance];
  v14 = [v13 nowPlayingViewController];

  if (!v14)
  {
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v19, v23, "### No nowPlayingViewController?", v24, 2u);
    }

    sub_10006F3F4(v7, v9);
LABEL_16:

    return 0;
  }

  sub_100019E1C(v7, 0);
  v15 = [v14 artworkView];
  type metadata accessor for ArtworkAnimation();
  swift_allocObject();
  v16 = sub_10005F910(v12, v15, 0);
  if (a1)
  {
    v17 = v16;
    if (qword_1000D97C0 != -1)
    {
      swift_once();
    }

    v18 = &xmmword_1000F3CC0;
  }

  else
  {
    v17 = v16;
    if (qword_1000D97B8 != -1)
    {
      swift_once();
    }

    v18 = &xmmword_1000F3CA0;
  }

  v32 = *v18;
  v25 = *(v18 + 2);
  v26 = *(v18 + 3);

  sub_10006F3F4(v7, v9);
  result = v17;
  *(v17 + 56) = v32;
  *(v17 + 72) = v25;
  *(v17 + 80) = v26;
  *(v17 + 88) = 0;
  *(v17 + 96) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v17 + 104) = _Q0;
  return result;
}

void sub_10006EE48(void *a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8, v11);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v50 = *(v13 - 8);
  v14 = *(v50 + 64);
  __chkstk_darwin(v13, v15);
  v49 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_1000047A0(v17, qword_1000E0B90);
  v18 = a1;
  swift_errorRetain();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v47 = v8;
    v48 = a3;
    v44 = a4;
    v45 = v13;
    v46 = v9;
    v21 = 7104878;
    v22 = a1;
    v23 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v23 = 136315394;
    v43 = v22;
    v24 = v22 == 0;
    if (v22)
    {
      v25 = 1701670771;
    }

    else
    {
      v25 = 7104878;
    }

    v26 = 0xE300000000000000;
    if (v24)
    {
      v27 = 0xE300000000000000;
    }

    else
    {
      v27 = 0xE400000000000000;
    }

    v28 = sub_1000343F8(v25, v27, aBlock);

    *(v23 + 4) = v28;
    *(v23 + 12) = 2080;
    if (a2)
    {
      v52 = a2;
      swift_errorRetain();
      sub_1000056EC(&qword_1000E0F08, &qword_1000999E8);
      v21 = String.init<A>(describing:)();
      v26 = v29;
    }

    v30 = sub_1000343F8(v21, v26, aBlock);

    *(v23 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v19, v20, "HomeCard future completed: homeCard=%s, error=%s", v23, 0x16u);
    swift_arrayDestroy();

    v9 = v46;
    v8 = v47;
    a4 = v44;
    v13 = v45;
    a3 = v48;
    a1 = v43;
    v31 = a2;
    if (a2)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v31 = a2;
    if (a2)
    {
LABEL_19:
      sub_10000ED88(0, &qword_1000DA460, OS_dispatch_queue_ptr);
      swift_errorRetain();
      v38 = static OS_dispatch_queue.main.getter();
      v39 = swift_allocObject();
      *(v39 + 16) = a3;
      *(v39 + 24) = a4;
      *(v39 + 32) = v31;
      *(v39 + 40) = 1;
      aBlock[4] = sub_100070060;
      aBlock[5] = v39;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100035630;
      aBlock[3] = &unk_1000CB648;
      v40 = _Block_copy(aBlock);

      sub_100019E1C(v31, 1);

      v41 = v49;
      static DispatchQoS.unspecified.getter();
      aBlock[0] = &_swiftEmptyArrayStorage;
      sub_10004A128();
      sub_1000056EC(&qword_1000D9FA8, &unk_100091780);
      sub_100035260();
      v42 = v51;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v40);

      sub_100019E10(v31, 1);
      (*(v9 + 8))(v42, v8);
      (*(v50 + 8))(v41, v13);
      return;
    }
  }

  v48 = a3;
  if (!a1)
  {
LABEL_18:
    sub_10000F850();
    v31 = swift_allocError();
    *v37 = 0xD000000000000035;
    *(v37 + 8) = 0x80000001000A5EF0;
    *(v37 + 16) = 9;
    a3 = v48;
    goto LABEL_19;
  }

  v32 = a1;
  v33 = objc_allocWithZone(NSNull);
  v34 = v18;
  v35 = [v33 init];
  sub_10000ED88(0, &qword_1000E0F00, NSObject_ptr);
  v36 = static NSObject.== infix(_:_:)();

  if (v36)
  {

    goto LABEL_18;
  }

  v48(v32, 0);
}

void sub_10006F3F4(void *a1, char a2)
{
  if (a2 != -1)
  {
    sub_100019E10(a1, a2 & 1);
  }
}

char *sub_10006F40C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000056EC(&qword_1000DEE08, &qword_100096BE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10006F518(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000056EC(&qword_1000E0F10, &unk_1000999F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000056EC(&unk_1000DA470, qword_1000919F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

id sub_10006F64C(id result, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_100019E1C(result, a2 & 1);
  }

  return result;
}

uint64_t sub_10006F664()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006F6A4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006F6E4(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a1;
  v7 = a2 & 1;
  return v3(&v6);
}

uint64_t sub_10006F724()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

void sub_10006F774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = v6[8];
  v9 = __chkstk_darwin(v5, v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v62 = &v58 - v13;
  v14 = _s8CardInfoOMa();
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14, v16);
  v19 = (&v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = __chkstk_darwin(v17, v20);
  v23 = &v58 - v22;
  __chkstk_darwin(v21, v24);
  v26 = &v58 - v25;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_1000047A0(v27, qword_1000E0B90);
  sub_10006A894(a1, v26);
  v28 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v61))
  {
    v29 = swift_slowAlloc();
    v59 = a1;
    v30 = v29;
    v31 = swift_slowAlloc();
    v60 = v6;
    v58 = v31;
    aBlock[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5ED0, aBlock);
    *(v30 + 12) = 2080;
    sub_10006A894(v26, v23);
    v32 = String.init<A>(describing:)();
    v33 = v11;
    v34 = v5;
    v35 = a3;
    v37 = v36;
    sub_10006FF74(v26);
    v38 = sub_1000343F8(v32, v37, aBlock);
    a3 = v35;
    v5 = v34;
    v11 = v33;

    *(v30 + 14) = v38;
    _os_log_impl(&_mh_execute_header, v28, v61, "%s: info=%s", v30, 0x16u);
    swift_arrayDestroy();
    v6 = v60;

    a1 = v59;
  }

  else
  {

    sub_10006FF74(v26);
  }

  sub_10006A894(a1, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v39 = *v19;
    v40 = v19[1];
    v41 = v19[2];
    v42 = v19[3];
    v43 = objc_opt_self();
    v44 = String._bridgeToObjectiveC()();

    v45 = String._bridgeToObjectiveC()();

    v46 = [v43 SAHomePodCardForMediaRoutingIdentifier:v44 deviceName:v45 mediaAccessoryItemType:2];
  }

  else
  {
    v47 = *(sub_1000056EC(&qword_1000E0AD0, &qword_100099138) + 48);
    v48 = v6[4];
    v49 = v62;
    v48(v62, v19, v5);
    v48(v11, (v19 + v47), v5);
    v50 = objc_opt_self();
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v52 = UUID._bridgeToObjectiveC()().super.isa;
    v46 = [v50 SAHomePodCardWithQuickControlsForDeviceUUID:isa inHomeWithUUID:v52];

    v53 = v6[1];
    v53(v11, v5);
    v53(v49, v5);
  }

  v54 = swift_allocObject();
  *(v54 + 16) = v63;
  *(v54 + 24) = a3;
  aBlock[4] = sub_10006FFFC;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10006CA44;
  aBlock[3] = &unk_1000CB5F8;
  v55 = _Block_copy(aBlock);
  v56 = v46;

  v57 = [v56 addCompletionBlock:v55];

  _Block_release(v55);
}

uint64_t sub_10006FCE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = _s8CardInfoOMa();
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v12);
  v14 = &v25 - v13;
  if (qword_1000D97E8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000047A0(v15, qword_1000E0B90);
  sub_10006A894(a1, v14);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v18 = 136315394;
    *(v18 + 4) = sub_1000343F8(0xD00000000000001ALL, 0x80000001000A5E80, &v26);
    *(v18 + 12) = 2080;
    sub_10006A894(v14, v11);
    v19 = String.init<A>(describing:)();
    v21 = v20;
    sub_10006FF74(v14);
    v22 = sub_1000343F8(v19, v21, &v26);

    *(v18 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%s: cardInfo=%s", v18, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10006FF74(v14);
  }

  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3;

  sub_10006F774(a1, sub_10006FFD0, v23);
}

uint64_t sub_10006FF74(uint64_t a1)
{
  v2 = _s8CardInfoOMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10006FFD0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, a2 & 1);
}

uint64_t sub_100070004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10007001C()
{
  v1 = *(v0 + 24);

  sub_100019E10(*(v0 + 32), *(v0 + 40));

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_1000700F0()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100070128()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 24);
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100070168()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_100070198(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8));
}

void sub_1000701CC(void *a1, unsigned __int8 a2)
{
  if (a2 <= 0xFDu)
  {
    sub_100019E10(a1, a2 & 1);
  }
}

uint64_t sub_1000701E4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  return v2(&v6);
}

uint64_t sub_100070228()
{
  v1 = v0[2];

  if (v0[3])
  {
    v2 = v0[4];
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100070288(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *v2;
  LOBYTE(v2) = *(v2 + 8);
  v7 = v5;
  v8 = v2;
  return v3(&v7);
}

uint64_t sub_100070320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActivityDisplayContext(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 24));
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

  else
  {
    v12 = _s8CardInfoOMa();
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 32);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_100070464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ActivityDisplayContext(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 24)) = a2;
  }

  else
  {
    v11 = _s8CardInfoOMa();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata accessor for ClassicCardViewServiceContext()
{
  result = qword_1000E0F78;
  if (!qword_1000E0F78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000705D4()
{
  type metadata accessor for ActivityDisplayContext(319);
  if (v0 <= 0x3F)
  {
    sub_100070698();
    if (v1 <= 0x3F)
    {
      _s8CardInfoOMa();
      if (v2 <= 0x3F)
      {
        type metadata accessor for PCActivityAssetType(319);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100070698()
{
  if (!qword_1000E0F88)
  {
    sub_10002C290();
    v0 = type metadata accessor for NSCodingCodableOptional();
    if (!v1)
    {
      atomic_store(v0, &qword_1000E0F88);
    }
  }
}

uint64_t sub_1000706F0(void *a1)
{
  v3 = v1;
  v5 = sub_1000056EC(&qword_1000E0FE8, &qword_100099AC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5, v8);
  v10 = &v15 - v9;
  v11 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100071298();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for ActivityDisplayContext(0);
  sub_1000713B0(&qword_1000DC4B0, type metadata accessor for ActivityDisplayContext);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = type metadata accessor for ClassicCardViewServiceContext();
    LOBYTE(v15) = *(v3 + v12[5]);
    v16 = 1;
    sub_10003CCE8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + v12[6]);
    v16 = 2;
    sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
    sub_10002F85C(&qword_1000DBDC8);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = *(v3 + v12[7]);
    v16 = 3;
    sub_10003CC94();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v12[8];
    LOBYTE(v15) = 4;
    _s8CardInfoOMa();
    sub_1000713B0(&qword_1000E0FF0, _s8CardInfoOMa);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v15 = *(v3 + v12[9]);
    v16 = 5;
    type metadata accessor for PCActivityAssetType(0);
    sub_1000713B0(&qword_1000E06E0, type metadata accessor for PCActivityAssetType);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v10, v5);
}

void sub_100070A6C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v27 = _s8CardInfoOMa();
  v3 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActivityDisplayContext(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7, v9);
  v29 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000056EC(&qword_1000E0FD0, &unk_100099AB0);
  v28 = *(v31 - 8);
  v11 = *(v28 + 64);
  __chkstk_darwin(v31, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for ClassicCardViewServiceContext();
  v16 = *(*(v15 - 1) + 64);
  __chkstk_darwin(v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100071298();
  v30 = v14;
  v21 = v32;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_10000529C(a1);
  }

  else
  {
    v32 = v6;
    v22 = v28;
    LOBYTE(v33) = 0;
    sub_1000713B0(&qword_1000DC450, type metadata accessor for ActivityDisplayContext);
    v23 = v29;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001A648(v23, v19, type metadata accessor for ActivityDisplayContext);
    v34 = 1;
    sub_10003CB84();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19[v15[5]] = v33;
    sub_1000056EC(&qword_1000DBDB0, &qword_100093B78);
    v34 = 2;
    sub_10002F85C(&qword_1000DBDB8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v19[v15[6]] = v33;
    v34 = 3;
    sub_10003CA88();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *&v19[v15[7]] = v33;
    LOBYTE(v33) = 4;
    sub_1000713B0(&qword_1000E0FE0, _s8CardInfoOMa);
    v24 = v32;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_10001A648(v24, &v19[v15[8]], _s8CardInfoOMa);
    type metadata accessor for PCActivityAssetType(0);
    v34 = 5;
    sub_1000713B0(&qword_1000E06B0, type metadata accessor for PCActivityAssetType);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v22 + 8))(v30, v31);
    *&v19[v15[9]] = v33;
    sub_1000712EC(v19, v26);
    sub_10000529C(a1);
    sub_100071350(v19, type metadata accessor for ClassicCardViewServiceContext);
  }
}

unint64_t sub_100071064()
{
  v1 = *v0;
  v2 = 0x436C616974696E69;
  v3 = 0xD00000000000001ALL;
  v4 = 0x6F666E4964726163;
  if (v1 != 4)
  {
    v4 = 0x7341656369766564;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v2 = 0xD00000000000001DLL;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100071144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100071510(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10007116C(uint64_t a1)
{
  v2 = sub_100071298();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000711A8(uint64_t a1)
{
  v2 = sub_100071298();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100071214(uint64_t a1)
{
  *(a1 + 8) = sub_1000713B0(&qword_1000DA1C0, type metadata accessor for ClassicCardViewServiceContext);
  result = sub_1000713B0(&qword_1000E0FC8, type metadata accessor for ClassicCardViewServiceContext);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_100071298()
{
  result = qword_1000E0FD8;
  if (!qword_1000E0FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0FD8);
  }

  return result;
}

uint64_t sub_1000712EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClassicCardViewServiceContext();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100071350(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1000713B0(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10007140C()
{
  result = qword_1000E0FF8;
  if (!qword_1000E0FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E0FF8);
  }

  return result;
}

unint64_t sub_100071464()
{
  result = qword_1000E1000;
  if (!qword_1000E1000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1000);
  }

  return result;
}

unint64_t sub_1000714BC()
{
  result = qword_1000E1008;
  if (!qword_1000E1008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1008);
  }

  return result;
}

uint64_t sub_100071510(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001DLL && 0x80000001000A1350 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x436C616974696E69 && a2 == 0xEF65646F4D647261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001000A5F60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001000A11D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E4964726163 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7341656369766564 && a2 == 0xEF65707954746573)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_100071728(uint64_t a1)
{
  if ((*(a1 + 56) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 56) & 3;
  }
}

__n128 sub_100071744(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_100071760(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 57))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 56);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000717A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000717FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_10007183C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100071870()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000718A4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000718D8()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10007190C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100071944()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100071BDC(void *a1)
{
  v2 = v1;
  v71 = sub_1000056EC(&qword_1000E10A8, &qword_100099D78);
  v70 = *(v71 - 8);
  v4 = *(v70 + 64);
  __chkstk_darwin(v71, v5);
  v69 = &v65 - v6;
  v68 = sub_1000056EC(&qword_1000E10B0, &qword_100099D80);
  v67 = *(v68 - 8);
  v7 = *(v67 + 64);
  __chkstk_darwin(v68, v8);
  v66 = &v65 - v9;
  v10 = sub_1000056EC(&qword_1000E10B8, &qword_100099D88);
  v88 = *(v10 - 8);
  v89 = v10;
  v11 = *(v88 + 64);
  __chkstk_darwin(v10, v12);
  v87 = &v65 - v13;
  v74 = sub_1000056EC(&qword_1000E10C0, &qword_100099D90);
  v73 = *(v74 - 8);
  v14 = *(v73 + 64);
  __chkstk_darwin(v74, v15);
  v72 = &v65 - v16;
  v77 = sub_1000056EC(&qword_1000E10C8, &qword_100099D98);
  v76 = *(v77 - 8);
  v17 = *(v76 + 64);
  __chkstk_darwin(v77, v18);
  v75 = &v65 - v19;
  v20 = sub_1000056EC(&qword_1000E10D0, &qword_100099DA0);
  v85 = *(v20 - 8);
  v86 = v20;
  v21 = *(v85 + 64);
  __chkstk_darwin(v20, v22);
  v84 = &v65 - v23;
  v24 = sub_1000056EC(&qword_1000E10D8, &qword_100099DA8);
  v79 = *(v24 - 8);
  v80 = v24;
  v25 = *(v79 + 64);
  __chkstk_darwin(v24, v26);
  v78 = &v65 - v27;
  v28 = sub_1000056EC(&qword_1000E10E0, &qword_100099DB0);
  v82 = *(v28 - 8);
  v83 = v28;
  v29 = *(v82 + 64);
  __chkstk_darwin(v28, v30);
  v81 = &v65 - v31;
  v100 = sub_1000056EC(&qword_1000E10E8, &qword_100099DB8);
  v90 = *(v100 - 8);
  v32 = *(v90 + 64);
  __chkstk_darwin(v100, v33);
  v35 = &v65 - v34;
  v36 = a1[4];
  sub_100006768(a1, a1[3]);
  sub_100073C70();
  v91 = v35;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v38 = *v2;
  v37 = v2[1];
  v40 = v2[2];
  v39 = v2[3];
  v41 = v2[4];
  v42 = v2[5];
  v43 = v2[6];
  if (*(v2 + 56))
  {
    if (*(v2 + 56) == 1)
    {
      LOBYTE(v92) = 5;
      sub_100073D6C();
      v44 = v87;
      v45 = v100;
      v46 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v47 = v89;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v88 + 8))(v44, v47);
      return (*(v90 + 8))(v46, v45);
    }

    v51 = v41 | v42 | v43;
    if (v40 | v37 | v38 | v39 | v51)
    {
      v52 = v40 | v37 | v39 | v51;
      if (v38 != 1 || v52)
      {
        if (v38 != 2 || v52)
        {
          if (v38 != 3 || v52)
          {
            if (v38 != 4 || v52)
            {
              LOBYTE(v92) = 7;
              sub_100073CC4();
              v64 = v69;
              v54 = v100;
              v55 = v91;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v59 = *(v70 + 8);
              v60 = v64;
              v61 = &v101;
            }

            else
            {
              LOBYTE(v92) = 6;
              sub_100073D18();
              v63 = v66;
              v54 = v100;
              v55 = v91;
              KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
              v59 = *(v67 + 8);
              v60 = v63;
              v61 = &v99;
            }
          }

          else
          {
            LOBYTE(v92) = 4;
            sub_100073DC0();
            v62 = v72;
            v54 = v100;
            v55 = v91;
            KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
            v59 = *(v73 + 8);
            v60 = v62;
            v61 = &v102;
          }
        }

        else
        {
          LOBYTE(v92) = 3;
          sub_100073E14();
          v58 = v75;
          v54 = v100;
          v55 = v91;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v59 = *(v76 + 8);
          v60 = v58;
          v61 = &v103;
        }

        v59(v60, *(v61 - 32));
        return (*(v90 + 8))(v55, v54);
      }

      LOBYTE(v92) = 1;
      sub_100073F10();
      v53 = v78;
      v54 = v100;
      v55 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = v79;
      v56 = v80;
    }

    else
    {
      LOBYTE(v92) = 0;
      sub_100073F64();
      v53 = v81;
      v54 = v100;
      v55 = v91;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v57 = v82;
      v56 = v83;
    }

    (*(v57 + 8))(v53, v56);
    return (*(v90 + 8))(v55, v54);
  }

  LOBYTE(v92) = 2;
  sub_100073E68();
  v49 = v84;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v92 = v38;
  v93 = v37;
  v94 = v40;
  v95 = v39;
  v96 = v41;
  v97 = v42;
  v98 = v43;
  sub_100073FB8();
  v50 = v86;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v85 + 8))(v49, v50);
  return (*(v90 + 8))(v91, v100);
}

unint64_t sub_1000724E0()
{
  v1 = *v0;
  v2 = 0x6574736575716572;
  v3 = 0xD00000000000001DLL;
  if (v1 != 6)
  {
    v3 = 0xD000000000000014;
  }

  v4 = 0x65746E6573657270;
  if (v1 != 4)
  {
    v4 = 0x657373696D736964;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x64656C696166;
  if (v1 != 2)
  {
    v5 = 0x69746E6573657270;
  }

  if (*v0)
  {
    v2 = 0x646564616F6CLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000725D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100072BEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100072600(uint64_t a1)
{
  v2 = sub_100073C70();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007263C(uint64_t a1)
{
  v2 = sub_100073C70();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072678(uint64_t a1)
{
  v2 = sub_100073D18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000726B4(uint64_t a1)
{
  v2 = sub_100073D18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000726F0(uint64_t a1)
{
  v2 = sub_100073CC4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007272C(uint64_t a1)
{
  v2 = sub_100073CC4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072768(uint64_t a1)
{
  v2 = sub_100073D6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000727A4(uint64_t a1)
{
  v2 = sub_100073D6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000727E0(uint64_t a1)
{
  v2 = sub_100073E68();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007281C(uint64_t a1)
{
  v2 = sub_100073E68();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072858(uint64_t a1)
{
  v2 = sub_100073F10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072894(uint64_t a1)
{
  v2 = sub_100073F10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000728D0(uint64_t a1)
{
  v2 = sub_100073DC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007290C(uint64_t a1)
{
  v2 = sub_100073DC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100072948(uint64_t a1)
{
  v2 = sub_100073E14();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100072984(uint64_t a1)
{
  v2 = sub_100073E14();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000729C0(uint64_t a1)
{
  v2 = sub_100073F64();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000729FC(uint64_t a1)
{
  v2 = sub_100073F64();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100072A38@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100072E9C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

BOOL sub_100072AA0(uint64_t *a1, uint64_t *a2)
{
  v2 = *(a2 + 56);
  if (*(a1 + 56))
  {
    if (*(a1 + 56) == 1)
    {
      return v2 == 1;
    }

    v4 = *a1;
    v3 = a1[1];
    v6 = *a2;
    v5 = a2[1];
    v8 = a2[2];
    v7 = a2[3];
    v10 = a2[4];
    v9 = a2[5];
    v11 = a2[6];
    v12 = a1[3];
    v13 = a1[4];
    v14 = a1[2];
    v15 = a1[5] | a1[6];
    v16 = v12 | v14 | v3;
    if (!(v15 | v4 | v13 | v16))
    {
      return v2 == 2 && !(v8 | v5 | v6 | v7 | v10 | v9 | v11);
    }

    v17 = v15 | v13 | v16;
    if (v4 != 1 || v17)
    {
      if (v4 != 2 || v17)
      {
        if (v4 != 3 || v17)
        {
          if (v4 != 4 || v17)
          {
            if (v2 != 2 || v6 != 5)
            {
              return 0;
            }
          }

          else if (v2 != 2 || v6 != 4)
          {
            return 0;
          }
        }

        else if (v2 != 2 || v6 != 3)
        {
          return 0;
        }
      }

      else if (v2 != 2 || v6 != 2)
      {
        return 0;
      }
    }

    else if (v2 != 2 || v6 != 1)
    {
      return 0;
    }

    if (!(v8 | v5 | v7 | v10 | v9 | v11))
    {
      return 1;
    }
  }

  else if (!*(a2 + 56))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100072BEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574736575716572 && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646564616F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69746E6573657270 && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746E6573657270 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001000A5FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001000A5F80 == a2)
  {

    return 7;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_100072E9C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = sub_1000056EC(&qword_1000E1010, &qword_100099D28);
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  __chkstk_darwin(v3, v5);
  v110 = &v85 - v6;
  v102 = sub_1000056EC(&qword_1000E1018, &qword_100099D30);
  v100 = *(v102 - 8);
  v7 = *(v100 + 64);
  __chkstk_darwin(v102, v8);
  v107 = &v85 - v9;
  v101 = sub_1000056EC(&qword_1000E1020, &qword_100099D38);
  v99 = *(v101 - 8);
  v10 = *(v99 + 64);
  __chkstk_darwin(v101, v11);
  v106 = &v85 - v12;
  v97 = sub_1000056EC(&qword_1000E1028, &qword_100099D40);
  v98 = *(v97 - 8);
  v13 = *(v98 + 64);
  __chkstk_darwin(v97, v14);
  v109 = &v85 - v15;
  v93 = sub_1000056EC(&qword_1000E1030, &qword_100099D48);
  v94 = *(v93 - 8);
  v16 = *(v94 + 64);
  __chkstk_darwin(v93, v17);
  v105 = &v85 - v18;
  v96 = sub_1000056EC(&qword_1000E1038, &qword_100099D50);
  v95 = *(v96 - 8);
  v19 = *(v95 + 64);
  __chkstk_darwin(v96, v20);
  v108 = &v85 - v21;
  v92 = sub_1000056EC(&qword_1000E1040, &qword_100099D58);
  v91 = *(v92 - 8);
  v22 = *(v91 + 64);
  __chkstk_darwin(v92, v23);
  v25 = &v85 - v24;
  v26 = sub_1000056EC(&qword_1000E1048, &qword_100099D60);
  v90 = *(v26 - 8);
  v27 = *(v90 + 64);
  __chkstk_darwin(v26, v28);
  v30 = &v85 - v29;
  v31 = sub_1000056EC(&qword_1000E1050, &unk_100099D68);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  v36 = &v85 - v35;
  v37 = a1[3];
  v38 = a1[4];
  v120 = a1;
  sub_100006768(a1, v37);
  sub_100073C70();
  v39 = v112;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v40 = v39;
  if (v39)
  {
    return sub_10000529C(v120);
  }

  v87 = v30;
  v86 = v26;
  v41 = v108;
  v42 = v109;
  v112 = v32;
  v44 = v110;
  v43 = v111;
  v89 = v31;
  v88 = v36;
  v45 = KeyedDecodingContainer.allKeys.getter();
  if (*(v45 + 16) != 1 || (v46 = *(v45 + 32), v46 == 8))
  {
    v55 = type metadata accessor for DecodingError();
    swift_allocError();
    v57 = v56;
    v58 = *(sub_1000056EC(&qword_1000DBA80, &qword_100094060) + 48);
    *v57 = &type metadata for HomeAccessoryViewEvent;
    v59 = v89;
    v60 = v88;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v55 - 8) + 104))(v57, enum case for DecodingError.typeMismatch(_:), v55);
    swift_willThrow();
    (*(v112 + 8))(v60, v59);
    swift_unknownObjectRelease();
    return sub_10000529C(v120);
  }

  if (*(v45 + 32) > 3u)
  {
    v52 = v89;
    v62 = v88;
    if (*(v45 + 32) > 5u)
    {
      v63 = v43;
      if (v46 == 6)
      {
        LOBYTE(v113) = 6;
        sub_100073D18();
        v70 = v107;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v71 = v112;
        v85 = 0;
        (*(v100 + 8))(v70, v102);
        (*(v71 + 8))(v62, v52);
        swift_unknownObjectRelease();
        v81 = 0;
        v51 = 0;
        v52 = 0;
        v25 = 0;
        v53 = 0;
        v54 = 2;
        v50 = 4;
      }

      else
      {
        LOBYTE(v113) = 7;
        sub_100073CC4();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v80 = v112;
        v85 = 0;
        (*(v103 + 8))(v44, v104);
        (*(v80 + 8))(v62, v52);
        swift_unknownObjectRelease();
        v81 = 0;
        v51 = 0;
        v52 = 0;
        v25 = 0;
        v53 = 0;
        v54 = 2;
        v50 = 5;
      }
    }

    else
    {
      v110 = v45;
      v63 = v43;
      if (v46 == 4)
      {
        LOBYTE(v113) = 4;
        sub_100073DC0();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v64 = v112;
        v85 = 0;
        (*(v98 + 8))(v42, v97);
        (*(v64 + 8))(v62, v52);
        swift_unknownObjectRelease();
        v81 = 0;
        v51 = 0;
        v52 = 0;
        v25 = 0;
        v53 = 0;
        v54 = 2;
        v50 = 3;
      }

      else
      {
        LOBYTE(v113) = 5;
        sub_100073D6C();
        v53 = v106;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v74 = v112;
        v75 = v101;
        v40 = 0;
        v50 = KeyedDecodingContainer.decode(_:forKey:)();
        v85 = 0;
        v82 = *(v99 + 8);
        v109 = v83;
        v82(v53, v75);
        v84 = *(v74 + 8);
        v51 = v74 + 8;
        v84(v62, v52);
        swift_unknownObjectRelease();
        v54 = 1;
        v81 = v109;
      }
    }
  }

  else if (*(v45 + 32) > 1u)
  {
    v110 = v45;
    v63 = v43;
    if (v46 == 2)
    {
      LOBYTE(v113) = 2;
      sub_100073E68();
      v65 = v41;
      v66 = v89;
      v67 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v68 = v112;
      sub_100073EBC();
      v69 = v96;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v85 = 0;
      (*(v95 + 8))(v65, v69);
      (*(v68 + 8))(v67, v66);
      swift_unknownObjectRelease();
      v54 = 0;
      v50 = v113;
      v81 = v114;
      v51 = v115;
      v52 = v116;
      v40 = v117;
      v25 = v118;
      v53 = v119;
    }

    else
    {
      LOBYTE(v113) = 3;
      sub_100073E14();
      v76 = v105;
      v77 = v89;
      v78 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v79 = v112;
      v85 = 0;
      (*(v94 + 8))(v76, v93);
      (*(v79 + 8))(v78, v77);
      swift_unknownObjectRelease();
      v81 = 0;
      v51 = 0;
      v52 = 0;
      v25 = 0;
      v53 = 0;
      v50 = 2;
      v54 = 2;
    }
  }

  else
  {
    if (*(v45 + 32))
    {
      LOBYTE(v113) = 1;
      sub_100073F10();
      v72 = v89;
      v73 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v85 = 0;
      (*(v91 + 8))(v25, v92);
      (*(v112 + 8))(v73, v72);
      swift_unknownObjectRelease();
      v51 = 0;
      v52 = 0;
      v25 = 0;
      v53 = 0;
      v54 = 2;
      v50 = 1;
    }

    else
    {
      LOBYTE(v113) = 0;
      sub_100073F64();
      v47 = v87;
      v48 = v89;
      v49 = v88;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v85 = 0;
      (*(v90 + 8))(v47, v86);
      (*(v112 + 8))(v49, v48);
      swift_unknownObjectRelease();
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v25 = 0;
      v53 = 0;
      v54 = 2;
    }

    v63 = v43;
    v81 = 0;
  }

  result = sub_10000529C(v120);
  *v63 = v50;
  *(v63 + 8) = v81;
  *(v63 + 16) = v51;
  *(v63 + 24) = v52;
  *(v63 + 32) = v40;
  *(v63 + 40) = v25;
  *(v63 + 48) = v53;
  *(v63 + 56) = v54;
  return result;
}

unint64_t sub_100073C70()
{
  result = qword_1000E1058;
  if (!qword_1000E1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1058);
  }

  return result;
}

unint64_t sub_100073CC4()
{
  result = qword_1000E1060;
  if (!qword_1000E1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1060);
  }

  return result;
}

unint64_t sub_100073D18()
{
  result = qword_1000E1068;
  if (!qword_1000E1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1068);
  }

  return result;
}

unint64_t sub_100073D6C()
{
  result = qword_1000E1070;
  if (!qword_1000E1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1070);
  }

  return result;
}

unint64_t sub_100073DC0()
{
  result = qword_1000E1078;
  if (!qword_1000E1078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1078);
  }

  return result;
}

unint64_t sub_100073E14()
{
  result = qword_1000E1080;
  if (!qword_1000E1080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1080);
  }

  return result;
}

unint64_t sub_100073E68()
{
  result = qword_1000E1088;
  if (!qword_1000E1088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1088);
  }

  return result;
}

unint64_t sub_100073EBC()
{
  result = qword_1000E1090;
  if (!qword_1000E1090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1090);
  }

  return result;
}

unint64_t sub_100073F10()
{
  result = qword_1000E1098;
  if (!qword_1000E1098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1098);
  }

  return result;
}

unint64_t sub_100073F64()
{
  result = qword_1000E10A0;
  if (!qword_1000E10A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E10A0);
  }

  return result;
}

unint64_t sub_100073FB8()
{
  result = qword_1000E10F0;
  if (!qword_1000E10F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E10F0);
  }

  return result;
}

unint64_t sub_10007400C()
{
  result = qword_1000E10F8;
  if (!qword_1000E10F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E10F8);
  }

  return result;
}

unint64_t sub_1000740F4()
{
  result = qword_1000E1100;
  if (!qword_1000E1100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1100);
  }

  return result;
}

unint64_t sub_10007414C()
{
  result = qword_1000E1108;
  if (!qword_1000E1108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1108);
  }

  return result;
}

unint64_t sub_1000741A4()
{
  result = qword_1000E1110;
  if (!qword_1000E1110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1110);
  }

  return result;
}

unint64_t sub_1000741FC()
{
  result = qword_1000E1118;
  if (!qword_1000E1118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1118);
  }

  return result;
}

unint64_t sub_100074254()
{
  result = qword_1000E1120;
  if (!qword_1000E1120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1120);
  }

  return result;
}

unint64_t sub_1000742AC()
{
  result = qword_1000E1128;
  if (!qword_1000E1128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1128);
  }

  return result;
}

unint64_t sub_100074304()
{
  result = qword_1000E1130;
  if (!qword_1000E1130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1130);
  }

  return result;
}

unint64_t sub_10007435C()
{
  result = qword_1000E1138;
  if (!qword_1000E1138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1138);
  }

  return result;
}

unint64_t sub_1000743B4()
{
  result = qword_1000E1140;
  if (!qword_1000E1140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1140);
  }

  return result;
}

unint64_t sub_10007440C()
{
  result = qword_1000E1148;
  if (!qword_1000E1148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1148);
  }

  return result;
}

unint64_t sub_100074464()
{
  result = qword_1000E1150;
  if (!qword_1000E1150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1150);
  }

  return result;
}

unint64_t sub_1000744BC()
{
  result = qword_1000E1158;
  if (!qword_1000E1158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1158);
  }

  return result;
}

unint64_t sub_100074514()
{
  result = qword_1000E1160;
  if (!qword_1000E1160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1160);
  }

  return result;
}

unint64_t sub_10007456C()
{
  result = qword_1000E1168;
  if (!qword_1000E1168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1168);
  }

  return result;
}

unint64_t sub_1000745C4()
{
  result = qword_1000E1170;
  if (!qword_1000E1170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1170);
  }

  return result;
}

unint64_t sub_10007461C()
{
  result = qword_1000E1178;
  if (!qword_1000E1178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1178);
  }

  return result;
}

unint64_t sub_100074674()
{
  result = qword_1000E1180;
  if (!qword_1000E1180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1180);
  }

  return result;
}

unint64_t sub_1000746CC()
{
  result = qword_1000E1188;
  if (!qword_1000E1188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1188);
  }

  return result;
}

unint64_t sub_100074724()
{
  result = qword_1000E1190;
  if (!qword_1000E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1190);
  }

  return result;
}

unint64_t sub_10007477C()
{
  result = qword_1000E1198;
  if (!qword_1000E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1198);
  }

  return result;
}

unint64_t sub_1000747D4()
{
  result = qword_1000E11A0;
  if (!qword_1000E11A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E11A0);
  }

  return result;
}

uint64_t sub_100074894()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E11A8);
  sub_1000047A0(v0, qword_1000E11A8);
  return Logger.init(subsystem:category:)();
}

id sub_100074914()
{
  ObjectType = swift_getObjectType();
  if (qword_1000D97F0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E11A8);
  v3 = v0;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v18 = v7;
    *v6 = 136315138;
    v8 = *&v3[qword_1000E11C8];
    v9 = *&v3[qword_1000E11C8 + 8];

    v10 = sub_1000343F8(v8, v9, &v18);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s-Deinit", v6, 0xCu);
    sub_10000529C(v7);
  }

  v11 = *&v3[qword_1000E11C0];
  v12 = *&v3[qword_1000E11C8];
  v13 = *&v3[qword_1000E11C8 + 8];
  v14 = v3;
  v15 = v11;

  v16 = String._bridgeToObjectiveC()();

  [v15 removeObserver:v14 forKeyPath:v16 context:0];

  v19.receiver = v14;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, "dealloc");
}

uint64_t sub_100074B40(uint64_t a1)
{
  v2 = *(a1 + qword_1000E11C8 + 8);

  v3 = *(a1 + qword_1000E11D0 + 8);
}

uint64_t sub_100074BA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v17, 0, sizeof(v17));
    v14 = a5;
    v15 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v11 = a5;
  v12 = a1;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_1000752EC();
  v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

LABEL_8:
  sub_100074CF0(v8, v10, v17, v13);

  return sub_100075284(v17);
}

void sub_100074CF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a1;
  v48 = a2;
  v6 = *((swift_isaMask & *v4) + 0x50);
  v7 = type metadata accessor for Optional();
  v46 = *(v7 - 8);
  v8 = *(v46 + 64);
  v10 = __chkstk_darwin(v7, v9);
  v45 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10, v12);
  v15 = &v42 - v14;
  v16 = *(v6 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v13, v18);
  v44 = &v42 - v19;
  if (qword_1000D97F0 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_1000047A0(v20, qword_1000E11A8);

  v21 = v4;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v49 = a4;
    v25 = v24;
    v26 = swift_slowAlloc();
    v42 = v16;
    v51[0] = v26;
    *v25 = 136315650;
    v27 = v21;
    *(v25 + 4) = sub_1000343F8(*(v21 + qword_1000E11C8), *(v21 + qword_1000E11C8 + 8), v51);
    v43 = v7;
    *(v25 + 12) = 2080;
    *(v25 + 14) = sub_1000343F8(0xD00000000000002BLL, 0x80000001000A6020, v51);
    *(v25 + 22) = 2080;
    v50[0] = v49;

    sub_1000056EC(&qword_1000E1258, qword_10009A630);
    v28 = String.init<A>(describing:)();
    v30 = sub_1000343F8(v28, v29, v51);
    v7 = v43;

    *(v25 + 24) = v30;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s-%s: change=%s", v25, 0x20u);
    swift_arrayDestroy();
    v16 = v42;

    a4 = v49;
  }

  else
  {
    v27 = v21;
  }

  if (a4 && v48 && (*(v27 + qword_1000E11C8) == v47 && *(v27 + qword_1000E11C8 + 8) == v48 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (*(a4 + 16))
    {
      v31 = sub_100045154(NSKeyValueChangeNewKey);
      if (v32)
      {
        v33 = v27;
        sub_10000A150(*(a4 + 56) + 32 * v31, v51);
        sub_10000A150(v51, v50);
        v34 = swift_dynamicCast();
        v35 = *(v16 + 56);
        if (v34)
        {
          v35(v15, 0, 1, v6);
          v36 = v44;
          (*(v16 + 32))(v44, v15, v6);
          v37 = v45;
          (*(v16 + 16))(v45, v36, v6);
          v35(v37, 0, 1, v6);
          v38 = *(v33 + qword_1000E11D0 + 8);
          (*(v33 + qword_1000E11D0))(v37);
          (*(v46 + 8))(v37, v7);
          (*(v16 + 8))(v36, v6);
        }

        else
        {
          v35(v15, 1, 1, v6);
          v39 = *(v46 + 8);
          v39(v15, v7);
          v40 = v45;
          v35(v45, 1, 1, v6);
          v41 = *(v33 + qword_1000E11D0 + 8);
          (*(v33 + qword_1000E11D0))(v40);
          v39(v40, v7);
        }

        sub_10000529C(v51);
      }
    }
  }
}

uint64_t sub_100075284(uint64_t a1)
{
  v2 = sub_1000056EC(&qword_1000D9E38, &qword_100091570);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000752EC()
{
  result = qword_1000D99D8;
  if (!qword_1000D99D8)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000D99D8);
  }

  return result;
}

uint64_t sub_100075344()
{
  v0 = type metadata accessor for Logger();
  sub_100004E8C(v0, qword_1000E1260);
  sub_1000047A0(v0, qword_1000E1260);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000753EC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_10007545C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_1000754D0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10007556C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1000056EC(&qword_1000E15B8, &qword_10009A9B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4, v7);
  v9 = v13 - v8;
  v10 = a1 + *(type metadata accessor for ActivityDisplayContext(0) + 32);
  v13[1] = sub_100060D40();
  sub_1000056EC(&qword_1000E15C0, &qword_10009A9C0);
  sub_10000EE58(&qword_1000E15C8, &qword_1000E15C0, &qword_10009A9C0);
  Publisher.map<A>(_:)();

  sub_10000EE58(&qword_1000E15D0, &qword_1000E15B8, &qword_10009A9B8);
  v11 = Publisher.eraseToAnyPublisher()();
  result = (*(v5 + 8))(v9, v4);
  *a2 = v11;
  return result;
}

uint64_t sub_100075738(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

id sub_1000757D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 40);
  *a2 = v2;
  return v2;
}

uint64_t sub_1000757E4(UIImage **a1, UIImage **a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 && (v4 = UIImagePNGRepresentation(v2)) != 0)
  {
    v5 = v4;
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    if (!v3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
    if (!v3)
    {
      goto LABEL_9;
    }
  }

  v9 = UIImagePNGRepresentation(v3);
  if (v9)
  {
    v10 = v9;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    goto LABEL_10;
  }

  v3 = 0;
LABEL_9:
  v12 = 0xF000000000000000;
LABEL_10:
  if (v8 >> 60 == 15)
  {
    if (v12 >> 60 == 15)
    {
      sub_100052280(v6, v8);
      return 1;
    }

    goto LABEL_14;
  }

  if (v12 >> 60 == 15)
  {
LABEL_14:
    sub_100052280(v6, v8);
    sub_100052280(v3, v12);
    return 0;
  }

  sub_10007BDBC(v6, v8);
  sub_10007BDBC(v3, v12);
  v14 = sub_10007AE1C(v6, v8, v3, v12);
  sub_100052280(v3, v12);
  sub_100052280(v3, v12);
  sub_100052280(v6, v8);
  sub_100052280(v6, v8);
  return v14 & 1;
}

uint64_t sub_100075944(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v3 = v1;
    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_1000759D8()
{
  v1 = v0;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000047A0(v2, qword_1000E1260);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = [objc_opt_self() defaultCenter];
  [v6 removeObserver:v1];

  v7 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__activityDisplayContext;
  v8 = sub_1000056EC(&qword_1000E1538, &qword_10009A960);
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  v9 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__movie;
  v10 = sub_1000056EC(&qword_1000E1540, &qword_10009A968);
  (*(*(v10 - 8) + 8))(v1 + v9, v10);
  v11 = *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler + 8);
  sub_10000B17C(*(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler));
  v12 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__subtitle;
  v13 = sub_1000056EC(&qword_1000E1548, &qword_10009A970);
  (*(*(v13 - 8) + 8))(v1 + v12, v13);
  v14 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__activityImage;
  v15 = sub_1000056EC(&qword_1000E1550, &qword_10009A978);
  (*(*(v15 - 8) + 8))(v1 + v14, v15);
  v16 = OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__canShowActivityIcon;
  v17 = sub_1000056EC(&qword_1000DAF88, &qword_10009A980);
  v18 = *(*(v17 - 8) + 8);
  v18(v1 + v16, v17);
  v18(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel__isOptimisticStateActive, v17);
  v19 = *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_tasks);

  return v1;
}

uint64_t sub_100075CB8()
{
  sub_1000759D8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v1, v2);
}

uint64_t type metadata accessor for ProximityCardHeaderViewModel()
{
  result = qword_1000E12D8;
  if (!qword_1000E12D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100075D64()
{
  v1 = v0;
  v2 = type metadata accessor for ActivityDisplayContext(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8, v4);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AdjustedMovie(0);
  v8 = *(v7 - 8);
  v78 = v7;
  v79 = v8;
  v9 = *(v8 + 64);
  v11 = __chkstk_darwin(v7, v10);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11, v13);
  v72 = &v69 - v15;
  __chkstk_darwin(v14, v16);
  v18 = &v69 - v17;
  v19 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v75 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22, v24);
  v74 = &v69 - v26;
  v28 = __chkstk_darwin(v25, v27);
  v30 = (&v69 - v29);
  v32 = __chkstk_darwin(v28, v31);
  v34 = &v69 - v33;
  v36 = __chkstk_darwin(v32, v35);
  v38 = &v69 - v37;
  __chkstk_darwin(v36, v39);
  v41 = &v69 - v40;
  if (qword_1000D97F8 != -1)
  {
    swift_once();
  }

  v77 = v30;
  v42 = type metadata accessor for Logger();
  v43 = sub_1000047A0(v42, qword_1000E1260);

  v73 = v43;
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = v18;
    v70 = v6;
    v47 = swift_slowAlloc();
    v80 = swift_slowAlloc();
    *v47 = 136315394;
    *(v47 + 4) = sub_1000343F8(0xD000000000000015, 0x80000001000A6100, &v80);
    *(v47 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    v71 = v1;
    static Published.subscript.getter();

    sub_10001A510(v41, v38, &qword_1000E12F8, &qword_10009A670);
    if ((*(v79 + 48))(v38, 1, v78) == 1)
    {
      v48 = 0xE300000000000000;
      v49 = 7104878;
    }

    else
    {
      sub_10007D080(v38, v46, type metadata accessor for AdjustedMovie);
      sub_10007C364(v46, v72, type metadata accessor for AdjustedMovie);
      v49 = String.init<A>(describing:)();
      v48 = v50;
      sub_10007C3CC(v46, type metadata accessor for AdjustedMovie);
    }

    sub_10000A628(v41, &qword_1000E12F8, &qword_10009A670);
    v51 = sub_1000343F8(v49, v48, &v80);

    *(v47 + 14) = v51;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s: self.movie=%s", v47, 0x16u);
    swift_arrayDestroy();

    v6 = v70;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v52 = v78;
  v53 = *(v79 + 48);
  v54 = v53(v34, 1, v78);
  sub_10000A628(v34, &qword_1000E12F8, &qword_10009A670);
  if (v54 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v55 = *(v6 + 2);
    sub_10007C3CC(v6, type metadata accessor for ActivityDisplayContext);
    v56 = v77;
    sub_1000042B8(v55, v77);
    if (v53(v56, 1, v52) == 1)
    {
      sub_10000A628(v56, &qword_1000E12F8, &qword_10009A670);

      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v80 = v60;
        *v59 = 136315138;
        swift_getKeyPath();
        swift_getKeyPath();
        static Published.subscript.getter();

        v61 = *(v6 + 2);
        sub_10007C3CC(v6, type metadata accessor for ActivityDisplayContext);
        v62 = sub_100064F5C(v61);
        v63 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v65 = v64;

        v66 = sub_1000343F8(v63, v65, &v80);

        *(v59 + 4) = v66;
        _os_log_impl(&_mh_execute_header, v57, v58, "### Could not create movie: assetType=%s", v59, 0xCu);
        sub_10000529C(v60);
      }
    }

    else
    {
      v67 = v76;
      sub_10007D080(v56, v76, type metadata accessor for AdjustedMovie);
      v68 = v74;
      sub_10007C364(v67, v74, type metadata accessor for AdjustedMovie);
      (*(v79 + 56))(v68, 0, 1, v52);
      swift_getKeyPath();
      swift_getKeyPath();
      sub_10001A510(v68, v75, &qword_1000E12F8, &qword_10009A670);

      static Published.subscript.setter();
      sub_10000A628(v68, &qword_1000E12F8, &qword_10009A670);
      sub_10007C3CC(v67, type metadata accessor for AdjustedMovie);
    }
  }
}

void sub_1000765F8()
{
  sub_10007C084(319, &qword_1000E12E8, type metadata accessor for ActivityDisplayContext, &type metadata accessor for Published);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_100027004(319, &qword_1000E12F0, &qword_1000E12F8, &qword_10009A670);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_10007C0E8(319, &qword_1000E1300, &type metadata for String, &type metadata accessor for Published);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_100027004(319, &qword_1000E1308, &unk_1000E1310, &unk_10009A690);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_10007C0E8(319, &qword_1000DADC0, &type metadata for Bool, &type metadata accessor for Published);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

unint64_t sub_100076848()
{
  result = qword_1000E1530;
  if (!qword_1000E1530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000E1530);
  }

  return result;
}

uint64_t sub_10007689C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ProximityCardHeaderViewModel();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1000768DC()
{
  v0 = type metadata accessor for ActivityDisplayContext(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = *(v4 + 3);
  v6 = *(v4 + 4);

  sub_10007C3CC(v4, type metadata accessor for ActivityDisplayContext);
  return v5;
}

uint64_t sub_1000769BC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t sub_100076A5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_100076ACC(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC13PCViewService28ProximityCardHeaderViewModel_eventHandler + 8);

    v2(v3 & 1);

    return sub_10000B17C(v2);
  }

  return result;
}

uint64_t sub_100076B48(uint64_t a1)
{
  result = sub_10007D038(&qword_1000DA948, type metadata accessor for ProximityCardHeaderViewModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100076BA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityIcon(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8, v6);
  v8 = *(a2 + 40);
  sub_10007C364(a1, &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ActivityIcon);
  sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
  State.wrappedValue.setter();
  return sub_10007C3CC(a1, type metadata accessor for ActivityIcon);
}

uint64_t sub_100076C74(uint64_t a1)
{
  v1 = *(a1 + 40);
  sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
  return State.projectedValue.getter();
}

BOOL sub_100076CC0(uint64_t a1)
{
  v3 = sub_1000056EC(&qword_1000E12F8, &qword_10009A670);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v19[-v6];
  v8 = (v1 + *(a1 + 44));
  v9 = *v8;
  v10 = *(v8 + 1);
  v19[16] = v9;
  v20 = v10;
  sub_1000056EC(&qword_1000DAFC0, &qword_100092670);
  State.wrappedValue.getter();
  if (v19[15] != 1)
  {
    return 0;
  }

  v11 = *(v1 + 16);
  v14 = a1 + 16;
  v12 = *(a1 + 16);
  v13 = *(v14 + 8);
  v15 = *(v13 + 40);
  swift_unknownObjectRetain();
  v15(v12, v13);
  swift_unknownObjectRelease();
  v16 = type metadata accessor for AdjustedMovie(0);
  v17 = (*(*(v16 - 8) + 48))(v7, 1, v16) != 1;
  sub_10000A628(v7, &qword_1000E12F8, &qword_10009A670);
  return v17;
}

uint64_t sub_100076E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v38 = a3;
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(a1, a2);
  v35 = v8;
  v40 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1000056EC(&qword_1000E1668, &qword_10009AA48);
  v9 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39, v10);
  v12 = &v30 - v11;
  *v12 = static VerticalAlignment.center.getter();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = sub_1000056EC(&qword_1000E1670, &qword_10009AA50);
  v14 = *(a1 + 16);
  v15 = *(a1 + 24);
  sub_100077184(v3, v14, v15, &v12[*(v13 + 44)]);
  v16 = *(v3 + 16);
  v37 = v4;
  v17 = *(v15 + 32);
  swift_unknownObjectRetain();
  v33 = v15;
  v34 = v14;
  v18 = v17(v14, v15);
  v32 = v18;
  swift_unknownObjectRelease();
  v41 = v18;
  v36 = *(v6 + 16);
  v19 = v40;
  v31 = a1;
  v36(v40, v4, a1);
  v20 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v14;
  *(v21 + 24) = v15;
  v22 = *(v6 + 32);
  v22(v21 + v20, v19, a1);
  sub_1000056EC(&unk_1000E1310, &unk_10009A690);
  sub_10000EE58(&qword_1000E1678, &qword_1000E1668, &qword_10009AA48);
  sub_10007C1E0();
  v23 = v38;
  View.onChange<A>(of:initial:_:)();

  sub_10000A628(v12, &qword_1000E1668, &qword_10009AA48);
  v24 = v40;
  v25 = v31;
  v36(v40, v37, v31);
  v26 = swift_allocObject();
  v27 = v33;
  *(v26 + 16) = v34;
  *(v26 + 24) = v27;
  v22(v26 + v20, v24, v25);
  result = sub_1000056EC(&qword_1000E1690, &qword_10009AA58);
  v29 = (v23 + *(result + 36));
  *v29 = sub_10007C2E0;
  v29[1] = v26;
  v29[2] = 0;
  v29[3] = 0;
  return result;
}

uint64_t sub_100077184@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v66 = sub_1000056EC(&qword_1000E16A8, &qword_10009AA68);
  v7 = *(v66 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v66, v9);
  v57 = &v57 - v10;
  v11 = sub_1000056EC(&qword_1000E16B0, &qword_10009AA70);
  v12 = *(*(v11 - 8) + 64);
  v14 = __chkstk_darwin(v11 - 8, v13);
  v64 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14, v16);
  v18 = &v57 - v17;
  v19 = sub_1000056EC(&qword_1000E16B8, &qword_10009AA78);
  v20 = *(*(v19 - 8) + 64);
  v22 = __chkstk_darwin(v19 - 8, v21);
  v63 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v26 = (&v57 - v25);
  *v26 = static Alignment.bottomTrailing.getter();
  v26[1] = v27;
  v28 = *(sub_1000056EC(&qword_1000E16C0, &qword_10009AA80) + 44);
  v62 = v26;
  sub_100077984(a1, a2, a3, v26 + v28);
  v59 = type metadata accessor for ProximityCardHeaderView();
  v61 = a1;
  sub_100078630(v59, v72);
  memcpy(v74, v72, 0x131uLL);
  v29 = static Edge.Set.leading.getter();
  EdgeInsets.init(_all:)();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v72[448] = 0;
  memcpy(v75, v74, 0x138uLL);
  v75[312] = v29;
  *v76 = *v73;
  *&v76[3] = *&v73[3];
  v77 = v31;
  v78 = v33;
  v79 = v35;
  v80 = v37;
  v81 = 0;
  v38 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v60 = qword_1000F3C58;
  v39 = *(qword_1000F3C58 + 136);
  v40 = sub_100025508();

  if (v40)
  {
    sub_100029E7C(v38, v72);
    memcpy(v68, v72, 0x1B8uLL);
    memcpy(v69, v72, 0x1B8uLL);
    sub_10001A510(v68, v71, &qword_1000E16C8, &qword_10009AA88);
    sub_10000A628(v69, &qword_1000E16C8, &qword_10009AA88);
    memcpy(v71, v68, 0x1B8uLL);
    sub_10007C574(v71);
    memcpy(v70, v71, 0x1B9uLL);
    sub_10001A510(v68, v72, &qword_1000E16C8, &qword_10009AA88);
    sub_10001A510(v68, v72, &qword_1000E16C8, &qword_10009AA88);
    sub_1000056EC(&qword_1000E16C8, &qword_10009AA88);
    sub_1000056EC(&qword_1000DBA20, &qword_10009AA90);
    sub_10007C900(&qword_1000E16D0, &qword_1000E16C8, &qword_10009AA88, sub_10007C4BC);
    sub_10007C4BC();
    _ConditionalContent<>.init(storage:)();
    sub_10000A628(v75, &qword_1000DBA20, &qword_10009AA90);

    sub_10000A628(v68, &qword_1000E16C8, &qword_10009AA88);
    sub_10000A628(v68, &qword_1000E16C8, &qword_10009AA88);
  }

  else
  {
    memcpy(v71, v74, 0x138uLL);
    LOBYTE(v71[39]) = v29;
    *(&v71[39] + 1) = *v73;
    HIDWORD(v71[39]) = *&v73[3];
    v71[40] = v31;
    v71[41] = v33;
    v71[42] = v35;
    v71[43] = v37;
    LOBYTE(v71[44]) = 0;
    sub_10007C4B0(v71);
    memcpy(v70, v71, 0x1B9uLL);
    sub_1000056EC(&qword_1000E16C8, &qword_10009AA88);
    sub_1000056EC(&qword_1000DBA20, &qword_10009AA90);
    sub_10007C900(&qword_1000E16D0, &qword_1000E16C8, &qword_10009AA88, sub_10007C4BC);
    sub_10007C4BC();
    _ConditionalContent<>.init(storage:)();
  }

  memcpy(v70, v72, 0x1B9uLL);
  memcpy(v71, v72, 0x1B9uLL);
  sub_10001A510(v70, v69, &qword_1000E16F0, &qword_10009AAA8);
  sub_10000A628(v71, &qword_1000E16F0, &qword_10009AAA8);
  v41 = v60;
  v42 = *(v60 + 504);
  v43 = sub_100025508();

  if (v43)
  {
    sub_1000786E8(v59, v69);
    v58 = v69[0];
  }

  else
  {
    v58 = 0;
  }

  v44 = *(v41 + 544);
  v45 = sub_100025508();

  v46 = 1;
  if (v45)
  {
    v47 = v57;
    sub_10007878C(v59);
    (*(v7 + 32))(v18, v47, v66);
    v46 = 0;
  }

  (*(v7 + 56))(v18, v46, 1, v66);
  v49 = v62;
  v48 = v63;
  sub_10001A510(v62, v63, &qword_1000E16B8, &qword_10009AA78);
  memcpy(v67, v70, sizeof(v67));
  v50 = v64;
  sub_10001A510(v18, v64, &qword_1000E16B0, &qword_10009AA70);
  v51 = v65;
  sub_10001A510(v48, v65, &qword_1000E16B8, &qword_10009AA78);
  v52 = sub_1000056EC(&qword_1000E16F8, &qword_10009AAB0);
  v53 = v18;
  v54 = v52[12];
  memcpy(v68, v67, 0x1B9uLL);
  memcpy((v51 + v54), v67, 0x1B9uLL);
  v55 = v51 + v52[16];
  *v55 = 0;
  *(v55 + 8) = 1;
  *(v51 + v52[20]) = v58;
  sub_10001A510(v50, v51 + v52[24], &qword_1000E16B0, &qword_10009AA70);
  sub_10001A510(v68, v69, &qword_1000E16F0, &qword_10009AAA8);
  sub_10000A628(v53, &qword_1000E16B0, &qword_10009AA70);
  sub_10000A628(v49, &qword_1000E16B8, &qword_10009AA78);
  sub_10000A628(v50, &qword_1000E16B0, &qword_10009AA70);

  memcpy(v69, v67, 0x1B9uLL);
  sub_10000A628(v69, &qword_1000E16F0, &qword_10009AAA8);
  return sub_10000A628(v48, &qword_1000E16B8, &qword_10009AA78);
}

uint64_t sub_100077984@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v108 = sub_1000056EC(&qword_1000E1748, &qword_10009AB58);
  v7 = *(*(v108 - 8) + 64);
  __chkstk_darwin(v108, v8);
  v110 = &v102 - v9;
  v109 = sub_1000056EC(&qword_1000DBA48, &unk_10009AB60);
  v10 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109, v11);
  v102 = &v102 - v12;
  v13 = sub_1000056EC(&qword_1000DEEB0, &qword_100096C78);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8, v15);
  v105 = &v102 - v16;
  v117 = sub_1000056EC(&qword_1000DBA40, &qword_10009AB70);
  v17 = *(*(v117 - 8) + 64);
  __chkstk_darwin(v117, v18);
  v111 = &v102 - v19;
  v120 = sub_1000056EC(&qword_1000E1750, &qword_10009AB78);
  v118 = *(v120 - 8);
  v20 = *(v118 + 64);
  v22 = __chkstk_darwin(v120, v21);
  v107 = &v102 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22, v24);
  v106 = &v102 - v25;
  v26 = sub_1000056EC(&qword_1000E1758, &qword_10009AB80);
  v27 = *(*(v26 - 8) + 64);
  v29 = __chkstk_darwin(v26 - 8, v28);
  v121 = &v102 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29, v31);
  v119 = &v102 - v32;
  v33 = sub_1000056EC(&qword_1000E1760, &qword_10009AB88);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33, v35);
  v37 = &v102 - v36;
  v38 = sub_1000056EC(&qword_1000DBA38, &unk_10009AB90);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38, v40);
  v42 = &v102 - v41;
  v43 = sub_1000056EC(&qword_1000DBA30, &qword_100092F88);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43, v45);
  v47 = &v102 - v46;
  v48 = sub_1000056EC(&qword_1000E1768, &qword_10009ABA0);
  v49 = *(*(v48 - 8) + 64);
  v51 = __chkstk_darwin(v48 - 8, v50);
  v116 = &v102 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __chkstk_darwin(v51, v53);
  v56 = &v102 - v55;
  __chkstk_darwin(v54, v57);
  v115 = &v102 - v58;
  v112 = a2;
  v113 = a3;
  v104 = type metadata accessor for ProximityCardHeaderView();
  v114 = a1;
  sub_1000783F0(v104, v47);
  static Alignment.center.getter();
  _FrameLayout.init(width:height:alignment:)();
  v59 = &v47[*(v43 + 36)];
  v60 = v124;
  *v59 = v123;
  *(v59 + 1) = v60;
  *(v59 + 2) = v125;
  v61 = static Color.blue.getter();
  if (qword_1000D9778 != -1)
  {
    swift_once();
  }

  v103 = qword_1000F3C58;
  v62 = *(qword_1000F3C58 + 136);
  v63 = sub_100025508();

  if (v63)
  {
    sub_10002A084(v61, v42);
    sub_10001A510(v42, v37, &qword_1000DBA38, &unk_10009AB90);
    swift_storeEnumTagMultiPayload();
    sub_10007C900(&qword_1000E1770, &qword_1000DBA38, &unk_10009AB90, sub_10007C9B0);
    sub_10007C9B0();
    _ConditionalContent<>.init(storage:)();

    sub_10000A628(v42, &qword_1000DBA38, &unk_10009AB90);
  }

  else
  {
    sub_10001A510(v47, v37, &qword_1000DBA30, &qword_100092F88);
    swift_storeEnumTagMultiPayload();
    sub_10007C900(&qword_1000E1770, &qword_1000DBA38, &unk_10009AB90, sub_10007C9B0);
    sub_10007C9B0();
    _ConditionalContent<>.init(storage:)();
  }

  sub_10000A628(v47, &qword_1000DBA30, &qword_100092F88);
  v64 = v115;
  sub_10001F170(v56, v115, &qword_1000E1768, &qword_10009ABA0);
  v66 = v113;
  v65 = v114;
  v67 = *(v114 + 2);
  v68 = *(v113 + 48);
  swift_unknownObjectRetain();
  v69 = v68(v112, v66);
  swift_unknownObjectRelease();
  v70 = v119;
  v71 = v117;
  if (v69)
  {
    v72 = *(v104 + 40);
    sub_1000056EC(qword_1000E15D8, &qword_10009A9C8);
    v73 = v105;
    State.projectedValue.getter();
    v74 = *v65;
    v75 = v111;
    sub_10004987C(v73, v111, v74);
    LOBYTE(v73) = static Edge.Set.all.getter();
    EdgeInsets.init(_all:)();
    v77 = v76;
    v79 = v78;
    v81 = v80;
    v83 = v82;
    v84 = v75 + *(sub_1000056EC(&qword_1000E17C8, &qword_10009ABD8) + 36);
    *v84 = v73;
    *(v84 + 8) = v77;
    *(v84 + 16) = v79;
    *(v84 + 24) = v81;
    *(v84 + 32) = v83;
    *(v84 + 40) = 0;
    __asm { FMOV            V0.2D, #6.0 }

    *(v75 + *(v71 + 36)) = _Q0;
    v90 = static Color.blue.getter();
    v91 = *(v103 + 136);
    v92 = sub_100025508();

    if (v92)
    {
      v93 = v102;
      sub_10002A060(v90, v102);
      sub_10001A510(v93, v110, &qword_1000DBA48, &unk_10009AB60);
      swift_storeEnumTagMultiPayload();
      sub_10007CC38();
      sub_10007CCF0();
      v94 = v107;
      v75 = v111;
      _ConditionalContent<>.init(storage:)();

      sub_10000A628(v93, &qword_1000DBA48, &unk_10009AB60);
    }

    else
    {
      sub_10001A510(v75, v110, &qword_1000DBA40, &qword_10009AB70);
      swift_storeEnumTagMultiPayload();
      sub_10007CC38();
      sub_10007CCF0();
      v94 = v107;
      _ConditionalContent<>.init(storage:)();
    }

    sub_10000A628(v75, &qword_1000DBA40, &qword_10009AB70);
    v96 = v106;
    sub_10001F170(v94, v106, &qword_1000E1750, &qword_10009AB78);
    sub_10001F170(v96, v70, &qword_1000E1750, &qword_10009AB78);
    v95 = 0;
  }

  else
  {
    v95 = 1;
  }

  (*(v118 + 56))(v70, v95, 1, v120);
  v97 = v116;
  sub_10001A510(v64, v116, &qword_1000E1768, &qword_10009ABA0);
  v98 = v121;
  sub_10001A510(v70, v121, &qword_1000E1758, &qword_10009AB80);
  v99 = v122;
  sub_10001A510(v97, v122, &qword_1000E1768, &qword_10009ABA0);
  v100 = sub_1000056EC(&qword_1000E17C0, &qword_10009ABD0);
  sub_10001A510(v98, v99 + *(v100 + 48), &qword_1000E1758, &qword_10009AB80);
  sub_10000A628(v70, &qword_1000E1758, &qword_10009AB80);
  sub_10000A628(v64, &qword_1000E1768, &qword_10009ABA0);
  sub_10000A628(v98, &qword_1000E1758, &qword_10009AB80);
  return sub_10000A628(v97, &qword_1000E1768, &qword_10009ABA0);
}

uint64_t sub_1000783F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000056EC(&qword_1000E17B8, &unk_10009ABC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8, v7);
  v9 = (&v31 - v8);
  v10 = sub_1000056EC(&qword_1000E17A8, &qword_10009ABB8);
  v11 = v10 - 8;
  v12 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10, v13);
  v15 = &v31 - v14;
  v16 = sub_1000056EC(&qword_1000E1798, &qword_10009ABB0);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16, v19);
  v21 = &v31 - v20;
  *v9 = static Alignment.center.getter();
  v9[1] = v22;
  v23 = sub_1000056EC(&qword_1000E17F0, &qword_10009ABE0);
  sub_100078CE4(v2, *(a1 + 16), *(a1 + 24), v9 + *(v23 + 44));
  v24 = 0.0;
  if (sub_100076CC0(a1))
  {
    v25 = 0.0;
  }

  else
  {
    v25 = 10.0;
  }

  sub_10001F170(v9, v15, &qword_1000E17B8, &unk_10009ABC0);
  v26 = &v15[*(v11 + 44)];
  *v26 = v25;
  v26[8] = 0;
  if (sub_100076CC0(a1))
  {
    v24 = 1.0;
  }

  sub_10001F170(v15, v21, &qword_1000E17A8, &qword_10009ABB8);
  *&v21[*(v17 + 44)] = v24;
  v27 = static Animation.default.getter();
  v28 = sub_100076CC0(a1);
  sub_10001F170(v21, a2, &qword_1000E1798, &qword_10009ABB0);
  result = sub_1000056EC(&qword_1000E1788, &qword_10009ABA8);
  v30 = a2 + *(result + 36);
  *v30 = v27;
  *(v30 + 8) = v28;
  return result;
}