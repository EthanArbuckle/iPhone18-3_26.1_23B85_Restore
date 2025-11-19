uint64_t sub_10030C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5 & 1;
  *(v11 + 32) = a6;
  *(v11 + 40) = a7;
  v12 = a6;

  sub_2CC050();
}

uint64_t sub_1003CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  LODWORD(v97) = a3;
  v6 = sub_2CC100();
  v99 = *(v6 - 8);
  v100 = v6;
  v7 = *(v99 + 64);
  __chkstk_darwin(v6);
  v98 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20410(&qword_350500, &unk_2D3B50);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v102 = &v90 - v11;
  v106 = sub_2C8E80();
  v103 = *(v106 - 8);
  v12 = *(v103 + 64);
  v13 = __chkstk_darwin(v106);
  v92 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v105 = &v90 - v15;
  v16 = sub_2CE000();
  v108 = *(v16 - 8);
  v17 = *(v108 + 64);
  v18 = __chkstk_darwin(v16);
  v104 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v91 = &v90 - v21;
  __chkstk_darwin(v20);
  v107 = &v90 - v22;
  v90 = sub_20410(&qword_350D38, &unk_2D3EC0);
  v23 = *(*(v90 - 8) + 64);
  v24 = __chkstk_darwin(v90);
  v96 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v27 = &v90 - v26;
  v28 = sub_2C8E30();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  v32 = &v90 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC2B0();
  swift_projectBox();
  sub_2C8E20();
  v101 = a1;
  v33 = sub_2CC0F0();
  (*(v29 + 8))(v32, v28);
  if (a4)
  {
    sub_2CE8C0();
  }

  else
  {
    v34 = sub_2CC5F0();
    (*(*(v34 - 8) + 56))(v27, 1, 1, v34);
  }

  isa = sub_2CE560().super.super.isa;
  v111 = sub_334A0(0, &qword_353110, NSNumber_ptr);
  v110[0] = isa;
  v36 = sub_2CBC90();
  sub_235D24(v110, 0xD000000000000013, 0x80000000002DD120);
  v36(v109, 0);
  swift_beginAccess();
  v37 = sub_2CC280();
  v111 = &type metadata for Int;
  v110[0] = v37;
  swift_endAccess();
  v38 = sub_2CBC90();
  sub_235D24(v110, 0xD000000000000010, 0x80000000002DD140);
  v38(v109, 0);
  v39 = v108;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v40 = sub_3ED0(v16, static Logger.default);
  swift_beginAccess();
  v41 = *(v39 + 16);
  v42 = v107;
  v95 = v40;
  v94 = v41;
  v41(v107, v40, v16);
  v43 = v96;
  sub_101084(v27, v96);
  v44 = v33;
  v45 = sub_2CDFE0();
  v46 = sub_2CE690();

  v47 = os_log_type_enabled(v45, v46);
  v97 = v44;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v93 = v27;
    v49 = v48;
    v109[0] = swift_slowAlloc();
    *v49 = 136446722;
    v50 = sub_2CCCC0();
    v52 = sub_3F08(v50, v51, v109);

    *(v49 + 4) = v52;
    *(v49 + 12) = 2080;
    sub_2CBCA0();
    v53 = sub_2CE210();
    v55 = v54;

    v56 = sub_3F08(v53, v55, v109);

    *(v49 + 14) = v56;
    *(v49 + 22) = 2080;
    v57 = sub_2CEB70();
    v59 = v58;
    sub_30B8(v43, &qword_350D38, &unk_2D3EC0);
    v60 = sub_3F08(v57, v59, v109);

    *(v49 + 24) = v60;
    _os_log_impl(&dword_0, v45, v46, "AppSelectionContext#saveRecord %{public}s info: %s, resolution result type: %s, recording to SELF...", v49, 0x20u);
    swift_arrayDestroy();

    v27 = v93;

    v61 = *(v108 + 8);
    v61(v107, v16);
  }

  else
  {

    sub_30B8(v43, &qword_350D38, &unk_2D3EC0);
    v61 = *(v39 + 8);
    v61(v42, v16);
  }

  v62 = v106;
  v63 = v104;
  v64 = v102;
  sub_2CB780();
  (*(v99 + 16))(v98, v101, v100);
  sub_2CB760();
  sub_2CB770();

  v65 = v103;
  v66 = (*(v103 + 48))(v64, 1, v62);
  v67 = v105;
  if (v66 == 1)
  {
    sub_30B8(v64, &qword_350500, &unk_2D3B50);
    v68 = v91;
    v94(v91, v95, v16);
    v69 = sub_2CDFE0();
    v70 = sub_2CE680();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "AppSelectionContext#saveRecord unexpected failed to save record to SELF, uuid nil", v71, 2u);
    }

    v61(v68, v16);
    goto LABEL_16;
  }

  v107 = v61;
  (*(v65 + 32))(v105, v64, v62);
  v94(v63, v95, v16);
  v72 = v92;
  (*(v65 + 16))(v92, v67, v62);
  v73 = sub_2CDFE0();
  v74 = sub_2CE690();
  if (!os_log_type_enabled(v73, v74))
  {

    v88 = *(v65 + 8);
    v88(v72, v62);
    (v107)(v63, v16);
    v88(v67, v62);
LABEL_16:
    v87 = v27;
    return sub_30B8(v87, &qword_350D38, &unk_2D3EC0);
  }

  v75 = swift_slowAlloc();
  v109[0] = swift_slowAlloc();
  *v75 = 136446466;
  v76 = sub_2CCC80();
  v78 = sub_3F08(v76, v77, v109);

  *(v75 + 4) = v78;
  *(v75 + 12) = 2080;
  v79 = sub_2C8E60();
  v81 = v80;
  v93 = v27;
  v82 = v16;
  v83 = *(v65 + 8);
  v84 = v72;
  v85 = v106;
  v83(v84, v106);
  v86 = sub_3F08(v79, v81, v109);

  *(v75 + 14) = v86;
  _os_log_impl(&dword_0, v73, v74, "AppSelectionContext#saveRecord %{public}s saved record with UUID: %s", v75, 0x16u);
  swift_arrayDestroy();

  (v107)(v104, v82);
  v83(v105, v85);
  v87 = v93;
  return sub_30B8(v87, &qword_350D38, &unk_2D3EC0);
}

uint64_t sub_100F48()
{
  v1 = *(sub_2CC100() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 31) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + v3);
  v7 = v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);
  v10 = *(v0 + v4);
  v11 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_10030C(v5, v0 + v2, v6, v8, v9, v10, v11);
}

uint64_t sub_101004(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10101C()
{
  result = qword_34FF20;
  if (!qword_34FF20)
  {
    sub_2CE150();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34FF20);
  }

  return result;
}

uint64_t sub_101084(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_350D38, &unk_2D3EC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Determine.UnsupportedValueStrategy.makeUnsupportedValueOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v16 = *(v8 + 16);
  v17 = swift_allocObject();
  v17[2] = v9;
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a7;
  v17[6] = a8;
  v18 = *(*v16 + 200);

  v19 = a2;

  v18(a1, a3, a4, a6, v19, a5, 0, sub_102118, v17);
}

uint64_t sub_101208(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v123 = a5;
  v124 = a6;
  v121 = a3;
  v122 = a4;
  v120 = a2;
  v109 = a1;
  v6 = sub_20410(&unk_353020, &unk_2D0970);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v108 = &v101 - v8;
  v106 = sub_2CCB20();
  v105 = *(v106 - 8);
  v9 = *(v105 + 64);
  __chkstk_darwin(v106);
  v104 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v11 = *(*(v116 - 8) + 64);
  v12 = __chkstk_darwin(v116);
  v107 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v101 - v14;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v119 = &v101 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v118 = &v101 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = &v101 - v24;
  v115 = sub_2CCB30();
  v114 = *(v115 - 8);
  v26 = *(v114 + 64);
  __chkstk_darwin(v115);
  v111 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_2CCAC0();
  v112 = *(v113 - 8);
  v28 = *(v112 + 64);
  __chkstk_darwin(v113);
  v110 = &v101 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_2CE000();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v33 = __chkstk_darwin(v30);
  v35 = &v101 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v33);
  v37 = &v101 - v36;
  v38 = sub_20410(&unk_3519A0, &qword_2D0980);
  v39 = *(*(v38 - 8) + 64);
  __chkstk_darwin(v38);
  v41 = (&v101 - v40);
  sub_F3F4(v109, &v101 - v40, &unk_3519A0, &qword_2D0980);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v117 = v25;
  if (EnumCaseMultiPayload == 1)
  {
    v43 = *v41;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v44 = sub_3ED0(v30, static Logger.default);
    swift_beginAccess();
    (*(v31 + 16))(v37, v44, v30);
    swift_errorRetain();
    v45 = sub_2CDFE0();
    v46 = sub_2CE680();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v47 = 138412290;
      swift_errorRetain();
      v49 = _swift_stdlib_bridgeErrorToNSError();
      *(v47 + 4) = v49;
      *v48 = v49;
      _os_log_impl(&dword_0, v45, v46, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput dialog provider failed with error: %@", v47, 0xCu);
      sub_30B8(v48, &unk_34FC00, &unk_2D0150);
    }

    (*(v31 + 8))(v37, v30);
    v50 = v112;
    v51 = v110;
    v52 = v113;
    (*(v112 + 104))(v110, enum case for AdditionalMetricsDescription.ModuleName.duvs(_:), v113);
    v53 = v114;
    v54 = v111;
    v55 = v115;
    (*(v114 + 104))(v111, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v115);
    swift_getErrorValue();
    sub_2CEEF0();
    v116 = sub_2CCAE0();

    (*(v53 + 8))(v54, v55);
    (*(v50 + 8))(v51, v52);
    v56 = v120[7];
    v120 = sub_35E0(v120 + 3, v120[6]);
    v57 = enum case for ActivityType.failed(_:);
    v58 = sub_2C9C20();
    v59 = *(v58 - 8);
    v60 = v117;
    (*(v59 + 104))(v117, v57, v58);
    (*(v59 + 56))(v60, 0, 1, v58);
    v61 = sub_2CA130();
    v62 = v118;
    (*(*(v61 - 8) + 56))(v118, 1, 1, v61);
    v63 = enum case for SiriKitReliabilityCodes.renderingError(_:);
    v64 = sub_2C98F0();
    v65 = *(v64 - 8);
    v66 = v119;
    (*(v65 + 104))(v119, v63, v64);
    (*(v65 + 56))(v66, 0, 1, v64);
    sub_2CB4E0();

    sub_30B8(v66, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v62, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v60, &qword_34CB88, &unk_2D0D90);
    v125[0] = v43;
    v126 = 1;
    swift_errorRetain();
    v123(v125);

    return sub_30B8(v125, qword_34C798, &qword_2D0DA0);
  }

  else
  {
    sub_24BE0(v41, v15);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v68 = sub_3ED0(v30, static Logger.default);
    swift_beginAccess();
    (*(v31 + 16))(v35, v68, v30);
    v69 = sub_2CDFE0();
    v70 = sub_2CE690();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_0, v69, v70, "CommonUnsupportedValueStrategy#makeUnsupportedValueOutput acquired dialog.", v71, 2u);
    }

    (*(v31 + 8))(v35, v30);
    v72 = v112;
    v73 = v110;
    v74 = v113;
    (*(v112 + 104))(v110, enum case for AdditionalMetricsDescription.ModuleName.duvs(_:), v113);
    v75 = v114;
    v76 = v111;
    v77 = v115;
    (*(v114 + 104))(v111, enum case for AdditionalMetricsDescription.SourceFunction.uvo(_:), v115);
    v78 = v105;
    v79 = v104;
    v80 = v106;
    (*(v105 + 104))(v104, enum case for AdditionalMetricsDescription.StatusReason.slotResolve(_:), v106);
    v109 = sub_2CCAD0();
    v103 = v81;
    (*(v78 + 8))(v79, v80);
    (*(v75 + 8))(v76, v77);
    (*(v72 + 8))(v73, v74);
    v82 = v120;
    v113 = v120[6];
    v114 = v120[7];
    v115 = sub_35E0(v120 + 3, v113);
    v83 = enum case for ActivityType.resolveSlotUnsupported(_:);
    v84 = sub_2C9C20();
    v85 = *(v84 - 8);
    v86 = v117;
    (*(v85 + 104))(v117, v83, v84);
    (*(v85 + 56))(v86, 0, 1, v84);
    v102 = v15;
    v87 = v107;
    sub_F3F4(v15, v107, &qword_34C6E8, &unk_2D0FF0);

    v88 = sub_2CA130();
    v89 = *(v88 - 8);
    v90 = v118;
    (*(v89 + 32))(v118, v87, v88);
    (*(v89 + 56))(v90, 0, 1, v88);
    v91 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
    v92 = sub_2C98F0();
    v93 = *(v92 - 8);
    v94 = v119;
    (*(v93 + 104))(v119, v91, v92);
    (*(v93 + 56))(v94, 0, 1, v92);
    v95 = v122;
    sub_2CB4E0();

    sub_30B8(v94, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v90, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v86, &qword_34CB88, &unk_2D0D90);
    v96 = v108;
    sub_789F4(v95, v108);
    v97 = sub_35E0(v82 + 8, v82[11]);
    v98 = v102;
    sub_F3F4(v102, v87, &qword_34C6E8, &unk_2D0FF0);
    v99 = *(v87 + *(v116 + 48));
    v100 = *v97;
    sub_1C077C(v87, v99, v96, _swiftEmptyArrayStorage, v123, v124);

    sub_30B8(v96, &unk_353020, &unk_2D0970);
    sub_30B8(v98, &qword_34C6E8, &unk_2D0FF0);
    return (*(v89 + 8))(v87, v88);
  }
}

unint64_t sub_10211C(uint64_t a1)
{
  result = sub_102144();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_102144()
{
  result = qword_34EA58;
  if (!qword_34EA58)
  {
    type metadata accessor for Determine.UnsupportedValueStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34EA58);
  }

  return result;
}

uint64_t sub_1021BC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = *v8;
  v15 = *(*v8 + 16);
  v16 = swift_allocObject();
  v16[2] = v14;
  v16[3] = a1;
  v16[4] = a2;
  v16[5] = a7;
  v16[6] = a8;
  v17 = *(*v15 + 200);

  v18 = a2;

  v17(a1, a3, a4, a6, v18, a5, 0, sub_102460, v16);
}

uint64_t sub_1022D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for Determine.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeUpdatedIntentForUnsupportedValue(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_102368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = type metadata accessor for Determine.UnsupportedValueStrategy();

  return UnsupportedValueFlowStrategy.makeLaunchAppWithIntentOutput(app:intent:parameterName:multicardinalValueIndex:intentResolutionResult:_:)(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

uint64_t sub_102400()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 48);

  return _swift_deallocObject(v0, 56);
}

uint64_t InternalSignalsManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1024C0(uint64_t a1)
{
  v2 = sub_20410(&qword_34E480, &qword_2D2280);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_2CA7B0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2CE000();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v11, static Logger.default);
  swift_beginAccess();
  (*(v12 + 16))(v15, v16, v11);
  v33 = v11;
  v34 = *(v7 + 16);
  v34(v10, a1, v6);
  v36 = v7;
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = a1;
    v20 = v19;
    v30 = swift_slowAlloc();
    v37 = v30;
    *v20 = 136315138;
    sub_104A4C(&qword_34CD00, &type metadata accessor for Input);
    v21 = sub_2CEE70();
    v32 = v5;
    v23 = v22;
    (*(v36 + 8))(v10, v6);
    v24 = sub_3F08(v21, v23, &v37);
    v5 = v32;

    *(v20 + 4) = v24;
    _os_log_impl(&dword_0, v17, v18, "ConfirmInterruptionFlow#on Setting input: %s...", v20, 0xCu);
    sub_306C(v30);

    a1 = v31;

    (*(v12 + 8))(v15, v33);
    v25 = v36;
  }

  else
  {

    v25 = v36;
    (*(v36 + 8))(v10, v6);
    (*(v12 + 8))(v15, v33);
  }

  v34(v5, a1, v6);
  (*(v25 + 56))(v5, 0, 1, v6);
  v26 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  v27 = v35;
  swift_beginAccess();
  sub_A4888(v5, v27 + v26);
  swift_endAccess();
  return 1;
}

uint64_t sub_1028F8(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v238 = a2;
  v241 = a1;
  v4 = sub_20410(&qword_34CC90, qword_2D40E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v221 = &v212 - v6;
  v230 = sub_2CAA00();
  v229 = *(v230 - 8);
  v7 = *(v229 + 64);
  v8 = __chkstk_darwin(v230);
  v217 = &v212 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v222 = &v212 - v11;
  v12 = __chkstk_darwin(v10);
  v224 = &v212 - v13;
  __chkstk_darwin(v12);
  v226 = &v212 - v14;
  v15 = sub_2C9EC0();
  v16 = *(v15 - 8);
  v239 = v15;
  v240 = v16;
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v237 = &v212 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2CE000();
  v242 = *(v19 - 8);
  v243 = v19;
  v20 = *(v242 + 64);
  v21 = __chkstk_darwin(v19);
  v236 = &v212 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v232 = &v212 - v24;
  v25 = __chkstk_darwin(v23);
  v215 = &v212 - v26;
  v27 = __chkstk_darwin(v25);
  v234 = &v212 - v28;
  v29 = __chkstk_darwin(v27);
  v220 = &v212 - v30;
  v31 = __chkstk_darwin(v29);
  v216 = &v212 - v32;
  v33 = __chkstk_darwin(v31);
  v219 = &v212 - v34;
  v35 = __chkstk_darwin(v33);
  v218 = &v212 - v36;
  v37 = __chkstk_darwin(v35);
  v223 = (&v212 - v38);
  __chkstk_darwin(v37);
  v228 = &v212 - v39;
  v40 = sub_2CA870();
  v41 = *(v40 - 8);
  v42 = *(v41 + 64);
  v43 = __chkstk_darwin(v40);
  v235 = (&v212 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v43);
  v46 = &v212 - v45;
  v47 = sub_20410(&qword_34E480, &qword_2D2280);
  v48 = *(*(v47 - 8) + 64);
  v49 = __chkstk_darwin(v47 - 8);
  v233 = &v212 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v225 = (&v212 - v52);
  __chkstk_darwin(v51);
  v54 = &v212 - v53;
  v55 = sub_2CA7B0();
  v56 = *(v55 - 8);
  v57 = *(v56 + 8);
  v58 = __chkstk_darwin(v55);
  v227 = &v212 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v58);
  v61 = &v212 - v60;
  v62 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input;
  swift_beginAccess();
  v231 = v3;
  sub_1049DC(v3 + v62, v54);
  v63 = *(v56 + 6);
  if (v63(v54, 1, v55) == 1)
  {
    sub_30B8(v54, &qword_34E480, &qword_2D2280);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v64 = v243;
    v65 = sub_3ED0(v243, static Logger.default);
    swift_beginAccess();
    v66 = v242;
    v67 = v236;
    (*(v242 + 16))(v236, v65, v64);
    v68 = sub_2CDFE0();
    v69 = sub_2CE680();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_0, v68, v69, "ConfirmInterruptionFlow#execute received nil input", v70, 2u);
    }

    (*(v66 + 8))(v67, v64);
    v71 = v237;
    sub_2C9EB0();
    v241(v71);
    return (*(v240 + 8))(v71, v239);
  }

  v236 = v56;
  (*(v56 + 4))(v61, v54, v55);
  sub_2CA790();
  v73 = sub_D2F98(v46, &v245);
  v213 = *(v41 + 8);
  v213(v46, v40, v73);
  v74 = v246;
  sub_30B8(&v245, &qword_34CF98, &unk_2D1A40);
  if (!v74)
  {
    v88 = v61;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v89 = v243;
    v90 = sub_3ED0(v243, static Logger.default);
    swift_beginAccess();
    v91 = v242;
    v92 = v232;
    (*(v242 + 16))(v232, v90, v89);
    v93 = sub_2CDFE0();
    v94 = sub_2CE680();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_0, v93, v94, "ConfirmInterruptionFlow#execute nil confirmableIntent", v95, 2u);
    }

    (*(v91 + 8))(v92, v89);
    v96 = v237;
    sub_2C9EB0();
    v241(v96);
    (*(v240 + 8))(v96, v239);
    return (*(v236 + 1))(v88, v55);
  }

  v75 = v235;
  v214 = v61;
  sub_2CA790();
  v76 = (*(v41 + 88))(v75, v40);
  v77 = v40;
  if (v76 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    v232 = v55;
    (*(v41 + 96))(v75, v40);
    v78 = *(v75 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
    v79 = sub_2CA830();
    objc_opt_self();
    v80 = swift_dynamicCastObjCClass();
    v81 = v236;
    if (!v80)
    {

      v86 = v242;
      v87 = v243;
      goto LABEL_31;
    }

    v82 = v80;
    v83 = v231 + v62;
    v84 = v225;
    sub_1049DC(v83, v225);
    v85 = v63(v84, 1, v232);
    v86 = v242;
    if (v85 == 1)
    {

      sub_30B8(v84, &qword_34E480, &qword_2D2280);
      v87 = v243;
LABEL_31:
      v131 = v214;
      v132 = v228;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v133 = sub_3ED0(v87, static Logger.default);
      swift_beginAccess();
      (*(v86 + 16))(v132, v133, v87);
      v134 = sub_2CDFE0();
      v135 = sub_2CE680();
      if (os_log_type_enabled(v134, v135))
      {
        v136 = swift_slowAlloc();
        *v136 = 0;
        _os_log_impl(&dword_0, v134, v135, "ConfirmInterruptionFlow#execute NLv3IntentPlusServerConversion error...", v136, 2u);
      }

      (*(v86 + 8))(v132, v87);
      v137 = v237;
      sub_2C9EB0();
      v241(v137);

      (*(v240 + 8))(v137, v239);
      (*(v81 + 1))(v131, v232);
      v138 = sub_2CAFE0();
      return (*(*(v138 - 8) + 8))(v235, v138);
    }

    sub_30B8(v84, &qword_34E480, &qword_2D2280);
    v139 = sub_2CAFE0();
    v140 = *(*(v139 - 8) + 8);
    v141 = v79;
    v140(v235, v139);
    goto LABEL_61;
  }

  v97 = v236;
  if (v76 == enum case for Parse.pommesResponse(_:))
  {
    v232 = v55;
    (*(v41 + 96))(v75, v40);
    v98 = *v75;
    v99 = sub_1B7F14();
    v100 = v243;
    if (v99)
    {
      v235 = v98;
      v101 = v226;
      v228 = v99;
      sub_2CDA40();
      v86 = v242;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v102 = sub_3ED0(v100, static Logger.default);
      swift_beginAccess();
      v103 = v223;
      (*(v86 + 16))(v223, v102, v100);
      v104 = v229;
      v105 = *(v229 + 16);
      v106 = v224;
      v107 = v101;
      v108 = v230;
      v105(v224, v107, v230);
      v109 = sub_2CDFE0();
      v110 = sub_2CE690();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = v106;
        v112 = swift_slowAlloc();
        v225 = swift_slowAlloc();
        v244 = v225;
        *v112 = 136315138;
        sub_2CAA60();
        LODWORD(v222) = v110;
        v246 = v108;
        v247 = sub_104A4C(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
        v113 = sub_F390(&v245);
        v105(v113, v111, v108);
        v114 = sub_2CAA50();
        v116 = v115;
        v117 = *(v104 + 8);
        v117(v111, v108);
        sub_306C(&v245);
        v118 = sub_3F08(v114, v116, &v244);

        *(v112 + 4) = v118;
        _os_log_impl(&dword_0, v109, v222, "ConfirmInterruptionFlow#execute pommesResponse userDialogAct: %s", v112, 0xCu);
        sub_306C(v225);
        v100 = v243;
      }

      else
      {

        v117 = *(v104 + 8);
        v117(v106, v108);
      }

      (*(v86 + 8))(v103, v100);
      v81 = v236;
      v155 = *(v231 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent);
      v156 = v226;
      if (v155 && (objc_opt_self(), (v157 = swift_dynamicCastObjCClass()) != 0))
      {
        v82 = v157;
        v158 = v155;
        v117(v156, v230);

        v159 = v158;
      }

      else
      {
        v160 = [objc_allocWithZone(INPlayMediaIntent) init];
        v161 = v235;
        sub_2CDAE0();
        sub_2CDBC0();
        sub_2CDBB0();
        v162 = v228;
        sub_2CDBA0();

        v163 = sub_2CDBD0();
        v164 = sub_1BA200(v162, v163, 0, 0);

        v117(v156, v230);
        v82 = v164;
      }

      goto LABEL_61;
    }

    v148 = v242;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v149 = sub_3ED0(v100, static Logger.default);
    swift_beginAccess();
    v150 = v218;
    (*(v148 + 16))(v218, v149, v100);
    v151 = sub_2CDFE0();
    v152 = sub_2CE680();
    if (os_log_type_enabled(v151, v152))
    {
      v153 = swift_slowAlloc();
      *v153 = 0;
      _os_log_impl(&dword_0, v151, v152, "ConfirmInterruptionFlow#execute pommesResponse contains no AudioExperience", v153, 2u);
    }

    (*(v148 + 8))(v150, v100);
    v154 = v237;
    sub_2C9EB0();
    v241(v154);

    (*(v240 + 8))(v154, v239);
    return (*(v97 + 1))(v214, v232);
  }

  v119 = v243;
  v120 = v214;
  v228 = v77;
  if (v76 != enum case for Parse.uso(_:))
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v142 = sub_3ED0(v119, static Logger.default);
    swift_beginAccess();
    v143 = v220;
    (*(v242 + 16))(v220, v142, v119);
    v144 = sub_2CDFE0();
    v145 = sub_2CE680();
    if (os_log_type_enabled(v144, v145))
    {
      v146 = swift_slowAlloc();
      *v146 = 0;
      _os_log_impl(&dword_0, v144, v145, "ConfirmInterruptionFlow#execute Ignorning non-server-conversion parse", v146, 2u);
    }

    (*(v242 + 8))(v143, v119);
    goto LABEL_42;
  }

  sub_2CA790();
  v121 = v221;
  sub_2CA7E0();
  v122 = v121;
  (v213)(v46, v228);
  v123 = v229;
  v124 = v121;
  v125 = v230;
  if ((*(v229 + 48))(v124, 1, v230) == 1)
  {
    sub_30B8(v122, &qword_34CC90, qword_2D40E0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v126 = sub_3ED0(v119, static Logger.default);
    swift_beginAccess();
    v127 = v216;
    (*(v242 + 16))(v216, v126, v119);
    v128 = sub_2CDFE0();
    v129 = sub_2CE680();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 0;
      _os_log_impl(&dword_0, v128, v129, "ConfirmInterruptionFlow#execute usoParse contains no UDA", v130, 2u);
    }

    (*(v242 + 8))(v127, v119);
LABEL_42:
    v147 = v237;
    sub_2C9EB0();
    v241(v147);
    (*(v240 + 8))(v147, v239);
    (*(v97 + 1))(v120, v55);
    return (v213)(v75, v228);
  }

  v232 = v55;
  v165 = v222;
  (*(v123 + 32))(v222, v122, v125);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v166 = sub_3ED0(v119, static Logger.default);
  swift_beginAccess();
  v167 = *(v242 + 16);
  v168 = v219;
  v226 = v166;
  v225 = (v242 + 16);
  v224 = v167;
  (v167)(v219, v166, v119);
  v169 = *(v123 + 16);
  v170 = v217;
  v169(v217, v165, v125);
  v171 = sub_2CDFE0();
  v172 = sub_2CE690();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v223 = swift_slowAlloc();
    v244 = v223;
    *v173 = 136315138;
    sub_2CAA60();
    v246 = v125;
    v247 = sub_104A4C(&unk_353090, &type metadata accessor for Siri_Nlu_External_UserDialogAct);
    v174 = sub_F390(&v245);
    v169(v174, v170, v125);
    v175 = sub_2CAA50();
    v177 = v176;
    v178 = *(v123 + 8);
    v178(v170, v125);
    sub_306C(&v245);
    v179 = sub_3F08(v175, v177, &v244);

    *(v173 + 4) = v179;
    _os_log_impl(&dword_0, v171, v172, "ConfirmInterruptionFlow#execute usoParse userDialogAct: %s", v173, 0xCu);
    sub_306C(v223);

    v180 = v243;
    v181 = *(v242 + 8);
    v181(v219, v243);
    v178(v222, v125);
  }

  else
  {

    v182 = *(v123 + 8);
    v182(v170, v125);
    v180 = v243;
    v181 = *(v242 + 8);
    v181(v168, v243);
    v182(v222, v125);
  }

  v183 = *(v231 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_intent);
  if (v183)
  {
    objc_opt_self();
    v184 = swift_dynamicCastObjCClass();
    if (v184)
    {
      v82 = v184;
      v185 = v183;
      (v213)(v235, v228);
      v86 = v242;
      v81 = v236;
LABEL_61:
      v186 = v214;
      v187 = *(v81 + 2);
      v188 = v233;
      v189 = v232;
      v187(v233, v214, v232);
      (*(v81 + 7))(v188, 0, 1, v189);
      sub_20410(&qword_3510A8, &unk_2D4D80);
      if (qword_34C030 != -1)
      {
        swift_once();
      }

      v245 = static PlayMedia.flowStrategy;
      v190 = qword_34C038;

      if (v190 != -1)
      {
        swift_once();
      }

      v187(v227, v186, v189);

      v191 = v82;
      v192 = sub_2CA8A0();
      sub_2CB4A0();
      v193 = sub_2CB490();
      v194 = type metadata accessor for PlayMediaRCHFlowWrapper(0);
      v195 = *(v194 + 48);
      v196 = *(v194 + 52);
      v197 = swift_allocObject();
      v198 = sub_134AA4(v233, v192, v193, v197);

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v199 = v243;
      v200 = sub_3ED0(v243, static Logger.default);
      swift_beginAccess();
      (*(v86 + 16))(v234, v200, v199);
      v201 = sub_2CDFE0();
      v202 = sub_2CE670();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_0, v201, v202, "ConfirmInterruptionFlow#execute Non-tvOS device does not support interruption logic...", v203, 2u);
        v186 = v214;
      }

      (*(v86 + 8))(v234, v243);
      v244 = v198;
      sub_104A4C(&qword_3510B0, type metadata accessor for PlayMediaRCHFlowWrapper);
      v204 = v237;
      sub_2C9E90();
      v241(v204);

      (*(v240 + 8))(v204, v239);
      return (*(v81 + 1))(v186, v189);
    }
  }

  (v213)(v235, v228);
  v205 = v215;
  (v224)(v215, v226, v180);
  v206 = sub_2CDFE0();
  v207 = sub_2CE680();
  v208 = os_log_type_enabled(v206, v207);
  v209 = v214;
  if (v208)
  {
    v210 = swift_slowAlloc();
    *v210 = 0;
    _os_log_impl(&dword_0, v206, v207, "ConfirmInterruptionFlow#execute received nil playMediaIntent", v210, 2u);
  }

  v181(v205, v180);
  v211 = v237;
  sub_2C9EB0();
  v241(v211);
  (*(v240 + 8))(v211, v239);
  return (*(v236 + 1))(v209, v232);
}

uint64_t sub_104638()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_input, &qword_34E480, &qword_2D2280);

  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_originalPlayMediaRCHFlowWrapper);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_featureFlagProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_mediaRemoteAPIProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_deviceProvider));
  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_playMediaCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_aceServiceInvoker));
  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_viewFactory);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_appNameResolver));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_encryptionProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_sharedContextProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_seDeviceProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin23ConfirmInterruptionFlow_siriKitTaskLoggingProvider));
  return v0;
}

uint64_t sub_104740()
{
  sub_104638();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ConfirmInterruptionFlow()
{
  result = qword_350F40;
  if (!qword_350F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1047EC()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for ConfirmInterruptionFlow.State(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for ConfirmInterruptionFlow.State(uint64_t result, int a2, int a3)
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

uint64_t sub_104908(uint64_t a1)
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

uint64_t sub_104924(uint64_t result, int a2)
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

uint64_t sub_104954(uint64_t a1)
{
  v2 = *v1;
  sub_1024C0(a1);
  return 1;
}

uint64_t sub_1049A0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ConfirmInterruptionFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_1049DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_104A4C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_104A94(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0xD000000000000013;
    case 1:
      return 0x74706D6F72702ELL;
    case 2:
      return 0xD000000000000014;
  }

  sub_2CCF90();
  sub_20410(&qword_34CCC0, &unk_2D0DE0);
  v2._countAndFlagsBits = sub_2CE2A0();
  sub_2CE350(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  sub_2CE350(v3);
  return 0x65766C6F7365722ELL;
}

double sub_104BFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  v110 = a1;
  v111 = a3;
  if (v11)
  {
    type metadata accessor for PlayMediaCatDialogService();
    v12 = swift_allocObject();
    v12[6] = 0xEF746E65746E4961;
    v12[2] = 0xD000000000000011;
    v12[3] = 0x80000000002DA8D0;
    v12[4] = a2;
    v12[5] = 0x6964654D79616C50;
    sub_FA14(_swiftEmptyArrayStorage);

    v109 = v12;

    sub_2C9A00();
    v108 = sub_2CC2B0();
    v141 = v108;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = sub_2CC360();
    v139 = &protocol witness table for StringsFileResolver;
    sub_F390(&v137);
    sub_2CC350();
    v13 = sub_2CB4A0();
    v14 = sub_2CB490();
    v135 = v13;
    v136 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v134 = v14;
    if (qword_34C048 != -1)
    {
      swift_once();
    }

    v15 = qword_35F900;
    sub_2CBC60();
    v16 = type metadata accessor for DialogHistoryProvider();
    v129 = v16;
    v130 = &off_33CAE0;
    *&v128 = v15;
    type metadata accessor for PlayMediaDialogProvider();
    v17 = swift_allocObject();
    v18 = sub_F9A0(&v128, v16);
    v19 = *(*(v16 - 8) + 64);
    __chkstk_darwin(v18);
    v21 = (&v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v22 + 16))(v21);
    v23 = *v21;
    v126 = v16;
    v127 = &off_33CAE0;
    v125[0] = v23;
    v17[15] = v109;
    sub_EEAC(&v140, (v17 + 16));
    sub_EEAC(&v134, (v17 + 31));
    sub_EEAC(v125, (v17 + 21));
    sub_EEAC(&v131, (v17 + 26));
    sub_EEAC(&v137, &v122);

    v24 = sub_2CB490();
    v120 = v13;
    v121 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v119 = v24;
    sub_306C(&v131);
    sub_306C(&v143);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    sub_306C(v125);
    v17[13] = 0xD000000000000011;
    v17[14] = 0x80000000002DA8D0;
    v17[2] = a2;
    sub_F338(&v122, (v17 + 3));
    sub_F338(&v119, (v17 + 8));

    sub_306C(&v128);
    v25 = sub_2CC5C0();
    v26 = sub_2CC5B0();
    v144 = v25;
    v145 = &protocol witness table for PlayMediaAppSelector;
    *&v143 = v26;
    if (qword_34BFB8 != -1)
    {
      swift_once();
    }

    v141 = &type metadata for StringsBackedAppNameResolver;
    v27 = sub_2869C();
    v142 = v27;
    *&v140 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v140 + 16);
    v138 = sub_2CB9E0();
    v139 = &protocol witness table for DeviceProvider;
    sub_F390(&v137);
    sub_2CB9C0();
    v28 = v108;
    v135 = v108;
    v136 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v134);
    sub_2CC2A0();
    v132 = sub_2CC810();
    v133 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v131);
    sub_2CC800();
    v129 = sub_2CC650();
    v130 = &protocol witness table for SubscriptionProvider;
    sub_F390(&v128);
    sub_2CC640();
    v126 = sub_2CC590();
    v127 = &protocol witness table for InstalledAppProvider;
    sub_F390(v125);
    sub_2CC580();
    v29 = sub_2CBED0();
    v30 = sub_2CBEC0();
    v123 = v29;
    v124 = &protocol witness table for MediaPlaybackLite;
    *&v122 = v30;
    v31 = sub_2CB780();
    sub_2CBC60();
    v32 = sub_2CC040();
    v118[3] = v32;
    v118[4] = &protocol witness table for NowPlayingProvider;
    sub_F390(v118);
    sub_2CC030();
    v117[3] = sub_2CB7A0();
    v117[4] = &protocol witness table for TCCProvider;
    sub_F390(v117);
    sub_2CB790();
    v33 = type metadata accessor for PlayMediaAppResolver();
    v34 = *(v33 + 48);
    v35 = *(v33 + 52);
    v36 = swift_allocObject();
    sub_EEAC(&v143, v36 + qword_350440);
    sub_EEAC(&v128, v36 + qword_350448);
    sub_EEAC(&v122, v36 + qword_350450);
    v37 = (v36 + qword_350470);
    *v37 = v31;
    v37[1] = &protocol witness table for SelfEmitter;
    sub_EEAC(&v119, v36 + qword_350458);
    sub_EEAC(v118, v36 + qword_350460);
    sub_EEAC(v117, v36 + qword_350468);
    sub_EEAC(&v140, v116);
    sub_EEAC(&v137, v115);
    sub_EEAC(&v134, v114);
    sub_EEAC(&v131, v113);
    sub_EEAC(v125, v112);
    v38 = class metadata base offset for CommonAppResolver;
    v39 = v36 + *(*v36 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v39, "resolutionType");
    v39[15] = -18;
    sub_EEAC(v116, v36 + *(*v36 + v38 + 16));
    sub_EEAC(v115, v36 + *(*v36 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(v114, v36 + *(*v36 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(v113, v36 + *(*v36 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(v112, v36 + *(*v36 + class metadata base offset for CommonAppResolver + 48));
    v40 = sub_2CCF50();
    sub_306C(v112);
    sub_306C(v113);
    sub_306C(v114);
    sub_306C(v115);
    sub_306C(v116);
    sub_306C(&v119);
    sub_306C(v117);
    sub_306C(v118);
    sub_306C(&v122);
    sub_306C(v125);
    sub_306C(&v128);
    sub_306C(&v131);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    sub_306C(&v143);
    v144 = v32;
    v145 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v143);

    sub_2CC030();
    v141 = v28;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = &type metadata for StringsBackedAppNameResolver;
    v139 = v27;
    *&v137 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v137 + 16);
    sub_2C9A00();
    v132 = v28;
    v133 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v131);
    sub_2CC2A0();
    v41 = type metadata accessor for SiriAudioOutputProvider();
    v42 = swift_allocObject();
    sub_F338(&v131, v42 + 16);
    v132 = v41;
    v133 = &off_337EB0;
    *&v131 = v42;
    sub_20410(&qword_351308, &qword_2D4288);
    v43 = swift_allocObject();
    *(v43 + 240) = 0;
    sub_F338(&v143, v43 + 200);
    sub_F338(&v140, v43 + 16);
    *(v43 + 248) = v40;
    sub_F338(&v137, v43 + 56);
    *(v43 + 96) = v17;
    *(v43 + 104) = sub_107D74;
    *(v43 + 112) = 0;
    sub_F338(&v134, v43 + 120);
    sub_F338(&v131, v43 + 160);
    *(v43 + 256) = 1;
    *&v143 = v43;
    sub_107470();
    sub_72068(&qword_351310, &qword_351308, &qword_2D4288);
    v44 = sub_2C95E0();
    v45 = sub_20410(&qword_3512D0, &unk_2D4260);
    v46 = v111;
    v111[3] = v45;
    v46[4] = sub_72068(&qword_3512D8, &qword_3512D0, &unk_2D4260);

    goto LABEL_20;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for AddMediaCatDialogService();
    v47 = swift_allocObject();
    *(v47 + 55) = -18;
    *(v47 + 16) = 0xD000000000000011;
    *(v47 + 24) = 0x80000000002DA8D0;
    *(v47 + 32) = a2;
    strcpy((v47 + 40), "AddMediaIntent");
    sub_FA14(_swiftEmptyArrayStorage);

    sub_2C9A00();
    v48 = sub_2CC2B0();
    v141 = v48;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = sub_2CC360();
    v139 = &protocol witness table for StringsFileResolver;
    sub_F390(&v137);
    sub_2CC350();
    v49 = sub_2CB4A0();
    v50 = sub_2CB490();
    v135 = v49;
    v136 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v134 = v50;
    type metadata accessor for AddMediaDialogProvider();
    v51 = swift_allocObject();
    v51[15] = v47;
    sub_EEAC(&v140, (v51 + 16));
    sub_EEAC(&v134, (v51 + 21));
    sub_EEAC(&v137, &v131);
    sub_EEAC(&v134, &v128);
    sub_306C(&v143);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    v51[13] = 0xD000000000000011;
    v51[14] = 0x80000000002DA8D0;
    v51[2] = a2;
    sub_F338(&v131, (v51 + 3));
    sub_F338(&v128, (v51 + 8));
    v52 = qword_34BFB8;

    if (v52 != -1)
    {
      swift_once();
    }

    v144 = &type metadata for StringsBackedAppNameResolver;
    v53 = sub_2869C();
    v145 = v53;
    *&v143 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v143 + 16);
    v141 = sub_2CB9E0();
    v142 = &protocol witness table for DeviceProvider;
    sub_F390(&v140);
    sub_2CB9C0();
    v138 = v48;
    v139 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v137);
    sub_2CC2A0();
    v135 = sub_2CC810();
    v136 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v134);
    sub_2CC800();
    v132 = sub_2CC590();
    v133 = &protocol witness table for InstalledAppProvider;
    sub_F390(&v131);
    sub_2CC580();
    v54 = sub_20410(&qword_3512F0, &qword_2D4278);
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    v57 = swift_allocObject();
    v58 = class metadata base offset for CommonAppResolver;
    v59 = v57 + *(*v57 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v59, "resolutionType");
    v59[15] = -18;
    sub_EEAC(&v143, v57 + *(*v57 + v58 + 16));
    sub_EEAC(&v140, v57 + *(*v57 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(&v137, v57 + *(*v57 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(&v134, v57 + *(*v57 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(&v131, v57 + *(*v57 + class metadata base offset for CommonAppResolver + 48));
    v60 = sub_2CCF50();
    sub_306C(&v131);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    sub_306C(&v143);
    v144 = sub_2CC040();
    v145 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v143);

    sub_2CC030();
    v141 = v48;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = &type metadata for StringsBackedAppNameResolver;
    v139 = v53;
    *&v137 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v137 + 16);
    sub_2C9A00();
    v132 = v48;
    v133 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v131);
    sub_2CC2A0();
    v61 = type metadata accessor for SiriAudioOutputProvider();
    v62 = swift_allocObject();
    sub_F338(&v131, v62 + 16);
    v132 = v61;
    v133 = &off_337EB0;
    *&v131 = v62;
    v63 = &qword_3512F8;
    v64 = &qword_2D4280;
    sub_20410(&qword_3512F8, &qword_2D4280);
    v65 = swift_allocObject();
    *(v65 + 240) = 0;
    sub_F338(&v143, v65 + 200);
    sub_F338(&v140, v65 + 16);
    *(v65 + 248) = v60;
    sub_F338(&v137, v65 + 56);
    *(v65 + 96) = v51;
    *(v65 + 104) = sub_107D74;
    *(v65 + 112) = 0;
    sub_F338(&v134, v65 + 120);
    sub_F338(&v131, v65 + 160);
    *(v65 + 256) = 1;
    *&v143 = v65;
    sub_107470();
    v66 = &unk_351300;
LABEL_19:
    sub_72068(v66, v63, v64);
    v44 = sub_2C95E0();
    v101 = sub_20410(&qword_3512D0, &unk_2D4260);
    v46 = v111;
    v111[3] = v101;
    v46[4] = sub_72068(&qword_3512D8, &qword_3512D0, &unk_2D4260);

LABEL_20:

    *v46 = v44;
    return result;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for UpdateMediaAffinityCatDialogService();
    v67 = swift_allocObject();
    v67[2] = 0xD000000000000011;
    v67[3] = 0x80000000002DA8D0;
    v67[5] = 0xD000000000000019;
    v67[6] = 0x80000000002DB1F0;
    v67[4] = a2;
    sub_FA14(_swiftEmptyArrayStorage);

    sub_2C9A00();
    v68 = sub_2CC2B0();
    v141 = v68;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = sub_2CC360();
    v139 = &protocol witness table for StringsFileResolver;
    sub_F390(&v137);
    sub_2CC350();
    v69 = sub_2CB4A0();
    v70 = sub_2CB490();
    v135 = v69;
    v136 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v134 = v70;
    type metadata accessor for UpdateMediaAffinityDialogProvider();
    v71 = swift_allocObject();
    v71[15] = v67;
    sub_EEAC(&v140, (v71 + 16));
    sub_EEAC(&v134, (v71 + 21));
    sub_EEAC(&v137, &v131);
    sub_EEAC(&v134, &v128);
    sub_306C(&v143);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    v71[13] = 0xD000000000000011;
    v71[14] = 0x80000000002DA8D0;
    v71[2] = a2;
    sub_F338(&v131, (v71 + 3));
    sub_F338(&v128, (v71 + 8));
    v72 = qword_34BFB8;

    if (v72 != -1)
    {
      swift_once();
    }

    v144 = &type metadata for StringsBackedAppNameResolver;
    v73 = sub_2869C();
    v145 = v73;
    *&v143 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v143 + 16);
    v141 = sub_2CB9E0();
    v142 = &protocol witness table for DeviceProvider;
    sub_F390(&v140);
    sub_2CB9C0();
    v138 = v68;
    v139 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v137);
    sub_2CC2A0();
    v135 = sub_2CC810();
    v136 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v134);
    sub_2CC800();
    v132 = sub_2CC590();
    v133 = &protocol witness table for InstalledAppProvider;
    sub_F390(&v131);
    sub_2CC580();
    v74 = sub_20410(&qword_34D800, &qword_2D1628);
    v75 = *(v74 + 48);
    v76 = *(v74 + 52);
    v77 = swift_allocObject();
    v78 = class metadata base offset for CommonAppResolver;
    v79 = v77 + *(*v77 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v79, "resolutionType");
    v79[15] = -18;
    sub_EEAC(&v143, v77 + *(*v77 + v78 + 16));
    sub_EEAC(&v140, v77 + *(*v77 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(&v137, v77 + *(*v77 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(&v134, v77 + *(*v77 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(&v131, v77 + *(*v77 + class metadata base offset for CommonAppResolver + 48));
    v80 = sub_2CCF50();
    sub_306C(&v131);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    sub_306C(&v143);
    v144 = sub_2CC040();
    v145 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v143);

    sub_2CC030();
    v141 = v68;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = &type metadata for StringsBackedAppNameResolver;
    v139 = v73;
    *&v137 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v137 + 16);
    sub_2C9A00();
    v132 = v68;
    v133 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v131);
    sub_2CC2A0();
    v81 = type metadata accessor for SiriAudioOutputProvider();
    v82 = swift_allocObject();
    sub_F338(&v131, v82 + 16);
    v132 = v81;
    v133 = &off_337EB0;
    *&v131 = v82;
    v63 = &qword_3512E0;
    v64 = &qword_2D4270;
    sub_20410(&qword_3512E0, &qword_2D4270);
    v83 = swift_allocObject();
    *(v83 + 240) = 0;
    sub_F338(&v143, v83 + 200);
    sub_F338(&v140, v83 + 16);
    *(v83 + 248) = v80;
    sub_F338(&v137, v83 + 56);
    *(v83 + 96) = v71;
    *(v83 + 104) = sub_107D74;
    *(v83 + 112) = 0;
    sub_F338(&v134, v83 + 120);
    sub_F338(&v131, v83 + 160);
    *(v83 + 256) = 1;
    *&v143 = v83;
    sub_107470();
    v66 = &unk_3512E8;
    goto LABEL_19;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for SearchForMediaCatDialogService();
    v84 = swift_allocObject();
    v84[2] = 0xD000000000000011;
    v84[3] = 0x80000000002DA8D0;
    v84[5] = 0xD000000000000014;
    v84[6] = 0x80000000002DCFE0;
    v84[4] = a2;
    sub_FA14(_swiftEmptyArrayStorage);

    sub_2C9A00();
    v85 = sub_2CC2B0();
    v141 = v85;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = sub_2CC360();
    v139 = &protocol witness table for StringsFileResolver;
    sub_F390(&v137);
    sub_2CC350();
    v86 = sub_2CB4A0();
    v87 = sub_2CB490();
    v135 = v86;
    v136 = &protocol witness table for SiriKitTaskLoggingProvider;
    *&v134 = v87;
    type metadata accessor for SearchForMediaDialogProvider();
    v88 = swift_allocObject();
    v88[15] = v84;
    sub_EEAC(&v140, (v88 + 16));
    sub_EEAC(&v134, (v88 + 21));
    sub_EEAC(&v137, &v131);
    sub_EEAC(&v134, &v128);
    sub_306C(&v143);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    v88[13] = 0xD000000000000011;
    v88[14] = 0x80000000002DA8D0;
    v88[2] = a2;
    sub_F338(&v131, (v88 + 3));
    sub_F338(&v128, (v88 + 8));
    v89 = qword_34BFB8;

    if (v89 != -1)
    {
      swift_once();
    }

    v144 = &type metadata for StringsBackedAppNameResolver;
    v90 = sub_2869C();
    v145 = v90;
    *&v143 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v143 + 16);
    v141 = sub_2CB9E0();
    v142 = &protocol witness table for DeviceProvider;
    sub_F390(&v140);
    sub_2CB9C0();
    v138 = v85;
    v139 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v137);
    sub_2CC2A0();
    v135 = sub_2CC810();
    v136 = &protocol witness table for UserPreferenceProvider;
    sub_F390(&v134);
    sub_2CC800();
    v132 = sub_2CC590();
    v133 = &protocol witness table for InstalledAppProvider;
    sub_F390(&v131);
    sub_2CC580();
    v91 = sub_20410(&qword_3512B0, &qword_2D4250);
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    v94 = swift_allocObject();
    v95 = class metadata base offset for CommonAppResolver;
    v96 = v94 + *(*v94 + class metadata base offset for CommonAppResolver + 8);
    strcpy(v96, "resolutionType");
    v96[15] = -18;
    sub_EEAC(&v143, v94 + *(*v94 + v95 + 16));
    sub_EEAC(&v140, v94 + *(*v94 + class metadata base offset for CommonAppResolver + 24));
    sub_EEAC(&v137, v94 + *(*v94 + class metadata base offset for CommonAppResolver + 32));
    sub_EEAC(&v134, v94 + *(*v94 + class metadata base offset for CommonAppResolver + 40));
    sub_EEAC(&v131, v94 + *(*v94 + class metadata base offset for CommonAppResolver + 48));
    v97 = sub_2CCF50();
    sub_306C(&v131);
    sub_306C(&v134);
    sub_306C(&v137);
    sub_306C(&v140);
    sub_306C(&v143);
    v144 = sub_2CC040();
    v145 = &protocol witness table for NowPlayingProvider;
    sub_F390(&v143);

    sub_2CC030();
    v141 = v85;
    v142 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v140);
    sub_2CC2A0();
    v138 = &type metadata for StringsBackedAppNameResolver;
    v139 = v90;
    *&v137 = swift_allocObject();
    sub_285EC(&static StringsBackedAppNameResolver.shared, v137 + 16);
    sub_2C9A00();
    v132 = v85;
    v133 = &protocol witness table for FeatureFlagProvider;
    sub_F390(&v131);
    sub_2CC2A0();
    v98 = type metadata accessor for SiriAudioOutputProvider();
    v99 = swift_allocObject();
    sub_F338(&v131, v99 + 16);
    v132 = v98;
    v133 = &off_337EB0;
    *&v131 = v99;
    v63 = &qword_3512B8;
    v64 = &qword_2D4258;
    sub_20410(&qword_3512B8, &qword_2D4258);
    v100 = swift_allocObject();
    *(v100 + 240) = 0;
    sub_F338(&v143, v100 + 200);
    sub_F338(&v140, v100 + 16);
    *(v100 + 248) = v97;
    sub_F338(&v137, v100 + 56);
    *(v100 + 96) = v88;
    *(v100 + 104) = sub_107D74;
    *(v100 + 112) = 0;
    sub_F338(&v134, v100 + 120);
    sub_F338(&v131, v100 + 160);
    *(v100 + 256) = 1;
    *&v143 = v100;
    sub_107470();
    v66 = &unk_3512C8;
    goto LABEL_19;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v103 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v103, v6);
  v104 = sub_2CDFE0();
  v105 = sub_2CE680();
  if (os_log_type_enabled(v104, v105))
  {
    v106 = swift_slowAlloc();
    *v106 = 0;
    _os_log_impl(&dword_0, v104, v105, "AudioAppResolutionFlow#makeAppResolutinoFlow no app resolution flow returned", v106, 2u);
  }

  (*(v7 + 8))(v10, v6);
  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_106A0C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v21[-v6];
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE690();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, "AppResolutionFlow#on Handling input", v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = sub_2CA7B0();
  v18 = *(v17 - 8);
  (*(v18 + 16))(v7, a1, v17);
  (*(v18 + 56))(v7, 0, 1, v17);
  v19 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  swift_beginAccess();
  sub_A4888(v7, v2 + v19);
  swift_endAccess();
  return 1;
}

uint64_t sub_106CBC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a2;
  v31 = a1;
  v4 = sub_20410(&qword_34E480, &qword_2D2280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = sub_2C9EC0();
  v28 = *(v8 - 8);
  v29 = v8;
  v9 = *(v28 + 64);
  __chkstk_darwin(v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2CE000();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v17 = sub_3ED0(v12, static Logger.default);
  swift_beginAccess();
  (*(v13 + 16))(v16, v17, v12);
  v18 = sub_2CDFE0();
  v19 = sub_2CE690();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_0, v18, v19, "AppResolutionFlow#execute skipping for non-tvOS platform not capable of remote execution. App prediction will run later as part of RCH", v20, 2u);
  }

  (*(v13 + 8))(v16, v12);
  v22 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow);
  v21 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow + 8);
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input;
  swift_beginAccess();
  sub_F3F4(v3 + v23, v7, &qword_34E480, &qword_2D2280);
  v24 = *(v3 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_intent);
  v25 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher;
  v26 = v24;

  v22(v7, v24, 0, v3 + v25);

  sub_30B8(v7, &qword_34E480, &qword_2D2280);
  sub_2C9EA0();

  v31(v11);
  return (*(v28 + 8))(v11, v29);
}

uint64_t sub_107020()
{
  sub_30B8(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_input, &qword_34E480, &qword_2D2280);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appNameResolver));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_aceService));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_outputPublisher));
  v1 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_catService);

  v2 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_commonMediaIntentCatDialogService);

  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_siriKitTaskLoggingProvider));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_featureFlags));
  sub_306C((v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nowPlayingProvider));
  v3 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_nextAppAcceptingFlow + 8);

  v4 = *(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_appResolutionFlowProducer + 8);

  sub_107D64(*(v0 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22AudioAppResolutionFlow_state));
  return v0;
}

uint64_t sub_107120()
{
  sub_107020();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AudioAppResolutionFlow()
{
  result = qword_351148;
  if (!qword_351148)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1071CC()
{
  sub_B104C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1072A4(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1072C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_107324(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_107374(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_1073A4(uint64_t a1)
{
  v2 = *v1;
  sub_106A0C(a1);
  return 1;
}

uint64_t sub_1073F0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AudioAppResolutionFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t sub_10742C()
{
  sub_2CB5B0();
  v0 = sub_2C9C10();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_2C9BF0();
}

unint64_t sub_107470()
{
  result = qword_3512C0;
  if (!qword_3512C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_3512C0);
  }

  return result;
}

uint64_t sub_1074BC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_2CC2B0();
  v59 = *(v6 - 8);
  v7 = *(v59 + 64);
  __chkstk_darwin(v6);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_20410(&qword_34E480, &qword_2D2280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v56 - v12;
  sub_F3F4(a1, &v56 - v12, &qword_34E480, &qword_2D2280);
  sub_EEAC(a3, v86);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v85[3] = &type metadata for StringsBackedAppNameResolver;
  v57 = sub_2869C();
  v85[4] = v57;
  v85[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v85[0] + 16);
  sub_2C9A00();
  v83[3] = v6;
  v83[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v83);
  sub_2CC2A0();
  v14 = sub_2CB4A0();
  v15 = sub_2CB490();
  v82 = &protocol witness table for SiriKitTaskLoggingProvider;
  v81 = v14;
  *&v80 = v15;
  v16 = type metadata accessor for SiriForAirPlayFlow();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  v60 = v16;
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_input;
  v21 = sub_2CA7B0();
  (*(*(v21 - 8) + 56))(v19 + v20, 1, 1, v21);
  v22 = v6;
  v23 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent;
  *(v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_intent) = 0;
  swift_beginAccess();
  v61 = v13;
  sub_BED04(v13, v19 + v20);
  swift_endAccess();
  v24 = *(v19 + v23);
  *(v19 + v23) = a2;

  sub_EEAC(v86, v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_outputPublisher);
  sub_EEAC(v83, v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_featureFlags);
  sub_EEAC(v85, v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_appNameResolver);
  sub_EEAC(v84, v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_aceService);
  v25 = (v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_nextLocalFlow);
  *v25 = sub_BD99C;
  v25[1] = 0;
  sub_EEAC(v85, v78);
  sub_EEAC(v84, v77);
  v26 = CATDefaultMode;
  v27 = sub_2CBC00();
  v28 = a2;
  v29 = sub_2CBBF0();

  sub_2CC2A0();
  type metadata accessor for CatService();
  v30 = swift_allocObject();
  v31 = v79;
  v32 = sub_F9A0(v78, v79);
  v58 = &v56;
  v33 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (&v56 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v36 + 16))(v35);
  v76[3] = &type metadata for StringsBackedAppNameResolver;
  v76[4] = v57;
  v37 = swift_allocObject();
  v76[0] = v37;
  v38 = v35[3];
  v37[3] = v35[2];
  v37[4] = v38;
  v37[5] = v35[4];
  v39 = v35[1];
  v37[1] = *v35;
  v37[2] = v39;
  v75[3] = v27;
  v75[4] = &protocol witness table for MorphunProvider;
  v75[0] = v29;
  v74[3] = v22;
  v74[4] = &protocol witness table for FeatureFlagProvider;
  v40 = sub_F390(v74);
  v41 = v59;
  (*(v59 + 16))(v40, v9, v22);
  *(v30 + 296) = v26;
  sub_EEAC(v74, v30 + 256);
  sub_EEAC(v76, v73);
  sub_EEAC(v75, v72);
  sub_EEAC(v77, v71);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v42 = sub_2CCA30();
  v43 = sub_2CCA20();
  v68[3] = v42;
  v68[4] = &protocol witness table for MultiUserConnectionProvider;
  v68[0] = v43;
  v67[3] = sub_2CB9E0();
  v67[4] = &protocol witness table for DeviceProvider;
  sub_F390(v67);
  sub_2CB9C0();
  sub_EEAC(v73, v30 + 16);
  sub_EEAC(v72, v30 + 216);
  sub_EEAC(v71, v30 + 56);
  sub_EEAC(v68, v30 + 96);
  sub_EEAC(v67, v30 + 176);
  sub_F3F4(v69, &v62, qword_34C708, &qword_2D1620);
  if (v63)
  {

    sub_30B8(v69, qword_34C708, &qword_2D1620);
    sub_306C(v71);
    sub_306C(v72);
    sub_306C(v73);
    (*(v41 + 8))(v9, v22);
    sub_306C(v77);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v67);
    sub_306C(v68);
    sub_F338(&v62, &v64);
  }

  else
  {
    sub_EEAC(v71, &v64);
    v44 = sub_2C9E60();
    v45 = *(v44 + 48);
    v46 = *(v44 + 52);
    swift_allocObject();
    v47 = sub_2C9E50();
    v65 = v44;
    v66 = &protocol witness table for ContactsManager;

    *&v64 = v47;
    sub_30B8(v69, qword_34C708, &qword_2D1620);
    sub_306C(v71);
    sub_306C(v72);
    sub_306C(v73);
    (*(v41 + 8))(v9, v22);
    sub_306C(v77);
    sub_306C(v74);
    sub_306C(v75);
    sub_306C(v76);
    sub_306C(v67);
    sub_306C(v68);
    if (v63)
    {
      sub_30B8(&v62, qword_34C708, &qword_2D1620);
    }
  }

  sub_F338(&v64, v30 + 136);
  sub_306C(v78);
  type metadata accessor for PlayMediaCatDialogService();
  v48 = swift_allocObject();
  v48[5] = 0x6964654D79616C50;
  v48[6] = 0xEF746E65746E4961;
  v48[2] = 0xD000000000000011;
  v48[3] = 0x80000000002DA8D0;
  v48[4] = v30;
  *(v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_playMediaCatDialogService) = v48;
  type metadata accessor for CommonMediaIntentCatDialogService();
  v49 = swift_allocObject();
  v49[2] = 0xD000000000000011;
  v49[3] = 0x80000000002DA8D0;
  v49[4] = v30;
  *(v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_commonMediaIntentCatDialogService) = v49;
  v50 = sub_2C9C10();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();

  v53 = sub_2C9BF0();
  sub_306C(v84);
  sub_306C(v86);
  sub_30B8(v61, &qword_34E480, &qword_2D2280);
  sub_306C(v83);
  sub_306C(v85);
  *(v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_viewFactory) = v53;
  sub_F338(&v80, v19 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin18SiriForAirPlayFlow_siriKitTaskLoggingProvider);
  v86[0] = v19;
  sub_107D0C();
  v54 = sub_2C97B0();

  return v54;
}

unint64_t sub_107D0C()
{
  result = qword_351318;
  if (!qword_351318)
  {
    type metadata accessor for SiriForAirPlayFlow();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_351318);
  }

  return result;
}

unint64_t sub_107D64(unint64_t result)
{
  if (result >= 3)
  {
  }

  return result;
}

uint64_t sub_107D78@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v48 = a1;
  v3 = sub_2CE000();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  v5 = __chkstk_darwin(v3);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v43 - v8;
  v10 = sub_2C9120();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v13);
  v18 = &v43 - v17;
  __chkstk_darwin(v16);
  v20 = (&v43 - v19);
  v21 = *(v11 + 16);
  v21(&v43 - v19, v2, v10);
  v22 = (*(v11 + 88))(v20, v10);
  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.UNRECOGNIZED(_:))
  {
    (*(v11 + 96))(v20, v10);
    v23 = *v20;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v24 = v47;
    v25 = sub_3ED0(v47, static Logger.default);
    swift_beginAccess();
    v26 = v46;
    (*(v46 + 16))(v9, v25, v24);
    v27 = sub_2CDFE0();
    v28 = sub_2CE680();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134217984;
      *(v29 + 4) = v23;
      _os_log_impl(&dword_0, v27, v28, "AudioItemType#toCommonAudioMediaType unrecognized AudioItemType: %ld", v29, 0xCu);
    }

    (*(v26 + 8))(v9, v24);
    goto LABEL_8;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.unknown(_:))
  {
LABEL_8:
    v30 = &enum case for CommonAudio.MediaType.unknown(_:);
LABEL_9:
    v31 = *v30;
    v32 = sub_2CD540();
    return (*(*(v32 - 8) + 104))(v48, v31, v32);
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.song(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.song(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.album(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.album(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.artist(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.artist(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.genre(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.genre(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.playlist(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.playlist(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastShow(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.podcast(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastEpisode(_:))
  {
LABEL_23:
    v30 = &enum case for CommonAudio.MediaType.episode(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastPlaylist(_:))
  {
    goto LABEL_8;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.musicStation(_:))
  {
LABEL_26:
    v30 = &enum case for CommonAudio.MediaType.station(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.audioBook(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.audioBook(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.movie(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.movie(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.tvShow(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.tvShow(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.tvShowEpisode(_:))
  {
    goto LABEL_23;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.musicVideo(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.musicVideo(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.podcastStation(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.podcastStation(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.radioStation(_:))
  {
    goto LABEL_39;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.station(_:))
  {
    goto LABEL_26;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.music(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.music(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.algorithmicRadioStation(_:))
  {
LABEL_39:
    v30 = &enum case for CommonAudio.MediaType.radioStation(_:);
    goto LABEL_9;
  }

  if (v22 == enum case for Apple_Parsec_Siri_V2alpha_AudioItemType.news(_:))
  {
    v30 = &enum case for CommonAudio.MediaType.news(_:);
    goto LABEL_9;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v34 = sub_3ED0(v47, static Logger.default);
  swift_beginAccess();
  (*(v46 + 16))(v7, v34, v47);
  v21(v18, v2, v10);
  v35 = sub_2CDFE0();
  v45 = sub_2CE680();
  if (os_log_type_enabled(v35, v45))
  {
    v36 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v49 = v44;
    *v36 = 136315138;
    v21(v15, v18, v10);
    v43 = sub_2CE2A0();
    v38 = v37;
    v39 = *(v11 + 8);
    v39(v18, v10);
    v40 = sub_3F08(v43, v38, &v49);

    *(v36 + 4) = v40;
    _os_log_impl(&dword_0, v35, v45, "AudioItemType#toCommonAudioMediaType unrecognized AudioItemType type: %s", v36, 0xCu);
    sub_306C(v44);
  }

  else
  {

    v39 = *(v11 + 8);
    v39(v18, v10);
  }

  (*(v46 + 8))(v7, v47);
  v41 = enum case for CommonAudio.MediaType.unknown(_:);
  v42 = sub_2CD540();
  (*(*(v42 - 8) + 104))(v48, v41, v42);
  return (v39)(v20, v10);
}

uint64_t UpdateMediaAffinityFlowStrategy.actionForInput(input:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v162 = a1;
  v159 = a2;
  v2 = sub_20410(&qword_34CCE8, &unk_2D0E20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v150 = &v130[-v4];
  v151 = sub_2CD490();
  v152 = *(v151 - 8);
  v5 = *(v152 + 64);
  v6 = __chkstk_darwin(v151);
  v137 = &v130[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __chkstk_darwin(v6);
  v145 = &v130[-v9];
  __chkstk_darwin(v8);
  v147 = &v130[-v10];
  v149 = sub_2CD4C0();
  v155 = *(v149 - 8);
  v11 = *(v155 + 64);
  __chkstk_darwin(v149);
  v140 = &v130[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v154 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v13 = *(*(v154 - 8) + 64);
  v14 = __chkstk_darwin(v154);
  v144 = &v130[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v17 = &v130[-v16];
  v18 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v139 = &v130[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v142 = &v130[-v23];
  v24 = __chkstk_darwin(v22);
  v143 = &v130[-v25];
  v26 = __chkstk_darwin(v24);
  v141 = &v130[-v27];
  v28 = __chkstk_darwin(v26);
  v30 = &v130[-v29];
  __chkstk_darwin(v28);
  v153 = &v130[-v31];
  v32 = sub_2CA870();
  v163 = *(v32 - 8);
  v164 = v32;
  v33 = *(v163 + 64);
  v34 = __chkstk_darwin(v32);
  v160 = &v130[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v34);
  v37 = &v130[-v36];
  v38 = sub_2CE000();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v38);
  v146 = &v130[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = __chkstk_darwin(v41);
  v138 = &v130[-v44];
  v45 = __chkstk_darwin(v43);
  v47 = &v130[-v46];
  v48 = __chkstk_darwin(v45);
  v148 = &v130[-v49];
  v50 = __chkstk_darwin(v48);
  v52 = &v130[-v51];
  __chkstk_darwin(v50);
  v54 = &v130[-v53];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v55 = sub_3ED0(v38, static Logger.default);
  swift_beginAccess();
  v56 = v39;
  v57 = *(v39 + 16);
  v158 = v55;
  v161 = v38;
  v157 = v39 + 16;
  v156 = v57;
  v57(v54, v55, v38);
  v58 = sub_2CDFE0();
  v59 = sub_2CE670();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_0, v58, v59, "UpdateMediaAffinityFlowStrategy#actionForInput called", v60, 2u);
  }

  v61 = v56 + 8;
  v62 = *(v56 + 8);
  v63 = v161;
  v62(v54, v161);
  sub_2CA790();
  v64 = (*(v163 + 88))(v37, v164);
  if (v64 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_6:
    v65 = *(v163 + 8);
    v66 = v37;
    v67 = v164;
    (v65)(v66, v164);
    v68 = v160;
    sub_2CA790();
    v69 = sub_D2F98(v68, &v165);
    v65(v68, v67, v69);
    if (!v166)
    {
      sub_30B8(&v165, &qword_34CF98, &unk_2D1A40);
LABEL_29:
      v92 = v148;
      v156(v148, v158, v63);
      v93 = sub_2CDFE0();
      v94 = sub_2CE680();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = swift_slowAlloc();
        *v95 = 0;
        _os_log_impl(&dword_0, v93, v94, "UpdateMediaAffinityFlowStrategy#actionForInput received unsupported parse", v95, 2u);
      }

      v62(v92, v63);
      return sub_2C9CF0();
    }

    v136 = v61;
    sub_420A4(&v165, &v167);
    sub_35E0(&v167, v168);
    v70 = v153;
    sub_2CD840();
    v71 = v155;
    v72 = v149;
    v134 = *(v155 + 104);
    v134(v30, enum case for CommonAudio.Verb.like(_:), v149);
    v73 = *(v71 + 56);
    v135 = v71 + 56;
    v133 = v73;
    v73(v30, 0, 1, v72);
    v74 = *(v154 + 48);
    sub_F7598(v70, v17);
    sub_F7598(v30, &v17[v74]);
    v75 = *(v71 + 48);
    if (v75(v17, 1, v72) == 1)
    {
      sub_30B8(v30, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v70, &qword_34D6B8, &qword_2D15B0);
      v76 = v72;
      if (v75(&v17[v74], 1, v72) == 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v84 = v141;
      sub_F7598(v17, v141);
      if (v75(&v17[v74], 1, v72) != 1)
      {
        v96 = v155;
        v97 = &v17[v74];
        v98 = v140;
        (*(v155 + 32))(v140, v97, v72);
        sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
        v131 = sub_2CE250();
        v132 = v62;
        v99 = *(v96 + 8);
        v99(v98, v72);
        sub_30B8(v30, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v153, &qword_34D6B8, &qword_2D15B0);
        v99(v84, v72);
        v62 = v132;
        sub_30B8(v17, &qword_34D6B8, &qword_2D15B0);
        v76 = v72;
        if (v131)
        {
          goto LABEL_38;
        }

LABEL_21:
        sub_35E0(&v167, v168);
        v85 = v143;
        sub_2CD840();
        v86 = v142;
        v134(v142, enum case for CommonAudio.Verb.unlike(_:), v76);
        v87 = v86;
        v133(v86, 0, 1, v76);
        v88 = *(v154 + 48);
        v89 = v144;
        sub_F7598(v85, v144);
        sub_F7598(v86, &v89[v88]);
        if (v75(v89, 1, v76) == 1)
        {
          sub_30B8(v86, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v85, &qword_34D6B8, &qword_2D15B0);
          if (v75(&v89[v88], 1, v76) == 1)
          {
            v17 = v89;
LABEL_24:
            sub_30B8(v17, &qword_34D6B8, &qword_2D15B0);
LABEL_38:
            sub_306C(&v167);
            v61 = v136;
LABEL_39:
            v108 = v160;
            sub_2CA790();
            v109 = sub_D2F98(v108, &v167);
            (*(v163 + 8))(v108, v164, v109);
            v110 = v151;
            v111 = v150;
            if (v168)
            {
              v112 = v169;
              sub_35E0(&v167, v168);
              v113 = *(v112 + 8);
              sub_2CD480();
              sub_306C(&v167);
              v114 = v152;
              v115 = (*(v152 + 48))(v111, 1, v110);
              v116 = v161;
              if (v115 != 1)
              {
                (*(v114 + 32))(v147, v111, v110);
                v117 = *(v114 + 104);
                v117(v145, enum case for CommonAudio.Confirmation.cancel(_:), v110);
                sub_10B7F4(&qword_34CCF8, 255, &type metadata accessor for CommonAudio.Confirmation);
                sub_2CE3E0();
                sub_2CE3E0();
                v136 = v61;
                v132 = v62;
                if (v167 == v165 && *(&v167 + 1) == *(&v165 + 1))
                {
                  v118 = 1;
                }

                else
                {
                  v118 = sub_2CEEA0();
                }

                v123 = *(v152 + 8);
                v123(v145, v110);

                if (v118)
                {
                  goto LABEL_55;
                }

                v124 = v137;
                v117(v137, enum case for CommonAudio.Confirmation.no(_:), v110);
                sub_2CE3E0();
                sub_2CE3E0();
                if (v167 == v165 && *(&v167 + 1) == *(&v165 + 1))
                {
                  v123(v124, v110);

LABEL_55:
                  v126 = v138;
                  v156(v138, v158, v116);
                  v127 = sub_2CDFE0();
                  v128 = sub_2CE690();
                  if (os_log_type_enabled(v127, v128))
                  {
                    v129 = swift_slowAlloc();
                    *v129 = 0;
                    _os_log_impl(&dword_0, v127, v128, "UpdateMediaAffinityFlowStrategy#actionForInput found cancellation node - treating state as cancelled", v129, 2u);
                  }

                  v132(v126, v116);
                  sub_2C9CD0();
                  return (v123)(v147, v110);
                }

                v125 = sub_2CEEA0();
                v123(v124, v110);

                if (v125)
                {
                  goto LABEL_55;
                }

                v123(v147, v110);
                v62 = v132;
                goto LABEL_46;
              }
            }

            else
            {
              sub_30B8(&v167, &qword_34CF98, &unk_2D1A40);
              (*(v152 + 56))(v111, 1, 1, v110);
              v116 = v161;
            }

            sub_30B8(v111, &qword_34CCE8, &unk_2D0E20);
LABEL_46:
            v119 = v146;
            v156(v146, v158, v116);
            v120 = sub_2CDFE0();
            v121 = sub_2CE670();
            if (os_log_type_enabled(v120, v121))
            {
              v122 = swift_slowAlloc();
              *v122 = 0;
              _os_log_impl(&dword_0, v120, v121, "UpdateMediaAffinityFlowStrategy#actionForInput handling", v122, 2u);
            }

            v62(v119, v116);
            return sub_2C9CE0();
          }
        }

        else
        {
          v90 = v75;
          v91 = v139;
          sub_F7598(v89, v139);
          if (v90(&v89[v88], 1, v76) != 1)
          {
            v104 = v155;
            v105 = &v89[v88];
            v106 = v140;
            (*(v155 + 32))(v140, v105, v76);
            sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
            LODWORD(v154) = sub_2CE250();
            v107 = *(v104 + 8);
            v107(v106, v76);
            sub_30B8(v87, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v85, &qword_34D6B8, &qword_2D15B0);
            v107(v91, v76);
            sub_30B8(v89, &qword_34D6B8, &qword_2D15B0);
            if (v154)
            {
              goto LABEL_38;
            }

            goto LABEL_28;
          }

          sub_30B8(v87, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v85, &qword_34D6B8, &qword_2D15B0);
          (*(v155 + 8))(v91, v76);
        }

        sub_30B8(v89, &qword_34D6B0, &unk_2D4FC0);
LABEL_28:
        sub_306C(&v167);
        v63 = v161;
        goto LABEL_29;
      }

      sub_30B8(v30, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v153, &qword_34D6B8, &qword_2D15B0);
      (*(v155 + 8))(v84, v72);
      v76 = v72;
    }

    sub_30B8(v17, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_21;
  }

  if (v64 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v163 + 96))(v37, v164);
    v77 = *&v37[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v78 = sub_2CA830();
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v79 = sub_2CAFE0();
      (*(*(v79 - 8) + 8))(v37, v79);
      goto LABEL_39;
    }

    v156(v52, v158, v63);
    v100 = sub_2CDFE0();
    v101 = sub_2CE670();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&dword_0, v100, v101, "UpdateMediaAffinityFlowStrategy#actionForInput received unexpected NLv3IntentPlusServerConversion parse, ignoring", v102, 2u);
    }

    v62(v52, v63);
    sub_2C9CF0();

    v103 = sub_2CAFE0();
    return (*(*(v103 - 8) + 8))(v37, v103);
  }

  else
  {
    if (v64 == enum case for Parse.uso(_:))
    {
      goto LABEL_6;
    }

    v156(v47, v158, v63);
    v80 = sub_2CDFE0();
    v81 = sub_2CE680();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_0, v80, v81, "UpdateMediaAffinityFlowStrategy#actionForInput received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v82, 2u);
    }

    v62(v47, v63);
    sub_2C9CF0();
    return (*(v163 + 8))(v37, v164);
  }
}

uint64_t UpdateMediaAffinityFlowStrategy.makeIntentFromParse(parse:currentIntent:completion:)(char *a1, void *a2, void (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v164 = a4;
  v160 = a3;
  v157 = sub_2CD4C0();
  v152 = *(v157 - 8);
  v6 = *(v152 + 64);
  __chkstk_darwin(v157);
  v139 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v8 = *(*(v151 - 8) + 64);
  v9 = __chkstk_darwin(v151);
  v144 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v155 = &v133 - v11;
  v12 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v137 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v145 = &v133 - v17;
  v18 = __chkstk_darwin(v16);
  v143 = &v133 - v19;
  v20 = __chkstk_darwin(v18);
  v159 = &v133 - v21;
  v22 = __chkstk_darwin(v20);
  v147 = &v133 - v23;
  __chkstk_darwin(v22);
  v162 = &v133 - v24;
  v25 = sub_2CA870();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v25);
  v161 = &v133 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v153 = &v133 - v31;
  __chkstk_darwin(v30);
  v33 = &v133 - v32;
  v34 = sub_2CE000();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v138 = &v133 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v154 = &v133 - v40;
  v41 = __chkstk_darwin(v39);
  v136 = &v133 - v42;
  __chkstk_darwin(v41);
  v44 = &v133 - v43;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v45 = sub_3ED0(v34, static Logger.default);
  swift_beginAccess();
  v46 = *(v35 + 16);
  v150 = v45;
  v149 = v35 + 16;
  v148 = v46;
  v46(v44, v45, v34);
  v165 = v26;
  v47 = *(v26 + 16);
  v163 = a1;
  v166 = v47;
  v47(v33, a1, v25);
  v48 = a2;
  v49 = sub_2CDFE0();
  v50 = v35;
  v51 = sub_2CE670();

  v158 = v49;
  v52 = os_log_type_enabled(v49, v51);
  v156 = v50;
  v141 = a2;
  v140 = v48;
  if (v52)
  {
    v53 = v25;
    v54 = swift_slowAlloc();
    v134 = swift_slowAlloc();
    *&v169 = v134;
    *v54 = 136446722;
    v55 = sub_2CCCC0();
    v135 = v44;
    v57 = sub_3F08(v55, v56, &v169);
    v146 = v34;
    v58 = v57;

    *(v54 + 4) = v58;
    *(v54 + 12) = 2080;
    v59 = v53;
    v166(v153, v33, v53);
    v60 = sub_2CE2A0();
    v62 = v61;
    v153 = *(v165 + 8);
    (v153)(v33, v59);
    v63 = sub_3F08(v60, v62, &v169);

    *(v54 + 14) = v63;
    *(v54 + 22) = 2080;
    *&v167 = a2;
    v64 = v48;
    sub_20410(&qword_351320, &qword_2D4298);
    v65 = sub_2CE2A0();
    v67 = sub_3F08(v65, v66, &v169);
    v34 = v146;

    *(v54 + 24) = v67;
    v68 = v158;
    _os_log_impl(&dword_0, v158, v51, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v54, 0x20u);
    swift_arrayDestroy();

    v69 = *(v156 + 8);
    v69(v135, v34);
    v70 = v165;
  }

  else
  {

    v70 = v165;
    v153 = *(v165 + 8);
    (v153)(v33, v25);
    v69 = *(v50 + 8);
    v69(v44, v34);
    v59 = v25;
  }

  v71 = v161;
  v72 = v163;
  v166(v161, v163, v59);
  v73 = (*(v70 + 88))(v71, v59);
  v74 = v159;
  v75 = v162;
  if (v73 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_7:
    (v153)(v71, v59);
    sub_D2F98(v72, &v167);
    if (!v168)
    {
      sub_30B8(&v167, &qword_34CF98, &unk_2D1A40);
      v94 = v160;
LABEL_30:
      v148(v154, v150, v34);
      v101 = sub_2CDFE0();
      v102 = sub_2CE680();
      if (os_log_type_enabled(v101, v102))
      {
        v103 = swift_slowAlloc();
        *v103 = 0;
        _os_log_impl(&dword_0, v101, v102, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentOnly parse", v103, 2u);
      }

      v69(v154, v34);
      v104 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v105 = swift_allocError();
      (*(*(v104 - 8) + 104))(v106, enum case for PlaybackCode.ceGE89(_:), v104);
      v94(v105, 1);
    }

    v163 = v69;
    v146 = v34;
    sub_420A4(&v167, &v169);
    sub_35E0(&v169, v170);
    sub_2CD840();
    v76 = v152;
    v77 = v147;
    v78 = v157;
    v166 = *(v152 + 104);
    v166(v147, enum case for CommonAudio.Verb.like(_:), v157);
    v165 = *(v76 + 56);
    (v165)(v77, 0, 1, v78);
    v79 = *(v151 + 48);
    v80 = v155;
    sub_F7598(v75, v155);
    sub_F7598(v77, v80 + v79);
    v81 = *(v76 + 48);
    if (v81(v80, 1, v78) == 1)
    {
      sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
      v82 = v155;
      sub_30B8(v75, &qword_34D6B8, &qword_2D15B0);
      if (v81(v82 + v79, 1, v157) == 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_F7598(v80, v74);
      if (v81(v80 + v79, 1, v78) != 1)
      {
        v107 = v152;
        v108 = v80 + v79;
        v109 = v139;
        (*(v152 + 32))(v139, v108, v78);
        sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
        LODWORD(v161) = sub_2CE250();
        v110 = *(v107 + 8);
        v110(v109, v78);
        sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
        v110(v74, v78);
        sub_30B8(v155, &qword_34D6B8, &qword_2D15B0);
        if (v161)
        {
          goto LABEL_40;
        }

LABEL_22:
        sub_35E0(&v169, v170);
        v95 = v143;
        sub_2CD840();
        v96 = v145;
        v97 = v157;
        v166(v145, enum case for CommonAudio.Verb.unlike(_:), v157);
        (v165)(v96, 0, 1, v97);
        v98 = *(v151 + 48);
        v99 = v144;
        sub_F7598(v95, v144);
        sub_F7598(v96, v99 + v98);
        if (v81(v99, 1, v97) == 1)
        {
          sub_30B8(v96, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
          if (v81(v99 + v98, 1, v97) == 1)
          {
            v82 = v99;
LABEL_25:
            sub_30B8(v82, &qword_34D6B8, &qword_2D15B0);
LABEL_40:
            v124 = v140;
            v125 = v140;
            if (!v141)
            {
              v125 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
            }

            v126 = v170;
            v127 = v171;
            v128 = sub_35E0(&v169, v170);
            v129 = swift_allocObject();
            v130 = v160;
            v129[2] = v125;
            v129[3] = v130;
            v129[4] = v164;
            v131 = v124;
            v132 = v125;

            sub_113174(v128, (v142 + 16), v142 + 56, sub_10B6A4, v129, v132, v126, v127);

            return sub_306C(&v169);
          }
        }

        else
        {
          v100 = v137;
          sub_F7598(v99, v137);
          if (v81(v99 + v98, 1, v97) != 1)
          {
            v119 = v152;
            v120 = v99 + v98;
            v121 = v139;
            (*(v152 + 32))(v139, v120, v97);
            sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
            v122 = sub_2CE250();
            v123 = *(v119 + 8);
            v123(v121, v97);
            sub_30B8(v145, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
            v123(v100, v97);
            sub_30B8(v99, &qword_34D6B8, &qword_2D15B0);
            if (v122)
            {
              goto LABEL_40;
            }

            goto LABEL_29;
          }

          sub_30B8(v145, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v95, &qword_34D6B8, &qword_2D15B0);
          (*(v152 + 8))(v100, v97);
        }

        sub_30B8(v99, &qword_34D6B0, &unk_2D4FC0);
LABEL_29:
        sub_306C(&v169);
        v69 = v163;
        v94 = v160;
        v34 = v146;
        goto LABEL_30;
      }

      sub_30B8(v147, &qword_34D6B8, &qword_2D15B0);
      v82 = v155;
      sub_30B8(v162, &qword_34D6B8, &qword_2D15B0);
      (*(v152 + 8))(v74, v157);
    }

    sub_30B8(v82, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_22;
  }

  if (v73 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v70 + 96))(v71, v59);
    v83 = *&v71[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v84 = sub_2CA830();
    objc_opt_self();
    v85 = swift_dynamicCastObjCClass();
    if (v85)
    {
      v160(v85, 0);
    }

    else
    {

      v111 = v136;
      v148(v136, v150, v34);
      v112 = sub_2CDFE0();
      v113 = sub_2CE670();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_0, v112, v113, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v114, 2u);
        v71 = v161;
      }

      v69(v111, v34);
      v115 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v116 = swift_allocError();
      (*(*(v115 - 8) + 104))(v117, enum case for PlaybackCode.ceGE88(_:), v115);
      v160(v116, 1);
    }

    v118 = sub_2CAFE0();
    return (*(*(v118 - 8) + 8))(v71, v118);
  }

  else
  {
    v72 = v163;
    if (v73 == enum case for Parse.uso(_:))
    {
      goto LABEL_7;
    }

    v166 = v59;
    v86 = v138;
    v148(v138, v150, v34);
    v87 = sub_2CDFE0();
    v88 = sub_2CE680();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_0, v87, v88, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v89, 2u);
      v71 = v161;
    }

    v69(v86, v34);
    v90 = sub_2CB850();
    sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
    v91 = swift_allocError();
    (*(*(v90 - 8) + 104))(v92, enum case for PlaybackCode.ceGE90(_:), v90);
    v160(v91, 1);

    return (v153)(v71, v166);
  }
}

uint64_t sub_10AFCC(void *a1, uint64_t (*a2)(id, void))
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse returning intent: %@", v13, 0xCu);
    sub_30B8(v14, &unk_34FC00, &unk_2D0150);
  }

  (*(v5 + 8))(v8, v4);
  return a2(v10, 0);
}

uint64_t DetermineFlowStrategy.deinit()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));
  return v0;
}

uint64_t DetermineFlowStrategy.__deallocating_deinit()
{
  sub_306C((v0 + 16));
  sub_306C((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_10B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return RCHFlowStrategy.makeAnnotatedIntentFromParse(parse:currentIntent:completion:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B30C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return RCHFlowStrategy.makeParameterMetadata(intent:)(a1, updated, a3);
}

uint64_t sub_10B35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppDoesNotSupportIntentResponse(app:intent:_:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return ResolveConfirmFlowStrategy.makeAppNotFoundOnDeviceResponse(app:intent:_:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return ResolveConfirmFlowStrategy.makeDeviceIncompatibleResponse(app:intent:_:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B4A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return RouteConfirmIntentResponseFlowStrategy.makeFailureConfirmingIntentResponse(app:intent:intentResponse:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_10B51C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentExtensionCommunicating.shouldIntentBeExecutedOnRemoteCompanion(intent:)(a1, updated, a3);
}

uint64_t sub_10B568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:)(a1, a2, updated, a4);
}

uint64_t sub_10B5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentExtensionCommunicating.makeIntentExecutionBehavior(app:intent:completion:)(a1, a2, a3, a4, updated, a6);
}

uint64_t sub_10B628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  updated = type metadata accessor for UpdateMediaAffinityFlowStrategy();

  return IntentErrorHandling.makeErrorResponse(app:intent:error:_:)(a1, a2, a3, a4, a5, updated, a7);
}

uint64_t sub_10B7F4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10B83C(char *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v148 = a3;
  v173 = a2;
  v176 = a1;
  v162 = sub_2CD4C0();
  v164 = *(v162 - 8);
  v7 = *(v164 + 64);
  __chkstk_darwin(v162);
  v146 = &v143 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v9 = *(*(v161 - 8) + 64);
  v10 = __chkstk_darwin(v161);
  v150 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v154 = &v143 - v12;
  v13 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v145 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v153 = &v143 - v18;
  v19 = __chkstk_darwin(v17);
  v149 = &v143 - v20;
  v21 = __chkstk_darwin(v19);
  v152 = &v143 - v22;
  v23 = __chkstk_darwin(v21);
  v168 = &v143 - v24;
  __chkstk_darwin(v23);
  v157 = &v143 - v25;
  v175 = sub_2CA870();
  v26 = *(v175 - 1);
  v27 = *(v26 + 8);
  v28 = __chkstk_darwin(v175);
  v169 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v165 = &v143 - v31;
  __chkstk_darwin(v30);
  v33 = &v143 - v32;
  v34 = sub_2CE000();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = __chkstk_darwin(v34);
  v166 = &v143 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v144 = &v143 - v40;
  v41 = __chkstk_darwin(v39);
  v151 = &v143 - v42;
  __chkstk_darwin(v41);
  v44 = &v143 - v43;
  v45 = swift_allocObject();
  *(v45 + 16) = a4;
  *(v45 + 24) = a5;
  v171 = v45;
  v46 = qword_34BF58;
  v47 = a4;

  v48 = a5;
  if (v46 != -1)
  {
    swift_once();
  }

  v49 = sub_3ED0(v34, static Logger.default);
  swift_beginAccess();
  v50 = v35[2];
  v160 = v49;
  v159 = v35 + 2;
  v158 = v50;
  v50(v44, v49, v34);
  v174 = v26;
  v170 = *(v26 + 2);
  v170(v33, v176, v175);
  v51 = v173;
  v167 = v44;
  v52 = sub_2CDFE0();
  v53 = sub_2CE670();
  v172 = v34;
  v54 = v53;

  v55 = os_log_type_enabled(v52, v54);
  v56 = v35;
  v163 = v48;
  v147 = v51;
  if (v55)
  {
    v57 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v179 = v143;
    *v57 = 136446722;
    v58 = sub_2CCCC0();
    v155 = v56;
    v60 = sub_3F08(v58, v59, &v179);
    v156 = v47;
    v61 = v60;

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v62 = v175;
    v170(v165, v33, v175);
    v63 = sub_2CE2A0();
    v65 = v64;
    v165 = *(v174 + 1);
    (v165)(v33, v62);
    v66 = sub_3F08(v63, v65, &v179);

    *(v57 + 14) = v66;
    *(v57 + 22) = 2080;
    v47 = v156;
    *&v177 = v173;
    v67 = v51;
    sub_20410(&qword_351320, &qword_2D4298);
    v68 = sub_2CE2A0();
    v70 = sub_3F08(v68, v69, &v179);
    v56 = v155;

    *(v57 + 24) = v70;
    _os_log_impl(&dword_0, v52, v54, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse %{public}s for parse:%s and previousIntent:%s", v57, 0x20u);
    swift_arrayDestroy();

    v71 = v163;

    v72 = v56[1];
    v72(v167, v172);
    v73 = v169;
  }

  else
  {

    v62 = v175;
    v165 = *(v174 + 1);
    (v165)(v33, v175);
    v72 = v35[1];
    v72(v167, v172);
    v73 = v169;
    v71 = v48;
  }

  v74 = v176;
  v170(v73, v176, v62);
  v75 = v174;
  v76 = (*(v174 + 11))(v73, v62);
  v77 = v168;
  if (v76 == enum case for Parse.NLv3IntentOnly(_:))
  {
LABEL_7:
    (v165)(v73, v62);
    sub_D2F98(v74, &v177);
    if (!v178)
    {
      sub_30B8(&v177, &qword_34CF98, &unk_2D1A40);
      v100 = v71;
      v101 = v172;
LABEL_30:
      v158(v166, v160, v101);
      v109 = sub_2CDFE0();
      v110 = sub_2CE680();
      if (os_log_type_enabled(v109, v110))
      {
        v111 = swift_slowAlloc();
        *v111 = 0;
        _os_log_impl(&dword_0, v109, v110, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentOnly parse", v111, 2u);
      }

      v72(v166, v101);
      v112 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v113 = swift_allocError();
      (*(*(v112 - 8) + 104))(v114, enum case for PlaybackCode.ceGE89(_:), v112);
      swift_beginAccess();
      v115 = *(v47 + 16);
      *(v47 + 16) = v113;
      v116 = *(v47 + 24);
      *(v47 + 24) = 1;
      sub_A4194(v115, v116);
      dispatch_group_leave(v100);
    }

    v174 = v72;
    v155 = v56;
    v156 = v47;
    sub_420A4(&v177, &v179);
    sub_35E0(&v179, v180);
    v78 = v157;
    sub_2CD840();
    v79 = v164;
    v80 = v162;
    v176 = *(v164 + 104);
    (v176)(v77, enum case for CommonAudio.Verb.like(_:), v162);
    v175 = *(v79 + 56);
    (v175)(v77, 0, 1, v80);
    v81 = *(v161 + 48);
    v82 = v154;
    sub_F7598(v78, v154);
    sub_F7598(v77, v82 + v81);
    v83 = *(v79 + 48);
    if (v83(v82, 1, v80) == 1)
    {
      sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v78, &qword_34D6B8, &qword_2D15B0);
      v84 = v83(v82 + v81, 1, v80);
      v85 = v173;
      if (v84 == 1)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v102 = v152;
      sub_F7598(v82, v152);
      if (v83(v82 + v81, 1, v80) != 1)
      {
        v117 = v164;
        v118 = v82 + v81;
        v119 = v146;
        (*(v164 + 32))(v146, v118, v80);
        sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
        LODWORD(v170) = sub_2CE250();
        v120 = *(v117 + 8);
        v120(v119, v80);
        sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
        v120(v152, v80);
        sub_30B8(v154, &qword_34D6B8, &qword_2D15B0);
        v85 = v173;
        if (v170)
        {
          goto LABEL_40;
        }

LABEL_22:
        sub_35E0(&v179, v180);
        v103 = v149;
        sub_2CD840();
        v104 = v153;
        v105 = v162;
        (v176)(v153, enum case for CommonAudio.Verb.unlike(_:), v162);
        (v175)(v104, 0, 1, v105);
        v106 = *(v161 + 48);
        v107 = v150;
        sub_F7598(v103, v150);
        sub_F7598(v104, v107 + v106);
        if (v83(v107, 1, v105) == 1)
        {
          sub_30B8(v104, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v103, &qword_34D6B8, &qword_2D15B0);
          if (v83(v107 + v106, 1, v105) == 1)
          {
            v82 = v107;
LABEL_25:
            sub_30B8(v82, &qword_34D6B8, &qword_2D15B0);
LABEL_40:
            v134 = v147;
            v135 = v147;
            if (!v85)
            {
              v135 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
            }

            v136 = v180;
            v137 = v181;
            v138 = sub_35E0(&v179, v180);
            v139 = swift_allocObject();
            v139[2] = v135;
            v139[3] = sub_A4188;
            v139[4] = v171;
            v140 = v134;
            v141 = v135;

            sub_113174(v138, (v148 + 16), v148 + 56, sub_10CD88, v139, v141, v136, v137);

            sub_306C(&v179);
          }
        }

        else
        {
          v108 = v145;
          sub_F7598(v107, v145);
          if (v83(v107 + v106, 1, v105) != 1)
          {
            v129 = v164;
            v130 = v107 + v106;
            v131 = v146;
            (*(v164 + 32))(v146, v130, v105);
            sub_10B7F4(&qword_34D708, 255, &type metadata accessor for CommonAudio.Verb);
            v132 = sub_2CE250();
            v133 = *(v129 + 8);
            v133(v131, v105);
            sub_30B8(v153, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v103, &qword_34D6B8, &qword_2D15B0);
            v133(v108, v105);
            sub_30B8(v107, &qword_34D6B8, &qword_2D15B0);
            if (v132)
            {
              goto LABEL_40;
            }

            goto LABEL_29;
          }

          sub_30B8(v153, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v103, &qword_34D6B8, &qword_2D15B0);
          (*(v164 + 8))(v108, v105);
        }

        sub_30B8(v107, &qword_34D6B0, &unk_2D4FC0);
LABEL_29:
        sub_306C(&v179);
        v47 = v156;
        v101 = v172;
        v100 = v163;
        v72 = v174;
        goto LABEL_30;
      }

      sub_30B8(v77, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v157, &qword_34D6B8, &qword_2D15B0);
      (*(v164 + 8))(v102, v80);
      v85 = v173;
    }

    sub_30B8(v82, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_22;
  }

  if (v76 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v75 + 12))(v73, v62);
    v86 = *&v73[*(sub_20410(&qword_353070, &unk_2D0FB0) + 48)];
    v87 = sub_2CA830();
    objc_opt_self();
    v88 = swift_dynamicCastObjCClass();
    if (v88)
    {
      v89 = v88;
      swift_beginAccess();
      v90 = *(v47 + 16);
      *(v47 + 16) = v89;
      v91 = *(v47 + 24);
      *(v47 + 24) = 0;
    }

    else
    {

      v121 = v144;
      v158(v144, v160, v172);
      v122 = sub_2CDFE0();
      v123 = sub_2CE670();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = swift_slowAlloc();
        *v124 = 0;
        _os_log_impl(&dword_0, v122, v123, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received unsupported NLv3IntentPlusServerConversion parse, ignoring", v124, 2u);
        v71 = v163;
      }

      v72(v121, v172);
      v125 = sub_2CB850();
      sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
      v126 = swift_allocError();
      (*(*(v125 - 8) + 104))(v127, enum case for PlaybackCode.ceGE88(_:), v125);
      swift_beginAccess();
      v90 = *(v47 + 16);
      *(v47 + 16) = v126;
      v91 = *(v47 + 24);
      *(v47 + 24) = 1;
    }

    sub_A4194(v90, v91);
    dispatch_group_leave(v71);

    v128 = sub_2CAFE0();
    (*(*(v128 - 8) + 8))(v73, v128);
  }

  else
  {
    v74 = v176;
    if (v76 == enum case for Parse.uso(_:))
    {
      goto LABEL_7;
    }

    v158(v151, v160, v172);
    v92 = sub_2CDFE0();
    v93 = sub_2CE680();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_0, v92, v93, "UpdateMediaAffinityFlowStrategy#makeIntentFromParse received non NLv3IntentPlusServerConversion or NLv3IntentOnly parse", v94, 2u);
    }

    v72(v151, v172);
    v95 = sub_2CB850();
    sub_10B7F4(&qword_34CCA8, 255, &type metadata accessor for PlaybackCode);
    v96 = swift_allocError();
    (*(*(v95 - 8) + 104))(v97, enum case for PlaybackCode.ceGE90(_:), v95);
    swift_beginAccess();
    v98 = *(v47 + 16);
    *(v47 + 16) = v96;
    v99 = *(v47 + 24);
    *(v47 + 24) = 1;
    sub_A4194(v98, v99);
    dispatch_group_leave(v71);
    (v165)(v73, v175);
  }
}

uint64_t sub_10CDDC()
{
  v1 = *(v0 + 16);

  sub_306C((v0 + 24));
  return v0;
}

uint64_t sub_10CE1C(uint64_t a1, uint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v55 = a2;
  v7 = sub_2CA920();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = *(v50 + 64);
  __chkstk_darwin(v7);
  v49 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE000();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v54 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v53 = &v45 - v16;
  __chkstk_darwin(v15);
  v18 = &v45 - v17;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v19 = sub_3ED0(v10, static Logger.default);
  swift_beginAccess();
  v52 = *(v11 + 16);
  v52(v18, v19, v10);

  v20 = v11;
  v21 = sub_2CDFE0();
  v22 = sub_2CE670();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v48 = a3;
    v24 = v23;
    v25 = swift_slowAlloc();
    v47 = a4;
    v26 = v25;
    v56 = a1;
    v57 = v25;
    *v24 = 136315138;
    sub_2CCFB0();
    sub_10D408();
    v46 = v20;
    v27 = sub_2CEE70();
    v29 = sub_3F08(v27, v28, &v57);

    *(v24 + 4) = v29;
    _os_log_impl(&dword_0, v21, v22, "CommonViewProvider#makeViewsForNeedsDisambiguation for app: %s", v24, 0xCu);
    sub_306C(v26);

    a3 = v48;

    v30 = *(v46 + 8);
    v30(v18, v10);
    if ((sub_2CB640() & 1) == 0)
    {
LABEL_5:
      v52(v53, v19, v10);
      v31 = sub_2CDFE0();
      v32 = sub_2CE670();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_0, v31, v32, "CommonViewProvider#makeViewsForNeedsDisambiguation Rending Phone disambiguation views", v33, 2u);
      }

      v30(v53, v10);
      sub_2C9940();
      sub_2CB5A0();
      v35 = v49;
      v34 = v50;
      v36 = v51;
      (*(v50 + 104))(v49, enum case for ImageSize.default(_:), v51);
      v37 = sub_2C99C0();

      (*(v34 + 8))(v35, v36);
      sub_2C98E0();
      sub_2C98D0();
      sub_2C98A0();

      v38 = sub_2C98C0();

      a3(v38, 0);
    }
  }

  else
  {

    v30 = *(v20 + 8);
    v30(v18, v10);
    if ((sub_2CB640() & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v52(v54, v19, v10);
  v39 = sub_2CDFE0();
  v40 = sub_2CE670();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_0, v39, v40, "CommonViewProvider#makeViewsForNeedsDisambiguation Rending CarPlay disambiguation views", v41, 2u);
  }

  v30(v54, v10);
  sub_20410(&unk_351900, &unk_2D0960);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_2D0770;
  sub_2C9940();
  sub_2CB5A0();
  v43 = sub_2C99B0();

  *(v42 + 32) = v43;
  a3(v42, 0);
}

unint64_t sub_10D408()
{
  result = qword_34C170;
  if (!qword_34C170)
  {
    sub_2CCFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_34C170);
  }

  return result;
}

uint64_t sub_10D460()
{
  v6 = sub_2CDE30();
  v7 = &protocol witness table for DeviceResolutionProvider;
  sub_F390(&v5);
  sub_2CDE20();
  v3 = sub_2CC710();
  v4 = &protocol witness table for SharedContextProvider;
  *&v2 = sub_2CC700();
  type metadata accessor for DetermineFlowStrategy();
  v0 = swift_allocObject();
  sub_F338(&v5, v0 + 16);
  result = sub_F338(&v2, v0 + 56);
  qword_35F728 = v0;
  return result;
}

uint64_t sub_10D500()
{
  result = sub_BC4F4();
  qword_35F730 = result;
  return result;
}

id sub_10D520()
{
  result = [objc_allocWithZone(type metadata accessor for DetermineIntentHandler()) init];
  static Determine.intentHandler = result;
  return result;
}

uint64_t *Determine.intentHandler.unsafeMutableAddressor()
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  return &static Determine.intentHandler;
}

id static Determine.intentHandler.getter()
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static Determine.intentHandler;

  return v0;
}

void static Determine.intentHandler.setter(uint64_t a1)
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static Determine.intentHandler;
  static Determine.intentHandler = a1;
}

uint64_t (*static Determine.intentHandler.modify())()
{
  if (qword_34BF80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_10D780(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v22 = a1;
  v5 = sub_2CE990();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2CE180();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2CC360();
  v35 = &protocol witness table for StringsFileResolver;
  sub_F390(&v33);
  sub_2CC350();
  v15 = sub_2CC2B0();
  v31 = v15;
  v32 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v30);
  sub_2CC2A0();
  v28 = v15;
  v29 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v27);
  sub_2CC2A0();
  v16 = type metadata accessor for SiriAudioOutputProvider();
  v17 = swift_allocObject();
  sub_F338(&v27, v17 + 16);
  v28 = v16;
  v29 = &off_337EB0;
  *&v27 = v17;
  sub_2C9A00();
  v24 = sub_2CB7A0();
  v25 = &protocol witness table for TCCProvider;
  sub_F390(&v23);
  sub_2CB790();
  sub_20410(a2, a3);
  v18 = swift_allocObject();
  sub_2CE170();
  sub_2CE980();
  v19 = sub_2CBA00();
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  *(v18 + 64) = v19;
  *(v18 + 16) = v22;
  sub_F338(&v33, v18 + 24);
  sub_F338(&v30, v18 + 72);
  sub_F338(&v27, v18 + 112);
  sub_F338(&v26, v18 + 152);
  sub_F338(&v23, v18 + 192);
  return v18;
}

uint64_t sub_10DA64()
{
  v0 = sub_2CC2B0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v5 = CATDefaultMode;
  v6 = sub_2CBC00();
  v7 = sub_2CBBF0();
  sub_2C9A00();
  sub_2CC2A0();
  type metadata accessor for CatService();
  v8 = swift_allocObject();
  v31[3] = &type metadata for StringsBackedAppNameResolver;
  v31[4] = sub_2869C();
  v31[0] = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v31[0] + 16);
  v30[3] = v6;
  v30[4] = &protocol witness table for MorphunProvider;
  v30[0] = v7;
  v29[3] = v0;
  v29[4] = &protocol witness table for FeatureFlagProvider;
  v9 = sub_F390(v29);
  (*(v1 + 16))(v9, v4, v0);
  *(v8 + 296) = v5;
  sub_EEAC(v29, v8 + 256);
  sub_EEAC(v31, v28);
  sub_EEAC(v30, v27);
  sub_EEAC(v32, v26);
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v10 = sub_2CCA30();

  v11 = sub_2CCA20();
  v23[3] = v10;
  v23[4] = &protocol witness table for MultiUserConnectionProvider;
  v23[0] = v11;
  v22[3] = sub_2CB9E0();
  v22[4] = &protocol witness table for DeviceProvider;
  sub_F390(v22);
  sub_2CB9C0();
  sub_EEAC(v28, v8 + 16);
  sub_EEAC(v27, v8 + 216);
  sub_EEAC(v26, v8 + 56);
  sub_EEAC(v23, v8 + 96);
  sub_EEAC(v22, v8 + 176);
  sub_286F0(v24, &v17);
  if (v18)
  {

    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    sub_F338(&v17, &v19);
  }

  else
  {
    sub_EEAC(v26, &v19);
    v12 = sub_2C9E60();
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_2C9E50();
    v20 = v12;
    v21 = &protocol witness table for ContactsManager;

    *&v19 = v15;
    sub_28760(v24);
    sub_306C(v26);
    sub_306C(v27);
    sub_306C(v28);
    (*(v1 + 8))(v4, v0);
    sub_306C(v32);
    sub_306C(v29);
    sub_306C(v30);
    sub_306C(v31);
    sub_306C(v22);
    sub_306C(v23);
    if (v18)
    {
      sub_28760(&v17);
    }
  }

  sub_F338(&v19, v8 + 136);
  return v8;
}

void *sub_10DE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_2CB4A0();
  v27 = v8;
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = a2;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v25[3] = v9;
  v25[4] = &off_337EB0;
  v25[0] = a3;
  _s11descr32D959O18NeedsValueStrategyCMa();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v25, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v16;
  type metadata accessor for SearchForMediaCatDialogService();
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000011;
  v17[3] = 0x80000000002DA8D0;
  v17[5] = 0xD000000000000014;
  v17[6] = 0x80000000002DCFE0;
  v17[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v24[3] = sub_2CC2B0();
  v24[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v24);
  sub_2CC2A0();
  v23[3] = sub_2CC360();
  v23[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v23);
  sub_2CC350();
  v18 = sub_2CB490();
  v22[3] = v8;
  v22[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v22[0] = v18;
  type metadata accessor for SearchForMediaDialogProvider();
  v19 = swift_allocObject();
  v19[15] = v17;
  sub_EEAC(v24, (v19 + 16));
  sub_EEAC(v22, (v19 + 21));
  sub_EEAC(v23, (v19 + 3));
  sub_EEAC(v22, (v19 + 8));
  sub_306C(a4);
  sub_306C(v22);
  sub_306C(v23);
  sub_306C(v24);
  v19[13] = 0xD000000000000011;
  v19[14] = 0x80000000002DA8D0;
  v19[2] = a1;
  v10[2] = v19;
  sub_F338(&v26, (v10 + 3));
  sub_306C(v25);
  return v10;
}

void *sub_10E10C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v27 = v8;
  v28 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v26 = a3;
  v9 = type metadata accessor for SiriAudioOutputProvider();
  v25[3] = v9;
  v25[4] = &off_337EB0;
  v25[0] = a4;
  type metadata accessor for SearchForMedia.UnsupportedValueStrategy();
  v10 = swift_allocObject();
  v11 = sub_F9A0(v25, v9);
  v12 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = (&v22[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = *v14;
  v10[11] = v9;
  v10[12] = &off_337EB0;
  v10[8] = v16;
  type metadata accessor for SearchForMediaCatDialogService();
  v17 = swift_allocObject();
  v17[2] = 0xD000000000000011;
  v17[3] = 0x80000000002DA8D0;
  v17[5] = 0xD000000000000014;
  v17[6] = 0x80000000002DCFE0;
  v17[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);

  v24[3] = sub_2CC2B0();
  v24[4] = &protocol witness table for FeatureFlagProvider;
  sub_F390(v24);
  sub_2CC2A0();
  v23[3] = sub_2CC360();
  v23[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v23);
  sub_2CC350();
  v18 = sub_2CB490();
  v22[3] = v8;
  v22[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v22[0] = v18;
  type metadata accessor for SearchForMediaDialogProvider();
  v19 = swift_allocObject();
  v19[15] = v17;
  sub_EEAC(v24, (v19 + 16));
  sub_EEAC(v22, (v19 + 21));
  sub_EEAC(v23, (v19 + 3));
  sub_EEAC(v22, (v19 + 8));
  sub_306C(a2);
  sub_306C(v22);
  sub_306C(v23);
  sub_306C(v24);
  v19[13] = 0xD000000000000011;
  v19[14] = 0x80000000002DA8D0;
  v19[2] = a1;
  v10[2] = v19;
  sub_F338(&v26, (v10 + 3));
  sub_306C(v25);
  return v10;
}

uint64_t sub_10E3A8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2CB4A0();
  v26[3] = v7;
  v26[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v26[0] = a3;
  type metadata accessor for SearchForMediaCatDialogService();
  v8 = swift_allocObject();
  v8[2] = 0xD000000000000011;
  v8[3] = 0x80000000002DA8D0;
  v8[5] = 0xD000000000000014;
  v8[6] = 0x80000000002DCFE0;
  v8[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v9 = sub_2CC2B0();
  v24 = v9;
  v25 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v23);
  sub_2CC2A0();
  v10 = sub_2CC360();
  v21 = v10;
  v22 = &protocol witness table for StringsFileResolver;
  sub_F390(&v20);
  sub_2CC350();
  v18 = v7;
  v19 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v17 = sub_2CB490();
  type metadata accessor for SearchForMediaDialogProvider();
  v11 = swift_allocObject();
  v11[15] = v8;
  sub_EEAC(&v23, (v11 + 16));
  sub_EEAC(&v17, (v11 + 21));
  sub_EEAC(&v20, v16);
  sub_F338(&v17, v15);
  sub_306C(&v20);
  sub_306C(&v23);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v16, (v11 + 3));
  sub_F338(v15, (v11 + 8));
  type metadata accessor for SearchForMediaViewProvider();
  v12 = swift_allocObject();
  sub_BBDC8(&v23);
  *(v12 + 16) = v11;
  sub_F338(&v23, v12 + 24);
  sub_EEAC(v26, &v23);
  v21 = v9;
  v22 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v20);

  sub_2CC2A0();
  v18 = v10;
  v19 = &protocol witness table for StringsFileResolver;
  sub_F390(&v17);
  sub_2CC350();
  *(a4 + 112) = &off_32FFC0;

  sub_306C(a2);
  sub_306C(v26);
  strcpy((a4 + 160), "MediaItemType");
  *(a4 + 174) = -4864;
  *(a4 + 16) = v12;
  *(a4 + 24) = v11;
  sub_F338(&v23, a4 + 32);
  sub_F338(&v20, a4 + 72);
  sub_F338(&v17, a4 + 120);
  return a4;
}

uint64_t sub_10E65C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2CB4A0();
  v28[3] = v8;
  v28[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v28[0] = a3;
  type metadata accessor for SearchForMediaCatDialogService();
  v9 = swift_allocObject();
  v9[2] = 0xD000000000000011;
  v9[3] = 0x80000000002DA8D0;
  v9[5] = 0xD000000000000014;
  v9[6] = 0x80000000002DCFE0;
  v9[4] = a1;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v10 = sub_2CC2B0();
  v26 = v10;
  v27 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v25);
  sub_2CC2A0();
  v23 = sub_2CC360();
  v24 = &protocol witness table for StringsFileResolver;
  sub_F390(&v22);
  sub_2CC350();
  v20 = v8;
  v21 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v19 = sub_2CB490();
  type metadata accessor for SearchForMediaDialogProvider();
  v11 = swift_allocObject();
  v11[15] = v9;
  sub_EEAC(&v25, (v11 + 16));
  sub_EEAC(&v19, (v11 + 21));
  sub_EEAC(&v22, v18);
  sub_F338(&v19, v17);
  sub_306C(&v22);
  sub_306C(&v25);
  v11[13] = 0xD000000000000011;
  v11[14] = 0x80000000002DA8D0;
  v11[2] = a1;
  sub_F338(v18, (v11 + 3));
  sub_F338(v17, (v11 + 8));
  sub_EEAC(v28, &v25);
  v23 = v10;
  v24 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v22);
  sub_2CC2A0();
  v12 = type metadata accessor for SiriAudioOutputProvider();
  v13 = swift_allocObject();
  sub_F338(&v22, v13 + 16);
  v23 = v12;
  v24 = &off_337EB0;

  *&v22 = v13;
  sub_306C(a2);
  sub_306C(v28);
  v14 = qword_3566B0;
  v15 = sub_2CA360();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  *(a4 + 16) = v11;
  sub_F338(&v25, a4 + 24);
  sub_F338(&v22, a4 + 64);
  return a4;
}

uint64_t sub_10E8F4()
{
  v0 = sub_2CC2B0();
  v109 = *(v0 - 8);
  v1 = *(v109 + 64);
  __chkstk_darwin(v0);
  v108 = &v94 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_2CC360();
  v105 = *(v95 - 8);
  v3 = *(v105 + 8);
  __chkstk_darwin(v95);
  v101 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_20410(&qword_351548, &qword_2D4538);
  v106 = *(v5 - 8);
  v6 = *(v106 + 64);
  v7 = __chkstk_darwin(v5);
  v104 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v94 - v9;
  sub_334A0(0, &qword_34CB98, INSearchForMediaIntent_ptr);
  v102 = sub_334A0(0, &qword_351550, INSearchForMediaIntentResponse_ptr);
  sub_2C9780();
  v11 = sub_10DA64();
  sub_2C9A00();
  v12 = sub_2CB4A0();
  v13 = sub_2CB490();
  _s11descr32D959O27NeedsDisambiguationStrategyCMa();
  v14 = swift_allocObject();
  v15 = sub_10E3A8(v11, &v142, v13, v14);

  *&v142 = v15;
  sub_10FE64(&qword_351558, _s11descr32D959O27NeedsDisambiguationStrategyCMa);
  sub_2C96A0();

  sub_2C9760();
  v16 = sub_10DA64();
  v17 = sub_2CB490();
  v143 = v0;
  v144 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v142);

  sub_2CC2A0();
  v18 = type metadata accessor for SiriAudioOutputProvider();
  v19 = swift_allocObject();
  sub_F338(&v142, v19 + 16);
  sub_2C9A00();
  v20 = sub_10DE70(v16, v17, v19, &v142);

  *&v142 = v20;
  _s11descr32D959O18NeedsValueStrategyCMa();
  sub_10FE64(&qword_351560, _s11descr32D959O18NeedsValueStrategyCMa);
  sub_2C9630();

  sub_2C96F0();
  v21 = sub_10DA64();
  sub_2C9A00();
  _s11descr32D959O25NeedsConfirmationStrategyCMa();
  swift_allocObject();
  v22 = sub_F4FE4(v21, &v142);

  *&v142 = v22;
  sub_10FE64(&qword_351568, _s11descr32D959O25NeedsConfirmationStrategyCMa);
  sub_2C9690();

  v111 = v5;
  sub_2C9750();
  v23 = sub_10DA64();
  sub_2C9A00();
  v24 = sub_2CB490();
  v25 = _s11descr32D959O21ConfirmIntentStrategyCMa();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  v28 = swift_allocObject();
  v29 = sub_10E65C(v23, &v142, v24, v28);

  *&v142 = v29;
  sub_10FE64(&qword_351570, _s11descr32D959O21ConfirmIntentStrategyCMa);
  sub_2C96C0();

  sub_2C9720();
  v30 = sub_10DA64();
  sub_2CC350();
  sub_2C9A00();
  v31 = sub_2CB490();
  v140 = v12;
  v141 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v139 = v31;
  v137 = v0;
  v138 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v136);
  sub_2CC2A0();
  v134 = v0;
  v135 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v133);
  sub_2CC2A0();
  v32 = swift_allocObject();
  sub_F338(&v133, v32 + 16);
  v134 = v18;
  v135 = &off_337EB0;
  *&v133 = v32;
  v100 = type metadata accessor for SearchForMedia.HandleIntentStrategy();
  v33 = swift_allocObject();
  v34 = sub_F9A0(&v133, v18);
  v35 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v34);
  v37 = (&v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v38 + 16))(v37);
  v39 = *v37;
  v131 = v18;
  v132 = &off_337EB0;
  v103 = v18;
  *&v130 = v39;
  v99 = type metadata accessor for SearchForMediaCatDialogService();
  v40 = swift_allocObject();
  v98 = 0x80000000002DCFE0;
  v40[2] = 0xD000000000000011;
  v40[3] = 0x80000000002DA8D0;
  v40[5] = 0xD000000000000014;
  v40[6] = 0x80000000002DCFE0;
  v40[4] = v30;
  v33[7] = v40;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  v107 = v0;
  v128 = v0;
  v129 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v127);
  sub_2CC2A0();
  v41 = v95;
  v126[3] = v95;
  v126[4] = &protocol witness table for StringsFileResolver;
  sub_F390(v126);
  sub_2CC350();
  v42 = sub_2CB490();
  *(&v124 + 1) = v12;
  v125 = &protocol witness table for SiriKitTaskLoggingProvider;
  v110 = v12;
  *&v123 = v42;
  v96 = type metadata accessor for SearchForMediaDialogProvider();
  v43 = swift_allocObject();
  v43[15] = v40;
  sub_EEAC(&v127, (v43 + 16));
  sub_EEAC(&v123, (v43 + 21));
  sub_EEAC(v126, &v120);
  sub_F338(&v123, &v117);
  sub_306C(v126);
  sub_306C(&v127);
  v43[13] = 0xD000000000000011;
  v43[14] = 0x80000000002DA8D0;
  v43[2] = v30;
  sub_F338(&v120, (v43 + 3));
  sub_F338(&v117, (v43 + 8));
  v33[24] = v43;
  v97 = type metadata accessor for SearchForMediaViewProvider();
  v44 = swift_allocObject();

  sub_BBDC8(&v127);

  (*(v105 + 1))(v101, v41);
  *(v44 + 16) = v43;
  sub_F338(&v127, v44 + 24);
  v33[23] = v44;
  sub_F338(&v142, (v33 + 2));
  sub_F338(&v139, (v33 + 8));
  sub_F338(&v136, (v33 + 13));
  sub_F338(&v130, (v33 + 18));
  sub_306C(&v133);
  *&v142 = v33;
  sub_10FE64(&qword_351578, type metadata accessor for SearchForMedia.HandleIntentStrategy);
  sub_2C9640();

  v105 = v10;
  sub_2C9700();
  if (qword_34BFB8 != -1)
  {
    swift_once();
  }

  v45 = CATDefaultMode;
  v46 = sub_2CBC00();
  v47 = sub_2CBBF0();
  sub_2C9A00();
  v48 = v108;
  sub_2CC2A0();
  type metadata accessor for CatService();
  v49 = swift_allocObject();
  v140 = &type metadata for StringsBackedAppNameResolver;
  v101 = sub_2869C();
  v141 = v101;
  *&v139 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v139 + 16);
  v137 = v46;
  v138 = &protocol witness table for MorphunProvider;
  v135 = &protocol witness table for FeatureFlagProvider;
  *&v136 = v47;
  v50 = v107;
  v134 = v107;
  v51 = sub_F390(&v133);
  (*(v109 + 16))(v51, v48, v50);
  *(v49 + 296) = v45;
  sub_EEAC(&v133, v49 + 256);
  sub_EEAC(&v139, &v130);
  sub_EEAC(&v136, &v127);
  sub_EEAC(&v142, v126);
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v52 = sub_2CCA30();

  v53 = sub_2CCA20();
  v121 = v52;
  v122 = &protocol witness table for MultiUserConnectionProvider;
  *&v120 = v53;
  v54 = sub_2CB9E0();
  v118 = v54;
  v119 = &protocol witness table for DeviceProvider;
  sub_F390(&v117);
  sub_2CB9C0();
  sub_EEAC(&v130, v49 + 16);
  sub_EEAC(&v127, v49 + 216);
  sub_EEAC(v126, v49 + 56);
  sub_EEAC(&v120, v49 + 96);
  sub_EEAC(&v117, v49 + 176);
  sub_286F0(&v123, &v112);
  if (v113)
  {

    sub_28760(&v123);
    sub_306C(v126);
    sub_306C(&v127);
    sub_306C(&v130);
    (*(v109 + 8))(v108, v50);
    sub_306C(&v142);
    sub_306C(&v133);
    sub_306C(&v136);
    sub_306C(&v139);
    sub_306C(&v117);
    sub_306C(&v120);
    sub_F338(&v112, &v114);
  }

  else
  {
    sub_EEAC(v126, &v114);
    v55 = v49;
    v56 = sub_2C9E60();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    v59 = sub_2C9E50();
    v115 = v56;
    v116 = &protocol witness table for ContactsManager;
    v49 = v55;

    *&v114 = v59;
    sub_28760(&v123);
    sub_306C(v126);
    sub_306C(&v127);
    sub_306C(&v130);
    (*(v109 + 8))(v108, v50);
    sub_306C(&v142);
    sub_306C(&v133);
    sub_306C(&v136);
    sub_306C(&v139);
    sub_306C(&v117);
    sub_306C(&v120);
    if (v113)
    {
      sub_28760(&v112);
    }
  }

  sub_F338(&v114, v49 + 136);
  v60 = swift_allocObject();
  v61 = v98;
  v60[2] = 0xD000000000000011;
  v60[3] = 0x80000000002DA8D0;
  v60[5] = 0xD000000000000014;
  v60[6] = v61;
  v60[4] = v49;
  sub_FA14(_swiftEmptyArrayStorage);
  swift_retain_n();

  sub_2C9A00();
  v140 = v50;
  v141 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v139);
  sub_2CC2A0();
  v137 = v41;
  v138 = &protocol witness table for StringsFileResolver;
  sub_F390(&v136);
  sub_2CC350();
  v62 = v110;
  v63 = sub_2CB490();
  v134 = v62;
  v135 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v133 = v63;
  v64 = swift_allocObject();
  v65 = v49;
  v100 = v49;
  v66 = v64;
  *(v64 + 120) = v60;
  sub_EEAC(&v139, v64 + 128);
  sub_EEAC(&v133, (v66 + 21));
  sub_EEAC(&v136, &v130);
  sub_EEAC(&v133, &v127);
  sub_306C(&v142);
  sub_306C(&v133);
  sub_306C(&v136);
  sub_306C(&v139);
  v66[13] = 0xD000000000000011;
  v66[14] = 0x80000000002DA8D0;
  v66[2] = v65;
  sub_F338(&v130, (v66 + 3));
  sub_F338(&v127, (v66 + 8));
  v67 = swift_allocObject();
  swift_retain_n();
  sub_BBDC8((v67 + 24));
  v68 = v101;
  v143 = &type metadata for StringsBackedAppNameResolver;
  v144 = v101;
  *&v142 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v142 + 16);
  v140 = v54;
  v141 = &protocol witness table for DeviceProvider;
  sub_F390(&v139);
  sub_2CB9C0();
  v137 = v50;
  v138 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v136);
  sub_2CC2A0();
  v134 = sub_2CC810();
  v135 = &protocol witness table for UserPreferenceProvider;
  sub_F390(&v133);
  sub_2CC800();
  v131 = sub_2CC590();
  v132 = &protocol witness table for InstalledAppProvider;
  sub_F390(&v130);
  sub_2CC580();
  v69 = sub_20410(&qword_3512B0, &qword_2D4250);
  v70 = *(v69 + 48);
  v71 = *(v69 + 52);
  v72 = swift_allocObject();
  v73 = class metadata base offset for CommonAppResolver;
  v74 = v72 + *(*v72 + class metadata base offset for CommonAppResolver + 8);
  strcpy(v74, "resolutionType");
  v74[15] = -18;
  sub_EEAC(&v142, v72 + *(*v72 + v73 + 16));
  sub_EEAC(&v139, v72 + *(*v72 + class metadata base offset for CommonAppResolver + 24));
  sub_EEAC(&v136, v72 + *(*v72 + class metadata base offset for CommonAppResolver + 32));
  sub_EEAC(&v133, v72 + *(*v72 + class metadata base offset for CommonAppResolver + 40));
  sub_EEAC(&v130, v72 + *(*v72 + class metadata base offset for CommonAppResolver + 48));
  v75 = sub_2CCF50();
  sub_306C(&v130);
  sub_306C(&v133);
  sub_306C(&v136);
  sub_306C(&v139);
  sub_306C(&v142);
  sub_2C9A00();
  v140 = &type metadata for StringsBackedAppNameResolver;
  v141 = v68;
  *&v139 = swift_allocObject();
  sub_285EC(&static StringsBackedAppNameResolver.shared, v139 + 16);
  v137 = v50;
  v138 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v136);
  sub_2CC2A0();
  v134 = v50;
  v135 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v133);
  sub_2CC2A0();
  v76 = v103;
  v77 = swift_allocObject();
  sub_F338(&v133, v77 + 16);
  v134 = v76;
  v135 = &off_337EB0;
  *&v133 = v77;
  swift_setDeallocating();
  sub_306C((v67 + 24));
  swift_deallocClassInstance();
  sub_20410(&qword_351580, &qword_2D4540);
  v78 = swift_allocObject();
  v78[26] = 0;
  v78[2] = v75;
  v78[3] = v66;
  v78[4] = sub_107D74;
  v78[5] = 0;
  sub_F338(&v142, (v78 + 6));
  sub_F338(&v139, (v78 + 11));
  sub_F338(&v136, (v78 + 16));
  sub_F338(&v133, (v78 + 21));
  *&v142 = v78;
  sub_72068(&qword_351588, &qword_351580, &qword_2D4540);
  sub_2C9660();

  v79 = v111;
  v80 = v105;
  sub_2C9710();
  *&v142 = sub_10D780(v66, &qword_351590, &qword_2D4548);
  sub_20410(&qword_351590, &qword_2D4548);
  sub_72068(&qword_351598, &qword_351590, &qword_2D4548);
  sub_2C96B0();

  sub_2C9770();
  v81 = sub_10DA64();
  sub_2C9A00();
  v82 = sub_2CB490();
  v83 = v107;
  v140 = v107;
  v141 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v139);

  sub_2CC2A0();
  v84 = swift_allocObject();
  sub_F338(&v139, v84 + 16);
  v85 = sub_10E10C(v81, &v142, v82, v84);

  *&v142 = v85;
  type metadata accessor for SearchForMedia.UnsupportedValueStrategy();
  sub_10FE64(&qword_3515A0, type metadata accessor for SearchForMedia.UnsupportedValueStrategy);
  sub_2C96D0();

  sub_2C9740();
  v143 = v83;
  v144 = &protocol witness table for FeatureFlagProvider;
  sub_F390(&v142);
  sub_2CC2A0();
  v86 = swift_allocObject();
  sub_F338(&v142, v86 + 16);
  v143 = v76;
  v144 = &off_337EB0;
  *&v142 = v86;
  sub_20410(&qword_3515A8, &qword_2D4550);
  v87 = swift_allocObject();
  v87[8] = 0xD000000000000025;
  v87[9] = 0x80000000002DA520;
  v87[10] = 0x7461447475706E69;
  v87[11] = 0xE900000000000061;
  v87[2] = v66;
  sub_F338(&v142, (v87 + 3));
  *&v142 = v87;
  sub_72068(&qword_3515B0, &qword_3515A8, &qword_2D4550);
  sub_2C9680();

  sub_2C9730();
  v88 = v106;
  (*(v106 + 16))(v104, v80, v79);
  v89 = sub_20410(&qword_3515B8, &qword_2D4558);
  v90 = *(v89 + 48);
  v91 = *(v89 + 52);
  swift_allocObject();
  v92 = sub_2C96E0();

  (*(v88 + 8))(v80, v79);
  return v92;
}

uint64_t sub_10FE64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10FEB4()
{
  v0 = sub_2CC360();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC350();
  v10 = v0;
  v11 = &protocol witness table for StringsFileResolver;
  v5 = sub_F390(&v9);
  (*(v1 + 32))(v5, v4, v0);
  type metadata accessor for ConfirmationViewProvider();
  v6 = swift_allocObject();
  result = sub_269C4(&v9, v6 + 16);
  qword_35F740 = v6;
  return result;
}

uint64_t sub_10FFB4(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v73 = a2;
  v74 = a1;
  *&v72 = sub_2C8EC0();
  v71 = *(v72 - 8);
  v4 = v71[8];
  __chkstk_darwin(v72);
  v6 = v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2CE000();
  v8 = *(v7 - 8);
  v9 = v8[8];
  v10 = __chkstk_darwin(v7);
  v68 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v13 = v62 - v12;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v14 = sub_3ED0(v7, static Logger.default);
  swift_beginAccess();
  v15 = v8[2];
  v65 = v14;
  v64 = v8 + 2;
  v63 = v15;
  v15(v13, v14, v7);
  v16 = sub_2CDFE0();
  v17 = sub_2CE670();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_0, v16, v17, "ConfirmationViewProvider#makeYesNoConfirmationViews Creating confirmation views", v18, 2u);
  }

  v19 = v8[1];
  v69 = v7;
  v67 = v8 + 1;
  v66 = v19;
  v19(v13, v7);
  v20 = v3[6];
  sub_35E0(v3 + 2, v3[5]);
  type metadata accessor for PlayMediaAlternativesViewProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = objc_opt_self();
  v23 = [v22 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v62[2] = sub_2CC620();
  v70 = v24;

  v25 = v71[1];
  v26 = v72;
  v25(v6, v72);
  v27 = v3[6];
  sub_35E0(v3 + 2, v3[5]);
  v28 = [v22 bundleForClass:ObjCClassFromMetadata];
  sub_2CB570();
  v29 = sub_2CC620();

  v25(v6, v26);
  v81 = 0;
  v82 = v76;
  v83 = v77;
  *v84 = *v78;
  *&v84[15] = *&v78[15];
  v85 = 2;
  v30 = sub_234C04();
  if (!v30)
  {
    goto LABEL_10;
  }

  v31 = v30;
  v79 = 1;
  v80 = 2;
  v32 = sub_234C04();
  if (!v32)
  {

LABEL_10:

    sub_CE5B0();
    swift_allocError();
    v74();
  }

  v33 = v32;
  sub_334A0(0, &qword_351698, SAUIConfirmationOption_ptr);
  sub_2CE270();
  v62[1] = v29;
  sub_2CE270();
  v34 = sub_20410(&unk_351900, &unk_2D0960);
  v35 = swift_allocObject();
  v72 = xmmword_2D0770;
  *(v35 + 16) = xmmword_2D0770;
  *(v35 + 32) = v31;
  v71 = v31;
  v36 = sub_2CEA60();
  sub_2CE270();
  sub_2CE270();
  v70 = v34;
  v37 = swift_allocObject();
  *(v37 + 16) = v72;
  *(v37 + 32) = v33;
  v38 = v33;
  v39 = sub_2CEA60();
  sub_334A0(0, &qword_3516A0, SAUIConfirmationView_ptr);
  v40 = v39;
  v41 = v36;
  v42 = sub_2CEA00();
  v43 = v68;
  v44 = v69;
  v63(v68, v65, v69);
  v45 = v42;
  v46 = sub_2CDFE0();
  v47 = sub_2CE690();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v65 = v40;
    v50 = v49;
    v75 = v49;
    *v48 = 136315138;
    v51 = [v45 debugDescription];
    v52 = sub_2CE270();
    v53 = v38;
    v55 = v54;

    v56 = sub_3F08(v52, v55, &v75);
    v38 = v53;

    *(v48 + 4) = v56;
    _os_log_impl(&dword_0, v46, v47, "ConfirmationViewProvider#makeYesNoConfirmationViews Created view: %s", v48, 0xCu);
    sub_306C(v50);
    v40 = v65;

    v57 = v68;
    v58 = v69;
  }

  else
  {

    v57 = v43;
    v58 = v44;
  }

  v66(v57, v58);
  v60 = swift_allocObject();
  *(v60 + 16) = v72;
  *(v60 + 32) = v45;
  v61 = v45;
  (v74)(v60, 0);
}

uint64_t sub_110834()
{
  sub_306C((v0 + 16));

  return swift_deallocClassInstance();
}

Swift::Int sub_110890()
{
  sub_2CEF50();
  sub_2CEF60(0);
  return sub_2CEF80();
}

Swift::Int sub_1108FC()
{
  sub_2CEF50();
  sub_2CEF60(0);
  return sub_2CEF80();
}

uint64_t sub_11093C(void (*a1)(void), uint64_t a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = sub_2CDFE0();
  v11 = sub_2CE670();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_0, v10, v11, "ConfirmationViewProvider#makePromptForConfirmationViews Creating yes/no confirmation views for intent", v12, 2u);
  }

  (*(v5 + 8))(v8, v4);
  return sub_10FFB4(a1, a2);
}

uint64_t getEnumTagSinglePayload for ConfirmationPromptCreationError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for ConfirmationPromptCreationError(_WORD *result, int a2, int a3)
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

unint64_t sub_110BF0()
{
  result = qword_3516A8;
  if (!qword_3516A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516A8);
  }

  return result;
}

uint64_t sub_110C44(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t), uint64_t a9, void *a10, void *a11, uint64_t a12, void *a13)
{
  v85 = a8;
  v86 = a9;
  v18 = sub_2CE000();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v25 = __chkstk_darwin(v24);
  v27 = &v78 - v26;
  __chkstk_darwin(v25);
  v30 = &v78 - v29;
  if (a4 && !a7)
  {
    v80 = v28;
    v82 = a12;
    v81 = a11;
    v83 = a10;

    v37 = sub_2CB650();
    v38 = sub_2CBD70();
    v84 = a5;
    if (v38 == a3 && v39 == a4)
    {

      if ((v37 & (a6 != 0)) == 0)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v40 = sub_2CEEA0();

      if ((v40 & v37 & 1) == 0)
      {
        goto LABEL_34;
      }

      a5 = v84;
      if (!a6)
      {
        goto LABEL_35;
      }
    }

    if (sub_2CBE10() == a5 && v41 == a6)
    {
      goto LABEL_16;
    }

    v42 = a5;
    v43 = sub_2CEEA0();

    if (v43)
    {
      goto LABEL_18;
    }

    if (sub_2CBDD0() == v42 && v54 == a6)
    {
LABEL_16:

LABEL_18:

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v44 = sub_3ED0(v18, static Logger.default);
      swift_beginAccess();
      (*(v19 + 16))(v30, v44, v18);

      v45 = sub_2CDFE0();
      v46 = sub_2CE690();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v79 = swift_slowAlloc();
        *&v88[0] = v79;
        *v47 = 136315394;
        v48 = v84;
        v49 = sub_3F08(v84, a6, v88);

        *(v47 + 4) = v49;
        *(v47 + 12) = 2080;
        v50 = sub_2CBE10();
        v52 = sub_3F08(v50, v51, v88);
        a5 = v48;

        *(v47 + 14) = v52;
        _os_log_impl(&dword_0, v45, v46, "UpdateMediaIntent#amend bundleId is AirPlay and representedBundleId is Apple Music: %s, replacing with music: %s", v47, 0x16u);
        swift_arrayDestroy();

        (*(v19 + 8))(v30, v18);
      }

      else
      {

        (*(v19 + 8))(v30, v18);
        a5 = v84;
      }

      a3 = sub_2CBE10();
      a4 = v53;
      goto LABEL_35;
    }

    v55 = sub_2CEEA0();

    if (v55)
    {
      goto LABEL_18;
    }

    v56 = v83[4];
    sub_35E0(v83, v83[3]);
    if (sub_2CC410())
    {

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v57 = sub_3ED0(v18, static Logger.default);
      swift_beginAccess();
      (*(v19 + 16))(v27, v57, v18);

      v58 = sub_2CDFE0();
      v59 = sub_2CE690();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v88[0] = v61;
        *v60 = 136315138;
        v62 = v84;
        *(v60 + 4) = sub_3F08(v84, a6, v88);
        _os_log_impl(&dword_0, v58, v59, "UpdateMediaIntent#amend bundleId is AirPlay, replacing bundleId with representedBundleId %s and may attempt to execute on the device of the requesting user", v60, 0xCu);
        sub_306C(v61);

        a5 = v62;

        (*(v19 + 8))(v27, v18);
        a3 = v62;
      }

      else
      {

        (*(v19 + 8))(v27, v18);
        a5 = v84;
        a3 = v84;
      }

      a4 = a6;
LABEL_35:
      if (a3 == sub_2CBDE0() && a4 == v63)
      {

        if (!a6)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v64 = sub_2CEEA0();

        if ((v64 & 1) == 0)
        {
          goto LABEL_50;
        }

        a5 = v84;
        if (!a6)
        {
          goto LABEL_50;
        }
      }

      if (sub_2CBE40() == a5 && v65 == a6)
      {
      }

      else
      {
        v66 = sub_2CEEA0();

        if ((v66 & 1) == 0)
        {
LABEL_50:
          v74 = v81[4];
          sub_35E0(v81, v81[3]);
          sub_EEAC(v83, v88);
          sub_EEAC(v82, v87);
          v75 = swift_allocObject();
          v76 = v86;
          v75[2] = v85;
          v75[3] = v76;
          sub_F338(v88, (v75 + 4));
          sub_F338(v87, (v75 + 9));
          v75[14] = a13;
          v75[15] = a3;
          v75[16] = a4;

          v77 = a13;
          sub_2CC300();
        }
      }

      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v67 = sub_3ED0(v18, static Logger.default);
      swift_beginAccess();
      v68 = v80;
      (*(v19 + 16))(v80, v67, v18);

      v69 = sub_2CDFE0();
      v70 = sub_2CE690();

      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        *&v88[0] = v72;
        *v71 = 136315138;
        *(v71 + 4) = sub_3F08(v84, a6, v88);
        _os_log_impl(&dword_0, v69, v70, "UpdateMediaIntent#amend bundleId is remote player service and representedBundleId is Classical: %s, setting bundle id to Classical", v71, 0xCu);
        sub_306C(v72);
      }

      (*(v19 + 8))(v68, v18);
      a3 = sub_2CBE40();
      a4 = v73;
      goto LABEL_50;
    }

LABEL_34:
    a5 = v84;
    goto LABEL_35;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v31 = sub_3ED0(v18, static Logger.default);
  swift_beginAccess();
  (*(v19 + 16))(v23, v31, v18);
  v32 = sub_2CDFE0();
  v33 = sub_2CE680();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_0, v32, v33, "UpdateMediaIntent#amend failed to get bundleId for now playing app", v34, 2u);
  }

  v35 = (*(v19 + 8))(v23, v18);
  return v85(v35);
}

uint64_t sub_111654(char *a1, void (*a2)(void), uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7, unint64_t a8)
{
  v127 = a7;
  v128 = a8;
  v129 = a6;
  v130 = a1;
  v118 = a5;
  v125 = a4;
  v131 = a3;
  v132 = a2;
  v8 = sub_2CD540();
  v9 = *(v8 - 8);
  v122 = v8;
  v123 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v112 = &v104[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = sub_20410(&qword_34D6A8, &unk_2D15A0);
  v12 = *(*(v121 - 8) + 64);
  v13 = __chkstk_darwin(v121);
  v116 = &v104[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v13);
  v126 = &v104[-v15];
  v16 = sub_20410(&qword_34D6D0, qword_2D34A0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v114 = &v104[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v18);
  v111 = &v104[-v21];
  v22 = __chkstk_darwin(v20);
  v117 = &v104[-v23];
  v24 = __chkstk_darwin(v22);
  v115 = &v104[-v25];
  v26 = __chkstk_darwin(v24);
  v113 = &v104[-v27];
  v28 = __chkstk_darwin(v26);
  v119 = &v104[-v29];
  __chkstk_darwin(v28);
  v120 = &v104[-v30];
  v31 = sub_2CE000();
  v124 = *(v31 - 8);
  v32 = *(v124 + 64);
  __chkstk_darwin(v31);
  v34 = &v104[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35);
  v38 = &v104[-v37];
  v39 = sub_2CBAF0();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v44 = &v104[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v42);
  v46 = &v104[-v45];
  sub_F3F4(v130, v38, &qword_34FF00, &qword_2D3EB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_30B8(v38, &qword_34FF00, &qword_2D3EB0);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v47 = sub_3ED0(v31, static Logger.default);
    swift_beginAccess();
    v48 = v124;
    (*(v124 + 16))(v34, v47, v31);
    v49 = sub_2CDFE0();
    v50 = sub_2CE680();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_0, v49, v50, "UpdateMediaIntent#amend failed to get now playing info", v51, 2u);
    }

    v52 = (*(v48 + 8))(v34, v31);
    return (v132)(v52);
  }

  (*(v40 + 32))(v46, v38, v39);
  v124 = v40;
  v54 = *(v40 + 16);
  v110 = v46;
  v54(v44, v46, v39);
  v55 = type metadata accessor for NowPlayingIntent();
  v56 = *(v55 + 48);
  v57 = *(v55 + 52);
  swift_allocObject();
  v130 = sub_D4274(v44);
  v58 = v125[4];
  sub_35E0(v125, v125[3]);
  if (sub_2CC4A0())
  {
    v108 = v39;
    v59 = v118[3];
    v60 = v118[4];
    v61 = sub_35E0(v118, v59);
    v62 = v120;
    v109 = v61;
    v125 = v59;
    v118 = v60;
    sub_2CD8D0();
    v63 = v122;
    v64 = v123;
    v65 = v119;
    v107 = *(v123 + 104);
    v107(v119, enum case for CommonAudio.MediaType.artist(_:), v122);
    v106 = *(v64 + 56);
    v106(v65, 0, 1, v63);
    v66 = *(v121 + 48);
    v67 = v126;
    sub_F3F4(v62, v126, &qword_34D6D0, qword_2D34A0);
    v68 = v67;
    sub_F3F4(v65, &v67[v66], &qword_34D6D0, qword_2D34A0);
    v69 = *(v64 + 48);
    if (v69(v68, 1, v63) == 1)
    {
      sub_30B8(v65, &qword_34D6D0, qword_2D34A0);
      v70 = v126;
      sub_30B8(v62, &qword_34D6D0, qword_2D34A0);
      v71 = v69(&v70[v66], 1, v63);
      v39 = v108;
      if (v71 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v72 = v113;
      sub_F3F4(v68, v113, &qword_34D6D0, qword_2D34A0);
      if (v69((v68 + v66), 1, v63) != 1)
      {
        v79 = v123;
        v80 = v68 + v66;
        v81 = v112;
        (*(v123 + 32))(v112, v80, v63);
        sub_1137D8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
        v105 = sub_2CE250();
        v82 = *(v79 + 8);
        v82(v81, v63);
        sub_30B8(v119, &qword_34D6D0, qword_2D34A0);
        sub_30B8(v120, &qword_34D6D0, qword_2D34A0);
        v82(v72, v63);
        v39 = v108;
        sub_30B8(v126, &qword_34D6D0, qword_2D34A0);
        if (v105)
        {
          goto LABEL_24;
        }

LABEL_14:
        v73 = v115;
        sub_2CD8D0();
        v74 = v117;
        v75 = v122;
        v107(v117, enum case for CommonAudio.MediaType.album(_:), v122);
        v106(v74, 0, 1, v75);
        v76 = *(v121 + 48);
        v77 = v116;
        sub_F3F4(v73, v116, &qword_34D6D0, qword_2D34A0);
        sub_F3F4(v74, &v77[v76], &qword_34D6D0, qword_2D34A0);
        if (v69(v77, 1, v75) == 1)
        {
          sub_30B8(v74, &qword_34D6D0, qword_2D34A0);
          sub_30B8(v73, &qword_34D6D0, qword_2D34A0);
          if (v69(&v77[v76], 1, v75) == 1)
          {
            v70 = v77;
LABEL_17:
            sub_30B8(v70, &qword_34D6D0, qword_2D34A0);
LABEL_24:
            v88 = v114;
            sub_2CD8D0();
            v89 = OBJC_IVAR____TtC23AudioFlowDelegatePlugin16NowPlayingIntent_mediaType;
            v90 = v130;
            swift_beginAccess();
            sub_6FC1C(v88, &v90[v89]);
            swift_endAccess();
            goto LABEL_25;
          }
        }

        else
        {
          v78 = v111;
          sub_F3F4(v77, v111, &qword_34D6D0, qword_2D34A0);
          if (v69(&v77[v76], 1, v75) != 1)
          {
            v83 = v123;
            v84 = &v77[v76];
            v85 = v112;
            (*(v123 + 32))(v112, v84, v75);
            sub_1137D8(&qword_34D388, &type metadata accessor for CommonAudio.MediaType);
            v86 = sub_2CE250();
            v87 = *(v83 + 8);
            v87(v85, v75);
            sub_30B8(v117, &qword_34D6D0, qword_2D34A0);
            sub_30B8(v73, &qword_34D6D0, qword_2D34A0);
            v87(v78, v75);
            sub_30B8(v77, &qword_34D6D0, qword_2D34A0);
            if ((v86 & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_24;
          }

          sub_30B8(v117, &qword_34D6D0, qword_2D34A0);
          sub_30B8(v73, &qword_34D6D0, qword_2D34A0);
          (*(v123 + 8))(v78, v75);
        }

        sub_30B8(v77, &qword_34D6A8, &unk_2D15A0);
        goto LABEL_25;
      }

      sub_30B8(v119, &qword_34D6D0, qword_2D34A0);
      v70 = v126;
      sub_30B8(v120, &qword_34D6D0, qword_2D34A0);
      (*(v123 + 8))(v72, v63);
      v39 = v108;
    }

    sub_30B8(v70, &qword_34D6A8, &unk_2D15A0);
    goto LABEL_14;
  }

LABEL_25:

  v92 = sub_691B0(v91, 0, 0);

  objc_opt_self();
  v93 = v129;
  if (!swift_dynamicCastObjCClass())
  {
    objc_opt_self();
    v96 = swift_dynamicCastObjCClass();
    v94 = [v93 backingStore];
    if (v96)
    {
      objc_opt_self();
      v95 = swift_dynamicCastObjCClass();
      if (!v95)
      {
        v97 = v92;
        v92 = v94;
        goto LABEL_36;
      }
    }

    else
    {
      objc_opt_self();
      v95 = swift_dynamicCastObjCClass();
      if (!v95)
      {
        v97 = v92;
        v92 = v94;
        goto LABEL_36;
      }
    }

    goto LABEL_33;
  }

  v94 = [v93 backingStore];
  objc_opt_self();
  v95 = swift_dynamicCastObjCClass();
  if (v95)
  {
LABEL_33:
    v98 = v95;
    v97 = INIntentSlotValueTransformToMediaSearch();
    [v98 setMediaSearch:v97];

    goto LABEL_36;
  }

  v97 = v92;
  v92 = v94;
LABEL_36:
  v99 = v124;

  v100 = sub_230B38(v127, v128, 0, 0);
  v101 = [v93 backingStore];
  objc_opt_self();
  v102 = swift_dynamicCastObjCClass();
  v103 = v110;
  if (!v102)
  {
  }

  [v102 setIntentMetadata:v100];

  v132();

  return (*(v99 + 8))(v103, v39);
}

uint64_t INUpdateMediaAffinityIntent.toServerConversionParse()@<X0>(uint64_t a1@<X8>)
{
  v89 = a1;
  v90 = sub_2CA870();
  v88 = *(v90 - 8);
  v1 = *(v88 + 64);
  v2 = __chkstk_darwin(v90);
  v87 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v86 = &v78 - v4;
  v91 = sub_2CE000();
  v97 = *(v91 - 8);
  v5 = *(v97 + 64);
  v6 = __chkstk_darwin(v91);
  v96 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v93 = &v78 - v8;
  v83 = sub_2C9900();
  v82 = *(v83 - 1);
  v9 = v82[8];
  __chkstk_darwin(v83);
  v81 = &v78 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34D658, &qword_2D1530);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v80 = &v78 - v13;
  v14 = sub_20410(&qword_34D660, &qword_2D1538);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v79 = &v78 - v16;
  v17 = sub_20410(&qword_34D668, &qword_2D1540);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v78 - v19;
  v21 = sub_2CAFE0();
  v94 = *(v21 - 8);
  v95 = v21;
  v22 = *(v94 + 64);
  v23 = __chkstk_darwin(v21);
  v92 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v26 = &v78 - v25;
  sub_20410(&qword_34D670, &qword_2D1548);
  v27 = swift_allocObject();
  v98 = xmmword_2D0090;
  *(v27 + 16) = xmmword_2D0090;
  v28 = swift_allocObject();
  *(v28 + 16) = v98;
  v29 = swift_allocObject();
  *(v29 + 16) = v98;
  v30 = swift_allocObject();
  *(v30 + 16) = v98;
  v31 = swift_allocObject();
  *(v31 + 16) = v98;
  sub_2CABB0();
  v32 = enum case for TerminalElement.Value.semantic(_:);
  v33 = sub_2CABD0();
  v34 = *(v33 - 8);
  (*(v34 + 104))(v20, v32, v33);
  (*(v34 + 56))(v20, 0, 1, v33);
  *(v31 + 56) = sub_2CAC70();
  *(v31 + 64) = &protocol witness table for TerminalIntentNode;
  sub_F390((v31 + 32));
  sub_2CAC50();
  v35 = sub_2CACD0();
  *(v30 + 56) = v35;
  *(v30 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v30 + 32));
  sub_2CACC0();
  *(v29 + 56) = v35;
  *(v29 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v29 + 32));
  sub_2CACC0();
  *(v28 + 56) = v35;
  *(v28 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v28 + 32));
  sub_2CACC0();
  *(v27 + 56) = v35;
  *(v27 + 64) = &protocol witness table for NonTerminalIntentNode;
  sub_F390((v27 + 32));
  sub_2CACC0();
  v101 = v35;
  v102 = &protocol witness table for NonTerminalIntentNode;
  sub_F390(v100);
  sub_2CACC0();
  v36 = sub_2CAFB0();
  (*(*(v36 - 8) + 56))(v79, 1, 1, v36);
  v37 = sub_2CACE0();
  (*(*(v37 - 8) + 56))(v80, 1, 1, v37);
  sub_2CAFD0();
  (v82[13])(v81, enum case for SiriKitConfirmationState.unset(_:), v83);
  v101 = sub_2CCFE0();
  v102 = &protocol witness table for AppResolutionStateProvider;
  sub_F390(v100);
  sub_2CCFD0();
  v38 = sub_2CA860();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v82 = v84;
  *&v98 = sub_2CA820();
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v41 = v91;
  v42 = sub_3ED0(v91, static Logger.default);
  swift_beginAccess();
  v43 = v97;
  v81 = *(v97 + 16);
  (v81)(v93, v42, v41);
  v45 = v94;
  v44 = v95;
  v46 = *(v94 + 16);
  v84 = (v94 + 16);
  v83 = v46;
  v46(v92, v26, v95);
  v47 = sub_2CDFE0();
  v48 = sub_2CE670();
  v49 = os_log_type_enabled(v47, v48);
  v50 = v43;
  v51 = v44;
  v52 = v45;
  v85 = v26;
  if (v49)
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v99 = v54;
    *v53 = 136315138;
    sub_1137D8(&qword_34D678, &type metadata accessor for NLIntent);
    v55 = v92;
    v56 = sub_2CEE70();
    v57 = v51;
    v59 = v58;
    v60 = *(v52 + 8);
    v60(v55, v57);
    v61 = sub_3F08(v56, v59, &v99);

    *(v53 + 4) = v61;
    _os_log_impl(&dword_0, v47, v48, "INUpdateMediaAffinityIntent#toServerConversionParse nlIntent:%s", v53, 0xCu);
    sub_306C(v54);
    v41 = v91;

    v62 = v97;
  }

  else
  {

    v60 = *(v45 + 8);
    v60(v92, v51);
    v62 = v50;
  }

  v63 = *(v62 + 8);
  v63(v93, v41);
  (v81)(v96, v42, v41);
  v64 = v82;
  v65 = sub_2CDFE0();
  v66 = sub_2CE670();

  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    v68 = v41;
    v69 = swift_slowAlloc();
    *v67 = 138412290;
    *(v67 + 4) = v64;
    *v69 = v64;
    v70 = v64;
    _os_log_impl(&dword_0, v65, v66, "INUpdateMediaAffinityIntent#toServerConversionParse sirikitIntent:%@", v67, 0xCu);
    sub_30B8(v69, &unk_34FC00, &unk_2D0150);
    v41 = v68;
  }

  v63(v96, v41);
  v71 = *(sub_20410(&qword_353070, &unk_2D0FB0) + 48);
  v72 = v86;
  v73 = v85;
  v74 = v95;
  v83(v86, v85, v95);
  *&v72[v71] = v98;
  v75 = v88;
  v76 = v90;
  (*(v88 + 104))(v72, enum case for Parse.NLv3IntentPlusServerConversion(_:), v90);
  (*(v75 + 16))(v87, v72, v76);
  sub_2CA7A0();
  (*(v75 + 8))(v72, v76);
  return (v60)(v73, v74);
}

uint64_t sub_113174(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v52 = a6;
  v51 = a5;
  v50 = a4;
  v48 = a3;
  v49 = a2;
  v46 = a1;
  v10 = sub_2CD4C0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v45 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v18 = &v44 - v17;
  v19 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v47 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v25 = &v44 - v24;
  __chkstk_darwin(v23);
  v27 = &v44 - v26;
  v56[3] = a7;
  v56[4] = a8;
  sub_F390(v56);
  (*(*(a7 - 8) + 16))();
  sub_2CD840();
  (*(v11 + 104))(v25, enum case for CommonAudio.Verb.like(_:), v10);
  (*(v11 + 56))(v25, 0, 1, v10);
  v28 = *(v15 + 56);
  sub_F3F4(v27, v18, &qword_34D6B8, &qword_2D15B0);
  sub_F3F4(v25, &v18[v28], &qword_34D6B8, &qword_2D15B0);
  v29 = *(v11 + 48);
  if (v29(v18, 1, v10) == 1)
  {
    sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v27, &qword_34D6B8, &qword_2D15B0);
    v30 = v29(&v18[v28], 1, v10);
    v31 = v52;
    if (v30 == 1)
    {
      sub_30B8(v18, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_F3F4(v18, v47, &qword_34D6B8, &qword_2D15B0);
  if (v29(&v18[v28], 1, v10) == 1)
  {
    sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v27, &qword_34D6B8, &qword_2D15B0);
    (*(v11 + 8))(v47, v10);
    v31 = v52;
LABEL_6:
    sub_30B8(v18, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_8;
  }

  v32 = &v18[v28];
  v33 = v45;
  (*(v11 + 32))(v45, v32, v10);
  sub_1137D8(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v34 = v47;
  sub_2CE250();
  v35 = *(v11 + 8);
  v35(v33, v10);
  sub_30B8(v25, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v27, &qword_34D6B8, &qword_2D15B0);
  v35(v34, v10);
  sub_30B8(v18, &qword_34D6B8, &qword_2D15B0);
  v31 = v52;
LABEL_8:
  v36 = [v31 backingStore];
  objc_opt_self();
  v37 = swift_dynamicCastObjCClass();
  if (v37)
  {
    [v37 setAffinityType:INMediaAffinityTypeGetBackingType()];
  }

  v38 = v49;
  v39 = v49[4];
  sub_35E0(v49, v49[3]);
  sub_EEAC(v48, v55);
  sub_EEAC(v38, v54);
  sub_EEAC(v56, v53);
  v40 = swift_allocObject();
  v41 = v51;
  v40[2] = v50;
  v40[3] = v41;
  sub_F338(v55, (v40 + 4));
  sub_F338(v54, (v40 + 9));
  sub_F338(v53, (v40 + 14));
  v40[19] = v31;

  v42 = v31;
  sub_2CC2F0();

  return sub_306C(v56);
}

uint64_t sub_1137D8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_113820(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 6647407;
  }

  else
  {
    v4 = 1936287860;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 6647407;
  }

  else
  {
    v6 = 1936287860;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2CEEA0();
  }

  return v9 & 1;
}

Swift::Int sub_1138B8()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_11392C()
{
  *v0;
  sub_2CE310();
}

Swift::Int sub_11398C()
{
  v1 = *v0;
  sub_2CEF50();
  sub_2CE310();

  return sub_2CEF80();
}

uint64_t sub_1139FC@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v8._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_32FFF0;
  v8._object = v3;
  v5 = sub_2CEDF0(v4, v8);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

void sub_113A5C(uint64_t *a1@<X8>)
{
  v2 = 1936287860;
  if (*v1)
  {
    v2 = 6647407;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t getEnumTagSinglePayload for MediaPlayerReference(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MediaPlayerReference(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_113BEC()
{
  result = qword_3516B0;
  if (!qword_3516B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516B0);
  }

  return result;
}

uint64_t sub_113C50(uint64_t a1, uint64_t a2)
{
  v4 = sub_113DDC();
  v5 = sub_113E30();
  v6 = sub_113E84();

  return static TerminalNodeBoundedSemanticValue<>.fromIntentNodeValue(_:)(a1, a2, v4, v5, v6);
}

unint64_t sub_113CC8()
{
  result = qword_3516B8;
  if (!qword_3516B8)
  {
    sub_2DB30(&qword_3516C0, &qword_2D4738);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516B8);
  }

  return result;
}

unint64_t sub_113D30()
{
  result = qword_3516C8;
  if (!qword_3516C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516C8);
  }

  return result;
}

unint64_t sub_113D88()
{
  result = qword_3516D0;
  if (!qword_3516D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516D0);
  }

  return result;
}

unint64_t sub_113DDC()
{
  result = qword_3516D8;
  if (!qword_3516D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516D8);
  }

  return result;
}

unint64_t sub_113E30()
{
  result = qword_3516E0;
  if (!qword_3516E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516E0);
  }

  return result;
}

unint64_t sub_113E84()
{
  result = qword_3516E8;
  if (!qword_3516E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_3516E8);
  }

  return result;
}

id DetermineIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DetermineIntentHandler.init()()
{
  v0 = sub_2CC040();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CC030();
  v5 = sub_2CB4A0();
  v6 = sub_2CB490();
  v14[3] = v0;
  v14[4] = &protocol witness table for NowPlayingProvider;
  v7 = sub_F390(v14);
  (*(v1 + 16))(v7, v4, v0);
  v13[3] = v5;
  v13[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v13[0] = v6;
  v8 = type metadata accessor for DetermineIntentHandler();
  v9 = objc_allocWithZone(v8);
  sub_EEAC(v14, v9 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider);
  sub_EEAC(v13, v9 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider);
  v12.receiver = v9;
  v12.super_class = v8;
  v10 = objc_msgSendSuper2(&v12, "init");
  (*(v1 + 8))(v4, v0);
  sub_306C(v13);
  sub_306C(v14);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t DetermineIntentHandler.resolveNowPlayingIntentInfo(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v60 = a2;
  v4 = sub_2CB980();
  v5 = *(v4 - 8);
  v64 = v4;
  v65 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v58 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = __chkstk_darwin(v8);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v54 - v14;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v16 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  v55 = v9[2];
  v56 = v16;
  v55(v15, v16, v8);
  v17 = sub_2CDFE0();
  v18 = sub_2CE670();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "DetermineIntentHandler#resolveNowPlayingIntentInfo Reached logic", v19, 2u);
  }

  v57 = v9[1];
  v57(v15, v8);
  v59 = swift_allocBox();
  v20 = *(v65 + 104);
  v63 = v21;
  v20();
  if ([a1 queueLocation] == &dword_0 + 2)
  {
    v22 = v8;
    v23 = a1;
    v24 = v13;
    v25 = &enum case for QueuePosition.next(_:);
  }

  else
  {
    if ([a1 queueLocation] != &dword_0 + 3)
    {
      goto LABEL_10;
    }

    v22 = v8;
    v23 = a1;
    v24 = v13;
    v25 = &enum case for QueuePosition.previous(_:);
  }

  v26 = v64;
  v27 = v63;
  (*(v65 + 8))(v63, v64);
  (v20)(v27, *v25, v26);
  v13 = v24;
  a1 = v23;
  v8 = v22;
LABEL_10:
  v28 = [a1 targetDeviceIds];
  if (!v28)
  {
LABEL_16:
    v47 = v61;
    v48 = *&v61[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 32];
    sub_35E0(&v61[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider], *&v61[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 24]);
    v49 = swift_allocObject();
    v51 = v59;
    v50 = v60;
    v49[2] = v47;
    v49[3] = v50;
    v49[4] = v62;
    v49[5] = v51;
    v52 = v47;

    sub_2CC2F0();
    goto LABEL_17;
  }

  v29 = v28;
  v30 = sub_2CE410();

  if (!*(v30 + 16))
  {

    goto LABEL_16;
  }

  v55(v13, v56, v8);

  v31 = sub_2CDFE0();
  v32 = sub_2CE670();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v66 = v34;
    *v33 = 136315138;
    v35 = sub_2CE420();
    v37 = sub_3F08(v35, v36, &v66);

    *(v33 + 4) = v37;
    _os_log_impl(&dword_0, v31, v32, "DetermineIntentHandler#resolveNowPlayingIntentInfo targetDeviceIds present: %s", v33, 0xCu);
    sub_306C(v34);
  }

  v57(v13, v8);
  v38 = swift_allocObject();
  *(v38 + 16) = _swiftEmptyArrayStorage;
  v39 = v61;
  v40 = *&v61[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 24];
  v57 = *&v61[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 32];
  sub_35E0(&v61[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider], v40);
  v42 = v64;
  v41 = v65;
  v43 = v58;
  (*(v65 + 16))(v58, v63, v64);
  v44 = swift_allocObject();
  v44[2] = v39;
  v44[3] = v38;
  v45 = v62;
  v44[4] = v60;
  v44[5] = v45;
  v46 = v39;

  sub_2CC320();

  (*(v41 + 8))(v43, v42);
LABEL_17:
}

uint64_t sub_114728(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5)
{
  v123 = a5;
  v124 = a4;
  v181 = a2;
  v182 = a3;
  v141 = sub_2CCB20();
  v180 = *(v141 - 8);
  v6 = *(v180 + 64);
  __chkstk_darwin(v141);
  v140 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2CBAF0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v143 = &v123 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v139 = &v123 - v14;
  __chkstk_darwin(v13);
  v178 = &v123 - v15;
  v16 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v176 = &v123 - v18;
  v19 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v175 = &v123 - v21;
  v22 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v174 = &v123 - v24;
  v173 = sub_2CB970();
  v25 = *(v173 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v173);
  v172 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_2CCB30();
  v28 = *(v171 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v171);
  v170 = &v123 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_2CCAC0();
  v31 = *(v169 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v169);
  v168 = &v123 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2CE000();
  v34 = *(v167 - 8);
  v35 = *(v34 + 64);
  v36 = __chkstk_darwin(v167);
  v142 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v138 = &v123 - v38;
  v179 = sub_2CC2E0();
  v39 = *(v179 - 8);
  v40 = *(v39 + 64);
  v41 = __chkstk_darwin(v179);
  v137 = &v123 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v44 = &v123 - v43;
  v166 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  v45 = *(*(v166 - 8) + 64);
  __chkstk_darwin(v166);
  v49 = &v123 - v47;
  v50 = *(a1 + 16);
  if (v50)
  {
    v163 = (v181 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider);
    v51 = a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80));
    v136 = (v9 + 32);
    v162 = *(v46 + 72);
    v161 = (v34 + 16);
    v160 = (v9 + 16);
    v159 = (v9 + 8);
    v158 = (v34 + 8);
    v157 = enum case for AdditionalMetricsDescription.ModuleName.dih(_:);
    v156 = (v31 + 104);
    v155 = (v28 + 104);
    v135 = (v180 + 104);
    v154 = enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:);
    v134 = (v180 + 8);
    v153 = (v28 + 8);
    v133 = enum case for AdditionalMetricsDescription.StatusReason.success(_:);
    v152 = (v31 + 8);
    v151 = enum case for TypeOfIntent.determine(_:);
    v150 = (v25 + 104);
    v132 = enum case for ActivityType.completed(_:);
    v149 = (v25 + 8);
    v131 = (v39 + 32);
    v130 = (v39 + 16);
    v148 = (v39 + 8);
    v129 = enum case for SiriKitReliabilityCodes.success(_:);
    v128 = enum case for ActivityType.failed(_:);
    *&v48 = 136446210;
    v126 = v48;
    *&v48 = 136315138;
    v125 = v48;
    v127 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v177 = v44;
    v164 = &v123 - v47;
    v165 = v8;
    do
    {
      v180 = v51;
      v181 = v50;
      sub_1186D0(v51, v49);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v68 = v179;
        (*v131)(v44, v49, v179);
        v69 = v167;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v70 = sub_3ED0(v69, static Logger.default);
        swift_beginAccess();
        v71 = v138;
        (*v161)(v138, v70, v69);
        v72 = v137;
        (*v130)(v137, v44, v68);
        v73 = sub_2CDFE0();
        v74 = sub_2CE670();
        if (os_log_type_enabled(v73, v74))
        {
          v75 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v183 = v76;
          *v75 = v126;
          sub_118750(&qword_34FF08, &type metadata accessor for NowPlayingInfoError);
          v77 = sub_2CEEF0();
          v79 = v78;
          (*v148)(v72, v179);
          v80 = sub_3F08(v77, v79, &v183);

          *(v75 + 4) = v80;
          _os_log_impl(&dword_0, v73, v74, "DetermineIntentHandler#resolveNowPlayingIntentInfo failure with error in WHA use case: %{public}s", v75, 0xCu);
          sub_306C(v76);
        }

        else
        {

          (*v148)(v72, v68);
        }

        (*v158)(v71, v69);
        v52 = v168;
        v53 = v169;
        (*v156)(v168, v157, v169);
        v54 = v170;
        v55 = v171;
        (*v155)(v170, v154, v171);
        sub_118750(&qword_34FF08, &type metadata accessor for NowPlayingInfoError);
        sub_2CEEF0();
        v147 = sub_2CCAE0();

        (*v153)(v54, v55);
        (*v152)(v52, v53);
        v56 = v163[3];
        v146 = v163[4];
        sub_35E0(v163, v56);
        v57 = v172;
        v58 = v173;
        (*v150)(v172, v151, v173);
        v59 = sub_2C9C20();
        v60 = *(v59 - 8);
        v61 = v174;
        (*(v60 + 104))(v174, v128, v59);
        (*(v60 + 56))(v61, 0, 1, v59);
        v62 = sub_2CA130();
        v63 = v175;
        (*(*(v62 - 8) + 56))(v175, 1, 1, v62);
        v64 = sub_2C98F0();
        v65 = *(v64 - 8);
        v66 = v176;
        (*(v65 + 104))(v176, v127, v64);
        (*(v65 + 56))(v66, 0, 1, v64);
        sub_2CB4C0();

        sub_30B8(v66, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v63, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v61, &qword_34CB88, &unk_2D0D90);
        (*v149)(v57, v58);
        type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
        static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(1);
        v67 = v182;
        swift_beginAccess();
        sub_2CE3F0();
        if (*(&dword_10 + (*(v67 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v67 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v117 = *(&dword_10 + (*(v67 + 16) & 0xFFFFFFFFFFFFFF8));
          sub_2CE430();
        }

        sub_2CE460();
        swift_endAccess();
        v44 = v177;
        (*v148)(v177, v179);
        v8 = v165;
      }

      else
      {
        v81 = v178;
        (*v136)(v178, v49, v8);
        v82 = v143;
        v83 = v139;
        v84 = v167;
        v85 = v142;
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v86 = sub_3ED0(v84, static Logger.default);
        swift_beginAccess();
        (*v161)(v85, v86, v84);
        v87 = *v160;
        (*v160)(v83, v81, v8);
        v88 = sub_2CDFE0();
        v89 = sub_2CE670();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          v183 = v91;
          *v90 = v125;
          v87(v82, v83, v8);
          v92 = v8;
          v93 = sub_2CE2A0();
          v95 = v94;
          v147 = *v159;
          v147(v83, v92);
          v96 = sub_3F08(v93, v95, &v183);
          v82 = v143;

          *(v90 + 4) = v96;
          v8 = v92;
          _os_log_impl(&dword_0, v88, v89, "DetermineIntentHandler#resolveNowPlayingIntentInfo got back nowPlayingInfo in WHA use case: %s", v90, 0xCu);
          sub_306C(v91);
          v97 = v178;

          (*v158)(v142, v84);
        }

        else
        {

          v147 = *v159;
          v147(v83, v8);
          (*v158)(v85, v84);
          v97 = v81;
        }

        type metadata accessor for NowPlayingIntentInfo();
        v87(v82, v97, v8);
        v98 = sub_82B50(v82);
        type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
        v146 = v98;
        static NowPlayingIntentInfoResolutionResult.success(with:)(v98);
        v99 = v182;
        swift_beginAccess();
        sub_2CE3F0();
        if (*(&dword_10 + (*(v99 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(v99 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v118 = *(&dword_10 + (*(v99 + 16) & 0xFFFFFFFFFFFFFF8));
          sub_2CE430();
        }

        sub_2CE460();
        swift_endAccess();
        v100 = v168;
        v101 = v169;
        (*v156)(v168, v157, v169);
        v102 = v170;
        v103 = v171;
        (*v155)(v170, v154, v171);
        v104 = v140;
        v105 = v141;
        (*v135)(v140, v133, v141);
        v145 = sub_2CCAD0();
        (*v134)(v104, v105);
        (*v153)(v102, v103);
        (*v152)(v100, v101);
        v106 = v163[3];
        v144 = v163[4];
        sub_35E0(v163, v106);
        v107 = v172;
        v108 = v173;
        (*v150)(v172, v151, v173);
        v109 = sub_2C9C20();
        v110 = *(v109 - 8);
        v111 = v174;
        (*(v110 + 104))(v174, v132, v109);
        (*(v110 + 56))(v111, 0, 1, v109);
        v112 = sub_2CA130();
        v113 = v175;
        (*(*(v112 - 8) + 56))(v175, 1, 1, v112);
        v114 = sub_2C98F0();
        v115 = *(v114 - 8);
        v116 = v176;
        (*(v115 + 104))(v176, v129, v114);
        (*(v115 + 56))(v116, 0, 1, v114);
        sub_2CB4C0();

        sub_30B8(v116, &qword_34CB78, &unk_2D0D80);
        sub_30B8(v113, &qword_34CB80, &unk_2D0B30);
        sub_30B8(v111, &qword_34CB88, &unk_2D0D90);
        (*v149)(v107, v108);
        v8 = v165;
        v147(v178, v165);
        v44 = v177;
      }

      v49 = v164;
      v51 = v180 + v162;
      v50 = v181 - 1;
    }

    while (v181 != 1);
  }

  v119 = v182;
  swift_beginAccess();
  v120 = *(v119 + 16);

  v124(v121);
}

uint64_t sub_115CCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8, void (*a9)(void), uint64_t a10, uint64_t a11)
{
  v113 = a8;
  v102 = a7;
  v101 = a3;
  v114 = a9;
  v115 = a10;
  v12 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v112 = &v96 - v14;
  v15 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v111 = &v96 - v17;
  v18 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v110 = &v96 - v20;
  v116 = sub_2CB970();
  v109 = *(v116 - 8);
  v21 = *(v109 + 64);
  __chkstk_darwin(v116);
  v108 = &v96 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2CCB20();
  v106 = *(v23 - 8);
  v107 = v23;
  v24 = *(v106 + 64);
  __chkstk_darwin(v23);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2CCB30();
  v104 = *(v27 - 8);
  v105 = v27;
  v28 = *(v104 + 64);
  __chkstk_darwin(v27);
  v30 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_2CCAC0();
  v31 = *(v103 - 8);
  v32 = *(v31 + 64);
  __chkstk_darwin(v103);
  v34 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_2CB980();
  v98 = *(v99 - 8);
  v35 = *(v98 + 64);
  __chkstk_darwin(v99);
  v97 = &v96 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_2CE000();
  v38 = *(v37 - 8);
  v39 = *(v38 + 64);
  v40 = __chkstk_darwin(v37);
  v42 = &v96 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v40);
  v44 = &v96 - v43;
  v100 = a11;
  v45 = a4;
  v46 = swift_projectBox();
  if (a4 && !v102)
  {
    v116 = v46;
    v73 = qword_34BF58;

    if (v73 != -1)
    {
      swift_once();
    }

    v74 = sub_3ED0(v37, static Logger.default);
    swift_beginAccess();
    (*(v38 + 16))(v44, v74, v37);

    v75 = sub_2CDFE0();
    v76 = sub_2CE670();

    v77 = os_log_type_enabled(v75, v76);
    v78 = v115;
    v79 = v101;
    if (v77)
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v117 = v81;
      *v80 = 136315138;

      v82 = sub_3F08(v79, v45, &v117);
      v83 = v45;
      v84 = v82;

      *(v80 + 4) = v84;
      v45 = v83;
      v79 = v101;
      _os_log_impl(&dword_0, v75, v76, "DetermineIntentHandler#resolveNowPlayingIntentInfo got back bundleId: %s", v80, 0xCu);
      sub_306C(v81);
    }

    (*(v38 + 8))(v44, v37);
    v85 = v79;
    v86 = v113;
    v87 = *&v113[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 24];
    v115 = *&v113[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider + 32];
    sub_35E0(&v113[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_nowPlayingProvider], v87);
    v88 = v116;
    swift_beginAccess();
    v89 = v98;
    v90 = v97;
    v91 = v99;
    (*(v98 + 16))(v97, v88, v99);
    v92 = swift_allocObject();
    v93 = v114;
    v92[2] = v86;
    v92[3] = v93;
    v92[4] = v78;
    v92[5] = v85;
    v94 = v100;
    v92[6] = v45;
    v92[7] = v94;
    v95 = v86;

    sub_2CC310();

    return (*(v89 + 8))(v90, v91);
  }

  else
  {
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v47 = sub_3ED0(v37, static Logger.default);
    swift_beginAccess();
    (*(v38 + 16))(v42, v47, v37);
    v48 = sub_2CDFE0();
    v49 = sub_2CE680();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_0, v48, v49, "DetermineIntent#resolveNowPlayingIntentInfo failed to get bundleId for now playing app", v50, 2u);
    }

    (*(v38 + 8))(v42, v37);
    v51 = v103;
    (*(v31 + 104))(v34, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v103);
    v53 = v104;
    v52 = v105;
    (*(v104 + 104))(v30, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v105);
    v55 = v106;
    v54 = v107;
    (*(v106 + 104))(v26, enum case for AdditionalMetricsDescription.StatusReason.unknown(_:), v107);
    v102 = sub_2CCAD0();
    v101 = v56;
    (*(v55 + 8))(v26, v54);
    (*(v53 + 8))(v30, v52);
    (*(v31 + 8))(v34, v51);
    v57 = &v113[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider];
    v58 = *&v113[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24];
    v113 = *&v113[OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32];
    sub_35E0(v57, v58);
    v60 = v108;
    v59 = v109;
    (*(v109 + 104))(v108, enum case for TypeOfIntent.determine(_:), v116);
    v61 = enum case for ActivityType.failed(_:);
    v62 = sub_2C9C20();
    v63 = *(v62 - 8);
    v64 = v110;
    (*(v63 + 104))(v110, v61, v62);
    (*(v63 + 56))(v64, 0, 1, v62);
    v65 = sub_2CA130();
    v66 = v111;
    (*(*(v65 - 8) + 56))(v111, 1, 1, v65);
    v67 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v68 = sub_2C98F0();
    v69 = *(v68 - 8);
    v70 = v112;
    (*(v69 + 104))(v112, v67, v68);
    (*(v69 + 56))(v70, 0, 1, v68);
    sub_2CB4C0();

    sub_30B8(v70, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v66, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v64, &qword_34CB88, &unk_2D0D90);
    (*(v59 + 8))(v60, v116);
    sub_2CC230();
    sub_2CC1B0();
    sub_20410(&unk_351900, &unk_2D0960);
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_2D0770;
    type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
    *(v71 + 32) = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(2);
    v114(v71);
  }
}

uint64_t sub_11689C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v170 = a7;
  v164 = a6;
  v163 = a5;
  v184 = a4;
  v185 = a3;
  v172 = a2;
  v169 = a1;
  v161 = sub_2CCB20();
  v160 = *(v161 - 8);
  v7 = *(v160 + 64);
  __chkstk_darwin(v161);
  v159 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_2CB980();
  v168 = *(v167 - 8);
  v9 = *(v168 + 64);
  v10 = __chkstk_darwin(v167);
  v166 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v165 = &v154 - v12;
  v13 = sub_2CBAF0();
  v178 = *(v13 - 8);
  v14 = *(v178 + 64);
  v15 = __chkstk_darwin(v13);
  v162 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v18 = &v154 - v17;
  v19 = sub_20410(&qword_34CB78, &unk_2D0D80);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v179 = &v154 - v21;
  v22 = sub_20410(&qword_34CB80, &unk_2D0B30);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v181 = &v154 - v24;
  v25 = sub_20410(&qword_34CB88, &unk_2D0D90);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v182 = &v154 - v27;
  v187 = sub_2CB970();
  v183 = *(v187 - 8);
  v28 = *(v183 + 64);
  __chkstk_darwin(v187);
  v180 = &v154 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_2CCB30();
  v177 = *(v171 - 8);
  v30 = *(v177 + 64);
  __chkstk_darwin(v171);
  v174 = &v154 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_2CCAC0();
  v175 = *(v176 - 8);
  v32 = *(v175 + 64);
  __chkstk_darwin(v176);
  v173 = &v154 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_2CE000();
  v188 = *(v186 - 1);
  v34 = *(v188 + 64);
  v35 = __chkstk_darwin(v186);
  v158 = &v154 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v154 - v38;
  __chkstk_darwin(v37);
  v41 = &v154 - v40;
  v42 = sub_2CC2E0();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  __chkstk_darwin(v42);
  v46 = &v154 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47);
  v50 = &v154 - v49;
  v51 = swift_projectBox();
  sub_1186D0(v169, v50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v43 + 32))(v46, v50, v42);
    sub_118750(&qword_34FF08, &type metadata accessor for NowPlayingInfoError);
    v52 = sub_2CEEF0();
    v54 = v53;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v169 = v46;
    v170 = v43;
    v178 = v42;
    v55 = v186;
    v56 = sub_3ED0(v186, static Logger.default);
    swift_beginAccess();
    v57 = v188;
    (*(v188 + 16))(v41, v56, v55);

    v58 = sub_2CDFE0();
    v59 = sub_2CE670();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v191 = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_3F08(v52, v54, &v191);
      _os_log_impl(&dword_0, v58, v59, "DetermineIntentHandler#resolveNowPlayingIntentInfo failure with error: %{public}s", v60, 0xCu);
      sub_306C(v61);
    }

    (*(v57 + 8))(v41, v55);
    v62 = v175;
    v63 = v173;
    v64 = v176;
    (*(v175 + 104))(v173, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v176);
    v65 = v177;
    v66 = v174;
    v67 = v171;
    (*(v177 + 104))(v174, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v171);
    v188 = sub_2CCAE0();
    v186 = v68;

    (*(v65 + 8))(v66, v67);
    (*(v62 + 8))(v63, v64);
    v69 = *(v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24);
    v177 = *(v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32);
    sub_35E0((v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider), v69);
    v70 = v183;
    v71 = v180;
    (*(v183 + 104))(v180, enum case for TypeOfIntent.determine(_:), v187);
    v72 = enum case for ActivityType.failed(_:);
    v73 = sub_2C9C20();
    v74 = *(v73 - 8);
    v75 = v182;
    (*(v74 + 104))(v182, v72, v73);
    (*(v74 + 56))(v75, 0, 1, v73);
    v76 = sub_2CA130();
    v77 = v181;
    (*(*(v76 - 8) + 56))(v181, 1, 1, v76);
    v78 = enum case for SiriKitReliabilityCodes.genericError(_:);
    v79 = sub_2C98F0();
    v80 = *(v79 - 8);
    v81 = v179;
    (*(v80 + 104))(v179, v78, v79);
    (*(v80 + 56))(v81, 0, 1, v79);
    sub_2CB4C0();

    sub_30B8(v81, &qword_34CB78, &unk_2D0D80);
    sub_30B8(v77, &qword_34CB80, &unk_2D0B30);
    sub_30B8(v75, &qword_34CB88, &unk_2D0D90);
    (*(v70 + 8))(v71, v187);
    sub_2CC230();
    sub_2CC1B0();
    sub_20410(&unk_351900, &unk_2D0960);
    v82 = swift_allocObject();
    *(v82 + 16) = xmmword_2D0770;
    type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
    *(v82 + 32) = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(3);
    v185(v82);

    return (*(v170 + 8))(v169, v178);
  }

  else
  {
    v84 = v178;
    v85 = *(v178 + 32);
    v170 = v13;
    v85(v18, v50, v13);
    v86 = v84;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v87 = v186;
    v88 = sub_3ED0(v186, static Logger.default);
    swift_beginAccess();
    v89 = *(v188 + 16);
    v155 = v88;
    v169 = (v188 + 16);
    v156 = v89;
    v89(v39, v88, v87);
    v90 = sub_2CDFE0();
    v91 = sub_2CE670();
    if (os_log_type_enabled(v90, v91))
    {
      v92 = swift_slowAlloc();
      *v92 = 0;
      _os_log_impl(&dword_0, v90, v91, "DetermineIntentHandler#resolveNowPlayingIntentInfo got now playing info", v92, 2u);
      v87 = v186;
    }

    v93 = *(v188 + 8);
    v188 += 8;
    v93(v39, v87);
    type metadata accessor for NowPlayingIntentInfo();
    v94 = *(v86 + 16);
    v95 = v162;
    v94(v162, v18, v170);
    v96 = sub_82B50(v95);
    v97 = sub_2CE260();
    v186 = v96;
    [v96 setAppBundleId:v97];

    swift_beginAccess();
    v98 = v168;
    v99 = v165;
    v100 = v167;
    (*(v168 + 16))(v165, v51, v167);
    v101 = v166;
    (*(v98 + 104))(v166, enum case for QueuePosition.next(_:), v100);
    sub_118750(&qword_351728, &type metadata accessor for QueuePosition);
    sub_2CE3E0();
    sub_2CE3E0();
    v102 = *(v98 + 8);
    v102(v101, v100);
    v102(v99, v100);
    v157 = v18;
    if (v190 == v189 && (v103 = sub_2CBA80(), v103 != 2) && (v103 & 1) != 0)
    {
      v104 = v158;
      v156(v158, v155, v87);
      v105 = sub_2CDFE0();
      v106 = sub_2CE680();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_0, v105, v106, "DetermineIntentHandler#resolveNowPlayingIntentInfo user asked about up next but queue is empty", v107, 2u);
      }

      v93(v104, v87);
      v108 = v175;
      v109 = v173;
      v110 = v176;
      (*(v175 + 104))(v173, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v176);
      v111 = v177;
      v112 = v174;
      v113 = v171;
      (*(v177 + 104))(v174, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v171);
      v188 = sub_2CCAE0();
      v169 = v114;
      (*(v111 + 8))(v112, v113);
      (*(v108 + 8))(v109, v110);
      v115 = *(v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24);
      v177 = *(v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32);
      sub_35E0((v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider), v115);
      v116 = v183;
      v117 = v180;
      (*(v183 + 104))(v180, enum case for TypeOfIntent.determine(_:), v187);
      v118 = enum case for ActivityType.completed(_:);
      v119 = sub_2C9C20();
      v120 = *(v119 - 8);
      v121 = v182;
      (*(v120 + 104))(v182, v118, v119);
      (*(v120 + 56))(v121, 0, 1, v119);
      v122 = sub_2CA130();
      v123 = v181;
      (*(*(v122 - 8) + 56))(v181, 1, 1, v122);
      v124 = enum case for SiriKitReliabilityCodes.slotResolutionFailure(_:);
      v125 = sub_2C98F0();
      v126 = *(v125 - 8);
      v127 = v179;
      (*(v126 + 104))(v179, v124, v125);
      (*(v126 + 56))(v127, 0, 1, v125);
      sub_2CB4C0();

      sub_30B8(v127, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v123, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v121, &qword_34CB88, &unk_2D0D90);
      (*(v116 + 8))(v117, v187);
      sub_20410(&unk_351900, &unk_2D0960);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_2D0770;
      type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
      *(v128 + 32) = static DetermineNowPlayingIntentInfoResolutionResult.unsupported(forReason:)(4);
      v185(v128);
    }

    else
    {
      v129 = v175;
      v130 = v173;
      v131 = v176;
      (*(v175 + 104))(v173, enum case for AdditionalMetricsDescription.ModuleName.dih(_:), v176);
      v132 = v177;
      v133 = v174;
      v134 = v171;
      (*(v177 + 104))(v174, enum case for AdditionalMetricsDescription.SourceFunction.resNowPlayInf(_:), v171);
      v135 = v159;
      v136 = v160;
      v137 = v161;
      (*(v160 + 104))(v159, enum case for AdditionalMetricsDescription.StatusReason.success(_:), v161);
      v188 = sub_2CCAD0();
      v169 = v138;
      (*(v136 + 8))(v135, v137);
      (*(v132 + 8))(v133, v134);
      (*(v129 + 8))(v130, v131);
      v139 = *(v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 24);
      v177 = *(v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider + 32);
      sub_35E0((v172 + OBJC_IVAR____TtC23AudioFlowDelegatePlugin22DetermineIntentHandler_siriKitTaskLoggingProvider), v139);
      v140 = v183;
      v141 = v180;
      (*(v183 + 104))(v180, enum case for TypeOfIntent.determine(_:), v187);
      v142 = enum case for ActivityType.completed(_:);
      v143 = sub_2C9C20();
      v144 = *(v143 - 8);
      v145 = v182;
      (*(v144 + 104))(v182, v142, v143);
      (*(v144 + 56))(v145, 0, 1, v143);
      v146 = sub_2CA130();
      v147 = v181;
      (*(*(v146 - 8) + 56))(v181, 1, 1, v146);
      v148 = enum case for SiriKitReliabilityCodes.success(_:);
      v149 = sub_2C98F0();
      v150 = *(v149 - 8);
      v151 = v179;
      (*(v150 + 104))(v179, v148, v149);
      (*(v150 + 56))(v151, 0, 1, v149);
      sub_2CB4C0();

      sub_30B8(v151, &qword_34CB78, &unk_2D0D80);
      sub_30B8(v147, &qword_34CB80, &unk_2D0B30);
      sub_30B8(v145, &qword_34CB88, &unk_2D0D90);
      (*(v140 + 8))(v141, v187);
      sub_20410(&unk_351900, &unk_2D0960);
      v152 = swift_allocObject();
      *(v152 + 16) = xmmword_2D0770;
      type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
      v153 = v186;
      *(v152 + 32) = static NowPlayingIntentInfoResolutionResult.success(with:)(v186);
      v185(v152);
    }

    return (*(v178 + 8))(v157, v170);
  }
}

void sub_11807C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for DetermineNowPlayingIntentInfoResolutionResult();
  isa = sub_2CE400().super.isa;
  (*(a2 + 16))(a2, isa);
}

void sub_118118(uint64_t a1, void (*a2)(char *), uint64_t a3, const char *a4, uint64_t a5)
{
  v8 = sub_2CE000();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v13 = sub_3ED0(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v12, v13, v8);
  v14 = sub_2CDFE0();
  v15 = sub_2CE670();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_0, v14, v15, a4, v16, 2u);
  }

  (*(v9 + 8))(v12, v8);
  v17 = [objc_allocWithZone(type metadata accessor for DetermineIntentResponse()) init];
  v18 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v17[v18] = a5;
  [v17 setUserActivity:0];
  a2(v17);
}

void sub_118350(void *a1, int a2, void *a3, void *aBlock, const char *a5, uint64_t a6)
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a1;
  sub_1184A0(v10, a5, a6);
  _Block_release(v10);
  _Block_release(v10);
}

id DetermineIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DetermineIntentHandler();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_1184A0(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = sub_2CE000();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v11 = sub_3ED0(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v10, v11, v6);
  v12 = sub_2CDFE0();
  v13 = sub_2CE670();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_0, v12, v13, a2, v14, 2u);
  }

  (*(v7 + 8))(v10, v6);
  v15 = [objc_allocWithZone(type metadata accessor for DetermineIntentResponse()) init];
  v16 = OBJC_IVAR___DetermineIntentResponse_code;
  swift_beginAccess();
  *&v15[v16] = a3;
  [v15 setUserActivity:0];
  (*(a1 + 16))(a1, v15);
}

uint64_t sub_1186D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20410(&qword_34FF00, &qword_2D3EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_118750(unint64_t *a1, void (*a2)(uint64_t))
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

id Parse.getSiriKitIntent(nowPlayingProvider:featureFlags:)(void *a1, uint64_t a2)
{
  v361 = a2;
  v360 = a1;
  v370 = sub_2CD4C0();
  v374 = *(v370 - 8);
  v2 = v374[8];
  __chkstk_darwin(v370);
  v348 = &v326 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v363 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v4 = *(*(v363 - 8) + 64);
  v5 = __chkstk_darwin(v363);
  v356 = &v326 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v369 = &v326 - v7;
  v8 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v343 = &v326 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v354 = &v326 - v13;
  v14 = __chkstk_darwin(v12);
  v355 = &v326 - v15;
  v16 = __chkstk_darwin(v14);
  v367 = (&v326 - v17);
  v18 = __chkstk_darwin(v16);
  v362 = &v326 - v19;
  __chkstk_darwin(v18);
  v371 = &v326 - v20;
  v21 = sub_20410(&qword_34D360, &qword_2D11E0);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v366 = &v326 - v23;
  v378 = type metadata accessor for AudioNLv3Intent();
  v365 = *(v378 - 1);
  v24 = *(v365 + 64);
  v25 = __chkstk_darwin(v378);
  v353 = &v326 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v373 = (&v326 - v27);
  v28 = sub_2CAFE0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v364 = &v326 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v34 = &v326 - v33;
  v350 = sub_2CA810();
  v351 = *(v350 - 8);
  v35 = *(v351 + 64);
  __chkstk_darwin(v350);
  v357 = &v326 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_20410(&qword_34CC90, qword_2D40E0);
  v38 = *(*(v37 - 8) + 64);
  __chkstk_darwin(v37 - 8);
  v340 = &v326 - v39;
  v335 = sub_2CA970();
  v334 = *(v335 - 8);
  v40 = *(v334 + 64);
  __chkstk_darwin(v335);
  v333 = &v326 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v346 = sub_2CAA00();
  v347 = *(v346 - 8);
  v42 = *(v347 + 8);
  __chkstk_darwin(v346);
  v336 = &v326 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2CE000();
  v381 = *(v44 - 8);
  v382 = v44;
  v45 = *(v381 + 64);
  v46 = __chkstk_darwin(v44);
  v368 = &v326 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __chkstk_darwin(v46);
  v339 = &v326 - v49;
  v50 = __chkstk_darwin(v48);
  v344 = &v326 - v51;
  v52 = __chkstk_darwin(v50);
  v338 = &v326 - v53;
  v54 = __chkstk_darwin(v52);
  v359 = &v326 - v55;
  v56 = __chkstk_darwin(v54);
  v352 = &v326 - v57;
  v58 = __chkstk_darwin(v56);
  v60 = &v326 - v59;
  v61 = __chkstk_darwin(v58);
  v329 = &v326 - v62;
  v63 = __chkstk_darwin(v61);
  v331 = &v326 - v64;
  v65 = __chkstk_darwin(v63);
  v330 = &v326 - v66;
  v67 = __chkstk_darwin(v65);
  v349 = (&v326 - v68);
  v69 = __chkstk_darwin(v67);
  v328 = &v326 - v70;
  v71 = __chkstk_darwin(v69);
  v327 = &v326 - v72;
  v73 = __chkstk_darwin(v71);
  v326 = &v326 - v74;
  __chkstk_darwin(v73);
  v332 = &v326 - v75;
  v341 = sub_2CA8F0();
  v342 = *(v341 - 8);
  v76 = *(v342 + 64);
  v77 = __chkstk_darwin(v341);
  v79 = &v326 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v345 = &v326 - v80;
  v81 = sub_2CA870();
  v82 = *(v81 - 8);
  v83 = *(v82 + 64);
  v84 = __chkstk_darwin(v81);
  v358 = &v326 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = __chkstk_darwin(v84);
  v88 = &v326 - v87;
  v89 = __chkstk_darwin(v86);
  v91 = &v326 - v90;
  v92 = __chkstk_darwin(v89);
  v372 = (&v326 - v93);
  __chkstk_darwin(v92);
  v95 = (&v326 - v94);
  v96 = *(v82 + 16);
  v379 = v82 + 16;
  v377 = v96;
  v96((&v326 - v94), v383, v81);
  v97 = (*(v82 + 88))(v95, v81);
  v375 = v29;
  v380 = v81;
  v376 = v82;
  if (v97 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v82 + 96))(v95, v81);
    (*(v29 + 32))(v34, v95, v28);
    v98 = v28;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v99 = v382;
    v100 = sub_3ED0(v382, static Logger.default);
    swift_beginAccess();
    v101 = v381;
    v102 = *(v381 + 16);
    v351 = v100;
    v350 = v381 + 16;
    v349 = v102;
    v102(v60, v100, v99);
    v103 = *(v29 + 16);
    v104 = v364;
    v357 = v34;
    v103(v364, v34, v28);
    v105 = sub_2CDFE0();
    v106 = sub_2CE670();
    v107 = os_log_type_enabled(v105, v106);
    v337 = v28;
    if (v107)
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      *&v384 = v109;
      *v108 = 136315138;
      sub_11C944(&qword_34D678, &type metadata accessor for NLIntent);
      v110 = sub_2CEE70();
      v112 = v111;
      v364 = *(v29 + 8);
      (v364)(v104, v98);
      v113 = sub_3F08(v110, v112, &v384);
      v101 = v381;

      *(v108 + 4) = v113;
      _os_log_impl(&dword_0, v105, v106, "Parse#getSiriKitIntent .NLv3IntentOnly %s", v108, 0xCu);
      sub_306C(v109);
      v99 = v382;
    }

    else
    {

      v364 = *(v29 + 8);
      (v364)(v104, v28);
    }

    v125 = *(v101 + 8);
    v125(v60, v99);
    v126 = v367;
    v127 = v366;
    v128 = v372;
    v377(v372, v383, v380);
    sub_2B6170(v128, v127);
    v129 = (*(v365 + 48))(v127, 1, v378);
    v130 = v371;
    v131 = v369;
    if (v129 == 1)
    {
      sub_30B8(v127, &qword_34D360, &qword_2D11E0);
      v132 = v359;
      v349(v359, v351, v99);
      v133 = sub_2CDFE0();
      v134 = sub_2CE680();
      if (os_log_type_enabled(v133, v134))
      {
        v135 = swift_slowAlloc();
        *v135 = 0;
        _os_log_impl(&dword_0, v133, v134, "Parse#getSiriKitIntent Fatal: Cannot get AudioNLv3Intent from NLv3IntentOnly parse", v135, 2u);
      }

      v125(v132, v99);
      (v364)(v357, v337);
      return 0;
    }

    sub_D416C(v127, v373);
    if (qword_34C080 != -1)
    {
      swift_once();
    }

    v146 = qword_357108;
    v147 = sub_11C944(&unk_351730, type metadata accessor for AudioNLv3Intent);
    v366 = v146;
    v365 = v147;
    sub_2CACA0();
    v148 = v374 + 7;
    v347 = v125;
    if (v384 == 11)
    {
      v149 = *v148;
      v150 = v130;
      v151 = 1;
    }

    else
    {
      sub_DEB38(v384, v130);
      v149 = *v148;
      v150 = v130;
      v151 = 0;
    }

    v167 = v370;
    v149(v150, v151, 1, v370);
    v168 = v374;
    v169 = v362;
    v359 = v374[13];
    (v359)(v362, enum case for CommonAudio.Verb.like(_:), v167);
    v367 = v149;
    v149(v169, 0, 1, v167);
    v170 = *(v363 + 48);
    sub_F7598(v130, v131);
    sub_F7598(v169, v131 + v170);
    v171 = v130;
    v172 = v168[6];
    if (v172(v131, 1, v167) == 1)
    {
      sub_30B8(v169, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v171, &qword_34D6B8, &qword_2D15B0);
      v173 = v172(v131 + v170, 1, v370);
      v174 = v337;
      if (v173 == 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      sub_F7598(v131, v126);
      if (v172(v131 + v170, 1, v167) != 1)
      {
        v206 = v131;
        v207 = v374;
        v208 = v206 + v170;
        v209 = v348;
        (v374[4])(v348, v208, v167);
        sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
        LODWORD(v346) = sub_2CE250();
        v210 = v207[1];
        v210(v209, v167);
        sub_30B8(v362, &qword_34D6B8, &qword_2D15B0);
        sub_30B8(v371, &qword_34D6B8, &qword_2D15B0);
        v210(v126, v167);
        v174 = v337;
        sub_30B8(v369, &qword_34D6B8, &qword_2D15B0);
        v175 = v367;
        if (v346)
        {
          goto LABEL_72;
        }

LABEL_39:
        sub_2CACA0();
        v176 = v355;
        if (v384 == 11)
        {
          v177 = v355;
          v178 = 1;
        }

        else
        {
          sub_DEB38(v384, v355);
          v177 = v176;
          v178 = 0;
        }

        v185 = v370;
        v175(v177, v178, 1, v370);
        v186 = v354;
        (v359)(v354, enum case for CommonAudio.Verb.unlike(_:), v185);
        v175(v186, 0, 1, v185);
        v187 = *(v363 + 48);
        v188 = v356;
        sub_F7598(v176, v356);
        sub_F7598(v186, v188 + v187);
        if (v172(v188, 1, v185) == 1)
        {
          sub_30B8(v186, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v176, &qword_34D6B8, &qword_2D15B0);
          if (v172(v188 + v187, 1, v185) == 1)
          {
            v131 = v188;
LABEL_50:
            sub_30B8(v131, &qword_34D6B8, &qword_2D15B0);
LABEL_72:
            v231 = v352;
            v232 = v382;
            v349(v352, v351, v382);
            v233 = sub_2CDFE0();
            v234 = sub_2CE690();
            if (os_log_type_enabled(v233, v234))
            {
              v235 = swift_slowAlloc();
              v236 = swift_slowAlloc();
              *&v384 = v236;
              *v235 = 136446210;
              v237 = sub_2CCC80();
              v239 = sub_3F08(v237, v238, &v384);

              *(v235 + 4) = v239;
              _os_log_impl(&dword_0, v233, v234, "Parse#getSiriKitIntent %{public}s Returning UpdateMediaAffinity flow", v235, 0xCu);
              sub_306C(v236);
            }

            v347(v231, v232);
            v240 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
            v241 = v373;
            v242 = v353;
            sub_11C8D4(v373, v353);
            v243 = v240;
            v244 = dispatch_group_create();
            dispatch_group_enter(v244);
            v245 = swift_allocObject();
            *(v245 + 16) = v243;
            *(v245 + 24) = v244;
            v246 = v243;
            v247 = v244;
            sub_11BB54(v242, v360, v361, sub_11C938, v245, v246);

            sub_FED50(v242);
            sub_2CE960();

            sub_FED50(v241);
            (v364)(v357, v174);
            return v246;
          }
        }

        else
        {
          v189 = v343;
          sub_F7598(v188, v343);
          if (v172(v188 + v187, 1, v185) != 1)
          {
            v228 = v374;
            v229 = v348;
            (v374[4])(v348, v188 + v187, v185);
            sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
            LODWORD(v378) = sub_2CE250();
            v230 = v228[1];
            v230(v229, v185);
            sub_30B8(v186, &qword_34D6B8, &qword_2D15B0);
            sub_30B8(v176, &qword_34D6B8, &qword_2D15B0);
            v230(v189, v185);
            v174 = v337;
            sub_30B8(v188, &qword_34D6B8, &qword_2D15B0);
            if (v378)
            {
              goto LABEL_72;
            }

            goto LABEL_54;
          }

          sub_30B8(v186, &qword_34D6B8, &qword_2D15B0);
          sub_30B8(v176, &qword_34D6B8, &qword_2D15B0);
          (v374[1])(v189, v185);
        }

        sub_30B8(v188, &qword_34D6B0, &unk_2D4FC0);
LABEL_54:
        sub_FED50(v373);
        (v364)(v357, v174);
        v140 = v381;
        v142 = v382;
        v136 = v380;
LABEL_105:
        v145 = v368;
        v143 = v377;
        v144 = v358;
        goto LABEL_106;
      }

      sub_30B8(v362, &qword_34D6B8, &qword_2D15B0);
      sub_30B8(v371, &qword_34D6B8, &qword_2D15B0);
      (v374[1])(v126, v370);
      v174 = v337;
    }

    sub_30B8(v131, &qword_34D6B0, &unk_2D4FC0);
    v175 = v367;
    goto LABEL_39;
  }

  if (v97 != enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    if (v97 == enum case for Parse.directInvocation(_:))
    {
      v136 = v380;
      (*(v376 + 96))(v95, v380);
      v137 = v351;
      v138 = v357;
      v139 = v350;
      (*(v351 + 32))(v357, v95, v350);
      sub_238E4C(v138, &v387);
      v140 = v381;
      v141 = v368;
      if (v390 == 4)
      {
        v218 = v387;

        v219 = v382;
        if (!v218)
        {
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v284 = sub_3ED0(v219, static Logger.default);
          swift_beginAccess();
          v285 = v329;
          (*(v140 + 16))(v329, v284, v219);
          v286 = sub_2CDFE0();
          v287 = sub_2CE680();
          if (os_log_type_enabled(v286, v287))
          {
            v288 = swift_slowAlloc();
            *v288 = 0;
            _os_log_impl(&dword_0, v286, v287, "Parse#getSiriKitIntent PlayMediaShim directinvocation is missing audioExperience", v288, 2u);
          }

          (*(v140 + 8))(v285, v219);
          (*(v137 + 8))(v357, v139);
          return 0;
        }

        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v220 = sub_3ED0(v219, static Logger.default);
        swift_beginAccess();
        v221 = v331;
        (*(v140 + 16))(v331, v220, v219);
        v222 = sub_2CDFE0();
        v223 = sub_2CE690();
        if (os_log_type_enabled(v222, v223))
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          _os_log_impl(&dword_0, v222, v223, "Parse#getSiriKitIntent Constructing INPlayMediaIntent", v224, 2u);
        }

        (*(v140 + 8))(v221, v219);
        v225 = [objc_allocWithZone(INPlayMediaIntent) init];
        sub_2CDBC0();
        sub_2CDBB0();
        sub_2CDBA0();

        v226 = sub_2CDBD0();
        v227 = sub_1BA200(v218, v226, 0, 0);

        (*(v351 + 8))(v357, v139);
        return v227;
      }

      v142 = v382;
      if (v390 != 255)
      {
        sub_30B8(&v387, &qword_34CCB0, &qword_2D5710);
      }

      (*(v137 + 8))(v138, v139);
    }

    else
    {
      v140 = v381;
      v141 = v368;
      if (v97 != enum case for Parse.pommesResponse(_:))
      {
        if (v97 != enum case for Parse.uso(_:))
        {
          v248 = v377;
          if (qword_34BF58 != -1)
          {
            swift_once();
          }

          v249 = v382;
          v250 = sub_3ED0(v382, static Logger.default);
          swift_beginAccess();
          (*(v140 + 16))(v339, v250, v249);
          v251 = v380;
          v248(v88, v383, v380);
          v252 = v248;
          v253 = sub_2CDFE0();
          v254 = sub_2CE680();
          if (os_log_type_enabled(v253, v254))
          {
            v255 = swift_slowAlloc();
            v378 = swift_slowAlloc();
            *&v384 = v378;
            *v255 = 136315138;
            v252(v372, v88, v251);
            v256 = sub_2CE2A0();
            v258 = v257;
            v259 = *(v376 + 8);
            v259(v88, v251);
            v260 = sub_3F08(v256, v258, &v384);
            v261 = v382;

            *(v255 + 4) = v260;
            v262 = v254;
            v142 = v261;
            _os_log_impl(&dword_0, v253, v262, "Parse#getSiriKitIntent parse is not supported %s", v255, 0xCu);
            sub_306C(v378);

            (*(v381 + 8))(v339, v261);
            v136 = v251;
          }

          else
          {
            v306 = v140;

            v259 = *(v376 + 8);
            v259(v88, v251);
            (*(v306 + 8))(v339, v249);
            v136 = v251;
            v142 = v249;
          }

          v259(v95, v136);
          v140 = v381;
          goto LABEL_105;
        }

        v136 = v380;
        (*(v376 + 96))(v95, v380);
        v190 = v342;
        v191 = v345;
        v192 = v95;
        v193 = v341;
        (*(v342 + 32))(v345, v192, v341);
        if (qword_34BF58 != -1)
        {
          swift_once();
        }

        v194 = v382;
        v195 = sub_3ED0(v382, static Logger.default);
        swift_beginAccess();
        v196 = *(v140 + 16);
        v197 = v332;
        v375 = v195;
        v374 = (v140 + 16);
        v373 = v196;
        (v196)(v332, v195, v194);
        (*(v190 + 16))(v79, v191, v193);
        v198 = sub_2CDFE0();
        v199 = sub_2CE670();
        if (os_log_type_enabled(v198, v199))
        {
          v200 = swift_slowAlloc();
          v201 = swift_slowAlloc();
          *&v384 = v201;
          *v200 = 136380675;
          v202 = sub_2CA8C0();
          v204 = v203;
          v378 = *(v342 + 8);
          (v378)(v79, v193);
          v205 = sub_3F08(v202, v204, &v384);
          v136 = v380;

          *(v200 + 4) = v205;
          _os_log_impl(&dword_0, v198, v199, "Parse#getSiriKitIntent found .uso in primary parse of input %{private}s", v200, 0xCu);
          sub_306C(v201);
          v140 = v381;
        }

        else
        {

          v378 = *(v190 + 8);
          (v378)(v79, v193);
        }

        v289 = *(v140 + 8);
        v289(v197, v194);
        v290 = v194;
        v291 = v333;
        sub_2CA8E0();
        v292 = sub_2CA960();
        (*(v334 + 8))(v291, v335);
        v293 = v346;
        if (*(v292 + 16))
        {
          (*(v347 + 2))(v336, v292 + ((*(v347 + 80) + 32) & ~*(v347 + 80)), v346);

          if (sub_2CA9D0())
          {
            v294 = sub_2CD700();
            v295 = *(v294 + 48);
            v296 = *(v294 + 52);
            swift_allocObject();

            v297 = sub_2CD6B0();
            if (sub_4259C())
            {
              v298 = v326;
              (v373)(v326, v375, v290);
              v299 = sub_2CDFE0();
              v300 = sub_2CE690();
              if (os_log_type_enabled(v299, v300))
              {
                v301 = swift_slowAlloc();
                *v301 = 0;
                _os_log_impl(&dword_0, v299, v300, "Parse#getSiriKitIntent uso affinity task", v301, 2u);
              }

              v289(v298, v290);
              v302 = [objc_allocWithZone(INUpdateMediaAffinityIntent) init];
              v303 = dispatch_group_create();
              dispatch_group_enter(v303);
              v304 = swift_allocObject();
              *(v304 + 16) = v302;
              *(v304 + 24) = v303;
              v246 = v302;
              v305 = v303;
              sub_11C170(v297, v360, v361, sub_11C9E8, v304, v246);

              sub_2CE960();

              (*(v347 + 1))(v336, v293);
              (v378)(v345, v341);
              return v246;
            }

            (*(v347 + 1))(v336, v293);
            (v378)(v345, v341);
            v145 = v368;
            v143 = v377;
            v144 = v358;
            v142 = v290;
LABEL_106:
            if (qword_34BF58 != -1)
            {
              swift_once();
            }

            v307 = sub_3ED0(v142, static Logger.default);
            swift_beginAccess();
            (*(v140 + 16))(v145, v307, v142);
            v143(v144, v383, v136);
            v308 = v143;
            v309 = sub_2CDFE0();
            v310 = sub_2CE680();
            if (os_log_type_enabled(v309, v310))
            {
              v311 = swift_slowAlloc();
              v312 = swift_slowAlloc();
              v386 = v312;
              *v311 = 136315138;
              v308(v372, v144, v136);
              v313 = sub_2CE2A0();
              v315 = v314;
              (*(v376 + 8))(v144, v136);
              v316 = sub_3F08(v313, v315, &v386);

              *(v311 + 4) = v316;
              _os_log_impl(&dword_0, v309, v310, "Parse#getSiriKitIntent Could not generate intent from parse: %s", v311, 0xCu);
              sub_306C(v312);

              (*(v140 + 8))(v368, v382);
            }

            else
            {

              (*(v376 + 8))(v144, v136);
              (*(v140 + 8))(v145, v142);
            }

            return 0;
          }

          v322 = v327;
          (v373)(v327, v375, v290);
          v323 = sub_2CDFE0();
          v324 = sub_2CE690();
          if (os_log_type_enabled(v323, v324))
          {
            v325 = swift_slowAlloc();
            *v325 = 0;
            _os_log_impl(&dword_0, v323, v324, "Parse#getSiriKitIntent failed to get task from usoParse", v325, 2u);
          }

          v289(v322, v290);
          (*(v347 + 1))(v336, v293);
        }

        else
        {

          v317 = v328;
          (v373)(v328, v375, v290);
          v318 = sub_2CDFE0();
          v319 = sub_2CE690();
          if (os_log_type_enabled(v318, v319))
          {
            v320 = swift_slowAlloc();
            *v320 = 0;
            _os_log_impl(&dword_0, v318, v319, "Parse#getSiriKitIntent firstUserDialogAct No user dialog act found in usoParse", v320, 2u);
          }

          v289(v317, v290);
        }

        (v378)(v345, v341);
        return 0;
      }

      (*(v376 + 96))(v95, v380);
      v152 = *v95;
      if (qword_34BF58 != -1)
      {
        swift_once();
      }

      v153 = v382;
      v154 = sub_3ED0(v382, static Logger.default);
      swift_beginAccess();
      v155 = *(v140 + 16);
      v155(v349, v154, v153);
      v156 = v152;
      v157 = sub_2CDFE0();
      v158 = sub_2CE670();

      if (os_log_type_enabled(v157, v158))
      {
        v159 = swift_slowAlloc();
        v160 = swift_slowAlloc();
        *v159 = 138412290;
        *(v159 + 4) = v156;
        *v160 = v156;
        v161 = v156;
        _os_log_impl(&dword_0, v157, v158, "Parse#getSiriKitIntent found .pommesResponse in primary parse of input %@", v159, 0xCu);
        sub_30B8(v160, &unk_34FC00, &unk_2D0150);
      }

      v162 = *(v381 + 8);
      v162(v349, v382);
      v163 = sub_1B7F14();
      if (v163)
      {
        v164 = v163;
        v165 = v340;
        sub_2CDA40();

        v166 = 0;
      }

      else
      {
        v166 = 1;
        v165 = v340;
      }

      (*(v347 + 7))(v165, v166, 1, v346);
      sub_2CD700();
      v263 = sub_2CD600();
      if (!v263)
      {
        v265 = v330;
        v266 = v382;
        v155(v330, v154, v382);
        v267 = sub_2CDFE0();
        v268 = sub_2CE680();
        if (os_log_type_enabled(v267, v268))
        {
          v269 = swift_slowAlloc();
          *v269 = 0;
          _os_log_impl(&dword_0, v267, v268, "Parse#getSiriKitIntent AudioUsoIntent failed to be constructed", v269, 2u);
        }

        else
        {
        }

        v162(v265, v266);
        return 0;
      }

      *&v384 = v263;
      if (sub_2CD940())
      {
        v264 = sub_1B8014();

        return v264;
      }

      v140 = v381;
      v142 = v382;
      v136 = v380;
    }

    v143 = v377;
    v144 = v358;
    v145 = v141;
    goto LABEL_106;
  }

  v114 = v380;
  (*(v376 + 96))(v95, v380);
  v115 = *(v95 + *(sub_20410(&qword_353070, &unk_2D0FB0) + 48));
  sub_D2F98(v383, &v384);
  if (!v385)
  {
    sub_30B8(&v384, &qword_34CF98, &unk_2D1A40);
    v179 = v382;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v180 = sub_3ED0(v179, static Logger.default);
    swift_beginAccess();
    v181 = v344;
    (*(v381 + 16))(v344, v180, v179);
    v182 = sub_2CDFE0();
    v183 = sub_2CE680();
    if (os_log_type_enabled(v182, v183))
    {
      v184 = swift_slowAlloc();
      *v184 = 0;
      _os_log_impl(&dword_0, v182, v183, "Parse#getSiriKitIntent Cannot get AudioIntent from NLv3IntentPlusServerConversion parse for INUpdateMediaAffinityIntent", v184, 2u);
    }

    (*(v381 + 8))(v181, v179);
    (*(v375 + 8))(v95, v28);
    return 0;
  }

  sub_420A4(&v384, &v387);
  v116 = sub_2CA830();
  objc_opt_self();
  v117 = swift_dynamicCastObjCClass();
  v118 = v382;
  if (v117)
  {
    v119 = sub_2CA830();
    objc_opt_self();
    v120 = swift_dynamicCastObjCClassUnconditional();
    v121 = v388;
    v122 = v389;
    v123 = sub_35E0(&v387, v388);
    v124 = sub_11C750(v123, v360, v361, v120, v383, v121, v122);

LABEL_64:
    sub_306C(&v387);
    (*(v375 + 8))(v95, v28);
    return v124;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    sub_2CA830();
    objc_opt_self();
    v124 = swift_dynamicCastObjCClassUnconditional();
    v211 = dispatch_group_create();
    dispatch_group_enter(v211);
    v212 = v388;
    v213 = v389;
    v214 = sub_35E0(&v387, v388);
    v215 = swift_allocObject();
    *(v215 + 16) = v211;
    v216 = v211;
    sub_6F9E8(v214, v360, v361, sub_11BB4C, v215, v124, v212, v213);

    sub_2CE960();

    goto LABEL_64;
  }

  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v270 = sub_3ED0(v118, static Logger.default);
  swift_beginAccess();
  v271 = v381;
  (*(v381 + 16))(v338, v270, v118);
  v272 = v377;
  v377(v91, v383, v114);
  v273 = sub_2CDFE0();
  LODWORD(v378) = sub_2CE670();
  if (os_log_type_enabled(v273, v378))
  {
    v274 = swift_slowAlloc();
    v373 = v273;
    v275 = v274;
    v374 = swift_slowAlloc();
    v386 = v374;
    *v275 = 136315138;
    v272(v372, v91, v114);
    v276 = v271;
    v277 = sub_2CE2A0();
    v278 = v114;
    v280 = v279;
    (*(v376 + 8))(v91, v278);
    v281 = sub_3F08(v277, v280, &v386);

    v282 = v275;
    *(v275 + 4) = v281;
    v283 = v373;
    _os_log_impl(&dword_0, v373, v378, "Parse#getSiriKitIntent found .NLv3IntentPlusServerConversion %s", v282, 0xCu);
    sub_306C(v374);

    (*(v276 + 8))(v338, v382);
  }

  else
  {

    (*(v376 + 8))(v91, v114);
    (*(v271 + 8))(v338, v118);
  }

  v321 = sub_2CA7D0();

  sub_306C(&v387);
  (*(v375 + 8))(v95, v28);
  return v321;
}

void sub_11B930(void *a1, NSObject *a2)
{
  v4 = sub_2CE000();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v9 = sub_3ED0(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v8, v9, v4);
  v10 = a1;
  v11 = sub_2CDFE0();
  v12 = sub_2CE670();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_0, v11, v12, "Parse#getSiriKitIntent returning intent: %@", v13, 0xCu);
    sub_30B8(v14, &unk_34FC00, &unk_2D0150);
  }

  (*(v5 + 8))(v8, v4);
  dispatch_group_leave(a2);
}

uint64_t sub_11BB54(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v48 = a6;
  v47 = a5;
  v46 = a4;
  v44 = a3;
  v45 = a2;
  v7 = sub_2CD4C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v42 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v43 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v42 - v21;
  __chkstk_darwin(v20);
  v24 = &v42 - v23;
  v52[3] = type metadata accessor for AudioNLv3Intent();
  v52[4] = sub_11C944(&qword_34F600, type metadata accessor for AudioNLv3Intent);
  v25 = sub_F390(v52);
  sub_11C8D4(a1, v25);
  sub_2CD840();
  (*(v8 + 104))(v22, enum case for CommonAudio.Verb.like(_:), v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v26 = *(v12 + 56);
  sub_F7598(v24, v15);
  sub_F7598(v22, &v15[v26]);
  v27 = *(v8 + 48);
  if (v27(v15, 1, v7) == 1)
  {
    sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
    v28 = v27(&v15[v26], 1, v7);
    v29 = v48;
    if (v28 == 1)
    {
      sub_30B8(v15, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_F7598(v15, v43);
  if (v27(&v15[v26], 1, v7) == 1)
  {
    sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
    (*(v8 + 8))(v43, v7);
    v29 = v48;
LABEL_6:
    sub_30B8(v15, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_8;
  }

  v30 = &v15[v26];
  v31 = v42;
  (*(v8 + 32))(v42, v30, v7);
  sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v32 = v43;
  sub_2CE250();
  v33 = *(v8 + 8);
  v33(v31, v7);
  sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
  v33(v32, v7);
  sub_30B8(v15, &qword_34D6B8, &qword_2D15B0);
  v29 = v48;
LABEL_8:
  v34 = [v29 backingStore];
  objc_opt_self();
  v35 = swift_dynamicCastObjCClass();
  if (v35)
  {
    [v35 setAffinityType:INMediaAffinityTypeGetBackingType()];
  }

  v36 = v45;
  v37 = v45[4];
  sub_35E0(v45, v45[3]);
  sub_EEAC(v44, v51);
  sub_EEAC(v36, v50);
  sub_EEAC(v52, v49);
  v38 = swift_allocObject();
  v39 = v47;
  v38[2] = v46;
  v38[3] = v39;
  sub_F338(v51, (v38 + 4));
  sub_F338(v50, (v38 + 9));
  sub_F338(v49, (v38 + 14));
  v38[19] = v29;

  v40 = v29;
  sub_2CC2F0();

  return sub_306C(v52);
}

uint64_t sub_11C170(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v47 = a6;
  v46 = a5;
  v45 = a4;
  v43 = a3;
  v44 = a2;
  v7 = sub_2CD4C0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v41 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20410(&qword_34D6B0, &unk_2D4FC0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = sub_20410(&qword_34D6B8, &qword_2D15B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v42 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v41 - v21;
  __chkstk_darwin(v20);
  v24 = &v41 - v23;
  v51[3] = sub_2CD700();
  v51[4] = &protocol witness table for AudioUsoIntent;
  v51[0] = a1;

  sub_2CD840();
  (*(v8 + 104))(v22, enum case for CommonAudio.Verb.like(_:), v7);
  (*(v8 + 56))(v22, 0, 1, v7);
  v25 = *(v12 + 56);
  sub_F7598(v24, v15);
  sub_F7598(v22, &v15[v25]);
  v26 = *(v8 + 48);
  if (v26(v15, 1, v7) == 1)
  {
    sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
    v27 = v26(&v15[v25], 1, v7);
    v28 = v47;
    if (v27 == 1)
    {
      sub_30B8(v15, &qword_34D6B8, &qword_2D15B0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_F7598(v15, v42);
  if (v26(&v15[v25], 1, v7) == 1)
  {
    sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
    sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
    (*(v8 + 8))(v42, v7);
    v28 = v47;
LABEL_6:
    sub_30B8(v15, &qword_34D6B0, &unk_2D4FC0);
    goto LABEL_8;
  }

  v29 = &v15[v25];
  v30 = v41;
  (*(v8 + 32))(v41, v29, v7);
  sub_11C944(&qword_34D708, &type metadata accessor for CommonAudio.Verb);
  v31 = v42;
  sub_2CE250();
  v32 = *(v8 + 8);
  v32(v30, v7);
  sub_30B8(v22, &qword_34D6B8, &qword_2D15B0);
  sub_30B8(v24, &qword_34D6B8, &qword_2D15B0);
  v32(v31, v7);
  sub_30B8(v15, &qword_34D6B8, &qword_2D15B0);
  v28 = v47;
LABEL_8:
  v33 = [v28 backingStore];
  objc_opt_self();
  v34 = swift_dynamicCastObjCClass();
  if (v34)
  {
    [v34 setAffinityType:INMediaAffinityTypeGetBackingType()];
  }

  v35 = v44;
  v36 = v44[4];
  sub_35E0(v44, v44[3]);
  sub_EEAC(v43, v50);
  sub_EEAC(v35, v49);
  sub_EEAC(v51, v48);
  v37 = swift_allocObject();
  v38 = v46;
  v37[2] = v45;
  v37[3] = v38;
  sub_F338(v50, (v37 + 4));
  sub_F338(v49, (v37 + 9));
  sub_F338(v48, (v37 + 14));
  v37[19] = v28;

  v39 = v28;
  sub_2CC2F0();

  return sub_306C(v51);
}

id sub_11C750(uint64_t a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *(a6 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15);
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = swift_allocObject();
  *(v17 + 16) = a4;
  *(v17 + 24) = v16;
  v18 = a4;
  v19 = v16;
  sub_113174(v15, a2, a3, sub_11C9E8, v17, v18, a6, a7);

  sub_2CE960();

  v20 = *(v12 + 8);
  v21 = v18;
  v20(v15, a6);
  return v21;
}

uint64_t sub_11C8D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioNLv3Intent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_11C944(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_11C98C()
{
  v1 = *(v0 + 24);

  sub_306C((v0 + 32));
  sub_306C((v0 + 72));
  sub_306C((v0 + 112));

  return _swift_deallocObject(v0, 160);
}

uint64_t sub_11C9EC()
{
  v0 = sub_2CE990();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2CE180();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2CE170();
  sub_2CE980();
  v10 = sub_2CBA00();
  (*(v1 + 8))(v4, v0);
  result = (*(v6 + 8))(v9, v5);
  qword_351740 = v10;
  return result;
}

uint64_t sub_11CB84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = swift_allocObject();
  v10[2] = sub_CEEA8;
  v10[3] = v9;
  v10[4] = a6;

  sub_20410(&qword_3519E8, &qword_2D49F0);
  sub_2CB710();
}

uint64_t sub_11CCA8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = sub_20410(&qword_3519E8, &qword_2D49F0);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = (&v23 - v12);
  sub_F3F4(a1, &v23 - v12, &qword_3519E8, &qword_2D49F0);
  v14 = sub_20410(&qword_3519F0, &qword_2D49F8);
  v15 = *(*(v14 - 8) + 48);
  if (v15(v13, 1, v14) == 1)
  {
    sub_30B8(v13, &qword_3519E8, &qword_2D49F0);
    v16 = 0;
  }

  else
  {
    v16 = *v13;
    v17 = v13[1];

    sub_30B8(v13 + *(v14 + 64), &unk_356F60, qword_2D4A00);
  }

  swift_beginAccess();
  v18 = *(a4 + 16);
  *(a4 + 16) = v16;

  sub_F3F4(a1, v11, &qword_3519E8, &qword_2D49F0);
  if (v15(v11, 1, v14) == 1)
  {
    sub_30B8(v11, &qword_3519E8, &qword_2D49F0);
    v19 = 0;
  }

  else
  {

    v19 = *(v11 + 1);
    sub_30B8(&v11[*(v14 + 64)], &unk_356F60, qword_2D4A00);
  }

  v20 = *(a4 + 24);
  *(a4 + 24) = v19;

  return a2(v21);
}

void sub_11CED8(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v11 = *a1;
  v10 = a1[1];
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v10;

  v13 = a6;

  sub_1220F8(a3, a4, sub_CEEA8, v12, a5, v13);
}

uint64_t sub_11CFB4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;

  sub_123808(sub_CEEA8, v6, a3);
}

uint64_t sub_11D050(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v7 = *(a4 + 48);
  *(a4 + 48) = a1;
  v8 = a1;

  return a2();
}

uint64_t sub_11D0C0(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v9 + 24) = v8;
  v10 = sub_35E0((a2 + 24), *(a2 + 48));
  v11 = swift_allocObject();
  v11[2] = sub_CE4A8;
  v11[3] = v9;
  v11[4] = a4;
  v12 = *v10;

  sub_204218(a3, sub_12447C, v11);
}

uint64_t sub_11D1A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = *(a5 + 64);
  *(a5 + 56) = a1;
  *(a5 + 64) = a2;

  return a3(v10);
}

void sub_11D224(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, void *a8, void (*a9)(uint64_t, uint64_t), void (*a10)(char *, uint64_t), char a11)
{
  v118 = a7;
  v119 = a8;
  v113 = a5;
  v114 = a6;
  v112 = a4;
  v115 = a3;
  v13 = sub_2CE000();
  v14 = *(v13 - 8);
  v15 = v14[8];
  v16 = __chkstk_darwin(v13);
  v116 = v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v110[0] = v110 - v19;
  v20 = __chkstk_darwin(v18);
  v117 = (v110 - v21);
  v22 = __chkstk_darwin(v20);
  v24 = v110 - v23;
  __chkstk_darwin(v22);
  v26 = v110 - v25;
  if (qword_34BF58 != -1)
  {
    swift_once();
  }

  v27 = sub_3ED0(v13, static Logger.default);
  swift_beginAccess();
  v28 = v14[2];
  v121 = v14 + 2;
  v122 = v27;
  v120 = v28;
  v28(v26, v27, v13);
  v29 = sub_2CDFE0();
  v30 = sub_2CE670();
  v31 = os_log_type_enabled(v29, v30);
  v124 = a1;
  if (v31)
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_0, v29, v30, "PlayMediaViewProvider#makeViews building MediaRemote section...", v32, 2u);
    a1 = v124;
  }

  v34 = v14[1];
  v33 = v14 + 1;
  v123 = v34;
  v34(v26, v13);
  v111 = [objc_allocWithZone(SACardSnippet) init];
  swift_beginAccess();
  v35 = a1[8];
  v36 = _swiftEmptyArrayStorage;
  if (v35)
  {
    v110[1] = v33;
    v37 = a1[7];
    v120(v24, v122, v13);

    v38 = sub_2CDFE0();
    v39 = v13;
    v40 = sub_2CE670();
    if (os_log_type_enabled(v38, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v129 = v42;
      *v41 = 136315138;
      v43 = sub_3F08(v37, v35, &v129);

      *(v41 + 4) = v43;
      _os_log_impl(&dword_0, v38, v40, "PlayMediaViewProvider#makeViews removing snippet from sections since we have an uiAssertion: %s ", v41, 0xCu);
      sub_306C(v42);
      v36 = _swiftEmptyArrayStorage;
    }

    else
    {
    }

    v123(v24, v39);
    v13 = v39;
    swift_beginAccess();
    v44 = *(a2 + 16);
    *(a2 + 16) = _swiftEmptyArrayStorage;

    a1 = v124;
  }

  v45 = sub_120630();
  swift_beginAccess();
  if (!a1[4])
  {
    swift_beginAccess();
    v50 = *(a2 + 16);
    if (v50 >> 62)
    {
      if (v50 < 0)
      {
        v105 = *(a2 + 16);
      }

      sub_334A0(0, &unk_351910, SFCardSection_ptr);

      v52 = sub_2CED90();
    }

    else
    {
      v51 = *(a2 + 16);
      swift_bridgeObjectRetain_n();
      sub_2CEEB0();
      sub_334A0(0, &unk_351910, SFCardSection_ptr);
      v52 = v50;
    }

    swift_beginAccess();
    v53 = a1[2];
    v128 = v53;
    v127 = _swiftEmptyArrayStorage;
    v54 = v53;
    if (v53)
    {
      v55 = v54;
      sub_2CE3F0();
      if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v127 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v108 = *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8));
        sub_2CE430();
      }

      sub_2CE460();
      v36 = v127;
    }

    sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
    sub_30B8(&v128, &unk_351920, &unk_2D4998);
    v127 = v52;
    sub_80E40(v36);
    v49 = sub_2CE650();

    swift_beginAccess();
    if (!a1[3])
    {
      goto LABEL_30;
    }

    goto LABEL_22;
  }

  if ((v45 & 1) == 0)
  {
    swift_beginAccess();
    v58 = *(a2 + 16);
    if (v58 >> 62)
    {
      if (v58 < 0)
      {
        v107 = *(a2 + 16);
      }

      sub_334A0(0, &unk_351910, SFCardSection_ptr);

      v60 = sub_2CED90();
    }

    else
    {
      v59 = *(a2 + 16);
      swift_bridgeObjectRetain_n();
      sub_2CEEB0();
      sub_334A0(0, &unk_351910, SFCardSection_ptr);
      v60 = v58;
    }

    swift_beginAccess();
    v61 = a1[4];
    v125 = v61;
    v127 = _swiftEmptyArrayStorage;
    v62 = v61;
    if (v61)
    {
      v63 = v62;
      sub_2CE3F0();
      if (*(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v127 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v109 = *(&dword_10 + (v127 & 0xFFFFFFFFFFFFFF8));
        sub_2CE430();
      }

      sub_2CE460();
      v36 = v127;
    }

    sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
    sub_30B8(&v125, &unk_351920, &unk_2D4998);
    v127 = v60;
    sub_80E40(v36);
    v49 = sub_2CE650();

    swift_beginAccess();
    if (!a1[5])
    {
LABEL_30:
      v64 = v49;
      v57.super.isa = 0;
      goto LABEL_31;
    }

LABEL_22:
    v56 = v49;

    sub_20410(&unk_351990, &unk_2D49A8);
    v57.super.isa = sub_2CE400().super.isa;

LABEL_31:
    [v49 setReferencedCommands:v57.super.isa];

    goto LABEL_32;
  }

  swift_beginAccess();
  v46 = *(a2 + 16);
  if (v46 >> 62)
  {
    if (v46 < 0)
    {
      v106 = *(a2 + 16);
    }

    sub_334A0(0, &unk_351910, SFCardSection_ptr);

    sub_2CED90();
  }

  else
  {
    v47 = *(a2 + 16);
    swift_bridgeObjectRetain_n();
    sub_2CEEB0();
    sub_334A0(0, &unk_351910, SFCardSection_ptr);
  }

  sub_334A0(0, &qword_3500B8, SACardSnippet_ptr);
  v48 = sub_2CE650();

  v49 = v48;
LABEL_32:
  sub_2CE9D0();
  if (qword_34BF98 != -1)
  {
    swift_once();
  }

  sub_2CDFA0();
  swift_beginAccess();
  v65 = v13;
  if (a1[8])
  {
    v66 = a1[7];
    v67 = v49;

    v68 = sub_2CE260();
  }

  else
  {
    v69 = v49;
    v68 = 0;
  }

  [v49 setCorrespondingSessionID:v68];

  v70 = [objc_allocWithZone(SAUISash) init];
  v71 = sub_2CE260();
  [v70 setApplicationBundleIdentifier:v71];

  v114 = v70;
  [v49 setSash:v70];

  sub_20410(&unk_351900, &unk_2D0960);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_2D0770;
  *(v72 + 32) = v49;
  v126 = v72;
  sub_123A10(v118, v119);
  if (v73)
  {
    v74 = v73;

    v120(v117, v122, v13);
    v75 = sub_2CDFE0();
    v76 = sub_2CE670();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_0, v75, v76, "PlayMediaViewProvider#makeViews adding broadcast radio button to views.", v77, 2u);
    }

    v123(v117, v13);
    v78 = v124;
    swift_beginAccess();
    if (v78[8])
    {
      v79 = v78[7];
      v80 = v74;

      v81 = sub_2CE260();
    }

    else
    {
      v82 = v74;
      v81 = 0;
    }

    [v74 setCorrespondingSessionID:v81];

    v83 = sub_2CE260();
    [v74 setViewId:v83];

    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_2D48E0;
    *(v72 + 32) = v74;
    *(v72 + 40) = v49;
    v84 = v49;

    v126 = v72;
  }

  v117 = a9;
  v85 = v124;
  swift_beginAccess();
  v86 = v85[6];
  v87 = v115;
  if (v86)
  {
    v88 = v86;
    sub_2CE3F0();
    if (*(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v126 & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v104 = *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8));
      sub_2CE430();
    }

    sub_2CE460();

    v72 = v126;
  }

  v89 = v87[27];
  sub_35E0(v87 + 23, v87[26]);
  if (sub_2CC430())
  {
    v90 = v87[2];
    type metadata accessor for PlayMediaDialogProvider();
    v91 = swift_dynamicCastClass();
    if (v91)
    {
      v92 = v91;
      v93 = v49;

      sub_1A4A6C(a11 & 1, v118, v119, v92, v93, v117, a10, v72);

      swift_bridgeObjectRelease_n();
    }

    else
    {

      v97 = v110[0];
      v120(v110[0], v122, v65);
      v98 = sub_2CDFE0();
      v99 = sub_2CE680();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_0, v98, v99, "PlayMediaViewProvider#makeViews dialogProvider not instance of PlayMediaDialogProvider", v100, 2u);
      }

      v123(v97, v65);
      v101 = sub_2CB850();
      sub_124424();
      v102 = swift_allocError();
      (*(*(v101 - 8) + 104))(v103, enum case for PlaybackCode.ceGE66(_:), v101);
      v117(v102, 1);
    }
  }

  else
  {
    v120(v116, v122, v65);
    v94 = sub_2CDFE0();
    v95 = sub_2CE660();
    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      *v96 = 0;
      _os_log_impl(&dword_0, v94, v95, "PlayMediaViewProvider#makeViews pym not enabled, returning snippet", v96, 2u);
    }

    v123(v116, v65);
    v117(v72, 0);
  }
}

uint64_t sub_11E134(uint64_t a1, void *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5)
{
  v153 = a5;
  v154 = a4;
  v155 = a3;
  v147 = a2;
  v6 = sub_2CE000();
  v156 = *(v6 - 8);
  v157 = v6;
  v7 = *(v156 + 64);
  v8 = __chkstk_darwin(v6);
  v151 = v136 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = v136 - v11;
  __chkstk_darwin(v10);
  v148 = v136 - v13;
  v152 = sub_20410(&qword_34C6E8, &unk_2D0FF0);
  v14 = *(*(v152 - 8) + 64);
  v15 = __chkstk_darwin(v152);
  v146 = v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v145 = v136 - v18;
  v19 = __chkstk_darwin(v17);
  v149 = v136 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = v136 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = v136 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = v136 - v28;
  __chkstk_darwin(v27);
  v31 = v136 - v30;
  v32 = sub_20410(&unk_3519A0, &qword_2D0980);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = (v136 - v34);
  sub_F3F4(a1, v136 - v34, &unk_3519A0, &qword_2D0980);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v35;
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v37 = v157;
    v38 = sub_3ED0(v157, static Logger.default);
    swift_beginAccess();
    v39 = v156;
    (*(v156 + 16))(v12, v38, v37);
    swift_errorRetain();
    v40 = sub_2CDFE0();
    v41 = sub_2CE680();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v159 = v43;
      *v42 = 136446210;
      swift_getErrorValue();
      v44 = sub_2CEEF0();
      v46 = sub_3F08(v44, v45, &v159);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_0, v40, v41, "PlayMediaViewProvider#makeViews pym templating evaluation failed: %{public}s", v42, 0xCu);
      sub_306C(v43);
    }

    (*(v39 + 8))(v12, v37);
    v155(v153, 0);
  }

  else
  {
    sub_24BE0(v35, v31);
    if (qword_34BF58 != -1)
    {
      swift_once();
    }

    v48 = v157;
    v49 = sub_3ED0(v157, static Logger.default);
    swift_beginAccess();
    v50 = v156;
    v51 = *(v156 + 16);
    v52 = v148;
    v144 = v49;
    v143 = v156 + 16;
    v142 = v51;
    v51(v148, v49, v48);
    sub_F3F4(v31, v29, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v31, v26, &qword_34C6E8, &unk_2D0FF0);
    sub_F3F4(v31, v23, &qword_34C6E8, &unk_2D0FF0);
    v53 = sub_2CDFE0();
    v54 = sub_2CE690();
    v55 = os_log_type_enabled(v53, v54);
    v150 = v31;
    if (v55)
    {
      v56 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v158[0] = v141;
      *v56 = 136446978;
      v57 = sub_2CCC90();
      v140 = v53;
      v59 = sub_3F08(v57, v58, v158);
      v139 = v54;
      v60 = v59;

      *(v56 + 4) = v60;
      *(v56 + 12) = 2082;
      v61 = v149;
      sub_F3F4(v29, v149, &qword_34C6E8, &unk_2D0FF0);
      v62 = v152;

      v63 = sub_2CA0D0();
      v65 = v64;
      v138 = v23;
      sub_30B8(v29, &qword_34C6E8, &unk_2D0FF0);
      v66 = sub_2CA130();
      v67 = *(v66 - 8);
      v68 = *(v67 + 8);
      v69 = v67 + 8;
      v68(v61, v66);
      v136[1] = v69;
      v137 = v68;
      v70 = sub_3F08(v63, v65, v158);

      *(v56 + 14) = v70;
      *(v56 + 22) = 2082;
      sub_F3F4(v26, v61, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA100();
      v68(v61, v66);
      v71 = sub_2CE420();
      v73 = v72;

      v74 = v26;
      v75 = v62;
      sub_30B8(v74, &qword_34C6E8, &unk_2D0FF0);
      v76 = sub_3F08(v71, v73, v158);

      *(v56 + 24) = v76;
      *(v56 + 32) = 2082;
      v77 = v138;
      sub_F3F4(v138, v61, &qword_34C6E8, &unk_2D0FF0);

      sub_2CA110();
      v137(v61, v66);
      v31 = v150;
      v78 = sub_2CE420();
      v80 = v79;

      sub_30B8(v77, &qword_34C6E8, &unk_2D0FF0);
      v81 = sub_3F08(v78, v80, v158);

      *(v56 + 34) = v81;
      v82 = v140;
      _os_log_impl(&dword_0, v140, v139, "PlayMediaViewProvider#makeViews %{public}s pym templating evaluation: dialogId:%{public}s, print: %{public}s, speak: %{public}s", v56, 0x2Au);
      swift_arrayDestroy();

      v83 = v148;
      v148 = *(v156 + 8);
      (v148)(v83, v157);
    }

    else
    {

      sub_30B8(v23, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v26, &qword_34C6E8, &unk_2D0FF0);
      sub_30B8(v29, &qword_34C6E8, &unk_2D0FF0);
      v148 = *(v50 + 8);
      (v148)(v52, v48);
      v75 = v152;
    }

    v84 = v145;
    sub_F3F4(v31, v145, &qword_34C6E8, &unk_2D0FF0);

    v85 = sub_2CA100();
    v86 = sub_2CA130();
    v87 = *(v86 - 8);
    v88 = *(v87 + 8);
    v89 = v87 + 8;
    v88(v84, v86);
    v90 = (v85 + 40);
    v91 = *(v85 + 16) + 1;
    while (--v91)
    {
      v93 = *(v90 - 1);
      v92 = *v90;
      v90 += 2;
      v94 = HIBYTE(v92) & 0xF;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v94 = v93 & 0xFFFFFFFFFFFFLL;
      }

      if (v94)
      {

        goto LABEL_19;
      }
    }

    v92 = 0;
LABEL_19:

    v95 = v146;
    sub_F3F4(v31, v146, &qword_34C6E8, &unk_2D0FF0);

    v96 = sub_2CA110();
    v146 = v88;
    v88(v95, v86);
    v97 = (v96 + 40);
    v98 = *(v96 + 16) + 1;
    v141 = v89;
    while (--v98)
    {
      v99 = *(v97 - 1);
      v100 = *v97;
      v97 += 2;
      v101 = HIBYTE(v100) & 0xF;
      if ((v100 & 0x2000000000000000) == 0)
      {
        v101 = v99 & 0xFFFFFFFFFFFFLL;
      }

      if (v101)
      {

        goto LABEL_26;
      }
    }

    v100 = 0;
LABEL_26:

    v102 = [objc_allocWithZone(SADialogText) init];
    if (v92)
    {

      v103 = sub_2CE260();
    }

    else
    {
      v103 = 0;
    }

    [v102 setText:v103];

    v104 = v100 != 0;
    if (v100)
    {

      v105 = sub_2CE260();
    }

    else
    {
      v105 = 0;
    }

    [v102 setSpeakableTextOverride:v105];

    v106 = [objc_allocWithZone(SADialog) init];
    [v106 setCanUseServerTTS:1];
    sub_2CBC60();
    sub_35E0(v158, v158[3]);
    v107 = sub_2CBE50();
    sub_306C(v158);
    [v106 setPrintedOnly:(v107 & 1) == 0];

    if (v92)
    {

      v104 = 0;
    }

    v108 = v155;
    v109 = v157;
    [v106 setSpokenOnly:v104];
    v110 = v102;
    [v106 setCaption:v110];
    [v106 setContent:v110];

    v111 = v149;
    sub_F3F4(v150, v149, &qword_34C6E8, &unk_2D0FF0);

    sub_2CA0D0();
    v112 = sub_2CE260();

    (v146)(v111, v86);
    [v106 setDialogIdentifier:v112];

    [v147 setDialog:v106];
    v113 = v151;
    v142(v151, v144, v109);
    v114 = v106;
    v115 = sub_2CDFE0();
    v116 = sub_2CE690();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v158[0] = v119;
      *v117 = 136447490;
      v120 = sub_2CCC90();
      v122 = sub_3F08(v120, v121, v158);

      *(v117 + 4) = v122;
      *(v117 + 12) = 1026;
      v123 = [v114 printedOnly];

      *(v117 + 14) = v123;
      *(v117 + 18) = 1026;
      v124 = [v114 spokenOnly];

      *(v117 + 20) = v124;
      *(v117 + 24) = 2114;
      v125 = [v114 caption];
      *(v117 + 26) = v125;
      *v118 = v125;
      *(v117 + 34) = 2114;
      v126 = [v114 content];
      *(v117 + 36) = v126;
      v118[1] = v126;
      *(v117 + 44) = 2114;
      v127 = [v114 dialogIdentifier];
      if (v127)
      {
        v128 = v127;
        v129 = sub_2CE270();
        v131 = v130;

        sub_10C40();
        swift_allocError();
        *v132 = v129;
        v132[1] = v131;
        v108 = v155;
        v127 = _swift_stdlib_bridgeErrorToNSError();
        v133 = v127;
      }

      else
      {
        v133 = 0;
      }

      *(v117 + 46) = v127;
      v118[2] = v133;
      _os_log_impl(&dword_0, v115, v116, "PlayMediaViewProvider#makeViews %{public}s pym built and set SADialog printedOnly:%{BOOL,public}d, spokenOnly:%{BOOL,public}d, caption:%{public}@, content:%{public}@, dialogIdentifier:%{public}@", v117, 0x36u);
      sub_20410(&unk_34FC00, &unk_2D0150);
      swift_arrayDestroy();

      sub_306C(v119);

      v135 = v157;
      v134 = v151;
    }

    else
    {

      v134 = v113;
      v135 = v109;
    }

    (v148)(v134, v135);
    v108(v153, 0);

    return sub_30B8(v150, &qword_34C6E8, &unk_2D0FF0);
  }
}