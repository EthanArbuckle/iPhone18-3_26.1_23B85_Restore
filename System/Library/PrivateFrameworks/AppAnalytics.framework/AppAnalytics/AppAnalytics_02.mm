uint64_t AccessTracker.push<A>(data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a4;
  v27 = a5;
  v24 = a2;
  v25 = a3;
  v23 = a1;
  v9 = type metadata accessor for PushEvent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v18 = v20;
    (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
    v21 = v20;
    LOBYTE(v20) = sub_1B6AB9110();
    result = (*(v15 + 8))(v18, v14);
    if (v20)
    {
      sub_1B698D998(v23, a6, a7, v13);
      sub_1B699ADC4(v13, v24, v25, v26, v27);

      return (*(v10 + 8))(v13, v9);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B69AA650(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v6 = OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider;
  v7 = *(a1 + 88);

  return sub_1B69AA6C4(v7, a1 + v6, a1, a2, a3);
}

uint64_t objectdestroy_11Tm(void (*a1)(void))
{
  v3 = *(v1 + 16);

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

uint64_t Tracker.chain(name:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v40 = a3;
  v41 = a4;
  v38 = a1;
  v39 = a2;
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v4 + 88);
  v11 = *(v4 + 96);
  v37 = *(v4 + 201);
  v12 = *(v4 + 104);
  v13 = *(v4 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);

  os_unfair_lock_lock_with_options();
  v16 = *(v5 + 184);
  swift_beginAccess();
  v17 = *(v5 + 176);
  v43[0] = v16;

  sub_1B69979DC(v17);
  v36 = v43[0];
  os_unfair_lock_unlock(*(v13 + 16));
  v42 = *(v5 + 208);
  sub_1B699A32C(v5 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v9, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v5 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager, v43);
  v18 = *(v5 + 32);
  v19 = type metadata accessor for Tracker(0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  *(v22 + 80) = 0;
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;
  swift_unknownObjectWeakInit();
  v23 = MEMORY[0x1E69E7CC8];
  *(v22 + 112) = MEMORY[0x1E69E7CC8];
  *(v22 + 120) = v23;
  *(v22 + 128) = v23;
  *(v22 + 136) = v23;
  *(v22 + 144) = v23;
  v24 = MEMORY[0x1E69E7CC0];
  *(v22 + 160) = v23;
  *(v22 + 168) = v24;
  *(v22 + 176) = v24;
  *(v22 + 192) = v24;
  *(v22 + 200) = 0;
  v25 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  *v27 = 0;
  *(v26 + 24) = 0x10000;
  *(v22 + v25) = v26;
  v28 = v39;
  *(v22 + 16) = v38;
  *(v22 + 24) = v28;
  *(v22 + 88) = v10;
  *(v22 + 96) = v11;
  *(v22 + 201) = v37;
  *(v22 + 104) = v12;
  *(v22 + 152) = v5;
  swift_unknownObjectWeakLoadStrong();
  *(v22 + 80) = *(v5 + 80);
  swift_unknownObjectWeakAssign();

  v29 = v10;
  v30 = v11;

  swift_unknownObjectRelease();
  *(v22 + 184) = v36;
  v31 = v41;
  *(v22 + 40) = v40;
  *(v22 + 48) = v31;
  v32 = *(v22 + 64);
  *(v22 + 56) = 0;
  *(v22 + 64) = 0;

  *(v22 + 208) = v42;
  sub_1B699A32C(v9, v22 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v43, v22 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v22 + 32) = v18;
  swift_unknownObjectRetain();
  v33 = v18;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v34 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE1C, v34);

    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1B6984D38(v9, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v43);
    sub_1B6984D38(v9, type metadata accessor for DiagnosticsConsentProvider);
  }

  return v22;
}

uint64_t sub_1B69AAAE4()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t Tracker.whenSession(block:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(v2 + 96);
  v8 = *(v3 + 88);
  v9 = swift_allocObject();
  v9[2] = v3;
  v9[3] = sub_1B6A560A8;
  v9[4] = v6;

  sub_1B69877A4(v8, sub_1B6A0ABEC, v9);
}

uint64_t sub_1B69AAC10()
{
  v1 = v0;
  v122 = *MEMORY[0x1E69E9840];
  v2 = v0[54];
  v3 = v0[55];
  v114 = v0[51];
  v116 = v0[50];
  v117 = v0[52];
  v5 = v0[46];
  v4 = v0[47];
  v6 = v0[45];
  v7 = v0[42];
  v8 = v1[41];
  v119 = v1[38];
  v112 = v1[37];
  v10 = v1[28];
  v9 = v1[29];
  v11 = v1[27];
  sub_1B6AB8800();

  sub_1B6AB8B50();
  v1[6] = v5;
  v1[7] = v4;
  v110 = *MEMORY[0x1E6968F68];
  v111 = *(v10 + 104);
  v111(v9);
  sub_1B69830D8();

  sub_1B6AB8BA0();
  v12 = v9;
  v13 = *(v10 + 8);
  v13(v12, v11);

  v14 = *(v119 + 8);
  v14(v7, v112);
  sub_1B6AB8C90();
  v15 = v1[52];
  if (v116)
  {
    v16 = v1[51];
    v17 = v1[44];
    v18 = v1[45];
    v19 = v14;
    v20 = v1[43];
    v21 = v1[41];
    v22 = v1[37];
    sub_1B6993C94(v1[48], v1[49]);
    sub_1B6993C94(v16, v15);
    v19(v21, v22);
    (*(v17 + 8))(v18, v20);
    v23 = v1[45];
    v25 = v1[41];
    v24 = v1[42];
    v27 = v1[39];
    v26 = v1[40];
    v28 = v1[33];
    v29 = v1[31];
    v30 = v1[29];
    (*(v1[35] + 8))(v1[36], v1[34]);

    v31 = v1[1];
    v32 = *MEMORY[0x1E69E9840];
    goto LABEL_20;
  }

  v109 = v13;
  sub_1B69990B4();
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1B6ABF500;
  v34 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    v35 = 0;
    if (v34 != 2)
    {
      goto LABEL_12;
    }

    v36 = *(v1[51] + 16);
    v37 = *(v1[51] + 24);
    v38 = __OFSUB__(v37, v36);
    v35 = v37 - v36;
    if (!v38)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    v39 = *(v1 + 102);
    v40 = *(v1 + 103);
    v38 = __OFSUB__(v40, v39);
    LODWORD(v35) = v40 - v39;
    if (v38)
    {
      __break(1u);
    }

    v35 = v35;
    goto LABEL_12;
  }

  if (v34)
  {
    goto LABEL_10;
  }

  v35 = BYTE6(v15);
LABEL_12:
  v41 = v14;
  v42 = v1[41];
  v43 = v1[37];
  v44 = v1[22];
  v45 = MEMORY[0x1E69E65A8];
  *(v33 + 56) = MEMORY[0x1E69E6530];
  *(v33 + 64) = v45;
  *(v33 + 32) = v35;
  v46 = v33;
  sub_1B69A84B0(&qword_1EDBC8838, MEMORY[0x1E6968FB0]);
  v47 = sub_1B6ABA080();
  v49 = v48;
  v46[12] = MEMORY[0x1E69E6158];
  v108 = sub_1B698CEC0();
  v46[13] = v108;
  v46[9] = v47;
  v46[10] = v49;
  sub_1B6AB9900();
  sub_1B6AB8F70();

  if (qword_1EDBC8248 != -1)
  {
    swift_once();
  }

  v50 = v1[45];
  v51 = v1[41];
  v52 = v1[24];
  v53 = qword_1EDBC8250;
  v54 = sub_1B6AB87A0();
  v55 = sub_1B6AB8B20();
  v56 = [v53 uploadTaskWithRequest:v54 fromFile:v55];

  [v56 resume];
  if (v52)
  {
    v57 = v1[42];
    v58 = v1[40];
    v59 = v1[37];
    v60 = v1[29];
    v61 = v1[27];
    v107 = v41;
    v63 = v1[23];
    v62 = v1[24];
    sub_1B6AB8B50();
    v1[8] = v63;
    v1[9] = v62;
    v41 = v107;
    (v111)(v60, *MEMORY[0x1E6968F58], v61);
    sub_1B6AB8BA0();
    v109(v60, v61);
    v107(v57, v59);
    v64 = [objc_opt_self() defaultManager];
    v65 = sub_1B6AB8B20();
    v1[14] = 0;
    LOBYTE(v58) = [v64 createDirectoryAtURL:v65 withIntermediateDirectories:1 attributes:0 error:v1 + 14];

    v66 = v1[14];
    if (v58)
    {
      v105 = v1[51];
      v106 = v1[52];
      v67 = v1[47];
      v68 = v1[39];
      v69 = v1[40];
      v70 = v1[29];
      v71 = v1[27];
      v1[12] = v1[46];
      v1[13] = v67;
      (v111)(v70, v110, v71);

      v72 = v66;
      sub_1B6AB8BA0();
      v109(v70, v71);

      sub_1B6AB8C90();
      v94 = v1[51];
      v95 = v1[52];
      v97 = v1[48];
      v96 = v1[49];
      v99 = v1[39];
      v98 = v1[40];
      v100 = v1[37];
      v101 = v1[22];
      v102 = swift_allocObject();
      *(v102 + 16) = xmmword_1B6ABD890;
      v103 = sub_1B6ABA080();
      *(v102 + 56) = MEMORY[0x1E69E6158];
      *(v102 + 64) = v108;
      *(v102 + 32) = v103;
      *(v102 + 40) = v104;
      sub_1B6AB9900();
      sub_1B6AB8F70();
      sub_1B6993C94(v97, v96);

      sub_1B6993C94(v94, v95);
      v41 = v107;
      v107(v99, v100);
      v107(v98, v100);
    }

    else
    {
      v75 = v66;
      v76 = sub_1B6AB8A70();

      swift_willThrow();
      v77 = v1[51];
      v120 = v1[52];
      v79 = v1[48];
      v78 = v1[49];
      v80 = v1[22];
      v107(v1[40], v1[37]);
      sub_1B6AB98E0();
      v81 = swift_allocObject();
      *(v81 + 16) = xmmword_1B6ABD890;
      v1[10] = 0;
      v1[11] = 0xE000000000000000;
      v1[15] = v76;
      sub_1B697ED90(0, &qword_1EDBCBB00);
      sub_1B6AB9DF0();
      v82 = v1[10];
      v83 = v1[11];
      *(v81 + 56) = MEMORY[0x1E69E6158];
      *(v81 + 64) = v108;
      *(v81 + 32) = v82;
      *(v81 + 40) = v83;
      sub_1B6AB8F70();
      sub_1B6993C94(v79, v78);

      sub_1B6993C94(v77, v120);
    }
  }

  else
  {
    v73 = v1[51];
    v74 = v1[52];
    sub_1B6993C94(v1[48], v1[49]);
    sub_1B6993C94(v73, v74);
  }

  v85 = v1[44];
  v84 = v1[45];
  v87 = v1[42];
  v86 = v1[43];
  v113 = v1[40];
  v115 = v1[39];
  v88 = v1[36];
  v90 = v1[34];
  v89 = v1[35];
  v91 = v1[33];
  v118 = v1[31];
  v121 = v1[29];
  v41(v1[41], v1[37]);
  (*(v85 + 8))(v84, v86);
  (*(v89 + 8))(v88, v90);

  v31 = v1[1];
  v92 = *MEMORY[0x1E69E9840];
LABEL_20:

  return v31();
}

uint64_t Tracker.chain(name:identifier:dynamicDataIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v45 = a5;
  v46 = a6;
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v6 + 88);
  v13 = *(v6 + 96);
  v40 = *(v6 + 201);
  v14 = *(v6 + 104);
  v15 = *(v6 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  os_unfair_lock_lock_with_options();
  v18 = *(v7 + 184);
  swift_beginAccess();
  v19 = *(v7 + 176);
  v48[0] = v18;

  sub_1B69979DC(v19);
  v39 = v48[0];
  os_unfair_lock_unlock(*(v15 + 16));
  v47 = *(v7 + 208);
  sub_1B699A32C(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v11, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v7 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager, v48);
  v20 = *(v7 + 32);
  v21 = type metadata accessor for Tracker(0);
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  v24 = swift_allocObject();
  *(v24 + 80) = 0;
  *(v24 + 56) = 0;
  *(v24 + 64) = 0;
  swift_unknownObjectWeakInit();
  v25 = MEMORY[0x1E69E7CC8];
  *(v24 + 112) = MEMORY[0x1E69E7CC8];
  *(v24 + 120) = v25;
  *(v24 + 128) = v25;
  *(v24 + 136) = v25;
  *(v24 + 144) = v25;
  v26 = MEMORY[0x1E69E7CC0];
  *(v24 + 160) = v25;
  *(v24 + 168) = v26;
  *(v24 + 176) = v26;
  *(v24 + 192) = v26;
  *(v24 + 200) = 0;
  v27 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v28 = swift_allocObject();
  v29 = swift_slowAlloc();
  *(v28 + 16) = v29;
  *v29 = 0;
  *(v28 + 24) = 0x10000;
  *(v24 + v27) = v28;
  v30 = v42;
  *(v24 + 16) = v41;
  *(v24 + 24) = v30;
  *(v24 + 88) = v12;
  *(v24 + 96) = v13;
  *(v24 + 201) = v40;
  *(v24 + 104) = v14;
  *(v24 + 152) = v7;
  swift_unknownObjectWeakLoadStrong();
  *(v24 + 80) = *(v7 + 80);
  swift_unknownObjectWeakAssign();

  v31 = v12;
  v32 = v13;

  swift_unknownObjectRelease();
  *(v24 + 184) = v39;
  v33 = v44;
  *(v24 + 40) = v43;
  *(v24 + 48) = v33;
  v34 = *(v24 + 64);
  v35 = v46;
  *(v24 + 56) = v45;
  *(v24 + 64) = v35;

  *(v24 + 208) = v47;
  sub_1B699A32C(v11, v24 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v48, v24 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v24 + 32) = v20;
  swift_unknownObjectRetain();
  v36 = v20;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v37 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v37);

    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1B6984D38(v11, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v48);
    sub_1B6984D38(v11, type metadata accessor for DiagnosticsConsentProvider);
  }

  return v24;
}

void sub_1B69AB940()
{
  if (!qword_1EDBC8980)
  {
    sub_1B69E8910(255, &qword_1EDBCCDA8);
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8980);
    }
  }
}

void sub_1B69AB9AC()
{
  if (!qword_1EDBC8028)
  {
    sub_1B69ABFCC(255, &qword_1EDBC8058, sub_1B69AB940, MEMORY[0x1E69E6720]);
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_1B6AB9D30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8028);
    }
  }
}

void *LazyEventProcessor.init(underlyingProcessorProvider:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  v2[2] = a1;
  v2[3] = a2;
  sub_1B69AB9AC();
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = 0;
  v2[4] = v3;
  return v2;
}

uint64_t AppSessionManager.hasTrackingConsent.getter()
{
  v1 = sub_1B6AB90C0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 32);
  sub_1B6AB90B0();
  sub_1B6AB9910();
  (*(v2 + 8))(v5, v1);
  return sub_1B6AB9010() & 1;
}

uint64_t sub_1B69ABBE4(const char *a1, uint64_t (*a2)(uint64_t))
{
  v4 = v2;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6AB8F90();
  __swift_project_value_buffer(v5, qword_1EDBCFDA8);
  v6 = sub_1B6AB8F80();
  v7 = sub_1B6AB9900();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B697C000, v6, v7, a1, v8, 2u);
    MEMORY[0x1B8C99550](v8, -1, -1);
  }

  v9 = *(v4 + OBJC_IVAR___AATrackingConsent_accessGroup);

  return a2(v9);
}

uint64_t Tracker.register<A>(_:block:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;
  v11 = swift_allocObject();
  v11[2] = a1;
  v11[3] = a5;
  v11[4] = sub_1B6A566D4;
  v11[5] = v10;

  sub_1B69ABEB0(0, 0, sub_1B6A579F0, v11, a4, a5);
}

{
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a5;
  v10[4] = a2;
  v10[5] = a3;

  sub_1B69ABEB0(0, 0, sub_1B6A566C8, v10, a4, a5);
}

uint64_t sub_1B69ABE70()
{
  v1 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B69ABEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v14 = *(v6 + 96);
  v15 = *(v7 + 88);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = v7;
  v16[5] = a1;
  v16[6] = a2;
  v16[7] = a3;
  v16[8] = a4;

  sub_1B69877A4(v15, sub_1B69C2F64, v16);
}

uint64_t sub_1B69ABF84()
{
  v1 = v0[4];

  v2 = v0[6];

  v3 = v0[8];

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

void sub_1B69ABFCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void Tracker.actionSequence.getter(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_lock_with_options();
  v6 = *(v1 + 184);
  swift_beginAccess();
  v7 = *(v1 + 176);

  sub_1B69979DC(v7);
  *a1 = v6;
  os_unfair_lock_unlock(*(v3 + 16));
}

uint64_t sub_1B69AC0DC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1B69AC0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = type metadata accessor for SessionObserverChange();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B699A32C(a2, v9, type metadata accessor for SessionObserverChange);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_7;
  }

  v11 = 0;
  if (EnumCaseMultiPayload == 2)
  {
    v11 = 3;
LABEL_7:
    sub_1B6984D38(v9, type metadata accessor for SessionObserverChange);
  }

  return a3(a1, v11);
}

uint64_t type metadata accessor for EventData()
{
  result = qword_1EDBCB6D0;
  if (!qword_1EDBCB6D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for TimedData()
{
  result = qword_1EDBCBBB0;
  if (!qword_1EDBCBBB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B69AC2BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDBCFDA0;
  *v9 = qword_1EDBCFDA0;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  LOBYTE(v10) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;

  sub_1B69AC4BC();

  if (v2)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v15 = swift_isEscapingClosureAtFileLocation();

  if (v15)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69AC4BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B69AC4E4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v4 = *(v0 + 88);
  v6[1] = *(v0 + 16);
  v7 = v1;
  v8 = *(v0 + 40);
  v9 = v2;
  v10 = v3;
  v11 = *(v0 + 72);
  v12 = v4;
  v13 = *(v0 + 96);
  return sub_1B69AC2BC(sub_1B69B88A4, v6);
}

unint64_t sub_1B69AC5A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  result = type metadata accessor for ProcessEvent();
  if (v4 <= 0x3F)
  {
    result = sub_1B69AC828();
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B69AC620()
{
  type metadata accessor for JSON();
  if (v0 <= 0x3F)
  {
    sub_1B6AB8DB0();
    if (v1 <= 0x3F)
    {
      sub_1B69809F4(319, &qword_1EDBCAA50);
      if (v2 <= 0x3F)
      {
        sub_1B69809F4(319, &qword_1EDBCA460);
        if (v3 <= 0x3F)
        {
          sub_1B69809F4(319, &qword_1EDBCBAF0);
          if (v4 <= 0x3F)
          {
            sub_1B69AC76C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1B69AC76C()
{
  if (!qword_1EDBC9F90)
  {
    sub_1B69AC7C4();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9F90);
    }
  }
}

void sub_1B69AC7C4()
{
  if (!qword_1EDBCA880)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCA880);
    }
  }
}

unint64_t sub_1B69AC828()
{
  result = qword_1EDBCBB00;
  if (!qword_1EDBCBB00)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBCBB00);
  }

  return result;
}

uint64_t AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a4;
  v30 = a5;
  v27 = a1;
  v28 = a3;
  v26 = a2;
  v9 = type metadata accessor for EventSubmitResult();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25[-v12];
  v14 = sub_1B6AB8DB0();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v25[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + 104);

    sub_1B6AB8DA0();
    sub_1B69ACABC(v27, v20, v26 & 1, v18, v28, v29, v30, a6, a7);

    return (*(v15 + 8))(v18, v14);
  }

  else
  {
    v21 = v10;
    v22 = v29;
    if (v29)
    {
      sub_1B6A16B30();
      v23 = swift_allocError();
      *v24 = xmmword_1B6AC0310;
      *v13 = v23;
      swift_storeEnumTagMultiPayload();
      v22(v13);
      return (*(v21 + 8))(v13, v9);
    }
  }

  return result;
}

uint64_t sub_1B69ACABC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void (*a6)(void), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v34 = a5;
  v35 = a7;
  v33 = a4;
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v28 = a8;
  v11 = type metadata accessor for EventSubmitResult();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v28 - v14);
  v16 = sub_1B6AB90F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = v9;
  result = swift_weakLoadStrong();
  if (result)
  {
    v22 = result;
    v23 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v20 = v23;
    (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
    v24 = v23;
    LOBYTE(v23) = sub_1B6AB9110();
    result = (*(v17 + 8))(v20, v16);
    if (v23)
    {
      v25 = *(v22 + 88);
      v37 = v28;
      v38 = a9;
      v39 = v22;
      v40 = v30;
      v41 = v31;
      v42 = v32 & 1;
      v43 = v33;
      v44 = *(v29 + 24);
      v45 = v34;
      v46 = a6;
      v47 = v35;
      sub_1B6995F94(v25, sub_1B69AC4E4, v36, OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider);
    }

    else
    {
      __break(1u);
    }
  }

  else if (a6)
  {
    sub_1B6A16B30();
    v26 = swift_allocError();
    *v27 = xmmword_1B6AC0310;
    *v15 = v26;
    swift_storeEnumTagMultiPayload();
    a6(v15);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_1B69ACD84(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69ACDCC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69ACE14()
{
  result = sub_1B69ACE38();
  qword_1EDBC9BA8 = result;
  qword_1EDBC9BB0 = v1;
  return result;
}

uint64_t sub_1B69ACE38()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_1B6AB92B0();
  v2 = [v0 objectForInfoDictionaryKey_];

  if (v2)
  {
    sub_1B6AB9BC0();
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
    sub_1B6981634(v7);
    return 0;
  }
}

uint64_t sub_1B69ACF4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_1B69FA8BC;
  }

  else
  {

    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_1B69AD088;
  }

  return MEMORY[0x1EEE6DFA0](v9, 0, 0);
}

uint64_t sub_1B69AD088()
{
  v19 = v0;
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[11];
  v4 = v0[12];
  v5 = sub_1B6AB8C70();
  v7 = v6;
  sub_1B6993C94(v2, v1);

  v8 = sub_1B6AB8F80();
  v9 = sub_1B6AB9900();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_1B698F63C(v5, v7, &v18);
    _os_log_impl(&dword_1B697C000, v8, v9, "Generated base64 signature from SHA1, base64=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B8C99550](v15, -1, -1);
    MEMORY[0x1B8C99550](v14, -1, -1);
  }

  sub_1B6993C94(v12, v11);

  v16 = v0[1];

  return v16(v5, v7);
}

uint64_t sub_1B69AD21C()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *v1;
  *(*v1 + 216) = v0;

  if (!v0)
  {
    v5 = *(v2 + 192);

    v6 = *(v4 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B6A6F8E8, 0, 0);
}

uint64_t sub_1B69AD388()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69AD3E4(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *v2;
  v4 = *(*v2 + 424);
  v8 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = a2;

  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B69AAC10, 0, 0);
}

id sub_1B69AD510()
{
  result = sub_1B69AD530();
  qword_1EDBC8250 = result;
  return result;
}

id sub_1B69AD530()
{
  v0 = objc_opt_self();
  swift_beginAccess();

  v1 = sub_1B6AB92B0();

  v2 = [v0 backgroundSessionConfigurationWithIdentifier_];

  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v3 = sub_1B6AB92B0();
    [v2 set:v3 sourceApplicationBundleIdentifier:?];
  }

  [v2 setHTTPMaximumConnectionsPerHost_];
  [v2 setAllowsCellularAccess_];
  [v2 setWaitsForConnectivity_];
  [v2 setDiscretionary_];
  v4 = [objc_allocWithZone(type metadata accessor for HeartbeatEventServiceURLSessionDelegate()) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v6 = [objc_opt_self() sessionWithConfiguration:v2 delegate:v4 delegateQueue:v5];

  return v6;
}

uint64_t sub_1B69AD75C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1B69AD850()
{
  MEMORY[0x1B8C99550](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69AD890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69867F8(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69AD900(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v13 = sub_1B6ABA230();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B69ADAB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B69882EC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69ADB20(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1B6AB9030();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6AB9090();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v4 + 96);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a1;
  aBlock[4] = sub_1B69BCB14;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1B698E534;
  aBlock[3] = &block_descriptor_9;
  v18 = _Block_copy(aBlock);
  v19 = v16;

  sub_1B69A18C0(a2);
  v20 = a1;
  sub_1B6AB9060();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1B69BBCF0();
  sub_1B6988350(0, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B69BBC68();
  sub_1B6AB9BE0();
  MEMORY[0x1B8C981F0](0, v15, v11, v18);
  _Block_release(v18);

  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

uint64_t sub_1B69ADDE4()
{
  v1 = *(v0 + 16);

  if (*(v0 + 24))
  {
    v2 = *(v0 + 32);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

void sub_1B69ADE38(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[9];
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  sub_1B69BCB58((v1 + 4), &v10);
  if (v11)
  {
    sub_1B6980E70(&v10, a1);
  }

  else
  {
    v7 = sub_1B69BCC44(&v10);
    v8 = v1[2];
    v9 = v1[3];
    v8(v7);
    sub_1B6982544(a1, &v10);
    swift_beginAccess();
    sub_1B69BCD24(&v10, (v2 + 4));
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v2[9] + 16));
}

void URLSessionUploadClientFactory.makeUploadClient()(uint64_t *a1@<X8>)
{
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B69990B4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B6ABD890;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 56) = MEMORY[0x1E69E6158];
  v4 = sub_1B698CEC0();
  *(v2 + 64) = v4;
  *(v2 + 32) = 0xD000000000000026;
  *(v2 + 40) = 0x80000001B6AC9380;
  sub_1B6AB9900();
  sub_1B6AB8F70();

  v5 = [objc_opt_self() defaultSessionConfiguration];
  if (qword_1EDBCA4A8 != -1)
  {
    swift_once();
  }

  if (qword_1EDBC9BB0)
  {
    v6 = sub_1B6AB92B0();
    [v5 set:v6 sourceApplicationBundleIdentifier:?];
  }

  v7 = [objc_opt_self() sessionWithConfiguration:v5 delegate:0 delegateQueue:0];
  v8 = sub_1B6AB92B0();
  [v7 setSessionDescription_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B6ABD890;
  *(v9 + 56) = v3;
  *(v9 + 64) = v4;
  *(v9 + 32) = 0xD000000000000026;
  *(v9 + 40) = 0x80000001B6AC9380;
  sub_1B6AB9900();
  sub_1B6AB8F70();

  v10 = type metadata accessor for URLSessionUploadClient();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  a1[3] = v10;
  a1[4] = &off_1F2E75748;

  *a1 = v11;
}

void sub_1B69AE1C8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v6 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  os_unfair_lock_lock_with_options();
  v9 = (a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state);
  if ((*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state + 9) & 1) == 0)
  {
    v10 = *v9;
    v11 = *(v9 + 8);
    goto LABEL_5;
  }

  sub_1B699E1A0(&v12);
  if (!v2)
  {
    v10 = v12;
    v11 = v13;
    *v9 = v12;
    *(v9 + 4) = v11;
LABEL_5:
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
  }

  os_unfair_lock_unlock(*(*(a1 + v5) + 16));
}

uint64_t sub_1B69AE288(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1B6993C94(a1, a2);
  }

  return a1;
}

uint64_t sub_1B69AE29C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v136 = a3;
  v132 = sub_1B6AB8F00();
  v130 = *(v132 - 8);
  v7 = *(v130 + 64);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8DB0();
  v133 = *(v9 - 8);
  *&v134 = v9;
  v10 = *(v133 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B697F028(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v120 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v120 - v18;
  v20 = sub_1B6AB9320();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v135 = a1;
  v138 = a2;
  v22 = sub_1B699D580(a1, a2);
  v23 = *(v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v24 = *(v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v25 = (v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v23);
  v26 = *(v24 + 16);
  v139 = v22;
  v27 = v26(v22, v23, v24);
  v137 = v25;
  v36 = v27;
  v38 = v37;
  v128 = v4;
  v126 = v12;
  v129 = v19;
  v127 = v17;
  sub_1B6AB9310();
  v39 = sub_1B6AB92F0();
  if (v40)
  {
    v41 = v39;
    v42 = v40;
    v43 = v36;
    v44 = v38;
    v142 = 10;
    v143 = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v39);
    *(&v120 - 2) = &v142;

    v46 = sub_1B69AF6DC(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B69AFA9C, (&v120 - 4), v41, v42, v45);
    v47 = *(v46 + 16);
    if (v47)
    {
      v124 = v36;
      v125 = v44;

      v48 = 0;
      v145[0] = 0;
      v144 = MEMORY[0x1E69E7CC0];
      v49 = (v46 + 56);
      while (v48 < *(v46 + 16))
      {
        v51 = *(v49 - 1);
        v50 = *v49;
        v52 = *(v49 - 3);
        v41 = *(v49 - 2);

        v54 = MEMORY[0x1B8C98C40](v53);
        sub_1B69AFC18(v52, v41, v51, v50, &v144, v145, &v142);

        ++v48;
        objc_autoreleasePoolPop(v54);
        v49 += 4;
        if (v47 == v48)
        {

          v55 = v145[0];
          v48 = v138;
          v56 = v128;
          if (!v145[0])
          {
            v95 = v144[2];
            sub_1B6A60A98();
            v96 = swift_allocError();
            *v97 = v95;
            *(v97 + 8) = 0;
            *(v97 + 16) = 0;
            *(v97 + 24) = 0;
            *(v97 + 32) = 32;
            v41 = v96;
            swift_willThrow();
            sub_1B6993C94(v124, v125);

            v46 = v135;
            goto LABEL_2;
          }

          v57 = v137;
          if (!v144[2])
          {
            sub_1B6A60A98();
            v100 = swift_allocError();
            v46 = v135;
            *v101 = v135;
            *(v101 + 8) = v48;
            *(v101 + 16) = 0;
            *(v101 + 24) = 0;
            *(v101 + 32) = 64;
            v41 = v100;
            swift_willThrow();

            sub_1B6993C94(v124, v125);

            goto LABEL_2;
          }

          v122 = v144;
          v58 = v137[3];
          v59 = v137[4];
          __swift_project_boxed_opaque_existential_1(v137, v58);
          v60 = *(v56 + 16);
          v61 = *(v59 + 64);

          v123 = v55;
          v62 = v139;
          v63 = v61(v139, v60, v58, v59);
          v65 = v64;
          v66 = v57[3];
          v67 = v57[4];
          __swift_project_boxed_opaque_existential_1(v57, v66);
          v128 = (*(v67 + 72))(v62, *(v56 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_contentType), v66, v67);
          v68 = v57[3];
          v69 = v57[4];
          __swift_project_boxed_opaque_existential_1(v57, v68);
          v121 = (*(v69 + 80))(v62, v68, v69);
          v120 = v70;
          v71 = v57[3];
          v72 = v57[4];
          __swift_project_boxed_opaque_existential_1(v57, v71);
          (*(v72 + 88))(v62, v71, v72);
          v73 = v57[3];
          v74 = v57[4];
          __swift_project_boxed_opaque_existential_1(v57, v73);
          (*(v74 + 104))(&v142, v62, v73, v74);
          v75 = v142;
          v76 = v57[3];
          v77 = v57[4];
          __swift_project_boxed_opaque_existential_1(v57, v76);
          v78 = (*(v77 + 96))(v62, v76, v77);
          if (v79)
          {
            v80 = v78;
            v81 = v79;
            v82 = v126;
            v83 = v132;
            v84 = v131;
          }

          else
          {
            v102 = v123;
            v82 = v126;
            v83 = v132;
            v84 = v131;
            if (*(v123 + 16) && (v103 = sub_1B6993940(0x496E6F6973736573, 0xE900000000000044), (v104 & 1) != 0) && (sub_1B698FE74(*(v102 + 56) + 32 * v103, &v142), (swift_dynamicCast() & 1) != 0))
            {
              v80 = v140;
              v81 = v141;
            }

            else
            {
              v81 = 0xE90000000000006ELL;
              v80 = 0x6F69737365536F6ELL;
            }
          }

          v105 = v138;
          if (v75 == 5)
          {

            sub_1B6993C94(v124, v125);
            v106 = 1;
            v107 = v136;
            v108 = v127;
            v110 = v133;
            v109 = v134;
            v111 = v129;
LABEL_39:
            (*(v110 + 56))(v108, v106, 1, v109);
            v107[4] = v63;
            v107[5] = v65;
            v115 = v121;
            v107[6] = v128;
            v107[7] = v115;
            v107[8] = v120;
            v116 = type metadata accessor for Batch();
            sub_1B69B3830(v111, v107 + v116[10]);
            v117 = (v107 + v116[11]);
            *v117 = v80;
            v117[1] = v81;
            v118 = v122;
            *v107 = v123;
            v107[1] = v118;
            v107[2] = v135;
            v107[3] = v105;
            *(v107 + v116[12]) = 0;
            v119 = (v107 + v116[13]);
            *v119 = xmmword_1B6AC3610;
            v119[1] = 0u;
            v119[2] = 0u;
            sub_1B69B3830(v108, v107 + v116[14]);
            (*(*(v116 - 1) + 56))(v107, 0, 1, v116);
          }

          sub_1B6AB8D90();
          if (v75 <= 1)
          {
            if (v75)
            {
              sub_1B6AB8EC0();
              v113 = v84;
              v108 = v127;
              sub_1B6AB8E70();
              (*(v130 + 8))(v113, v83);
              goto LABEL_37;
            }

            v112 = v82;
            v110 = v133;
            v108 = v127;
            (*(v133 + 16))(v127, v112, v134);
            v107 = v136;
          }

          else
          {
            if (v75 == 2 || v75 == 3)
            {
              sub_1B6AB8CE0();
              v108 = v127;
              sub_1B6AB8CD0();
            }

            else
            {
              v108 = v127;
              sub_1B6AB8D10();
            }

LABEL_37:
            v107 = v136;
            v112 = v82;
            v110 = v133;
          }

          v111 = v129;

          sub_1B6993C94(v124, v125);
          v114 = v112;
          v109 = v134;
          (*(v110 + 8))(v114, v134);
          v106 = 0;
          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_41;
    }

    v89 = sub_1B699E9F0(0xD00000000000003CLL, 0x80000001B6ACBF40, 512);
    v48 = v138;
    v94 = v90 >> 60 != 15 && (v91 = v89, v92 = v90, v93 = sub_1B6A78108(v89, v90), sub_1B69AE288(v91, v92), (v93 & 0x100) == 0) && v93 == 1;
    v46 = v135;
    sub_1B6A60A98();
    v98 = swift_allocError();
    *v99 = v41;
    *(v99 + 8) = v42;
    *(v99 + 16) = v43;
    *(v99 + 24) = v44;
    *(v99 + 32) = v94;
    v41 = v98;
    swift_willThrow();
  }

  else
  {
    sub_1B6A60A98();
    v87 = swift_allocError();
    *v88 = 0u;
    *(v88 + 16) = 0u;
    *(v88 + 32) = 0x80;
    v41 = v87;
    swift_willThrow();
    sub_1B6993C94(v36, v38);
    v46 = v135;
    v48 = v138;
  }

LABEL_2:
  if (qword_1EDBCCEE0 != -1)
  {
LABEL_41:
    swift_once();
  }

  v28 = qword_1EDBCCB28;
  sub_1B6AB98F0();
  sub_1B69990B4();
  v29 = swift_allocObject();
  v134 = xmmword_1B6ABF500;
  *(v29 + 16) = xmmword_1B6ABF500;
  v30 = MEMORY[0x1E69E6158];
  *(v29 + 56) = MEMORY[0x1E69E6158];
  v31 = sub_1B698CEC0();
  *(v29 + 64) = v31;
  *(v29 + 32) = v46;
  *(v29 + 40) = v48;
  v142 = 0;
  v143 = 0xE000000000000000;
  v138 = v41;
  v140 = v41;
  sub_1B697ED90(0, &qword_1EDBCBB00);

  sub_1B6AB9DF0();
  v32 = v142;
  v33 = v143;
  *(v29 + 96) = v30;
  *(v29 + 104) = v31;
  *(v29 + 72) = v32;
  *(v29 + 80) = v33;
  v135 = v28;
  sub_1B6AB8F70();

  v35 = v137[3];
  v34 = v137[4];
  __swift_project_boxed_opaque_existential_1(v137, v35);
  (*(v34 + 48))(v139, v35, v34);

  v85 = type metadata accessor for Batch();
  return (*(*(v85 - 8) + 56))(v136, 1, 1, v85);
}

char *sub_1B69AF0A4(uint64_t a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v9 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v10 = *(v9 + 16);
  v11 = *(v9 + 24);
  os_unfair_lock_lock_with_options();
  sub_1B6986438(0, &qword_1EDBCB648, 0x1E696AC00);
  (*(v4 + 16))(v7, a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url, v3);
  v12 = sub_1B69AF2E8(v7, &selRef_fileHandleForReadingFromURL_error_);
  if (!v1)
  {
    v13 = v12;
    v22[0] = 0;
    v14 = [v12 seekToOffset:0 error:v22];
    v7 = v22[0];
    if (v14)
    {
      v15 = v22[0];
      v16 = sub_1B6AB9890();
      if (v17 >> 60 != 15)
      {
        v7 = v16;
        sub_1B69AF440(v13);

        os_unfair_lock_unlock(*(*(a1 + v8) + 16));
        goto LABEL_10;
      }

      sub_1B6A7B150();
      swift_allocError();
      *v18 = 1;
    }

    else
    {
      v19 = v22[0];
      sub_1B6AB8A70();
    }

    swift_willThrow();
    sub_1B69AF440(v13);
  }

  os_unfair_lock_unlock(*(*(a1 + v8) + 16));
LABEL_10:
  v20 = *MEMORY[0x1E69E9840];
  return v7;
}

id sub_1B69AF2E8(uint64_t a1, SEL *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1B6AB8B20();
  v14[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() *a2];

  v6 = v14[0];
  if (v5)
  {
    v7 = sub_1B6AB8BB0();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v14[0];
    sub_1B6AB8A70();

    swift_willThrow();
    v11 = sub_1B6AB8BB0();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1B69AF440(void *a1)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v20[0] = 0;
  v1 = [a1 closeAndReturnError_];
  v2 = v20[0];
  if (v1)
  {
    v3 = *MEMORY[0x1E69E9840];

    v4 = v2;
  }

  else
  {
    v5 = v20[0];
    v6 = sub_1B6AB8A70();

    swift_willThrow();
    if (qword_1EDBCAA78 != -1)
    {
      swift_once();
    }

    v7 = sub_1B6AB8F90();
    __swift_project_value_buffer(v7, qword_1EDBCFDA8);

    v8 = v6;
    v9 = sub_1B6AB8F80();
    v10 = sub_1B6AB98E0();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v20[0] = v13;
      *v11 = 136315394;
      v14 = sub_1B6AB8B80();
      v16 = sub_1B698F63C(v14, v15, v20);

      *(v11 + 4) = v16;
      *(v11 + 12) = 2112;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v18;
      *v12 = v18;
      _os_log_impl(&dword_1B697C000, v9, v10, "⚠️ Failed to close file handle at %s: %@", v11, 0x16u);
      sub_1B6A7B1A4(v12, sub_1B69EC2D4);
      MEMORY[0x1B8C99550](v12, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1B8C99550](v13, -1, -1);
      MEMORY[0x1B8C99550](v11, -1, -1);
    }

    else
    {
    }

    v19 = *MEMORY[0x1E69E9840];
  }
}

unint64_t sub_1B69AF6DC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B6AB9460();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B69AFAF4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B69AFAF4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B6AB9440();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B6AB9390();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B6AB9390();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B6AB9460();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B69AFAF4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B6AB9460();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B69AFAF4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B69AFAF4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B6AB9390();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69AFA9C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B6ABA0F0() & 1;
  }
}

char *sub_1B69AFAF4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBCB608, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69AFC18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, void **a5, uint64_t *a6, uint64_t *a7)
{
  v50[4] = *MEMORY[0x1E69E9840];

  v14 = sub_1B69B0184(a1, a2, a3, a4);
  v16 = v15;
  v17 = objc_opt_self();
  v18 = sub_1B6AB8C60();
  v50[0] = 0;
  v19 = [v17 JSONObjectWithData:v18 options:0 error:v50];

  if (!v19)
  {
    v26 = v50[0];
    v27 = sub_1B6AB8A70();

    swift_willThrow();
    goto LABEL_10;
  }

  v20 = v50[0];
  sub_1B6AB9BC0();
  swift_unknownObjectRelease();
  sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v28 = 0x80;
    v21 = 1;
LABEL_23:
    sub_1B6A60A98();
    v40 = swift_allocError();
    *v41 = v21;
    *(v41 + 8) = 0;
    *(v41 + 16) = 0;
    *(v41 + 24) = 0;
    *(v41 + 32) = v28;
    swift_willThrow();
    result = sub_1B6993C94(v14, v16);
    *a7 = v40;
    goto LABEL_24;
  }

  v21 = v49;
  if (!*(v49 + 16))
  {
    goto LABEL_22;
  }

  v22 = sub_1B6993940(1701869940, 0xE400000000000000);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B698FE74(*(v49 + 56) + 32 * v22, v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v48 = a5;
  v24 = sub_1B6AB9EF0();

  if (v24)
  {
    if (v24 != 1)
    {
LABEL_22:
      v28 = 96;
      goto LABEL_23;
    }

    v25 = 1;
  }

  else
  {
    v25 = 0;
  }

  if (!*(v49 + 16))
  {
    goto LABEL_22;
  }

  v29 = sub_1B6993940(1635017060, 0xE400000000000000);
  if ((v30 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1B698FE74(*(v49 + 56) + 32 * v29, v50);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_22;
  }

  v31 = MEMORY[0x1E69E6158];
  v32 = sub_1B6AB91F0();
  v33 = [v17 isValidJSONObject_];

  if ((v25 & 1) == 0)
  {
    if (v33)
    {
      sub_1B6993C94(v14, v16);
      v43 = *a6;
      *a6 = v49;
LABEL_31:

      goto LABEL_24;
    }

    if (qword_1EDBCCEE0 == -1)
    {
LABEL_30:
      sub_1B6AB98F0();
      sub_1B69990B4();
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1B6ABD890;
      v45 = sub_1B6AB9220();
      v47 = v46;

      *(v44 + 56) = v31;
      *(v44 + 64) = sub_1B698CEC0();
      *(v44 + 32) = v45;
      *(v44 + 40) = v47;
      sub_1B6AB8F70();
      sub_1B6993C94(v14, v16);
      goto LABEL_31;
    }

LABEL_32:
    swift_once();
    goto LABEL_30;
  }

  if (!v33)
  {
    if (qword_1EDBCCEE0 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_32;
  }

  v34 = *v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v48 = v34;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v34 = sub_1B69B097C(0, v34[2] + 1, 1, v34);
    *v48 = v34;
  }

  v37 = v34[2];
  v36 = v34[3];
  if (v37 >= v36 >> 1)
  {
    *v48 = sub_1B69B097C((v36 > 1), v37 + 1, 1, v34);
  }

  result = sub_1B6993C94(v14, v16);
  v39 = *v48;
  v39[2] = v37 + 1;
  v39[v37 + 4] = v49;
LABEL_24:
  v42 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B69B0184(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = *MEMORY[0x1E69E9840];
  *&v46 = a1;
  *(&v46 + 1) = a2;
  v47 = a3;
  v48 = a4;
  sub_1B699F974();

  if (!swift_dynamicCast())
  {
    v45 = 0;
    memset(v44, 0, sizeof(v44));
    sub_1B699F9D8(v44);
    sub_1B69B08D8(a1, a2, a3, a4, &v39);
    v8 = *(&v39 + 1);
    v9 = v39;
    if (*(&v39 + 1) >> 60 != 15)
    {
      v44[0] = v39;
      goto LABEL_54;
    }

    v10 = sub_1B6AB9B70();
    *&v44[0] = sub_1B69D5FDC(v10);
    *(&v44[0] + 1) = v11;
    MEMORY[0x1EEE9AC00](*&v44[0]);
    sub_1B69D5760(sub_1B69D654C, &v39);
    v13 = v40;
    v12 = v41;
    v14 = v42;
    v15 = *(&v44[0] + 1) >> 62;
    if ((*(&v44[0] + 1) >> 62) > 1)
    {
      if (v15 == 2)
      {
        v17 = *(*&v44[0] + 16);
        v16 = *(*&v44[0] + 24);
        v18 = __OFSUB__(v16, v17);
        v19 = v16 - v17;
        if (v18)
        {
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
        }

        if (v43 == v19)
        {
          goto LABEL_20;
        }

        goto LABEL_15;
      }

      if (v43)
      {
        v20 = 0;
LABEL_51:
        if (v20 >= v43)
        {
          sub_1B6AB8C10();
LABEL_53:

          goto LABEL_54;
        }

LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (!v15)
      {
        if (v43 == BYTE14(v44[0]))
        {
          goto LABEL_20;
        }

LABEL_15:
        if (v15 == 2)
        {
          v20 = *(*&v44[0] + 24);
        }

        else if (v15 == 1)
        {
          v20 = *&v44[0] >> 32;
        }

        else
        {
          v20 = BYTE14(v44[0]);
        }

        goto LABEL_51;
      }

      if (__OFSUB__(DWORD1(v44[0]), v44[0]))
      {
        goto LABEL_61;
      }

      if (v43 != DWORD1(v44[0]) - LODWORD(v44[0]))
      {
        goto LABEL_15;
      }
    }

LABEL_20:
    v21 = *(&v39 + 1) >> 14;
    *(&v46 + 7) = 0;
    *&v46 = 0;
    if (*(&v39 + 1) >> 14 == v42 >> 14)
    {

      sub_1B69AE288(v9, v8);
      goto LABEL_54;
    }

    v34 = v9;
    v35 = v8;
    LOBYTE(v8) = 0;
    v22 = v39 >> 14;
    v23 = (v40 >> 59) & 1;
    if ((v41 & 0x1000000000000000) == 0)
    {
      LOBYTE(v23) = 1;
    }

    v24 = 4 << v23;
    v37 = v41 & 0xFFFFFFFFFFFFFFLL;
    v36 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v25 = HIBYTE(v41) & 0xF;
    if ((v41 & 0x2000000000000000) == 0)
    {
      v25 = v40 & 0xFFFFFFFFFFFFLL;
    }

    v38 = v25;
    while (1)
    {
      v26 = v14 & 0xC;
      v27 = v14;
      if (v26 == v24)
      {
        v27 = sub_1B69D5E18(v14, v13, v12);
      }

      if (v27 >> 14 < v22 || v27 >> 14 >= v21)
      {
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      if ((v12 & 0x1000000000000000) != 0)
      {
        v30 = sub_1B6AB9400();
        if (v26 != v24)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v28 = v27 >> 16;
        if ((v12 & 0x2000000000000000) != 0)
        {
          *&v39 = v13;
          *(&v39 + 1) = v37;
          v30 = *(&v39 + v28);
          if (v26 != v24)
          {
            goto LABEL_39;
          }
        }

        else
        {
          v29 = v36;
          if ((v13 & 0x1000000000000000) == 0)
          {
            v29 = sub_1B6AB9D40();
          }

          v30 = *(v29 + v28);
          if (v26 != v24)
          {
LABEL_39:
            if ((v12 & 0x1000000000000000) != 0)
            {
              goto LABEL_43;
            }

            goto LABEL_40;
          }
        }
      }

      v14 = sub_1B69D5E18(v14, v13, v12);
      if ((v12 & 0x1000000000000000) != 0)
      {
LABEL_43:
        if (v38 <= v14 >> 16)
        {
          goto LABEL_58;
        }

        v14 = sub_1B6AB93D0();
        goto LABEL_45;
      }

LABEL_40:
      v14 = (v14 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_45:
      *(&v46 + v8) = v30;
      LOWORD(v8) = v8 + 1;
      if ((v8 & 0x100) != 0)
      {
        goto LABEL_57;
      }

      if (v8 == 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_1B6AB8C30();
        LOBYTE(v8) = 0;
        if (v21 == v14 >> 14)
        {

          sub_1B69AE288(v34, v35);
          goto LABEL_54;
        }
      }

      else if (v21 == v14 >> 14)
      {
        *&v39 = v46;
        *(&v39 + 6) = *(&v46 + 6);
        sub_1B6AB8C30();
        sub_1B69AE288(v34, v35);
        goto LABEL_53;
      }
    }
  }

  sub_1B6980E70(v44, &v39);
  __swift_project_boxed_opaque_existential_1(&v39, v41);
  sub_1B6AB89B0();
  v44[0] = v46;
  __swift_destroy_boxed_opaque_existential_1(&v39);
LABEL_54:
  v31 = v44[0];
  sub_1B6994494(*&v44[0], *(&v44[0] + 1));

  sub_1B6993C94(v31, *(&v31 + 1));
  v32 = *MEMORY[0x1E69E9840];
  return v31;
}

uint64_t sub_1B69B06C0@<X0>(uint64_t result@<X0>, unint64_t a2@<X2>, unint64_t a3@<X3>, unint64_t a4@<X4>, unint64_t a5@<X5>, void *a6@<X8>)
{
  v7 = result;
  v8 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v8) = 1;
  }

  v9 = 4 << v8;
  v10 = a2 & 0xC;
  v11 = a2;
  if (v10 == 4 << v8)
  {
    v13 = a2;
    v14 = a6;
    v15 = a5;
    v16 = a3;
    result = sub_1B69D5E18(a2, a4, a5);
    a2 = v13;
    a3 = v16;
    a5 = v15;
    a6 = v14;
    v11 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v12 = v11 >> 16;
      if (v10 != v9)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a6;
  v18 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(a5) & 0xF;
  }

  if (v18 < v11 >> 16)
  {
    goto LABEL_31;
  }

  v19 = a2;
  v20 = a3;
  v21 = a5;
  result = sub_1B6AB93F0();
  a5 = v21;
  v12 = result;
  a6 = v17;
  a3 = v20;
  a2 = v19;
  if (v10 == v9)
  {
LABEL_14:
    v22 = a6;
    v23 = a5;
    v24 = a3;
    result = sub_1B69D5E18(a2, a4, a5);
    a3 = v24;
    a5 = v23;
    a6 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v9)
  {
    v25 = a2;
    v26 = a6;
    v27 = a5;
    result = sub_1B69D5E18(a3, a4, a5);
    a2 = v25;
    a5 = v27;
    a6 = v26;
    a3 = result;
    if ((v27 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v28 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v28 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v28 < a2 >> 16)
  {
    goto LABEL_29;
  }

  if (v28 < a3 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  v29 = a6;
  result = sub_1B6AB93F0();
  a6 = v29;
LABEL_21:
  if (__OFADD__(v12, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v30 = result;
  if (v12 + result < v12)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v7)
  {
    v31 = (v12 + v7);
  }

  else
  {
    v31 = 0;
  }

  return sub_1B699FA64(v31, v30, a6);
}

double sub_1B69B08D8@<D0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X8>)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0.0;
    *a5 = xmmword_1B6ABD8B0;
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v12[0] = a3;
      v12[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      v9 = v12;
    }

    else if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v11 = a5;
      v9 = sub_1B6AB9D40();
      a5 = v11;
    }

    sub_1B69B06C0(v9, a1, a2, a3, a4, a5);
  }

  return result;
}

void *sub_1B69B097C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B69E8EF8(0, &qword_1EDBCAFC0, sub_1B697EFC4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B697EFC4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69B0ACC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v3 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  os_unfair_lock_lock_with_options();
  v6 = (a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent);
  if (*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8))
  {
    v7 = *v6;
    v8 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8);
  }

  else
  {
    v7 = sub_1B69B0B84();
    v9 = v6[1];
    *v6 = v7;
    v6[1] = v10;
  }

  v11 = *(*(a1 + v2) + 16);

  os_unfair_lock_unlock(v11);
  return v7;
}

uint64_t sub_1B69B0B84()
{
  v0 = sub_1B6AB9320();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1B69B0F8C();
  v3 = sub_1B699E9F0(0xD00000000000003ELL, 0x80000001B6ACD220, v2);
  if (v4 >> 60 == 15)
  {
    return sub_1B69992A4();
  }

  v6 = v4;
  v7 = v3;
  sub_1B6AB9310();
  v8 = v7;
  v9 = v6;
  v10 = sub_1B6AB92F0();
  if (!v11)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDBCCB28;
    sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B6ABF500;
    v13 = sub_1B6AB8B80();
    v15 = v14;
    v16 = MEMORY[0x1E69E6158];
    *(v12 + 56) = MEMORY[0x1E69E6158];
    v17 = sub_1B698CEC0();
    *(v12 + 64) = v17;
    *(v12 + 32) = v13;
    *(v12 + 40) = v15;
    v18 = sub_1B6AB8C60();
    v19 = [v18 description];

    v20 = sub_1B6AB92E0();
    v22 = v21;

    *(v12 + 96) = v16;
    *(v12 + 104) = v17;
    *(v12 + 72) = v20;
    *(v12 + 80) = v22;
    sub_1B6AB8F70();

    v10 = sub_1B69992A4();
  }

  v5 = v10;
  sub_1B69AE288(v8, v9);
  return v5;
}

unint64_t sub_1B69B0F8C()
{
  v0 = sub_1B69992A4();
  result = sub_1B699F46C(v0, v1);
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_12;
    }

    v8 = *(result + 16);
    v7 = *(result + 24);
    result = sub_1B6993C94(result, v3);
    v6 = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
LABEL_10:
      if (v6 + 0x4000000000000000 >= 0)
      {
        return 2 * v6;
      }

      __break(1u);
LABEL_12:
      sub_1B6993C94(result, v3);
      v6 = 0;
      return 2 * v6;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(v3);
    result = sub_1B6993C94(result, v3);
    v6 = v5;
    goto LABEL_10;
  }

  v9 = HIDWORD(result);
  v10 = result;
  result = sub_1B6993C94(result, v3);
  LODWORD(v6) = v9 - v10;
  if (!__OFSUB__(v9, v10))
  {
    v6 = v6;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

char *sub_1B69B1028(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1B6AB8900();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1B6AB8930();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1B6AB8920();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_1B69B10D8(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v5 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  os_unfair_lock_lock_with_options();
  v8 = a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType;
  if (*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType + 8) == 1)
  {
    v9 = sub_1B69B1168(a1, a2);
    *v8 = v9;
    *(v8 + 8) = 0;
  }

  else
  {
    v9 = *v8;
  }

  os_unfair_lock_unlock(*(*(a1 + v4) + 16));
  return v9;
}

uint64_t sub_1B69B1168(uint64_t a1, uint64_t a2)
{
  v3 = sub_1B6AB9320();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1B699E9F0(0xD000000000000039, 0x80000001B6ACD0A0, 8);
  if (v6 >> 60 == 15)
  {
    return a2;
  }

  v7 = v6;
  v8 = v5;
  sub_1B6AB9310();
  v9 = v8;
  v64 = v7;
  result = sub_1B6AB92F0();
  if (!v11)
  {
    v63 = a2;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B6ABF500;
    v24 = sub_1B6AB8B80();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1B698CEC0();
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v29 = sub_1B6AB8C60();
    v30 = [v29 description];

    v31 = sub_1B6AB92E0();
    v33 = v32;

    *(v23 + 96) = v27;
    *(v23 + 104) = v28;
    *(v23 + 72) = v31;
    *(v23 + 80) = v33;
    sub_1B6AB8F70();

    sub_1B69AE288(v8, v64);
    return v63;
  }

  v12 = result;
  v13 = v11;
  v14 = HIBYTE(v11) & 0xF;
  v15 = result & 0xFFFFFFFFFFFFLL;
  if ((v13 & 0x2000000000000000) != 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {
    goto LABEL_69;
  }

  if ((v13 & 0x1000000000000000) != 0)
  {

    v58 = sub_1B6AB1B98(v12, v13, 10);
    v60 = v59;

    if (v60 & 1) != 0 || (v49 = sub_1B69B193C(v58), (v61))
    {
LABEL_69:
      v51 = a2;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1B6ABF500;
      v53 = sub_1B6AB8B80();
      v55 = v54;
      v56 = MEMORY[0x1E69E6158];
      *(v52 + 56) = MEMORY[0x1E69E6158];
      v57 = sub_1B698CEC0();
      *(v52 + 32) = v53;
      *(v52 + 40) = v55;
      *(v52 + 96) = v56;
      *(v52 + 104) = v57;
      *(v52 + 64) = v57;
      *(v52 + 72) = v12;
      *(v52 + 80) = v13;
      sub_1B6AB8F70();

      sub_1B69AE288(v9, v64);
      return v51;
    }

    goto LABEL_74;
  }

  if ((v13 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      v14 = (v13 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1B6AB9D40();
      v14 = result;
    }

    v17 = *v14;
    if (v17 == 43)
    {
      if (v15 >= 1)
      {
        v37 = v15 - 1;
        if (v15 != 1)
        {
          v19 = 0;
          if (v14)
          {
            v38 = (v14 + 1);
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                goto LABEL_66;
              }

              v40 = 10 * v19;
              if ((v19 * 10) >> 64 != (10 * v19) >> 63)
              {
                goto LABEL_66;
              }

              v19 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_66;
              }

              ++v38;
              if (!--v37)
              {
LABEL_58:
                LOBYTE(v14) = 0;
                goto LABEL_67;
              }
            }
          }

          goto LABEL_67;
        }

        goto LABEL_66;
      }

      goto LABEL_79;
    }

    if (v17 != 45)
    {
      if (v15)
      {
        v19 = 0;
        if (v14)
        {
          while (1)
          {
            v44 = *v14 - 48;
            if (v44 > 9)
            {
              goto LABEL_66;
            }

            v45 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_66;
            }

            v19 = v45 + v44;
            if (__OFADD__(v45, v44))
            {
              goto LABEL_66;
            }

            ++v14;
            if (!--v15)
            {
              goto LABEL_58;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_66:
      v19 = 0;
      LOBYTE(v14) = 1;
      goto LABEL_67;
    }

    if (v15 >= 1)
    {
      v18 = v15 - 1;
      if (v15 != 1)
      {
        v19 = 0;
        if (v14)
        {
          v20 = (v14 + 1);
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              goto LABEL_66;
            }

            v22 = 10 * v19;
            if ((v19 * 10) >> 64 != (10 * v19) >> 63)
            {
              goto LABEL_66;
            }

            v19 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              goto LABEL_66;
            }

            ++v20;
            if (!--v18)
            {
              goto LABEL_58;
            }
          }
        }

LABEL_67:
        LOBYTE(v66) = v14;
        if (v14)
        {
          goto LABEL_69;
        }

        v49 = sub_1B69B193C(v19);
        if (v50)
        {
          goto LABEL_69;
        }

LABEL_74:
        v62 = v49;

        sub_1B69AE288(v8, v64);
        return v62;
      }

      goto LABEL_66;
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v65[0] = result;
  v65[1] = v13 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v14)
      {
        v19 = 0;
        v46 = v65;
        while (1)
        {
          v47 = *v46 - 48;
          if (v47 > 9)
          {
            break;
          }

          v48 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v48 + v47;
          if (__OFADD__(v48, v47))
          {
            break;
          }

          ++v46;
          if (!--v14)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    if (v14)
    {
      if (--v14)
      {
        v19 = 0;
        v34 = v65 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v19;
          if ((v19 * 10) >> 64 != (10 * v19) >> 63)
          {
            break;
          }

          v19 = v36 - v35;
          if (__OFSUB__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v14)
          {
            goto LABEL_67;
          }
        }
      }

      goto LABEL_66;
    }

    goto LABEL_78;
  }

  if (v14)
  {
    if (--v14)
    {
      v19 = 0;
      v41 = v65 + 1;
      while (1)
      {
        v42 = *v41 - 48;
        if (v42 > 9)
        {
          break;
        }

        v43 = 10 * v19;
        if ((v19 * 10) >> 64 != (10 * v19) >> 63)
        {
          break;
        }

        v19 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          break;
        }

        ++v41;
        if (!--v14)
        {
          goto LABEL_67;
        }
      }
    }

    goto LABEL_66;
  }

LABEL_80:
  __break(1u);
  return result;
}

unint64_t sub_1B69B193C(unint64_t result)
{
  if (result > 9)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1B69B1980(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  v6 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v7 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);
  os_unfair_lock_lock_with_options();
  v10 = (a1 + *a2);
  if (v10[1])
  {
    v11 = *v10;
    v12 = v10[1];
  }

  else
  {
    v11 = a3(a1);
    v13 = v10[1];
    *v10 = v11;
    v10[1] = v14;
  }

  v15 = *(*(a1 + v6) + 16);

  os_unfair_lock_unlock(v15);
  return v11;
}

uint64_t sub_1B69B1A40()
{
  v0 = sub_1B6AB9320();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1B699E9F0(0xD000000000000037, 0x80000001B6ACCFA0, 512);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3;
  v6 = v2;
  sub_1B6AB9310();
  v7 = v5;
  v8 = sub_1B6AB92F0();
  if (v9)
  {
    v10 = v8;
    sub_1B69AE288(v6, v5);
    return v10;
  }

  else
  {
    v22 = v8;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B6ABF500;
    v12 = sub_1B6AB8B80();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1B698CEC0();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = sub_1B6AB8C60();
    v18 = [v17 description];

    v19 = sub_1B6AB92E0();
    v21 = v20;

    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v19;
    *(v11 + 80) = v21;
    sub_1B6AB8F70();

    sub_1B69AE288(v6, v7);
    return v22;
  }
}

void sub_1B69B1E58(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v5 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  os_unfair_lock_lock_with_options();
  sub_1B69B1EC0(a1, a2);
  v8 = *(*(a1 + v4) + 16);

  os_unfair_lock_unlock(v8);
}

uint64_t sub_1B69B1EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69867F8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15[-v9];
  v11 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate;
  swift_beginAccess();
  sub_1B69B20C4(a1 + v11, v10);
  v12 = sub_1B6AB8DB0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_1B69AD890(v10, &qword_1EDBCCF40, MEMORY[0x1E6969530]);
    sub_1B69B2180(a2);
    sub_1B69B20C4(a2, v8);
    swift_beginAccess();
    sub_1B69B2890(v8, a1 + v11);
    return swift_endAccess();
  }

  else
  {
    (*(v13 + 32))(a2, v10, v12);
    return (*(v13 + 56))(a2, 0, 1, v12);
  }
}

uint64_t sub_1B69B20C4(uint64_t a1, uint64_t a2)
{
  sub_1B69B2128();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69B2128()
{
  if (!qword_1EDBCCF40)
  {
    sub_1B6AB8DB0();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCCF40);
    }
  }
}

uint64_t sub_1B69B2180@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B6AB9320();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8DA0();
  sub_1B6AB8D60();
  (*(v5 + 8))(v8, v4);
  sub_1B6AB97A0();

  v9 = sub_1B699E9F0(0xD00000000000003FLL, 0x80000001B6ACD3E0, 16);
  if (v10 >> 60 == 15)
  {
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v42 = v4;
  v11 = v10;
  v12 = v9;
  sub_1B6AB9310();
  v13 = v12;
  v14 = v11;
  v15 = sub_1B6AB92F0();
  if (!v16)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDBCCB28;
    HIDWORD(v40) = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1B6ABF500;
    v24 = sub_1B6AB8B80();
    v26 = v25;
    v27 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v28 = sub_1B698CEC0();
    *(v23 + 64) = v28;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v29 = sub_1B6AB8C60();
    v30 = [v29 description];

    v31 = sub_1B6AB92E0();
    v33 = v32;

    *(v23 + 96) = v27;
    *(v23 + 104) = v28;
    *(v23 + 72) = v31;
    *(v23 + 80) = v33;
    sub_1B6AB8F70();
    sub_1B69AE288(v13, v14);
    goto LABEL_12;
  }

  v17 = v15;
  v18 = v16;
  v43 = 0;
  if (!sub_1B69B2798(v15, v16))
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDBCCB28;
    HIDWORD(v40) = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B6ABF500;
    v35 = sub_1B6AB8B80();
    v37 = v36;
    v38 = MEMORY[0x1E69E6158];
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v39 = sub_1B698CEC0();
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    *(v34 + 96) = v38;
    *(v34 + 104) = v39;
    *(v34 + 64) = v39;
    *(v34 + 72) = v17;
    *(v34 + 80) = v18;
    sub_1B6AB8F70();
    sub_1B69AE288(v13, v14);
LABEL_12:

    v19 = *(v5 + 56);
    v20 = a1;
    v21 = 1;
    return v19(v20, v21, 1, v42);
  }

  sub_1B6AB8D50();
  sub_1B69AE288(v13, v11);
  v19 = *(v5 + 56);
  v20 = a1;
  v21 = 0;
  return v19(v20, v21, 1, v42);
}

BOOL sub_1B69B2798(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1B6AB9C90();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

uint64_t sub_1B69B2890(uint64_t a1, uint64_t a2)
{
  sub_1B69867F8(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B69B293C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v5 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v6 = *(v5 + 16);
  v7 = *(v5 + 24);
  os_unfair_lock_lock_with_options();
  v8 = (a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_timestampConfiguration);
  v9 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_timestampConfiguration);
  if (v9 == 5)
  {
    sub_1B69B29DC(v12);
    v9 = v12[0];
    v10 = v12[1];
    *v8 = v12[0];
    v8[1] = v10;
  }

  else
  {
    v10 = v8[1];
  }

  *a2 = v9;
  a2[1] = v10;
  v11 = *(*(a1 + v4) + 16);

  os_unfair_lock_unlock(v11);
}

uint64_t sub_1B69B29DC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B699E9F0(0xD00000000000003DLL, 0x80000001B6ACD4E0, 512);
  v4 = v3;
  if (v3 >> 60 == 15)
  {
    goto LABEL_6;
  }

  v5 = result;
  sub_1B6994494(result, v3);
  v6 = sub_1B69B3200(v5, v4);
  if (!v7)
  {
    v50 = v5;
    v51 = v4;
    sub_1B6994494(v5, v4);
    sub_1B697ED90(0, &qword_1EB95C498);
    if (swift_dynamicCast())
    {
      sub_1B6980E70(&v47, &v52);
      __swift_project_boxed_opaque_existential_1(&v52, v53);
      if (sub_1B6AB9EC0())
      {
        sub_1B69AE288(v5, v4);
        __swift_project_boxed_opaque_existential_1(&v52, v53);
        sub_1B6AB9EB0();
        v8 = *(&v47 + 1);
        v9 = v47;
        __swift_destroy_boxed_opaque_existential_1(&v52);
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

    else
    {
      v49 = 0;
      v47 = 0u;
      v48 = 0u;
      sub_1B6A7B2D8(&v47);
    }

    v6 = sub_1B6A78C40(v5, v4);
  }

  v9 = v6;
  v8 = v7;
  sub_1B69AE288(v5, v4);
LABEL_11:
  v52 = 0;
  v10 = sub_1B69B2798(v9, v8);

  if (!v10)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1B6ABF500;
    v15 = sub_1B6AB8B80();
    v17 = v16;
    v18 = MEMORY[0x1E69E6158];
    *(v14 + 56) = MEMORY[0x1E69E6158];
    v19 = sub_1B698CEC0();
    *(v14 + 64) = v19;
    *(v14 + 32) = v15;
    *(v14 + 40) = v17;
    v20 = sub_1B6AB8C60();
    v21 = [v20 description];

    v22 = sub_1B6AB92E0();
    v24 = v23;

    *(v14 + 96) = v18;
    *(v14 + 104) = v19;
    *(v14 + 72) = v22;
    *(v14 + 80) = v24;
    sub_1B6AB8F70();
    sub_1B69AE288(v5, v4);

    goto LABEL_6;
  }

  v11 = v52;
  v12 = sub_1B699E9F0(0xD000000000000042, 0x80000001B6ACD580, 512);
  v25 = v13;
  v45 = v11;
  if (v13 >> 60 == 15)
  {
    result = sub_1B69AE288(v5, v4);
LABEL_6:
    *a1 = xmmword_1B6AC0320;
    return result;
  }

  v26 = v12;
  sub_1B6994494(v12, v13);
  v27 = sub_1B69B3200(v26, v25);
  if (v28)
  {
    v29 = v27;
    v30 = v28;
    sub_1B69AE288(v26, v25);
LABEL_20:
    v31 = v45;
    goto LABEL_27;
  }

  v50 = v26;
  v51 = v25;
  sub_1B6994494(v26, v25);
  sub_1B697ED90(0, &qword_1EB95C498);
  if (swift_dynamicCast())
  {
    HIDWORD(v44) = 0;
    sub_1B6980E70(&v47, &v52);
    __swift_project_boxed_opaque_existential_1(&v52, v53);
    if (sub_1B6AB9EC0())
    {
      sub_1B69AE288(v26, v25);
      __swift_project_boxed_opaque_existential_1(&v52, v53);
      sub_1B6AB9EB0();
      v30 = *(&v47 + 1);
      v29 = v47;
      __swift_destroy_boxed_opaque_existential_1(&v52);
      goto LABEL_20;
    }

    __swift_destroy_boxed_opaque_existential_1(&v52);
    v31 = v45;
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    sub_1B6A7B2D8(&v47);
    v31 = v45;
  }

  v29 = sub_1B6A78C40(v26, v25);
  v30 = v32;
  sub_1B69AE288(v26, v25);
LABEL_27:
  v33._countAndFlagsBits = v29;
  v33._object = v30;
  TimestampGranularity.init(rawValue:)(v33);
  if (v46 == 5)
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    LODWORD(v44) = sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1B6ABF500;
    v35 = sub_1B6AB8B80();
    v37 = v36;
    *(v34 + 56) = MEMORY[0x1E69E6158];
    v38 = sub_1B698CEC0();
    *(v34 + 64) = v38;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    v39 = sub_1B6AB8C60();
    v40 = [v39 description];

    v41 = sub_1B6AB92E0();
    v43 = v42;

    *(v34 + 96) = MEMORY[0x1E69E6158];
    *(v34 + 104) = v38;
    *(v34 + 72) = v41;
    *(v34 + 80) = v43;
    sub_1B6AB8F70();
    sub_1B69AE288(v5, v4);
    sub_1B69AE288(v26, v25);

    goto LABEL_6;
  }

  sub_1B69AE288(v5, v4);
  result = sub_1B69AE288(v26, v25);
  *a1 = v46;
  *(a1 + 8) = v31;
  return result;
}

uint64_t sub_1B69B3200(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      goto LABEL_16;
    }

    goto LABEL_10;
  }

  if (v2 != 2)
  {
    goto LABEL_16;
  }

  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  a1 = sub_1B6AB8900();
  if (a1)
  {
    a1 = sub_1B6AB8930();
    if (__OFSUB__(v3, a1))
    {
      goto LABEL_18;
    }
  }

  if (__OFSUB__(v4, v3))
  {
    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!sub_1B6AB8900() || !__OFSUB__(v5, sub_1B6AB8930()))
      {
        goto LABEL_15;
      }

LABEL_19:
      __break(1u);
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_15:
  sub_1B6AB8920();
LABEL_16:
  result = sub_1B6AB9360();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

AppAnalytics::TimestampGranularity_optional __swiftcall TimestampGranularity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6AB9EF0();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B69B343C()
{
  v0 = sub_1B6AB9320();
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = sub_1B699E9F0(0xD00000000000003FLL, 0x80000001B6ACCEA0, 512);
  if (v3 >> 60 == 15)
  {
    return 0;
  }

  v5 = v3;
  v6 = v2;
  sub_1B6AB9310();
  v7 = v5;
  v8 = sub_1B6AB92F0();
  if (v9)
  {
    v10 = v8;
    sub_1B69AE288(v6, v5);
    return v10;
  }

  else
  {
    v22 = v8;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1B6ABF500;
    v12 = sub_1B6AB8B80();
    v14 = v13;
    v15 = MEMORY[0x1E69E6158];
    *(v11 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1B698CEC0();
    *(v11 + 64) = v16;
    *(v11 + 32) = v12;
    *(v11 + 40) = v14;
    v17 = sub_1B6AB8C60();
    v18 = [v17 description];

    v19 = sub_1B6AB92E0();
    v21 = v20;

    *(v11 + 96) = v15;
    *(v11 + 104) = v16;
    *(v11 + 72) = v19;
    *(v11 + 80) = v21;
    sub_1B6AB8F70();

    sub_1B69AE288(v6, v7);
    return v22;
  }
}

uint64_t sub_1B69B3830(uint64_t a1, uint64_t a2)
{
  sub_1B69882EC(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1B69B38D8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    sub_1B6986740(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 40);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B69B39C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    sub_1B6986740(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    v9 = v8;
    v10 = *(*(v8 - 8) + 48);
    v11 = a1 + *(a3 + 40);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1B69B3AA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1B69B3B58(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1B69DE144();
    v9 = v15;
  }

  v10 = *(v9 + 48) + 40 * v6;
  sub_1B69B47D4(*v10, *(v10 + 8), *(v10 + 16), *(v10 + 24), *(v10 + 32));
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_1B69E5834(v6, v9);
  *v2 = v9;
  return v12;
}

unint64_t sub_1B69B3B58(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B6ABA1F0();
  v4 = *a1;
  v5 = *(a1 + 8);
  if (*(a1 + 32))
  {
    v7 = *(a1 + 16);
    v6 = *(a1 + 24);
    MEMORY[0x1B8C98A40](1);
    sub_1B6AB9380();
  }

  else
  {
    MEMORY[0x1B8C98A40](0);
  }

  sub_1B6AB9380();
  v8 = sub_1B6ABA230();

  return sub_1B69B3C20(a1, v8);
}

unint64_t sub_1B69B3C20(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return v4;
  }

  v7 = *a1;
  v6 = *(a1 + 8);
  v27 = *(a1 + 24);
  v28 = *(a1 + 16);
  v24 = v6;
  v25 = ~v3;
  v26 = *(a1 + 32);
  while (1)
  {
    v8 = *(v30 + 48) + 40 * v4;
    v9 = *v8;
    v10 = *(v8 + 8);
    v12 = *(v8 + 16);
    v11 = *(v8 + 24);
    v13 = *(v8 + 32);
    if (v13)
    {
      break;
    }

    if (*(a1 + 32))
    {
LABEL_3:
      sub_1B69E0EFC(a1, v31);
LABEL_4:
      sub_1B69E0EBC(v9, v10, v12, v11, v13);
      sub_1B69B47D4(v9, v10, v12, v11, v13);
      sub_1B69B47D4(v7, v6, v28, v27, v26 & 1);
      goto LABEL_5;
    }

    if (v9 == *a1 && v10 == *(a1 + 8))
    {
      sub_1B69E0EFC(a1, v31);
      goto LABEL_30;
    }

    v22 = sub_1B6ABA0F0();
    sub_1B69E0EFC(a1, v31);
    sub_1B69E0EBC(v9, v10, v12, v11, 0);
    sub_1B69B47D4(v9, v10, v12, v11, 0);
    sub_1B69B47D4(v7, v6, v28, v27, v26 & 1);
    if (v22)
    {
      return v4;
    }

LABEL_5:
    v4 = (v4 + 1) & v25;
    if (((*(v29 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return v4;
    }
  }

  if ((*(a1 + 32) & 1) == 0)
  {
    goto LABEL_3;
  }

  v14 = v7;
  v15 = *(a1 + 16);
  v16 = *(a1 + 24);
  v17 = v9 == *a1 && v10 == *(a1 + 8);
  if (!v17 && (sub_1B6ABA0F0() & 1) == 0)
  {
    sub_1B69E0EFC(a1, v31);
    v7 = v14;
    v6 = v24;
    goto LABEL_4;
  }

  if (v12 != v15 || v11 != v16)
  {
    v19 = sub_1B6ABA0F0();
    sub_1B69E0EFC(a1, v31);
    sub_1B69E0EBC(v9, v10, v12, v11, 1);
    sub_1B69B47D4(v9, v10, v12, v11, 1);
    v7 = v14;
    v20 = v14;
    v6 = v24;
    sub_1B69B47D4(v20, v24, v28, v27, v26 & 1);
    if (v19)
    {
      return v4;
    }

    goto LABEL_5;
  }

  sub_1B69E0EFC(a1, v31);
  v7 = v14;
  v6 = v24;
LABEL_30:
  sub_1B69E0EBC(v9, v10, v12, v11, v13);
  sub_1B69B47D4(v9, v10, v12, v11, v13);
  sub_1B69B47D4(v7, v6, v28, v27, v26 & 1);
  return v4;
}

uint64_t Batch.toJSONObject()()
{
  v1 = v0;
  v83[58] = *MEMORY[0x1E69E9840];
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6986740(0, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v66 - v9;
  v11 = type metadata accessor for Batch();
  sub_1B69B20C4(v1 + *(v11 + 56), v10);
  v12 = (*(v3 + 48))(v10, 1, v2);
  v13 = 0;
  if (v12 != 1)
  {
    (*(v3 + 32))(v6, v10, v2);
    sub_1B6AB8D60();
    v15 = v14;
    (*(v3 + 8))(v6, v2);
    v16 = v15 * 1000.0;
    if (COERCE__INT64(fabs(v15 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_46;
    }

    if (v16 <= -9.22337204e18)
    {
LABEL_47:
      __break(1u);
    }

    else if (v16 < 9.22337204e18)
    {
      v13 = v16;
      goto LABEL_6;
    }

    __break(1u);
  }

LABEL_6:
  sub_1B6986740(0, &qword_1EDBCB610, sub_1B69B4824, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  v79 = xmmword_1B6ABF500;
  *(inited + 16) = xmmword_1B6ABF500;
  *(inited + 32) = 0x617461646174656DLL;
  v69 = inited + 32;
  v71 = inited;
  *(inited + 40) = 0xE800000000000000;
  v18 = swift_initStackObject();
  *(v18 + 32) = 0x6E6F6973726576;
  *(v18 + 16) = xmmword_1B6ABD530;
  v19 = MEMORY[0x1E69E6158];
  *(v18 + 40) = 0xE700000000000000;
  *(v18 + 48) = 0x312E312E30;
  *(v18 + 56) = 0xE500000000000000;
  *(v18 + 72) = v19;
  *(v18 + 80) = 0x696669746E656469;
  *(v18 + 88) = 0xEA00000000007265;
  v20 = v1[3];
  *(v18 + 96) = v1[2];
  *(v18 + 104) = v20;
  *(v18 + 120) = v19;
  *(v18 + 128) = 0x7461446873756C66;
  *(v18 + 136) = 0xE900000000000065;
  if (v12 == 1)
  {
    v81 = 0u;
    v82 = 0u;
    v21 = objc_allocWithZone(MEMORY[0x1E695DFB0]);

    v22 = [v21 init];
    *(v18 + 168) = sub_1B69E0520();
    *(v18 + 144) = v22;
    if (*(&v82 + 1))
    {
      sub_1B6981634(&v81);
    }
  }

  else
  {
    *(&v82 + 1) = MEMORY[0x1E69E7360];
    *&v81 = v13;
    sub_1B69979CC(&v81, (v18 + 144));
  }

  v23 = sub_1B69B4888(v18);
  swift_setDeallocating();
  sub_1B69B4824();
  v25 = v24;
  swift_arrayDestroy();
  sub_1B6988228(0, &qword_1EDBCCC60, MEMORY[0x1E69E5E28]);
  v27 = v26;
  v28 = v71;
  v71[6] = v23;
  v28[9] = v26;
  v28[10] = 1635017060;
  v28[11] = 0xE400000000000000;
  v29 = swift_initStackObject();
  *(v29 + 32) = 0x6E6F6973736573;
  *(v29 + 16) = v79;
  *(v29 + 40) = 0xE700000000000000;
  *(v29 + 48) = *v1;
  *(v29 + 72) = v27;
  *(v29 + 80) = 0x73746E657665;
  *(v29 + 88) = 0xE600000000000000;
  v30 = v1[1];
  v31 = *(v30 + 16);
  if (v31)
  {
    v66[0] = v29;
    v66[1] = v29 + 32;
    v67 = v27;
    v68 = v25;
    v80 = MEMORY[0x1E69E7CC0];

    v72 = v31;
    sub_1B69B4A24(0, v31, 0);
    v32 = 0;
    v33 = v80;
    v73 = v30 + 32;
    while (1)
    {
      v34 = *(v73 + 8 * v32);
      v35 = *(v34 + 32);
      v36 = v35 & 0x3F;
      v77 = ((1 << v35) + 63) >> 6;
      v37 = 8 * v77;

      if (v36 <= 0xD)
      {
        goto LABEL_13;
      }

      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_13:
        v75 = v32;
        v76 = v33;
        v74 = v66;
        MEMORY[0x1EEE9AC00](v38);
        v78 = v66 - ((v37 + 15) & 0x3FFFFFFFFFFFFFF0);
        bzero(v78, v37);
        *&v79 = 0;
        v39 = 0;
        v40 = 1 << *(v34 + 32);
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v42 = v41 & *(v34 + 64);
        v43 = (v40 + 63) >> 6;
        while (1)
        {
          if (v42)
          {
            v44 = __clz(__rbit64(v42));
            v42 &= v42 - 1;
            goto LABEL_25;
          }

          v45 = v39;
          do
          {
            v39 = v45 + 1;
            if (__OFADD__(v45, 1))
            {
              __break(1u);
LABEL_45:
              __break(1u);
LABEL_46:
              __break(1u);
              goto LABEL_47;
            }

            if (v39 >= v43)
            {
              v54 = sub_1B69B4BEC(v78, v77, v79, v34);
              v32 = v75;
              v33 = v76;
              goto LABEL_34;
            }

            v46 = *(v34 + 64 + 8 * v39);
            ++v45;
          }

          while (!v46);
          v44 = __clz(__rbit64(v46));
          v42 = (v46 - 1) & v46;
LABEL_25:
          v47 = v44 | (v39 << 6);
          v48 = (*(v34 + 48) + 16 * v47);
          v49 = *v48;
          v50 = v48[1];
          sub_1B698FE74(*(v34 + 56) + 32 * v47, v83);
          *&v81 = v49;
          *(&v81 + 1) = v50;
          sub_1B698FE74(v83, &v82);
          if (v49 == 0x4D65746176697270 && v50 == 0xEF61746164617465)
          {
            swift_bridgeObjectRetain_n();
            sub_1B69B4B90(&v81);
            __swift_destroy_boxed_opaque_existential_1(v83);

            continue;
          }

          v52 = sub_1B6ABA0F0();
          swift_bridgeObjectRetain_n();
          sub_1B69B4B90(&v81);
          __swift_destroy_boxed_opaque_existential_1(v83);

          if ((v52 & 1) == 0)
          {
            *&v78[(v47 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v47;
            v53 = __OFADD__(v79, 1);
            *&v79 = v79 + 1;
            if (v53)
            {
              goto LABEL_45;
            }
          }
        }
      }

      v57 = swift_slowAlloc();

      v58 = v70;
      v59 = sub_1B6A33038(v57, v77, v34, sub_1B6A32D98);
      v70 = v58;
      if (v58)
      {
        break;
      }

      v54 = v59;

      MEMORY[0x1B8C99550](v57, -1, -1);
LABEL_34:

      v80 = v33;
      v56 = *(v33 + 16);
      v55 = *(v33 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1B69B4A24((v55 > 1), v56 + 1, 1);
        v33 = v80;
      }

      ++v32;
      *(v33 + 16) = v56 + 1;
      *(v33 + 8 * v56 + 32) = v54;
      if (v32 == v72)
      {
        v27 = v67;
        v29 = v66[0];
        goto LABEL_43;
      }
    }

    result = MEMORY[0x1B8C99550](v57, -1, -1);
    __break(1u);
  }

  else
  {

    v33 = MEMORY[0x1E69E7CC0];
LABEL_43:
    sub_1B6986668();
    *(v29 + 120) = v60;
    *(v29 + 96) = v33;
    v61 = sub_1B69B4888(v29);
    swift_setDeallocating();
    swift_arrayDestroy();
    v62 = v71;
    v71[15] = v27;
    *(v62 + 96) = v61;
    v63 = sub_1B69B4888(v62);
    swift_setDeallocating();
    swift_arrayDestroy();
    v64 = *MEMORY[0x1E69E9840];
    return v63;
  }

  return result;
}

uint64_t sub_1B69B47D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

void sub_1B69B4824()
{
  if (!qword_1EDBCAFF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCAFF8);
    }
  }
}

unint64_t sub_1B69B4888(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EDBCBB10);
    v3 = sub_1B6AB9E90();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B69F7CCC(v4, &v13, &qword_1EDBCAFF8);
      v5 = v13;
      v6 = v14;
      result = sub_1B6993940(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1B69979CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1B69B49CC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void *sub_1B69B4A24(void *a1, int64_t a2, char a3)
{
  result = sub_1B69B4A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69B4A44(void *result, int64_t a2, char a3, void *a4)
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
    sub_1B69E8EF8(0, &qword_1EDBCAFC0, sub_1B697EFC4, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B697EFC4();
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69B4B90(uint64_t a1)
{
  sub_1B69A1808();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69B4BEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  sub_1B6988228(0, &qword_1EDBCBB10, MEMORY[0x1E69E6EC8]);
  result = sub_1B6AB9E90();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1B698FE74(v17 + 32 * v16, v34);
    sub_1B69979CC(v34, v33);
    v21 = *(v9 + 40);
    sub_1B6ABA1F0();

    sub_1B6AB9380();
    result = sub_1B6ABA230();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    result = sub_1B69979CC(v33, (*(v9 + 56) + 32 * v25));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1B69B4E4C()
{
  sub_1B6988350(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = v60 - v3;
  v5 = type metadata accessor for Session();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1B6AB8BB0();
  v65 = *(v10 - 8);
  v66 = v10;
  v11 = *(v65 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v60 - v15;
  v17 = v0[11];
  v18 = *(v17 + 16);
  v19 = *(v17 + 24);
  os_unfair_lock_lock_with_options();
  swift_beginAccess();
  v20 = v0[10];
  v0[10] = MEMORY[0x1E69E7CC8];

  os_unfair_lock_unlock(*(v0[11] + 16));
  v21 = __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  v22 = *v21;
  v23 = (*v21 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v24 = v23[3];
  v25 = v23[4];
  v63 = v23;
  v64 = v24;
  v62 = __swift_project_boxed_opaque_existential_1(v23, v24);
  v26 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v22 + v26, v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1B699D254(v4, qword_1EDBCCC78, type metadata accessor for Session);
    v27 = *(v22 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v28 = *(v22 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v27);
    (*(v28 + 8))(v27, v28);
    v30 = v65;
    v29 = v66;
  }

  else
  {
    sub_1B69B5BF8(v4, v9, type metadata accessor for Session);
    v31 = *(v22 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v32 = *(v22 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v22 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v31);
    (*(v32 + 8))(v31, v32);
    v33 = *v9;
    v34 = v9[1];
    sub_1B6AB8B30();
    v35 = v65;
    v29 = v66;
    (*(v65 + 8))(v14, v66);
    sub_1B69B6D24(v9, type metadata accessor for Session);
    v30 = v35;
  }

  v36 = v67;
  v37 = (*(v25 + 128))(v16, v64, v25);
  if (v36)
  {
    return (*(v30 + 8))(v16, v29);
  }

  v39 = v37;
  (*(v30 + 8))(v16, v29);
  v40 = *(v39 + 16);
  v60[0] = v39;
  if (v40)
  {
    v41 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
    v42 = (v39 + 40);
    v61 = xmmword_1B6ABF500;
    v62 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
    v60[1] = v22;
    do
    {
      v45 = *(v42 - 1);
      v46 = *v42;
      v47 = *(v22 + v41);
      v48 = *(v47 + 16);
      v49 = *(v47 + 24);

      os_unfair_lock_lock_with_options();
      v67 = v45;
      v50 = sub_1B699D580(v45, v46);
      v51 = v63[3];
      v52 = v63[4];
      __swift_project_boxed_opaque_existential_1(v63, v51);
      (*(v52 + 24))(v50, v51, v52);

      swift_beginAccess();
      v53 = *(v22 + 40);
      v54 = sub_1B6993940(v67, v46);
      if (v55)
      {
        v56 = v54;
        v57 = *(v22 + 40);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v59 = *(v22 + 40);
        v68 = v59;
        *(v22 + 40) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1B69DDE44();
          v59 = v68;
        }

        v43 = *(*(v59 + 48) + 16 * v56 + 8);

        v44 = *(*(v59 + 56) + 8 * v56);

        sub_1B69AD900(v56, v59);
        *(v22 + 40) = v59;
      }

      swift_endAccess();

      v41 = v62;
      os_unfair_lock_unlock(*(*(v62 + v22) + 16));
      v42 += 2;
      --v40;
    }

    while (v40);
  }
}

char *sub_1B69B5508()
{
  v1 = sub_1B6AB8BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v6 = v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v38 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - v10;
  result = sub_1B699344C();
  if (v0)
  {
    return v9;
  }

  v13 = result;
  v40 = v9;
  v46 = v6;
  v44 = *(result + 2);
  v38[1] = 0;
  if (!v44)
  {
    v41 = MEMORY[0x1E69E7CC0];
LABEL_17:

    v24 = *(v41 + 2);
    if (v24)
    {
      v47 = MEMORY[0x1E69E7CC0];
      v25 = v41;
      sub_1B6994474(0, v24, 0);
      v9 = v47;
      v27 = *(v2 + 16);
      v26 = v2 + 16;
      v28 = v25 + ((*(v26 + 64) + 32) & ~*(v26 + 64));
      v43 = *(v26 + 56);
      v44 = v27;
      v42 = (v26 - 8);
      v29 = v46;
      v45 = v26;
      do
      {
        v44(v29, v28, v1);
        v30 = sub_1B6AB8B10();
        v29 = v46;
        v31 = v30;
        v33 = v32;
        v34 = v1;
        (*v42)(v46, v1);
        v47 = v9;
        v36 = *(v9 + 2);
        v35 = *(v9 + 3);
        if (v36 >= v35 >> 1)
        {
          sub_1B6994474((v35 > 1), v36 + 1, 1);
          v29 = v46;
          v9 = v47;
        }

        *(v9 + 2) = v36 + 1;
        v37 = &v9[16 * v36];
        *(v37 + 4) = v31;
        *(v37 + 5) = v33;
        v28 += v43;
        --v24;
        v1 = v34;
      }

      while (v24);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v9;
  }

  v14 = 0;
  v39 = (v2 + 32);
  v42 = (v2 + 8);
  v43 = v2 + 16;
  v41 = MEMORY[0x1E69E7CC0];
  v45 = v2;
  while (v14 < *(v13 + 2))
  {
    v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v16 = *(v2 + 72);
    (*(v2 + 16))(v11, &v13[v15 + v16 * v14], v1);
    if ((sub_1B6AB8B00() & 1) == 0)
    {
      sub_1B6AB8AC0();
      if (sub_1B6AB9420())
      {
      }

      else
      {
        v17 = sub_1B6AB9420();

        if ((v17 & 1) == 0)
        {
          v18 = *v39;
          (*v39)(v40, v11, v1);
          v19 = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v21 = v19;
          v47 = v19;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B699D530(0, *(v19 + 2) + 1, 1);
            v21 = v47;
          }

          v23 = *(v21 + 2);
          v22 = *(v21 + 3);
          if (v23 >= v22 >> 1)
          {
            v41 = v18;
            sub_1B699D530(v22 > 1, v23 + 1, 1);
            v18 = v41;
            v21 = v47;
          }

          *(v21 + 2) = v23 + 1;
          v41 = v21;
          result = (v18)(&v21[v15 + v23 * v16]);
          v2 = v45;
          goto LABEL_6;
        }
      }
    }

    result = (*v42)(v11, v1);
LABEL_6:
    if (v44 == ++v14)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69B596C(uint64_t a1, uint64_t a2)
{
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1B69B5A00(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBCBB08, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1B69B5B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(v4 + 96);
  v11 = *(v5 + 88);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = v5;
  v12[5] = a1;
  v12[6] = a2;

  sub_1B69877A4(v11, sub_1B69B5C60, v12);
}

uint64_t sub_1B69B5BF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B5C60()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  return sub_1B69B5C90(v3, v4, v1, v2);
}

uint64_t sub_1B69B5C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1B6AB9B30();
  v30 = *(v9 - 8);
  v31 = v9;
  v10 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - v11;
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(v4 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v21 = sub_1B69B5FF4(a1, a2, a3, a4);
    v23 = v22;
    swift_beginAccess();
    v24 = *(v4 + 128);
    if (*(v24 + 16))
    {
      v29[1] = v4;

      v25 = sub_1B6993940(v21, v23);
      if (v26)
      {
        sub_1B6982544(*(v24 + 56) + 40 * v25, &v32);

        sub_1B697ED90(0, &qword_1EDBCC3B0);
        v27 = type metadata accessor for DataEventStack();
        if (swift_dynamicCast())
        {

          v28 = sub_1B6A25EF0();

          if ((v28 & 1) == 0)
          {
            sub_1B6A261AC(v27, v12);
            (*(v30 + 8))(v12, v31);
            v34 = v27;
            v35 = &off_1F2E77398;
            v32 = v36;
            v33 = v37;
            swift_beginAccess();
            sub_1B699A480(&v32, v21, v23);
            return swift_endAccess();
          }
        }
      }

      else
      {
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69B5FFC(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    a1 = sub_1B6ABA330();
  }

  return a1;
}

uint64_t objectdestroy_156Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t Tracker.time<A>(_:submitAndRestartWithSession:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v4 + 104);

  sub_1B6AB8DA0();
  sub_1B69B61BC(a1, v14, a2, v13, a3, a4);

  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1B69B61BC(void *a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v21 = a3;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = *(v6 + 88);
  v18 = *(v6 + 96);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
  v14 = (*(v11 + 80) + 56) & ~*(v11 + 80);
  v15 = swift_allocObject();
  v16 = v20;
  *(v15 + 2) = v19;
  *(v15 + 3) = v16;
  *(v15 + 4) = v6;
  *(v15 + 5) = a1;
  *(v15 + 6) = a2;
  (*(v11 + 32))(&v15[v14], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v15[v14 + v12] = v21;

  sub_1B6992B50(a1, a2);
  sub_1B69877A4(v13, sub_1B69C33D0, v15);
}

uint64_t sub_1B69B6350()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64) + v4;
  v6 = *(v0 + 32);

  sub_1B69C346C(*(v0 + 40), *(v0 + 48));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 1, v3 | 7);
}

uint64_t UploadBatchEventProcessor.didStartSession(_:)(uint64_t a1)
{
  v2 = v1;
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - v6;
  v8 = *__swift_project_boxed_opaque_existential_1((*(v1 + 16) + 32), *(*(v1 + 16) + 56));
  sub_1B69B66B8(a1);
  sub_1B69B4E4C();
  sub_1B69B6D84(a1, v7);
  v9 = type metadata accessor for Session();
  (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  v10 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B6B60(v7, v2 + v10);
  return swift_endAccess();
}

void sub_1B69B66B8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Session();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_1B6AB8BB0();
  v41 = *(v9 - 8);
  v42 = v9;
  v10 = *(v41 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v38 - v14;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v40 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v22 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
  v23 = *(v22 + 16);
  v24 = *(v22 + 24);
  os_unfair_lock_lock_with_options();
  sub_1B69B6AF8(a1, v21, type metadata accessor for Session);
  (*(v5 + 56))(v21, 0, 1, v4);
  v25 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B6B60(v21, v2 + v25);
  swift_endAccess();
  v26 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v27 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v38 = __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v26);
  sub_1B69B596C(v2 + v25, v19);
  if ((*(v5 + 48))(v19, 1, v4) == 1)
  {
    sub_1B698E840(v19, qword_1EDBCCC78, type metadata accessor for Session);
    v28 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v29 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v28);
    v30 = v39;
    (*(v29 + 8))(v28, v29);
    v32 = v41;
    v31 = v42;
  }

  else
  {
    sub_1B69B6BF4(v19, v8, type metadata accessor for Session);
    v33 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v34 = *(v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v33);
    (*(v34 + 8))(v33, v34);
    v35 = *v8;
    v36 = v8[1];
    v30 = v39;
    sub_1B6AB8B30();
    v32 = v41;
    v37 = v42;
    (*(v41 + 8))(v13, v42);
    sub_1B69B6CC4(v8, type metadata accessor for Session);
    v31 = v37;
  }

  (*(v27 + 120))(v30, v26, v27);
  (*(v32 + 8))(v30, v31);
  os_unfair_lock_unlock(*(*(v2 + v40) + 16));
}

uint64_t sub_1B69B6AF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B6B60(uint64_t a1, uint64_t a2)
{
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69B6BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B6C5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69B6CC4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B69B6D24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B69B6D84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69B6DF8(uint64_t *a1)
{
  v16 = *(v1 + 56);
  sub_1B6AB98D0();
  sub_1B69990B4();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B6ABD530;
  v4 = *a1;
  v5 = a1[1];
  v6 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B698CEC0();
  *(v3 + 64) = v7;
  *(v3 + 32) = v4;
  *(v3 + 40) = v5;
  v8 = type metadata accessor for Session();
  v9 = *(v8 + 28);
  sub_1B6AB8DB0();
  sub_1B69B6F38();

  v10 = sub_1B6ABA080();
  *(v3 + 96) = v6;
  *(v3 + 104) = v7;
  *(v3 + 72) = v10;
  *(v3 + 80) = v11;
  v12 = *(a1 + *(v8 + 32));
  v13 = sub_1B6AB9220();
  *(v3 + 136) = v6;
  *(v3 + 144) = v7;
  *(v3 + 112) = v13;
  *(v3 + 120) = v14;
  sub_1B6AB8F70();
}

unint64_t sub_1B69B6F38()
{
  result = qword_1EDBCCC38;
  if (!qword_1EDBCCC38)
  {
    sub_1B6AB8DB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCCC38);
  }

  return result;
}

uint64_t sub_1B69B6F98(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  return sub_1B69AC2BC(sub_1B69B6FF4, v3);
}

uint64_t sub_1B69B6FF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1B69B7024()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 57) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 32);
  v5 = *(v0 + 56);
  v6 = *(v4 + 88);
  v8[1] = *(v0 + 16);
  v9 = v4;
  v10 = *(v0 + 40);
  v11 = v5;
  v12 = v0 + v2;
  v13 = 0;
  v14 = 0;
  v15 = v0 + v3;
  v16 = *(v0 + ((v3 + 39) & 0xFFFFFFFFFFFFFFF8));
  return sub_1B6995F94(v6, sub_1B69AC4E4, v8, v0 + v2);
}

void sub_1B69B7120(uint64_t a1, uint64_t a2, int a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(uint64_t *), uint64_t a9, uint64_t a10, uint64_t a11)
{
  v211 = a8;
  v191 = a7;
  v193 = a6;
  v192 = a5;
  v187 = a4;
  LODWORD(v210) = a3;
  *(&v207 + 1) = a2;
  *&v207 = a1;
  v201 = type metadata accessor for EventSubmitResult();
  v200 = *(v201 - 8);
  v12 = *(v200 + 64);
  MEMORY[0x1EEE9AC00](v201);
  v199 = (&v175 - v13);
  v208 = a11;
  v209 = a10;
  v180 = type metadata accessor for ProcessEvent();
  v179 = *(v180 - 8);
  v14 = *(v179 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v178 = &v175 - v15;
  v16 = type metadata accessor for Sequence(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v183 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1E69E6720];
  sub_1B6A56C3C(0, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v189 = &v175 - v22;
  v196 = sub_1B6AB8DB0();
  v195 = *(v196 - 8);
  v23 = v195[8];
  v24 = MEMORY[0x1EEE9AC00](v196);
  v177 = &v175 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v194 = &v175 - v26;
  v186 = sub_1B6AB8E40();
  v185 = *(v186 - 8);
  v27 = *(v185 + 8);
  MEMORY[0x1EEE9AC00](v186);
  v184 = &v175 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for EventData();
  v29 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v31 = (&v175 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v198 = type metadata accessor for SessionManager.SessionState(0);
  v32 = *(*(v198 - 8) + 64);
  MEMORY[0x1EEE9AC00](v198);
  v202 = &v175 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, v19);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v175 - v36;
  v38 = sub_1B6AB90F0();
  v39 = *(v38 - 8);
  v40 = v39[8];
  MEMORY[0x1EEE9AC00](v38);
  v42 = (&v175 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
  v212 = v11;
  v43 = *(v11 + 88);
  v44 = OBJC_IVAR___AAAccessQueue_queue;
  v182 = v43;
  v45 = *&v43[OBJC_IVAR___AAAccessQueue_queue];
  *v42 = v45;
  v46 = v39[13];
  v203 = *MEMORY[0x1E69E8020];
  v205 = v39 + 13;
  v204 = v46;
  v46(v42);
  v47 = v45;
  v48 = sub_1B6AB9110();
  v50 = v39[1];
  v49 = v39 + 1;
  v51 = v38;
  v52 = v49;
  v206 = v50;
  v50(v42, v38);
  if ((v48 & 1) == 0)
  {
    __break(1u);
    goto LABEL_59;
  }

  v181 = v44;
  v190 = v31;
  v53 = a9;
  if (v210)
  {
    v197 = a9;
    v54 = sub_1B69A09A4(v207, *(&v207 + 1));
    v56 = v55;
    v57 = v212;
    swift_beginAccess();
    v58 = v57[14];
    if (!*(v58 + 16) || (, v59 = sub_1B6993940(v54, v56), v61 = v60, , (v61 & 1) == 0))
    {

      v83 = type metadata accessor for Tracker.Timer(0);
      (*(*(v83 - 8) + 56))(v37, 1, 1, v83);
      sub_1B6A5718C(v37, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
      v84 = v211;
      if (!v211)
      {
        return;
      }

      sub_1B6A16B30();
      v85 = swift_allocError();
      *v86 = xmmword_1B6AC0330;
      v87 = v199;
      *v199 = v85;
      v88 = v201;
      swift_storeEnumTagMultiPayload();
      v84(v87);
      goto LABEL_20;
    }

    v62 = *(v58 + 56);
    v63 = type metadata accessor for Tracker.Timer(0);
    v64 = *(v63 - 8);
    sub_1B699A32C(v62 + *(v64 + 72) * v59, v37, type metadata accessor for Tracker.Timer);

    (*(v64 + 56))(v37, 0, 1, v63);
    sub_1B6A5718C(v37, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
    v53 = v197;
  }

  v65 = v212;
  Strong = swift_unknownObjectWeakLoadStrong();
  v67 = v51;
  v52 = v202;
  if (!Strong)
  {
    goto LABEL_11;
  }

  v68 = Strong;
  v69 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v42 = v69;
  v204(v42, v203, v51);
  v70 = v69;
  LOBYTE(v69) = sub_1B6AB9110();
  v206(v42, v51);
  if ((v69 & 1) == 0)
  {
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
    swift_once();
    sub_1B6AB98F0();
    sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v139 = swift_allocObject();
    *(v139 + 16) = xmmword_1B6ABF500;
    *&v213 = 0;
    *(&v213 + 1) = 0xE000000000000000;
    v216 = v207;
    type metadata accessor for EventSubmit();
    sub_1B6ABA0D0();
    v140 = v213;
    v141 = MEMORY[0x1E69E6158];
    *(v139 + 56) = MEMORY[0x1E69E6158];
    v142 = sub_1B698CEC0();
    *(v139 + 64) = v142;
    *(v139 + 32) = v140;
    *&v213 = 0;
    *(&v213 + 1) = 0xE000000000000000;
    *&v216 = v52;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v143 = v213;
    *(v139 + 96) = v141;
    *(v139 + 104) = v142;
    *(v139 + 72) = v143;
    sub_1B6AB8F70();

    if (!v51)
    {

      return;
    }

    v87 = v199;
    *v199 = v52;
    v88 = v201;
    swift_storeEnumTagMultiPayload();
    v144 = v52;
    (v51)(v87);

LABEL_20:
    (*(v200 + 8))(v87, v88);
    return;
  }

  v71 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B699A32C(v68 + v71, v52, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6984D38(v52, type metadata accessor for SessionManager.SessionState);
    }

LABEL_11:
    v73 = swift_unknownObjectWeakLoadStrong();
    v74 = v211;
    if (!v73)
    {
LABEL_14:
      if (v74)
      {
        sub_1B6A16B30();
        v79 = swift_allocError();
        *v80 = 0;
        v80[1] = 0;
        v81 = v199;
        *v199 = v79;
        v82 = v201;
        swift_storeEnumTagMultiPayload();
        v74(v81);
        (*(v200 + 8))(v81, v82);
      }

      return;
    }

    v75 = v73;
    v76 = *(*(v73 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v42 = v76;
    v204(v42, v203, v51);
    v77 = v76;
    v52 = sub_1B6AB9110();
    v206(v42, v51);
    if (v52)
    {
      v78 = *(v75 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options);
      swift_unknownObjectRelease();
      if (v78)
      {
        sub_1B6A4CA64(v207, *(&v207 + 1), v192, v193, v191, v74, v53, v209, v208);
        return;
      }

      goto LABEL_14;
    }

    goto LABEL_60;
  }

  v89 = *v52;
  v90 = swift_unknownObjectWeakLoadStrong();
  v197 = v53;
  if (v90)
  {
    sub_1B69B8B64(v207, *(&v207 + 1), v209, v208, &v213);
    v216 = v213;
    v217 = v214;
    v218 = v215;
    v210 = sub_1B69B8DBC(&v216);
    swift_unknownObjectRelease();
  }

  else
  {
    v210 = 0;
  }

  v91 = v184;
  sub_1B6AB8E30();
  v198 = sub_1B6AB8DD0();
  v176 = v92;
  (*(v185 + 1))(v91, v186);
  v93 = v195[2];
  v186 = (v195 + 2);
  v185 = v93;
  v93(v194, v187, v196);
  *&v213 = 47;
  *(&v213 + 1) = 0xE100000000000000;

  v94 = MEMORY[0x1E69E7CC0];
  v95 = v65;
  do
  {
    v98 = v95[3];
    if (v98)
    {
      v99 = v95[2];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1B69B5A00(0, *(v94 + 2) + 1, 1, v94);
      }

      v101 = *(v94 + 2);
      v100 = *(v94 + 3);
      if (v101 >= v100 >> 1)
      {
        v94 = sub_1B69B5A00((v100 > 1), v101 + 1, 1, v94);
      }

      *(v94 + 2) = v101 + 1;
      v96 = &v94[16 * v101];
      *(v96 + 4) = v99;
      *(v96 + 5) = v98;
    }

    v97 = v95[19];

    v95 = v97;
  }

  while (v97);
  *&v216 = sub_1B69B919C(v94);
  sub_1B6980AE0(0, &qword_1EDBCAFF0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  sub_1B699918C();
  v102 = sub_1B6AB9290();
  v104 = v103;

  MEMORY[0x1B8C97BE0](v102, v104);

  v105 = *(&v213 + 1);
  v187 = v213;
  v202 = v89;
  if (v210)
  {
    v107 = *(v210 + 16);
    v106 = *(v210 + 24);
    v108 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
    v109 = (v210 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
    v110 = *(v210 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
    if (v110)
    {
      v111 = *v109;
      v112 = v109[1];

      goto LABEL_38;
    }
  }

  else
  {
    v107 = *(v89 + 2);
    v106 = *(v89 + 3);
    v108 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier;
  }

  v113 = &v89[v108];
  v111 = *v113;
  v110 = *(v113 + 1);

LABEL_38:
  v114 = v190;
  v115 = v176;
  *v190 = v198;
  v114[1] = v115;
  v116 = v188;
  v117 = v195[4];
  v198 = *(v188 + 20);
  v117(v114 + v198, v194, v196);
  v118 = (v114 + v116[6]);
  *v118 = v187;
  v118[1] = v105;
  v119 = (v114 + v116[7]);
  *v119 = v107;
  v119[1] = v106;
  v120 = (v114 + v116[8]);
  *v120 = v111;
  v120[1] = v110;
  v121 = v189;
  v122 = v207;
  v124 = v208;
  v123 = v209;
  v125 = v212;
  sub_1B69B92B4(v207, *(&v207 + 1), v114, v209, v189);
  if (!sub_1B6A4D468(v122, *(&v122 + 1), v211, v197, v123, v124))
  {

    sub_1B6A5718C(v121, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
    sub_1B6984D38(v114, type metadata accessor for EventData);
    return;
  }

  v195 = v49;
  v126 = v183;
  sub_1B69BA134(v122, *(&v122 + 1), v114, v121, v192, v193, v123, v124, v183);
  v127 = v125;
  v128 = v126;
  v129 = v125[26];
  v130 = v127[27];
  ObjectType = swift_getObjectType();
  (*(v130 + 8))(&v213, ObjectType, v130);
  v132 = v213;
  v133 = v182;
  v134 = *&v182[v181];
  *v42 = v134;
  v204(v42, v203, v67);
  v135 = v134;
  v136 = sub_1B6AB9110();
  v137 = (v206)(v42, v67);
  if ((v136 & 1) == 0)
  {
    __break(1u);
    goto LABEL_62;
  }

  MEMORY[0x1EEE9AC00](v137);
  v173 = v132;
  v174 = v126;
  v67 = v126;
  v138 = sub_1B69BF2DC(v133, sub_1B69BFCB4, &v172);
  v128 = v211;
  v145 = v138;

  if (!v145)
  {
    v132 = v189;
    if (qword_1EDBCCEE0 == -1)
    {
LABEL_52:
      sub_1B6AB98D0();
      sub_1B6AB8F70();
      if (v128)
      {
        v167 = *v67;
        v166 = v67[1];
        sub_1B6A23D80();
        v168 = swift_allocError();
        *v169 = v167;
        v169[1] = v166;
        v170 = v199;
        *v199 = v168;
        v171 = v201;
        swift_storeEnumTagMultiPayload();

        v128(v170);

        (*(v200 + 8))(v170, v171);
      }

      else
      {
      }

      sub_1B6A5718C(v132, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
      sub_1B6984D38(v190, type metadata accessor for EventData);
      sub_1B6984D38(v67, type metadata accessor for Sequence);
      return;
    }

LABEL_62:
    swift_once();
    goto LABEL_52;
  }

  v147 = v208;
  v146 = v209;
  v148 = sub_1B69C1A34(v209, v208);
  *(&v207 + 1) = v149;
  *&v207 = v150;
  v152 = v151;
  v154 = *v67;
  v153 = v67[1];
  v155 = v177;
  v185(v177, v190 + v198, v196);
  sub_1B6992ADC(v191, &v213, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B6980AE0);
  v216 = xmmword_1B6AC0320;
  v173 = v146;
  v174 = v147;
  v156 = v178;
  ProcessEvent.init(name:json:nonJitteredEventTimestamp:groupName:groupContentType:userInfo:timestampConfiguration:)(v154, v153, v145, v155, v148, *(&v207 + 1), v207, v152 & 1, v178, &v213, &v216);
  v157 = swift_unknownObjectWeakLoadStrong();

  v158 = v145;
  if (v157)
  {
    sub_1B69C1DD4(v156, v146, v147);
    swift_unknownObjectRelease();
  }

  v159 = v189;
  v160 = v211;
  if (v211)
  {
    v161 = v179;
    v162 = v199;
    v163 = v180;
    (*(v179 + 16))(v199, v156, v180);
    v164 = v156;
    v165 = v201;
    swift_storeEnumTagMultiPayload();
    v160(v162);

    (*(v200 + 8))(v162, v165);
    (*(v161 + 8))(v164, v163);
  }

  else
  {

    (*(v179 + 8))(v156, v180);
  }

  sub_1B6A5718C(v159, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  sub_1B6984D38(v190, type metadata accessor for EventData);
  sub_1B6984D38(v183, type metadata accessor for Sequence);
}

void sub_1B69B88A4()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = *(v0 + 64);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);
  v10 = *(v0 + 104);
  v9 = *(v0 + 32);
  sub_1B69B7120(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12);
}

void sub_1B69B891C()
{
  sub_1B6AB8DB0();
  if (v0 <= 0x3F)
  {
    sub_1B69B89D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B69B89D8()
{
  if (!qword_1EDBC9BD8)
  {
    type metadata accessor for SequenceEntry(255);
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BD8);
    }
  }
}

uint64_t sub_1B69B8A30()
{
  result = type metadata accessor for SequenceEntry.Kind(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B69B8ACC()
{
  result = type metadata accessor for TimedData();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for EventData();
    if (v2 <= 0x3F)
    {
      result = sub_1B697ED90(319, qword_1EDBCB8B0);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1B69B8B64(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!(a2 >> 62))
  {
    (*(a4 + 8))(a3, a4);
    return;
  }

  if (a2 >> 62 != 1)
  {
    v14 = (*(a1 + OBJC_IVAR___AARawEvent_sessionGroup) + OBJC_IVAR___AASessionGroup_groupName);
    swift_beginAccess();
    v15 = *v14;
    v16 = v14[1];
    if (sub_1B6AB9340() == 0x746C7561666564 && v17 == 0xE700000000000000)
    {
    }

    else
    {
      v19 = sub_1B6ABA0F0();

      if ((v19 & 1) == 0)
      {
        v20 = v14[1];
        *a5 = *v14;
        *(a5 + 8) = v20;
        *(a5 + 16) = 0;
        *(a5 + 24) = 1;

        return;
      }
    }

    goto LABEL_18;
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata respondsToSelector_] & 1) == 0)
  {
LABEL_18:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 24) = 0;
    *(a5 + 16) = 0;
    return;
  }

  v7 = [ObjCClassFromMetadata sessionGroup];
  v8 = &v7[OBJC_IVAR___AASessionGroup_groupName];
  swift_beginAccess();
  v9 = *v8;
  v10 = *(v8 + 1);
  if (sub_1B6AB9340() == 0x746C7561666564 && v11 == 0xE700000000000000)
  {
  }

  else
  {
    v13 = sub_1B6ABA0F0();

    if ((v13 & 1) == 0)
    {
      v21 = *v8;
      v22 = *(v8 + 1);

      v23 = 1;
      goto LABEL_22;
    }
  }

  v21 = 0;
  v22 = 0;
  v23 = 0;
LABEL_22:
  *a5 = v21;
  *(a5 + 8) = v22;
  *(a5 + 16) = 0;
  *(a5 + 24) = v23;
}

uint64_t sub_1B69B8D94(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(result + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B69B8DBC(uint64_t *a1)
{
  v3 = sub_1B6AB8DB0();
  v48 = *(v3 - 8);
  v4 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SessionManager.SessionState(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[1];
  if (!v16)
  {
    return 0;
  }

  v47 = v3;
  v17 = *a1;
  v18 = *(*(v1 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v15 = v18;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v19 = v18;
  LOBYTE(v18) = sub_1B6AB9110();
  result = (*(v12 + 8))(v15, v11);
  if (v18)
  {
    v21 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v1 + v21, v10, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v10, type metadata accessor for SessionManager.SessionState);
      }

      return 0;
    }

    v23 = *v10;
    v24 = *(v1 + 64);
    v25 = *(*v10 + 16);
    v26 = v23[3];

    v27 = sub_1B69C0574(v17, v16, v25, v26);
    v45 = v28;
    v46 = v27;

    v30 = v23[4];
    v29 = v23[5];
    v31 = v48;
    (*(v48 + 16))(v6, v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v47);
    v32 = *(v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
    v33 = *(v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8);
    sub_1B6992E2C(v30, v29);

    v44 = sub_1B69C1704(v17, v16, v32, v33);
    v35 = v34;

    LOBYTE(v32) = *(v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter);
    v36 = *(v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);
    LOBYTE(v33) = *(v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 16);
    LOBYTE(v24) = *(v23 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 17);

    active = type metadata accessor for ActiveSession();
    v38 = *(active + 48);
    v39 = *(active + 52);
    v40 = swift_allocObject();
    v41 = v45;
    v40[2] = v46;
    v40[3] = v41;
    v40[4] = v30;
    v40[5] = v29;
    (*(v31 + 32))(v40 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate, v6, v47);
    result = v40;
    v42 = (v40 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier);
    *v42 = v44;
    v42[1] = v35;
    v43 = v40 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter;
    *v43 = v32;
    *(v43 + 1) = v36;
    v43[16] = v33;
    v43[17] = v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69B919C(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  if (v2 < 2)
  {
    return v1;
  }

  v3 = 0;
  v4 = 0;
  v5 = v2 >> 1;
  v6 = v2 - 1;
  for (i = 16 * v2 + 24; ; i -= 16)
  {
    if (v4 == v6)
    {
      goto LABEL_5;
    }

    v10 = *(v1 + 2);
    if (v4 >= v10)
    {
      break;
    }

    if (v6 >= v10)
    {
      goto LABEL_14;
    }

    v12 = *&v1[v3 + 32];
    v11 = *&v1[v3 + 40];
    v14 = *&v1[i - 8];
    v13 = *&v1[i];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v1 = sub_1B6AB7DFC(v1);
    }

    v15 = &v1[v3];
    v16 = *&v1[v3 + 40];
    *(v15 + 4) = v14;
    *(v15 + 5) = v13;

    if (v6 >= *(v1 + 2))
    {
      goto LABEL_15;
    }

    v8 = &v1[i];
    v9 = *&v1[i];
    *(v8 - 1) = v12;
    *v8 = v11;

LABEL_5:
    ++v4;
    --v6;
    v3 += 16;
    if (v5 == v4)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1B69B92B4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v61 = a3;
  v60 = sub_1B6AB8DB0();
  v64 = *(v60 - 8);
  v10 = *(v64 + 64);
  v11 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v56 - v13;
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v56 - v16;
  v18 = type metadata accessor for Tracker.Timer(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v56 - v24;
  v57 = a1;
  v58 = a2;
  v59 = a4;
  v26 = sub_1B69A09A4(a1, a2);
  v28 = v27;
  swift_beginAccess();
  v29 = *(v5 + 112);
  if (!*(v29 + 16) || (v65 = a5, , v30 = sub_1B6993940(v26, v28), v32 = v31, , (v32 & 1) == 0))
  {

    v55 = *(*(type metadata accessor for TimedData() - 8) + 56);
    return v55();
  }

  sub_1B699A32C(*(v29 + 56) + *(v19 + 72) * v30, v23, type metadata accessor for Tracker.Timer);

  v56 = v25;
  sub_1B6A57770(v23, v25, type metadata accessor for Tracker.Timer);
  v33 = v57;
  v34 = v58;
  v35 = sub_1B69A09A4(v57, v58);
  v37 = v36;
  swift_beginAccess();
  sub_1B6A96FA4(v35, v37, v17);
  sub_1B6A5718C(v17, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  swift_endAccess();

  v38 = sub_1B69A09A4(v33, v34);
  v40 = v39;
  swift_beginAccess();
  sub_1B6A96E90(v38, v40, v66);
  sub_1B6A23F44(v66, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType);
  swift_endAccess();

  v41 = v64;
  v42 = *(v64 + 16);
  v43 = v62;
  v44 = v56;
  v45 = v60;
  v42(v62, v56, v60);
  v46 = type metadata accessor for EventData();
  v47 = v63;
  v42(v63, (v61 + *(v46 + 20)), v45);
  v48 = v65;
  v42(v65, v43, v45);
  v49 = type metadata accessor for TimedData();
  v42(&v48[*(v49 + 20)], v47, v45);
  sub_1B6AB8D00();
  v51 = v50;
  v52 = *(v41 + 8);
  v52(v47, v45);
  v52(v43, v45);
  result = sub_1B6984D38(v44, type metadata accessor for Tracker.Timer);
  v54 = v51 * 1000.0;
  if (COERCE__INT64(fabs(v51 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v54 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v54 < 9.22337204e18)
  {
    *&v65[*(v49 + 24)] = v54;
    v55 = *(*(v49 - 8) + 56);
    return v55();
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1B69B9894(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8DB0();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

id sub_1B69B9904(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 >> 62))
  {
    return ((*(a4 + 16))(a3, a4) & 1);
  }

  if (a2 >> 62 != 1)
  {
    return *(a1 + OBJC_IVAR___AARawEvent_requiresDiagnosticsConsent);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    return [ObjCClassFromMetadata requiresDiagnosticsConsent];
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B69B99A8(uint64_t a1, unint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v55 = a4;
  v57 = a3;
  v10 = type metadata accessor for EventSubmitResult();
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v50 - v13;
  sub_1B6A56C3C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v50 - v17;
  v19 = [objc_opt_self() standardUserDefaults];
  v20 = NSUserDefaults.overrideSamplingThreshold.getter();
  v22 = v21;

  if (v22)
  {
    v23 = sub_1B69B9F74(a1, a2, a5, a6);
    if (v24)
    {
      if (!swift_unknownObjectWeakLoadStrong() || (v20 = sub_1B69BA028(), v26 = v25, swift_unknownObjectRelease(), (v26 & 1) != 0))
      {
        v20 = 100;
      }
    }

    else
    {
      v20 = v23;
    }
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v56 = v14;
  if (Strong)
  {
    v28 = a6;
    sub_1B69BA084(v18);
    swift_unknownObjectRelease();
    v29 = sub_1B6AB8E40();
    v30 = *(v29 - 8);
    if ((*(v30 + 48))(v18, 1, v29) == 1)
    {
      sub_1B6A5718C(v18, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
      v31 = -1;
    }

    else
    {
      v31 = sub_1B6A6E548();
      (*(v30 + 8))(v18, v29);
    }

    a6 = v28;
    if (v20 >= v31)
    {
      return v20 >= v31;
    }
  }

  else
  {
    v31 = -1;
    if (v20 >= -1)
    {
      return v20 >= v31;
    }
  }

  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v52 = a6;
  v32 = sub_1B6AB8F90();
  __swift_project_value_buffer(v32, qword_1EDBCFDA8);
  v33 = sub_1B6AB8F80();
  v34 = sub_1B6AB98D0();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v58 = v31;
    v59 = v51;
    *v35 = 134218242;
    *(v35 + 4) = v20;
    *(v35 + 12) = 2080;
    v36 = sub_1B6ABA080();
    v38 = a2;
    v39 = sub_1B698F63C(v36, v37, &v59);

    *(v35 + 14) = v39;
    a2 = v38;
    _os_log_impl(&dword_1B697C000, v33, v34, "Event threshold of %ld is lower than the current sampling value of %s", v35, 0x16u);
    v40 = v51;
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1B8C99550](v40, -1, -1);
    MEMORY[0x1B8C99550](v35, -1, -1);
  }

  v41 = v56;
  v42 = sub_1B69A09A4(a1, a2);
  v44 = v43;
  if (v57)
  {
    v45 = v42;
    sub_1B6A23EF0();
    v46 = swift_allocError();
    *v47 = v45;
    v47[1] = v44;
    v47[2] = v20;
    v47[3] = v31;
    *v41 = v46;
    v48 = v53;
    swift_storeEnumTagMultiPayload();
    v57(v41);
    (*(v54 + 8))(v41, v48);
  }

  else
  {
  }

  return v20 >= v31;
}

uint64_t NSUserDefaults.overrideSamplingThreshold.getter()
{
  v1 = sub_1B6AB92B0();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1B6AB9BC0();
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
    sub_1B69840C4(v7, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8);
    return 0;
  }
}

id sub_1B69B9F74(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 48))(a3, a4);
  }

  if (a2 >> 62 != 1)
  {
    return *(a1 + OBJC_IVAR___AARawEvent_samplingThreshold);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    return [ObjCClassFromMetadata samplingThreshold];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B69BA028()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + 40);
  if (v1)
  {
    v2 = *(v1 + 40);
  }

  else
  {
    v2 = 0;
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B69BA084@<X0>(uint64_t a1@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + 40))
    {
      sub_1B6A81954(a1);
      v3 = 0;
    }

    else
    {
      v3 = 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1B6AB8E40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

uint64_t sub_1B69BA134@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v155 = a8;
  v152 = a7;
  v164 = a6;
  v163 = a5;
  v150 = a4;
  v153 = a3;
  v151 = a2;
  v154 = a1;
  v139 = a9;
  v158 = type metadata accessor for EventData();
  v10 = *(*(v158 - 8) + 64);
  MEMORY[0x1EEE9AC00](v158);
  v142 = &v136 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = type metadata accessor for SequenceEntry(0);
  v161 = *(v162 - 8);
  v12 = *(v161 + 64);
  v13 = MEMORY[0x1EEE9AC00](v162);
  v167 = &v136 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v166 = (&v136 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v145 = &v136 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v144 = (&v136 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v157 = &v136 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v156 = (&v136 - v24);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v149 = &v136 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v148 = (&v136 - v27);
  sub_1B6A56C3C(0, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v147 = &v136 - v30;
  v159 = type metadata accessor for TimedData();
  v141 = *(v159 - 8);
  v31 = *(v141 + 8);
  v32 = MEMORY[0x1EEE9AC00](v159);
  v140 = &v136 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v146 = &v136 - v34;
  v160 = type metadata accessor for Sequence(0);
  v35 = *(*(v160 - 8) + 64);
  MEMORY[0x1EEE9AC00](v160);
  v168 = (&v136 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  v137 = type metadata accessor for SessionManager.SessionState(0);
  v37 = *(*(v137 - 8) + 64);
  MEMORY[0x1EEE9AC00](v137);
  v138 = (&v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = sub_1B6AB90F0();
  v40 = *(v39 - 8);
  v41 = v40[8];
  MEMORY[0x1EEE9AC00](v39);
  v43 = (&v136 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v9;
  v45 = *(*(v9 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v43 = v45;
  v46 = *MEMORY[0x1E69E8020];
  v48 = (v40 + 13);
  v47 = v40[13];
  (v47)(v43, v46, v39);
  v49 = v45;
  LOBYTE(v45) = sub_1B6AB9110();
  v52 = v40[1];
  v51 = (v40 + 1);
  v50 = v52;
  v52(v43, v39);
  if ((v45 & 1) == 0)
  {
    __break(1u);
    goto LABEL_57;
  }

  sub_1B69BB510(v154, v151, v152, v155, &v177);
  LODWORD(v143) = v177;
  v165 = v44;
  Strong = swift_unknownObjectWeakLoadStrong();
  v54 = 0;
  if (!Strong)
  {
    v64 = v152;
    v65 = v151;
    v66 = v154;
    v62 = v168;
    v63 = v160;
    goto LABEL_9;
  }

  v55 = Strong;
  v56 = *(*(Strong + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v43 = v56;
  (v47)(v43, v46, v39);
  v57 = v56;
  v46 = sub_1B6AB9110();
  v50(v43, v39);
  if ((v46 & 1) == 0)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
    goto LABEL_54;
  }

  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v59 = v55 + v58;
  v60 = v138;
  sub_1B699A32C(v59, v138, type metadata accessor for SessionManager.SessionState);
  swift_unknownObjectRelease();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v168;
  v63 = v160;
  if (EnumCaseMultiPayload)
  {
    v64 = v152;
    v65 = v151;
    v66 = v154;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B6984D38(v60, type metadata accessor for SessionManager.SessionState);
    }
  }

  else
  {
    v54 = *(*v60 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter + 8);

    v64 = v152;
    v65 = v151;
    v66 = v154;
  }

LABEL_9:
  v67 = sub_1B69A09A4(v66, v65);
  v69 = v68;
  v70 = *(v158 + 20);
  v71 = v63[5];
  v72 = sub_1B6AB8DB0();
  v73 = v62 + v71;
  v74 = v155;
  (*(*(v72 - 8) + 16))(v73, v153 + v70, v72);
  sub_1B69BB668(v66, v65, v64, v74, &v177);
  v75 = v177;
  v76 = BYTE1(v177);
  v160 = v63[7];
  *(v62 + v160) = MEMORY[0x1E69E7CC0];
  *v62 = v67;
  v62[1] = v69;
  v77 = v62 + v63[6];
  *v77 = v143;
  *(v77 + 1) = v54;
  v77[16] = v75;
  v77[17] = v76;
  sub_1B69BB7AC(v66, v65, v64, v74);
  v79 = *(v78 + 16);
  if (v79)
  {
    v138 = v78;
    v80 = v78 + 32;
    v143 = (v141 + 48);
    v81 = MEMORY[0x1E69E7CC0];
    v82 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1B69BE328(v80, &v177);
      v84 = v177;
      v83 = v178;
      sub_1B6982544(v179, v173);

      sub_1B69BE384(&v177);
      v85 = v175;
      v86 = v176;
      __swift_project_boxed_opaque_existential_1(v173, v175);
      if ((*(v86 + 16))(v85, v86))
      {
        v87 = v175;
        v88 = v176;
        __swift_project_boxed_opaque_existential_1(v173, v175);
        v89 = (*(v88 + 8))(v87, v88);
        sub_1B69BEDE8(v89, v90, v163, v164, 0, &v169);

        if (v170)
        {
          sub_1B6980E70(&v169, &v171);
          sub_1B6982544(&v171, &v169);
          v91 = v166;
          *v166 = v84;
          v91[1] = v83;
          sub_1B6980E70(&v169, v91 + *(v162 + 20));
          type metadata accessor for SequenceEntry.Kind(0);
          swift_storeEnumTagMultiPayload();
          sub_1B699A32C(v91, v167, type metadata accessor for SequenceEntry);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v82 = sub_1B69BED6C(0, v82[2] + 1, 1, v82);
          }

          v93 = v82[2];
          v92 = v82[3];
          if (v93 >= v92 >> 1)
          {
            v82 = sub_1B69BED6C(v92 > 1, v93 + 1, 1, v82);
          }

          sub_1B6984D38(v166, type metadata accessor for SequenceEntry);
          __swift_destroy_boxed_opaque_existential_1(&v171);
          v82[2] = v93 + 1;
          v94 = v82 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v93;
          v95 = &v181;
          goto LABEL_42;
        }

        sub_1B6A23F44(&v169, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
      }

      else
      {
        v96 = v175;
        v97 = v176;
        __swift_project_boxed_opaque_existential_1(v173, v175);
        if (((*(v97 + 24))(v96, v97) & 1) == 0)
        {
          v98 = v175;
          v99 = v176;
          __swift_project_boxed_opaque_existential_1(v173, v175);
          if ((*(v99 + 40))(v159, v159, v98, v99))
          {
            v100 = v147;
            sub_1B6992ADC(v150, v147, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720], sub_1B6A56C3C);
            if ((*v143)(v100, 1, v159) == 1)
            {
              sub_1B6A5718C(v100, qword_1EDBC9BF0, type metadata accessor for TimedData, MEMORY[0x1E69E6720]);
              goto LABEL_24;
            }

            v141 = v81;
            v114 = v100;
            v115 = v146;
            sub_1B6A57770(v114, v146, type metadata accessor for TimedData);
            v116 = v140;
            sub_1B699A32C(v115, v140, type metadata accessor for TimedData);
            v117 = v148;
            *v148 = v84;
            v117[1] = v83;
            sub_1B6A57770(v116, v117 + *(v162 + 20), type metadata accessor for TimedData);
            type metadata accessor for SequenceEntry.Kind(0);
            swift_storeEnumTagMultiPayload();
            sub_1B699A32C(v117, v149, type metadata accessor for SequenceEntry);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v82 = sub_1B69BED6C(0, v82[2] + 1, 1, v82);
            }

            v81 = v141;
            v119 = v82[2];
            v118 = v82[3];
            if (v119 >= v118 >> 1)
            {
              v82 = sub_1B69BED6C(v118 > 1, v119 + 1, 1, v82);
            }

            sub_1B6984D38(v148, type metadata accessor for SequenceEntry);
            sub_1B6984D38(v146, type metadata accessor for TimedData);
            v82[2] = v119 + 1;
            v94 = v82 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v119;
            v95 = &v174;
          }

          else
          {
LABEL_24:
            v101 = v175;
            v102 = v176;
            __swift_project_boxed_opaque_existential_1(v173, v175);
            if ((*(v102 + 40))(v158, v158, v101, v102))
            {
              v103 = v142;
              sub_1B699A32C(v153, v142, type metadata accessor for EventData);
              v104 = v156;
              *v156 = v84;
              v104[1] = v83;
              sub_1B6A57770(v103, v104 + *(v162 + 20), type metadata accessor for EventData);
              type metadata accessor for SequenceEntry.Kind(0);
              swift_storeEnumTagMultiPayload();
              sub_1B699A32C(v104, v157, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = sub_1B69BED6C(0, v82[2] + 1, 1, v82);
              }

              v106 = v82[2];
              v105 = v82[3];
              if (v106 >= v105 >> 1)
              {
                v82 = sub_1B69BED6C(v105 > 1, v106 + 1, 1, v82);
              }

              sub_1B6984D38(v156, type metadata accessor for SequenceEntry);
              v82[2] = v106 + 1;
              v94 = v82 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v106;
              v95 = &v180;
            }

            else
            {
              v107 = v175;
              v108 = v176;
              __swift_project_boxed_opaque_existential_1(v173, v175);
              v109 = (*(v108 + 8))(v107, v108);
              sub_1B69BEDE8(v109, v110, v163, v164, 0, &v169);

              if (!v170)
              {
                sub_1B6A23F44(&v169, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
                v120 = v175;
                v121 = v176;
                __swift_project_boxed_opaque_existential_1(v173, v175);
                v122 = (*(v121 + 32))(v120, v121);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v81 = sub_1B69E3EC4(0, *(v81 + 2) + 1, 1, v81);
                }

                v124 = *(v81 + 2);
                v123 = *(v81 + 3);
                if (v124 >= v123 >> 1)
                {
                  v81 = sub_1B69E3EC4((v123 > 1), v124 + 1, 1, v81);
                }

                *(v81 + 2) = v124 + 1;
                v125 = &v81[24 * v124];
                *(v125 + 4) = v84;
                *(v125 + 5) = v83;
                *(v125 + 6) = v122;
                goto LABEL_12;
              }

              sub_1B6980E70(&v169, &v171);
              sub_1B6982544(&v171, &v169);
              v111 = v144;
              *v144 = v84;
              v111[1] = v83;
              sub_1B6980E70(&v169, v111 + *(v162 + 20));
              type metadata accessor for SequenceEntry.Kind(0);
              swift_storeEnumTagMultiPayload();
              sub_1B699A32C(v111, v145, type metadata accessor for SequenceEntry);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v82 = sub_1B69BED6C(0, v82[2] + 1, 1, v82);
              }

              v113 = v82[2];
              v112 = v82[3];
              if (v113 >= v112 >> 1)
              {
                v82 = sub_1B69BED6C(v112 > 1, v113 + 1, 1, v82);
              }

              sub_1B6984D38(v144, type metadata accessor for SequenceEntry);
              __swift_destroy_boxed_opaque_existential_1(&v171);
              v82[2] = v113 + 1;
              v94 = v82 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v113;
              v95 = &v172;
            }
          }

LABEL_42:
          sub_1B6A57770(*(v95 - 32), v94, type metadata accessor for SequenceEntry);
          *(v168 + v160) = v82;
          goto LABEL_12;
        }
      }

LABEL_12:
      __swift_destroy_boxed_opaque_existential_1(v173);
      v80 += 56;
      if (!--v79)
      {

        goto LABEL_50;
      }
    }
  }

  v81 = MEMORY[0x1E69E7CC0];
LABEL_50:
  v48 = v154;
  v46 = v168;
  if (!*(v81 + 2))
  {
    goto LABEL_55;
  }

  v39 = sub_1B6A9F26C();
  v51 = v151;
  if (*(v165 + 201) != 1)
  {
    sub_1B6A16B30();
    swift_allocError();
    *v134 = v81;
    v134[1] = v39;
    swift_willThrow();
    return sub_1B6984D38(v46, type metadata accessor for Sequence);
  }

  v47 = v81;
  if (qword_1EDBCCEE0 != -1)
  {
    goto LABEL_58;
  }

LABEL_54:
  v167 = qword_1EDBCCB28;
  sub_1B6AB98F0();
  sub_1B6A23D18(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v126 = swift_allocObject();
  *(v126 + 16) = xmmword_1B6ABF500;
  v127 = sub_1B69A09A4(v48, v51);
  v129 = v128;
  v130 = MEMORY[0x1E69E6158];
  *(v126 + 56) = MEMORY[0x1E69E6158];
  v131 = sub_1B698CEC0();
  *(v126 + 64) = v131;
  *(v126 + 32) = v127;
  *(v126 + 40) = v129;
  v177 = 0;
  v178 = 0xE000000000000000;
  v173[0] = v47;
  v173[1] = v39;
  sub_1B6AB9DF0();

  v132 = v177;
  v133 = v178;
  *(v126 + 96) = v130;
  *(v126 + 104) = v131;
  *(v126 + 72) = v132;
  *(v126 + 80) = v133;
  sub_1B6AB8F70();
LABEL_55:

  return sub_1B6A57770(v46, v139, type metadata accessor for Sequence);
}

unint64_t sub_1B69BB510@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 32))(a3, a4);
  }

  if (a2 >> 62 == 1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [ObjCClassFromMetadata respondsToSelector_];
    if ((result & 1) == 0)
    {
      *a5 = 0;
      return result;
    }

    result = [ObjCClassFromMetadata timestampGranularity];
    if (result < 5)
    {
      *a5 = 0x302040100uLL >> (8 * result);
      return result;
    }

    goto LABEL_21;
  }

  v7 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
  if (v7 <= 1)
  {
    if (!v7)
    {
      *a5 = 0;
      return result;
    }

    if (v7 == 1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    switch(v7)
    {
      case 2:
        LOBYTE(v7) = 4;
        goto LABEL_18;
      case 3:
        LOBYTE(v7) = 2;
LABEL_18:
        *a5 = v7;
        return result;
      case 4:
        LOBYTE(v7) = 3;
        goto LABEL_18;
    }
  }

  v8 = *(result + OBJC_IVAR___AARawEvent_timestampGranularity);
LABEL_21:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

unint64_t sub_1B69BB668@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 40))(a3, a4);
  }

  if (a2 >> 62 == 1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    result = [ObjCClassFromMetadata respondsToSelector_];
    if ((result & 1) == 0)
    {
      *a5 = 0;
      return result;
    }

    result = [ObjCClassFromMetadata timeDurationGranularity];
    if (result < 4)
    {
      *a5 = (0xEu >> (result & 0xF)) & 1;
      *(a5 + 1) = result;
      return result;
    }

    goto LABEL_20;
  }

  v7 = *(result + OBJC_IVAR___AARawEvent_timeDurationGranularity);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v8 = 513;
LABEL_17:
      *a5 = v8;
      return result;
    }

    if (v7 == 3)
    {
      v8 = 769;
      goto LABEL_17;
    }
  }

  else
  {
    if (!v7)
    {
      *a5 = 0;
      return result;
    }

    if (v7 == 1)
    {
      v8 = 257;
      goto LABEL_17;
    }
  }

  v9 = *(result + OBJC_IVAR___AARawEvent_timeDurationGranularity);
LABEL_20:
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

void sub_1B69BB7AC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      sub_1B69E1350();
    }

    else
    {
      sub_1B6A43710();
    }
  }

  else
  {
    sub_1B69BB800(a3, a4);
  }
}

char *sub_1B69BB800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1B6ABA270();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getMetatypeMetadata();
  v11 = sub_1B6ABA330();
  v13 = v12;
  swift_beginAccess();
  v14 = *(v2 + 16);
  if (*(v14 + 16))
  {

    v15 = sub_1B6993940(v11, v13);
    if (v16)
    {
      v17 = v15;

      v18 = *(*(v14 + 56) + 8 * v17);

      return v18;
    }
  }

  v36 = v11;
  v37 = v13;
  v38 = v7;
  v19 = *(a2 + 56);
  *(&v46 + 1) = a1;
  *&v47 = a2;
  __swift_allocate_boxed_opaque_existential_1(&v45);
  v19(a1, a2);
  v20 = *(&v46 + 1);
  v21 = __swift_project_boxed_opaque_existential_1(&v45, *(&v46 + 1));
  *(&v42 + 1) = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v41);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
  sub_1B6ABA250();
  __swift_destroy_boxed_opaque_existential_1(&v45);
  sub_1B6ABA260();
  sub_1B69809F4(0, qword_1EDBC90C0);
  v23 = sub_1B6AB9DE0();

  v24 = *(v23 + 16);
  if (v24)
  {
    v35 = v6;
    v25 = v23 + 32;
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B69BDD74(v25, &v45);
      v39[0] = v45;
      v39[1] = v46;
      v39[2] = v47;
      v40 = v48;
      if (*(&v45 + 1))
      {
        v41 = v45;
        v42 = v46;
        v43 = v47;
        v44 = v48;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B69BDE7C(0, *(v18 + 2) + 1, 1, v18);
        }

        v27 = *(v18 + 2);
        v26 = *(v18 + 3);
        if (v27 >= v26 >> 1)
        {
          v18 = sub_1B69BDE7C((v26 > 1), v27 + 1, 1, v18);
        }

        *(v18 + 2) = v27 + 1;
        v28 = &v18[56 * v27];
        v29 = v41;
        v30 = v42;
        v31 = v43;
        *(v28 + 10) = v44;
        *(v28 + 3) = v30;
        *(v28 + 4) = v31;
        *(v28 + 2) = v29;
      }

      else
      {
        sub_1B6A42804(v39);
      }

      v25 += 56;
      --v24;
    }

    while (v24);

    v6 = v35;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();

  v32 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v41 = *(v3 + 16);
  *(v3 + 16) = 0x8000000000000000;
  sub_1B69BDFBC(v18, v36, v37, isUniquelyReferenced_nonNull_native);

  *(v3 + 16) = v41;
  swift_endAccess();
  (*(v38 + 8))(v10, v6);
  return v18;
}

unint64_t sub_1B69BBC68()
{
  result = qword_1EDBCBB80;
  if (!qword_1EDBCBB80)
  {
    sub_1B6A56C3C(255, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBB80);
  }

  return result;
}

unint64_t sub_1B69BBCF0()
{
  result = qword_1EDBCCC70;
  if (!qword_1EDBCCC70)
  {
    sub_1B6AB9030();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCCC70);
  }

  return result;
}

void sub_1B69BBD48(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v117 = a4;
  v143 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E69E6720];
  sub_1B6988350(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v109 - v10;
  sub_1B6988350(0, &qword_1EDBCBCA8, type metadata accessor for Batch, v7);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = (&v109 - v14);
  v16 = type metadata accessor for Batch();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a1[2];
  v22 = a1[3];
  ObjectType = swift_getObjectType();
  (*(v22 + 16))(ObjectType, v22);
  v118 = dispatch_group_create();
  v24 = a1[7];
  v134 = a1;
  v25 = *__swift_project_boxed_opaque_existential_1(a1 + 4, v24);
  v26 = sub_1B69BD4B4();
  v127 = v20;
  v122 = v16;
  v116 = v11;
  v31 = v26;
  v128 = *(v26 + 16);
  if (v128)
  {
    v114 = a2;
    v115 = a3;
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    v32 = qword_1EDBCCB28;
    sub_1B69990B4();
    v130 = v33;
    v34 = swift_allocObject();
    v119 = xmmword_1B6ABF500;
    *(v34 + 16) = xmmword_1B6ABF500;
    v35 = *(v31 + 16);
    v36 = MEMORY[0x1E69E65A8];
    *(v34 + 56) = MEMORY[0x1E69E6530];
    *(v34 + 64) = v36;
    *(v34 + 32) = v35;
    v37 = MEMORY[0x1E69E6158];
    v38 = MEMORY[0x1B8C97D60](v31, MEMORY[0x1E69E6158]);
    v40 = v39;
    *(v34 + 96) = v37;
    v129 = sub_1B698CEC0();
    *(v34 + 104) = v129;
    *(v34 + 72) = v38;
    *(v34 + 80) = v40;
    sub_1B6AB9900();
    v131 = v32;
    sub_1B6AB8F70();

    v41 = 0;
    v126 = (v17 + 48);
    v42 = (v31 + 40);
    v123 = xmmword_1B6ABD890;
    v121 = v15;
    v43 = v122;
    v120 = v31;
    while (1)
    {
      if (v41 >= *(v31 + 16))
      {
        __break(1u);
        swift_once();
        sub_1B6AB98E0();
        sub_1B69990B4();
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1B6ABD890;
        v138 = 0;
        v139 = 0xE000000000000000;
        v136 = 0;
        sub_1B697ED90(0, &qword_1EDBCBB00);
        sub_1B6AB9DF0();
        v28 = v138;
        v29 = v139;
        *(v27 + 56) = MEMORY[0x1E69E6158];
        *(v27 + 64) = sub_1B698CEC0();
        *(v27 + 32) = v28;
        *(v27 + 40) = v29;
        sub_1B6AB8F70();

        if (v40)
        {
          v30 = swift_allocObject();
          *(v30 + 16) = v40;
          *(v30 + 24) = v31;
          sub_1B69A18C0(v40);

          sub_1B6A2B248(sub_1B6A0BE38, v30);

          sub_1B69A3100(v40);
        }

        else
        {
        }

        goto LABEL_30;
      }

      v46 = v31;
      v132 = v42;
      v133 = v41;
      v47 = v15;
      v48 = *(v42 - 1);
      v40 = *v42;
      v49 = __swift_project_boxed_opaque_existential_1(v134 + 4, v134[7]);
      v50 = *v49;
      v51 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
      v52 = *(*v49 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
      v53 = *(v52 + 16);
      v54 = *(v52 + 24);

      v55 = v48;
      v15 = v47;
      os_unfair_lock_lock_with_options();
      sub_1B69AE29C(v55, v40, v47);
      os_unfair_lock_unlock(*(*(v50 + v51) + 16));
      if ((*v126)(v47, 1, v43) != 1)
      {
        break;
      }

      sub_1B699D254(v47, &qword_1EDBCBCA8, type metadata accessor for Batch);
      v44 = swift_allocObject();
      *(v44 + 16) = v123;
      v45 = v129;
      *(v44 + 56) = MEMORY[0x1E69E6158];
      *(v44 + 64) = v45;
      *(v44 + 32) = v55;
      *(v44 + 40) = v40;
      sub_1B6AB9900();
      sub_1B6AB8F70();

      v31 = v46;
LABEL_9:
      v41 = v133 + 1;
      v42 = v132 + 2;
      if (v128 == v133 + 1)
      {

        a3 = v115;
        a2 = v114;
        goto LABEL_27;
      }
    }

    v124 = v55;
    v125 = v40;
    v56 = v127;
    sub_1B69B5BF8(v47, v127, type metadata accessor for Batch);
    v57 = *(v56 + 64);
    if (v57)
    {
      v58 = *(v56 + 56);
    }

    else
    {
      v58 = 0;
    }

    v59 = (v56 + *(v43 + 44));
    v61 = v59[1];
    v138 = *v59;
    v60 = v138;
    v139 = v61;
    v140 = v58;
    v141 = v57;
    v142 = v57 != 0;
    v62 = v134[11];
    v63 = *(v62 + 16);
    v64 = *(v62 + 24);

    v65 = v134;
    os_unfair_lock_lock_with_options();
    swift_beginAccess();
    sub_1B69B3AA0(&v138);
    swift_endAccess();
    os_unfair_lock_unlock(*(v65[11] + 16));

    sub_1B69B47D4(v60, v61, v58, v57, v57 != 0);
    v66 = Batch.toJSONObject()();
    v67 = objc_opt_self();
    v68 = MEMORY[0x1E69E6158];
    v69 = sub_1B6AB91F0();
    LOBYTE(v61) = [v67 isValidJSONObject_];

    v15 = v121;
    if (v61)
    {
      v70 = sub_1B6AB91F0();

      v136 = 0;
      v71 = [v67 dataWithJSONObject:v70 options:0 error:&v136];

      v72 = v136;
      if (v71)
      {
        v73 = sub_1B6AB8C80();
        v75 = v74;

        v76 = v116;
        v77 = v124;
        if (*(v134[9] + OBJC_IVAR___AAUploadBatchEventConfig_debuggingEnabled))
        {
          sub_1B6A6D808(v73, v75, v124, v125);
        }

        v111 = sub_1B69993A8(v73, v75);
        v110 = v90;
        v91 = swift_allocObject();
        v113 = v75;
        v92 = v91;
        *(v91 + 16) = v119;
        v112 = v73;
        v93 = v129;
        *(v91 + 56) = v68;
        *(v91 + 64) = v93;
        v40 = v125;
        *(v91 + 32) = v77;
        *(v91 + 40) = v40;
        v94 = v127;
        v95 = *(v127 + 6);

        v96 = ContentType.description.getter(v95);
        v92[12] = v68;
        v92[13] = v93;
        v92[9] = v96;
        v92[10] = v97;
        sub_1B6AB9900();
        sub_1B6AB8F70();

        v98 = v118;
        dispatch_group_enter(v118);
        v100 = *(v94 + 32);
        v99 = *(v94 + 40);
        v101 = sub_1B6AB9680();
        (*(*(v101 - 8) + 56))(v76, 1, 1, v101);
        v102 = v76;
        v103 = swift_allocObject();
        v103[2] = 0;
        v103[3] = 0;
        v103[4] = v134;
        v103[5] = v77;
        v104 = v111;
        v103[6] = v40;
        v103[7] = v104;
        v103[8] = v110;
        v103[9] = v100;
        v31 = v120;
        v103[10] = v99;
        v103[11] = v95;
        v103[12] = v77;
        v103[13] = v40;
        v103[14] = v98;

        v105 = v98;
        v15 = v121;
        sub_1B69EDFB0(0, 0, v102, &unk_1B6AC3D30, v103);

        sub_1B6993C94(v112, v113);
        sub_1B69B6D24(v94, type metadata accessor for Batch);
        goto LABEL_23;
      }

      v84 = v72;
      v82 = sub_1B6AB8A70();
    }

    else
    {
      sub_1B6AB98F0();
      v78 = swift_allocObject();
      *(v78 + 16) = v123;
      v79 = sub_1B6AB9220();
      v80 = v129;
      *(v78 + 56) = v68;
      *(v78 + 64) = v80;
      *(v78 + 32) = v79;
      *(v78 + 40) = v81;
      sub_1B6AB8F70();

      sub_1B6A2A954();
      v82 = swift_allocError();
      *v83 = v66;
      *(v83 + 8) = 0;
    }

    swift_willThrow();
    v31 = v120;
    v85 = v124;
    sub_1B69B6D24(v127, type metadata accessor for Batch);
    sub_1B6AB98E0();
    v86 = swift_allocObject();
    *(v86 + 16) = v119;
    v40 = v129;
    *(v86 + 56) = v68;
    *(v86 + 64) = v40;
    v87 = v125;
    *(v86 + 32) = v85;
    *(v86 + 40) = v87;
    v136 = 0;
    v137 = 0xE000000000000000;
    v135 = v82;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v88 = v136;
    v89 = v137;
    *(v86 + 96) = v68;
    *(v86 + 104) = v40;
    *(v86 + 72) = v88;
    *(v86 + 80) = v89;
    sub_1B6AB8F70();

LABEL_23:
    v43 = v122;
    goto LABEL_9;
  }

LABEL_27:
  v106 = v118;
  sub_1B6AB9920();
  if (a2)
  {
    v107 = swift_allocObject();
    *(v107 + 16) = a2;
    *(v107 + 24) = a3;
    sub_1B69A18C0(a2);

    sub_1B6A2B248(sub_1B69BDB14, v107);

    sub_1B69A3100(a2);
  }

  else
  {
  }

LABEL_30:
  v108 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B69BCA70()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1B69BCAA8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  v3 = *(v0 + 48);

  sub_1B6993C94(*(v0 + 56), *(v0 + 64));
  v4 = *(v0 + 80);

  v5 = *(v0 + 104);

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B69BCB20()
{
  v1 = *(v0 + 128);
  sub_1B69ADE38(v3);
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t sub_1B69BCB58(uint64_t a1, uint64_t a2)
{
  sub_1B69BCBE8(0, &qword_1EDBCCB30, qword_1EDBCCB38, &protocol descriptor for UploadClient, sub_1B697ED90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69BCBE8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1B6AB9B30();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1B69BCC44(uint64_t a1)
{
  sub_1B69BCBE8(0, &qword_1EDBCCB30, qword_1EDBCCB38, &protocol descriptor for UploadClient, sub_1B697ED90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69BCCCC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1B69BCD24(uint64_t a1, uint64_t a2)
{
  sub_1B69BCBE8(0, &qword_1EDBCCB30, qword_1EDBCCB38, &protocol descriptor for UploadClient, sub_1B697ED90);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69BCDB4(uint64_t a1, uint64_t a2)
{
  sub_1B698E408(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics6ActionO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

id _s12AppAnalytics11AccessQueueC6globalyAC8Dispatch0F3QoSV0G6SClassOSgFZ_0(uint64_t a1)
{
  v2 = sub_1B6AB9090();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v45 - v8;
  sub_1B698E408(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v45 - v12;
  v14 = sub_1B6AB9040();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v45 - v20;
  sub_1B69BCDB4(a1, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1B69BD428(v13);
    sub_1B698C854();
    (*(v15 + 104))(v19, *MEMORY[0x1E69E7F98], v14);
    v22 = sub_1B6AB99F0();
    (*(v15 + 8))(v19, v14);
    v23 = type metadata accessor for AccessQueue();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR___AAAccessQueue_queue] = v22;
    v25 = v22;
    sub_1B6AB9050();
    v26 = OBJC_IVAR___AAAccessQueue__qos;
    swift_beginAccess();
    (*(v3 + 16))(v7, v9, v2);
    sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
    v28 = *(v27 + 48);
    v29 = *(v27 + 52);
    v30 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v31 = swift_allocObject();
    v32 = swift_slowAlloc();
    *(v31 + 16) = v32;
    *v32 = 0;
    *(v31 + 24) = 0x10000;
    (*(v3 + 8))(v9, v2);
    *(v30 + 2) = v31;
    (*(v3 + 32))(&v30[*(*v30 + 96)], v7, v2);
    *&v24[v26] = v30;
    swift_endAccess();
    v49.receiver = v24;
    v49.super_class = v23;
    v33 = objc_msgSendSuper2(&v49, sel_init);
  }

  else
  {
    (*(v15 + 32))(v21, v13, v14);
    sub_1B698C854();
    v34 = sub_1B6AB99F0();
    v46 = type metadata accessor for AccessQueue();
    v35 = objc_allocWithZone(v46);
    *&v35[OBJC_IVAR___AAAccessQueue_queue] = v34;
    v47 = v34;
    sub_1B6AB9050();
    v45 = OBJC_IVAR___AAAccessQueue__qos;
    swift_beginAccess();
    (*(v3 + 16))(v7, v9, v2);
    sub_1B698E408(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
    v37 = *(v36 + 48);
    v38 = *(v36 + 52);
    v39 = v2;
    v40 = swift_allocObject();
    type metadata accessor for UnfairLock();
    v41 = v7;
    v42 = swift_allocObject();
    v43 = swift_slowAlloc();
    *(v42 + 16) = v43;
    *v43 = 0;
    *(v42 + 24) = 0x10000;
    (*(v3 + 8))(v9, v39);
    *(v40 + 2) = v42;
    (*(v3 + 32))(&v40[*(*v40 + 96)], v41, v39);
    *&v35[v45] = v40;
    swift_endAccess();
    v48.receiver = v35;
    v48.super_class = v46;
    v33 = objc_msgSendSuper2(&v48, sel_init);

    (*(v15 + 8))(v21, v14);
  }

  return v33;
}

uint64_t sub_1B69BD428(uint64_t a1)
{
  sub_1B698E408(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B69BD4B4()
{
  v1 = v0;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v55 - v4;
  v6 = type metadata accessor for Session();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1B6AB8BB0();
  v11 = *(v62 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v15 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - v16;
  v56 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v18 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock);
  v19 = *(v18 + 16);
  v20 = *(v18 + 24);
  os_unfair_lock_lock_with_options();
  v21 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 24);
  v58 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager + 32);
  v59 = v21;
  v61 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager);
  v57 = __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager), v21);
  v22 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v1 + v22, v5);
  v23 = (*(v7 + 48))(v5, 1, v6);
  v60 = v1;
  if (v23 == 1)
  {
    sub_1B698E840(v5, qword_1EDBCCC78, type metadata accessor for Session);
    v24 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v10 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v24);
    (*(v10 + 8))(v24, v10);
    v25 = v62;
  }

  else
  {
    sub_1B69B6BF4(v5, v10, type metadata accessor for Session);
    v26 = (v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider);
    v27 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
    v28 = *(v1 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    v29 = *(v28 + 8);
    v30 = v28;
    v1 = v60;
    v29(v27, v30);
    v31 = *v10;
    v32 = *(v10 + 8);
    sub_1B6AB8B30();
    v33 = v15;
    v25 = v62;
    (*(v11 + 8))(v33, v62);
    sub_1B69B6CC4(v10, type metadata accessor for Session);
  }

  v34 = v67;
  v35 = (*(v58 + 128))(v17, v59);
  if (v34)
  {
    (*(v11 + 8))(v17, v25);
LABEL_6:
    os_unfair_lock_unlock(*(*(v1 + v56) + 16));
    return v10;
  }

  v36 = v35;
  v67 = 0;
  (*(v11 + 8))(v17, v25);
  v59 = *(v36 + 16);
  if (!v59)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_28:

    os_unfair_lock_unlock(*(*(v1 + v56) + 16));
    return v10;
  }

  result = swift_beginAccess();
  v38 = 0;
  v39 = (v36 + 40);
  v10 = MEMORY[0x1E69E7CC0];
  v58 = v36;
  while (v38 < *(v36 + 16))
  {
    v62 = v10;
    v40 = *(v39 - 1);
    v41 = *v39;
    v42 = *(*(v1 + 40) + 16);

    if (v42)
    {

      sub_1B6993940(v40, v41);
      v10 = v43;
    }

    else
    {
      v10 = 0;
    }

    v44 = v40;
    v45 = sub_1B699D580(v40, v41);
    v46 = v61[3];
    v47 = v61[4];
    __swift_project_boxed_opaque_existential_1(v61, v46);
    v48 = v67;
    (*(v47 + 32))(&v65, v45, v46, v47);
    v67 = v48;
    if (v48)
    {

      v1 = v60;
      goto LABEL_6;
    }

    if (v66 != 1)
    {
      v10 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B69B5A00(0, *(v10 + 16) + 1, 1, v10);
      }

      v36 = v58;
      v52 = *(v10 + 16);
      v51 = *(v10 + 24);
      v53 = v52 + 1;
      if (v52 < v51 >> 1)
      {
        goto LABEL_26;
      }

LABEL_22:
      v10 = sub_1B69B5A00((v51 > 1), v53, 1, v10);
LABEL_26:

      *(v10 + 16) = v53;
      v54 = v10 + 16 * v52;
      *(v54 + 32) = v44;
      *(v54 + 40) = v41;
      goto LABEL_10;
    }

    if (v65 && (v10 & 1) == 0)
    {
      v49 = v61[3];
      v50 = v61[4];
      __swift_project_boxed_opaque_existential_1(v61, v49);
      v63 = 1;
      v64 = 0;
      (*(v50 + 40))(v45, &v63, v49, v50);
      v10 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_1B69B5A00(0, *(v10 + 16) + 1, 1, v10);
      }

      v52 = *(v10 + 16);
      v51 = *(v10 + 24);
      v53 = v52 + 1;
      v36 = v58;
      if (v52 >= v51 >> 1)
      {
        goto LABEL_22;
      }

      goto LABEL_26;
    }

    v36 = v58;
    v10 = v62;
LABEL_10:
    ++v38;
    v39 += 2;
    v1 = v60;
    if (v59 == v38)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B69BDB14()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

double sub_1B69BDB48@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69BDC54(a1, &v10);
  v4 = v11;
  if (v11)
  {
    v5 = v10;
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1B69BDC54(a1, &v10);

    sub_1B697ED90(0, &qword_1EDBCB820);
    if (swift_dynamicCast())
    {
      sub_1B699A784(v7, v9);
      sub_1B699A784(v9, a2 + 16);
      *a2 = v5;
      *(a2 + 8) = v4;
      return result;
    }

    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_1B6A42870(v7);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  *(a2 + 48) = 0;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_1B69BDC54(uint64_t a1, uint64_t a2)
{
  sub_1B69BDCB8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69BDCB8()
{
  if (!qword_1EDBC8CD8)
  {
    sub_1B69809F4(255, &qword_1EDBCAA50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBC8CD8);
    }
  }
}

void sub_1B69BDD38(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69BDB48(a1, a2);
  if (v2)
  {
    swift_allocError();
  }
}

uint64_t sub_1B69BDD74(uint64_t a1, uint64_t a2)
{
  sub_1B69809F4(0, qword_1EDBC90C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69BDDE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B69BDE30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *sub_1B69BDE7C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBCB618, &type metadata for EventMirrorProperty, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69BDFE8(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v8 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v9 = *(*v5 + 24);
  }

  sub_1B69BE2AC(0, a3, a4, a5);
  v41 = a2;
  result = sub_1B6AB9E80();
  v11 = result;
  if (*(v8 + 16))
  {
    v39 = v6;
    v40 = v8;
    v12 = 0;
    v13 = (v8 + 64);
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 64);
    v17 = (v14 + 63) >> 6;
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v24 = v21 | (v12 << 6);
      v25 = (*(v8 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v8 + 56) + 8 * v24);
      if ((v41 & 1) == 0)
      {
        v29 = v25[1];
      }

      v30 = *(v11 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v26;
      v20[1] = v27;
      *(*(v11 + 56) + 8 * v19) = v28;
      ++*(v11 + 16);
      v8 = v40;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v8 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v8 + 16) = 0;
  }

LABEL_35:
  *v6 = v11;
  return result;
}

void sub_1B69BE2AC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1B6980954(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69BE3D8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B69D1460;

  return sub_1B69BE494(a1, v5);
}

uint64_t sub_1B69BE494(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B69F1038;

  return v7(a1);
}

uint64_t sub_1B69BE594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[12];
  v8 = v1[13];
  v9 = v1[14];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1B69AD75C;

  return sub_1B69BE698(a1, v4, v5, v6, (v1 + 5), v7, v8, v9);
}

BOOL sub_1B69BE670(uint64_t *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  return sub_1B69BE6C0(a1[2]);
}

uint64_t sub_1B69BE698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[5] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B69BE704, 0, 0);
}

uint64_t sub_1B69BE704()
{
  v1 = v0[5];
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v5 = *(v2 + 8);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1B6A6D368;
  v8 = v0[6];

  return v10(v8, ObjectType, v2);
}

uint64_t sub_1B69BE830(uint64_t a1)
{
  *(a1 + 8) = sub_1B69A8420(&qword_1EDBCAAC8, type metadata accessor for EventData);
  result = sub_1B69A8420(&qword_1EDBCAAD0, type metadata accessor for EventData);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B69BE8B4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B6A10BC8;

  return sub_1B69BE948(a1);
}

uint64_t sub_1B69BE948(uint64_t a1)
{
  *(v2 + 176) = a1;
  *(v2 + 184) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B69BE9A4, 0, 0);
}

BOOL sub_1B69BE968(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3[2];
  v4 = a3[3];
  v5 = a3[4];
  return sub_1B69BE978();
}

uint64_t sub_1B69BE9A4()
{
  v13 = v0;
  v2 = v0[22];
  v1 = v0[23];
  v0[24] = qword_1EDBCAD28;
  sub_1B69BEB24(v2, (v0 + 2));
  v3 = sub_1B6AB8F80();
  v4 = sub_1B6AB9900();
  sub_1B69BEDA0(v2);
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1B698F63C(*v5, *(v5 + 8), &v12);
    _os_log_impl(&dword_1B697C000, v3, v4, "Upload service will sign data for upload, identifier=%s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1B8C99550](v7, -1, -1);
    MEMORY[0x1B8C99550](v6, -1, -1);
  }

  v8 = swift_task_alloc();
  v0[25] = v8;
  *v8 = v0;
  v8[1] = sub_1B6A0DE50;
  v9 = v0[22];
  v10 = v0[23];

  return sub_1B69BF2B0(v10, v9);
}

size_t sub_1B69BEB5C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B69BEDD0(void *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  v3 = a1[4];
  return sub_1B69BEDE0();
}

uint64_t sub_1B69BEDE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, _OWORD *a6@<X8>)
{
  v7 = v6;
  v46 = a6;
  v47 = a4;
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v7[11] + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v17;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);
  v18 = v17;
  LOBYTE(v17) = sub_1B6AB9110();
  result = (*(v13 + 8))(v16, v12);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (a5)
  {
    v45 = 0;
    goto LABEL_5;
  }

  result = sub_1B69A31EC(&v54);
  v45 = v54;
  if (v54 == 2)
  {
LABEL_33:
    __break(1u);
    return result;
  }

LABEL_5:
  v20 = a3;
  v21 = a1;
  swift_beginAccess();
  v22 = v7[16];
  v23 = a2;
  v24 = v47;
  if (!*(v22 + 16))
  {
    goto LABEL_14;
  }

  v25 = v7[16];

  v26 = sub_1B6993940(v21, a2);
  if ((v27 & 1) == 0)
  {

LABEL_14:
    v32 = v24;
    if (!v24)
    {
      goto LABEL_19;
    }

    goto LABEL_15;
  }

  sub_1B6982544(*(v22 + 56) + 40 * v26, &v54);

  sub_1B6980E70(&v54, v60);
  v28 = v62;
  v29 = v63;
  __swift_project_boxed_opaque_existential_1(v60, v62);
  (*(v29 + 24))(&v48, v28, v29);
  if (*(&v48 + 1))
  {
    v56 = v50;
    v57 = v51;
    v58 = v52;
    v59 = v53;
    v54 = v48;
    v55 = v49;
    if (sub_1B699ACBC(0, *(&v51 + 1)) && (a5 & 1) == 0)
    {
      v30 = v62;
      v31 = v63;
      __swift_mutable_project_boxed_opaque_existential_1(v60, v62);
      (*(v31 + 32))(&v48, v30, v31);
      sub_1B69840C4(&v48, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
      sub_1B6982544(v60, &v48);
      swift_beginAccess();

      sub_1B699A480(&v48, v21, a2);
      swift_endAccess();
    }

    if ((v45 & v58 & 1) == 0)
    {
      sub_1B6982544(&v55, v46);
      sub_1B69A6664(&v54);
      return __swift_destroy_boxed_opaque_existential_1(v60);
    }

    sub_1B69A6664(&v54);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  else
  {
    sub_1B69840C4(&v48, &qword_1EDBCB490, &type metadata for AnyDataEventEntry);
    __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v32 = v47;
  if (!v47)
  {
LABEL_19:
    v20 = v7[7];
    v32 = v7[8];

    if (!v7[19])
    {
      goto LABEL_20;
    }

LABEL_16:

    sub_1B69BEDE8(&v54, v21, a2, v20, v32, a5 & 1);
    goto LABEL_21;
  }

LABEL_15:
  if (v7[19])
  {
    goto LABEL_16;
  }

LABEL_20:
  *&v56 = 0;
  v54 = 0u;
  v55 = 0u;

LABEL_21:
  swift_beginAccess();
  v33 = v7[17];
  if (*(v33 + 16))
  {
    v34 = v7[17];

    v35 = sub_1B6993940(v21, v23);
    if (v36)
    {
      v37 = *(v33 + 56) + 16 * v35;
      v39 = *v37;
      v38 = *(v37 + 8);

      if (v32)
      {
        v40 = v7[4];
        v60[0] = v20;
        v60[1] = v32;
        v61 = v45 & 1;
        v62 = v40;
        v41 = v40;
        v39(&v48, v60);

        if (*(&v49 + 1))
        {
          sub_1B6A23F44(&v54, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
          return sub_1B6980E70(&v48, v46);
        }
      }

      else
      {
      }

      goto LABEL_28;
    }
  }

LABEL_28:
  v42 = v55;
  v43 = v46;
  *v46 = v54;
  v43[1] = v42;
  *(v43 + 4) = v56;
  return result;
}

uint64_t sub_1B69BF2B0(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B69BFAE8, 0, 0);
}

uint64_t sub_1B69BF2DC(char *a1, void (*a2)(uint64_t *__return_ptr, uint64_t), uint64_t a3)
{
  v75 = a2;
  v74 = a3;
  v4 = sub_1B6AB90F0();
  v70 = *(v4 - 8);
  v71 = v4;
  v5 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v69 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8E40();
  v11 = *(v10 - 8);
  v12 = v11[8];
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v77 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v66 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v63 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v63 - v25;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v72 = a1;
  v67 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v73 = v80;
  if (v80)
  {
    v27 = v11[2];
    v27(v26, v80 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v10);
    v28 = v11[7];
    v28(v26, 0, 1, v10);
  }

  else
  {
    v28 = v11[7];
    v28(v26, 1, 1, v10);
    v27 = v11[2];
  }

  v27(v24, v78, v10);
  v28(v24, 0, 1, v10);
  v29 = *(v15 + 48);
  v30 = MEMORY[0x1E69695A8];
  v31 = v77;
  sub_1B6994F40(v26, v77, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994F40(v24, v31 + v29, &qword_1EDBCAF50, v30);
  v32 = v11;
  v33 = v11;
  v34 = v31;
  v35 = v33[6];
  if (v35(v34, 1, v10) == 1)
  {
    v36 = MEMORY[0x1E69695A8];
    sub_1B6994FAC(v24, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B6994FAC(v26, &qword_1EDBCAF50, v36);
    if (v35(v34 + v29, 1, v10) == 1)
    {
      v37 = sub_1B6994FAC(v34, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v64 = v26;
  v38 = v34;
  v39 = v34;
  v40 = v66;
  sub_1B6994F40(v38, v66, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  if (v35(v39 + v29, 1, v10) == 1)
  {
    v41 = MEMORY[0x1E69695A8];
    sub_1B6994FAC(v24, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B6994FAC(v64, &qword_1EDBCAF50, v41);
    (v32[1])(v40, v10);
    v34 = v39;
LABEL_11:
    sub_1B6995008(v34, sub_1B6992BDC);
    goto LABEL_12;
  }

  v57 = v39 + v29;
  v58 = v65;
  (v32[4])(v65, v57, v10);
  sub_1B69ACD84(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
  v59 = sub_1B6AB92A0();
  v60 = v32[1];
  v60(v58, v10);
  v61 = MEMORY[0x1E69695A8];
  sub_1B6994FAC(v24, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994FAC(v64, &qword_1EDBCAF50, v61);
  v60(v40, v10);
  v37 = sub_1B6994FAC(v39, &qword_1EDBCAF50, v61);
  if (v59)
  {
LABEL_16:
    v62 = v76;
    v75(&v81, v37);

    if (!v62)
    {
      return v81;
    }

    return result;
  }

LABEL_12:
  v42 = v68;
  sub_1B698A2A4(v78, v68, type metadata accessor for DiagnosticsConsentProvider);
  v43 = type metadata accessor for LazyDiagnosticStatus(0);
  v44 = *(v43 + 48);
  v45 = *(v43 + 52);
  v46 = swift_allocObject();
  *(v46 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v48 = v71;
  v47 = v72;
  v49 = *&v72[OBJC_IVAR___AAAccessQueue_queue];
  v51 = v69;
  v50 = v70;
  *v69 = v49;
  (*(v50 + 104))(v51, *MEMORY[0x1E69E8020], v48);
  v52 = v49;
  LOBYTE(v49) = sub_1B6AB9110();
  result = (*(v50 + 8))(v51, v48);
  if (v49)
  {
    sub_1B6994AF8(v42, v46 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v46 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v47;
    v79 = v46;
    sub_1B6994AA4(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus);
    v54 = v47;

    v55 = swift_task_localValuePush();
    v56 = v76;
    v75(&v80, v55);
    swift_task_localValuePop();

    if (v56)
    {
    }

    else
    {

      return v80;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69BFAE8()
{
  v1 = v0[13];
  v2 = __swift_project_boxed_opaque_existential_1((v0[12] + 40), *(v0[12] + 64));
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *v2;
  v6 = swift_task_alloc();
  v0[14] = v6;
  *v6 = v0;
  v6[1] = sub_1B6A0E288;

  return sub_1B69A93E0(v4, v3);
}

uint64_t sub_1B69BFB9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  type metadata accessor for PrivacyValidator();
  inited = swift_initStackObject();
  *(inited + 16) = a1 != 0;
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(inited + 24) = v10;
  if (a1 && (v12 = *a2, v11 = a2[1], , sub_1B69C245C(v12, v11)))
  {

    *a3 = 0;
  }

  else
  {
    v14 = sub_1B6A9F5F4(inited);
    swift_setDeallocating();
    v15 = *(inited + 24);

    if (!v4)
    {
      *a3 = v14;
    }
  }

  return result;
}

uint64_t sub_1B69BFCF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69BFD58(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69BFDA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69BFE08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69BFE9C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for EventData();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}