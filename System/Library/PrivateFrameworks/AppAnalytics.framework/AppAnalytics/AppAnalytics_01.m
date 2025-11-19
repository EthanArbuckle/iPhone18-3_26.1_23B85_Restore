uint64_t sub_1B6995E98()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t type metadata accessor for SessionObserverChange()
{
  result = qword_1EDBCC2E0;
  if (!qword_1EDBCC2E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B6995F20()
{
  result = type metadata accessor for ActiveSession();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Session();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6995F94@<X0>(char *a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v71 = a2;
  v69 = a4;
  v70 = a3;
  v67 = a1;
  v4 = sub_1B6AB90F0();
  v65 = *(v4 - 8);
  v66 = v4;
  v5 = *(v65 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v64 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8E40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v60 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v15 = v14;
  v16 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6994AA4(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v59 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v59 - v26;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v61 = v22;
  v62 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v68 = v74;
  if (v74)
  {
    v28 = *(v11 + 16);
    v28(v27, v74 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v10);
    v29 = *(v11 + 56);
    v29(v27, 0, 1, v10);
  }

  else
  {
    v29 = *(v11 + 56);
    v29(v27, 1, 1, v10);
    v28 = *(v11 + 16);
  }

  v28(v25, v73, v10);
  v29(v25, 0, 1, v10);
  v30 = *(v15 + 48);
  v31 = MEMORY[0x1E69695A8];
  v32 = v72;
  sub_1B6994F40(v27, v72, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994F40(v25, v32 + v30, &qword_1EDBCAF50, v31);
  v33 = *(v11 + 48);
  if (v33(v32, 1, v10) == 1)
  {
    v34 = MEMORY[0x1E69695A8];
    sub_1B6994FAC(v25, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    v35 = v27;
    v36 = v72;
    sub_1B6994FAC(v35, &qword_1EDBCAF50, v34);
    if (v33(v36 + v30, 1, v10) == 1)
    {
      v37 = sub_1B6994FAC(v36, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
LABEL_15:
      v71(v37);
    }

    goto LABEL_11;
  }

  v59 = v27;
  v38 = v32;
  v36 = v32;
  v39 = v61;
  sub_1B6994F40(v38, v61, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  if (v33(v36 + v30, 1, v10) == 1)
  {
    v40 = MEMORY[0x1E69695A8];
    sub_1B6994FAC(v25, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B6994FAC(v59, &qword_1EDBCAF50, v40);
    (*(v11 + 8))(v39, v10);
LABEL_11:
    sub_1B6995008(v36, sub_1B6992BDC);
    goto LABEL_12;
  }

  v55 = v60;
  (*(v11 + 32))(v60, v36 + v30, v10);
  sub_1B69ACD84(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
  v56 = sub_1B6AB92A0();
  v57 = *(v11 + 8);
  v57(v55, v10);
  v58 = MEMORY[0x1E69695A8];
  sub_1B6994FAC(v25, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994FAC(v59, &qword_1EDBCAF50, v58);
  v57(v39, v10);
  v37 = sub_1B6994FAC(v36, &qword_1EDBCAF50, v58);
  if (v56)
  {
    goto LABEL_15;
  }

LABEL_12:
  v41 = v63;
  sub_1B698A2A4(v73, v63, type metadata accessor for DiagnosticsConsentProvider);
  v42 = type metadata accessor for LazyDiagnosticStatus(0);
  v43 = *(v42 + 48);
  v44 = *(v42 + 52);
  v45 = swift_allocObject();
  *(v45 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v47 = v66;
  v46 = v67;
  v48 = *&v67[OBJC_IVAR___AAAccessQueue_queue];
  v50 = v64;
  v49 = v65;
  *v64 = v48;
  (*(v49 + 104))(v50, *MEMORY[0x1E69E8020], v47);
  v51 = v48;
  LOBYTE(v48) = sub_1B6AB9110();
  result = (*(v49 + 8))(v50, v47);
  if (v48)
  {
    sub_1B6994AF8(v41, v45 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);
    *(v45 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v46;
    v74 = v45;
    sub_1B6994AA4(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus);
    v53 = v46;

    v54 = swift_task_localValuePush();
    v71(v54);
    swift_task_localValuePop();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6996750(uint64_t a1)
{
  v3 = type metadata accessor for DiagnosticsConsentProvider(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(v1 + 48);
  v13 = *&v12[OBJC_IVAR___AAAccessQueue_queue];
  *v11 = v13;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v14 = v13;
  LOBYTE(v13) = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if (v13)
  {
    v16 = sub_1B6980478(*(v1 + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v6, type metadata accessor for DiagnosticsConsentProvider);
    MEMORY[0x1EEE9AC00](v16);
    *&v17[-16] = v1;
    *&v17[-8] = a1;
    sub_1B6995F94(v12, sub_1B6994B60, &v17[-32], v17);
    return sub_1B6A0BDA4(v6, type metadata accessor for DiagnosticsConsentProvider);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B699696C(void *a1)
{
  v2 = v1;
  v4 = sub_1B6AB8E40();
  v116 = *(v4 - 8);
  v5 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v107 = v7;
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B699332C(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v100 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v114 = (&v99 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v115 = &v99 - v17;
  v18 = type metadata accessor for DiagnosticsConsentProvider(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x1EEE9AC00](v18 - 8);
  v22 = &v99 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v119 = &v99 - v23;
  v24 = sub_1B6AB90F0();
  v25 = *(v24 - 8);
  v26 = v25[8];
  MEMORY[0x1EEE9AC00](v24);
  v28 = (&v99 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = &unk_1EB95B000;
  v105 = v2[6];
  v103 = OBJC_IVAR___AAAccessQueue_queue;
  v30 = *&v105[OBJC_IVAR___AAAccessQueue_queue];
  *v28 = v30;
  v31 = v25[13];
  v110 = *MEMORY[0x1E69E8020];
  v111 = v25 + 13;
  v109 = v31;
  v31(v28);
  v32 = v30;
  LOBYTE(v30) = sub_1B6AB9110();
  v34 = v25[1];
  v33 = (v25 + 1);
  v112 = v33;
  v113 = v24;
  v108 = v34;
  v34(v28, v24);
  if ((v30 & 1) == 0)
  {
    __break(1u);
LABEL_32:
    swift_once();
    goto LABEL_17;
  }

  v117 = v10;
  v102 = v22;
  v35 = a1[2];
  v36 = a1[3];
  v124 = MEMORY[0x1E69E6158];
  *&v123 = v35;
  *(&v123 + 1) = v36;
  sub_1B69979CC(&v123, v122);

  v37 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v121 = v37;
  sub_1B69A18C4(v122, 0x496E6F6973736573, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v125 = v121;
  v39 = a1[4];
  v40 = a1[5];
  v118 = a1;
  v120 = v2;
  if (v40)
  {
    if (v40 == 1)
    {
      v41 = 0xE900000000000079;
      v42 = 0x7274656D656C6574;
    }

    else if (v40 == 2)
    {
      v41 = 0xE800000000000000;
      v42 = 0x656D69746C616572;
    }

    else
    {
      v42 = v39;
      v41 = v40;
    }
  }

  else
  {
    v41 = 0xEA00000000007374;
    v42 = 0x6E65764572657375;
  }

  v43 = v120[8];
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    v46 = *(*(Strong + 24) + OBJC_IVAR___AAAccessQueue_queue);
    *v28 = v46;
    v47 = v113;
    v109(v28, v110, v113);
    sub_1B6992E2C(v39, v40);
    v48 = v46;
    LOBYTE(v46) = sub_1B6AB9110();
    v108(v28, v47);
    if ((v46 & 1) == 0)
    {
      __break(1u);
      goto LABEL_34;
    }

    v50 = *(v45 + 56);
    v49 = *(v45 + 64);

    swift_unknownObjectRelease();
  }

  else
  {
    sub_1B6992E2C(v39, v40);
    v50 = 0;
    v49 = 0;
  }

  v51 = sub_1B69C1704(v42, v41, v50, v49);
  v53 = v52;

  if (v53)
  {
    v124 = MEMORY[0x1E69E6158];
    *&v123 = v51;
    *(&v123 + 1) = v53;
    sub_1B69979CC(&v123, v122);
    v54 = v125;
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v121 = v54;
    sub_1B69A18C4(v122, 0x6973736553707061, 0xEC00000044496E6FLL, v55);
    v125 = v121;
  }

  else
  {
    sub_1B69A3110(0x6973736553707061, 0xEC00000044496E6FLL, &v123);
    sub_1B6A0A674(&v123, &qword_1EDBCBAF0);
  }

  v29 = v119;
  v2 = v116;
  a1 = v114;
  sub_1B6980478(v120[2] + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v119, type metadata accessor for DiagnosticsConsentProvider);
  v56 = qword_1EDBC9F60;

  v33 = v115;
  if (v56 != -1)
  {
    goto LABEL_32;
  }

LABEL_17:
  v101 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v104 = v28;
  v106 = v123;
  if (v123)
  {
    v57 = v2[2];
    v57(v33, (v123 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider), v4);
    v58 = v2[7];
    v58(v33, 0, 1, v4);
  }

  else
  {
    v58 = v2[7];
    v58(v33, 1, 1, v4);
    v57 = v2[2];
  }

  v57(a1, v29, v4);
  v58(a1, 0, 1, v4);
  v59 = *(v107 + 48);
  v60 = MEMORY[0x1E69695A8];
  v61 = MEMORY[0x1E69E6720];
  v62 = v4;
  v63 = a1;
  v64 = v117;
  sub_1B6A0A858(v33, v117, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
  v65 = v61;
  v66 = v64;
  sub_1B6A0A858(v63, v64 + v59, &qword_1EDBCAF50, v60, v65, sub_1B699332C);
  v67 = v2[6];
  if (v67(v66, 1, v62) == 1)
  {
    v68 = MEMORY[0x1E69695A8];
    v69 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v63, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    v70 = v117;
    sub_1B6A0A8CC(v33, &qword_1EDBCAF50, v68, v69, sub_1B699332C);
    v71 = v67(v70 + v59, 1, v62);
    v72 = v118;
    v73 = v120;
    if (v71 == 1)
    {
      sub_1B6A0A8CC(v70, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
      v74 = v119;
LABEL_29:
      sub_1B69A22AC(v73, v72, &v125);
      goto LABEL_30;
    }
  }

  else
  {
    v75 = v100;
    sub_1B6A0A858(v66, v100, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    v76 = v62;
    if (v67(v66 + v59, 1, v62) != 1)
    {
      v91 = v116;
      v92 = v99;
      (*(v116 + 32))(v99, v66 + v59, v62);
      sub_1B69822F4(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
      v93 = sub_1B6AB92A0();
      v94 = *(v91 + 8);
      v94(v92, v76);
      v95 = v66;
      v96 = MEMORY[0x1E69695A8];
      v97 = MEMORY[0x1E69E6720];
      sub_1B6A0A8CC(v114, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
      sub_1B6A0A8CC(v115, &qword_1EDBCAF50, v96, v97, sub_1B699332C);
      v94(v75, v76);
      sub_1B6A0A8CC(v95, &qword_1EDBCAF50, v96, v97, sub_1B699332C);
      v72 = v118;
      v74 = v119;
      v73 = v120;
      v80 = v105;
      v81 = v104;
      if (v93)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    v77 = v75;
    v78 = MEMORY[0x1E69695A8];
    v79 = MEMORY[0x1E69E6720];
    sub_1B6A0A8CC(v114, &qword_1EDBCAF50, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720], sub_1B699332C);
    v70 = v117;
    sub_1B6A0A8CC(v115, &qword_1EDBCAF50, v78, v79, sub_1B699332C);
    (*(v116 + 8))(v77, v62);
    v72 = v118;
    v73 = v120;
  }

  sub_1B6A0BDA4(v70, sub_1B6992BDC);
  v74 = v119;
  v80 = v105;
  v81 = v104;
LABEL_26:
  v82 = v102;
  sub_1B6980478(v74, v102, type metadata accessor for DiagnosticsConsentProvider);
  v83 = type metadata accessor for LazyDiagnosticStatus(0);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  *(v86 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v87 = *&v80[v103];
  *v81 = v87;
  v88 = v113;
  v109(v81, v110, v113);
  v89 = v87;
  LOBYTE(v87) = sub_1B6AB9110();
  v108(v81, v88);
  if (v87)
  {
    sub_1B6980F64(v82, v86 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v86 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v80;
    *&v123 = v86;
    sub_1B699332C(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v90 = v80;

    swift_task_localValuePush();
    sub_1B69A22AC(v73, v72, &v125);
    swift_task_localValuePop();

LABEL_30:

    sub_1B6A0BDA4(v74, type metadata accessor for DiagnosticsConsentProvider);
    return v125;
  }

LABEL_34:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B69976F8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69881C8(0, &qword_1EDBCBB10, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
  v36 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_1B69979CC(v25, v37);
      }

      else
      {
        sub_1B698FE74(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_1B69979CC(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_1B69979CC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B69979DC(uint64_t result)
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
  v7 = *v1;
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

  result = sub_1B6997AD4(result, v11, 1, v3);
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

char *sub_1B6997AD4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1B69809A4(0, &qword_1EDBC7FF0, &type metadata for Action.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B6997C0C(char *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  v68 = a4;
  v70 = a5;
  v71 = a2;
  v67 = a3;
  v65 = a1;
  v5 = sub_1B6AB90F0();
  v63 = *(v5 - 8);
  v64 = v5;
  v6 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v62 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB8E40();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v16 = v15;
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v57 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v57 - v28;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v69 = v19;
  v59 = v24;
  v60 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v66 = v72;
  if (v72)
  {
    v30 = *(v12 + 16);
    v30(v29, v72 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v11);
    v31 = *(v12 + 56);
    v31(v29, 0, 1, v11);
  }

  else
  {
    v31 = *(v12 + 56);
    v31(v29, 1, 1, v11);
    v30 = *(v12 + 16);
  }

  v30(v27, v71, v11);
  v31(v27, 0, 1, v11);
  v32 = *(v16 + 48);
  v33 = v69;
  sub_1B699A394(v29, v69, sub_1B6987C8C);
  sub_1B699A394(v27, v33 + v32, sub_1B6987C8C);
  v34 = *(v12 + 48);
  if (v34(v33, 1, v11) == 1)
  {
    sub_1B6984DF8(v27, sub_1B6987C8C);
    sub_1B6984DF8(v29, sub_1B6987C8C);
    if (v34(v33 + v32, 1, v11) == 1)
    {
      sub_1B6984DF8(v33, sub_1B6987C8C);
      v35 = v70;
LABEL_15:
      type metadata accessor for AccessSessionManager();
      v56 = swift_allocObject();
      *(v56 + 16) = v35;

      v67(v56);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v57 = v29;
  v36 = v33;
  v37 = v33;
  v38 = v59;
  sub_1B699A394(v36, v59, sub_1B6987C8C);
  if (v34(v37 + v32, 1, v11) == 1)
  {
    sub_1B6984DF8(v27, sub_1B6987C8C);
    sub_1B6984DF8(v57, sub_1B6987C8C);
    (*(v12 + 8))(v38, v11);
    v33 = v37;
LABEL_11:
    sub_1B6984DF8(v33, sub_1B6992BDC);
    v35 = v70;
    goto LABEL_12;
  }

  v53 = v58;
  (*(v12 + 32))(v58, v37 + v32, v11);
  sub_1B6AAFDD0();
  v54 = sub_1B6AB92A0();
  v55 = *(v12 + 8);
  v55(v53, v11);
  sub_1B6984DF8(v27, sub_1B6987C8C);
  sub_1B6984DF8(v57, sub_1B6987C8C);
  v55(v38, v11);
  sub_1B6984DF8(v37, sub_1B6987C8C);
  v35 = v70;
  if (v54)
  {
    goto LABEL_15;
  }

LABEL_12:
  v39 = v61;
  sub_1B699A394(v71, v61, type metadata accessor for DiagnosticsConsentProvider);
  v40 = type metadata accessor for LazyDiagnosticStatus(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  *(v43 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v45 = v64;
  v44 = v65;
  v46 = *&v65[OBJC_IVAR___AAAccessQueue_queue];
  v48 = v62;
  v47 = v63;
  *v62 = v46;
  (*(v47 + 104))(v48, *MEMORY[0x1E69E8020], v45);
  v49 = v46;
  LOBYTE(v46) = sub_1B6AB9110();
  result = (*(v47 + 8))(v48, v45);
  if (v46)
  {
    sub_1B6980F64(v39, v43 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v43 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v44;
    v72 = v43;
    sub_1B69930AC(0);
    v51 = v44;

    swift_task_localValuePush();
    type metadata accessor for AccessSessionManager();
    v52 = swift_allocObject();
    *(v52 + 16) = v35;

    v67(v52);

    swift_task_localValuePop();
LABEL_16:
  }

  __break(1u);
  return result;
}

uint64_t sub_1B699835C(uint64_t a1)
{
  sub_1B6A0A7A4(0, &qword_1EDBCC3A8, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_WORD *storeEnumTagSinglePayload for ExternalAnalyticsUploader.Errors(_WORD *result, int a2, int a3)
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

uint64_t sub_1B6998460(uint64_t a1, void (*a2)(uint64_t), uint64_t a3)
{
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6980478(*(a1 + 16) + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, v9, type metadata accessor for DiagnosticsConsentProvider);
  v10 = *(a1 + 48);

  sub_1B6997C0C(v10, v9, a2, a3, a1);
  return sub_1B6A0BDA4(v9, type metadata accessor for DiagnosticsConsentProvider);
}

uint64_t sub_1B6998590(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v63 = a4;
  *&v64 = a5;
  v61 = a2;
  v62 = a3;
  v60 = type metadata accessor for Session();
  v8 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SessionManager.SessionState(0);
  v11 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6AB90F0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = (&v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(*(v5 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13);
  v19 = v18;
  v20 = sub_1B6AB9110();
  result = (*(v14 + 8))(v17, v13);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v59 = v10;
  type metadata accessor for SessionData();
  swift_getWitnessTable();
  v22 = type metadata accessor for PushEvent();
  v23 = (a1 + v22[9]);
  v24 = *v23;
  v25 = v23[1];
  v26 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
  swift_beginAccess();
  v27 = *(v5 + v26);
  if (*(v27 + 16) && (v28 = sub_1B6993940(v24, v25), (v29 & 1) != 0))
  {
    sub_1B6982544(*(v27 + 56) + 40 * v28, &v67);
  }

  else
  {
    v69 = 0;
    v67 = 0u;
    v68 = 0u;
  }

  swift_endAccess();
  if (*(&v68 + 1))
  {
    sub_1B697ED90(0, &qword_1EDBCC3B0);
    type metadata accessor for DataEventStack();
    if (swift_dynamicCast())
    {
      v31 = *(&v70 + 1);
      v30 = v70;
      v32 = v71;
      goto LABEL_11;
    }
  }

  else
  {
    sub_1B699835C(&v67);
  }

  v30 = sub_1B699A428();
LABEL_11:
  *&v70 = v30;
  *(&v70 + 1) = v31;
  v71 = v32;
  v33 = v22[11];
  v34 = *(a1 + v22[10]);
  v35 = *(a1 + v33);
  v36 = type metadata accessor for DataEventStack();
  sub_1B6A25A5C(a1, v61, v34, v35, v62, v63, v64, v36);
  *(&v68 + 1) = v36;
  v69 = &off_1F2E77398;
  v67 = v70;
  *&v68 = v71;
  swift_beginAccess();

  sub_1B699A480(&v67, v24, v25);
  swift_endAccess();
  v37 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v38 = v6 + v37;
  v39 = v66;
  sub_1B6980478(v38, v66, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v41 = type metadata accessor for SessionManager.SessionState;
    v42 = v39;
  }

  else
  {
    v43 = *v39;
    v44 = *(v6 + 24);
    v45 = *(*v39 + 16);
    v46 = *(*v39 + 24);
    v65 = v45;
    v66 = v44;
    v47 = *&v43[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v48 = *(v43 + 4);
    v49 = *(v43 + 5);
    v50 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v51 = v60;
    v52 = *(v60 + 28);
    *&v40 = *&v43[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v64 = v40;
    v53 = sub_1B6AB8DB0();
    v54 = v59;
    (*(*(v53 - 8) + 16))(&v59[v52], &v43[v50], v53);

    sub_1B6992E2C(v48, v49);
    v55 = sub_1B699696C(v43);
    *&v56 = v64;
    *(&v56 + 1) = v47;
    *&v57 = v48;
    *(&v57 + 1) = v49;
    *v54 = v65;
    *(v54 + 8) = v46;
    *(v54 + 16) = v56;
    *(v54 + 32) = v57;
    *(v54 + *(v51 + 32)) = v55;
    sub_1B69A5404(v54);

    v41 = type metadata accessor for Session;
    v42 = v54;
  }

  return sub_1B6A0BDA4(v42, v41);
}

uint64_t sub_1B6998ABC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  type metadata accessor for DataEventStack.Entry();
  v3 = sub_1B6AB95D0();

  return MEMORY[0x1EEE69500](0, v3);
}

uint64_t getEnumTagSinglePayload for ExternalAnalyticsUploader.Errors(unsigned int *a1, int a2)
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

uint64_t AccessSessionManager.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6998B8C()
{
  v39 = v0;
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = sub_1B6AB9560();
  *(v3 + 16) = 20;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v0 + 16) = v3;
  sub_1B6994494(v1, v2);
  sub_1B69A9404(v1, v2, v1, v2, (v0 + 16));
  v4 = *(v0 + 16);
  *(v0 + 56) = v4;
  v5 = sub_1B69A96F4((v4 + 32), *(v4 + 16));
  v7 = v6;
  *(v0 + 64) = v5;
  *(v0 + 72) = v6;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v8 = sub_1B6AB8F90();
  *(v0 + 80) = v8;
  *(v0 + 88) = __swift_project_value_buffer(v8, qword_1EDBCFDA8);
  sub_1B6994494(v5, v7);
  v9 = sub_1B6AB8F80();
  v10 = sub_1B6AB9900();
  sub_1B6993C94(v5, v7);
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v38 = v12;
    *v11 = 136315138;
    *(v0 + 24) = sub_1B69A97A4(v5, v7);
    sub_1B69A9B10();
    v37 = v5;
    sub_1B699918C();
    v13 = sub_1B6AB9290();
    v15 = v14;

    v16 = sub_1B698F63C(v13, v15, &v38);

    *(v11 + 4) = v16;
    _os_log_impl(&dword_1B697C000, v9, v10, "Generated SHA1 from data, %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    v17 = v12;
    v18 = v37;
    MEMORY[0x1B8C99550](v17, -1, -1);
    MEMORY[0x1B8C99550](v11, -1, -1);
  }

  else
  {

    v18 = v5;
  }

  v19 = *(*(v0 + 48) + 16);
  v21 = v19[2];
  v20 = v19[3];
  v22 = v19[4];
  v23 = v19[5];
  v24 = (v19[6] + OBJC_IVAR___AAClient_identifier);
  v25 = *v24;
  v26 = v24[1];
  v27 = objc_allocWithZone(MEMORY[0x1E698CAC8]);

  v28 = sub_1B6AB92B0();

  v29 = [v27 initWithBundleIdentifier_];

  v30 = sub_1B6AB92B0();
  v31 = sub_1B6AB92B0();
  v32 = [objc_opt_self() bagForProfile:v30 profileVersion:v31 processInfo:v29];
  *(v0 + 96) = v32;

  sub_1B6986438(0, &qword_1EDBC9BA0, 0x1E698C9F0);
  v33 = *(MEMORY[0x1E698C488] + 4);
  v34 = v32;
  v35 = swift_task_alloc();
  *(v0 + 104) = v35;
  *v35 = v0;
  v35[1] = sub_1B69ACF4C;

  return MEMORY[0x1EEDEE018](v18, v7, 1, v34);
}

uint64_t AccessSessionManager.push<A>(_:traits:file:line:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v18 = a3;
  v8 = type metadata accessor for SessionData();
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for PushEvent();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  sub_1B698D998(a1, v8, WitnessTable, &v17 - v13);
  v15 = *(v5 + 16);
  sub_1B6998590(v14, a2, v18, v19, v20);
  return (*(v11 + 8))(v14, v10);
}

void sub_1B69990B4()
{
  if (!qword_1EDBCCC50)
  {
    sub_1B6994A40();
    v0 = sub_1B6ABA090();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCCC50);
    }
  }
}

uint64_t sub_1B6999114@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_1B6AB8BB0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, a1 + v5, v6);
}

unint64_t sub_1B699918C()
{
  result = qword_1EDBCB650;
  if (!qword_1EDBCB650)
  {
    sub_1B6999200(255, &qword_1EDBCAFF0, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB650);
  }

  return result;
}

void sub_1B6999200(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6999254(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1B69992A4()
{
  v4 = *(v0 + OBJC_IVAR___AAClient_identifier);
  v5 = *(v0 + OBJC_IVAR___AAClient_identifier + 8);

  MEMORY[0x1B8C97BE0](47, 0xE100000000000000);
  v2 = *(v0 + OBJC_IVAR___AAClient_version);
  v3 = *(v0 + OBJC_IVAR___AAClient_version + 8);

  MEMORY[0x1B8C97BE0](46, 0xE100000000000000);
  MEMORY[0x1B8C97BE0](*(v0 + OBJC_IVAR___AAClient_buildNumber), *(v0 + OBJC_IVAR___AAClient_buildNumber + 8));
  MEMORY[0x1B8C97BE0](v2, v3);

  return v4;
}

void sub_1B6999350(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1B6AB9EA0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1B69993A8(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v44 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (!v4)
  {
    if ((a2 & 0xFF000000000000) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    if (sub_1B69997EC(&unk_1F2E73ED0, a1, a2))
    {
      goto LABEL_10;
    }

    memset(&strm, 0, sizeof(strm));
    if (v4 == 2)
    {
      v11 = *(v3 + 16);
      v12 = *(v3 + 24);
      v13 = sub_1B6AB8900();
      if (v13)
      {
        v14 = sub_1B6AB8930();
        if (__OFSUB__(v11, v14))
        {
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
        }

        v13 += v11 - v14;
      }

      if (__OFSUB__(v12, v11))
      {
        goto LABEL_97;
      }

      sub_1B6AB8920();
      if (v13)
      {
        strm.next_in = v13;
      }

      v16 = *(v3 + 16);
      v15 = *(v3 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (!v17)
      {
        goto LABEL_32;
      }

      __break(1u);
    }

    else if (v4 == 1)
    {
      if (v3 > v3 >> 32)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
        goto LABEL_99;
      }

      v7 = sub_1B6AB8900();
      if (v7)
      {
        v8 = v7;
        v9 = sub_1B6AB8930();
        if (__OFSUB__(v3, v9))
        {
          goto LABEL_100;
        }

        v10 = (v3 - v9 + v8);
        sub_1B6AB8920();
        if (v10)
        {
          strm.next_in = v10;
        }
      }

      else
      {
        sub_1B6AB8920();
      }

      LODWORD(v18) = HIDWORD(v3) - v3;
      if (__OFSUB__(HIDWORD(v3), v3))
      {
        goto LABEL_98;
      }

      v18 = v18;
LABEL_32:
      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_87;
      }

      if (HIDWORD(v18))
      {
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
        goto LABEL_96;
      }

LABEL_34:
      strm.avail_in = v18;
      v19 = deflateInit2_(&strm, 9, 8, 31, 9, 0, "1.2.12", 112);
      if (v19)
      {
        v20 = v19;
        sub_1B6A254A8();
        swift_allocError();
        *v21 = v20;
        swift_willThrow();
        goto LABEL_11;
      }

      v22 = sub_1B6AB8950();
      v23 = *(v22 + 48);
      v24 = *(v22 + 52);
      swift_allocObject();
      v25 = sub_1B6AB8940() | 0x4000000000000000;
      v41 = 0;
      v42 = v25;
      if (!strm.avail_out)
      {
        v26 = 0;
        while (1)
        {
          if ((strm.total_out & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_81:
            __break(1u);
LABEL_82:
            __break(1u);
LABEL_83:
            __break(1u);
LABEL_84:
            __break(1u);
LABEL_85:
            __break(1u);
LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v27 = v25 >> 62;
          if ((v25 >> 62) <= 1)
          {
            break;
          }

          if (v27 == 2)
          {
            v29 = *(v26 + 16);
            v28 = *(v26 + 24);
            v17 = __OFSUB__(v28, v29);
            v30 = v28 - v29;
            if (v17)
            {
              goto LABEL_89;
            }

            if (strm.total_out < v30)
            {
              goto LABEL_61;
            }

LABEL_49:
            if (v27 == 2)
            {
              v33 = *(v26 + 16);
              v32 = *(v26 + 24);
              v17 = __OFSUB__(v32, v33);
              v31 = v32 - v33;
              if (v17)
              {
                goto LABEL_94;
              }
            }

            else if (v27 == 1)
            {
              LODWORD(v31) = HIDWORD(v26) - v26;
              if (__OFSUB__(HIDWORD(v26), v26))
              {
                goto LABEL_93;
              }

              v31 = v31;
            }

            else
            {
              v31 = BYTE6(v25);
            }

            goto LABEL_58;
          }

          v31 = 0;
LABEL_58:
          if (__OFADD__(v31, 0x4000))
          {
            goto LABEL_85;
          }

          if (v31 + 0x4000 < 0)
          {
            goto LABEL_86;
          }

          sub_1B6AB8C20();
LABEL_61:
          sub_1B6999A10(&v41, &strm);
          v26 = v41;
          v25 = v42;
          v34 = v42 >> 62;
          if ((v42 >> 62) > 1)
          {
            if (v34 != 2)
            {
              LODWORD(v35) = 0;
              goto LABEL_74;
            }

            v37 = *(v41 + 16);
            v36 = *(v41 + 24);
            v17 = __OFSUB__(v36, v37);
            v35 = v36 - v37;
            if (v17)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (!v34)
            {
              LODWORD(v35) = BYTE6(v42);
              goto LABEL_74;
            }

            LODWORD(v35) = HIDWORD(v41) - v41;
            if (__OFSUB__(HIDWORD(v41), v41))
            {
              goto LABEL_92;
            }

            v35 = v35;
          }

          if ((v35 & 0x8000000000000000) != 0)
          {
            goto LABEL_81;
          }

          if (HIDWORD(v35))
          {
            goto LABEL_82;
          }

LABEL_74:
          if (HIDWORD(strm.total_out))
          {
            goto LABEL_83;
          }

          v38 = v35 >= LODWORD(strm.total_out);
          v39 = v35 - LODWORD(strm.total_out);
          if (!v38)
          {
            goto LABEL_84;
          }

          strm.avail_out = v39;
          deflate(&strm, 4);
          if (strm.avail_out)
          {
            goto LABEL_78;
          }
        }

        if (v27)
        {
          if (__OFSUB__(HIDWORD(v26), v26))
          {
            goto LABEL_90;
          }

          if (strm.total_out < HIDWORD(v26) - v26)
          {
            goto LABEL_61;
          }
        }

        else if (strm.total_out < BYTE6(v25))
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

LABEL_78:
      deflateEnd(&strm);
      if ((strm.total_out & 0x8000000000000000) == 0)
      {
        sub_1B6AB8C20();
        v3 = v41;
        v40 = v42;
        sub_1B6994494(v41, v42);
        sub_1B6993C94(v3, v40);
        goto LABEL_11;
      }

      goto LABEL_95;
    }

    strm.next_in = &v41;
    LODWORD(v18) = BYTE6(a2);
    goto LABEL_34;
  }

  if (a1 != a1 >> 32)
  {
    goto LABEL_9;
  }

LABEL_10:
  sub_1B6994494(v3, a2);
LABEL_11:
  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t sub_1B69997EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_1B6AB8CB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3 >> 62 == 2)
  {
    v11 = *(a2 + 16);
  }

  sub_1B6994494(a2, a3);
  sub_1B6AB8CC0();
  sub_1B69999B8();
  v12 = 0;
  while (1)
  {
    result = sub_1B6AB9B80();
    if (v17[15])
    {
      result = (*(v7 + 8))(v10, v6);
      v16 = *(a1 + 16);
      if (v16 != v12)
      {
        if (v12 < v16)
        {
          return 0;
        }

        goto LABEL_15;
      }

      return 1;
    }

    v14 = *(a1 + 16);
    if (v12 == v14)
    {
      (*(v7 + 8))(v10, v6);
      return 1;
    }

    if (v12 >= v14)
    {
      break;
    }

    v15 = *(a1 + 32 + v12++);
    if (v17[14] != v15)
    {
      (*(v7 + 8))(v10, v6);
      return 0;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_1B69999B8()
{
  result = qword_1EDBCBA88;
  if (!qword_1EDBCBA88)
  {
    sub_1B6AB8CB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBA88);
  }

  return result;
}

uint64_t *sub_1B6999A10(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v23 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1B6993C94(v5, v4);
      v21 = v5;
      v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1B6ABD8A0;
      sub_1B6993C94(0, 0xC000000000000000);
      result = sub_1B6999CA4(&v21, a2);
      v18 = v22 | 0x4000000000000000;
      *v3 = v21;
      v3[1] = v18;
      goto LABEL_14;
    }

    result = sub_1B6993C94(v5, v4);
    v21 = v5;
    LOWORD(v22) = v4;
    BYTE2(v22) = BYTE2(v4);
    BYTE3(v22) = BYTE3(v4);
    BYTE4(v22) = BYTE4(v4);
    BYTE5(v22) = BYTE5(v4);
    BYTE6(v22) = BYTE6(v4);
    v7 = *(a2 + 40);
    if ((v7 & 0x8000000000000000) == 0)
    {
      *(a2 + 24) = &v21 + v7;
      v8 = v22 | ((WORD2(v22) | (BYTE6(v22) << 16)) << 32);
      *v3 = v21;
      v3[1] = v8;
LABEL_14:
      v20 = *MEMORY[0x1E69E9840];
      return result;
    }

    __break(1u);
    goto LABEL_16;
  }

  if (v6 != 2)
  {
    v19 = *(a2 + 40);
    if ((v19 & 0x8000000000000000) == 0)
    {
      *(a2 + 24) = &v21 + v19;
      goto LABEL_14;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *result;

  sub_1B6993C94(v5, v4);
  v21 = v5;
  v22 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1B6ABD8A0;
  sub_1B6993C94(0, 0xC000000000000000);
  sub_1B6AB8BC0();
  v11 = v21;
  v10 = v22;
  v12 = *(v21 + 16);
  v13 = *(v21 + 24);
  result = sub_1B6AB8900();
  if (result)
  {
    v14 = result;
    v15 = sub_1B6AB8930();
    v16 = v12 - v15;
    if (!__OFSUB__(v12, v15))
    {
      if (!__OFSUB__(v13, v12))
      {
        result = sub_1B6AB8920();
        v17 = *(a2 + 40);
        if ((v17 & 0x8000000000000000) == 0)
        {
          *(a2 + 24) = v14 + v16 + v17;
          *v3 = v11;
          v3[1] = v10 | 0x8000000000000000;
          goto LABEL_14;
        }

LABEL_19:
        __break(1u);
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6999CA4(int *a1, uint64_t a2)
{
  result = sub_1B6AB8BE0();
  v5 = *a1;
  if (a1[1] < v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  v6 = *(a1 + 1);

  result = sub_1B6AB8900();
  if (result)
  {
    v7 = result;
    result = sub_1B6AB8930();
    v8 = __OFSUB__(v5, result);
    v9 = v5 - result;
    if (!v8)
    {
      result = sub_1B6AB8920();
      v10 = *(a2 + 40);
      if ((v10 & 0x8000000000000000) == 0)
      {
        *(a2 + 24) = v7 + v9 + v10;
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B6999D48(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1B6999DF4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6999DF4()
{
  if (!qword_1EDBC9BD0)
  {
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC9BD0);
    }
  }
}

uint64_t sub_1B6999E44(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4, uint64_t a5, void (*a6)(uint64_t, _BYTE *))
{
  v7 = v6;
  v9 = *v6;
  if (*(*v6 + 24) > a1)
  {
    v10 = *(*v6 + 24);
  }

  sub_1B699A1D4(0, a3, a4);
  v40 = a2;
  result = sub_1B6AB9E80();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v7;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = (*(v9 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v9 + 56) + 40 * v25;
      if (v40)
      {
        a6(v29, v42);
      }

      else
      {
        sub_1B6982544(v29, v42);
      }

      v30 = *(v12 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
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
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v27;
      v21[1] = v28;
      result = (a6)(v42, *(v12 + 56) + 40 * v20);
      ++*(v12 + 16);
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_36;
    }

    v38 = 1 << *(v9 + 32);
    v7 = v39;
    if (v38 >= 64)
    {
      bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v7 = v12;
  return result;
}

unint64_t sub_1B699A11C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1B6ABA0F0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1B699A1D4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  if (!*a2)
  {
    sub_1B697ED90(255, a3);
    v4 = sub_1B6AB9EA0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B699A23C()
{
  sub_1B6984DF8(v0 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, type metadata accessor for DiagnosticsConsentProvider);

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B699A2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B699A32C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B699A394(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B699A480(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B6980E70(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1B699A5C4(v10, a2, a3, isUniquelyReferenced_nonNull_native, sub_1B69DEA40, sub_1B699A754, sub_1B699A784, sub_1B699A784);

    *v3 = v9;
  }

  else
  {
    sub_1B69E8690(a1, &unk_1EDBCC3A8, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType, sub_1B6994418);
    sub_1B6A96B74(a2, a3, v10);

    return sub_1B69E8690(v10, &unk_1EDBCC3A8, &qword_1EDBCC3B0, &protocol descriptor for DataEventStackType, sub_1B6994418);
  }

  return result;
}

uint64_t sub_1B699A5C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(uint64_t, uint64_t *), uint64_t (*a8)(uint64_t, uint64_t))
{
  v12 = v8;
  v17 = *v8;
  v18 = sub_1B6993940(a2, a3);
  v20 = *(v17 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v19;
  v25 = *(v17 + 24);
  if (v25 < v23 || (a4 & 1) == 0)
  {
    if (v25 >= v23 && (a4 & 1) == 0)
    {
      v26 = v18;
      a5();
      v18 = v26;
      goto LABEL_8;
    }

    a6(v23, a4 & 1);
    v27 = *v12;
    v18 = sub_1B6993940(a2, a3);
    if ((v24 & 1) != (v28 & 1))
    {
LABEL_16:
      result = sub_1B6ABA190();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v29 = *v12;
  if (v24)
  {
    v30 = (v29[7] + 40 * v18);
    __swift_destroy_boxed_opaque_existential_1(v30);

    return a7(a1, v30);
  }

  else
  {
    sub_1B699A788(v18, a2, a3, a1, v29, a8);
  }
}

uint64_t sub_1B699A788(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a5[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = a6(a4, a5[7] + 40 * a1);
  v9 = a5[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v11;
  }

  return result;
}

uint64_t sub_1B699A7FC@<X0>(uint64_t a1@<X8>)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___baseURL;
  swift_beginAccess();
  sub_1B699AA2C(v1 + v10, v9);
  v11 = sub_1B6AB8BB0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1B699AAC0(v9);
  v13 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 24);
  v14 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider), v13);
  (*(v14 + 8))(v13, v14);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1B699AD30(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1B699AA2C(uint64_t a1, uint64_t a2)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B699AAC0(uint64_t a1)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1B699AB90()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_1B6AB8B20();
  v6[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v6];

  if (v2)
  {
    result = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_1B6AB8A70();

    result = swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B699AC80()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

BOOL sub_1B699ACBC(unsigned __int8 a1, uint64_t a2)
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

uint64_t sub_1B699AD30(uint64_t a1, uint64_t a2)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B699ADC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a3;
  v38 = a4;
  v10 = sub_1B6AB90F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(*(v6 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v14 = v15;
  (*(v11 + 104))(v14, *MEMORY[0x1E69E8020], v10);
  v16 = v15;
  LOBYTE(v15) = sub_1B6AB9110();
  result = (*(v11 + 8))(v14, v10);
  if ((v15 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  v36 = a5;
  v18 = type metadata accessor for PushEvent();
  v19 = (a1 + v18[9]);
  v21 = *v19;
  v20 = v19[1];
  if (!sub_1B699ACBC(2u, a2) || (sub_1B69BEDE8(v21, v20, 0, 0, 1, &v39), v22 = v41, result = sub_1B6A23F44(&v39, &qword_1EDBCA9F8, qword_1EDBCB8B0, &protocol descriptor for DataEventType), !v22))
  {
    swift_beginAccess();
    v23 = *(v6 + 128);
    if (*(v23 + 16))
    {
      v24 = *(v6 + 128);

      v25 = sub_1B6993940(v21, v20);
      if (v26)
      {
        sub_1B6982544(*(v23 + 56) + 40 * v25, &v39);

        sub_1B697ED90(0, &qword_1EDBCC3B0);
        type metadata accessor for DataEventStack();
        if (swift_dynamicCast())
        {
          v28 = *(&v43 + 1);
          v27 = v43;
          v29 = v44;
LABEL_10:
          *&v43 = v27;
          *(&v43 + 1) = v28;
          v44 = v29;
          if (sub_1B699ACBC(1u, a2))
          {
            v30 = type metadata accessor for DataEventStack();
            sub_1B6998ABC(v30);
          }

          v31 = v18[11];
          v32 = *(a1 + v18[10]);
          v33 = *(a1 + v31);
          v34 = type metadata accessor for DataEventStack();
          sub_1B6A25A5C(a1, a2, v32, v33, v37, v38, v36, v34);
          v41 = v34;
          v42 = &off_1F2E77398;
          v39 = v43;
          v40 = v44;
          swift_beginAccess();

          sub_1B699A480(&v39, v21, v20);
          swift_endAccess();
          sub_1B6A4EDB4(v21, v20);
          return sub_1B6A4F44C(v21, v20);
        }
      }

      else
      {
      }
    }

    v27 = sub_1B699A428();
    goto LABEL_10;
  }

  return result;
}

void sub_1B699B134()
{
  sub_1B6AB8DB0();
  if (v0 <= 0x3F)
  {
    sub_1B697EF74();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B699B1D0()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B699B284(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v207 = a5;
  v206 = a4;
  v221 = a3;
  v219 = a2;
  v216 = sub_1B6AB8BB0();
  v220 = *(v216 - 8);
  v8 = *(v220 + 64);
  v9 = MEMORY[0x1EEE9AC00](v216);
  v217 = &v178 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = v10;
  MEMORY[0x1EEE9AC00](v9);
  v205 = &v178 - v11;
  v12 = MEMORY[0x1E69E6720];
  sub_1B69882EC(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v203 = &v178 - v15;
  v183 = sub_1B6AB90F0();
  v182 = *(v183 - 8);
  v16 = *(v182 + 64);
  MEMORY[0x1EEE9AC00](v183);
  v181 = (&v178 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v199 = sub_1B6AB8E40();
  v197 = *(v199 - 8);
  v18 = v197[8];
  MEMORY[0x1EEE9AC00](v199);
  v179 = &v178 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v196 = v20;
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20);
  v198 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69882EC(0, &qword_1EDBCAF50, MEMORY[0x1E69695A8], v12);
  v24 = *(*(v23 - 8) + 64);
  v25 = MEMORY[0x1EEE9AC00](v23 - 8);
  v180 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v200 = &v178 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v201 = &v178 - v29;
  v30 = sub_1B6AB8F90();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v191 = v33;
  v192 = &v178 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for DiagnosticsConsentProvider(0);
  v34 = *(*(v193 - 8) + 64);
  v35 = MEMORY[0x1EEE9AC00](v193);
  v184 = &v178 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v202 = &v178 - v37;
  v215 = sub_1B6AB9980();
  v214 = *(v215 - 8);
  v38 = *(v214 + 64);
  MEMORY[0x1EEE9AC00](v215);
  v213 = (&v178 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v211 = sub_1B6AB9950();
  v40 = *(*(v211 - 8) + 64);
  MEMORY[0x1EEE9AC00](v211);
  v212 = &v178 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1B6AB9090();
  v189 = *(v190 - 8);
  v42 = *(v189 + 64);
  v43 = MEMORY[0x1EEE9AC00](v190);
  v188 = &v178 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v210 = &v178 - v45;
  v218 = a1;
  sub_1B69A0068(a1, v6, &v228);
  v46 = v6[5];
  sub_1B6982544((v6 + 13), v227);
  sub_1B6982544((v6 + 8), &v226);
  sub_1B6986960();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  v50 = swift_allocObject();
  v51 = v50 + qword_1EDBCAD28;
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v30, qword_1EDBCFDA8);
  v194 = v31;
  v53 = *(v31 + 16);
  v195 = v30;
  v187 = v31 + 16;
  v186 = v53;
  v53(v51, v52, v30);
  type metadata accessor for UploadEndpoint();
  v54 = swift_allocObject();
  v225 = &unk_1F2E8AA48;
  v55 = swift_dynamicCastObjCProtocolConditional();
  if (v55)
  {
    v56 = v55;
  }

  else
  {
    v56 = v46;
  }

  *(v54 + 16) = v56;
  *(v54 + 24) = v55 != 0;
  *(v50 + 16) = v54;
  sub_1B6982544(v227, v50 + 40);
  *(v50 + 24) = 1885960807;
  *(v50 + 32) = 0xE400000000000000;
  sub_1B6982544(&v226, v50 + 80);
  *(v50 + 120) = 0;
  sub_1B6982544(&v226, &v224);
  v57 = swift_allocObject();
  sub_1B6980E70(&v224, v57 + 16);
  v209 = type metadata accessor for Lazy;
  sub_1B69882EC(0, qword_1EDBCBCC8, sub_1B699D1F0, type metadata accessor for Lazy);
  v58 = swift_allocObject();
  v59 = type metadata accessor for UnfairLock();
  *(v58 + 32) = 0u;
  *(v58 + 48) = 0u;
  *(v58 + 64) = 0;
  v60 = swift_allocObject();
  swift_unknownObjectRetain();
  v61 = swift_slowAlloc();
  *(v60 + 16) = v61;
  *v61 = 0;
  *(v60 + 24) = 0x10000;
  __swift_destroy_boxed_opaque_existential_1(&v226);
  __swift_destroy_boxed_opaque_existential_1(v227);
  *(v58 + 72) = v60;
  *(v58 + 80) = 1;
  *(v58 + 16) = sub_1B69BCE48;
  *(v58 + 24) = v57;
  *(v50 + 128) = v58;
  v62 = v6[4];
  v63 = v6[7];
  sub_1B6982544(&v228, v227);
  sub_1B6982544((v6 + 23), &v226);
  v208 = v6[6];
  v222 = v6;
  v64 = v6[28];
  v65 = type metadata accessor for UploadDropbox(0);
  v66 = *(v65 + 48);
  v67 = *(v65 + 52);
  v68 = swift_allocObject();
  *(v68 + 5) = MEMORY[0x1E69E7CC8];
  v69 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
  v70 = type metadata accessor for Session();
  (*(*(v70 - 8) + 56))(&v68[v69], 1, 1, v70);
  v71 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_lock;
  v72 = swift_allocObject();
  v73 = v63;
  v74 = v62;
  v75 = v64;
  v76 = swift_slowAlloc();
  *(v72 + 16) = v76;
  *v76 = 0;
  *(v72 + 24) = 0x10000;
  *&v68[v71] = v72;
  *(v68 + 2) = v74;
  *(v68 + 3) = v73;
  sub_1B6982544(v227, &v68[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider]);
  sub_1B6982544(&v226, &v68[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_fileManager]);
  *&v68[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_contentType] = v208;
  *&v68[OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_transparencyLogging] = v75;
  sub_1B6982544(v227, &v224);
  v77 = swift_allocObject();
  *(v77 + 16) = v73;
  sub_1B6980E70(&v224, v77 + 24);
  sub_1B69882EC(0, &qword_1EDBCBCC0, type metadata accessor for UploadDropbox.Debugging, v209);
  v79 = *(v78 + 48);
  v80 = *(v78 + 52);
  v81 = swift_allocObject();
  v82 = *(*v81 + 96);
  v83 = type metadata accessor for UploadDropbox.Debugging(0);
  (*(*(v83 - 8) + 56))(&v81[v82], 1, 1, v83);
  v84 = *(*v81 + 104);
  v85 = swift_allocObject();
  v209 = v73;
  v86 = swift_slowAlloc();
  *(v85 + 16) = v86;
  *v86 = 0;
  *(v85 + 24) = 0x10000;
  __swift_destroy_boxed_opaque_existential_1(&v226);
  __swift_destroy_boxed_opaque_existential_1(v227);
  *&v81[v84] = v85;
  *(v81 + 2) = sub_1B69EC33C;
  *(v81 + 3) = v77;
  *&v81[*(*v81 + 112)] = 1;
  *(v68 + 4) = v81;
  v227[3] = v65;
  v227[4] = &off_1F2E7AC40;
  v227[0] = v68;
  type metadata accessor for UploadManager();
  v87 = swift_allocObject();
  v88 = __swift_mutable_project_boxed_opaque_existential_1(v227, v65);
  v208 = &v178;
  v89 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v88);
  v91 = (&v178 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v92 + 16))(v91);
  v93 = *v91;
  v87[7] = v65;
  v87[8] = &off_1F2E7AC40;
  v87[4] = v93;
  v87[10] = MEMORY[0x1E69E7CC8];
  v185 = v59;
  v94 = swift_allocObject();
  v95 = swift_slowAlloc();
  *(v94 + 16) = v95;
  *v95 = 0;
  *(v94 + 24) = 0x10000;
  v87[11] = v94;
  sub_1B6986438(0, &qword_1EDBCBB40, 0x1E69E9610);
  v96 = v210;
  sub_1B6AB9080();
  v226 = MEMORY[0x1E69E7CC0];
  sub_1B69852F0(&qword_1EDBCBB48, MEMORY[0x1E69E8030]);
  v97 = MEMORY[0x1E69E8030];
  sub_1B69882EC(0, &qword_1EDBCBB70, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1B69880DC(&qword_1EDBCBB68, &qword_1EDBCBB70, v97);
  sub_1B6AB9BE0();
  (*(v214 + 104))(v213, *MEMORY[0x1E69E8098], v215);
  v87[12] = sub_1B6AB99D0();
  v87[2] = v50;
  v87[3] = &off_1F2E76AB0;
  v87[9] = v209;
  __swift_destroy_boxed_opaque_existential_1(v227);
  v98 = v219;
  if (!v219)
  {
    v100 = v216;
    v101 = v220;
    v102 = v218;
LABEL_31:
    sub_1B69B4E4C();
    v167 = sub_1B6AB9040();
    v168 = v203;
    (*(*(v167 - 8) + 56))(v203, 1, 1, v167);
    v169 = _s12AppAnalytics11AccessQueueC6globalyAC8Dispatch0F3QoSV0G6SClassOSgFZ_0(v168);
    sub_1B69ADAB0(v168, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8]);
    v170 = swift_allocObject();
    swift_weakInit();
    v171 = v205;
    (*(v101 + 16))(v205, v102, v100);
    v172 = (*(v101 + 80) + 24) & ~*(v101 + 80);
    v173 = (v204 + v172 + 7) & 0xFFFFFFFFFFFFFFF8;
    v174 = swift_allocObject();
    *(v174 + 16) = v170;
    (*(v101 + 32))(v174 + v172, v171, v100);
    *(v174 + v173) = v87;
    v175 = (v174 + ((v173 + 15) & 0xFFFFFFFFFFFFFFF8));
    v176 = v207;
    *v175 = v206;
    v175[1] = v176;

    sub_1B69ADB20(v169, sub_1B69EC348, v174);

    __swift_destroy_boxed_opaque_existential_1(&v228);
  }

  v99 = sub_1B6A6CC38();
  v103 = *(v99 + 16);
  v104 = v222;
  v214 = v99;
  if (v103)
  {

    v105 = sub_1B6AB8F80();
    v106 = sub_1B6AB9900();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 134217984;
      *(v107 + 4) = *(v214 + 16);

      _os_log_impl(&dword_1B697C000, v105, v106, "Will attempt to repair %ld batches", v107, 0xCu);
      MEMORY[0x1B8C99550](v107, -1, -1);
    }

    else
    {
    }
  }

  v215 = 0;
  v108 = v104[30];
  v213 = type metadata accessor for AccessQueue();
  v109 = objc_allocWithZone(v213);
  *&v109[OBJC_IVAR___AAAccessQueue_queue] = v108;
  v110 = v108;
  sub_1B6AB9050();
  v111 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  v112 = v96;
  v113 = v189;
  v114 = v188;
  v115 = v96;
  v116 = v190;
  (*(v189 + 16))(v188, v115, v190);
  sub_1B69882EC(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v118 = *(v117 + 48);
  v119 = *(v117 + 52);
  v120 = swift_allocObject();
  v121 = swift_allocObject();
  v122 = swift_slowAlloc();
  *(v121 + 16) = v122;
  *v122 = 0;
  *(v121 + 24) = 0x10000;
  (*(v113 + 8))(v112, v116);
  *(v120 + 2) = v121;
  (*(v113 + 32))(&v120[*(*v120 + 96)], v114, v116);
  *&v109[v111] = v120;
  swift_endAccess();
  v223.receiver = v109;
  v223.super_class = v213;
  v213 = objc_msgSendSuper2(&v223, sel_init);
  v123 = v192;
  v124 = v195;
  v186(v192, v222 + OBJC_IVAR____TtC12AppAnalytics12FlushManager_logger, v195);
  v125 = v194;
  v126 = (*(v194 + 80) + 16) & ~*(v194 + 80);
  v127 = swift_allocObject();
  (*(v125 + 32))(v127 + v126, v123, v124);
  v128 = v202;
  sub_1B6AB8E30();
  v129 = (v128 + *(v193 + 20));
  *v129 = sub_1B69EC3E8;
  v129[1] = v127;
  sub_1B698BF94(v98);
  v130 = qword_1EDBC9F60;

  if (v130 != -1)
  {
    swift_once();
  }

  v211 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v131 = v199;
  v132 = v198;
  v133 = v197;
  v212 = v227[0];
  if (v227[0])
  {
    v134 = v197[2];
    v135 = v201;
    v134(v201, v227[0] + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v199);
    v136 = v133[7];
    v136(v135, 0, 1, v131);
  }

  else
  {
    v136 = v197[7];
    v135 = v201;
    v136(v201, 1, 1, v199);
    v134 = v133[2];
  }

  v137 = v200;
  v134(v200, v202, v131);
  v136(v137, 0, 1, v131);
  v138 = *(v196 + 48);
  v139 = MEMORY[0x1E69695A8];
  sub_1B6994EC0(v135, v132, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B6994EC0(v137, v132 + v138, &qword_1EDBCAF50, v139);
  v140 = v133[6];
  if (v140(v132, 1, v131) == 1)
  {
    v141 = MEMORY[0x1E69695A8];
    sub_1B69ADAB0(v137, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B69ADAB0(v135, &qword_1EDBCAF50, v141);
    v142 = v132;
    if (v140(v132 + v138, 1, v131) == 1)
    {
      sub_1B69ADAB0(v132, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
      v100 = v216;
      v143 = v215;
      v144 = v213;
LABEL_28:
      sub_1B69EA060(v214, v222, v219, v221);
      if (!v143)
      {

        v101 = v220;
        goto LABEL_30;
      }

      goto LABEL_35;
    }

    goto LABEL_23;
  }

  v145 = v180;
  sub_1B6994EC0(v132, v180, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  v142 = v132;
  if (v140(v132 + v138, 1, v131) == 1)
  {
    v146 = MEMORY[0x1E69695A8];
    sub_1B69ADAB0(v200, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
    sub_1B69ADAB0(v201, &qword_1EDBCAF50, v146);
    (v133[1])(v145, v131);
LABEL_23:
    sub_1B69EC4A4(v142, sub_1B6992BDC);
    v100 = v216;
    v147 = v184;
    v143 = v215;
    v144 = v213;
    goto LABEL_24;
  }

  v160 = v132 + v138;
  v161 = v179;
  (v133[4])(v179, v160, v131);
  sub_1B69852F0(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
  v162 = v145;
  v163 = sub_1B6AB92A0();
  v164 = v133[1];
  v164(v161, v131);
  v165 = MEMORY[0x1E69695A8];
  sub_1B69ADAB0(v200, &qword_1EDBCAF50, MEMORY[0x1E69695A8]);
  sub_1B69ADAB0(v201, &qword_1EDBCAF50, v165);
  v164(v162, v131);
  sub_1B69ADAB0(v142, &qword_1EDBCAF50, v165);
  v100 = v216;
  v147 = v184;
  v143 = v215;
  v144 = v213;
  if (v163)
  {
    goto LABEL_28;
  }

LABEL_24:
  v215 = v87;
  sub_1B699A2C4(v202, v147, type metadata accessor for DiagnosticsConsentProvider);
  v148 = type metadata accessor for LazyDiagnosticStatus(0);
  v149 = *(v148 + 48);
  v150 = *(v148 + 52);
  v151 = swift_allocObject();
  *(v151 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v152 = *(v144 + OBJC_IVAR___AAAccessQueue_queue);
  v153 = v181;
  *v181 = v152;
  v154 = v144;
  v155 = v182;
  v156 = v183;
  (*(v182 + 104))(v153, *MEMORY[0x1E69E8020], v183);
  v157 = v152;
  v158 = sub_1B6AB9110();
  (*(v155 + 8))(v153, v156);
  if (v158)
  {
    sub_1B6980F64(v147, v151 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v151 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v154;
    v227[0] = v151;
    sub_1B69882EC(0, qword_1EDBC9F98, type metadata accessor for LazyDiagnosticStatus, MEMORY[0x1E69E6720]);
    v159 = v154;

    swift_task_localValuePush();
    sub_1B69EA060(v214, v222, v219, v221);
    swift_task_localValuePop();
    if (!v143)
    {
      v144 = v154;

      v101 = v220;
      v87 = v215;
LABEL_30:

      v166 = v219;
      sub_1B69A3100(v219);
      sub_1B69A3100(v166);

      sub_1B69EC4A4(v202, type metadata accessor for DiagnosticsConsentProvider);
      v102 = v218;
      goto LABEL_31;
    }
  }

  else
  {
    __break(1u);
  }

LABEL_35:

  __break(1u);
  return result;
}

uint64_t sub_1B699D034()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B699D06C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1B699D0AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1B699D0E4()
{
  v1 = sub_1B6AB8BB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

unint64_t sub_1B699D1F0()
{
  result = qword_1EDBCCB38[0];
  if (!qword_1EDBCCB38[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDBCCB38);
  }

  return result;
}

uint64_t sub_1B699D254(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1B6988350(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B699D2C8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB8BB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

size_t sub_1B699D33C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

size_t sub_1B699D530(size_t a1, int64_t a2, char a3)
{
  result = sub_1B699D33C(a1, a2, a3, *v3, &qword_1EDBCB628, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB0]);
  *v3 = result;
  return result;
}

uint64_t sub_1B699D580(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_1B697F028(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v53 - v8;
  v10 = type metadata accessor for Session();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_1B6AB8BB0();
  v54 = *(v15 - 8);
  v55 = v15;
  v16 = *(v54 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  swift_beginAccess();
  v22 = *(v2 + 40);
  if (*(v22 + 16) && (v23 = sub_1B6993940(a1, a2), (v24 & 1) != 0))
  {
    v25 = *(*(v22 + 56) + 8 * v23);
    swift_endAccess();
  }

  else
  {
    v53 = a1;
    swift_endAccess();
    v26 = OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_currentSession;
    swift_beginAccess();
    sub_1B69B596C(v3 + v26, v9);
    if ((*(v11 + 48))(v9, 1, v10) == 1)
    {
      sub_1B698E840(v9, qword_1EDBCCC78, type metadata accessor for Session);
      v27 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
      v28 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v27);
      (*(v28 + 8))(v27, v28);
      v30 = v53;
      v29 = v54;
      v31 = v55;
    }

    else
    {
      sub_1B69B6BF4(v9, v14, type metadata accessor for Session);
      v33 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 24);
      v32 = *(v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider + 32);
      __swift_project_boxed_opaque_existential_1((v3 + OBJC_IVAR____TtC12AppAnalytics13UploadDropbox_pathProvider), v33);
      (*(v32 + 8))(v33, v32);
      v34 = *v14;
      v35 = v14[1];
      sub_1B6AB8B30();
      v29 = v54;
      v36 = v19;
      v31 = v55;
      (*(v54 + 8))(v36, v55);
      sub_1B69B6CC4(v14, type metadata accessor for Session);
      v30 = v53;
    }

    v37 = type metadata accessor for UploadDropboxFile();
    v38 = *(v37 + 48);
    v39 = *(v37 + 52);
    v25 = swift_allocObject();
    *(v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_eventCount) = -1;
    *(v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_byteSize) = 0;
    v40 = v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state;
    *v40 = 0;
    *(v40 + 8) = 256;
    v41 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
    type metadata accessor for UnfairLock();
    v42 = swift_allocObject();
    v43 = swift_slowAlloc();
    *(v42 + 16) = v43;
    *v43 = 0;
    *(v42 + 24) = 0x10000;
    *(v25 + v41) = v42;
    v44 = (v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent);
    *v44 = 0;
    v44[1] = 0;
    v45 = v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_contentType;
    *v45 = 0;
    *(v45 + 8) = 1;
    v46 = (v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName);
    *v46 = 0;
    v46[1] = 0;
    v47 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate;
    v48 = sub_1B6AB8DB0();
    (*(*(v48 - 8) + 56))(v25 + v47, 1, 1, v48);
    v49 = (v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID);
    *v49 = 0;
    v49[1] = 0;
    *(v25 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_timestampConfiguration) = xmmword_1B6AC0320;
    *(v25 + 16) = v30;
    *(v25 + 24) = a2;

    sub_1B6AB8B30();
    (*(v29 + 8))(v21, v31);
    swift_beginAccess();

    v50 = *(v3 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v3 + 40);
    *(v3 + 40) = 0x8000000000000000;
    sub_1B699DC84(v25, v30, a2, isUniquelyReferenced_nonNull_native);

    *(v3 + 40) = v56;
    swift_endAccess();
  }

  return v25;
}

uint64_t type metadata accessor for UploadDropboxFile()
{
  result = qword_1EDBCB458;
  if (!qword_1EDBCB458)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B699DB38()
{
  v0 = sub_1B6AB8BB0();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_1B69867F8(319, &qword_1EDBCCF40, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_1B699DC84(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B699DE00(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B6993940(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DDE44();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1B699DE00(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69E0DB0(0, &qword_1EDBCAFE0, 255, type metadata accessor for UploadDropboxFile);
  v38 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void sub_1B699E0D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock;
  v4 = *(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock);
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  os_unfair_lock_lock_with_options();
  v7 = a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state;
  if (*(a1 + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state + 9))
  {
    sub_1B699E1A0(&v10);
    if (v1)
    {
      goto LABEL_8;
    }

    v8 = v10;
    v9 = v11;
    *v7 = v10;
    *(v7 + 8) = v9;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v8 = *v7;
    if ((*(v7 + 8) & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  if (v8)
  {
    v10 = 1;
    v11 = 0;
    sub_1B699F100(a1, &v10);
  }

LABEL_8:
  os_unfair_lock_unlock(*(*(a1 + v3) + 16));
}

void sub_1B699E1A0(uint64_t a1@<X8>)
{
  v3 = sub_1B6AB9320();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = sub_1B699E9F0(0xD00000000000003ELL, 0x80000001B6ACD8E0, 8);
  if (!v1)
  {
    if (v6 >> 60 == 15)
    {
      *a1 = 1;
      *(a1 + 8) = 1;
      return;
    }

    v14 = v6;
    v15 = v5;
    sub_1B6AB9310();
    v68 = v15;
    v69 = v14;
    v16 = sub_1B6AB92F0();
    if (!v17)
    {
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1B6ABF500;
      v31 = sub_1B6AB8B80();
      v33 = v32;
      v34 = MEMORY[0x1E69E6158];
      *(v30 + 56) = MEMORY[0x1E69E6158];
      v35 = sub_1B698CEC0();
      *(v30 + 64) = v35;
      *(v30 + 32) = v31;
      *(v30 + 40) = v33;
      v36 = sub_1B6AB8C60();
      v37 = [v36 description];

      v38 = sub_1B6AB92E0();
      v40 = v39;

      *(v30 + 96) = v34;
      *(v30 + 104) = v35;
      *(v30 + 72) = v38;
      *(v30 + 80) = v40;
      sub_1B6AB8F70();
      sub_1B69AE288(v68, v69);

      *a1 = 1;
      *(a1 + 8) = 1;
      return;
    }

    v18 = v17;
    v19 = HIBYTE(v17) & 0xF;
    v20 = v16 & 0xFFFFFFFFFFFFLL;
    if ((v17 & 0x2000000000000000) != 0)
    {
      v21 = HIBYTE(v17) & 0xF;
    }

    else
    {
      v21 = v16 & 0xFFFFFFFFFFFFLL;
    }

    v23 = v15;
    v22 = v14;
    if (!v21)
    {
LABEL_77:
      v55 = a1;
      v56 = v16;
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      sub_1B6AB98E0();
      sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1B6ABF500;
      v58 = sub_1B6AB8B80();
      v60 = v59;
      v61 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v62 = sub_1B698CEC0();
      *(v57 + 32) = v58;
      *(v57 + 40) = v60;
      *(v57 + 96) = v61;
      *(v57 + 104) = v62;
      *(v57 + 64) = v62;
      *(v57 + 72) = v56;
      *(v57 + 80) = v18;
      sub_1B6AB8F70();
      sub_1B69AE288(v68, v69);

      *v55 = 1;
      *(v55 + 8) = 1;
      return;
    }

    if ((v18 & 0x1000000000000000) != 0)
    {
      v63 = v16;

      v26 = sub_1B6AB1B98(v63, v18, 10);
      v65 = v64;

      v16 = v63;
      v23 = v15;
      v22 = v69;
      if (v65)
      {
        goto LABEL_77;
      }

      goto LABEL_81;
    }

    if ((v18 & 0x2000000000000000) != 0)
    {
      v70[0] = v16;
      v70[1] = v18 & 0xFFFFFFFFFFFFFFLL;
      if (v16 == 43)
      {
        if (v19)
        {
          v20 = v19 - 1;
          if (v19 != 1)
          {
            v26 = 0;
            v47 = v70 + 1;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                break;
              }

              v26 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v20)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_86:
        __break(1u);
        return;
      }

      if (v16 != 45)
      {
        if (v19)
        {
          v26 = 0;
          v52 = v70;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            ++v52;
            if (!--v19)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_75;
      }

      if (v19)
      {
        v20 = v19 - 1;
        if (v19 != 1)
        {
          v26 = 0;
          v41 = v70 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v26;
            if ((v26 * 10) >> 64 != (10 * v26) >> 63)
            {
              break;
            }

            v26 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v20)
            {
              goto LABEL_76;
            }
          }
        }

        goto LABEL_75;
      }
    }

    else
    {
      if ((v16 & 0x1000000000000000) != 0)
      {
        v24 = ((v18 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v66 = v16;
        v24 = sub_1B6AB9D40();
        v16 = v66;
        v20 = v67;
        v23 = v15;
        v22 = v69;
      }

      v25 = *v24;
      if (v25 == 43)
      {
        if (v20 >= 1)
        {
          if (--v20)
          {
            v26 = 0;
            if (v24)
            {
              v44 = v24 + 1;
              while (1)
              {
                v45 = *v44 - 48;
                if (v45 > 9)
                {
                  goto LABEL_75;
                }

                v46 = 10 * v26;
                if ((v26 * 10) >> 64 != (10 * v26) >> 63)
                {
                  goto LABEL_75;
                }

                v26 = v46 + v45;
                if (__OFADD__(v46, v45))
                {
                  goto LABEL_75;
                }

                ++v44;
                if (!--v20)
                {
                  goto LABEL_76;
                }
              }
            }

            goto LABEL_74;
          }

          goto LABEL_75;
        }

        goto LABEL_85;
      }

      if (v25 != 45)
      {
        if (v20)
        {
          v26 = 0;
          if (v24)
          {
            while (1)
            {
              v50 = *v24 - 48;
              if (v50 > 9)
              {
                goto LABEL_75;
              }

              v51 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_75;
              }

              v26 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                goto LABEL_75;
              }

              ++v24;
              if (!--v20)
              {
                goto LABEL_76;
              }
            }
          }

          goto LABEL_74;
        }

LABEL_75:
        v26 = 0;
        LOBYTE(v20) = 1;
LABEL_76:
        LOBYTE(v71) = v20;
        if (v20)
        {
          goto LABEL_77;
        }

LABEL_81:
        sub_1B69AE288(v23, v22);

        *a1 = v26;
        *(a1 + 8) = 0;
        return;
      }

      if (v20 >= 1)
      {
        if (--v20)
        {
          v26 = 0;
          if (v24)
          {
            v27 = v24 + 1;
            while (1)
            {
              v28 = *v27 - 48;
              if (v28 > 9)
              {
                goto LABEL_75;
              }

              v29 = 10 * v26;
              if ((v26 * 10) >> 64 != (10 * v26) >> 63)
              {
                goto LABEL_75;
              }

              v26 = v29 - v28;
              if (__OFSUB__(v29, v28))
              {
                goto LABEL_75;
              }

              ++v27;
              if (!--v20)
              {
                goto LABEL_76;
              }
            }
          }

LABEL_74:
          LOBYTE(v20) = 0;
          goto LABEL_76;
        }

        goto LABEL_75;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v71 = v1;
  v7 = v1;
  sub_1B697ED90(0, &qword_1EDBCBB00);
  if (swift_dynamicCast())
  {
    if (!v70[2])
    {

      *a1 = 0;
      *(a1 + 8) = 1;
      return;
    }
  }

  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98E0();
  sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B6ABF500;
  v9 = sub_1B6AB8B80();
  v11 = v10;
  v12 = MEMORY[0x1E69E6158];
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1B698CEC0();
  *(v8 + 64) = v13;
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  v71 = v1;
  sub_1B6AB9DF0();
  *(v8 + 96) = v12;
  *(v8 + 104) = v13;
  *(v8 + 72) = 0;
  *(v8 + 80) = 0xE000000000000000;
  sub_1B6AB8F70();

  *a1 = 1;
  *(a1 + 8) = 1;
}

char *sub_1B699E9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v25 = sub_1B699EC00(a3);
  v26 = v8;
  v9 = &v25;
  if ((sub_1B699ECC0(sub_1B699F030) & 0x8000000000000000) == 0)
  {
    v10 = sub_1B6AB8C40();
LABEL_3:
    v9 = v10;
LABEL_17:
    sub_1B6993C94(v25, v26);
    return v9;
  }

  v11 = MEMORY[0x1B8C977F0]();
  switch(v11)
  {
    case 93:
      v9 = 0;
      goto LABEL_17;
    case 34:
      sub_1B6AB8B80();
      v13 = sub_1B6AB9350();

      v14 = sub_1B6AB9350();
      v15 = getxattr((v13 + 32), (v14 + 32), 0, 0, 0, 0);

      if ((v15 & 0x8000000000000000) == 0)
      {
        v17 = v15;
        v9 = v5;
        v10 = sub_1B699E9F0(a1, a2, v17);
        if (v4)
        {
          goto LABEL_17;
        }

        goto LABEL_3;
      }

      break;
    case 2:
      sub_1B6A9204C();
      swift_allocError();
      v12[1] = 0;
      v12[2] = 0;
      *v12 = 0;
LABEL_16:
      swift_willThrow();
      goto LABEL_17;
    default:
      v18 = MEMORY[0x1B8C977F0]();
      v19 = MEMORY[0x1B8C977F0]();
      v16 = strerror(v19);
      if (v16)
      {
LABEL_15:
        v9 = sub_1B6AB93B0();
        v23 = v22;
        sub_1B6A9204C();
        swift_allocError();
        *v24 = v18;
        v24[1] = v9;
        v24[2] = v23;
        goto LABEL_16;
      }

      __break(1u);
      break;
  }

  v18 = MEMORY[0x1B8C977F0](v16);
  v20 = MEMORY[0x1B8C977F0]();
  result = strerror(v20);
  if (result)
  {
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B699EC00(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_1B699ECA0(result);
    }

    else
    {
      v2 = sub_1B6AB8950();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_1B6AB8910();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_1B6AB8C00();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

unint64_t sub_1B699ECA0(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_1B699ECC0(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22 = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1B6993C94(v6, v5);
      *&v21 = v6;
      WORD4(v21) = v5;
      BYTE10(v21) = BYTE2(v5);
      BYTE11(v21) = BYTE3(v5);
      BYTE12(v21) = BYTE4(v5);
      BYTE13(v21) = BYTE5(v5);
      BYTE14(v21) = BYTE6(v5);
      result = a1(&v20, &v21, &v21 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
      *v3 = v21;
      v3[1] = v9;
      goto LABEL_19;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1B6993C94(v6, v5);
    *v3 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if (sub_1B6AB8900() && __OFSUB__(v6, sub_1B6AB8930()))
      {
LABEL_22:
        __break(1u);
      }

      v13 = sub_1B6AB8950();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = sub_1B6AB88E0();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = sub_1B69B1028(v6, v6 >> 32, a1);

      *v3 = v6;
      v3[1] = v11 | 0x4000000000000000;
      if (!v2)
      {
        result = v17;
      }

      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_1B6993C94(v6, v5);
    *&v21 = v6;
    *(&v21 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1B6ABD8A0;
    sub_1B6993C94(0, 0xC000000000000000);
    sub_1B6AB8BC0();
    v10 = *(&v21 + 1);
    result = sub_1B69B1028(*(v21 + 16), *(v21 + 24), a1);
    *v3 = v21;
    v3[1] = v10 | 0x8000000000000000;
  }

  else
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    result = a1(&v20, &v21, &v21);
    if (!v2)
    {
      result = v20;
    }
  }

LABEL_19:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1B699F030@<X0>(void *a1@<X0>, ssize_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1B699F050(a1, v2[5], a2);
}

uint64_t sub_1B699F050@<X0>(void *a1@<X0>, size_t a2@<X5>, ssize_t *a3@<X8>)
{
  sub_1B6AB8B80();
  v6 = sub_1B6AB9350();

  v7 = sub_1B6AB9350();
  v8 = getxattr((v6 + 32), (v7 + 32), a1, a2, 0, 0);

  *a3 = v8;
  return result;
}

uint64_t sub_1B699F100(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  v4 = result + OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_state;
  *v4 = *a2;
  *(v4 + 8) = v3;
  if ((v3 & 1) == 0)
  {
    v5 = result;
    sub_1B699F418();
    v6 = MEMORY[0x1E69E6530];
    v7 = sub_1B6AB9BB0();
    v9 = sub_1B699F46C(v7, v8);
    v11 = v10;
    sub_1B699FBE4(v9, v10, 0xD00000000000003ELL, 0x80000001B6ACD8E0);
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98D0();
    sub_1B6A7B0E8(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1B6ABF500;
    v13 = MEMORY[0x1E69E65A8];
    *(v12 + 56) = v6;
    *(v12 + 64) = v13;
    *(v12 + 32) = v2;
    v15 = *(v5 + 16);
    v14 = *(v5 + 24);
    *(v12 + 96) = MEMORY[0x1E69E6158];
    *(v12 + 104) = sub_1B698CEC0();
    *(v12 + 72) = v15;
    *(v12 + 80) = v14;

    sub_1B6AB8F70();
    sub_1B6993C94(v9, v11);
  }

  return result;
}

unint64_t sub_1B699F418()
{
  result = qword_1EDBCB670[0];
  if (!qword_1EDBCB670[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDBCB670);
  }

  return result;
}

uint64_t sub_1B699F46C(uint64_t a1, unint64_t a2)
{
  v44 = *MEMORY[0x1E69E9840];
  *&v41 = a1;
  *(&v41 + 1) = a2;
  sub_1B699F974();

  if (swift_dynamicCast())
  {
    sub_1B6980E70(__src, &v42);
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    sub_1B6AB89B0();
    __src[0] = v41;
    __swift_destroy_boxed_opaque_existential_1(&v42);
    goto LABEL_63;
  }

  v40 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1B699F9D8(__src);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1B6AB9D40();
  }

  sub_1B699FA64(v4, v5, &v42);
  v6 = *(&v42 + 1);
  v7 = v42;
  if (*(&v42 + 1) >> 60 != 15)
  {
    __src[0] = v42;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1B69D5FDC(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0]);
  v10 = sub_1B69D53BC(sub_1B69D634C);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1B6AB8C10();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v41 + 7) = 0;
  *&v41 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1B69D5E18(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1B6AB93C0();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1B6AB9400();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v42 = v14;
      *(&v42 + 1) = v38;
      v31 = *(&v42 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1B6AB9D40();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1B69D5E18(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1B6AB93D0();
LABEL_52:
    *(&v41 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v42 = v41;
      *(&v42 + 6) = *(&v41 + 6);
      sub_1B6AB8C30();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v42 = v41;
    *(&v42 + 6) = *(&v41 + 6);
    sub_1B6AB8C30();
    sub_1B69AE288(v36, v35);
    goto LABEL_62;
  }

LABEL_57:

  sub_1B69AE288(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1B6994494(*&__src[0], *(&__src[0] + 1));

  sub_1B6993C94(v32, *(&v32 + 1));
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

unint64_t sub_1B699F974()
{
  result = qword_1EDBCA480;
  if (!qword_1EDBCA480)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBCA480);
  }

  return result;
}

uint64_t sub_1B699F9D8(uint64_t a1)
{
  sub_1B69D63D4(0, &qword_1EDBCA478, sub_1B699F974, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B699FA64@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1B699FB2C(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = sub_1B6AB8950();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = sub_1B6AB88F0();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1B6AB8C00();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1B699FB2C(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1B699FBE4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v38[19] = *MEMORY[0x1E69E9840];
  v38[5] = a3;
  v38[6] = a4;
  v38[7] = a1;
  v38[8] = a2;
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v38, 0, 14);
      sub_1B6AB8B80();
      v15 = sub_1B6AB9350();

      v16 = sub_1B6AB9350();
      v17 = setxattr((v15 + 32), (v16 + 32), v38, 0, 0, 0);

      if ((v17 & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_12;
    }

    v12 = *(a1 + 16);
    v13 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v38[0] = a1;
      LOWORD(v38[1]) = a2;
      BYTE2(v38[1]) = BYTE2(a2);
      BYTE3(v38[1]) = BYTE3(a2);
      BYTE4(v38[1]) = BYTE4(a2);
      BYTE5(v38[1]) = BYTE5(a2);
      v8 = BYTE6(a2);
      sub_1B6AB8B80();
      v9 = sub_1B6AB9350();

      v10 = sub_1B6AB9350();
      v11 = setxattr((v9 + 32), (v10 + 32), v38, v8, 0, 0);

      if (v11 < 0)
      {
        goto LABEL_12;
      }

LABEL_16:
      v37 = *MEMORY[0x1E69E9840];
      return;
    }

    v12 = a1;
    v13 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v14 = sub_1B6A91EEC(v12, v13, sub_1B6A91EC8);
  if (v4)
  {
    goto LABEL_19;
  }

  if ((v14 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_12:
  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98E0();
  sub_1B6A91F9C(0, &qword_1EDBCCC50, sub_1B6994A40);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B6ABD530;
  v19 = sub_1B6AB8B80();
  v21 = v20;
  v22 = MEMORY[0x1E69E6158];
  *(v18 + 56) = MEMORY[0x1E69E6158];
  v23 = sub_1B698CEC0();
  *(v18 + 32) = v19;
  *(v18 + 40) = v21;
  *(v18 + 96) = v22;
  *(v18 + 104) = v23;
  *(v18 + 64) = v23;
  *(v18 + 72) = a3;
  *(v18 + 80) = a4;

  LODWORD(v38[0]) = MEMORY[0x1B8C977F0](v24);
  v25 = sub_1B6ABA080();
  *(v18 + 136) = v22;
  *(v18 + 144) = v23;
  *(v18 + 112) = v25;
  *(v18 + 120) = v26;
  sub_1B6AB8F70();

  v27 = *MEMORY[0x1E696A798];
  v28 = MEMORY[0x1B8C977F0]();
  sub_1B6A91F9C(0, &qword_1EDBCB610, sub_1B69B4824);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6ABD890;
  v30 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_1B6AB92E0();
  *(inited + 40) = v31;
  v32 = MEMORY[0x1B8C977F0]();
  if (strerror(v32))
  {
    v33 = sub_1B6AB93B0();
    *(inited + 72) = v22;
    *(inited + 48) = v33;
    *(inited + 56) = v34;
    sub_1B69B4888(inited);
    swift_setDeallocating();
    sub_1B6A91FF0(inited + 32);
    v35 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
    v36 = sub_1B6AB91F0();

    [v35 initWithDomain:v27 code:v28 userInfo:v36];

    swift_willThrow();
    goto LABEL_16;
  }

  __break(1u);
LABEL_19:

  __break(1u);
}

uint64_t sub_1B69A0068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  v5 = sub_1B6AB8BB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v57 = &v53 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v56 = &v53 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v53 - v14;
  v16 = sub_1B6AB8B00();
  v17 = *(v6 + 16);
  if (v16)
  {
    v55 = *(v6 + 16);
    v17(v15, a1, v5);
    v58 = a2;
    v18 = sub_1B6AB8F80();
    v19 = sub_1B6AB9900();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      LODWORD(v54) = v19;
      v21 = v20;
      v22 = swift_slowAlloc();
      *&v60[0] = v22;
      *v21 = 136446210;
      v53 = sub_1B6AB8AC0();
      v24 = v23;
      (*(v6 + 8))(v15, v5);
      v25 = sub_1B698F63C(v53, v24, v60);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_1B697C000, v18, v54, "Flush manager attempting to flush sub-directory, url=%{public}s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1B8C99550](v22, -1, -1);
      MEMORY[0x1B8C99550](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v15, v5);
    }

    v36 = v56;
    v37 = a1;
    v53 = a1;
    v38 = v55;
    v55(v56, v37, v5);
    v39 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v54 = swift_allocObject();
    v40 = *(v6 + 32);
    v40(v54 + v39, v36, v5);
    v41 = v57;
    v38(v57, v53, v5);
    v42 = swift_allocObject();
    v40(v42 + v39, v41, v5);
    sub_1B6982544(v58 + 184, v60);
    v43 = type metadata accessor for StaticUploadDropboxPathProvider(0);
    v44 = *(v43 + 48);
    v45 = *(v43 + 52);
    v46 = swift_allocObject();
    v47 = *(v6 + 56);
    v47(v46 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___baseURL, 1, 1, v5);
    v47(v46 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___debugBaseURL, 1, 1, v5);
    v48 = (v46 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_baseURLProvider);
    v49 = v54;
    *v48 = sub_1B699D2C4;
    v48[1] = v49;
    v50 = (v46 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_debugURLProvider);
    *v50 = sub_1B69EC628;
    v50[1] = v42;
    result = sub_1B6980E70(v60, v46 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_fileManager);
    v52 = v59;
    v59[3] = v43;
    v52[4] = &off_1F2E7D030;
    *v52 = v46;
  }

  else
  {
    v17(v9, a1, v5);
    v26 = sub_1B6AB8F80();
    v27 = sub_1B6AB9900();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v58 = a2;
      v30 = v29;
      *&v60[0] = v29;
      *v28 = 136446210;
      v31 = sub_1B6AB8AC0();
      v33 = v32;
      (*(v6 + 8))(v9, v5);
      v34 = sub_1B698F63C(v31, v33, v60);
      v35 = v59;

      *(v28 + 4) = v34;
      _os_log_impl(&dword_1B697C000, v26, v27, "Flush manager attempting to flush file, url=%{public}s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      a2 = v58;
      MEMORY[0x1B8C99550](v30, -1, -1);
      MEMORY[0x1B8C99550](v28, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
      v35 = v59;
    }

    return sub_1B6982544(a2 + 144, v35);
  }

  return result;
}

uint64_t UploadDropboxFile.__deallocating_deinit()
{
  v1 = *(v0 + 3);

  v2 = OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_url;
  v3 = sub_1B6AB8BB0();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_lock];

  v5 = *&v0[OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_userAgent + 8];

  v6 = *&v0[OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_groupName + 8];

  sub_1B69AD890(&v0[OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionStartDate], &qword_1EDBCCF40, MEMORY[0x1E6969530]);
  v7 = *&v0[OBJC_IVAR____TtC12AppAnalytics17UploadDropboxFile_sessionID + 8];

  v8 = *(*v0 + 48);
  v9 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AccessTracker.time<A>(_:submitAndRestartWithSession:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *(*(result + 88) + OBJC_IVAR___AAAccessQueue_queue);
    *v15 = v18;
    (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
    v19 = v18;
    LOBYTE(v18) = sub_1B6AB9110();
    result = (*(v12 + 8))(v15, v11);
    if (v18)
    {
      v20 = *(v17 + 104);

      sub_1B6AB8DA0();
      sub_1B69A0AA0(a1, v20, v10, a2 & 1, v21, v22);

      return (*(v7 + 8))(v10, v6);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B69A0938()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B69A09A4(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    return sub_1B698DB14();
  }

  if (a2 >> 62 == 1)
  {
    v2 = [swift_getObjCClassFromMetadata() eventName];
    v3 = sub_1B6AB92E0();
  }

  else
  {
    v3 = *(a1 + OBJC_IVAR___AARawEvent_name);
    v4 = *(a1 + OBJC_IVAR___AARawEvent_name + 8);
  }

  return v3;
}

uint64_t sub_1B69A0A44(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_1B69EDC48(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69A0AA0(uint64_t a1, unint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v60 = a4;
  v59 = a3;
  v12 = type metadata accessor for Tracker.Timer(0);
  v61 = *(v12 - 8);
  v62 = v12;
  v13 = v61[8];
  MEMORY[0x1EEE9AC00](v12);
  v63 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A56C3C(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v58 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v52 - v19;
  v21 = sub_1B6AB90F0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v25 = (&v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = *(*(v7 + 88) + OBJC_IVAR___AAAccessQueue_queue);
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x1E69E8020], v21);
  v27 = v26;
  LOBYTE(v26) = sub_1B6AB9110();
  result = (*(v22 + 8))(v25, v21);
  if (v26)
  {
    v57 = a1;
    v53 = a2;
    v55 = a5;
    v56 = a6;
    v29 = sub_1B69A09A4(a1, a2);
    v31 = v30;
    swift_beginAccess();
    v54 = v7;
    v32 = *(v7 + 112);
    if (*(v32 + 16) && (v33 = *(v7 + 112), , v34 = sub_1B6993940(v29, v31), v36 = v35, , (v36 & 1) != 0))
    {
      v37 = v61;
      sub_1B699A32C(*(v32 + 56) + v61[9] * v34, v20, type metadata accessor for Tracker.Timer);

      (v37[7])(v20, 0, 1, v62);
      return sub_1B6A5718C(v20, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
    }

    else
    {

      v38 = v62;
      v39 = v61[7];
      v39(v20, 1, 1, v62);
      sub_1B6A5718C(v20, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
      v40 = sub_1B6AB8DB0();
      v41 = v63;
      (*(*(v40 - 8) + 16))(v63, v59, v40);
      v42 = v57;
      v43 = v53;
      v44 = sub_1B69A09A4(v57, v53);
      v46 = v45;
      v47 = v41;
      v48 = v58;
      sub_1B699A32C(v47, v58, type metadata accessor for Tracker.Timer);
      v39(v48, 0, 1, v38);
      swift_beginAccess();
      sub_1B69A0FE4(v48, v44, v46);
      swift_endAccess();
      if (v60)
      {
        v49 = sub_1B69A09A4(v42, v43);
        v51 = v50;
        v64[3] = type metadata accessor for Tracker.RestartTimer();
        v64[4] = &off_1F2E7AA40;
        v64[0] = v42;
        v64[1] = v43;
        swift_beginAccess();
        sub_1B6992B50(v42, v43);
        sub_1B69E1EC8(v64, v49, v51);
        swift_endAccess();
      }

      return sub_1B6984D38(v63, type metadata accessor for Tracker.Timer);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69A0FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B69E8EF8(0, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for Tracker.Timer(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1B69E8244(a1, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
    sub_1B6A96FA4(a2, a3, v10);

    return sub_1B69E8244(v10, qword_1EDBCB6F0, type metadata accessor for Tracker.Timer);
  }

  else
  {
    sub_1B69E86F0(a1, v14, type metadata accessor for Tracker.Timer);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B69A11E8(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_1B69A11E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B6993940(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Tracker.Timer(0);
      return sub_1B69E82B4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Tracker.Timer);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B69DF54C();
    goto LABEL_7;
  }

  sub_1B69A1354(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1B6993940(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B69A16E0(v12, a2, a3, a1, v18);
}

uint64_t sub_1B69A1354(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Tracker.Timer(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1B69E0DB0(0, &unk_1EDBCAA30, 255, type metadata accessor for Tracker.Timer);
  v44 = a2;
  result = sub_1B6AB9E80();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1B69E0FC0(v31, v45, type metadata accessor for Tracker.Timer);
      }

      else
      {
        sub_1B69E0F58(v31, v45, type metadata accessor for Tracker.Timer);
      }

      v32 = *(v12 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1B69E0FC0(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Tracker.Timer);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1B69A16E0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for Tracker.Timer(0);
  result = sub_1B69E86F0(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for Tracker.Timer);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1B69A178C@<X0>(unint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (a2)
  {
    LOBYTE(v6) = *(a4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity);
    result = *(a4 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity + 1);
LABEL_5:
    *a5 = a3;
    *(a5 + 8) = a6;
    *(a5 + 16) = v6 & 1;
    *(a5 + 17) = result;
    return result;
  }

  if (result < 4)
  {
    v6 = 0xEu >> (result & 0xF);
    goto LABEL_5;
  }

  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

void sub_1B69A1808()
{
  if (!qword_1EDBCBB98)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCBB98);
    }
  }
}

uint64_t sub_1B69A1870(uint64_t result)
{
  v2 = result;
  if (*(v1 + 16))
  {
    v3 = 0;
LABEL_5:
    *v2 = v3;
    return result;
  }

  v4 = *(v1 + 8);
  if (*v1 <= v4)
  {
    result = sub_1B6983348(result, *v1, v4);
    v3 = 4;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

_OWORD *sub_1B69A18C4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1B69DDC84();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1B69976F8(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1B6993940(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_1B6ABA190();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v23);

    return sub_1B69979CC(a1, v23);
  }

  else
  {
    sub_1B69A1A14(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_1B69A1A14(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B69979CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1B69A1A80()
{
  v1 = sub_1B6AB9030();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1B6AB9090();
  v52 = *(v6 - 8);
  v7 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB9000();
  v49 = *(v9 - 8);
  v50 = v9;
  v10 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_1B6AB90C0();
  v47 = *(v13 - 8);
  v48 = v13;
  v14 = *(v47 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v41 - v18;
  v19 = sub_1B6AB9A00();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  result = MEMORY[0x1EEE9AC00](v19);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v0 + 40);
  if (v25 > 0.0)
  {
    v41 = v5;
    v42 = v6;
    v43 = v2;
    v44 = v1;
    v45 = v0;
    if (*(v0 + 48))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1B6AB9A30();
      swift_unknownObjectRelease();
    }

    sub_1B69A20B8();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1B69A2104(&qword_1EDBCBB38, MEMORY[0x1E69E80B0]);
    v26 = MEMORY[0x1E69E80B0];
    sub_1B69A214C(0, &qword_1EDBCBB60, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
    sub_1B6988140(&qword_1EDBCBB58, &qword_1EDBCBB60, v26);
    sub_1B6AB9BE0();
    v27 = sub_1B6AB9A10();
    (*(v20 + 8))(v24, v19);
    ObjectType = swift_getObjectType();
    sub_1B6AB90B0();
    v29 = v46;
    sub_1B6AB9100();
    v30 = v48;
    v31 = *(v47 + 8);
    v31(v17, v48);
    *v12 = 0;
    v33 = v49;
    v32 = v50;
    (*(v49 + 104))(v12, *MEMORY[0x1E69E7F28], v50);
    MEMORY[0x1B8C98300](v29, v12, ObjectType, v25);
    (*(v33 + 8))(v12, v32);
    v31(v29, v30);
    v34 = v45;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v36 = swift_allocObject();
    *(v36 + 16) = v25;
    *(v36 + 24) = Strong;
    aBlock[4] = sub_1B6A9AC38;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1B698E534;
    aBlock[3] = &block_descriptor_14;
    v37 = _Block_copy(aBlock);

    v38 = v51;
    sub_1B6AB9060();
    v39 = v41;
    sub_1B69A21B0();
    sub_1B6AB9A20();
    _Block_release(v37);

    (*(v43 + 8))(v39, v44);
    (*(v52 + 8))(v38, v42);

    sub_1B6AB9A40();
    v40 = *(v34 + 48);
    *(v34 + 48) = v27;
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1B69A2080()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

unint64_t sub_1B69A20B8()
{
  result = qword_1EDBCBB30;
  if (!qword_1EDBCBB30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBCBB30);
  }

  return result;
}

uint64_t sub_1B69A2104(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69A214C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B69A21B0()
{
  sub_1B6AB9030();
  sub_1B69A2104(&qword_1EDBCCC70, MEMORY[0x1E69E7F60]);
  v0 = MEMORY[0x1E69E7F60];
  sub_1B69A214C(0, &qword_1EDBCBB90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1B6988140(&qword_1EDBCBB80, &qword_1EDBCBB90, v0);
  return sub_1B6AB9BE0();
}

uint64_t sub_1B69A22AC(uint64_t a1, uint64_t a2, void *a3)
{
  v107 = a3;
  v112 = sub_1B6AB90F0();
  v6 = *(v112 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v112);
  v111 = (&v104 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
  swift_beginAccess();
  v116 = a1;
  v10 = *(a1 + v9);
  v11 = v3;
  v12 = v10 + 64;
  v13 = 1 << *(v10 + 32);
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(v10 + 64);
  v115 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent;
  v114 = a2 + OBJC_IVAR____TtC12AppAnalytics13ActiveSession_dataEventFormatter;
  v113 = (v13 + 63) >> 6;
  v110 = *MEMORY[0x1E69E8020];
  v108 = (v6 + 8);
  v109 = (v6 + 104);
  v118 = v10;

  v16 = 0;
  *&v17 = 136315138;
  v104 = v17;
  v106 = xmmword_1B6ABF500;
  v117 = v12;
  if (!v15)
  {
    goto LABEL_9;
  }

LABEL_8:
  while (2)
  {
    v120 = v16;
    v18 = v16;
LABEL_17:
    v21 = __clz(__rbit64(v15));
    v22 = (v15 - 1) & v15;
    v23 = v21 | (v18 << 6);
    v24 = (*(v118 + 48) + 16 * v23);
    v26 = *v24;
    v25 = v24[1];
    sub_1B6982544(*(v118 + 56) + 40 * v23, &v132);
    *&v138 = v26;
    *(&v138 + 1) = v25;
    sub_1B699A784(&v132, &v139);

    while (1)
    {
      v147 = v138;
      v148[0] = v139;
      v148[1] = v140;
      v149 = v141;
      if (!*(&v138 + 1))
      {
      }

      v119 = v22;

      sub_1B699A784(v148, v144);
      v27 = v145;
      v28 = v146;
      __swift_project_boxed_opaque_existential_1(v144, v145);
      (*(v28 + 24))(&v132, v27, v28);
      if (!*(&v132 + 1))
      {
        sub_1B6A0A674(&v132, &qword_1EDBCB490);
        goto LABEL_7;
      }

      v140 = v134;
      v141 = v135;
      v142 = v136;
      v143 = v137;
      v138 = v132;
      v139 = v133;
      sub_1B6982544(&v139, v129);
      if (v142 == 1)
      {
        if (qword_1EDBC9F60 != -1)
        {
          swift_once();
        }

        sub_1B6ABA320();
        if (!v132)
        {
          goto LABEL_85;
        }

        v29 = *(*(v132 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) + OBJC_IVAR___AAAccessQueue_queue);
        v31 = v111;
        v30 = v112;
        *v111 = v29;
        (*v109)(v31, v110, v30);
        v32 = v29;
        LOBYTE(v29) = sub_1B6AB9110();
        (*v108)(v31, v30);
        if ((v29 & 1) == 0)
        {
          goto LABEL_84;
        }

        sub_1B69A5270(&v132);

        v12 = v117;
        if (v132 == 1)
        {
          if (qword_1EDBCAA70 != -1)
          {
            swift_once();
          }

          v33 = sub_1B6AB8F90();
          __swift_project_value_buffer(v33, qword_1EDBCFD80);
          sub_1B6A0A6D0(&v138, &v132);
          v34 = sub_1B6AB8F80();
          v35 = sub_1B6AB98E0();
          if (os_log_type_enabled(v34, v35))
          {
            v36 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            *&v126 = v37;
            *v36 = v104;
            v38 = v132;

            sub_1B69A6664(&v132);
            v39 = sub_1B698F63C(v38, *(&v38 + 1), &v126);

            *(v36 + 4) = v39;
            _os_log_impl(&dword_1B697C000, v34, v35, "Skipping session data for key: %s, because diagnostics consent is not given.", v36, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v37);
            v40 = v37;
            v12 = v117;
            MEMORY[0x1B8C99550](v40, -1, -1);
            v41 = v36;
LABEL_37:
            MEMORY[0x1B8C99550](v41, -1, -1);

            goto LABEL_75;
          }

          goto LABEL_74;
        }
      }

      v42 = *(v116 + v115);
      if (*(v42 + OBJC_IVAR___AATrackingConsent_consentEnforcement) != 1)
      {
        break;
      }

      if (BYTE1(v142) != 1)
      {
        break;
      }

      v43 = *(v42 + OBJC_IVAR___AATrackingConsent_consented);
      os_unfair_lock_lock((v43 + 20));
      v44 = *(v43 + 16);
      os_unfair_lock_unlock((v43 + 20));
      if (!v44)
      {
        break;
      }

      if (qword_1EDBCAA70 != -1)
      {
        swift_once();
      }

      v45 = sub_1B6AB8F90();
      __swift_project_value_buffer(v45, qword_1EDBCFD80);
      sub_1B6A0A6D0(&v138, &v132);
      v34 = sub_1B6AB8F80();
      v46 = sub_1B6AB98E0();
      if (os_log_type_enabled(v34, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v126 = v48;
        *v47 = v104;
        v49 = v132;

        sub_1B69A6664(&v132);
        v50 = sub_1B698F63C(v49, *(&v49 + 1), &v126);

        *(v47 + 4) = v50;
        _os_log_impl(&dword_1B697C000, v34, v46, "Skipping session data for key: %s, because tracking consent is not given.", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v51 = v48;
        v12 = v117;
        MEMORY[0x1B8C99550](v51, -1, -1);
        v41 = v47;
        goto LABEL_37;
      }

LABEL_74:

      sub_1B69A6664(&v132);
LABEL_75:
      sub_1B69A6664(&v138);
      v15 = v119;
      __swift_destroy_boxed_opaque_existential_1(v129);
      __swift_destroy_boxed_opaque_existential_1(v144);
      v16 = v120;
      if (v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      if (v113 <= v16 + 1)
      {
        v19 = v16 + 1;
      }

      else
      {
        v19 = v113;
      }

      v20 = v19 - 1;
      while (1)
      {
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_81;
        }

        if (v18 >= v113)
        {
          break;
        }

        v15 = *(v12 + 8 * v18);
        ++v16;
        if (v15)
        {
          v120 = v18;
          goto LABEL_17;
        }
      }

      v22 = 0;
      *&v141 = 0;
      v139 = 0u;
      v140 = 0u;
      v120 = v20;
      v138 = 0u;
    }

    v52 = v130;
    v53 = v131;
    __swift_project_boxed_opaque_existential_1(v129, v130);
    v54 = *(v114 + 8);
    v55 = *(v114 + 16);
    v56 = *(v114 + 17);
    LOBYTE(v132) = *v114;
    *(&v132 + 1) = v54;
    LOBYTE(v133) = v55;
    BYTE1(v133) = v56;
    v57 = v11;
    v58 = (*(v53 + 56))(&v132, v52, v53);
    if (v11)
    {
      __swift_destroy_boxed_opaque_existential_1(v129);
      if (qword_1EDBCCEE0 != -1)
      {
        swift_once();
      }

      v123 = qword_1EDBCCB28;
      LODWORD(v122) = sub_1B6AB98F0();
      sub_1B6A0A7A4(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
      v59 = swift_allocObject();
      *(v59 + 16) = v106;
      *&v132 = 0;
      *(&v132 + 1) = 0xE000000000000000;
      *&v126 = v11;
      sub_1B697ED90(0, &qword_1EDBCBB00);
      sub_1B6AB9DF0();
      v61 = *(&v132 + 1);
      v60 = v132;
      v62 = MEMORY[0x1E69E6158];
      *(v59 + 56) = MEMORY[0x1E69E6158];
      v63 = sub_1B698CEC0();
      *(v59 + 64) = v63;
      *(v59 + 32) = __PAIR128__(v61, v60);
      *&v132 = 0;
      *(&v132 + 1) = 0xE000000000000000;
      sub_1B6AB9DF0();
      v64 = v132;
      *(v59 + 96) = v62;
      *(v59 + 104) = v63;
      *(v59 + 72) = v64;
      sub_1B6AB8F70();

      sub_1B69A6664(&v138);
      v11 = 0;
      v12 = v117;
LABEL_7:
      __swift_destroy_boxed_opaque_existential_1(v144);
      v15 = v119;
      v16 = v120;
      if (v119)
      {
        continue;
      }

      goto LABEL_9;
    }

    break;
  }

  v105 = 0;
  v65 = sub_1B69FDE38(v58);

  v66 = v107;
  v67 = *v107;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v69 = *v66;
  v150 = *v66;
  *v66 = 0x8000000000000000;
  v70 = v65 + 64;
  v71 = 1 << *(v65 + 32);
  if (v71 < 64)
  {
    v72 = ~(-1 << v71);
  }

  else
  {
    v72 = -1;
  }

  v73 = v72 & *(v65 + 64);
  v74 = (v71 + 63) >> 6;
  v121 = v65;

  v75 = 0;
  v122 = v74;
  while (2)
  {
    LODWORD(v123) = isUniquelyReferenced_nonNull_native;
    if (v73)
    {
      v77 = v75;
LABEL_59:
      v80 = __clz(__rbit64(v73));
      v73 &= v73 - 1;
      v81 = v80 | (v77 << 6);
      v82 = (*(v121 + 48) + 16 * v81);
      v84 = *v82;
      v83 = v82[1];
      sub_1B698FE74(*(v121 + 56) + 32 * v81, &v124);
      *&v126 = v84;
      *(&v126 + 1) = v83;
      sub_1B69979CC(&v124, &v127);

LABEL_60:
      v124 = v126;
      v125[0] = v127;
      v125[1] = v128;
      v85 = *(&v126 + 1);
      if (!*(&v126 + 1))
      {
        v133 = 0u;
        v134 = 0u;
        v132 = 0u;
LABEL_78:

        sub_1B69A6664(&v138);
        v102 = *v107;
        *v107 = v69;

        __swift_destroy_boxed_opaque_existential_1(v129);
        v11 = v105;
        v12 = v117;
        goto LABEL_7;
      }

      v86 = v124;
      sub_1B698FE74(v125, &v133);
      *&v132 = v86;
      *(&v132 + 1) = v85;

      sub_1B6A0BDA4(&v124, sub_1B69A1808);
      v87 = *(&v132 + 1);
      if (!*(&v132 + 1))
      {
        goto LABEL_78;
      }

      v88 = v70;
      v89 = v132;
      sub_1B69979CC(&v133, &v126);
      v91 = sub_1B6993940(v89, v87);
      v92 = v69[2];
      v93 = (v90 & 1) == 0;
      v94 = v92 + v93;
      if (__OFADD__(v92, v93))
      {
        goto LABEL_82;
      }

      v95 = v90;
      if (v69[3] >= v94)
      {
        if (v123)
        {
          if ((v90 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else
        {
          sub_1B69DDC84();
          if ((v95 & 1) == 0)
          {
            goto LABEL_69;
          }
        }
      }

      else
      {
        sub_1B69976F8(v94, v123 & 1);
        v96 = sub_1B6993940(v89, v87);
        if ((v95 & 1) != (v97 & 1))
        {
          goto LABEL_86;
        }

        v91 = v96;
        if ((v95 & 1) == 0)
        {
LABEL_69:
          v69 = v150;
          v150[(v91 >> 6) + 8] |= 1 << v91;
          v98 = (v69[6] + 16 * v91);
          *v98 = v89;
          v98[1] = v87;
          sub_1B69979CC(&v126, (v69[7] + 32 * v91));
          v99 = v69[2];
          v100 = __OFADD__(v99, 1);
          v101 = v99 + 1;
          if (v100)
          {
            goto LABEL_83;
          }

          v69[2] = v101;
          goto LABEL_48;
        }
      }

      v69 = v150;
      sub_1B698FE74(v150[7] + 32 * v91, &v124);
      __swift_destroy_boxed_opaque_existential_1(&v126);

      v76 = v69[7];
      __swift_destroy_boxed_opaque_existential_1((v76 + 32 * v91));
      sub_1B69979CC(&v124, (v76 + 32 * v91));
LABEL_48:
      isUniquelyReferenced_nonNull_native = 1;
      v70 = v88;
      v74 = v122;
      continue;
    }

    break;
  }

  if (v74 <= v75 + 1)
  {
    v78 = v75 + 1;
  }

  else
  {
    v78 = v74;
  }

  v79 = v78 - 1;
  while (1)
  {
    v77 = v75 + 1;
    if (__OFADD__(v75, 1))
    {
      break;
    }

    if (v77 >= v74)
    {
      v73 = 0;
      v127 = 0u;
      v128 = 0u;
      v75 = v79;
      v126 = 0u;
      goto LABEL_60;
    }

    v73 = *(v70 + 8 * v77);
    ++v75;
    if (v73)
    {
      v75 = v77;
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  result = sub_1B6ABA190();
  __break(1u);
  return result;
}

uint64_t sub_1B69A2EA0(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    result = swift_beginAccess();
    v11 = *(v1 + 48);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v1 + 48);

      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 32);
        swift_unknownObjectRetain();
        v18(a1, ObjectType, v16);
        swift_unknownObjectRelease();
        v14 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B69A3050()
{
  if (*(v0 + 32))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (qword_1EDBCAF40 != -1)
      {
        v3 = Strong;
        swift_once();
        Strong = v3;
      }

      [Strong flushWithCallbackQueue:qword_1EDBCAA10 completion:0];
    }
  }

  return sub_1B69A1A80();
}

uint64_t sub_1B69A3100(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

double sub_1B69A3110@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B6993940(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DDC84();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_1B69979CC((*(v12 + 56) + 32 * v9), a3);
    sub_1B69E5684(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1B69A31EC@<X0>(char *a1@<X8>)
{
  v2 = sub_1B6AB90F0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  result = sub_1B6ABA320();
  if (!v12)
  {
    v10 = 2;
    goto LABEL_7;
  }

  v8 = *(*(v12 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) + OBJC_IVAR___AAAccessQueue_queue);
  *v6 = v8;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2);
  v9 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  result = (*(v3 + 8))(v6, v2);
  if (v8)
  {
    sub_1B69A5270(&v11 + 7);

    v10 = HIBYTE(v11);
LABEL_7:
    *a1 = v10;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1B69A3378(_BYTE *a1@<X8>)
{
  v2 = sub_1B6AB8BB0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v7 = sub_1B6AB8F90();
  __swift_project_value_buffer(v7, qword_1EDBCFDA8);
  v8 = sub_1B6AB8F80();
  v9 = sub_1B6AB98D0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1B697C000, v8, v9, "Reading PublicEffectiveUserSettings", v10, 2u);
    MEMORY[0x1B8C99550](v10, -1, -1);
  }

  sub_1B6AB8AE0();
  v11 = sub_1B6AB8BD0();
  v13 = v12;
  (*(v3 + 8))(v6, v2);
  v14 = sub_1B6AB8A40();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_1B6AB8A30();
  sub_1B69A3794();
  sub_1B6AB8A20();
  sub_1B6993C94(v11, v13);

  v17 = v21[7];
  v18 = sub_1B6AB8F80();
  v19 = sub_1B6AB9900();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 67109120;
    *(v20 + 4) = v17;
    _os_log_impl(&dword_1B697C000, v18, v19, "Read PublicEffectiveUserSettings: %{BOOL}d", v20, 8u);
    MEMORY[0x1B8C99550](v20, -1, -1);
  }

  *a1 = v17 ^ 1;
}

unint64_t sub_1B69A3794()
{
  result = qword_1EDBC9EF0;
  if (!qword_1EDBC9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9EF0);
  }

  return result;
}

uint64_t sub_1B69A37E8(uint64_t *a1)
{
  sub_1B69A3990(0, &qword_1EDBC9B80, sub_1B69A39F0);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A39F0();
  v11 = v10;
  sub_1B6ABA2A0();
  if (!v1)
  {
    sub_1B69A3AF4();
    sub_1B6AB9F90();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11 & 1;
}

void sub_1B69A3990(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = sub_1B6AB9FC0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1B69A39F0()
{
  result = qword_1EDBC9F48;
  if (!qword_1EDBC9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F48);
  }

  return result;
}

unint64_t sub_1B69A3A48()
{
  result = qword_1EDBC9F38;
  if (!qword_1EDBC9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F38);
  }

  return result;
}

unint64_t sub_1B69A3AA0()
{
  result = qword_1EDBC9F40;
  if (!qword_1EDBC9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F40);
  }

  return result;
}

unint64_t sub_1B69A3AF4()
{
  result = qword_1EDBC9F18;
  if (!qword_1EDBC9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F18);
  }

  return result;
}

unint64_t sub_1B69A3B48()
{
  result = qword_1EDBC9EF8;
  if (!qword_1EDBC9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9EF8);
  }

  return result;
}

uint64_t sub_1B69A3B9C(uint64_t *a1)
{
  sub_1B69A3990(0, &qword_1EDBC9B78, sub_1B69A3D44);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v13 - v7;
  v9 = a1[4];
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A3D44();
  v11 = v10;
  sub_1B6ABA2A0();
  if (!v1)
  {
    sub_1B69A3B48();
    sub_1B6AB9F90();
    (*(v5 + 8))(v8, v4);
    v11 = v14;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v11 & 1;
}

unint64_t sub_1B69A3D44()
{
  result = qword_1EDBC9F30;
  if (!qword_1EDBC9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F30);
  }

  return result;
}

unint64_t sub_1B69A3D9C()
{
  result = qword_1EDBC9F20;
  if (!qword_1EDBC9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F20);
  }

  return result;
}

unint64_t sub_1B69A3DF4()
{
  result = qword_1EDBC9F28;
  if (!qword_1EDBC9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F28);
  }

  return result;
}

uint64_t sub_1B69A3E48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v15 = a2;
  sub_1B69A3990(0, &qword_1EDBC9B70, sub_1B69A3FE4);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A3FE4();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v15;
  v12 = sub_1B6AB9F60();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *v11 = v12 & 1;
  return result;
}

unint64_t sub_1B69A3FE4()
{
  result = qword_1EDBC9F10;
  if (!qword_1EDBC9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F10);
  }

  return result;
}

unint64_t sub_1B69A403C()
{
  result = qword_1EDBC9F00;
  if (!qword_1EDBC9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F00);
  }

  return result;
}

unint64_t sub_1B69A4094()
{
  result = qword_1EDBC9F08;
  if (!qword_1EDBC9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC9F08);
  }

  return result;
}

uint64_t sub_1B69A40E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = sub_1B6AB9B30();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B69A419C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1B69A4218(a2, a3, a4);
  }

  return result;
}

uint64_t sub_1B69A4218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1B6AB90F0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = *(v3 + 32);
  v12 = *(v37 + OBJC_IVAR___AAAccessQueue_queue);
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  v14 = sub_1B6AB9110();
  result = (*(v8 + 8))(v11, v7);
  if ((v14 & 1) == 0)
  {
LABEL_20:
    __break(1u);
    return result;
  }

  if (!a2)
  {
    swift_beginAccess();
    v26 = *(v3 + 48);
    v27 = *(v26 + 16);

    if (!v27)
    {
    }

    v28 = 0;
    v29 = (v26 + 32);
    while (v28 < *(v26 + 16))
    {
      v31 = *v29;
      aBlock[10] = &unk_1F2E868A0;
      result = swift_dynamicCastObjCProtocolConditional();
      if (result)
      {
        swift_getObjectType();
        v32 = qword_1EDBCAF40;
        swift_unknownObjectRetain();
        if (v32 != -1)
        {
          swift_once();
        }

        v30 = qword_1EDBCAA10;
        Flushable.flush(callbackQueue:completion:)(v30, 0, 0);

        result = swift_unknownObjectRelease();
      }

      ++v28;
      v29 += 2;
      if (v27 == v28)
      {
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  v16 = dispatch_group_create();
  swift_beginAccess();
  v17 = *(v3 + 48);
  v18 = *(v17 + 16);
  if (v18)
  {
    v34 = a1;
    v35 = a2;
    v36 = a3;

    v19 = 32;
    do
    {
      v20 = *(v17 + v19);
      aBlock[6] = &unk_1F2E868A0;
      v21 = swift_dynamicCastObjCProtocolConditional();
      if (v21)
      {
        v22 = v21;
        swift_unknownObjectRetain();
        dispatch_group_enter(v16);
        v23 = swift_allocObject();
        *(v23 + 16) = v16;
        aBlock[4] = sub_1B69C8DA0;
        aBlock[5] = v23;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1B698E534;
        aBlock[3] = &block_descriptor;
        v24 = _Block_copy(aBlock);
        v25 = v16;

        [v22 flushWithCallbackQueue:v37 completion:v24];
        _Block_release(v24);
        swift_unknownObjectRelease();
      }

      v19 += 16;
      --v18;
    }

    while (v18);

    a2 = v35;
    a3 = v36;
    a1 = v34;
  }

  sub_1B69877A4(a1, a2, a3);

  return sub_1B69A3100(a2);
}

uint64_t sub_1B69A45CC()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t objectdestroy_27Tm()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
    v7 = *(v0 + v5 + 8);
  }

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

id *DataEventType.toDict(dataEventFormatter:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v46 = a3;
  v47 = a2;
  v51[4] = *MEMORY[0x1E69E9840];
  v4 = sub_1B6AB8850();
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1B6AB9E10();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v42[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = *a1;
  v17 = *(a1 + 1);
  v18 = a1[16];
  v19 = a1[17];
  v20 = sub_1B6AB88A0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    __break(1u);
  }

  (*(v13 + 32))(v16, v11, v12);
  v51[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v51[0]) = v18;
  BYTE1(v51[0]) = v19;
  v23 = v50;
  v24 = sub_1B6AB8880();
  sub_1B69A4BDC(v51, v16);
  v24(v50, 0);
  v25 = swift_allocObject();
  *(v25 + 16) = v43;
  *(v25 + 24) = v17;
  *(v25 + 32) = v18;
  *(v25 + 33) = v19;
  *v7 = sub_1B69C0864;
  v7[1] = v25;
  (*(v44 + 104))(v7, *MEMORY[0x1E6967FB8], v45);
  sub_1B6AB8860();
  v26 = *(v46 + 16);
  v27 = v48;
  v28 = sub_1B6AB8870();
  if (!v27)
  {
    v32 = v28;
    v33 = v29;
    v34 = objc_opt_self();
    v35 = sub_1B6AB8C60();
    v50[0] = 0;
    v23 = [v34 JSONObjectWithData:v35 options:0 error:v50];

    v36 = v50[0];
    if (v23)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v51, v50);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v23 = v49;
        v37 = sub_1B6AB91F0();
        v38 = [v34 isValidJSONObject_];

        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_1(v51);
          sub_1B6993C94(v32, v33);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v41 = v23;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v40 = 0;
      }

      swift_willThrow();
      sub_1B6993C94(v32, v33);

      __swift_destroy_boxed_opaque_existential_1(v51);
      goto LABEL_4;
    }

    v39 = v36;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v32, v33);
  }

LABEL_4:
  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t sub_1B69A4BDC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1B69979CC(a1, v10);
    v4 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    sub_1B69A4D04(v10, a2, isUniquelyReferenced_nonNull_native);
    v6 = sub_1B6AB9E10();
    result = (*(*(v6 - 8) + 8))(a2, v6);
    *v2 = v9;
  }

  else
  {
    sub_1B69E8244(a1, &qword_1EB95AEB0, sub_1B69A536C);
    sub_1B6A96A98(a2, v10);
    v8 = sub_1B6AB9E10();
    (*(*(v8 - 8) + 8))(a2, v8);
    return sub_1B69E8244(v10, &qword_1EB95AEB0, sub_1B69A536C);
  }

  return result;
}

_OWORD *sub_1B69A4D04(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB9E10();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1B69A5E70(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1B69DE7CC();
      goto LABEL_7;
    }

    sub_1B69A4EDC(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_1B69A5E70(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1B69A606C(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  __swift_destroy_boxed_opaque_existential_1(v22);

  return sub_1B69979CC(a1, v22);
}

uint64_t sub_1B69A4EDC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1B6AB9E10();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_1B69A52FC();
  v43 = a2;
  result = sub_1B6AB9E80();
  v14 = result;
  if (*(v11 + 16))
  {
    v46 = v10;
    v47 = v6;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    v42 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v45 = *(v7 + 72);
      v28 = v27 + v45 * v26;
      if (v43)
      {
        (*v44)(v46, v28, v47);
        sub_1B69979CC((*(v11 + 56) + 32 * v26), v48);
      }

      else
      {
        (*v40)(v46, v28, v47);
        sub_1B698FE74(*(v11 + 56) + 32 * v26, v48);
      }

      v29 = *(v14 + 40);
      result = sub_1B6AB9250();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        v11 = v42;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
      v11 = v42;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v44)((*(v14 + 48) + v45 * v22), v46, v47);
      result = sub_1B69979CC(v48, (*(v14 + 56) + 32 * v22));
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

void sub_1B69A5270(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status;
  v4 = *(v1 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status);
  if (v4 == 2)
  {
    v5 = v1 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider;
    v6 = v5 + *(type metadata accessor for DiagnosticsConsentProvider(0) + 20);
    v7 = *(v6 + 8);
    (*v6)(&v9);
    v8 = v9;
    *(v1 + v3) = v9;
  }

  else
  {
    v8 = v4 & 1;
  }

  *a1 = v8;
}

void sub_1B69A52FC()
{
  if (!qword_1EDBC8DE0)
  {
    sub_1B6AB9E10();
    sub_1B69A536C();
    v0 = sub_1B6AB9EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8DE0);
    }
  }
}

unint64_t sub_1B69A536C()
{
  result = qword_1EDBC8DD0;
  if (!qword_1EDBC8DD0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDBC8DD0);
  }

  return result;
}

uint64_t DiagnosticsConsentProvider.status.getter()
{
  v1 = v0 + *(type metadata accessor for DiagnosticsConsentProvider(0) + 20);
  v2 = *(v1 + 8);
  return (*v1)();
}

uint64_t sub_1B69A5404(uint64_t a1)
{
  v3 = sub_1B6AB90F0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(*(v1 + 32) + OBJC_IVAR___AAAccessQueue_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3);
  v9 = v8;
  LOBYTE(v8) = sub_1B6AB9110();
  result = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    result = swift_beginAccess();
    v11 = *(v1 + 48);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *(v1 + 48);

      v14 = (v11 + 40);
      do
      {
        v15 = *(v14 - 1);
        v16 = *v14;
        ObjectType = swift_getObjectType();
        v18 = *(v16 + 40);
        swift_unknownObjectRetain();
        v18(a1, ObjectType, v16);
        (*(v16 + 56))(a1, 0, ObjectType, v16);
        swift_unknownObjectRelease();
        v14 += 2;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1B69A55D8()
{
  if ((*(v0 + 32) & 2) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (qword_1EDBCAF40 != -1)
      {
        v2 = Strong;
        swift_once();
        Strong = v2;
      }

      [Strong flushWithCallbackQueue:qword_1EDBCAA10 completion:0];
    }
  }
}

uint64_t sub_1B69A5684@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B69A37E8(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B69A56E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B69A3B9C(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B69A5748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v35 = a2;
  v36 = a3;
  v34 = a5;
  v9 = type metadata accessor for DataEventStack.Entry();
  v10 = sub_1B6AB9B30();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v32[-v14];
  v16 = *(v9 - 1);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v19 = &v32[-v18];
  v37 = a1;
  sub_1B6AB95D0();
  swift_getWitnessTable();
  sub_1B6AB9270();
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
    result = (*(v11 + 8))(v15, v10);
    v21 = 0;
    v22 = 0;
    v23 = 0;
    *(a6 + 64) = 0;
    *(a6 + 32) = 0u;
    *(a6 + 48) = 0u;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  else
  {
    (*(v16 + 32))(v19, v15, v9);
    v24 = v34;
    *(a6 + 40) = a4;
    *(a6 + 48) = v24;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((a6 + 16));
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, v19, a4);
    v26 = *&v19[v9[9]];
    v27 = v19[v9[10]];
    v28 = v9[12];
    v33 = v19[v9[11]];
    LODWORD(v34) = v27;
    v21 = *&v19[v28];
    v22 = *&v19[v28 + 8];
    v23 = *&v19[v9[13]];
    v29 = *(v16 + 8);
    v30 = v36;

    result = v29(v19, v9);
    *a6 = v35;
    *(a6 + 8) = v30;
    *(a6 + 56) = v26;
    v31 = v33;
    *(a6 + 64) = v34;
    *(a6 + 65) = v31;
  }

  *(a6 + 72) = v21;
  *(a6 + 80) = v22;
  *(a6 + 88) = v23;
  return result;
}

_BYTE *sub_1B69A5A28(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 17) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1B69A5BF8(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

uint64_t SessionData.toDict(dataEventFormatter:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 17);
  v7 = *v2;
  v8 = v2[1];
  v9 = *(a2 + 36);
  LOBYTE(v15) = *a1;
  *(&v15 + 1) = v4;
  v16 = v5;
  v17 = v6;
  result = (*(*(a2 + 24) + 56))(&v15, *(a2 + 16));
  if (!v3)
  {
    v11 = result;
    sub_1B697EFC4();
    v19 = v12;
    *&v18 = v11;
    sub_1B69979CC(&v18, &v15);
    v13 = MEMORY[0x1E69E7CC8];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1B69A18C4(&v15, v7, v8, isUniquelyReferenced_nonNull_native);
    return v13;
  }

  return result;
}

uint64_t LoggingEventProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

unint64_t sub_1B69A5E70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B6AB9E10();
  v5 = sub_1B6AB9250();

  return sub_1B69A5ED4(a1, v5);
}

unint64_t sub_1B69A5ED4(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = sub_1B6AB9E10();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = sub_1B6AB92A0();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

_OWORD *sub_1B69A606C(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1B6AB9E10();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_1B69979CC(a3, (a4[7] + 32 * a1));
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

id sub_1B69A612C(int a1, unsigned int a2, double a3)
{
  v43 = a1;
  v48[4] = *MEMORY[0x1E69E9840];
  v44 = sub_1B6AB8850();
  v5 = *(v44 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v8 = &v42[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B6A3682C();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v42[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1B6AB9E10();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v42[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_1B6AB88A0();
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6AB9E00();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    __break(1u);
  }

  v21 = a2;
  v22 = a2 >> 8;
  (*(v14 + 32))(v17, v12, v13);
  v48[3] = &type metadata for TimeDurationGranularity;
  LOBYTE(v48[0]) = v21 & 1;
  BYTE1(v48[0]) = v22;
  v23 = sub_1B6AB8880();
  sub_1B69A4BDC(v48, v17);
  v23(v47, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = v43;
  *(v24 + 24) = a3;
  *(v24 + 32) = v21 & 1;
  *(v24 + 33) = v22;
  *v8 = sub_1B69C084C;
  v8[1] = v24;
  v26 = *(v5 + 104);
  v25 = (v5 + 104);
  v26(v8, *MEMORY[0x1E6967FB8], v44);
  sub_1B6AB8860();
  type metadata accessor for EventData();
  sub_1B6A4717C(&qword_1EDBCAAD0, type metadata accessor for EventData);
  v27 = v45;
  v28 = sub_1B6AB8870();
  if (!v27)
  {
    v32 = v28;
    v33 = v29;
    v34 = objc_opt_self();
    v35 = sub_1B6AB8C60();
    v47[0] = 0;
    v25 = [v34 JSONObjectWithData:v35 options:0 error:v47];

    v36 = v47[0];
    if (v25)
    {
      sub_1B6AB9BC0();
      swift_unknownObjectRelease();
      sub_1B698FE74(v48, v47);
      sub_1B697EFC4();
      if (swift_dynamicCast())
      {
        v25 = v46;
        v37 = sub_1B6AB91F0();
        v38 = [v34 isValidJSONObject_];

        if (v38)
        {
          __swift_destroy_boxed_opaque_existential_1(v48);
          sub_1B6993C94(v32, v33);

          goto LABEL_4;
        }

        sub_1B69E69F4();
        swift_allocError();
        *v41 = v25;
      }

      else
      {
        sub_1B69E69F4();
        swift_allocError();
        *v40 = 0;
      }

      swift_willThrow();

      sub_1B6993C94(v32, v33);
      __swift_destroy_boxed_opaque_existential_1(v48);
      goto LABEL_4;
    }

    v39 = v36;
    sub_1B6AB8A70();

    swift_willThrow();
    sub_1B6993C94(v32, v33);
  }

LABEL_4:
  v30 = *MEMORY[0x1E69E9840];
  return v25;
}

uint64_t KeyedEncodingContainer.encode<A>(_:forKey:)()
{
  v0 = sub_1B6AB9B30();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - v3;
  v5 = type metadata accessor for DiagnosticsConsentRequired();
  sub_1B69A67E0(v5, v4);
  sub_1B6AB9FF0();
  return (*(v1 + 8))(v4, v0);
}

uint64_t sub_1B69A67E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B69A31EC(&v10);
  if (v10 == 2 || (v10 & 1) != 0)
  {
    v5 = *(*(*(a1 + 16) - 8) + 56);

    return v5(a2, 1, 1);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = sub_1B6AB9B30();
    v9 = *(*(v8 - 8) + 16);

    return v9(a2, v2, v8);
  }
}

uint64_t sub_1B69A68D0()
{
  result = sub_1B6AB8DB0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t HeartbeatEventService.Metadata.init(flushDate:identifier:version:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_1B6AB8DB0();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for HeartbeatEventService.Metadata();
  v14 = (a6 + *(result + 20));
  *v14 = a2;
  v14[1] = a3;
  v15 = (a6 + *(result + 24));
  *v15 = a4;
  v15[1] = a5;
  return result;
}

uint64_t type metadata accessor for HeartbeatEventService.Metadata()
{
  result = qword_1EDBC81F8;
  if (!qword_1EDBC81F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HeartbeatEventService.sendHeartbeat<A>(client:debugFolderName:heartbeatValue:log:metadata:url:version:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v60 = a3;
  v57 = a8;
  v58 = a2;
  v52 = a6;
  v53 = a4;
  v59 = a5;
  v55 = a9;
  v56 = a1;
  v50 = a7;
  v51 = a10;
  v11 = *(a10 - 8);
  v12 = *(v11 + 64);
  v54 = a11;
  MEMORY[0x1EEE9AC00](a1);
  v61 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HeartbeatEventService.Metadata();
  v48 = *(v13 - 8);
  v14 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v47 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B6AB8BB0();
  v45 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6993390(0, &qword_1EDBCA4C0, MEMORY[0x1E69E85F0]);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v43 - v20;
  v49 = &v43 - v20;
  v22 = sub_1B6AB9680();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  v23 = v16;
  v43 = v16;
  (*(v16 + 16))(&v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), v50, v15);
  sub_1B69A70A4(v52, &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = v11;
  v24 = v51;
  (*(v11 + 16))(v61, v53, v51);
  v25 = (*(v23 + 80) + 48) & ~*(v23 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v48 + 80) + v27 + 8) & ~*(v48 + 80);
  v29 = (v14 + *(v11 + 80) + v28) & ~*(v11 + 80);
  v30 = (v12 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v54;
  *(v31 + 4) = v24;
  *(v31 + 5) = v32;
  (*(v43 + 32))(&v31[v25], v46, v45);
  v33 = &v31[v26];
  v34 = v56;
  v35 = v55;
  *v33 = v57;
  *(v33 + 1) = v35;
  *&v31[v27] = v34;
  sub_1B69A7108(v47, &v31[v28]);
  (*(v44 + 32))(&v31[v29], v61, v24);
  v36 = v58;
  v37 = v59;
  *&v31[v30] = v59;
  v38 = &v31[(v30 + 15) & 0xFFFFFFFFFFFFFFF8];
  v39 = v60;
  *v38 = v36;
  *(v38 + 1) = v39;

  v40 = v34;
  v41 = v37;
  sub_1B6A6EE0C(0, 0, v49, &unk_1B6AC3FA8, v31);
}

uint64_t sub_1B69A6E34()
{
  v1 = *(v0 + 32);
  v23 = v1;
  v22 = sub_1B6AB8BB0();
  v2 = *(v22 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (type metadata accessor for HeartbeatEventService.Metadata() - 8);
  v8 = *(*v7 + 80);
  v9 = (v6 + v8 + 8) & ~v8;
  v10 = *(v1 - 8);
  v11 = *(v10 + 80);
  v21 = (v9 + *(*v7 + 64) + v11) & ~v11;
  v24 = v3 | v8 | v11;
  v12 = (*(v10 + 64) + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v22);
  v15 = *(v0 + v5 + 8);

  v16 = sub_1B6AB8DB0();
  (*(*(v16 - 8) + 8))(v0 + v9, v16);
  v17 = *(v0 + v9 + v7[7] + 8);

  v18 = *(v0 + v9 + v7[8] + 8);

  (*(v10 + 8))(v0 + v21, v23);

  v19 = *(v0 + v13 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v13 + 16, v24 | 7);
}

uint64_t sub_1B69A70A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatEventService.Metadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69A7108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeartbeatEventService.Metadata();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B69A716C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B6993390(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1B69A71C8(uint64_t a1)
{
  v3 = v2;
  v4 = v1[4];
  v23 = v1[5];
  v5 = *(sub_1B6AB8BB0() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(type metadata accessor for HeartbeatEventService.Metadata() - 8);
  v10 = (v8 + *(v9 + 80) + 8) & ~*(v9 + 80);
  v11 = (*(*(v4 - 8) + 64) + ((v10 + *(v9 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = v1[2];
  v21 = v1[3];
  v19 = *(v1 + v7 + 8);
  v20 = *(v1 + v7);
  v13 = *(v1 + v8);
  v14 = *(v1 + v11);
  v15 = *(v1 + v12);
  v16 = *(v1 + v12 + 8);
  v17 = swift_task_alloc();
  *(v3 + 16) = v17;
  *v17 = v3;
  v17[1] = sub_1B69AD75C;

  return sub_1B69A7404(a1, v22, v21, v1 + v6, v20, v19, v13, v1 + v10);
}

uint64_t sub_1B69A7404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v27 = *MEMORY[0x1E69E9840];
  *(v8 + 200) = v32;
  *(v8 + 208) = v33;
  *(v8 + 184) = v30;
  *(v8 + 192) = v31;
  *(v8 + 168) = v29;
  *(v8 + 152) = a7;
  *(v8 + 160) = a8;
  *(v8 + 136) = a5;
  *(v8 + 144) = a6;
  *(v8 + 128) = a4;
  v9 = sub_1B6AB8AB0();
  *(v8 + 216) = v9;
  v10 = *(v9 - 8);
  *(v8 + 224) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 232) = swift_task_alloc();
  v12 = *(v32 - 8);
  *(v8 + 240) = v12;
  v13 = *(v12 + 64) + 15;
  *(v8 + 248) = swift_task_alloc();
  v14 = type metadata accessor for HeartbeatEventService.Metadata();
  *(v8 + 256) = v14;
  v15 = *(*(v14 - 8) + 64) + 15;
  *(v8 + 264) = swift_task_alloc();
  v16 = type metadata accessor for RequestData();
  *(v8 + 272) = v16;
  v17 = *(v16 - 8);
  *(v8 + 280) = v17;
  v18 = *(v17 + 64) + 15;
  *(v8 + 288) = swift_task_alloc();
  v19 = sub_1B6AB8BB0();
  *(v8 + 296) = v19;
  v20 = *(v19 - 8);
  *(v8 + 304) = v20;
  v21 = *(v20 + 64) + 15;
  *(v8 + 312) = swift_task_alloc();
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  v22 = sub_1B6AB8810();
  *(v8 + 344) = v22;
  v23 = *(v22 - 8);
  *(v8 + 352) = v23;
  v24 = *(v23 + 64) + 15;
  *(v8 + 360) = swift_task_alloc();
  v25 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1B69A77E4, 0, 0);
}

uint64_t sub_1B69A76F8(uint64_t a1)
{
  result = type metadata accessor for HeartbeatEventService.Metadata();
  if (v3 <= 0x3F)
  {
    v6[38] = 0;
    v7 = result;
    v9.val[0] = *(a1 + 16);
    v9.val[1] = v9.val[0];
    v4 = v6;
    vst2q_f64(v4, v9);
    result = type metadata accessor for RequestData.EventData();
    if (v5 <= 0x3F)
    {
      v6[39] = 0;
      v8 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B69A77A8()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B69A77E4()
{
  v34 = *MEMORY[0x1E69E9840];
  v1 = (v0 + 16);
  v2 = *(v0 + 360);
  v31 = *(v0 + 288);
  v32 = *(v0 + 256);
  v3 = *(v0 + 240);
  v30 = *(v0 + 248);
  v28 = *(v0 + 264);
  v29 = *(v0 + 168);
  v27 = *(v0 + 160);
  v4 = *(v0 + 144);
  v5 = *(v0 + 152);
  v6 = *(v0 + 136);
  v33 = *(v0 + 200);
  (*(*(v0 + 304) + 16))(*(v0 + 336), *(v0 + 128), *(v0 + 296));
  sub_1B6AB87D0();
  sub_1B6AB8790();
  MEMORY[0x1B8C97BE0](v6, v4);
  sub_1B6AB8800();

  sub_1B69992A4();
  sub_1B6AB8800();

  sub_1B6AB8800();
  sub_1B69A70A4(v27, v28);
  v36.val[0] = v33;
  v36.val[1] = v33;
  vst2q_f64(v1, v36);
  v7 = type metadata accessor for RequestData.EventData.Event();
  sub_1B6ABA090();
  v8 = *(*(v7 - 8) + 72);
  v9 = *(*(v7 - 8) + 80);
  swift_allocObject();
  v10 = sub_1B6AB9530();
  v12 = v11;
  (*(v3 + 16))(v30, v29, *&v33.f64[0]);
  sub_1B69A7E28(v30, *&v33.f64[0], v12);
  sub_1B6AB95D0();
  sub_1B69A7108(v28, v31);
  *(v31 + *(type metadata accessor for RequestData() + 36)) = v10;
  v13 = (v31 + *(v32 + 20));
  *(v0 + 368) = *v13;
  *(v0 + 376) = v13[1];
  sub_1B6AB8800();
  if (qword_1EDBC8230 != -1)
  {
    swift_once();
  }

  v14 = *(v0 + 288);
  v15 = *(v0 + 272);
  swift_getWitnessTable();
  v16 = sub_1B6AB8870();
  *(v0 + 384) = v16;
  *(v0 + 392) = v17;
  v18 = sub_1B69993A8(v16, v17);
  *(v0 + 400) = 0;
  *(v0 + 408) = v18;
  *(v0 + 416) = v19;
  v20 = v19;
  v21 = v18;
  v22 = swift_task_alloc();
  *(v0 + 424) = v22;
  *v22 = v0;
  v22[1] = sub_1B69AD3E4;
  v23 = *(v0 + 176);
  v24 = *(v0 + 152);
  v25 = *MEMORY[0x1E69E9840];

  return sub_1B69A92D4(v24, v21, v20, v23);
}

void sub_1B69A7D44(uint64_t a1)
{
  sub_1B69A7DCC();
  if (v2 <= 0x3F)
  {
    v3 = *(a1 + 24);
    swift_checkMetadataState();
    if (v4 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B69A7DCC()
{
  if (!qword_1EDBCB668)
  {
    v0 = sub_1B6AB9240();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCB668);
    }
  }
}

uint64_t sub_1B69A7E28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  v6 = sub_1B69A7EF8(&unk_1F2E74180);
  sub_1B69A8010();
  swift_arrayDestroy();
  *a3 = v6;
  v7 = type metadata accessor for RequestData.EventData.Event();
  return (*(*(a2 - 8) + 32))(a3 + *(v7 + 52), a1, a2);
}

unint64_t sub_1B69A7EF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6999350(0, &qword_1EDBCAFE8);
    v3 = sub_1B6AB9E90();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1B6993940(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

void sub_1B69A8010()
{
  if (!qword_1EDBCB000)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDBCB000);
    }
  }
}

uint64_t sub_1B69A806C()
{
  v0 = sub_1B6AB8850();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1B6AB88A0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  v8 = sub_1B6AB8890();
  *v4 = sub_1B69A89A8;
  v4[1] = 0;
  (*(v1 + 104))(v4, *MEMORY[0x1E6967FB8], v0);
  result = sub_1B6AB8860();
  qword_1EDBC8238 = v8;
  return result;
}

uint64_t sub_1B69A8174(void *a1, float64x2_t *a2, double a3, __n128 a4)
{
  v5 = v4;
  v17 = a2;
  v18 = a2[1];
  v19 = a4;
  type metadata accessor for RequestData.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_1B6ABA060();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2D0();
  v21[0] = 0;
  type metadata accessor for HeartbeatEventService.Metadata();
  sub_1B69A84B0(&qword_1EDBC8210, type metadata accessor for HeartbeatEventService.Metadata);
  v14 = v20;
  sub_1B6ABA040();
  if (!v14)
  {
    v22 = *(v5 + SHIDWORD(v17[2].f64[0]));
    v21[39] = 1;
    v23.val[0] = v18;
    v23.val[1] = v18;
    v13 = v21;
    vst2q_f64(v13, v23);
    type metadata accessor for RequestData.EventData();
    swift_getWitnessTable();
    sub_1B6ABA040();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B69A8420(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69A8468(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B69A84B0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69A8508()
{
  if (!qword_1EDBC8010)
  {
    sub_1B69A8764();
    v0 = sub_1B6ABA060();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8010);
    }
  }
}

uint64_t HeartbeatEventService.Metadata.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B69A8508();
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B69A8764();
  sub_1B6ABA2D0();
  v20[15] = 0;
  sub_1B6AB8DB0();
  sub_1B69A84B0(&qword_1EDBCB5B0, MEMORY[0x1E6969530]);
  sub_1B6ABA040();
  if (!v2)
  {
    v12 = type metadata accessor for HeartbeatEventService.Metadata();
    v13 = (v3 + *(v12 + 20));
    v14 = *v13;
    v15 = v13[1];
    v20[14] = 1;
    sub_1B6ABA000();
    v16 = (v3 + *(v12 + 24));
    v17 = *v16;
    v18 = v16[1];
    v20[13] = 2;
    sub_1B6ABA000();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1B69A8764()
{
  result = qword_1EDBC8228;
  if (!qword_1EDBC8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8228);
  }

  return result;
}

unint64_t sub_1B69A87BC()
{
  result = qword_1EDBC8218;
  if (!qword_1EDBC8218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8218);
  }

  return result;
}

unint64_t sub_1B69A8814()
{
  result = qword_1EDBC8220;
  if (!qword_1EDBC8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8220);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for FlushManager.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FlushManager.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B69A89A8(uint64_t a1, void *a2)
{
  v3 = sub_1B6AB8F00();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B6AB8DB0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v18[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AB8EC0();
  sub_1B6AB8E70();
  (*(v4 + 8))(v7, v3);
  v13 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_1B6ABA2B0();
  result = sub_1B6AB8D60();
  v16 = v15 * 1000.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v16 < 9.22337204e18)
  {
    __swift_mutable_project_boxed_opaque_existential_1(v18, v18[3]);
    sub_1B6ABA140();
    (*(v9 + 8))(v12, v8);
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1B69A8BF0()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7461446873756C66;
  }
}

uint64_t sub_1B69A8C54(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  return sub_1B69A8C64(*v1);
}

uint64_t sub_1B69A8C64(char a1)
{
  if (a1)
  {
    return 1635017060;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B69A8C94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v18 = a2;
  v16 = a5;
  v17 = a6;
  v15 = a4;
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = a6;
  type metadata accessor for RequestData.EventData.CodingKeys();
  swift_getWitnessTable();
  v8 = sub_1B6ABA060();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6ABA2D0();
  v24 = v18;
  v20 = a3;
  v21 = v15;
  v22 = v16;
  v23 = v17;
  type metadata accessor for RequestData.EventData.Event();
  sub_1B6AB95D0();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1B6ABA040();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1B69A8F00(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v19 = *(a2 + 16);
  v15 = *(a2 + 24);
  v20 = v15;
  v16 = v4;
  v21 = v4;
  type metadata accessor for RequestData.EventData.Event.CodingKeys();
  swift_getWitnessTable();
  v5 = sub_1B6ABA060();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v17;
  sub_1B6ABA2D0();
  v19 = *v11;
  v22 = 0;
  sub_1B69A7DCC();
  sub_1B69A923C();
  v12 = v18;
  sub_1B6ABA040();
  if (!v12)
  {
    v13 = *(a2 + 52);
    LOBYTE(v19) = 1;
    sub_1B6ABA040();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1B69A90F4()
{
  v1 = v0[2];
  v2 = v0[3];
  type metadata accessor for SessionData();
  swift_getWitnessTable();
  v3 = *(type metadata accessor for PushEvent() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v5);
  v9 = (v0 + v6);
  v10 = *(v0 + v7);
  v11 = v0 + v4;
  v12 = v0[4];
  return sub_1B6998590(v11, v8, *v9, v9[1], v10);
}

unint64_t sub_1B69A923C()
{
  result = qword_1EDBC8060;
  if (!qword_1EDBC8060)
  {
    sub_1B69A7DCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBC8060);
  }

  return result;
}

uint64_t sub_1B69A92AC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_1B69A8C64(*v1);
}

uint64_t sub_1B69A92D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[21] = a3;
  v4[22] = a4;
  v4[19] = a1;
  v4[20] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B69A92F8, 0, 0);
}

uint64_t sub_1B69A92F8()
{
  v1 = v0[19];
  type metadata accessor for MescalSigner();
  v0[23] = swift_initStackObject();
  v2 = sub_1B6984F70(v1);
  v0[24] = v2;
  type metadata accessor for SHA1Base64SigningService();
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = v2;
  *(inited + 24) = &off_1F2E755D0;
  v4 = swift_task_alloc();
  v0[26] = v4;
  *v4 = v0;
  v4[1] = sub_1B69AD21C;
  v6 = v0[20];
  v5 = v0[21];

  return sub_1B69A93E0(v6, v5);
}

uint64_t sub_1B69A93E0(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6998B8C, 0, 0);
}

uint64_t sub_1B69A9404(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v5 = a4;
  v6 = a3;
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v26[0] = a1;
      LOWORD(v26[1]) = a2;
      BYTE2(v26[1]) = BYTE2(a2);
      BYTE3(v26[1]) = BYTE3(a2);
      BYTE4(v26[1]) = BYTE4(a2);
      BYTE5(v26[1]) = BYTE5(a2);
      v8 = v26 + BYTE6(a2);
      v9 = v26;
      goto LABEL_24;
    }

    v19 = a1;
    v20 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v10 = a5;
      v13 = sub_1B6AB8900();
      if (!v13)
      {
        goto LABEL_16;
      }

      v21 = sub_1B6AB8930();
      if (!__OFSUB__(v19, v21))
      {
        v13 += v19 - v21;
LABEL_16:
        v22 = sub_1B6AB8920();
        if (v22 >= v20)
        {
          v18 = v20;
        }

        else
        {
          v18 = v22;
        }

        goto LABEL_19;
      }

LABEL_28:
      __break(1u);
    }

    __break(1u);
    goto LABEL_26;
  }

  if (v7 != 2)
  {
    memset(v26, 0, 14);
    v9 = v26;
    v8 = v26;
    goto LABEL_24;
  }

  v10 = a5;
  v12 = *(a1 + 16);
  v11 = *(a1 + 24);
  v13 = sub_1B6AB8900();
  if (v13)
  {
    v14 = sub_1B6AB8930();
    if (__OFSUB__(v12, v14))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v13 += v12 - v14;
  }

  v15 = __OFSUB__(v11, v12);
  v16 = v11 - v12;
  if (v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = sub_1B6AB8920();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

LABEL_19:
  v23 = (v18 + v13);
  if (v13)
  {
    v8 = v23;
  }

  else
  {
    v8 = 0;
  }

  v9 = v13;
  a3 = v6;
  a4 = v5;
  a5 = v10;
LABEL_24:
  sub_1B69A961C(v9, v8, a3, a4, a5);
  result = sub_1B6993C94(v6, v5);
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

unsigned __int8 *sub_1B69A961C(unsigned __int8 *result, uint64_t a2, uint64_t a3, unint64_t a4, char **a5)
{
  v6 = result;
  v7 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_13;
    }

    v10 = *(a3 + 16);
    v9 = *(a3 + 24);
    v8 = v9 - v10;
    if (!__OFSUB__(v9, v10))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_18;
    }

    v8 = HIDWORD(a3) - a3;
LABEL_10:
    if ((v8 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v8))
      {
        goto LABEL_14;
      }

      __break(1u);
LABEL_13:
      LODWORD(v8) = 0;
      goto LABEL_14;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    goto LABEL_8;
  }

  LODWORD(v8) = BYTE6(a4);
LABEL_14:
  v11 = *a5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_1B69E394C(0, *(v11 + 2), 0, v11);
  }

  *a5 = v11;
  return CC_SHA1(v6, v8, v11 + 32);
}

uint64_t sub_1B69A96F4(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_1B699FB2C(a1, &a1[a2]);
  }

  v3 = sub_1B6AB8950();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_1B6AB88F0();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_1B6AB8C00();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B69A97A4(uint64_t a1, unint64_t a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  v31 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_39;
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v46 = MEMORY[0x1E69E7CC0];
    sub_1B6994474(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v33 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v46;
    v30 = &v34 + v9;
    v32 = v4;
    do
    {
      if (v10 >= v5)
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v33 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_1B6AB8900();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_1B6AB8930();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v34 = a1;
          v35 = BYTE2(a1);
          v36 = BYTE3(a1);
          v37 = v31;
          v38 = BYTE5(a1);
          v39 = BYTE6(a1);
          v40 = HIBYTE(a1);
          v41 = a2;
          v42 = BYTE2(a2);
          v43 = BYTE3(a2);
          v44 = BYTE4(a2);
          v45 = BYTE5(a2);
          v19 = v30[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_1B6AB8900();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_1B6AB8930();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      sub_1B69990B4();
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1B6ABD890;
      *(v20 + 56) = MEMORY[0x1E69E7508];
      *(v20 + 64) = MEMORY[0x1E69E7558];
      *(v20 + 32) = v19;
      v21 = sub_1B6AB9300();
      v46 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v29 = v21;
        v26 = v22;
        sub_1B6994474((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v29;
        v8 = v46;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v32;
    }

    while (v11 != v5);
  }

LABEL_39:
  v27 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1B69A9B10()
{
  if (!qword_1EDBCAFF0)
  {
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCAFF0);
    }
  }
}

uint64_t DiagnosticsConsentRequired.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = sub_1B6AB9B30();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t DiagnosticsConsentRequired.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = sub_1B6AB9B30();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2, a1, v5);
}

uint64_t sub_1B69A9C80(char *a1, uint64_t a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  v68 = a3;
  v70 = a5;
  v71 = a2;
  v67 = a4;
  v64 = a1;
  v5 = sub_1B6AB90F0();
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v61 = (&v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for DiagnosticsConsentProvider(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6AB8E40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6992BDC();
  v17 = v16;
  v18 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6987C8C(0);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v57 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v57 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v57 - v29;
  if (qword_1EDBC9F60 != -1)
  {
    swift_once();
  }

  v69 = v20;
  v65 = v11;
  v59 = v25;
  v60 = qword_1EDBC9F50;
  sub_1B6ABA320();
  v66 = v72;
  if (v72)
  {
    v31 = *(v13 + 16);
    v31(v30, v72 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider, v12);
    v32 = *(v13 + 56);
    v32(v30, 0, 1, v12);
  }

  else
  {
    v32 = *(v13 + 56);
    v32(v30, 1, 1, v12);
    v31 = *(v13 + 16);
  }

  v31(v28, v71, v12);
  v32(v28, 0, 1, v12);
  v33 = *(v17 + 48);
  v34 = v69;
  sub_1B699A394(v30, v69, sub_1B6987C8C);
  sub_1B699A394(v28, v34 + v33, sub_1B6987C8C);
  v35 = *(v13 + 48);
  if (v35(v34, 1, v12) == 1)
  {
    sub_1B6984DF8(v28, sub_1B6987C8C);
    sub_1B6984DF8(v30, sub_1B6987C8C);
    if (v35(v34 + v33, 1, v12) == 1)
    {
      sub_1B6984DF8(v34, sub_1B6987C8C);
LABEL_15:
      type metadata accessor for AccessTracker();
      v56 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v56[3] = 0;
      v56[4] = 0;
      v56[5] = sub_1B6A55214;
      v56[6] = 0;
      v67(v56);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v57 = v30;
  v36 = v34;
  v37 = v34;
  v38 = v59;
  sub_1B699A394(v36, v59, sub_1B6987C8C);
  if (v35(v37 + v33, 1, v12) == 1)
  {
    sub_1B6984DF8(v28, sub_1B6987C8C);
    sub_1B6984DF8(v57, sub_1B6987C8C);
    (*(v13 + 8))(v38, v12);
    v34 = v37;
LABEL_11:
    sub_1B6984DF8(v34, sub_1B6992BDC);
    v39 = v65;
    goto LABEL_12;
  }

  v53 = v58;
  (*(v13 + 32))(v58, v37 + v33, v12);
  sub_1B6AAFDD0();
  v54 = sub_1B6AB92A0();
  v55 = *(v13 + 8);
  v55(v53, v12);
  sub_1B6984DF8(v28, sub_1B6987C8C);
  sub_1B6984DF8(v57, sub_1B6987C8C);
  v55(v38, v12);
  sub_1B6984DF8(v37, sub_1B6987C8C);
  v39 = v65;
  if (v54)
  {
    goto LABEL_15;
  }

LABEL_12:
  sub_1B699A394(v71, v39, type metadata accessor for DiagnosticsConsentProvider);
  v40 = type metadata accessor for LazyDiagnosticStatus(0);
  v41 = *(v40 + 48);
  v42 = *(v40 + 52);
  v43 = swift_allocObject();
  *(v43 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus____lazy_storage____status) = 2;
  v45 = v63;
  v44 = v64;
  v46 = *&v64[OBJC_IVAR___AAAccessQueue_queue];
  v48 = v61;
  v47 = v62;
  *v61 = v46;
  (*(v47 + 104))(v48, *MEMORY[0x1E69E8020], v45);
  v49 = v46;
  LOBYTE(v46) = sub_1B6AB9110();
  result = (*(v47 + 8))(v48, v45);
  if (v46)
  {
    sub_1B6980F64(v39, v43 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_provider);
    *(v43 + OBJC_IVAR____TtC12AppAnalyticsP33_C30334460221130696DFAC9959A2A23920LazyDiagnosticStatus_queue) = v44;
    v72 = v43;
    sub_1B69930AC(0);
    v51 = v44;

    swift_task_localValuePush();
    type metadata accessor for AccessTracker();
    v52 = swift_allocObject();
    swift_weakInit();
    swift_weakAssign();
    v52[3] = 0;
    v52[4] = 0;
    v52[5] = sub_1B6A55214;
    v52[6] = 0;
    v67(v52);

    swift_task_localValuePop();
LABEL_16:
  }

  __break(1u);
  return result;
}