uint64_t sub_1940F0(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  sub_2CB690();
  return sub_18F568(a1, a2);
}

uint64_t sub_194184()
{
  v0 = sub_2CC2B0();
  v28[0] = *(v0 - 8);
  v1 = v28[0];
  v2 = *(v28[0] + 64);
  __chkstk_darwin(v0);
  v4 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFlowProvider();
  v6 = swift_allocObject();
  v36 = v0;
  v37 = &protocol witness table for FeatureFlagProvider;
  sub_F390(v35);
  sub_2CC2A0();
  v7 = sub_2CB4A0();
  v8 = sub_2CB490();
  v33 = v7;
  v34 = &protocol witness table for SiriKitTaskLoggingProvider;
  v32[0] = v8;
  v9 = sub_2CC900();
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  v12 = sub_2CC8F0();
  sub_2CC2A0();
  v13 = sub_2CB490();
  v37 = &off_3367A0;
  v36 = v5;
  v34 = &protocol witness table for AppleMediaServicesProvider;
  v35[0] = v6;
  v33 = v9;
  v32[0] = v12;
  v31[3] = v0;
  v31[4] = &protocol witness table for FeatureFlagProvider;
  v14 = sub_F390(v31);
  (*(v1 + 16))(v14, v4, v0);
  v30[3] = v7;
  v30[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v30[0] = v13;
  type metadata accessor for AudioFlowDelegatePlugin();
  v15 = swift_allocObject();
  v16 = v36;
  v17 = sub_F9A0(v35, v36);
  v18 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v17);
  v20 = (v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20);
  v22 = *v20;
  v29[4] = &off_3367A0;
  v29[3] = v5;
  v29[0] = v22;
  *(v15 + 192) = 0u;
  *(v15 + 208) = 0u;
  *(v15 + 224) = 0;
  v23 = type metadata accessor for AceServiceExecutorProviderWrapper();
  v24 = swift_allocObject();
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0u;
  *(v24 + 88) = 0u;
  *(v24 + 104) = 0u;
  *(v24 + 120) = 0;
  *(v24 + 16) = sub_18F51C;
  *(v24 + 24) = 0;
  *(v24 + 64) = 0;
  *(v24 + 72) = sub_18F520;
  *(v24 + 80) = 0;
  v28[4] = v23;
  v28[5] = sub_E960(&qword_353890, 255, type metadata accessor for AceServiceExecutorProviderWrapper);
  v28[1] = v24;

  sub_2CBC70();
  sub_EEAC(v29, v15 + 16);
  *(v15 + 176) = sub_18F524;
  *(v15 + 184) = 0;
  sub_EEAC(v32, v15 + 56);
  sub_EEAC(v31, v15 + 96);
  sub_EEAC(v30, v15 + 136);
  sub_2CCD80();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v26 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  sub_2CCD60();

  (*(v28[0] + 8))(v4, v0);
  sub_306C(v30);
  sub_306C(v31);
  sub_306C(v32);
  sub_306C(v29);
  sub_306C(v35);
  return v15;
}

void sub_1945E4()
{
  v0 = sub_2CE000();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = objc_allocWithZone(NSUserDefaults);
  v6 = sub_2CE260();
  v7 = [v5 initWithSuiteName:v6];

  if (v7)
  {
    v8 = sub_2CE260();
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      sub_2CEC00();
      swift_unknownObjectRelease();
      sub_30B8(v15, &qword_34CEA0, &qword_2D0FC0);
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v10 = sub_3ED0(v0, static Logger.default);
      swift_beginAccess();
      (*(v1 + 16))(v4, v10, v0);
      v11 = sub_2CDFE0();
      v12 = sub_2CE660();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_0, v11, v12, "AudioFlowDelegatePlugin#clearExistingEndSpeechTime removing existing key", v13, 2u);
      }

      (*(v1 + 8))(v4, v0);
      v14 = sub_2CE260();
      [v7 removeObjectForKey:v14];
    }

    else
    {

      memset(v15, 0, sizeof(v15));
      sub_30B8(v15, &qword_34CEA0, &qword_2D0FC0);
    }
  }
}

uint64_t sub_1948B0(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)())
{
  v8 = sub_2CC2B0();
  v62 = *(v8 - 8);
  v9 = *(v62 + 64);
  __chkstk_darwin(v8);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20410(&qword_34E480, &qword_2D2280);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v59 - v14;
  sub_F3F4(a1, &v59 - v14, &qword_34E480, &qword_2D2280);
  sub_EEAC(a3, v89);
  v16 = qword_34BFB8;

  if (v16 != -1)
  {
    swift_once();
  }

  v88[3] = &type metadata for StringsBackedAppNameResolver;
  v60 = sub_2869C();
  v88[4] = v60;
  v88[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v88[0] + 16);
  sub_2C9A00();
  v86[3] = v8;
  v86[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v86);
  sub_2CC2A0();
  v17 = sub_2CB4A0();
  v18 = sub_2CB490();
  v85 = &protocol witness table for SiriKitTaskLoggingProvider;
  v84 = v17;
  *&v83 = v18;
  v19 = type metadata accessor for SiriForAirPlayFlow();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v63 = v19;
  v22 = swift_allocObject();
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  v24 = sub_2CA7B0();
  (*(*(v24 - 8) + 56))(v22 + v23, 1, 1, v24);
  v25 = v8;
  v26 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent;
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent) = 0;
  swift_beginAccess();
  v64 = v15;
  sub_1952BC(v15, v22 + v23, &qword_34E480, &qword_2D2280);
  swift_endAccess();
  v27 = *(v22 + v26);
  *(v22 + v26) = a2;

  sub_EEAC(v89, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher);
  sub_EEAC(v86, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags);
  sub_EEAC(v88, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver);
  sub_EEAC(v87, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService);
  v28 = (v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  *v28 = sub_195150;
  v28[1] = a4;
  sub_EEAC(v88, v81);
  sub_EEAC(v87, v80);
  v29 = CATDefaultMode;
  v30 = sub_2CBC00();
  v31 = a2;
  v32 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v33 = swift_allocObject();
  v34 = v82;
  v35 = sub_F9A0(v81, v82);
  v61 = &v59;
  v36 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = (&v59 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v39 + 16))(v38);
  v79[3] = &type metadata for StringsBackedAppNameResolver;
  v79[4] = v60;
  v40 = swift_allocObject();
  v79[0] = v40;
  v41 = v38[3];
  v40[3] = v38[2];
  v40[4] = v41;
  v40[5] = v38[4];
  v42 = v38[1];
  v40[1] = *v38;
  v40[2] = v42;
  v78[3] = v30;
  v78[4] = &protocol witness table for MorphunProvider;
  v78[0] = v32;
  v77[3] = v25;
  v77[4] = &protocol witness table for FeatureFlagProvider;
  v43 = sub_F390(v77);
  v44 = v62;
  (*(v62 + 16))(v43, v11, v25);
  *(v33 + 296) = v29;
  sub_EEAC(v77, v33 + 256);
  sub_EEAC(v79, v76);
  sub_EEAC(v78, v75);
  sub_EEAC(v80, v74);
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v45 = sub_2CCA30();
  v46 = sub_2CCA20();
  v71[3] = v45;
  v71[4] = &protocol witness table for MultiUserConnectionProvider;
  v71[0] = v46;
  v70[3] = sub_2CB9E0();
  v70[4] = &protocol witness table for DeviceProvider;
  sub_F390(v70);
  sub_2CB9C0();
  sub_EEAC(v76, v33 + 16);
  sub_EEAC(v75, v33 + 216);
  sub_EEAC(v74, v33 + 56);
  sub_EEAC(v71, v33 + 96);
  sub_EEAC(v70, v33 + 176);
  sub_F3F4(v72, &v65, qword_34C708, &qword_2D1620);
  if (v66)
  {

    sub_30B8(v72, qword_34C708, &qword_2D1620);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    (*(v44 + 8))(v11, v25);
    sub_306C(v80);
    sub_306C(v77);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v70);
    sub_306C(v71);
    sub_F338(&v65, &v67);
  }

  else
  {
    sub_EEAC(v74, &v67);
    v47 = sub_2C9E60();
    v48 = *(v47 + 48);
    v49 = *(v47 + 52);
    swift_allocObject();
    v50 = sub_2C9E50();
    v68 = v47;
    v69 = &protocol witness table for ContactsManager;

    *&v67 = v50;
    sub_30B8(v72, qword_34C708, &qword_2D1620);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    (*(v44 + 8))(v11, v25);
    sub_306C(v80);
    sub_306C(v77);
    sub_306C(v78);
    sub_306C(v79);
    sub_306C(v70);
    sub_306C(v71);
    if (v66)
    {
      sub_30B8(&v65, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v67, v33 + 136);
  sub_306C(v81);
  type metadata accessor for PlayMediaCatDialogService();
  v51 = swift_allocObject();
  v51[5] = 0x6964654D79616C50;
  v51[6] = 0xEF746E65746E4961;
  v51[2] = 0xD000000000000011;
  v51[3] = 0x80000000002DA8D0;
  v51[4] = v33;
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService) = v51;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v52 = swift_allocObject();
  v52[2] = 0xD000000000000011;
  v52[3] = 0x80000000002DA8D0;
  v52[4] = v33;
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService) = v52;
  v53 = sub_2C9C10();
  v54 = *(v53 + 48);
  v55 = *(v53 + 52);
  swift_allocObject();

  v56 = sub_2C9BF0();
  sub_306C(v87);
  sub_306C(v89);
  sub_30B8(v64, &qword_34E480, &qword_2D2280);
  sub_306C(v86);
  sub_306C(v88);
  *(v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory) = v56;
  sub_F338(&v83, v22 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider);
  v89[0] = v22;
  sub_E960(&qword_351318, 255, type metadata accessor for SiriForAirPlayFlow);
  v57 = sub_2C97B0();

  return v57;
}

id sub_195158(void *a1, char a2)
{
  if (a2)
  {
    return swift_errorRetain();
  }

  else
  {
    return a1;
  }
}

uint64_t sub_195164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id sub_1951CC(uint64_t a1)
{
  v3 = *(sub_2C8E30() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1901A8(a1, v1 + v4);
}

uint64_t sub_195278(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1952BC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20410(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t sub_19532C(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_3538C0, &qword_2D5F88);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1953FC(uint64_t a1, char a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v4 = (a3 + 40);
    do
    {
      if (*v4)
      {
        if (a2)
        {
          return 1;
        }
      }

      else if ((a2 & 1) == 0 && *(v4 - 1) == a1)
      {
        return 1;
      }

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  return 0;
}

BOOL sub_195444(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

BOOL sub_1954B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v9 = 0;
  v10 = *(a2 + 16);
  do
  {
    v11 = v9;
    if (v10 == v9)
    {
      break;
    }

    v12 = *(a3(0) - 8);
    ++v9;
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v11;
    sub_1B7EB0(a4, a5);
  }

  while ((sub_2CE250() & 1) == 0);
  return v10 != v11;
}

uint64_t sub_1955C0(uint64_t a1, uint64_t a2)
{
  v32 = a1;
  v3 = sub_2CDD00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_20410(&qword_34DA20, &qword_2D1900);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7 - 8);
  v33 = &v26 - v10;
  v28 = sub_20410(&qword_353CB8, &qword_2D60A0);
  v11 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28);
  v13 = &v26 - v12;
  v14 = *(a2 + 16);
  if (!v14)
  {
    return 0;
  }

  v15 = (v4 + 48);
  v26 = (v4 + 32);
  v16 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v17 = *(v8 + 72);
  v30 = (v4 + 8);
  v31 = v17;
  v18 = v28;
  while (1)
  {
    v19 = *(v18 + 48);
    sub_F3F4(v16, v13, &qword_34DA20, &qword_2D1900);
    sub_F3F4(v32, &v13[v19], &qword_34DA20, &qword_2D1900);
    v20 = *v15;
    if ((*v15)(v13, 1, v3) == 1)
    {
      break;
    }

    sub_F3F4(v13, v33, &qword_34DA20, &qword_2D1900);
    if (v20(&v13[v19], 1, v3) == 1)
    {
      (*v30)(v33, v3);
      goto LABEL_4;
    }

    v21 = v27;
    (*v26)(v27, &v13[v19], v3);
    sub_1B7EB0(&qword_353CC0, &type metadata accessor for DeviceType);
    v29 = sub_2CE250();
    v22 = v15;
    v23 = *v30;
    v24 = v21;
    v18 = v28;
    (*v30)(v24, v3);
    v23(v33, v3);
    v15 = v22;
    sub_30B8(v13, &qword_34DA20, &qword_2D1900);
    if (v29)
    {
      return 1;
    }

LABEL_5:
    v16 += v31;
    if (!--v14)
    {
      return 0;
    }
  }

  if (v20(&v13[v19], 1, v3) != 1)
  {
LABEL_4:
    sub_30B8(v13, &qword_353CB8, &qword_2D60A0);
    goto LABEL_5;
  }

  sub_30B8(v13, &qword_34DA20, &qword_2D1900);
  return 1;
}

uint64_t sub_1959CC(uint64_t a1, char *a2, char *a3)
{
  v51 = a2;
  v56 = a1;
  v5 = sub_2CE000();
  v52 = *(v5 - 8);
  v53 = v5;
  v6 = *(v52 + 64);
  __chkstk_darwin(v5);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CDFD0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v12 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v14 = &v47 - v13;
  v15 = sub_112C0(_swiftEmptyArrayStorage);
  v54 = v3[2];
  v55 = v15;
  v16 = v3[13];
  v48 = v3[14];
  v60 = 0x80000000002DEA30;
  v64 = 0;
  memset(v63, 0, sizeof(v63));
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  v17 = qword_35F760;
  sub_2CDFB0();
  (*(v9 + 16))(v12, v14, v8);
  v18 = (*(v9 + 80) + 33) & ~*(v9 + 80);
  v19 = (v10 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "catServiceExecute";
  *(v20 + 24) = 17;
  *(v20 + 32) = 2;
  v57 = v9;
  v58 = v8;
  (*(v9 + 32))(v20 + v18, v12, v8);
  v21 = (v20 + v19);
  *v21 = v51;
  v21[1] = a3;

  sub_2CE9E0();
  sub_20410(&qword_34CEA8, &unk_2D0EB0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2D0E40;
  *(v22 + 56) = &type metadata for String;
  v23 = sub_1087C();
  v50 = v16;
  *(v22 + 32) = v16;
  v24 = v48;
  *(v22 + 40) = v48;
  *(v22 + 96) = &type metadata for String;
  *(v22 + 104) = v23;
  *(v22 + 64) = v23;
  *(v22 + 72) = 0xD000000000000019;
  *(v22 + 80) = v60;

  v46 = v22;
  LOBYTE(v45) = 2;
  v44 = 125;
  v51 = v14;
  sub_2CDF90();

  v25 = swift_allocObject();
  *(v25 + 16) = sub_13CD4;
  *(v25 + 24) = v20;
  v49 = v25;
  v26 = qword_34BF58;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = v53;
  v28 = sub_3ED0(v53, static Logger.default);
  swift_beginAccess();
  v29 = v52;
  v30 = v59;
  (*(v52 + 16))(v59, v28, v27);

  v31 = sub_2CDFE0();
  v32 = sub_2CE660();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    *v33 = 136315394;
    v34 = v50;
    *(v33 + 4) = sub_3F08(v50, v24, &v61);
    *(v33 + 12) = 2080;
    v35 = v60;
    *(v33 + 14) = sub_3F08(0xD000000000000019, v60, &v61);
    _os_log_impl(&dword_0, v31, v32, "Evaluating CAT family:%s id:%s...", v33, 0x16u);
    swift_arrayDestroy();

    (*(v29 + 8))(v59, v27);
  }

  else
  {

    (*(v29 + 8))(v30, v27);
    v35 = v60;
    v34 = v50;
  }

  v61 = v34;
  v62 = v24;

  v65._countAndFlagsBits = 35;
  v65._object = 0xE100000000000000;
  sub_2CE350(v65);
  v66._countAndFlagsBits = 0xD000000000000019;
  v66._object = v35;
  sub_2CE350(v66);
  v37 = v61;
  v36 = v62;
  v38 = sub_2CB460();
  if (!v38)
  {
    sub_2CB180();
    v38 = sub_2CB170();
  }

  v39 = v38;
  v40 = swift_allocObject();
  v40[2] = v39;
  v40[3] = sub_13D84;
  v40[4] = v49;
  v41 = sub_2CB180();
  __chkstk_darwin(v41);
  v42 = v55;
  *(&v47 - 10) = v54;
  *(&v47 - 9) = v42;
  *(&v47 - 8) = v56;
  *(&v47 - 7) = v63;
  *(&v47 - 6) = 0;
  *(&v47 - 5) = v37;
  v44 = v36;
  v45 = sub_3E010;
  v46 = v40;

  sub_2CB0F0();

  (*(v57 + 8))(v51, v58);
  return sub_30B8(v63, &qword_34C6C0, &qword_2D0710);
}

id sub_196098()
{
  v0 = sub_2CA3C0();
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  (*(v3 + 104))(&v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for BehaviorAfterSpeaking.defaultBehavior(_:));
  sub_2CA0B0();
  v4 = [objc_allocWithZone(DialogExecutionResult) init];
  v5 = sub_2CE260();
  [v4 setCatId:v5];

  v6 = [objc_allocWithZone(DialogElement) init];
  v7 = sub_2CE260();
  [v6 setId:v7];

  sub_20410(&unk_351900, &unk_2D0960);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2D0770;
  *(v8 + 32) = v6;
  sub_334A0(0, &qword_34C6D8, DialogElement_ptr);
  v9 = v6;
  isa = sub_2CE400().super.isa;

  [v4 setDialog:isa];

  return v4;
}

uint64_t sub_1962B0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(v5 + 120);
  v11 = sub_112C0(_swiftEmptyArrayStorage);
  v14[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v14[4] = &off_3381B8;
  v14[0] = a2;
  v12 = a2;
  sub_24763C(v11, a1, v14, a4, a5);

  return sub_30B8(v14, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_19636C(uint64_t a1, uint64_t a2, void *a3, void *a4, void (*a5)(char *, uint64_t, uint64_t), uint64_t a6)
{
  v7 = v6;
  v14 = sub_2CE000();
  v92 = *(v14 - 8);
  v93 = v14;
  v15 = *(v92 + 64);
  v16 = __chkstk_darwin(v14);
  v85 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v91 = &v78 - v18;
  v90 = sub_2CC760();
  v88 = *(v90 - 8);
  v19 = *(v88 + 64);
  __chkstk_darwin(v90);
  v84 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20410(&qword_34FCB0, &unk_2D8580);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v89 = &v78 - v23;
  v24 = sub_20410(&qword_34FCB8, &unk_2D3580);
  v25 = *(*(v24 - 8) + 64);
  v26 = __chkstk_darwin(v24 - 8);
  v87 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v30 = &v78 - v29;
  __chkstk_darwin(v28);
  v32 = &v78 - v31;
  v86 = a3;
  if (sub_2CE7E0())
  {
    v33 = *(v7 + 120);
    return sub_3D150(a1, a2, a5, a6);
  }

  v83 = a6;
  v82 = a1;
  if ((sub_1A0498(a2, a4) & 1) == 0)
  {
    v81 = a4;
    v80 = a5;
    v79 = a2;
    sub_2CCF90();
    v36 = sub_2CBDB0();

    if ((v36 & 1) == 0)
    {
      sub_2CC8E0();
      sub_2CBC60();
      sub_35E0(&v97, *(&v98 + 1));
      sub_2CBE60();
      sub_306C(&v97);
      v37 = sub_2CC8D0();

      if (v37)
      {
        sub_2CC8B0();

        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      v40 = v89;
      v39 = v90;
      v41 = v88;
      v42 = *(v88 + 56);
      v42(v32, v38, 1, v90);
      (*(v41 + 104))(v30, enum case for AirPlayRouteSetupState.error(_:), v39);
      v42(v30, 0, 1, v39);
      v43 = *(v21 + 48);
      sub_F3F4(v32, v40, &qword_34FCB8, &unk_2D3580);
      sub_F3F4(v30, v40 + v43, &qword_34FCB8, &unk_2D3580);
      v44 = *(v41 + 48);
      if (v44(v40, 1, v39) == 1)
      {
        sub_30B8(v30, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v32, &qword_34FCB8, &unk_2D3580);
        if (v44(v40 + v43, 1, v39) == 1)
        {
          sub_30B8(v40, &qword_34FCB8, &unk_2D3580);
LABEL_27:
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v68 = v93;
          v69 = sub_3ED0(v93, static Logger.default);
          swift_beginAccess();
          v70 = v92;
          v71 = v85;
          (*(v92 + 16))(v85, v69, v68);
          v72 = sub_2CDFE0();
          v73 = sub_2CE670();
          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            *v74 = 0;
            _os_log_impl(&dword_0, v72, v73, "PlayMediaDialogProvider#makeFailureHandlingIntentDialog returning AirPlay error for SFA request", v74, 2u);
          }

          (*(v70 + 8))(v71, v68);
          v75 = *(v7 + 120);
          v76 = sub_112C0(_swiftEmptyArrayStorage);
          *(&v98 + 1) = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v99 = &off_3381B8;
          *&v97 = v86;
          v77 = v86;
          sub_251318(v76, v79, &v97, v80, v83);
LABEL_24:

          return sub_30B8(&v97, &qword_34C6C0, &qword_2D0710);
        }

        goto LABEL_14;
      }

      v45 = v87;
      sub_F3F4(v40, v87, &qword_34FCB8, &unk_2D3580);
      if (v44(v40 + v43, 1, v39) == 1)
      {
        sub_30B8(v30, &qword_34FCB8, &unk_2D3580);
        sub_30B8(v32, &qword_34FCB8, &unk_2D3580);
        (*(v41 + 8))(v45, v39);
LABEL_14:
        sub_30B8(v40, &qword_34FCB0, &unk_2D8580);
        goto LABEL_15;
      }

      v66 = v84;
      (*(v41 + 32))(v84, v40 + v43, v39);
      sub_1B7EB0(&qword_34FCC8, &type metadata accessor for AirPlayRouteSetupState);
      LODWORD(v90) = sub_2CE250();
      v67 = *(v41 + 8);
      v67(v66, v39);
      sub_30B8(v30, &qword_34FCB8, &unk_2D3580);
      sub_30B8(v32, &qword_34FCB8, &unk_2D3580);
      v67(v45, v39);
      sub_30B8(v40, &qword_34FCB8, &unk_2D3580);
      if (v90)
      {
        goto LABEL_27;
      }
    }

LABEL_15:
    v46 = &selRef_hasTwoOrMoreRooms;
    [v81 code];
    v47 = INPlayMediaIntentResponseCodeGetName();
    v48 = sub_2CE270();
    v50 = v49;

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v51 = v93;
    v52 = sub_3ED0(v93, static Logger.default);
    swift_beginAccess();
    v53 = v91;
    v54 = v92;
    (*(v92 + 16))(v91, v52, v51);

    v55 = sub_2CDFE0();
    v56 = sub_2CE670();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = v53;
      v59 = swift_slowAlloc();
      *&v97 = v59;
      *v57 = 136315138;
      *(v57 + 4) = sub_3F08(v48, v50, &v97);
      _os_log_impl(&dword_0, v55, v56, "PlayMediaDialogProvider#makeFailureHandlingIntentDialog with code: %s", v57, 0xCu);
      sub_306C(v59);

      v60 = v58;
      v46 = &selRef_hasTwoOrMoreRooms;
      (*(v54 + 8))(v60, v51);
    }

    else
    {

      (*(v54 + 8))(v53, v51);
    }

    v61 = v83;
    v96 = v82;
    v95 = &type metadata for String;
    *&v94 = v48;
    *(&v94 + 1) = v50;

    sub_270DC4(&v94, 1701080931, 0xE400000000000000, &v97);
    sub_30B8(&v97, &qword_34CEA0, &qword_2D0FC0);
    if (sub_2CB640())
    {
      v62 = 1;
    }

    else
    {
      v62 = sub_2CB650();
    }

    v95 = &type metadata for Bool;
    LOBYTE(v94) = v62 & 1;
    sub_270DC4(&v94, 0xD000000000000010, 0x80000000002DEA50, &v97);
    sub_30B8(&v97, &qword_34CEA0, &qword_2D0FC0);
    v63 = [v81 v46[27]];
    type metadata accessor for INPlayMediaIntentResponseCode(0);
    v95 = v64;
    *&v94 = v63;
    sub_270DC4(&v94, 0xD000000000000012, 0x80000000002DEA70, &v97);
    sub_30B8(&v97, &qword_34CEA0, &qword_2D0FC0);
    v65 = *(v7 + 120);
    v99 = 0;
    v97 = 0u;
    v98 = 0u;
    sub_243394(v96, v79, &v97, v80, v61);
    goto LABEL_24;
  }

  v35 = *(v7 + 120);
  v99 = 0;
  v97 = 0u;
  v98 = 0u;
  sub_242D10(v82, a2, &v97, a5, v83);
  return sub_30B8(&v97, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_196E80(void *a1, void *a2, char *a3, char *a4, char *a5)
{
  v6 = v5;
  v130 = a1;
  v131 = a5;
  v116 = *v6;
  v117 = a3;
  v112 = sub_20410(&unk_3519A0, &qword_2D0980);
  v9 = *(*(v112 - 8) + 64);
  __chkstk_darwin(v112);
  v113 = &v109 - v10;
  v11 = sub_2C98F0();
  v127 = *(v11 - 8);
  v128 = v11;
  v12 = *(v127 + 64);
  v13 = __chkstk_darwin(v11);
  v110 = &v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v118 = &v109 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v111 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v119 = &v109 - v20;
  v21 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v115 = &v109 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v129 = &v109 - v25;
  v26 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v114 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v109 - v30;
  v32 = sub_2CCB20();
  v125 = *(v32 - 8);
  v126 = v32;
  v33 = *(v125 + 64);
  __chkstk_darwin(v32);
  v122 = &v109 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2CCB30();
  v123 = *(v35 - 8);
  v124 = v35;
  v36 = *(v123 + 64);
  __chkstk_darwin(v35);
  v120 = &v109 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = sub_2CCAC0();
  v38 = *(v121 - 8);
  v39 = *(v38 + 64);
  __chkstk_darwin(v121);
  v41 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_2CE000();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v47 = &v109 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v49 = &v109 - v48;
  v132 = a2;
  v133 = a2;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC120())
  {
    v117 = a4;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v116 = v31;
    v50 = sub_3ED0(v42, static Logger.default);
    swift_beginAccess();
    (*(v43 + 16))(v49, v50, v42);
    v51 = sub_2CDFE0();
    v52 = sub_2CE690();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_0, v51, v52, "PlayMediaDialogProvider#makeIntentHandledDialog User just accepted TCC initiated from the HomePod for an SFA request. Using the dialog producing intent handler", v53, 2u);
    }

    (*(v43 + 8))(v49, v42);
    v54 = v121;
    (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v121);
    v56 = v123;
    v55 = v124;
    v57 = v120;
    (*(v123 + 104))(v120, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v124);
    v59 = v125;
    v58 = v126;
    v60 = v122;
    (*(v125 + 104))(v122, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v126);
    v114 = sub_2CCAD0();
    v115 = v61;
    (*(v59 + 8))(v60, v58);
    (*(v56 + 8))(v57, v55);
    (*(v38 + 8))(v41, v54);
    v62 = v6[35];
    v126 = sub_35E0(v6 + 31, v6[34]);
    v63 = enum case for ActivityType.completed(_:);
    v64 = sub_2C9C20();
    v65 = *(v64 - 8);
    v66 = v116;
    (*(v65 + 104))(v116, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    v67 = v129;

    v68 = sub_2CA130();
    (*(*(v68 - 8) + 56))(v67, 0, 1, v68);
    v69 = v127;
    v70 = v128;
    v71 = *(v127 + 104);
    v72 = v118;
    v71(v118, enum case for SiriKitReliabilityCodes.success(_:), v128);
    if (sub_2CE740())
    {
      (*(v69 + 8))(v72, v70);
      v73 = v119;
      v71(v119, enum case for SiriKitReliabilityCodes.ampServerError(_:), v70);
    }

    else
    {
      v73 = v119;
      (*(v69 + 32))(v119, v72, v70);
    }

    (*(v69 + 56))(v73, 0, 1, v70);
    sub_2CE710();
    v104 = v129;
    v103 = v130;
    sub_2CB4E0();

    sub_30B8(v73, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v104, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v66, &qword_34CB88, &unk_2D0D90);
    return sub_1959CC(v103, v117, v131);
  }

  else
  {
    v74 = v6[20];
    sub_35E0(v6 + 16, v6[19]);
    if ((sub_2CC430() & 1) != 0 && (sub_2CB640() & 1) == 0 && sub_2CE810())
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v117 = a4;
      v75 = sub_3ED0(v42, static Logger.default);
      swift_beginAccess();
      (*(v43 + 16))(v47, v75, v42);
      v76 = sub_2CDFE0();
      v77 = sub_2CE690();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_0, v76, v77, "PlayMediaDialogProvider#makeIntentHandledDialog suppressing dialog: pym enabled, not-CarPlay, and new playback producing - no templating dialog", v78, 2u);
      }

      (*(v43 + 8))(v47, v42);
      v79 = v121;
      (*(v38 + 104))(v41, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v121);
      v81 = v123;
      v80 = v124;
      v82 = v120;
      (*(v123 + 104))(v120, enum case for AdditionalMetricsDescription.SourceFunction.postHandleDlg(_:), v124);
      v84 = v125;
      v83 = v126;
      v85 = v122;
      (*(v125 + 104))(v122, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v126);
      v119 = sub_2CCAD0();
      v129 = v86;
      (*(v84 + 8))(v85, v83);
      (*(v81 + 8))(v82, v80);
      (*(v38 + 8))(v41, v79);
      v87 = v6[35];
      sub_35E0(v6 + 31, v6[34]);
      v88 = enum case for ActivityType.completed(_:);
      v89 = sub_2C9C20();
      v90 = *(v89 - 8);
      v91 = v114;
      (*(v90 + 104))(v114, v88, v89);
      (*(v90 + 56))(v91, 0, 1, v89);
      v92 = v115;

      v93 = sub_2CA130();
      (*(*(v93 - 8) + 56))(v92, 0, 1, v93);
      v95 = v127;
      v94 = v128;
      v96 = *(v127 + 104);
      v97 = v110;
      v96(v110, enum case for SiriKitReliabilityCodes.success(_:), v128);
      if (sub_2CE740())
      {
        (*(v95 + 8))(v97, v94);
        v98 = v111;
        v96(v111, enum case for SiriKitReliabilityCodes.ampServerError(_:), v94);
      }

      else
      {
        v98 = v111;
        (*(v95 + 32))(v111, v97, v94);
      }

      (*(v95 + 56))(v98, 0, 1, v94);
      sub_2CE710();
      v105 = v114;
      v106 = v115;
      sub_2CB4E0();

      sub_30B8(v98, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v106, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v105, &qword_34CB88, &unk_2D0D90);
      v107 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
      v108 = v113;
      *(v108 + v107) = sub_196098();
      swift_storeEnumTagMultiPayload();
      (v117)(v108);
      return sub_30B8(v108, &unk_3519A0, &qword_2D0980);
    }

    else
    {

      v99 = v130;

      v100 = v132;

      return sub_197D48(0, v99, v100, v117, v6, v6, v99, v100, a4, v101, v116);
    }
  }
}

uint64_t sub_197D48(int a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_1B137C(a1, a2, a3, a5, a6, a7, a8, a9, a10, a11);
}

uint64_t sub_197DC8(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4)
{
  v113 = a3;
  v5 = sub_20410(&qword_34E000, &qword_2D1D48);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v101 - v7;
  v116 = sub_2C8E30();
  v110 = *(v116 - 8);
  v9 = *(v110 + 64);
  v10 = __chkstk_darwin(v116);
  v111 = &v101 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v109 = &v101 - v13;
  __chkstk_darwin(v12);
  v115 = &v101 - v14;
  v15 = sub_2CE000();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v18);
  v23 = &v101 - v22;
  v24 = __chkstk_darwin(v21);
  v114 = &v101 - v25;
  v26 = __chkstk_darwin(v24);
  v112 = &v101 - v27;
  __chkstk_darwin(v26);
  v29 = &v101 - v28;
  v30 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v33 = &v101 - v32;
  v34 = sub_2CBF80();
  v118 = *(v34 - 8);
  v119 = v34;
  v35 = *(v118 + 64);
  __chkstk_darwin(v34);
  v117 = &v101 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_2CE730() & 1) != 0 && (v37 = sub_2CCF90(), v38))
  {
    v39 = v37;
    v40 = v38;
    sub_F3F4(a4, v33, &qword_34DD30, &unk_2D1BC0);
    v42 = v118;
    v41 = v119;
    if ((*(v118 + 48))(v33, 1, v119) == 1)
    {

      sub_30B8(v33, &qword_34DD30, &unk_2D1BC0);
LABEL_16:
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v54 = sub_3ED0(v15, static Logger.default);
      swift_beginAccess();
      (*(v16 + 16))(v23, v54, v15);
      v55 = sub_2CDFE0();
      v56 = sub_2CE670();
      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_0, v55, v56, "PlayMediaDialogProvider#appSpecified false as no app selection report, or it wasn't used", v57, 2u);
      }

      (*(v16 + 8))(v23, v15);
      v47 = 0;
      return v47 & 1;
    }

    v108 = v39;
    v48 = v117;
    (*(v42 + 32))(v117, v33, v41);
    if ((sub_2CBEE0() & 1) == 0)
    {
      (*(v42 + 8))(v48, v41);

      goto LABEL_16;
    }

    v49 = *(v113 + 4);
    sub_35E0(v113, *(v113 + 3));
    v51 = sub_2CC470();
    v52 = v50;
    if (v50)
    {
      if (v108 == v51 && v40 == v50)
      {
        v53 = 1;
      }

      else
      {
        v53 = sub_2CEEA0();
      }
    }

    else
    {
      v53 = 0;
    }

    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v58 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    v59 = *(v16 + 16);
    v107 = v58;
    v106 = v16 + 16;
    v105 = v59;
    v59(v29, v58, v15);

    v60 = sub_2CDFE0();
    v61 = sub_2CE670();

    v62 = os_log_type_enabled(v60, v61);
    v104 = v53;
    if (v62)
    {
      v63 = swift_slowAlloc();
      v102 = v51;
      v64 = v63;
      v103 = swift_slowAlloc();
      v121 = v103;
      *v64 = 67109634;
      *(v64 + 4) = v53 & 1;
      *(v64 + 8) = 2080;
      v65 = sub_3F08(v108, v40, &v121);

      *(v64 + 10) = v65;
      *(v64 + 18) = 2080;
      v120[0] = v102;
      v120[1] = v52;
      sub_20410(&qword_34CCC0, &unk_2D0DE0);
      v66 = sub_2CE2A0();
      v68 = sub_3F08(v66, v67, &v121);

      *(v64 + 20) = v68;
      _os_log_impl(&dword_0, v60, v61, "PlayMediaDialogProvider#appSpecified sameBundlePass:%{BOOL}d -- current:%s, previous: %s", v64, 0x1Cu);
      swift_arrayDestroy();
    }

    else
    {
    }

    v108 = *(v16 + 8);
    v108(v29, v15);
    v69 = v116;
    v70 = v112;
    v71 = *(v113 + 4);
    sub_35E0(v113, *(v113 + 3));
    sub_2CC450();
    v72 = v110;
    v73 = *(v110 + 48);
    if (v73(v8, 1, v69) == 1)
    {
      v74 = v115;
      sub_2C8DF0();
      if (v73(v8, 1, v69) != 1)
      {
        sub_30B8(v8, &qword_34E000, &qword_2D1D48);
      }
    }

    else
    {
      v74 = v115;
      (*(v72 + 32))(v115, v8, v69);
    }

    v75 = v109;
    sub_2C8E20();
    sub_2C8DD0();
    v77 = v76;
    v113 = *(v72 + 8);
    v113(v75, v69);
    sub_2CCC40();
    v79 = v78;
    v105(v70, v107, v15);
    v80 = *(v72 + 16);
    v81 = v111;
    v80(v111, v74, v69);
    v82 = sub_2CDFE0();
    v83 = sub_2CE670();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v120[0] = v85;
      *v84 = 67109890;
      *(v84 + 4) = v77 < v79;
      *(v84 + 8) = 2080;
      sub_1B7EB0(&qword_353CA8, &type metadata accessor for Date);
      v86 = sub_2CEE70();
      v88 = v87;
      v89 = v81;
      v90 = v113;
      v113(v89, v116);
      v91 = sub_3F08(v86, v88, v120);
      v69 = v116;

      *(v84 + 10) = v91;
      *(v84 + 18) = 2048;
      *(v84 + 20) = v77;
      *(v84 + 28) = 2048;
      sub_2CCC40();
      *(v84 + 30) = v92;
      _os_log_impl(&dword_0, v82, v83, "PlayMediaDialogProvider#appSpecified appSelectionUseIntervalPass:%{BOOL}d -- last:%s, interval:%fs, window:%fs", v84, 0x26u);
      sub_306C(v85);

      v93 = v112;
    }

    else
    {

      v94 = v81;
      v90 = v113;
      v113(v94, v69);
      v93 = v70;
    }

    v108(v93, v15);
    v95 = v117;
    v96 = v104;
    v47 = v104 ^ 1 | (v77 >= v79);
    v105(v114, v107, v15);
    v97 = sub_2CDFE0();
    v98 = sub_2CE660();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 67109632;
      *(v99 + 4) = v47 & 1;
      *(v99 + 8) = 1024;
      v69 = v116;
      *(v99 + 10) = v96 & 1;
      *(v99 + 14) = 1024;
      *(v99 + 16) = v77 < v79;
      _os_log_impl(&dword_0, v97, v98, "PlayMediaDialogProvider#appSpecified %{BOOL}d as sameBundlePass:%{BOOL}d, appSelectionUseIntervalPass:%{BOOL}d", v99, 0x14u);
      v95 = v117;
    }

    v108(v114, v15);
    v90(v115, v69);
    (*(v118 + 8))(v95, v119);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v43 = sub_3ED0(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v20, v43, v15);
    v44 = sub_2CDFE0();
    v45 = sub_2CE670();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_0, v44, v45, "PlayMediaDialogProvider#appSpecified true as reflecting specified app", v46, 2u);
    }

    (*(v16 + 8))(v20, v15);
    v47 = 1;
  }

  return v47 & 1;
}

uint64_t sub_198AAC(uint64_t a1, void *a2, char *a3, char *a4)
{
  v5 = v4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v10 = [a2 privatePlayMediaIntentData];
  v11 = [v10 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v12.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v11)
  {
    v13 = sub_2CEB30();

    v12.super.super.isa = v11;
  }

  else
  {
    v13 = 0;
  }

  *(inited + 48) = v13 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000021;
  *(inited + 88) = 0x80000000002DEA00;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 96) = 1;
  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v15 = *(v5 + 120);
  v19[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v19[4] = &off_3381B8;
  v19[0] = a2;
  v16 = a2;
  sub_24267C(v14, a1, v19, a3, a4);

  return sub_30B8(v19, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_198CC0(uint64_t a1, void *a2, char *a3, char *a4)
{
  v5 = v4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v10 = [a2 privatePlayMediaIntentData];
  v11 = [v10 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v12.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v11)
  {
    v13 = sub_2CEB30();

    v12.super.super.isa = v11;
  }

  else
  {
    v13 = 0;
  }

  *(inited + 48) = v13 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v14 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  v20[0] = a2;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "noLiveVersion");
  *(inited + 190) = -4864;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v15 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v16 = *(v5 + 120);
  v20[3] = v14;
  v20[4] = &off_3381B8;
  v20[0] = a2;
  v17 = a2;
  sub_24267C(v15, a1, v20, a3, a4);

  return sub_30B8(v20, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_198F58(uint64_t a1, void *a2, char *a3, char *a4)
{
  v5 = v4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v10 = [a2 privatePlayMediaIntentData];
  v11 = [v10 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v12.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v11)
  {
    v13 = sub_2CEB30();

    v12.super.super.isa = v11;
  }

  else
  {
    v13 = 0;
  }

  *(inited + 48) = v13 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v14 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  v20[0] = a2;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000011;
  *(inited + 184) = 0x80000000002DE9E0;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v15 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v16 = *(v5 + 120);
  v20[3] = v14;
  v20[4] = &off_3381B8;
  v20[0] = a2;
  v17 = a2;
  sub_24267C(v15, a1, v20, a3, a4);

  return sub_30B8(v20, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1991E8(uint64_t a1, void *a2, char *a3, char *a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5F90;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v9 = [a2 privatePlayMediaIntentData];
  v10 = [v9 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v11.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v10)
  {
    v12 = sub_2CEB30();

    v11.super.super.isa = v10;
  }

  else
  {
    v12 = 0;
  }

  *(inited + 48) = v12 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v13 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  v27[0] = a2;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x747369747261;
  *(inited + 184) = 0xE600000000000000;
  v14 = [a2 mediaSearch];
  if (!v14 || (v15 = v14, v16 = [v14 artistName], v15, !v16))
  {
    v20 = (inited + 192);
    *(inited + 216) = &type metadata for String;
    goto LABEL_9;
  }

  v17 = sub_2CE270();
  v19 = v18;

  v20 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v19)
  {
LABEL_9:
    *v20 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_10;
  }

  *v20 = v17;
LABEL_10:
  *(inited + 200) = v19;
  *(inited + 224) = 0xD000000000000018;
  *(inited + 232) = 0x80000000002DE9C0;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v21 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v22 = *(v5 + 120);
  v27[3] = v13;
  v27[4] = &off_3381B8;
  v27[0] = a2;
  v23 = a2;
  sub_24267C(v21, a1, v27, v25, v26);

  return sub_30B8(v27, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_19950C(uint64_t a1, void *a2, char *a3, char *a4)
{
  v5 = v4;
  v25 = a3;
  v26 = a4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5F90;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v9 = [a2 privatePlayMediaIntentData];
  v10 = [v9 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v11.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v10)
  {
    v12 = sub_2CEB30();

    v11.super.super.isa = v10;
  }

  else
  {
    v12 = 0;
  }

  *(inited + 48) = v12 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x676E6F537369;
  *(inited + 88) = 0xE600000000000000;
  v13 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  *(inited + 96) = sub_2CBFA0() == 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6D75626C417369;
  *(inited + 136) = 0xE700000000000000;
  v27[0] = a2;
  *(inited + 144) = sub_2CBFA0() == 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0x747369747261;
  *(inited + 184) = 0xE600000000000000;
  v14 = [a2 mediaSearch];
  if (!v14 || (v15 = v14, v16 = [v14 artistName], v15, !v16))
  {
    v20 = (inited + 192);
    *(inited + 216) = &type metadata for String;
    goto LABEL_9;
  }

  v17 = sub_2CE270();
  v19 = v18;

  v20 = (inited + 192);
  *(inited + 216) = &type metadata for String;
  if (!v19)
  {
LABEL_9:
    *v20 = 0;
    v19 = 0xE000000000000000;
    goto LABEL_10;
  }

  *v20 = v17;
LABEL_10:
  *(inited + 200) = v19;
  strcpy((inited + 224), "noMoreResults");
  *(inited + 238) = -4864;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 240) = 1;
  v21 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v22 = *(v5 + 120);
  v27[3] = v13;
  v27[4] = &off_3381B8;
  v27[0] = a2;
  v23 = a2;
  sub_24267C(v21, a1, v27, v25, v26);

  return sub_30B8(v27, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199838(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0xD00000000000001ELL;
  v10 = inited + 32;
  *(inited + 40) = 0x80000000002DE9A0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v11 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v10, &qword_34CBA0, &unk_2D0FE0);
  v12 = *(v4 + 120);
  v15[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v15[4] = &off_3381B8;
  v15[0] = a2;
  v13 = a2;
  sub_24267C(v11, a1, v15, a3, a4);

  return sub_30B8(v15, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199978(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0xD000000000000012;
  v10 = inited + 32;
  *(inited + 40) = 0x80000000002DE980;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v11 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v10, &qword_34CBA0, &unk_2D0FE0);
  v12 = *(v4 + 120);
  v15[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v15[4] = &off_3381B8;
  v15[0] = a2;
  v13 = a2;
  sub_24267C(v11, a1, v15, a3, a4);

  return sub_30B8(v15, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199AB8(uint64_t a1, void *a2, char *a3, char *a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0xD000000000000018;
  v10 = inited + 32;
  *(inited + 40) = 0x80000000002DE960;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = 1;
  v11 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(v10, &qword_34CBA0, &unk_2D0FE0);
  v12 = *(v4 + 120);
  v15[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v15[4] = &off_3381B8;
  v15[0] = a2;
  v13 = a2;
  sub_24267C(v11, a1, v15, a3, a4);

  return sub_30B8(v15, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199BF8(uint64_t a1, void *a2, char *a3, char *a4)
{
  v5 = v4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D1010;
  strcpy((inited + 32), "isPersonalized");
  *(inited + 47) = -18;
  v10 = [a2 privatePlayMediaIntentData];
  v11 = [v10 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v12.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v11)
  {
    v13 = sub_2CEB30();

    v12.super.super.isa = v11;
  }

  else
  {
    v13 = 0;
  }

  *(inited + 48) = v13 & 1;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 1448375145;
  *(inited + 88) = 0xE400000000000000;
  *(inited + 96) = sub_2CB630() & 1;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x6F50656D6F487369;
  *(inited + 136) = 0xE900000000000064;
  *(inited + 144) = sub_2CB650() & 1;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "nothingPlaying");
  *(inited + 191) = -18;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 192) = 1;
  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v15 = *(v5 + 120);
  v19[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v19[4] = &off_3381B8;
  v19[0] = a2;
  v16 = a2;
  sub_24267C(v14, a1, v19, a3, a4);

  return sub_30B8(v19, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6574656D61726170;
  *(inited + 72) = &type metadata for String;
  *(inited + 40) = 0xE900000000000072;
  *(inited + 48) = a2;
  *(inited + 56) = a3;

  v14 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v15 = *(v6 + 120);
  v18[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v18[4] = &off_3381B8;
  v18[0] = a4;
  v16 = a4;
  sub_247CC0(v14, a1, v18, a5, a6);

  return sub_30B8(v18, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_199FB8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, char *a7)
{
  v273 = a6;
  v274 = a7;
  v279 = a3;
  v11 = sub_20410(&qword_353CD0, &qword_2D60B8);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v249 = &v247 - v13;
  v254 = sub_2CB850();
  v253 = *(v254 - 8);
  v14 = *(v253 + 64);
  __chkstk_darwin(v254);
  v251 = &v247 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v270 = &v247 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v269 = &v247 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v268 = &v247 - v24;
  v267 = sub_2CCB30();
  v266 = *(v267 - 8);
  v25 = *(v266 + 64);
  __chkstk_darwin(v267);
  v264 = &v247 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_2CCAC0();
  v27 = *(v265 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v265);
  v30 = &v247 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2CE000();
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v34 = __chkstk_darwin(v31);
  v250 = &v247 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v34);
  v252 = &v247 - v37;
  v38 = __chkstk_darwin(v36);
  v247 = &v247 - v39;
  v40 = __chkstk_darwin(v38);
  v248 = &v247 - v41;
  v42 = __chkstk_darwin(v40);
  v255 = &v247 - v43;
  __chkstk_darwin(v42);
  v45 = &v247 - v44;
  v275 = a1;
  v278 = [a1 unsupportedReason];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v46 = sub_3ED0(v31, static Logger.default);
  swift_beginAccess();
  v47 = *(v32 + 16);
  v258 = v46;
  v257 = v32 + 16;
  v256 = v47;
  v47(v45, v46, v31);

  v48 = sub_2CDFE0();
  v49 = sub_2CE670();

  v50 = os_log_type_enabled(v48, v49);
  v276 = a5;
  v280 = a2;
  v262 = v32;
  v271 = a4;
  if (v50)
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v284 = v52;
    *v51 = 136315394;
    v53 = sub_2CE2F0();
    v55 = sub_3F08(v53, v54, &v284);

    *(v51 + 4) = v55;
    a2 = v280;
    *(v51 + 12) = 2048;
    *(v51 + 14) = v278;
    _os_log_impl(&dword_0, v48, v49, "PlayeMediaDialogProvider#chooseUnsupportedReason for parameterName %s and reason %ld", v51, 0x16u);
    sub_306C(v52);

    v56 = v262;
  }

  else
  {

    v56 = v32;
  }

  (*(v56 + 8))(v45, v31);
  sub_112C0(_swiftEmptyArrayStorage);

  v57 = sub_1D05D8();
  v59 = v58;
  v60 = sub_1D05E4();
  v259 = v31;
  if (v59 | v61)
  {
    v260 = v57;
    v261 = v60;
    v272 = v59;
    v277 = v61;
  }

  else
  {
    v62 = [a2 mediaSearch];
    if (v62 && (v63 = v62, v64 = [v62 mediaName], v63, v64))
    {
      v260 = sub_2CE270();
      v66 = v65;
    }

    else
    {
      v260 = 0;
      v66 = 0;
    }

    v67 = [a2 mediaSearch];
    v272 = v66;
    if (v67 && (v68 = v67, v69 = [v67 artistName], v68, v69))
    {
      v261 = sub_2CE270();
      v277 = v70;
    }

    else
    {
      v261 = 0;
      v277 = 0;
    }
  }

  v71 = v265;
  (*(v27 + 104))(v30, enum case for AdditionalMetricsDescription.ModuleName.pmdp(_:), v265);
  v72 = v266;
  v73 = v264;
  v74 = v267;
  (*(v266 + 104))(v264, enum case for AdditionalMetricsDescription.SourceFunction.unsupportedReason(_:), v267);
  v75 = v275;
  v284 = [v275 unsupportedReason];
  sub_2CEE70();
  [v75 resolutionResultCode];
  v263 = sub_2CCAE0();

  (*(v72 + 8))(v73, v74);
  (*(v27 + 8))(v30, v71);
  v76 = v281[35];
  sub_35E0(v281 + 31, v281[34]);
  v77 = enum case for ActivityType.failed(_:);
  v78 = sub_2C9C20();
  v79 = *(v78 - 8);
  v80 = v268;
  (*(v79 + 104))(v268, v77, v78);
  (*(v79 + 56))(v80, 0, 1, v78);
  v81 = sub_2CA130();
  v82 = v269;
  (*(*(v81 - 8) + 56))(v269, 1, 1, v81);
  v83 = enum case for SiriKitReliabilityCodes.handleIntentFailure(_:);
  v84 = sub_2C98F0();
  v85 = *(v84 - 8);
  v86 = v270;
  (*(v85 + 104))(v270, v83, v84);
  (*(v85 + 56))(v86, 0, 1, v84);
  v87 = v276;
  v88 = v280;
  sub_2CB4E0();

  sub_30B8(v86, &qword_34CB78, &unk_2D0D80);
  sub_30B8(v82, &qword_34CB80, &unk_2D0B30);
  sub_30B8(v80, &qword_34CB88, &unk_2D0D90);
  v89 = v279;
  v90 = v271;
  if ((v279 != 0x657449616964656DLL || v271 != 0xEA0000000000736DLL) && (sub_2CEEA0() & 1) == 0)
  {
    sub_20410(&unk_353120, &unk_2D0B50);
    v105 = swift_allocObject();
    v106 = v105;
    *(v105 + 16) = xmmword_2D1010;
    *(v105 + 32) = 0x656C746974;
    v107 = v272;
    v108 = v260;
    if (!v272)
    {
      v108 = 0;
    }

    v109 = 0xE000000000000000;
    if (!v272)
    {
      v107 = 0xE000000000000000;
    }

    *(v105 + 40) = 0xE500000000000000;
    *(v105 + 48) = v108;
    *(v105 + 56) = v107;
    *(v105 + 72) = &type metadata for String;
    *(v105 + 80) = 0x747369747261;
    v110 = v261;
    if (v277)
    {
      v109 = v277;
    }

    else
    {
      v110 = 0;
    }

    *(v105 + 88) = 0xE600000000000000;
    *(v105 + 96) = v110;
    *(v105 + 104) = v109;
    *(v105 + 120) = &type metadata for String;
    *(v105 + 128) = 0x6574656D61726170;
    *(v105 + 136) = 0xE900000000000072;
    *(v105 + 144) = v89;
    *(v105 + 152) = v90;
    *(v105 + 168) = &type metadata for String;
    strcpy((v105 + 176), "isPersonalized");
    *(v105 + 191) = -18;

    v111 = [v88 privatePlayMediaIntentData];
    v112 = [v111 isPersonalizedRequest];

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v113.super.super.isa = sub_2CEB10(1).super.super.isa;
    if (v112)
    {
      v114 = sub_2CEB30();

      v113.super.super.isa = v112;
    }

    else
    {
      v114 = 0;
    }

    *(v106 + 216) = &type metadata for Bool;
    *(v106 + 192) = v114 & 1;
    v121 = sub_112C0(v106);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v122 = v281[15];
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v123 = v88;
    sub_248344(v121, v87, &v284, v273, v274);

    goto LABEL_71;
  }

  if (v278 <= 4)
  {
    if (v278 <= 2)
    {
      v91 = v277;
      if (v278 != (&dword_0 + 1))
      {
        if (v278 == (&dword_0 + 2))
        {
          v284 = v88;
          v92 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v93 = sub_2CBFA0();
          if (v93 <= 0xF && ((1 << v93) & 0x81C0) != 0)
          {

            sub_20410(&unk_353120, &unk_2D0B50);
            v94 = swift_allocObject();
            *(v94 + 16) = xmmword_2D0090;
            *(v94 + 32) = 0x656C746974;
            *(v94 + 40) = 0xE500000000000000;
            v95 = sub_1D05D8();
            *(v94 + 72) = &type metadata for String;
            if (v96)
            {
              v97 = v95;
            }

            else
            {
              v97 = 0;
            }

            v98 = 0xE000000000000000;
            if (v96)
            {
              v98 = v96;
            }

            *(v94 + 48) = v97;
            *(v94 + 56) = v98;
            v99 = sub_112C0(v94);
            swift_setDeallocating();
            sub_30B8(v94 + 32, &qword_34CBA0, &unk_2D0FE0);
            swift_deallocClassInstance();
            v100 = v281[15];
            v286 = v92;
            v287 = &off_3381B8;
            v284 = v88;
            v101 = v88;
            sub_24C478(v99, v87, &v284, v273, v274);
          }

          else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v88, &off_32F7D0))
          {
            v154 = v87;
            sub_20410(&unk_353120, &unk_2D0B50);
            v155 = swift_allocObject();
            v156 = v155;
            *(v155 + 16) = xmmword_2D1010;
            *(v155 + 32) = 0x656C746974;
            v157 = v272;
            v158 = v260;
            if (!v272)
            {
              v158 = 0;
            }

            v159 = 0xE000000000000000;
            if (!v272)
            {
              v157 = 0xE000000000000000;
            }

            *(v155 + 40) = 0xE500000000000000;
            *(v155 + 48) = v158;
            *(v155 + 56) = v157;
            *(v155 + 72) = &type metadata for String;
            *(v155 + 80) = 0x747369747261;
            v160 = v261;
            if (v91)
            {
              v159 = v91;
            }

            else
            {
              v160 = 0;
            }

            *(v155 + 88) = 0xE600000000000000;
            *(v155 + 96) = v160;
            *(v155 + 104) = v159;
            *(v155 + 120) = &type metadata for String;
            *(v155 + 128) = 0x6574656D61726170;
            *(v155 + 136) = 0xE900000000000072;
            *(v155 + 144) = v89;
            *(v155 + 152) = v90;
            *(v155 + 168) = &type metadata for String;
            strcpy((v155 + 176), "isPersonalized");
            *(v155 + 191) = -18;

            v161 = [v88 privatePlayMediaIntentData];
            v162 = [v161 isPersonalizedRequest];

            sub_334A0(0, &qword_353110, NSNumber_ptr);
            v163.super.super.isa = sub_2CEB10(1).super.super.isa;
            if (v162)
            {
              v164 = sub_2CEB30();

              v163.super.super.isa = v162;
            }

            else
            {
              v164 = 0;
            }

            *(v156 + 216) = &type metadata for Bool;
            *(v156 + 192) = v164 & 1;
            v174 = sub_112C0(v156);
            swift_setDeallocating();
            sub_20410(&qword_34CBA0, &unk_2D0FE0);
            swift_arrayDestroy();
            swift_deallocClassInstance();
            v175 = v281[15];
            v286 = v92;
            v287 = &off_3381B8;
            v284 = v88;
            v176 = v88;
            sub_248344(v174, v154, &v284, v273, v274);
          }

          else
          {

            v168 = v281[15];
            v169 = sub_112C0(_swiftEmptyArrayStorage);
            v286 = v92;
            v287 = &off_3381B8;
            v284 = v88;
            v170 = v88;
            sub_39630(v169, v87, &v284, v273, v274);
          }

          goto LABEL_70;
        }

        goto LABEL_59;
      }

      if (sub_2CE7B0())
      {
        sub_2CCF90();
        v124 = sub_2CBDB0();

        if (v124)
        {
          sub_19C73C(v87, v88, v273, v274);
        }
      }

      v141 = v281[15];
      v142 = sub_112C0(_swiftEmptyArrayStorage);
      v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v287 = &off_3381B8;
      v284 = v88;
      v143 = v88;
      sub_38FC0(v142, v87, &v284, v273, v274);
      goto LABEL_70;
    }

    if (v278 != (&dword_0 + 3))
    {

      v115 = v281[15];
      v116 = sub_112C0(_swiftEmptyArrayStorage);
      v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v287 = &off_3381B8;
      v284 = v88;
      v117 = v88;
      sub_38950(v116, v87, &v284, v273, v274);
      goto LABEL_70;
    }

    sub_20410(&unk_353120, &unk_2D0B50);
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_2D0090;
    *(v128 + 32) = 0x707954616964656DLL;
    *(v128 + 40) = 0xE900000000000065;
    sub_2CE710();
    v129 = INMediaItemTypeGetName();
    if (v129)
    {
      v130 = v129;
      v131 = sub_2CE270();
      v133 = v132;

      v134 = (v128 + 48);
      *(v128 + 72) = &type metadata for String;
      if (v133)
      {
        *v134 = v131;
LABEL_69:
        *(v128 + 56) = v133;
        v147 = sub_112C0(v128);
        swift_setDeallocating();
        sub_30B8(v128 + 32, &qword_34CBA0, &unk_2D0FE0);
        swift_deallocClassInstance();
        v148 = v281[15];
        v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v287 = &off_3381B8;
        v284 = v88;
        v149 = v88;
        sub_246FB8(v147, v87, &v284, v273, v274);
        goto LABEL_70;
      }
    }

    else
    {
      v134 = (v128 + 48);
      *(v128 + 72) = &type metadata for String;
    }

    *v134 = 0;
    v133 = 0xE000000000000000;
    goto LABEL_69;
  }

  if (v278 <= 6)
  {
    if (v278 != (&dword_4 + 1))
    {

      sub_2CC230();
      v102 = sub_2CC1A0();
      v103 = v281[15];
      v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v287 = &off_3381B8;
      v284 = v88;
      v104 = v88;
      sub_2448A0(v102, v87, &v284, v273, v274);

      sub_30B8(&v284, &qword_34C6C0, &qword_2D0710);
      sub_2CC1C0();
    }

    v125 = v281[15];
    v126 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v127 = v88;
    sub_33504(v126, v87, &v284, v273, v274);
LABEL_70:

LABEL_71:

    return sub_30B8(&v284, &qword_34C6C0, &qword_2D0710);
  }

  if (v278 == (&dword_4 + 3))
  {

    v135 = sub_2CE740();
    v136 = v281[15];
    v137 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v138 = v88;
    if (v135)
    {
      sub_34F18(v137, v87, &v284, v273, v274);
    }

    else
    {
      sub_39CA0(v137, v87, &v284, v273, v274);
    }

    goto LABEL_70;
  }

  if (v278 == &dword_8)
  {

    v118 = v281[15];
    v119 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v120 = v88;
    sub_3C470(v119, v87, &v284, v273, v274);
    goto LABEL_70;
  }

LABEL_59:
  if (_INPlayMediaMediaItemUnsupportedReasonAppNotAvailable == v278)
  {

    v139 = v281[15];
    v140 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3A980(v140, v87, v273, v274);
LABEL_65:
  }

  if (_INPlayMediaMediaItemUnsupportedReasonAppNotConfigured == v278)
  {

    v144 = v281[15];
    v145 = sub_112C0(_swiftEmptyArrayStorage);
    sub_3B03C(v145, v87, v273, v274);
    goto LABEL_65;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonAppAccountFailure == v278)
  {

    sub_20410(&unk_353120, &unk_2D0B50);
    v150 = swift_allocObject();
    *(v150 + 16) = xmmword_2D0090;
    *(v150 + 32) = 0xD000000000000013;
    *(v150 + 40) = 0x80000000002DE940;
    v151 = sub_1D21B0();
    *(v150 + 72) = &type metadata for Bool;
    *(v150 + 48) = v151 & 1;
    v152 = sub_112C0(v150);
    swift_setDeallocating();
    sub_30B8(v150 + 32, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    v153 = v281[15];
    sub_3B6F8(v152, v87, v273, v274);
    goto LABEL_65;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonAppDoesntSupportIntent == v278)
  {

    v165 = v281[15];
    v166 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v167 = v88;
    sub_3A310(v166, v87, &v284, v273, v274);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonPlaybackDeviceNotFound == v278)
  {

    v171 = v281[15];
    v172 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v173 = v88;
    sub_24AA5C(v172, v87, &v284, v273, v274);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonEmptyLibrary == v278)
  {

    sub_20410(&unk_353120, &unk_2D0B50);
    v177 = swift_allocObject();
    *(v177 + 16) = xmmword_2D0E40;
    *(v177 + 32) = 0x736163646F507369;
    *(v177 + 40) = 0xE900000000000074;
    v284 = v88;
    v178 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v179 = sub_2CBFA0();
    *(v177 + 48) = (v179 < 0x10) & (0x81C0u >> v179);
    *(v177 + 72) = &type metadata for Bool;
    *(v177 + 80) = 0x656C746974;
    *(v177 + 88) = 0xE500000000000000;
    v180 = sub_1D05D8();
    *(v177 + 120) = &type metadata for String;
    if (v181)
    {
      v182 = v180;
    }

    else
    {
      v182 = 0;
    }

    v183 = 0xE000000000000000;
    if (v181)
    {
      v183 = v181;
    }

    *(v177 + 96) = v182;
    *(v177 + 104) = v183;
    v184 = sub_112C0(v177);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v185 = v281[15];
    v286 = v178;
    v287 = &off_3381B8;
    v284 = v88;
    v186 = v88;
    sub_2496D0(v184, v87, &v284, v273, v274);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonCreateRadioFailed == v278)
  {

    v187 = v281[15];
    v188 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v189 = v88;
    sub_24A3D8(v188, v87, &v284, v273, v274);
    goto LABEL_70;
  }

  if (_INPlayMediaMediaItemUnsupportedReasonUnsupportedPlaybackQueueLocation == v278)
  {

    v190 = v281[15];
    v191 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v192 = v88;
    sub_249D54(v191, v87, &v284, v273, v274);
    goto LABEL_70;
  }

  if (sub_2CE8B0())
  {

    v193 = v255;
    v194 = v259;
    v256(v255, v258, v259);
    v195 = sub_2CDFE0();
    v196 = sub_2CE670();
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      *v197 = 0;
      _os_log_impl(&dword_0, v195, v196, "Overriding not-found dialog for play this. Returning special dialog", v197, 2u);
    }

    (*(v262 + 8))(v193, v194);
    v198 = v281[15];
    v199 = sub_112C0(_swiftEmptyArrayStorage);
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v88;
    v200 = v88;
    sub_252818(v199, v87, &v284, v273, v274);
    goto LABEL_70;
  }

  v201 = sub_2CCF90();
  v203 = v202;
  v204 = sub_2CBE10();
  if (!v203)
  {
    v206 = v90;

    goto LABEL_116;
  }

  v206 = v90;
  if (v201 == v204 && v203 == v205)
  {
  }

  else
  {
    v207 = sub_2CEEA0();

    if ((v207 & 1) == 0)
    {
      goto LABEL_116;
    }
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v88, &off_32F800))
  {
    v256(v248, v258, v259);
    v208 = sub_2CDFE0();
    v209 = sub_2CE670();
    if (os_log_type_enabled(v208, v209))
    {
      v210 = swift_slowAlloc();
      *v210 = 0;
      _os_log_impl(&dword_0, v208, v209, "Overriding not-found dialog for non subscriber", v210, 2u);
    }

    (*(v262 + 8))(v248, v259);
    sub_20410(&unk_353120, &unk_2D0B50);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_2D5FA0;
    *(v211 + 32) = 0x656C746974;
    *(v211 + 40) = 0xE500000000000000;
    v284 = v260;
    v285 = v272;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v212 = sub_2CEB80();

    ObjectType = swift_getObjectType();
    *(v211 + 48) = v212;
    *(v211 + 72) = ObjectType;
    *(v211 + 80) = 0x747369747261;
    *(v211 + 88) = 0xE600000000000000;
    v284 = v261;
    v285 = v277;
    v214 = sub_2CEB80();
    v215 = swift_getObjectType();
    *(v211 + 96) = v214;
    *(v211 + 120) = v215;
    *(v211 + 128) = 0x6574656D61726170;
    *(v211 + 136) = 0xE900000000000072;
    *(v211 + 144) = 0xD000000000000012;
    *(v211 + 152) = 0x80000000002DE920;
    *(v211 + 168) = &type metadata for String;
    strcpy((v211 + 176), "isPersonalized");
    *(v211 + 191) = -18;
    v216 = [v280 privatePlayMediaIntentData];
    v217 = [v216 isPersonalizedRequest];
    goto LABEL_129;
  }

LABEL_116:
  objc_opt_self();
  v218 = v275;
  if (!swift_dynamicCastObjCClass())
  {
    v256(v250, v258, v259);
    v221 = v218;
    v222 = sub_2CDFE0();
    v223 = sub_2CE660();

    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v284 = v225;
      *v224 = 136315138;
      v283 = swift_getObjectType();
      sub_20410(&qword_353CE0, qword_2D60C0);
      v226 = sub_2CE2A0();
      v228 = sub_3F08(v226, v227, &v284);

      *(v224 + 4) = v228;
      _os_log_impl(&dword_0, v222, v223, "PlayeMediaDialogProvider#chooseUnsupportedReason intentResolutionResult type not being handled (yet) today: %s", v224, 0xCu);
      sub_306C(v225);
    }

    v229 = *(v262 + 8);
    v230 = &v282;
    goto LABEL_128;
  }

  v219 = v218;
  sub_2CE590();
  v220 = v249;
  sub_2CB830();
  if ((*(v253 + 48))(v220, 1, v254) == 1)
  {
    sub_30B8(v220, &qword_353CD0, &qword_2D60B8);
LABEL_125:
    v256(v252, v258, v259);
    v233 = sub_2CDFE0();
    v234 = sub_2CE670();
    if (os_log_type_enabled(v233, v234))
    {
      v235 = swift_slowAlloc();
      *v235 = 0;
      _os_log_impl(&dword_0, v233, v234, "PlayeMediaDialogProvider#chooseUnsupportedReason result is not PFSQ terminating...", v235, 2u);
    }

    v229 = *(v262 + 8);
    v230 = &v284;
LABEL_128:
    v229(*(v230 - 32), v259);
    sub_20410(&unk_353120, &unk_2D0B50);
    v211 = swift_allocObject();
    *(v211 + 16) = xmmword_2D5FA0;
    *(v211 + 32) = 0x656C746974;
    *(v211 + 40) = 0xE500000000000000;
    v284 = v260;
    v285 = v272;
    sub_20410(&qword_34CCC0, &unk_2D0DE0);
    v236 = sub_2CEB80();

    v237 = swift_getObjectType();
    *(v211 + 48) = v236;
    *(v211 + 72) = v237;
    *(v211 + 80) = 0x747369747261;
    *(v211 + 88) = 0xE600000000000000;
    v284 = v261;
    v285 = v277;
    v238 = sub_2CEB80();
    v239 = swift_getObjectType();
    *(v211 + 96) = v238;
    *(v211 + 120) = v239;
    *(v211 + 128) = 0x6574656D61726170;
    v240 = v279;
    *(v211 + 136) = 0xE900000000000072;
    *(v211 + 144) = v240;
    *(v211 + 152) = v206;
    *(v211 + 168) = &type metadata for String;
    strcpy((v211 + 176), "isPersonalized");
    *(v211 + 191) = -18;

    v216 = [v280 privatePlayMediaIntentData];
    v217 = [v216 isPersonalizedRequest];
LABEL_129:
    v241 = v217;

    sub_334A0(0, &qword_353110, NSNumber_ptr);
    v242.super.super.isa = sub_2CEB10(1).super.super.isa;
    if (v241)
    {
      v243 = sub_2CEB30();

      v242.super.super.isa = v241;
    }

    else
    {
      v243 = 0;
    }

    *(v211 + 192) = v243 & 1;
    *(v211 + 216) = &type metadata for Bool;
    *(v211 + 224) = 0x6563617073;
    *(v211 + 232) = 0xE500000000000000;
    *(v211 + 240) = 32;
    *(v211 + 248) = 0xE100000000000000;
    *(v211 + 264) = &type metadata for String;
    *(v211 + 272) = 0x77745F6563617073;
    *(v211 + 312) = &type metadata for String;
    *(v211 + 280) = 0xE90000000000006FLL;
    *(v211 + 288) = 32;
    *(v211 + 296) = 0xE100000000000000;
    v244 = sub_112C0(v211);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v245 = v281[15];
    v286 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v287 = &off_3381B8;
    v284 = v280;
    v246 = v280;
    sub_248344(v244, v276, &v284, v273, v274);

    goto LABEL_71;
  }

  (*(v253 + 32))(v251, v220, v254);
  sub_2CB750();
  if ((sub_2CB740() & 1) == 0)
  {
    (*(v253 + 8))(v251, v254);
    goto LABEL_125;
  }

  v231 = v281[15];
  v232 = sub_112C0(_swiftEmptyArrayStorage);
  sub_270F9C(v232, v231, v251, v276, v280, v273, v274);
  (*(v253 + 8))(v251, v254);
}

uint64_t sub_19C5F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0090;
  *(inited + 32) = 0x6F50656D6F487369;
  *(inited + 40) = 0xE900000000000064;
  v10 = sub_2CB650();
  *(inited + 72) = &type metadata for Bool;
  *(inited + 48) = v10 & 1;
  v11 = sub_112C0(inited);
  swift_setDeallocating();
  sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
  v12 = *(v4 + 120);
  v15[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v15[4] = &off_3381B8;
  v15[0] = a2;
  v13 = a2;
  sub_2489C8(v11, a1, v15, a3, a4);

  return sub_30B8(v15, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_19C73C(unint64_t a1, void *a2, char *a3, char *a4)
{
  v242 = a4;
  v241 = a3;
  v257 = a2;
  v240 = a1;
  v4 = sub_2C92E0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v237 = &v214 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v218 = &v214 - v10;
  v11 = __chkstk_darwin(v9);
  v231 = &v214 - v12;
  v13 = __chkstk_darwin(v11);
  v236 = &v214 - v14;
  __chkstk_darwin(v13);
  v16 = &v214 - v15;
  v17 = sub_2CB850();
  v255 = *(v17 - 8);
  v18 = *(v255 + 64);
  __chkstk_darwin(v17);
  v225 = &v214 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_20410(&qword_353CC8, &unk_2D60A8);
  v20 = *(*(v246 - 8) + 64);
  __chkstk_darwin(v246);
  v256 = &v214 - v21;
  v244 = sub_2CC950();
  v243 = *(v244 - 8);
  v22 = *(v243 + 64);
  __chkstk_darwin(v244);
  v229 = &v214 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_20410(&qword_352D78, &unk_2D5320);
  v25 = *(*(v24 - 8) + 64);
  __chkstk_darwin(v24 - 8);
  v27 = &v214 - v26;
  v28 = sub_20410(&qword_353CD0, &qword_2D60B8);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v234 = &v214 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v253 = &v214 - v33;
  __chkstk_darwin(v32);
  v254 = &v214 - v34;
  v35 = sub_20410(&qword_353C88, &unk_2D6070);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v223 = &v214 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v217 = &v214 - v40;
  v41 = __chkstk_darwin(v39);
  v226 = &v214 - v42;
  v43 = __chkstk_darwin(v41);
  v220 = &v214 - v44;
  v45 = __chkstk_darwin(v43);
  v233 = &v214 - v46;
  __chkstk_darwin(v45);
  v259 = &v214 - v47;
  v48 = sub_2CE000();
  v49 = *(v48 - 8);
  v50 = *(v49 + 64);
  v51 = __chkstk_darwin(v48);
  v219 = &v214 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __chkstk_darwin(v51);
  v227 = &v214 - v54;
  v55 = __chkstk_darwin(v53);
  v216 = &v214 - v56;
  v57 = __chkstk_darwin(v55);
  v215 = &v214 - v58;
  v59 = __chkstk_darwin(v57);
  v224 = &v214 - v60;
  v61 = __chkstk_darwin(v59);
  v221 = &v214 - v62;
  v63 = __chkstk_darwin(v61);
  v230 = &v214 - v64;
  __chkstk_darwin(v63);
  v66 = &v214 - v65;
  if (qword_34BF58 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v67 = sub_3ED0(v48, static Logger.default);
    swift_beginAccess();
    v68 = v49;
    v69 = *(v49 + 16);
    v249 = v67;
    v258 = v48;
    v250 = v49 + 16;
    v248 = v69;
    v69(v66, v67, v48);
    v70 = sub_2CDFE0();
    v71 = sub_2CE670();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_0, v70, v71, "PlayeMediaDialogProvider#invalidTokensHelper", v72, 2u);
    }

    v73 = *(v68 + 8);
    v252 = v68 + 8;
    v251 = v73;
    v73(v66, v258);
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0090;
    *(inited + 32) = 0x6F50656D6F487369;
    *(inited + 40) = 0xE900000000000064;
    v75 = sub_2CB650();
    *(inited + 72) = &type metadata for Bool;
    *(inited + 48) = v75 & 1;
    v76 = sub_112C0(inited);
    swift_setDeallocating();
    sub_30B8(inited + 32, &qword_34CBA0, &unk_2D0FE0);
    v265 = v76;
    v77 = sub_2CBB70();
    sub_2CBB60();
    v245 = sub_2CBB20();

    sub_2CBB60();
    v238 = sub_2CBB30();

    sub_2CBB60();
    v235 = sub_2CBB50();
    v232 = v78;

    v79 = [v257 privatePlayMediaIntentData];
    v222 = v77;
    v228 = v76;
    if (v79)
    {
      v80 = v79;
      v81 = [v79 pegasusMetaData];

      v82 = v254;
      v83 = v253;
      if (v81)
      {
        v84 = sub_2C8DC0();
        v86 = v85;
      }

      else
      {
        v84 = 0;
        v86 = 0xF000000000000000;
      }
    }

    else
    {
      v84 = 0;
      v86 = 0xF000000000000000;
      v82 = v254;
      v83 = v253;
    }

    sub_2C9210();
    sub_5267C(v84, v86);
    sub_2CB750();
    sub_2CB730();
    v87 = v243;
    v88 = v244;
    v89 = (*(v243 + 48))(v27, 1, v244);
    v247 = v4;
    if (v89)
    {
      sub_30B8(v27, &qword_352D78, &unk_2D5320);
      v90 = 1;
    }

    else
    {
      v91 = v229;
      (*(v87 + 16))(v229, v27, v88);
      sub_30B8(v27, &qword_352D78, &unk_2D5320);
      sub_2CC940();
      (*(v87 + 8))(v91, v88);
      v90 = 0;
    }

    v92 = v255;
    v93 = *(v255 + 56);
    v93(v82, v90, 1, v17);
    (*(v92 + 104))(v83, enum case for PlaybackCode.gdprNeededInGroup(_:), v17);
    v93(v83, 0, 1, v17);
    v94 = *(v246 + 48);
    v95 = v82;
    v96 = v82;
    v97 = v256;
    sub_F3F4(v95, v256, &qword_353CD0, &qword_2D60B8);
    v98 = v97;
    sub_F3F4(v83, v97 + v94, &qword_353CD0, &qword_2D60B8);
    v99 = *(v92 + 48);
    if (v99(v98, 1, v17) == 1)
    {
      sub_30B8(v83, &qword_353CD0, &qword_2D60B8);
      v100 = v256;
      sub_30B8(v96, &qword_353CD0, &qword_2D60B8);
      v101 = v99(&v100[v94], 1, v17);
      v102 = v257;
      v4 = v247;
      v49 = v245;
      if (v101 == 1)
      {
        sub_30B8(v100, &qword_353CD0, &qword_2D60B8);
LABEL_28:
        v124 = v230;
        v125 = v258;
        v248(v230, v249, v258);
        v126 = sub_2CDFE0();
        v127 = sub_2CE660();
        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          *v128 = 0;
          _os_log_impl(&dword_0, v126, v127, "PlayeMediaDialogProvider#invalidTokensHelper PFSQ gdprNeededInGroup", v128, 2u);
        }

        v251(v124, v125);
        v129 = *(v239 + 120);
        v263 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v264 = &off_3381B8;
        *&v262 = v102;
        v130 = v102;
        sub_35588(v228, v240, &v262, v241, v242);
LABEL_72:

LABEL_73:
        sub_30B8(v259, &qword_353C88, &unk_2D6070);
        return sub_30B8(&v262, &qword_34C6C0, &qword_2D0710);
      }

      goto LABEL_17;
    }

    v103 = v234;
    sub_F3F4(v98, v234, &qword_353CD0, &qword_2D60B8);
    v104 = v99((v98 + v94), 1, v17);
    v4 = v247;
    v49 = v245;
    if (v104 == 1)
    {
      sub_30B8(v253, &qword_353CD0, &qword_2D60B8);
      v100 = v256;
      sub_30B8(v254, &qword_353CD0, &qword_2D60B8);
      (*(v255 + 8))(v103, v17);
      v102 = v257;
LABEL_17:
      sub_30B8(v100, &qword_353CC8, &unk_2D60A8);
      v105 = v237;
      goto LABEL_18;
    }

    v120 = v255;
    v121 = v98 + v94;
    v122 = v225;
    (*(v255 + 32))(v225, v121, v17);
    sub_1B7EB0(&qword_353CD8, &type metadata accessor for PlaybackCode);
    LODWORD(v246) = sub_2CE250();
    v123 = *(v120 + 8);
    v123(v122, v17);
    sub_30B8(v253, &qword_353CD0, &qword_2D60B8);
    sub_30B8(v254, &qword_353CD0, &qword_2D60B8);
    v123(v234, v17);
    sub_30B8(v98, &qword_353CD0, &qword_2D60B8);
    v102 = v257;
    v105 = v237;
    if (v246)
    {
      goto LABEL_28;
    }

LABEL_18:
    v66 = v233;
    sub_F3F4(v259, v233, &qword_353C88, &unk_2D6070);
    v106 = sub_2C9240();
    v107 = *(v106 - 8);
    v108 = v107 + 48;
    v256 = *(v107 + 48);
    if ((v256)(v66, 1, v106) == 1)
    {
      break;
    }

    v245 = v107 + 48;
    v27 = sub_2C9230();
    v253 = v107;
    v109 = *(v107 + 8);
    v246 = v106;
    v109(v66, v106);
    v48 = 0;
    v110 = *(v27 + 2);
    v17 = v5 + 16;
    while (1)
    {
      if (v110 == v48)
      {

        v102 = v257;
        v105 = v237;
        v106 = v246;
        v108 = v245;
        v107 = v253;
        goto LABEL_32;
      }

      if (v48 >= *(v27 + 2))
      {
        break;
      }

      (*(v5 + 16))(v16, &v27[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v48++], v4);
      v66 = sub_2C92D0();
      (*(v5 + 8))(v16, v4);
      if (v49 == v66)
      {

        v111 = v221;
        v248(v221, v249, v258);
        v112 = sub_2CDFE0();
        v113 = sub_2CE660();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = swift_slowAlloc();
          *v114 = 0;
          _os_log_impl(&dword_0, v112, v113, "PlayeMediaDialogProvider#invalidTokensHelper GDPR required", v114, 2u);
        }

        v251(v111, v258);
        v261 = &type metadata for Int;
        *&v260 = v49;
        sub_2CC230();
        v115 = sub_2CC200();
        sub_270DC4(&v260, v115, v116, &v262);

        sub_30B8(&v262, &qword_34CEA0, &qword_2D0FC0);
        v117 = *(v239 + 120);
        v118 = v265;
        v263 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v264 = &off_3381B8;
        *&v262 = v257;
        v119 = v257;
        sub_24D1A8(v118, v240, &v262, v241, v242);
        goto LABEL_72;
      }
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  sub_30B8(v66, &qword_353C88, &unk_2D6070);
LABEL_32:
  v131 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v102, &off_32F7A0);
  v132 = v258;
  if (v131)
  {
    v133 = v224;
    v248(v224, v249, v258);
    v134 = sub_2CDFE0();
    v135 = sub_2CE660();
    if (os_log_type_enabled(v134, v135))
    {
      v136 = swift_slowAlloc();
      *v136 = 0;
      _os_log_impl(&dword_0, v134, v135, "PlayeMediaDialogProvider#invalidTokensHelper sign into Music account required", v136, 2u);
    }

    v251(v133, v132);
    v261 = &type metadata for String;
    strcpy(&v260, "NonSubscriber");
    HIWORD(v260) = -4864;
    sub_2CC230();
    v137 = sub_2CC200();
    sub_270DC4(&v260, v137, v138, &v262);

    sub_30B8(&v262, &qword_34CEA0, &qword_2D0FC0);
    v139 = *(v239 + 120);
    v140 = v265;
    v263 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v264 = &off_3381B8;
    *&v262 = v102;
    v141 = v102;
    sub_241FF8(v140, v240, &v262, v241, v242);
    goto LABEL_72;
  }

  v142 = sub_2CB650();
  v143 = v226;
  if ((v142 & 1) == 0)
  {
LABEL_48:
    if (sub_2CB650())
    {
      sub_F3F4(v259, v143, &qword_353C88, &unk_2D6070);
      if ((v256)(v143, 1, v106) != 1)
      {
        v245 = v108;
        v161 = sub_2C9230();
        v253 = v107;
        v162 = *(v107 + 8);
        v246 = v106;
        v243 = v107 + 8;
        v238 = v162;
        result = v162(v143, v106);
        v163 = 0;
        v244 = *(v161 + 16);
        v254 = v5 + 16;
        v255 = v5 + 8;
        while (1)
        {
          if (v244 == v163)
          {

            v105 = v237;
            v106 = v246;
            v107 = v253;
            goto LABEL_58;
          }

          if (v163 >= *(v161 + 16))
          {
            goto LABEL_91;
          }

          v164 = (*(v5 + 80) + 32) & ~*(v5 + 80);
          v165 = *(v5 + 72);
          v166 = *(v5 + 16);
          v167 = v231;
          v166(v231, v161 + v164 + v165 * v163, v4);
          if (v235 == sub_2C92D0())
          {
            break;
          }

          ++v163;
          v168 = sub_2C92D0();
          v169 = *v255;
          result = (*v255)(v167, v4);
          if (v232 == v168)
          {
            goto LABEL_75;
          }
        }

        v169 = *v255;
        (*v255)(v167, v4);
LABEL_75:

        v188 = v216;
        v248(v216, v249, v258);
        v189 = sub_2CDFE0();
        v190 = sub_2CE660();
        v191 = os_log_type_enabled(v189, v190);
        v192 = v217;
        if (v191)
        {
          v193 = swift_slowAlloc();
          *v193 = 0;
          _os_log_impl(&dword_0, v189, v190, "PlayeMediaDialogProvider#invalidTokensHelper auth issue", v193, 2u);
        }

        v251(v188, v258);
        sub_F3F4(v259, v192, &qword_353C88, &unk_2D6070);
        v194 = v246;
        v195 = (v256)(v192, 1, v246);
        v196 = v218;
        if (v195 == 1)
        {
          sub_30B8(v192, &qword_353C88, &unk_2D6070);
        }

        else
        {
          v197 = sub_2C9230();
          result = v238(v192, v194);
          v198 = v197 + v164;
          v199 = -*(v197 + 16);
          v200 = -1;
          while (v199 + v200 != -1)
          {
            if (++v200 >= *(v197 + 16))
            {
              goto LABEL_92;
            }

            v201 = v198 + v165;
            (v166)(v196);
            v202 = sub_2C92D0();
            result = (v169)(v196, v4);
            v198 = v201;
            if (v235 == v202)
            {

              v261 = &type metadata for Int;
              *&v260 = v235;
              sub_2CC230();
              v203 = sub_2CC200();
              sub_270DC4(&v260, v203, v204, &v262);

              sub_30B8(&v262, &qword_34CEA0, &qword_2D0FC0);
              v205 = v242;
              v206 = v241;
              v207 = v240;
              v208 = v239;
              goto LABEL_86;
            }
          }
        }

        v205 = v242;
        v206 = v241;
        v207 = v240;
        v208 = v239;
        v261 = &type metadata for Int;
        *&v260 = v232;
        sub_2CC230();
        v209 = sub_2CC200();
        sub_270DC4(&v260, v209, v210, &v262);

        sub_30B8(&v262, &qword_34CEA0, &qword_2D0FC0);
LABEL_86:
        v211 = *(v208 + 120);
        v212 = v265;
        v263 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v264 = &off_3381B8;
        *&v262 = v257;
        v213 = v257;
        sub_24E540(v212, v207, &v262, v206, v205);
        goto LABEL_72;
      }

      sub_30B8(v143, &qword_353C88, &unk_2D6070);
    }

LABEL_58:
    v248(v227, v249, v258);
    v170 = sub_2CDFE0();
    v171 = sub_2CE660();
    if (os_log_type_enabled(v170, v171))
    {
      v172 = swift_slowAlloc();
      *v172 = 0;
      _os_log_impl(&dword_0, v170, v171, "PlayeMediaDialogProvider#invalidTokensHelper invalid token", v172, 2u);
    }

    v251(v227, v258);
    sub_2CBB60();
    v27 = sub_2CBB40();

    v66 = v223;
    sub_F3F4(v259, v223, &qword_353C88, &unk_2D6070);
    if ((v256)(v66, 1, v106) == 1)
    {
      sub_30B8(v66, &qword_353C88, &unk_2D6070);
LABEL_70:
      v178 = v242;
      v179 = v241;
      v180 = v240;
      v181 = v239;
    }

    else
    {
      v16 = sub_2C9230();
      (*(v107 + 8))(v66, v106);
      v48 = 0;
      v173 = *(v16 + 2);
      v17 = v5 + 16;
      v49 = v5 + 8;
      do
      {
        if (v173 == v48)
        {

          goto LABEL_70;
        }

        if (v48 >= *(v16 + 2))
        {
          goto LABEL_88;
        }

        (*(v5 + 16))(v105, &v16[((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v48++], v4);
        v66 = sub_2C92D0();
        (*(v5 + 8))(v105, v4);
      }

      while (v27 != v66);

      v174 = v219;
      v248(v219, v249, v258);
      v175 = sub_2CDFE0();
      v176 = sub_2CE660();
      v177 = os_log_type_enabled(v175, v176);
      v178 = v242;
      v179 = v241;
      v180 = v240;
      v181 = v239;
      if (v177)
      {
        v182 = swift_slowAlloc();
        *v182 = 0;
        _os_log_impl(&dword_0, v175, v176, "PlayeMediaDialogProvider#invalidTokensHelper no special handling for multiUserIdNotFoundError", v182, 2u);
      }

      v251(v174, v258);
      v261 = &type metadata for Int;
      *&v260 = v27;
      sub_2CC230();
      v183 = sub_2CC200();
      sub_270DC4(&v260, v183, v184, &v262);

      sub_30B8(&v262, &qword_34CEA0, &qword_2D0FC0);
    }

    v185 = *(v181 + 120);
    v186 = v265;
    v263 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v264 = &off_3381B8;
    *&v262 = v257;
    v187 = v257;
    sub_3BDB4(v186, v180, &v262, v179, v178);
    goto LABEL_72;
  }

  v253 = v107;
  v144 = v220;
  sub_F3F4(v259, v220, &qword_353C88, &unk_2D6070);
  if ((v256)(v144, 1, v106) == 1)
  {
    sub_30B8(v144, &qword_353C88, &unk_2D6070);
LABEL_47:
    v107 = v253;
    goto LABEL_48;
  }

  v245 = v108;
  v145 = sub_2C9230();
  v146 = *(v253 + 8);
  v246 = v106;
  result = v146(v144, v106);
  v148 = 0;
  v149 = *(v145 + 16);
  while (1)
  {
    if (v149 == v148)
    {

      v143 = v226;
      v106 = v246;
      v108 = v245;
      goto LABEL_47;
    }

    if (v148 >= *(v145 + 16))
    {
      break;
    }

    v150 = v236;
    (*(v5 + 16))(v236, v145 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v148++, v4);
    v151 = sub_2C92D0();
    result = (*(v5 + 8))(v150, v4);
    if (v238 == v151)
    {

      v152 = v215;
      v153 = v258;
      v248(v215, v249, v258);
      v154 = sub_2CDFE0();
      v155 = sub_2CE660();
      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        *v156 = 0;
        _os_log_impl(&dword_0, v154, v155, "PlayeMediaDialogProvider#invalidTokensHelper invalid user identity", v156, 2u);
      }

      v251(v152, v153);
      v261 = &type metadata for Int;
      *&v260 = v238;
      sub_2CC230();
      v157 = sub_2CC200();
      sub_270DC4(&v260, v157, v158, &v262);

      sub_30B8(&v262, &qword_34CEA0, &qword_2D0FC0);

      v159 = *(v239 + 120);
      v263 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v264 = &off_3381B8;
      *&v262 = v257;
      v160 = v257;
      sub_24DEC0(v240, &v262, v241, v242);
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
  return result;
}

uint64_t sub_19E834()
{
  v1 = v0[15];

  sub_306C(v0 + 16);
  sub_306C(v0 + 21);
  sub_306C(v0 + 26);
  return sub_306C(v0 + 31);
}

void sub_19E8F0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(void))
{
  v5 = a4();
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_19E928(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5, char *a6, char *a7)
{
  v189 = a1;
  v190 = a6;
  v191 = a7;
  v178 = a4;
  v179 = a2;
  v180 = a3;
  v8 = sub_2CE000();
  v192 = *(v8 - 8);
  v193 = v8;
  v9 = *(v192 + 64);
  v10 = __chkstk_darwin(v8);
  v12 = &v178 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v178 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v178 - v17;
  v19 = __chkstk_darwin(v16);
  v21 = &v178 - v20;
  v22 = __chkstk_darwin(v19);
  v24 = &v178 - v23;
  v25 = __chkstk_darwin(v22);
  v27 = &v178 - v26;
  v28 = __chkstk_darwin(v25);
  v194 = &v178 - v29;
  v30 = __chkstk_darwin(v28);
  v187 = &v178 - v31;
  v32 = __chkstk_darwin(v30);
  v186 = &v178 - v33;
  v34 = __chkstk_darwin(v32);
  v185 = &v178 - v35;
  v36 = __chkstk_darwin(v34);
  v184 = &v178 - v37;
  v38 = __chkstk_darwin(v36);
  v183 = &v178 - v39;
  v40 = __chkstk_darwin(v38);
  v181 = &v178 - v41;
  __chkstk_darwin(v40);
  v182 = &v178 - v42;
  sub_112C0(_swiftEmptyArrayStorage);

  v43 = sub_1D2364(&off_32F830);
  sub_F1954(&unk_32F850);
  if ((v43 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F860))
  {
    v194 = a5;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = v193;
    v45 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v46 = v192;
    (*(v192 + 16))(v12, v45, v44);
    v47 = sub_2CDFE0();
    v48 = sub_2CE670();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_0, v47, v48, "Calling podcast promotion canned dialog", v49, 2u);
    }

    (*(v46 + 8))(v12, v44);
    sub_1D15EC();
    v51 = v50;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 32) = 0xD000000000000016;
    *(inited + 16) = xmmword_2D5F90;
    *(inited + 40) = 0x80000000002DE7E0;
    if (v51)
    {
      v53 = sub_2CE2B0();
      v55 = v54;
      v56 = sub_2CE2B0();
      if (v55)
      {
        if (v53 == v56 && v55 == v57)
        {
          v58 = 1;
        }

        else
        {
          v58 = sub_2CEEA0();
        }

        *(inited + 48) = v58 & 1;
        *(inited + 72) = &type metadata for Bool;
        strcpy((inited + 80), "isStoryTelling");
        *(inited + 95) = -18;
        goto LABEL_23;
      }
    }

    else
    {
      sub_2CE2B0();
    }

    *(inited + 48) = 0;
    *(inited + 72) = &type metadata for Bool;
    strcpy((inited + 80), "isStoryTelling");
    *(inited + 95) = -18;
    if (!v51)
    {
      sub_2CE2B0();
      goto LABEL_27;
    }

LABEL_23:
    v66 = sub_2CE2B0();
    v68 = v67;
    v69 = sub_2CE2B0();
    if (v68)
    {
      if (v66 == v69 && v68 == v70)
      {
        v71 = 1;
      }

      else
      {
        v71 = sub_2CEEA0();
      }

      *(inited + 96) = v71 & 1;
      *(inited + 120) = &type metadata for Bool;
      strcpy((inited + 128), "isStorySleep");
      *(inited + 141) = 0;
      *(inited + 142) = -5120;
      goto LABEL_31;
    }

LABEL_27:

    *(inited + 96) = 0;
    *(inited + 120) = &type metadata for Bool;
    strcpy((inited + 128), "isStorySleep");
    *(inited + 141) = 0;
    *(inited + 142) = -5120;
    if (!v51)
    {
      sub_2CE2B0();
      goto LABEL_35;
    }

LABEL_31:
    v72 = sub_2CE2B0();
    v74 = v73;
    v75 = sub_2CE2B0();
    if (v74)
    {
      if (v72 == v75 && v74 == v76)
      {
        v77 = 1;
      }

      else
      {
        v77 = sub_2CEEA0();
      }

      *(inited + 144) = v77 & 1;
      *(inited + 168) = &type metadata for Bool;
      *(inited + 176) = 0xD000000000000011;
      *(inited + 184) = 0x80000000002DE800;
      goto LABEL_39;
    }

LABEL_35:

    *(inited + 144) = 0;
    *(inited + 168) = &type metadata for Bool;
    *(inited + 176) = 0xD000000000000011;
    *(inited + 184) = 0x80000000002DE800;
    if (!v51)
    {
      sub_2CE2B0();
      goto LABEL_43;
    }

LABEL_39:
    v78 = sub_2CE2B0();
    v80 = v79;
    v81 = sub_2CE2B0();
    if (v80)
    {
      if (v78 == v81 && v80 == v82)
      {
        v83 = 1;
      }

      else
      {
        v83 = sub_2CEEA0();
      }

      *(inited + 192) = v83 & 1;
      *(inited + 216) = &type metadata for Bool;
      strcpy((inited + 224), "isWordOfTheDay");
      *(inited + 239) = -18;
      goto LABEL_47;
    }

LABEL_43:

    *(inited + 192) = 0;
    *(inited + 216) = &type metadata for Bool;
    strcpy((inited + 224), "isWordOfTheDay");
    *(inited + 239) = -18;
    if (!v51)
    {
      sub_2CE2B0();
      v84 = 0;
LABEL_53:

      *(inited + 264) = &type metadata for Bool;
      *(inited + 240) = v84 & 1;
      v90 = sub_112C0(inited);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      v91 = *(v188 + 120);
      v196 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v197 = &off_3381B8;
      v195[0] = v194;
      v92 = v194;
      sub_24904C(v90, v189, v195, v190, v191);
LABEL_54:

      return sub_30B8(v195, &qword_34C6C0, &qword_2D0710);
    }

LABEL_47:
    v85 = sub_2CE2B0();
    v87 = v86;

    v88 = sub_2CE2B0();
    if (v87)
    {
      if (v85 == v88 && v87 == v89)
      {

        v84 = 1;
      }

      else
      {
        v84 = sub_2CEEA0();
      }
    }

    else
    {
      v84 = 0;
    }

    goto LABEL_53;
  }

  if (sub_2CE870())
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v59 = v193;
    v60 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v61 = v192;
    (*(v192 + 16))(v15, v60, v59);
    v62 = sub_2CDFE0();
    v63 = sub_2CE660();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_0, v62, v63, "PlayMediaDialogProvider going to makePlaybackQueueTokenRestrictedContent", v64, 2u);
    }

    (*(v61 + 8))(v15, v193);
    return sub_19C5F4(v189, a5, v190, v191);
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F890))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v93 = v193;
    v94 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v95 = v192;
    (*(v192 + 16))(v18, v94, v93);
    v96 = sub_2CDFE0();
    v97 = sub_2CE660();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&dword_0, v96, v97, "PlayMediaDialogProvider going to not found for Acoustic ID follow up when entity not found in AMP catalog", v98, 2u);
    }

    (*(v95 + 8))(v18, v193);
    sub_20410(&unk_353120, &unk_2D0B50);
    v99 = swift_initStackObject();
    *(v99 + 16) = xmmword_2D0090;
    *(v99 + 32) = 0x79616C507369;
    v100 = v99 + 32;
    *(v99 + 40) = 0xE600000000000000;
    *(v99 + 72) = &type metadata for Bool;
    *(v99 + 48) = 0;
LABEL_67:
    v106 = sub_112C0(v99);
    swift_setDeallocating();
    sub_30B8(v100, &qword_34CBA0, &unk_2D0FE0);
    v107 = *(v188 + 120);
    v196 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v197 = &off_3381B8;
    v195[0] = a5;
    v108 = a5;
LABEL_68:
    sub_382E0(v106, v189, v195, v190, v191);
    goto LABEL_54;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F8C0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v101 = v193;
    v102 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    (*(v192 + 16))(v21, v102, v101);
    v103 = sub_2CDFE0();
    v104 = sub_2CE660();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *v105 = 0;
      _os_log_impl(&dword_0, v103, v104, "PlayMediaDialogProvider going to Non-subscriber dialog for Acoustic ID follow up", v105, 2u);
    }

    (*(v192 + 8))(v21, v193);
    sub_20410(&unk_353120, &unk_2D0B50);
    v99 = swift_initStackObject();
    *(v99 + 16) = xmmword_2D0090;
    *(v99 + 32) = 0x79616C507369;
    v100 = v99 + 32;
    *(v99 + 40) = 0xE600000000000000;
    *(v99 + 72) = &type metadata for Bool;
    *(v99 + 48) = 1;
    goto LABEL_67;
  }

  v109 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F8F0);
  v110 = v192;
  if (v109)
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v111 = v193;
    v112 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    (*(v110 + 16))(v24, v112, v111);
    v113 = sub_2CDFE0();
    v114 = sub_2CE660();
    if (os_log_type_enabled(v113, v114))
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_0, v113, v114, "PlayMediaDialogProvider going to CannotReferencePodcastsAudiobooks for related follow up", v115, 2u);
    }

    (*(v110 + 8))(v24, v193);
    return sub_198AAC(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F920))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v116 = v193;
    v117 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    (*(v110 + 16))(v27, v117, v116);
    v118 = sub_2CDFE0();
    v119 = sub_2CE660();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_0, v118, v119, "PlayMediaDialogProvider going to NoLiveVersion for related follow up", v120, 2u);
    }

    (*(v110 + 8))(v27, v193);
    return sub_198CC0(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F950))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v121 = v193;
    v122 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v123 = v194;
    (*(v110 + 16))(v194, v122, v121);
    v124 = sub_2CDFE0();
    v125 = sub_2CE660();
    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      *v126 = 0;
      _os_log_impl(&dword_0, v124, v125, "PlayMediaDialogProvider going to NoAcousticVersion for related follow up", v126, 2u);
    }

    (*(v110 + 8))(v123, v193);
    return sub_198F58(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F980))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v127 = v193;
    v128 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v129 = v187;
    (*(v110 + 16))(v187, v128, v127);
    v130 = sub_2CDFE0();
    v131 = sub_2CE660();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_0, v130, v131, "PlayMediaDialogProvider going to NoAlternateArtistVersion for related follow up", v132, 2u);
    }

    (*(v110 + 8))(v129, v193);
    return sub_1991E8(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F9B0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v133 = v193;
    v134 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v135 = v186;
    (*(v110 + 16))(v186, v134, v133);
    v136 = sub_2CDFE0();
    v137 = sub_2CE660();
    if (os_log_type_enabled(v136, v137))
    {
      v138 = swift_slowAlloc();
      *v138 = 0;
      _os_log_impl(&dword_0, v136, v137, "PlayMediaDialogProvider going to NoMoreResults for related follow up", v138, 2u);
    }

    (*(v110 + 8))(v135, v193);
    return sub_19950C(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32F9E0))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v139 = v193;
    v140 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v141 = v185;
    (*(v110 + 16))(v185, v140, v139);
    v142 = sub_2CDFE0();
    v143 = sub_2CE660();
    if (os_log_type_enabled(v142, v143))
    {
      v144 = swift_slowAlloc();
      *v144 = 0;
      _os_log_impl(&dword_0, v142, v143, "PlayMediaDialogProvider going to ReferencedMediaMissingMetadata for related follow up", v144, 2u);
    }

    (*(v110 + 8))(v141, v193);
    return sub_199838(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FA10))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v145 = v193;
    v146 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v147 = v184;
    (*(v110 + 16))(v184, v146, v145);
    v148 = sub_2CDFE0();
    v149 = sub_2CE660();
    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      *v150 = 0;
      _os_log_impl(&dword_0, v148, v149, "PlayMediaDialogProvider going to ExceptionSearching for related follow up", v150, 2u);
    }

    (*(v110 + 8))(v147, v193);
    return sub_199978(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FA40))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v151 = v193;
    v152 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v153 = v183;
    (*(v110 + 16))(v183, v152, v151);
    v154 = sub_2CDFE0();
    v155 = sub_2CE660();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_0, v154, v155, "PlayMediaDialogProvider going to DidntFindSpecificVersion for related follow up", v156, 2u);
    }

    (*(v110 + 8))(v153, v193);
    return sub_199AB8(v189, a5, v190, v191);
  }

  else if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FA70))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v157 = v193;
    v158 = sub_3ED0(v193, static Logger.default);
    swift_beginAccess();
    v159 = v181;
    (*(v110 + 16))(v181, v158, v157);
    v160 = sub_2CDFE0();
    v161 = sub_2CE660();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_0, v160, v161, "PlayMediaDialogProvider going to NothingPlaying for related follow up", v162, 2u);
    }

    (*(v110 + 8))(v159, v193);
    return sub_199BF8(v189, a5, v190, v191);
  }

  else
  {
    if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a5, &off_32FAA0))
    {
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v163 = v193;
      v164 = sub_3ED0(v193, static Logger.default);
      swift_beginAccess();
      (*(v192 + 16))(v182, v164, v163);
      v165 = sub_2CDFE0();
      v166 = sub_2CE660();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&dword_0, v165, v166, "PlayMediaDialogProvider showing not found for request for different related version follow up", v167, 2u);
      }

      (*(v192 + 8))(v182, v193);
      sub_20410(&unk_353120, &unk_2D0B50);
      v168 = swift_initStackObject();
      *(v168 + 16) = xmmword_2D0090;
      *(v168 + 32) = 0x79616C507369;
      v169 = v168 + 32;
      *(v168 + 40) = 0xE600000000000000;
      *(v168 + 72) = &type metadata for Bool;
      *(v168 + 48) = 1;
      v106 = sub_112C0(v168);
      swift_setDeallocating();
      sub_30B8(v169, &qword_34CBA0, &unk_2D0FE0);
      v170 = *(v188 + 120);
      v196 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v197 = &off_3381B8;
      v195[0] = a5;
      v171 = a5;
      goto LABEL_68;
    }

    v172 = v178;
    v173 = v179;
    v174 = v180;
    v175 = v189;
    v176 = v190;
    v177 = v191;

    return sub_199FB8(v172, a5, v173, v174, v175, v176, v177);
  }
}

uint64_t sub_1A0498(uint64_t a1, void *a2)
{
  v3 = sub_2CE000();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a2 code] != &dword_4 + 2)
  {
    return 0;
  }

  sub_2CCF90();
  v8 = sub_2CBE20();

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v3, static Logger.default);
  swift_beginAccess();
  (*(v4 + 16))(v7, v9, v3);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "PlayMediaDialogProvider#isNoAudioBooksToContinueError no Audio Books to continue", v12, 2u);
  }

  (*(v4 + 8))(v7, v3);
  return 1;
}

uint64_t sub_1A0698(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v7 = sub_1D05D8();
  v35 = a4;
  if (!v8)
  {
    v11 = sub_1D05D8();
    v10 = v16;
    *(inited + 72) = &type metadata for String;
    if (!v16)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(inited + 48) = v11;
    goto LABEL_10;
  }

  v9 = v7;
  v10 = v8;
  v38 = v7;
  v39 = v8;
  sub_B96A0();
  v11 = sub_2CEBD0();
  v13 = v12;
  v14 = sub_2CE320();
  result = sub_2CE320();
  if (__OFSUB__(v14, result))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v14 - result < 35 || sub_2CE320() <= 5)
  {

    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v9;
    goto LABEL_10;
  }

  v10 = v13;
  *(inited + 72) = &type metadata for String;
  if (v13)
  {
    goto LABEL_9;
  }

LABEL_6:
  *(inited + 48) = 0;
  v10 = 0xE000000000000000;
LABEL_10:
  *(inited + 56) = v10;
  *(inited + 80) = 0x747369747261;
  *(inited + 88) = 0xE600000000000000;
  v17 = sub_1D05E4();
  if (!v18)
  {
    v25 = sub_1D05E4();
    v27 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    if (v26)
    {
      v20 = v26;
      *v27 = v25;
      v28 = v36;
      v24 = a3;
LABEL_27:
      *(inited + 104) = v20;
      v31 = sub_112C0(inited);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      v32 = *(v28 + 120);
      v40 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
      v41 = &off_3381B8;
      v38 = a2;
      v33 = a2;
      sub_24CAFC(v31, a1, &v38, v24, v35);

      return sub_30B8(&v38, &qword_34C6C0, &qword_2D0710);
    }

    v24 = a3;
    goto LABEL_26;
  }

  v19 = v17;
  v20 = v18;
  v21 = sub_1D05D8();
  if (!v22)
  {
    sub_1D05D8();
    v24 = a3;
    if (!v29)
    {
LABEL_23:
      *(inited + 120) = &type metadata for String;
      *(inited + 96) = v19;
      v28 = v36;
      goto LABEL_27;
    }

    goto LABEL_21;
  }

  v38 = v21;
  v39 = v22;
  sub_B96A0();
  sub_2CEBD0();
  v23 = sub_2CE320();
  result = sub_2CE320();
  if (!__OFSUB__(v23, result))
  {
    if (v23 - result >= 35)
    {
      v24 = a3;
      sub_2CE320();
    }

    else
    {

      v24 = a3;
    }

LABEL_21:
    if (sub_2CE320() > 59)
    {
    }

    else
    {
      v38 = v19;
      v39 = v20;
      sub_B96A0();
      v30 = sub_2CEBF0();

      if ((v30 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    v27 = (inited + 96);
    *(inited + 120) = &type metadata for String;
LABEL_26:
    v28 = v36;
    *v27 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_27;
  }

LABEL_29:
  __break(1u);
  return result;
}

BOOL sub_1A0B34()
{
  v1 = v0;
  v2 = sub_2CE000();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *sub_35E0(v0 + 1, v0[4]);
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (!*(v8 + 16))
  {
    if (*v1 <= 0)
    {
      goto LABEL_4;
    }

    return sub_2CE6D0();
  }

  v9 = sub_4F538(0xD00000000000001ALL, 0x80000000002DA500);
  if ((v10 & 1) == 0)
  {

    if (*v1 < 1)
    {
      goto LABEL_4;
    }

    return sub_2CE6D0();
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (v11 < *v1)
  {
    return sub_2CE6D0();
  }

LABEL_4:
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v12 = sub_3ED0(v2, static Logger.default);
  swift_beginAccess();
  (*(v3 + 16))(v6, v12, v2);
  v13 = sub_2CDFE0();
  v14 = sub_2CE690();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, &v20);
    _os_log_impl(&dword_0, v13, v14, "DialogMemoryUseCase#%s#meetsCondition dialog occurence exceeded the dialog memory limit", v15, 0xCu);
    sub_306C(v16);
  }

  (*(v3 + 8))(v6, v2);
  return 0;
}

uint64_t sub_1A0DE4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0E40;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v11 = sub_1D05D8();
  if (v12)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0;
  }

  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE000000000000000;
  }

  *(inited + 48) = v13;
  *(inited + 56) = v14;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x747369747261;
  *(inited + 88) = 0xE600000000000000;
  v15 = sub_1D05E4();
  *(inited + 120) = &type metadata for String;
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  *(inited + 96) = v17;
  *(inited + 104) = v18;
  v19 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v20 = *(v5 + 120);
  v23[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v23[4] = &off_3381B8;
  v23[0] = a2;
  v21 = a2;
  sub_23B4FC(v19, a1, v23, a3, a4);

  return sub_30B8(v23, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A0F78(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v99 = a3;
  v100 = a4;
  v98 = a1;
  v93 = sub_2CE000();
  v91 = *(v93 - 8);
  v5 = *(v91 + 64);
  __chkstk_darwin(v93);
  v88 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2C8F00();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2C8F20();
  v90 = *(v92 - 8);
  v12 = *(v90 + 64);
  __chkstk_darwin(v92);
  v95 = &v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_2C8E30();
  v87 = *(v89 - 8);
  v14 = *(v87 + 64);
  __chkstk_darwin(v89);
  v94 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_1D15EC();
  v102 = v16;
  v17 = sub_1D05D8();
  v19 = v18;
  v97 = a2;
  v21 = sub_1D05E4();
  v22 = v20;
  if (!v19 && !v20 && !v102)
  {
    v23 = v97;
    v24 = [v97 playbackQueueLocation] == &dword_0 + 2;
    v25 = [v23 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2D0E40;
    *(inited + 32) = 0xD00000000000001BLL;
    *(inited + 40) = 0x80000000002DE780;
    *(inited + 48) = v24;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x80000000002DE7A0;
    *(inited + 120) = &type metadata for Bool;
    *(inited + 96) = v25;
    v27 = sub_112C0(inited);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v28 = *(v96 + 120);
    v104 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v105 = &off_3381B8;
    v103[0] = v23;
    v29 = v23;
    sub_23A7A4(v27, v98, v103, v99, v100);

    return sub_30B8(v103, &qword_34C6C0, &qword_2D0710);
  }

  sub_2C8E20();
  sub_2C8EF0();
  (*(v8 + 104))(v11, enum case for Calendar.Component.hour(_:), v7);
  v86 = sub_2C8F10();
  (*(v8 + 8))(v11, v7);
  sub_20410(&unk_353120, &unk_2D0B50);
  v30 = swift_initStackObject();
  v31 = v30;
  *(v30 + 16) = xmmword_2D5FB0;
  *(v30 + 32) = 0x656C746974;
  if (v19)
  {
    v32 = v17;
  }

  else
  {
    v32 = 0;
  }

  v33 = 0xE000000000000000;
  if (v19)
  {
    v34 = v19;
  }

  else
  {
    v34 = 0xE000000000000000;
  }

  *(v30 + 40) = 0xE500000000000000;
  *(v30 + 48) = v32;
  *(v30 + 56) = v34;
  *(v30 + 72) = &type metadata for String;
  *(v30 + 80) = 0x747369747261;
  if (v22)
  {
    v35 = v21;
  }

  else
  {
    v35 = 0;
  }

  if (v22)
  {
    v33 = v22;
  }

  *(v30 + 88) = 0xE600000000000000;
  *(v30 + 96) = v35;
  *(v30 + 104) = v33;
  *(v30 + 120) = &type metadata for String;
  *(v30 + 128) = 0xD000000000000016;
  *(v30 + 136) = 0x80000000002DE7E0;
  v36 = v102;
  if (v102)
  {
    v37 = sub_2CE2B0();
    v39 = v38;
    v40 = sub_2CE2B0();
    v42 = v93;
    v43 = v91;
    if (v39)
    {
      if (v37 == v40 && v39 == v41)
      {
        v44 = 1;
      }

      else
      {
        v44 = sub_2CEEA0();
      }

      *(v31 + 144) = v44 & 1;
      *(v31 + 168) = &type metadata for Bool;
      strcpy((v31 + 176), "isStoryTelling");
      *(v31 + 191) = -18;
      goto LABEL_27;
    }

    v36 = v102;
  }

  else
  {
    sub_2CE2B0();
    v42 = v93;
    v43 = v91;
  }

  *(v31 + 144) = 0;
  *(v31 + 168) = &type metadata for Bool;
  strcpy((v31 + 176), "isStoryTelling");
  *(v31 + 191) = -18;
  if (!v36)
  {
    sub_2CE2B0();
    goto LABEL_32;
  }

LABEL_27:
  v45 = sub_2CE2B0();
  v47 = v46;
  v48 = sub_2CE2B0();
  if (v47)
  {
    if (v45 == v48 && v47 == v49)
    {
      v50 = 1;
    }

    else
    {
      v50 = sub_2CEEA0();
    }

    *(v31 + 192) = v50 & 1;
    *(v31 + 216) = &type metadata for Bool;
    strcpy((v31 + 224), "isStorySleep");
    *(v31 + 237) = 0;
    *(v31 + 238) = -5120;
    v36 = v102;
    goto LABEL_36;
  }

  v36 = v102;
LABEL_32:

  *(v31 + 192) = 0;
  *(v31 + 216) = &type metadata for Bool;
  strcpy((v31 + 224), "isStorySleep");
  *(v31 + 237) = 0;
  *(v31 + 238) = -5120;
  if (!v36)
  {
    sub_2CE2B0();
    goto LABEL_41;
  }

LABEL_36:
  v51 = v36;
  v52 = sub_2CE2B0();
  v54 = v53;
  v55 = sub_2CE2B0();
  if (v54)
  {
    if (v52 == v55 && v54 == v56)
    {
      v57 = 1;
    }

    else
    {
      v57 = sub_2CEEA0();
    }

    *(v31 + 240) = v57 & 1;
    *(v31 + 264) = &type metadata for Bool;
    *(v31 + 272) = 0xD000000000000011;
    *(v31 + 280) = 0x80000000002DE800;
    v36 = v51;
    goto LABEL_45;
  }

  v36 = v51;
LABEL_41:

  *(v31 + 240) = 0;
  *(v31 + 264) = &type metadata for Bool;
  *(v31 + 272) = 0xD000000000000011;
  *(v31 + 280) = 0x80000000002DE800;
  if (!v36)
  {
    sub_2CE2B0();
    goto LABEL_50;
  }

LABEL_45:
  v58 = v36;
  v59 = sub_2CE2B0();
  v61 = v60;
  v62 = sub_2CE2B0();
  if (v61)
  {
    if (v59 == v62 && v61 == v63)
    {
      v64 = 1;
    }

    else
    {
      v64 = sub_2CEEA0();
    }

    *(v31 + 288) = v64 & 1;
    *(v31 + 312) = &type metadata for Bool;
    strcpy((v31 + 320), "isWordOfTheDay");
    *(v31 + 335) = -18;
    goto LABEL_54;
  }

  v36 = v58;
LABEL_50:

  *(v31 + 288) = 0;
  *(v31 + 312) = &type metadata for Bool;
  strcpy((v31 + 320), "isWordOfTheDay");
  *(v31 + 335) = -18;
  if (v36)
  {
LABEL_54:
    v66 = sub_2CE2B0();
    v68 = v67;

    v69 = sub_2CE2B0();
    if (v68)
    {
      if (v66 == v69 && v68 == v70)
      {

        v65 = 1;
      }

      else
      {
        v65 = sub_2CEEA0();
      }
    }

    else
    {
      v65 = 0;
    }

    goto LABEL_60;
  }

  sub_2CE2B0();
  v65 = 0;
LABEL_60:

  *(v31 + 336) = v65 & 1;
  *(v31 + 360) = &type metadata for Bool;
  *(v31 + 368) = 0x746867694E7369;
  *(v31 + 376) = 0xE700000000000000;
  v71 = (v86 - 20) < 0xFFFFFFFFFFFFFFF1;
  *(v31 + 408) = &type metadata for Bool;
  *(v31 + 384) = v71;
  v72 = sub_112C0(v31);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v73 = v88;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v74 = sub_3ED0(v42, static Logger.default);
  swift_beginAccess();
  (*(v43 + 16))(v73, v74, v42);

  v75 = sub_2CDFE0();
  v76 = sub_2CE660();

  if (os_log_type_enabled(v75, v76))
  {
    v77 = v73;
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v103[0] = v79;
    *v78 = 136315394;
    v80 = sub_2CE210();
    v82 = sub_3F08(v80, v81, v103);

    *(v78 + 4) = v82;
    *(v78 + 12) = 2048;
    *(v78 + 14) = v86;
    _os_log_impl(&dword_0, v75, v76, "PlayMediaDialogProvider#makePodcastPromotion Dialog params for podcastPromotion: %s, current time hour: %ld", v78, 0x16u);
    sub_306C(v79);

    (*(v43 + 8))(v77, v93);
  }

  else
  {

    (*(v43 + 8))(v73, v42);
  }

  v83 = *(v96 + 120);
  v104 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v105 = &off_3381B8;
  v103[0] = v97;
  v84 = v97;
  sub_23E3F4(v72, v98, v103, v99, v100);

  (*(v90 + 8))(v95, v92);
  (*(v87 + 8))(v94, v89);
  return sub_30B8(v103, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A1C48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v7 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v11 = sub_2CBF80();
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v28 = a1;
  v12 = sub_197DC8(a1, a2, (v4 + 128), v10);
  sub_30B8(v10, &qword_34DD30, &unk_2D1BC0);
  v13 = sub_1D05D8();
  v15 = v14;
  v16 = sub_2CE710();
  v17 = sub_2CE710() == 5 || sub_2CE710() == 19;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v19 = inited;
  *(inited + 32) = 0x656C746974;
  *(inited + 16) = xmmword_2D5FA0;
  v20 = 0xE000000000000000;
  if (v15)
  {
    v20 = v15;
    v21 = v13;
  }

  else
  {
    v21 = 0;
  }

  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v21;
  *(inited + 56) = v20;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6F696461527369;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = v16 == 16;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x696C79616C507369;
  *(inited + 136) = 0xEA00000000007473;
  *(inited + 144) = v17;
  *(inited + 168) = &type metadata for Bool;
  strcpy((inited + 176), "isAppSpecified");
  *(inited + 191) = -18;
  *(inited + 192) = v12 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0xD00000000000001BLL;
  *(inited + 232) = 0x80000000002DE780;
  *(inited + 240) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(v19 + 264) = &type metadata for Bool;
  *(v19 + 272) = 0xD00000000000001CLL;
  *(v19 + 280) = 0x80000000002DE7A0;
  v22 = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(v19 + 312) = &type metadata for Bool;
  *(v19 + 288) = v22;
  v23 = sub_112C0(v19);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v24 = *(v4 + 120);
  v31[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v31[4] = &off_3381B8;
  v31[0] = a2;
  v25 = a2;
  sub_23F7F8(v23, v28, v31, v29, v30);

  return sub_30B8(v31, &qword_34C6C0, &qword_2D0710);
}

void sub_1A1FBC(uint64_t a1, void *a2, uint64_t a3, id a4)
{
  v5 = v4;
  v69 = sub_1D15EC();
  v11 = v10;
  v67 = sub_1D05D8();
  v13 = v12;
  v68 = sub_1D05E4();
  v15 = v14;
  v16 = [a2 mediaItems];
  if (!v16)
  {
    v70 = _swiftEmptyArrayStorage;
    if (v13)
    {
      goto LABEL_34;
    }

    goto LABEL_31;
  }

  v17 = v16;
  v63 = v13;
  v64 = v15;
  v65 = v11;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v18 = sub_2CE410();

  v19 = v18 >> 62;
  v66 = v5;
  if (!(v18 >> 62))
  {
    v20 = *(&dword_10 + (v18 & 0xFFFFFFFFFFFFFF8));
    v21 = v20 != 0;
    if (v20 >= v21)
    {
      goto LABEL_4;
    }

LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

LABEL_47:
  v57 = sub_2CEDA0();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v20 = v57;
    v21 = v57 != 0;
    if (sub_2CEDA0() >= v21)
    {
      if (sub_2CEDA0() >= v20)
      {
LABEL_4:
        if ((v18 & 0xC000000000000001) != 0)
        {

          if (v20 >= 2)
          {
            v22 = v21;
            do
            {
              v23 = v22 + 1;
              sub_2CECC0(v22);
              v22 = v23;
            }

            while (v20 != v23);
          }
        }

        else
        {
        }

        v62 = a1;

        if (v19)
        {
          sub_2CEDB0();
          a1 = v24;
          v21 = v25;
          v27 = v26;

          v20 = v27 >> 1;
        }

        else
        {
          a1 = (v18 & 0xFFFFFFFFFFFFFF8) + 32;
        }

        swift_unknownObjectRetain();
        if (v21 == v20)
        {
          v70 = _swiftEmptyArrayStorage;
        }

        else
        {
          v70 = _swiftEmptyArrayStorage;
          v18 = &selRef_hasTwoOrMoreRooms;
          v19 = v21;
          v60 = a3;
          v61 = a4;
          do
          {
            a3 = v19;
            while (1)
            {
              if (v19 < v21 || a3 >= v20)
              {
                __break(1u);
                goto LABEL_47;
              }

              v28 = a3 + 1;
              a4 = *(a1 + 8 * a3);
              v29 = [a4 artist];
              if (v29)
              {
                break;
              }

              ++a3;
              if (v20 == v28)
              {
                a3 = v60;
                a4 = v61;
                goto LABEL_30;
              }
            }

            v30 = v29;
            v31 = sub_2CE270();
            v58 = v32;
            v59 = v31;

            v33 = v70;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v33 = sub_B90C4(0, *(v70 + 2) + 1, 1, v70);
            }

            v35 = *(v33 + 2);
            v34 = *(v33 + 3);
            if (v35 >= v34 >> 1)
            {
              v33 = sub_B90C4((v34 > 1), v35 + 1, 1, v33);
            }

            *(v33 + 2) = v35 + 1;
            v70 = v33;
            v36 = &v33[16 * v35];
            *(v36 + 4) = v59;
            *(v36 + 5) = v58;
            v19 = a3 + 1;
            v37 = v20 - 1 == a3;
            a3 = v60;
            a4 = v61;
          }

          while (!v37);
        }

LABEL_30:
        swift_unknownObjectRelease_n();
        a1 = v62;
        v11 = v65;
        v5 = v66;
        v13 = v63;
        v15 = v64;
        if (v63)
        {
          goto LABEL_34;
        }

LABEL_31:
        if (!v15 && !v11)
        {

          v38 = [a2 playbackQueueLocation] == &dword_0 + 2;
          v39 = [a2 playbackQueueLocation] == &dword_0 + 3;
          sub_20410(&unk_353120, &unk_2D0B50);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_2D0E40;
          *(inited + 32) = 0xD00000000000001BLL;
          *(inited + 40) = 0x80000000002DE780;
          *(inited + 48) = v38;
          *(inited + 72) = &type metadata for Bool;
          *(inited + 80) = 0xD00000000000001CLL;
          *(inited + 88) = 0x80000000002DE7A0;
          *(inited + 120) = &type metadata for Bool;
          *(inited + 96) = v39;
          v41 = sub_112C0(inited);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          v42 = *(v5 + 120);
          v72 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
          v73 = &off_3381B8;
          v71[0] = a2;
          v43 = a2;
          sub_23A7A4(v41, a1, v71, a3, a4);
LABEL_45:

          sub_30B8(v71, &qword_34C6C0, &qword_2D0710);
          return;
        }

LABEL_34:
        v44 = *(v70 + 2);
        sub_20410(&unk_353120, &unk_2D0B50);
        v45 = swift_initStackObject();
        v46 = v13;
        v47 = v45;
        *(v45 + 16) = xmmword_2D5F90;
        *(v45 + 32) = 0x656C746974;
        v48 = v67;
        if (!v46)
        {
          v48 = 0;
        }

        v49 = 0xE000000000000000;
        if (!v46)
        {
          v46 = 0xE000000000000000;
        }

        *(v45 + 40) = 0xE500000000000000;
        *(v45 + 48) = v48;
        *(v45 + 56) = v46;
        *(v45 + 72) = &type metadata for String;
        *(v45 + 80) = 0x6369706F74;
        v50 = v69;
        if (v11)
        {
          v51 = v11;
        }

        else
        {
          v50 = 0;
          v51 = 0xE000000000000000;
        }

        *(v45 + 88) = 0xE500000000000000;
        *(v45 + 96) = v50;
        *(v45 + 104) = v51;
        *(v45 + 120) = &type metadata for String;
        *(v45 + 128) = 0x72656469766F7270;
        v52 = v68;
        if (v15)
        {
          v49 = v15;
        }

        else
        {
          v52 = 0;
        }

        *(v45 + 136) = 0xE800000000000000;
        *(v45 + 144) = v52;
        *(v45 + 152) = v49;
        *(v45 + 168) = &type metadata for String;
        *(v45 + 176) = 0xD000000000000014;
        *(v45 + 184) = 0x80000000002DE820;
        v53 = sub_20410(&qword_353CA0, &unk_2D6090);
        v47[24] = v70;
        v47[27] = v53;
        v47[28] = 0xD00000000000001CLL;
        v47[33] = &type metadata for Int;
        v47[29] = 0x80000000002DE840;
        v47[30] = v44;
        v54 = sub_112C0(v47);
        swift_setDeallocating();
        sub_20410(&qword_34CBA0, &unk_2D0FE0);
        swift_arrayDestroy();
        v55 = *(v5 + 120);
        v72 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
        v73 = &off_3381B8;
        v71[0] = a2;
        v56 = a2;
        sub_23C274(v54, a1, v71, a3, a4);
        goto LABEL_45;
      }

      __break(1u);
    }

    goto LABEL_51;
  }

LABEL_52:
  __break(1u);
}

uint64_t sub_1A2614(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v40 = a1;
  v41 = a3;
  v42 = a4;
  v5 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v38 - v7;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 32) = 0x656C746974;
  v38[1] = inited + 32;
  *(inited + 40) = 0xE500000000000000;
  v10 = sub_2CE710();
  v11 = sub_2CE710();
  if (v10 == 7 || v11 == 8)
  {
    v12 = sub_1D05E4();
  }

  else
  {
    v12 = sub_1D05D8();
  }

  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  *(inited + 48) = v14;
  *(inited + 56) = v15;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "episodeTitle");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  v16 = sub_1D05D8();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(inited + 96) = v18;
  *(inited + 104) = v19;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0x707954616964656DLL;
  *(inited + 136) = 0xE900000000000065;
  v20 = sub_2CE710();
  *(inited + 144) = sub_1E93D4(v20);
  *(inited + 152) = v21;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x747365646C4F7369;
  *(inited + 184) = 0xE800000000000000;
  v22 = [a2 mediaSearch];
  if (v22)
  {
    v23 = v22;
    v24 = [v22 sortOrder];

    v25 = v24 == &dword_0 + 2;
  }

  else
  {
    v25 = 0;
  }

  *(inited + 192) = v25;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x74736577654E7369;
  *(inited + 232) = 0xE800000000000000;
  v26 = [a2 mediaSearch];
  if (v26)
  {
    v27 = v26;
    v28 = [v26 sortOrder];

    v29 = v28 == &dword_0 + 1;
  }

  else
  {
    v29 = 0;
  }

  *(inited + 240) = v29;
  *(inited + 264) = &type metadata for Bool;
  strcpy((inited + 272), "isAppSpecified");
  *(inited + 287) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v30 = sub_2CBF80();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
  }

  v32 = v39;
  v31 = v40;
  v33 = sub_197DC8(v40, a2, (v39 + 128), v8);
  sub_30B8(v8, &qword_34DD30, &unk_2D1BC0);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v33 & 1;
  v34 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v35 = *(v32 + 120);
  v43[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v43[4] = &off_3381B8;
  v43[0] = a2;
  v36 = a2;
  sub_23BBA8(v34, v31, v43, v41, v42);

  return sub_30B8(v43, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A29E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v28 = a3;
  v29 = a4;
  v8 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v28 - v10;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D0050;
  *(inited + 32) = 0x656C746974;
  *(inited + 40) = 0xE500000000000000;
  v13 = sub_1D05D8();
  if (v14)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  v16 = 0xE000000000000000;
  if (v14)
  {
    v16 = v14;
  }

  *(inited + 48) = v15;
  *(inited + 56) = v16;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x6F696461527369;
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = sub_2CE710() == 16;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD00000000000001BLL;
  *(inited + 136) = 0x80000000002DE780;
  *(inited + 144) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001CLL;
  *(inited + 184) = 0x80000000002DE7A0;
  *(inited + 192) = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x696C79616C507369;
  *(inited + 232) = 0xEA00000000007473;
  v17 = sub_2CE710() == 5 || sub_2CE710() == 19;
  *(inited + 240) = v17;
  *(inited + 264) = &type metadata for Bool;
  strcpy((inited + 272), "isAppSpecified");
  *(inited + 287) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v18 = sub_2CBF80();
    (*(*(v18 - 8) + 56))(v11, 1, 1, v18);
  }

  v19 = sub_197DC8(a1, a2, (v4 + 128), v11);
  sub_30B8(v11, &qword_34DD30, &unk_2D1BC0);
  *(inited + 288) = v19 & 1;
  *(inited + 312) = &type metadata for Bool;
  strcpy((inited + 320), "isPersonalized");
  *(inited + 335) = -18;
  v20 = [a2 privatePlayMediaIntentData];
  v21 = [v20 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v22.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v21)
  {
    v23 = sub_2CEB30();

    v22.super.super.isa = v21;
  }

  else
  {
    v23 = 0;
  }

  *(inited + 360) = &type metadata for Bool;
  *(inited + 336) = v23 & 1;
  v24 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v25 = *(v5 + 120);
  v30[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v30[4] = &off_3381B8;
  v30[0] = a2;
  v26 = a2;
  sub_23FEC8(v24, a1, v30, v28, v29);

  return sub_30B8(v30, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A2E08(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v41 = a5;
  v42 = a6;
  v43 = a1;
  v11 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v40 - v13;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0x656C746974;
  *(inited + 16) = xmmword_2D5FA0;
  *(inited + 40) = 0xE500000000000000;
  *(inited + 72) = &type metadata for String;
  if (a3)
  {
    v16 = a3;
  }

  else
  {
    v17 = [a4 mediaSearch];
    if (v17 && (v18 = v17, v19 = [v17 mediaName], v18, v19))
    {
      a2 = sub_2CE270();
      v16 = v20;
    }

    else
    {
      a2 = 0;
      v16 = 0xE000000000000000;
    }
  }

  *(inited + 48) = a2;
  *(inited + 56) = v16;
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x80000000002DE860;

  v21 = [a4 mediaContainer];
  if (v21 && (v22 = v21, v23 = [v21 type], v22, v23 == &dword_0 + 2))
  {
    v24 = 1;
  }

  else
  {
    v44[0] = a4;
    sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    if (sub_2CBFA0() == 2 && (v25 = [a4 mediaSearch]) != 0)
    {
      v26 = v25;
      v27 = [v25 sortOrder];

      v24 = v27 == &dword_8;
    }

    else
    {
      v24 = 0;
    }
  }

  *(inited + 96) = v24;
  *(inited + 120) = &type metadata for Bool;
  strcpy((inited + 128), "isAppSpecified");
  *(inited + 143) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v28 = sub_2CBF80();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  }

  v29 = sub_197DC8(v43, a4, (v7 + 128), v14);
  sub_30B8(v14, &qword_34DD30, &unk_2D1BC0);
  *(inited + 144) = v29 & 1;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000000002DE880;
  v30 = [a4 privatePlayMediaIntentData];
  v31 = [v30 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v32.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v31)
  {
    v33 = sub_2CEB30();

    v32.super.super.isa = v31;
  }

  else
  {
    v33 = 0;
  }

  *(inited + 192) = v33 & 1;
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 0x7478654E7369;
  *(inited + 232) = 0xE600000000000000;
  v34 = [a4 playbackQueueLocation] == &dword_0 + 2 || objc_msgSend(a4, "playbackQueueLocation") == &dword_0 + 1;
  *(inited + 240) = v34;
  *(inited + 264) = &type metadata for Bool;
  *(inited + 272) = 0x726574614C7369;
  *(inited + 280) = 0xE700000000000000;
  v35 = [a4 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v35;
  v36 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v37 = *(v7 + 120);
  v44[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v44[4] = &off_3381B8;
  v44[0] = a4;
  v38 = a4;
  sub_2412CC(v36, v43, v44, v41, v42);

  return sub_30B8(v44, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A32FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v79 = a3;
  v80 = a4;
  v8 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v69 - v10;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v12 = sub_2CBF80();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v78 = a1;
  v76 = sub_197DC8(a1, a2, (v4 + 128), v11);
  sub_30B8(v11, &qword_34DD30, &unk_2D1BC0);
  v13 = &selRef_hasTwoOrMoreRooms;
  v14 = [a2 mediaSearch];
  if (v14 && (v15 = v14, v16 = [v14 sortOrder], v15, v16 == &dword_4 + 1) || (v17 = objc_msgSend(a2, "mediaSearch")) != 0 && (v18 = v17, v19 = objc_msgSend(v17, "sortOrder"), v18, v19 == &dword_0 + 3))
  {
    v20 = sub_1D15EC();
    if (v21)
    {
      v22 = v20;
      v23 = v21;
      v24 = sub_1D05E4();
      v26 = v25;
      if (!v25)
      {
LABEL_10:
        v72 = 0;
        goto LABEL_20;
      }

LABEL_13:
      if (v22 == v24 && v23 == v26)
      {

        v72 = 0;
        v70 = 0;
        v71 = 0;
        goto LABEL_22;
      }

      v30 = sub_2CEEA0();

      v72 = 0;
      if (v30)
      {
        v70 = 0;
        v71 = 0;
LABEL_21:
        v26 = v23;
        goto LABEL_22;
      }

LABEL_20:
      v31 = sub_1D05E4();
      v70 = v32;
      v71 = v31;
      goto LABEL_21;
    }
  }

  v22 = sub_1D05D8();
  v23 = v27;
  v28 = sub_1D05E4();
  v26 = v29;
  if (v23)
  {
    v24 = v28;
    if (!v29)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (v29)
  {

    v23 = 0;
    v72 = 1;
    goto LABEL_20;
  }

  v70 = 0;
  v71 = 0;
  v72 = 1;
LABEL_22:
  v81[0] = a2;
  v74 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v33 = sub_2CBFA0();
  v34 = v33 == 1 || v33 == 18;
  v35 = !v34;
  v73 = v35;
  v36 = [a2 mediaSearch];
  v77 = v5;
  v75 = v22;
  if (v36 && (v37 = v36, v38 = [v36 artistName], v37, v38))
  {
    v69[0] = sub_2CE270();
    v40 = v39;
  }

  else
  {
    v69[0] = 0;
    v40 = 0;
  }

  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2D5FB0;
  *(inited + 32) = 0x747365427369;
  v69[1] = inited + 32;
  *(inited + 40) = 0xE600000000000000;
  v42 = [a2 mediaSearch];
  if (v42)
  {
    v43 = v42;
    v44 = [v42 genreNames];

    if (v44)
    {
      v45 = sub_2CE410();

      if (v45[2])
      {
        v46 = v45[4];
        v47 = v45[5];

        v48 = HIBYTE(v47) & 0xF;
        v34 = (v47 & 0x2000000000000000) == 0;
        v13 = &selRef_hasTwoOrMoreRooms;
        if (v34)
        {
          v48 = v46 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          goto LABEL_42;
        }
      }

      else
      {
      }
    }
  }

  v49 = [a2 v13[33]];
  if (v49)
  {
    v50 = v49;
    v51 = [v49 sortOrder];

    v52 = v51 == &dword_0 + 3;
    goto LABEL_43;
  }

LABEL_42:
  v52 = 0;
LABEL_43:
  *(inited + 48) = v52;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0x7473726F577369;
  *(inited + 88) = 0xE700000000000000;
  v53 = [a2 mediaSearch];
  if (v53)
  {
    v54 = v53;
    v55 = [v53 sortOrder];

    v56 = v55 == &dword_4;
  }

  else
  {
    v56 = 0;
  }

  *(inited + 96) = v56;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0x656C746974;
  v57 = v75;
  if (v72)
  {
    v57 = 0;
  }

  v58 = 0xE000000000000000;
  if (v72)
  {
    v59 = 0xE000000000000000;
  }

  else
  {
    v59 = v26;
  }

  *(inited + 136) = 0xE500000000000000;
  *(inited + 144) = v57;
  *(inited + 152) = v59;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0x747369747261;
  v61 = v70;
  v60 = v71;
  if (!v70)
  {
    v60 = 0;
    v61 = 0xE000000000000000;
  }

  *(inited + 184) = 0xE600000000000000;
  *(inited + 192) = v60;
  *(inited + 200) = v61;
  *(inited + 216) = &type metadata for String;
  *(inited + 224) = 0x7053747369747261;
  v62 = v69[0];
  if (v40)
  {
    v58 = v40;
  }

  else
  {
    v62 = 0;
  }

  *(inited + 232) = 0xEF64656966696365;
  *(inited + 240) = v62;
  *(inited + 248) = v58;
  *(inited + 264) = &type metadata for String;
  strcpy((inited + 272), "isAppSpecified");
  *(inited + 287) = -18;
  *(inited + 288) = v76 & 1;
  *(inited + 312) = &type metadata for Bool;
  *(inited + 320) = 0xD00000000000001BLL;
  *(inited + 328) = 0x80000000002DE780;
  *(inited + 336) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(inited + 360) = &type metadata for Bool;
  *(inited + 368) = 0xD00000000000001CLL;
  *(inited + 376) = 0x80000000002DE7A0;
  v63 = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 408) = &type metadata for Bool;
  *(inited + 384) = v63;
  v64 = sub_112C0(inited);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v65 = *(v77 + 120);
  v81[3] = v74;
  v81[4] = &off_3381B8;
  v81[0] = a2;
  if (v73)
  {
    v66 = a2;
    sub_23F14C(v64, v78, v81, v79, v80);
  }

  else
  {
    v67 = a2;
    sub_23EAA0(v64, v78, v81, v79, v80);
  }

  return sub_30B8(v81, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A39E0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v66 = a1;
  v67 = a3;
  v68 = a4;
  v5 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v60 - v7;
  v9 = sub_2CE710();
  v10 = [a2 mediaSearch];
  v64 = v8;
  if (!v10 || (v11 = v10, v12 = [v10 sortOrder], v11, v12 != &dword_4 + 1))
  {
    v13 = [a2 mediaSearch];
    if (!v13 || (v14 = v13, v15 = [v13 sortOrder], v14, v15 != &dword_0 + 3))
    {
      v20 = 0;
LABEL_18:
      v62 = v20;
      v24 = sub_1D05D8();
      v25 = v26;
      goto LABEL_19;
    }
  }

  v16 = sub_1D15EC();
  if (v17)
  {
    v18 = v16 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  v20 = 0;
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v18;
  }

  if (!v21)
  {
    goto LABEL_18;
  }

  if (v9 == 19)
  {
    goto LABEL_18;
  }

  v22 = sub_1D15EC();
  v20 = 1;
  if (!v23)
  {
    goto LABEL_18;
  }

  v24 = v22;
  v25 = v23;
  v62 = 1;
LABEL_19:
  v27 = [a2 mediaSearch];
  if (v27 && (v28 = v27, v29 = [v27 artistName], v28, v29))
  {
    v30 = sub_2CE270();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0xE000000000000000;
  }

  v33 = [a2 backingStore];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    v35 = [v34 playShuffled];
  }

  else
  {
    v35 = 0;
  }

  v36 = [a2 playbackRepeatMode];
  v63 = v9;
  if (v36 == &dword_0 + 2)
  {
    v37 = 1;
    if ((v32 & 0x2000000000000000) == 0)
    {
LABEL_28:
      v38 = v30 & 0xFFFFFFFFFFFFLL;
      goto LABEL_31;
    }
  }

  else
  {
    v37 = [a2 playbackRepeatMode] == &dword_0 + 3;
    if ((v32 & 0x2000000000000000) == 0)
    {
      goto LABEL_28;
    }
  }

  v38 = HIBYTE(v32) & 0xF;
LABEL_31:
  v39 = v38 == 0;
  v61 = v39 && v37;
  v40 = v39 & v35;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v42 = inited;
  *(inited + 16) = xmmword_2D1060;
  *(inited + 32) = 0x656C746974;
  if (v25)
  {
    v43 = v24;
  }

  else
  {
    v43 = 0;
  }

  if (v25)
  {
    v44 = v25;
  }

  else
  {
    v44 = 0xE000000000000000;
  }

  *(inited + 40) = 0xE500000000000000;
  *(inited + 48) = v43;
  *(inited + 56) = v44;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0x747369747261;
  *(inited + 88) = 0xE600000000000000;
  v45 = sub_1D05E4();
  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  if (v46)
  {
    v48 = v46;
  }

  else
  {
    v48 = 0xE000000000000000;
  }

  *(v42 + 96) = v47;
  *(v42 + 104) = v48;
  *(v42 + 120) = &type metadata for String;
  *(v42 + 128) = 0x7053747369747261;
  *(v42 + 136) = 0xEF64656966696365;
  *(v42 + 144) = v30;
  *(v42 + 152) = v32;
  *(v42 + 168) = &type metadata for String;
  *(v42 + 176) = 0xD00000000000001BLL;
  *(v42 + 184) = 0x80000000002DE780;
  *(v42 + 192) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(v42 + 216) = &type metadata for Bool;
  *(v42 + 224) = 0xD00000000000001CLL;
  *(v42 + 232) = 0x80000000002DE7A0;
  *(v42 + 240) = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(v42 + 264) = &type metadata for Bool;
  *(v42 + 272) = 0x667568536E4F7369;
  *(v42 + 280) = 0xEB00000000656C66;
  *(v42 + 288) = v40;
  *(v42 + 312) = &type metadata for Bool;
  *(v42 + 320) = 0x657065526E4F7369;
  *(v42 + 328) = 0xEA00000000007461;
  *(v42 + 336) = v61;
  *(v42 + 360) = &type metadata for Bool;
  *(v42 + 368) = 0x6E6547706F547369;
  *(v42 + 376) = 0xEA00000000006572;
  *(v42 + 384) = v62;
  *(v42 + 408) = &type metadata for Bool;
  strcpy((v42 + 416), "isUserPlaylist");
  *(v42 + 431) = -18;
  *(v42 + 432) = 0;
  *(v42 + 456) = &type metadata for Bool;
  strcpy((v42 + 464), "isAppSpecified");
  *(v42 + 479) = -18;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    v49 = v64;
    sub_2CC0B0();
  }

  else
  {
    v50 = sub_2CBF80();
    v49 = v64;
    (*(*(v50 - 8) + 56))(v64, 1, 1, v50);
  }

  v51 = v63 == 19;
  v53 = v65;
  v52 = v66;
  v54 = sub_197DC8(v66, a2, (v65 + 128), v49);
  sub_30B8(v49, &qword_34DD30, &unk_2D1BC0);
  *(v42 + 480) = v54 & 1;
  *(v42 + 504) = &type metadata for Bool;
  *(v42 + 512) = 0xD000000000000019;
  *(v42 + 520) = 0x80000000002DE900;
  *(v42 + 552) = &type metadata for Bool;
  *(v42 + 528) = v51;
  *(v42 + 560) = 0x6564616365447369;
  *(v42 + 568) = 0xEF6E6F6974617453;
  v55 = sub_1D1750();
  *(v42 + 600) = &type metadata for Bool;
  *(v42 + 576) = v55 & 1;
  v56 = sub_112C0(v42);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v57 = *(v53 + 120);
  v69[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v69[4] = &off_3381B8;
  v69[0] = a2;
  v58 = a2;
  sub_23AE50(v56, v52, v69, v67, v68);

  return sub_30B8(v69, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A4044(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v67 = a4;
  v68 = a3;
  v6 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v63 = &v61 - v8;
  v9 = sub_2C8EC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  *(inited + 32) = 0xD00000000000001BLL;
  v66 = inited + 32;
  *(inited + 16) = xmmword_2D5FB0;
  *(inited + 40) = 0x80000000002DE780;
  *(inited + 48) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000000002DE7A0;
  *(inited + 96) = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000010;
  *(inited + 136) = 0x80000000002DE8A0;
  v15 = sub_1D05D8();
  if (v16)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0;
  }

  v18 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  *(inited + 144) = v17;
  *(inited + 152) = v19;
  *(inited + 168) = &type metadata for String;
  *(inited + 176) = 0xD000000000000016;
  v65 = inited;
  *(inited + 184) = 0x80000000002DE8C0;
  v20 = sub_1D05D8();
  if (v21)
  {
    v22 = v20;
  }

  else
  {
    v22 = 0;
  }

  if (v21)
  {
    v18 = v21;
  }

  sub_2CB570();
  v23 = sub_2C8EB0();
  v25 = v24;
  (*(v10 + 8))(v13, v9);
  if (!v25)
  {
    v26 = a1;
    v27 = v22;
    v28 = v18;
    v29 = v63;
    v30 = v64;
    v31 = v68;
    goto LABEL_36;
  }

  v69 = v22;
  v70 = v18;
  if (v23 != 28261 || v25 != 0xE200000000000000)
  {
    v32 = sub_2CEEA0();

    v31 = v68;
    if (v32)
    {
      goto LABEL_18;
    }

    v26 = a1;
    v27 = v69;
    v28 = v70;
LABEL_35:
    v29 = v63;
    v30 = v64;
LABEL_36:
    v46 = v65;
    *(v65 + 192) = v27;
    *(v46 + 200) = v28;
    v47 = v46;
    *(v46 + 216) = &type metadata for String;
    *(v46 + 224) = 0xD000000000000011;
    *(v46 + 232) = 0x80000000002DE8E0;
    *(v46 + 240) = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(a2, &off_330260);
    *(v47 + 264) = &type metadata for Bool;
    strcpy((v47 + 272), "providerName");
    *(v47 + 285) = 0;
    *(v47 + 286) = -5120;
    v48 = sub_1D14A0();
    if (v49)
    {
      v50 = v48;
    }

    else
    {
      v50 = 0;
    }

    if (v49)
    {
      v51 = v49;
    }

    else
    {
      v51 = 0xE000000000000000;
    }

    *(v47 + 288) = v50;
    *(v47 + 296) = v51;
    *(v47 + 312) = &type metadata for String;
    *(v47 + 320) = 0x65726E6567;
    *(v47 + 328) = 0xE500000000000000;
    v52 = sub_1D15EC();
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    if (v53)
    {
      v55 = v53;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    *(v47 + 336) = v54;
    *(v47 + 344) = v55;
    *(v47 + 360) = &type metadata for String;
    strcpy((v47 + 368), "isAppSpecified");
    *(v47 + 383) = -18;
    sub_2CC0E0();
    if (sub_2CC0D0())
    {
      sub_2CC0B0();
    }

    else
    {
      v56 = sub_2CBF80();
      (*(*(v56 - 8) + 56))(v29, 1, 1, v56);
    }

    v57 = sub_197DC8(v26, a2, (v30 + 128), v29);
    sub_30B8(v29, &qword_34DD30, &unk_2D1BC0);
    *(v47 + 408) = &type metadata for Bool;
    *(v47 + 384) = v57 & 1;
    v58 = sub_112C0(v47);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    v59 = *(v30 + 120);
    v75[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
    v75[4] = &off_3381B8;
    v75[0] = a2;
    v60 = a2;
    sub_239FD4(v58, v26, v75, v31, v67);

    return sub_30B8(v75, &qword_34C6C0, &qword_2D0710);
  }

LABEL_18:
  v61 = a2;
  v62 = a1;
  v33 = v70;

  v35 = 0;
  v36 = v69;
  v27 = v69;
  v28 = v33;
LABEL_19:
  v38 = v27 == v36 && v28 == v33;
  v39 = 3;
  if (v35 > 3)
  {
    v39 = v35;
  }

  v40 = ~v39;
  v41 = v35 + 1;
  v42 = (&off_330210 + 2 * v35 + 5);
  while (1)
  {
    if (v41 == 4)
    {
      swift_arrayDestroy();

      v31 = v68;
      a2 = v61;
      v26 = v62;
      goto LABEL_35;
    }

    v35 = v41++;
    if (v40 + v41 == 1)
    {
      break;
    }

    v44 = *(v42 - 1);
    v43 = *v42;
    if (!v38)
    {
      v42 += 2;
      result = sub_2CEEA0();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    v36 = v69;
    v33 = v70;
    v75[0] = v69;
    v75[1] = v70;
    v73 = v44;
    v74 = v43;
    v71 = 0x33245F32245F3124;
    v72 = 0xE800000000000000;
    sub_B96A0();
    v27 = sub_2CEBD0();
    v28 = v45;

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A46BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v30 = a3;
  v31 = a4;
  v8 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v30 - v10;
  sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();
  }

  else
  {
    v12 = sub_2CBF80();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  }

  v13 = sub_197DC8(a1, a2, (v4 + 128), v11);
  sub_30B8(v11, &qword_34DD30, &unk_2D1BC0);
  v14 = sub_1D05D8();
  v16 = v15;
  sub_20410(&unk_353120, &unk_2D0B50);
  inited = swift_initStackObject();
  v18 = inited;
  *(inited + 16) = xmmword_2D5F90;
  *(inited + 32) = 0x747369747261;
  v19 = 0xE000000000000000;
  if (v16)
  {
    v19 = v16;
    v20 = v14;
  }

  else
  {
    v20 = 0;
  }

  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v20;
  *(inited + 56) = v19;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "isAppSpecified");
  *(inited + 95) = -18;
  *(inited + 96) = v13 & 1;
  *(inited + 120) = &type metadata for Bool;
  strcpy((inited + 128), "isPersonalized");
  *(inited + 143) = -18;
  v21 = [a2 privatePlayMediaIntentData];
  v22 = [v21 isPersonalizedRequest];

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v23.super.super.isa = sub_2CEB10(1).super.super.isa;
  if (v22)
  {
    v24 = sub_2CEB30();

    v23.super.super.isa = v22;
  }

  else
  {
    v24 = 0;
  }

  *(v18 + 144) = v24 & 1;
  *(v18 + 168) = &type metadata for Bool;
  *(v18 + 176) = 0xD00000000000001BLL;
  *(v18 + 184) = 0x80000000002DE780;
  *(v18 + 192) = [a2 playbackQueueLocation] == &dword_0 + 2;
  *(v18 + 216) = &type metadata for Bool;
  *(v18 + 224) = 0xD00000000000001CLL;
  *(v18 + 232) = 0x80000000002DE7A0;
  v25 = [a2 playbackQueueLocation] == &dword_0 + 3;
  *(v18 + 264) = &type metadata for Bool;
  *(v18 + 240) = v25;
  v26 = sub_112C0(v18);
  swift_setDeallocating();
  sub_20410(&qword_34CBA0, &unk_2D0FE0);
  swift_arrayDestroy();
  v27 = *(v5 + 120);
  v32[3] = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v32[4] = &off_3381B8;
  v32[0] = a2;
  v28 = a2;
  sub_240574(v26, a1, v32, v30, v31);

  return sub_30B8(v32, &qword_34C6C0, &qword_2D0710);
}

uint64_t sub_1A4A6C(int a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void), void (*a7)(char *, uint64_t), uint64_t a8)
{
  v454 = a2;
  LODWORD(v445) = a1;
  v14 = sub_20410(&qword_353C88, &unk_2D6070);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v433 = &v411 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v438 = &v411 - v18;
  v440 = sub_2CBF80();
  v447 = *(v440 - 8);
  v19 = *(v447 + 64);
  __chkstk_darwin(v440);
  v435 = &v411 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v415 = &v411 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v446 = &v411 - v25;
  v449 = sub_20410(&unk_3519A0, &qword_2D0980);
  v26 = *(*(v449 - 8) + 64);
  __chkstk_darwin(v449);
  v450 = (&v411 - v27);
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v441 = &v411 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v436 = &v411 - v34;
  v35 = __chkstk_darwin(v33);
  v423 = &v411 - v36;
  v37 = __chkstk_darwin(v35);
  v420 = &v411 - v38;
  v39 = __chkstk_darwin(v37);
  v413 = &v411 - v40;
  v41 = __chkstk_darwin(v39);
  v414 = &v411 - v42;
  v43 = __chkstk_darwin(v41);
  v416 = &v411 - v44;
  v45 = __chkstk_darwin(v43);
  v417 = &v411 - v46;
  v47 = __chkstk_darwin(v45);
  v418 = &v411 - v48;
  v49 = __chkstk_darwin(v47);
  v419 = &v411 - v50;
  v51 = __chkstk_darwin(v49);
  v421 = &v411 - v52;
  v53 = __chkstk_darwin(v51);
  v422 = &v411 - v54;
  v55 = __chkstk_darwin(v53);
  v424 = &v411 - v56;
  v57 = __chkstk_darwin(v55);
  v425 = &v411 - v58;
  v59 = __chkstk_darwin(v57);
  v427 = &v411 - v60;
  v61 = __chkstk_darwin(v59);
  v432 = &v411 - v62;
  v63 = __chkstk_darwin(v61);
  v437 = &v411 - v64;
  v65 = __chkstk_darwin(v63);
  v426 = &v411 - v66;
  v67 = __chkstk_darwin(v65);
  v428 = &v411 - v68;
  v69 = __chkstk_darwin(v67);
  v431 = &v411 - v70;
  v71 = __chkstk_darwin(v69);
  v434 = &v411 - v72;
  v73 = __chkstk_darwin(v71);
  v429 = &v411 - v74;
  v75 = __chkstk_darwin(v73);
  v439 = &v411 - v76;
  v77 = __chkstk_darwin(v75);
  v430 = &v411 - v78;
  v79 = __chkstk_darwin(v77);
  v443 = &v411 - v80;
  v81 = __chkstk_darwin(v79);
  v444 = &v411 - v82;
  __chkstk_darwin(v81);
  v84 = &v411 - v83;
  v85 = swift_allocObject();
  v85[2] = a5;
  v85[3] = a6;
  v451 = a6;
  v85[4] = a7;
  v85[5] = a8;
  v86 = v85;
  v87 = qword_34BF58;
  v448 = a5;
  v452 = a7;

  *&v453 = a8;

  if (v87 != -1)
  {
    swift_once();
  }

  v88 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  v89 = v29[2];
  v455 = v88;
  v456 = v89;
  v457 = v29 + 2;
  v89(v84, v88, v28);
  v90 = a3;
  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  v93 = os_log_type_enabled(v91, v92);
  v458 = v29;
  v459 = v28;
  v94 = a4;
  if (!v93)
  {

    v100 = v29[1];
    v100(v84, v28);
    goto LABEL_25;
  }

  v442 = v86;
  v86 = swift_slowAlloc();
  v412 = swift_slowAlloc();
  *&v461 = v412;
  *v86 = 136315394;
  v95 = [v90 privatePlayMediaIntentData];
  if (v95 && (v96 = v95, v97 = [v95 internalSignals], v96, v97))
  {
    v98 = v94;
    v99 = sub_2CE410();
  }

  else
  {
    v98 = v94;
    v99 = 0;
  }

  *&v460[0] = v99;
  v101 = sub_20410(&qword_353C98, &unk_2D6A00);
  v102 = sub_2CE2A0();
  v104 = sub_3F08(v102, v103, &v461);

  *(v86 + 4) = v104;
  *(v86 + 12) = 2080;
  v105 = [v90 mediaItems];
  if (v105)
  {
    sub_334A0(0, &qword_356F50, INMediaItem_ptr);
    v106 = sub_2CE410();

    if (v106 >> 62)
    {
      v107 = sub_2CEDA0();
    }

    else
    {
      v107 = *(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8));
    }

    v94 = v98;
    v108 = v459;
    if (!v107)
    {

LABEL_21:
      v105 = 0;
      v29 = v458;
      goto LABEL_24;
    }

    if ((v106 & 0xC000000000000001) != 0)
    {
      v109 = sub_2CECD0();
LABEL_16:
      v110 = v109;

      v111 = [v110 privateMediaItemValueData];

      if (v111)
      {
        v112 = v90;
        v113 = v94;
        v114 = [v111 internalSignals];

        if (v114)
        {
          v105 = sub_2CE410();
        }

        else
        {
          v105 = 0;
        }

        v94 = v113;
        v90 = v112;
        v29 = v458;
        v108 = v459;
        goto LABEL_24;
      }

      goto LABEL_21;
    }

    if (*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
    {
      v109 = *(v106 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_170:
    v330 = v106;
    v331 = v452;
    v442 = v86;

    v332 = [v90 mediaSearch];
    if (v332)
    {
      v333 = v332;
      v334 = [v332 sortOrder];

      if (v334 == &dword_8)
      {
        v335 = [v453 mediaSearch];
        if (v335)
        {
          v336 = v335;
          v337 = [v335 mediaName];

          if (v337)
          {

            v338 = [v453 mediaSearch];
            if (!v338 || (v339 = v338, v340 = [v338 reference], v339, v340 != &dword_0 + 1))
            {

              v456(v413, v455, v459);
              v398 = sub_2CDFE0();
              v399 = sub_2CE660();
              if (os_log_type_enabled(v398, v399))
              {
                v400 = swift_slowAlloc();
                *v400 = 0;
                _os_log_impl(&dword_0, v398, v399, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v400, 2u);
              }

              v331(v413, v459);
              sub_1A46BC(v454, v453, sub_1B7EF8, v442);
              goto LABEL_163;
            }
          }
        }
      }
    }

    v341 = &qword_330350;
    v342 = 2;
    do
    {
      v343 = v342;
      if (v342-- == 0)
      {
        break;
      }

      v345 = *v341++;
    }

    while (v345 != v446);
    v346 = [v453 mediaSearch];
    if (v346 && (v347 = v346, v348 = [v346 sortOrder], v347, v348 == &dword_0 + 3))
    {
      if (!v343)
      {
        goto LABEL_190;
      }
    }

    else
    {
      v349 = [v453 mediaSearch];
      if (!v349 || (v350 = v349, v351 = [v349 sortOrder], v350, !v343) || v351 != &dword_4)
      {
LABEL_190:
        v355 = sub_1D14A0();
        if (v356)
        {
          v357 = v355;
          v358 = v356;

          v359 = HIBYTE(v358) & 0xF;
          if ((v358 & 0x2000000000000000) == 0)
          {
            v359 = v357 & 0xFFFFFFFFFFFFLL;
          }

          v360 = v359 == 0;
        }

        else
        {
          v360 = 1;
        }

        LODWORD(v450) = v360;
        v361 = sub_1D15EC();
        if (v362)
        {
          v363 = v361 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v363 = 0;
        }

        if (v362)
        {
          v364 = v362;
        }

        else
        {
          v364 = 0xE000000000000000;
        }

        if ((v364 & 0x2000000000000000) != 0)
        {
          v365 = HIBYTE(v364) & 0xF;
        }

        else
        {
          v365 = v363;
        }

        if (v365)
        {
          v366 = sub_2CCF90();
          v368 = v367;
          v369 = sub_2CBE10();
          if (!v368)
          {

            goto LABEL_216;
          }

          if (v366 == v369 && v368 == v370)
          {
          }

          else
          {
            v371 = sub_2CEEA0();

            if ((v371 & 1) == 0)
            {
              goto LABEL_216;
            }
          }

          if (!v450 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v453, &off_330360))
          {

            v456(v414, v455, v459);
            v372 = sub_2CDFE0();
            v373 = sub_2CE660();
            if (os_log_type_enabled(v372, v373))
            {
              v374 = swift_slowAlloc();
              *v374 = 0;
              _os_log_impl(&dword_0, v372, v373, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v374, 2u);
            }

            v331(v414, v459);
            sub_1A4044(v454, v453, sub_1B7EF8, v442);
            goto LABEL_163;
          }
        }

LABEL_216:
        v375 = sub_2CE710();
        v376 = v450;
        if (v375 != 5)
        {
          v376 = (sub_2CE710() == 19) & v450;
        }

        if (sub_2CE710() == 16)
        {
          if ((v376 | v450))
          {
            goto LABEL_225;
          }
        }

        else if (v376)
        {
LABEL_225:

          v456(v416, v455, v459);
          v380 = sub_2CDFE0();
          v381 = sub_2CE660();
          if (os_log_type_enabled(v380, v381))
          {
            v382 = swift_slowAlloc();
            *v382 = 0;
            _os_log_impl(&dword_0, v380, v381, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v382, 2u);
          }

          v331(v416, v459);
          sub_1A39E0(v454, v453, sub_1B7EF8, v442);
          goto LABEL_163;
        }

        if (!v365 || (v377 = [v453 mediaSearch]) == 0 || (v378 = v377, v379 = objc_msgSend(v377, "sortOrder"), v378, v379 != &dword_4 + 1))
        {
          v383 = v450 ^ 1;
          if (v446 != &dword_0 + 3 || !v105)
          {
            goto LABEL_234;
          }

          v384 = HIBYTE(v105) & 0xF;
          if ((v105 & 0x2000000000000000) == 0)
          {
            v384 = v101 & 0xFFFFFFFFFFFFLL;
          }

          if (v384)
          {

            v385 = 0;
            v386 = 0xE000000000000000;
          }

          else
          {
LABEL_234:
            v385 = v101;
            v386 = v105;
            v101 = v330;
            v105 = v108;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v387 = swift_allocObject();
          v388 = v387;
          *(v387 + 16) = xmmword_2D5FC0;
          *(v387 + 32) = 0x656C746974;
          if (v105)
          {
            v389 = v101;
          }

          else
          {
            v389 = 0;
          }

          v390 = 0xE000000000000000;
          if (v105)
          {
            v391 = v105;
          }

          else
          {
            v391 = 0xE000000000000000;
          }

          *(v387 + 40) = 0xE500000000000000;
          *(v387 + 48) = v389;
          *(v387 + 56) = v391;
          *(v387 + 72) = &type metadata for String;
          *(v387 + 80) = 0x747369747261;
          if (v386)
          {
            v392 = v385;
          }

          else
          {
            v392 = 0;
          }

          if (v386)
          {
            v390 = v386;
          }

          *(v387 + 88) = 0xE600000000000000;
          *(v387 + 96) = v392;
          *(v387 + 104) = v390;
          *(v387 + 120) = &type metadata for String;
          *(v387 + 128) = 0x61526576694C7369;
          *(v387 + 136) = 0xEB000000006F6964;
          *(v387 + 144) = v383;
          *(v387 + 168) = &type metadata for Bool;
          *(v387 + 176) = 0xD00000000000001BLL;
          *(v387 + 184) = 0x80000000002DE780;

          v393 = v453;
          *(v388 + 192) = [v453 playbackQueueLocation] == &dword_0 + 2;
          *(v388 + 216) = &type metadata for Bool;
          *(v388 + 224) = 0xD00000000000001CLL;
          *(v388 + 232) = 0x80000000002DE7A0;
          *(v388 + 240) = [v393 playbackQueueLocation] == &dword_0 + 3;
          *(v388 + 264) = &type metadata for Bool;
          *(v388 + 272) = 0x667568536E4F7369;
          *(v388 + 280) = 0xEB00000000656C66;
          v394 = [v393 backingStore];
          objc_opt_self();
          v395 = swift_dynamicCastObjCClass();
          if (v395)
          {
            v396 = [v395 playShuffled];

            v397 = v396 & v450;
          }

          else
          {

            v397 = 0;
          }

          *(v388 + 288) = v397;
          *(v388 + 312) = &type metadata for Bool;
          *(v388 + 320) = 0x657065526E4F7369;
          *(v388 + 328) = 0xEA00000000007461;
          v401 = [v453 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v453, "playbackRepeatMode") == &dword_0 + 3;
          *(v388 + 336) = v401;
          *(v388 + 360) = &type metadata for Bool;
          strcpy((v388 + 368), "isAppSpecified");
          *(v388 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v447 + 56))(v415, 1, 1, v440);
          }

          v402 = v451;
          v403 = v454;
          v404 = v453;
          v405 = v415;
          v406 = sub_197DC8(v454, v453, (v451 + 128), v415);
          sub_30B8(v405, &qword_34DD30, &unk_2D1BC0);
          *(v388 + 384) = v406 & 1;
          *(v388 + 408) = &type metadata for Bool;
          strcpy((v388 + 416), "isPersonalized");
          *(v388 + 431) = -18;
          v407 = sub_1D16A0();
          *(v388 + 456) = &type metadata for Bool;
          *(v388 + 432) = v407 & 1;
          v408 = sub_112C0(v388);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v409 = *(v402 + 15);
          *(&v462 + 1) = v444;
          *&v463 = &off_3381B8;
          *&v461 = v404;
          v410 = v404;
          sub_239644(v408, v403, &v461, sub_1B7EF8, v442);

          sub_30B8(&v461, &qword_34C6C0, &qword_2D0710);
        }

        goto LABEL_225;
      }
    }

    v456(v417, v455, v459);
    v352 = sub_2CDFE0();
    v353 = sub_2CE660();
    if (os_log_type_enabled(v352, v353))
    {
      v354 = swift_slowAlloc();
      *v354 = 0;
      _os_log_impl(&dword_0, v352, v353, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v354, 2u);
    }

    v331(v417, v459);
    sub_1A32FC(v454, v453, sub_1B7EF8, v442);
    goto LABEL_163;
  }

  v94 = v98;
  v108 = v459;
LABEL_24:
  *&v460[0] = v105;
  v115 = sub_2CE2A0();
  v117 = sub_3F08(v115, v116, &v461);

  *(v86 + 14) = v117;
  _os_log_impl(&dword_0, v91, v92, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v86, 0x16u);
  swift_arrayDestroy();

  v100 = v29[1];
  v100(v84, v108);
  v86 = v442;
LABEL_25:
  v118 = v454;
  v119 = sub_2CCF90();
  if (!v120)
  {
    v128 = v444;
    v129 = v459;
    v456(v444, v455, v459);
    v130 = sub_2CDFE0();
    v131 = sub_2CE680();
    if (os_log_type_enabled(v130, v131))
    {
      v132 = swift_slowAlloc();
      *v132 = 0;
      _os_log_impl(&dword_0, v130, v131, "Missing app bundle identifier", v132, 2u);
    }

    v100(v128, v129);
    sub_10C40();
    v133 = swift_allocError();
    *v134 = 0xD00000000000001DLL;
    v134[1] = 0x80000000002DD6F0;
    v135 = v450;
    *v450 = v133;
    swift_storeEnumTagMultiPayload();
    sub_11E134(v135, v448, v451, v452, v453);
    v136 = &unk_3519A0;
    v137 = &qword_2D0980;
    v138 = v135;
    goto LABEL_52;
  }

  v121 = v119;
  v122 = v120;
  v123 = sub_2CCF90();
  v125 = v124;
  v126 = sub_2CBE10();
  if (v125)
  {
    if (v123 == v126 && v125 == v127)
    {

LABEL_37:

      goto LABEL_38;
    }

    v139 = sub_2CEEA0();

    if (v139)
    {
      goto LABEL_38;
    }
  }

  else
  {
  }

  if (v121 == sub_2CBE30() && v122 == v140)
  {
    goto LABEL_37;
  }

  v147 = sub_2CEEA0();

  if ((v147 & 1) == 0)
  {
    v142 = v447;
    v143 = v446;
    if (v445)
    {
      goto LABEL_42;
    }

LABEL_47:
    v144 = 0;
    goto LABEL_48;
  }

LABEL_38:
  v141 = sub_2CE830();
  if ((v445 & 1) == 0)
  {
    v142 = v447;
    v143 = v446;
    if (v141)
    {
      goto LABEL_42;
    }

    goto LABEL_47;
  }

  v142 = v447;
  v143 = v446;
  if (v141)
  {
    v144 = 1;
LABEL_48:

    v148 = v443;
    v456(v443, v455, v459);
    v149 = sub_2CDFE0();
    v150 = sub_2CE660();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 67109376;
      *(v151 + 4) = v144;
      *(v151 + 8) = 1024;
      *(v151 + 10) = v144;
      _os_log_impl(&dword_0, v149, v150, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v151, 0xEu);
    }

    v100(v148, v459);
LABEL_51:
    v152 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v153 = v450;
    *(v153 + v152) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_11E134(v153, v448, v451, v452, v453);
    v136 = &unk_3519A0;
    v137 = &qword_2D0980;
    v138 = v153;
LABEL_52:
    sub_30B8(v138, v136, v137);
  }

LABEL_42:
  *&v461 = v90;
  v145 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v446 = sub_2CBFA0();
  v445 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v146 = v440;
    if ((*(v142 + 48))(v143, 1, v440))
    {
      sub_30B8(v143, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v155 = *(v142 + 16);
      v444 = v122;
      v156 = v90;
      v157 = v94;
      v158 = v118;
      v159 = v100;
      v160 = v86;
      v161 = v435;
      v155(v435, v143, v146);
      sub_30B8(v143, &qword_34DD30, &unk_2D1BC0);
      v162 = v146;
      v163 = sub_2CBF50();
      v164 = v161;
      v86 = v160;
      v100 = v159;
      v118 = v158;
      v94 = v157;
      v90 = v156;
      (*(v142 + 8))(v164, v162);
      if (v163)
      {

        v165 = v430;
        v166 = v459;
        v456(v430, v455, v459);
        v167 = sub_2CDFE0();
        v168 = sub_2CE690();
        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          *v169 = 0;
          _os_log_impl(&dword_0, v167, v168, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v169, 2u);
        }

        v100(v165, v166);
        sub_1A0698(v118, v90, sub_1B7EF8, v86);
      }
    }
  }

  v170 = *(v94 + 160);
  sub_35E0((v94 + 128), *(v94 + 152));
  v171 = sub_2CC430();
  v444 = v145;
  if ((v171 & 1) == 0 || !sub_2CE810())
  {
    v182 = v441;
    v456(v441, v455, v459);
    v183 = sub_2CDFE0();
    v184 = sub_2CE690();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      v186 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_71;
    }

LABEL_73:
    v191 = v459;

    v100(v182, v191);
    goto LABEL_74;
  }

  v172 = v459;
  v456(v439, v455, v459);
  v173 = sub_2CDFE0();
  v174 = sub_2CE690();
  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    *v175 = 0;
    _os_log_impl(&dword_0, v173, v174, "PlayMediaDialogProvider#makePlayDialog pym enabled", v175, 2u);
    v172 = v459;
  }

  v100(v439, v172);
  if ((v446 - 1) >= 2)
  {
    v182 = v429;
    v456(v429, v455, v172);
    v183 = sub_2CDFE0();
    v214 = sub_2CE690();
    if (!os_log_type_enabled(v183, v214))
    {
      goto LABEL_73;
    }

    v215 = swift_slowAlloc();
    *v215 = 134217984;
    *(v215 + 4) = v446;
    v186 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v187 = v214;
    v188 = v183;
    v189 = v215;
    v190 = 12;
    goto LABEL_72;
  }

  v456(v434, v455, v172);
  v176 = sub_2CDFE0();
  v177 = sub_2CE690();
  if (os_log_type_enabled(v176, v177))
  {
    v178 = swift_slowAlloc();
    *v178 = 0;
    _os_log_impl(&dword_0, v176, v177, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v178, 2u);
    v172 = v459;
  }

  v100(v434, v172);
  v179 = [v90 mediaSearch];
  if (v179)
  {
    v180 = v179;
    v181 = [v179 sortOrder];

    if (v181)
    {
      v182 = v428;
      v456(v428, v455, v172);
      v183 = sub_2CDFE0();
      v184 = sub_2CE690();
      if (os_log_type_enabled(v183, v184))
      {
        v185 = swift_slowAlloc();
        *v185 = 0;
        v186 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_71:
        v187 = v184;
        v188 = v183;
        v189 = v185;
        v190 = 2;
LABEL_72:
        _os_log_impl(&dword_0, v188, v187, v186, v189, v190);

        goto LABEL_73;
      }

      goto LABEL_73;
    }
  }

  v456(v431, v455, v172);
  v216 = sub_2CDFE0();
  v217 = sub_2CE670();
  if (os_log_type_enabled(v216, v217))
  {
    v218 = swift_slowAlloc();
    *v218 = 0;
    _os_log_impl(&dword_0, v216, v217, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v218, 2u);
    v172 = v459;
  }

  v100(v431, v172);
  sub_2CBC60();
  sub_35E0(&v461, *(&v462 + 1));
  v219 = sub_2CBE50();
  sub_306C(&v461);
  if ((v219 & 1) == 0)
  {
    v220 = v100;

    v221 = v426;
    v222 = v459;
    v456(v426, v455, v459);
    v223 = sub_2CDFE0();
    v224 = sub_2CE690();
    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      *v225 = 0;
      _os_log_impl(&dword_0, v223, v224, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v225, 2u);
    }

    v220(v221, v222);
    goto LABEL_51;
  }

LABEL_74:
  sub_20410(&qword_353C90, &unk_2D6080);
  v192 = swift_allocObject();
  v453 = xmmword_2D0090;
  *(v192 + 16) = xmmword_2D0090;
  sub_EEAC(v94 + 168, v192 + 40);
  *(v192 + 32) = 4;
  sub_1B7DE4(v192 + 32, v460);
  if (sub_1A0B34())
  {
    v442 = v86;

    v461 = v460[0];
    v462 = v460[1];
    v463 = v460[2];
    v193 = *(v94 + 120);
    v194 = v436;
    v195 = v459;
    v456(v436, v455, v459);
    v196 = sub_2CDFE0();
    v197 = sub_2CE690();
    if (os_log_type_enabled(v196, v197))
    {
      v198 = swift_slowAlloc();
      v199 = swift_slowAlloc();
      *&v460[0] = v199;
      *v198 = 136315138;
      *(v198 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v460);
      _os_log_impl(&dword_0, v196, v197, "DialogMemoryUseCase#%s#execute Executing...", v198, 0xCu);
      sub_306C(v199);
    }

    v100(v194, v195);
    sub_280EB4(v118, v90, v193, sub_1B7EF8, v442);
    v200 = *sub_35E0(&v461 + 1, v463);
    sub_281390();
    sub_1B7E40(&v461);
  }

  sub_1B7E40(v460);
  swift_setDeallocating();
  sub_1B7E40(v192 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718())
  {

    v201 = [v90 privatePlayMediaIntentData];
    if (v201)
    {
      v202 = v201;
      v203 = [v201 pegasusMetaData];

      v204 = v433;
      if (v203)
      {
        v205 = sub_2C8DC0();
        v207 = v206;
      }

      else
      {
        v205 = 0;
        v207 = 0xF000000000000000;
      }
    }

    else
    {
      v205 = 0;
      v207 = 0xF000000000000000;
      v204 = v433;
    }

    v237 = v438;
    sub_2C9210();
    sub_5267C(v205, v207);
    sub_F3F4(v237, v204, &qword_353C88, &unk_2D6070);
    v238 = sub_2C9240();
    v239 = *(v238 - 8);
    if ((*(v239 + 48))(v204, 1, v238) == 1)
    {
      sub_30B8(v204, &qword_353C88, &unk_2D6070);
      v240 = 0;
      v241 = 0;
    }

    else
    {
      v242 = sub_2C9220();
      v243 = v204;
      v240 = v242;
      v241 = v244;
      (*(v239 + 8))(v243, v238);
    }

    v456(v437, v455, v459);

    v245 = sub_2CDFE0();
    v246 = sub_2CE660();

    if (os_log_type_enabled(v245, v246))
    {
      v452 = v100;
      *&v453 = v90;
      v247 = swift_slowAlloc();
      v248 = swift_slowAlloc();
      *v247 = 138412290;
      if (v241)
      {
        sub_10C40();
        swift_allocError();
        *v249 = v240;
        v249[1] = v241;
        v250 = _swift_stdlib_bridgeErrorToNSError();
        v251 = v250;
      }

      else
      {
        v250 = 0;
        v251 = 0;
      }

      v252 = v459;
      *(v247 + 4) = v250;
      *v248 = v251;
      _os_log_impl(&dword_0, v245, v246, "PlayMediaDialogProvider going to makeNlsContainer for %@", v247, 0xCu);
      sub_30B8(v248, &unk_34FC00, &unk_2D0150);

      v90 = v453;
      v100 = v452;
    }

    else
    {

      v252 = v459;
    }

    v100(v437, v252);
    sub_1A0DE4(v118, v90, sub_1B7EF8, v86);
    v136 = &qword_353C88;
    v137 = &unk_2D6070;
    v138 = v438;
    goto LABEL_52;
  }

  v208 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v208 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v90, &off_32FF90))
  {

    v209 = v432;
    v210 = v459;
    v456(v432, v455, v459);
    v211 = sub_2CDFE0();
    v212 = sub_2CE660();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = swift_slowAlloc();
      *v213 = 0;
      _os_log_impl(&dword_0, v211, v212, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v213, 2u);
    }

    v100(v209, v210);
    sub_1A0F78(v118, v90, sub_1B7EF8, v86);
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v226 = sub_2CE720();
  isa = [v226 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v228 = sub_2CEB10(0).super.super.isa;
  v229 = sub_2CEB30();

  if ((v229 & 1) == 0)
  {

    v253 = v427;
    v254 = v459;
    v456(v427, v455, v459);
    v255 = sub_2CDFE0();
    v256 = sub_2CE660();
    v257 = os_log_type_enabled(v255, v256);
    v258 = v444;
    if (v257)
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_0, v255, v256, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v259, 2u);
      v253 = v427;
    }

    v100(v253, v254);
    v260 = sub_112C0(_swiftEmptyArrayStorage);
    v261 = *(v94 + 120);
    *(&v462 + 1) = v258;
    *&v463 = &off_3381B8;
    *&v461 = v90;
    v262 = v90;
    sub_240C20(v260, v118, &v461, sub_1B7EF8, v86);
    goto LABEL_117;
  }

  v230 = sub_1D0CF0();
  v231 = v444;
  if (v230)
  {

    v232 = v425;
    v233 = v459;
    v456(v425, v455, v459);
    v234 = sub_2CDFE0();
    v235 = sub_2CE660();
    if (os_log_type_enabled(v234, v235))
    {
      v236 = swift_slowAlloc();
      *v236 = 0;
      _os_log_impl(&dword_0, v234, v235, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v236, 2u);
    }

    v100(v232, v233);
    sub_1A1C48(v118, v90, sub_1B7EF8, v86);
  }

  v452 = v100;
  v451 = v94;
  v106 = sub_1D1060();
  v108 = v263;
  v101 = sub_1D119C();
  v105 = v264;
  v265 = sub_2CE8E0() && sub_2CE840();
  if (!(v108 | v105))
  {
    v266 = [v90 mediaSearch];
    if (v266)
    {
      v267 = v266;
      v268 = v90;
      v269 = [v266 reference];

      v270 = v269 == &dword_0 + 1;
      v90 = v268;
      v231 = v444;
      v271 = v270;
      if ((v271 | v265))
      {
        goto LABEL_127;
      }
    }

    else if (v265)
    {
      goto LABEL_127;
    }

    v301 = v423;
    v302 = v459;
    v456(v423, v455, v459);
    v303 = sub_2CDFE0();
    v304 = sub_2CE660();
    if (os_log_type_enabled(v303, v304))
    {
      v305 = swift_slowAlloc();
      *v305 = 0;
      _os_log_impl(&dword_0, v303, v304, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v305, 2u);
    }

    v452(v301, v302);
    v306 = [v90 playbackQueueLocation] == &dword_0 + 2;
    v307 = [v90 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v308 = swift_allocObject();
    *(v308 + 32) = 0xD00000000000001BLL;
    *(v308 + 40) = 0x80000000002DE780;
    *(v308 + 16) = xmmword_2D0E40;
    *(v308 + 48) = v306;
    *(v308 + 72) = &type metadata for Bool;
    *(v308 + 80) = 0xD00000000000001CLL;
    *(v308 + 88) = 0x80000000002DE7A0;
    *(v308 + 120) = &type metadata for Bool;
    *(v308 + 96) = v307;
    v309 = sub_112C0(v308);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v310 = *(v451 + 15);
    *(&v462 + 1) = v231;
    *&v463 = &off_3381B8;
    *&v461 = v90;
    v311 = v90;
    sub_23A7A4(v309, v454, &v461, sub_1B7EF8, v86);

    goto LABEL_117;
  }

LABEL_127:
  sub_1D04A0();
  if (v272)
  {

    v273 = v424;
    v274 = v459;
    v456(v424, v455, v459);
    v275 = sub_2CDFE0();
    v276 = sub_2CE660();
    if (os_log_type_enabled(v275, v276))
    {
      v277 = swift_slowAlloc();
      *v277 = 0;
      _os_log_impl(&dword_0, v275, v276, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v277, 2u);
      v274 = v459;
    }

    v452(v273, v274);
    v278 = sub_1D05E4();
    v280 = v279;
    sub_20410(&unk_353120, &unk_2D0B50);
    v281 = swift_allocObject();
    *(v281 + 16) = v453;
    *(v281 + 32) = 0xD000000000000016;
    v282 = v281 + 32;
    *(v281 + 72) = &type metadata for String;
    if (v280)
    {
      v283 = v278;
    }

    else
    {
      v283 = 0;
    }

    v284 = 0xE000000000000000;
    if (v280)
    {
      v284 = v280;
    }

    *(v281 + 40) = 0x80000000002DE7C0;
    *(v281 + 48) = v283;
    *(v281 + 56) = v284;
    v285 = sub_112C0(v281);
    swift_setDeallocating();
    sub_30B8(v282, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    v286 = *(v451 + 15);
    *(&v462 + 1) = v444;
    *&v463 = &off_3381B8;
    *&v461 = v90;
    v287 = v90;
    sub_23C944(v285, v454, &v461, sub_1B7EF8, v86);

LABEL_117:

    v136 = &qword_34C6C0;
    v137 = &qword_2D0710;
    v138 = &v461;
    goto LABEL_52;
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v90, &off_330290) && v446 == &dword_4 + 2)
  {

    v288 = v422;
    v289 = v459;
    v456(v422, v455, v459);
    v290 = sub_2CDFE0();
    v291 = sub_2CE660();
    if (os_log_type_enabled(v290, v291))
    {
      v292 = swift_slowAlloc();
      *v292 = 0;
      _os_log_impl(&dword_0, v290, v291, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v292, 2u);
      v289 = v459;
    }

    v452(v288, v289);
    sub_1A1FBC(v454, v90, sub_1B7EF8, v86);
LABEL_163:
  }

  v293 = &qword_3302E0;
  v294 = 4;
  while (v294)
  {
    v295 = *v293++;
    --v294;
    if (v295 == v446)
    {

      v296 = v421;
      v297 = v459;
      v456(v421, v455, v459);
      v298 = sub_2CDFE0();
      v299 = sub_2CE660();
      if (os_log_type_enabled(v298, v299))
      {
        v300 = swift_slowAlloc();
        *v300 = 0;
        _os_log_impl(&dword_0, v298, v299, "PlayMediaDialogProvider going to makePodcast", v300, 2u);
        v297 = v459;
      }

      v452(v296, v297);
      sub_1A2614(v454, v90, sub_1B7EF8, v86);
      goto LABEL_163;
    }
  }

  *&v453 = v90;
  v312 = sub_1D2364(&off_330300);
  v90 = v453;
  sub_F1954(&unk_330320);
  if (v312)
  {
    v313 = [v90 mediaSearch];
    if (!v313 || (v314 = v313, v315 = [v313 sortOrder], v314, v270 = v315 == &dword_0 + 1, v90 = v453, !v270))
    {

      v321 = v420;
      v322 = v459;
      v456(v420, v455, v459);
      v323 = sub_2CDFE0();
      v324 = sub_2CE660();
      if (os_log_type_enabled(v323, v324))
      {
        v325 = swift_slowAlloc();
        *v325 = 0;
        _os_log_impl(&dword_0, v323, v324, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v325, 2u);
        v322 = v459;
      }

      v452(v321, v322);
      sub_1A1C48(v454, v90, sub_1B7EF8, v86);
      goto LABEL_163;
    }
  }

  if (sub_1D1380())
  {

    v316 = v419;
    v317 = v459;
    v456(v419, v455, v459);
    v318 = sub_2CDFE0();
    v319 = sub_2CE660();
    if (os_log_type_enabled(v318, v319))
    {
      v320 = swift_slowAlloc();
      *v320 = 0;
      _os_log_impl(&dword_0, v318, v319, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v320, 2u);
      v317 = v459;
    }

    v452(v316, v317);
    sub_1A29E8(v454, v90, sub_1B7EF8, v86);
    goto LABEL_163;
  }

  if (!sub_2CE890() && !v265)
  {
    goto LABEL_170;
  }

  v326 = v418;
  v456(v418, v455, v459);
  v327 = sub_2CDFE0();
  v328 = sub_2CE660();
  if (os_log_type_enabled(v327, v328))
  {
    v329 = swift_slowAlloc();
    *v329 = 0;
    _os_log_impl(&dword_0, v327, v328, "PlayMediaDialogProvider going to makeCreateRadio", v329, 2u);
  }

  v452(v326, v459);
  sub_1A2E08(v454, v106, v108, v90, sub_1B7EF8, v86);
}

uint64_t sub_1A8030(int a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void *a7, void (*a8)(__int128 *), uint64_t a9, void (*a10)(char *, uint64_t))
{
  v429 = a4;
  *&v439 = a3;
  v444 = a2;
  LODWORD(v427) = a1;
  v14 = sub_20410(&qword_353C88, &unk_2D6070);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v416 = &v395 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v421 = &v395 - v18;
  v423 = sub_2CBF80();
  v428 = *(v423 - 8);
  v19 = *(v428 + 64);
  __chkstk_darwin(v423);
  v417 = &v395 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v22 = *(*(v21 - 8) + 64);
  v23 = __chkstk_darwin(v21 - 8);
  v397 = &v395 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v422 = &v395 - v25;
  v431 = sub_20410(&unk_3519A0, &qword_2D0980);
  v26 = *(*(v431 - 8) + 64);
  __chkstk_darwin(v431);
  v432 = (&v395 - v27);
  v28 = sub_2CE000();
  v29 = *(v28 - 8);
  v30 = v29[8];
  v31 = __chkstk_darwin(v28);
  v424 = &v395 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __chkstk_darwin(v31);
  v419 = &v395 - v34;
  v35 = __chkstk_darwin(v33);
  v405 = &v395 - v36;
  v37 = __chkstk_darwin(v35);
  v402 = &v395 - v38;
  v39 = __chkstk_darwin(v37);
  v395 = &v395 - v40;
  v41 = __chkstk_darwin(v39);
  v396 = &v395 - v42;
  v43 = __chkstk_darwin(v41);
  v398 = &v395 - v44;
  v45 = __chkstk_darwin(v43);
  v399 = &v395 - v46;
  v47 = __chkstk_darwin(v45);
  v400 = &v395 - v48;
  v49 = __chkstk_darwin(v47);
  v401 = &v395 - v50;
  v51 = __chkstk_darwin(v49);
  v403 = &v395 - v52;
  v53 = __chkstk_darwin(v51);
  v404 = &v395 - v54;
  v55 = __chkstk_darwin(v53);
  v406 = &v395 - v56;
  v57 = __chkstk_darwin(v55);
  v407 = &v395 - v58;
  v59 = __chkstk_darwin(v57);
  v409 = &v395 - v60;
  v61 = __chkstk_darwin(v59);
  v414 = &v395 - v62;
  v63 = __chkstk_darwin(v61);
  v420 = &v395 - v64;
  v65 = __chkstk_darwin(v63);
  v408 = &v395 - v66;
  v67 = __chkstk_darwin(v65);
  v410 = &v395 - v68;
  v69 = __chkstk_darwin(v67);
  v413 = &v395 - v70;
  v71 = __chkstk_darwin(v69);
  v415 = &v395 - v72;
  v73 = __chkstk_darwin(v71);
  v411 = &v395 - v74;
  v75 = __chkstk_darwin(v73);
  v418 = &v395 - v76;
  v77 = __chkstk_darwin(v75);
  v412 = &v395 - v78;
  v79 = __chkstk_darwin(v77);
  v425 = &v395 - v80;
  v81 = __chkstk_darwin(v79);
  v426 = &v395 - v82;
  __chkstk_darwin(v81);
  v84 = &v395 - v83;
  v85 = swift_allocObject();
  v85[2] = a5;
  v85[3] = a6;
  v85[4] = a7;
  v85[5] = a8;
  v437 = a8;
  v85[6] = a9;
  v85[7] = a10;
  v86 = v85;
  v87 = qword_34BF58;
  v433 = a5;

  v434 = a6;

  v430 = a7;
  v435 = a9;

  v436 = a10;

  if (v87 != -1)
  {
    swift_once();
  }

  v88 = sub_3ED0(v28, static Logger.default);
  swift_beginAccess();
  v89 = v29[2];
  v440 = v88;
  v441 = v89;
  v442 = v29 + 2;
  v89(v84, v88, v28);
  v90 = v439;
  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  v93 = os_log_type_enabled(v91, v92);
  v438 = v86;
  v443 = v29;
  if (!v93)
  {

    v101 = v29[1];
    v94 = v28;
    v101(v84, v28);
    goto LABEL_22;
  }

  v94 = v28;
  v95 = v90;
  v96 = swift_slowAlloc();
  *&v446 = swift_slowAlloc();
  *v96 = 136315394;
  *&v439 = v95;
  v97 = [v95 privatePlayMediaIntentData];
  if (v97 && (v98 = v97, v99 = [v97 internalSignals], v98, v99))
  {
    v100 = sub_2CE410();
  }

  else
  {
    v100 = 0;
  }

  *&v445[0] = v100;
  sub_20410(&qword_353C98, &unk_2D6A00);
  v102 = sub_2CE2A0();
  v104 = sub_3F08(v102, v103, &v446);

  *(v96 + 4) = v104;
  *(v96 + 12) = 2080;
  v105 = [v439 mediaItems];
  if (!v105)
  {
    goto LABEL_20;
  }

  v106 = v105;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v107 = sub_2CE410();

  if (!(v107 >> 62))
  {
    if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_12;
    }

LABEL_19:

    goto LABEL_20;
  }

  if (!sub_2CEDA0())
  {
    goto LABEL_19;
  }

LABEL_12:
  if ((v107 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v107 & 0xFFFFFFFFFFFFFF8)))
    {
      v108 = *(v107 + 32);
      goto LABEL_15;
    }

    __break(1u);
LABEL_163:
    v314 = v92;
    v315 = v436;

    v316 = [v439 mediaSearch];
    if (v316)
    {
      v317 = v316;
      v318 = [v316 sortOrder];

      if (v318 == &dword_8)
      {
        v319 = [v439 mediaSearch];
        if (v319)
        {
          v320 = v319;
          v321 = [v319 mediaName];

          if (v321)
          {

            v322 = [v439 mediaSearch];
            if (!v322 || (v323 = v322, v324 = [v322 reference], v323, v324 != &dword_0 + 1))
            {

              v441(v395, v440, v437);
              v382 = sub_2CDFE0();
              v383 = sub_2CE660();
              if (os_log_type_enabled(v382, v383))
              {
                v384 = swift_slowAlloc();
                *v384 = 0;
                _os_log_impl(&dword_0, v382, v383, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v384, 2u);
              }

              v315(v395, v437);
              sub_1A46BC(v444, v439, sub_1B7F04, v438);
              goto LABEL_156;
            }
          }
        }
      }
    }

    v325 = &qword_330570;
    v326 = 2;
    do
    {
      v327 = v326;
      if (v326-- == 0)
      {
        break;
      }

      v329 = *v325++;
    }

    while (v329 != v427);
    v330 = [v439 mediaSearch];
    if (v330 && (v331 = v330, v332 = [v330 sortOrder], v331, v332 == &dword_0 + 3))
    {
      if (!v327)
      {
        goto LABEL_183;
      }
    }

    else
    {
      v333 = [v439 mediaSearch];
      if (!v333 || (v334 = v333, v335 = [v333 sortOrder], v334, !v327) || v335 != &dword_4)
      {
LABEL_183:
        v339 = sub_1D14A0();
        if (v340)
        {
          v341 = v339;
          v342 = v340;

          v343 = HIBYTE(v342) & 0xF;
          if ((v342 & 0x2000000000000000) == 0)
          {
            v343 = v341 & 0xFFFFFFFFFFFFLL;
          }

          v344 = v343 == 0;
        }

        else
        {
          v344 = 1;
        }

        LODWORD(v435) = v344;
        v345 = sub_1D15EC();
        if (v346)
        {
          v347 = v345 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v347 = 0;
        }

        if (v346)
        {
          v348 = v346;
        }

        else
        {
          v348 = 0xE000000000000000;
        }

        if ((v348 & 0x2000000000000000) != 0)
        {
          v349 = HIBYTE(v348) & 0xF;
        }

        else
        {
          v349 = v347;
        }

        if (v349)
        {
          v350 = sub_2CCF90();
          v352 = v351;
          v353 = sub_2CBE10();
          if (!v352)
          {

            goto LABEL_209;
          }

          if (v350 == v353 && v352 == v354)
          {
          }

          else
          {
            v355 = sub_2CEEA0();

            if ((v355 & 1) == 0)
            {
              goto LABEL_209;
            }
          }

          if (!v435 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v439, &off_330580))
          {

            v441(v396, v440, v437);
            v356 = sub_2CDFE0();
            v357 = sub_2CE660();
            if (os_log_type_enabled(v356, v357))
            {
              v358 = swift_slowAlloc();
              *v358 = 0;
              _os_log_impl(&dword_0, v356, v357, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v358, 2u);
            }

            v315(v396, v437);
            sub_1A4044(v444, v439, sub_1B7F04, v438);
            goto LABEL_156;
          }
        }

LABEL_209:
        v359 = sub_2CE710();
        v360 = v435;
        if (v359 != 5)
        {
          v360 = (sub_2CE710() == 19) & v435;
        }

        if (sub_2CE710() == 16)
        {
          if ((v360 | v435))
          {
            goto LABEL_218;
          }
        }

        else if (v360)
        {
LABEL_218:

          v441(v398, v440, v437);
          v364 = sub_2CDFE0();
          v365 = sub_2CE660();
          if (os_log_type_enabled(v364, v365))
          {
            v366 = swift_slowAlloc();
            *v366 = 0;
            _os_log_impl(&dword_0, v364, v365, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v366, 2u);
          }

          v315(v398, v437);
          sub_1A39E0(v444, v439, sub_1B7F04, v438);
          goto LABEL_156;
        }

        if (!v349 || (v361 = [v439 mediaSearch]) == 0 || (v362 = v361, v363 = objc_msgSend(v361, "sortOrder"), v362, v363 != &dword_4 + 1))
        {
          v367 = v435 ^ 1;
          if (v427 != 3 || !a5)
          {
            goto LABEL_227;
          }

          v368 = HIBYTE(a5) & 0xF;
          if ((a5 & 0x2000000000000000) == 0)
          {
            v368 = v96 & 0xFFFFFFFFFFFFLL;
          }

          if (v368)
          {

            v369 = 0;
            v370 = 0xE000000000000000;
          }

          else
          {
LABEL_227:
            v369 = v96;
            v370 = a5;
            v96 = v314;
            a5 = v107;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v371 = swift_allocObject();
          v372 = v371;
          *(v371 + 16) = xmmword_2D5FC0;
          *(v371 + 32) = 0x656C746974;
          if (a5)
          {
            v373 = v96;
          }

          else
          {
            v373 = 0;
          }

          v374 = 0xE000000000000000;
          if (a5)
          {
            v375 = a5;
          }

          else
          {
            v375 = 0xE000000000000000;
          }

          *(v371 + 40) = 0xE500000000000000;
          *(v371 + 48) = v373;
          *(v371 + 56) = v375;
          *(v371 + 72) = &type metadata for String;
          *(v371 + 80) = 0x747369747261;
          if (v370)
          {
            v376 = v369;
          }

          else
          {
            v376 = 0;
          }

          if (v370)
          {
            v374 = v370;
          }

          *(v371 + 88) = 0xE600000000000000;
          *(v371 + 96) = v376;
          *(v371 + 104) = v374;
          *(v371 + 120) = &type metadata for String;
          *(v371 + 128) = 0x61526576694C7369;
          *(v371 + 136) = 0xEB000000006F6964;
          *(v371 + 144) = v367;
          *(v371 + 168) = &type metadata for Bool;
          *(v371 + 176) = 0xD00000000000001BLL;
          *(v371 + 184) = 0x80000000002DE780;

          v377 = v439;
          *(v372 + 192) = [v439 playbackQueueLocation] == &dword_0 + 2;
          *(v372 + 216) = &type metadata for Bool;
          *(v372 + 224) = 0xD00000000000001CLL;
          *(v372 + 232) = 0x80000000002DE7A0;
          *(v372 + 240) = [v377 playbackQueueLocation] == &dword_0 + 3;
          *(v372 + 264) = &type metadata for Bool;
          *(v372 + 272) = 0x667568536E4F7369;
          *(v372 + 280) = 0xEB00000000656C66;
          v378 = [v377 backingStore];
          objc_opt_self();
          v379 = swift_dynamicCastObjCClass();
          if (v379)
          {
            v380 = [v379 playShuffled];

            v381 = v380 & v435;
          }

          else
          {

            v381 = 0;
          }

          *(v372 + 288) = v381;
          *(v372 + 312) = &type metadata for Bool;
          *(v372 + 320) = 0x657065526E4F7369;
          *(v372 + 328) = 0xEA00000000007461;
          v385 = [v439 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v439, "playbackRepeatMode") == &dword_0 + 3;
          *(v372 + 336) = v385;
          *(v372 + 360) = &type metadata for Bool;
          strcpy((v372 + 368), "isAppSpecified");
          *(v372 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v428 + 56))(v397, 1, 1, v423);
          }

          v386 = v429;
          v387 = v444;
          v388 = v439;
          v389 = v397;
          v390 = sub_197DC8(v444, v439, (v429 + 128), v397);
          sub_30B8(v389, &qword_34DD30, &unk_2D1BC0);
          *(v372 + 384) = v390 & 1;
          *(v372 + 408) = &type metadata for Bool;
          strcpy((v372 + 416), "isPersonalized");
          *(v372 + 431) = -18;
          v391 = sub_1D16A0();
          *(v372 + 456) = &type metadata for Bool;
          *(v372 + 432) = v391 & 1;
          v392 = sub_112C0(v372);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v393 = *(v386 + 120);
          *(&v447 + 1) = v426;
          *&v448 = &off_3381B8;
          *&v446 = v388;
          v394 = v388;
          sub_239644(v392, v387, &v446, sub_1B7F04, v438);

          goto LABEL_130;
        }

        goto LABEL_218;
      }
    }

    v441(v399, v440, v437);
    v336 = sub_2CDFE0();
    v337 = sub_2CE660();
    if (os_log_type_enabled(v336, v337))
    {
      v338 = swift_slowAlloc();
      *v338 = 0;
      _os_log_impl(&dword_0, v336, v337, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v338, 2u);
    }

    v315(v399, v437);
    sub_1A32FC(v444, v439, sub_1B7F04, v438);
    goto LABEL_156;
  }

  v108 = sub_2CECD0();
LABEL_15:
  v109 = v108;

  v110 = [v109 privateMediaItemValueData];

  if (v110)
  {
    v111 = [v110 internalSignals];

    if (v111)
    {
      v110 = sub_2CE410();

      goto LABEL_21;
    }

LABEL_20:
    v110 = 0;
  }

LABEL_21:
  *&v445[0] = v110;
  v112 = sub_2CE2A0();
  v114 = sub_3F08(v112, v113, &v446);

  *(v96 + 14) = v114;
  _os_log_impl(&dword_0, v91, v92, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v96, 0x16u);
  swift_arrayDestroy();

  v101 = v443[1];
  v101(v84, v28);
  v90 = v439;
LABEL_22:
  v115 = sub_2CCF90();
  if (!v116)
  {
    v124 = v426;
    v441(v426, v440, v94);
    v125 = sub_2CDFE0();
    v126 = sub_2CE680();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      *v127 = 0;
      _os_log_impl(&dword_0, v125, v126, "Missing app bundle identifier", v127, 2u);
    }

    v101(v124, v94);
    sub_10C40();
    v128 = swift_allocError();
    *v129 = 0xD00000000000001DLL;
    v129[1] = 0x80000000002DD6F0;
    v130 = v432;
    *v432 = v128;
    swift_storeEnumTagMultiPayload();
    sub_291AC8(v130, v433, v434, v430, v437, v435, v436);
    v131 = &unk_3519A0;
    v132 = &qword_2D0980;
    v133 = v130;
    goto LABEL_49;
  }

  v117 = v115;
  v118 = v116;
  v119 = sub_2CCF90();
  v121 = v120;
  v122 = sub_2CBE10();
  if (v121)
  {
    if (v119 == v122 && v121 == v123)
    {

LABEL_34:

      goto LABEL_35;
    }

    v134 = sub_2CEEA0();

    if (v134)
    {
      goto LABEL_35;
    }
  }

  else
  {
  }

  if (v117 == sub_2CBE30() && v118 == v135)
  {
    goto LABEL_34;
  }

  v142 = sub_2CEEA0();

  if ((v142 & 1) == 0)
  {
    v137 = v94;
    v138 = v428;
    if (v427)
    {
      goto LABEL_39;
    }

LABEL_44:
    v139 = 0;
    goto LABEL_45;
  }

LABEL_35:
  v136 = sub_2CE830();
  if ((v427 & 1) == 0)
  {
    v137 = v94;
    v138 = v428;
    if (v136)
    {
      goto LABEL_39;
    }

    goto LABEL_44;
  }

  v137 = v94;
  v138 = v428;
  if (v136)
  {
    v139 = 1;
LABEL_45:

    v143 = v425;
    v441(v425, v440, v137);
    v144 = sub_2CDFE0();
    v145 = sub_2CE660();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 67109376;
      *(v146 + 4) = v139;
      *(v146 + 8) = 1024;
      *(v146 + 10) = v139;
      _os_log_impl(&dword_0, v144, v145, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v146, 0xEu);
    }

    v101(v143, v137);
LABEL_48:
    v147 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v148 = v432;
    *(v148 + v147) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_291AC8(v148, v433, v434, v430, v437, v435, v436);
    v131 = &unk_3519A0;
    v132 = &qword_2D0980;
    v133 = v148;
LABEL_49:
    sub_30B8(v133, v131, v132);
  }

LABEL_39:
  *&v446 = v90;
  v426 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v427 = sub_2CBFA0();
  v425 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    v140 = v422;
    sub_2CC0B0();

    v141 = v423;
    if ((*(v138 + 48))(v140, 1, v423))
    {
      sub_30B8(v140, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v150 = v417;
      (*(v138 + 16))(v417, v140, v141);
      sub_30B8(v140, &qword_34DD30, &unk_2D1BC0);
      v151 = v141;
      v152 = sub_2CBF50();
      (*(v138 + 8))(v150, v151);
      if (v152)
      {

        v153 = v412;
        v441(v412, v440, v137);
        v154 = sub_2CDFE0();
        v155 = sub_2CE690();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&dword_0, v154, v155, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v156, 2u);
        }

        v101(v153, v137);
        sub_1A0698(v444, v90, sub_1B7F04, v438);
      }
    }
  }

  v157 = *(v429 + 160);
  sub_35E0((v429 + 128), *(v429 + 152));
  if ((sub_2CC430() & 1) == 0 || !sub_2CE810())
  {
    v170 = v424;
    v441(v424, v440, v137);
    v171 = sub_2CDFE0();
    v179 = sub_2CE690();
    if (!os_log_type_enabled(v171, v179))
    {
LABEL_69:

      v159 = v137;
      v101(v170, v137);
      goto LABEL_70;
    }

    v180 = swift_slowAlloc();
    *v180 = 0;
    _os_log_impl(&dword_0, v171, v179, "PlayMediaDialogProvider#makePlayDialog pym not enabled", v180, 2u);
LABEL_68:

    goto LABEL_69;
  }

  v158 = v418;
  v159 = v137;
  v441(v418, v440, v137);
  v160 = sub_2CDFE0();
  v161 = sub_2CE690();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&dword_0, v160, v161, "PlayMediaDialogProvider#makePlayDialog pym enabled", v162, 2u);
    v158 = v418;
  }

  v101(v158, v137);
  if ((v427 - 1) >= 2)
  {
    v170 = v411;
    v441(v411, v440, v137);
    v171 = sub_2CDFE0();
    v202 = sub_2CE690();
    if (!os_log_type_enabled(v171, v202))
    {
      goto LABEL_69;
    }

    v203 = swift_slowAlloc();
    *v203 = 134217984;
    *(v203 + 4) = v427;
    v174 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v175 = v202;
    v176 = v171;
    v177 = v203;
    v178 = 12;
LABEL_85:
    _os_log_impl(&dword_0, v176, v175, v174, v177, v178);
    goto LABEL_68;
  }

  v163 = v415;
  v441(v415, v440, v137);
  v164 = sub_2CDFE0();
  v165 = sub_2CE690();
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    *v166 = 0;
    _os_log_impl(&dword_0, v164, v165, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v166, 2u);
    v163 = v415;
  }

  v101(v163, v137);
  v167 = [v90 mediaSearch];
  if (v167)
  {
    v168 = v167;
    v169 = [v167 sortOrder];

    if (v169)
    {
      v170 = v410;
      v441(v410, v440, v137);
      v171 = sub_2CDFE0();
      v172 = sub_2CE690();
      if (!os_log_type_enabled(v171, v172))
      {
        goto LABEL_69;
      }

      v173 = swift_slowAlloc();
      *v173 = 0;
      v174 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
      v175 = v172;
      v176 = v171;
      v177 = v173;
      v178 = 2;
      goto LABEL_85;
    }
  }

  v441(v413, v440, v137);
  v204 = sub_2CDFE0();
  v205 = sub_2CE670();
  if (os_log_type_enabled(v204, v205))
  {
    v206 = swift_slowAlloc();
    *v206 = 0;
    _os_log_impl(&dword_0, v204, v205, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v206, 2u);
  }

  v101(v413, v137);
  sub_2CBC60();
  sub_35E0(&v446, *(&v447 + 1));
  v207 = sub_2CBE50();
  sub_306C(&v446);
  if ((v207 & 1) == 0)
  {

    v208 = v408;
    v441(v408, v440, v137);
    v209 = sub_2CDFE0();
    v210 = sub_2CE690();
    if (os_log_type_enabled(v209, v210))
    {
      v211 = swift_slowAlloc();
      *v211 = 0;
      _os_log_impl(&dword_0, v209, v210, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v211, 2u);
    }

    v101(v208, v137);
    goto LABEL_48;
  }

LABEL_70:
  sub_20410(&qword_353C90, &unk_2D6080);
  v181 = swift_allocObject();
  v439 = xmmword_2D0090;
  *(v181 + 16) = xmmword_2D0090;
  v182 = v429;
  sub_EEAC(v429 + 168, v181 + 40);
  *(v181 + 32) = 4;
  sub_1B7DE4(v181 + 32, v445);
  if (sub_1A0B34())
  {

    v446 = v445[0];
    v447 = v445[1];
    v448 = v445[2];
    v183 = *(v182 + 120);
    v184 = v419;
    v441(v419, v440, v159);
    v185 = sub_2CDFE0();
    v186 = sub_2CE690();
    if (os_log_type_enabled(v185, v186))
    {
      v187 = swift_slowAlloc();
      v188 = swift_slowAlloc();
      *&v445[0] = v188;
      *v187 = 136315138;
      *(v187 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v445);
      _os_log_impl(&dword_0, v185, v186, "DialogMemoryUseCase#%s#execute Executing...", v187, 0xCu);
      sub_306C(v188);
    }

    v101(v184, v159);
    sub_280EB4(v444, v90, v183, sub_1B7F04, v438);
    v189 = *sub_35E0(&v446 + 1, v448);
    sub_281390();
    sub_1B7E40(&v446);
  }

  sub_1B7E40(v445);
  swift_setDeallocating();
  sub_1B7E40(v181 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718())
  {

    v190 = [v90 privatePlayMediaIntentData];
    if (v190)
    {
      v191 = v190;
      v192 = [v190 pegasusMetaData];

      v193 = v416;
      if (v192)
      {
        v194 = sub_2C8DC0();
        v196 = v195;
      }

      else
      {
        v194 = 0;
        v196 = 0xF000000000000000;
      }
    }

    else
    {
      v194 = 0;
      v196 = 0xF000000000000000;
      v193 = v416;
    }

    v222 = v421;
    sub_2C9210();
    sub_5267C(v194, v196);
    sub_F3F4(v222, v193, &qword_353C88, &unk_2D6070);
    v223 = sub_2C9240();
    v224 = *(v223 - 8);
    if ((*(v224 + 48))(v193, 1, v223) == 1)
    {
      sub_30B8(v193, &qword_353C88, &unk_2D6070);
      v225 = 0;
      v226 = 0;
    }

    else
    {
      v227 = sub_2C9220();
      v228 = v193;
      v225 = v227;
      v226 = v229;
      (*(v224 + 8))(v228, v223);
    }

    v441(v420, v440, v159);

    v230 = sub_2CDFE0();
    v231 = sub_2CE660();

    if (os_log_type_enabled(v230, v231))
    {
      *&v439 = v90;
      v232 = swift_slowAlloc();
      v233 = swift_slowAlloc();
      *v232 = 138412290;
      if (v226)
      {
        sub_10C40();
        swift_allocError();
        *v234 = v225;
        v234[1] = v226;
        v235 = _swift_stdlib_bridgeErrorToNSError();
        v236 = v235;
      }

      else
      {
        v235 = 0;
        v236 = 0;
      }

      *(v232 + 4) = v235;
      *v233 = v236;
      _os_log_impl(&dword_0, v230, v231, "PlayMediaDialogProvider going to makeNlsContainer for %@", v232, 0xCu);
      sub_30B8(v233, &unk_34FC00, &unk_2D0150);

      v90 = v439;
    }

    else
    {
    }

    v101(v420, v159);
    sub_1A0DE4(v444, v90, sub_1B7F04, v438);
    v131 = &qword_353C88;
    v132 = &unk_2D6070;
    v133 = v421;
    goto LABEL_49;
  }

  v197 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v197 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v90, &off_32FF90))
  {

    v198 = v414;
    v441(v414, v440, v159);
    v199 = sub_2CDFE0();
    v200 = sub_2CE660();
    if (os_log_type_enabled(v199, v200))
    {
      v201 = swift_slowAlloc();
      *v201 = 0;
      _os_log_impl(&dword_0, v199, v200, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v201, 2u);
    }

    v101(v198, v159);
    sub_1A0F78(v444, v90, sub_1B7F04, v438);
  }

  v437 = v159;
  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v212 = sub_2CE720();
  isa = [v212 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v214 = sub_2CEB10(0).super.super.isa;
  v215 = sub_2CEB30();

  if ((v215 & 1) == 0)
  {

    v237 = v409;
    v238 = v437;
    v441(v409, v440, v437);
    v239 = sub_2CDFE0();
    v240 = sub_2CE660();
    v241 = os_log_type_enabled(v239, v240);
    v242 = v429;
    if (v241)
    {
      v243 = swift_slowAlloc();
      *v243 = 0;
      _os_log_impl(&dword_0, v239, v240, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v243, 2u);
      v237 = v409;
    }

    v101(v237, v238);
    v244 = sub_112C0(_swiftEmptyArrayStorage);
    v245 = *(v242 + 120);
    *(&v447 + 1) = v426;
    *&v448 = &off_3381B8;
    *&v446 = v90;
    v246 = v90;
    sub_240C20(v244, v444, &v446, sub_1B7F04, v438);

    sub_30B8(&v446, &qword_34C6C0, &qword_2D0710);
  }

  v216 = sub_1D0CF0();
  v217 = v437;
  if (v216)
  {

    v218 = v407;
    v441(v407, v440, v217);
    v219 = sub_2CDFE0();
    v220 = sub_2CE660();
    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      *v221 = 0;
      _os_log_impl(&dword_0, v219, v220, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v221, 2u);
      v218 = v407;
    }

    v101(v218, v217);
    sub_1A1C48(v444, v90, sub_1B7F04, v438);
  }

  v436 = v101;
  v247 = v90;
  v92 = sub_1D1060();
  v107 = v248;
  v96 = sub_1D119C();
  a5 = v249;
  v250 = v247;
  v251 = sub_2CE8E0() && sub_2CE840();
  if (!(v107 | a5))
  {
    v252 = [v247 mediaSearch];
    if (v252)
    {
      v253 = v252;
      v254 = [v252 reference];

      if (v254 == &dword_0 + 1 || v251)
      {
        goto LABEL_121;
      }

LABEL_143:

      v285 = v405;
      v441(v405, v440, v437);
      v286 = sub_2CDFE0();
      v287 = sub_2CE660();
      if (os_log_type_enabled(v286, v287))
      {
        v288 = swift_slowAlloc();
        *v288 = 0;
        _os_log_impl(&dword_0, v286, v287, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v288, 2u);
      }

      v436(v285, v437);
      v289 = [v250 playbackQueueLocation] == &dword_0 + 2;
      v290 = [v250 playbackQueueLocation] == &dword_0 + 3;
      sub_20410(&unk_353120, &unk_2D0B50);
      v291 = swift_allocObject();
      *(v291 + 32) = 0xD00000000000001BLL;
      *(v291 + 40) = 0x80000000002DE780;
      *(v291 + 16) = xmmword_2D0E40;
      *(v291 + 48) = v289;
      *(v291 + 72) = &type metadata for Bool;
      *(v291 + 80) = 0xD00000000000001CLL;
      *(v291 + 88) = 0x80000000002DE7A0;
      *(v291 + 120) = &type metadata for Bool;
      *(v291 + 96) = v290;
      v292 = sub_112C0(v291);
      swift_setDeallocating();
      sub_20410(&qword_34CBA0, &unk_2D0FE0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v293 = *(v429 + 120);
      *(&v447 + 1) = v426;
      *&v448 = &off_3381B8;
      *&v446 = v250;
      v294 = v250;
      sub_23A7A4(v292, v444, &v446, sub_1B7F04, v438);

      v131 = &qword_34C6C0;
      v132 = &qword_2D0710;
      v133 = &v446;
      goto LABEL_49;
    }

    if (!v251)
    {
      goto LABEL_143;
    }
  }

LABEL_121:
  sub_1D04A0();
  if (v255)
  {
    v256 = v250;

    v257 = v406;
    v258 = v437;
    v441(v406, v440, v437);
    v259 = sub_2CDFE0();
    v260 = sub_2CE660();
    if (os_log_type_enabled(v259, v260))
    {
      v261 = swift_slowAlloc();
      *v261 = 0;
      _os_log_impl(&dword_0, v259, v260, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v261, 2u);
    }

    v436(v257, v258);
    v262 = sub_1D05E4();
    v264 = v263;
    sub_20410(&unk_353120, &unk_2D0B50);
    v265 = swift_allocObject();
    *(v265 + 16) = v439;
    *(v265 + 32) = 0xD000000000000016;
    v266 = v265 + 32;
    *(v265 + 72) = &type metadata for String;
    if (v264)
    {
      v267 = v262;
    }

    else
    {
      v267 = 0;
    }

    v268 = 0xE000000000000000;
    if (v264)
    {
      v268 = v264;
    }

    *(v265 + 40) = 0x80000000002DE7C0;
    *(v265 + 48) = v267;
    *(v265 + 56) = v268;
    v269 = sub_112C0(v265);
    swift_setDeallocating();
    sub_30B8(v266, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    v270 = *(v429 + 120);
    *(&v447 + 1) = v426;
    *&v448 = &off_3381B8;
    *&v446 = v256;
    v271 = v256;
    sub_23C944(v269, v444, &v446, sub_1B7F04, v438);

LABEL_130:

    sub_30B8(&v446, &qword_34C6C0, &qword_2D0710);
  }

  *&v439 = v250;
  v272 = _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v250, &off_3304B0);
  v273 = v437;
  if (v272 && v427 == 6)
  {

    v274 = v404;
    v441(v404, v440, v273);
    v275 = sub_2CDFE0();
    v276 = sub_2CE660();
    if (os_log_type_enabled(v275, v276))
    {
      v277 = swift_slowAlloc();
      *v277 = 0;
      _os_log_impl(&dword_0, v275, v276, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v277, 2u);
    }

    v436(v274, v273);
    sub_1A1FBC(v444, v439, sub_1B7F04, v438);
LABEL_156:
  }

  v278 = &qword_330500;
  v279 = 4;
  while (v279)
  {
    v280 = *v278++;
    --v279;
    if (v280 == v427)
    {

      v281 = v403;
      v441(v403, v440, v273);
      v282 = sub_2CDFE0();
      v283 = sub_2CE660();
      if (os_log_type_enabled(v282, v283))
      {
        v284 = swift_slowAlloc();
        *v284 = 0;
        _os_log_impl(&dword_0, v282, v283, "PlayMediaDialogProvider going to makePodcast", v284, 2u);
      }

      v436(v281, v273);
      sub_1A2614(v444, v439, sub_1B7F04, v438);
      goto LABEL_156;
    }
  }

  v295 = v439;
  v296 = sub_1D2364(&off_330520);
  sub_F1954(&unk_330540);
  if (v296)
  {
    v297 = [v295 mediaSearch];
    if (!v297 || (v298 = v297, v299 = [v297 sortOrder], v298, v299 != &dword_0 + 1))
    {

      v304 = v402;
      v305 = v437;
      v441(v402, v440, v437);
      v306 = sub_2CDFE0();
      v307 = sub_2CE660();
      if (os_log_type_enabled(v306, v307))
      {
        v308 = swift_slowAlloc();
        *v308 = 0;
        _os_log_impl(&dword_0, v306, v307, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v308, 2u);
      }

      v436(v304, v305);
      sub_1A1C48(v444, v439, sub_1B7F04, v438);
      goto LABEL_156;
    }
  }

  if (sub_1D1380())
  {

    v300 = v401;
    v441(v401, v440, v437);
    v301 = sub_2CDFE0();
    v302 = sub_2CE660();
    if (os_log_type_enabled(v301, v302))
    {
      v303 = swift_slowAlloc();
      *v303 = 0;
      _os_log_impl(&dword_0, v301, v302, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v303, 2u);
    }

    v436(v300, v437);
    sub_1A29E8(v444, v439, sub_1B7F04, v438);
    goto LABEL_156;
  }

  if (!sub_2CE890() && !v251)
  {
    goto LABEL_163;
  }

  v309 = v400;
  v310 = v437;
  v441(v400, v440, v437);
  v311 = sub_2CDFE0();
  v312 = sub_2CE660();
  if (os_log_type_enabled(v311, v312))
  {
    v313 = swift_slowAlloc();
    *v313 = 0;
    _os_log_impl(&dword_0, v311, v312, "PlayMediaDialogProvider going to makeCreateRadio", v313, 2u);
  }

  v436(v309, v310);
  sub_1A2E08(v444, v92, v107, v439, sub_1B7F04, v438);
}

uint64_t sub_1AB6D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(__int128 *), uint64_t a8, unint64_t a9)
{
  v88 = a7;
  v93 = a2;
  v81 = a1;
  v84 = sub_20410(&unk_3519A0, &qword_2D0980);
  v14 = *(*(v84 - 8) + 64);
  __chkstk_darwin(v84);
  v85 = &v78 - v15;
  v16 = sub_2CE000();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v78 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v79 = &v78 - v22;
  v23 = __chkstk_darwin(v21);
  v82 = &v78 - v24;
  v25 = __chkstk_darwin(v23);
  v80 = &v78 - v26;
  v27 = __chkstk_darwin(v25);
  v83 = &v78 - v28;
  __chkstk_darwin(v27);
  v30 = &v78 - v29;
  v31 = qword_34BF58;
  v92 = a4;

  v91 = a5;

  v87 = a6;
  v90 = a8;

  v89 = a9;

  if (v31 != -1)
  {
    swift_once();
  }

  v32 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v33 = v16;
  v86 = *(v17 + 16);
  v86(v30, v32, v16);
  v34 = sub_2CDFE0();
  v35 = sub_2CE670();
  v36 = v17;
  if (os_log_type_enabled(v34, v35))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&dword_0, v34, v35, "PlayMediaDialogProvider#makeInterstitialDialog", v37, 2u);
    v36 = v17;
  }

  v38 = *(v36 + 8);
  v38(v30, v16);
  v39 = a3[20];
  sub_35E0(a3 + 16, a3[19]);
  v40 = sub_2CC430();
  v41 = v93;
  if ((v40 & 1) != 0 && (sub_2CB640() & 1) == 0 && sub_2CE810())
  {
    v42 = a3[30];
    sub_35E0(a3 + 26, a3[29]);
    if ((sub_2CBE50() & 1) == 0)
    {
      v43 = v78;
      v44 = v33;
      v86(v78, v32, v33);
      v45 = sub_2CDFE0();
      v46 = sub_2CE690();
      if (!os_log_type_enabled(v45, v46))
      {
        goto LABEL_13;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      v48 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: pym enabled, not-CarPlay, and new playback producing but mode does not require dialoging - no templating dialog";
      goto LABEL_12;
    }
  }

  v95 = v41;
  sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  if (sub_2CC120())
  {
    v43 = v83;
    v44 = v33;
    v86(v83, v32, v33);
    v45 = sub_2CDFE0();
    v46 = sub_2CE690();
    if (!os_log_type_enabled(v45, v46))
    {
LABEL_13:

      v49 = v43;
      v50 = v44;
LABEL_22:
      v38(v49, v50);
      v57 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
      v58 = v85;
      *(v58 + v57) = sub_196098();
      swift_storeEnumTagMultiPayload();
      v59 = v87;
      sub_291AC8(v58, v92, v91, v87, v88, v90, v89);
      sub_30B8(v58, &unk_3519A0, &qword_2D0980);
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "PlayMediaDialogProvider#makeIntentHandledDialog suppressing dialog: User just accepted TCC initiated from the HomePod for an SFA request. Skipping dialog in makePreHandleIntentDialog and producing it in makePostHandleIntentDialog";
LABEL_12:
    _os_log_impl(&dword_0, v45, v46, v48, v47, 2u);

    goto LABEL_13;
  }

  v51 = a3[20];
  sub_35E0(a3 + 16, a3[19]);
  if (sub_2CC4B0() & 1) == 0 && (sub_2CB630())
  {
    v43 = v79;
    v44 = v33;
    v86(v79, v32, v33);
    v45 = sub_2CDFE0();
    v46 = sub_2CE690();
    if (!os_log_type_enabled(v45, v46))
    {
      goto LABEL_13;
    }

    v47 = swift_slowAlloc();
    *v47 = 0;
    v48 = "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog: skipping interstitial for ATV";
    goto LABEL_12;
  }

  v52 = a3[20];
  sub_35E0(a3 + 16, a3[19]);
  if (sub_2CC510())
  {
    v53 = v80;
    v86(v80, v32, v33);
    v54 = sub_2CDFE0();
    v55 = sub_2CE690();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_0, v54, v55, "PlayMediaDialogProvider#makeInterstitialDialog suppressing dialog evaluation due to defaults override", v56, 2u);
    }

    v49 = v53;
    v50 = v33;
    goto LABEL_22;
  }

  v61 = v82;
  v62 = v33;
  v86(v82, v32, v33);
  v63 = v81;

  v64 = sub_2CDFE0();
  v65 = sub_2CE690();

  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    v94 = v63;
    v95 = v67;
    *v66 = 136315138;
    sub_2CCFB0();
    v86 = v62;
    sub_1B7EB0(&qword_34C170, &type metadata accessor for App);
    v68 = sub_2CEE70();
    v70 = sub_3F08(v68, v69, &v95);

    *(v66 + 4) = v70;
    _os_log_impl(&dword_0, v64, v65, "PlayMediaDialogProvider#makeInterstitialDialog for app: %s", v66, 0xCu);
    sub_306C(v67);

    v71 = v82;
    v72 = v86;
  }

  else
  {

    v71 = v61;
    v72 = v62;
  }

  v38(v71, v72);
  v73 = v92;

  v74 = v91;

  v75 = v87;
  v76 = v90;

  v77 = v89;

  sub_1A8030(1, v63, v93, a3, v73, v74, v75, v88, v76, v77);

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1ABFB8(int a1, uint64_t a2, void *a3, void *a4, uint64_t (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v425 = a2;
  LODWORD(v417) = a1;
  v12 = sub_20410(&qword_353C88, &unk_2D6070);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v407 = &v385 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v412 = &v385 - v16;
  v414 = sub_2CBF80();
  v413 = *(v414 - 8);
  v17 = *(v413 + 64);
  __chkstk_darwin(v414);
  v408 = &v385 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_20410(&qword_34DD30, &unk_2D1BC0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v388 = &v385 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v418 = &v385 - v23;
  v419 = sub_20410(&unk_3519A0, &qword_2D0980);
  v24 = *(*(v419 - 8) + 64);
  __chkstk_darwin(v419);
  v420 = (&v385 - v25);
  v26 = sub_2CE000();
  v27 = *(v26 - 8);
  v28 = v27[8];
  v29 = __chkstk_darwin(v26);
  v415 = &v385 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __chkstk_darwin(v29);
  v410 = &v385 - v32;
  v33 = __chkstk_darwin(v31);
  v396 = &v385 - v34;
  v35 = __chkstk_darwin(v33);
  v393 = &v385 - v36;
  v37 = __chkstk_darwin(v35);
  v386 = &v385 - v38;
  v39 = __chkstk_darwin(v37);
  v387 = &v385 - v40;
  v41 = __chkstk_darwin(v39);
  v389 = &v385 - v42;
  v43 = __chkstk_darwin(v41);
  v390 = &v385 - v44;
  v45 = __chkstk_darwin(v43);
  v391 = &v385 - v46;
  v47 = __chkstk_darwin(v45);
  v392 = &v385 - v48;
  v49 = __chkstk_darwin(v47);
  v394 = &v385 - v50;
  v51 = __chkstk_darwin(v49);
  v395 = &v385 - v52;
  v53 = __chkstk_darwin(v51);
  v397 = &v385 - v54;
  v55 = __chkstk_darwin(v53);
  v398 = &v385 - v56;
  v57 = __chkstk_darwin(v55);
  v399 = &v385 - v58;
  v59 = __chkstk_darwin(v57);
  v405 = &v385 - v60;
  v61 = __chkstk_darwin(v59);
  v411 = &v385 - v62;
  v63 = __chkstk_darwin(v61);
  v400 = &v385 - v64;
  v65 = __chkstk_darwin(v63);
  v401 = &v385 - v66;
  v67 = __chkstk_darwin(v65);
  v404 = &v385 - v68;
  v69 = __chkstk_darwin(v67);
  v406 = &v385 - v70;
  v71 = __chkstk_darwin(v69);
  v402 = &v385 - v72;
  v73 = __chkstk_darwin(v71);
  v409 = &v385 - v74;
  v75 = __chkstk_darwin(v73);
  v403 = &v385 - v76;
  v77 = __chkstk_darwin(v75);
  v416 = &v385 - v78;
  v79 = __chkstk_darwin(v77);
  v81 = &v385 - v80;
  __chkstk_darwin(v79);
  v83 = &v385 - v82;
  v84 = swift_allocObject();
  v421 = a5;
  v84[2] = a5;
  v84[3] = a6;
  v85 = v84;
  v84[4] = a7;
  v86 = qword_34BF58;
  v422 = a6;

  *&v423 = a7;

  if (v86 != -1)
  {
    swift_once();
  }

  v87 = sub_3ED0(v26, static Logger.default);
  swift_beginAccess();
  v88 = v27[2];
  v427 = v87;
  v428 = v88;
  v429 = v27 + 2;
  v88(v83, v87, v26);
  v89 = v26;
  v90 = a3;
  v91 = sub_2CDFE0();
  v92 = sub_2CE670();

  v93 = os_log_type_enabled(v91, v92);
  v431 = v89;
  v94 = a4;
  v424 = v85;
  v426 = v90;
  v430 = v27;
  if (!v93)
  {

    v96 = v27[1];
    v96(v83, v89);
    v102 = v89;
    goto LABEL_23;
  }

  v95 = swift_slowAlloc();
  v96 = swift_slowAlloc();
  *&v433 = v96;
  *v95 = 136315394;
  v97 = [v90 privatePlayMediaIntentData];
  if (v97 && (v98 = v97, v99 = [v97 internalSignals], v98, v99))
  {
    v100 = v94;
    v101 = sub_2CE410();
  }

  else
  {
    v100 = v94;
    v101 = 0;
  }

  *&v432[0] = v101;
  sub_20410(&qword_353C98, &unk_2D6A00);
  v103 = sub_2CE2A0();
  v105 = sub_3F08(v103, v104, &v433);

  *(v95 + 4) = v105;
  *(v95 + 12) = 2080;
  v106 = [v426 mediaItems];
  if (!v106)
  {
    goto LABEL_19;
  }

  v107 = v106;
  sub_334A0(0, &qword_356F50, INMediaItem_ptr);
  v108 = sub_2CE410();

  if (v108 >> 62)
  {
    v109 = sub_2CEDA0();
  }

  else
  {
    v109 = *(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8));
  }

  v94 = v100;
  v102 = v431;
  if (!v109)
  {

    v112 = 0;
    goto LABEL_22;
  }

  if ((v108 & 0xC000000000000001) == 0)
  {
    if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)))
    {
      v100 = v94;
      v110 = *(v108 + 32);
      goto LABEL_16;
    }

    __break(1u);
LABEL_166:
    v420 = v95;

    v308 = [v108 mediaSearch];
    if (v308)
    {
      v309 = v308;
      v310 = [v308 sortOrder];

      if (v310 == &dword_8)
      {
        v311 = [v92 mediaSearch];
        if (v311)
        {
          v312 = v311;
          v313 = [v311 mediaName];

          if (v313)
          {

            v314 = [v92 mediaSearch];
            if (!v314 || (v315 = v314, v316 = [v314 reference], v315, v316 != &dword_0 + 1))
            {

              v428(v386, v427, v431);
              v373 = sub_2CDFE0();
              v374 = sub_2CE660();
              if (os_log_type_enabled(v373, v374))
              {
                v375 = swift_slowAlloc();
                *v375 = 0;
                _os_log_impl(&dword_0, v373, v374, "PlayMediaDialogProvider going to makePlayMusicLikeArtist", v375, 2u);
              }

              v96(v386, v431);
              sub_1A46BC(v425, v92, sub_1B7E94, v424);
              goto LABEL_159;
            }
          }
        }
      }
    }

    v317 = &qword_330670;
    v318 = 2;
    do
    {
      v319 = v318;
      if (v318-- == 0)
      {
        break;
      }

      v321 = *v317++;
    }

    while (v321 != v418);
    v322 = [v92 mediaSearch];
    if (v322 && (v323 = v322, v324 = [v322 sortOrder], v323, v324 == &dword_0 + 3))
    {
      if (!v319)
      {
        goto LABEL_186;
      }
    }

    else
    {
      v325 = [v92 mediaSearch];
      if (!v325 || (v326 = v325, v327 = [v325 sortOrder], v326, !v319) || v327 != &dword_4)
      {
LABEL_186:
        v331 = sub_1D14A0();
        if (v332)
        {
          v333 = v331;
          v334 = v332;

          v335 = HIBYTE(v334) & 0xF;
          if ((v334 & 0x2000000000000000) == 0)
          {
            v335 = v333 & 0xFFFFFFFFFFFFLL;
          }

          v336 = v335 == 0;
        }

        else
        {
          v336 = 1;
        }

        LODWORD(v421) = v336;
        v337 = sub_1D15EC();
        if (v338)
        {
          v339 = v337 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v339 = 0;
        }

        if (v338)
        {
          v340 = v338;
        }

        else
        {
          v340 = 0xE000000000000000;
        }

        if ((v340 & 0x2000000000000000) != 0)
        {
          v341 = HIBYTE(v340) & 0xF;
        }

        else
        {
          v341 = v339;
        }

        if (v341)
        {
          v342 = sub_2CCF90();
          v344 = v343;
          v345 = sub_2CBE10();
          if (!v344)
          {

            goto LABEL_212;
          }

          if (v342 == v345 && v344 == v346)
          {
          }

          else
          {
            v347 = sub_2CEEA0();

            if ((v347 & 1) == 0)
            {
              goto LABEL_212;
            }
          }

          if (!v421 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v92, &off_330680))
          {

            v428(v387, v427, v431);
            v348 = sub_2CDFE0();
            v349 = sub_2CE660();
            if (os_log_type_enabled(v348, v349))
            {
              v350 = swift_slowAlloc();
              *v350 = 0;
              _os_log_impl(&dword_0, v348, v349, "PlayMediaDialogProvider going to nonSubscriberRadioFallback for genre query with broadcast radio result", v350, 2u);
            }

            v96(v387, v431);
            sub_1A4044(v425, v92, sub_1B7E94, v424);
            goto LABEL_159;
          }
        }

LABEL_212:
        v351 = sub_2CE710();
        v352 = v421;
        if (v351 != 5)
        {
          v352 = (sub_2CE710() == 19) & v421;
        }

        if (sub_2CE710() == 16)
        {
          if ((v352 | v421))
          {
            goto LABEL_221;
          }
        }

        else if (v352)
        {
          goto LABEL_221;
        }

        if (!v341 || (v353 = [v92 mediaSearch]) == 0 || (v354 = v353, v355 = objc_msgSend(v353, "sortOrder"), v354, v355 != &dword_4 + 1))
        {
          v359 = v421 ^ 1;
          if (v418 != &dword_0 + 3 || !v81)
          {
            goto LABEL_230;
          }

          v360 = HIBYTE(v81) & 0xF;
          if ((v81 & 0x2000000000000000) == 0)
          {
            v360 = v422 & 0xFFFFFFFFFFFFLL;
          }

          if (v360)
          {

            v361 = 0;
            v362 = 0xE000000000000000;
          }

          else
          {
LABEL_230:
            v361 = v422;
            v362 = v81;
            v422 = v420;
            v81 = v102;
          }

          sub_20410(&unk_353120, &unk_2D0B50);
          v363 = swift_allocObject();
          v364 = v363;
          *(v363 + 16) = xmmword_2D5FC0;
          *(v363 + 32) = 0x656C746974;
          v365 = v422;
          if (!v81)
          {
            v365 = 0;
          }

          v366 = 0xE000000000000000;
          if (v81)
          {
            v367 = v81;
          }

          else
          {
            v367 = 0xE000000000000000;
          }

          *(v363 + 40) = 0xE500000000000000;
          *(v363 + 48) = v365;
          *(v363 + 56) = v367;
          *(v363 + 72) = &type metadata for String;
          *(v363 + 80) = 0x747369747261;
          if (v362)
          {
            v368 = v361;
          }

          else
          {
            v368 = 0;
          }

          if (v362)
          {
            v366 = v362;
          }

          *(v363 + 88) = 0xE600000000000000;
          *(v363 + 96) = v368;
          *(v363 + 104) = v366;
          *(v363 + 120) = &type metadata for String;
          *(v363 + 128) = 0x61526576694C7369;
          *(v363 + 136) = 0xEB000000006F6964;
          *(v363 + 144) = v359;
          *(v363 + 168) = &type metadata for Bool;
          *(v363 + 176) = 0xD00000000000001BLL;
          *(v363 + 184) = 0x80000000002DE780;

          *(v364 + 192) = [v92 playbackQueueLocation] == &dword_0 + 2;
          *(v364 + 216) = &type metadata for Bool;
          *(v364 + 224) = 0xD00000000000001CLL;
          *(v364 + 232) = 0x80000000002DE7A0;
          *(v364 + 240) = [v92 playbackQueueLocation] == &dword_0 + 3;
          *(v364 + 264) = &type metadata for Bool;
          *(v364 + 272) = 0x667568536E4F7369;
          *(v364 + 280) = 0xEB00000000656C66;
          v369 = [v92 backingStore];
          objc_opt_self();
          v370 = swift_dynamicCastObjCClass();
          if (v370)
          {
            v371 = [v370 playShuffled];

            v372 = v371 & v421;
          }

          else
          {

            v372 = 0;
          }

          *(v364 + 288) = v372;
          *(v364 + 312) = &type metadata for Bool;
          *(v364 + 320) = 0x657065526E4F7369;
          *(v364 + 328) = 0xEA00000000007461;
          v376 = [v92 playbackRepeatMode] == &dword_0 + 2 || objc_msgSend(v92, "playbackRepeatMode") == &dword_0 + 3;
          *(v364 + 336) = v376;
          *(v364 + 360) = &type metadata for Bool;
          strcpy((v364 + 368), "isAppSpecified");
          *(v364 + 383) = -18;
          if (sub_2CC0D0())
          {
            sub_2CC0B0();
          }

          else
          {
            (*(v413 + 56))(v388, 1, 1, v414);
          }

          v377 = v423;
          v378 = v425;
          v379 = v388;
          v380 = sub_197DC8(v425, v92, (v423 + 128), v388);
          sub_30B8(v379, &qword_34DD30, &unk_2D1BC0);
          *(v364 + 384) = v380 & 1;
          *(v364 + 408) = &type metadata for Bool;
          strcpy((v364 + 416), "isPersonalized");
          *(v364 + 431) = -18;
          v381 = sub_1D16A0();
          *(v364 + 456) = &type metadata for Bool;
          *(v364 + 432) = v381 & 1;
          v382 = sub_112C0(v364);
          swift_setDeallocating();
          sub_20410(&qword_34CBA0, &unk_2D0FE0);
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v383 = *(v377 + 120);
          *(&v434 + 1) = v416;
          *&v435 = &off_3381B8;
          *&v433 = v92;
          v384 = v92;
          sub_239644(v382, v378, &v433, sub_1B7E94, v424);

          goto LABEL_147;
        }

LABEL_221:

        v428(v389, v427, v431);
        v356 = sub_2CDFE0();
        v357 = sub_2CE660();
        if (os_log_type_enabled(v356, v357))
        {
          v358 = swift_slowAlloc();
          *v358 = 0;
          _os_log_impl(&dword_0, v356, v357, "PlayMediaDialogProvider going to makeEditorialPlaylist for playlist/radio", v358, 2u);
        }

        v96(v389, v431);
        sub_1A39E0(v425, v92, sub_1B7E94, v424);
        goto LABEL_159;
      }
    }

    v428(v390, v427, v431);
    v328 = sub_2CDFE0();
    v329 = sub_2CE660();
    if (os_log_type_enabled(v328, v329))
    {
      v330 = swift_slowAlloc();
      *v330 = 0;
      _os_log_impl(&dword_0, v328, v329, "PlayMediaDialogProvider going to makeBestWorst for non-empty best or worst", v330, 2u);
    }

    v96(v390, v431);
    sub_1A32FC(v425, v92, sub_1B7E94, v424);
    goto LABEL_159;
  }

  v100 = v94;
  v110 = sub_2CECD0();
LABEL_16:
  v111 = v110;

  v112 = [v111 privateMediaItemValueData];

  if (v112)
  {
    v113 = [v112 internalSignals];

    if (v113)
    {
      v112 = sub_2CE410();

      goto LABEL_20;
    }

LABEL_19:
    v112 = 0;
  }

LABEL_20:
  v94 = v100;
  v102 = v431;
LABEL_22:
  *&v432[0] = v112;
  v114 = sub_2CE2A0();
  v116 = sub_3F08(v114, v115, &v433);

  *(v95 + 14) = v116;
  _os_log_impl(&dword_0, v91, v92, "PlayMediaDialogProvider: makePlayDialog with intent internal signals: %s and first media item signals: %s", v95, 0x16u);
  swift_arrayDestroy();

  v96 = v430[1];
  v96(v83, v102);
LABEL_23:
  v117 = v425;
  v118 = sub_2CCF90();
  if (!v119)
  {
    v428(v81, v427, v102);
    v127 = sub_2CDFE0();
    v128 = sub_2CE680();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&dword_0, v127, v128, "Missing app bundle identifier", v129, 2u);
    }

    v96(v81, v431);
    sub_10C40();
    v130 = swift_allocError();
    *v131 = 0xD00000000000001DLL;
    v131[1] = 0x80000000002DD6F0;
    v132 = v420;
    *v420 = v130;
    swift_storeEnumTagMultiPayload();
    sub_29A218(v132, v421, v422, v423);
    v133 = &unk_3519A0;
    v134 = &qword_2D0980;
    v135 = v132;
    goto LABEL_50;
  }

  v120 = v118;
  v121 = v119;
  v122 = sub_2CCF90();
  v124 = v123;
  v125 = sub_2CBE10();
  if (v124)
  {
    if (v122 == v125 && v124 == v126)
    {

LABEL_35:

      goto LABEL_36;
    }

    v136 = sub_2CEEA0();

    if (v136)
    {
      goto LABEL_36;
    }
  }

  else
  {
  }

  if (v120 == sub_2CBE30() && v121 == v137)
  {
    goto LABEL_35;
  }

  v144 = sub_2CEEA0();

  if ((v144 & 1) == 0)
  {
    v92 = v426;
    v139 = v418;
    if (v417)
    {
      goto LABEL_40;
    }

LABEL_45:
    v140 = 0;
    goto LABEL_46;
  }

LABEL_36:
  v92 = v426;
  v138 = sub_2CE830();
  if ((v417 & 1) == 0)
  {
    v139 = v418;
    if (v138)
    {
      goto LABEL_40;
    }

    goto LABEL_45;
  }

  v139 = v418;
  if (v138)
  {
    v140 = 1;
LABEL_46:

    v145 = v416;
    v428(v416, v427, v102);
    v146 = sub_2CDFE0();
    v147 = sub_2CE660();
    if (os_log_type_enabled(v146, v147))
    {
      v148 = swift_slowAlloc();
      *v148 = 67109376;
      *(v148 + 4) = v140;
      *(v148 + 8) = 1024;
      *(v148 + 10) = v140;
      _os_log_impl(&dword_0, v146, v147, "PlayMediaDialogProvider suppressing dialog: interstitial?:%{BOOL}d renderInHandle: %{BOOL}d", v148, 0xEu);
    }

    v96(v145, v102);
LABEL_49:
    v149 = *(sub_20410(&qword_34C6E8, &unk_2D0FF0) + 48);
    v150 = v420;
    *(v150 + v149) = sub_196098();
    swift_storeEnumTagMultiPayload();
    sub_29A218(v150, v421, v422, v423);
    v133 = &unk_3519A0;
    v134 = &qword_2D0980;
    v135 = v150;
LABEL_50:
    sub_30B8(v135, v133, v134);
  }

LABEL_40:
  *&v433 = v92;
  v141 = sub_334A0(0, &qword_34FCC0, INPlayMediaIntent_ptr);
  v418 = sub_2CBFA0();
  v417 = sub_2CC0E0();
  if (sub_2CC0D0())
  {
    sub_2CC0B0();

    v142 = v413;
    v143 = v414;
    if ((*(v413 + 48))(v139, 1, v414))
    {
      sub_30B8(v139, &qword_34DD30, &unk_2D1BC0);
    }

    else
    {
      v152 = v408;
      (*(v142 + 16))(v408, v139, v143);
      sub_30B8(v139, &qword_34DD30, &unk_2D1BC0);
      v153 = sub_2CBF50();
      v154 = v143;
      v155 = v153;
      (*(v142 + 8))(v152, v154);
      if (v155)
      {

        v156 = v403;
        v428(v403, v427, v431);
        v157 = sub_2CDFE0();
        v158 = sub_2CE690();
        if (os_log_type_enabled(v157, v158))
        {
          v159 = swift_slowAlloc();
          *v159 = 0;
          _os_log_impl(&dword_0, v157, v158, "PlayMediaDialogProvider#makePlayDialog first successful prediction special-case dialog", v159, 2u);
        }

        v96(v156, v431);
        sub_1A0698(v117, v92, sub_1B7E94, v424);
      }
    }
  }

  v160 = v94[20];
  sub_35E0(v94 + 16, v94[19]);
  v161 = sub_2CC430();
  v416 = v141;
  if ((v161 & 1) == 0 || !sub_2CE810())
  {
    v175 = v415;
    v428(v415, v427, v431);
    v176 = sub_2CDFE0();
    v177 = sub_2CE690();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      v179 = "PlayMediaDialogProvider#makePlayDialog pym not enabled";
      goto LABEL_69;
    }

LABEL_71:

    v96(v175, v431);
    goto LABEL_72;
  }

  v162 = v409;
  v428(v409, v427, v431);
  v163 = sub_2CDFE0();
  v164 = sub_2CE690();
  if (os_log_type_enabled(v163, v164))
  {
    v165 = swift_slowAlloc();
    *v165 = 0;
    _os_log_impl(&dword_0, v163, v164, "PlayMediaDialogProvider#makePlayDialog pym enabled", v165, 2u);
    v162 = v409;
  }

  v166 = v431;
  v96(v162, v431);
  if ((v418 - 1) >= 2)
  {
    v175 = v402;
    v428(v402, v427, v166);
    v176 = sub_2CDFE0();
    v213 = sub_2CE690();
    if (!os_log_type_enabled(v176, v213))
    {
      goto LABEL_71;
    }

    v214 = swift_slowAlloc();
    *v214 = 134217984;
    *(v214 + 4) = v418;
    v179 = "PlayMediaDialogProvider#makePlayDialog pym first item type: %ld not supported for speak suppression";
    v180 = v213;
    v181 = v176;
    v182 = v214;
    v183 = 12;
    goto LABEL_70;
  }

  v167 = v406;
  v428(v406, v427, v166);
  v168 = sub_2CDFE0();
  v169 = sub_2CE690();
  if (os_log_type_enabled(v168, v169))
  {
    v170 = swift_slowAlloc();
    *v170 = 0;
    _os_log_impl(&dword_0, v168, v169, "PlayMediaDialogProvider#makePlayDialog pym found song/album resolved item", v170, 2u);
    v167 = v406;
  }

  v171 = v431;
  v96(v167, v431);
  v172 = [v92 mediaSearch];
  if (v172)
  {
    v173 = v172;
    v174 = [v172 sortOrder];

    v171 = v431;
    if (v174)
    {
      v175 = v401;
      v428(v401, v427, v431);
      v176 = sub_2CDFE0();
      v177 = sub_2CE690();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        *v178 = 0;
        v179 = "PlayMediaDialogProvider#makePlayDialog pym found sort order present -- not supported for speak suppression";
LABEL_69:
        v180 = v177;
        v181 = v176;
        v182 = v178;
        v183 = 2;
LABEL_70:
        _os_log_impl(&dword_0, v181, v180, v179, v182, v183);

        goto LABEL_71;
      }

      goto LABEL_71;
    }
  }

  v428(v404, v427, v171);
  v223 = sub_2CDFE0();
  v224 = sub_2CE670();
  if (os_log_type_enabled(v223, v224))
  {
    v225 = swift_slowAlloc();
    *v225 = 0;
    _os_log_impl(&dword_0, v223, v224, "PlayMediaDialogProvider#makePlayDialog pym sort order unknown", v225, 2u);
  }

  v96(v404, v431);
  sub_2CBC60();
  sub_35E0(&v433, *(&v434 + 1));
  v226 = sub_2CBE50();
  sub_306C(&v433);
  if ((v226 & 1) == 0)
  {

    v227 = v400;
    v428(v400, v427, v431);
    v228 = sub_2CDFE0();
    v229 = sub_2CE690();
    if (os_log_type_enabled(v228, v229))
    {
      v230 = swift_slowAlloc();
      *v230 = 0;
      _os_log_impl(&dword_0, v228, v229, "PlayMediaDialogProvider#makePlayDialog suppressing dialog pym short-circuiting dialog evaluation in display-driven mode", v230, 2u);
    }

    v96(v227, v431);
    goto LABEL_49;
  }

LABEL_72:
  sub_20410(&qword_353C90, &unk_2D6080);
  v184 = swift_allocObject();
  v423 = xmmword_2D0090;
  *(v184 + 16) = xmmword_2D0090;
  sub_EEAC((v94 + 21), v184 + 40);
  *(v184 + 32) = 4;
  sub_1B7DE4(v184 + 32, v432);
  v185 = v92;
  if (sub_1A0B34())
  {

    v433 = v432[0];
    v434 = v432[1];
    v435 = v432[2];
    v186 = v94[15];
    v187 = v410;
    v188 = v431;
    v428(v410, v427, v431);
    v189 = sub_2CDFE0();
    v190 = sub_2CE690();
    if (os_log_type_enabled(v189, v190))
    {
      v191 = v92;
      v192 = swift_slowAlloc();
      v193 = swift_slowAlloc();
      *&v432[0] = v193;
      *v192 = 136315138;
      *(v192 + 4) = sub_3F08(0xD00000000000001ALL, 0x80000000002DA500, v432);
      _os_log_impl(&dword_0, v189, v190, "DialogMemoryUseCase#%s#execute Executing...", v192, 0xCu);
      sub_306C(v193);

      v185 = v191;
    }

    v96(v187, v188);
    sub_280EB4(v117, v185, v186, sub_1B7E94, v424);
    v194 = *sub_35E0(&v433 + 1, v435);
    sub_281390();
    sub_1B7E40(&v433);
  }

  sub_1B7E40(v432);
  swift_setDeallocating();
  sub_1B7E40(v184 + 32);
  swift_deallocClassInstance();
  if (sub_1D0718())
  {

    v195 = [v92 privatePlayMediaIntentData];
    if (v195 && (v196 = v195, v197 = [v195 pegasusMetaData], v196, v197))
    {
      v198 = sub_2C8DC0();
      v200 = v199;
    }

    else
    {
      v198 = 0;
      v200 = 0xF000000000000000;
    }

    v206 = v92;
    v207 = v412;
    sub_2C9210();
    sub_5267C(v198, v200);
    v208 = v407;
    sub_F3F4(v207, v407, &qword_353C88, &unk_2D6070);
    v209 = sub_2C9240();
    v210 = *(v209 - 8);
    if ((*(v210 + 48))(v208, 1, v209) == 1)
    {
      sub_30B8(v208, &qword_353C88, &unk_2D6070);
      v211 = 0;
      v212 = 0;
    }

    else
    {
      v211 = sub_2C9220();
      v212 = v215;
      (*(v210 + 8))(v208, v209);
    }

    v428(v411, v427, v431);

    v216 = sub_2CDFE0();
    v217 = sub_2CE660();

    if (os_log_type_enabled(v216, v217))
    {
      v218 = swift_slowAlloc();
      v219 = swift_slowAlloc();
      *v218 = 138412290;
      if (v212)
      {
        sub_10C40();
        swift_allocError();
        *v220 = v211;
        v220[1] = v212;
        v221 = _swift_stdlib_bridgeErrorToNSError();
        v222 = v221;
      }

      else
      {
        v221 = 0;
        v222 = 0;
      }

      *(v218 + 4) = v221;
      *v219 = v222;
      _os_log_impl(&dword_0, v216, v217, "PlayMediaDialogProvider going to makeNlsContainer for %@", v218, 0xCu);
      sub_30B8(v219, &unk_34FC00, &unk_2D0150);

      v117 = v425;
    }

    else
    {
    }

    v96(v411, v431);
    sub_1A0DE4(v117, v206, sub_1B7E94, v424);
    v133 = &qword_353C88;
    v134 = &unk_2D6070;
    v135 = v412;
    goto LABEL_50;
  }

  v201 = sub_1D2364(&off_32FF60);
  sub_F1954(&unk_32FF80);
  if ((v201 & 1) != 0 || _s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v92, &off_32FF90))
  {

    v202 = v405;
    v428(v405, v427, v431);
    v203 = sub_2CDFE0();
    v204 = sub_2CE660();
    if (os_log_type_enabled(v203, v204))
    {
      v205 = swift_slowAlloc();
      *v205 = 0;
      _os_log_impl(&dword_0, v203, v204, "PlayMediaDialogProvider going to isPodcastPromotion for storytelling", v205, 2u);
    }

    v96(v202, v431);
    sub_1A0F78(v117, v185, sub_1B7E94, v424);
  }

  sub_334A0(0, &qword_353110, NSNumber_ptr);
  v231 = sub_2CE720();
  isa = [v231 isAppCorrection];

  if (!isa)
  {
    isa = sub_2CEB10(0).super.super.isa;
  }

  v233 = sub_2CEB10(0).super.super.isa;
  v234 = sub_2CEB30();

  if ((v234 & 1) == 0)
  {

    v239 = v399;
    v428(v399, v427, v431);
    v240 = sub_2CDFE0();
    v241 = sub_2CE660();
    if (os_log_type_enabled(v240, v241))
    {
      v242 = swift_slowAlloc();
      *v242 = 0;
      _os_log_impl(&dword_0, v240, v241, "PlayMediaDialogProvider going to makePlayWithAppCorrection for app correction", v242, 2u);
    }

    v96(v239, v431);
    v243 = sub_112C0(_swiftEmptyArrayStorage);
    v244 = v94[15];
    *(&v434 + 1) = v416;
    *&v435 = &off_3381B8;
    *&v433 = v92;
    v245 = v92;
    sub_240C20(v243, v117, &v433, sub_1B7E94, v424);

    sub_30B8(&v433, &qword_34C6C0, &qword_2D0710);
  }

  v108 = v92;
  if (sub_1D0CF0())
  {

    v235 = v398;
    v428(v398, v427, v431);
    v236 = sub_2CDFE0();
    v237 = sub_2CE660();
    if (os_log_type_enabled(v236, v237))
    {
      v238 = swift_slowAlloc();
      *v238 = 0;
      _os_log_impl(&dword_0, v236, v237, "PlayMediaDialogProvider going to makeWholeLibrary when playback item identifier is to play whole library", v238, 2u);
    }

    v96(v235, v431);
    sub_1A1C48(v117, v108, sub_1B7E94, v424);
  }

  v95 = sub_1D1060();
  v102 = v246;
  v422 = sub_1D119C();
  v81 = v247;
  v248 = sub_2CE8E0() && sub_2CE840();
  if (!(v102 | v81))
  {
    v249 = [v92 mediaSearch];
    if (v249)
    {
      v250 = v249;
      v251 = v94;
      v252 = [v249 reference];

      v253 = v252 == &dword_0 + 1;
      v94 = v251;
      v108 = v92;
      v254 = v253;
      if ((v254 | v248))
      {
        goto LABEL_123;
      }
    }

    else if (v248)
    {
      goto LABEL_123;
    }

    v281 = v396;
    v428(v396, v427, v431);
    v282 = sub_2CDFE0();
    v283 = sub_2CE660();
    if (os_log_type_enabled(v282, v283))
    {
      v284 = swift_slowAlloc();
      *v284 = 0;
      _os_log_impl(&dword_0, v282, v283, "PlayMediaDialogProvider going to makePlayDialogEmptyContentTitle for empty title and artist", v284, 2u);
    }

    v96(v281, v431);
    v285 = [v108 playbackQueueLocation] == &dword_0 + 2;
    v286 = v108;
    v287 = [v108 playbackQueueLocation] == &dword_0 + 3;
    sub_20410(&unk_353120, &unk_2D0B50);
    v288 = swift_allocObject();
    *(v288 + 32) = 0xD00000000000001BLL;
    *(v288 + 40) = 0x80000000002DE780;
    *(v288 + 16) = xmmword_2D0E40;
    *(v288 + 48) = v285;
    *(v288 + 72) = &type metadata for Bool;
    *(v288 + 80) = 0xD00000000000001CLL;
    *(v288 + 88) = 0x80000000002DE7A0;
    *(v288 + 120) = &type metadata for Bool;
    *(v288 + 96) = v287;
    v289 = sub_112C0(v288);
    swift_setDeallocating();
    sub_20410(&qword_34CBA0, &unk_2D0FE0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v290 = v94[15];
    *(&v434 + 1) = v416;
    *&v435 = &off_3381B8;
    *&v433 = v286;
    v291 = v286;
    sub_23A7A4(v289, v425, &v433, sub_1B7E94, v424);

LABEL_147:

    v133 = &qword_34C6C0;
    v134 = &qword_2D0710;
    v135 = &v433;
    goto LABEL_50;
  }

LABEL_123:
  sub_1D04A0();
  if (v255)
  {

    v256 = v397;
    v428(v397, v427, v431);
    v257 = sub_2CDFE0();
    v258 = sub_2CE660();
    if (os_log_type_enabled(v257, v258))
    {
      v259 = swift_slowAlloc();
      *v259 = 0;
      _os_log_impl(&dword_0, v257, v258, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v259, 2u);
      v108 = v92;
    }

    v96(v256, v431);
    v260 = sub_1D05E4();
    v262 = v261;
    sub_20410(&unk_353120, &unk_2D0B50);
    v263 = swift_allocObject();
    *(v263 + 16) = v423;
    *(v263 + 32) = 0xD000000000000016;
    v264 = v263 + 32;
    *(v263 + 72) = &type metadata for String;
    if (v262)
    {
      v265 = v260;
    }

    else
    {
      v265 = 0;
    }

    v266 = 0xE000000000000000;
    if (v262)
    {
      v266 = v262;
    }

    *(v263 + 40) = 0x80000000002DE7C0;
    *(v263 + 48) = v265;
    *(v263 + 56) = v266;
    v267 = sub_112C0(v263);
    swift_setDeallocating();
    sub_30B8(v264, &qword_34CBA0, &unk_2D0FE0);
    swift_deallocClassInstance();
    v268 = v94[15];
    *(&v434 + 1) = v416;
    *&v435 = &off_3381B8;
    *&v433 = v108;
    v269 = v108;
    sub_23C944(v267, v425, &v433, sub_1B7E94, v424);

    sub_30B8(&v433, &qword_34C6C0, &qword_2D0710);
  }

  if (_s23AudioFlowDelegatePlugin22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(v108, &off_3305B0) && v418 == &dword_4 + 2)
  {

    v270 = v395;
    v428(v395, v427, v431);
    v271 = sub_2CDFE0();
    v272 = sub_2CE660();
    if (os_log_type_enabled(v271, v272))
    {
      v273 = swift_slowAlloc();
      *v273 = 0;
      _os_log_impl(&dword_0, v271, v272, "PlayMediaDialogProvider going to makeNewsPodcast for news request", v273, 2u);
      v108 = v92;
    }

    v96(v270, v431);
    sub_1A1FBC(v425, v108, sub_1B7E94, v424);
LABEL_159:
  }

  v274 = &qword_330600;
  v275 = 4;
  while (v275)
  {
    v276 = *v274++;
    --v275;
    if (v276 == v418)
    {

      v277 = v394;
      v428(v394, v427, v431);
      v278 = sub_2CDFE0();
      v279 = sub_2CE660();
      if (os_log_type_enabled(v278, v279))
      {
        v280 = swift_slowAlloc();
        *v280 = 0;
        _os_log_impl(&dword_0, v278, v279, "PlayMediaDialogProvider going to makePodcast", v280, 2u);
        v108 = v92;
      }

      v96(v277, v431);
      sub_1A2614(v425, v108, sub_1B7E94, v424);
      goto LABEL_159;
    }
  }

  *&v423 = v94;
  v292 = sub_1D2364(&off_330620);
  sub_F1954(&unk_330640);
  if (v292)
  {
    v293 = [v108 mediaSearch];
    if (!v293 || (v294 = v293, v295 = [v293 sortOrder], v294, v295 != &dword_0 + 1))
    {

      v300 = v393;
      v428(v393, v427, v431);
      v301 = sub_2CDFE0();
      v302 = sub_2CE660();
      if (os_log_type_enabled(v301, v302))
      {
        v303 = swift_slowAlloc();
        *v303 = 0;
        _os_log_impl(&dword_0, v301, v302, "PlayMediaDialogProvider going to makePlaySomething for play some music request", v303, 2u);
        v108 = v92;
      }

      v96(v300, v431);
      sub_1A1C48(v425, v108, sub_1B7E94, v424);
      goto LABEL_159;
    }
  }

  if (sub_1D1380())
  {

    v296 = v392;
    v428(v392, v427, v431);
    v297 = sub_2CDFE0();
    v298 = sub_2CE660();
    if (os_log_type_enabled(v297, v298))
    {
      v299 = swift_slowAlloc();
      *v299 = 0;
      _os_log_impl(&dword_0, v297, v298, "PlayMediaDialogProvider going to makePlaySomethingNew for play some new music request", v299, 2u);
      v108 = v92;
    }

    v96(v296, v431);
    sub_1A29E8(v425, v108, sub_1B7E94, v424);
    goto LABEL_159;
  }

  if (!sub_2CE890() && !v248)
  {
    goto LABEL_166;
  }

  v304 = v391;
  v428(v391, v427, v431);
  v305 = sub_2CDFE0();
  v306 = sub_2CE660();
  if (os_log_type_enabled(v305, v306))
  {
    v307 = swift_slowAlloc();
    *v307 = 0;
    _os_log_impl(&dword_0, v305, v306, "PlayMediaDialogProvider going to makeCreateRadio", v307, 2u);
  }

  v96(v304, v431);
  sub_1A2E08(v425, v95, v102, v108, sub_1B7E94, v424);
}