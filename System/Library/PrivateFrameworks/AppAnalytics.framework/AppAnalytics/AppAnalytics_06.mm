void *SessionManager.init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:summaryEventConfiguration:)(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v26 = a7;
  v27 = a8;
  v25 = a4;
  v16 = a6[3];
  v15 = a6[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a6, v16);
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20);
  v22 = sub_1B6A09478(a1, a2, a3, v25, a5, v20, v26, v27, a9, v9, v16, v15);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v22;
}

void *SessionManager.__allocating_init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:summaryEventConfiguration:timeDurationGranularity:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v18 = a6[3];
  v17 = a6[4];
  v19 = __swift_mutable_project_boxed_opaque_existential_1(a6, v18);
  v20 = sub_1B6A09FE8(a1, a2, a3, a4, a5, v19, a7, a8, a9, a10, v10, v18, v17);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v20;
}

void *SessionManager.init(accessQueue:accessGroup:sessionGroupManager:options:flushProcessor:timestampConfigurationProvider:privacyValidationProvider:diagnosticsConsentProvider:summaryEventConfiguration:timeDurationGranularity:)(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10)
{
  v27 = a7;
  v28 = a8;
  v26 = a4;
  v25 = a9;
  v17 = a6[3];
  v16 = a6[4];
  v18 = __swift_mutable_project_boxed_opaque_existential_1(a6, v17);
  v19 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21);
  v23 = sub_1B69916AC(a1, a2, a3, v26, a5, v21, v27, v28, v25, *(&v25 + 1), a10, v10, v17, v16);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a6);
  return v23;
}

uint64_t sub_1B69FCEDC(uint64_t a1, void (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v81 = a2;
  v9 = sub_1B6AB90F0();
  v78 = *(v9 - 8);
  v79 = v9;
  v10 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v70[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1B6AB8E40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v70[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6992BDC();
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v70[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B699332C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v73 = &v70[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = MEMORY[0x1EEE9AC00](v23);
  v86 = &v70[-v26];
  MEMORY[0x1EEE9AC00](v25);
  v87 = &v70[-v27];
  v28 = type metadata accessor for DiagnosticsConsentProvider(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v75 = &v70[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v70[-v32];
  sub_1B6980478(*(a1 + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, &v70[-v32], type metadata accessor for DiagnosticsConsentProvider);
  v76 = *(a1 + 48);
  v34 = qword_1EDBC9F60;
  v83 = a3;

  v82 = a4;

  if (v34 != -1)
  {
    swift_once();
  }

  v85 = a5;
  v74 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v80 = v88;
  if (v88)
  {
    v35 = *(v13 + 16);
    v36 = v87;
    v35(v87, v88 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v12);
    v37 = *(v13 + 56);
    v37(v36, 0, 1, v12);
  }

  else
  {
    v37 = *(v13 + 56);
    v37(v87, 1, 1, v12);
    v35 = *(v13 + 16);
  }

  v38 = v12;
  v39 = v86;
  v84 = v33;
  v35(v86, v33, v38);
  v37(v39, 0, 1, v38);
  v40 = *(v17 + 48);
  v41 = MEMORY[0x1E69695A8];
  v42 = MEMORY[0x1E69E6720];
  sub_1B6A0A858(v87, v20, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  sub_1B6A0A858(v39, &v20[v40], &qword_1EDBCAF50, v41, v42, sub_1B699332C);
  v43 = *(v13 + 48);
  if (v43(v20, 1, v38) == 1)
  {
    v44 = MEMORY[0x1E69695A8];
    v45 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v39, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    sub_1B6A0A8CC(v87, &qword_1EDBCAF50, v44, v45, sub_1B699332C);
    v46 = v43(&v20[v40], 1, v38);
    v47 = v85;
    if (v46 == 1)
    {
      sub_1B6A0A8CC(v20, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
      v48 = v84;
LABEL_15:
      v81(v82, v47);

      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v49 = v73;
  sub_1B6A0A858(v20, v73, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  v50 = v38;
  if (v43(&v20[v40], 1, v38) == 1)
  {
    v51 = MEMORY[0x1E69695A8];
    v52 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v86, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    sub_1B6A0A8CC(v87, &qword_1EDBCAF50, v51, v52, sub_1B699332C);
    (*(v13 + 8))(v49, v38);
    v47 = v85;
LABEL_11:
    sub_1B6A0BDA4(v20, sub_1B6992BDC);
    v48 = v84;
    goto LABEL_12;
  }

  v66 = v72;
  (*(v13 + 32))(v72, &v20[v40], v50);
  sub_1B69822F4(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
  v71 = sub_1B6AB92A0();
  v67 = *(v13 + 8);
  v67(v66, v50);
  v68 = MEMORY[0x1E69695A8];
  v69 = MEMORY[0x1E69E6720];
  sub_1B6A0A8CC(v86, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  sub_1B6A0A8CC(v87, &qword_1EDBCAF50, v68, v69, sub_1B699332C);
  v67(v49, v50);
  sub_1B6A0A8CC(v20, &qword_1EDBCAF50, v68, v69, sub_1B699332C);
  v48 = v84;
  v47 = v85;
  if (v71)
  {
    goto LABEL_15;
  }

LABEL_12:
  v53 = v75;
  sub_1B6980478(v48, v75, type metadata accessor for DiagnosticsConsentProvider);
  v54 = type metadata accessor for LazyDiagnosticStatus(0);
  v55 = *(v54 + 48);
  v56 = *(v54 + 52);
  v57 = swift_allocObject();
  *(v57 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v59 = v76;
  v58 = v77;
  v60 = *&v76[OBJC_IVAR___AAAccessQueue_queue];
  *v77 = v60;
  v62 = v78;
  v61 = v79;
  (*(v78 + 104))(v58, *MEMORY[0x1E69E8020], v79);
  v63 = v60;
  LOBYTE(v60) = sub_1B6AB9110();
  result = (*(v62 + 8))(v58, v61);
  if (v60)
  {
    sub_1B6980F64(v53, v57 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v57 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v59;
    v88 = v57;
    sub_1B699332C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v65 = v59;

    swift_task_localValuePush();
    v81(v82, v47);
    swift_task_localValuePop();

LABEL_16:

    return sub_1B6A0BDA4(v48, type metadata accessor for DiagnosticsConsentProvider);
  }

  __break(1u);
  return result;
}

uint64_t SessionManager.deinit()
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v23 - v3;
  v5 = sub_1B6AB9680();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  swift_beginAccess();
  v7 = *(v0 + v6);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v9 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v10 = swift_allocObject();
  v10[2] = inited;
  v10[3] = v9;
  v10[4] = v7;

  sub_1B69EDFB0(0, 0, v4, &unk_1B6ABF728, v10);

  v11 = *(v0 + 16);

  v12 = *(v0 + 24);

  sub_1B6988008(v0 + 32);

  v13 = *(v0 + 64);

  sub_1B6A0BDA4(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_state, type metadata accessor for SessionManager.SessionState);
  v14 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks);

  v15 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers);

  v16 = *(v0 + v6);

  v17 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey);

  v18 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey);

  sub_1B6A0A1D4(*(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind), *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind + 8));
  v19 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider));
  v20 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator);

  v21 = *(v0 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager);

  return v0;
}

uint64_t sub_1B69FDB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v6 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B69FDC4C, v6, v5);
}

uint64_t sub_1B69FDC4C()
{
  v1 = *(v0 + 16);
  v2 = -1;
  v3 = -1 << *(v1 + 32);
  if (-v3 < 64)
  {
    v2 = ~(-1 << -v3);
  }

  v4 = v2 & *(v1 + 64);
  v5 = (63 - v3) >> 6;
  v6 = *(v0 + 16);

  v8 = 0;
  if (v4)
  {
    while (1)
    {
      v9 = v8;
LABEL_9:
      v10 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v11 = v10 | (v9 << 6);
      v12 = *(*(v1 + 48) + 16 * v11 + 8);
      v13 = *(*(v1 + 56) + 8 * v11);
      sub_1B697ED90(0, &qword_1EDBCBB00);

      sub_1B6AB9710();

      if (!v4)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= v5)
    {
      break;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v8;
    if (v4)
    {
      v8 = v9;
      goto LABEL_9;
    }
  }

  v14 = *(v0 + 16);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t SessionManager.__deallocating_deinit()
{
  SessionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B69FDE38(uint64_t a1)
{
  v3 = sub_1B69B4888(MEMORY[0x1E69E7CC0]);
  v4 = *(a1 + 64);
  v18 = v3;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;

  for (i = 0; v7; i = v10)
  {
    v10 = i;
LABEL_8:
    v11 = __clz(__rbit64(v7)) | (v10 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1B698FE74(*(a1 + 56) + 32 * v11, &v17);
    v16[0] = v14;
    v16[1] = v13;

    sub_1B6A0242C(&v18, v16, v1);
    v7 &= v7 - 1;
    sub_1B6A0BDA4(v16, sub_1B69A1808);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return v18;
    }

    v7 = *(a1 + 64 + 8 * v10);
    ++i;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  sub_1B6A0BDA4(v16, sub_1B69A1808);

  __break(1u);
  return result;
}

uint64_t sub_1B69FDFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v48 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v56 = a7;
    v57 = a8;
    v53 = a11;
    v54 = a6;
    v48 = a10;
    v49 = a12;
    v51 = a9;
    v55 = a4;
    v59 = a4;
    v60 = a5;

    MEMORY[0x1B8C97BE0](35, 0xE100000000000000);
    sub_1B69E8D48();
    v24 = sub_1B6ABA330();
    MEMORY[0x1B8C97BE0](v24);

    v25 = v59;
    v26 = v60;
    v27 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    swift_beginAccess();
    v28 = *(v23 + v27);
    v29 = *(v28 + 16);
    v52 = v25;
    v50 = v26;
    if (v29 && (v30 = sub_1B6993940(v25, v26), (v31 & 1) != 0))
    {
      v32 = a2;
      v33 = *(*(v28 + 56) + 8 * v30);
      swift_endAccess();
      sub_1B697ED90(0, &qword_1EDBCBB00);

      sub_1B6AB9710();
    }

    else
    {
      v32 = a2;
      swift_endAccess();
    }

    v34 = sub_1B6AB9680();
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    v35 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for AnalyticsActor();
    inited = swift_initStaticObject();
    v37 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
    v38 = swift_allocObject();
    v38[2] = inited;
    v38[3] = v37;
    v38[4] = v35;
    v38[5] = v32;
    v39 = v55;
    v41 = v56;
    v40 = v57;
    v38[6] = v54;
    v38[7] = v41;
    v38[8] = v39;
    v38[9] = a5;
    v42 = v51;
    v38[10] = v40;
    v38[11] = v42;
    v43 = v49;
    v44 = v53;
    v38[12] = v48;
    v38[13] = v44;
    v38[14] = v43;

    sub_1B698BF94(v40);

    v45 = sub_1B6A6EE0C(0, 0, v21, &unk_1B6ABFA50, v38);
    swift_beginAccess();
    v46 = *(v23 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v23 + v27);
    *(v23 + v27) = 0x8000000000000000;
    sub_1B69E6EE4(v45, v52, v50, isUniquelyReferenced_nonNull_native);

    *(v23 + v27) = v58;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1B69FE378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v48 - v20;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v23 = result;
    v56 = a7;
    v57 = a8;
    v53 = a11;
    v54 = a6;
    v48 = a10;
    v49 = a12;
    v51 = a9;
    v55 = a4;
    v59 = a4;
    v60 = a5;

    MEMORY[0x1B8C97BE0](35, 0xE100000000000000);
    sub_1B69E8B54();
    v24 = sub_1B6ABA330();
    MEMORY[0x1B8C97BE0](v24);

    v25 = v59;
    v26 = v60;
    v27 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    swift_beginAccess();
    v28 = *(v23 + v27);
    v29 = *(v28 + 16);
    v52 = v25;
    v50 = v26;
    if (v29 && (v30 = sub_1B6993940(v25, v26), (v31 & 1) != 0))
    {
      v32 = a2;
      v33 = *(*(v28 + 56) + 8 * v30);
      swift_endAccess();
      sub_1B697ED90(0, &qword_1EDBCBB00);

      sub_1B6AB9710();
    }

    else
    {
      v32 = a2;
      swift_endAccess();
    }

    v34 = sub_1B6AB9680();
    (*(*(v34 - 8) + 56))(v21, 1, 1, v34);
    v35 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for AnalyticsActor();
    inited = swift_initStaticObject();
    v37 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
    v38 = swift_allocObject();
    v38[2] = inited;
    v38[3] = v37;
    v38[4] = v35;
    v38[5] = v32;
    v39 = v55;
    v41 = v56;
    v40 = v57;
    v38[6] = v54;
    v38[7] = v41;
    v38[8] = v39;
    v38[9] = a5;
    v42 = v51;
    v38[10] = v40;
    v38[11] = v42;
    v43 = v49;
    v44 = v53;
    v38[12] = v48;
    v38[13] = v44;
    v38[14] = v43;

    sub_1B698BF94(v40);

    v45 = sub_1B6A6EE0C(0, 0, v21, &unk_1B6ABFA40, v38);
    swift_beginAccess();
    v46 = *(v23 + v27);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = *(v23 + v27);
    *(v23 + v27) = 0x8000000000000000;
    sub_1B69E6EE4(v45, v52, v50, isUniquelyReferenced_nonNull_native);

    *(v23 + v27) = v58;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1B69FE738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 5608) = v26;
  *(v8 + 5600) = v25;
  *(v8 + 5584) = v24;
  *(v8 + 5568) = v23;
  *(v8 + 5560) = a8;
  *(v8 + 5552) = a7;
  *(v8 + 5544) = a6;
  *(v8 + 5536) = a5;
  *(v8 + 5528) = a4;
  v9 = type metadata accessor for SessionManager.SessionState(0);
  *(v8 + 5616) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 5624) = swift_task_alloc();
  v11 = sub_1B6AB90F0();
  *(v8 + 5632) = v11;
  v12 = *(v11 - 8);
  *(v8 + 5640) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 5648) = swift_task_alloc();
  sub_1B6A0B378(0);
  *(v8 + 5656) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 5664) = swift_task_alloc();
  sub_1B6A0B634(0);
  *(v8 + 5672) = v16;
  v17 = *(v16 - 8);
  *(v8 + 5680) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 5688) = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  *(v8 + 5696) = swift_initStaticObject();
  *(v8 + 5704) = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v20 = sub_1B6AB95E0();
  *(v8 + 5712) = v20;
  *(v8 + 5720) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1B69FE950, v20, v19);
}

uint64_t sub_1B69FE950()
{
  v21 = v0;
  v1 = *(v0 + 5528);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 5728) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 5688);
    v4 = *(v0 + 5664);
    v5 = *(v0 + 5656);
    v6 = *(v0 + 5552);
    v7 = *(v0 + 5544);
    v20 = *(*(v0 + 5536) + 32);
    v7(&v20);
    sub_1B69822F4(&qword_1EB95B550, sub_1B6A0B378);
    sub_1B6AB9790();
    *(v0 + 5736) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    *(v0 + 5744) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
    *(v0 + 5752) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
    swift_beginAccess();
    *(v0 + 164) = *MEMORY[0x1E69E8020];
    v8 = *(v0 + 5704);
    v9 = *(v0 + 5696);
    sub_1B69822F4(&qword_1EB95B558, sub_1B6A0B634);
    v10 = *(MEMORY[0x1E69E85B0] + 4);
    v11 = swift_task_alloc();
    *(v0 + 5760) = v11;
    *v11 = v0;
    v11[1] = sub_1B69FEBB4;
    v12 = *(v0 + 5688);
    v13 = *(v0 + 5672);

    return MEMORY[0x1EEE6D8D0](v0 + 3336, v9, v8);
  }

  else
  {
    v14 = *(v0 + 5688);
    v15 = *(v0 + 5664);
    v16 = *(v0 + 5648);
    v17 = *(v0 + 5624);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B69FEBB4()
{
  v2 = *v1;
  v3 = *(*v1 + 5760);
  v4 = *v1;

  v5 = *(v2 + 5720);
  v6 = *(v2 + 5712);
  if (v0)
  {
    v7 = sub_1B6A0068C;
  }

  else
  {
    v7 = sub_1B69FECF0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B69FECF0()
{
  v307 = v0;
  if (*(v0 + 3344))
  {
    v1 = v0 + 2600;
    v2 = *(v0 + 5568);
    v293 = *(v0 + 5560);
    v296 = *(v0 + 5576);
    v3 = (v0 + 2744);
    v5 = *(v0 + 3400);
    v4 = *(v0 + 3416);
    v6 = *(v0 + 3384);
    *(v0 + 4184) = v5;
    *(v0 + 4200) = v4;
    *(v0 + 4209) = *(v0 + 3425);
    v7 = *(v0 + 3352);
    v8 = *(v0 + 3336);
    v9 = v7;
    *(v0 + 4120) = v8;
    *(v0 + 4136) = v7;
    v11 = *(v0 + 3368);
    v10 = *(v0 + 3384);
    v12 = *(v0 + 3352);
    *(v0 + 4152) = v11;
    *(v0 + 4168) = v10;
    v13 = *(v0 + 3384);
    v14 = *(v0 + 3400);
    v15 = *(v0 + 3416);
    *(v0 + 3848) = v14;
    *(v0 + 3864) = v15;
    v16 = *(v0 + 3336);
    *(v0 + 3784) = v16;
    *(v0 + 3800) = v12;
    v301 = v16;
    v302 = v12;
    v17 = *(v0 + 3368);
    *(v0 + 3816) = v17;
    *(v0 + 3832) = v13;
    v303 = v17;
    v304 = v13;
    v18 = *(v0 + 3425);
    *(v0 + 3873) = v18;
    v305 = v14;
    v306[0] = v15;
    *(v306 + 9) = v18;
    *(v0 + 2856) = v293;
    *(v0 + 2864) = v2;
    *(v0 + 2872) = v8;
    *(v0 + 2888) = v9;
    *(v0 + 2961) = *(v0 + 3425);
    v19 = *(v0 + 3416);
    *(v0 + 2936) = v5;
    *(v0 + 2952) = v19;
    *(v0 + 2904) = v11;
    *(v0 + 2920) = v6;
    sub_1B6A0B6F8(0, &qword_1EB95AF00, sub_1B69E8D48);
    sub_1B6A0AED4(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48);

    sub_1B6A0B758(v0 + 3784, v0 + 4568);
    sub_1B6A0A858(v0 + 2856, v0 + 2984, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData, sub_1B6A0B6F8);
    v20 = sub_1B6ABA330();
    v300 = v21;
    v22 = *(v0 + 2936);
    *(v0 + 2664) = *(v0 + 2920);
    *(v0 + 2680) = v22;
    *(v0 + 2696) = *(v0 + 2952);
    *(v0 + 2705) = *(v0 + 2961);
    v23 = *(v0 + 2872);
    *(v0 + 2600) = *(v0 + 2856);
    *(v0 + 2616) = v23;
    v24 = *(v0 + 2904);
    *(v0 + 2632) = *(v0 + 2888);
    *(v0 + 2648) = v24;
    *(v0 + 2728) = v293;
    *(v0 + 2736) = v2;
    v25 = v302;
    *(v0 + 2744) = v301;
    *(v0 + 2760) = v25;
    *(v0 + 2833) = *(v306 + 9);
    v26 = v306[0];
    *(v0 + 2808) = v305;
    *(v0 + 2824) = v26;
    v27 = v304;
    *(v0 + 2776) = v303;
    *(v0 + 2792) = v27;
    sub_1B6A0A8CC(v0 + 2728, &qword_1EB95AF00, sub_1B69E8D48, &type metadata for AppAnalyticsUserData, sub_1B6A0B6F8);
    v292 = (v0 + 4120);
    if (!v296)
    {
      v75 = *(v0 + 5728);
      v76 = *(v0 + 5608);
      v77 = *(v0 + 5600);
      v78 = *(v0 + 5592);
      v79 = *(v0 + 2680);
      *(v0 + 2360) = *(v0 + 2664);
      *(v0 + 2376) = v79;
      v80 = *(v0 + 2712);
      *(v0 + 2392) = *(v0 + 2696);
      *(v0 + 2408) = v80;
      v81 = *(v0 + 2616);
      *(v0 + 2296) = *v1;
      *(v0 + 2312) = v81;
      v82 = *(v0 + 2648);
      *(v0 + 2328) = *(v0 + 2632);
      *(v0 + 2344) = v82;
      *(v0 + 2424) = v20;
      *(v0 + 2432) = v300;
      *(v0 + 2440) = 256;
      sub_1B6AA099C((v0 + 2296), &unk_1F2E73DE0, v78, v77, v76);
      v3 = v20;
      v35 = v300;
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_78;
    }

    v297 = (v0 + 2600);
    v298 = v20;
    v28 = *(v0 + 164);
    v1 = *(v0 + 5728);
    v29 = *(v0 + 5648);
    v30 = *(v0 + 5640);
    v31 = *(v0 + 5632);
    v32 = *(v0 + 5584);
    (*(v0 + 5576))(v0 + 4120);
    v33 = *(*(v1 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v29 = v33;
    (*(v30 + 104))(v29, v28, v31);
    v34 = v33;
    LOBYTE(v33) = sub_1B6AB9110();
    v36 = *(v30 + 8);
    v35 = v30 + 8;
    v36(v29, v31);
    if ((v33 & 1) == 0)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      swift_once();
LABEL_17:
      v83 = *(v0 + 5568);
      v84 = sub_1B6AB8F90();
      __swift_project_value_buffer(v84, qword_1EDBCFD80);

      v85 = sub_1B6AB8F80();
      v86 = sub_1B6AB98D0();

      if (os_log_type_enabled(v85, v86))
      {
        v87 = v0 + 928;
        v88 = *(v0 + 5568);
        v89 = *(v0 + 5560);
        v90 = swift_slowAlloc();
        v299 = v3;
        v91 = swift_slowAlloc();
        *&v301 = v91;
        *v90 = 136315138;
        *(v90 + 4) = sub_1B698F63C(v89, v88, &v301);
        _os_log_impl(&dword_1B697C000, v85, v86, "Immediate session data push for %s", v90, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v91);
        MEMORY[0x1B8C99550](v91, -1, -1);
        MEMORY[0x1B8C99550](v90, -1, -1);

        v92 = *(v0 + 4200);
        *(v0 + 4296) = *(v0 + 4184);
        *(v0 + 4312) = v92;
        *(v0 + 4321) = *(v0 + 4209);
        v93 = *(v0 + 4136);
        *(v0 + 4232) = *v292;
        *(v0 + 4248) = v93;
        v94 = *(v0 + 4168);
        *(v0 + 4264) = *(v0 + 4152);
        *(v0 + 4280) = v94;
        sub_1B6A0B878(v0 + 4232);
        v95 = *(v1 + 80);
        *(v0 + 992) = *(v1 + 64);
        *(v0 + 1008) = v95;
        v96 = *(v1 + 112);
        *(v0 + 1024) = *(v1 + 96);
        *(v0 + 1040) = v96;
        v97 = *(v1 + 16);
        *(v0 + 928) = *v1;
        *(v0 + 944) = v97;
        v98 = *(v1 + 48);
        *(v0 + 960) = *(v1 + 32);
        *(v0 + 976) = v98;
        *(v0 + 1056) = v299;
        *(v0 + 1064) = v300;
        *(v0 + 1072) = 256;
      }

      else
      {
        v87 = v0 + 1080;

        v107 = *(v0 + 4200);
        *(v0 + 3624) = *(v0 + 4184);
        *(v0 + 3640) = v107;
        *(v0 + 3649) = *(v0 + 4209);
        v108 = *(v0 + 4136);
        *(v0 + 3560) = *v292;
        *(v0 + 3576) = v108;
        v109 = *(v0 + 4168);
        *(v0 + 3592) = *(v0 + 4152);
        *(v0 + 3608) = v109;
        sub_1B6A0B878(v0 + 3560);
        v110 = *(v1 + 80);
        *(v0 + 1144) = *(v1 + 64);
        *(v0 + 1160) = v110;
        v111 = *(v1 + 112);
        *(v0 + 1176) = *(v1 + 96);
        *(v0 + 1192) = v111;
        v112 = *(v1 + 16);
        *(v0 + 1080) = *v1;
        *(v0 + 1096) = v112;
        v113 = *(v1 + 48);
        *(v0 + 1112) = *(v1 + 32);
        *(v0 + 1128) = v113;
        *(v0 + 1208) = v3;
        *(v0 + 1216) = v35;
        *(v0 + 1224) = 256;
      }

      goto LABEL_27;
    }

    v37 = *(v0 + 5616);
    sub_1B6980478(*(v0 + 5728) + *(v0 + 5736), *(v0 + 5624), type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v39 = (v0 + 472);
      v3 = (v0 + 5104);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(*(v0 + 5624), type metadata accessor for SessionManager.SessionState);
      }

      v1 = *(v0 + 5744);
      v40 = *(v0 + 5728);
      v41 = *(v0 + 5600);
      v42 = *(v0 + 5592);
      v294 = *(v0 + 5568);
      v288 = *(v0 + 5608);
      v290 = *(v0 + 5560);
      sub_1B69E1028(v0 + 5024, v0 + 4944);
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = *(v0 + 2680);
      *(v0 + 536) = *(v0 + 2664);
      *(v0 + 552) = v44;
      v45 = *(v0 + 2712);
      *(v0 + 568) = *(v0 + 2696);
      *(v0 + 584) = v45;
      v46 = *(v0 + 2616);
      *v39 = *v297;
      *(v0 + 488) = v46;
      v47 = *(v0 + 2648);
      *(v0 + 504) = *(v0 + 2632);
      *(v0 + 520) = v47;
      *(v0 + 600) = v298;
      *(v0 + 608) = v300;
      *(v0 + 616) = 256;
      v35 = swift_allocObject();
      v48 = *(v0 + 584);
      *(v35 + 120) = *(v0 + 568);
      *(v35 + 136) = v48;
      *(v35 + 152) = *(v0 + 600);
      v49 = *(v0 + 520);
      *(v35 + 56) = *(v0 + 504);
      *(v35 + 72) = v49;
      v50 = *(v0 + 552);
      *(v35 + 88) = *(v0 + 536);
      *(v35 + 104) = v50;
      v51 = *(v0 + 488);
      *(v35 + 24) = *v39;
      *(v35 + 16) = v43;
      *(v35 + 168) = *(v0 + 616);
      *(v35 + 40) = v51;
      *(v35 + 176) = v42;
      *(v35 + 184) = v41;
      *(v35 + 192) = v288;
      v52 = swift_allocObject();
      *(v52 + 16) = sub_1B6A0B7B4;
      *(v52 + 24) = v35;
      v53 = *(v0 + 4960);
      *v3 = *(v0 + 4944);
      *(v0 + 5120) = v53;
      *(v0 + 5136) = *(v0 + 4976);
      swift_beginAccess();
      *(v0 + 4872) = sub_1B6A0BE38;
      *(v0 + 4880) = v52;
      v54 = *(v0 + 5120);
      *(v0 + 4888) = *v3;
      *(v0 + 4904) = v54;
      *(v0 + 4920) = *(v0 + 5136);
      sub_1B6980478(v0 + 472, v0 + 624, sub_1B6A0B7C0);

      v55 = *(v40 + v1);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v40 + v1);
      *(v0 + 5520) = v57;
      *(v40 + v1) = 0x8000000000000000;
      v58 = sub_1B6993940(v290, v294);
      v60 = *(v57 + 16);
      v61 = (v59 & 1) == 0;
      v62 = __OFADD__(v60, v61);
      v63 = v60 + v61;
      if (!v62)
      {
        v64 = v59;
        if (*(v57 + 24) >= v63)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v286 = v58;
            sub_1B69DEDC0();
            v58 = v286;
          }
        }

        else
        {
          v65 = *(v0 + 5568);
          v3 = *(v0 + 5560);
          sub_1B69DBE84(v63, isUniquelyReferenced_nonNull_native);
          v66 = *(v0 + 5520);
          v58 = sub_1B6993940(v3, v65);
          if ((v64 & 1) != (v67 & 1))
          {
LABEL_10:

            return sub_1B6ABA190();
          }
        }

        v105 = *(v0 + 5520);
        if (v64)
        {
          sub_1B6A0B03C(v0 + 4872, v105[7] + 56 * v58, sub_1B6A0AAAC);
          v106 = (v0 + 2600);
LABEL_30:
          *(*(v0 + 5728) + *(v0 + 5744)) = v105;
          swift_endAccess();
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v125 = *(v0 + 5568);
          v126 = sub_1B6AB8F90();
          __swift_project_value_buffer(v126, qword_1EDBCFD80);

          v127 = sub_1B6AB8F80();
          v128 = sub_1B6AB98D0();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = *(v0 + 5568);
            v130 = *(v0 + 5560);
            v131 = swift_slowAlloc();
            v132 = swift_slowAlloc();
            *&v301 = v132;
            *v131 = 136315138;
            *(v131 + 4) = sub_1B698F63C(v130, v129, &v301);
            _os_log_impl(&dword_1B697C000, v127, v128, "Deferred session data push for %s, reason: No active session", v131, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v132);
            MEMORY[0x1B8C99550](v132, -1, -1);
            MEMORY[0x1B8C99550](v131, -1, -1);

            sub_1B6A0AFE8(v0 + 5024);
            v133 = *(v0 + 4200);
            *(v0 + 3512) = *(v0 + 4184);
            *(v0 + 3528) = v133;
            *(v0 + 3537) = *(v0 + 4209);
            v134 = *(v0 + 4136);
            *(v0 + 3448) = *v292;
            *(v0 + 3464) = v134;
            v135 = *(v0 + 4168);
            *(v0 + 3480) = *(v0 + 4152);
            *(v0 + 3496) = v135;
            sub_1B6A0B878(v0 + 3448);
            v136 = v106[5];
            *(v0 + 384) = v106[4];
            *(v0 + 400) = v136;
            v137 = v106[7];
            *(v0 + 416) = v106[6];
            *(v0 + 432) = v137;
            v138 = v106[1];
            *(v0 + 320) = *v106;
            *(v0 + 336) = v138;
            v139 = v106[3];
            *(v0 + 352) = v106[2];
            *(v0 + 368) = v139;
            *(v0 + 448) = v298;
            *(v0 + 456) = v300;
            *(v0 + 464) = 256;
            v114 = v0 + 320;
          }

          else
          {

            sub_1B6A0AFE8(v0 + 5024);
            v140 = *(v0 + 4200);
            *(v0 + 3960) = *(v0 + 4184);
            *(v0 + 3976) = v140;
            *(v0 + 3985) = *(v0 + 4209);
            v141 = *(v0 + 4136);
            *(v0 + 3896) = *v292;
            *(v0 + 3912) = v141;
            v142 = *(v0 + 4168);
            *(v0 + 3928) = *(v0 + 4152);
            *(v0 + 3944) = v142;
            sub_1B6A0B878(v0 + 3896);
            v143 = v106[5];
            *(v0 + 840) = v106[4];
            *(v0 + 856) = v143;
            v144 = v106[7];
            *(v0 + 872) = v106[6];
            *(v0 + 888) = v144;
            v145 = v106[1];
            *(v0 + 776) = *v106;
            *(v0 + 792) = v145;
            v146 = v106[3];
            *(v0 + 808) = v106[2];
            *(v0 + 824) = v146;
            *(v0 + 904) = v298;
            *(v0 + 912) = v300;
            *(v0 + 920) = 256;
            v114 = v0 + 776;
          }

          goto LABEL_35;
        }

        v115 = *(v0 + 5568);
        v116 = *(v0 + 5560);
        v105[(v58 >> 6) + 8] |= 1 << v58;
        v117 = (v105[6] + 16 * v58);
        *v117 = v116;
        v117[1] = v115;
        v118 = v105[7] + 56 * v58;
        v119 = *(v0 + 4872);
        v120 = *(v0 + 4888);
        v121 = *(v0 + 4904);
        *(v118 + 48) = *(v0 + 4920);
        *(v118 + 16) = v120;
        *(v118 + 32) = v121;
        *v118 = v119;
        v122 = v105[2];
        v62 = __OFADD__(v122, 1);
        v123 = v122 + 1;
        v106 = (v0 + 2600);
        if (!v62)
        {
          v124 = *(v0 + 5568);
          v105[2] = v123;

          goto LABEL_30;
        }

        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        swift_once();
LABEL_49:
        v175 = *(v0 + 5568);
        v176 = sub_1B6AB8F90();
        __swift_project_value_buffer(v176, qword_1EDBCFD80);

        v177 = sub_1B6AB8F80();
        v178 = sub_1B6AB98D0();

        if (os_log_type_enabled(v177, v178))
        {
          v87 = v0 + 2144;
          v179 = *(v0 + 5568);
          v180 = *(v0 + 5560);
          v181 = swift_slowAlloc();
          v182 = swift_slowAlloc();
          *&v301 = v182;
          *v181 = 136315138;
          *(v181 + 4) = sub_1B698F63C(v180, v179, &v301);
          _os_log_impl(&dword_1B697C000, v177, v178, "Pinned session data push for %s, reason: First value this session", v181, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v182);
          MEMORY[0x1B8C99550](v182, -1, -1);
          MEMORY[0x1B8C99550](v181, -1, -1);

          sub_1B6A0AFE8(v0 + 5024);
          v183 = *(v0 + 4200);
          *(v0 + 4408) = *(v0 + 4184);
          *(v0 + 4424) = v183;
          *(v0 + 4433) = *(v0 + 4209);
          v184 = *(v0 + 4136);
          *(v0 + 4344) = *v292;
          *(v0 + 4360) = v184;
          v185 = *(v0 + 4168);
          *(v0 + 4376) = *(v0 + 4152);
          *(v0 + 4392) = v185;
          sub_1B6A0B878(v0 + 4344);
          v186 = v106[5];
          *(v0 + 2208) = v106[4];
          *(v0 + 2224) = v186;
          v187 = v106[7];
          *(v0 + 2240) = v106[6];
          *(v0 + 2256) = v187;
          v188 = v106[1];
          *(v0 + 2144) = *v106;
          *(v0 + 2160) = v188;
          v189 = v106[3];
          *(v0 + 2176) = v106[2];
          *(v0 + 2192) = v189;
          *(v0 + 2272) = v298;
          *(v0 + 2280) = v300;
          *(v0 + 2288) = 256;
        }

        else
        {
          v87 = v0 + 2448;

          sub_1B6A0AFE8(v0 + 5024);
          v213 = *(v0 + 4200);
          *(v0 + 3176) = *(v0 + 4184);
          *(v0 + 3192) = v213;
          *(v0 + 3201) = *(v0 + 4209);
          v214 = *(v0 + 4136);
          *(v0 + 3112) = *v292;
          *(v0 + 3128) = v214;
          v215 = *(v0 + 4168);
          *(v0 + 3144) = *(v0 + 4152);
          *(v0 + 3160) = v215;
          sub_1B6A0B878(v0 + 3112);
          v216 = v106[5];
          *(v0 + 2512) = v106[4];
          *(v0 + 2528) = v216;
          v217 = v106[7];
          *(v0 + 2544) = v106[6];
          *(v0 + 2560) = v217;
          v218 = v106[1];
          *(v0 + 2448) = *v106;
          *(v0 + 2464) = v218;
          v219 = v106[3];
          *(v0 + 2480) = v106[2];
          *(v0 + 2496) = v219;
          *(v0 + 2576) = v3;
          *(v0 + 2584) = v300;
          *(v0 + 2592) = 256;
        }

LABEL_27:
        v114 = v87;
LABEL_35:
        sub_1B6A0BDA4(v114, sub_1B6A0B7C0);
        v147 = *(v0 + 5704);
        v148 = *(v0 + 5696);
        sub_1B69822F4(&qword_1EB95B558, sub_1B6A0B634);
        v149 = *(MEMORY[0x1E69E85B0] + 4);
        v150 = swift_task_alloc();
        *(v0 + 5760) = v150;
        *v150 = v0;
        v150[1] = sub_1B69FEBB4;
        v151 = *(v0 + 5688);
        v152 = *(v0 + 5672);
        v153 = v0 + 3336;
        v154 = v148;
        v155 = v147;

        return MEMORY[0x1EEE6D8D0](v153, v154, v155);
      }

      goto LABEL_77;
    }

    v99 = *(v0 + 5752);
    v100 = *(v0 + 5728);
    v101 = **(v0 + 5624);

    swift_beginAccess();
    v102 = *(v100 + v99);
    if (*(v102 + 16) && (v103 = sub_1B6993940(*(v0 + 5560), *(v0 + 5568)), (v104 & 1) != 0))
    {
      sub_1B69E1028(*(v102 + 56) + 40 * v103, v0 + 5264);
    }

    else
    {
      *(v0 + 5296) = 0;
      *(v0 + 5264) = 0u;
      *(v0 + 5280) = 0u;
    }

    swift_endAccess();
    v156 = *(v0 + 5288);
    sub_1B6A0A674(v0 + 5264, &qword_1EB95ADF0);
    v157 = *(v0 + 5752);
    v158 = *(v0 + 5728);
    if (!v156)
    {
      v164 = *(v0 + 5608);
      v165 = *(v0 + 5600);
      v166 = *(v0 + 5592);
      v167 = *(v0 + 5568);
      v168 = *(v0 + 5560);
      swift_beginAccess();
      sub_1B69E1028(v0 + 5024, v0 + 5224);

      v169 = *(v158 + v157);
      v170 = swift_isUniquelyReferenced_nonNull_native();
      *&v301 = *(v158 + v157);
      *(v158 + v157) = 0x8000000000000000;
      sub_1B69E7060(v0 + 5224, v168, v167, v170);

      *(v158 + v157) = v301;
      swift_endAccess();
      v106 = (v0 + 2600);
      v3 = v298;
      v171 = *(v0 + 2680);
      *(v0 + 80) = *(v0 + 2664);
      *(v0 + 96) = v171;
      v172 = *(v0 + 2712);
      *(v0 + 112) = *(v0 + 2696);
      *(v0 + 128) = v172;
      v173 = *(v0 + 2616);
      *(v0 + 16) = *v297;
      *(v0 + 32) = v173;
      v174 = *(v0 + 2648);
      *(v0 + 48) = *(v0 + 2632);
      *(v0 + 64) = v174;
      *(v0 + 144) = v298;
      *(v0 + 152) = v300;
      *(v0 + 160) = 256;
      sub_1B6AA099C((v0 + 16), &unk_1F2E73E08, v166, v165, v164);
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_49;
      }

      goto LABEL_81;
    }

    swift_beginAccess();
    v159 = *(v158 + v157);
    if (*(v159 + 16) && (v160 = sub_1B6993940(*(v0 + 5560), *(v0 + 5568)), (v161 & 1) != 0))
    {
      sub_1B69E1028(*(v159 + 56) + 40 * v160, v0 + 4984);
    }

    else
    {
      *(v0 + 5016) = 0;
      *(v0 + 4984) = 0u;
      *(v0 + 5000) = 0u;
    }

    swift_endAccess();
    sub_1B69E1028(v0 + 5024, v0 + 5304);
    sub_1B6A0AB30(v0 + 4984, v0 + 4680);
    sub_1B6A0AB30(v0 + 5304, v0 + 4720);
    if (*(v0 + 4704))
    {
      sub_1B6A0AB30(v0 + 4680, v0 + 5144);
      if (*(v0 + 4744))
      {
        v162 = *(v0 + 4736);
        *(v0 + 5184) = *(v0 + 4720);
        *(v0 + 5200) = v162;
        *(v0 + 5216) = *(v0 + 4752);
        v163 = MEMORY[0x1B8C98450](v0 + 5144, v0 + 5184);
        sub_1B6A0AFE8(v0 + 5184);
        sub_1B6A0A674(v0 + 5304, &qword_1EB95ADF0);
        sub_1B6A0A674(v0 + 4984, &qword_1EB95ADF0);
        sub_1B6A0AFE8(v0 + 5144);
        sub_1B6A0A674(v0 + 4680, &qword_1EB95ADF0);
        if ((v163 & 1) == 0)
        {
LABEL_60:
          v106 = *(v0 + 5744);
          v220 = *(v0 + 5728);
          v221 = *(v0 + 5600);
          v3 = *(v0 + 5592);
          v295 = *(v0 + 5568);
          v289 = *(v0 + 5608);
          v291 = *(v0 + 5560);
          sub_1B69E1028(v0 + 5024, v0 + 4776);
          v222 = swift_allocObject();
          swift_weakInit();
          v223 = *(v0 + 2680);
          *(v0 + 2056) = *(v0 + 2664);
          *(v0 + 2072) = v223;
          v224 = *(v0 + 2712);
          *(v0 + 2088) = *(v0 + 2696);
          *(v0 + 2104) = v224;
          v225 = *(v0 + 2616);
          *(v0 + 1992) = *v297;
          *(v0 + 2008) = v225;
          v226 = *(v0 + 2648);
          *(v0 + 2024) = *(v0 + 2632);
          *(v0 + 2040) = v226;
          *(v0 + 2120) = v298;
          *(v0 + 2128) = v300;
          *(v0 + 2136) = 256;
          v227 = swift_allocObject();
          v228 = *(v0 + 2104);
          *(v227 + 120) = *(v0 + 2088);
          *(v227 + 136) = v228;
          *(v227 + 152) = *(v0 + 2120);
          v229 = *(v0 + 2040);
          *(v227 + 56) = *(v0 + 2024);
          *(v227 + 72) = v229;
          v230 = *(v0 + 2072);
          *(v227 + 88) = *(v0 + 2056);
          *(v227 + 104) = v230;
          v231 = *(v0 + 2008);
          *(v227 + 24) = *(v0 + 1992);
          *(v227 + 16) = v222;
          *(v227 + 168) = *(v0 + 2136);
          *(v227 + 40) = v231;
          *(v227 + 176) = v3;
          *(v227 + 184) = v221;
          *(v227 + 192) = v289;
          v232 = swift_allocObject();
          *(v232 + 16) = sub_1B6A0B934;
          *(v232 + 24) = v227;
          v233 = *(v0 + 4792);
          *(v0 + 5064) = *(v0 + 4776);
          *(v0 + 5080) = v233;
          *(v0 + 5096) = *(v0 + 4808);
          swift_beginAccess();
          *(v0 + 4816) = sub_1B6A0BE38;
          *(v0 + 4824) = v232;
          v234 = *(v0 + 5080);
          *(v0 + 4832) = *(v0 + 5064);
          *(v0 + 4848) = v234;
          *(v0 + 4864) = *(v0 + 5096);

          sub_1B6980478(v0 + 1992, v0 + 1840, sub_1B6A0B7C0);
          v235 = *(v106 + v220);
          v236 = swift_isUniquelyReferenced_nonNull_native();
          v237 = *(v106 + v220);
          *(v0 + 5512) = v237;
          *(v106 + v220) = 0x8000000000000000;
          v153 = sub_1B6993940(v291, v295);
          v238 = *(v237 + 16);
          v239 = (v154 & 1) == 0;
          v62 = __OFADD__(v238, v239);
          v240 = v238 + v239;
          if (!v62)
          {
            v241 = v154;
            if (*(v237 + 24) >= v240)
            {
              if (!v236)
              {
                v287 = v153;
                sub_1B69DEDC0();
                v153 = v287;
              }
            }

            else
            {
              v242 = *(v0 + 5568);
              v243 = *(v0 + 5560);
              sub_1B69DBE84(v240, v236);
              v244 = *(v0 + 5512);
              v153 = sub_1B6993940(v243, v242);
              if ((v241 & 1) != (v154 & 1))
              {
                goto LABEL_10;
              }
            }

            v245 = *(v0 + 5512);
            if (v241)
            {
              sub_1B6A0B03C(v0 + 4816, v245[7] + 56 * v153, sub_1B6A0AAAC);
              v246 = (v0 + 2600);
            }

            else
            {
              v247 = *(v0 + 5568);
              v248 = *(v0 + 5560);
              v245[(v153 >> 6) + 8] |= 1 << v153;
              v249 = (v245[6] + 16 * v153);
              *v249 = v248;
              v249[1] = v247;
              v250 = v245[7] + 56 * v153;
              v251 = *(v0 + 4816);
              v252 = *(v0 + 4832);
              v253 = *(v0 + 4848);
              *(v250 + 48) = *(v0 + 4864);
              *(v250 + 16) = v252;
              *(v250 + 32) = v253;
              *v250 = v251;
              v254 = v245[2];
              v62 = __OFADD__(v254, 1);
              v255 = v254 + 1;
              v246 = (v0 + 2600);
              if (v62)
              {
                __break(1u);
                return MEMORY[0x1EEE6D8D0](v153, v154, v155);
              }

              v256 = *(v0 + 5568);
              v245[2] = v255;
            }

            *(*(v0 + 5728) + *(v0 + 5744)) = v245;
            swift_endAccess();
            if (qword_1EDBCAA70 != -1)
            {
              swift_once();
            }

            v257 = *(v0 + 5568);
            v258 = sub_1B6AB8F90();
            __swift_project_value_buffer(v258, qword_1EDBCFD80);

            v259 = sub_1B6AB8F80();
            v260 = sub_1B6AB98D0();

            if (os_log_type_enabled(v259, v260))
            {
              v87 = v0 + 1536;
              v261 = *(v0 + 5568);
              v262 = *(v0 + 5560);
              v263 = swift_slowAlloc();
              v264 = swift_slowAlloc();
              *&v301 = v264;
              *v263 = 136315138;
              *(v263 + 4) = sub_1B698F63C(v262, v261, &v301);
              _os_log_impl(&dword_1B697C000, v259, v260, "Deferred session data push for %s, reason: Mid-session change", v263, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v264);
              MEMORY[0x1B8C99550](v264, -1, -1);
              MEMORY[0x1B8C99550](v263, -1, -1);

              sub_1B6A0AFE8(v0 + 5024);
              v265 = *(v0 + 4200);
              *(v0 + 3736) = *(v0 + 4184);
              *(v0 + 3752) = v265;
              *(v0 + 3761) = *(v0 + 4209);
              v266 = *(v0 + 4136);
              *(v0 + 3672) = *v292;
              *(v0 + 3688) = v266;
              v267 = *(v0 + 4168);
              *(v0 + 3704) = *(v0 + 4152);
              *(v0 + 3720) = v267;
              sub_1B6A0B878(v0 + 3672);
              v268 = v246[5];
              *(v0 + 1600) = v246[4];
              *(v0 + 1616) = v268;
              v269 = v246[7];
              *(v0 + 1632) = v246[6];
              *(v0 + 1648) = v269;
              v270 = v246[1];
              *(v0 + 1536) = *v246;
              *(v0 + 1552) = v270;
              v271 = v246[3];
              *(v0 + 1568) = v246[2];
              *(v0 + 1584) = v271;
              *(v0 + 1664) = v298;
              *(v0 + 1672) = v300;
              *(v0 + 1680) = 256;
            }

            else
            {
              v87 = v0 + 1688;

              sub_1B6A0AFE8(v0 + 5024);
              v272 = *(v0 + 4200);
              *(v0 + 4072) = *(v0 + 4184);
              *(v0 + 4088) = v272;
              *(v0 + 4097) = *(v0 + 4209);
              v273 = *(v0 + 4136);
              *(v0 + 4008) = *v292;
              *(v0 + 4024) = v273;
              v274 = *(v0 + 4168);
              *(v0 + 4040) = *(v0 + 4152);
              *(v0 + 4056) = v274;
              sub_1B6A0B878(v0 + 4008);
              v275 = v246[5];
              *(v0 + 1752) = v246[4];
              *(v0 + 1768) = v275;
              v276 = v246[7];
              *(v0 + 1784) = v246[6];
              *(v0 + 1800) = v276;
              v277 = v246[1];
              *(v0 + 1688) = *v246;
              *(v0 + 1704) = v277;
              v278 = v246[3];
              *(v0 + 1720) = v246[2];
              *(v0 + 1736) = v278;
              *(v0 + 1816) = v298;
              *(v0 + 1824) = v300;
              *(v0 + 1832) = 256;
            }

            goto LABEL_27;
          }

          goto LABEL_80;
        }

LABEL_53:
        v190 = *(v0 + 5728);
        v191 = *(v0 + 5608);
        v192 = *(v0 + 5600);
        v193 = *(v0 + 5592);
        v194 = *(v0 + 2680);
        *(v0 + 232) = *(v0 + 2664);
        *(v0 + 248) = v194;
        v195 = *(v0 + 2712);
        *(v0 + 264) = *(v0 + 2696);
        *(v0 + 280) = v195;
        v196 = *(v0 + 2616);
        *(v0 + 168) = *v297;
        *(v0 + 184) = v196;
        v197 = *(v0 + 2648);
        *(v0 + 200) = *(v0 + 2632);
        *(v0 + 216) = v197;
        *(v0 + 296) = v298;
        *(v0 + 304) = v300;
        *(v0 + 312) = 256;
        sub_1B6AA099C((v0 + 168), &unk_1F2E73E30, v193, v192, v191);
        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v198 = *(v0 + 5568);
        v199 = sub_1B6AB8F90();
        __swift_project_value_buffer(v199, qword_1EDBCFD80);

        v200 = sub_1B6AB8F80();
        v201 = sub_1B6AB98D0();

        if (os_log_type_enabled(v200, v201))
        {
          v87 = v0 + 1232;
          v202 = *(v0 + 5568);
          v203 = *(v0 + 5560);
          v204 = swift_slowAlloc();
          v205 = swift_slowAlloc();
          *&v301 = v205;
          *v204 = 136315138;
          *(v204 + 4) = sub_1B698F63C(v203, v202, &v301);
          _os_log_impl(&dword_1B697C000, v200, v201, "Session data push for %s, reason: Same version this session", v204, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v205);
          MEMORY[0x1B8C99550](v205, -1, -1);
          MEMORY[0x1B8C99550](v204, -1, -1);

          sub_1B6A0AFE8(v0 + 5024);
          v206 = *(v0 + 4200);
          *(v0 + 4520) = *(v0 + 4184);
          *(v0 + 4536) = v206;
          *(v0 + 4545) = *(v0 + 4209);
          v207 = *(v0 + 4136);
          *(v0 + 4456) = *v292;
          *(v0 + 4472) = v207;
          v208 = *(v0 + 4168);
          *(v0 + 4488) = *(v0 + 4152);
          *(v0 + 4504) = v208;
          sub_1B6A0B878(v0 + 4456);
          v209 = *(v0 + 2680);
          *(v0 + 1296) = *(v0 + 2664);
          *(v0 + 1312) = v209;
          v210 = *(v0 + 2712);
          *(v0 + 1328) = *(v0 + 2696);
          *(v0 + 1344) = v210;
          v211 = *(v0 + 2616);
          *(v0 + 1232) = *v297;
          *(v0 + 1248) = v211;
          v212 = *(v0 + 2648);
          *(v0 + 1264) = *(v0 + 2632);
          *(v0 + 1280) = v212;
          *(v0 + 1360) = v298;
          *(v0 + 1368) = v300;
          *(v0 + 1376) = 256;
        }

        else
        {
          v87 = v0 + 1384;

          sub_1B6A0AFE8(v0 + 5024);
          v279 = *(v0 + 4200);
          *(v0 + 3288) = *(v0 + 4184);
          *(v0 + 3304) = v279;
          *(v0 + 3313) = *(v0 + 4209);
          v280 = *(v0 + 4136);
          *(v0 + 3224) = *v292;
          *(v0 + 3240) = v280;
          v281 = *(v0 + 4168);
          *(v0 + 3256) = *(v0 + 4152);
          *(v0 + 3272) = v281;
          sub_1B6A0B878(v0 + 3224);
          v282 = *(v0 + 2680);
          *(v0 + 1448) = *(v0 + 2664);
          *(v0 + 1464) = v282;
          v283 = *(v0 + 2712);
          *(v0 + 1480) = *(v0 + 2696);
          *(v0 + 1496) = v283;
          v284 = *(v0 + 2616);
          *(v0 + 1384) = *v297;
          *(v0 + 1400) = v284;
          v285 = *(v0 + 2648);
          *(v0 + 1416) = *(v0 + 2632);
          *(v0 + 1432) = v285;
          *(v0 + 1512) = v298;
          *(v0 + 1520) = v300;
          *(v0 + 1528) = 256;
        }

        goto LABEL_27;
      }

      sub_1B6A0A674(v0 + 5304, &qword_1EB95ADF0);
      sub_1B6A0A674(v0 + 4984, &qword_1EB95ADF0);
      sub_1B6A0AFE8(v0 + 5144);
    }

    else
    {
      sub_1B6A0A674(v0 + 5304, &qword_1EB95ADF0);
      sub_1B6A0A674(v0 + 4984, &qword_1EB95ADF0);
      if (!*(v0 + 4744))
      {
        sub_1B6A0A674(v0 + 4680, &qword_1EB95ADF0);
        goto LABEL_53;
      }
    }

    sub_1B6A0BDA4(v0 + 4680, sub_1B6A0B0A4);
    goto LABEL_60;
  }

  v69 = *(v0 + 5728);
  (*(*(v0 + 5680) + 8))(*(v0 + 5688), *(v0 + 5672));

  v70 = *(v0 + 5688);
  v71 = *(v0 + 5664);
  v72 = *(v0 + 5648);
  v73 = *(v0 + 5624);

  v74 = *(v0 + 8);

  return v74();
}

uint64_t sub_1B6A0068C()
{
  v1 = sub_1B6ABA0C0();
  v2 = v0[716];
  v3 = v0[711];
  v4 = v0[710];
  v5 = v0[709];
  if (v1)
  {
    (*(v4 + 8))(v0[711], v0[709]);
  }

  else
  {
    swift_allocError();

    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[711];
  v7 = v0[708];
  v8 = v0[706];
  v9 = v0[703];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B6A007B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 1928) = v26;
  *(v8 + 1920) = v25;
  *(v8 + 1904) = v24;
  *(v8 + 1888) = v23;
  *(v8 + 1880) = a8;
  *(v8 + 1872) = a7;
  *(v8 + 1864) = a6;
  *(v8 + 1856) = a5;
  *(v8 + 1848) = a4;
  v9 = type metadata accessor for SessionManager.SessionState(0);
  *(v8 + 1936) = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  *(v8 + 1944) = swift_task_alloc();
  v11 = sub_1B6AB90F0();
  *(v8 + 1952) = v11;
  v12 = *(v11 - 8);
  *(v8 + 1960) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 1968) = swift_task_alloc();
  sub_1B6A0ADCC(0, &qword_1EB95B4C0, MEMORY[0x1E69E88B8]);
  *(v8 + 1976) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 1984) = swift_task_alloc();
  sub_1B6A0ADCC(0, &qword_1EB95B4D8, MEMORY[0x1E69E88A8]);
  *(v8 + 1992) = v16;
  v17 = *(v16 - 8);
  *(v8 + 2000) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 2008) = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  *(v8 + 2016) = swift_initStaticObject();
  *(v8 + 2024) = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v20 = sub_1B6AB95E0();
  *(v8 + 2032) = v20;
  *(v8 + 2040) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1B6A00A00, v20, v19);
}

uint64_t sub_1B6A00A00()
{
  v21 = v0;
  v1 = *(v0 + 1848);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 2048) = Strong;
  if (Strong)
  {
    v3 = *(v0 + 2008);
    v4 = *(v0 + 1984);
    v5 = *(v0 + 1976);
    v6 = *(v0 + 1872);
    v7 = *(v0 + 1864);
    v20 = *(*(v0 + 1856) + 32);
    v7(&v20);
    sub_1B6A0AE90(&qword_1EB95B4E0, &qword_1EB95B4C0, MEMORY[0x1E69E88B8]);
    sub_1B6AB9790();
    *(v0 + 2056) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    *(v0 + 2064) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
    *(v0 + 2072) = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
    swift_beginAccess();
    *(v0 + 372) = *MEMORY[0x1E69E8020];
    v8 = *(v0 + 2024);
    v9 = *(v0 + 2016);
    sub_1B6A0AE90(&qword_1EB95B4E8, &qword_1EB95B4D8, MEMORY[0x1E69E88A8]);
    v10 = *(MEMORY[0x1E69E85B0] + 4);
    v11 = swift_task_alloc();
    *(v0 + 2080) = v11;
    *v11 = v0;
    v11[1] = sub_1B6A00C60;
    v12 = *(v0 + 2008);
    v13 = *(v0 + 1992);

    return MEMORY[0x1EEE6D8D0](v0 + 1800, v9, v8);
  }

  else
  {
    v14 = *(v0 + 2008);
    v15 = *(v0 + 1984);
    v16 = *(v0 + 1968);
    v17 = *(v0 + 1944);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1B6A00C60()
{
  v2 = *v1;
  v3 = *(*v1 + 2080);
  v4 = *v1;

  v5 = *(v2 + 2040);
  v6 = *(v2 + 2032);
  if (v0)
  {
    v7 = sub_1B6A02308;
  }

  else
  {
    v7 = sub_1B6A00D9C;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1B6A00D9C()
{
  v199 = v0;
  v1 = *(v0 + 1808);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = *(v0 + 1800);
    v3 = *(v0 + 1896);
    v4 = *(v0 + 1888);
    *(v0 + 1816) = isUniquelyReferenced_nonNull_native;
    *(v0 + 1824) = v1;
    sub_1B6A0B6F8(0, &qword_1EB95AED0, sub_1B69E8B54);
    sub_1B6A0AED4(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v5 = sub_1B6ABA330();
    v7 = v6;

    if (!v3)
    {
      v48 = *(v0 + 2048);
      v49 = *(v0 + 1928);
      v50 = *(v0 + 1920);
      v51 = *(v0 + 1912);
      v52 = *(v0 + 1888);
      *(v0 + 1048) = *(v0 + 1880);
      *(v0 + 1056) = v52;
      *(v0 + 1064) = isUniquelyReferenced_nonNull_native;
      *(v0 + 1072) = v1;
      *(v0 + 1080) = v5;
      *(v0 + 1088) = v7;
      *(v0 + 1096) = 0;
      sub_1B6AA1014((v0 + 1048), &unk_1F2E73E58, v51, v50, v49);
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_17;
      }

      goto LABEL_66;
    }

    v195 = v5;
    v8 = *(v0 + 372);
    v9 = *(v0 + 2048);
    v10 = *(v0 + 1968);
    v11 = *(v0 + 1960);
    v12 = *(v0 + 1952);
    v13 = *(v0 + 1904);
    (*(v0 + 1896))(v0 + 1816);
    v14 = *(*(v9 + 48) + OBJC_IVAR___AAAccessQueue_queue);
    *v10 = v14;
    (*(v11 + 104))(v10, v8, v12);
    v15 = v14;
    LOBYTE(v14) = sub_1B6AB9110();
    v16 = *(v11 + 8);
    v5 = v11 + 8;
    v16(v10, v12);
    if ((v14 & 1) == 0)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      swift_once();
LABEL_17:
      v53 = *(v0 + 1888);
      v54 = sub_1B6AB8F90();
      __swift_project_value_buffer(v54, qword_1EDBCFD80);

      v55 = sub_1B6AB8F80();
      v56 = sub_1B6AB98D0();

      v57 = os_log_type_enabled(v55, v56);
      v58 = *(v0 + 1888);
      v59 = *(v0 + 1880);
      if (v57)
      {
        v197 = v7;
        v60 = v5;
        v61 = isUniquelyReferenced_nonNull_native;
        v62 = swift_slowAlloc();
        v63 = v1;
        v64 = swift_slowAlloc();
        v198 = v64;
        *v62 = 136315138;
        *(v62 + 4) = sub_1B698F63C(v59, v58, &v198);
        _os_log_impl(&dword_1B697C000, v55, v56, "Immediate session data push for %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v64);
        MEMORY[0x1B8C99550](v64, -1, -1);
        MEMORY[0x1B8C99550](v62, -1, -1);

        *(v0 + 1160) = v59;
        *(v0 + 1168) = v58;
        *(v0 + 1176) = v61;
        *(v0 + 1184) = v63;
        *(v0 + 1192) = v60;
        *(v0 + 1200) = v197;
        *(v0 + 1208) = 0;
        v65 = v0 + 1160;
      }

      else
      {

        *(v0 + 432) = v59;
        *(v0 + 440) = v58;
        *(v0 + 448) = isUniquelyReferenced_nonNull_native;
        *(v0 + 456) = v1;
        *(v0 + 464) = v5;
        *(v0 + 472) = v7;
        *(v0 + 480) = 0;
        v65 = v0 + 432;
      }

LABEL_78:
      sub_1B6A0BDA4(v65, sub_1B6A0AF30);
      v175 = *(v0 + 2024);
      v176 = *(v0 + 2016);
      sub_1B6A0AE90(&qword_1EB95B4E8, &qword_1EB95B4D8, MEMORY[0x1E69E88A8]);
      v177 = *(MEMORY[0x1E69E85B0] + 4);
      v178 = swift_task_alloc();
      *(v0 + 2080) = v178;
      *v178 = v0;
      v178[1] = sub_1B6A00C60;
      v179 = *(v0 + 2008);
      v180 = *(v0 + 1992);
      v142 = v0 + 1800;
      v143 = v176;
      v144 = v175;

      return MEMORY[0x1EEE6D8D0](v142, v143, v144);
    }

    v17 = *(v0 + 1936);
    sub_1B6980478(*(v0 + 2048) + *(v0 + 2056), *(v0 + 1944), type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v196 = v7;
    if (EnumCaseMultiPayload)
    {
      v189 = isUniquelyReferenced_nonNull_native;
      v192 = v1;
      v19 = (v0 + 1472);
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(*(v0 + 1944), type metadata accessor for SessionManager.SessionState);
      }

      v7 = *(v0 + 2064);
      v20 = *(v0 + 2048);
      v182 = *(v0 + 1920);
      v184 = *(v0 + 1928);
      v181 = *(v0 + 1912);
      v21 = *(v0 + 1888);
      v22 = *(v0 + 1880);
      v186 = v22;
      sub_1B69E1028(v0 + 1592, v0 + 112);
      v23 = swift_allocObject();
      swift_weakInit();
      *(v0 + 488) = v22;
      *(v0 + 496) = v21;
      *(v0 + 504) = v189;
      *(v0 + 512) = v192;
      *(v0 + 520) = v195;
      *(v0 + 528) = v196;
      *(v0 + 536) = 0;
      v5 = swift_allocObject();
      *(v5 + 16) = v23;
      v24 = *(v0 + 504);
      *(v5 + 24) = *(v0 + 488);
      *(v5 + 40) = v24;
      *(v5 + 56) = *(v0 + 520);
      *(v5 + 72) = *(v0 + 536);
      *(v5 + 80) = v181;
      *(v5 + 88) = v182;
      *(v5 + 96) = v184;
      v1 = swift_allocObject();
      *(v1 + 16) = sub_1B6A0AF24;
      *(v1 + 24) = v5;
      v25 = *(v0 + 128);
      *v19 = *(v0 + 112);
      *(v0 + 1488) = v25;
      *(v0 + 1504) = *(v0 + 144);
      swift_beginAccess();
      *(v0 + 264) = sub_1B69BDB14;
      *(v0 + 272) = v1;
      v26 = *(v0 + 1488);
      *(v0 + 280) = *v19;
      *(v0 + 296) = v26;
      *(v0 + 312) = *(v0 + 1504);
      sub_1B6980478(v0 + 488, v0 + 768, sub_1B6A0AF30);

      v27 = *(v20 + v7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *(v20 + v7);
      *(v0 + 1832) = v28;
      *(v20 + v7) = 0x8000000000000000;
      v29 = sub_1B6993940(v186, v21);
      v31 = *(v28 + 16);
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (!v33)
      {
        v35 = v30;
        if (*(v28 + 24) >= v34)
        {
          v40 = v192;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v19 = v29;
            sub_1B69DEDC0();
            v29 = v19;
          }
        }

        else
        {
          v36 = *(v0 + 1888);
          v37 = *(v0 + 1880);
          sub_1B69DBE84(v34, isUniquelyReferenced_nonNull_native);
          v38 = *(v0 + 1832);
          v29 = sub_1B6993940(v37, v36);
          v40 = v192;
          if ((v35 & 1) != (v39 & 1))
          {
LABEL_10:

            return sub_1B6ABA190();
          }
        }

        v72 = *(v0 + 1832);
        if (v35)
        {
          sub_1B6A0B03C(v0 + 264, v72[7] + 56 * v29, sub_1B6A0AAAC);
LABEL_29:
          *(*(v0 + 2048) + *(v0 + 2064)) = v72;
          swift_endAccess();
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v83 = *(v0 + 1888);
          v84 = sub_1B6AB8F90();
          __swift_project_value_buffer(v84, qword_1EDBCFD80);

          v85 = sub_1B6AB8F80();
          v86 = sub_1B6AB98D0();

          v87 = os_log_type_enabled(v85, v86);
          v88 = *(v0 + 1888);
          v89 = *(v0 + 1880);
          if (v87)
          {
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            v198 = v91;
            *v90 = 136315138;
            *(v90 + 4) = sub_1B698F63C(v89, v88, &v198);
            _os_log_impl(&dword_1B697C000, v85, v86, "Deferred session data push for %s, reason: No active session", v90, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v91);
            MEMORY[0x1B8C99550](v91, -1, -1);
            MEMORY[0x1B8C99550](v90, -1, -1);

            sub_1B6A0AFE8(v0 + 1592);

            *(v0 + 936) = v89;
            *(v0 + 944) = v88;
            *(v0 + 952) = v189;
            *(v0 + 960) = v40;
            *(v0 + 968) = v195;
            *(v0 + 976) = v196;
            *(v0 + 984) = 0;
            v65 = v0 + 936;
          }

          else
          {

            sub_1B6A0AFE8(v0 + 1592);

            *(v0 + 880) = v89;
            *(v0 + 888) = v88;
            *(v0 + 896) = v189;
            *(v0 + 904) = v40;
            *(v0 + 912) = v195;
            *(v0 + 920) = v196;
            *(v0 + 928) = 0;
            v65 = v0 + 880;
          }

          goto LABEL_78;
        }

        v73 = *(v0 + 1888);
        v74 = *(v0 + 1880);
        v72[(v29 >> 6) + 8] |= 1 << v29;
        v75 = (v72[6] + 16 * v29);
        *v75 = v74;
        v75[1] = v73;
        v76 = v72[7] + 56 * v29;
        v77 = *(v0 + 264);
        v78 = *(v0 + 280);
        v79 = *(v0 + 296);
        *(v76 + 48) = *(v0 + 312);
        *(v76 + 16) = v78;
        *(v76 + 32) = v79;
        *v76 = v77;
        v80 = v72[2];
        v33 = __OFADD__(v80, 1);
        v81 = v80 + 1;
        if (!v33)
        {
          v82 = *(v0 + 1888);
          v72[2] = v81;

          goto LABEL_29;
        }

        __break(1u);
        goto LABEL_68;
      }

      goto LABEL_65;
    }

    v66 = *(v0 + 2072);
    v67 = *(v0 + 2048);
    v68 = **(v0 + 1944);

    swift_beginAccess();
    v69 = *(v67 + v66);
    if (*(v69 + 16) && (v70 = sub_1B6993940(*(v0 + 1880), *(v0 + 1888)), (v71 & 1) != 0))
    {
      sub_1B69E1028(*(v69 + 56) + 40 * v70, v0 + 1432);
    }

    else
    {
      *(v0 + 1464) = 0;
      *(v0 + 1432) = 0u;
      *(v0 + 1448) = 0u;
    }

    swift_endAccess();
    v92 = *(v0 + 1456);
    sub_1B6A0A674(v0 + 1432, &qword_1EB95ADF0);
    v93 = *(v0 + 2072);
    v94 = *(v0 + 2048);
    if (!v92)
    {
      v190 = *(v0 + 1920);
      v193 = *(v0 + 1928);
      v100 = *(v0 + 1912);
      v101 = *(v0 + 1888);
      v102 = v1;
      v103 = *(v0 + 1880);
      swift_beginAccess();
      sub_1B69E1028(v0 + 1592, v0 + 1312);

      v104 = *(v94 + v93);
      v105 = swift_isUniquelyReferenced_nonNull_native();
      v198 = *(v94 + v93);
      *(v94 + v93) = 0x8000000000000000;
      sub_1B69E7060(v0 + 1312, v103, v101, v105);

      *(v94 + v93) = v198;
      swift_endAccess();
      *(v0 + 320) = v103;
      *(v0 + 328) = v101;
      v19 = v102;
      v1 = isUniquelyReferenced_nonNull_native;
      *(v0 + 336) = isUniquelyReferenced_nonNull_native;
      *(v0 + 344) = v102;
      *(v0 + 352) = v195;
      *(v0 + 360) = v7;
      *(v0 + 368) = 0;
      sub_1B6AA1014((v0 + 320), &unk_1F2E73E80, v100, v190, v193);
      if (qword_1EDBCAA70 == -1)
      {
        goto LABEL_45;
      }

      goto LABEL_69;
    }

    swift_beginAccess();
    v95 = *(v94 + v93);
    if (*(v95 + 16) && (v96 = sub_1B6993940(*(v0 + 1880), *(v0 + 1888)), (v97 & 1) != 0))
    {
      sub_1B69E1028(*(v95 + 56) + 40 * v96, v0 + 1272);
    }

    else
    {
      *(v0 + 1304) = 0;
      *(v0 + 1272) = 0u;
      *(v0 + 1288) = 0u;
    }

    swift_endAccess();
    sub_1B69E1028(v0 + 1592, v0 + 1352);
    sub_1B6A0AB30(v0 + 1272, v0 + 16);
    sub_1B6A0AB30(v0 + 1352, v0 + 56);
    if (*(v0 + 40))
    {
      sub_1B6A0AB30(v0 + 16, v0 + 1512);
      if (*(v0 + 80))
      {
        v98 = *(v0 + 72);
        *(v0 + 1552) = *(v0 + 56);
        *(v0 + 1568) = v98;
        *(v0 + 1584) = *(v0 + 88);
        v99 = MEMORY[0x1B8C98450](v0 + 1512, v0 + 1552);
        sub_1B6A0AFE8(v0 + 1552);
        sub_1B6A0A674(v0 + 1352, &qword_1EB95ADF0);
        sub_1B6A0A674(v0 + 1272, &qword_1EB95ADF0);
        sub_1B6A0AFE8(v0 + 1512);
        sub_1B6A0A674(v0 + 16, &qword_1EB95ADF0);
        if ((v99 & 1) == 0)
        {
LABEL_56:
          v19 = (v0 + 1392);
          v130 = v1;
          v1 = *(v0 + 2048);
          v187 = *(v0 + 1928);
          v188 = *(v0 + 2064);
          v183 = *(v0 + 1912);
          v185 = *(v0 + 1920);
          v131 = *(v0 + 1888);
          v132 = *(v0 + 1880);
          sub_1B69E1028(v0 + 1592, v0 + 224);
          v133 = swift_allocObject();
          swift_weakInit();
          *(v0 + 1104) = v132;
          *(v0 + 1112) = v131;
          v191 = isUniquelyReferenced_nonNull_native;
          v194 = v130;
          *(v0 + 1120) = isUniquelyReferenced_nonNull_native;
          *(v0 + 1128) = v130;
          *(v0 + 1136) = v195;
          *(v0 + 1144) = v7;
          *(v0 + 1152) = 0;
          v134 = swift_allocObject();
          *(v134 + 16) = v133;
          v135 = *(v0 + 1120);
          *(v134 + 24) = *(v0 + 1104);
          *(v134 + 40) = v135;
          *(v134 + 56) = *(v0 + 1136);
          *(v134 + 72) = *(v0 + 1152);
          *(v134 + 80) = v183;
          *(v134 + 88) = v185;
          *(v134 + 96) = v187;
          v136 = swift_allocObject();
          *(v136 + 16) = sub_1B6A0B170;
          *(v136 + 24) = v134;
          v137 = *(v0 + 240);
          *(v0 + 1392) = *(v0 + 224);
          *(v0 + 1408) = v137;
          *(v0 + 1424) = *(v0 + 256);
          swift_beginAccess();
          *(v0 + 152) = sub_1B6A0BE38;
          *(v0 + 160) = v136;
          v138 = *(v0 + 1408);
          *(v0 + 168) = *(v0 + 1392);
          *(v0 + 184) = v138;
          *(v0 + 200) = *(v0 + 1424);

          sub_1B6980478(v0 + 1104, v0 + 824, sub_1B6A0AF30);
          v139 = *(v1 + v188);
          v140 = swift_isUniquelyReferenced_nonNull_native();
          v141 = *(v1 + v188);
          *(v0 + 1840) = v141;
          *(v1 + v188) = 0x8000000000000000;
          v142 = sub_1B6993940(v132, v131);
          v145 = *(v141 + 16);
          v146 = (v143 & 1) == 0;
          v33 = __OFADD__(v145, v146);
          v147 = v145 + v146;
          if (v33)
          {
LABEL_68:
            __break(1u);
LABEL_69:
            swift_once();
LABEL_45:
            v106 = *(v0 + 1888);
            v107 = sub_1B6AB8F90();
            __swift_project_value_buffer(v107, qword_1EDBCFD80);

            v108 = sub_1B6AB8F80();
            v109 = sub_1B6AB98D0();

            v110 = os_log_type_enabled(v108, v109);
            v111 = *(v0 + 1888);
            v112 = *(v0 + 1880);
            if (v110)
            {
              v113 = swift_slowAlloc();
              v114 = swift_slowAlloc();
              v198 = v114;
              *v113 = 136315138;
              *(v113 + 4) = sub_1B698F63C(v112, v111, &v198);
              _os_log_impl(&dword_1B697C000, v108, v109, "Pinned session data push for %s, reason: First value this session", v113, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v114);
              MEMORY[0x1B8C99550](v114, -1, -1);
              MEMORY[0x1B8C99550](v113, -1, -1);

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 376) = v112;
              *(v0 + 384) = v111;
              *(v0 + 392) = v1;
              *(v0 + 400) = v19;
              *(v0 + 408) = v195;
              *(v0 + 416) = v196;
              *(v0 + 424) = 0;
              v65 = v0 + 376;
            }

            else
            {

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 1216) = v112;
              *(v0 + 1224) = v111;
              *(v0 + 1232) = v1;
              *(v0 + 1240) = v19;
              *(v0 + 1248) = v195;
              *(v0 + 1256) = v196;
              *(v0 + 1264) = 0;
              v65 = v0 + 1216;
            }

            goto LABEL_78;
          }

          v148 = v143;
          v149 = (v0 + 1840);
          if (*(v141 + 24) >= v147)
          {
            v153 = v194;
            if (!v140)
            {
              v155 = v142;
              sub_1B69DEDC0();
              v142 = v155;
              v154 = *v149;
              if (v148)
              {
                goto LABEL_62;
              }

              goto LABEL_71;
            }
          }

          else
          {
            v150 = *(v0 + 1888);
            v151 = *(v0 + 1880);
            sub_1B69DBE84(v147, v140);
            v152 = *(v0 + 1840);
            v142 = sub_1B6993940(v151, v150);
            v153 = v194;
            if ((v148 & 1) != (v143 & 1))
            {
              goto LABEL_10;
            }
          }

          v154 = *v149;
          if (v148)
          {
LABEL_62:
            sub_1B6A0B03C(v0 + 152, v154[7] + 56 * v142, sub_1B6A0AAAC);
LABEL_73:
            *(*(v0 + 2048) + *(v0 + 2064)) = v154;
            swift_endAccess();
            if (qword_1EDBCAA70 != -1)
            {
              swift_once();
            }

            v166 = *(v0 + 1888);
            v167 = sub_1B6AB8F90();
            __swift_project_value_buffer(v167, qword_1EDBCFD80);

            v168 = sub_1B6AB8F80();
            v169 = sub_1B6AB98D0();

            v170 = os_log_type_enabled(v168, v169);
            v171 = *(v0 + 1888);
            v172 = *(v0 + 1880);
            if (v170)
            {
              v173 = swift_slowAlloc();
              v174 = swift_slowAlloc();
              v198 = v174;
              *v173 = 136315138;
              *(v173 + 4) = sub_1B698F63C(v172, v171, &v198);
              _os_log_impl(&dword_1B697C000, v168, v169, "Deferred session data push for %s, reason: Mid-session change", v173, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v174);
              MEMORY[0x1B8C99550](v174, -1, -1);
              MEMORY[0x1B8C99550](v173, -1, -1);

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 656) = v172;
              *(v0 + 664) = v171;
              *(v0 + 672) = v191;
              *(v0 + 680) = v153;
              *(v0 + 688) = v195;
              *(v0 + 696) = v196;
              *(v0 + 704) = 0;
              v65 = v0 + 656;
            }

            else
            {

              sub_1B6A0AFE8(v0 + 1592);

              *(v0 + 712) = v172;
              *(v0 + 720) = v171;
              *(v0 + 728) = v191;
              *(v0 + 736) = v153;
              *(v0 + 744) = v195;
              *(v0 + 752) = v196;
              *(v0 + 760) = 0;
              v65 = v0 + 712;
            }

            goto LABEL_78;
          }

LABEL_71:
          v156 = *(v0 + 1888);
          v157 = *(v0 + 1880);
          v154[(v142 >> 6) + 8] |= 1 << v142;
          v158 = (v154[6] + 16 * v142);
          *v158 = v157;
          v158[1] = v156;
          v159 = v154[7] + 56 * v142;
          v160 = *(v0 + 152);
          v161 = *(v0 + 168);
          v162 = *(v0 + 184);
          *(v159 + 48) = *(v0 + 200);
          *(v159 + 16) = v161;
          *(v159 + 32) = v162;
          *v159 = v160;
          v163 = v154[2];
          v33 = __OFADD__(v163, 1);
          v164 = v163 + 1;
          if (v33)
          {
            __break(1u);
            return MEMORY[0x1EEE6D8D0](v142, v143, v144);
          }

          v165 = *(v0 + 1888);
          v154[2] = v164;

          goto LABEL_73;
        }

LABEL_49:
        v115 = *(v0 + 2048);
        v116 = *(v0 + 1928);
        v117 = *(v0 + 1920);
        v118 = *(v0 + 1912);
        v119 = *(v0 + 1888);
        *(v0 + 992) = *(v0 + 1880);
        *(v0 + 1000) = v119;
        *(v0 + 1008) = isUniquelyReferenced_nonNull_native;
        *(v0 + 1016) = v1;
        *(v0 + 1024) = v195;
        *(v0 + 1032) = v7;
        *(v0 + 1040) = 0;
        sub_1B6AA1014((v0 + 992), &unk_1F2E73EA8, v118, v117, v116);
        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v120 = *(v0 + 1888);
        v121 = sub_1B6AB8F90();
        __swift_project_value_buffer(v121, qword_1EDBCFD80);

        v122 = sub_1B6AB8F80();
        v123 = sub_1B6AB98D0();

        v124 = os_log_type_enabled(v122, v123);
        v125 = *(v0 + 1888);
        v126 = *(v0 + 1880);
        if (v124)
        {
          v127 = swift_slowAlloc();
          v128 = isUniquelyReferenced_nonNull_native;
          v129 = swift_slowAlloc();
          v198 = v129;
          *v127 = 136315138;
          *(v127 + 4) = sub_1B698F63C(v126, v125, &v198);
          _os_log_impl(&dword_1B697C000, v122, v123, "Session data push for %s, reason: Same version this session", v127, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v129);
          MEMORY[0x1B8C99550](v129, -1, -1);
          MEMORY[0x1B8C99550](v127, -1, -1);

          sub_1B6A0AFE8(v0 + 1592);

          *(v0 + 544) = v126;
          *(v0 + 552) = v125;
          *(v0 + 560) = v128;
          *(v0 + 568) = v1;
          *(v0 + 576) = v195;
          *(v0 + 584) = v7;
          *(v0 + 592) = 0;
          v65 = v0 + 544;
        }

        else
        {

          sub_1B6A0AFE8(v0 + 1592);

          *(v0 + 600) = v126;
          *(v0 + 608) = v125;
          *(v0 + 616) = isUniquelyReferenced_nonNull_native;
          *(v0 + 624) = v1;
          *(v0 + 632) = v195;
          *(v0 + 640) = v7;
          *(v0 + 648) = 0;
          v65 = v0 + 600;
        }

        goto LABEL_78;
      }

      sub_1B6A0A674(v0 + 1352, &qword_1EB95ADF0);
      sub_1B6A0A674(v0 + 1272, &qword_1EB95ADF0);
      sub_1B6A0AFE8(v0 + 1512);
    }

    else
    {
      sub_1B6A0A674(v0 + 1352, &qword_1EB95ADF0);
      sub_1B6A0A674(v0 + 1272, &qword_1EB95ADF0);
      if (!*(v0 + 80))
      {
        sub_1B6A0A674(v0 + 16, &qword_1EB95ADF0);
        goto LABEL_49;
      }
    }

    sub_1B6A0BDA4(v0 + 16, sub_1B6A0B0A4);
    goto LABEL_56;
  }

  v42 = *(v0 + 2048);
  (*(*(v0 + 2000) + 8))(*(v0 + 2008), *(v0 + 1992));

  v43 = *(v0 + 2008);
  v44 = *(v0 + 1984);
  v45 = *(v0 + 1968);
  v46 = *(v0 + 1944);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_1B6A02308()
{
  v1 = sub_1B6ABA0C0();
  v2 = v0[256];
  v3 = v0[251];
  v4 = v0[250];
  v5 = v0[249];
  if (v1)
  {
    (*(v4 + 8))(v0[251], v0[249]);
  }

  else
  {
    swift_allocError();

    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[251];
  v7 = v0[248];
  v8 = v0[246];
  v9 = v0[243];

  v10 = v0[1];

  return v10();
}

uint64_t sub_1B6A0242C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1B6980478(a2, &v54, sub_1B69A1808);
  v6 = v54;
  __swift_destroy_boxed_opaque_existential_1(v55);
  sub_1B6980478(a2, &v54, sub_1B69A1808);

  sub_1B697EFC4();
  v48 = v7;
  v8 = swift_dynamicCast();
  if ((v8 & 1) == 0)
  {
    sub_1B6980478(a2, &v54, sub_1B69A1808);

    sub_1B69979CC(v55, &v51);
    v12 = &v51;
    v13 = v6;
    return sub_1B69E1654(v12, v13, *(&v6 + 1));
  }

  v9 = *(a3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator);
  if (*(v9 + 16) == 1)
  {
    v10 = *(v9 + 24);
    v8 = sub_1B6A249CC(0x6E6F697373655324, 0xEC00000061746144, v6, *(&v6 + 1));
    if (v8)
    {
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v56 = sub_1B69C0EB0(v51, sub_1B6A0A72C);

  v14 = *a1;
  if (!*(*a1 + 16) || (v15 = sub_1B6993940(v6, *(&v6 + 1)), (v16 & 1) == 0) || (sub_1B698FE74(*(v14 + 56) + 32 * v15, &v54), (swift_dynamicCast() & 1) == 0))
  {
    *(&v55[0] + 1) = v48;
    *&v54 = v56;
    v12 = &v54;
    v13 = v6;
    return sub_1B69E1654(v12, v13, *(&v6 + 1));
  }

  v17 = 0;
  v18 = v56 + 64;
  v19 = 1 << *(v56 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v51;
  v22 = v20 & *(v56 + 64);
  v23 = (v19 + 63) >> 6;
  v49 = v56 + 64;
  while (v22)
  {
    v25 = v17;
LABEL_23:
    v28 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v29 = v28 | (v25 << 6);
    v30 = (*(v56 + 48) + 16 * v29);
    v32 = *v30;
    v31 = v30[1];
    sub_1B698FE74(*(v56 + 56) + 32 * v29, v50);
    *&v51 = v32;
    *(&v51 + 1) = v31;
    sub_1B69979CC(v50, &v52);

    v27 = v25;
LABEL_24:
    v54 = v51;
    v55[0] = v52;
    v55[1] = v53;
    v33 = *(&v51 + 1);
    if (!*(&v51 + 1))
    {

      *(&v55[0] + 1) = v48;
      *&v54 = v21;
      return sub_1B69E1654(&v54, v6, *(&v6 + 1));
    }

    v34 = v54;
    sub_1B69979CC(v55, &v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50[0] = v21;
    v37 = sub_1B6993940(v34, v33);
    v38 = v21[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_41;
    }

    v41 = v36;
    if (v21[3] >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v36)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_1B69DDC84();
        if (v41)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_1B69976F8(v40, isUniquelyReferenced_nonNull_native);
      v42 = sub_1B6993940(v34, v33);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_43;
      }

      v37 = v42;
      if (v41)
      {
LABEL_12:

        v21 = *&v50[0];
        v24 = (*(*&v50[0] + 56) + 32 * v37);
        __swift_destroy_boxed_opaque_existential_1(v24);
        sub_1B69979CC(&v51, v24);
        goto LABEL_13;
      }
    }

    v21 = *&v50[0];
    *(*&v50[0] + 8 * (v37 >> 6) + 64) |= 1 << v37;
    v44 = (v21[6] + 16 * v37);
    *v44 = v34;
    v44[1] = v33;
    sub_1B69979CC(&v51, (v21[7] + 32 * v37));
    v45 = v21[2];
    v46 = __OFADD__(v45, 1);
    v47 = v45 + 1;
    if (v46)
    {
      goto LABEL_42;
    }

    v21[2] = v47;
LABEL_13:
    v17 = v27;
    v18 = v49;
  }

  if (v23 <= v17 + 1)
  {
    v26 = v17 + 1;
  }

  else
  {
    v26 = v23;
  }

  v27 = v26 - 1;
  while (1)
  {
    v25 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v25 >= v23)
    {
      v22 = 0;
      v52 = 0u;
      v53 = 0u;
      v51 = 0u;
      goto LABEL_24;
    }

    v22 = *(v18 + 8 * v25);
    ++v17;
    if (v22)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_1B6ABA190();
  __break(1u);
  return result;
}

uint64_t SessionManager.flush(callbackQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = v3[6];
  v7 = v3[7];
  v9 = swift_allocObject();
  v10 = v3[3];
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = a1;
  v11[4] = a2;
  v11[5] = a3;

  v12 = a1;
  sub_1B698BF94(a2);
  sub_1B69877A4(v8, sub_1B69A4190, v11);
}

uint64_t SessionManager.start(for:identifier:startDate:timestampJitter:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v23 = a2;
  v24 = a3;
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = a1[1];
  v16 = *(v6 + 56);
  v25 = *(v6 + 48);
  v26 = v16;
  (*(v11 + 16))(v13, a4, v10);
  v17 = (*(v11 + 80) + 73) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = v6;
  *(v18 + 24) = v15;
  v19 = v23;
  v20 = v24;
  *(v18 + 32) = v14;
  *(v18 + 40) = v19;
  *(v18 + 48) = v20;
  *(v18 + 56) = a5;
  *(v18 + 64) = 0;
  *(v18 + 72) = 0;
  (*(v11 + 32))(v18 + v17, v13, v10);

  sub_1B6992E2C(v15, v14);
  v21 = a5;

  sub_1B69877A4(v25, sub_1B6A0BE28, v18);
}

uint64_t sub_1B6A02B70(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = (v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind);
  v9 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind);
  v10 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind + 8);
  if (v10 == 3)
  {
    *v8 = v6;
    v8[1] = v7;
    sub_1B6992E2C(v6, v7);
    sub_1B6A0A1D4(v9, 3uLL);
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v11 = sub_1B6AB8F90();
    __swift_project_value_buffer(v11, qword_1EDBCFD80);

    sub_1B6992E2C(v6, v7);
    v12 = sub_1B6AB8F80();
    v13 = sub_1B6AB98D0();

    sub_1B69C2E8C(v6, v7);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38[0] = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_1B698F63C(a2, a3, v38);
      *(v14 + 12) = 2080;
      v16 = 0x7274656D656C6574;
      v17 = 0xE900000000000079;
      v18 = 0xE800000000000000;
      v19 = 0x656D69746C616572;
      if (v7 != 2)
      {
        v19 = v6;
        v18 = v7;
      }

      if (v7 != 1)
      {
        v16 = v19;
        v17 = v18;
      }

      if (v7)
      {
        v20 = v16;
      }

      else
      {
        v20 = 0x6E65764572657375;
      }

      if (v7)
      {
        v21 = v17;
      }

      else
      {
        v21 = 0xEA00000000007374;
      }

      sub_1B6992E2C(v6, v7);
      v22 = sub_1B698F63C(v20, v21, v38);

      *(v14 + 14) = v22;
      _os_log_impl(&dword_1B697C000, v12, v13, "Session: %s, locked to kind '%s'", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v15, -1, -1);
      MEMORY[0x1B8C99550](v14, -1, -1);
    }

    return 1;
  }

  v38[0] = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind);
  v38[1] = v10;
  v37[0] = v6;
  v37[1] = v7;
  sub_1B6A0BD94(v9, v10);
  if (_s12AppAnalytics7SessionV4KindO2eeoiySbAE_AEtFZ_0(v38, v37))
  {
    sub_1B6A0A1D4(v9, v10);
    return 1;
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v24 = sub_1B6AB8F90();
  __swift_project_value_buffer(v24, qword_1EDBCFD80);
  sub_1B6A0BD94(v9, v10);

  sub_1B6992E2C(v6, v7);
  v25 = sub_1B6AB8F80();
  v26 = sub_1B6AB98E0();

  sub_1B6A0A1D4(v9, v10);
  sub_1B69C2E8C(v6, v7);
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v38[0] = v28;
    *v27 = 136315650;
    *(v27 + 4) = sub_1B698F63C(a2, a3, v38);
    *(v27 + 12) = 2080;
    if (v10)
    {
      if (v10 == 1)
      {
        sub_1B6A0A1D4(v9, 1uLL);
        v10 = 0xE900000000000079;
        v9 = 0x7274656D656C6574;
      }

      else if (v10 == 2)
      {
        sub_1B6A0A1D4(v9, 2uLL);
        v10 = 0xE800000000000000;
        v9 = 0x656D69746C616572;
      }
    }

    else
    {
      sub_1B6A0A1D4(v9, 0);
      v9 = 0x6E65764572657375;
      v10 = 0xEA00000000007374;
    }

    v29 = sub_1B698F63C(v9, v10, v38);

    *(v27 + 14) = v29;
    *(v27 + 22) = 2080;
    v30 = 0x7274656D656C6574;
    v31 = 0xE900000000000079;
    v32 = 0xE800000000000000;
    v33 = 0x656D69746C616572;
    if (v7 != 2)
    {
      v33 = v6;
      v32 = v7;
    }

    if (v7 != 1)
    {
      v30 = v33;
      v31 = v32;
    }

    if (v7)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0x6E65764572657375;
    }

    if (v7)
    {
      v35 = v31;
    }

    else
    {
      v35 = 0xEA00000000007374;
    }

    sub_1B6992E2C(v6, v7);
    v36 = sub_1B698F63C(v34, v35, v38);

    *(v27 + 24) = v36;
    _os_log_impl(&dword_1B697C000, v25, v26, "⚠️ SessionManager: %s, is locked to kind '%s'; attempted to start with '%s'. Create a separate SessionManager per kind.", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1B8C99550](v28, -1, -1);
    MEMORY[0x1B8C99550](v27, -1, -1);

    return 0;
  }

  else
  {

    sub_1B6A0A1D4(v9, v10);
    return 0;
  }
}

uint64_t *sub_1B6A030CC(uint64_t *result, uint64_t a2, unint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager);
  if (!v4)
  {
    return result;
  }

  v7 = *result;
  v8 = result[1];
  if (v8 < 3)
  {
    v9 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager);

    sub_1B6992E2C(v7, v8);
    sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
    sub_1B69C2E8C(v7, v8);
    goto LABEL_4;
  }

  if (v7 == 0x6169746E65737365 && v8 == 0xEF73746E6576456CLL)
  {
    v24 = *(v3 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager);

    sub_1B6992E2C(0x6169746E65737365, 0xEF73746E6576456CLL);
    sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
    sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
    goto LABEL_15;
  }

  v23 = sub_1B6ABA0F0();

  sub_1B6992E2C(v7, v8);
  sub_1B69C2E8C(0x6169746E65737365, 0xEF73746E6576456CLL);
  sub_1B69C2E8C(v7, v8);
  if (v23)
  {
LABEL_15:
    v25 = *(v3 + 16);
    v26 = swift_allocObject();
    swift_weakInit();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    *(v27 + 24) = 0x6174614472657375;
    *(v27 + 32) = 0xE800000000000000;
    *(v27 + 40) = sub_1B6A0ABF8;
    *(v27 + 48) = v4;
    *(v27 + 56) = sub_1B6A07ECC;
    *(v27 + 64) = xmmword_1B6ABF6F0;
    *(v27 + 80) = 0x80000001B6AC9E30;
    *(v27 + 88) = 938;
    v29 = *(v25 + 88);
    v28 = *(v25 + 96);
    v30 = swift_allocObject();
    v30[2] = v25;
    v30[3] = sub_1B6A0AC60;
    v30[4] = v27;
    swift_retain_n();

    sub_1B69877A4(v29, sub_1B6A0BE3C, v30);

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v31 = sub_1B6AB8F90();
    __swift_project_value_buffer(v31, qword_1EDBCFD80);

    v17 = sub_1B6AB8F80();
    v18 = sub_1B6AB98D0();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v32 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1B698F63C(a2, a3, &v32);
      v21 = "Registering userData for essentialEvents, session: %s";
      goto LABEL_19;
    }

    goto LABEL_21;
  }

LABEL_4:
  v10 = *(v3 + 16);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = 0x6174614472657375;
  *(v12 + 32) = 0xE800000000000000;
  *(v12 + 40) = sub_1B6A0ABCC;
  *(v12 + 48) = v4;
  *(v12 + 56) = sub_1B6A07ECC;
  *(v12 + 64) = xmmword_1B6ABF6F0;
  *(v12 + 80) = 0x80000001B6AC9E30;
  *(v12 + 88) = 943;
  v14 = *(v10 + 88);
  v13 = *(v10 + 96);
  v15 = swift_allocObject();
  v15[2] = v10;
  v15[3] = sub_1B6A0ABD4;
  v15[4] = v12;
  swift_retain_n();

  sub_1B69877A4(v14, sub_1B6A0ABEC, v15);

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v16 = sub_1B6AB8F90();
  __swift_project_value_buffer(v16, qword_1EDBCFD80);

  v17 = sub_1B6AB8F80();
  v18 = sub_1B6AB98D0();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1B698F63C(a2, a3, &v32);
    v21 = "Registering userData for non-essentialEvents, session: %s";
LABEL_19:
    _os_log_impl(&dword_1B697C000, v17, v18, v21, v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1B8C99550](v20, -1, -1);
    MEMORY[0x1B8C99550](v19, -1, -1);
  }

LABEL_21:
}

uint64_t SessionManager.end(endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a3;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = *(v3 + 48);
  sub_1B6A2ACC8();
  v11 = *(v3 + 56);
  (*(v8 + 16))(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v12 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  (*(v8 + 32))(v13 + v12, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v14 = (v13 + ((v9 + v12 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = v18;
  *v14 = a2;
  v14[1] = v15;

  sub_1B698BF94(a2);
  sub_1B69877A4(v10, sub_1B6A0A2C8, v13);
}

uint64_t sub_1B6A03820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a3;
  v8[4] = a4;

  sub_1B698BF94(a3);
  sub_1B6A039D8(a2, sub_1B6A0AAA0, v8);
}

void sub_1B6A038F4(uint64_t a1, void (*a2)(void))
{
  v3 = sub_1B6AB9090();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 48);

    sub_1B6AB9050();
    sub_1B6A2AED0(v6);
  }

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1B6A039D8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  v105 = a3;
  v107 = a2;
  v103 = a1;
  v106 = type metadata accessor for Session();
  v4 = *(*(v106 - 8) + 64);
  MEMORY[0x1EEE9AC00](v106);
  v104 = v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for SessionObserverChange();
  v6 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v8 = (v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for SessionManager.SessionState(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v102 = v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (v93 - v13);
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v101 = *(v3 + 48);
  v20 = *(v101 + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v20;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);
  v21 = v20;
  v22 = sub_1B6AB9110();
  result = (*(v16 + 8))(v19, v15);
  if ((v22 & 1) == 0)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  v24 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  sub_1B6980478(v3 + v24, v14, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v25 = *v14;
    *v8 = *v14;
    swift_storeEnumTagMultiPayload();

    sub_1B6996750(v8);
    v100 = type metadata accessor for SessionObserverChange;
    sub_1B6A0BDA4(v8, type metadata accessor for SessionObserverChange);
    v26 = *(v25 + 3);
    v99 = *(v25 + 2);
    v95 = v26;
    v97 = v8;
    v98 = v9;
    v27 = *&v25[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v28 = *(v25 + 4);
    v94 = *(v25 + 5);
    v29 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v30 = *(v106 + 28);
    *&v31 = *&v25[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v96 = v31;
    v32 = sub_1B6AB8DB0();
    v33 = v3;
    v34 = v104;
    (*(*(v32 - 8) + 16))(v104 + v30, &v25[v29], v32);

    v35 = v95;

    v36 = v94;
    sub_1B6992E2C(v28, v94);
    v93[1] = v25;
    v37 = sub_1B699696C(v25);
    *&v38 = v96;
    *(&v38 + 1) = v27;
    *&v39 = v28;
    *(&v39 + 1) = v36;
    *v34 = v99;
    *(v34 + 8) = v35;
    *(v34 + 16) = v38;
    *(v34 + 32) = v39;
    *(v34 + *(v106 + 32)) = v37;
    v40 = v102;
    sub_1B6980478(v34, v102, type metadata accessor for Session);
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_1B6A0B03C(v40, v33 + v24, type metadata accessor for SessionManager.SessionState);
    swift_endAccess();
    v41 = *(v33 + 24);
    sub_1B69C8B64(v34, v103);
    v42 = v97;
    sub_1B6980478(v34, v97, type metadata accessor for Session);
    swift_storeEnumTagMultiPayload();
    sub_1B6996750(v42);
    sub_1B6A0BDA4(v42, v100);
    v43 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    swift_beginAccess();
    v108 = v33;
    v44 = *(v33 + v43);
    v45 = 1 << *(v44 + 32);
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v44 + 64);
    v48 = (v45 + 63) >> 6;
    result = swift_bridgeObjectRetain_n();
    v49 = 0;
    if (v47)
    {
      while (1)
      {
        v50 = v49;
LABEL_15:
        v51 = __clz(__rbit64(v47));
        v47 &= v47 - 1;
        v52 = *(*(v44 + 56) + ((v50 << 9) | (8 * v51)));
        sub_1B697ED90(0, &qword_1EDBCBB00);

        sub_1B6AB9710();

        if (!v47)
        {
          goto LABEL_11;
        }
      }
    }

    while (1)
    {
LABEL_11:
      v50 = v49 + 1;
      if (__OFADD__(v49, 1))
      {
        __break(1u);
        goto LABEL_42;
      }

      if (v50 >= v48)
      {
        break;
      }

      v47 = *(v44 + 64 + 8 * v50);
      ++v49;
      if (v47)
      {
        v49 = v50;
        goto LABEL_15;
      }
    }

    v53 = v108;
    v54 = *(v108 + v43);
    *(v108 + v43) = MEMORY[0x1E69E7CC8];

    v55 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v106 = v55;
    v56 = *(v53 + v55);
    v57 = v56 + 64;
    v58 = 1 << *(v56 + 32);
    v59 = -1;
    if (v58 < 64)
    {
      v59 = ~(-1 << v58);
    }

    v60 = v59 & *(v56 + 64);
    v61 = (v58 + 63) >> 6;
    v62 = *(v53 + v55);
    result = swift_bridgeObjectRetain_n();
    v63 = 0;
    v103 = v56;
    while (v60)
    {
LABEL_26:
      v65 = __clz(__rbit64(v60));
      v60 &= v60 - 1;
      v66 = (*(v56 + 48) + ((v63 << 10) | (16 * v65)));
      v68 = *v66;
      v67 = v66[1];
      v69 = v106;
      v70 = v108;
      swift_beginAccess();
      v71 = *(v70 + v69);
      v72 = *(v71 + 16);

      if (v72 && (v73 = sub_1B6993940(v68, v67), (v74 & 1) != 0))
      {
        v102 = v68;
        sub_1B6982544(*(v71 + 56) + 40 * v73, v114);
        sub_1B699A784(v114, v115);
        swift_endAccess();
        v75 = v116;
        v76 = v117;
        __swift_project_boxed_opaque_existential_1(v115, v116);
        (*(v76 + 24))(v110, v75, v76);
        if (*(&v110[0] + 1))
        {
          v114[2] = v110[2];
          v114[3] = v111;
          v114[4] = v112;
          v114[5] = v113;
          v114[0] = v110[0];
          v114[1] = v110[1];
          v77 = *(*(&v111 + 1) + 16);
          v78 = (*(&v111 + 1) + 32);
          v56 = v103;
          do
          {
            if (!v77)
            {
              sub_1B69A6664(v114);

              goto LABEL_38;
            }

            v79 = *v78++;
            --v77;
          }

          while (v79);
          v80 = v116;
          v81 = v117;
          __swift_mutable_project_boxed_opaque_existential_1(v115, v116);
          (*(v81 + 32))(v110, v80, v81);
          sub_1B6A0A674(v110, &qword_1EDBCB490);
          v82 = v116;
          v83 = v117;
          __swift_project_boxed_opaque_existential_1(v115, v116);
          if ((*(v83 + 8))(v82, v83))
          {
            swift_beginAccess();
            sub_1B6A96B74(v102, v67, v110);
            swift_endAccess();

            sub_1B699835C(v110);
          }

          else
          {
            v84 = v106;
            v85 = v108;
            swift_beginAccess();
            sub_1B6982544(v115, v110);
            v86 = *(v85 + v84);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v109 = *(v85 + v84);
            *(v85 + v84) = 0x8000000000000000;
            sub_1B699ACEC(v110, v102, v67, isUniquelyReferenced_nonNull_native);

            *(v85 + v84) = v109;
            swift_endAccess();
          }

          sub_1B69A6664(v114);
          v56 = v103;
LABEL_38:
          result = __swift_destroy_boxed_opaque_existential_1(v115);
        }

        else
        {

          sub_1B6A0A674(v110, &qword_1EDBCB490);
          result = __swift_destroy_boxed_opaque_existential_1(v115);
          v56 = v103;
        }
      }

      else
      {
        swift_endAccess();
      }
    }

    while (1)
    {
      v64 = v63 + 1;
      if (__OFADD__(v63, 1))
      {
        break;
      }

      if (v64 >= v61)
      {

        v88 = *(*(v108 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) + 24);
        v89 = swift_allocObject();
        v90 = v107;
        v91 = v105;
        *(v89 + 16) = v107;
        *(v89 + 24) = v91;
        v92 = v88;
        sub_1B698BF94(v90);
        sub_1B69877A4(v101, sub_1B6A0A80C, v89);

        return sub_1B6A0BDA4(v104, type metadata accessor for Session);
      }

      v60 = *(v57 + 8 * v64);
      ++v63;
      if (v60)
      {
        v63 = v64;
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (result == 1)
  {
    result = sub_1B6A0BDA4(v14, type metadata accessor for SessionManager.SessionState);
  }

  if (v107)
  {
    return v107(result);
  }

  return result;
}

Swift::Void __swiftcall SessionManager.endSync(timeout:)(Swift::Double timeout)
{
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v40 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34 - v6;
  v8 = sub_1B6AB90C0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v34 - v14;
  v16 = v1;
  v17 = *(v1 + 56);
  sub_1B6AB90B0();
  v38 = v17;
  sub_1B6AB9910();
  v18 = *(v9 + 8);
  v39 = v8;
  v41 = v18;
  v18(v15, v8);
  if (sub_1B6AB9010())
  {
    sub_1B6AB8DA0();
    v19 = dispatch_group_create();
    v36 = v13;
    v20 = v19;
    dispatch_group_enter(v19);
    v35 = *(v16 + 48);
    sub_1B6A2ACC8();
    v21 = *(v3 + 16);
    v22 = v40;
    v37 = v7;
    v21(v40, v7, v2);
    v23 = (*(v3 + 80) + 24) & ~*(v3 + 80);
    v24 = v2;
    v25 = (v4 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    *(v26 + 16) = v16;
    v27 = *(v3 + 32);
    v40 = v24;
    v27(v26 + v23, v22, v24);
    *(v26 + v25) = v20;

    v28 = v20;
    sub_1B69877A4(v35, sub_1B6A0A35C, v26);

    v29 = v36;
    sub_1B6AB90B0();
    sub_1B6AB9100();
    v30 = v39;
    v31 = v41;
    v41(v29, v39);
    LOBYTE(v29) = sub_1B6AB9910();
    v31(v15, v30);
    if (v29)
    {
      v32 = v37;
      v33 = v40;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B6AB8F70();

      (*(v3 + 8))(v32, v33);
    }

    else
    {
      (*(v3 + 8))(v37, v40);
    }
  }

  else
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B6AB8F70();
  }
}

uint64_t sub_1B6A047EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = a3;
  *(v6 + 24) = v5;
  v7 = a3;

  sub_1B6A039D8(a2, sub_1B6A0AA98, v6);
}

void sub_1B6A048B0(NSObject *a1)
{
  v2 = sub_1B6AB9090();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch_group_leave(a1);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 48);

    sub_1B6AB9050();
    sub_1B6A2AED0(v5);
  }
}

uint64_t sub_1B6A04980(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EB95B4C8, sub_1B698148C, MEMORY[0x1E69E8698]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v5 = *(a2 + 16);
  sub_1B6A06088(&v8 - v6);
  sub_1B6A0B55C(&qword_1EB95B4D0, &qword_1EB95B4C8, sub_1B698148C);
  return sub_1B6ABA070();
}

uint64_t sub_1B6A04A94(uint64_t *a1, void *a2)
{
  sub_1B6A0B398();
  v5 = v4;
  v6 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  v11 = a2[2];
  sub_1B6A06088(v8);
  v12 = a2[4];
  sub_1B6A064FC(&v8[*(v5 + 68)]);
  v13 = a2[3];
  sub_1B6A06A10(&v8[*(v5 + 72)]);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  *(v14 + 24) = v10;
  v15 = swift_allocObject();
  *(v15 + 16) = &unk_1B6ABFA58;
  *(v15 + 24) = v14;
  sub_1B6992E2C(v9, v10);
  sub_1B69822F4(&qword_1EB95B540, sub_1B6A0B398);
  return sub_1B6ABA070();
}

uint64_t sub_1B6A04C10(unint64_t a1)
{
  v3 = v1;
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v3 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v10;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v11 = v10;
  v12 = sub_1B6AB9110();
  (*(v6 + 8))(v9, v5);
  if (v12)
  {
    v2 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers;
    swift_beginAccess();
    v9 = *(v3 + v2);
    v22 = MEMORY[0x1E69E7CC0];
    if (!(v9 >> 62))
    {
      v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
LABEL_22:
    __break(1u);
  }

  v13 = sub_1B6AB9E60();
LABEL_4:

  if (v13)
  {
    v21[0] = v3;
    v21[1] = a1;
    a1 = 0;
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x1B8C98510](a1, v9);
        v14 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v16 = v22;
          v3 = v21[0];
          goto LABEL_18;
        }
      }

      else
      {
        if (a1 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_22;
        }

        v3 = *(v9 + 8 * a1 + 32);

        v14 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          goto LABEL_15;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        swift_unknownObjectRelease();
        sub_1B6AB9D50();
        v15 = *(v22 + 16);
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        sub_1B6AB9D60();
      }

      else
      {
      }

      ++a1;
      if (v14 == v13)
      {
        goto LABEL_16;
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v17 = *(v3 + v2);
  *(v3 + v2) = v16;

  swift_beginAccess();

  MEMORY[0x1B8C97D30](v18);
  if (*((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v20 = *((*(v3 + v2) & 0xFFFFFFFFFFFFFF8) + 0x10);
    sub_1B6AB9540();
  }

  sub_1B6AB9580();
  return swift_endAccess();
}

uint64_t sub_1B6A04EE8(uint64_t *a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers;
  swift_beginAccess();
  v5 = *(a1 + v4);
  v16 = MEMORY[0x1E69E7CC0];
  if (v5 >> 62)
  {
LABEL_21:
    v6 = sub_1B6AB9E60();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v6)
  {
    v14 = v4;
    v15 = a1;
    v4 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C98510](v4, v5);
        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          a1 = v15;
          v11 = v16;
          v4 = v14;
          goto LABEL_19;
        }
      }

      else
      {
        if (v4 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_21;
        }

        v7 = *(v5 + 8 * v4 + 32);

        v8 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_16;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (a1 = Strong, swift_unknownObjectRelease(), a1 == a2) || !swift_unknownObjectWeakLoadStrong())
      {
      }

      else
      {
        swift_unknownObjectRelease();
        sub_1B6AB9D50();
        v10 = *(v16 + 16);
        sub_1B6AB9D90();
        sub_1B6AB9DA0();
        a1 = &v16;
        sub_1B6AB9D60();
      }

      ++v4;
      if (v8 == v6)
      {
        goto LABEL_17;
      }
    }
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_19:

  v12 = *(a1 + v4);
  *(a1 + v4) = v11;
}

uint64_t static SessionManager.forEachSessionManagerForever(_:)(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = sub_1B6AB9680();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  type metadata accessor for AnalyticsActor();
  inited = swift_initStaticObject();
  v10 = sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v11 = swift_allocObject();
  v11[2] = inited;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;

  sub_1B69EDFB0(0, 0, v7, &unk_1B6ABF738, v11);
}

uint64_t sub_1B6A0521C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v6 = *(*(sub_1B6AB9030() - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v7 = sub_1B6AB9090();
  v5[18] = v7;
  v8 = *(v7 - 8);
  v5[19] = v8;
  v9 = *(v8 + 64) + 15;
  v5[20] = swift_task_alloc();
  type metadata accessor for AnalyticsActor();
  swift_initStaticObject();
  sub_1B69822F4(&qword_1EDBC7F20, type metadata accessor for AnalyticsActor);
  v11 = sub_1B6AB95E0();

  return MEMORY[0x1EEE6DFA0](sub_1B6A0536C, v11, v10);
}

uint64_t sub_1B6A0536C()
{
  v33 = v0;
  if (qword_1EDBC9580 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBCFD18;
  *(swift_task_alloc() + 16) = *(v0 + 15);
  os_unfair_lock_lock((v1 + 32));
  sub_1B6A0A83C((v1 + 16), &v32);
  os_unfair_lock_unlock((v1 + 32));
  v2 = v32;

  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v2 + 32;
    v27 = (v0[19] + 16);
    do
    {
      sub_1B6A0A858(v4, (v0 + 14), qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v5 = Strong;
        v28 = v0[20];
        v29 = v0[18];
        v30 = v0[17];
        v6 = v0[15];
        v7 = v0[16];
        v8 = swift_allocObject();
        *(v8 + 16) = v6;
        *(v8 + 24) = v7;
        v9 = *(v5 + 24);
        v31 = v9;
        v10 = swift_allocObject();
        v10[2] = v5;
        v10[3] = sub_1B6A0A92C;
        v10[4] = v8;
        v11 = OBJC_IVAR___AAAccessQueue__qos;
        swift_beginAccess();
        v12 = *(v9 + v11);
        v13 = *(v12 + 2);
        v14 = *(v13 + 16);
        v15 = *(v13 + 24);

        os_unfair_lock_lock_with_options();
        v16 = *(*v12 + 96);
        swift_beginAccess();
        (*v27)(v28, &v12[v16], v29);
        os_unfair_lock_unlock(*(*(v12 + 2) + 16));

        sub_1B6AB9020();
        v0[6] = sub_1B6A0A990;
        v0[7] = v10;
        v0[2] = MEMORY[0x1E69E9820];
        v0[3] = 1107296256;
        v0[4] = sub_1B698E534;
        v0[5] = &block_descriptor_3;
        _Block_copy(v0 + 2);
        v17 = sub_1B6AB90E0();
        v18 = *(v17 + 48);
        v19 = *(v17 + 52);
        swift_allocObject();

        sub_1B6AB90D0();
        v20 = v0[7];

        v21 = *(v31 + OBJC_IVAR___AAAccessQueue_queue);
        sub_1B6AB9940();

        sub_1B6A0A8CC((v0 + 14), qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      }

      else
      {
        sub_1B6A0A8CC((v0 + 14), qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      }

      v4 += 8;
      --v3;
    }

    while (v3);
  }

  v23 = v0[20];
  v24 = v0[17];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1B6A057E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  v9 = a1[1];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1B69E3D6C((v10 > 1), v11 + 1, 1, v9);
    }

    v9[2] = v11 + 1;
    v12 = &v9[2 * v11];
    v12[4] = sub_1B6A0A9D4;
    v12[5] = v8;
    a1[1] = v9;
    v9 = *a1;
    v14 = (*a1 + 16);
    v13 = *v14;
    if (!*v14)
    {
LABEL_8:
      v8 = *v14;
      v17 = *v14;
LABEL_12:
      sub_1B6AB7FD8(v8, v17);
      *a4 = *a1;
    }

    v8 = 0;
    v15 = 5;
    while (1)
    {
      result = swift_weakLoadStrong();
      if (!result)
      {
        break;
      }

      ++v8;
      ++v15;
      if (v13 == v8)
      {
        goto LABEL_8;
      }
    }

    v17 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_34;
    }

    v18 = *v14;
    if (v17 == *v14)
    {
      break;
    }

    while (v17 < v18)
    {
      sub_1B6A0A858(&v9[v15], v21, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      if (swift_weakLoadStrong())
      {

        result = sub_1B6A0A8CC(v21, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
        if (v17 != v8)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_28;
          }

          v19 = *v14;
          if (v8 >= v19)
          {
            goto LABEL_29;
          }

          sub_1B6A0A858(&v9[v8 + 4], v21, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
          if (v17 >= v19)
          {
            goto LABEL_30;
          }

          sub_1B6A0A858(&v9[v15], v20, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1B6AB7E10(v9);
          }

          sub_1B6A0AA04(v20, &v9[v8 + 4]);
          if (v17 >= v9[2])
          {
            goto LABEL_31;
          }

          result = sub_1B6A0AA04(v21, &v9[v15]);
          *a1 = v9;
        }

        ++v8;
      }

      else
      {
        result = sub_1B6A0A8CC(v21, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak, sub_1B699332C);
      }

      ++v17;
      v14 = v9 + 2;
      v18 = v9[2];
      ++v15;
      if (v17 == v18)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v9 = sub_1B69E3D6C(0, v9[2] + 1, 1, v9);
  }

LABEL_11:
  if (v17 >= v8)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t AccessSessionManager.isActive.getter()
{
  v1 = type metadata accessor for SessionManager.SessionState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v0 + 16);
  v11 = *(*(v10 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v14 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v10 + v14, v4, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6A0BDA4(v4, type metadata accessor for SessionManager.SessionState);
      }

      return 0;
    }

    else
    {
      v16 = *v4;

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AccessSessionManager.activeKind.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SessionManager.SessionState(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + 16);
  v13 = *(*(v12 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v14 = v13;
  LOBYTE(v13) = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if (v13)
  {
    v16 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B6980478(v12 + v16, v6, type metadata accessor for SessionManager.SessionState);
    result = swift_getEnumCaseMultiPayload();
    if (result)
    {
      if (result == 1)
      {
        result = sub_1B6A0BDA4(v6, type metadata accessor for SessionManager.SessionState);
      }

      v17 = 0;
      v18 = 3;
    }

    else
    {
      v19 = *v6;
      v17 = *(v19 + 32);
      v18 = *(v19 + 40);
      sub_1B6992E2C(v17, v18);
    }

    *a1 = v17;
    a1[1] = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall AccessSessionManager.flush()()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = qword_1EDBCAF40;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_1B69A4218(qword_1EDBCAA10, 0, 0);
}

uint64_t AccessSessionManager.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1B6A06088@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  sub_1B699332C(0, &qword_1EB95B500, sub_1B698148C, MEMORY[0x1E69E8638]);
  v38 = *(v3 - 8);
  v39 = v3;
  v4 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v32 - v5;
  v34 = sub_1B6AB8E40();
  v6 = *(v34 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v9 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - v10;
  sub_1B699332C(0, &qword_1EB95B508, sub_1B698148C, MEMORY[0x1E69E8658]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v32 - v16);
  sub_1B69844CC(0);
  v33 = v18;
  v36 = *(v18 - 8);
  v19 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B698148C();
  *v17 = 1;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8640], v13);
  sub_1B6AB9690();
  (*(v14 + 8))(v17, v13);
  sub_1B6AB8E30();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = v34;
  (*(v6 + 16))(v9, v11, v34);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v26 = v23;
  (*(v6 + 32))(v25 + v24, v9, v23);
  v27 = v33;
  sub_1B6AB96A0();
  v28 = *(v2 + 16);
  v40 = v11;
  v41 = v21;
  os_unfair_lock_lock((v28 + 32));
  sub_1B6A0B1C0(v28 + 16);
  os_unfair_lock_unlock((v28 + 32));
  os_unfair_lock_lock((v28 + 32));
  v29 = *(v28 + 16);

  os_unfair_lock_unlock((v28 + 32));
  v42 = v29;
  v30 = v37;
  sub_1B6AB96B0();
  (*(v38 + 8))(v30, v39);
  (*(v6 + 8))(v11, v26);
  return (*(v36 + 8))(v21, v27);
}

uint64_t sub_1B6A064FC@<X0>(uint64_t a1@<X8>)
{
  v34[1] = a1;
  sub_1B69827CC(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v39 = v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B699332C(0, &qword_1EB95B580, sub_1B69827CC, MEMORY[0x1E69E8638]);
  v40 = v4;
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = v34 - v6;
  v34[0] = sub_1B6AB8E40();
  v7 = *(v34[0] - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v34[0]);
  v10 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v34 - v11;
  sub_1B699332C(0, &qword_1EB95B588, sub_1B69827CC, MEMORY[0x1E69E8658]);
  v14 = v13;
  v15 = *(v13 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v18 = (v34 - v17);
  sub_1B6984CE4(0);
  v20 = v19;
  v35 = *(v19 - 8);
  v21 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v23 = v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v18 = 1;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8640], v14);
  sub_1B6AB9690();
  (*(v15 + 8))(v18, v14);
  sub_1B6AB8E30();
  v24 = swift_allocObject();
  v25 = v36;
  swift_weakInit();
  v26 = v34[0];
  (*(v7 + 16))(v10, v12, v34[0]);
  v27 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v24;
  (*(v7 + 32))(v28 + v27, v10, v26);
  sub_1B6AB96A0();
  v29 = *(v25 + 16);
  v41 = v12;
  v42 = v23;
  v30 = *(*v29 + *MEMORY[0x1E69E6B68] + 16);
  v31 = (*(*v29 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v29 + v31));
  sub_1B6A0BD5C(v29 + v30);
  os_unfair_lock_unlock((v29 + v31));
  os_unfair_lock_lock((v29 + v31));
  sub_1B6980478(v29 + v30, v39, sub_1B69827CC);
  os_unfair_lock_unlock((v29 + v31));
  v32 = v37;
  sub_1B6AB96B0();
  (*(v38 + 8))(v32, v40);
  (*(v7 + 8))(v12, v26);
  return (*(v35 + 8))(v23, v20);
}

uint64_t sub_1B6A06A10@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  sub_1B6A0B4EC(0, &qword_1EB95B570, MEMORY[0x1E69E8638]);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v33 - v5;
  v36 = sub_1B6AB8E40();
  v6 = *(v36 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v36);
  v9 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  sub_1B6A0B4EC(0, &qword_1EB95B578, MEMORY[0x1E69E8658]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = (&v33 - v16);
  sub_1B6A0B4EC(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);
  v34 = v18;
  v37 = *(v18 - 8);
  v19 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v33 - v20;
  sub_1B69809F4(0, &qword_1EDBCAA50);
  *v17 = 1;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8640], v13);
  sub_1B6AB9690();
  (*(v14 + 8))(v17, v13);
  sub_1B6AB8E30();
  v22 = swift_allocObject();
  swift_weakInit();
  v23 = v36;
  (*(v6 + 16))(v9, v11, v36);
  v24 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  v26 = v23;
  (*(v6 + 32))(v25 + v24, v9, v23);
  v27 = v34;
  sub_1B6AB96A0();
  v28 = *(v2 + 16);
  v41 = v11;
  v42 = v21;
  os_unfair_lock_lock((v28 + 40));
  sub_1B6A0BBC0(v28 + 16);
  os_unfair_lock_unlock((v28 + 40));
  os_unfair_lock_lock((v28 + 40));
  v30 = *(v28 + 16);
  v29 = *(v28 + 24);

  os_unfair_lock_unlock((v28 + 40));
  v43 = v30;
  v44 = v29;
  v31 = v38;
  sub_1B6AB96B0();
  (*(v39 + 8))(v31, v40);
  (*(v6 + 8))(v11, v26);
  return (*(v37 + 8))(v21, v27);
}

uint64_t sub_1B6A06E90(uint64_t a1, uint64_t *a2, int *a3)
{
  *(v3 + 128) = a1;
  v6 = *a2;
  sub_1B6A0BB10();
  v8 = *(v7 + 48);
  v9 = (a2 + *(v7 + 64));
  v10 = *v9;
  v11 = v9[1];
  v15 = (a3 + *a3);
  v12 = a3[1];
  v13 = swift_task_alloc();
  *(v3 + 136) = v13;
  *v13 = v3;
  v13[1] = sub_1B6A06FD0;

  return v15(v3 + 16, v6, a2 + v8, v10, v11);
}

uint64_t sub_1B6A06FD0()
{
  v1 = *v0;
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 128);
  v11 = *v0;

  v4 = v1[1];
  v5 = v1[3];
  v3[1] = v1[2];
  v3[2] = v5;
  *v3 = v4;
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  *(v3 + 89) = *(v1 + 105);
  v3[4] = v7;
  v3[5] = v8;
  v3[3] = v6;
  v9 = *(v11 + 8);

  return v9();
}

uint64_t sub_1B6A07100()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x1EEE9AC00](v2);
    os_unfair_lock_lock(v1 + 8);
    sub_1B6A0B1DC(&v1[4]);
    os_unfair_lock_unlock(v1 + 8);
  }

  return result;
}

uint64_t sub_1B6A071C4()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x1EEE9AC00](v2);
    os_unfair_lock_lock(v1 + 10);
    sub_1B6A0BBDC(&v1[4]);
    os_unfair_lock_unlock(v1 + 10);
  }

  return result;
}

uint64_t sub_1B6A07288()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 16);

    MEMORY[0x1EEE9AC00](v2);
    v3 = *(*v1 + *MEMORY[0x1E69E6B68] + 16);
    v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((v1 + v4));
    sub_1B6A0BD78(v1 + v3);
    os_unfair_lock_unlock((v1 + v4));
  }

  return result;
}

uint64_t sub_1B6A07390(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EB95AEE8, sub_1B69844CC, MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v14 - v5;
  v7 = sub_1B6AB8E40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_1B69844CC(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  return sub_1B69E1764(v6, v10);
}

uint64_t sub_1B6A07520(uint64_t a1, uint64_t a2)
{
  sub_1B69E8D9C();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB8E40();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, a2);
  sub_1B6A0B4EC(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  return sub_1B69E1A00(v6, v10);
}

uint64_t sub_1B6A076A0(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, &qword_1EB95AF20, sub_1B6984CE4, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v17 - v6;
  v8 = sub_1B6AB8E40();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11, a2);
  sub_1B6984CE4(0);
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1B699332C(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  v15 = a1 + *(v14 + 28);
  return sub_1B69E1C2C(v7, v11);
}

uint64_t sub_1B6A0786C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B699332C(0, &qword_1EB95AEE8, sub_1B69844CC, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v18 - v7;
  v9 = sub_1B6AB8E40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  sub_1B69844CC(0);
  v15 = v14;
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, a3, v14);
  (*(v16 + 56))(v8, 0, 1, v15);
  return sub_1B69E1764(v8, v12);
}

uint64_t sub_1B6A07A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B69E8D9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8E40();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, a2);
  sub_1B6A0B4EC(0, &qword_1EDBC8E18, MEMORY[0x1E69E8660]);
  v15 = v14;
  v16 = *(v14 - 8);
  (*(v16 + 16))(v8, a3, v14);
  (*(v16 + 56))(v8, 0, 1, v15);
  return sub_1B69E1A00(v8, v12);
}

uint64_t sub_1B6A07BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B699332C(0, &qword_1EB95AF20, sub_1B6984CE4, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v21 - v8;
  v10 = sub_1B6AB8E40();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, a2);
  sub_1B6984CE4(0);
  v16 = v15;
  v17 = *(v15 - 8);
  (*(v17 + 16))(v9, a3, v15);
  (*(v17 + 56))(v9, 0, 1, v16);
  sub_1B699332C(0, qword_1EDBC8F00, sub_1B69827CC, type metadata accessor for Updater.Storage);
  v19 = a1 + *(v18 + 28);
  return sub_1B69E1C2C(v9, v13);
}

uint64_t sub_1B6A07E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 96);
  v11 = *(a2 + 128);
  v16[7] = *(a2 + 112);
  v16[8] = v11;
  v17 = *(a2 + 144);
  v12 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v12;
  v13 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v13;
  v16[6] = v10;
  v14 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B6AA099C(v16, a6, a3, a4, a5);
  }

  return result;
}

uint64_t sub_1B6A07ECC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  return sub_1B6AB9C20();
}

uint64_t sub_1B6A07F1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 16);
  v12[0] = *a2;
  v12[1] = v10;
  v12[2] = *(a2 + 32);
  v13 = *(a2 + 48);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B6AA1014(v12, a6, a3, a4, a5);
  }

  return result;
}

void *sub_1B6A07FC4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v98 = a3;
  v105 = a11;
  v100 = a10;
  v101 = a5;
  v103 = a4;
  v104 = a9;
  v17 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v97 = &v95 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v95 - v21;
  v23 = type metadata accessor for SummaryEventConfiguration(0);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v96 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v95 - v27;
  v29 = type metadata accessor for DiagnosticsConsentProvider(0);
  v30 = v29 - 8;
  v31 = *(*(v29 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v102 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v95 - v34;
  v109 = &type metadata for TimestampJitter;
  v110 = &protocol witness table for TimestampJitter;
  v107[0] = a6;
  v107[1] = a7;
  v108 = a8 & 1;
  a12[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC0];
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
  v37 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  *(a12 + v37) = sub_1B6987EC8(v36);
  v38 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(a12 + v38) = sub_1B69F76A4(v36);
  v39 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(a12 + v39) = sub_1B69F77E8(v36);
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  a12[6] = a1;
  a12[7] = a2;
  a12[8] = v98;
  type metadata accessor for ProcessorManager();
  v40 = swift_allocObject();
  v40[3] = 0;
  swift_unknownObjectWeakInit();
  v40[5] = a2;
  v40[6] = v36;
  v40[4] = a1;
  a12[3] = v40;
  v41 = a1;
  v42 = a2;
  v43 = v41;
  v44 = v42;
  v45 = v43;
  v46 = v35;
  v47 = v45;
  v48 = v44;

  swift_unknownObjectRetain();
  sub_1B6AB8E30();
  v49 = &v35[*(v30 + 28)];
  *v49 = sub_1B69A3378;
  *(v49 + 1) = 0;
  sub_1B6980478(v105, v28, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E7CC8];
  *(v51 + 16) = MEMORY[0x1E69E7CC8];
  v98 = v46;
  sub_1B6980478(v46, v102, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4();
  v54 = v53;
  v55 = *(v53 + 48);
  v56 = sub_1B6AB8BB0();
  (*(*(v56 - 8) + 56))(v22, 1, 1, v56);
  *&v22[v55] = 0;
  (*(*(v54 - 8) + 56))(v22, 0, 1, v54);
  v57 = v28[8];
  v99 = v28;
  if (v57)
  {
    v58 = type metadata accessor for DisabledSummaryEventManager();
    v59 = swift_allocObject();
    v60 = &off_1F2E7D3E0;
  }

  else
  {
    v61 = v28;
    v62 = v96;
    sub_1B6980478(v61, v96, type metadata accessor for SummaryEventConfiguration);
    v63 = v97;
    sub_1B6980478(v22, v97, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v58 = type metadata accessor for SummaryEventManager();
    v64 = *(v58 + 48);
    v65 = *(v58 + 52);
    v66 = swift_allocObject();
    v59 = sub_1B698A71C(v62, v63, v66);
    v60 = &off_1F2E7C028;
  }

  v106[3] = v58;
  v106[4] = v60;
  v106[0] = v59;
  sub_1B6A0BDA4(v22, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  v67 = type metadata accessor for Tracker(0);
  v68 = *(v67 + 48);
  v69 = *(v67 + 52);
  v70 = swift_allocObject();
  *(v70 + 80) = 0;
  *(v70 + 56) = 0;
  *(v70 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v70 + 112) = v52;
  *(v70 + 120) = v52;
  *(v70 + 128) = v52;
  *(v70 + 136) = v52;
  *(v70 + 144) = v52;
  *(v70 + 160) = v52;
  v71 = MEMORY[0x1E69E7CC0];
  *(v70 + 168) = MEMORY[0x1E69E7CC0];
  *(v70 + 176) = v71;
  *(v70 + 192) = v71;
  *(v70 + 200) = 0;
  v72 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v73 = swift_allocObject();
  v74 = swift_slowAlloc();
  *(v73 + 16) = v74;
  *v74 = 0;
  *(v73 + 24) = 0x10000;
  *(v70 + v72) = v73;
  *(v70 + 16) = xmmword_1B6ABF710;
  *(v70 + 201) = (v103 & 2) != 0;
  *(v70 + 96) = v48;
  *(v70 + 104) = v51;
  *(v70 + 152) = 0;
  *(v70 + 80) = 0;
  *(v70 + 88) = v47;
  swift_unknownObjectWeakAssign();
  *(v70 + 184) = v71;
  *(v70 + 40) = 0;
  *(v70 + 48) = 0;
  v75 = *(v70 + 64);
  *(v70 + 56) = 0;
  *(v70 + 64) = 0;
  v76 = v47;
  v77 = v48;

  v78 = v100;
  *(v70 + 208) = v104;
  *(v70 + 216) = v78;
  v79 = v102;
  sub_1B6980478(v102, v70 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v106, v70 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v70 + 32) = v50;
  swift_unknownObjectRetain();
  v80 = v50;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v81 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v81);
    v97 = v80;

    swift_unknownObjectRelease();

    v80 = v97;
    sub_1B6A0BDA4(v79, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v99, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v98, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v106);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1B6A0BDA4(v79, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v99, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v98, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v106);
  }

  a12[2] = v70;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v103;
  v82 = v101;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v101;
  sub_1B6982544(v107, a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  ObjectType = swift_getObjectType();
  v84 = *(v78 + 8);

  v84(v106, ObjectType, v78);
  v85 = v106[0];
  type metadata accessor for PrivacyValidator();
  v86 = swift_allocObject();
  *(v86 + 16) = v85 != 0;
  if (!v85)
  {
    v85 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v87 = swift_allocObject();
  *(v87 + 16) = v85;
  *(v86 + 24) = v87;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v86;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v80;
  *(a12 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(a12[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v88 = v80;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v89 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v89);
  }

  *(a12[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v90 = a12[3];
  v92 = *(v90 + 32);
  v91 = *(v90 + 40);
  v93 = swift_allocObject();
  v93[2] = v90;
  v93[3] = v82;
  v93[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v92, sub_1B69916A8, v93);

  sub_1B6A0BDA4(v105, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v107);
  return a12;
}

void *sub_1B6A089EC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v101 = a3;
  v103 = a13;
  v104 = a5;
  v108 = a11;
  v106 = a4;
  v107 = a9;
  v18 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v97 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v96 - v22;
  v24 = type metadata accessor for SummaryEventConfiguration(0);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v96 = &v96 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v96 - v28;
  v30 = type metadata accessor for DiagnosticsConsentProvider(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v98 = &v96 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v96 - v34;
  v36 = type metadata accessor for SessionManager(0);
  v37 = *(v36 + 48);
  v38 = *(v36 + 52);
  v39 = swift_allocObject();
  v112 = &type metadata for TimestampJitter;
  v113 = &protocol witness table for TimestampJitter;
  v110[0] = a6;
  v110[1] = a7;
  v111 = a8 & 1;
  v39[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC0];
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
  v41 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  *(v39 + v41) = sub_1B6987EC8(v40);
  v42 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v39 + v42) = sub_1B69F76A4(v40);
  v43 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v39 + v43) = sub_1B69F77E8(v40);
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v39[6] = a1;
  v39[7] = a2;
  v39[8] = v101;
  type metadata accessor for ProcessorManager();
  v44 = swift_allocObject();
  v44[3] = 0;
  swift_unknownObjectWeakInit();
  v44[5] = a2;
  v44[6] = v40;
  v44[4] = a1;
  v39[3] = v44;
  v105 = a10;
  sub_1B6980478(a10, v35, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6980478(v108, v29, type metadata accessor for SummaryEventConfiguration);
  v45 = qword_1EDBCB498;
  v46 = a1;
  v47 = a2;
  v48 = v46;
  v49 = v47;
  v50 = v48;
  v51 = v49;

  swift_unknownObjectRetain();
  if (v45 != -1)
  {
    swift_once();
  }

  v100 = a12;
  v52 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v99 = swift_allocObject();
  v53 = MEMORY[0x1E69E7CC8];
  *(v99 + 16) = MEMORY[0x1E69E7CC8];
  v101 = v35;
  v54 = v35;
  v55 = v98;
  sub_1B6980478(v54, v98, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4();
  v57 = v56;
  v58 = *(v56 + 48);
  v59 = sub_1B6AB8BB0();
  (*(*(v59 - 8) + 56))(v23, 1, 1, v59);
  *&v23[v58] = 0;
  (*(*(v57 - 8) + 56))(v23, 0, 1, v57);
  v60 = v29[8];
  v102 = v29;
  if (v60)
  {
    v61 = type metadata accessor for DisabledSummaryEventManager();
    v62 = swift_allocObject();
    v63 = &off_1F2E7D3E0;
  }

  else
  {
    v64 = v29;
    v65 = v96;
    sub_1B6980478(v64, v96, type metadata accessor for SummaryEventConfiguration);
    v66 = v97;
    sub_1B6980478(v23, v97, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v61 = type metadata accessor for SummaryEventManager();
    v67 = *(v61 + 48);
    v68 = *(v61 + 52);
    v69 = swift_allocObject();
    v62 = sub_1B698A71C(v65, v66, v69);
    v63 = &off_1F2E7C028;
  }

  v109[3] = v61;
  v109[4] = v63;
  v109[0] = v62;
  sub_1B6A0BDA4(v23, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  v70 = type metadata accessor for Tracker(0);
  v71 = *(v70 + 48);
  v72 = *(v70 + 52);
  v73 = swift_allocObject();
  *(v73 + 80) = 0;
  *(v73 + 56) = 0;
  *(v73 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v73 + 112) = v53;
  *(v73 + 120) = v53;
  *(v73 + 128) = v53;
  *(v73 + 136) = v53;
  *(v73 + 144) = v53;
  *(v73 + 160) = v53;
  v74 = MEMORY[0x1E69E7CC0];
  *(v73 + 168) = MEMORY[0x1E69E7CC0];
  *(v73 + 176) = v74;
  *(v73 + 192) = v74;
  *(v73 + 200) = 0;
  v75 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v76 = swift_allocObject();
  v77 = swift_slowAlloc();
  *(v76 + 16) = v77;
  *v77 = 0;
  *(v76 + 24) = 0x10000;
  *(v73 + v75) = v76;
  *(v73 + 16) = xmmword_1B6ABF710;
  *(v73 + 201) = (v106 & 2) != 0;
  v78 = v99;
  *(v73 + 96) = v51;
  *(v73 + 104) = v78;
  *(v73 + 152) = 0;
  *(v73 + 80) = 0;
  *(v73 + 88) = v50;
  swift_unknownObjectWeakAssign();
  *(v73 + 184) = v74;
  *(v73 + 40) = 0;
  *(v73 + 48) = 0;
  v79 = *(v73 + 64);
  *(v73 + 56) = 0;
  *(v73 + 64) = 0;
  v97 = v50;
  v80 = v51;

  v81 = v103;
  *(v73 + 208) = v107;
  *(v73 + 216) = v81;
  sub_1B6980478(v55, v73 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v109, v73 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v73 + 32) = v52;
  swift_unknownObjectRetain();
  v82 = v52;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v83 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v83);

    swift_unknownObjectRelease();

    sub_1B6A0BDA4(v55, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v102, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v101, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1B6A0BDA4(v55, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v102, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v101, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  v39[2] = v73;
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v106;
  v84 = v104;
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v104;
  sub_1B6982544(v110, v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v85 = *(v81 + 8);

  v85(v109, v100, v81);
  v86 = v109[0];
  type metadata accessor for PrivacyValidator();
  v87 = swift_allocObject();
  *(v87 + 16) = v86 != 0;
  if (!v86)
  {
    v86 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v88 = swift_allocObject();
  *(v88 + 16) = v86;
  *(v87 + 24) = v88;
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v87;
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v82;
  *(v39 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v39[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v89 = v82;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v90 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v90);
  }

  *(v39[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v91 = v39[3];
  v93 = *(v91 + 32);
  v92 = *(v91 + 40);
  v94 = swift_allocObject();
  v94[2] = v91;
  v94[3] = v84;
  v94[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v93, sub_1B69916A8, v94);

  sub_1B6A0BDA4(v108, type metadata accessor for SummaryEventConfiguration);
  sub_1B6A0BDA4(v105, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v110);
  return v39;
}

void *sub_1B6A09478(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12)
{
  v103 = a8;
  v104 = a5;
  v105 = a4;
  v102 = a3;
  v107 = a7;
  v108 = a9;
  v15 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v99 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v98 - v19;
  v21 = type metadata accessor for SummaryEventConfiguration(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v98 = &v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v106 = &v98 - v25;
  v26 = type metadata accessor for DiagnosticsConsentProvider(0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v98 - v32;
  v110[3] = a11;
  v110[4] = a12;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v110);
  (*(*(a11 - 8) + 32))(boxed_opaque_existential_1, a6, a11);
  v105 = *v105;
  a10[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  v35 = MEMORY[0x1E69E7CC0];
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
  v36 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  *(a10 + v36) = sub_1B6987EC8(v35);
  v37 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(a10 + v37) = sub_1B69F76A4(v35);
  v38 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(a10 + v38) = sub_1B69F77E8(v35);
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  a10[6] = a1;
  a10[7] = a2;
  a10[8] = v102;
  type metadata accessor for ProcessorManager();
  v39 = swift_allocObject();
  v39[3] = 0;
  swift_unknownObjectWeakInit();
  v39[5] = a2;
  v39[6] = v35;
  v39[4] = a1;
  a10[3] = v39;
  v40 = a1;
  v41 = a2;
  v42 = v40;
  v43 = v41;
  v44 = v42;
  v45 = v33;
  v46 = v44;
  v100 = v43;

  swift_unknownObjectRetain();
  sub_1B6AB8E30();
  v47 = *(v27 + 28);
  v48 = v106;
  v49 = &v33[v47];
  *v49 = sub_1B69A3378;
  *(v49 + 1) = 0;
  sub_1B6980478(v108, v48, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v50 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v51 = swift_allocObject();
  v52 = MEMORY[0x1E69E7CC8];
  *(v51 + 16) = MEMORY[0x1E69E7CC8];
  v101 = v31;
  v102 = v45;
  sub_1B6980478(v45, v31, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4();
  v54 = v53;
  v55 = *(v53 + 48);
  v56 = sub_1B6AB8BB0();
  (*(*(v56 - 8) + 56))(v20, 1, 1, v56);
  *&v20[v55] = 0;
  (*(*(v54 - 8) + 56))(v20, 0, 1, v54);
  if (*(v48 + 8))
  {
    v57 = type metadata accessor for DisabledSummaryEventManager();
    v58 = swift_allocObject();
    v59 = &off_1F2E7D3E0;
  }

  else
  {
    v60 = v48;
    v61 = v98;
    sub_1B6980478(v60, v98, type metadata accessor for SummaryEventConfiguration);
    v62 = v99;
    sub_1B6980478(v20, v99, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v57 = type metadata accessor for SummaryEventManager();
    v63 = *(v57 + 48);
    v64 = *(v57 + 52);
    v65 = swift_allocObject();
    v58 = sub_1B698A71C(v61, v62, v65);
    v59 = &off_1F2E7C028;
  }

  v109[3] = v57;
  v109[4] = v59;
  v109[0] = v58;
  sub_1B6A0BDA4(v20, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  v66 = type metadata accessor for Tracker(0);
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  v69 = swift_allocObject();
  *(v69 + 80) = 0;
  *(v69 + 56) = 0;
  *(v69 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v69 + 112) = v52;
  *(v69 + 120) = v52;
  *(v69 + 128) = v52;
  *(v69 + 136) = v52;
  *(v69 + 144) = v52;
  *(v69 + 160) = v52;
  v70 = MEMORY[0x1E69E7CC0];
  *(v69 + 168) = MEMORY[0x1E69E7CC0];
  *(v69 + 176) = v70;
  *(v69 + 192) = v70;
  *(v69 + 200) = 0;
  v71 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  type metadata accessor for UnfairLock();
  v72 = swift_allocObject();
  v73 = swift_slowAlloc();
  *(v72 + 16) = v73;
  *v73 = 0;
  *(v72 + 24) = 0x10000;
  *(v69 + v71) = v72;
  *(v69 + 16) = xmmword_1B6ABF710;
  *(v69 + 201) = (v105 & 2) != 0;
  v74 = v100;
  *(v69 + 96) = v100;
  *(v69 + 104) = v51;
  *(v69 + 152) = 0;
  *(v69 + 80) = 0;
  *(v69 + 88) = v46;
  swift_unknownObjectWeakAssign();
  *(v69 + 184) = v70;
  *(v69 + 40) = 0;
  *(v69 + 48) = 0;
  v75 = *(v69 + 64);
  *(v69 + 56) = 0;
  *(v69 + 64) = 0;
  v76 = v46;
  v77 = v74;

  v78 = v103;
  *(v69 + 208) = v107;
  *(v69 + 216) = v78;
  v79 = v101;
  sub_1B6980478(v101, v69 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v109, v69 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v69 + 32) = v50;
  swift_unknownObjectRetain();
  v80 = v50;
  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v81 = swift_allocObject();
    v100 = v80;
    v82 = v79;
    v83 = v81;
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v83);

    swift_unknownObjectRelease();

    v84 = v82;
    v80 = v100;
    sub_1B6A0BDA4(v84, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v106, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v102, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  else
  {

    swift_unknownObjectRelease();
    sub_1B6A0BDA4(v79, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6A0BDA4(v106, type metadata accessor for SummaryEventConfiguration);
    sub_1B6A0BDA4(v102, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v109);
  }

  a10[2] = v69;
  v85 = v104;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v105;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v85;
  sub_1B6982544(v110, a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  ObjectType = swift_getObjectType();
  v87 = *(v78 + 8);

  v87(v109, ObjectType, v78);
  v88 = v109[0];
  type metadata accessor for PrivacyValidator();
  v89 = swift_allocObject();
  *(v89 + 16) = v88 != 0;
  if (!v88)
  {
    v88 = MEMORY[0x1E69E7CD0];
  }

  type metadata accessor for DenylistDescriptorMatcher();
  v90 = swift_allocObject();
  *(v90 + 16) = v88;
  *(v89 + 24) = v90;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v89;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v80;
  *(a10 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(a10[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v91 = v80;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v92 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v92);
  }

  *(a10[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v93 = a10[3];
  v95 = *(v93 + 32);
  v94 = *(v93 + 40);
  v96 = swift_allocObject();
  v96[2] = v93;
  v96[3] = v85;
  v96[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v95, sub_1B69916A8, v96);

  sub_1B6A0BDA4(v108, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v110);
  return a10;
}

void *sub_1B6A09EC0(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v27 = a7;
  v28 = a8;
  v25 = a4;
  v26 = a5;
  v16 = *(a11 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](a10);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(v18 + 48);
  v22 = *(v18 + 52);
  v23 = swift_allocObject();
  (*(v16 + 16))(v20, a6, a11);
  return sub_1B6A09478(a1, a2, a3, v25, v26, v20, v27, v28, a9, v23, a11, a12);
}

void *sub_1B6A09FE8(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v29 = a7;
  v30 = a8;
  v27 = a4;
  v28 = a5;
  v26 = a9;
  v17 = *(a12 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](a11);
  v21 = &v26 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v19 + 48);
  v23 = *(v19 + 52);
  v24 = swift_allocObject();
  (*(v17 + 16))(v21, a6, a12);
  return sub_1B69916AC(a1, a2, a3, v27, v28, v21, v29, v30, v26, *(&v26 + 1), a10, v24, a12, a13);
}

uint64_t sub_1B6A0A120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B69D1460;

  return sub_1B69FDB84(a1, v4, v5, v6);
}

uint64_t sub_1B6A0A1D4(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1B69C2E8C(a1, a2);
  }

  return a1;
}

uint64_t objectdestroy_12Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(v0 + 16);

  if (*(v0 + 32) >= 3uLL)
  {
  }

  v6 = (v3 + 73) & ~v3;
  v7 = *(v0 + 48);

  (*(v2 + 8))(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v4, v3 | 7);
}

uint64_t sub_1B6A0A2C8()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return sub_1B6A03820(v3, v0 + v2, v5, v6);
}

uint64_t sub_1B6A0A35C()
{
  v1 = *(sub_1B6AB8DB0() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1B6A047EC(v3, v0 + v2, v4);
}

uint64_t sub_1B6A0A3EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1B69AD75C;

  return sub_1B6A0521C(a1, v4, v5, v7, v6);
}

unint64_t sub_1B6A0A4B0()
{
  result = qword_1EB95B4B0;
  if (!qword_1EB95B4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B4B0);
  }

  return result;
}

unint64_t sub_1B6A0A508()
{
  result = qword_1EB95B4B8;
  if (!qword_1EB95B4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B4B8);
  }

  return result;
}

uint64_t objectdestroy_9Tm()
{
  v1 = *(v0 + 16);

  if (*(v0 + 32))
  {
    v2 = *(v0 + 40);
  }

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B6A0A674(uint64_t a1, unint64_t *a2)
{
  sub_1B69809F4(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1B6A0A72C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2[2] + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator);
  if (*(v3 + 16) == 1)
  {
    v4 = v2[3];
    v5 = v2[4];
    v6 = *(v3 + 24);
    return !sub_1B69C2C38(0x6E6F697373655324, 0xEC00000061746144, v4, v5, a1, a2);
  }

  else
  {
    return 1;
  }
}

void sub_1B6A0A7A4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1B697ED90(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B6A0A80C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1();
  }

  return result;
}

uint64_t sub_1B6A0A858(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1B6A0A8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1B6A0A92C(uint64_t a1, uint64_t a2)
{
  v4[1] = *(v2 + 16);
  v5 = a1;
  v6 = a2;
  return sub_1B69AC2BC(sub_1B6A0A99C, v4);
}

uint64_t sub_1B6A0A9D4(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_1B6A0AA04(uint64_t a1, uint64_t a2)
{
  sub_1B699332C(0, qword_1EDBC8F98, type metadata accessor for AppSessionManager, type metadata accessor for Weak);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B6A0AAAC()
{
  if (!qword_1EB95ADF8)
  {
    sub_1B697E288();
    sub_1B69809F4(255, &qword_1EB95ADF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95ADF8);
    }
  }
}

uint64_t sub_1B6A0AB30(uint64_t a1, uint64_t a2)
{
  sub_1B69809F4(0, &qword_1EB95ADF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A0ABA4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_90Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  if (v0[7])
  {
    v4 = v0[8];
  }

  v5 = v0[10];

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1B6A0ACBC(uint64_t a1)
{
  v4 = *(v1 + 24);
  v16 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B69D1460;

  return sub_1B6A007B0(a1, v16, v4, v5, v6, v7, v8, v9);
}

void sub_1B6A0ADCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1B699332C(255, &qword_1EB95B4C8, sub_1B698148C, MEMORY[0x1E69E8698]);
    v7 = v6;
    v8 = sub_1B6A0B55C(&qword_1EB95B4D0, &qword_1EB95B4C8, sub_1B698148C);
    v9 = a3(a1, v7, &type metadata for EssentialUserData, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1B6A0AE90(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B6A0ADCC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B6A0AED4(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B6A0B6F8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6A0AF30()
{
  if (!qword_1EB95B4F0)
  {
    sub_1B6A0B6F8(255, &qword_1EB95AED0, sub_1B69E8B54);
    sub_1B6A0AED4(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54);
    v0 = type metadata accessor for PushEvent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B4F0);
    }
  }
}

uint64_t sub_1B6A0B03C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1B6A0B0A4()
{
  if (!qword_1EB95B4F8)
  {
    sub_1B69809F4(255, &qword_1EB95ADF0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB95B4F8);
    }
  }
}

uint64_t objectdestroy_112Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[11];

  return MEMORY[0x1EEE6BDD0](v0, 104, 7);
}

uint64_t objectdestroy_105Tm()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  v2 = v0[4];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  if (v0[10])
  {
    v6 = v0[11];
  }

  v7 = v0[13];

  return MEMORY[0x1EEE6BDD0](v0, 120, 7);
}

uint64_t sub_1B6A0B268(uint64_t a1)
{
  v4 = *(v1 + 24);
  v16 = *(v1 + 16);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v9 = *(v1 + 64);
  v14 = *(v1 + 88);
  v15 = *(v1 + 72);
  v11 = *(v1 + 104);
  v10 = *(v1 + 112);
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1B69AD75C;

  return sub_1B69FE738(a1, v16, v4, v5, v6, v7, v8, v9);
}

void sub_1B6A0B398()
{
  if (!qword_1EB95B518)
  {
    v0 = MEMORY[0x1E69E8698];
    sub_1B699332C(255, &qword_1EB95B4C8, sub_1B698148C, MEMORY[0x1E69E8698]);
    sub_1B699332C(255, &qword_1EB95B520, sub_1B69827CC, v0);
    sub_1B6A0B4EC(255, &qword_1EB95B528, MEMORY[0x1E69E8698]);
    sub_1B6A0B55C(&qword_1EB95B4D0, &qword_1EB95B4C8, sub_1B698148C);
    sub_1B6A0B55C(&qword_1EB95B530, &qword_1EB95B520, sub_1B69827CC);
    sub_1B6A0B5C0();
    v1 = type metadata accessor for AsyncCombineLatest3Sequence();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB95B518);
    }
  }
}

void sub_1B6A0B4EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1B69809F4(255, &qword_1EDBCAA50);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A0B55C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1B699332C(255, a2, a3, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6A0B5C0()
{
  result = qword_1EB95B538;
  if (!qword_1EB95B538)
  {
    sub_1B6A0B4EC(255, &qword_1EB95B528, MEMORY[0x1E69E8698]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B538);
  }

  return result;
}

void sub_1B6A0B654(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    sub_1B6A0B398();
    v7 = v6;
    v8 = sub_1B69822F4(&qword_1EB95B540, sub_1B6A0B398);
    v9 = a3(a1, v7, &type metadata for AppAnalyticsUserData, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B6A0B6F8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SessionData();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6A0B7C0()
{
  if (!qword_1EB95B560)
  {
    sub_1B6A0B6F8(255, &qword_1EB95AF00, sub_1B69E8D48);
    sub_1B6A0AED4(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48);
    v0 = type metadata accessor for PushEvent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B560);
    }
  }
}

uint64_t objectdestroy_144Tm()
{
  v1 = v0[2];

  v2 = v0[4];

  v3 = v0[6];

  v4 = v0[8];

  v5 = v0[16];

  v6 = v0[20];

  v7 = v0[23];

  return MEMORY[0x1EEE6BDD0](v0, 200, 7);
}

uint64_t sub_1B6A0B96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = *(v5 + 16);
  v12 = *(v5 + 24);
  v14 = swift_task_alloc();
  *(v6 + 16) = v14;
  *v14 = v6;
  v14[1] = sub_1B69D1460;

  return sub_1B6A81DBC(a1, a2, a3, a4, a5, v13, v12);
}

uint64_t sub_1B6A0BA48(uint64_t a1, uint64_t *a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1B69D1460;

  return sub_1B6A06E90(a1, a2, v7);
}

void sub_1B6A0BB10()
{
  if (!qword_1EB95B568)
  {
    sub_1B698148C();
    sub_1B69827CC(255);
    sub_1B69809F4(255, &qword_1EDBCAA50);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB95B568);
    }
  }
}

uint64_t objectdestroy_133Tm()
{
  v1 = sub_1B6AB8E40();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1B6A0BCD4(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1B6AB8E40() - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1B6A0BD94(uint64_t a1, unint64_t a2)
{
  if (a2 != 3)
  {
    return sub_1B6992E2C(a1, a2);
  }

  return a1;
}

uint64_t sub_1B6A0BDA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B6A0BE54(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A0BE90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B6A0BF28(void *a1, uint64_t a2)
{
  sub_1B6A0C50C(0, &qword_1EB95B5B8, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v12 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A0C404();
  sub_1B6ABA2D0();
  v12[1] = a2;
  sub_1B6A0C458();
  sub_1B6A0C570(&qword_1EB95B5C0, sub_1B6A0C5E8);
  sub_1B6ABA040();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B6A0C0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x615473746E657665 && a2 == 0xEB00000000656C62)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B6ABA0F0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B6A0C16C(uint64_t a1)
{
  v2 = sub_1B6A0C404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A0C1A8(uint64_t a1)
{
  v2 = sub_1B6A0C404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B6A0C1E4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B6A0C22C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B6A0C22C(uint64_t *a1)
{
  sub_1B6A0C50C(0, &qword_1EB95B590, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v12 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A0C404();
  sub_1B6ABA2A0();
  if (!v1)
  {
    sub_1B6A0C458();
    sub_1B6A0C570(&qword_1EB95B5A8, sub_1B6A0C4B8);
    sub_1B6AB9F90();
    (*(v5 + 8))(v8, v4);
    v10 = v12[1];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

unint64_t sub_1B6A0C404()
{
  result = qword_1EB95B598;
  if (!qword_1EB95B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B598);
  }

  return result;
}

void sub_1B6A0C458()
{
  if (!qword_1EB95B5A0)
  {
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B5A0);
    }
  }
}

unint64_t sub_1B6A0C4B8()
{
  result = qword_1EB95B5B0;
  if (!qword_1EB95B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5B0);
  }

  return result;
}

void sub_1B6A0C50C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A0C404();
    v7 = a3(a1, &type metadata for SummaryEventDatabase.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A0C570(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B6A0C458();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6A0C5E8()
{
  result = qword_1EB95B5C8;
  if (!qword_1EB95B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5C8);
  }

  return result;
}

unint64_t sub_1B6A0C650()
{
  result = qword_1EB95B5D0;
  if (!qword_1EB95B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5D0);
  }

  return result;
}

unint64_t sub_1B6A0C6A8()
{
  result = qword_1EB95B5D8;
  if (!qword_1EB95B5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5D8);
  }

  return result;
}

unint64_t sub_1B6A0C700()
{
  result = qword_1EB95B5E0;
  if (!qword_1EB95B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B5E0);
  }

  return result;
}

uint64_t BridgedProcessEvent.name.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAProcessEvent_name);
  v2 = *(v0 + OBJC_IVAR___AAProcessEvent_name + 8);

  return v1;
}

uint64_t BridgedProcessEvent.version.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAProcessEvent_version);
  v2 = *(v0 + OBJC_IVAR___AAProcessEvent_version + 8);

  return v1;
}

uint64_t BridgedProcessEvent.groupName.getter()
{
  v1 = *(v0 + OBJC_IVAR___AAProcessEvent_groupName);
  v2 = *(v0 + OBJC_IVAR___AAProcessEvent_groupName + 8);

  return v1;
}

id BridgedProcessEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedProcessEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedProcessEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id BridgedUploadBatchEventProcessor.__allocating_init(client:endpoint:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  if (qword_1EDBCB790 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBCB798;
  v8 = sub_1B6986A58(a1, a2, 0, v7);

  v9 = &v6[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v6;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.init(client:endpoint:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if (qword_1EDBCB790 != -1)
  {
    swift_once();
  }

  v7 = qword_1EDBCB798;
  v8 = sub_1B6986A58(a1, a2, 0, v7);

  v9 = &v3[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.__allocating_init(client:endpoint:config:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B6986A58(a1, a2, 0, a3);
  v9 = &v7[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v7;
  v12.super_class = v3;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.init(client:endpoint:config:)(void *a1, void *a2, void *a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1B6986A58(a1, a2, 0, a3);
  v9 = &v3[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v9 = v8;
  v9[1] = &protocol witness table for UploadBatchEventProcessor;
  v12.receiver = v3;
  v12.super_class = ObjectType;
  v10 = objc_msgSendSuper2(&v12, sel_init);

  swift_unknownObjectRelease();
  return v10;
}

id BridgedUploadBatchEventProcessor.__allocating_init(client:endpoint:contentType:config:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = sub_1B6986A58(a1, a2, a3, a4);
  v11 = &v9[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v11 = v10;
  v11[1] = &protocol witness table for UploadBatchEventProcessor;
  v14.receiver = v9;
  v14.super_class = v4;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_unknownObjectRelease();
  return v12;
}

id BridgedUploadBatchEventProcessor.init(client:endpoint:contentType:config:)(void *a1, void *a2, uint64_t a3, void *a4)
{
  ObjectType = swift_getObjectType();
  v10 = sub_1B6986A58(a1, a2, a3, a4);
  v11 = &v4[OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor];
  *v11 = v10;
  v11[1] = &protocol witness table for UploadBatchEventProcessor;
  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  swift_unknownObjectRelease();
  return v12;
}

id BridgedUploadBatchEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedUploadBatchEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A0D2AC()
{
  v1 = (*v0 + OBJC_IVAR___AAUploadBatchEventProcessor_proxyEventProcessor);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

uint64_t get_enum_tag_for_layout_string_12AppAnalytics14DataEventErrorO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B6A0D37C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 5;
  if (v4 >= 7)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A0D3D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = 0;
    *result = a2 - 2147483642;
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFA)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 5;
    }
  }

  return result;
}

unint64_t BridgedLoggingEventProcessorFormat.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1B6A0D448@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

id BridgingLoggingEventProcessor.__allocating_init(format:subsystem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(v4);
  switch(a1)
  {
    case 2:
      *&v13[0] = 1;
      goto LABEL_5;
    case 1:
      *&v13[0] = 0;
LABEL_5:
      v15 = 0;
LABEL_8:
      type metadata accessor for LoggingEventProcessor();
      swift_allocObject();
      v9 = LoggingEventProcessor.init(logFormat:subsystem:)(v13, a2, a3);
      v10 = &v8[OBJC_IVAR___AALoggingEventProcessor_proxyEventProcessor];
      *v10 = v9;
      v10[1] = &protocol witness table for LoggingEventProcessor;
      v12.receiver = v8;
      v12.super_class = v4;
      return objc_msgSendSuper2(&v12, sel_init);
    case 0:
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v15 = 2;
      goto LABEL_8;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

id BridgingLoggingEventProcessor.init(format:subsystem:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  switch(a1)
  {
    case 2:
      *&v13[0] = 1;
      goto LABEL_5;
    case 1:
      *&v13[0] = 0;
LABEL_5:
      v15 = 0;
LABEL_8:
      type metadata accessor for LoggingEventProcessor();
      swift_allocObject();
      v9 = LoggingEventProcessor.init(logFormat:subsystem:)(v13, a2, a3);
      v10 = &v4[OBJC_IVAR___AALoggingEventProcessor_proxyEventProcessor];
      *v10 = v9;
      v10[1] = &protocol witness table for LoggingEventProcessor;
      v12.receiver = v4;
      v12.super_class = ObjectType;
      return objc_msgSendSuper2(&v12, sel_init);
    case 0:
      v14 = 0;
      memset(v13, 0, sizeof(v13));
      v15 = 2;
      goto LABEL_8;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

id BridgingLoggingEventProcessor.__allocating_init(format:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithFormat:a1 subsystem:0];
}

id BridgingLoggingEventProcessor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgingLoggingEventProcessor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A0D8CC()
{
  v1 = (*v0 + OBJC_IVAR___AALoggingEventProcessor_proxyEventProcessor);
  v2 = *v1;
  v3 = v1[1];
  return swift_unknownObjectRetain();
}

unint64_t sub_1B6A0D908()
{
  result = qword_1EB95B618;
  if (!qword_1EB95B618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B618);
  }

  return result;
}

uint64_t sub_1B6A0D9BC(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v12 = a1[1];
  v13 = *a1;
  v11 = a1[2];
  v6 = *(a1 + 6);
  v7 = *(a3 + 8);
  v14 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 64) = v6;
  *(v3 + 72) = v9;
  *(v3 + 16) = v13;
  *(v3 + 32) = v12;
  *(v3 + 48) = v11;
  *v9 = v3;
  v9[1] = sub_1B6A0DB0C;

  return v14(v3 + 16, a2, a3);
}

uint64_t sub_1B6A0DB0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 72);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

void sub_1B6A0DC34(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1B6A10E30(0, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20[-v9];
  v11 = *(*v2 + 104);
  v12 = *(v2 + v11);
  v13 = *(v12 + 16);
  v14 = *(v12 + 24);
  os_unfair_lock_lock_with_options();
  v15 = *(*v2 + 96);
  swift_beginAccess();
  sub_1B6A110C0(v2 + v15, v10);
  v16 = type metadata accessor for UploadDropbox.Debugging(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    v18 = sub_1B6A11140(v10, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
    v19 = *(v2 + 24);
    (*(v2 + 16))(v18);
    sub_1B6A1119C(a1, v8);
    (*(v17 + 56))(v8, 0, 1, v16);
    swift_beginAccess();
    sub_1B6A11200(v8, v2 + v15);
    swift_endAccess();
  }

  else
  {
    sub_1B6A11280(v10, a1);
  }

  os_unfair_lock_unlock(*(*(v2 + v11) + 16));
}

uint64_t sub_1B6A0DE50(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[16] = v2;
  v4[17] = a1;
  v4[18] = a2;
  v5 = v3[25];
  v7 = *v2;

  return MEMORY[0x1EEE6DFA0](sub_1B6A0DF54, 0, 0);
}

uint64_t sub_1B6A0DF54()
{
  v16 = v0;
  v1 = v0[11].i64[1];
  v2 = v0[12].i64[0];
  v3 = v0[11].i64[0];
  sub_1B69BEB24(v3, &v0[4].i64[1]);
  v4 = sub_1B6AB8F80();
  v5 = sub_1B6AB9900();
  sub_1B69BEDA0(v3);
  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[11].i64[0];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_1B698F63C(*v6, *(v6 + 8), &v15);
    _os_log_impl(&dword_1B697C000, v4, v5, "Upload service did sign data for upload, identifier=%s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8C99550](v8, -1, -1);
    MEMORY[0x1B8C99550](v7, -1, -1);
  }

  v9 = v0[8].i64[1];
  v10 = v0[9].i64[0];
  v0[13].i64[0] = v10;
  v11 = swift_task_alloc();
  v0[13].i64[1] = v11;
  v11[1] = vextq_s8(v0[11], v0[11], 8uLL);
  v11[2].i64[0] = v9;
  v11[2].i64[1] = v10;
  v12 = *(MEMORY[0x1E69E88D0] + 4);
  v13 = swift_task_alloc();
  v0[14].i64[0] = v13;
  *v13 = v0;
  v13[1] = sub_1B6A0E138;

  return MEMORY[0x1EEE6DDE0](&v0[9].u64[1], 0, 0, 0xD000000000000010, 0x80000001B6ACA1C0, sub_1B6A10CDC, v11, &type metadata for UploadResult);
}

uint64_t sub_1B6A0E138()
{
  v1 = *(*v0 + 224);
  v2 = *(*v0 + 216);
  v3 = *(*v0 + 208);
  v5 = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B6A0E26C, 0, 0);
}

uint64_t sub_1B6A0E288()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 120) = v0;

  if (!v0)
  {
    v4 = *(v3 + 8);

    __asm { BRAA            X3, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B6A0E3D8, 0, 0);
}

uint64_t sub_1B6A0E3D8()
{
  v21 = v0;
  v1 = v0[15];
  v2 = v0[13];
  sub_1B69BEB24(v2, (v0 + 2));
  v3 = v1;
  v4 = sub_1B6AB8F80();
  v5 = sub_1B6AB98E0();
  sub_1B69BEDA0(v2);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[15];
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_1B698F63C(*v7, *(v7 + 8), &v19);
    *(v8 + 12) = 2112;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_1B697C000, v4, v5, "Upload service failed to sign data for upload; fallback to no signature, identifier=%s, error=%@", v8, 0x16u);
    sub_1B6A11140(v9, &qword_1EDBC8E08, sub_1B6A10F98);
    MEMORY[0x1B8C99550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1B8C99550](v10, -1, -1);
    MEMORY[0x1B8C99550](v8, -1, -1);
  }

  v13 = v0[15];
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_1B6AB9CA0();
  v14 = v20;
  v0[9] = v19;
  v0[10] = v14;
  MEMORY[0x1B8C97BE0](0x46676E696E676953, 0xEF3D6572756C6961);
  v0[11] = v13;
  sub_1B697ED90(0, &qword_1EDBCBB00);
  sub_1B6AB9DF0();

  v15 = v0[9];
  v16 = v0[10];
  v17 = v0[1];

  return v17(v15, v16);
}

uint64_t sub_1B6A0E638(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1B6A10D48();
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  v13 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v14 = swift_allocObject();
  (*(v11 + 32))(v14 + v13, &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  sub_1B6A0E7DC(a3, a4, a5, sub_1B6A10DA8, v14);
}

uint64_t sub_1B6A0E794(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1B6A110A8(a1, a2, a3);
  sub_1B6A10D48();
  return sub_1B6AB95F0();
}

uint64_t sub_1B6A0E7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v6 = v5;
  v93 = a4;
  v94 = a5;
  v88 = a3;
  v87 = a2;
  v86 = *v5;
  v96 = sub_1B6AB8810();
  v90 = *(v96 - 8);
  v8 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v96);
  v89 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A10E30(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v14 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v77 - v15;
  v17 = sub_1B6AB8BB0();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v77 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v77 - v23;
  v25 = v5[2];
  v95 = a1;
  v26 = a1[6];
  sub_1B6A9ACCC(v26, v16);
  v27 = *(v18 + 48);
  if (v27(v16, 1, v17) == 1)
  {
    sub_1B6A11140(v16, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
    return v93(v26, 0, 3);
  }

  else
  {
    v85 = 7104878;
    (*(v18 + 32))(v24, v16, v17);
    v80 = v6[3];
    v92 = v6;
    v79 = v6[4];
    v91 = swift_allocBox();
    v30 = v29;
    v31 = *(v18 + 16);
    v82 = v24;
    v77 = v31;
    v31(v22, v24, v17);
    sub_1B6AB87D0();
    v78 = v27;
    sub_1B6AB8790();
    v103[0] = sub_1B69FAAFC(v26);
    v103[1] = v32;
    MEMORY[0x1B8C97BE0](0x6F6973726576203BLL, 0xEA00000000003D6ELL);
    v33 = *(v86 + 88);
    v34 = *(v33 + 8);
    v86 = *(v86 + 80);
    v81 = v33;
    v35 = v34();
    MEMORY[0x1B8C97BE0](v35);

    sub_1B6AB8800();

    v36 = v95;
    v37 = v95[4];
    v38 = v95[5];
    sub_1B6AB8800();
    sub_1B6AB8800();
    sub_1B6AB8800();
    sub_1B6AB87E0();
    if (v78(v14, 1, v17))
    {
      sub_1B6A11140(v14, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
      v39 = 0xE300000000000000;
      v87 = 7104878;
    }

    else
    {
      v77(v22, v14, v17);
      sub_1B6A11140(v14, &qword_1EDBCCC40, MEMORY[0x1E6968FB0]);
      v87 = sub_1B6AB8AA0();
      v39 = v40;
      (*(v18 + 8))(v22, v17);
    }

    if (sub_1B6AB87B0())
    {
      v85 = sub_1B6AB9220();
      v42 = v41;
    }

    else
    {
      v42 = 0xE300000000000000;
    }

    v43 = qword_1EDBCAD28;
    sub_1B69BEB24(v36, v103);

    v44 = v92;
    v88 = v43;
    v45 = sub_1B6AB8F80();
    v46 = sub_1B6AB9900();
    sub_1B69BEDA0(v36);

    v47 = os_log_type_enabled(v45, v46);
    v84 = v17;
    v83 = v18;
    if (v47)
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v103[0] = v49;
      *v48 = 136315650;
      *(v48 + 4) = sub_1B698F63C(*v95, v95[1], v103);
      *(v48 + 12) = 2080;
      v50 = sub_1B698F63C(v87, v39, v103);

      *(v48 + 14) = v50;
      *(v48 + 22) = 2080;
      v51 = sub_1B698F63C(v85, v42, v103);

      *(v48 + 24) = v51;
      _os_log_impl(&dword_1B697C000, v45, v46, "Upload service sending upload request, identifier=%s, url=%s, headers=%s", v48, 0x20u);
      swift_arrayDestroy();
      v44 = v92;
      MEMORY[0x1B8C99550](v49, -1, -1);
      v52 = v48;
      v36 = v95;
      MEMORY[0x1B8C99550](v52, -1, -1);
    }

    else
    {
    }

    v53 = v44[16];
    sub_1B69ADE38(v97);
    v54 = v99;
    v95 = v98;
    v87 = __swift_project_boxed_opaque_existential_1(v97, v98);
    v55 = v90;
    v56 = v89;
    (*(v90 + 16))(v89, v30, v96);
    v57 = *(v36 + 24);
    v85 = *(v36 + 16);
    v80 = v57;
    v58 = swift_allocObject();
    swift_weakInit();
    v59 = swift_allocObject();
    v60 = *(v36 + 16);
    *(v59 + 56) = *v36;
    v61 = v81;
    *(v59 + 16) = v86;
    *(v59 + 24) = v61;
    v62 = v93;
    v63 = v94;
    *(v59 + 32) = v58;
    *(v59 + 40) = v62;
    *(v59 + 48) = v63;
    *(v59 + 72) = v60;
    *(v59 + 88) = *(v36 + 32);
    v64 = v91;
    *(v59 + 104) = *(v36 + 48);
    *(v59 + 112) = v64;
    v65 = *(v54 + 8);
    sub_1B69BEB24(v36, v103);

    v65(v100, v56, v85, v80, sub_1B6A10E84, v59, v95, v54);

    (*(v55 + 8))(v56, v96);

    __swift_destroy_boxed_opaque_existential_1(v97);
    v66 = *v36;
    v67 = *(v36 + 8);
    v68 = v101;
    v69 = v102;
    __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
    v70 = *(v69 + 16);

    v70(v66, v67, v68, v69);
    v71 = v101;
    v72 = v102;
    __swift_project_boxed_opaque_existential_1(v100, v101);
    (*(v72 + 32))(v71, v72);
    sub_1B69BEB24(v36, v103);
    v73 = sub_1B6AB8F80();
    v74 = sub_1B6AB9900();
    sub_1B69BEDA0(v36);
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v103[0] = v76;
      *v75 = 136315138;
      *(v75 + 4) = sub_1B698F63C(v66, v67, v103);
      _os_log_impl(&dword_1B697C000, v73, v74, "Upload task submitted, identifier=%s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v76);
      MEMORY[0x1B8C99550](v76, -1, -1);
      MEMORY[0x1B8C99550](v75, -1, -1);
    }

    (*(v83 + 8))(v82, v84);
    __swift_destroy_boxed_opaque_existential_1(v100);
  }
}

uint64_t sub_1B6A0F254(uint64_t a1, unint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a6;
  v13 = sub_1B6AB8810();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_projectBox();
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return v26(2, 0, 4);
  }

  swift_beginAccess();
  (*(v14 + 16))(v17, v18, v13);
  v19 = sub_1B6A0F424(a8, v17, a3, a1, a2, a4);
  v21 = v20;
  v23 = v22;
  (*(v14 + 8))(v17, v13);
  v26(v19, v21, v23);
  sub_1B69F8F30(v19, v21, v23);
}

uint64_t sub_1B6A0F424(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, unint64_t a5, void *a6)
{
  v147 = a1;
  v11 = sub_1B6AB8810();
  v12 = *(v11 - 8);
  isa = v12[8].isa;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v141 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v141 - v17;
  v19 = sub_1B6AB9320();
  v20 = *(*(v19 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v19 - 8);
  if (!a6)
  {
    v141 = v16;
    v142 = v18;
    v143 = v12;
    v144 = v11;
    if (!a3)
    {
      __break(1u);
      return result;
    }

    objc_opt_self();
    v42 = swift_dynamicCastObjCClassUnconditional();
    v145 = a3;
    v146 = [v42 statusCode];
    v43 = v42;
    v44 = [v42 allHeaderFields];
    v45 = sub_1B6AB9210();

    v46 = sub_1B6A10818(v45);

    v47 = v147;
    if (!v46)
    {
      sub_1B69A7EF8(MEMORY[0x1E69E7CC0]);
    }

    v48 = v43;
    v49 = [v43 statusCode];
    if ((v49 - 200) <= 0x63)
    {
      sub_1B69BEB24(v47, &v150);
      v50 = v145;

      v51 = sub_1B6AB8F80();
      v52 = sub_1B6AB9900();
      sub_1B69BEDA0(v47);

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v150 = v54;
        *v53 = 136315650;
        *(v53 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
        *(v53 + 12) = 2048;
        *(v53 + 14) = [v48 statusCode];

        *(v53 + 22) = 2080;

        v55 = v146;
        v56 = sub_1B69F8378();
        v58 = v57;

        v59 = sub_1B698F63C(v56, v58, &v150);

        *(v53 + 24) = v59;
        _os_log_impl(&dword_1B697C000, v51, v52, "Upload completed successfully, identifier=%s, status=%ld, uploadResponse=%s", v53, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C99550](v54, -1, -1);
        MEMORY[0x1B8C99550](v53, -1, -1);

        return v55;
      }

      else
      {

        return v146;
      }
    }

    switch(v49)
    {
      case 429:
        sub_1B69BEB24(v47, &v150);
        v69 = v145;

        v70 = sub_1B6AB8F80();
        v71 = sub_1B6AB98E0();
        sub_1B69BEDA0(v47);

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v150 = v73;
          *v72 = 136315650;
          *(v72 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
          *(v72 + 12) = 2048;
          *(v72 + 14) = [v48 statusCode];

          *(v72 + 22) = 2080;

          v74 = v146;
          v87 = sub_1B69F8378();
          v89 = v88;

          v90 = sub_1B698F63C(v87, v89, &v150);

          *(v72 + 24) = v90;
          v79 = "Upload HTTP too many requests, and will retry, identifier=%s, status=%ld, uploadResponse=%s";
          goto LABEL_37;
        }

        break;
      case 408:
        sub_1B69BEB24(v47, &v150);
        v69 = v145;

        v70 = sub_1B6AB8F80();
        v71 = sub_1B6AB98E0();
        sub_1B69BEDA0(v47);

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v150 = v73;
          *v72 = 136315650;
          *(v72 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
          *(v72 + 12) = 2048;
          *(v72 + 14) = [v48 statusCode];

          *(v72 + 22) = 2080;

          v74 = v146;
          v83 = sub_1B69F8378();
          v85 = v84;

          v86 = sub_1B698F63C(v83, v85, &v150);

          *(v72 + 24) = v86;
          v79 = "Upload HTTP timeout, and will retry, identifier=%s, status=%ld, uploadResponse=%s";
          goto LABEL_37;
        }

        break;
      case 401:
        sub_1B69BEB24(v47, &v150);
        v69 = v145;

        v70 = sub_1B6AB8F80();
        v71 = sub_1B6AB98E0();
        sub_1B69BEDA0(v47);

        if (os_log_type_enabled(v70, v71))
        {
          v72 = swift_slowAlloc();
          v73 = swift_slowAlloc();
          v150 = v73;
          *v72 = 136315650;
          *(v72 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
          *(v72 + 12) = 2048;
          *(v72 + 14) = [v48 statusCode];

          *(v72 + 22) = 2080;

          v74 = v146;
          v75 = sub_1B69F8378();
          v77 = v76;

          v78 = sub_1B698F63C(v75, v77, &v150);

          *(v72 + 24) = v78;
          v79 = "Upload HTTP failed authorization, and will retry, identifier=%s, status=%ld, uploadResponse=%s";
LABEL_37:
          _os_log_impl(&dword_1B697C000, v70, v71, v79, v72, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1B8C99550](v73, -1, -1);
          MEMORY[0x1B8C99550](v72, -1, -1);

          return v74;
        }

        break;
      default:
        if ((v49 - 430) < 0x46 || (v49 & 0xFFFFFFFFFFFFFFF8) == 0x190 || (v49 - 409) <= 0x13)
        {
          v93 = v144;
          if (a5 >> 60 == 15)
          {
            v141 = 0;
            v94 = 0xE000000000000000;
          }

          else
          {
            v98 = a5;
            sub_1B6994494(a4, a5);
            sub_1B6AB9310();
            v150 = sub_1B6AB92F0();
            v151 = v99;
            sub_1B697EF74();
            v141 = sub_1B6AB9B20();
            v94 = v100;
            sub_1B69AE288(a4, v98);
          }

          v102 = v142;
          v101 = v143;
          (v143[2].isa)(v142, a2, v93);
          sub_1B69BEB24(v47, &v150);
          v103 = v145;

          v104 = sub_1B6AB8F80();
          v105 = sub_1B6AB98F0();
          sub_1B69BEDA0(v47);

          if (os_log_type_enabled(v104, v105))
          {
            v106 = swift_slowAlloc();
            LODWORD(v145) = v105;
            v107 = v48;
            v108 = v106;
            v148 = swift_slowAlloc();
            v150 = v148;
            *v108 = 136316162;
            *(v108 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
            *(v108 + 12) = 2048;
            *(v108 + 14) = [v107 statusCode];

            *(v108 + 22) = 2080;
            v149 = sub_1B6AB87B0();
            sub_1B69BCBE8(0, qword_1EDBC7B70, &qword_1EDBCB668, MEMORY[0x1E69E5E28], sub_1B6A10F34);
            v109 = sub_1B6AB9B20();
            v111 = v110;
            (v101[1].isa)(v102, v144);

            v112 = sub_1B698F63C(v109, v111, &v150);

            *(v108 + 24) = v112;
            *(v108 + 32) = 2080;

            v113 = sub_1B69F8378();
            v115 = v114;

            v116 = sub_1B698F63C(v113, v115, &v150);

            *(v108 + 34) = v116;
            *(v108 + 42) = 2080;
            v117 = sub_1B698F63C(v141, v94, &v150);

            *(v108 + 44) = v117;
            _os_log_impl(&dword_1B697C000, v104, v145, "Upload HTTP failed and won't retry, identifier=%s, status=%ld, headers=%s, uploadResponse=%s, body=%s", v108, 0x34u);
            v118 = v148;
            swift_arrayDestroy();
            MEMORY[0x1B8C99550](v118, -1, -1);
            MEMORY[0x1B8C99550](v108, -1, -1);
          }

          else
          {

            (v101[1].isa)(v102, v144);
          }

          return v146;
        }

        v91 = v144;
        if (v49 < 500)
        {
          if (a5 >> 60 == 15)
          {
            v142 = 0;
            v92 = 0xE000000000000000;
          }

          else
          {
            sub_1B6994494(a4, a5);
            sub_1B6AB9310();
            v150 = sub_1B6AB92F0();
            v151 = v119;
            sub_1B697EF74();
            v142 = sub_1B6AB9B20();
            v92 = v120;
            sub_1B69AE288(a4, a5);
          }

          v121 = v143;
          v122 = v141;
          (v143[2].isa)(v141, a2, v91);
          sub_1B69BEB24(v47, &v150);
          v123 = v145;

          v124 = sub_1B6AB8F80();
          v125 = sub_1B6AB98F0();
          sub_1B69BEDA0(v47);

          if (os_log_type_enabled(v124, v125))
          {
            v126 = swift_slowAlloc();
            v145 = v124;
            v127 = v48;
            v128 = v126;
            v148 = swift_slowAlloc();
            v150 = v148;
            *v128 = 136316162;
            *(v128 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
            *(v128 + 12) = 2048;
            *(v128 + 14) = [v127 statusCode];
            v143 = v123;

            *(v128 + 22) = 2080;
            v149 = sub_1B6AB87B0();
            sub_1B69BCBE8(0, qword_1EDBC7B70, &qword_1EDBCB668, MEMORY[0x1E69E5E28], sub_1B6A10F34);
            v129 = sub_1B6AB9B20();
            v130 = v125;
            v132 = v131;
            (v121[1].isa)(v122, v91);

            v133 = sub_1B698F63C(v129, v132, &v150);

            *(v128 + 24) = v133;
            *(v128 + 32) = 2080;

            v134 = sub_1B69F8378();
            v136 = v135;

            v137 = sub_1B698F63C(v134, v136, &v150);

            *(v128 + 34) = v137;
            *(v128 + 42) = 2080;
            v138 = sub_1B698F63C(v142, v92, &v150);

            *(v128 + 44) = v138;
            v139 = v145;
            _os_log_impl(&dword_1B697C000, v145, v130, "Upload HTTP failed and unhandled. No retry, identifier=%s, status=%ld, headers=%s, uploadResponse=%s, body=%s", v128, 0x34u);
            v140 = v148;
            swift_arrayDestroy();
            MEMORY[0x1B8C99550](v140, -1, -1);
            MEMORY[0x1B8C99550](v128, -1, -1);
          }

          else
          {

            (v121[1].isa)(v122, v91);
          }

          return v146;
        }

        sub_1B69BEB24(v47, &v150);
        v69 = v145;
        v70 = sub_1B6AB8F80();
        v95 = sub_1B6AB98E0();
        sub_1B69BEDA0(v47);
        if (os_log_type_enabled(v70, v95))
        {
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          v150 = v97;
          *v96 = 136315394;
          *(v96 + 4) = sub_1B698F63C(*v47, *(v47 + 8), &v150);
          *(v96 + 12) = 2048;
          *(v96 + 14) = [v48 statusCode];

          _os_log_impl(&dword_1B697C000, v70, v95, "Upload HTTP failed--will retry later, identifier=%s, statusCode=%ld", v96, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v97);
          MEMORY[0x1B8C99550](v97, -1, -1);
          MEMORY[0x1B8C99550](v96, -1, -1);

LABEL_49:
          return v146;
        }

        break;
    }

    goto LABEL_49;
  }

  v22 = a6;
  v23 = sub_1B6AB8A60();
  v24 = [v23 domain];
  v25 = sub_1B6AB92E0();
  v27 = v26;

  v28 = *MEMORY[0x1E696A978];
  if (v25 == sub_1B6AB92E0() && v27 == v29)
  {

    v32 = v147;
  }

  else
  {
    v31 = sub_1B6ABA0F0();

    v32 = v147;
    if ((v31 & 1) == 0)
    {
      v33 = a6;
      sub_1B69BEB24(v32, &v150);
      v34 = sub_1B6AB8F80();
      v35 = sub_1B6AB98E0();
      sub_1B69BEDA0(v32);

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v150 = v38;
        *v36 = 136315394;
        *(v36 + 4) = sub_1B698F63C(*v32, *(v32 + 8), &v150);
        *(v36 + 12) = 2112;
        v39 = a6;
        v40 = _swift_stdlib_bridgeErrorToNSError();
        *(v36 + 14) = v40;
        *v37 = v40;
        v41 = "Upload encountered unknown error; will retry with attempt increment, identifier=%s, error=%@";
LABEL_29:
        _os_log_impl(&dword_1B697C000, v34, v35, v41, v36, 0x16u);
        sub_1B6A11140(v37, &qword_1EDBC8E08, sub_1B6A10F98);
        MEMORY[0x1B8C99550](v37, -1, -1);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1B8C99550](v38, -1, -1);
        MEMORY[0x1B8C99550](v36, -1, -1);

        return 0;
      }

      goto LABEL_30;
    }
  }

  v60 = [v23 code];
  if (v60 + 1009 > 8 || ((1 << (v60 - 15)) & 0x131) == 0)
  {
    v80 = a6;
    sub_1B69BEB24(v32, &v150);
    v34 = sub_1B6AB8F80();
    v35 = sub_1B6AB98E0();
    sub_1B69BEDA0(v32);

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v150 = v38;
      *v36 = 136315394;
      *(v36 + 4) = sub_1B698F63C(*v32, *(v32 + 8), &v150);
      *(v36 + 12) = 2112;
      v81 = a6;
      v82 = _swift_stdlib_bridgeErrorToNSError();
      *(v36 + 14) = v82;
      *v37 = v82;
      v41 = "Upload URLError; will retry with attempt increment, identifier=%s, error=%@";
      goto LABEL_29;
    }

LABEL_30:

    return 0;
  }

  v61 = a6;
  sub_1B69BEB24(v32, &v150);
  v62 = sub_1B6AB8F80();
  v63 = sub_1B6AB98E0();
  sub_1B69BEDA0(v32);

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v150 = v66;
    *v64 = 136315394;
    *(v64 + 4) = sub_1B698F63C(*v32, *(v32 + 8), &v150);
    *(v64 + 12) = 2112;
    v67 = a6;
    v68 = _swift_stdlib_bridgeErrorToNSError();
    *(v64 + 14) = v68;
    *v65 = v68;
    _os_log_impl(&dword_1B697C000, v62, v63, "Upload attempted while offline; will retry without attempt increment, identifier=%s, error=%@", v64, 0x16u);
    sub_1B6A11140(v65, &qword_1EDBC8E08, sub_1B6A10F98);
    MEMORY[0x1B8C99550](v65, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v66);
    MEMORY[0x1B8C99550](v66, -1, -1);
    MEMORY[0x1B8C99550](v64, -1, -1);
  }

  else
  {
  }

  return 1;
}

unint64_t sub_1B6A10818(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    sub_1B6A10F34(0, &qword_1EDBCAFE8, MEMORY[0x1E69E6EC8]);
    v2 = sub_1B6AB9E90();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  while (1)
  {
    if (!v6)
    {
      while (1)
      {
        v16 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          break;
        }

        if (v16 >= v7)
        {

          return v2;
        }

        v6 = *(v3 + 8 * v16);
        ++v9;
        if (v6)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    v16 = v9;
LABEL_13:
    v17 = __clz(__rbit64(v6)) | (v16 << 6);
    sub_1B69E1028(*(v1 + 48) + 40 * v17, v30);
    sub_1B698FE74(*(v1 + 56) + 32 * v17, v31 + 8);
    v28[0] = v31[0];
    v28[1] = v31[1];
    v29 = v32;
    v27[0] = v30[0];
    v27[1] = v30[1];
    sub_1B69E1028(v27, v26);
    if (!swift_dynamicCast())
    {
      sub_1B6A10FE4(v27);

      goto LABEL_22;
    }

    sub_1B698FE74(v28 + 8, v26);
    sub_1B6A10FE4(v27);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v6 &= v6 - 1;
    result = sub_1B6993940(v24, v25);
    if (v18)
    {
      v10 = v1;
      v11 = 16 * result;
      v12 = (v2[6] + 16 * result);
      v13 = v12[1];
      *v12 = v24;
      v12[1] = v25;

      v14 = (v2[7] + v11);
      v1 = v10;
      v15 = v14[1];
      *v14 = v24;
      v14[1] = v25;

      v9 = v16;
    }

    else
    {
      if (v2[2] >= v2[3])
      {
        goto LABEL_25;
      }

      *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = (v2[6] + 16 * result);
      *v19 = v24;
      v19[1] = v25;
      v20 = (v2[7] + 16 * result);
      *v20 = v24;
      v20[1] = v25;
      v21 = v2[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_26;
      }

      v2[2] = v23;
      v9 = v16;
    }
  }

LABEL_22:

  return 0;
}

void *sub_1B6A10AE8()
{
  v1 = v0[2];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  v3 = v0[16];

  v4 = qword_1EDBCAD28;
  v5 = sub_1B6AB8F90();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  return v0;
}

uint64_t sub_1B6A10B70()
{
  sub_1B6A10AE8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A10BC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  v8 = *(v10 + 8);

  return v8(a1, a2, a3);
}

uint64_t sub_1B6A10CE8(void (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_1B6A10D48()
{
  if (!qword_1EDBC9BC0)
  {
    v0 = sub_1B6AB9600();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BC0);
    }
  }
}

uint64_t sub_1B6A10DA8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  sub_1B6A10D48();
  v7 = *(*(v6 - 8) + 80);

  return sub_1B6A0E794(a1, a2, a3);
}

void sub_1B6A10E30(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6AB9B30();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6A10E84(uint64_t a1, unint64_t a2, void *a3, void *a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v6 = *(v4 + 112);
  return sub_1B6A0F254(a1, a2, a3, a4, *(v4 + 32), *(v4 + 40), *(v4 + 48), v4 + 56);
}

void sub_1B6A10EC0(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void sub_1B6A10F34(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B6A10F98()
{
  result = qword_1EDBC8E10;
  if (!qword_1EDBC8E10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBC8E10);
  }

  return result;
}

uint64_t sub_1B6A10FE4(uint64_t a1)
{
  sub_1B6A11040();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1B6A11040()
{
  if (!qword_1EDBCB638)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCB638);
    }
  }
}

uint64_t sub_1B6A110A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1B6A110C0(uint64_t a1, uint64_t a2)
{
  sub_1B6A10E30(0, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A11140(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B6A10E30(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B6A1119C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadDropbox.Debugging(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A11200(uint64_t a1, uint64_t a2)
{
  sub_1B6A10E30(0, &qword_1EDBCB550, type metadata accessor for UploadDropbox.Debugging);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A11280(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UploadDropbox.Debugging(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t ProcessError.hashValue.getter()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

unint64_t sub_1B6A11388()
{
  result = qword_1EB95B620;
  if (!qword_1EB95B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95B620);
  }

  return result;
}

uint64_t sub_1B6A113EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*(v3 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  LOBYTE(v12) = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if (v12)
  {
    swift_beginAccess();
    result = *(v3 + 48);
    v15 = *(result + 16);
    if (v15)
    {

      v16 = (v21 + 40);
      do
      {
        v17 = *(v16 - 1);
        v18 = *v16;
        ObjectType = swift_getObjectType();
        v20 = *(v18 + 8);
        swift_unknownObjectRetain();
        v20(a1, a2, a3, ObjectType, v18);
        swift_unknownObjectRelease();
        v16 += 2;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A115A8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v6 = type metadata accessor for SequenceEntry(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a3 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (!v11)
  {
    return v12;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1B69E4CFC(0, v11, 0);
  v12 = v22;
  v19 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = a3 + v19;
  v14 = *(v7 + 72);
  while (1)
  {
    v20(v13);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v12;
    v16 = *(v12 + 16);
    v15 = *(v12 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_1B69E4CFC(v15 > 1, v16 + 1, 1);
      v12 = v22;
    }

    *(v12 + 16) = v16 + 1;
    sub_1B6994AF8(v10, v12 + v19 + v16 * v14, type metadata accessor for SequenceEntry);
    v13 += v14;
    if (!--v11)
    {
      return v12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A11750(char *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  sub_1B6A24908(0, a2, a3, a4, type metadata accessor for ProcessEvent);
  v8 = v7;
  v9 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v49 - v10;
  v12 = type metadata accessor for SessionManager.SessionState(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = (&v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_1B6AB90F0();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = (&v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(*(v5 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16);
  v22 = v21;
  LOBYTE(v21) = sub_1B6AB9110();
  result = (*(v17 + 8))(v20, v16);
  if (v21)
  {
    v24 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B698A2A4(v5 + v24, v15, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v50 = v5;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B6995008(v15, type metadata accessor for SessionManager.SessionState);
      }

      v26 = *(v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 24);
      v27 = *(v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider + 32);
      __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider), v26);
      v28 = (*(v27 + 8))(v54, v26, v27);
      v29 = v54[0];
    }

    else
    {
      v30 = (*v15 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter);
      v29 = *v30;
      v28 = v30[1];
    }

    v49 = v29;
    v31 = *a1;
    v32 = *(a1 + 1);
    v33 = *(a1 + 2);
    v34 = v8[11];
    v35 = sub_1B6AB8DB0();
    (*(*(v35 - 8) + 16))(&v11[v34], &a1[v34], v35);
    v36 = v8[13];
    v37 = &a1[v8[12]];
    v39 = *v37;
    v38 = *(v37 + 1);
    v40 = *&a1[v36];
    v41 = a1[v36 + 8];
    sub_1B69C1678(&a1[v8[14]], &v11[v8[14]]);
    *v11 = v31;
    *(v11 + 1) = v32;
    *(v11 + 3) = 0x302E312E30;
    *(v11 + 4) = 0xE500000000000000;
    *(v11 + 2) = v33;
    v42 = &v11[v8[12]];
    *v42 = v39;
    *(v42 + 1) = v38;
    v43 = &v11[v8[13]];
    *v43 = v40;
    v43[8] = v41;
    v44 = &v11[v8[15]];
    *v44 = v49;
    v44[1] = v28;
    v45 = *(v50 + 24);

    v46 = v33;
    v48 = v52;
    v47 = v53;
    sub_1B6A113EC(v11, v52, v53);
    return sub_1B6A16B84(v11, v51, v48, v47, type metadata accessor for ProcessEvent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id BridgedAccessTracker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAccessTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedAccessTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t BridgedAccessTracker.time(eventType:)(char *a1)
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v1 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v14 = *(v1 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v16 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v12 = v16;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);

    v17 = v16;
    LOBYTE(v16) = sub_1B6AB9110();
    result = (*(v9 + 8))(v12, v8);
    if (v16)
    {
      sub_1B6AB8DA0();
      sub_1B6A164AC(a1, v13 | 0x4000000000000000, v7, 1);

      return (*(v4 + 8))(v7, v3);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(eventType:startTime:)(char *a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v11 = *(v2 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v13 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v9 = v13;
    (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);

    v14 = v13;
    LOBYTE(v13) = sub_1B6AB9110();
    result = (*(v6 + 8))(v9, v5);
    if (v13)
    {
      sub_1B6A164AC(a1, v10 | 0x4000000000000000, a2, 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(eventType:submitAndRestartWithSession:)(char *a1, int a2)
{
  v20 = a2;
  v4 = sub_1B6AB8DB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1B6AB90F0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v19[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v15 = *(v2 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v13 = v17;
    (*(v10 + 104))(v13, *MEMORY[0x1E69E8020], v9);

    v18 = v17;
    LOBYTE(v17) = sub_1B6AB9110();
    result = (*(v10 + 8))(v13, v9);
    if (v17)
    {
      sub_1B6AB8DA0();
      sub_1B6A164AC(a1, v14 | 0x4000000000000000, v8, v20 & 1);

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(eventType:submitAndRestartWithSession:startTime:)(char *a1, char a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v13 = *(v3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v15;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);

    v16 = v15;
    LOBYTE(v15) = sub_1B6AB9110();
    result = (*(v8 + 8))(v11, v7);
    if (v15)
    {
      sub_1B6A164AC(a1, v12 | 0x4000000000000000, a3, a2 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void BridgedAccessTracker.time(rawEvent:startTime:)(uint64_t a1)
{
  v3 = sub_1B6AB8D20();
  [v1 timeRawEvent:a1 submitAndRestartWithSession:1 startTime:v3];
}

uint64_t BridgedAccessTracker.time(rawEvent:submitAndRestartWithSession:)(char *a1, char a2)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB90F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(v2 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v14 = v17;
    (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
    v18 = v17;
    LOBYTE(v17) = sub_1B6AB9110();
    result = (*(v11 + 8))(v14, v10);
    if (v17)
    {
      sub_1B6AB8DA0();
      sub_1B6A164AC(a1, 0x8000000000000000, v9, a2 & 1);

      return (*(v6 + 8))(v9, v5);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t BridgedAccessTracker.time(rawEvent:submitAndRestartWithSession:startTime:)(char *a1, char a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v14;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v15 = v14;
    LOBYTE(v14) = sub_1B6AB9110();
    result = (*(v8 + 8))(v11, v7);
    if (v14)
    {
      sub_1B6A164AC(a1, 0x8000000000000000, a3, a2 & 1);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

id BridgedAccessTracker.submit(eventType:)()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();

  return [v0 submitEventType:ObjCClassFromMetadata onlyIfTimed:0];
}

uint64_t BridgedAccessTracker.submit(eventType:onlyIfTimed:)(uint64_t a1, int a2)
{
  v26[3] = a2;
  v27 = a1;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v14 = *(v2 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v28, 0, sizeof(v28));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v28);
  }

  v16 = Strong;
  v17 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v12 = v17;
  (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);

  v18 = v17;
  LOBYTE(v17) = sub_1B6AB9110();
  result = (*(v9 + 8))(v12, v8);
  if (v17)
  {
    sub_1B6AB8DA0();
    v20 = *(v14 + 24);
    v21 = MEMORY[0x1EEE9AC00](*(v16 + 88));
    v22 = v27;
    *&v26[-20] = v16;
    *&v26[-18] = v22;
    *&v26[-16] = v13 | 0x4000000000000000;
    LOBYTE(v26[-14]) = v23;
    *&v26[-12] = v7;
    *&v26[-10] = v24;
    *&v26[-4] = 0;
    *&v26[-2] = 0;
    *&v26[-6] = v28;
    sub_1B6995F94(v21, sub_1B6A16B18, &v26[-24], v25);

    (*(v4 + 8))(v7, v3);
    return sub_1B6981634(v28);
  }

  __break(1u);
  return result;
}

void BridgedAccessTracker.submit(eventType:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1B6A12D6C;
  v8[3] = &block_descriptor_4;
  v7 = _Block_copy(v8);

  [v3 submitEventType:ObjCClassFromMetadata onlyIfTimed:0 completion:v7];
  _Block_release(v7);
}

void sub_1B6A12D6C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t BridgedAccessTracker.submit(eventType:onlyIfTimed:completion:)(uint64_t a1, int a2, void (*a3)(id, id), uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v36[1] = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v36 - v9);
  v11 = sub_1B6AB8DB0();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = *(v4 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v20 = *(v4 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v42, 0, sizeof(v42));
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v34 = swift_allocError();
    *v35 = xmmword_1B6AC0310;
    *v10 = v34;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    sub_1B6A155E8(v10, a3);

    sub_1B6A16B84(v10, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v42);
  }

  v23 = Strong;
  v24 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v24;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);

  v25 = v41;

  v26 = v24;
  LOBYTE(v24) = sub_1B6AB9110();
  result = (*(v16 + 8))(v19, v15);
  if (v24)
  {
    sub_1B6AB8DA0();
    v28 = *(v20 + 24);
    v29 = MEMORY[0x1EEE9AC00](*(v23 + 88));
    v30 = v38;
    v36[-10] = v23;
    v36[-9] = v30;
    v36[-8] = v25 | 0x4000000000000000;
    LOBYTE(v36[-7]) = v31;
    v36[-6] = v14;
    *&v36[-5] = v32;
    v36[-3] = v42;
    v36[-2] = sub_1B6A249C8;
    v36[-1] = v21;
    sub_1B6995F94(v29, sub_1B6A249B0, &v36[-12], v33);

    (*(v39 + 8))(v14, v40);
    return sub_1B6981634(v42);
  }

  __break(1u);
  return result;
}

uint64_t BridgedAccessTracker.submit(rawEvent:onlyIfTimed:)(uint64_t a1)
{
  v24[0] = a1;
  v2 = sub_1B6AB8DB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v1 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v25, 0, sizeof(v25));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v25);
  }

  v14 = Strong;
  v15 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v15;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v16 = v15;
  LOBYTE(v15) = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if (v15)
  {
    sub_1B6AB8DA0();
    v18 = *(v12 + 24);
    v19 = MEMORY[0x1EEE9AC00](*(v14 + 88));
    v20 = v24[0];
    v24[-10] = v14;
    v24[-9] = v20;
    v24[-8] = 0x8000000000000000;
    LOBYTE(v24[-7]) = v21;
    v24[-6] = v6;
    *&v24[-5] = v22;
    v24[-2] = 0;
    v24[-1] = 0;
    v24[-3] = v25;
    sub_1B6995F94(v19, sub_1B6A249B0, &v24[-12], v23);

    (*(v3 + 8))(v6, v2);
    return sub_1B6981634(v25);
  }

  __break(1u);
  return result;
}

void BridgedAccessTracker.submit(rawEvent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[4] = a2;
  v6[5] = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1B6A12D6C;
  v6[3] = &block_descriptor_5;
  v5 = _Block_copy(v6);

  [v3 submitRawEvent:a1 onlyIfTimed:0 completion:v5];
  _Block_release(v5);
}

uint64_t BridgedAccessTracker.submit(rawEvent:onlyIfTimed:completion:)(uint64_t a1, int a2, void (*a3)(id, id), uint64_t a4)
{
  v37 = a2;
  v38 = a1;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v36 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v36 - v9);
  v11 = sub_1B6AB8DB0();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB90F0();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = (&v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v4 + OBJC_IVAR___AAAccessTracker_accessTracker);
  v21 = a3;
  memset(v41, 0, sizeof(v41));
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a4;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v34 = swift_allocError();
    *v35 = xmmword_1B6AC0310;
    *v10 = v34;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1B6A155E8(v10, v21);

    sub_1B6A16B84(v10, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v41);
  }

  v24 = Strong;
  v25 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v19 = v25;
  (*(v16 + 104))(v19, *MEMORY[0x1E69E8020], v15);

  v26 = v25;
  LOBYTE(v25) = sub_1B6AB9110();
  result = (*(v16 + 8))(v19, v15);
  if (v25)
  {
    sub_1B6AB8DA0();
    v28 = *(v20 + 24);
    v29 = MEMORY[0x1EEE9AC00](*(v24 + 88));
    v30 = v38;
    *(&v36 - 10) = v24;
    *(&v36 - 9) = v30;
    *(&v36 - 8) = 0x8000000000000000;
    *(&v36 - 56) = v31;
    *(&v36 - 6) = v14;
    *(&v36 - 5) = v32;
    *(&v36 - 3) = v41;
    *(&v36 - 2) = sub_1B6A249C8;
    *(&v36 - 1) = v22;
    sub_1B6995F94(v29, sub_1B6A249B0, (&v36 - 12), v33);

    (*(v39 + 8))(v14, v40);
    return sub_1B6981634(v41);
  }

  __break(1u);
  return result;
}

uint64_t BridgedAccessTracker.explicitSubmit(eventType:submitTime:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v2 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v11 = *(v2 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v22, 0, sizeof(v22));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v22);
  }

  v13 = Strong;
  v14 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v14;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);

  v15 = v14;
  LOBYTE(v14) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v14)
  {
    v17 = *(v11 + 24);
    v18 = MEMORY[0x1EEE9AC00](*(v13 + 88));
    *&v21[-80] = v13;
    *&v21[-72] = a1;
    *&v21[-64] = v19;
    v21[-56] = 0;
    *&v21[-48] = a2;
    *&v21[-40] = v20;
    *&v21[-16] = 0;
    *&v21[-8] = 0;
    *&v21[-24] = v22;
    sub_1B6995F94(v18, sub_1B6A249B0, &v21[-96], v22);

    return sub_1B6981634(v22);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A13F4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, char *))
{
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v13 = a1;
  a5(ObjCClassMetadata, v11);

  return (*(v8 + 8))(v11, v7);
}

uint64_t BridgedAccessTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v12 = *(v3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v24, 0, sizeof(v24));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v24);
  }

  v14 = Strong;
  v15 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v15;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);

  v16 = v15;
  LOBYTE(v15) = sub_1B6AB9110();
  result = (*(v7 + 8))(v10, v6);
  if (v15)
  {
    v18 = *(v12 + 24);
    v19 = MEMORY[0x1EEE9AC00](*(v14 + 88));
    *&v23[-80] = v14;
    *&v23[-72] = a1;
    *&v23[-64] = v20;
    v23[-56] = v21;
    *&v23[-48] = a3;
    *&v23[-40] = v22;
    *&v23[-16] = 0;
    *&v23[-8] = 0;
    *&v23[-24] = v24;
    sub_1B6995F94(v19, sub_1B6A249B0, &v23[-96], v24);

    return sub_1B6981634(v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A14278(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, char *))
{
  v9 = sub_1B6AB8DB0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassMetadata = swift_getObjCClassMetadata();
  sub_1B6AB8D80();
  v15 = a1;
  a6(ObjCClassMetadata, a4, v13);

  return (*(v10 + 8))(v13, v9);
}

void BridgedAccessTracker.explicitSubmit(eventType:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_14;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitEventType:ObjCClassFromMetadata onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedAccessTracker.explicitSubmit(eventType:onlyIfTimed:submitTime:completion:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v34 = a1;
  v35 = a3;
  v33[3] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v33 - v10);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = *(v5 + OBJC_IVAR___AAAccessTracker_eventMirrorStore);
  v17 = *(v5 + OBJC_IVAR___AAAccessTracker_accessTracker);
  v18 = a4;
  memset(v37, 0, sizeof(v37));
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v31 = swift_allocError();
    *v32 = xmmword_1B6AC0310;
    *v11 = v31;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();

    sub_1B6A155E8(v11, v18);

    sub_1B6A16B84(v11, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v37);
  }

  v21 = Strong;
  v22 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v22;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);

  v23 = v22;
  LOBYTE(v22) = sub_1B6AB9110();
  result = (*(v13 + 8))(v16, v12);
  if (v22)
  {
    v25 = *(v17 + 24);
    v26 = MEMORY[0x1EEE9AC00](*(v21 + 88));
    v27 = v34;
    *&v33[-20] = v21;
    *&v33[-18] = v27;
    *&v33[-16] = v28;
    LOBYTE(v33[-14]) = v29;
    *&v33[-12] = v35;
    *&v33[-10] = v30;
    *&v33[-6] = v37;
    *&v33[-4] = sub_1B6A249C8;
    *&v33[-2] = v19;
    sub_1B6995F94(v26, sub_1B6A249B0, &v33[-24], v37);

    return sub_1B6981634(v37);
  }

  __break(1u);
  return result;
}

void BridgedAccessTracker.explicitSubmit(rawEvent:submitTime:)(uint64_t a1)
{
  v3 = sub_1B6AB8D20();
  [v1 explicitSubmitRawEvent:a1 onlyIfTimed:0 submitTime:v3];
}

uint64_t sub_1B6A14B90(void *a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5, char a6)
{
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v15 = a3;
  v16 = a1;
  v17 = sub_1B6AB8D20();
  [v16 *a5];

  return (*(v11 + 8))(v14, v10);
}

uint64_t BridgedAccessTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B6AB90F0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v22[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *(v3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  memset(v23, 0, sizeof(v23));
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_1B6981634(v23);
  }

  v13 = Strong;
  v14 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v10 = v14;
  (*(v7 + 104))(v10, *MEMORY[0x1E69E8020], v6);
  v15 = v14;
  LOBYTE(v14) = sub_1B6AB9110();
  result = (*(v7 + 8))(v10, v6);
  if (v14)
  {
    v17 = *(v11 + 24);
    v18 = MEMORY[0x1EEE9AC00](*(v13 + 88));
    *&v22[-80] = v13;
    *&v22[-72] = a1;
    *&v22[-64] = 0x8000000000000000;
    v22[-56] = v19;
    *&v22[-48] = a3;
    *&v22[-40] = v20;
    *&v22[-16] = 0;
    *&v22[-8] = 0;
    *&v22[-24] = v23;
    sub_1B6995F94(v18, sub_1B6A249B0, &v22[-96], v21);

    return sub_1B6981634(v23);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A14EBC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t, char *))
{
  v10 = sub_1B6AB8DB0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8D80();
  v15 = a3;
  v16 = a1;
  a6(v15, a4, v14);

  return (*(v11 + 8))(v14, v10);
}

void BridgedAccessTracker.explicitSubmit(rawEvent:submitTime:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1B6AB8D20();
  v11[4] = a3;
  v11[5] = a4;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1B6A12D6C;
  v11[3] = &block_descriptor_22;
  v10 = _Block_copy(v11);

  [v5 explicitSubmitRawEvent:a1 onlyIfTimed:0 submitTime:v9 completion:v10];
  _Block_release(v10);
}

uint64_t BridgedAccessTracker.explicitSubmit(rawEvent:onlyIfTimed:submitTime:completion:)(uint64_t a1, int a2, uint64_t a3, void (*a4)(id, id), uint64_t a5)
{
  v34 = a1;
  v35 = a3;
  v33[1] = a2;
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v33 - v10);
  v12 = sub_1B6AB90F0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = (v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *(v5 + OBJC_IVAR___AAAccessTracker_accessTracker);
  v18 = a4;
  memset(v36, 0, sizeof(v36));
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = a5;
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_1B6A16B30();
    v31 = swift_allocError();
    *v32 = xmmword_1B6AC0310;
    *v11 = v31;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    sub_1B6A155E8(v11, v18);

    sub_1B6A16B84(v11, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
    return sub_1B6981634(v36);
  }

  v21 = Strong;
  v22 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v16 = v22;
  (*(v13 + 104))(v16, *MEMORY[0x1E69E8020], v12);

  v23 = v22;
  LOBYTE(v22) = sub_1B6AB9110();
  result = (*(v13 + 8))(v16, v12);
  if (v22)
  {
    v25 = *(v17 + 24);
    v26 = MEMORY[0x1EEE9AC00](*(v21 + 88));
    v27 = v34;
    *&v33[-20] = v21;
    *&v33[-18] = v27;
    *&v33[-16] = 0x8000000000000000;
    LOBYTE(v33[-14]) = v28;
    *&v33[-12] = v35;
    *&v33[-10] = v29;
    *&v33[-6] = v36;
    *&v33[-4] = sub_1B6A16BE0;
    *&v33[-2] = v19;
    sub_1B6995F94(v26, sub_1B6A249B0, &v33[-24], v30);

    return sub_1B6981634(v36);
  }

  __break(1u);
  return result;
}

void sub_1B6A155E8(uint64_t a1, void (*a2)(id, id))
{
  v30 = a2;
  sub_1B6A24908(0, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  v4 = v3;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v29 - v6);
  sub_1B6A24908(0, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v29 - v10);
  sub_1B6A23DD4(a1, &v29 - v10, qword_1EDBC8268, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for EventSubmitResult);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11;
    v30(0, v12);
  }

  else
  {
    sub_1B6A243B0(v11, v7);
    v15 = *v7;
    v14 = v7[1];
    v17 = v7[3];
    v16 = v7[4];
    v18 = v7[2];
    v19 = (v7 + *(v4 + 48));
    v21 = *v19;
    v20 = v19[1];
    v22 = type metadata accessor for BridgedProcessEvent();
    v23 = objc_allocWithZone(v22);
    v24 = &v23[OBJC_IVAR___AAProcessEvent_name];
    *v24 = v15;
    *(v24 + 1) = v14;
    v25 = &v23[OBJC_IVAR___AAProcessEvent_version];
    *v25 = v17;
    *(v25 + 1) = v16;
    *&v23[OBJC_IVAR___AAProcessEvent_json] = v18;
    v26 = &v23[OBJC_IVAR___AAProcessEvent_groupName];
    *v26 = v21;
    *(v26 + 1) = v20;
    v31.receiver = v23;
    v31.super_class = v22;

    v27 = v18;
    v28 = objc_msgSendSuper2(&v31, sel_init);
    v30(v28, 0);

    sub_1B6A16B84(v7, qword_1EDBC8B18, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for ProcessEvent);
  }
}

uint64_t BridgedAccessTracker.push(data:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a4;
  v29 = a5;
  v27 = a3;
  v8 = sub_1B6AB90F0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getObjectType();
  v13 = sub_1B6A43B04(a1);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = *(v5 + OBJC_IVAR___AAAccessTracker_accessTracker);
  if (a2)
  {
    v21 = sub_1B69D821C();
  }

  else
  {
    v21 = MEMORY[0x1E69E7CC0];
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v12 = v23;
    (*(v9 + 104))(v12, *MEMORY[0x1E69E8020], v8);
    v24 = v23;
    LOBYTE(v23) = sub_1B6AB9110();
    result = (*(v9 + 8))(v12, v8);
    if (v23)
    {
      sub_1B6A21578(v13, v15, v17, v19 & 0x101, v21, v27, v28, v29);

      swift_unknownObjectRelease();
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BridgedAccessTracker.pop(dataType:)()
{
  v1 = sub_1B6AB90F0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_1B6ABA330();
  v8 = v7;
  v9 = *(v0 + OBJC_IVAR___AAAccessTracker_accessTracker);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v5 = v11;
    (*(v2 + 104))(v5, *MEMORY[0x1E69E8020], v1);
    v12 = v11;
    LOBYTE(v11) = sub_1B6AB9110();
    result = (*(v2 + 8))(v5, v1);
    if (v11)
    {
      sub_1B6A21EA4(v6, v8);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
  }

  return result;
}

Swift::Void __swiftcall BridgedAccessTracker.pop(dataName:)(Swift::String dataName)
{
  object = dataName._object;
  countAndFlagsBits = dataName._countAndFlagsBits;
  v4 = sub_1B6AB90F0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v1 + OBJC_IVAR___AAAccessTracker_accessTracker);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(*(Strong + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v8 = v11;
    (*(v5 + 104))(v8, *MEMORY[0x1E69E8020], v4);
    v12 = v11;
    LOBYTE(v11) = sub_1B6AB9110();
    (*(v5 + 8))(v8, v4);
    if (v11)
    {
      sub_1B6A21EA4(countAndFlagsBits, object);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t BridgedAccessTracker.peek(dataName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v3 + OBJC_IVAR___AAAccessTracker_accessTracker);
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v11 = v14;
    (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
    v15 = v14;
    LOBYTE(v14) = sub_1B6AB9110();
    result = (*(v8 + 8))(v11, v7);
    if ((v14 & 1) == 0)
    {
      __break(1u);
      return result;
    }

    sub_1B69BEDE8(a1, a2, 0, 0, 1, v20);
    v16 = v21;
    if (v21)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v20, v21);
      *(a3 + 24) = v16;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      (*(*(v16 - 8) + 16))(boxed_opaque_existential_1, v17, v16);

      return __swift_destroy_boxed_opaque_existential_1(v20);
    }

    result = sub_1B6A23F44(v20, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType);
  }

  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_1B6A16420()
{
  if (*(*v0 + 16))
  {
    sub_1B6A564E8(&v3);
    v1 = v3;
    if (!v3)
    {
      sub_1B6A24520(0);
      sub_1B6A54684(*(*v0 + 16) - 1, &v3);
      v1 = v3;
    }

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B6A164AC(char *a1, unint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v53 = a4;
  v52 = a3;
  v55 = a1;
  v54 = type metadata accessor for Tracker.Timer(0);
  v7 = *(v54 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6994AA4(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  v18 = sub_1B6AB90F0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *(*(v5 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v22 = v23;
  (*(v19 + 104))(v22, *MEMORY[0x1E69E8020], v18);
  v24 = v23;
  LOBYTE(v23) = sub_1B6AB9110();
  result = (*(v19 + 8))(v22, v18);
  if (v23)
  {
    v26 = 0x4564656764697242;
    v27 = a2 >> 62;
    v51 = a2;
    if (a2 >> 62)
    {
      if (v27 == 1)
      {
        v28 = [swift_getObjCClassFromMetadata() eventName];
        v26 = sub_1B6AB92E0();
        v30 = v29;
      }

      else
      {
        v26 = *&v55[OBJC_IVAR___AARawEvent_name];
        v30 = *&v55[OBJC_IVAR___AARawEvent_name + 8];
      }
    }

    else
    {
      v30 = 0xEC000000746E6576;
    }

    swift_beginAccess();
    v31 = *(v5 + 112);
    if (*(v31 + 16) && (v32 = *(v5 + 112), , v33 = sub_1B6993940(v26, v30), v35 = v34, , (v35 & 1) != 0))
    {
      sub_1B698A2A4(*(v31 + 56) + *(v7 + 72) * v33, v17, type metadata accessor for Tracker.Timer);

      (*(v7 + 56))(v17, 0, 1, v54);
      return sub_1B6994FAC(v17, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
    }

    else
    {

      v36 = *(v7 + 56);
      v37 = v54;
      v36(v17, 1, 1, v54);
      sub_1B6994FAC(v17, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
      v38 = sub_1B6AB8DB0();
      v39 = v10;
      (*(*(v38 - 8) + 16))(v10, v52, v38);
      if (v27)
      {
        v40 = v55;
        if (v27 == 1)
        {
          v41 = [swift_getObjCClassFromMetadata() eventName];
          v42 = sub_1B6AB92E0();
          v44 = v43;

          v37 = v54;
        }

        else
        {
          v42 = *&v55[OBJC_IVAR___AARawEvent_name];
          v44 = *&v55[OBJC_IVAR___AARawEvent_name + 8];
        }
      }

      else
      {
        v42 = 0x4564656764697242;
        v44 = 0xEC000000746E6576;
        v40 = v55;
      }

      sub_1B698A2A4(v39, v15, type metadata accessor for Tracker.Timer);
      v36(v15, 0, 1, v37);
      swift_beginAccess();
      sub_1B69A0FE4(v15, v42, v44);
      swift_endAccess();
      if (v53)
      {
        if (v27)
        {
          if (v27 == 1)
          {
            v45 = [swift_getObjCClassFromMetadata() eventName];
            v46 = sub_1B6AB92E0();
            v48 = v47;
          }

          else
          {
            v46 = *&v40[OBJC_IVAR___AARawEvent_name];
            v48 = *&v40[OBJC_IVAR___AARawEvent_name + 8];
          }
        }

        else
        {
          v46 = 0x4564656764697242;
          v48 = 0xEC000000746E6576;
        }

        sub_1B6A24908(0, &qword_1EDBC9778, &type metadata for BridgedEvent, &off_1F2E74868, type metadata accessor for Tracker.RestartTimer);
        v56[3] = v49;
        v56[4] = &off_1F2E7AA40;
        v50 = v51;
        v56[0] = v40;
        v56[1] = v51;
        swift_beginAccess();
        sub_1B6992B50(v40, v50);
        sub_1B69E1EC8(v56, v46, v48);
        swift_endAccess();
      }

      return sub_1B6995008(v39, type metadata accessor for Tracker.Timer);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}