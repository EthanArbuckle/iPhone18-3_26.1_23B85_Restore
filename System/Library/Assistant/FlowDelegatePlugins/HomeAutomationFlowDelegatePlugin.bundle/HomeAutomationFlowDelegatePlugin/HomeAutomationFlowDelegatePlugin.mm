uint64_t HomeAutomationFlowDelegatePlugin.__allocating_init()()
{
  v0 = swift_allocObject();
  HomeAutomationFlowDelegatePlugin.init()();
  return v0;
}

uint64_t HomeAutomationFlowDelegatePlugin.init()()
{
  v1 = v0;
  sub_1FF0();
  sub_20E0();
  sub_2020();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v4 = [v3 bundlePath];

  sub_2190();

  v6._countAndFlagsBits = 0x74616C706D65542FLL;
  v6._object = 0xEA00000000007365;
  sub_21A0(v6);

  sub_1FE0();

  return v1;
}

uint64_t HomeAutomationFlowDelegatePlugin.findFlowForX(parse:)(uint64_t a1)
{
  v2 = sub_1FD0();
  v3 = sub_1F6C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1F80();
  v10 = v9 - v8;
  v11 = sub_2170();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  sub_1F80();
  sub_2070();
  v17[3] = sub_2090();
  v17[4] = &protocol witness table for LocationService;
  sub_1528(v17);
  sub_2080();
  (*(v5 + 16))(v10, a1, v2);
  v13 = sub_2060();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  sub_2050();
  sub_2040();
}

uint64_t *sub_1528(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

Swift::Void __swiftcall HomeAutomationFlowDelegatePlugin.warmup(refId:)(Swift::String refId)
{
  object = refId._object;
  countAndFlagsBits = refId._countAndFlagsBits;
  v2 = sub_2180();
  v3 = sub_1F6C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1F80();
  v10 = v9 - v8;
  v11 = sub_2160();
  v12 = sub_1F6C(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  __chkstk_darwin(v12);
  sub_1F80();
  v19 = v18 - v17;
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  sub_20D0();
  sub_21B0(52);
  v23._object = 0x80000000000023F0;
  v23._countAndFlagsBits = 0xD000000000000032;
  sub_21A0(v23);
  v24._countAndFlagsBits = countAndFlagsBits;
  v24._object = object;
  sub_21A0(v24);
  v25._countAndFlagsBits = 0;
  v26._countAndFlagsBits = 0xD000000000000080;
  v26._object = 0x8000000000002430;
  v25._object = 0xE000000000000000;
  sub_2150(v25, 0, 0, v26);

  (*(v14 + 8))(v19, v11);
  sub_19CC(&qword_80A0, &qword_22F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22E0;
  *(v21 + 32) = sub_1DD8;
  *(v21 + 40) = v20;
  (*(v5 + 104))(v10, enum case for DispatchQoS.QoSClass.userInteractive(_:), v2);
  swift_retain_n();
  sub_2030();

  (*(v5 + 8))(v10, v2);
}

uint64_t sub_1834(uint64_t a1)
{
  v2 = sub_2160();
  v3 = sub_1F6C(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  sub_1F80();
  v10 = v9 - v8;
  sub_20D0();
  sub_21B0(62);
  v13._object = 0x8000000000002530;
  v13._countAndFlagsBits = 0xD00000000000003ALL;
  sub_21A0(v13);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v11._countAndFlagsBits = 0x73736563637573;
  }

  else
  {
    v11._countAndFlagsBits = 0x6572756C696166;
  }

  v11._object = 0xE700000000000000;
  sub_21A0(v11);

  v14._countAndFlagsBits = 32010;
  v14._object = 0xE200000000000000;
  sub_21A0(v14);
  v15._countAndFlagsBits = 0;
  v16._countAndFlagsBits = 0xD000000000000080;
  v16._object = 0x8000000000002430;
  v15._object = 0xE000000000000000;
  sub_2150(v15, 0, 0, v16);

  return (*(v5 + 8))(v10, v2);
}

uint64_t sub_19CC(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A14(void (**a1)(uint64_t), uint64_t a2)
{
  v42 = a2;
  v3 = sub_19CC(&qword_8158, "F");
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v40 - v5;
  v7 = sub_20A0();
  v8 = sub_1F6C(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  __chkstk_darwin(v8);
  sub_1F80();
  v15 = v14 - v13;
  v43 = sub_2140();
  v16 = sub_1F6C(v43);
  v18 = v17;
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  sub_1F80();
  v23 = v22 - v21;
  v24 = sub_2160();
  v25 = sub_1F6C(v24);
  v27 = v26;
  v29 = *(v28 + 64);
  __chkstk_darwin(v25);
  sub_1F80();
  v32 = v31 - v30;
  v33 = *a1;
  v40[1] = a1[1];
  v41 = v33;
  sub_20D0();
  v44._object = 0x8000000000002510;
  v45._countAndFlagsBits = 0xD000000000000080;
  v45._object = 0x8000000000002430;
  v44._countAndFlagsBits = 0xD000000000000014;
  sub_2150(v44, 0, 0, v45);
  (*(v27 + 8))(v32, v24);
  v34 = sub_20C0();
  sub_2100();
  sub_2110();

  (*(v10 + 104))(v15, enum case for AFAnalyticsEvent.homeKitWarmUpStart(_:), v7);
  sub_20B0();
  (*(v10 + 8))(v15, v7);
  sub_2010();

  v35 = v42;
  swift_beginAccess();
  *(v35 + 16) = 1;
  v36 = sub_20C0();
  sub_2100();
  sub_2120();
  v37 = sub_2130();
  sub_1EDC(v6, 0, 1, v37);
  sub_20F0();

  v38 = sub_1F04(v6);
  v41(v38);
  return (*(v18 + 8))(v23, v43);
}

unint64_t sub_1DFC()
{
  result = qword_80A8;
  if (!qword_80A8)
  {
    type metadata accessor for HomeAutomationFlowDelegatePlugin();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_80A8);
  }

  return result;
}

uint64_t sub_1E8C@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationFlowDelegatePlugin.__allocating_init()();
  *a1 = result;
  return result;
}

uint64_t sub_1F04(uint64_t a1)
{
  v2 = sub_19CC(&qword_8158, "F");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}