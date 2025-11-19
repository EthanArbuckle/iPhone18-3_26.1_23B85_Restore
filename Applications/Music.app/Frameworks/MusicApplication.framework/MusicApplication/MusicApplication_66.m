Swift::Void __swiftcall MetricsReportingController.recordLoadUrlEvent(_:)(MusicCore::MetricsEvent::LoadUrl *a1)
{
  v3 = [objc_allocWithZone(SSMetricsLoadURLEvent) init];
  object_low = LOBYTE(a1->environmentDataCenter.value._object);
  [v3 setCachedResponse:object_low];
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 bundleIdentifier];

  [v3 setOriginalApp:v6];
  if (a1->domainLookupStartTime.is_nil)
  {
    if (BYTE6(a1->connectionStartTime.value))
    {
      goto LABEL_3;
    }
  }

  else
  {
    [v3 setDomainLookupStartTime:a1->domainLookupStartTime.value];
    if (BYTE6(a1->connectionStartTime.value))
    {
LABEL_3:
      if (BYTE4(a1->connectionEndTime.value))
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  [v3 setDomainLookupEndTime:*(&a1->domainLookupEndTime.value + 7)];
  if (BYTE4(a1->connectionEndTime.value))
  {
LABEL_4:
    if (BYTE2(a1->responseStartTime.value))
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  [v3 setConnectionStartTime:*(&a1->secureConnectionStartTime.value + 5)];
  if (BYTE2(a1->responseStartTime.value))
  {
LABEL_5:
    if (LOBYTE(a1->fetchStartTime.value))
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  [v3 setSecureConnectionStartTime:*(&a1->requestStartTime.value + 3)];
  if (LOBYTE(a1->fetchStartTime.value))
  {
LABEL_6:
    if ((a1->redirectCount.value & 0x100000000000000) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  [v3 setConnectionEndTime:*(&a1->responseEndTime.value + 1)];
  if ((a1->redirectCount.value & 0x100000000000000) != 0)
  {
LABEL_7:
    if (a1->requestUrl.value._object)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  [v3 setRequestStartTime:*&a1->fetchStartTime.is_nil];
  if (a1->requestUrl.value._object)
  {
LABEL_8:
    if (a1->appleTimingApp.value._countAndFlagsBits)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  [v3 setResponseStartTime:*&a1->requestUrl.value._countAndFlagsBits];
  if (a1->appleTimingApp.value._countAndFlagsBits)
  {
LABEL_9:
    if (a1->connectionType.value._countAndFlagsBits)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  [v3 setResponseEndTime:*&a1->cachedResponse];
  if (a1->connectionType.value._countAndFlagsBits)
  {
LABEL_10:
    if (!a1->environmentDataCenter.value._countAndFlagsBits)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

LABEL_38:
  [v3 setFetchStartTime:*&a1->appleTimingApp.value._object];
  if (a1->environmentDataCenter.value._countAndFlagsBits)
  {
LABEL_11:
    v7 = sub_AB9260();
    [v3 setRequestURL:v7];
  }

LABEL_12:
  if ((a1->edgeNodeCacheStatus.value._countAndFlagsBits & 1) == 0)
  {
    if ((a1->connectionType.value._object & 0x8000000000000000) != 0)
    {
      goto LABEL_42;
    }

    [v3 setRedirectCount:?];
  }

  if (a1->responseDate.value._object)
  {
    v8 = sub_AB9260();
    [v3 setAppleTimingApp:v8];
  }

  if (a1->requestMessageSize)
  {
    v9 = sub_AB9260();
    [v3 setConnectionType:v9];
  }

  if (a1->resolvedIPAddress.value._countAndFlagsBits)
  {
    v10 = sub_AB9260();
    [v3 setEdgeNodeCacheStatus:v10];
  }

  if (*(&a1[1].domainLookupEndTime.value + 7))
  {
    v11 = sub_AB9260();
    [v3 setResponseDate:v11];
  }

  if (*(&a1[1].responseStartTime.value + 2))
  {
    v12 = sub_AB9260();
    [v3 setResolvedIPAddress:v12];
  }

  v24 = *&a1->resolvedIPAddress.value._object;
  v13 = *(&v24 + 1);
  if (*(&v24 + 1))
  {
    v14 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 32) = 0xD000000000000015;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0x8000000000B6BA00;
    *(inited + 48) = v14;
    *(inited + 56) = v13;
    sub_15F84(&v24, aBlock, &unk_E12FB0);
    sub_52995C(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E0EA58);
    isa = sub_AB8FD0().super.isa;

    [v3 addPropertiesWithDictionary:isa];
  }

  [v3 setCachedResponse:object_low];
  [v3 setConnectionReused:BYTE1(a1->environmentDataCenter.value._object)];
  [v3 setStatusCode:*(&a1[1].connectionStartTime.value + 6)];
  if ((*(&a1[1].secureConnectionStartTime.value + 5) & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    [v3 setRequestMessageSize:?];
    if ((*(&a1[1].connectionEndTime.value + 4) & 0x8000000000000000) == 0)
    {
      [v3 setResponseMessageSize:?];
      v17 = *&v1[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
      v18 = swift_allocObject();
      *(v18 + 16) = v3;
      *(v18 + 24) = v1;
      aBlock[4] = sub_5C9CC8;
      aBlock[5] = v18;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B5EB4;
      aBlock[3] = &block_descriptor_36_3;
      v19 = _Block_copy(aBlock);
      v20 = v17;
      v21 = v3;
      v22 = v1;

      [v21 setStandardPropertiesWith:v20 completionHandler:v19];
      _Block_release(v19);

      return;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

void sub_5C52E0(void *a1)
{
  if (sub_5CC55C())
  {
    sub_5C85B4(a1, UIScreen.Dimensions.size.getter, 0);
  }
}

void MetricsReportingController.recordComponentRenderEvent(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if (v8)
  {
    v9 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsComponentRenderEvent()) init];
    if (*(a1 + 8))
    {
      v10 = sub_AB9260();
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_AB9260();
    [v9 setProperty:v10 forBodyKey:v11];
    swift_unknownObjectRelease();

    v12 = *(a1 + 16);
    if (v12 == 27)
    {
      v13 = 0;
    }

    else
    {
      MetricsEvent.TargetType.rawValue.getter(v12);
      v13 = sub_AB9260();
    }

    v14 = sub_AB9260();
    [v9 setProperty:v13 forBodyKey:v14];
    swift_unknownObjectRelease();

    v15 = *(a1 + 24);
    v16 = sub_AB9260();
    [v9 setProperty:v15 forBodyKey:v16];

    v17 = *(a1 + 32);
    v18 = sub_AB9260();
    [v9 setProperty:v17 forBodyKey:v18];

    v19 = *(a1 + 40);
    v20 = sub_AB9260();
    [v9 setProperty:v19 forBodyKey:v20];

    v21 = *(a1 + 48);
    v22 = sub_AB9260();
    [v9 setProperty:v21 forBodyKey:v22];

    v23 = *(a1 + 56);
    v24 = sub_AB9260();
    [v9 setProperty:v23 forBodyKey:v24];

    v25 = *(a1 + 64);
    v26 = sub_AB9260();
    [v9 setProperty:v25 forBodyKey:v26];

    v27 = *(a1 + 72);
    if (v27 >= 4)
    {
      v28 = 0;
    }

    else
    {
      v28 = sub_AB9260();
    }

    v29 = sub_AB9260();
    [v9 setProperty:v28 forBodyKey:v29];
    swift_unknownObjectRelease();

    v30 = *&v2[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v31 = swift_allocObject();
    *(v31 + 16) = v2;
    *(v31 + 24) = v9;
    aBlock[4] = sub_5CA69C;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_42_0;
    v32 = _Block_copy(aBlock);
    v33 = v30;
    v34 = v2;
    v35 = v9;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v8 - 8);
  v10 = &v100 - v9;
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v100 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v14 = sub_ABA150();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v102 = v10;
    v101 = a2;
    v104 = v4;
    v16 = [objc_allocWithZone(type metadata accessor for Music_SSMetricsPageRenderEvent()) init];
    swift_beginAccess();
    v17 = *(a1 + 16);
    swift_beginAccess();
    v18 = *(a1 + 32);
    v103 = a3;
    if (v18)
    {
      v19 = v17;
      v20 = 0;
    }

    else
    {
      v21 = *(a1 + 24);
      v22 = objc_opt_self();
      v23 = v17;
      v24 = [v22 serverTimeFromTimeInterval:v21];
      v25 = [v24 unsignedLongLongValue];

      v112 = v25;
      v20 = sub_ABB470();
    }

    v26 = sub_AB9260();
    [v16 setProperty:v20 forBodyKey:v26];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v27 = 0;
    if ((*(a1 + 48) & 1) == 0)
    {
      v28 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 40)];
      v29 = [v28 unsignedLongLongValue];

      v111 = v29;
      v27 = sub_ABB470();
    }

    v30 = sub_AB9260();
    [v16 setProperty:v27 forBodyKey:v30];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v31 = 0;
    if ((*(a1 + 64) & 1) == 0)
    {
      v32 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 56)];
      v33 = [v32 unsignedLongLongValue];

      v110 = v33;
      v31 = sub_ABB470();
    }

    v34 = sub_AB9260();
    [v16 setProperty:v31 forBodyKey:v34];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v35 = 0;
    if ((*(a1 + 80) & 1) == 0)
    {
      v36 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 72)];
      v37 = [v36 unsignedLongLongValue];

      v109 = v37;
      v35 = sub_ABB470();
    }

    v38 = sub_AB9260();
    [v16 setProperty:v35 forBodyKey:v38];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v39 = 0;
    if ((*(a1 + 96) & 1) == 0)
    {
      v40 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 88)];
      v41 = [v40 unsignedLongLongValue];

      v108 = v41;
      v39 = sub_ABB470();
    }

    v42 = sub_AB9260();
    [v16 setProperty:v39 forBodyKey:v42];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v43 = 0;
    if ((*(a1 + 112) & 1) == 0)
    {
      v44 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 104)];
      v45 = [v44 unsignedLongLongValue];

      v107 = v45;
      v43 = sub_ABB470();
    }

    v46 = sub_AB9260();
    [v16 setProperty:v43 forBodyKey:v46];
    swift_unknownObjectRelease();

    swift_beginAccess();
    v47 = 0;
    if ((*(a1 + 128) & 1) == 0)
    {
      v48 = [objc_opt_self() serverTimeFromTimeInterval:*(a1 + 120)];
      v49 = [v48 unsignedLongLongValue];

      v105 = v49;
      v47 = sub_ABB470();
    }

    v50 = sub_AB9260();
    [v16 setProperty:v47 forBodyKey:v50];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 requestStartTime];
      v52 = [objc_opt_self() serverTimeFromTimeInterval:v51];
      v53 = [v52 unsignedLongLongValue];

      v105 = v53;
      v54 = sub_ABB470();
    }

    else
    {
      v54 = 0;
    }

    v55 = sub_AB9260();
    [v16 setProperty:v54 forBodyKey:v55];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 responseStartTime];
      v57 = [objc_opt_self() serverTimeFromTimeInterval:v56];
      v58 = [v57 unsignedLongLongValue];

      v105 = v58;
      v59 = sub_ABB470();
    }

    else
    {
      v59 = 0;
    }

    v60 = sub_AB9260();
    [v16 setProperty:v59 forBodyKey:v60];
    swift_unknownObjectRelease();

    if (v17)
    {
      [v17 responseEndTime];
      v62 = [objc_opt_self() serverTimeFromTimeInterval:v61];
      v63 = [v62 unsignedLongLongValue];

      v105 = v63;
      v64 = sub_ABB470();
      v65 = sub_AB9260();
      [v16 setProperty:v64 forBodyKey:v65];
      swift_unknownObjectRelease();

      v66 = [v17 cachedResponse];
    }

    else
    {
      v67 = sub_AB9260();
      [v16 setProperty:0 forBodyKey:v67];

      v66 = 0;
    }

    LOBYTE(v105) = v66;
    v68 = sub_ABB470();
    v69 = sub_AB9260();
    [v16 setProperty:v68 forBodyKey:v69];
    swift_unknownObjectRelease();

    v70 = (a1 + *(*a1 + 160));
    v71 = v70[1];
    v105 = *v70;
    v106 = v71;

    v72 = sub_ABB470();
    v73 = sub_AB9260();
    [v16 setProperty:v72 forBodyKey:v73];
    swift_unknownObjectRelease();

    v74 = v70[3];
    v105 = v70[2];
    v106 = v74;

    v75 = sub_ABB470();
    v76 = sub_AB9260();
    [v16 setProperty:v75 forBodyKey:v76];
    swift_unknownObjectRelease();

    v77 = type metadata accessor for MetricsPageProperties();
    v78 = v102;
    sub_15F84(v70 + *(v77 + 24), v102, &qword_E0DC30);
    v79 = sub_AB31C0();
    v80 = *(v79 - 8);
    if ((*(v80 + 48))(v78, 1, v79) == 1)
    {
      sub_12E1C(v78, &qword_E0DC30);
      v81 = 0;
    }

    else
    {
      v82 = _s10Foundation3URLV11MusicJSCoreE12JSSerializedSSvg_0();
      v84 = v83;
      (*(v80 + 8))(v78, v79);
      v105 = v82;
      v106 = v84;
      v81 = sub_ABB470();
    }

    v85 = v103;
    v86 = sub_AB9260();
    [v16 setProperty:v81 forBodyKey:v86];
    swift_unknownObjectRelease();

    if (*(v70 + *(v77 + 28)))
    {
      v105 = *(v70 + *(v77 + 28));

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD10);
      v87 = sub_ABB470();
    }

    else
    {
      v87 = 0;
    }

    v88 = sub_AB9260();
    [v16 setProperty:v87 forBodyKey:v88];
    swift_unknownObjectRelease();

    if (v85)
    {
      v105 = v101;
      v106 = v85;

      v89 = sub_ABB470();
    }

    else
    {
      v89 = 0;
    }

    v90 = sub_AB9260();
    [v16 setProperty:v89 forBodyKey:v90];
    swift_unknownObjectRelease();

    v91 = v104;
    v92 = *&v104[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v93 = swift_allocObject();
    *(v93 + 16) = v91;
    *(v93 + 24) = v16;
    v94 = v92;
    v95 = v16;
    v96 = v94;
    v97 = v95;

    v98 = v91;
    v99 = v97;
    sub_5CFA88(v92, v99, v99, v92, sub_5CA6D4, v93);
  }

  else
  {
    __break(1u);
  }
}

void sub_5C6610(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a4(a2))
  {
    sub_5C85B4(a2, UIScreen.Dimensions.size.getter, 0);
  }
}

void MetricsReportingController.recordCustomEvent(with:properties:sharedListeningContext:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, unint64_t a5, unint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v23 = a6;
  v22 = a5;
  v12 = sub_AB7CC0();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v15 = sub_ABA150();
  (*(v13 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v12);
  v16 = sub_AB7CF0();
  (*(v13 + 8))(v15, v12);
  if (v16)
  {
    v17 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v18 = sub_AB9260();
    [v17 setTopic:v18];

    isa = sub_AB8FD0().super.isa;
    [v17 addPropertiesWithDictionary:isa];

    [v17 setShouldSuppressUserInfo:a7 & 1];
    [v17 setShouldSuppressDSIDHeader:a7 & 1];

    if (a4 != 2)
    {
      if (sub_5C9380(a4 & 1, v22, v23))
      {
        v20 = sub_AB8FD0().super.isa;

        [v17 addPropertiesWithDictionary:v20];
      }
    }

    sub_5C85B4(v17, a8, a9);
  }

  else
  {
    __break(1u);
  }
}

void MetricsReportingController.recordCarPlayCustomEvent(with:properties:shouldSuppressUserInfo:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v39 = a5;
  v40 = a2;
  v38 = a1;
  v37 = sub_AB3470();
  v10 = *(v37 - 8);
  __chkstk_darwin(v37);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_AB7CC0();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = (&v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v16 = sub_ABA150();
  (*(v14 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v13);
  v17 = sub_AB7CF0();
  (*(v14 + 8))(v16, v13);
  if (v17)
  {
    v18 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    v36 = a6;
    v19 = v7;
    v20 = v18;
    isa = sub_AB8FD0().super.isa;
    [v20 addPropertiesWithDictionary:isa];

    [v20 setShouldSuppressUserInfo:a4 & 1];
    [v20 setShouldSuppressDSIDHeader:a4 & 1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v23 = sub_AB3440();
    v25 = v24;
    (*(v10 + 8))(v12, v37);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v23;
    *(inited + 56) = v25;
    sub_52995C(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E0EA58);
    v26 = sub_AB8FD0().super.isa;

    [v20 addPropertiesWithDictionary:v26];

    v27 = *&v19[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
    v28 = swift_allocObject();
    v30 = v38;
    v29 = v39;
    v28[2] = v20;
    v28[3] = v30;
    v28[4] = v40;
    v28[5] = v19;
    v31 = v36;
    v28[6] = v29;
    v28[7] = v31;
    aBlock[4] = sub_5BBC88;
    aBlock[5] = v28;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B5EB4;
    aBlock[3] = &block_descriptor_51_0;
    v32 = _Block_copy(aBlock);
    v33 = v27;

    v34 = v19;

    v35 = v20;

    [v35 setStandardPropertiesWith:v33 completionHandler:v32];
    _Block_release(v32);
  }

  else
  {
    __break(1u);
  }
}

void sub_5C6D54(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_AB9260();
  [a1 setTopic:v12];

  if (qword_E0CBA8 != -1)
  {
    swift_once();
  }

  v13 = sub_AB4BC0();
  __swift_project_value_buffer(v13, static Logger.carMetrics);

  v14 = sub_AB4BA0();
  v15 = sub_AB9F50();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_500C84(a2, a3, v20);
    _os_log_impl(&dword_0, v14, v15, "Inserting carPlay custom event with topic=%{public}s in metrics controller", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
  }

  v18 = *(a4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
  v20[4] = a5;
  v20[5] = a6;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_3A5920;
  v20[3] = &block_descriptor_165_2;
  v19 = _Block_copy(v20);

  [v18 insertEvent:a1 withCompletionHandler:v19];
  _Block_release(v19);
}

Swift::Void __swiftcall MetricsReportingController.reportEventForLocalEvaluation(with:)(Swift::OpaquePointer with)
{
  v1 = sub_AB7CC0();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v4 = sub_ABA150();
  (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
  v5 = sub_AB7CF0();
  (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v6 = [objc_allocWithZone(SSMetricsCustomEvent) init];
    isa = sub_AB8FD0().super.isa;
    [v6 addPropertiesWithDictionary:isa];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_5C711C()
{
  if (qword_E0CC58 != -1)
  {
    swift_once();
  }

  v1 = sub_AB4BC0();
  v0[19] = __swift_project_value_buffer(v1, qword_E71D40);
  v2 = sub_AB4BA0();
  v3 = sub_AB9F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "[MetricsReportingController] Attempting to flush unreported events", v4, 2u);
  }

  v5 = v0[18];

  v6 = *(v5 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v0[2] = v0;
  v0[3] = sub_5C72F0;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E135A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_5C75AC;
  v0[13] = &block_descriptor_54_1;
  v0[14] = v7;
  [v6 flushUnreportedEventsWithCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_5C72F0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_5C7414;
  }

  else
  {
    v2 = sub_5C7400;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_5C7414()
{
  v12 = v0;
  swift_willThrow();
  swift_errorRetain();
  v1 = sub_AB4BA0();
  v2 = sub_AB9F30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[20];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136446210;
    v0[10] = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    v6 = sub_AB9350();
    v8 = sub_500C84(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_0, v1, v2, "[MetricsReportingController] Failed to flush unreported events with error=%{public}s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_5C75AC(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11A80);
    swift_allocError();
    *v3 = a2;
    v4 = a2;

    return swift_continuation_throwingResumeWithError();
  }

  else
  {

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_5C7658()
{
  v1 = *(v0 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_12E1C(&v8, &qword_E11F60);
    return 0;
  }

  v2 = v1;
  v3 = sub_AB9260();
  v4 = [v2 valueForConfigurationKey:v3];

  if (v4)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

char *sub_5C7788()
{
  v1 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_componentRenderEventSampler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0D628);
  v2 = swift_allocObject();
  v3 = objc_opt_self();
  *(v2 + 16) = [v3 standardUserDefaults];
  *&v0[v1] = v2;
  v4 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageRenderEventSampler;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E0D630);
  v5 = swift_allocObject();
  *(v5 + 16) = [v3 standardUserDefaults];
  *&v0[v4] = v5;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration] = 0;
  v6 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController;
  *&v0[v6] = [objc_allocWithZone(SSMetricsController) init];
  v7 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController;
  *&v0[v7] = [objc_allocWithZone(SSMetricsController) init];
  v8 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carMetricsReporter;
  type metadata accessor for CarNowPlayingMetrics.Reporter();
  *&v0[v8] = swift_allocObject();
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = 0;
  *&v0[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory] = _swiftEmptyArrayStorage;
  v19.receiver = v0;
  v19.super_class = type metadata accessor for MetricsReportingController();
  v9 = objc_msgSendSuper2(&v19, "init");
  v10 = qword_E0CD28;
  v11 = v9;
  if (v10 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for BagProvider.Observer();
  v13 = swift_allocObject();
  swift_weakInit();
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  swift_weakAssign();
  v14 = *(v13 + 24);
  *(v13 + 24) = sub_5CB8CC;
  *(v13 + 32) = v12;
  swift_retain_n();
  v15 = sub_17654(v14);
  __chkstk_darwin(v15);
  UnfairLock.locked<A>(_:)(sub_5CB8D4);
  sub_5E5FD8(0);

  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_urlBagObserver] = v13;

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = UISceneDidEnterBackgroundNotification;

  type metadata accessor for NotificationObserver();
  swift_allocObject();
  *&v11[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_backgroundObserver] = NotificationObserver.init(name:object:dispatchOnMainThread:usesLocalNotificationCenter:handler:)(v17, 0, 1, 1, sub_5CB8F4, v16);

  return v11;
}

uint64_t sub_5C7BAC(void *a1, uint64_t a2)
{
  sub_13C80(0, &qword_E103C0);
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = a1;

  v5 = a1;
  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_5CBBCC, v4);
}

void sub_5C7C50(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_5C81B4(a2);
  }
}

uint64_t sub_5C7CAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v0 - 8);
  v2 = &v12 - v1;
  if (qword_E0CC58 != -1)
  {
    swift_once();
  }

  v3 = sub_AB4BC0();
  __swift_project_value_buffer(v3, qword_E71D40);
  v4 = sub_AB4BA0();
  v5 = sub_AB9F50();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
  }

  sub_AB9970();
  v7 = sub_AB9990();
  (*(*(v7 - 8) + 56))(v2, 0, 1, v7);
  v8 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v8;
  sub_50D600(0, 0, v2, &unk_B1BC98, v10);

  return sub_12E1C(v2, &qword_E0E340);
}

uint64_t sub_5C7EF4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;

    sub_5B9CEC(0);
  }

  swift_beginAccess();
  v3 = swift_unknownObjectWeakLoadStrong();
  if (v3)
  {
    v4 = v3;

    sub_5B9CEC(1);
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  v0[12] = v5;
  if (v5)
  {
    v6 = swift_task_alloc();
    v0[13] = v6;
    *v6 = v0;
    v6[1] = sub_5C8084;

    return MetricsReportingController.flushUnreportedEvents()();
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_5C8084()
{
  v1 = *(*v0 + 96);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_5C81B4(void *a1)
{
  v2 = v1;
  v4 = sub_AB7CC0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v7 = sub_ABA150();
  (*(v5 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v4);
  v8 = sub_AB7CF0();
  (*(v5 + 8))(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
    return;
  }

  v9 = [a1 dictionaryForBagKey:SSMetricsURLBagKey];
  if (v9)
  {
    v10 = v9;
    v11 = sub_AB8FF0();

    if (!*(v11 + 16))
    {

      return;
    }

    v12 = [a1 dictionaryForBagKey:SSVURLBagKeyMusicCommon];
    if (v12)
    {
      v13 = v12;
      v14 = sub_AB8FF0();

      *&v27[0] = 0xD000000000000023;
      *(&v27[0] + 1) = 0x8000000000B6BD00;
      sub_ABAD10();
      if (*(v14 + 16))
      {
        v15 = sub_2EC004(v28);
        if (v16)
        {
          sub_808B0(*(v14 + 56) + 32 * v15, v27);
          sub_8085C(v28);

          sub_9ACFC(v27, v29);
          strcpy(v27, "postFrequency");
          HIWORD(v27[0]) = -4864;
          sub_ABAD10();
          sub_808B0(v29, v27);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v26 = v11;
          sub_525988(v27, v28, isUniquelyReferenced_nonNull_native);
          sub_8085C(v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          v18 = 1;
          goto LABEL_11;
        }
      }

      sub_8085C(v28);
    }

    v18 = 0;
LABEL_11:
    v19 = objc_allocWithZone(SSMetricsConfiguration);
    isa = sub_AB8FD0().super.isa;

    v21 = [v19 initWithGlobalConfiguration:isa];

    if (v21)
    {
      v22 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration);
      *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration) = v21;
      v23 = v21;

      [v23 setDisableEventDecoration:{objc_msgSend(v23, "_decorateITMLEvents") ^ 1}];
      v24 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
      [v24 setGlobalConfiguration:v23];
      [v24 setFlushTimerEnabled:1];
      if (v18)
      {
        v25 = *(v2 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_carFocusedMetricsController);
        [v25 setGlobalConfiguration:v23];

        [v25 setFlushTimerEnabled:1];
      }

      else
      {
      }
    }
  }
}

void sub_5C85B4(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v7 = sub_AB3470();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_AB7CC0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = (&v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_13C80(0, &qword_E103C0);
  *v14 = sub_ABA150();
  (*(v12 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v11);
  v15 = sub_AB7CF0();
  (*(v12 + 8))(v14, v11);
  if (v15)
  {
    sub_5C89F8(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF4EC0;
    strcpy((inited + 32), "clientEventId");
    *(inited + 46) = -4864;
    _s9MusicCore5GlissO10TransitionC2id10Foundation4UUIDVvpfi_0();
    v17 = sub_AB3440();
    v19 = v18;
    (*(v8 + 8))(v10, v7);
    *(inited + 72) = &type metadata for String;
    *(inited + 48) = v17;
    *(inited + 56) = v19;
    sub_52995C(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E0EA58);
    isa = sub_AB8FD0().super.isa;

    [a1 addPropertiesWithDictionary:isa];

    if (qword_E0CC58 == -1)
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
  v21 = sub_AB4BC0();
  __swift_project_value_buffer(v21, qword_E71D40);
  v22 = sub_AB4BA0();
  v23 = sub_AB9F50();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_0, v22, v23, "[MetricsReportingController] Inserting main window related event.", v24, 2u);
  }

  v25 = *(v4 + OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsController);
  v26 = swift_allocObject();
  *(v26 + 16) = v29;
  *(v26 + 24) = a3;
  aBlock[4] = sub_5CBA34;
  aBlock[5] = v26;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_3A5920;
  aBlock[3] = &block_descriptor_171_0;
  v27 = _Block_copy(aBlock);

  [v25 insertEvent:a1 withCompletionHandler:v27];
  _Block_release(v27);
}

uint64_t sub_5C89F8(void *a1)
{
  v3 = [a1 eventType];
  if (!v3)
  {
    sub_AB92A0();
    goto LABEL_10;
  }

  v4 = v3;
  v5 = sub_AB92A0();
  v7 = v6;

  v8 = sub_AB92A0();
  if (!v7)
  {
LABEL_10:
  }

  if (v5 == v8 && v7 == v9)
  {
  }

  else
  {
    v11 = sub_ABB3C0();

    if ((v11 & 1) == 0)
    {
      return result;
    }
  }

  v13 = OBJC_IVAR____TtC9MusicCore26MetricsReportingController_pageHistory;
  swift_beginAccess();

  isa = sub_AB9740().super.isa;

  v15 = sub_AB9260();
  [a1 setProperty:isa forBodyKey:v15];

  v16 = v1;
  result = sub_5CC6A8();
  if (v17)
  {
    v18 = result;
    v19 = v17;
    v20 = *(v16 + v13);
    if (*(v20 + 16) >= 5uLL)
    {

      *(v16 + v13) = sub_5C8C70(4uLL, v20);
    }

    swift_beginAccess();
    v21 = *(v16 + v13);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v16 + v13) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_506314(0, *(v21 + 2) + 1, 1, v21);
      *(v16 + v13) = v21;
    }

    v23 = *(v21 + 2);
    v24 = *(v21 + 3);
    v25 = v23 + 1;
    if (v23 >= v24 >> 1)
    {
      v27 = v21;
      v28 = *(v21 + 2);
      v29 = sub_506314((v24 > 1), v23 + 1, 1, v27);
      v23 = v28;
      v21 = v29;
    }

    *(v21 + 2) = v25;
    v26 = &v21[16 * v23];
    *(v26 + 4) = v18;
    *(v26 + 5) = v19;
    *(v16 + v13) = v21;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_5C8C70(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v3 = result;
  if (result)
  {
    v4 = *(a2 + 16) >= result ? result : *(a2 + 16);
    result = sub_503918(0, v4, 0);
    v5 = *(a2 + 16);
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = a2 + 40;
      v22 = *(a2 + 16);
      v21 = v5 - 1;
      do
      {
        v9 = (v8 + 16 * v6);
        while (1)
        {
          if (v6 >= *(a2 + 16))
          {
            __break(1u);
            goto LABEL_32;
          }

          v10 = *(v9 - 1);
          v11 = *v9;
          v12 = v6 + 1;
          v13 = _swiftEmptyArrayStorage[2];
          if (v13 >= v3)
          {
            break;
          }

          v14 = _swiftEmptyArrayStorage[3];

          if (v13 >= v14 >> 1)
          {
            result = sub_503918((v14 > 1), v13 + 1, 1);
          }

          _swiftEmptyArrayStorage[2] = v13 + 1;
          v15 = &_swiftEmptyArrayStorage[2 * v13];
          v15[4] = v10;
          v15[5] = v11;
          v9 += 2;
          v6 = v12;
          if (v22 == v12)
          {
            goto LABEL_23;
          }
        }

        if (v7 >= v13)
        {
          goto LABEL_33;
        }

        v16 = &_swiftEmptyArrayStorage[2 * v7];
        v16[4] = v10;
        v16[5] = v11;

        if ((v7 + 1) < v3)
        {
          ++v7;
        }

        else
        {
          v7 = 0;
        }

        v8 = a2 + 40;
      }

      while (v21 != v6++);
LABEL_23:

      if (!v7)
      {
        return _swiftEmptyArrayStorage;
      }

      v18 = _swiftEmptyArrayStorage[2];
      result = sub_503918(0, v18, 0);
      if (v18 >= v7)
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_35;
        }

        v19 = _swiftEmptyArrayStorage[2];
        if (v19 >= v7 && v19 >= v18)
        {

          sub_5C9D00(v20, &_swiftEmptyArrayStorage[4], v7, (2 * v18) | 1);

          sub_5C9D00(_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage[4], 0, (2 * v7) | 1);

          return _swiftEmptyArrayStorage;
        }

        goto LABEL_36;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      return result;
    }
  }

  return _swiftEmptyArrayStorage;
}

id MetricsReportingController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MetricsReportingController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5C8FAC()
{
  v1 = sub_AB9260();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
    sub_9ACFC(&v4, v5);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E11F60);
  sub_13C80(0, &qword_E0FF68);
  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_5C9088(unint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_stdlib_random();
    result = (0 * v1) >> 64;
    if (-v1 % v1)
    {
      while (1)
      {
        swift_stdlib_random();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV13ActionContextO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        if (a4 == 6)
        {
          return 1;
        }
      }

      else if (a2 == 7)
      {
        if (a4 == 7)
        {
          return 1;
        }
      }

      else if (a4 == 8)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        return a4 == 9;
      case 10:
        return a4 == 10;
      case 11:
        return a4 == 11;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        if (a4 == 3)
        {
          return 1;
        }
      }

      else if (a2 == 4)
      {
        if (a4 == 4)
        {
          return 1;
        }
      }

      else if (a4 == 5)
      {
        return 1;
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        return !a4;
      case 1:
        return a4 == 1;
      case 2:
        return a4 == 2;
    }
  }

  if (a4 < 0xC)
  {
    return 0;
  }

  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_ABB3C0();
  }
}

uint64_t sub_5C9274(unint64_t a1)
{
  if (a1 <= 1)
  {
    return sub_ABB330();
  }

  if (a1 - 5 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3419442;
  }

  if (a1 - 8 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 3616053;
  }

  if (a1 - 11 > 0xFFFFFFFFFFFFFFFCLL)
  {
    return 808529208;
  }

  if (a1 - 16 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x35312D3131;
  }

  if (a1 - 21 > 0xFFFFFFFFFFFFFFFALL)
  {
    return 0x30322D3631;
  }

  if (a1 - 26 >= 0xFFFFFFFFFFFFFFFBLL)
  {
    return 0x35322D3132;
  }

  return 2831922;
}

unint64_t sub_5C9380(char a1, unint64_t a2, unint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_AF8820;
    strcpy((inited + 32), "sharedActivity");
    *(inited + 47) = -18;
    *(inited + 48) = 1;
    *(inited + 72) = &type metadata for Bool;
    *(inited + 80) = 0xD00000000000001CLL;
    *(inited + 88) = 0x8000000000B6BD80;
    *(inited + 96) = sub_5C9274(a2);
    *(inited + 104) = v7;
    *(inited + 120) = &type metadata for String;
    *(inited + 128) = 0xD000000000000018;
    *(inited + 136) = 0x8000000000B6B8C0;
    v8 = sub_5C9274(a3);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v8;
    *(inited + 152) = v9;
    v10 = sub_52995C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA58);
    swift_arrayDestroy();
  }

  else
  {
    v11 = swift_initStackObject();
    *(v11 + 32) = 0x6341646572616873;
    v12 = v11 + 32;
    *(v11 + 16) = xmmword_AF4EC0;
    *(v11 + 40) = 0xEE00797469766974;
    *(v11 + 72) = &type metadata for Bool;
    *(v11 + 48) = 0;
    v10 = sub_52995C(v11);
    swift_setDeallocating();
    sub_12E1C(v12, &qword_E0EA58);
  }

  return v10;
}

uint64_t _s9MusicCore12MetricsEventV10TargetTypeO8rawValueAESgSS_tcfC_0()
{
  v0 = sub_ABB420();

  if (v0 >= 0x1B)
  {
    return 27;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_5C9584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_5C95F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s9MusicCore12MetricsEventV5ClickV10ActionTypeO8rawValueAGSgSS_tcfC_0()
{
  v0 = sub_ABB420();

  if (v0 >= 0x41)
  {
    return 65;
  }

  else
  {
    return v0;
  }
}

double sub_5C9710@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 domainLookupStartTime];
  v70 = v4;
  [a1 domainLookupEndTime];
  v6 = v5;
  [a1 connectionStartTime];
  v8 = v7;
  [a1 secureConnectionStartTime];
  v10 = v9;
  [a1 connectionEndTime];
  v12 = v11;
  [a1 requestStartTime];
  v14 = v13;
  [a1 responseStartTime];
  v16 = v15;
  [a1 responseEndTime];
  v18 = v17;
  [a1 fetchStartTime];
  v20 = v19;
  v69 = [a1 redirectCount];
  v21 = [a1 requestUrl];
  if (v21)
  {
    v22 = v21;
    v23 = sub_AB92A0();
    v67 = v24;
    v68 = v23;
  }

  else
  {
    v67 = 0;
    v68 = 0;
  }

  v66 = [a1 cachedResponse];
  v65 = [a1 connectionReused];
  v25 = [a1 appleTimingApp];
  if (v25)
  {
    v26 = v25;
    v27 = sub_AB92A0();
    v63 = v28;
    v64 = v27;
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v29 = [a1 connectionType];
  if (v29)
  {
    v30 = v29;
    v31 = sub_AB92A0();
    v61 = v32;
    v62 = v31;
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v33 = [a1 edgeNodeCacheStatus];
  if (v33)
  {
    v34 = v33;
    v35 = sub_AB92A0();
    v59 = v36;
    v60 = v35;
  }

  else
  {
    v59 = 0;
    v60 = 0;
  }

  v37 = [a1 environmentDataCenter];
  if (v37)
  {
    v38 = v37;
    v39 = sub_AB92A0();
    v55 = v40;
    v57 = v39;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v41 = [a1 responseDate];
  if (v41)
  {
    v42 = v41;
    v43 = sub_AB92A0();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = [a1 statusCode];
  v47 = [a1 requestMessageSize];
  v48 = [a1 responseMessageSize];
  v49 = [a1 resolvedIPAddress];
  if (v49)
  {
    v50 = v49;
    v51 = sub_AB92A0();
    v53 = v52;
  }

  else
  {

    v51 = 0;
    v53 = 0;
  }

  result = v70;
  *a2 = v70;
  *(a2 + 8) = 0;
  *(a2 + 16) = v6;
  *(a2 + 24) = 0;
  *(a2 + 32) = v8;
  *(a2 + 40) = 0;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0;
  *(a2 + 64) = v12;
  *(a2 + 72) = 0;
  *(a2 + 80) = v14;
  *(a2 + 88) = 0;
  *(a2 + 96) = v16;
  *(a2 + 104) = 0;
  *(a2 + 112) = v18;
  *(a2 + 120) = 0;
  *(a2 + 128) = v20;
  *(a2 + 136) = 0;
  *(a2 + 144) = v69;
  *(a2 + 152) = 0;
  *(a2 + 160) = v68;
  *(a2 + 168) = v67;
  *(a2 + 176) = v66;
  *(a2 + 177) = v65;
  *(a2 + 184) = v64;
  *(a2 + 192) = v63;
  *(a2 + 200) = v62;
  *(a2 + 208) = v61;
  *(a2 + 216) = v60;
  *(a2 + 224) = v59;
  *(a2 + 232) = v58;
  *(a2 + 240) = v56;
  *(a2 + 248) = v43;
  *(a2 + 256) = v45;
  *(a2 + 264) = v46;
  *(a2 + 272) = v47;
  *(a2 + 280) = v48;
  *(a2 + 288) = v51;
  *(a2 + 296) = v53;
  return result;
}

uint64_t _s9MusicCore12MetricsEventV15ComponentRenderV13PreloadStatusO8rawValueAGSgSS_tcfC_0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_D1B2B8;
  v6._object = a2;
  v4 = sub_ABB140(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_5C9B90()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_175(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *sub_5C9D00(char *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v10 = *v4;
  v6 = *(*v4 + 16);
  v7 = v6 + v9;
  if (__OFADD__(v6, v9))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    if (v6 <= v7)
    {
      v11 = v7;
    }

    else
    {
      v11 = v6;
    }

    goto LABEL_11;
  }

  v5 = a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v10;
  if (!result)
  {
    goto LABEL_8;
  }

  if (v7 > *(v10 + 24) >> 1)
  {
    goto LABEL_19;
  }

  if (v8 == v5)
  {
    while (v9 > 0)
    {
      __break(1u);
LABEL_8:
      if (v6 <= v7)
      {
        v11 = v7;
      }

      else
      {
        v11 = v6;
      }

LABEL_11:
      result = sub_503918(result, v11, 1);
      v10 = *v4;
      if (v8 != v5)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v10 + 24) >> 1) - *(v10 + 16) < v9)
  {
    __break(1u);
  }

  else
  {
    result = swift_arrayInitWithCopy();
    if (v9 <= 0)
    {
LABEL_16:
      *v4 = v10;
      return result;
    }

    v12 = *(v10 + 16);
    v13 = __OFADD__(v12, v9);
    v14 = v12 + v9;
    if (!v13)
    {
      *(v10 + 16) = v14;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

void _s9MusicCore26MetricsReportingControllerC17recordDialogEvent_11pageContextyAA0cH0V0G0V_SSSgtF_0(uint64_t a1)
{
  v2 = sub_AB3350();
  v53 = *(v2 - 8);
  v54 = v2;
  __chkstk_darwin(v2);
  v51 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_AB3430();
  v50 = *(v52 - 8);
  __chkstk_darwin(v52);
  v49 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(SSMetricsDialogEvent) init];
  v6 = sub_AB9260();
  [v5 setDialogId:v6];

  v7 = sub_AB9260();

  [v5 setDialogType:v7];

  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = *(a1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
    inited = swift_initStackObject();
    *(inited + 32) = 0x656C746974;
    *(inited + 16) = xmmword_AF4EC0;
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = 0xE500000000000000;
    *(inited + 48) = v9;
    *(inited + 56) = v8;

    sub_52995C(inited);
    swift_setDeallocating();
    sub_12E1C(inited + 32, &qword_E0EA58);
    isa = sub_AB8FD0().super.isa;

    [v5 addPropertiesWithDictionary:isa];
  }

  if (*(a1 + 48))
  {
    v12 = sub_AB9260();
  }

  else
  {
    v12 = 0;
  }

  [v5 setMessage:v12];

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
  v14 = swift_initStackObject();
  v56 = xmmword_AF4EC0;
  *(v14 + 16) = xmmword_AF4EC0;
  *(v14 + 32) = 0x436567617373656DLL;
  v16 = *(a1 + 56);
  v15 = *(a1 + 64);
  *(v14 + 72) = &type metadata for String;
  *(v14 + 40) = 0xEB0000000065646FLL;
  *(v14 + 48) = v16;
  *(v14 + 56) = v15;

  sub_52995C(v14);
  swift_setDeallocating();
  sub_12E1C(v14 + 32, &qword_E0EA58);
  v17 = sub_AB8FD0().super.isa;

  [v5 addPropertiesWithDictionary:v17];

  v48 = v13;
  v18 = swift_initStackObject();
  *(v18 + 16) = v56;
  *(v18 + 32) = 0x736E6F6974706FLL;
  *(v18 + 40) = 0xE700000000000000;
  v19 = *(a1 + 72);
  *(v18 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  *(v18 + 48) = v19;

  sub_52995C(v18);
  swift_setDeallocating();
  sub_12E1C(v18 + 32, &qword_E0EA58);
  v20 = sub_AB8FD0().super.isa;

  [v5 addPropertiesWithDictionary:v20];

  v21 = sub_AB9260();
  [v5 setResult:v21];

  v22 = *(a1 + 88);
  if (v22)
  {
    v23 = *(a1 + 80);
    v24 = swift_initStackObject();
    *(v24 + 32) = 0x497463656A627573;
    *(v24 + 16) = v56;
    *(v24 + 72) = &type metadata for String;
    *(v24 + 40) = 0xE900000000000044;
    *(v24 + 48) = v23;
    *(v24 + 56) = v22;

    sub_52995C(v24);
    swift_setDeallocating();
    sub_12E1C(v24 + 32, &qword_E0EA58);
    v25 = sub_AB8FD0().super.isa;

    [v5 addPropertiesWithDictionary:v25];
  }

  v27 = *(a1 + 96);
  v26 = *(a1 + 104);

  v28 = sub_AB9260();
  [v5 setTargetId:v28];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD00);
  v29 = swift_allocObject();
  v48 = v5;
  v30 = v29;
  *(v29 + 16) = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FA0);
  v31 = swift_initStackObject();
  *(v31 + 16) = xmmword_AF8820;
  strcpy((v31 + 32), "responseTime");
  *(v31 + 45) = 0;
  *(v31 + 46) = -5120;
  v32 = v49;
  sub_AB3400();
  v33 = v51;
  sub_AB2AA0();
  sub_5CBACC();
  v34 = v54;
  sub_AB3410();
  (*(v53 + 8))(v33, v34);
  (*(v50 + 8))(v32, v52);
  v35 = v58;
  *(v31 + 48) = v57;
  *(v31 + 56) = v35;
  *(v31 + 64) = 0x79546E6F69746361;
  *(v31 + 72) = 0xEA00000000006570;
  v36 = 27503;
  if (*(a1 + 112))
  {
    v36 = 0x6C436C65636E6163;
  }

  v37 = 0xE200000000000000;
  if (*(a1 + 112))
  {
    v37 = 0xED000064656B6369;
  }

  *(v31 + 80) = v36;
  *(v31 + 88) = v37;
  *(v31 + 96) = 0x6449746567726174;
  *(v31 + 104) = 0xE800000000000000;
  *(v31 + 112) = v27;
  *(v31 + 120) = v26;
  v38 = sub_529834(v31);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FCF0);
  swift_arrayDestroy();
  *(v30 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD10);
  *(v30 + 32) = v38;
  v39 = sub_AB9740().super.isa;

  v40 = v48;
  [v48 setUserActions:v39];

  v41 = v55;
  v42 = *&v55[OBJC_IVAR____TtC9MusicCore26MetricsReportingController_metricsConfiguration];
  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  *(v43 + 24) = v40;
  v61 = sub_5CBB24;
  v62 = v43;
  v57 = _NSConcreteStackBlock;
  v58 = 1107296256;
  v59 = sub_1B5EB4;
  v60 = &block_descriptor_183;
  v44 = _Block_copy(&v57);
  v45 = v42;
  v46 = v41;
  v47 = v40;

  [v47 setStandardPropertiesWith:v45 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_5CA70C()
{

  return swift_deallocObject();
}

unint64_t sub_5CA79C()
{
  result = qword_E0FD28;
  if (!qword_E0FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD28);
  }

  return result;
}

unint64_t sub_5CA7F4()
{
  result = qword_E0FD30;
  if (!qword_E0FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD30);
  }

  return result;
}

unint64_t sub_5CA84C()
{
  result = qword_E0FD38;
  if (!qword_E0FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD38);
  }

  return result;
}

unint64_t sub_5CA8A4()
{
  result = qword_E0FD40;
  if (!qword_E0FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD40);
  }

  return result;
}

unint64_t sub_5CA8FC()
{
  result = qword_E0FD48;
  if (!qword_E0FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD48);
  }

  return result;
}

unint64_t sub_5CA954()
{
  result = qword_E0FD50;
  if (!qword_E0FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD50);
  }

  return result;
}

unint64_t sub_5CA9AC()
{
  result = qword_E0FD58;
  if (!qword_E0FD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FD58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MetricsEvent.TargetType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.TargetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_5CAB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5CAC44(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5CACF4()
{
  sub_5CAE1C();
  if (v0 <= 0x3F)
  {
    sub_AFE18(319, &qword_E0FDD0, &qword_E0FD10);
    if (v1 <= 0x3F)
    {
      sub_48C430(319, &qword_E15330);
      if (v2 <= 0x3F)
      {
        sub_48C430(319, &qword_E0FDD8);
        if (v3 <= 0x3F)
        {
          sub_48C430(319, &unk_E0FDE0);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_5CAE1C()
{
  if (!qword_E0FDC8)
  {
    sub_AB31C0();
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E0FDC8);
    }
  }
}

uint64_t sub_5CAE98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5CAF68(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5CB018()
{
  sub_5CAE1C();
  if (v0 <= 0x3F)
  {
    sub_AFE18(319, &qword_E0E400, &qword_E0E408);
    if (v1 <= 0x3F)
    {
      sub_48C430(319, &qword_E0E3F0);
      if (v2 <= 0x3F)
      {
        sub_48C430(319, &unk_E0FE90);
        if (v3 <= 0x3F)
        {
          sub_AFE18(319, &qword_E0E410, &qword_E0E418);
          if (v4 <= 0x3F)
          {
            sub_48C430(319, &qword_E15330);
            if (v5 <= 0x3F)
            {
              sub_AFE18(319, &qword_E0FDD0, &qword_E0FD10);
              if (v6 <= 0x3F)
              {
                sub_48C430(319, &qword_E0FDD8);
                if (v7 <= 0x3F)
                {
                  sub_48C430(319, &unk_E0FDE0);
                  if (v8 <= 0x3F)
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

uint64_t getEnumTagSinglePayload for MetricsEvent.Click.ActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xC0)
  {
    goto LABEL_17;
  }

  if (a2 + 64 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 64) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 64;
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

      return (*a1 | (v4 << 8)) - 64;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 64;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x41;
  v8 = v6 - 65;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MetricsEvent.Click.ActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 64) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xC0)
  {
    v4 = 0;
  }

  if (a2 > 0xBF)
  {
    v5 = ((a2 - 192) >> 8) + 1;
    *result = a2 + 64;
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
    *result = a2 + 64;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_5CB394(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF3 && *(a1 + 16))
  {
    return (*a1 + 2147483636);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 11;
  if (v4 >= 0xD)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5CB3EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF4)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483636;
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF4)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 11;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionDetailsO12SearchSourceO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_9MusicCore12MetricsEventV5ClickV13ActionDetailsO(uint64_t a1)
{
  if ((*(a1 + 25) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 25) & 7;
  }
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_5CB494(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 26))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 25);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_5CB4DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 26) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 26) = 0;
    }

    if (a2)
    {
      *(result + 25) = -a2;
    }
  }

  return result;
}

uint64_t sub_5CB524(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
    *(result + 24) = 0;
  }

  *(result + 25) = a2;
  return result;
}

__n128 __swift_memcpy24_8_0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_5CB568(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_5CB5B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_5CB610(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_5CB648(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 168);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_5CB6A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
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
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 168) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy113_8_0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_5CB7D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 73))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_5CB820(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_5CB894()
{
  swift_unknownObjectWeakDestroy();

  return swift_deallocObject();
}

uint64_t sub_5CB908()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_5CB948(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_17BD0;

  return sub_5C7ED4(a1, v4, v5, v6);
}

uint64_t sub_5CB9FC()
{

  return swift_deallocObject();
}

unint64_t sub_5CBACC()
{
  result = qword_E0FF70;
  if (!qword_E0FF70)
  {
    sub_AB3350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FF70);
  }

  return result;
}

uint64_t MetricsPageProperties.init(pageIdentifier:pageType:pageURL:pageDetails:extRefUrl:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v16 = type metadata accessor for MetricsPageProperties();
  v17 = v16[6];
  v18 = sub_AB31C0();
  (*(*(v18 - 8) + 56))(&a9[v17], 1, 1, v18);
  v19 = v16[7];
  v20 = &a9[v16[8]];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  result = sub_5C9584(a5, &a9[v17]);
  *&a9[v19] = a6;
  *v20 = a7;
  *(v20 + 1) = a8;
  return result;
}

uint64_t type metadata accessor for MetricsPageProperties()
{
  result = qword_E0FFD8;
  if (!qword_E0FFD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5CBD70(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = [v2 innermostModelObject];
LABEL_3:
    v4 = sub_5CBD70(v3);

    v5 = 0;
LABEL_8:
    v26 = v4;
LABEL_9:
    sub_17654(v5);
    return v4;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 3;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 4;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v4 = 0;
    v5 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 8;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 10;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 11;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 1;
    goto LABEL_8;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    v5 = 0;
    v4 = 12;
    goto LABEL_8;
  }

  objc_opt_self();
  v7 = swift_dynamicCastObjCClass();
  if (v7)
  {
    v8 = v7;
    v26 = 2;
    v9 = objc_opt_self();
    v10 = swift_allocObject();
    *(v10 + 16) = v8;
    *(v10 + 24) = &v26;
    v11 = swift_allocObject();
    *(v11 + 16) = sub_5D1E00;
    *(v11 + 24) = v10;
    v24 = sub_2D4D0;
    v25 = v11;
    aBlock = _NSConcreteStackBlock;
    v21 = 1107296256;
    v22 = sub_1822E0;
    v23 = &block_descriptor_177_1;
    v12 = _Block_copy(&aBlock);
    v13 = a1;

    [v9 performWithoutEnforcement:v12];

    _Block_release(v12);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      v5 = sub_5D1E00;
      v4 = v26;
      goto LABEL_9;
    }

    __break(1u);
  }

  else
  {
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 6;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 7;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 5;
      goto LABEL_8;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (v14)
    {
      v15 = [v14 innermostModelObject];
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        v5 = 0;
        v4 = 17;
        goto LABEL_8;
      }

      v3 = v15;
      goto LABEL_3;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 19;
      goto LABEL_8;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v5 = 0;
      v4 = 9;
      goto LABEL_8;
    }
  }

  aBlock = 0;
  v21 = 0xE000000000000000;
  sub_ABAD90(45);

  aBlock = 0xD00000000000002BLL;
  v21 = 0x8000000000B6C2D0;
  v16 = sub_75297C(&off_D1A270);
  v17 = MPModelObject.humanDescription(including:)(v16);
  v19 = v18;

  v27._countAndFlagsBits = v17;
  v27._object = v19;
  sub_AB94A0(v27);

  result = sub_ABAFD0();
  __break(1u);
  return result;
}

unint64_t MetricsContentType.rawValue.getter(char a1)
{
  result = 0x6D75626C61;
  switch(a1)
  {
    case 1:
    case 17:
      result = 0x7473696C79616C70;
      break;
    case 2:
      result = 1735290739;
      break;
    case 3:
      result = 0x747369747261;
      break;
    case 4:
      result = 0x65506C6169636F73;
      break;
    case 5:
      result = 0x6569766F6DLL;
      break;
    case 6:
      result = 0x776F68537674;
      break;
    case 7:
      result = 0x646F736970457674;
      break;
    case 8:
      result = 0x7265736F706D6F63;
      break;
    case 9:
      result = 0x4173746964657263;
      break;
    case 10:
      result = 0x726F7461727563;
      break;
    case 11:
      result = 0x65726E6567;
      break;
    case 12:
      result = 0x6174536F69646172;
      break;
    case 13:
      result = 0x686372616573;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x6E6F736165537674;
      break;
    case 18:
      result = 0x497972617262696CLL;
      break;
    case 19:
      result = 0x614C64726F636572;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_5CC55C()
{
  swift_getObjectType();
  result = 1;
  if (![v0 cachedResponse] || (v1 = swift_getObjCClassFromMetadata(), objc_msgSend(v0, "xpSamplingPercentageCachedResponses"), (objc_msgSend(v1, "shouldReportCachedEventWithSamplingPercentage:") & 1) == 0))
  {
    if ([v0 cachedResponse])
    {
      return 0;
    }

    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [v0 xpSessionDuration];
    v4 = v3;
    [v0 xpSamplingPercentageUsers];
    if (([ObjCClassFromMetadata shouldCollectTimingDataWithSessionDuration:v4 samplingPercentage:v5] & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

id Double.toMillisecondsInServerTime.getter(double a1)
{
  v1 = [objc_opt_self() serverTimeFromTimeInterval:a1];
  v2 = [v1 unsignedLongLongValue];

  return v2;
}

uint64_t sub_5CC6A8()
{
  v1 = sub_AB9260();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_12E1C(v7, &qword_E11F60);
    return 0;
  }
}

uint64_t MetricsPageProperties.pageURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for MetricsPageProperties() + 24);

  return sub_5C9584(a1, v3);
}

uint64_t MetricsPageProperties.pageDetails.getter()
{
  type metadata accessor for MetricsPageProperties();
}

uint64_t MetricsPageProperties.pageDetails.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MetricsPageProperties() + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MetricsPageProperties.extRefUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for MetricsPageProperties() + 32));

  return v1;
}

uint64_t MetricsPageProperties.extRefUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricsPageProperties() + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_5CCA00(char *a1, char *a2)
{
  v2 = *a2;
  v3 = MetricsContentType.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == MetricsContentType.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Int sub_5CCA88()
{
  v1 = *v0;
  sub_ABB5C0();
  MetricsContentType.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5CCAEC()
{
  MetricsContentType.rawValue.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_5CCB40()
{
  v1 = *v0;
  sub_ABB5C0();
  MetricsContentType.rawValue.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5CCBA0@<X0>(_BYTE *a1@<X8>)
{
  result = _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0();
  *a1 = result;
  return result;
}

unint64_t sub_5CCBD0@<X0>(unint64_t *a1@<X8>)
{
  result = MetricsContentType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

char *sub_5CCBFC()
{
  v1 = sub_AB9260();
  v2 = [v0 valueForConfigurationKey:v1];

  if (v2)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v14[0] = v15;
  v14[1] = v16;
  if (!*(&v16 + 1))
  {
    sub_12E1C(v14, &qword_E11F60);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = *(v13 + 16);
  if (v3)
  {
    v4 = v13 + 32;
    v5 = _swiftEmptyArrayStorage;
    do
    {
      sub_808B0(v4, v14);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18);
      if (swift_dynamicCast())
      {
        v6 = v15;
        sub_ABAD10();
        if (*(v6 + 16) && (v7 = sub_2EC004(v14), (v8 & 1) != 0))
        {
          sub_808B0(*(v6 + 56) + 32 * v7, &v15);
          sub_8085C(v14);

          if (swift_dynamicCast())
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v5 = sub_506314(0, *(v5 + 2) + 1, 1, v5);
            }

            v10 = *(v5 + 2);
            v9 = *(v5 + 3);
            if (v10 >= v9 >> 1)
            {
              v5 = sub_506314((v9 > 1), v10 + 1, 1, v5);
            }

            *(v5 + 2) = v10 + 1;
            v11 = &v5[16 * v10];
            *(v11 + 4) = 0x6D614E646C656966;
            *(v11 + 5) = 0xE900000000000065;
          }
        }

        else
        {

          sub_8085C(v14);
        }
      }

      v4 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v5;
}

uint64_t SSMetricsMutableEvent.dictionaryRepresentation.getter()
{
  v1 = [objc_allocWithZone(NSMutableDictionary) init];
  [v0 appendPropertiesToBody:v1];
  v2 = v1;
  sub_AB8FE0();

  return 0;
}

uint64_t sub_5CCF60(void *a1, uint64_t (*a2)(void))
{
  if (a1)
  {
    v4 = [a1 eventFields];
    if (v4)
    {
      v5 = v4;
      v6 = sub_AB8FF0();

      v7 = sub_781F8C(v6);

      if (v7)
      {
        isa = sub_AB8FD0().super.isa;

        [v2 addPropertiesWithDictionary:isa];
      }
    }
  }

  if (qword_E0D530 != -1)
  {
    swift_once();
  }

  v9 = sub_AB9260();
  v10 = sub_AB9260();
  [v2 setProperty:v9 forBodyKey:v10];

  if (qword_E0D540 != -1)
  {
    swift_once();
  }

  v11 = sub_AB9260();
  v12 = sub_AB9260();
  [v2 setProperty:v11 forBodyKey:v12];

  if (qword_E0D538 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.deviceType > 2u)
  {
    if (static DeviceCapabilities.deviceType == 3)
    {
      goto LABEL_16;
    }
  }

  else if (static DeviceCapabilities.deviceType - 1 >= 2)
  {
    goto LABEL_16;
  }

  v13 = sub_AB9260();
  v14 = sub_AB9260();
  [v2 setProperty:v13 forBodyKey:v14];

LABEL_16:
  v15 = [objc_opt_self() currentDevice];
  v16 = [v15 systemVersion];

  if (!v16)
  {
    sub_AB92A0();
    v16 = sub_AB9260();
  }

  v17 = sub_AB9260();
  [v2 setProperty:v16 forBodyKey:v17];

  return a2();
}

uint64_t sub_5CD2A0(void *a1, uint64_t (*a2)(void))
{
  v5 = sub_AB9260();
  v6 = sub_AB9260();
  [v2 setProperty:v5 forBodyKey:v6];

  if (!a1)
  {
    goto LABEL_7;
  }

  v7 = sub_AB9260();
  v8 = [a1 valueForConfigurationKey:v7];

  if (v8)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  v9 = *(&v18 + 1);
  if (*(&v18 + 1))
  {
    v10 = __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
    v11 = *(*(&v18 + 1) - 8);
    __chkstk_darwin(v10);
    v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v13);
    v14 = sub_ABB3A0();
    (*(v11 + 8))(v13, v9);
    __swift_destroy_boxed_opaque_existential_0(&v19);
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

  v15 = sub_AB9260();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a2();
}

uint64_t sub_5CD4FC(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v23[0] = a2;
  v4 = sub_AB7C10();
  v26 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_AB7C50();
  v7 = *(v25 - 8);
  __chkstk_darwin(v25);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_AB7C20();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E103C0);
  (*(v11 + 104))(v13, enum case for DispatchQoS.QoSClass.userInitiated(_:), v10);
  v14 = sub_ABA190();
  (*(v11 + 8))(v13, v10);
  v15 = swift_allocObject();
  v16 = v23[0];
  v17 = v23[1];
  v15[2] = a1;
  v15[3] = v17;
  v18 = v24;
  v15[4] = v16;
  v15[5] = v18;
  aBlock[4] = sub_5D1CE0;
  aBlock[5] = v15;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_151_2;
  v19 = _Block_copy(aBlock);
  v20 = a1;
  v21 = v17;

  sub_AB7C30();
  v27 = _swiftEmptyArrayStorage;
  sub_5D1D80(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_5D1CEC();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v19);

  (*(v26 + 8))(v6, v4);
  (*(v7 + 8))(v9, v25);
}

void sub_5CD89C(uint64_t a1, void *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v31 = a2;
  v7 = _s9MusicCore18DeviceCapabilitiesO9diskUsageSDyAC04DiskF8CategoryOs5Int64VGvgZ_0();
  v32 = sub_52A684(&off_D1B538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10070);
  swift_arrayDestroy();
  v29 = a4;
  v30 = a3;
  if (!a1 || (v33 = sub_5CCBFC()) == 0)
  {

    v33 = _swiftEmptyArrayStorage;
  }

  v8 = 0;
  v9 = v32;
  v10 = v32 + 8;
  v11 = 1 << *(v32 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v32[8];
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = v13;
LABEL_13:
    v13 = (v15 - 1) & v15;
    if (*(v7 + 16))
    {
      v17 = __clz(__rbit64(v15)) | (v8 << 6);
      v18 = (v9[7] + 16 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = sub_5221FC(*(v9[6] + v17));
      if (v22)
      {
        v23 = (*(*(v7 + 56) + 8 * v21) / 0x100000);
        v34[0] = v20;
        v34[1] = v19;
        __chkstk_darwin(v21);
        v28[2] = v34;

        if (sub_1B39BC(sub_45154C, v28, v33))
        {
          v23 = floor(v23 / 100.0) * 100.0;
        }

        v24 = objc_allocWithZone(NSNumber);
        v25 = [v24 initWithDouble:{v23, v29}];
        v26 = sub_AB9260();

        [v31 setProperty:v25 forBodyKey:v26];

        v9 = v32;
      }
    }
  }

  while (1)
  {
    v16 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      v30(v27);
      return;
    }

    v15 = v10[v16];
    ++v8;
    if (v15)
    {
      v8 = v16;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_5CDB28(void *a1, void *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v8 = a2[2];
  if (!v8)
  {
    return a3();
  }

  v9 = a2;
  v11 = a2[4];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v8 - 1) > v9[3] >> 1)
  {
    v9 = sub_506B94(isUniquelyReferenced_nonNull_native, v8, 1, v9);
    v20 = v9;
  }

  sub_61C7C4(0, 1, 0);
  v13 = swift_allocObject();
  v13[2] = v5;
  v13[3] = a1;
  v13[4] = v9;
  v13[5] = a3;
  v13[6] = a4;
  v19 = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_5D1EE4;
  *(v14 + 24) = v13;
  v18[0] = sub_36C08;
  v18[1] = v14;
  v15 = a1;

  v16 = v5;
  v11(&v19, v18);
}

uint64_t sub_5CDCCC(uint64_t *a1, uint64_t *a2, void (*a3)(uint64_t, uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v6 = *a2;
  v5 = a2[1];
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v5;

  a3(v4, sub_5D1D50, v7);
}

uint64_t sub_5CDD64(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4)
{
  v6 = [objc_opt_self() currentDeviceInfo];
  v7 = [v6 buildVersion];

  v8 = sub_AB9260();
  [a4 setProperty:v7 forBodyKey:v8];

  return a2();
}

void sub_5CDEF8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_76_0;
  v6 = _Block_copy(aBlock);

  v7.receiver = a1;
  v7.super_class = SSMetricsBaseEvent;
  objc_msgSendSuper2(&v7, "setStandardPropertiesWith:completionHandler:", a2, v6);
  _Block_release(v6);
}

void ICURLSession.enqueueDataRequestRecordingPerformanceMetrics(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_5D006C;
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = sub_151E0;
  v9[3] = &block_descriptor_176;
  v8 = _Block_copy(v9);

  [v3 enqueueDataRequest:a1 withCompletionHandler:v8];
  _Block_release(v8);
}

uint64_t sub_5CE1B4(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4)
{
  v19 = a4;
  v20 = a3;
  v18 = a2;
  v5 = sub_AB7C10();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_AB7C50();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_13C80(0, &qword_E103C0);
  v12 = sub_ABA150();
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  aBlock[4] = sub_5D1D78;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B5EB4;
  aBlock[3] = &block_descriptor_160;
  v14 = _Block_copy(aBlock);
  v15 = a1;

  sub_AB7C30();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_5D1D80(&qword_E13D90, &type metadata accessor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E11A50);
  sub_5D1CEC();
  sub_ABABB0();
  sub_ABA160();
  _Block_release(v14);

  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
  return v20(a1, v18);
}

void sub_5CE494(void *a1)
{
  if (qword_E0CC50 == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    v3 = a1;
    swift_once();
    a1 = v3;
    if (!v3)
    {
      return;
    }
  }

  v1 = [a1 performanceMetrics];
  if (v1)
  {
    v2 = v1;
    sub_5C9710(v2, &v4);
    MetricsReportingController.recordLoadUrlEvent(_:)(&v4);
    sub_5C9B60(&v4);
  }
}

uint64_t sub_5CE54C()
{
  v1 = sub_AB9260();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_13C80(0, &qword_E0FF68);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_12E1C(v7, &qword_E11F60);
    return 0;
  }
}

uint64_t sub_5CE654()
{
  v1[0] = 0xD000000000000017;
  v1[1] = 0x8000000000B6C0E0;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_12E1C(&v2, &qword_E11F60);
  }

  return 0;
}

uint64_t sub_5CE730()
{
  v1[0] = 0xD00000000000001CLL;
  v1[1] = 0x8000000000B6C050;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_12E1C(&v2, &qword_E11F60);
  }

  return 0;
}

uint64_t sub_5CE7D8@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 0xD00000000000001CLL;
  v6[1] = 0x8000000000B6C2B0;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v6, &v7);
  if (v8)
  {
    v2 = sub_AB3430();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_12E1C(&v7, &qword_E11F60);
    v5 = sub_AB3430();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_5CE8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_15F84(a1, v9 - v3, &qword_E0FF60);
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0FF60);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    (*(v6 + 32))(boxed_opaque_existential_0, v4, v5);
  }

  v9[0] = 0xD00000000000001CLL;
  v9[1] = 0x8000000000B6C2B0;
  sub_4FD6CC();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String);
  return sub_12E1C(a1, &qword_E0FF60);
}

uint64_t sub_5CEA88()
{
  v1 = sub_AB9260();
  v2 = [v0 propertyForBodyKey:v1];

  if (v2)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_13C80(0, &qword_E0FF68);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_12E1C(v7, &qword_E11F60);
    return 0;
  }
}

id sub_5CEDCC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_5CEE40()
{
  v1[0] = 0xD000000000000017;
  v1[1] = 0x8000000000B6C260;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v1, &v2);
  if (v3)
  {
    if (swift_dynamicCast())
    {
      return LOBYTE(v1[0]);
    }
  }

  else
  {
    sub_12E1C(&v2, &qword_E11F60);
  }

  return 0;
}

uint64_t sub_5CEEE8@<X0>(uint64_t a1@<X8>)
{
  v6[0] = 0xD000000000000026;
  v6[1] = 0x8000000000B6C280;
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(v6, &v7);
  if (v8)
  {
    v2 = sub_AB3430();
    v3 = swift_dynamicCast();
    return (*(*(v2 - 8) + 56))(a1, v3 ^ 1u, 1, v2);
  }

  else
  {
    sub_12E1C(&v7, &qword_E11F60);
    v5 = sub_AB3430();
    return (*(*(v5 - 8) + 56))(a1, 1, 1, v5);
  }
}

uint64_t sub_5CF004(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FF60);
  __chkstk_darwin(v2 - 8);
  v4 = v9 - v3;
  sub_15F84(a1, v9 - v3, &qword_E0FF60);
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_12E1C(v4, &qword_E0FF60);
    v10 = 0u;
    v11 = 0u;
  }

  else
  {
    *(&v11 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v10);
    (*(v6 + 32))(boxed_opaque_existential_0, v4, v5);
  }

  v9[0] = 0xD000000000000026;
  v9[1] = 0x8000000000B6C280;
  sub_4FD6CC();
  NSUserDefaults.subscript.setter(&v10, v9, &type metadata for String);
  return sub_12E1C(a1, &qword_E0FF60);
}

void sub_5CF1CC(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(void *, id, id, void *, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v14 = a1;
  v13 = a3;
  a7(a3, v14, v14, a3, a6, v12);
}

id DeviceCapabilitiesObjC.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id Music_SSMetricsPageRenderEvent.__allocating_init(bodyDictionary:)()
{
  v1 = objc_allocWithZone(v0);
  isa = sub_AB8FD0().super.isa;

  v3 = [v1 initWithBodyDictionary:isa];

  return v3;
}

id Music_SSMetricsPageRenderEvent.init(bodyDictionary:)()
{
  ObjectType = swift_getObjectType();
  isa = sub_AB8FD0().super.isa;

  v5.receiver = v0;
  v5.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v5, "initWithBodyDictionary:", isa);

  return v3;
}

uint64_t sub_5CF4C8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_52215C(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_ABB3C0();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9MusicCore21MetricsPagePropertiesV23__derived_struct_equalsySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_AB31C0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10080);
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_ABB3C0() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_ABB3C0() & 1) == 0)
  {
    return 0;
  }

  v32 = v7;
  v33 = type metadata accessor for MetricsPageProperties();
  v14 = *(v33 + 24);
  v15 = *(v11 + 48);
  sub_15F84(a1 + v14, v13, &qword_E0DC30);
  sub_15F84(a2 + v14, &v13[v15], &qword_E0DC30);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_15F84(v13, v10, &qword_E0DC30);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v18 = &v13[v15];
      v19 = v32;
      (*(v5 + 32))(v32, v18, v4);
      sub_5D1D80(qword_E10088, &type metadata accessor for URL);
      v20 = sub_AB91C0();
      v21 = *(v5 + 8);
      v21(v19, v4);
      v21(v10, v4);
      sub_12E1C(v13, &qword_E0DC30);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v5 + 8))(v10, v4);
LABEL_12:
    sub_12E1C(v13, &qword_E10080);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_12E1C(v13, &qword_E0DC30);
LABEL_16:
  v22 = v33;
  v23 = *(v33 + 28);
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24)
  {
    if (!v25)
    {
      return 0;
    }

    v26 = sub_5CF4C8(v24, v25);

    if ((v26 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v25)
  {
    return 0;
  }

  v27 = *(v22 + 32);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = v30[1];
  if (v29)
  {
    if (v31 && (*v28 == *v30 && v29 == v31 || (sub_ABB3C0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v31)
  {
    return 1;
  }

  return 0;
}

void sub_5CFA88(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_5CEE40();

  v14 = sub_ABB470();
  v15 = sub_AB9260();
  [a2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  *&aBlock = 0x646E655265676170;
  *(&aBlock + 1) = 0xEA00000000007265;
  v16 = sub_ABB470();
  v17 = sub_AB9260();
  [a2 setProperty:v16 forBodyKey:v17];
  swift_unknownObjectRelease();

  if (!a1)
  {
    aBlock = 0u;
    v40 = 0u;
LABEL_14:
    sub_12E1C(&aBlock, &qword_E11F60);
    goto LABEL_15;
  }

  v18 = sub_AB9260();
  v19 = [a1 valueForConfigurationKey:v18];

  if (v19)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v36 = 0u;
    v37 = 0u;
  }

  aBlock = v36;
  v40 = v37;
  if (!*(&v37 + 1))
  {
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
  if (swift_dynamicCast())
  {
    v20 = *(v36 + 16);
    if (v20)
    {
      v21 = sub_52215C(0xD000000000000021, 0x8000000000B6C210);
      if ((v22 & 1) == 0)
      {
        v20 = 0;
        v34 = 0;
        if (v13)
        {
          goto LABEL_13;
        }

        goto LABEL_18;
      }

      sub_808B0(*(v36 + 56) + 32 * v21, &aBlock);
      sub_13C80(0, &qword_E0FF68);
      v23 = swift_dynamicCast();
      v20 = v36;
      if (!v23)
      {
        v20 = 0;
      }
    }

    v34 = v20;
    if (v13)
    {
LABEL_13:
      sub_13C80(0, &qword_E0FF68);
      v24.super.super.isa = sub_ABA760(1.0).super.super.isa;
      goto LABEL_21;
    }

LABEL_18:
    if (v20)
    {
      v24.super.super.isa = v20;
    }

    else
    {
      v24.super.super.isa = 0;
    }

LABEL_21:
    v26 = v24.super.super.isa;
    v27 = sub_AB9260();
    [a2 setProperty:v26 forBodyKey:v27];

    if (*(v36 + 16) && (v28 = sub_52215C(0xD000000000000019, 0x8000000000B6C240), (v29 & 1) != 0))
    {
      sub_808B0(*(v36 + 56) + 32 * v28, &aBlock);

      sub_13C80(0, &qword_E0FF68);
      if (swift_dynamicCast())
      {
        v30 = v36;
LABEL_27:
        v31 = v30;
        v32 = sub_AB9260();
        [a2 setProperty:v31 forBodyKey:v32];

        v41 = a5;
        v42 = a6;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v40 = sub_1B5EB4;
        *(&v40 + 1) = &block_descriptor_167_2;
        v33 = _Block_copy(&aBlock);

        v35.receiver = a3;
        v35.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
        objc_msgSendSuper2(&v35, "setStandardPropertiesWith:completionHandler:", a4, v33);
        _Block_release(v33);

        return;
      }
    }

    else
    {
    }

    v30 = 0;
    goto LABEL_27;
  }

LABEL_15:
  v41 = a5;
  v42 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v40 = sub_1B5EB4;
  *(&v40 + 1) = &block_descriptor_164_1;
  v25 = _Block_copy(&aBlock);

  v38.receiver = a3;
  v38.super_class = type metadata accessor for Music_SSMetricsPageRenderEvent();
  objc_msgSendSuper2(&v38, "setStandardPropertiesWith:completionHandler:", a4, v25);
  _Block_release(v25);
}

uint64_t _s9MusicCore18MetricsContentTypeO8rawValueACSgSS_tcfC_0()
{
  v0 = sub_ABB420();

  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_5D0034()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_176(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_5D0090()
{
  result = qword_E0FF78;
  if (!qword_E0FF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E0FF78);
  }

  return result;
}

uint64_t sub_5D00F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_5D01C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_5D0278()
{
  sub_5CAE1C();
  if (v0 <= 0x3F)
  {
    sub_5D0324();
    if (v1 <= 0x3F)
    {
      sub_5D0388();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_5D0324()
{
  if (!qword_E0FDD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E0FD10);
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E0FDD0);
    }
  }
}

void sub_5D0388()
{
  if (!qword_E15330)
  {
    v0 = sub_ABA9C0();
    if (!v1)
    {
      atomic_store(v0, &qword_E15330);
    }
  }
}

void sub_5D0430(void (*a1)(uint64_t, uint64_t))
{
  v3 = [objc_opt_self() defaultIdentityStore];
  v4 = [objc_opt_self() activeAccount];
  v18[0] = 0;
  v5 = [v3 DSIDForUserIdentity:v4 outError:v18];

  if (v5)
  {
    v6 = v18[0];
    [v1 setAccountIdentifier:v5];
    v7 = [v5 longLongValue] != 0;
  }

  else
  {
    v8 = v18[0];
    sub_AB3050();

    swift_willThrow();

    [v1 setAccountIdentifier:0];
    v7 = 1;
  }

  v9 = [objc_allocWithZone(NSNumber) initWithBool:v7];
  v10 = sub_AB9260();
  [v1 setProperty:v9 forBodyKey:v10];

  v11 = [objc_opt_self() sharedController];
  v12 = [v11 musicSubscriptionStatus];

  if (v12)
  {
    v13 = [v12 statusType];
    if (v13 > 1)
    {
      if (v13 != &dword_0 + 2)
      {
        goto LABEL_13;
      }

      [v12 reasonType];
    }

    else if (v13)
    {
      if (v13 != &dword_0 + 1)
      {
        do
        {
          v18[0] = 0;
          v18[1] = 0xE000000000000000;
          sub_ABAD90(24);
          a1 = 0xD000000000000013;
          v19._object = 0x8000000000B4AB80;
          v19._countAndFlagsBits = 0xD000000000000013;
          sub_AB94A0(v19);
          [v12 statusType];
          v20._countAndFlagsBits = 0xD00000000000001DLL;
          v20._object = 0x8000000000B6C1D0;
          sub_AB94A0(v20);
          v21._countAndFlagsBits = 32;
          v21._object = 0xE100000000000000;
          sub_AB94A0(v21);
          [v12 statusType];
          type metadata accessor for ICMusicSubscriptionStatusType(0);
          sub_ABAF70();
          v13 = sub_ABAFD0();
          __break(1u);
LABEL_13:
          ;
        }

        while (v13 != &dword_0 + 3);
      }
    }

    else
    {
    }
  }

  v14 = sub_AB9260();

  v15 = sub_AB9260();
  [v1 setProperty:v14 forBodyKey:v15];

  a1(v16, v17);
}

uint64_t sub_5D0854(uint64_t (*a1)(void))
{
  v2 = v1;
  swift_getObjectType();
  v4 = [swift_getObjCClassFromMetadata() Topic];
  [v2 setTopic:v4];

  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 infoDictionary];

  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  v7 = sub_AB8FF0();

  if (!v7)
  {
LABEL_8:
    v11 = 1;
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (!*(v7 + 16))
  {
    goto LABEL_10;
  }

  v8 = sub_52215C(0xD000000000000012, 0x8000000000B6C180);
  if ((v9 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_808B0(*(v7 + 56) + 32 * v8, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = sub_AB9260();

  v11 = 0;
LABEL_12:
  [v2 setApplicationIdentifier:v10];

  if (v11)
  {
    goto LABEL_18;
  }

  if (!*(v7 + 16) || (v12 = sub_52215C(0xD00000000000001ALL, 0x8000000000B6C160), (v13 & 1) == 0))
  {

    goto LABEL_18;
  }

  sub_808B0(*(v7 + 56) + 32 * v12, v17);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:
    v14 = 0;
    goto LABEL_19;
  }

  v14 = sub_AB9260();

LABEL_19:
  v15 = sub_AB9260();
  [v2 setProperty:v14 forBodyKey:v15];
  swift_unknownObjectRelease();

  return a1();
}

void sub_5D0AE8(void (*a1)(void))
{
  v3 = [objc_opt_self() currentConnectionTypeHeader];
  if (!v3)
  {
    sub_AB92A0();
    v3 = sub_AB9260();
  }

  [v1 setConnection:v3];

  v4 = objc_allocWithZone(ICStoreRequestContext);
  v8[4] = UIScreen.Dimensions.size.getter;
  v8[5] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_41A314;
  v8[3] = &block_descriptor_145_2;
  v5 = _Block_copy(v8);
  v6 = [v4 initWithBlock:v5];
  _Block_release(v5);

  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
  }

  else
  {
    v7 = [v6 userAgent];
    if (!v7)
    {
      sub_AB92A0();
      v7 = sub_AB9260();
    }

    [v1 setUserAgent:v7];

    a1();
  }
}

uint64_t sub_5D0CA0(void *a1, void *a2, void *a3, void (**a4)(void))
{
  v8 = swift_allocObject();
  *(v8 + 16) = a4;
  v9 = a2[2];
  if (v9)
  {
    v10 = a2[4];
    _Block_copy(a4);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = a2;
    if (!isUniquelyReferenced_nonNull_native || (v9 - 1) > a2[3] >> 1)
    {
      a2 = sub_506B94(isUniquelyReferenced_nonNull_native, v9, 1, a2);
      v19 = a2;
    }

    sub_61C7C4(0, 1, 0);
    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v12[5] = sub_15AB00;
    v12[6] = v8;
    v18 = a1;
    v13 = swift_allocObject();
    *(v13 + 16) = sub_5D1C58;
    *(v13 + 24) = v12;
    v17[0] = sub_2D4D0;
    v17[1] = v13;
    v14 = a1;

    v15 = a3;
    v10(&v18, v17);
  }

  else
  {
    _Block_copy(a4);
    a4[2](a4);
  }
}

uint64_t sub_5D0E68(void *a1, void *a2, void (**a3)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E098);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_AFFB00;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_5D1AE4;
  *(v8 + 24) = v7;
  *(v6 + 32) = sub_5D1B08;
  *(v6 + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_5D1B10;
  *(v10 + 24) = v9;
  *(v6 + 48) = sub_5D1F10;
  *(v6 + 56) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_5D1B34;
  *(v12 + 24) = v11;
  *(v6 + 64) = sub_5D1F10;
  *(v6 + 72) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_5D1B60;
  *(v14 + 24) = v13;
  *(v6 + 80) = sub_5D1F10;
  *(v6 + 88) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_5D1BC4;
  *(v16 + 24) = v15;
  *(v6 + 96) = sub_5D1F10;
  *(v6 + 104) = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_5D1BE8;
  *(v18 + 24) = v17;
  *(v6 + 112) = sub_5D1F10;
  *(v6 + 120) = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_5D1BF0;
  *(v20 + 24) = v19;
  *(v6 + 128) = sub_5D1F10;
  *(v6 + 136) = v20;
  sub_5D0CA0(a1, v6, a2, a3);
}

uint64_t sub_5D117C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 windowHeight];
  v7 = sub_AB9260();
  [v3 setProperty:v6 forBodyKey:v7];

  v8 = [v3 windowWidth];
  v9 = sub_AB9260();
  [v3 setProperty:v8 forBodyKey:v9];

  sub_13C80(0, &qword_E103C0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_70638, v10);
}

void sub_5D12E0(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_5CE654();

  [a2 setXPSamplingForced:v13 & 1];
  if (!a1)
  {
    aBlock = 0u;
    v27 = 0u;
LABEL_20:
    sub_12E1C(&aBlock, &qword_E11F60);
    goto LABEL_21;
  }

  v14 = sub_AB9260();
  v15 = [a1 valueForConfigurationKey:v14];

  if (v15)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
  }

  aBlock = v23;
  v27 = v24;
  if (!*(&v24 + 1))
  {
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
  if (swift_dynamicCast())
  {
    if (*(v23 + 16))
    {
      v16 = sub_52215C(0xD000000000000017, 0x8000000000B6C090);
      if (v17)
      {
        sub_808B0(*(v23 + 56) + 32 * v16, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSamplingPercentageUsers:*&v23];
        }
      }
    }

    if (*(v23 + 16))
    {
      v18 = sub_52215C(0x446E6F6973736573, 0xEF6E6F6974617275);
      if (v19)
      {
        sub_808B0(*(v23 + 56) + 32 * v18, &aBlock);
        if (swift_dynamicCast())
        {
          [a2 setXPSessionDuration:*&v23];
        }
      }
    }

    if (*(v23 + 16) && (v20 = sub_52215C(0xD000000000000021, 0x8000000000B6C0B0), (v21 & 1) != 0))
    {
      sub_808B0(*(v23 + 56) + 32 * v20, &aBlock);

      if (swift_dynamicCast())
      {
        [a2 setXPSamplingPercentageCachedResponses:*&v23];
      }
    }

    else
    {
    }
  }

LABEL_21:
  if ([a2 xpSamplingForced])
  {
    [a2 setXPSamplingPercentageUsers:1.0];
    [a2 setXPSamplingPercentageCachedResponses:1.0];
  }

  v28 = a5;
  v29 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v27 = sub_1B5EB4;
  *(&v27 + 1) = &block_descriptor_63_2;
  v22 = _Block_copy(&aBlock);

  v25.receiver = a3;
  v25.super_class = SSMetricsLoadURLEvent;
  objc_msgSendSuper2(&v25, "setStandardPropertiesWith:completionHandler:", a4, v22);
  _Block_release(v22);
}

void sub_5D1690(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [objc_opt_self() standardUserDefaults];
  v13 = sub_5CE730();

  isa = sub_AB9890().super.super.isa;
  v15 = sub_AB9260();
  [a2 setProperty:isa forBodyKey:v15];

  if (!a1)
  {
    aBlock = 0u;
    v35 = 0u;
LABEL_10:
    sub_12E1C(&aBlock, &qword_E11F60);
    goto LABEL_25;
  }

  v16 = sub_AB9260();
  v17 = [a1 valueForConfigurationKey:v16];

  if (v17)
  {
    sub_ABAB50();
    swift_unknownObjectRelease();
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  aBlock = v31;
  v35 = v32;
  if (!*(&v32 + 1))
  {
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E13070);
  if (!swift_dynamicCast())
  {
    goto LABEL_25;
  }

  if (v13)
  {
    *(&v35 + 1) = &type metadata for Double;
    *&aBlock = 0x3FF0000000000000;
    goto LABEL_14;
  }

  if (*(v31 + 16))
  {
    v18 = sub_52215C(0xD000000000000026, 0x8000000000B6BFE0);
    if (v19)
    {
      sub_808B0(*(v31 + 56) + 32 * v18, &aBlock);
LABEL_14:
      sub_13C80(0, &qword_E0FF68);
      v20 = swift_dynamicCast();
      v21 = v31;
      if (!v20)
      {
        v21 = 0;
      }

      goto LABEL_18;
    }
  }

  aBlock = 0u;
  v35 = 0u;
  sub_12E1C(&aBlock, &qword_E11F60);
  v21 = 0;
LABEL_18:
  v22 = v21;
  v23 = sub_AB9260();
  [a2 setProperty:v22 forBodyKey:v23];

  if (*(v31 + 16) && (v24 = sub_52215C(0xD00000000000001ELL, 0x8000000000B6C010), (v25 & 1) != 0))
  {
    sub_808B0(*(v31 + 56) + 32 * v24, &aBlock);

    sub_13C80(0, &qword_E0FF68);
    v26 = swift_dynamicCast();
    v27 = v31;
    if (!v26)
    {
      v27 = 0;
    }
  }

  else
  {

    v27 = 0;
  }

  v28 = v27;
  v29 = sub_AB9260();
  [a2 setProperty:v28 forBodyKey:v29];

LABEL_25:
  v36 = a5;
  v37 = a6;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v35 = sub_1B5EB4;
  *(&v35 + 1) = &block_descriptor_56_0;
  v30 = _Block_copy(&aBlock);

  v33.receiver = a3;
  v33.super_class = type metadata accessor for Music_SSMetricsComponentRenderEvent();
  objc_msgSendSuper2(&v33, "setStandardPropertiesWith:completionHandler:", a4, v30);
  _Block_release(v30);
}

uint64_t sub_5D1B8C()
{

  return swift_deallocObject();
}

uint64_t sub_5D1C1C()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_130Tm()
{

  return swift_deallocObject();
}

unint64_t sub_5D1CEC()
{
  result = qword_E13DA0;
  if (!qword_E13DA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_E11A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E13DA0);
  }

  return result;
}

uint64_t sub_5D1D80(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_5D1DC8()
{

  return swift_deallocObject();
}

char *sub_5D1E00()
{
  v1 = *(v0 + 24);
  result = [*(v0 + 16) cloudStatus];
  if (result == &dword_4 + 1 || result == &dword_0 + 3)
  {
    *v1 = 18;
  }

  return result;
}

void static MusicCoreAnalytics.sendEvent<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  v7 = __chkstk_darwin(a1);
  v51 = &v41[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v11 = &v41[-v10];
  v50 = v12;
  __chkstk_darwin(v9);
  v14 = &v41[-v13];
  if (qword_E0CC58 != -1)
  {
    swift_once();
  }

  v15 = sub_AB4BC0();
  __swift_project_value_buffer(v15, qword_E71D40);
  v16 = *(v6 + 16);
  v16(v14, a1, a2);
  v48 = v16;
  v49 = a1;
  v16(v11, a1, a2);
  v17 = sub_AB4BA0();
  v18 = sub_AB9F50();
  v47 = v17;
  v19 = (a3 + 8);
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v46 = v20;
    v44 = swift_slowAlloc();
    aBlock[0] = v44;
    *v20 = 136315395;
    v45 = *(a3 + 8);
    v43 = v19 & 0xFFFFFFFFFFFFLL | 0x60A1000000000000;
    v21 = v45(a2, a3);
    v23 = v22;
    v42 = v18;
    v24 = *(v6 + 8);
    v24(v14, a2);
    v25 = sub_500C84(v21, v23, aBlock);

    v26 = v46;
    *(v46 + 1) = v25;
    *(v26 + 6) = 2081;
    (*(a3 + 16))(a2, a3);
    v24(v11, a2);
    sub_5D26B8();
    v27 = sub_AB9000();
    v29 = v28;

    v30 = sub_500C84(v27, v29, aBlock);

    v31 = v46;
    *(v46 + 14) = v30;
    v32 = v47;
    _os_log_impl(&dword_0, v47, v42, "Send analytics event: %s, payload: %{private}s", v31, 0x16u);
    swift_arrayDestroy();

    v33 = v45;
  }

  else
  {
    v34 = *(v6 + 8);
    v34(v11, a2);

    v34(v14, a2);
    v33 = *v19;
  }

  v35 = v49;
  v33(a2, a3);
  v36 = v51;
  v48(v51, v35, a2);
  v37 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = a2;
  *(v38 + 24) = a3;
  (*(v6 + 32))(v38 + v37, v36, a2);
  v39 = sub_AB9260();

  aBlock[4] = sub_5D2638;
  aBlock[5] = v38;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_5D24B4;
  aBlock[3] = &block_descriptor_177;
  v40 = _Block_copy(aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v40);
}

void static MusicCoreAnalytics.sendEvent(eventName:eventPayload:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_AB9260();
  v8[4] = a3;
  v8[5] = a4;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_5D24B4;
  v8[3] = &block_descriptor_3_3;
  v7 = _Block_copy(v8);

  AnalyticsSendEventLazy();
  _Block_release(v7);
}

Class sub_5D24B4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_5D26B8();
    v4.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

uint64_t sub_5D2540()
{
  v0 = sub_AB4BC0();
  __swift_allocate_value_buffer(v0, qword_E71D40);
  __swift_project_value_buffer(v0, qword_E71D40);
  return sub_AB4BB0();
}

uint64_t sub_5D25B8()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t block_copy_helper_177(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_5D26B8()
{
  result = qword_E112E0;
  if (!qword_E112E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_E112E0);
  }

  return result;
}

void *MetricsEvent.PageRender.performanceMetrics.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t MetricsEvent.PageRender.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_ABA9C0();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t MetricsEvent.PageRender.request.setter(uint64_t a1)
{
  v3 = *(*v1 + 152);
  swift_beginAccess();
  v4 = sub_ABA9C0();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_5D2AD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MetricsPageProperties();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t MetricsEvent.PageRender.__allocating_init(pageProperties:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetricsEvent.PageRender.init(pageProperties:)(a1);
  return v2;
}

uint64_t *MetricsEvent.PageRender.init(pageProperties:)(uint64_t a1)
{
  v3 = *v1;
  v1[2] = 0;
  v1[3] = 0;
  *(v1 + 32) = 1;
  v1[5] = 0;
  *(v1 + 48) = 1;
  v1[7] = 0;
  *(v1 + 64) = 1;
  v1[9] = 0;
  *(v1 + 80) = 1;
  v1[11] = 0;
  *(v1 + 96) = 1;
  v1[13] = 0;
  *(v1 + 112) = 1;
  v1[15] = 0;
  *(v1 + 128) = 1;
  (*(*(*(v3 + 80) - 8) + 56))(v1 + *(v3 + 152), 1, 1);
  *(v1 + *(*v1 + 168)) = 0;
  sub_70CD8(a1, v1 + *(*v1 + 160));
  return v1;
}

void *MetricsEvent.PageRender.updatePerformanceMetrics(_:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  *(v3 + 16) = a1;
  v8 = a1;

  result = *(v3 + 16);
  if (result)
  {
    [result responseEndTime];
    v11 = v10;
    result = swift_beginAccess();
    if ((*(v3 + 32) & 1) == 0)
    {
      swift_beginAccess();
      *(v3 + 72) = v11;
      *(v3 + 80) = 0;
      return sub_5D2D38(a2, a3);
    }
  }

  return result;
}

uint64_t sub_5D2D38(uint64_t result, uint64_t a2)
{
  v3 = *(*v2 + 168);
  if ((*(v2 + v3) & 1) == 0)
  {
    v5 = result;
    *(v2 + v3) = 1;
    sub_58B7D4();
    v6 = swift_allocObject();
    v6[2] = v2;
    v6[3] = v5;
    v6[4] = a2;

    static OS_dispatch_queue.asyncOnMainIfNeeded(_:)(sub_5D379C, v6);
  }

  return result;
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAppear()()
{
  v1 = v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 112) == 1)
  {
    sub_AB3420();
    sub_AB33D0();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 104) = v7;
    *(v1 + 112) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageRequest()()
{
  v1 = v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 128) == 1)
  {
    sub_AB3420();
    sub_AB33D0();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 120) = v7;
    *(v1 + 128) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageAsUserInteractive()()
{
  v1 = v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 48) == 1)
  {
    sub_AB3420();
    sub_AB33D0();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 40) = v7;
    *(v1 + 48) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markResourceRequestStartTime()()
{
  v1 = v0;
  v2 = sub_AB3430();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v1 + 64) == 1)
  {
    sub_AB3420();
    sub_AB33D0();
    v7 = v6;
    (*(v3 + 8))(v5, v2);
    *(v1 + 56) = v7;
    *(v1 + 64) = 0;
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markOnScreenResourcesAppearEndTime(with:)(Swift::String_optional with)
{
  v2 = v1;
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v5 = sub_AB3430();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v2 + 32) == 1)
  {
    sub_AB3420();
    sub_AB33D0();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *(v2 + 24) = v10;
    *(v2 + 32) = 0;
    swift_beginAccess();
    v11 = *(v2 + 16);
    if (v11)
    {
      [v11 responseEndTime];
      swift_beginAccess();
      *(v2 + 72) = v10;
      *(v2 + 80) = 0;
      sub_5D2D38(countAndFlagsBits, object);
    }
  }
}

Swift::Void __swiftcall MetricsEvent.PageRender.markPageDisappearanceAndRecordIfNecessary(with:)(Swift::String_optional with)
{
  object = with.value._object;
  countAndFlagsBits = with.value._countAndFlagsBits;
  v4 = sub_AB3430();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (*(v1 + 80) == 1)
  {
    swift_beginAccess();
    if (*(v1 + 96) == 1)
    {
      sub_AB3420();
      sub_AB33D0();
      v9 = v8;
      (*(v5 + 8))(v7, v4);
      *(v1 + 88) = v9;
      *(v1 + 96) = 0;
    }
  }

  sub_5D2D38(countAndFlagsBits, object);
}

void sub_5D34C4(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_E0CC50 != -1)
  {
    v3 = a1;
    v4 = a2;
    v5 = a3;
    swift_once();
    a1 = v3;
    a2 = v4;
    a3 = v5;
  }

  MetricsReportingController.recordPageRenderEvent<A>(_:pageContext:)(a1, a2, a3);
}

id *MetricsEvent.PageRender.deinit()
{
  v1 = *(*v0 + 19);
  v2 = sub_ABA9C0();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_A92C8(v0 + *(*v0 + 20));
  return v0;
}

uint64_t MetricsEvent.PageRender.__deallocating_deinit()
{
  MetricsEvent.PageRender.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_5D364C()
{
  result = sub_ABA9C0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for MetricsPageProperties();
    if (v2 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5D375C()
{

  return swift_deallocObject();
}

__n128 static ApplicationCapabilities.shared.getter@<Q0>(_OWORD *a1@<X8>)
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t *ApplicationCapabilities.Controller.shared.unsafeMutableAddressor()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.Controller.shared;
}

__n128 ApplicationCapabilities.Controller.capabilities.getter@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

unint64_t sub_5D39A4(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x636973756DLL;
    v7 = 0xD000000000000013;
    v8 = 0x6C6169636F73;
    if (a1 != 3)
    {
      v8 = 0x6F69646172;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x646956636973756DLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000013;
    v2 = 0xD000000000000011;
    if (a1 != 9)
    {
      v2 = 0x6C62616E45696C6DLL;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x73656E757469;
    v4 = 0x74634170756F7267;
    if (a1 != 6)
    {
      v4 = 0x746963696C707865;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int sub_5D3B20()
{
  v1 = *v0;
  sub_ABB5C0();
  ApplicationCapabilities.Service.description.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5D3B84()
{
  ApplicationCapabilities.Service.description.getter(*v0);
  sub_AB93F0();
}

Swift::Int sub_5D3BD8()
{
  v1 = *v0;
  sub_ABB5C0();
  ApplicationCapabilities.Service.description.getter(v1);
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5D3C38@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV7ServiceO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

uint64_t sub_5D3C68@<X0>(uint64_t *a1@<X8>)
{
  result = ApplicationCapabilities.Service.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_5D3C94(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = ApplicationCapabilities.Service.description.getter(*a1);
  v5 = v4;
  if (v3 == ApplicationCapabilities.Service.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_ABB3C0();
  }

  return v8 & 1;
}

Swift::Void __swiftcall ApplicationCapabilities.setServiceEnabled(_:service:)(Swift::Bool _, MusicCore::ApplicationCapabilities::Service service)
{
  v3 = [objc_opt_self() sharedConnection];
  if (!v3)
  {
    __break(1u);
    return;
  }

  if (service > MusicCore_ApplicationCapabilities_Service_itunes)
  {
    if (service <= MusicCore_ApplicationCapabilities_Service_accountModification)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else if (service > MusicCore_ApplicationCapabilities_Service_subscriptionRelated)
  {
    if (service == MusicCore_ApplicationCapabilities_Service_social)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service != MusicCore_ApplicationCapabilities_Service_radio)
    {
      v5 = v3;
      goto LABEL_14;
    }
  }

  else
  {
    if (service == MusicCore_ApplicationCapabilities_Service_music)
    {
      v5 = v3;
      goto LABEL_14;
    }

    if (service == MusicCore_ApplicationCapabilities_Service_musicVideos)
    {
      v5 = v3;
LABEL_14:
      sub_AB92A0();
      v4 = sub_AB9260();

      [v5 setBoolValue:1 forSetting:v4];

      v3 = v5;
    }
  }
}

uint64_t ApplicationCapabilities.ratingWarning.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v2;
}

uint64_t ApplicationCapabilities.RatingWarning.description.getter()
{
  strcpy(v5, "RatingWarning(");
  HIBYTE(v5[1]) = -18;
  *&v7 = 0x6C6F687365726874;
  *(&v7 + 1) = 0xEA00000000003D64;
  v8._countAndFlagsBits = sub_ABB330();
  sub_AB94A0(v8);

  v9._countAndFlagsBits = 10;
  v9._object = 0xE100000000000000;
  sub_AB94A0(v9);
  v10._countAndFlagsBits = 0x6C6F687365726874;
  v10._object = 0xEA00000000003D64;
  sub_AB94A0(v10);

  v6._countAndFlagsBits = 0x3D656C746974;
  v6._object = 0xE600000000000000;
  v7 = *(v0 + 8);
  v4 = *(v0 + 8);
  sub_15F84(&v7, &v3, &unk_E12FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E12FB0);
  v11._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 10;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);
  sub_AB94A0(v6);

  v4._countAndFlagsBits = 0x3D6567617373656DLL;
  v4._object = 0xE800000000000000;
  v6 = *(v0 + 24);
  v3 = *(v0 + 24);
  sub_15F84(&v6, &v2, &unk_E12FB0);
  v13._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v13);

  v14._countAndFlagsBits = 10;
  v14._object = 0xE100000000000000;
  sub_AB94A0(v14);
  sub_AB94A0(v4);

  return v5[0];
}

uint64_t sub_5D40B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s9MusicCore23ApplicationCapabilitiesV13RatingWarningV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7) & 1;
}

void *ApplicationCapabilities.subscriptionStatus.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t ApplicationCapabilities.SubscriptionState.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x6564696365646E75;
  v2 = 0x6269726373627573;
  if (a1 != 2)
  {
    v2 = 0x6275536563696F76;
  }

  if (a1)
  {
    v1 = 0x63697373616C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

Swift::Int sub_5D41C4()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5D429C()
{
  sub_AB93F0();
}

Swift::Int sub_5D4360()
{
  sub_ABB5C0();
  sub_AB93F0();

  return sub_ABB610();
}

uint64_t sub_5D4434@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s9MusicCore23ApplicationCapabilitiesV17SubscriptionStateO8rawValueAESgSS_tcfC_0(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

void sub_5D4464(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000064;
  v3 = 0x6564696365646E75;
  v4 = 0xEA00000000007265;
  v5 = 0x6269726373627573;
  if (*v1 != 2)
  {
    v5 = 0x6275536563696F76;
    v4 = 0xEF72656269726373;
  }

  if (*v1)
  {
    v3 = 0x63697373616C63;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_5D4504(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return sub_56A574(*a1, *a2) & ~(v2 ^ v3) & 1;
}

uint64_t ApplicationCapabilities.Tabs.description.getter()
{
  v2._countAndFlagsBits = sub_AB9770();
  v2._object = v0;
  v3._countAndFlagsBits = 10;
  v3._object = 0xE100000000000000;
  sub_AB94A0(v3);
  sub_AB94A0(v2);

  sub_ABAD90(19);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10150);
  v4._countAndFlagsBits = sub_AB9350();
  sub_AB94A0(v4);

  v5._countAndFlagsBits = 10;
  v5._object = 0xE100000000000000;
  sub_AB94A0(v5);
  v6._countAndFlagsBits = 0xD000000000000010;
  v6._object = 0x8000000000B6C380;
  sub_AB94A0(v6);

  sub_ABAD90(21);

  v7._countAndFlagsBits = sub_AB9770();
  sub_AB94A0(v7);

  v8._countAndFlagsBits = 10;
  v8._object = 0xE100000000000000;
  sub_AB94A0(v8);
  v9._countAndFlagsBits = 0xD000000000000012;
  v9._object = 0x8000000000B6C3A0;
  sub_AB94A0(v9);

  return 0x2873626154;
}

uint64_t static ApplicationCapabilities.Tabs.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((sub_12D5F0(a1, a4) & 1) == 0)
  {
    return 0;
  }

  if (a2 == 7)
  {
    if (a5 != 7)
    {
      return 0;
    }
  }

  else if (a5 == 7 || (sub_56E1BC(a2, a5) & 1) == 0)
  {
    return 0;
  }

  return sub_5D4B54(a3, a6);
}

uint64_t sub_5D47CC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = 0xD000000000000029;
      v7 = "LibraryView.Playlists";
      switch(*v3)
      {
        case 1:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Artists";
          break;
        case 2:
          v6 = 0xD000000000000023;
          v7 = "LibraryView.Albums";
          break;
        case 3:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Songs";
          break;
        case 4:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.MadeForYou";
          break;
        case 5:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.MusicVideos";
          break;
        case 6:
          v6 = 0xD000000000000027;
          v7 = "LibraryView.Genres";
          break;
        case 7:
          v6 = 0xD000000000000022;
          v7 = "LibraryView.Compilations";
          break;
        case 8:
          v6 = 0xD000000000000028;
          v7 = "LibraryView.Composers";
          break;
        case 9:
          v6 = 0xD000000000000025;
          v7 = "LibraryView.Shows";
          break;
        case 0xA:
          v6 = 0xD000000000000021;
          v7 = "LibraryView.Downloaded";
          break;
        case 0xB:
          v6 = 0xD000000000000026;
          v7 = "LibraryView.Downloading";
          break;
        case 0xC:
          v6 = 0xD000000000000027;
          v7 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      v8 = v7 | 0x8000000000000000;
      v9 = 0xD000000000000029;
      v10 = "LibraryView.Playlists";
      switch(*v4)
      {
        case 1:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Artists";
          break;
        case 2:
          v9 = 0xD000000000000023;
          v10 = "LibraryView.Albums";
          break;
        case 3:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Songs";
          break;
        case 4:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.MadeForYou";
          break;
        case 5:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.MusicVideos";
          break;
        case 6:
          v9 = 0xD000000000000027;
          v10 = "LibraryView.Genres";
          break;
        case 7:
          v9 = 0xD000000000000022;
          v10 = "LibraryView.Compilations";
          break;
        case 8:
          v9 = 0xD000000000000028;
          v10 = "LibraryView.Composers";
          break;
        case 9:
          v9 = 0xD000000000000025;
          v10 = "LibraryView.Shows";
          break;
        case 0xA:
          v9 = 0xD000000000000021;
          v10 = "LibraryView.Downloaded";
          break;
        case 0xB:
          v9 = 0xD000000000000026;
          v10 = "LibraryView.Downloading";
          break;
        case 0xC:
          v9 = 0xD000000000000027;
          v10 = "ByPlaylistOrderAscending";
          break;
        default:
          break;
      }

      if (v6 == v9 && v8 == (v10 | 0x8000000000000000))
      {
      }

      else
      {
        v5 = sub_ABB3C0();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_5D4B54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v6 = *v3;
      v7 = *(v3 - 1);
      v8 = *(v4 - 1);
      v9 = *v4;
      v10 = 0x686372616573;
      if (v7 == 5)
      {
        v11 = 0xE600000000000000;
      }

      else
      {
        v10 = 0x6F65646976;
        v11 = 0xE500000000000000;
      }

      v12 = 0x6573776F7262;
      if (v7 == 3)
      {
        v13 = 0xE600000000000000;
      }

      else
      {
        v12 = 0x6F69646172;
        v13 = 0xE500000000000000;
      }

      if (*(v3 - 1) <= 4u)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x6E5F6E657473696CLL;
      if (v7 == 1)
      {
        v14 = 0x756F795F726F66;
      }

      v15 = 0xE700000000000000;
      if (v7 != 1)
      {
        v15 = 0xEA0000000000776FLL;
      }

      if (!*(v3 - 1))
      {
        v14 = 0x636973756D5F796DLL;
        v15 = 0xE800000000000000;
      }

      if (*(v3 - 1) <= 2u)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      if (*(v3 - 1) <= 2u)
      {
        v17 = v15;
      }

      else
      {
        v17 = v11;
      }

      if (*(v4 - 1) <= 2u)
      {
        if (*(v4 - 1))
        {
          if (v8 == 1)
          {
            v5 = 0xE700000000000000;
            if (v16 != 0x756F795F726F66)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v5 = 0xEA0000000000776FLL;
            if (v16 != 0x6E5F6E657473696CLL)
            {
              goto LABEL_46;
            }
          }
        }

        else
        {
          v5 = 0xE800000000000000;
          if (v16 != 0x636973756D5F796DLL)
          {
            goto LABEL_46;
          }
        }
      }

      else if (*(v4 - 1) > 4u)
      {
        if (v8 != 5)
        {
          v5 = 0xE500000000000000;
          v18 = 1701079414;
LABEL_45:
          if (v16 != (v18 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000))
          {
            goto LABEL_46;
          }

          goto LABEL_6;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x686372616573)
        {
          goto LABEL_46;
        }
      }

      else
      {
        if (v8 != 3)
        {
          v5 = 0xE500000000000000;
          v18 = 1768186226;
          goto LABEL_45;
        }

        v5 = 0xE600000000000000;
        if (v16 != 0x6573776F7262)
        {
          goto LABEL_46;
        }
      }

LABEL_6:
      if (v17 == v5)
      {

        if (v6 != v9)
        {
          return 0;
        }

        goto LABEL_8;
      }

LABEL_46:
      v19 = sub_ABB3C0();

      result = 0;
      if (v19 & 1) == 0 || ((v6 ^ v9))
      {
        return result;
      }

LABEL_8:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_5D4E20(unint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  while (!(a2 >> 62))
  {
    result = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = sub_13C80(0, a3);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = sub_ABAE20();
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8)))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = sub_ABAE20();
LABEL_26:
        v18 = v17;
        v19 = sub_ABA790();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
    v23 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_ABA790();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_ABB060();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_ABB060();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t sub_5D50E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v32 = a5;
  v33 = a6;
  v31 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v28 - v13;
  v15 = *(a1 + 16);
  if (v15 != *(a2 + 16))
  {
    v25 = 0;
    return v25 & 1;
  }

  if (!v15 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v17 = a1 + v16;
  v18 = a2 + v16;
  v20 = *(v9 + 16);
  v19 = v9 + 16;
  v21 = (v19 - 8);
  v29 = *(v19 + 56);
  v30 = v20;
  while (1)
  {
    v22 = v30;
    result = (v30)(v14, v17, v8);
    if (!v15)
    {
      break;
    }

    v24 = v19;
    v22(v12, v18, v8);
    sub_5DE448(v31, v32);
    v25 = sub_AB91C0();
    v26 = *v21;
    (*v21)(v12, v8);
    v26(v14, v8);
    if (v25)
    {
      v18 += v29;
      v17 += v29;
      v27 = v15-- == 1;
      v19 = v24;
      if (!v27)
      {
        continue;
      }
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_5D52DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if ((sub_12D5F0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v2 == 7)
  {
    if (v4 != 7)
    {
      return 0;
    }
  }

  else if (v4 == 7 || (sub_56E1BC(v2, v4) & 1) == 0)
  {
    return 0;
  }

  return sub_5D4B54(v3, v5);
}

uint64_t ApplicationCapabilities.tabs.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

unint64_t sub_5D53DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E161B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8810;
  *(inited + 32) = 0x64656E6769537369;
  *(inited + 40) = 0xEA00000000006E49;
  *(inited + 48) = *v0;
  *(inited + 72) = &type metadata for Bool;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x8000000000B487A0;
  *(inited + 96) = *(v0 + 1);
  *(inited + 120) = &type metadata for Bool;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000000B6CB70;
  *(inited + 144) = *(v0 + 2);
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000018;
  *(inited + 184) = 0x8000000000B6CB90;
  sub_5D58D8(v0, (inited + 192));
  *(inited + 224) = 0x536465776F6C6C61;
  *(inited + 232) = 0xEF73656369767265;
  sub_5DE820();
  *(inited + 240) = sub_AB9B60();
  *(inited + 248) = v2;
  *(inited + 264) = &type metadata for String;
  *(inited + 272) = 0xD000000000000012;
  *(inited + 280) = 0x8000000000B6CBB0;
  *(inited + 288) = sub_AB9B60();
  *(inited + 296) = v3;
  *(inited + 312) = &type metadata for String;
  strcpy((inited + 320), "ratingWarning");
  *(inited + 334) = -4864;
  *(inited + 336) = ApplicationCapabilities.RatingWarning.description.getter();
  *(inited + 344) = v4;
  *(inited + 360) = &type metadata for String;
  *(inited + 368) = 0xD000000000000012;
  *(inited + 376) = 0x8000000000B4FE40;
  v31 = *(v0 + 88);
  v30 = v31;
  sub_15F84(&v31, v29, &qword_E103D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103D8);
  *(inited + 384) = sub_AB9350();
  *(inited + 392) = v5;
  *(inited + 408) = &type metadata for String;
  *(inited + 416) = 0xD000000000000011;
  *(inited + 424) = 0x8000000000B6CBD0;
  v6 = *(v0 + 96);
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v8 = 0xEA00000000007265;
      v7 = 0x6269726373627573;
    }

    else
    {
      v8 = 0xEF72656269726373;
      v7 = 0x6275536563696F76;
    }
  }

  else if (*(v0 + 96))
  {
    v8 = 0xE700000000000000;
    v7 = 0x63697373616C63;
  }

  else
  {
    v7 = 0x6564696365646E75;
    v8 = 0xE900000000000064;
  }

  *(inited + 432) = v7;
  *(inited + 440) = v8;
  *(inited + 456) = &type metadata for String;
  *(inited + 464) = 1935827316;
  *(inited + 472) = 0xE400000000000000;
  v9 = *(v0 + 104);
  v10 = *(v9 + 16);
  v11 = &_swiftEmptyArrayStorage;
  if (v10)
  {
    v30 = &_swiftEmptyArrayStorage;
    sub_503918(0, v10, 0);
    v12 = (v9 + 32);
    v11 = v30;
    do
    {
      v14 = *v12++;
      v13 = v14;
      v15 = v14 == 5;
      v16 = 0xE900000000000073;
      if (v14 == 5)
      {
        v17 = 0x736F65646976;
      }

      else
      {
        v17 = 0x7473696C79616C70;
      }

      if (v15)
      {
        v16 = 0xE600000000000000;
      }

      if (v13 == 3)
      {
        v18 = 0x6F69646172;
      }

      else
      {
        v18 = 0x686372616573;
      }

      if (v13 == 3)
      {
        v19 = 0xE500000000000000;
      }

      else
      {
        v19 = 0xE600000000000000;
      }

      if (v13 <= 4)
      {
        v17 = v18;
        v16 = v19;
      }

      v20 = 0xE900000000000077;
      if (v13 == 1)
      {
        v21 = 0x6F4E6E657473696CLL;
      }

      else
      {
        v21 = 0x6573776F7262;
      }

      if (v13 != 1)
      {
        v20 = 0xE600000000000000;
      }

      if (!v13)
      {
        v21 = 0x7972617262696CLL;
        v20 = 0xE700000000000000;
      }

      if (v13 <= 2)
      {
        v22 = v21;
      }

      else
      {
        v22 = v17;
      }

      if (v13 <= 2)
      {
        v23 = v20;
      }

      else
      {
        v23 = v16;
      }

      v30 = v11;
      v25 = v11[2];
      v24 = v11[3];
      if (v25 >= v24 >> 1)
      {
        sub_503918((v24 > 1), v25 + 1, 1);
        v11 = v30;
      }

      v11[2] = v25 + 1;
      v26 = &v11[2 * v25];
      v26[4] = v22;
      v26[5] = v23;
      --v10;
    }

    while (v10);
  }

  *(inited + 504) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103E0);
  *(inited + 480) = v11;
  v27 = sub_52995C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0EA58);
  swift_arrayDestroy();
  return v27;
}

void sub_5D58D8(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *(a1 + 16);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = 0xE800000000000000;
      v4 = 0x64656C6261736964;
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 0xE500000000000000;
      v4 = 0x6564696C67;
      goto LABEL_11;
    }

LABEL_8:
    v5 = a2;
    v6._countAndFlagsBits = sub_ABB330();
    sub_AB94A0(v6);

    v7._countAndFlagsBits = 62;
    v7._object = 0xE100000000000000;
    sub_AB94A0(v7);
    a2 = v5;
    v4 = 0x3C6E776F6E6B6E75;
    v3 = 0xE800000000000000;
    goto LABEL_11;
  }

  if (!v2)
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
    goto LABEL_11;
  }

  if (v2 != 1)
  {
    goto LABEL_8;
  }

  v3 = 0xE700000000000000;
  v4 = 0x64656C62616E65;
LABEL_11:
  a2[3] = &type metadata for String;
  *a2 = v4;
  a2[1] = v3;
}

BOOL sub_5D5A04(_OWORD *a1, __int128 *a2)
{
  v2 = a1[5];
  v13[4] = a1[4];
  v13[5] = v2;
  v3 = a1[7];
  v13[6] = a1[6];
  v13[7] = v3;
  v4 = a1[1];
  v13[0] = *a1;
  v13[1] = v4;
  v5 = a1[3];
  v13[2] = a1[2];
  v13[3] = v5;
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[3];
  v14[2] = a2[2];
  v14[3] = v8;
  v14[0] = v6;
  v14[1] = v7;
  v9 = a2[4];
  v10 = a2[5];
  v11 = a2[7];
  v14[6] = a2[6];
  v14[7] = v11;
  v14[4] = v9;
  v14[5] = v10;
  return _s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(v13, v14);
}

uint64_t sub_5D5A78()
{
  type metadata accessor for ApplicationCapabilities.Controller();
  swift_allocObject();
  result = sub_5D5B14();
  static ApplicationCapabilities.Controller.shared = result;
  return result;
}

uint64_t static ApplicationCapabilities.Controller.shared.getter()
{
  if (qword_E0CC60 != -1)
  {
    swift_once();
  }
}

uint64_t sub_5D5B14()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) = 0;
  v2 = v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
  *v2 = 0;
  *(v2 + 8) = 1;
  v3 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_lock;
  type metadata accessor for UnfairLock();
  swift_allocObject();
  *(v0 + v3) = UnfairLock.init()();
  v4 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag;
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0);
  UnfairLock.locked<A>(_:)(sub_5DEA18);
  *(v0 + v4) = *&v41[0];
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = 0;
  *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings) = &_swiftEmptyArrayStorage;
  result = UIApp;
  if (UIApp)
  {
    *(v0 + 16) = [UIApp launchedToTest];
    type metadata accessor for MusicTabsDictionaryProvider();
    swift_allocObject();
    v6 = sub_7828C4(0x626154636973756DLL, 0xE900000000000073, sub_5D5F9C, 0);
    *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider) = v6;

    UnfairLock.locked<A>(_:)(sub_5DEA18);
    v7 = *(v0 + 16);

    sub_5DD1E4(*&v41[0], v6, v7, v41);
    v8 = (v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
    v9 = v44;
    v10 = v45;
    v8[4] = v44;
    v8[5] = v10;
    v11 = v46;
    v12 = v47;
    v8[6] = v46;
    v8[7] = v12;
    v13 = v41[0];
    v14 = v41[1];
    *v8 = v41[0];
    v8[1] = v14;
    v15 = v42;
    v16 = v43;
    v8[2] = v42;
    v8[3] = v16;
    v39 = v11;
    v40 = v12;
    v37 = v9;
    v38 = v10;
    v35 = v15;
    v36 = v16;
    v33 = v13;
    v34 = v14;
    swift_beginAccess();
    v29 = v37;
    v30 = v38;
    v31 = v39;
    v32 = v40;
    aBlock = v33;
    v26 = v34;
    v27 = v35;
    v28 = v36;
    sub_5DE204(&v33, &v24);
    sub_AB54D0();
    swift_endAccess();
    v17 = swift_allocObject();
    swift_weakInit();

    sub_782768(sub_5DE7B8, v17);

    UnfairLock.locked<A>(_:)(sub_5DEA00);
    sub_5D6188();
    sub_13C80(0, &qword_E103C0);
    v18 = sub_ABA150();
    v19 = sub_AB9260();
    v20 = swift_allocObject();
    swift_weakInit();

    *&v27 = sub_5DE7C0;
    *(&v27 + 1) = v20;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v26 = sub_5D6A40;
    *(&v26 + 1) = &block_descriptor_178;
    v21 = _Block_copy(&aBlock);

    v22 = MSVLogAddStateHandler();

    _Block_release(v21);

    v23 = v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_stateHandler;
    *v23 = v22;
    *(v23 + 8) = 0;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_5D5F9C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_5D5FEC();

  return v1;
}

uint64_t sub_5D5FEC()
{
  LOBYTE(v1) = 1;
  sub_5DE3F4();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v2);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10400);
    if (swift_dynamicCast())
    {
      return v1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_12E1C(&v2, &qword_E11F60);
    return 0;
  }
}

uint64_t sub_5D60F4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(sub_5DEA00);
  }

  return result;
}

uint64_t sub_5D6188()
{
  v1 = v0;
  type metadata accessor for Whitetail.Binding();
  v2 = ICUserIdentityStoreDidChangeNotification;
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 defaultIdentityStore];
  UIScreen.Dimensions.size.getter(v6);
  v75 = &type metadata for NotificationTrigger;
  v76 = &protocol witness table for NotificationTrigger;
  v73 = v7;
  v74 = v8;
  v9 = swift_allocObject();
  v67 = v1;
  swift_weakInit();
  v72 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v73, 1, sub_5DE874, v9);
  v10 = [objc_opt_self() sharedController];
  v11 = MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification;
  UIScreen.Dimensions.size.getter(v12);
  v75 = &type metadata for NotificationTrigger;
  v76 = &protocol witness table for NotificationTrigger;
  v73 = v13;
  v74 = v14;
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = v11;
  v70 = v10;
  v71 = Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v73, 1, sub_5DE87C, v15);
  v68 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E103F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_AF8600;
  v18 = MPPlaybackUserDefaultsPreferredResolutionsDidChangeNotification;
  v19 = UIScreen.Dimensions.size.getter(COERCE_DOUBLE(5));
  *(inited + 56) = &type metadata for NotificationTrigger;
  *(inited + 64) = &protocol witness table for NotificationTrigger;
  *(inited + 32) = v20;
  *(inited + 40) = v21;
  v22 = MPCloudControllerHasProperNetworkConditionsToShowCloudMediaDidChangeNotification;
  v23 = UIScreen.Dimensions.size.getter(v19);
  *(inited + 96) = &type metadata for NotificationTrigger;
  *(inited + 104) = &protocol witness table for NotificationTrigger;
  *(inited + 72) = v24;
  *(inited + 80) = v25;
  v26 = RadioAvailabilityControllerRadioAvailableDidChangeNotification;
  v27 = UIScreen.Dimensions.size.getter(v23);
  *(inited + 136) = &type metadata for NotificationTrigger;
  *(inited + 144) = &protocol witness table for NotificationTrigger;
  *(inited + 112) = v28;
  *(inited + 120) = v29;
  v30 = MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification;
  v31 = UIScreen.Dimensions.size.getter(v27);
  *(inited + 176) = &type metadata for NotificationTrigger;
  *(inited + 184) = &protocol witness table for NotificationTrigger;
  *(inited + 152) = v32;
  *(inited + 160) = v33;
  v34 = MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification;
  UIScreen.Dimensions.size.getter(v31);
  *(inited + 216) = &type metadata for NotificationTrigger;
  *(inited + 224) = &protocol witness table for NotificationTrigger;
  *(inited + 192) = v35;
  *(inited + 200) = v36;
  v37 = swift_allocObject();
  swift_weakInit();
  swift_allocObject();
  v38 = v18;
  v69 = v68;
  v39 = v22;
  v40 = v26;
  v41 = v30;
  v42 = v34;

  v43 = Whitetail.Binding.init(_:needsInitialConfiguration:configurationBlock:)(inited, 1, sub_5DE87C, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10AA0);
  v44 = swift_initStackObject();
  *(v44 + 16) = xmmword_AF82E0;
  *(v44 + 32) = v72;
  *(v44 + 40) = v71;
  *(v44 + 48) = v43;
  v45 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bindings;
  swift_beginAccess();

  sub_510F20(v44);
  swift_endAccess();
  sub_5DE384();
  v47 = UserDefaultsKeyValueTrigger.init<A>(suiteName:key:)(0xD000000000000014, 0x8000000000B6CBF0, v46, &type metadata for NSUserDefaults.MobileiPod);
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v75 = &type metadata for UserDefaultsKeyValueTrigger;
  v76 = &protocol witness table for UserDefaultsKeyValueTrigger;
  v54 = swift_allocObject();
  v73 = v54;
  v54[2] = v47;
  v54[3] = v49;
  v54[4] = v51;
  v54[5] = v53;
  v55 = swift_allocObject();
  swift_weakInit();
  Whitetail.Binding.__allocating_init(_:needsInitialConfiguration:configurationBlock:)(&v73, 1, sub_5DE87C, v55);
  swift_beginAccess();
  sub_AB9730();
  if (*(&dword_10 + (*(v67 + v45) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v67 + v45) & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    sub_AB97A0();
  }

  sub_AB97F0();
  swift_endAccess();
  v56 = [objc_allocWithZone(type metadata accessor for ApplicationCapabilities.Controller.ProfileObserver()) init];
  v57 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver;
  v58 = *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver);
  *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_profileObserver) = v56;

  if (*(v67 + v57))
  {
    swift_weakAssign();
  }

  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  v59 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for BagProvider.Observer();
  v60 = swift_allocObject();
  swift_weakInit();
  *(v60 + 24) = 0;
  *(v60 + 32) = 0;
  swift_weakAssign();
  v61 = *(v60 + 24);
  *(v60 + 24) = sub_5DE8EC;
  *(v60 + 32) = v59;
  swift_retain_n();
  v62 = sub_17654(v61);
  v73 = 0;
  __chkstk_darwin(v62);
  UnfairLock.locked<A>(_:)(sub_5CB8D4);
  if (v73)
  {
    v63 = v73;
    sub_5D8E8C(v63);
  }

  else
  {
    sub_5E5FD8(0);
  }

  *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_bagObserver) = v60;

  v64 = swift_allocObject();
  swift_weakInit();
  type metadata accessor for PrivacyAcknowledgementObserver();
  swift_allocObject();

  v65 = PrivacyAcknowledgementObserver.init(dispatchOnMainThread:handler:)(1, sub_5DE8F4, v64);

  *(v67 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = v65;
}

uint64_t sub_5D68FC(char a1, uint64_t (*a2)(uint64_t))
{
  if ((a1 & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v15[4] = v11;
    v15[5] = v12;
    v15[6] = v13;
    v15[7] = v14;
    v15[0] = v7;
    v15[1] = v8;
    v15[2] = v9;
    v15[3] = v10;
    v4 = sub_5D53DC();
    sub_70C54(v15);
    v5 = sub_62FD5C(v4);

    v6 = a2(v5);

    return v6;
  }

  return result;
}

uint64_t sub_5D6A40(uint64_t a1, char a2, void *aBlock)
{
  v4 = *(a1 + 32);
  v5 = _Block_copy(aBlock);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;

  v7 = v4(a2 & 1, sub_5DE818, v6);

  return v7;
}

uint64_t sub_5D6AE0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3.super.isa = sub_AB8FD0().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = (*(a2 + 16))(a2, v3.super.isa);

  return v4;
}

__n128 sub_5D6B50@<Q0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_AB5510();

  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  *a1 = v3;
  a1[1] = v4;
  result = v6;
  a1[2] = v5;
  a1[3] = v6;
  return result;
}

uint64_t sub_5D6C08(_OWORD *a1)
{
  v2 = a1[5];
  v12[4] = a1[4];
  v12[5] = v2;
  v3 = a1[7];
  v12[6] = a1[6];
  v12[7] = v3;
  v4 = a1[1];
  v12[0] = *a1;
  v12[1] = v4;
  v5 = a1[3];
  v12[2] = a1[2];
  v12[3] = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  v6 = a1[5];
  v11[12] = a1[4];
  v11[13] = v6;
  v7 = a1[7];
  v11[14] = a1[6];
  v11[15] = v7;
  v8 = a1[1];
  v11[8] = *a1;
  v11[9] = v8;
  v9 = a1[3];
  v11[10] = a1[2];
  v11[11] = v9;

  sub_5DE204(v12, v11);
  return sub_AB5520();
}

uint64_t ApplicationCapabilities.Controller.$capabilities.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_5D6D44()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520);
  sub_AB54E0();
  return swift_endAccess();
}

uint64_t sub_5D6DBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13420);
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v11 - v7;
  v9 = *(v3 + 16);
  v9(&v11 - v7, a1, v2);
  v9(v6, v8, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520);
  sub_AB54F0();
  swift_endAccess();
  return (*(v3 + 8))(v8, v2);
}

Swift::Void __swiftcall ApplicationCapabilities.Controller.setNeedsNetworkReachabilityUpdate()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v2 - 8);
  v4 = &v7[-v3];
  v10 = 0;
  v8 = v0;
  v9 = &v10;
  UnfairLock.locked<A>(_:)(sub_5DDC0C);
  if (v10 == 1)
  {
    sub_AB9960();
    v5 = sub_AB9990();
    (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
    v6 = swift_allocObject();
    v6[2] = 0;
    v6[3] = 0;
    v6[4] = v1;

    sub_50D600(0, 0, v4, &unk_B1BFD0, v6);

    sub_12E1C(v4, &qword_E0E340);
  }
}

uint64_t sub_5D70E0()
{
  UnfairLock.locked<A>(_:)(sub_5DE6A8);
  v1 = *(v0 + 8);

  return v1();
}

void sub_5D7178(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v3 - 8);
  v5 = v44 - v4;
  v6 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate;
  if (*(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_needsNetworkReachabilityUpdate) == 1)
  {
    if (qword_E0CC78 != -1)
    {
      swift_once();
    }

    v7 = sub_AB4BC0();
    __swift_project_value_buffer(v7, qword_E10128);
    v8 = sub_AB4BA0();
    v9 = sub_AB9F50();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_0, v8, v9, "Needs Network Reachability Update", v10, 2u);
    }

    *(a1 + v6) = 0;
    v11 = [objc_opt_self() sharedCloudController];
    if (v11)
    {
      v12 = v11;
      if ([v11 shouldProhibitMusicActionForCurrentNetworkConditions])
      {
        LODWORD(v13) = 0;
      }

      else
      {
        LODWORD(v13) = [v12 hasProperNetworkConditionsToShowCloudMedia];
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_AB5510();

    v49[4] = v54;
    v49[5] = v55;
    v49[6] = v56;
    v49[7] = v57;
    v49[0] = v50;
    v49[1] = v51;
    v49[2] = v52;
    v49[3] = v53;
    sub_70C54(v49);
    v14 = BYTE1(v49[0]);
    v15 = sub_AB4BA0();
    v16 = sub_AB9F50();
    v17 = os_log_type_enabled(v15, v16);
    if (v13 == v14)
    {
      if (v17)
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_0, v15, v16, "Network Reachability status does not differ from currently known capabilities.", v43, 2u);
      }
    }

    else
    {
      v58 = v5;
      if (v17)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v44[1] = v1;
        v20 = v19;
        *&v50 = v19;
        *v18 = 136315138;
        if (v13)
        {
          v21 = 0x1000000000000012;
        }

        else
        {
          v21 = 0x1000000000000016;
        }

        v22 = v13;
        if (v13)
        {
          v13 = "Not Reachable 🔌👎";
        }

        else
        {
          v13 = "hangeNotification";
        }

        v23 = sub_500C84(v21, v13 | 0x8000000000000000, &v50);
        LOBYTE(v13) = v22;

        *(v18 + 4) = v23;
        _os_log_impl(&dword_0, v15, v16, "Updating Network Reachability to: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v20);
      }

      v24 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v25 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v46[4] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v46[5] = v25;
      v26 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v46[6] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v46[7] = v26;
      v27 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v46[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v46[1] = v27;
      v28 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v46[2] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v46[3] = v28;
      *(&v47[4] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 66);
      *(&v47[5] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 82);
      *(&v47[6] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 98);
      v47[7] = v26;
      *(v47 + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 2);
      *(&v47[1] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 18);
      *(&v47[2] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 34);
      *(&v47[3] + 2) = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 50);
      LOBYTE(v47[0]) = v46[0];
      BYTE1(v47[0]) = v13;
      v29 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
      v52 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
      v53 = v29;
      v30 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
      v50 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
      v51 = v30;
      v31 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
      v56 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
      v57 = v31;
      v32 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
      v54 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
      v55 = v32;
      v48[0] = v50;
      v48[1] = v30;
      v48[2] = v52;
      v48[3] = v29;
      v48[4] = v54;
      v48[5] = v32;
      v48[6] = v56;
      v48[7] = v31;
      v33 = v47[0];
      v34 = v47[1];
      v35 = v47[3];
      v24[2] = v47[2];
      v24[3] = v35;
      *v24 = v33;
      v24[1] = v34;
      v36 = v47[4];
      v37 = v47[5];
      v38 = v47[7];
      v24[6] = v47[6];
      v24[7] = v38;
      v24[4] = v36;
      v24[5] = v37;
      sub_5DE204(v46, v45);
      sub_5DE204(&v50, v45);
      sub_5DE204(v47, v45);
      sub_70C54(v48);
      sub_5D7890(&v50);
      sub_70C54(&v50);
      sub_70C54(v47);
      v39 = sub_AB9990();
      v40 = v58;
      (*(*(v39 - 8) + 56))(v58, 1, 1, v39);
      sub_AB9940();

      v41 = sub_AB9930();
      v42 = swift_allocObject();
      v42[2] = v41;
      v42[3] = &protocol witness table for MainActor;
      v42[4] = a1;
      sub_5E89D8(0, 0, v40, &unk_B1C478, v42);
    }
  }
}

uint64_t sub_5D76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_AB9940();
  *(v4 + 24) = sub_AB9930();
  v6 = sub_AB98B0();

  return _swift_task_switch(sub_5D776C, v6, v5);
}

uint64_t sub_5D776C()
{

  v1 = [objc_opt_self() defaultCenter];
  if (qword_E0CCD0 != -1)
  {
    swift_once();
  }

  [v1 postNotificationName:static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange object:*(v0 + 16)];

  v2 = *(v0 + 8);

  return v2();
}

uint64_t *ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCD0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange;
}

uint64_t sub_5D7890(unsigned __int8 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0E340);
  __chkstk_darwin(v4 - 8);
  v6 = &v31 - v5;
  v7 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v41 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v42 = v7;
  v8 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v43 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v44 = v8;
  v9 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v37 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v38 = v9;
  v10 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v39 = *(v1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v36 = &_swiftEmptySetSingleton;
  v40 = v10;
  sub_5DE204(&v37, &v34);
  if (qword_E0CDC0 != -1)
  {
    swift_once();
  }

  if (static NSUserDefaults.mobileiPod)
  {
    sub_5DE384();
    sub_4FD6CC();
    NSUserDefaults.subscript.getter(&v34);
    if (!v35)
    {
      sub_12E1C(&v34, &qword_E11F60);
      goto LABEL_15;
    }

    if (swift_dynamicCast() & 1) != 0 && (v33)
    {
      if (v43 > 1u)
      {
        if (v43 == 2)
        {

LABEL_14:
          v35 = &type metadata for Bool;
          LOBYTE(v34) = 0;
          NSUserDefaults.subscript.setter(&v34, v11, &type metadata for NSUserDefaults.MobileiPod);
          goto LABEL_15;
        }

        v32 = v6;
      }

      else
      {
        v32 = v6;
      }

      v12 = sub_ABB3C0();

      v6 = v32;
      if ((v12 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

LABEL_15:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
    goto LABEL_78;
  }

  if ((v37 ^ *a1))
  {
    if (qword_E0CCC8 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.activeAccountDidChange);
  }

  v13 = v39;
  v14 = sub_472A84(5, v39) & 1;
  v15 = *(a1 + 4);
  if (v14 != (sub_472A84(5, v15) & 1))
  {
    if (qword_E0CC80 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange);
  }

  v16 = sub_472A84(0, v13) & 1;
  if (v16 != (sub_472A84(0, v15) & 1))
  {
    if (qword_E0CC88 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange);
  }

  v17 = sub_472A84(3, v13) & 1;
  if (v17 != (sub_472A84(3, v15) & 1))
  {
    if (qword_E0CC90 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange);
  }

  v18 = sub_472A84(9, v13) & 1;
  if (v18 != (sub_472A84(9, v15) & 1))
  {
    if (qword_E0CCB0 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange);
  }

  v19 = sub_472A84(4, v13) & 1;
  if (v19 != (sub_472A84(4, v15) & 1))
  {
    if (qword_E0CC98 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange);
  }

  v20 = sub_472A84(2, v13) & 1;
  if (v20 != (sub_472A84(2, v15) & 1))
  {
    if (qword_E0CCA0 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange);
  }

  v21 = sub_472A84(10, v13) & 1;
  if (v21 != (sub_472A84(10, v15) & 1))
  {
    if (qword_E0CCA8 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.mliEnabledDidChange);
  }

  if ((BYTE1(v37) ^ a1[1]))
  {
    if (qword_E0CCD0 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.hasNetworkConnectivityDidChange);
  }

  if ((BYTE2(v37) ^ a1[2]))
  {
    if (qword_E0CCE0 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange);
  }

  if (v40 != *(a1 + 6))
  {
    if (qword_E0CCD8 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange);
  }

  if ((sub_56E1B8(v43, a1[96]) & 1) == 0)
  {
    if (qword_E0CCC0 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange);
  }

  v22 = v44;
  v23 = *(&v44 + 1);
  v24 = a1[112];
  v25 = *(a1 + 15);
  if ((sub_12D5F0(*(&v43 + 1), *(a1 + 13)) & 1) == 0)
  {
    goto LABEL_71;
  }

  if (v22 == 7)
  {
    if (v24 != 7)
    {
      goto LABEL_71;
    }
  }

  else if (v24 == 7 || (sub_56E1BC(v22, v24) & 1) == 0)
  {
    goto LABEL_71;
  }

  if ((sub_5D4B54(v23, v25) & 1) == 0)
  {
LABEL_71:
    if (qword_E0CCB8 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.supportedTabsDidChange);
  }

  if (*(&v37 + 1) != *(a1 + 1))
  {
    if (qword_E0CCE8 != -1)
    {
      swift_once();
    }

    sub_683164(&v34, static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange);
  }

LABEL_78:
  if (_s9MusicCore23ApplicationCapabilitiesV23__derived_struct_equalsySbAC_ACtFZ_0(&v37, a1))
  {
  }

  else
  {
    v26 = sub_AB9990();
    (*(*(v26 - 8) + 56))(v6, 1, 1, v26);
    v27 = v36;
    sub_AB9940();
    sub_5DE204(&v37, &v34);

    v28 = sub_AB9930();
    v29 = swift_allocObject();
    *(v29 + 16) = v28;
    *(v29 + 24) = &protocol witness table for MainActor;
    *(v29 + 32) = v2;
    *(v29 + 104) = v41;
    *(v29 + 120) = v42;
    *(v29 + 136) = v43;
    *(v29 + 152) = v44;
    *(v29 + 40) = v37;
    *(v29 + 56) = v38;
    *(v29 + 72) = v39;
    *(v29 + 88) = v40;
    *(v29 + 168) = v27;
    sub_5E89D8(0, 0, v6, &unk_B1C440, v29);
  }

  return sub_70C54(&v37);
}

uint64_t *ApplicationCapabilities.NotificationNames.activeAccountDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCC8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.activeAccountDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange.unsafeMutableAddressor()
{
  if (qword_E0CC80 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsiTunesContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange.unsafeMutableAddressor()
{
  if (qword_E0CC88 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsMusicServiceDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange.unsafeMutableAddressor()
{
  if (qword_E0CC90 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSocialContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCB0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSharePlayTogetherDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange.unsafeMutableAddressor()
{
  if (qword_E0CC98 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsRadioContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCA0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.allowsSubscriptionContentDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.mliEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCA8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.mliEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCE0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.isCloudLibraryEnabledDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCD8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.ratingWarningThresholdDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCC0 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.userSubscriptionStateDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.supportedTabsDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCB8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.supportedTabsDidChange;
}

uint64_t *ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange.unsafeMutableAddressor()
{
  if (qword_E0CCE8 != -1)
  {
    swift_once();
  }

  return &static ApplicationCapabilities.NotificationNames.subscriptionCapabilitiesDidChange;
}

uint64_t sub_5D86DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[35] = a5;
  v6[36] = a6;
  v6[34] = a4;
  sub_AB9940();
  v6[37] = sub_AB9930();
  v8 = sub_AB98B0();

  return _swift_task_switch(sub_5D8778, v8, v7);
}

void sub_5D8778()
{
  v35 = v0;
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);

  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2[3];
  v5 = *v2;
  v4 = v2[1];
  *(v0 + 48) = v2[2];
  *(v0 + 64) = v3;
  *(v0 + 16) = v5;
  *(v0 + 32) = v4;
  v6 = v2[7];
  v8 = v2[4];
  v7 = v2[5];
  *(v0 + 112) = v2[6];
  *(v0 + 128) = v6;
  *(v0 + 80) = v8;
  *(v0 + 96) = v7;

  sub_5DE204(v2, v0 + 144);
  sub_AB5520();
  v9 = v1 + 56;
  v10 = -1;
  v11 = -1 << *(v1 + 32);
  if (-v11 < 64)
  {
    v10 = ~(-1 << -v11);
  }

  v12 = v10 & *(v1 + 56);
  v13 = (63 - v11) >> 6;

  v14 = 0;
  v32 = v1;
  while (v12)
  {
LABEL_10:
    v18 = qword_E0CC78;
    v19 = *(*(v1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    if (v18 != -1)
    {
      swift_once();
    }

    v20 = sub_AB4BC0();
    __swift_project_value_buffer(v20, qword_E10128);
    v21 = v19;
    v22 = sub_AB4BA0();
    v23 = sub_AB9F50();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v34 = v33;
      *v24 = 136446210;
      *(v0 + 16) = v21;
      _s3__C4NameVMa_0(0);
      v25 = v21;
      v26 = sub_AB9350();
      v28 = v13;
      v29 = v9;
      v30 = sub_500C84(v26, v27, &v34);

      *(v24 + 4) = v30;
      v9 = v29;
      v13 = v28;
      _os_log_impl(&dword_0, v22, v23, "Notifying changes for '%{public}s'", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);

      v1 = v32;
    }

    v12 &= v12 - 1;
    v15 = *(v0 + 272);
    v16 = [objc_opt_self() defaultCenter];
    [v16 postNotificationName:v21 object:v15];
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      return;
    }

    if (v17 >= v13)
    {
      break;
    }

    v12 = *(v9 + 8 * v17);
    ++v14;
    if (v12)
    {
      v14 = v17;
      goto LABEL_10;
    }
  }

  v31 = *(v0 + 8);

  v31();
}

uint64_t sub_5D8AA4(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  v3 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
  v4 = *(a1 + 16);
  v5 = v2;

  sub_5DD1E4(v2, v3, v4, v17);
  v6 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v7 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v21 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v22 = v7;
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v23 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v24 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v18[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v18[1] = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v19 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v20 = v10;
  v25[6] = v23;
  v25[7] = v8;
  v25[4] = v21;
  v25[5] = v7;
  v25[2] = v19;
  v25[3] = v10;
  v25[0] = v18[0];
  v25[1] = v9;
  v11 = v17[1];
  *v6 = v17[0];
  v6[1] = v11;
  v12 = v17[7];
  v6[6] = v17[6];
  v6[7] = v12;
  v13 = v17[5];
  v6[4] = v17[4];
  v6[5] = v13;
  v14 = v17[3];
  v6[2] = v17[2];
  v6[3] = v14;
  sub_5DE204(v18, v16);
  sub_5DE204(v17, v16);
  sub_70C54(v25);
  sub_5D7890(v18);
  sub_70C54(v18);
  return sub_70C54(v17);
}

uint64_t sub_5D8BB4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = [objc_opt_self() defaultIdentityStore];
    v2 = sub_5D8CF8();
    v4 = v3;

    v5 = [objc_opt_self() standardUserDefaults];
    if (v4)
    {
      v2 = 0;
      v6 = 0;
      v8[1] = 0;
      v8[2] = 0;
    }

    else
    {
      v6 = &type metadata for UInt64;
    }

    v8[0] = v2;
    v8[3] = v6;
    v7 = 2;
    sub_5DE3F4();
    sub_4FD6CC();
    NSUserDefaults.subscript.setter(v8, &v7, &_s3KeyON);

    UnfairLock.locked<A>(_:)(sub_5DEA00);
  }

  return result;
}

id sub_5D8CF8()
{
  v1 = [objc_opt_self() activeAccount];
  v7 = 0;
  v2 = [v0 DSIDForUserIdentity:v1 outError:&v7];

  v3 = v7;
  if (v2)
  {
    v7 = 0;
    v8 = 1;
    v4 = v3;
    sub_ABB670();

    return v7;
  }

  else
  {
    v6 = v7;
    sub_AB3050();

    swift_willThrow();

    return 0;
  }
}

uint64_t sub_5D8E04(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    UnfairLock.locked<A>(_:)(a2);
  }

  return result;
}

void sub_5D8E8C(void *a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    __chkstk_darwin(Strong);

    UnfairLock.locked<A>(_:)(sub_5DE8FC);

    UnfairLock.locked<A>(_:)(sub_5DEA00);
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = sub_AB9260();
    v5 = [a1 dictionaryForBagKey:v4];

    if (v5 && (v6 = sub_AB8FF0(), v5, v7 = sub_782248(v6), , v7))
    {
      *(&v10 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E10400);
      *&v9 = v7;
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    v8 = 1;
    sub_5DE3F4();
    sub_4FD6CC();
    NSUserDefaults.subscript.setter(&v9, &v8, &_s3KeyON);
  }
}

uint64_t sub_5D90A0(char a1)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong() || (swift_getKeyPath(), swift_getKeyPath(), sub_AB5510(), , , , v17 = v9, v18 = v10, v19 = v11, v20 = v12, v13 = v5, v14 = v6, v15 = v7, v16 = v8, result = sub_70C54(&v13), BYTE8(v14) == (a1 & 1)))
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      v3 = sub_AB5500();
      *(v4 + 24) = (a1 & 1) == 0;
      v3(&v13, 0);
    }
  }

  if ((a1 & 1) == 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_privacyAcknowledgementObserver) = 0;
    }
  }

  return result;
}

uint64_t ApplicationCapabilities.Controller.updated()(uint64_t a1)
{
  *(v2 + 272) = a1;
  *(v2 + 280) = v1;
  return _swift_task_switch(sub_5D9284, 0, 0);
}

uint64_t sub_5D9284()
{
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_5D935C;
  v2 = *(v0 + 280);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 144, 0, 0, 0x2864657461647075, 0xE900000000000029, sub_5DDCEC, v2, &type metadata for ApplicationCapabilities);
}

uint64_t sub_5D935C()
{

  return _swift_task_switch(sub_5D9458, 0, 0);
}

uint64_t sub_5D9458()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 144);
  v3 = *(v0 + 160);
  *(v0 + 16) = v2;
  *(v0 + 32) = v3;
  v4 = *(v0 + 176);
  v5 = *(v0 + 192);
  *(v0 + 48) = v4;
  *(v0 + 64) = v5;
  v7 = *(v0 + 240);
  v6 = *(v0 + 256);
  *(v0 + 112) = v7;
  *(v0 + 128) = v6;
  v9 = *(v0 + 208);
  v8 = *(v0 + 224);
  *(v0 + 80) = v9;
  *(v0 + 96) = v8;
  v1[6] = v7;
  v1[7] = v6;
  v1[4] = v9;
  v1[5] = v8;
  v1[2] = v4;
  v1[3] = v5;
  *v1 = v2;
  v1[1] = v3;
  return (*(v0 + 8))();
}

uint64_t sub_5D94A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v6 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v23 - v7;
  if (qword_E0CD28 != -1)
  {
    swift_once();
  }

  v9 = static BagProvider.shared;
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = *(v3 + 16);
  v11(v8, a1, v2);
  v11(v6, v8, v2);
  v12 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  (*(v3 + 32))(v13 + v12, v8, v2);
  v14 = OBJC_IVAR____TtC9MusicCore11BagProvider_lock;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103B0);
  UnfairLock.locked<A>(_:)(sub_4FD6B0);
  v15 = v24;
  if (v24)
  {
    sub_5D9850(v24);
  }

  else
  {
    type metadata accessor for BagProvider.Observer();
    v16 = swift_allocObject();
    v23[1] = v14;
    v17 = v16;
    swift_weakInit();
    *(v17 + 24) = 0;
    *(v17 + 32) = 0;
    swift_weakAssign();
    v18 = swift_allocObject();
    swift_weakInit();
    v19 = swift_allocObject();
    v19[2] = sub_5DE598;
    v19[3] = v13;
    v19[4] = v18;
    v19[5] = v17;
    v23[0] = 0;
    v20 = *(v17 + 24);
    *(v17 + 24) = sub_5DE660;
    *(v17 + 32) = v19;

    sub_17654(v20);

    __chkstk_darwin(v21);
    v23[-2] = v9;
    v23[-1] = v17;
    UnfairLock.locked<A>(_:)(sub_5DE66C);
    sub_5E5FD8(0);
  }

  (*(v3 + 8))(v6, v2);
}

uint64_t sub_5D9850(void *a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_musicTabsDictionaryProvider);
    v4 = *(result + 16);
    a1;

    v5 = sub_5DD1E4(a1, v3, v4, v6);
    __chkstk_darwin(v5);

    UnfairLock.locked<A>(_:)(sub_5DE688);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E103A8);
    sub_AB98D0();
  }

  return result;
}

uint64_t sub_5D99C4(uint64_t a1, void *a2, _OWORD *a3)
{
  v6 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag);
  *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_storeBag) = a2;

  v7 = (a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v22 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v23 = v8;
  v9 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v24 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v25 = v9;
  v10 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v19[0] = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v19[1] = v10;
  v11 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v20 = *(a1 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v21 = v11;
  v26[6] = v24;
  v26[7] = v9;
  v26[4] = v22;
  v26[5] = v8;
  v26[2] = v20;
  v26[3] = v11;
  v26[0] = v19[0];
  v26[1] = v10;
  v12 = a3[1];
  *v7 = *a3;
  v7[1] = v12;
  v13 = a3[7];
  v7[6] = a3[6];
  v7[7] = v13;
  v14 = a3[5];
  v7[4] = a3[4];
  v7[5] = v14;
  v15 = a3[3];
  v7[2] = a3[2];
  v7[3] = v15;
  v16 = a2;
  sub_5DE204(v19, v18);
  sub_5DE204(a3, v18);
  sub_70C54(v26);
  sub_5D7890(v19);
  return sub_70C54(v19);
}

uint64_t ApplicationCapabilities.Controller.deinit()
{
  v1 = OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller__capabilities;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E13520);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 80);
  v8[4] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 64);
  v8[5] = v3;
  v4 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 112);
  v8[6] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 96);
  v8[7] = v4;
  v5 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 16);
  v8[0] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities);
  v8[1] = v5;
  v6 = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 48);
  v8[2] = *(v0 + OBJC_IVAR____TtCV9MusicCore23ApplicationCapabilities10Controller_safeCapabilities + 32);
  v8[3] = v6;
  sub_70C54(v8);

  return v0;
}

uint64_t ApplicationCapabilities.Controller.__deallocating_deinit()
{
  ApplicationCapabilities.Controller.deinit();

  return swift_deallocClassInstance();
}

Swift::Bool __swiftcall ApplicationCapabilities.Tabs.shouldShowLoadingUpsellBanner(for:)(MusicCore::TabIdentifier a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (v1 + 33);
  v4 = a1;
  while (1)
  {
    v5 = *(v3 - 1);
    if (v5 > 3)
    {
      if (v5 == 4)
      {
        v11 = 0xE500000000000000;
        v10 = 0x6F69646172;
      }

      else
      {
        if (v5 == 5)
        {
          v10 = 0x686372616573;
        }

        else
        {
          v10 = 0x736F65646976;
        }

        v11 = 0xE600000000000000;
      }
    }

    else
    {
      v6 = v5 - 1;
      v7 = v5 == 0;
      if (*(v3 - 1))
      {
        v8 = 0x6573776F7262;
      }

      else
      {
        v8 = 0x7972617262696CLL;
      }

      if (v7)
      {
        v9 = 0xE700000000000000;
      }

      else
      {
        v9 = 0xE600000000000000;
      }

      if (v6 >= 2)
      {
        v10 = v8;
      }

      else
      {
        v10 = 0x6F4E6E657473696CLL;
      }

      if (v6 >= 2)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xE900000000000077;
      }
    }

    v22 = *v3;
    v12 = 0x736F65646976;
    if (v4 != 5)
    {
      v12 = 0x7473696C79616C70;
    }

    v13 = 0xE900000000000073;
    if (v4 == 5)
    {
      v13 = 0xE600000000000000;
    }

    v14 = 0x686372616573;
    if (v4 == 3)
    {
      v14 = 0x6F69646172;
    }

    v15 = 0xE500000000000000;
    if (v4 != 3)
    {
      v15 = 0xE600000000000000;
    }

    if (v4 <= 4)
    {
      v12 = v14;
      v13 = v15;
    }

    if (v4 == 1)
    {
      v16 = 0x6F4E6E657473696CLL;
    }

    else
    {
      v16 = 0x6573776F7262;
    }

    if (v4 == 1)
    {
      v17 = 0xE900000000000077;
    }

    else
    {
      v17 = 0xE600000000000000;
    }

    if (!v4)
    {
      v16 = 0x7972617262696CLL;
      v17 = 0xE700000000000000;
    }

    v18 = v4 <= 2 ? v16 : v12;
    v19 = v4 <= 2 ? v17 : v13;
    if (v10 == v18 && v11 == v19)
    {
      break;
    }

    v20 = sub_ABB3C0();

    if (v20)
    {
      return v22;
    }

    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return v22;
}

BOOL sub_5D9E1C(_BOOL8 a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0DC30);
  __chkstk_darwin(v4 - 8);
  v6 = &v10[-v5];
  if (qword_E0CDC0 != -1)
  {
    swift_once();
  }

  if (!static NSUserDefaults.mobileiPod)
  {
    goto LABEL_10;
  }

  sub_5DE384();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v11);
  if (!v12)
  {
    sub_12E1C(&v11, &qword_E11F60);
LABEL_10:
    a1 = 1;
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0 || v10[15] != 1)
  {
    goto LABEL_10;
  }

  if (a1)
  {
    a1 = [a1 statusType] == &dword_0 + 1;
  }

LABEL_11:
  v7 = [objc_opt_self() standardUserDefaults];
  NSUserDefaults.applicationScriptURL.getter(v6);

  v8 = sub_AB31C0();
  LODWORD(v7) = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_12E1C(v6, &qword_E0DC30);
  if (v7 == 1 && [a2 hasLoadedSubscriptionAvailability])
  {
    return [a2 isSubscriptionAvailable] & a1;
  }

  return a1;
}

uint64_t sub_5DA03C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    sub_AB92A0();
    v4 = sub_AB9260();

    LODWORD(v3) = [v3 effectiveBoolValueForSetting:v4];

    v5 = v3 != 2;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v5 = 0;
    if (!a2)
    {
      goto LABEL_11;
    }
  }

  if (qword_E0CC68 != -1)
  {
    swift_once();
  }

  v6 = sub_AB9260();
  v7 = [a2 dictionaryForBagKey:v6];

  if (v7)
  {

    sub_13C80(0, &qword_E10378);
    v8 = static ICUserIdentityStore.activeAccountDSID.getter();
    if (v8)
    {

      if (v5)
      {
        return 1;
      }
    }
  }

LABEL_11:
  if (qword_E0D528 != -1)
  {
    swift_once();
  }

  if (static DeviceCapabilities.isInternalInstall != 1)
  {
    return 0;
  }

  v10 = [objc_opt_self() standardUserDefaults];
  sub_5DE3F4();
  sub_4FD6CC();
  NSUserDefaults.subscript.getter(&v11);

  if (!v12)
  {
    sub_12E1C(&v11, &qword_E11F60);
    return 0;
  }

  result = swift_dynamicCast();
  if (result)
  {
    return 3;
  }

  return result;
}

uint64_t sub_5DA260()
{
  v1 = sub_AB9260();
  v2 = [v0 dictionaryForBagKey:v1];

  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = sub_AB8FF0();

  if (!v3)
  {
    goto LABEL_15;
  }

  sub_ABAD10();
  if (!*(v3 + 16) || (v4 = sub_2EC004(v10), (v5 & 1) == 0))
  {

    sub_8085C(v10);
LABEL_15:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_16;
  }

  sub_808B0(*(v3 + 56) + 32 * v4, &v11);
  sub_8085C(v10);

  if (!*(&v12 + 1))
  {
LABEL_16:
    sub_12E1C(&v11, &qword_E11F60);
LABEL_17:
    v11 = 0u;
    v12 = 0u;
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E0FD18);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_17;
  }

  v6 = *v10;
  if (!*v10)
  {
    goto LABEL_17;
  }

  sub_ABAD10();
  if (!*(v6 + 16) || (v7 = sub_2EC004(v10), (v8 & 1) == 0))
  {

    sub_8085C(v10);
    goto LABEL_17;
  }

  sub_808B0(*(v6 + 56) + 32 * v7, &v11);
  sub_8085C(v10);

  if (!*(&v12 + 1))
  {
LABEL_18:
    sub_12E1C(&v11, &qword_E11F60);
    return 2;
  }

  if (swift_dynamicCast())
  {
    return v10[0];
  }

  else
  {
    return 2;
  }
}