uint64_t sub_10015EFB4(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, unsigned __int8 a12)
{
  v58 = a7;
  v59 = a8;
  v63 = a12;
  v62 = a11;
  v61 = a10;
  v60 = a9;
  v18 = type metadata accessor for GetEscrowCheckRequest(0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18, v20);
  v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Metrics(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a1;
  v28 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100216974();
    v56 = a2;
    v57 = a4;
    v31 = v30;
    v33 = v32;

    v55 = a3;
    __chkstk_darwin(v34, v35);
    *(&v54 - 4) = a5;
    *(&v54 - 3) = a6;
    v36 = v59;
    *(&v54 - 2) = v58;
    *(&v54 - 1) = v36;
    sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics);
    v37 = sub_100216654();
    __chkstk_darwin(v37, v38);
    *(&v54 - 8) = v31;
    *(&v54 - 7) = v33;
    *(&v54 - 6) = v60;
    *(&v54 - 40) = v61 & 1;
    *(&v54 - 4) = v62;
    *(&v54 - 3) = v27;
    *(&v54 - 16) = v63 & 1;
    sub_1001A13C4(&qword_100298F00, type metadata accessor for GetEscrowCheckRequest);
    sub_100216654();

    v39 = *(v64 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
    v40 = *(v64 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
    sub_100006484((v64 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v39);
    v41 = swift_allocObject();
    v43 = v55;
    v42 = v56;
    v41[2] = v56;
    v41[3] = v43;
    v41[4] = v57;
    v44 = *(v40 + 16);
    v45 = *(v44 + 96);
    v46 = v42;

    v45(v22, sub_1001A942C, v41, v39, v44);

    sub_1001AC1E4(v22, type metadata accessor for GetEscrowCheckRequest);
    return sub_1001AC1E4(v27, type metadata accessor for Metrics);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v48 = sub_100216774();
    sub_100002648(v48, qword_10029D160);
    v49 = sub_100216754();
    v50 = sub_100216C54();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&_mh_execute_header, v49, v50, "escrow check: No identity.", v51, 2u);
    }

    [a2 setNeedsReenroll:0];
    [a2 setOctagonTrusted:0];
    sub_1000561D0();
    v52 = swift_allocError();
    *v53 = xmmword_10021DA90;
    *(v53 + 16) = 13;
    a3(a2, v52);
  }
}

uint64_t sub_10015F488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, int a8)
{
  v28 = a8;
  v27 = a7;
  v14 = type metadata accessor for Metrics(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14, v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 24) = a4;
  *(a1 + 16) = a5;
  v21 = *(a1 + 32);

  *(a1 + 32) = a6;
  sub_1001AC0A0(v27, v19, type metadata accessor for Metrics);
  v22 = *(type metadata accessor for GetEscrowCheckRequest(0) + 48);
  sub_1000114D4(a1 + v22, &qword_100297FE0, &unk_10021E7F0);
  sub_1001AC038(v19, a1 + v22, type metadata accessor for Metrics);
  (*(v15 + 56))(a1 + v22, 0, 1, v14);
  v30 = &type metadata for SecurityFeatures;
  v23 = sub_1001A9438();
  v31 = v23;
  LOBYTE(v29[0]) = 2;
  LOBYTE(v22) = sub_100216434();
  sub_100006128(v29);
  if (v22)
  {
    *(a1 + 40) = 1;
  }

  v30 = &type metadata for SecurityFeatures;
  v31 = v23;
  LOBYTE(v29[0]) = 3;
  v24 = sub_100216434();
  result = sub_100006128(v29);
  if (v24)
  {
    *(a1 + 41) = 1;
  }

  *(a1 + 42) = v28 & 1;
  return result;
}

uint64_t sub_10015F6A0(uint64_t a1, void *a2, void (*a3)(id, uint64_t))
{
  v97 = a3;
  v5 = type metadata accessor for EscrowProxyFederationMoveRecordRequest(0);
  v6 = *(v5 - 8);
  v95 = v5;
  v96 = v6;
  v7 = *(v6 + 64);
  v9 = __chkstk_darwin(v5, v8);
  v94 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9, v11);
  v92 = (&v88 - v13);
  __chkstk_darwin(v12, v14);
  v90 = &v88 - v15;
  v16 = sub_10001148C(&unk_10029D720, &qword_10021E868);
  v17 = *(*(v16 - 8) + 64);
  v19 = __chkstk_darwin(v16 - 8, v18);
  v93 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19, v21);
  v91 = &v88 - v23;
  v25 = __chkstk_darwin(v22, v24);
  v89 = &v88 - v26;
  __chkstk_darwin(v25, v27);
  v29 = &v88 - v28;
  v30 = type metadata accessor for GetEscrowCheckResponse(0);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30, v32);
  v34 = &v88 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_10001148C(&qword_100298480, &qword_10021DEF0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin(v35, v37);
  v39 = (&v88 - v38);
  sub_100019C6C(a1, &v88 - v38, &qword_100298480, &qword_10021DEF0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = *v39;
    swift_errorRetain();
    v97(0, v40);
  }

  else
  {
    v42 = v97;
    sub_1001AC038(v39, v34, type metadata accessor for GetEscrowCheckResponse);
    [a2 setRepairReason:*(v34 + 2)];
    [a2 setRepairDisabled:v34[41]];
    if (v34[8] == 1)
    {
      v43 = *v34 & 0xFLL;
      v44 = 4u >> v43;
      v45 = 6u >> v43;
    }

    else
    {
      LOBYTE(v44) = 0;
      LOBYTE(v45) = 0;
    }

    [a2 setNeedsReenroll:v44 & 1];
    v88 = a2;
    [a2 setOctagonTrusted:v45 & 1];
    v46 = *(v30 + 40);
    v47 = v34;
    sub_100019C6C(&v34[v46], v29, &unk_10029D720, &qword_10021E868);
    v48 = v96 + 48;
    v49 = *(v96 + 48);
    v50 = v49(v29, 1, v95);
    sub_1000114D4(v29, &unk_10029D720, &qword_10021E868);
    if (v50 == 1)
    {
      v51 = 0;
      v52 = v47;
      v53 = v88;
    }

    else
    {
      v51 = [objc_allocWithZone(OTEscrowMoveRequestContext) init];
      v52 = v47;
      if (v51)
      {
        v54 = v89;
        sub_100019C6C(&v47[v46], v89, &unk_10029D720, &qword_10021E868);
        v55 = v95;
        v56 = v49(v54, 1, v95);
        v96 = v48;
        if (v56 == 1)
        {
          v57 = v90;
          *v90 = 0;
          *(v57 + 1) = 0xE000000000000000;
          *(v57 + 2) = 0;
          *(v57 + 3) = 0xE000000000000000;
          *(v57 + 4) = 0;
          *(v57 + 5) = 0xE000000000000000;
          v58 = *(v55 + 28);
          v59 = v51;
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v60 = *(v55 + 32);
          v61 = type metadata accessor for Metrics(0);
          (*(*(v61 - 8) + 56))(&v57[v60], 1, 1, v61);
          if (v49(v54, 1, v55) != 1)
          {
            sub_1000114D4(v54, &unk_10029D720, &qword_10021E868);
          }
        }

        else
        {
          v57 = v90;
          sub_1001AC038(v54, v90, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
          v62 = v51;
        }

        v64 = *v57;
        v63 = *(v57 + 1);

        sub_1001AC1E4(v57, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
        v65 = sub_100216964();

        [v51 setEscrowRecordLabel:v65];

        v66 = v91;
        sub_100019C6C(v52 + v46, v91, &unk_10029D720, &qword_10021E868);
        if (v49(v66, 1, v55) == 1)
        {
          v67 = v92;
          *v92 = 0;
          v67[1] = 0xE000000000000000;
          v67[2] = 0;
          v67[3] = 0xE000000000000000;
          v67[4] = 0;
          v67[5] = 0xE000000000000000;
          v68 = v67 + *(v55 + 28);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v69 = *(v55 + 32);
          v70 = type metadata accessor for Metrics(0);
          v71 = v67 + v69;
          v72 = v67;
          (*(*(v70 - 8) + 56))(v71, 1, 1, v70);
          v73 = v49(v66, 1, v55) == 1;
          v74 = v66;
          v75 = v94;
          if (!v73)
          {
            sub_1000114D4(v74, &unk_10029D720, &qword_10021E868);
          }
        }

        else
        {
          v72 = v92;
          sub_1001AC038(v66, v92, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
          v75 = v94;
        }

        v77 = v72[2];
        v76 = v72[3];

        sub_1001AC1E4(v72, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
        v78 = sub_100216964();

        [v51 setCurrentFederation:v78];

        v79 = v52 + v46;
        v80 = v93;
        sub_100019C6C(v79, v93, &unk_10029D720, &qword_10021E868);
        if (v49(v80, 1, v55) == 1)
        {
          *v75 = 0;
          *(v75 + 1) = 0xE000000000000000;
          *(v75 + 2) = 0;
          *(v75 + 3) = 0xE000000000000000;
          *(v75 + 4) = 0;
          *(v75 + 5) = 0xE000000000000000;
          v81 = &v75[*(v55 + 28)];
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v82 = *(v55 + 32);
          v83 = type metadata accessor for Metrics(0);
          (*(*(v83 - 8) + 56))(&v75[v82], 1, 1, v83);
          v84 = v49(v80, 1, v55);
          v42 = v97;
          if (v84 != 1)
          {
            sub_1000114D4(v80, &unk_10029D720, &qword_10021E868);
          }
        }

        else
        {
          sub_1001AC038(v80, v75, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
          v42 = v97;
        }

        v85 = *(v75 + 4);
        v86 = *(v75 + 5);

        sub_1001AC1E4(v75, type metadata accessor for EscrowProxyFederationMoveRecordRequest);
        v87 = sub_100216964();

        [v51 setIntendedFederation:v87];
      }

      v53 = v88;
      [v88 setMoveRequest:v51];
    }

    v42(v53, 0);

    return sub_1001AC1E4(v52, type metadata accessor for GetEscrowCheckResponse);
  }
}

uint64_t sub_10015FF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "health check complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000008ELL, 0x800000010023C270);
  return a4(a1, a2);
}

uint64_t sub_100160184(uint64_t a1, void (*a2)(void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, unsigned __int8 a11, unsigned __int8 a12, unsigned __int8 a13)
{
  v54 = a6;
  v55 = a7;
  v60 = a8;
  v61 = a13;
  v58 = a11;
  v59 = a12;
  v57 = a10;
  v56 = a9;
  RepairActionRequest = type metadata accessor for GetRepairActionRequest(0);
  v19 = *(*(RepairActionRequest - 8) + 64);
  __chkstk_darwin(RepairActionRequest, v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Metrics(0);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23, v25);
  v27 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (v28)
  {
    v29 = v28;
    v30 = sub_100216974();
    v53 = a2;
    v31 = v30;
    v51 = a1;
    v33 = v32;

    v52 = a3;
    __chkstk_darwin(v34, v35);
    *(&v51 - 4) = a4;
    *(&v51 - 3) = a5;
    v36 = v55;
    *(&v51 - 2) = v54;
    *(&v51 - 1) = v36;
    sub_1001A13C4(&qword_100298CC8, type metadata accessor for Metrics);
    v37 = sub_100216654();
    __chkstk_darwin(v37, v38);
    *(&v51 - 6) = v31;
    *(&v51 - 5) = v33;
    *(&v51 - 32) = v60 & 1;
    *(&v51 - 3) = v56;
    *(&v51 - 16) = v57 & 1;
    *(&v51 - 15) = v58 & 1;
    *(&v51 - 14) = v59 & 1;
    *(&v51 - 13) = v61 & 1;
    *(&v51 - 1) = v27;
    sub_1001A13C4(&unk_10029D710, type metadata accessor for GetRepairActionRequest);
    sub_100216654();

    v39 = *(v51 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
    v40 = *(v51 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
    sub_100006484((v51 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v39);
    v41 = swift_allocObject();
    *(v41 + 16) = v53;
    *(v41 + 24) = v52;
    v42 = *(v40 + 16);
    v43 = *(v42 + 88);

    v43(v22, sub_1001A93D8, v41, v39, v42);

    sub_1001AC1E4(v22, type metadata accessor for GetRepairActionRequest);
    return sub_1001AC1E4(v27, type metadata accessor for Metrics);
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v45 = sub_100216774();
    sub_100002648(v45, qword_10029D160);
    v46 = sub_100216754();
    v47 = sub_100216C54();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "requestHealthCheck: No identity.", v48, 2u);
    }

    sub_1000561D0();
    v49 = swift_allocError();
    *v50 = xmmword_10021DA90;
    *(v50 + 16) = 13;
    a2(0, v49);
  }
}

uint64_t sub_100160648(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    v8 = a2;
  }

  else
  {
    v8 = 0;
  }

  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  v10 = a1[1];

  *a1 = v8;
  a1[1] = v9;
  if (a5)
  {
    v11 = a5;
  }

  else
  {
    a4 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = a1[3];

  a1[2] = a4;
  a1[3] = v11;
  return result;
}

uint64_t sub_1001606DC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, int a6, int a7, int a8, char a9, uint64_t a10)
{
  v29 = a7;
  v30 = a8;
  v27 = a6;
  v28 = a10;
  v15 = type metadata accessor for Metrics(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15, v18);
  v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 8);

  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  v22 = *(a1 + 24);

  *(a1 + 24) = a5;
  *(a1 + 32) = v27;
  v23 = v30;
  *(a1 + 33) = v29;
  *(a1 + 35) = v23;
  *(a1 + 34) = a9;
  sub_1001AC0A0(v28, v20, type metadata accessor for Metrics);
  v24 = *(type metadata accessor for GetRepairActionRequest(0) + 48);
  sub_1000114D4(a1 + v24, &qword_100297FE0, &unk_10021E7F0);
  sub_1001AC038(v20, a1 + v24, type metadata accessor for Metrics);
  return (*(v16 + 56))(a1 + v24, 0, 1, v15);
}

uint64_t sub_100160898(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3)
{
  RepairActionResponse = type metadata accessor for GetRepairActionResponse(0);
  v7 = *(*(RepairActionResponse - 8) + 64);
  __chkstk_darwin(RepairActionResponse, v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10001148C(&qword_100298490, &unk_10021DF00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11, v13);
  v15 = (&v34 - v14);
  sub_100019C6C(a1, &v34 - v14, &qword_100298490, &unk_10021DF00);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v16 = *v15;
    swift_errorRetain();
    a2(0, v16);
  }

  else
  {
    sub_1001AC038(v15, v10, type metadata accessor for GetRepairActionResponse);
    v18 = *&v10[*(RepairActionResponse + 20)];
    swift_beginAccess();
    v19 = *(v18 + 24);
    v43 = a3;
    v44 = a2;
    if (v19 == 1)
    {
      v20 = *(v18 + 16);
      LODWORD(v42) = 0x10u >> v20;
      HIDWORD(v42) = 0x20u >> v20;
      LODWORD(v41) = 4u >> v20;
      HIDWORD(v41) = 8u >> v20;
      v40 = 2u >> v20;
    }

    else
    {
      v41 = 0;
      v42 = 0;
      v40 = 0;
    }

    swift_beginAccess();
    v39 = *(v18 + 32);
    swift_beginAccess();
    v38 = *(v18 + 40);
    swift_beginAccess();
    v37 = *(v18 + 48);
    swift_beginAccess();
    v36 = *(v18 + 56);
    swift_beginAccess();
    v35 = *(v18 + 64);
    swift_beginAccess();
    v21 = *(v18 + 72);
    swift_beginAccess();
    v22 = *(v18 + 80);
    swift_beginAccess();
    v23 = *(v18 + 88);
    swift_beginAccess();
    v24 = *(v18 + 96);
    swift_beginAccess();
    v25 = *(v18 + 104);
    swift_beginAccess();
    v26 = *(v18 + 112);
    swift_beginAccess();
    v27 = *(v18 + 120);
    swift_beginAccess();
    v28 = *(v18 + 128);
    v29 = objc_allocWithZone(TrustedPeersHelperHealthCheckResult);
    LOBYTE(v33) = v28;
    LOBYTE(v32) = v23;
    LOBYTE(v31) = v36;
    v30 = [v29 initWithPostRepairCFU:v40 & 1 postEscrowCFU:v41 & 1 resetOctagon:BYTE4(v41) & 1 leaveTrust:v42 & 1 reroll:BYTE4(v42) & 1 totalEscrowRecords:v39 collectableEscrowRecords:v38 collectedEscrowRecords:v37 escrowRecordGarbageCollectionEnabled:v31 totalTlkShares:v35 collectableTlkShares:v21 collectedTlkShares:v22 tlkShareGarbageCollectionEnabled:v32 totalPeers:v24 trustedPeers:v25 superfluousPeers:v26 peersCleanedup:v27 superfluousPeersCleanupEnabled:v33];
    v44(v30, 0);

    return sub_1001AC1E4(v10, type metadata accessor for GetRepairActionResponse);
  }
}

uint64_t sub_100160C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v18 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20._countAndFlagsBits = sub_100216994();
      sub_100216A14(v20);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "getSupportAppInfo complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v18;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000019, 0x800000010023C250);
  return a5(a1, a2, a3);
}

uint64_t sub_100160EC0(uint64_t a1, void (*a2)(void))
{
  SupportAppInfoResponse = type metadata accessor for GetSupportAppInfoResponse(0);
  v5 = *(*(SupportAppInfoResponse - 8) + 64);
  __chkstk_darwin(SupportAppInfoResponse, v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10001148C(&qword_100298470, &unk_10021DEE0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9, v11);
  v13 = (v27 - v12);
  sub_100019C6C(a1, v27 - v12, &qword_100298470, &unk_10021DEE0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v13;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v15 = sub_100216774();
    sub_100002648(v15, qword_10029D160);
    swift_errorRetain();
    v16 = sub_100216754();
    v17 = sub_100216C74();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27[2] = v14;
      v28 = v19;
      *v18 = 136446210;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20 = sub_100216994();
      v22 = sub_100005FB0(v20, v21, &v28);

      *(v18 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v16, v17, "getSupportAppInfo failed: %{public}s", v18, 0xCu);
      sub_100006128(v19);
    }

    swift_errorRetain();
    (a2)(0, 0xF000000000000000, v14);
  }

  else
  {
    sub_1001AC038(v13, v8, type metadata accessor for GetSupportAppInfoResponse);
    sub_1001A13C4(&unk_10029D700, type metadata accessor for GetSupportAppInfoResponse);
    v24 = sub_100216624();
    v26 = v25;
    a2();
    sub_100002BF0(v24, v26);
    return sub_1001AC1E4(v8, type metadata accessor for GetSupportAppInfoResponse);
  }
}

uint64_t sub_100161264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "beginning a fetchTrustedPeersCount", v11, 2u);
  }

  v12 = swift_allocObject();
  v12[2] = sub_1001ABAB8;
  v12[3] = v6;
  v12[4] = v3;
  v13 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = sub_1001ABADC;
  v14[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001ACE84;
  *(v15 + 24) = v14;
  v20[4] = sub_1001ACCC0;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100109050;
  v20[3] = &unk_100285240;
  v16 = _Block_copy(v20);
  v17 = v3;

  [v13 performBlockAndWait:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100161514(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    return a2(0, a1);
  }

  v7 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001ABAE8;
  *(v10 + 24) = v9;
  v13[4] = sub_1001ACCC0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_1002852B8;
  v11 = _Block_copy(v13);

  v12 = a4;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001616AC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "beginning a fetchTrustedFullPeersCount", v11, 2u);
  }

  v12 = swift_allocObject();
  v12[2] = sub_1001ABA60;
  v12[3] = v6;
  v12[4] = v3;
  v13 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = sub_1001ABA84;
  v14[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001ACE84;
  *(v15 + 24) = v14;
  v20[4] = sub_1001ACCC0;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100109050;
  v20[3] = &unk_100285100;
  v16 = _Block_copy(v20);
  v17 = v3;

  [v13 performBlockAndWait:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016195C(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t), uint64_t a4, char *a5)
{
  if (a2)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  v12 = a1;
  swift_errorRetain();
  v13 = sub_100216754();

  if (os_log_type_enabled(v13, v10))
  {
    format = a5;
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = v12;
    sub_10001148C(&qword_10029DA50, &qword_100226770);
    v16 = sub_1002169A4();
    v18 = sub_100005FB0(v16, v17, &v23);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v24._countAndFlagsBits = sub_100216994();
      sub_100216A14(v24);

      v19 = 0x203A726F727265;
    }

    else
    {
      v19 = 0x73736563637573;
    }

    v20 = sub_100005FB0(v19, 0xE700000000000000, &v23);

    *(v14 + 14) = v20;
    _os_log_impl(&_mh_execute_header, v13, v10, format, v14, 0x16u);
    swift_arrayDestroy();
  }

  return a3(a1, a2);
}

uint64_t sub_100161BD4(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    return a2(0, a1);
  }

  v7 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  v9[2] = a2;
  v9[3] = a3;
  v9[4] = a4;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001ABA90;
  *(v10 + 24) = v9;
  v13[4] = sub_1001ACCC0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_100285178;
  v11 = _Block_copy(v13);

  v12 = a4;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

void sub_100161D6C(void (*a1)(id, void *), uint64_t a2, uint64_t a3, SEL *a4)
{
  v5 = *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v9 = 0;
  v6 = [v5 *a4];
  v7 = v9;
  if (v9)
  {
    swift_willThrow();
    v8 = v7;
    a1(0, v7);
  }

  else
  {
    v8 = [objc_allocWithZone(NSNumber) initWithUnsignedInteger:v6];
    a1(v8, 0);
  }
}

uint64_t sub_100161E50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = qword_100297520;

  if (v7 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "beginning a octagonContainsDistrustedRecoveryKeys", v11, 2u);
  }

  v12 = swift_allocObject();
  v12[2] = sub_1001ABA00;
  v12[3] = v6;
  v12[4] = v3;
  v13 = *&v3[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v14 = swift_allocObject();
  v14[2] = v3;
  v14[3] = sub_1001ABA08;
  v14[4] = v12;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1001ABA14;
  *(v15 + 24) = v14;
  v20[4] = sub_1001ACCC0;
  v20[5] = v15;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_100109050;
  v20[3] = &unk_100284FC0;
  v16 = _Block_copy(v20);
  v17 = v3;

  [v13 performBlockAndWait:v16];
  _Block_release(v16);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100162100(char a1, uint64_t a2, uint64_t (*a3)(void, uint64_t))
{
  if (a2)
  {
    v6 = sub_100216C74();
  }

  else
  {
    v6 = sub_100216C54();
  }

  v7 = v6;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();

  if (os_log_type_enabled(v9, v7))
  {
    v10 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v10 = 136446466;
    v11 = sub_1002169A4();
    v13 = sub_100005FB0(v11, v12, &v17);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2082;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v14 = 0x203A726F727265;
    }

    else
    {
      v14 = 0x73736563637573;
    }

    v15 = sub_100005FB0(v14, 0xE700000000000000, &v17);

    *(v10 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v7, "octagon contains distrusted recovery keys complete: %{public}s %{public}s", v10, 0x16u);
    swift_arrayDestroy();
  }

  return a3(a1 & 1, a2);
}

uint64_t sub_100162358(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, char *a4)
{
  if (a1)
  {
    return a2(0, a1);
  }

  v7 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v9 = swift_allocObject();
  v9[2] = a4;
  v9[3] = a2;
  v9[4] = a3;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_1001ABA20;
  *(v10 + 24) = v9;
  v13[4] = sub_1001ACCC0;
  v13[5] = v10;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_100109050;
  v13[3] = &unk_100285038;
  v11 = _Block_copy(v13);
  v12 = a4;

  [v7 performBlockAndWait:v11];
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001624F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  if (a1)
  {
    v5 = sub_100216C74();
  }

  else
  {
    v5 = sub_100216C54();
  }

  v6 = v5;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v7 = sub_100216774();
  sub_100002648(v7, qword_10029D160);
  swift_errorRetain();
  v8 = sub_100216754();

  if (os_log_type_enabled(v8, v6))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v9 = 136446210;
    if (a1)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v15._countAndFlagsBits = sub_100216994();
      sub_100216A14(v15);

      v11 = 0x203A726F727265;
    }

    else
    {
      v11 = 0x73736563637573;
    }

    v12 = sub_100005FB0(v11, 0xE700000000000000, &v14);

    *(v9 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v8, v6, "resetCDPAccountData complete: %{public}s", v9, 0xCu);
    sub_100006128(v10);
  }

  sub_10010EEEC(0xD00000000000006BLL, 0x800000010023C1E0);
  return a3(a1);
}

uint64_t sub_100162718(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, int a6, int a7, int a8)
{
  v29 = a7;
  v30 = a8;
  v28 = a6;
  v27 = a4;
  v12 = type metadata accessor for AccountInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a1 = 6;
  *(a1 + 8) = 1;
  if (a3)
  {
    v18 = a3;
  }

  else
  {
    a2 = 0;
    v18 = 0xE000000000000000;
  }

  v19 = *(a1 + 24);

  *(a1 + 16) = a2;
  *(a1 + 24) = v18;
  if (a5)
  {
    v20 = v27;
  }

  else
  {
    v20 = 0;
  }

  if (a5)
  {
    v21 = a5;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  v22 = *(a1 + 40);

  *(a1 + 32) = v20;
  *(a1 + 40) = v21;
  v23 = v29;
  *(a1 + 48) = v28;
  v31 = v23;
  v32 = v30;
  sub_1001A13C4(&qword_100298CB0, type metadata accessor for AccountInfo);
  sub_100216654();
  v24 = *(type metadata accessor for ResetAccountCDPContentsRequest(0) + 40);
  sub_1000114D4(a1 + v24, &unk_10029D6F0, &qword_100226B40);
  sub_1001AC038(v17, a1 + v24, type metadata accessor for AccountInfo);
  return (*(v13 + 56))(a1 + v24, 0, 1, v12);
}

uint64_t sub_10016293C(uint64_t a1, char *a2, void (*a3)(uint64_t))
{
  v6 = sub_10001148C(&qword_100298460, &qword_10021DED0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6, v8);
  v10 = (&aBlock[-1] - v9);
  sub_100019C6C(a1, &aBlock[-1] - v9, &qword_100298460, &qword_10021DED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = *v10;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v12 = sub_100216774();
    sub_100002648(v12, qword_10029D160);
    swift_errorRetain();
    v13 = sub_100216754();
    v14 = sub_100216C74();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      aBlock[0] = v16;
      *v15 = 136446210;
      aBlock[6] = v11;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v17 = sub_100216994();
      v19 = sub_100005FB0(v17, v18, aBlock);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, "resetCDPAccountData failed: %{public}s", v15, 0xCu);
      sub_100006128(v16);
    }

    swift_errorRetain();
    a3(v11);
  }

  else
  {
    v21 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1001A9304;
    *(v23 + 24) = v22;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100282720;
    v24 = _Block_copy(aBlock);
    v25 = a2;

    [v21 performBlockAndWait:v24];
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      a3(0);
      sub_1000114D4(v10, &qword_100298460, &qword_10021DED0);
    }
  }

  return result;
}

uint64_t sub_100162CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "fetchAccountSettings complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000055, 0x800000010023C180);
  return a4(a1, a2);
}

id sub_100162F14(uint64_t a1, uint64_t *a2)
{
  result = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) accountSettings];
  if (result)
  {
    v4 = result;
    v5 = sub_100216224();
    v7 = v6;

    v8 = sub_1001A1654(v5, v7);
    result = sub_100002BF0(v5, v7);
    if (v8)
    {
      v9 = *a2;
      *a2 = v8;
    }
  }

  return result;
}

uint64_t sub_100163230(uint64_t a1, void *a2, uint64_t (*a3)(void, uint64_t), uint64_t a4, char *a5)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v9 = sub_100216774();
    sub_100002648(v9, qword_10029D160);
    swift_errorRetain();
    v10 = sub_100216754();
    v11 = sub_100216C74();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      aBlock[0] = v13;
      *v12 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v14 = sub_100216994();
      v16 = sub_100005FB0(v14, v15, aBlock);

      *(v12 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v10, v11, "fetchAccountSettings unable to fetch changes: %{public}s", v12, 0xCu);
      sub_100006128(v13);
    }

    v17 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v17];

    return a3(0, a1);
  }

  else
  {
    v19 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v21 = swift_allocObject();
    v21[2] = a5;
    v21[3] = a2;
    v21[4] = a3;
    v21[5] = a4;
    v22 = swift_allocObject();
    *(v22 + 16) = sub_1001A92F8;
    *(v22 + 24) = v21;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_1002826A8;
    v23 = _Block_copy(aBlock);
    v24 = a5;
    v25 = a2;

    [v19 performBlockAndWait:v23];
    _Block_release(v23);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100163540(uint64_t a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v86 = a4;
  v7 = sub_100216384();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7, v10);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v14 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v88 = 0;
  v15 = [v14 bestWalrusAcrossTrustedPeersWithError:&v88];
  v16 = v88;
  if (v88)
  {
    v17 = v88;

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v18 = sub_100216774();
    sub_100002648(v18, qword_10029D160);
    v19 = v17;
    v20 = sub_100216754();
    v21 = sub_100216C74();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = a3;
      v24 = swift_slowAlloc();
      *v22 = 138543362;
      v25 = v19;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v26;
      *v24 = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "fetchAccountSettings unable to find best walrus: %{public}@", v22, 0xCu);
      sub_1000114D4(v24, &qword_10029D580, &unk_10021CCC0);
      a3 = v23;
    }

    v27 = sub_100216144();
    [a2 sendMetricWithResult:0 error:v27];

    v28 = v19;
    a3(0, v16);

LABEL_7:
    return;
  }

  v85 = a3;
  v29 = *(a1 + v13);
  v88 = 0;
  v30 = [v29 bestWebAccessAcrossTrustedPeersWithError:&v88];
  v31 = v30;
  v32 = v88;
  if (!v88)
  {
    v44 = v30;
    v88 = sub_100019988(_swiftEmptyArrayStorage);
    if (v15)
    {
      v45 = v15;
      sub_100108108(v15, 0x7375726C6177, 0xE600000000000000);
    }

    v81 = v15;
    v82 = a2;
    v84 = v44;
    if (v44)
    {
      sub_100108108(v31, 0x7365636341626577, 0xE900000000000073);
    }

    v46 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v47 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
    v48 = objc_opt_self();
    v49 = v88;
    sub_10000200C(0, &unk_10029D6C0, TPPBPeerStableInfoSetting_ptr);
    v50 = v47;
    v83 = v49;
    isa = sub_1002168C4().super.isa;
    v87 = 0;
    v52 = [v48 archivedDataWithRootObject:isa requiringSecureCoding:1 error:&v87];

    v53 = v87;
    if (v52)
    {
      v54 = sub_100216224();
      v56 = v55;

      v57 = sub_100216204().super.isa;
      sub_100002BF0(v54, v56);
      [v50 setAccountSettings:v57];

      v58 = *(a1 + v46);
      sub_100216374();
      v59 = sub_1002162F4().super.isa;
      (*(v8 + 8))(v12, v7);
      [v58 setAccountSettingsDate:v59];

      v28 = v84;
      v60 = v85;
      v62 = v81;
      v61 = v82;
    }

    else
    {
      v63 = v53;

      sub_100216154();
      swift_willThrow();
      v61 = v82;
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v64 = sub_100216774();
      sub_100002648(v64, qword_10029D160);
      swift_errorRetain();
      v65 = sub_100216754();
      v66 = sub_100216C74();

      v67 = os_log_type_enabled(v65, v66);
      v68 = v46;
      v62 = v81;
      if (v67)
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        *v69 = 138412290;
        swift_errorRetain();
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v69 + 4) = v71;
        *v70 = v71;
        _os_log_impl(&_mh_execute_header, v65, v66, "Failed to set cached account settings, ignoring: %@", v69, 0xCu);
        sub_1000114D4(v70, &qword_10029D580, &unk_10021CCC0);
      }

      [*(a1 + v68) setAccountSettings:0];
      [*(a1 + v68) setAccountSettingsDate:0];
      v72 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
      v87 = 0;
      v73 = [v72 save:&v87];
      v60 = v85;
      if (v73)
      {
        v74 = v87;
      }

      else
      {
        v75 = v87;
        sub_100216154();

        swift_willThrow();
        swift_errorRetain();
        v76 = sub_100216754();
        v77 = sub_100216C74();

        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          *v78 = 138412290;
          swift_errorRetain();
          v80 = _swift_stdlib_bridgeErrorToNSError();
          *(v78 + 4) = v80;
          *v79 = v80;
          _os_log_impl(&_mh_execute_header, v76, v77, "failed to save: %@", v78, 0xCu);
          sub_1000114D4(v79, &qword_10029D580, &unk_10021CCC0);
        }
      }

      v28 = v84;
    }

    [v61 sendMetricWithResult:1 error:{0, v81}];
    v60(v83, 0);

    goto LABEL_7;
  }

  v33 = v88;

  swift_willThrow();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v34 = sub_100216774();
  sub_100002648(v34, qword_10029D160);
  v35 = v33;
  v36 = sub_100216754();
  v37 = sub_100216C74();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v38 = 138543362;
    v40 = v35;
    v41 = _swift_stdlib_bridgeErrorToNSError();
    *(v38 + 4) = v41;
    *v39 = v41;
    _os_log_impl(&_mh_execute_header, v36, v37, "fetchAccountSettings unable to find best web access: %{public}@", v38, 0xCu);
    sub_1000114D4(v39, &qword_10029D580, &unk_10021CCC0);
  }

  v42 = sub_100216144();
  [a2 sendMetricWithResult:0 error:v42];

  v43 = v35;
  v85(0, v32);
}

uint64_t sub_100163E44(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "preflightPreapprovedJoin complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000030, 0x800000010023C6A0);
  return a4(a1 & 1, a2);
}

uint64_t sub_100164084(uint64_t a1, uint64_t (*a2)(void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v8 = sub_100216774();
    sub_100002648(v8, qword_10029D160);
    swift_errorRetain();
    v9 = sub_100216754();
    v10 = sub_100216C74();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v22 = v12;
      *v11 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v13 = sub_100216994();
      v15 = sub_100005FB0(v13, v14, &v22);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "preflightPreapprovedJoin unable to fetch changes: %{public}s", v11, 0xCu);
      sub_100006128(v12);
    }

    return a2(0, a1);
  }

  else
  {
    v18 = *(a4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    __chkstk_darwin(0, a2);
    v20 = v19;
    sub_10001148C(&qword_100297E70, &unk_10021DAB0);
    result = sub_100216D34();
    if (v22)
    {

      v21 = v20;

      sub_1001A74C0(v22, v21, v21, a2, a3, a5);
    }
  }

  return result;
}

void sub_100164308(uint64_t a1@<X0>, void (*a2)(void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = 0;
  v6 = [v5 allPolicyVersionsWithError:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = v6;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v9 = sub_100216BB4();
    v10 = v7;
  }

  else
  {
    v11 = v19;
    v12 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching all policy versions: %{public}@", v16, 0xCu);
      sub_1000114D4(v17, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    a2(0, v12);

    v9 = 0;
  }

  *a3 = v9;
}

void sub_100164584(uint64_t a1, void (*a2)(uint64_t, void *), uint64_t a3, void **a4)
{
  v7 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v8 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v116 = 0;
  v9 = [v8 hasAnyPeersWithError:&v116];
  v10 = v116;
  if (v116)
  {
    swift_willThrow();
    v11 = qword_100297520;
    v12 = v10;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    v14 = v12;
    v15 = sub_100216754();
    v16 = sub_100216C74();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138543362;
      v19 = v14;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 4) = v20;
      *v18 = v20;
      _os_log_impl(&_mh_execute_header, v15, v16, "error calling hasAnyPeers: %{public}@", v17, 0xCu);
      sub_1000114D4(v18, &qword_10029D580, &unk_10021CCC0);
    }

    v21 = v14;
    a2(0, v10);

    return;
  }

  if (!v9)
  {
    a2(1, 0);
    return;
  }

  v22 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v23 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v23)
  {
    goto LABEL_20;
  }

  v24 = v23;
  sub_100216974();

  v25 = [*(a1 + v22) egoPeerPermanentInfo];
  if (!v25)
  {
LABEL_19:

LABEL_20:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v58 = sub_100216774();
    sub_100002648(v58, qword_10029D160);
    v59 = sub_100216754();
    v60 = sub_100216C54();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&_mh_execute_header, v59, v60, "preflightPreapprovedJoin: no prepared identity", v61, 2u);
    }

    sub_1000561D0();
    v62 = swift_allocError();
    *v63 = xmmword_10021DA90;
    *(v63 + 16) = 13;
    a2(0, v62);

    return;
  }

  v26 = v25;
  v27 = sub_100216224();
  v29 = v28;

  v30 = [*(a1 + v22) egoPeerPermanentInfoSig];
  if (!v30)
  {
    sub_100002BF0(v27, v29);
    goto LABEL_19;
  }

  v31 = v30;
  v111 = a2;
  v114 = v29;
  v32 = sub_100216224();
  v34 = v33;

  v35 = [objc_allocWithZone(TPECPublicKeyFactory) init];
  sub_100012558(v27, v114);
  sub_100012558(v32, v34);
  v112 = sub_100216964();

  isa = sub_100216204().super.isa;
  v37 = sub_100216204().super.isa;
  v38 = [objc_opt_self() permanentInfoWithPeerID:v112 data:isa sig:v37 keyFactory:v35];

  v107 = v35;
  v108 = v32;
  v109 = v34;
  sub_100002BF0(v32, v34);

  v110 = v27;
  sub_100002BF0(v27, v114);

  if (v38)
  {
    v39 = *(a1 + v7);
    v106 = v38;
    v40 = [objc_msgSend(v38 "signingPubKey")];
    swift_unknownObjectRelease();
    v41 = sub_100216224();
    v43 = v42;

    v44 = sub_100216204().super.isa;
    sub_100002BF0(v41, v43);
    v116 = 0;
    v45 = [v39 hasPotentiallyTrustedPeerPreapprovingKey:v44 error:&v116];

    v46 = v116;
    v47 = v111;
    if (v116)
    {
      swift_willThrow();
      v48 = qword_100297520;
      a4 = v46;
      if (v48 != -1)
      {
LABEL_68:
        swift_once();
      }

      v49 = sub_100216774();
      sub_100002648(v49, qword_10029D160);
      v50 = a4;
      v51 = sub_100216754();
      v52 = sub_100216C54();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138543362;
        v55 = v50;
        v56 = _swift_stdlib_bridgeErrorToNSError();
        *(v53 + 4) = v56;
        *v54 = v56;
        _os_log_impl(&_mh_execute_header, v51, v52, "preflightPreapprovedJoin: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v53, 0xCu);
        sub_1000114D4(v54, &qword_10029D580, &unk_10021CCC0);
      }

      v57 = v50;
      v47(0, v46);

      sub_100002BF0(v108, v109);
      sub_100002BF0(v110, v114);
    }

    else if (v45)
    {
      v70 = v114;
      if (!a4)
      {
        goto LABEL_60;
      }

      v47 = a4[2];
      if (v47)
      {
        v71 = 0;
        v105 = a4 + 4;
        v72 = _swiftEmptyArrayStorage;
        while (2)
        {
          v104 = v72;
          while (1)
          {
            if (v71 >= v47)
            {
              __break(1u);
LABEL_67:
              __break(1u);
              goto LABEL_68;
            }

            v73 = (v71 + 1);
            if (__OFADD__(v71, 1))
            {
              goto LABEL_67;
            }

            *v113 = *&v105[2 * v71];
            v74 = *(a1 + v7);
            a4 = v113[0];
            sub_100012558(v113[0], v113[1]);
            v75 = sub_100216204().super.isa;
            v115 = 0;
            v76 = [v74 hasPotentiallyTrustedPeerWithSigningKey:v75 error:&v115];

            v46 = v115;
            if (v115)
            {
              swift_willThrow();
              v86 = v46;
              sub_100002BF0(v113[0], v113[1]);

              if (qword_100297520 != -1)
              {
                swift_once();
              }

              v87 = sub_100216774();
              sub_100002648(v87, qword_10029D160);
              v88 = v86;
              v89 = sub_100216754();
              v90 = sub_100216C74();

              if (os_log_type_enabled(v89, v90))
              {
                v91 = swift_slowAlloc();
                v92 = swift_slowAlloc();
                *v91 = 138543362;
                v93 = v88;
                v94 = _swift_stdlib_bridgeErrorToNSError();
                *(v91 + 4) = v94;
                *v92 = v94;
                _os_log_impl(&_mh_execute_header, v89, v90, "preflightPreapprovedJoin: error calling hasPotentiallyTrustedPeerWithSigningKey %{public}@", v91, 0xCu);
                sub_1000114D4(v92, &qword_10029D580, &unk_10021CCC0);
              }

              v95 = v88;
              v111(0, v46);

              sub_100002BF0(v108, v109);
              sub_100002BF0(v110, v114);
              return;
            }

            if (v76)
            {
              break;
            }

            sub_100002BF0(v113[0], v113[1]);
            ++v71;
            if (v73 == v47)
            {
              v70 = v114;
              v72 = v104;
              goto LABEL_58;
            }
          }

          v72 = v104;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v116 = v104;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            a4 = &v116;
            sub_1001878D0(0, v104[2] + 1, 1);
            v72 = v116;
          }

          v79 = v72[2];
          v78 = v72[3];
          if (v79 >= v78 >> 1)
          {
            a4 = &v116;
            sub_1001878D0((v78 > 1), v79 + 1, 1);
            v72 = v116;
          }

          v72[2] = v79 + 1;
          *&v72[2 * v79 + 4] = *v113;
          v71 = v73;
          v70 = v114;
          if (v73 != v47)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v72 = _swiftEmptyArrayStorage;
      }

LABEL_58:
      v96 = v72[2];

      v47 = v111;
      if (v96)
      {
        v111(1, 0);

        sub_100002BF0(v108, v109);
        v97 = v110;
      }

      else
      {
LABEL_60:
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v98 = sub_100216774();
        sub_100002648(v98, qword_10029D160);
        v99 = sub_100216754();
        v100 = sub_100216C54();
        if (os_log_type_enabled(v99, v100))
        {
          v101 = swift_slowAlloc();
          *v101 = 0;
          _os_log_impl(&_mh_execute_header, v99, v100, "preflightPreapprovedJoin: no reciprocal trust for existing peers", v101, 2u);
        }

        sub_1000561D0();
        v102 = swift_allocError();
        *v103 = xmmword_1002260E0;
        *(v103 + 16) = 13;
        v47(0, v102);

        sub_100002BF0(v108, v109);
        v97 = v110;
      }

      sub_100002BF0(v97, v70);
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v80 = sub_100216774();
      sub_100002648(v80, qword_10029D160);
      v81 = sub_100216754();
      v82 = sub_100216C54();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "preflightPreapprovedJoin: no peers preapprove our key", v83, 2u);
      }

      sub_1000561D0();
      v84 = swift_allocError();
      *v85 = xmmword_1002260D0;
      *(v85 + 16) = 13;
      v111(0, v84);

      sub_100002BF0(v108, v109);
      sub_100002BF0(v27, v114);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v64 = sub_100216774();
    sub_100002648(v64, qword_10029D160);
    v65 = sub_100216754();
    v66 = sub_100216C54();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&_mh_execute_header, v65, v66, "preflightPreapprovedJoin: invalid permanent info", v67, 2u);
    }

    sub_1000561D0();
    v68 = swift_allocError();
    *v69 = xmmword_10021DA80;
    *(v69 + 16) = 13;
    v111(0, v68);

    sub_100002BF0(v32, v34);
    sub_100002BF0(v27, v114);
  }
}

uint64_t sub_100165334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void, void, void, void, void))
{
  if (a5)
  {
    v12 = sub_100216C74();
  }

  else
  {
    v12 = sub_100216C54();
  }

  v13 = v12;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v14 = sub_100216774();
  sub_100002648(v14, qword_10029D160);
  swift_errorRetain();
  v15 = sub_100216754();

  if (os_log_type_enabled(v15, v13))
  {
    v21 = a4;
    v22 = a7;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v24 = v17;
    *v16 = 136446210;
    if (a5)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v25._countAndFlagsBits = sub_100216994();
      sub_100216A14(v25);

      v18 = 0x203A726F727265;
    }

    else
    {
      v18 = 0x73736563637573;
    }

    v19 = sub_100005FB0(v18, 0xE700000000000000, &v24);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v13, "preapprovedJoin complete: %{public}s", v16, 0xCu);
    sub_100006128(v17);

    a7 = v22;
    a4 = v21;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000068, 0x800000010023C630);
  return a7(a1, a2, a3, a4, a5);
}

uint64_t sub_100165594(uint64_t a1, uint64_t (*a2)(void, void, void *, void, uint64_t), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v16 = sub_100216774();
    sub_100002648(v16, qword_10029D160);
    swift_errorRetain();
    v17 = sub_100216754();
    v18 = sub_100216C74();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v21 = sub_100216994();
      v23 = sub_100005FB0(v21, v22, aBlock);

      *(v19 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "preapprovedJoin unable to fetch changes: %{public}s", v19, 0xCu);
      sub_100006128(v20);
    }

    return a2(0, 0, _swiftEmptyArrayStorage, 0, a1);
  }

  else
  {
    v36 = *&a4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = a5;
    *(v30 + 32) = a6;
    *(v30 + 40) = a7;
    *(v30 + 48) = a8;
    *(v30 + 56) = a9;
    *(v30 + 64) = a10;
    *(v30 + 72) = a11;
    *(v30 + 80) = a12;
    *(v30 + 88) = a13;
    *(v30 + 96) = a14 & 1;
    *(v30 + 104) = a2;
    *(v30 + 112) = a3;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_1001A9C0C;
    *(v31 + 24) = v30;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v31;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283030;
    v32 = _Block_copy(aBlock);

    v33 = a4;

    [v36 performBlockAndWait:v32];
    _Block_release(v32);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100165918(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, void (*a12)(void, void, void *, void, uint64_t), uint64_t a13)
{
  v21 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v132[0] = 0;
  v22 = [v21 peerCountWithError:v132];
  v23 = v132[0];
  if (v132[0])
  {
    swift_willThrow();
    v24 = qword_100297520;
    v25 = v23;
    if (v24 != -1)
    {
      swift_once();
    }

    v26 = sub_100216774();
    sub_100002648(v26, qword_10029D160);
    v27 = v25;
    v28 = sub_100216754();
    v29 = sub_100216C74();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138543362;
      v32 = v27;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v33;
      *v31 = v33;
      _os_log_impl(&_mh_execute_header, v28, v29, "preapprovedJoin: error getting peerCount: %{public}@", v30, 0xCu);
      sub_1000114D4(v31, &qword_10029D580, &unk_10021CCC0);
    }

    v34 = v27;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v23);

    return;
  }

  v130 = a4;
  v129 = a2;
  if (v22)
  {
    v35 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v36 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
    if (v36)
    {
      v37 = v36;
      v38 = sub_100216974();
      v40 = v39;

      v41 = [*&a1[v35] egoPeerPermanentInfo];
      if (v41)
      {
        v42 = v41;
        v43 = sub_100216224();
        v45 = v44;

        v46 = [*&a1[v35] egoPeerPermanentInfoSig];
        if (v46)
        {
          v47 = v46;
          v125 = sub_100216224();
          v126 = v48;

          v49 = [*&a1[v35] egoPeerStableInfo];
          if (v49)
          {
            v127 = a3;
            v50 = v49;
            v51 = sub_100216224();
            v53 = v52;

            v54 = [*&a1[v35] egoPeerStableInfoSig];
            if (v54)
            {
              v122 = v51;
              v55 = v54;
              v123 = sub_100216224();
              v121 = v56;

              v57 = [objc_allocWithZone(TPECPublicKeyFactory) init];

              sub_100012558(v43, v45);
              v124 = v45;
              sub_100012558(v125, v126);
              v58 = sub_100216964();

              isa = sub_100216204().super.isa;
              v60 = sub_100216204().super.isa;
              v120 = v57;
              v61 = [objc_opt_self() permanentInfoWithPeerID:v58 data:isa sig:v60 keyFactory:v57];

              sub_100002BF0(v125, v126);
              sub_100002BF0(v43, v45);

              if (v61)
              {
                v119 = v43;
                v62 = objc_allocWithZone(TPPeerStableInfo);
                sub_100012558(v122, v53);
                sub_100012558(v123, v121);
                v63 = sub_100216204().super.isa;
                v64 = sub_100216204().super.isa;
                v65 = [v62 initWithData:v63 sig:v64];

                sub_100002BF0(v123, v121);
                sub_100002BF0(v122, v53);
                if (v65)
                {
                  v118 = v65;
                  v66 = [v61 machineID];
                  v67 = sub_100216974();
                  v69 = v68;

                  LOBYTE(v66) = sub_1001E537C(v67, v69);

                  if ((v66 & 1) == 0)
                  {

                    if (qword_100297520 != -1)
                    {
                      swift_once();
                    }

                    v95 = sub_100216774();
                    sub_100002648(v95, qword_10029D160);
                    v96 = v61;
                    v97 = sub_100216754();
                    v98 = sub_100216C54();

                    if (os_log_type_enabled(v97, v98))
                    {
                      v99 = swift_slowAlloc();
                      v100 = swift_slowAlloc();
                      v132[0] = v100;
                      *v99 = 136446210;
                      v101 = [v96 machineID];
                      v102 = sub_100216974();
                      v104 = v103;

                      v105 = sub_100005FB0(v102, v104, v132);
                      v106 = v124;

                      *(v99 + 4) = v105;
                      _os_log_impl(&_mh_execute_header, v97, v98, "preapprovedJoin: self machineID %{public}s (me) not on list", v99, 0xCu);
                      sub_100006128(v100);
                    }

                    else
                    {

                      v106 = v45;
                    }

                    v107 = objc_allocWithZone(SecTapToRadar);
                    v108 = sub_100216964();
                    v109 = sub_100216964();
                    v110 = sub_100216964();
                    v111 = [v107 initTapToRadar:v108 description:v109 radar:v110];

                    [v111 trigger];
                    v112 = [v96 machineID];
                    v113 = sub_100216974();
                    v115 = v114;

                    sub_1000561D0();
                    v116 = swift_allocError();
                    *v117 = v113;
                    *(v117 + 8) = v115;
                    *(v117 + 16) = 2;
                    a12(0, 0, _swiftEmptyArrayStorage, 0, v116);

                    sub_100002BF0(v123, v121);
                    sub_100002BF0(v122, v53);
                    sub_100002BF0(v125, v126);
                    v91 = v119;
                    v92 = v106;
                    goto LABEL_40;
                  }

                  v70 = swift_allocObject();
                  v70[2] = a12;
                  v70[3] = a13;
                  v70[4] = a1;
                  v70[5] = v38;
                  v70[6] = v40;
                  v70[7] = v61;
                  v70[8] = v118;
                  v70[9] = v130;
                  v131 = v38;
                  v70[10] = v129;
                  v70[11] = v127;
                  v70[12] = v43;
                  v70[13] = v45;
                  v70[14] = v125;
                  v70[15] = v126;
                  v70[16] = v122;
                  v70[17] = v53;
                  v70[18] = v123;
                  v70[19] = v121;
                  strcpy(v132, "signing-key ");
                  BYTE5(v132[1]) = 0;
                  HIWORD(v132[1]) = -5120;

                  sub_100012558(v43, v45);
                  sub_100012558(v125, v126);
                  sub_100012558(v122, v53);
                  sub_100012558(v123, v121);

                  v71 = a1;
                  v72 = v61;
                  v73 = v118;
                  v133._countAndFlagsBits = v131;
                  v133._object = v40;
                  sub_100216A14(v133);
                  v74 = v132[0];
                  v75 = v132[1];

                  sub_100198E8C(v74, v75, sub_1001A9C54, v70, v131, v40);

                  swift_bridgeObjectRelease_n();
                  sub_100002BF0(v123, v121);
                  v76 = v122;
                  v77 = v53;
                }

                else
                {

                  sub_1000561D0();
                  v93 = swift_allocError();
                  *v94 = xmmword_10021DC20;
                  *(v94 + 16) = 13;
                  a12(0, 0, _swiftEmptyArrayStorage, 0, v93);

                  sub_100002BF0(v123, v121);
                  v76 = v122;
                  v77 = v53;
                }

                sub_100002BF0(v76, v77);
                sub_100002BF0(v125, v126);
                v91 = v43;
                v92 = v45;
              }

              else
              {

                sub_1000561D0();
                v89 = swift_allocError();
                *v90 = xmmword_10021DA80;
                *(v90 + 16) = 13;
                a12(0, 0, _swiftEmptyArrayStorage, 0, v89);

                sub_100002BF0(v123, v121);
                sub_100002BF0(v122, v53);
                sub_100002BF0(v125, v126);
                v91 = v43;
                v92 = v45;
              }

LABEL_40:
              sub_100002BF0(v91, v92);
              return;
            }

            sub_100002BF0(v51, v53);
          }

          sub_100002BF0(v125, v126);
        }

        sub_100002BF0(v43, v45);
      }
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v83 = sub_100216774();
    sub_100002648(v83, qword_10029D160);
    v84 = sub_100216754();
    v85 = sub_100216C54();
    if (os_log_type_enabled(v84, v85))
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&_mh_execute_header, v84, v85, "preapprovedJoin: no prepared identity", v86, 2u);
    }

    sub_1000561D0();
    v87 = swift_allocError();
    *v88 = xmmword_10021DA90;
    *(v88 + 16) = 13;
    a12(0, 0, _swiftEmptyArrayStorage, 0, v87);
  }

  else
  {
    v128 = a3;
    v78 = a4;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v79 = sub_100216774();
    sub_100002648(v79, qword_10029D160);
    v80 = sub_100216754();
    v81 = sub_100216C54();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&_mh_execute_header, v80, v81, "preapprovedJoin but no existing peers, attempting establish", v82, 2u);
      v78 = a4;
    }

    sub_1001296AC(v129, v128, v78, a5, a6, a7, a8, a9, a10, a11 & 1, a12, a13);
  }
}

void sub_100166644(char *a1, uint64_t a2, void (*a3)(void, void, void *, void, void *), uint64_t a4, char *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, unint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, unint64_t a20)
{
  if (a1)
  {
    v22 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper19OctagonSelfPeerKeys_signingKey];
    v24 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v69 = a1;
    v25 = [objc_msgSend(v22 "publicKey")];
    swift_unknownObjectRelease();
    v26 = sub_100216224();
    v28 = v27;

    isa = sub_100216204().super.isa;
    sub_100002BF0(v26, v28);
    aBlock[0] = 0;
    v30 = [v24 hasPotentiallyTrustedPeerPreapprovingKey:isa error:aBlock];

    v31 = aBlock[0];
    if (aBlock[0])
    {
      swift_willThrow();
      v32 = qword_100297520;
      v33 = v31;
      if (v32 != -1)
      {
        swift_once();
      }

      v34 = sub_100216774();
      sub_100002648(v34, qword_10029D160);
      v35 = v33;
      v36 = sub_100216754();
      v37 = sub_100216C54();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 138543362;
        v40 = v35;
        v41 = _swift_stdlib_bridgeErrorToNSError();
        *(v38 + 4) = v41;
        *v39 = v41;
        _os_log_impl(&_mh_execute_header, v36, v37, "preapprovedJoin: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v38, 0xCu);
        sub_1000114D4(v39, &qword_10029D580, &unk_10021CCC0);
      }

      v42 = v35;
      a3(0, 0, _swiftEmptyArrayStorage, 0, v31);
    }

    else
    {
      if (v30)
      {
        v65 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
        v52 = swift_allocObject();
        v52[2] = a5;
        v52[3] = a6;
        v52[4] = a7;
        v52[5] = a8;
        v52[6] = a9;
        v52[7] = a10;
        v52[8] = v69;
        v52[9] = a3;
        v52[10] = a4;
        v52[11] = a11;
        v52[12] = a12;
        v52[13] = a13;
        v52[14] = a14;
        v52[15] = a15;
        v52[16] = a16;
        v52[17] = a17;
        v52[18] = a18;
        v52[19] = a19;
        v52[20] = a20;
        v53 = swift_allocObject();
        *(v53 + 16) = sub_1001A9CA0;
        *(v53 + 24) = v52;
        aBlock[4] = sub_1001ACCC0;
        aBlock[5] = v53;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100109050;
        aBlock[3] = &unk_1002830D0;
        v54 = _Block_copy(aBlock);

        v55 = v69;
        v56 = a5;

        v57 = a8;
        v58 = a9;
        sub_100012558(a13, a14);
        sub_100012558(a15, a16);
        sub_100012558(a17, a18);
        sub_100012558(a19, a20);

        [v65 performBlockAndWait:v54];

        _Block_release(v54);
        LOBYTE(v55) = swift_isEscapingClosureAtFileLocation();

        if ((v55 & 1) == 0)
        {
          return;
        }

        __break(1u);
      }

      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v59 = sub_100216774();
      sub_100002648(v59, qword_10029D160);
      v60 = sub_100216754();
      v61 = sub_100216C54();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 0;
        _os_log_impl(&_mh_execute_header, v60, v61, "preapprovedJoin: no peers preapprove our key", v62, 2u);
      }

      sub_1000561D0();
      v63 = swift_allocError();
      *v64 = xmmword_1002260D0;
      *(v64 + 16) = 13;
      a3(0, 0, _swiftEmptyArrayStorage, 0, v63);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v44 = sub_100216774();
    sub_100002648(v44, qword_10029D160);
    swift_errorRetain();
    v45 = sub_100216754();
    v46 = sub_100216C74();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      aBlock[0] = v48;
      *v47 = 136446210;
      aBlock[6] = a2;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v49 = sub_100216994();
      v51 = sub_100005FB0(v49, v50, aBlock);

      *(v47 + 4) = v51;
      _os_log_impl(&_mh_execute_header, v45, v46, "preapprovedJoin: Don't have my own keys: can't join: %{public}s", v47, 0xCu);
      sub_100006128(v48);
    }

    a3(0, 0, _swiftEmptyArrayStorage, 0, a2);
  }
}

uint64_t sub_100166DB0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, __CFString *a6, void *a7, void (*a8)(void, void, void *, void, void), uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19)
{
  v331 = a5;
  v332 = a6;
  v334 = a3;
  v335 = a4;
  v333 = a1;
  v329 = a8;
  v330 = a9;
  v317 = type metadata accessor for JoinWithVoucherRequest(0);
  v21 = *(*(v317 - 8) + 64);
  __chkstk_darwin(v317, v22);
  v318 = &v300 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for SignedVoucher(0);
  v319 = *(v24 - 8);
  v25 = v319[8];
  __chkstk_darwin(v24 - 8, v26);
  v328 = (&v300 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v29 = *(*(v28 - 8) + 64);
  v31 = __chkstk_darwin(v28 - 8, v30);
  v312 = &v300 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v311 = &v300 - v34;
  v314 = type metadata accessor for SignedPeerDynamicInfo(0);
  v313 = *(v314 - 8);
  v35 = v313[8];
  v37 = __chkstk_darwin(v314, v36);
  v310 = (&v300 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v37, v39);
  v309 = (&v300 - v40);
  v41 = type metadata accessor for Bottle(0);
  v42 = *(*(v41 - 8) + 64);
  v44 = __chkstk_darwin(v41 - 8, v43);
  v321 = (&v300 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v44, v46);
  v322 = &v300 - v47;
  v48 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8, v50);
  v326 = &v300 - v51;
  v52 = type metadata accessor for SignedPeerStableInfo(0);
  v324 = *(v52 - 8);
  v325 = v52;
  v53 = *(v324 + 64);
  __chkstk_darwin(v52, v54);
  v56 = &v300 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v327 = type metadata accessor for Peer(0);
  v315 = *(v327 - 8);
  v57 = *(v315 + 64);
  v59 = __chkstk_darwin(v327, v58);
  v316 = &v300 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v59, v60);
  v320 = &v300 - v62;
  v64 = __chkstk_darwin(v61, v63);
  v66 = &v300 - v65;
  v68 = __chkstk_darwin(v64, v67);
  v70 = &v300 - v69;
  v72 = __chkstk_darwin(v68, v71);
  v74 = &v300 - v73;
  v76 = __chkstk_darwin(v72, v75);
  v78 = &v300 - v77;
  __chkstk_darwin(v76, v79);
  v81 = &v300 - v80;
  v323 = a2;
  v82 = sub_100156564(v78, a2, v334, v335, v331, 0, 0, v332, _swiftEmptyArrayStorage, a7);
  v331 = a7;
  v306 = v74;
  v305 = v70;
  v307 = v66;
  v304 = v57;
  v332 = v82;
  sub_1001AC038(v78, v81, type metadata accessor for Peer);
  v83 = *(v327 + 32);
  v308 = v81;
  v84 = v326;
  sub_100019C6C(&v81[v83], v326, &qword_1002985A8, &unk_100226650);
  v85 = v325;
  v86 = *(v324 + 48);
  if (v86(v84, 1, v325) == 1)
  {
    *v56 = xmmword_10021D470;
    *(v56 + 1) = xmmword_10021D470;
    v87 = &v56[v85[6]];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v88 = v86(v84, 1, v85);
    v89 = v331;
    if (v88 != 1)
    {
      sub_1000114D4(v84, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v84, v56, type metadata accessor for SignedPeerStableInfo);
    v89 = v331;
  }

  v90 = *v56;
  v91 = *(v56 + 1);
  v92 = *(v56 + 2);
  v93 = *(v56 + 3);
  v94 = objc_allocWithZone(TPPeerStableInfo);
  isa = sub_100216204().super.isa;
  v96 = sub_100216204().super.isa;
  v97 = [v94 initWithData:isa sig:v96];

  sub_1001AC1E4(v56, type metadata accessor for SignedPeerStableInfo);
  if (v97)
  {
    v98 = [v335 epoch];
    if (v98 < 0)
    {
      __break(1u);
      swift_once();
      v101 = sub_100216774();
      sub_100002648(v101, qword_10029D160);
      swift_errorRetain();
      v102 = sub_100216754();
      v103 = sub_100216C74();

      v104 = os_log_type_enabled(v102, v103);
      v105 = v308;
      if (v104)
      {
        v106 = swift_slowAlloc();
        v107 = swift_slowAlloc();
        v336 = 0;
        v337 = v107;
        *v106 = 136446210;
        swift_errorRetain();
        sub_10001148C(&unk_10029D560, qword_10021D450);
        v108 = sub_100216994();
        v110 = sub_100005FB0(v108, v109, &v337);

        *(v106 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v102, v103, "Unable to process keys before joining: %{public}s", v106, 0xCu);
        sub_100006128(v107);
      }

      swift_errorRetain();
      v329(0, 0, _swiftEmptyArrayStorage, 0, 0);

      return sub_1001AC1E4(v105, type metadata accessor for Peer);
    }

    else
    {
      sub_1001551F8(a10, a11, v89, v332, v98);
      v99 = v334;
      v100 = v323;
      v121 = v120;
      v123 = v122;
      v124 = v321;
      sub_10017B39C(v323, v334, v321);
      v303 = 0;
      sub_1001AC038(v124, v322, type metadata accessor for Bottle);
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v321 = a15;
      v125 = sub_100216774();
      v126 = sub_100002648(v125, qword_10029D160);

      v331 = v126;
      v127 = sub_100216754();
      v128 = sub_100216C54();

      v129 = os_log_type_enabled(v127, v128);
      v324 = v123;
      v325 = v97;
      v301 = a14;
      if (v129)
      {
        v130 = swift_slowAlloc();
        v131 = swift_slowAlloc();
        v337 = v131;
        *v130 = 136446210;
        *(v130 + 4) = sub_100005FB0(v100, v99, &v337);
        _os_log_impl(&_mh_execute_header, v127, v128, "Beginning preapprovedJoin for peer %{public}s", v130, 0xCu);
        sub_100006128(v131);
      }

      v302 = a17;
      sub_100012558(a12, a13);
      v132 = sub_100216754();
      v133 = sub_100216C54();
      sub_100002BF0(a12, a13);
      v134 = os_log_type_enabled(v132, v133);
      v326 = v121;
      v135 = v321;
      if (v134)
      {
        v136 = swift_slowAlloc();
        v137 = swift_slowAlloc();
        v337 = v137;
        *v136 = 136446210;
        v138 = sub_100216214(0);
        v140 = sub_100005FB0(v138, v139, &v337);

        *(v136 + 4) = v140;
        _os_log_impl(&_mh_execute_header, v132, v133, "preapprovedJoin permanentInfo: %{public}s", v136, 0xCu);
        sub_100006128(v137);
      }

      v141 = v301;
      sub_100012558(v301, v135);
      v142 = sub_100216754();
      v143 = sub_100216C54();
      sub_100002BF0(v141, v135);
      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v337 = v145;
        *v144 = 136446210;
        v146 = sub_100216214(0);
        v148 = sub_100005FB0(v146, v147, &v337);

        *(v144 + 4) = v148;
        _os_log_impl(&_mh_execute_header, v142, v143, "preapprovedJoin permanentInfoSig: %{public}s", v144, 0xCu);
        sub_100006128(v145);
      }

      v149 = v302;
      sub_100012558(a16, v302);
      v150 = sub_100216754();
      v151 = sub_100216C54();
      sub_100002BF0(a16, v149);
      if (os_log_type_enabled(v150, v151))
      {
        v152 = swift_slowAlloc();
        v153 = swift_slowAlloc();
        v337 = v153;
        *v152 = 136446210;
        v154 = sub_100216214(0);
        v156 = sub_100005FB0(v154, v155, &v337);

        *(v152 + 4) = v156;
        _os_log_impl(&_mh_execute_header, v150, v151, "preapprovedJoin stableInfo: %{public}s", v152, 0xCu);
        sub_100006128(v153);
      }

      v157 = v307;
      sub_100012558(a18, a19);
      v158 = sub_100216754();
      v159 = sub_100216C54();
      sub_100002BF0(a18, a19);
      if (os_log_type_enabled(v158, v159))
      {
        v160 = swift_slowAlloc();
        v161 = swift_slowAlloc();
        v337 = v161;
        *v160 = 136446210;
        v162 = sub_100216214(0);
        v164 = sub_100005FB0(v162, v163, &v337);

        *(v160 + 4) = v164;
        _os_log_impl(&_mh_execute_header, v158, v159, "preapprovedJoin stableInfoSig: %{public}s", v160, 0xCu);
        sub_100006128(v161);
      }

      v165 = v326;
      v166 = v319;
      v167 = v320;
      v168 = v306;
      v169 = v308;
      sub_1001AC0A0(v308, v306, type metadata accessor for Peer);
      v170 = sub_100216754();
      v171 = sub_100216C54();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v337 = v173;
        *v172 = 136446210;
        v174 = v311;
        sub_100019C6C(v168 + *(v327 + 36), v311, &unk_10029D760, &qword_10021E810);
        v175 = v313[6];
        v176 = v314;
        if (v175(v174, 1, v314) == 1)
        {
          v177 = v309;
          *v309 = xmmword_10021D470;
          v177[1] = xmmword_10021D470;
          v178 = v177 + *(v176 + 24);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v175(v174, 1, v176) != 1)
          {
            sub_1000114D4(v174, &unk_10029D760, &qword_10021E810);
          }
        }

        else
        {
          v177 = v309;
          sub_1001AC038(v174, v309, type metadata accessor for SignedPeerDynamicInfo);
        }

        v179 = *v177;
        v180 = *(v177 + 1);
        sub_100012558(*v177, v180);
        sub_1001AC1E4(v177, type metadata accessor for SignedPeerDynamicInfo);
        v181 = sub_100216214(0);
        v183 = v182;
        sub_100002BF0(v179, v180);
        sub_1001AC1E4(v306, type metadata accessor for Peer);
        v184 = sub_100005FB0(v181, v183, &v337);

        *(v172 + 4) = v184;
        _os_log_impl(&_mh_execute_header, v170, v171, "preapprovedJoin dynamicInfo: %{public}s", v172, 0xCu);
        sub_100006128(v173);

        v166 = v319;
        v167 = v320;
        v157 = v307;
        v169 = v308;
      }

      else
      {

        sub_1001AC1E4(v168, type metadata accessor for Peer);
      }

      v185 = v305;
      sub_1001AC0A0(v169, v305, type metadata accessor for Peer);
      v186 = sub_100216754();
      v187 = sub_100216C54();
      if (os_log_type_enabled(v186, v187))
      {
        v188 = swift_slowAlloc();
        v189 = swift_slowAlloc();
        v337 = v189;
        *v188 = 136446210;
        v190 = v312;
        sub_100019C6C(v185 + *(v327 + 36), v312, &unk_10029D760, &qword_10021E810);
        v191 = v313[6];
        v192 = v314;
        if (v191(v190, 1, v314) == 1)
        {
          v193 = v310;
          *v310 = xmmword_10021D470;
          v193[1] = xmmword_10021D470;
          v194 = v193 + *(v192 + 24);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v191(v190, 1, v192) != 1)
          {
            sub_1000114D4(v190, &unk_10029D760, &qword_10021E810);
          }
        }

        else
        {
          v193 = v310;
          sub_1001AC038(v190, v310, type metadata accessor for SignedPeerDynamicInfo);
        }

        v195 = *(v193 + 2);
        v196 = *(v193 + 3);
        sub_100012558(v195, v196);
        sub_1001AC1E4(v193, type metadata accessor for SignedPeerDynamicInfo);
        v197 = sub_100216214(0);
        v199 = v198;
        sub_100002BF0(v195, v196);
        sub_1001AC1E4(v305, type metadata accessor for Peer);
        v200 = sub_100005FB0(v197, v199, &v337);

        *(v188 + 4) = v200;
        _os_log_impl(&_mh_execute_header, v186, v187, "preapprovedJoin dynamicInfoSig: %{public}s", v188, 0xCu);
        sub_100006128(v189);

        v166 = v319;
        v167 = v320;
        v157 = v307;
        v169 = v308;
      }

      else
      {

        sub_1001AC1E4(v185, type metadata accessor for Peer);
      }

      sub_1001AC0A0(v169, v157, type metadata accessor for Peer);
      v201 = sub_100216754();
      v202 = sub_100216C54();
      if (os_log_type_enabled(v201, v202))
      {
        LODWORD(v314) = v202;
        v203 = swift_slowAlloc();
        v313 = swift_slowAlloc();
        v337 = v313;
        v321 = v203;
        *v203 = 136446210;
        v204 = *(v157 + 16);
        v205 = *(v204 + 16);
        v206 = v328;
        if (v205)
        {
          v336 = _swiftEmptyArrayStorage;
          sub_1001877A4(0, v205, 0);
          v207 = v336;
          v208 = v204 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
          v209 = v166[9];
          do
          {
            sub_1001AC0A0(v208, v206, type metadata accessor for SignedVoucher);
            v210 = *v206;
            v211 = v206[1];
            v212 = sub_100216214(0);
            v214 = v213;
            sub_1001AC1E4(v206, type metadata accessor for SignedVoucher);
            v336 = v207;
            v216 = v207[2];
            v215 = v207[3];
            if (v216 >= v215 >> 1)
            {
              sub_1001877A4((v215 > 1), v216 + 1, 1);
              v207 = v336;
            }

            v207[2] = v216 + 1;
            v217 = &v207[2 * v216];
            v217[4] = v212;
            v217[5] = v214;
            v208 += v209;
            --v205;
            v206 = v328;
          }

          while (v205);
          v165 = v326;
          v166 = v319;
          v167 = v320;
          v157 = v307;
        }

        v218 = sub_100216B34();
        v220 = v219;

        sub_1001AC1E4(v157, type metadata accessor for Peer);
        v221 = sub_100005FB0(v218, v220, &v337);

        v222 = v321;
        *(v321 + 1) = v221;
        _os_log_impl(&_mh_execute_header, v201, v314, "preapprovedJoin vouchers: %{public}s", v222, 0xCu);
        sub_100006128(v313);

        v169 = v308;
      }

      else
      {

        sub_1001AC1E4(v157, type metadata accessor for Peer);
      }

      sub_1001AC0A0(v169, v167, type metadata accessor for Peer);
      v223 = sub_100216754();
      v224 = sub_100216C54();
      if (os_log_type_enabled(v223, v224))
      {
        LODWORD(v321) = v224;
        v225 = swift_slowAlloc();
        v319 = swift_slowAlloc();
        v337 = v319;
        *v225 = 136446210;
        v226 = *(v167 + 16);
        v227 = *(v226 + 16);
        if (v227)
        {
          v314 = v225;
          v336 = _swiftEmptyArrayStorage;
          sub_1001877A4(0, v227, 0);
          v228 = v336;
          v229 = v226 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
          v230 = v166[9];
          do
          {
            v231 = v328;
            sub_1001AC0A0(v229, v328, type metadata accessor for SignedVoucher);
            v232 = *(v231 + 16);
            v233 = *(v231 + 24);
            v234 = sub_100216214(0);
            v236 = v235;
            sub_1001AC1E4(v231, type metadata accessor for SignedVoucher);
            v336 = v228;
            v238 = v228[2];
            v237 = v228[3];
            if (v238 >= v237 >> 1)
            {
              sub_1001877A4((v237 > 1), v238 + 1, 1);
              v228 = v336;
            }

            v228[2] = v238 + 1;
            v239 = &v228[2 * v238];
            v239[4] = v234;
            v239[5] = v236;
            v229 += v230;
            --v227;
          }

          while (v227);
          v240 = v308;
          v165 = v326;
          v167 = v320;
          v225 = v314;
        }

        else
        {
          v240 = v169;
        }

        v241 = sub_100216B34();
        v243 = v242;

        sub_1001AC1E4(v167, type metadata accessor for Peer);
        v244 = sub_100005FB0(v241, v243, &v337);

        *(v225 + 4) = v244;
        _os_log_impl(&_mh_execute_header, v223, v321, "preapprovedJoin voucher signatures: %{public}s", v225, 0xCu);
        sub_100006128(v319);

        v169 = v240;
      }

      else
      {

        sub_1001AC1E4(v167, type metadata accessor for Peer);
      }

      v245 = sub_100216754();
      v246 = sub_100216C54();
      if (os_log_type_enabled(v245, v246))
      {
        v247 = swift_slowAlloc();
        *v247 = 134217984;
        *(v247 + 4) = *(v165 + 16);

        _os_log_impl(&_mh_execute_header, v245, v246, "preapprovedJoin: uploading %ld tlk shares", v247, 0xCu);
      }

      else
      {
      }

      sub_1001A13C4(&qword_100298BE8, type metadata accessor for Peer);
      v248 = v303;
      v249 = sub_100216624();
      if (v248)
      {
        swift_errorRetain();
        v251 = sub_100216754();
        v252 = sub_100216C54();

        v253 = v169;
        if (os_log_type_enabled(v251, v252))
        {
          v254 = swift_slowAlloc();
          v255 = swift_slowAlloc();
          v336 = v248;
          v337 = v255;
          *v254 = 136446210;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v256 = sub_100216994();
          v258 = sub_100005FB0(v256, v257, &v337);

          *(v254 + 4) = v258;
          _os_log_impl(&_mh_execute_header, v251, v252, "preapprovedJoin unable to encode peer: %{public}s", v254, 0xCu);
          sub_100006128(v255);
        }

        else
        {
        }
      }

      else
      {
        v253 = v169;
        v259 = v249;
        v260 = v250;
        v261 = sub_100216214(0);
        v263 = v262;
        sub_100002BF0(v259, v260);

        v264 = sub_100216754();
        v265 = sub_100216C54();

        if (os_log_type_enabled(v264, v265))
        {
          v266 = swift_slowAlloc();
          v267 = swift_slowAlloc();
          v337 = v267;
          *v266 = 136446210;
          v268 = sub_100005FB0(v261, v263, &v337);

          *(v266 + 4) = v268;
          _os_log_impl(&_mh_execute_header, v264, v265, "preapprovedJoin peer: %{public}s", v266, 0xCu);
          sub_100006128(v267);
        }

        else
        {
        }
      }

      v269 = v318;
      v270 = v333;
      v271 = v322;
      v272 = [*(v333 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
      if (v272)
      {
        v274 = v272;
        v275 = sub_100216974();
        v277 = v276;
      }

      else
      {
        v275 = 0;
        v277 = 0xE000000000000000;
      }

      __chkstk_darwin(v272, v273);
      *(&v300 - 8) = v275;
      *(&v300 - 7) = v277;
      *(&v300 - 6) = v253;
      *(&v300 - 5) = v271;
      *(&v300 - 4) = v165;
      *(&v300 - 3) = v324;
      v299 = v270;
      sub_1001A13C4(&unk_10029D870, type metadata accessor for JoinWithVoucherRequest);
      sub_100216654();

      v278 = *(v270 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
      v333 = *(v270 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
      v331 = sub_100006484((v270 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v333);
      v279 = v316;
      sub_1001AC0A0(v253, v316, type metadata accessor for Peer);
      v280 = (*(v315 + 80) + 24) & ~*(v315 + 80);
      v281 = (v304 + v280 + 7) & 0xFFFFFFFFFFFFFFF8;
      v282 = v269;
      v283 = v270;
      v284 = (v281 + 15) & 0xFFFFFFFFFFFFFFF8;
      v285 = (v284 + 15) & 0xFFFFFFFFFFFFFFF8;
      v286 = (v285 + 23) & 0xFFFFFFFFFFFFFFF8;
      v287 = swift_allocObject();
      *(v287 + 16) = v283;
      sub_1001AC038(v279, v287 + v280, type metadata accessor for Peer);
      v288 = v334;
      v289 = v335;
      *(v287 + v281) = v335;
      v290 = v325;
      *(v287 + v284) = v325;
      v291 = (v287 + v285);
      v292 = v330;
      *v291 = v329;
      v291[1] = v292;
      v293 = (v287 + v286);
      *v293 = v323;
      v293[1] = v288;
      v294 = *(v278 + 16);
      v295 = *(v294 + 24);

      v296 = v283;
      v297 = v289;
      v298 = v290;

      v295(v282, sub_1001A9D18, v287, v333, v294);

      sub_1001AC1E4(v282, type metadata accessor for JoinWithVoucherRequest);
      sub_1001AC1E4(v322, type metadata accessor for Bottle);
      return sub_1001AC1E4(v308, type metadata accessor for Peer);
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v112 = sub_100216774();
    sub_100002648(v112, qword_10029D160);
    v113 = sub_100216754();
    v114 = sub_100216C54();
    v115 = os_log_type_enabled(v113, v114);
    v116 = v308;
    if (v115)
    {
      v117 = swift_slowAlloc();
      *v117 = 0;
      _os_log_impl(&_mh_execute_header, v113, v114, "Unable to create new peer stable info for joining", v117, 2u);
    }

    sub_1000561D0();
    v118 = swift_allocError();
    *v119 = xmmword_10021DC20;
    *(v119 + 16) = 13;
    v329(0, 0, _swiftEmptyArrayStorage, 0, v118);

    return sub_1001AC1E4(v116, type metadata accessor for Peer);
  }
}

uint64_t sub_100168E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v97 = a8;
  v95 = a6;
  v96 = a7;
  v94 = a5;
  v91 = a4;
  v90 = a3;
  v89 = a2;
  v9 = sub_10001148C(&qword_10029D770, &qword_10021E860);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8, v11);
  v101 = &v89 - v12;
  v13 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  __chkstk_darwin(v13, v15);
  v98 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_10001148C(&unk_10029D880, &qword_10021E830);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v21 = &v89 - v20;
  v93 = type metadata accessor for Bottle(0);
  v92 = *(v93 - 8);
  v22 = *(v92 + 64);
  __chkstk_darwin(v93, v23);
  v25 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_10001148C(&unk_10029D7A0, &qword_10021E858);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8, v28);
  v30 = &v89 - v29;
  v31 = type metadata accessor for Peer(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31, v34);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *(type metadata accessor for JoinWithVoucherRequest(0) + 20);
  v38 = *(a1 + v37);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v40 = *(a1 + v37);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v41 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v42 = *(v41 + 48);
    v43 = *(v41 + 52);
    swift_allocObject();
    v40 = sub_1000C12E8(v40);
    *(a1 + v37) = v40;
  }

  swift_beginAccess();
  v44 = *(v40 + 24);
  v45 = v90;
  *(v40 + 16) = v89;
  *(v40 + 24) = v45;

  sub_1001AC0A0(v91, v36, type metadata accessor for Peer);
  v46 = *(a1 + v37);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v48 = *(a1 + v37);
  if ((v47 & 1) == 0)
  {
    v49 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v50 = *(v49 + 48);
    v51 = *(v49 + 52);
    swift_allocObject();
    v48 = sub_1000C12E8(v48);
    *(a1 + v37) = v48;
  }

  sub_1001AC038(v36, v30, type metadata accessor for Peer);
  (*(v32 + 56))(v30, 0, 1, v31);
  v52 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__peer;
  swift_beginAccess();
  sub_1000F9E80(v30, v48 + v52, &unk_10029D7A0, &qword_10021E858);
  swift_endAccess();
  sub_1001AC0A0(v94, v25, type metadata accessor for Bottle);
  v53 = *(a1 + v37);
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v55 = *(a1 + v37);
  if ((v54 & 1) == 0)
  {
    v56 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    swift_allocObject();
    v55 = sub_1000C12E8(v55);
    *(a1 + v37) = v55;
  }

  v59 = v100;
  sub_1001AC038(v25, v21, type metadata accessor for Bottle);
  (*(v92 + 56))(v21, 0, 1, v93);
  v60 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__bottle;
  swift_beginAccess();
  sub_1000F9E80(v21, v55 + v60, &unk_10029D880, &qword_10021E830);
  swift_endAccess();
  v61 = *(a1 + v37);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  v63 = *(a1 + v37);
  if ((v62 & 1) == 0)
  {
    v64 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v65 = *(v64 + 48);
    v66 = *(v64 + 52);
    swift_allocObject();
    v63 = sub_1000C12E8(v63);
    *(a1 + v37) = v63;
  }

  v67 = v98;
  v68 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__tlkShares;
  swift_beginAccess();
  v69 = *(v63 + v68);
  *(v63 + v68) = v95;

  v70 = *(a1 + v37);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = *(a1 + v37);
  if ((v71 & 1) == 0)
  {
    v73 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v74 = *(v73 + 48);
    v75 = *(v73 + 52);
    swift_allocObject();
    v72 = sub_1000C12E8(v72);
    *(a1 + v37) = v72;
  }

  v76 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__viewKeys;
  swift_beginAccess();
  v77 = *(v72 + v76);
  *(v72 + v76) = v96;

  __chkstk_darwin(v78, v79);
  *(&v89 - 2) = v97;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  sub_100216654();
  v80 = *(a1 + v37);
  v81 = swift_isUniquelyReferenced_nonNull_native();
  v82 = *(a1 + v37);
  if ((v81 & 1) == 0)
  {
    v83 = type metadata accessor for JoinWithVoucherRequest._StorageClass(0);
    v84 = *(v83 + 48);
    v85 = *(v83 + 52);
    swift_allocObject();
    v82 = sub_1000C12E8(v82);
    *(a1 + v37) = v82;
  }

  v86 = v101;
  sub_1001AC038(v67, v101, type metadata accessor for IdmsTrustedDevicesVersion);
  (*(v99 + 56))(v86, 0, 1, v59);
  v87 = OBJC_IVAR____TtCV18TrustedPeersHelper22JoinWithVoucherRequestP33_34B9299B76A248B7A76BCBE38D1FA2CF13_StorageClass__trustedDevicesVersion;
  swift_beginAccess();
  sub_1000F9E80(v86, v82 + v87, &qword_10029D770, &qword_10021E860);
  return swift_endAccess();
}

uint64_t sub_1001695B0(uint64_t a1, char *a2, uint64_t a3, void *a4, void *a5, void (*a6)(void, void, void *, void, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v64 = a8;
  v65 = a2;
  v68 = a6;
  v69 = a7;
  v66 = a4;
  v67 = a5;
  v62 = a3;
  v10 = type metadata accessor for Peer(0);
  v63 = *(v10 - 8);
  v11 = *(v63 + 64);
  __chkstk_darwin(v10 - 8, v12);
  v13 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for JoinWithVoucherResponse(0);
  v61 = *(v14 - 8);
  v15 = *(v61 + 64);
  v17 = __chkstk_darwin(v14 - 8, v16);
  v18 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v56 - v20;
  v22 = sub_10001148C(&qword_1002984F0, &unk_10021DF60);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22, v24);
  v26 = (&v56 - v25);
  sub_100019C6C(a1, &v56 - v25, &qword_1002984F0, &unk_10021DF60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = v68;
    v28 = *v26;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v29 = sub_100216774();
    sub_100002648(v29, qword_10029D160);
    swift_errorRetain();
    v30 = sub_100216754();
    v31 = sub_100216C74();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136446210;
      aBlock[6] = v28;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v34 = sub_100216994();
      v36 = sub_100005FB0(v34, v35, aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "preapprovedJoin failed: %{public}s", v32, 0xCu);
      sub_100006128(v33);
    }

    swift_errorRetain();
    v27(0, 0, _swiftEmptyArrayStorage, 0, v28);
  }

  else
  {
    v57 = type metadata accessor for JoinWithVoucherResponse;
    v58 = a9;
    v59 = v21;
    sub_1001AC038(v26, v21, type metadata accessor for JoinWithVoucherResponse);
    v38 = v65;
    v60 = *&v65[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    sub_1001AC0A0(v62, &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Peer);
    sub_1001AC0A0(v21, v18, type metadata accessor for JoinWithVoucherResponse);
    v39 = (*(v63 + 80) + 24) & ~*(v63 + 80);
    v40 = (v11 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
    v42 = (*(v61 + 80) + v41 + 8) & ~*(v61 + 80);
    v43 = (v15 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = swift_allocObject();
    *(v44 + 16) = v38;
    sub_1001AC038(v13, v44 + v39, type metadata accessor for Peer);
    v45 = v66;
    *(v44 + v40) = v66;
    v46 = v67;
    *(v44 + v41) = v67;
    sub_1001AC038(v18, v44 + v42, v57);
    v47 = (v44 + v43);
    v48 = v69;
    *v47 = v68;
    v47[1] = v48;
    v49 = (v44 + ((v43 + 23) & 0xFFFFFFFFFFFFFFF8));
    v50 = v58;
    *v49 = v64;
    v49[1] = v50;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_1001A9DE4;
    *(v51 + 24) = v44;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v51;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283170;
    v52 = _Block_copy(aBlock);
    v53 = v38;
    v54 = v45;
    v55 = v46;

    [v60 performBlockAndWait:v52];
    _Block_release(v52);
    sub_1001AC1E4(v59, type metadata accessor for JoinWithVoucherResponse);
    LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

    if (v52)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_100169B94(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, void (*a6)(uint64_t, id, void *, id, void), uint64_t a7, uint64_t a8, void *a9)
{
  v88 = a8;
  v98 = a7;
  v99 = a6;
  v92 = a5;
  v96 = a3;
  v97 = a4;
  v104 = sub_100216424();
  v87 = *(v104 - 8);
  v11 = *(v87 + 64);
  v13 = __chkstk_darwin(v104, v12);
  v103 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13, v15);
  v102 = &v87 - v16;
  v17 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8, v19);
  v90 = &v87 - v20;
  v89 = type metadata accessor for Changes(0);
  v100 = *(v89 - 8);
  v21 = v100[8];
  __chkstk_darwin(v89, v22);
  v91 = (&v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v25 = *(*(v24 - 8) + 64);
  v27 = __chkstk_darwin(v24 - 8, v26);
  v29 = &v87 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27, v30);
  v32 = &v87 - v31;
  v33 = type metadata accessor for SignedPeerStableInfo(0);
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  v37 = __chkstk_darwin(v33, v36);
  v39 = &v87 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37, v40);
  v42 = &v87 - v41;
  v101 = a1;
  v94 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v43 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v44 = *(type metadata accessor for Peer(0) + 32);
  v95 = a2;
  v93 = v44;
  sub_100019C6C(a2 + v44, v32, &qword_1002985A8, &unk_100226650);
  v45 = *(v34 + 48);
  if (v45(v32, 1, v33) == 1)
  {
    *v42 = xmmword_10021D470;
    *(v42 + 1) = xmmword_10021D470;
    v46 = *(v33 + 24);
    v47 = v43;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v45(v32, 1, v33) != 1)
    {
      sub_1000114D4(v32, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v32, v42, type metadata accessor for SignedPeerStableInfo);
    v48 = v43;
  }

  v49 = *v42;
  v50 = *(v42 + 1);
  sub_100012558(*v42, v50);
  sub_1001AC1E4(v42, type metadata accessor for SignedPeerStableInfo);
  isa = sub_100216204().super.isa;
  sub_100002BF0(v49, v50);
  [v43 setEgoPeerStableInfo:isa];

  v52 = *(v101 + v94);
  sub_100019C6C(v95 + v93, v29, &qword_1002985A8, &unk_100226650);
  if (v45(v29, 1, v33) == 1)
  {
    *v39 = xmmword_10021D470;
    *(v39 + 1) = xmmword_10021D470;
    v53 = *(v33 + 24);
    v54 = v52;
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    v55 = v45(v29, 1, v33);
    v56 = v100;
    if (v55 != 1)
    {
      sub_1000114D4(v29, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    sub_1001AC038(v29, v39, type metadata accessor for SignedPeerStableInfo);
    v57 = v52;
    v56 = v100;
  }

  v58 = *(v39 + 2);
  v59 = *(v39 + 3);
  sub_100012558(v58, v59);
  sub_1001AC1E4(v39, type metadata accessor for SignedPeerStableInfo);
  v60 = sub_100216204().super.isa;
  sub_100002BF0(v58, v59);
  [v52 setEgoPeerStableInfoSig:v60];

  v61 = [v96 modelID];
  LODWORD(v60) = sub_100216974();
  LODWORD(v58) = v62;

  v63 = sub_100151404(v60, v58, v97);

  v64 = type metadata accessor for JoinWithVoucherResponse(0);
  v65 = v92;
  v66 = v90;
  sub_100019C6C(v92 + *(v64 + 24), v90, &unk_10029D750, &qword_10021E850);
  v67 = v56[6];
  v68 = v89;
  if (v67(v66, 1, v89) == 1)
  {
    v69 = v91;
    *v91 = 0;
    v69[1] = 0xE000000000000000;
    v69[2] = _swiftEmptyArrayStorage;
    *(v69 + 3) = xmmword_10021D470;
    *(v69 + 5) = xmmword_10021D470;
    *(v69 + 56) = 0;
    v70 = v69 + *(v68 + 36);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v67(v66, 1, v68) != 1)
    {
      sub_1000114D4(v66, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    v69 = v91;
    sub_1001AC038(v66, v91, type metadata accessor for Changes);
  }

  sub_100174C2C(v69, 0);
  sub_1001AC1E4(v69, type metadata accessor for Changes);
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v96 = a9;
  v71 = sub_100216774();
  sub_100002648(v71, qword_10029D160);
  v72 = sub_100216754();
  v73 = sub_100216C54();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "preapprovedJoin succeeded", v74, 2u);
  }

  v97 = v63;

  v75 = *v65;
  v105 = _swiftEmptyArrayStorage;
  v76 = *(v75 + 16);
  if (v76)
  {
    v101 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v77 = *(v87 + 16);
    v78 = v75 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v79 = *(v87 + 72);
    v80 = (v87 + 8);
    v100 = _swiftEmptyArrayStorage;
    do
    {
      v81 = v102;
      v82 = v104;
      v77(v102, v78, v104);
      v77(v103, v81, v82);
      v83 = sub_100216D94();
      (*v80)(v81, v82);
      if (v83)
      {
        sub_100216B04();
        if (*((v105 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v105 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v84 = *((v105 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v100 = v105;
      }

      v78 += v79;
      --v76;
    }

    while (v76);
  }

  else
  {
    v100 = _swiftEmptyArrayStorage;
  }

  v85 = v97;
  v86 = v97;
  v99(v88, v96, v100, v85, 0);
}

uint64_t sub_10016A61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void))
{
  if (a3)
  {
    v9 = sub_100216C74();
  }

  else
  {
    v9 = sub_100216C54();
  }

  v10 = v9;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v11 = sub_100216774();
  sub_100002648(v11, qword_10029D160);
  swift_errorRetain();
  v12 = sub_100216754();

  if (os_log_type_enabled(v12, v10))
  {
    v18 = a5;
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136446210;
    if (a3)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v20._countAndFlagsBits = sub_100216994();
      sub_100216A14(v20);

      v15 = 0x203A726F727265;
    }

    else
    {
      v15 = 0x73736563637573;
    }

    v16 = sub_100005FB0(v15, 0xE700000000000000, &v19);

    *(v13 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v12, v10, "update complete: %{public}s", v13, 0xCu);
    sub_100006128(v14);

    a5 = v18;
  }

  else
  {
  }

  sub_10010EEEC(0xD0000000000000A1, 0x800000010023C560);
  return a5(a1, a2, a3);
}

uint64_t sub_10016A864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "setPreapprovedKeys complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD00000000000001BLL, 0x800000010023C540);
  return a4(a1, a2);
}

uint64_t sub_10016AAA4(uint64_t a1, char *a2, void (*a3)(void, void), uint64_t a4)
{
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);

  v9 = sub_100216754();
  v10 = sub_100216C54();

  if (os_log_type_enabled(v9, v10))
  {
    v31 = a4;
    v11 = a3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v32[0] = v13;
    *v12 = 136446210;
    v14 = sub_100216B34();
    v16 = sub_100005FB0(v14, v15, v32);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v9, v10, "setPreapprovedKeys: %{public}s", v12, 0xCu);
    sub_100006128(v13);

    a3 = v11;
    a4 = v31;
  }

  v17 = [*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v17)
  {
    v18 = v17;
    v19 = sub_100216974();
    v21 = v20;

    strcpy(v32, "signing-key ");
    BYTE5(v32[1]) = 0;
    HIWORD(v32[1]) = -5120;
    v34._countAndFlagsBits = v19;
    v34._object = v21;
    sub_100216A14(v34);
    v22 = v32[0];
    v23 = v32[1];

    v24 = a2;

    sub_10019A9F0(v22, v23, a3, a4, v24, v19, v21, a1);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v26 = sub_100216754();
    v27 = sub_100216C54();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "setPreapprovedKeys: No identity.", v28, 2u);
    }

    sub_1000561D0();
    v29 = swift_allocError();
    *v30 = xmmword_10021DA90;
    *(v30 + 16) = 13;
    a3(0, v29);
  }
}

void sub_10016ADF8(char *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, uint64_t), uint64_t a7)
{
  v93 = a6;
  v94 = a7;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v11 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v12);
  v95 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v15 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v96 = a2;
  v92 = a3;
  v16 = sub_100216964();
  v17.super.isa = sub_100216B14().super.isa;
  v18 = a1;
  v19 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] machines];
  v20 = _swiftEmptySetSingleton;
  if (v19)
  {
    v21 = v19;
    *&v98[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (*&v98[0])
    {
      v20 = *&v98[0];
    }
  }

  sub_100108644(v20);

  v22 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;

  v24 = [v22 initWithEntries:isa];

  *&v98[0] = 0;
  v25 = [v15 calculateDynamicInfoForPeerWithID:v16 addingPeerIDs:0 removingPeerIDs:0 preapprovedKeys:v17.super.isa signingKeyPair:a5 currentMachineIDs:v24 error:v98];

  v26 = *&v98[0];
  if (v25)
  {
    v27 = qword_100297520;
    v28 = v25;
    v29 = v26;
    if (v27 != -1)
    {
      swift_once();
    }

    v30 = sub_100216774();
    sub_100002648(v30, qword_10029D160);
    v31 = sub_100216754();
    v32 = sub_100216C54();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 138543362;
      *(v33 + 4) = v28;
      *v34 = v25;
      v35 = v28;
      _os_log_impl(&_mh_execute_header, v31, v32, "setPreapprovedKeys: produced a dynamicInfo: %{public}@", v33, 0xCu);
      sub_1000114D4(v34, &qword_10029D580, &unk_10021CCC0);
    }

    v90 = v18;
    v36 = *&v18[v14];
    v37 = v92;
    v38 = sub_100216964();
    *&v98[0] = 0;
    v39 = [v36 peerWithID:v38 error:v98];

    if (*&v98[0])
    {
      v40 = *&v98[0];

      swift_willThrow();
      v41 = v40;
      v42 = sub_100216754();
      v43 = sub_100216C74();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        *v44 = 138543362;
        v46 = v41;
        v47 = _swift_stdlib_bridgeErrorToNSError();
        *(v44 + 4) = v47;
        *v45 = v47;
        _os_log_impl(&_mh_execute_header, v42, v43, "setPreapprovedKeys: error getting ego peer from model: %{public}@", v44, 0xCu);
        sub_1000114D4(v45, &qword_10029D580, &unk_10021CCC0);

        v41 = v42;
        v42 = v46;
      }

      v39 = 0;
      goto LABEL_25;
    }

    if (!v39 || (v58 = [v39 dynamicInfo]) == 0)
    {
      v42 = v28;
LABEL_25:

      goto LABEL_26;
    }

    v59 = v58;
    sub_10000200C(0, &qword_10029D858, TPPeerDynamicInfo_ptr);
    v60 = sub_100216DC4();

    if ((v60 & 1) == 0)
    {
LABEL_26:
      v89 = v39;
      v65 = v28;

      v66 = sub_100216754();
      v67 = sub_100216C54();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = v65;
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v98[0] = v71;
        *v68 = 136446466;
        v72 = v96;
        *(v68 + 4) = sub_100005FB0(v96, v37, v98);
        *(v68 + 12) = 2114;
        *(v68 + 14) = v69;
        *v70 = v25;
        v73 = v69;
        _os_log_impl(&_mh_execute_header, v66, v67, "setPreapprovedKeys: attempting updateTrust for %{public}s with: %{public}@", v68, 0x16u);
        sub_1000114D4(v70, &qword_10029D580, &unk_10021CCC0);
        v65 = v69;

        sub_100006128(v71);
      }

      else
      {

        v72 = v96;
      }

      __chkstk_darwin(v74, v75);
      v76 = v90;
      *(&v89 - 4) = v90;
      *(&v89 - 3) = v72;
      v87 = v37;
      v88 = v65;
      sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
      sub_100216654();
      v77 = swift_allocObject();
      v78 = v94;
      *(v77 + 16) = v93;
      *(v77 + 24) = v78;
      v79 = *&v76[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
      v80 = *&v76[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
      sub_100006484(&v76[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v79);
      v81 = swift_allocObject();
      *(v81 + 16) = v76;
      *(v81 + 24) = sub_1001A9BC0;
      *(v81 + 32) = v77;
      *(v81 + 40) = xmmword_1002260B0;
      *(v81 + 56) = 0u;
      *(v81 + 72) = 0u;
      *(v81 + 88) = 0u;
      *(v81 + 104) = 0u;
      *(v81 + 120) = 0u;
      *(v81 + 129) = 0u;
      v82 = *(v80 + 16);
      v83 = v65;
      v84 = *(v82 + 32);

      v85 = v76;

      v86 = v95;
      v84(v95, sub_1001A9BC8, v81, v79, v82);

      sub_1001AC1E4(v86, type metadata accessor for UpdateTrustRequest);
      return;
    }

    v61 = sub_100216754();
    v62 = sub_100216C54();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&_mh_execute_header, v61, v62, "setPreapprovedKeys: no change; nothing to do.", v63, 2u);
    }

    v98[0] = xmmword_1002260B0;
    memset(&v98[1], 0, 80);
    v99 = 0;
    v64 = swift_allocObject();
    *(v64 + 16) = v93;
    *(v64 + 24) = v94;

    sub_100170394(v98, 0, sub_1001A9BCC, v64);
  }

  else
  {
    v48 = *&v98[0];
    v49 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v50 = sub_100216774();
    sub_100002648(v50, qword_10029D160);
    swift_errorRetain();
    v51 = sub_100216754();
    v52 = sub_100216C74();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      *&v98[0] = v54;
      *v53 = 136446210;
      v97 = v49;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v55 = sub_100216994();
      v57 = sub_100005FB0(v55, v56, v98);

      *(v53 + 4) = v57;
      _os_log_impl(&_mh_execute_header, v51, v52, "setPreapprovedKeys: couldn't calculate dynamic info: %{public}s", v53, 0xCu);
      sub_100006128(v54);
    }

    swift_errorRetain();
    v93(0, v49);
  }
}

uint64_t sub_10016B8F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v43 = a3;
  v44 = a5;
  v8 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  __chkstk_darwin(v8, v10);
  v46 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignedPeerDynamicInfo(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a2;
  v18 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v18)
  {
    v19 = v18;
    v20 = sub_100216974();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  v23 = a1[1];

  *a1 = v20;
  a1[1] = v22;
  v24 = a1[3];

  a1[2] = v43;
  a1[3] = a4;
  *v17 = xmmword_10021D470;
  *(v17 + 1) = xmmword_10021D470;
  v25 = &v17[*(v12 + 24)];
  _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
  v26 = v44;
  v27 = [v44 data];
  v28 = sub_100216224();
  v30 = v29;

  sub_100002BF0(*v17, *(v17 + 1));
  *v17 = v28;
  *(v17 + 1) = v30;
  v31 = [v26 sig];
  v32 = sub_100216224();
  v34 = v33;

  sub_100002BF0(*(v17 + 2), *(v17 + 3));
  *(v17 + 2) = v32;
  *(v17 + 3) = v34;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v36 = *(updated + 40);
  sub_1000114D4(a1 + v36, &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v17, a1 + v36, type metadata accessor for SignedPeerDynamicInfo);
  v37 = (*(v13 + 56))(a1 + v36, 0, 1, v12);
  __chkstk_darwin(v37, v38);
  *(&v42 - 2) = v45;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  v39 = v46;
  sub_100216654();
  v40 = *(updated + 44);
  sub_1000114D4(a1 + v40, &qword_10029D770, &qword_10021E860);
  sub_1001AC038(v39, a1 + v40, type metadata accessor for IdmsTrustedDevicesVersion);
  return (*(v47 + 56))(a1 + v40, 0, 1, v8);
}

uint64_t sub_10016BCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_10029D160);
    swift_errorRetain();
    v8 = sub_100216754();
    v9 = sub_100216C74();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136446210;
      swift_errorRetain();
      sub_10001148C(&qword_100297E80, &unk_1002265A0);
      v12 = sub_100216994();
      v14 = sub_100005FB0(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "setPreapprovedKeys: failed: %{public}s", v10, 0xCu);
      sub_100006128(v11);
    }

    v15 = a1;
    v16 = a3;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v17 = sub_100216774();
    sub_100002648(v17, qword_10029D160);
    v18 = sub_100216754();
    v19 = sub_100216C54();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "setPreapprovedKeys: updateTrust succeeded", v20, 2u);
    }

    v15 = a1;
    v16 = 0;
  }

  return a4(v15, v16);
}

uint64_t sub_10016BF00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Container.SemaphoreWrapper();
  swift_allocObject();
  v9 = v4;
  v10 = sub_10019C8E0(v9, 0xD000000000000025, 0x800000010023CFC0);

  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a3;
  v11[4] = a4;
  v12 = qword_100297520;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = sub_100216774();
  sub_100002648(v13, qword_10029D160);

  v14 = sub_100216754();
  v15 = sub_100216C54();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock[0] = v26;
    *v16 = 136446210;
    sub_10000200C(0, &qword_10029D938, off_100275018);
    v17 = sub_100216B34();
    v19 = sub_100005FB0(v17, v18, aBlock);

    *(v16 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Uploading some new TLKs: %{public}s", v16, 0xCu);
    sub_100006128(v26);
  }

  v20 = *&v9[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v21 = swift_allocObject();
  v21[2] = v9;
  v21[3] = a1;
  v21[4] = a2;
  v21[5] = sub_1001AB9C4;
  v21[6] = v11;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1001AB9D0;
  *(v22 + 24) = v21;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100284EF8;
  v23 = _Block_copy(aBlock);
  v24 = v9;

  [v20 performBlockAndWait:v23];

  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10016C290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, void))
{
  if (a2)
  {
    v7 = sub_100216C74();
  }

  else
  {
    v7 = sub_100216C54();
  }

  v8 = v7;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v9 = sub_100216774();
  sub_100002648(v9, qword_10029D160);
  swift_errorRetain();
  v10 = sub_100216754();

  if (os_log_type_enabled(v10, v8))
  {
    v16 = a4;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    if (a2)
    {
      swift_errorRetain();
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v18._countAndFlagsBits = sub_100216994();
      sub_100216A14(v18);

      v13 = 0x203A726F727265;
    }

    else
    {
      v13 = 0x73736563637573;
    }

    v14 = sub_100005FB0(v13, 0xE700000000000000, &v17);

    *(v11 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v10, v8, "updateTLKs complete: %{public}s", v11, 0xCu);
    sub_100006128(v12);

    a4 = v16;
  }

  else
  {
  }

  sub_10010EEEC(0xD000000000000025, 0x800000010023CFC0);
  return a4(a1, a2);
}

uint64_t sub_10016C4D0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v15 = *(*(v14 - 8) + 64);
  v17 = __chkstk_darwin(v14, v16);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_tlkSharesBatch);
  v22 = a2 + v21;
  if (__OFADD__(a2, v21))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v50 = a5;
  v44 = a4;
  v45 = a7;
  v47 = v20;
  v48 = v18;
  v49 = v17;
  v23 = *(a4 + 16);
  if (v23 >= v22)
  {
    a4 = a2 + v21;
  }

  else
  {
    a4 = *(a4 + 16);
  }

  v46 = a3;
  v24 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v24)
  {
    v25 = v24;
    v26 = sub_100216974();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = a1[1];

  *a1 = v26;
  a1[1] = v28;
  v30 = a1[3];

  a1[2] = v50;
  a1[3] = a6;
  if (a4 < a2)
  {
    goto LABEL_16;
  }

  if (v23 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 < 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v22 < 0)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v23 != a4 - a2)
  {
LABEL_20:
    v41 = *(type metadata accessor for TLKShare(0) - 8);
    sub_100187584(v44, v44 + ((*(v41 + 80) + 32) & ~*(v41 + 80)), a2, (2 * a4) | 1);
    v31 = v42;
    goto LABEL_14;
  }

  v31 = v44;

LABEL_14:
  v32 = v45;
  v33 = a1[4];

  a1[4] = v31;
  v34 = a1[5];

  a1[5] = v32;
  __chkstk_darwin(v35, v36);
  *(&v43 - 2) = v46;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  v37 = v47;
  v38 = v49;
  sub_100216654();
  v39 = *(type metadata accessor for UpdateTrustRequest(0) + 44);
  sub_1000114D4(a1 + v39, &qword_10029D770, &qword_10021E860);
  sub_1001AC038(v37, a1 + v39, type metadata accessor for IdmsTrustedDevicesVersion);
  return (*(v48 + 56))(a1 + v39, 0, 1, v38);
}

uint64_t sub_10016C814(uint64_t a1, char *a2, void (*a3)(uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a8;
  v54 = a7;
  v52 = a6;
  v56 = a5;
  v57 = a4;
  v55 = a3;
  updated = type metadata accessor for UpdateTrustResponse(0);
  v13 = *(updated - 8);
  v14 = *(v13 + 64);
  v16 = __chkstk_darwin(updated - 8, v15);
  __chkstk_darwin(v16, v17);
  v19 = &v45 - v18;
  v20 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20, v22);
  v24 = (&v45 - v23);
  sub_100019C6C(a1, &v45 - v23, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v25 = *v24;
    swift_errorRetain();
    v55(v25, 1);
  }

  else
  {
    v48 = a10 + 16;
    v49 = a9;
    v46 = type metadata accessor for UpdateTrustResponse;
    sub_1001AC038(v24, v19, type metadata accessor for UpdateTrustResponse);
    v27 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v47 = a2;
    v51 = v27;
    sub_1001AC0A0(v19, &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for UpdateTrustResponse);
    v28 = (*(v13 + 80) + 24) & ~*(v13 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = (v29 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 23) & 0xFFFFFFFFFFFFFFF8;
    v50 = v19;
    v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
    v34 = v53;
    v35 = swift_allocObject();
    *(v35 + 16) = a2;
    sub_1001AC038(v45, v35 + v28, v46);
    v36 = (v35 + v29);
    v37 = v57;
    *v36 = v55;
    v36[1] = v37;
    *(v35 + v30) = v56;
    v38 = (v35 + v31);
    v39 = v54;
    *v38 = v52;
    v38[1] = v39;
    *(v35 + v32) = v34;
    v40 = v48;
    *(v35 + v33) = v49;
    *(v35 + ((v33 + 15) & 0xFFFFFFFFFFFFFFF8)) = v40;
    v41 = swift_allocObject();
    *(v41 + 16) = sub_1001AAAC0;
    *(v41 + 24) = v35;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v41;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100283F80;
    v42 = _Block_copy(aBlock);
    v43 = v47;

    [v51 performBlockAndWait:v42];
    _Block_release(v42);
    sub_1001AC1E4(v50, type metadata accessor for UpdateTrustResponse);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_10016CC18(char *a1, uint64_t *a2, void (*a3)(uint64_t, void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v69 = a7;
  v70 = a8;
  v68 = a6;
  v71 = a5;
  v73 = a3;
  v74 = a4;
  v75 = a1;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v11 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v12);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100216424();
  v76 = *(v14 - 8);
  v15 = *(v76 + 8);
  v17 = __chkstk_darwin(v14, v16);
  v78 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17, v19);
  v21 = &v65 - v20;
  v22 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8, v24);
  v26 = &v65 - v25;
  v27 = type metadata accessor for Changes(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27, v30);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for UpdateTrustResponse(0);
  sub_100019C6C(a2 + *(v33 + 24), v26, &unk_10029D750, &qword_10021E850);
  v34 = *(v28 + 48);
  if (v34(v26, 1, v27) == 1)
  {
    *v32 = 0;
    *(v32 + 1) = 0xE000000000000000;
    *(v32 + 2) = &_swiftEmptyArrayStorage;
    *(v32 + 24) = xmmword_10021D470;
    *(v32 + 40) = xmmword_10021D470;
    v32[56] = 0;
    v35 = &v32[*(v27 + 36)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v34(v26, 1, v27) != 1)
    {
      sub_1000114D4(v26, &unk_10029D750, &qword_10021E850);
    }
  }

  else
  {
    sub_1001AC038(v26, v32, type metadata accessor for Changes);
  }

  sub_100174C2C(v32, 0);
  v65 = 0;
  v66 = a10;
  sub_1001AC1E4(v32, type metadata accessor for Changes);
  v36 = *a2;
  v80[0] = &_swiftEmptyArrayStorage;
  v37 = *(v36 + 16);
  if (v37)
  {
    v77 = sub_10000200C(0, &qword_100297F68, CKRecord_ptr);
    v38 = *(v76 + 2);
    v39 = v36 + ((v76[80] + 32) & ~v76[80]);
    v40 = *(v76 + 9);
    v41 = (v76 + 8);
    v76 = &_swiftEmptyArrayStorage;
    v38(v21, v39, v14);
    while (1)
    {
      v38(v78, v21, v14);
      v42 = sub_100216D94();
      (*v41)(v21, v14);
      if (v42)
      {
        sub_100216B04();
        if (*((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v76 = *((v80[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_100216B44();
        }

        sub_100216B64();
        v76 = v80[0];
      }

      v39 += v40;
      if (!--v37)
      {
        break;
      }

      v38(v21, v39, v14);
    }
  }

  else
  {
    v76 = &_swiftEmptyArrayStorage;
  }

  v80[0] = v71;

  sub_10011019C(v76);
  v43 = v80[0];
  v44 = v66;
  swift_beginAccess();
  sub_10007974C(v44, v80);
  v45 = swift_allocObject();
  sub_10007974C(v80, v45 + 16);
  v46 = *(v45 + 48);
  sub_1000023C4(v45 + 16, *(v45 + 40));
  v47 = sub_100216E04();
  if (v79)
  {
    v73(v43, 0);
  }

  else
  {
    v76 = a9;
    __chkstk_darwin(v47, v48);
    v49 = v75;
    *(&v65 - 6) = v50;
    *(&v65 - 5) = v49;
    v51 = v70;
    v52 = v68;
    *(&v65 - 4) = v70;
    *(&v65 - 3) = v52;
    v71 = v43;
    v53 = v69;
    *(&v65 - 2) = v69;
    *(&v65 - 1) = v54;
    sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
    sub_100216654();
    v55 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
    v78 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
    v77 = sub_100006484(&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v78);
    v56 = swift_allocObject();
    v57 = v73;
    v58 = v74;
    v56[2] = v49;
    v56[3] = v57;
    v59 = v71;
    v56[4] = v58;
    v56[5] = v59;
    v56[6] = v52;
    v56[7] = v53;
    v60 = v76;
    v56[8] = v51;
    v56[9] = v60;
    v56[10] = v45;
    v61 = *(v55 + 16);
    v73 = *(v61 + 32);
    v62 = v49;

    v63 = v72;
    (v73)(v72, sub_1001ACE30, v56, v78, v61);

    sub_1001AC1E4(v63, type metadata accessor for UpdateTrustRequest);
  }

  sub_100006128(v80);
}

uint64_t sub_10016D488(uint64_t a1, uint64_t a2, void (*a3)(void, uint64_t), uint64_t a4)
{
  v9 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v10 = [*&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100216974();
    v14 = v13;

    v15 = [*&v4[v9] egoPeerPermanentInfo];
    if (v15)
    {
      v60 = a2;
      v16 = v15;
      v17 = sub_100216224();
      v19 = v18;

      v20 = [*&v4[v9] egoPeerPermanentInfoSig];
      if (v20)
      {
        v57 = a1;
        v58 = a3;
        v59 = a4;
        v21 = v20;
        v22 = v12;
        v23 = sub_100216224();
        v25 = v24;

        v26 = objc_allocWithZone(TPECPublicKeyFactory);

        sub_100012558(v17, v19);
        sub_100012558(v23, v25);
        v27 = [v26 init];
        v53 = v22;
        v54 = sub_100216964();

        isa = sub_100216204().super.isa;
        v29 = sub_100216204().super.isa;
        v30 = [objc_opt_self() permanentInfoWithPeerID:v54 data:isa sig:v29 keyFactory:v27];

        v55 = v23;
        v56 = v25;
        sub_100002BF0(v23, v25);

        sub_100002BF0(v17, v19);
        if (v30)
        {
          v31 = swift_allocObject();
          v31[2] = v58;
          v31[3] = v59;
          v31[4] = v4;
          v31[5] = v53;
          v31[6] = v14;
          v31[7] = v57;
          v31[8] = v60;
          v31[9] = v30;
          strcpy(v61, "signing-key ");
          BYTE5(v61[1]) = 0;
          HIWORD(v61[1]) = -5120;

          v32 = v4;

          v33 = v30;
          v63._countAndFlagsBits = v53;
          v63._object = v14;
          sub_100216A14(v63);

          sub_100198E8C(v61[0], v61[1], sub_1001AB970, v31, v53, v14);

          swift_bridgeObjectRelease_n();
          sub_100002BF0(v55, v25);
          v34 = v17;
          v35 = v19;
        }

        else
        {

          if (qword_100297520 != -1)
          {
            swift_once();
          }

          v43 = sub_100216774();
          sub_100002648(v43, qword_10029D160);

          v44 = sub_100216754();
          v45 = sub_100216C54();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v61[0] = v47;
            *v46 = 136446210;
            sub_10000200C(0, &qword_10029D938, off_100275018);
            v48 = sub_100216B34();
            v50 = sub_100005FB0(v48, v49, v61);

            *(v46 + 4) = v50;
            _os_log_impl(&_mh_execute_header, v44, v45, "Couldn't parse self identity: %{public}s", v46, 0xCu);
            sub_100006128(v47);
          }

          sub_1000561D0();
          v51 = swift_allocError();
          *v52 = xmmword_10021DA80;
          *(v52 + 16) = 13;
          v58(0, v51);

          sub_100002BF0(v23, v56);
          v34 = v17;
          v35 = v19;
        }

        return sub_100002BF0(v34, v35);
      }

      sub_100002BF0(v17, v19);
    }
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v36 = sub_100216774();
  sub_100002648(v36, qword_10029D160);
  v37 = sub_100216754();
  v38 = sub_100216C54();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&_mh_execute_header, v37, v38, "Have no self identity, can't make tlk shares", v39, 2u);
  }

  sub_1000561D0();
  v40 = swift_allocError();
  *v41 = xmmword_10021DA90;
  *(v41 + 16) = 13;
  a3(0, v40);
}

uint64_t sub_10016DA84(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  if (a1)
  {
    v32 = *&a5[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    v16 = a5;
    v17 = swift_allocObject();
    v17[2] = v16;
    v17[3] = a6;
    v17[4] = a7;
    v17[5] = a3;
    v17[6] = a4;
    v17[7] = a8;
    v17[8] = a9;
    v17[9] = a1;
    v17[10] = a10;
    a3 = swift_allocObject();
    *(a3 + 16) = sub_1001ACBC4;
    *(a3 + 24) = v17;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284020;
    v18 = _Block_copy(aBlock);
    v19 = a1;
    v20 = v16;

    v21 = a10;

    [v32 performBlockAndWait:v18];

    _Block_release(v18);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if ((v16 & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v23 = a2;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v24 = sub_100216774();
  sub_100002648(v24, qword_10029D160);
  swift_errorRetain();
  v25 = sub_100216754();
  v26 = sub_100216C74();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    aBlock[0] = v28;
    *v27 = 136446210;
    aBlock[6] = v23;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v29 = sub_100216994();
    v31 = sub_100005FB0(v29, v30, aBlock);

    *(v27 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v25, v26, "Don't have my own peer keys; can't upload new TLKs: %{public}s", v27, 0xCu);
    sub_100006128(v28);
  }

  return (a3)(0, v23);
}

void sub_10016DDC0(char *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, unint64_t), uint64_t a5, unint64_t a6, unint64_t a7, void *a8, void *a9)
{
  v83 = a8;
  v84 = a4;
  v85 = a5;
  updated = type metadata accessor for UpdateTrustRequest(0);
  v15 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v16);
  v18 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v20 = sub_100216964();
  v88[0] = 0;
  v21 = [v19 getDynamicInfoForPeerWithID:v20 error:v88];

  v22 = v88[0];
  if (v88[0])
  {
    v23 = v88[0];

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v24 = sub_100216774();
    sub_100002648(v24, qword_10029D160);
    v25 = v23;
    v26 = sub_100216754();
    v27 = sub_100216C54();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138543362;
      v30 = v25;
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&_mh_execute_header, v26, v27, "Unable to fetch dynamic info for self: %{public}@", v28, 0xCu);
      sub_1000114D4(v29, &qword_10029D580, &unk_10021CCC0);
    }

    v32 = v25;
    v84(0, v22);
  }

  else
  {
    v33 = v83;
    v81 = v18;
    v82 = a1;
    if (v21)
    {
      v34 = v21;
      v35 = [a9 epoch];
      v36 = v85;
      if (v35 < 0)
      {
        __break(1u);
        swift_once();
        v38 = sub_100216774();
        sub_100002648(v38, qword_10029D160);
        swift_errorRetain();
        v39 = sub_100216754();
        v40 = sub_100216C74();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          v88[0] = v42;
          *v41 = 136446210;
          v86 = a6;
          swift_errorRetain();
          sub_10001148C(&unk_10029D560, qword_10021D450);
          v43 = sub_100216994();
          v45 = sub_100005FB0(v43, v44, v88);

          *(v41 + 4) = v45;
          _os_log_impl(&_mh_execute_header, v39, v40, "Unable to process keys before uploading: %{public}s", v41, 0xCu);
          sub_100006128(v42);
        }

        swift_errorRetain();
        v84(0, a6);
      }

      else
      {
        v37 = v82;
        sub_1001551F8(a6, a7, v33, v34, v35);
        v53 = v52;
        v78 = a3;
        v79 = v54;
        v83 = v34;
        v55 = swift_allocObject();
        *(v55 + 16) = v84;
        *(v55 + 24) = v36;
        v80 = v55;
        v56 = *&v37[OBJC_IVAR____TtC18TrustedPeersHelper9Container_tlkSharesBatch];
        if (!v56)
        {
          __break(1u);
        }

        v57 = *(v53 + 16);
        v88[3] = sub_10001148C(&qword_10029D940, qword_1002266B8);
        v88[4] = sub_1001AC36C(&qword_10029D948, &qword_10029D940, qword_1002266B8);
        v58 = swift_allocObject();
        v88[0] = v58;
        *(v58 + 16) = 0;
        *(v58 + 24) = v57;
        *(v58 + 32) = v56;
        *(v58 + 40) = 0;
        *(v58 + 48) = 0;
        *(v58 + 56) = 0;
        v59 = swift_allocObject();
        sub_10007974C(v88, v59 + 16);
        v60 = *(v59 + 48);
        sub_1000023C4(v59 + 16, *(v59 + 40));

        v61 = sub_100216E04();
        if (v87 == 1)
        {

          sub_10016E640(_swiftEmptyArrayStorage, 0, v84);

          v63 = v83;
        }

        else
        {
          __chkstk_darwin(v61, v62);
          v64 = v82;
          *(&v77 - 6) = v65;
          *(&v77 - 5) = v64;
          v77 = v53;
          *(&v77 - 4) = v53;
          *(&v77 - 3) = a2;
          v67 = v78;
          v66 = v79;
          *(&v77 - 2) = v78;
          *(&v77 - 1) = v66;
          sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
          sub_100216654();
          v68 = *&v64[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
          v69 = *&v64[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
          sub_100006484(&v64[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v68);
          v70 = swift_allocObject();
          v70[2] = v64;
          v70[3] = sub_1001AAA98;
          v70[4] = v80;
          v70[5] = _swiftEmptyArrayStorage;
          v70[6] = a2;
          v71 = v77;
          v70[7] = v67;
          v70[8] = v71;
          v70[9] = v66;
          v70[10] = v59;
          v72 = *(v69 + 16);
          v73 = *(v72 + 32);
          v74 = v64;

          v75 = v81;
          v73(v81, sub_1001AAABC, v70, v68, v72);

          v76 = v83;

          sub_1001AC1E4(v75, type metadata accessor for UpdateTrustRequest);
        }

        sub_100006128(v88);
      }
    }

    else
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v46 = sub_100216774();
      sub_100002648(v46, qword_10029D160);
      v47 = sub_100216754();
      v48 = sub_100216C54();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Unable to fetch dynamic info for self", v49, 2u);
      }

      sub_1000561D0();
      v50 = swift_allocError();
      *v51 = xmmword_1002260F0;
      *(v51 + 16) = 13;
      v84(0, v50);
    }
  }
}

uint64_t sub_10016E640(unint64_t a1, char a2, uint64_t (*a3)(unint64_t, unint64_t))
{
  if (a2)
  {
    v5 = 0;
    v6 = a1;
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_10029D160);

    v8 = sub_100216754();
    v9 = sub_100216C54();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134217984;
      if (a1 >> 62)
      {
        v11 = sub_1002170F4();
      }

      else
      {
        v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v10 + 4) = v11;
      sub_1001ABC14(a1, 0);
      _os_log_impl(&_mh_execute_header, v8, v9, "Received %ld CKRecords back", v10, 0xCu);
    }

    else
    {
      sub_1001ABC14(a1, 0);
    }

    v5 = a1;
    v6 = 0;
  }

  return a3(v5, v6);
}

uint64_t sub_10016E7A4(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v5 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (!v5)
  {
    return sub_10016ECB4(0, a2, a3);
  }

  return a2(0);
}

void sub_10016E81C(char a1, char *a2, void (*a3)(void *), uint64_t a4)
{
  if (a1)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v7 = sub_100216774();
    sub_100002648(v7, qword_10029D160);
    v8 = sub_100216754();
    v9 = sub_100216C54();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_7;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "Forcing a full refetch: by request", v10, 2u);
LABEL_6:

LABEL_7:

LABEL_8:
    LOBYTE(v11) = 1;
LABEL_9:
    sub_10016ECB4(v11, a3, a4);
    return;
  }

  v12 = *&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
  v35 = 0;
  v11 = [v12 currentStatePossiblyMissingDataWithError:&v35];
  v13 = v35;
  if (!v35)
  {
    if (!v11)
    {
      goto LABEL_9;
    }

    v25 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    if ([*&a2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] refetchLevel] > 0)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v26 = sub_100216774();
      sub_100002648(v26, qword_10029D160);
      v27 = a2;
      v28 = sub_100216754();
      v29 = sub_100216C54();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134217984;
        *(v30 + 4) = [*&a2[v25] refetchLevel];

        _os_log_impl(&_mh_execute_header, v28, v29, "Model would like a full refetch, but we've done one at this refetch level: %lld", v30, 0xCu);
      }

      else
      {
      }

      LOBYTE(v11) = 0;
      goto LABEL_9;
    }

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v31 = sub_100216774();
    sub_100002648(v31, qword_10029D160);
    v32 = a2;
    v8 = sub_100216754();
    v33 = sub_100216C54();
    if (!os_log_type_enabled(v8, v33))
    {

      goto LABEL_8;
    }

    v34 = swift_slowAlloc();
    *v34 = 134217984;
    *(v34 + 4) = [*&a2[v25] refetchLevel];

    _os_log_impl(&_mh_execute_header, v8, v33, "Forcing a full refetch due to model: last refetch level: %lld", v34, 0xCu);
    goto LABEL_6;
  }

  swift_willThrow();
  v14 = qword_100297520;
  v15 = v13;
  if (v14 != -1)
  {
    swift_once();
  }

  v16 = sub_100216774();
  sub_100002648(v16, qword_10029D160);
  v17 = v15;
  v18 = sub_100216754();
  v19 = sub_100216C74();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138543362;
    v22 = v17;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 4) = v23;
    *v21 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "currentStatePossiblyMissingData error: %{public}@", v20, 0xCu);
    sub_1000114D4(v21, &qword_10029D580, &unk_10021CCC0);
  }

  v24 = v17;
  a3(v13);
}

uint64_t sub_10016ECB4(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  ChangesRequest = type metadata accessor for FetchChangesRequest(0);
  v9 = *(*(ChangesRequest - 8) + 64);
  v11 = __chkstk_darwin(ChangesRequest, v10);
  v13 = &v34[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11, v14);
  v16 = &v34[-v15];
  LODWORD(v17) = a1 & 1;
  v37 = a1;
  v38 = v4;
  sub_1001A13C4(&unk_10029DA40, type metadata accessor for FetchChangesRequest);
  sub_100216654();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  sub_100002648(v18, qword_10029D160);
  sub_1001AC0A0(v16, v13, type metadata accessor for FetchChangesRequest);
  v19 = sub_100216754();
  v20 = sub_100216C54();
  if (os_log_type_enabled(v19, v20))
  {
    v35 = v17;
    v36 = a2;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v39 = v22;
    *v21 = 136446210;
    v23 = *v13;
    v17 = v13[1];
    v24 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v24 = *v13 & 0xFFFFFFFFFFFFLL;
    }

    if (v24)
    {
      v25 = v13[1];
    }

    else
    {
      v17 = 0xE500000000000000;
      v23 = 0x7974706D65;
    }

    sub_1001AC1E4(v13, type metadata accessor for FetchChangesRequest);
    v26 = sub_100005FB0(v23, v17, &v39);

    *(v21 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v19, v20, "Fetching with change token: %{public}s", v21, 0xCu);
    sub_100006128(v22);

    a2 = v36;
    LOBYTE(v17) = v35;
  }

  else
  {

    sub_1001AC1E4(v13, type metadata accessor for FetchChangesRequest);
  }

  v27 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
  v28 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
  sub_100006484(&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v27);
  v29 = swift_allocObject();
  *(v29 + 16) = v4;
  *(v29 + 24) = v17;
  *(v29 + 32) = a2;
  *(v29 + 40) = a3;
  v30 = *(v28 + 16);
  v31 = *(v30 + 56);
  v32 = v4;

  v31(v16, sub_1001AB954, v29, v27, v30);

  return sub_1001AC1E4(v16, type metadata accessor for FetchChangesRequest);
}

uint64_t sub_10016F03C(uint64_t result, char a2, uint64_t a3)
{
  if ((a2 & 1) == 0)
  {
    v3 = result;
    v4 = [*(a3 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
    if (v4)
    {
      v5 = v4;
      v6 = sub_100216974();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0xE000000000000000;
    }

    v9 = v3[1];

    *v3 = v6;
    v3[1] = v8;
  }

  return result;
}

uint64_t sub_10016F0CC(uint64_t a1, int *a2, int a3, void (*a4)(void), uint64_t a5)
{
  v96 = a4;
  v97 = a5;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v5 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v92 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8, v10);
  v12 = &v90 - v11;
  v13 = type metadata accessor for Changes(0);
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  v17 = __chkstk_darwin(v13, v16);
  v91 = (&v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v19);
  v21 = &v90 - v20;
  ChangesResponse = type metadata accessor for FetchChangesResponse(0);
  v23 = *(*(ChangesResponse - 8) + 64);
  __chkstk_darwin(ChangesResponse, v24);
  v26 = &v90 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_10001148C(&qword_1002984C0, &qword_10021DF30);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27, v29);
  v31 = (&v90 - v30);
  sub_100019C6C(v95, &v90 - v30, &qword_1002984C0, &qword_10021DF30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_9:
    sub_1001AC038(v31, v26, type metadata accessor for FetchChangesResponse);
    v46 = *(ChangesResponse + 20);
    sub_100019C6C(&v26[v46], v12, &unk_10029D750, &qword_10021E850);
    v47 = *(v14 + 48);
    v48 = v47(v12, 1, v13);
    v95 = v26;
    if (v48 == 1)
    {
      *v21 = 0;
      *(v21 + 1) = 0xE000000000000000;
      *(v21 + 2) = _swiftEmptyArrayStorage;
      *(v21 + 24) = xmmword_10021D470;
      *(v21 + 40) = xmmword_10021D470;
      v21[56] = 0;
      v49 = &v21[v13[9]];
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v50 = v13;
      v51 = v47(v12, 1, v13);
      v53 = v94;
      if (v51 != 1)
      {
        v51 = sub_1000114D4(v12, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v50 = v13;
      v51 = sub_1001AC038(v12, v21, type metadata accessor for Changes);
      v53 = v94;
    }

    v69 = *&v53[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    __chkstk_darwin(v51, v52);
    *(&v90 - 4) = v21;
    *(&v90 - 3) = v53;
    *(&v90 - 16) = v93 & 1;
    sub_100216D34();
    sub_1001AC1E4(v21, type metadata accessor for Changes);
    v70 = &v95[v46];
    v71 = v95;
    v72 = v92;
    sub_100019C6C(v70, v92, &unk_10029D750, &qword_10021E850);
    if (v47(v72, 1, v50) == 1)
    {
      v73 = v91;
      *v91 = 0;
      v73[1] = 0xE000000000000000;
      v73[2] = _swiftEmptyArrayStorage;
      *(v73 + 3) = xmmword_10021D470;
      *(v73 + 5) = xmmword_10021D470;
      *(v73 + 56) = 0;
      v74 = v73 + v50[9];
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v47(v72, 1, v50) != 1)
      {
        sub_1000114D4(v72, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v73 = v91;
      sub_1001AC038(v72, v91, type metadata accessor for Changes);
    }

    v75 = *(v73 + 56);
    sub_1001AC1E4(v73, type metadata accessor for Changes);
    if (v75)
    {
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v76 = sub_100216774();
      sub_100002648(v76, qword_10029D160);
      v77 = sub_100216754();
      v78 = sub_100216C54();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&_mh_execute_header, v77, v78, "persist: More changes indicated. Fetching...", v79, 2u);
      }

      v80 = swift_allocObject();
      *(v80 + 16) = 0;
      v81 = v96;
      v71 = v97;
      *(v80 + 24) = v53;
      *(v80 + 32) = v81;
      *(v80 + 40) = v71;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_1001ACE7C;
      *(v82 + 24) = v80;
      v102 = sub_1001ACCC0;
      v103 = v82;
      aBlock = _NSConcreteStackBlock;
      v99 = 1107296256;
      v100 = sub_100109050;
      v101 = &unk_100284DB8;
      v83 = _Block_copy(&aBlock);
      v84 = v53;

      [v69 performBlockAndWait:v83];
      _Block_release(v83);
      LOBYTE(v83) = swift_isEscapingClosureAtFileLocation();

      if ((v83 & 1) == 0)
      {
        v85 = v95;
        return sub_1001AC1E4(v85, type metadata accessor for FetchChangesResponse);
      }

      __break(1u);
    }

    else if (qword_100297520 == -1)
    {
LABEL_32:
      v86 = sub_100216774();
      sub_100002648(v86, qword_10029D160);
      v87 = sub_100216754();
      v88 = sub_100216C54();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&_mh_execute_header, v87, v88, "persist: no more changes!", v89, 2u);
      }

      v96(0);
      v85 = v71;
      return sub_1001AC1E4(v85, type metadata accessor for FetchChangesResponse);
    }

    swift_once();
    goto LABEL_32;
  }

  v12 = *v31;
  swift_errorRetain();
  swift_errorRetain();
  v32 = sub_100216144();
  v33 = [v32 isCuttlefishError:1018];

  if (v33)
  {

    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v34 = sub_100216774();
    sub_100002648(v34, qword_10029D160);
    v35 = sub_100216754();
    v36 = sub_100216C54();
    v37 = os_log_type_enabled(v35, v36);
    v13 = v94;
    if (v37)
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "change token is expired; resetting local CK storage", v38, 2u);
    }

    v39 = *(v13 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
    v40 = swift_allocObject();
    v41 = v96;
    v42 = v97;
    v40[2] = v13;
    v40[3] = v41;
    v40[4] = v42;
    v21 = swift_allocObject();
    *(v21 + 2) = sub_1001AB964;
    *(v21 + 3) = v40;
    v102 = sub_1001ACCC0;
    v103 = v21;
    aBlock = _NSConcreteStackBlock;
    v99 = 1107296256;
    v100 = sub_100109050;
    v101 = &unk_100284D40;
    v43 = _Block_copy(&aBlock);
    v31 = v103;
    v44 = v13;

    [v39 performBlockAndWait:v43];

    _Block_release(v43);
    ChangesResponse = swift_isEscapingClosureAtFileLocation();

    if (ChangesResponse)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v54 = sub_100216774();
    sub_100002648(v54, qword_10029D160);
    swift_errorRetain();
    v55 = sub_100216754();
    v56 = sub_100216C54();

    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      aBlock = v58;
      *v57 = 136446210;
      v104 = v12;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v59 = sub_100216994();
      v61 = sub_100005FB0(v59, v60, &aBlock);

      *(v57 + 4) = v61;
      _os_log_impl(&_mh_execute_header, v55, v56, "Fetch error is an unknown error: %{public}s", v57, 0xCu);
      sub_100006128(v58);
    }

    swift_errorRetain();
    v62 = sub_100216754();
    v63 = sub_100216C74();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      aBlock = v65;
      *v64 = 136446210;
      v104 = v12;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v66 = sub_100216994();
      v68 = sub_100005FB0(v66, v67, &aBlock);

      *(v64 + 4) = v68;
      _os_log_impl(&_mh_execute_header, v62, v63, "Could not fetch changes: %{public}s", v64, 0xCu);
      sub_100006128(v65);
    }

    v96(v12);
  }

  return result;
}

uint64_t sub_10016FEB0(char *a1, uint64_t a2, uint64_t a3)
{
  sub_100175FF0();
  v6 = *&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  *(v7 + 40) = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1001ACE7C;
  *(v8 + 24) = v7;
  v12[4] = sub_1001ACCC0;
  v12[5] = v8;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 1107296256;
  v12[2] = sub_100109050;
  v12[3] = &unk_100284E30;
  v9 = _Block_copy(v12);
  v10 = a1;

  [v6 performBlockAndWait:v9];
  _Block_release(v9);
  LOBYTE(a3) = swift_isEscapingClosureAtFileLocation();

  if (a3)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1001701B4(uint64_t a1, void (*a2)(void, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a1)
  {
    return sub_100170394(a5, a6 & 1, a2, a3);
  }

  swift_errorRetain();
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v8 = sub_100216774();
  sub_100002648(v8, qword_10029D160);
  swift_errorRetain();
  v9 = sub_100216754();
  v10 = sub_100216C74();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136446210;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v13 = sub_100216994();
    v15 = sub_100005FB0(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "fetchChangesAndUpdateTrustIfNeeded: fetching failed: %{public}s", v11, 0xCu);
    sub_100006128(v12);
  }

  swift_errorRetain();
  a2(0, 0, a1);
}

uint64_t sub_100170394(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *&v4[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = a3;
  *(v10 + 32) = a4;
  *(v10 + 40) = a2;
  v11 = *(a1 + 80);
  *(v10 + 112) = *(a1 + 64);
  *(v10 + 128) = v11;
  *(v10 + 144) = *(a1 + 96);
  v12 = *(a1 + 16);
  *(v10 + 48) = *a1;
  *(v10 + 64) = v12;
  v13 = *(a1 + 48);
  *(v10 + 80) = *(a1 + 32);
  *(v10 + 96) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_1001AB680;
  *(v14 + 24) = v10;
  aBlock[4] = sub_1001ACCC0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100109050;
  aBlock[3] = &unk_100284AC0;
  v15 = _Block_copy(aBlock);
  v16 = v4;

  sub_100019C6C(a1, v19, &unk_10029D860, &qword_100226648);

  [v9 performBlockAndWait:v15];
  _Block_release(v15);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

void sub_100170554(char *a1, void (*a2)(id, void, id), uint64_t a3, char a4, uint64_t a5)
{
  v10 = [*&a1[OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO] egoPeerID];
  if (v10)
  {
    v11 = v10;
    v12 = sub_100216974();
    v22 = a2;
    v14 = v13;

    strcpy(v24, "signing-key ");
    BYTE5(v24[1]) = 0;
    HIWORD(v24[1]) = -5120;
    v26._countAndFlagsBits = v12;
    v26._object = v14;
    sub_100216A14(v26);
    v15 = v24[0];
    v16 = v24[1];

    v17 = a1;

    sub_100019C6C(a5, v24, &unk_10029D860, &qword_100226648);
    sub_10019B6F8(v15, v16, v22, a3, a4 & 1, v17, v12, v14, a5);
    sub_1000114D4(a5, &unk_10029D860, &qword_100226648);

    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v18 = sub_100216774();
    sub_100002648(v18, qword_10029D160);
    v19 = sub_100216754();
    v20 = sub_100216C54();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "updateTrustIfNeeded: No identity.", v21, 2u);
    }

    v23 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:a4 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
    a2(v23, 0, 0);
  }
}

void sub_1001707E4(void *a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4, int a5, char *a6, char *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v12) = a5;
  PolicyDocumentsRequest = type metadata accessor for FetchPolicyDocumentsRequest(0);
  v18 = *(*(PolicyDocumentsRequest - 8) + 64);
  __chkstk_darwin(PolicyDocumentsRequest, v19);
  v21 = &v135[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    LODWORD(v149) = v12;
    v22 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
    v23 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];
    v24 = a1;
    v25 = a7;
    v26 = v24;
    v150 = v25;
    v151 = a8;
    v27 = sub_100216964();
    aBlock[0] = 0;
    v28 = [v23 peerWithID:v27 error:aBlock];

    if (aBlock[0])
    {
      v29 = aBlock[0];

      swift_willThrow();
      if (qword_100297520 != -1)
      {
        swift_once();
      }

      v30 = sub_100216774();
      sub_100002648(v30, qword_10029D160);
      v31 = v29;
      v32 = sub_100216754();
      v33 = sub_100216C74();

      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        *v34 = 138543362;
        v36 = v31;
        v148 = a3;
        v37 = v36;
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v34 + 4) = v38;
        *v35 = v38;
        _os_log_impl(&_mh_execute_header, v32, v33, "Failed to get (current self) ego peer from model: %{public}@", v34, 0xCu);
        sub_1000114D4(v35, &qword_10029D580, &unk_10021CCC0);

        v31 = v32;
        v32 = v37;
        a3 = v148;
      }

      goto LABEL_8;
    }

    if (!v28)
    {
LABEL_8:
      v39 = *&a6[v22];
      v40 = [objc_msgSend(v26 "publicKey")];
      swift_unknownObjectRelease();
      v41 = sub_100216224();
      v43 = v42;

      isa = sub_100216204().super.isa;
      sub_100002BF0(v41, v43);
      aBlock[0] = 0;
      v45 = [v39 hasPotentiallyTrustedPeerPreapprovingKey:isa error:aBlock];

      v46 = aBlock[0];
      if (aBlock[0])
      {
        swift_willThrow();
        v47 = qword_100297520;
        v48 = v46;
        if (v47 != -1)
        {
          swift_once();
        }

        v49 = sub_100216774();
        sub_100002648(v49, qword_10029D160);
        v50 = v48;
        v51 = sub_100216754();
        v52 = sub_100216C74();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          *v53 = 138543362;
          v55 = v50;
          v56 = _swift_stdlib_bridgeErrorToNSError();
          *(v53 + 4) = v56;
          *v54 = v56;
          _os_log_impl(&_mh_execute_header, v51, v52, "updateTrustIfNeeded: error calling hasPotentiallyTrustedPeerPreapprovingKey %{public}@", v53, 0xCu);
          sub_1000114D4(v54, &qword_10029D580, &unk_10021CCC0);
        }

        v57 = v50;
        a3(0, 0, v46);
      }

      else
      {
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v96 = sub_100216774();
        sub_100002648(v96, qword_10029D160);
        v97 = sub_100216754();
        v98 = sub_100216C54();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          v100 = swift_slowAlloc();
          aBlock[0] = v100;
          *v99 = 136446210;
          if (v45)
          {
            v101 = 0x6F72707061657270;
          }

          else
          {
            v101 = 0xD000000000000013;
          }

          if (v45)
          {
            v102 = 0xEB00000000646576;
          }

          else
          {
            v102 = 0x800000010023CF10;
          }

          v103 = sub_100005FB0(v101, v102, aBlock);

          *(v99 + 4) = v103;
          _os_log_impl(&_mh_execute_header, v97, v98, "updateTrustIfNeeded: ego peer is not in model, is %{public}s", v99, 0xCu);
          sub_100006128(v100);
        }

        v104 = v149;
        v105 = objc_allocWithZone(TrustedPeersHelperPeerState);
        v106 = sub_100216964();
        v107 = [v105 initWithPeerID:v106 isPreapproved:v45 status:32 memberChanges:v104 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];

        a3(v107, 0, 0);
      }

      goto LABEL_44;
    }

    v66 = v28;
    v147 = [v66 dynamicInfo];
    v67 = *&a6[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    __chkstk_darwin(v147, v68);
    *&v135[-32] = a6;
    *&v135[-24] = a3;
    v134 = a4;
    sub_10001148C(&qword_100297E70, &unk_10021DAB0);
    v146 = v67;
    sub_100216D34();
    v69 = aBlock[0];
    if (!aBlock[0])
    {

      v26 = v66;
      goto LABEL_44;
    }

    v137 = 0;
    v70 = swift_allocObject();
    v71 = v26;
    v72 = v150;
    *(v70 + 16) = a6;
    *(v70 + 24) = v72;
    *(v70 + 32) = v151;
    *(v70 + 40) = v26;
    v73 = *(a9 + 80);
    *(v70 + 112) = *(a9 + 64);
    *(v70 + 128) = v73;
    v74 = *(a9 + 96);
    v75 = *(a9 + 16);
    *(v70 + 48) = *a9;
    *(v70 + 64) = v75;
    v76 = *(a9 + 48);
    *(v70 + 80) = *(a9 + 32);
    *(v70 + 96) = v76;
    *(v70 + 144) = v74;
    *(v70 + 152) = v66;
    v148 = a3;
    *(v70 + 160) = a3;
    *(v70 + 168) = a4;
    v136 = v149 & 1;
    *(v70 + 176) = v149 & 1;
    v77 = v147;
    v139 = v70;
    *(v70 + 184) = v147;
    v78 = swift_allocObject();
    v141 = v78;
    *(v78 + 16) = v69;
    v79 = (v78 + 16);
    v149 = swift_allocObject();
    v145 = v71;
    v142 = v66;
    v80 = a6;

    sub_100019C6C(a9, aBlock, &unk_10029D860, &qword_100226648);

    v81 = v77;
    v145 = v145;
    v142 = v142;
    v82 = v80;

    v144 = a9;
    sub_100019C6C(a9, aBlock, &unk_10029D860, &qword_100226648);
    v143 = a4;
    v83 = v79;

    v140 = v81;
    v138 = v69;

    v84 = sub_100019440(_swiftEmptyArrayStorage);
    v85 = v149;
    *(v149 + 16) = v84;
    v86 = swift_allocObject();
    v86[2] = v79;
    v86[3] = v82;
    v86[4] = v85 + 16;
    v87 = swift_allocObject();
    v87[2] = sub_1001ACE80;
    v87[3] = v86;
    aBlock[4] = sub_1001ACCC0;
    aBlock[5] = v87;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100109050;
    aBlock[3] = &unk_100284B60;
    v88 = _Block_copy(aBlock);
    v89 = v82;

    [v146 performBlockAndWait:v88];
    _Block_release(v88);
    LOBYTE(v88) = swift_isEscapingClosureAtFileLocation();

    if (v88)
    {
      __break(1u);
    }

    else
    {
      v92 = *v83;
      if ((*v83 & 0xC000000000000001) != 0)
      {
        if (v92 < 0)
        {
          v93 = *v83;
        }

        v94 = *v83;

        v95 = sub_100216ED4();
      }

      else
      {
        v95 = *(v92 + 16);
      }

      v108 = v144;
      v109 = v147;
      v147 = v86;
      if (v95)
      {
        __chkstk_darwin(v90, v91);
        v134 = v110;
        sub_1001A13C4(&qword_100297E78, type metadata accessor for FetchPolicyDocumentsRequest);
        sub_100216654();
        v112 = *&v89[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24];
        v111 = *&v89[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32];
        sub_100006484(&v89[OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish], v112);
        v113 = swift_allocObject();
        v113[2] = v89;
        v113[3] = sub_1001AB6B4;
        v114 = v89;
        v115 = v141;
        v113[4] = v139;
        v113[5] = v115;
        v113[6] = v149;
        v116 = *(v111 + 16);
        v117 = *(v116 + 80);
        v150 = v114;

        v117(v21, sub_1001ACE2C, v113, v112, v116);

        sub_1001AC1E4(v21, type metadata accessor for FetchPolicyDocumentsRequest);
        v118 = v142;

        v119 = v140;

        sub_1000114D4(v144, &unk_10029D860, &qword_100226648);

LABEL_43:

        v26 = v145;

        goto LABEL_44;
      }

      v137 = *(v149 + 16);
      v120 = swift_allocObject();
      v121 = v150;
      *(v120 + 16) = v89;
      *(v120 + 24) = v121;
      v122 = v145;
      *(v120 + 32) = v151;
      *(v120 + 40) = v122;
      v123 = *(v108 + 80);
      *(v120 + 112) = *(v108 + 64);
      *(v120 + 128) = v123;
      v124 = *(v108 + 96);
      v125 = *(v108 + 16);
      *(v120 + 48) = *v108;
      *(v120 + 64) = v125;
      v126 = *(v108 + 48);
      *(v120 + 80) = *(v108 + 32);
      *(v120 + 96) = v126;
      v127 = v142;
      *(v120 + 144) = v124;
      *(v120 + 152) = v127;
      v128 = v143;
      *(v120 + 160) = v148;
      *(v120 + 168) = v128;
      *(v120 + 176) = v136;
      *(v120 + 184) = v109;
      v129 = swift_allocObject();
      *(v129 + 16) = sub_1001AB750;
      *(v129 + 24) = v120;
      v152[4] = sub_1001ACCC0;
      v152[5] = v129;
      v152[0] = _NSConcreteStackBlock;
      v152[1] = 1107296256;
      v152[2] = sub_100109050;
      v152[3] = &unk_100284C00;
      v130 = _Block_copy(v152);
      v145 = v122;
      v131 = v127;
      v150 = v89;

      sub_100019C6C(v108, aBlock, &unk_10029D860, &qword_100226648);

      v132 = v140;

      [v146 performBlockAndWait:v130];
      _Block_release(v130);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        sub_1000114D4(v108, &unk_10029D860, &qword_100226648);

        goto LABEL_43;
      }
    }

    __break(1u);
  }

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v58 = sub_100216774();
  sub_100002648(v58, qword_10029D160);
  swift_errorRetain();
  v59 = sub_100216754();
  v60 = sub_100216C74();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    aBlock[0] = v62;
    *v61 = 136446210;
    v152[0] = a2;
    swift_errorRetain();
    sub_10001148C(&qword_100297E80, &unk_1002265A0);
    v63 = sub_100216994();
    v65 = v12;
    v12 = sub_100005FB0(v63, v64, aBlock);

    *(v61 + 4) = v12;
    LOBYTE(v12) = v65;
    _os_log_impl(&_mh_execute_header, v59, v60, "updateTrustIfNeeded: no signing key pair: %{public}s", v61, 0xCu);
    sub_100006128(v62);
  }

  v26 = [objc_allocWithZone(TrustedPeersHelperPeerState) initWithPeerID:0 isPreapproved:0 status:32 memberChanges:v12 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];
  a3(v26, 0, a2);
LABEL_44:
}

void sub_1001718E8(uint64_t a1@<X0>, void (*a2)(void, void, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v19 = 0;
  v6 = [v5 allPolicyVersionsWithError:&v19];
  v7 = v19;
  if (v6)
  {
    v8 = v6;
    sub_10000200C(0, &qword_100297D68, TPPolicyVersion_ptr);
    sub_1001A9AB8(&qword_100297E88, &qword_100297D68, TPPolicyVersion_ptr);
    v9 = sub_100216BB4();
    v10 = v7;
  }

  else
  {
    v11 = v19;
    v12 = sub_100216154();

    swift_willThrow();
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v13 = sub_100216774();
    sub_100002648(v13, qword_10029D160);
    swift_errorRetain();
    v14 = sub_100216754();
    v15 = sub_100216C74();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      swift_errorRetain();
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Error fetching all policy versions: %{public}@", v16, 0xCu);
      sub_1000114D4(v17, &qword_10029D580, &unk_10021CCC0);
    }

    swift_errorRetain();
    a2(0, 0, v12);

    v9 = 0;
  }

  *a3 = v9;
}

void sub_100171B68(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, void *a6, void (*a7)(void, void, void), uint64_t a8, unsigned __int8 a9, id a10)
{
  v277 = a7;
  v269 = type metadata accessor for SignedPeerStableInfo(0);
  v268 = *(v269 - 8);
  v17 = *(v268 + 64);
  __chkstk_darwin(v269, v18);
  v267 = (&v261 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  updated = type metadata accessor for UpdateTrustRequest(0);
  v20 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v21);
  v273 = &v261 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v271 = type metadata accessor for SignedPeerDynamicInfo(0);
  v23 = *(*(v271 - 8) + 64);
  __chkstk_darwin(v271, v24);
  v275 = (&v261 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v280 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v26 = *(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v281 = a2;
  v282 = a3;
  v27 = sub_100216964();
  v283 = a1;
  v28 = [*(a1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) machines];
  v29 = &_swiftEmptySetSingleton;
  v278 = a8;
  if (v28)
  {
    v30 = v28;
    v284[0] = 0;
    type metadata accessor for MachineMO();
    sub_1001A13C4(&qword_10029D588, type metadata accessor for MachineMO);
    sub_100216BA4();

    if (v284[0])
    {
      v29 = v284[0];
    }
  }

  LODWORD(v279) = a9;
  sub_100108644(v29);

  v31 = objc_allocWithZone(TPMachineIDList);
  sub_10000200C(0, &unk_10029D740, TPMachineID_ptr);
  isa = sub_100216B14().super.isa;

  v33 = [v31 initWithEntries:isa];

  v284[0] = 0;
  v34 = [v26 calculateDynamicInfoForPeerWithID:v27 addingPeerIDs:0 removingPeerIDs:0 preapprovedKeys:0 signingKeyPair:a4 currentMachineIDs:v33 error:v284];

  v276 = v34;
  if (v34)
  {
    v35 = v284[0];
    v36 = v34;
    v37 = [a6 permanentInfo];
    v38 = [a6 stableInfo];
    v39 = a5;
    v40 = sub_100179B48(a5, v37, v38, v36, a4, 0);
    v274 = 0;
    v270 = v40;

    v70 = v280;
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v71 = sub_100216774();
    v266 = sub_100002648(v71, qword_10029D160);
    v72 = sub_100216754();
    v73 = sub_100216C54();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v284[0] = v75;
      *v74 = 136446210;
      v285 = v270;
      v76 = v270;
      sub_10001148C(&unk_10029DA38, &unk_100226760);
      v77 = sub_100216994();
      v79 = sub_100005FB0(v77, v78, v284);

      *(v74 + 4) = v79;
      _os_log_impl(&_mh_execute_header, v72, v73, "updateTrustIfNeeded: produced a stableInfo: %{public}s", v74, 0xCu);
      sub_100006128(v75);
    }

    v80 = v36;
    v81 = sub_100216754();
    v82 = sub_100216C54();

    v83 = os_log_type_enabled(v81, v82);
    v264 = v80;
    v262 = v39;
    if (v83)
    {
      v84 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      v284[0] = v85;
      *v84 = 136446210;
      v86 = v80;
      v87 = [(__CFString *)v86 description];
      v88 = sub_100216974();
      v90 = v89;

      v91 = sub_100005FB0(v88, v90, v284);

      *(v84 + 4) = v91;
      v80 = v264;
      _os_log_impl(&_mh_execute_header, v81, v82, "updateTrustIfNeeded: produced a dynamicInfo: %{public}s", v84, 0xCu);
      sub_100006128(v85);
    }

    v92 = *(v283 + v70);
    v93 = sub_100216964();
    v284[0] = 0;
    v94 = [v92 peerWithID:v93 error:v284];

    if (v284[0])
    {
      v95 = v284[0];

      swift_willThrow();
      v274 = 0;
      v96 = v95;
      v97 = sub_100216754();
      v98 = sub_100216C74();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *v99 = 138543362;
        v101 = v96;
        v102 = _swift_stdlib_bridgeErrorToNSError();
        *(v99 + 4) = v102;
        *v100 = v102;
        _os_log_impl(&_mh_execute_header, v97, v98, "Error getting ego peer from model: %{public}@", v99, 0xCu);
        sub_1000114D4(v100, &qword_10029D580, &unk_10021CCC0);
        v80 = v264;
      }

      else
      {
      }

      v94 = 0;
    }

    else
    {
      v103 = v94;
    }

    v265 = v94;
    if (v270)
    {
      v104 = v270;
      v105 = [v94 stableInfo];
      if (!v105)
      {
LABEL_39:

        goto LABEL_40;
      }

      v106 = v105;
      sub_10000200C(0, &unk_10029DA30, TPPeerStableInfo_ptr);
      v107 = sub_100216DC4();

      if ((v107 & 1) == 0)
      {
LABEL_40:

        goto LABEL_41;
      }
    }

    v104 = v80;
    v108 = [v94 dynamicInfo];
    if (v108)
    {
      v109 = v108;
      sub_10000200C(0, &unk_10029D858, TPPeerDynamicInfo_ptr);
      v110 = sub_100216DC4();

      if (v110)
      {
        v111 = sub_100216754();
        v112 = sub_100216C54();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&_mh_execute_header, v111, v112, "updateTrustIfNeeded: complete.", v113, 2u);
        }

        v114 = v283;
        sub_1001E5AA8(v104);
        v115 = *(v114 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
        v284[0] = 0;
        if ([v115 save:v284])
        {
          v116 = v284[0];
        }

        else
        {
          v133 = v284[0];
          v134 = sub_100216154();

          swift_willThrow();
          v274 = 0;
          swift_errorRetain();
          v135 = sub_100216754();
          v136 = sub_100216C74();

          if (os_log_type_enabled(v135, v136))
          {
            v137 = swift_slowAlloc();
            v138 = swift_slowAlloc();
            v284[0] = v138;
            *v137 = 136446210;
            v285 = v134;
            swift_errorRetain();
            sub_10001148C(&unk_10029D560, qword_10021D450);
            v139 = sub_100216994();
            v141 = sub_100005FB0(v139, v140, v284);

            *(v137 + 4) = v141;
            v94 = v265;
            _os_log_impl(&_mh_execute_header, v135, v136, "updateTrustIfNeeded: unable to remove untrusted MachineIDs: %{public}s", v137, 0xCu);
            sub_100006128(v138);
          }

          else
          {
          }
        }

        if (v94)
        {
          v142 = v94;
          v143 = [v142 stableInfo];
          if (v143)
          {
            v144 = v143;
            v145 = [v142 permanentInfo];
            v146 = [v145 modelID];

            LODWORD(v145) = sub_100216974();
            v148 = v147;

            v149 = v274;
            v150 = sub_100151404(v145, v148, v144);
            if (v149)
            {

              swift_errorRetain();
              v151 = sub_100216754();
              v152 = sub_100216C74();

              if (os_log_type_enabled(v151, v152))
              {
                v153 = swift_slowAlloc();
                v154 = swift_slowAlloc();
                v284[0] = v154;
                *v153 = 136446210;
                v285 = v149;
                swift_errorRetain();
                sub_10001148C(&unk_10029D560, qword_10021D450);
                v155 = sub_100216994();
                v157 = sub_100005FB0(v155, v156, v284);

                *(v153 + 4) = v157;
                v94 = v265;
                _os_log_impl(&_mh_execute_header, v151, v152, "updateTrustIfNeeded: unable to compute a new syncing policy: %{public}s", v153, 0xCu);
                sub_100006128(v154);
              }

              else
              {
              }

              v158 = 0;
            }

            else
            {
              v158 = v150;

              v159 = v158;
            }
          }

          else
          {

            v158 = 0;
          }
        }

        else
        {
          v158 = 0;
        }

        v160 = *(v283 + v70);
        v161 = sub_100216964();
        v284[0] = 0;
        v162 = [v160 statusOfPeerWithID:v161 error:v284];

        v163 = v284[0];
        if (v284[0])
        {
          swift_willThrow();
          v164 = v163;
          v165 = sub_100216754();
          v166 = sub_100216C74();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v168 = swift_slowAlloc();
            *v167 = 138543362;
            v169 = v164;
            v170 = _swift_stdlib_bridgeErrorToNSError();
            *(v167 + 4) = v170;
            *v168 = v170;
            _os_log_impl(&_mh_execute_header, v165, v166, "updateTrustIfNeeded: ignoring additional error calling statusOfPeer: %{public}@", v167, 0xCu);
            sub_1000114D4(v168, &qword_10029D580, &unk_10021CCC0);

            v164 = v165;
            v165 = v169;
            v94 = v265;
          }

          v162 = 32;
        }

        v171 = sub_1001E4538();
        if (v94 && (v172 = [v94 stableInfo]) != 0)
        {
          v173 = v104;
          v174 = v172;
          v175 = [v172 osVersion];

          sub_100216974();
          v177 = v176;

          v94 = v265;
        }

        else
        {
          v173 = v104;
          v177 = 0;
        }

        v178 = v94;
        v179 = [v94 stableInfo];
        v180 = [v179 walrusSetting];

        v181 = [v178 stableInfo];
        v182 = [v181 webAccess];

        v183 = sub_100216964();
        if (v177)
        {
          v184 = sub_100216964();
        }

        else
        {
          v184 = 0;
        }

        v185 = objc_allocWithZone(TrustedPeersHelperPeerState);
        v186 = [v185 initWithPeerID:v183 isPreapproved:0 status:v162 memberChanges:v279 & 1 unknownMachineIDs:v171 osVersion:v184 walrus:v180 webAccess:v182];

        v277(v186, v158, 0);
LABEL_99:
        v69 = v270;
LABEL_100:

        return;
      }

LABEL_41:
      if (a10)
      {
        v117 = [a10 excludedPeerIDs];
        v261 = sub_100216BB4();
      }

      else
      {
        v261 = &_swiftEmptySetSingleton;
      }

      v118 = [(__CFString *)v80 excludedPeerIDs];
      v263 = sub_100216BB4();

      v119 = [*(v283 + v70) allCustodianRecoveryKeys];
      sub_10000200C(0, &qword_10029D590, TPCustodianRecoveryKey_ptr);
      v120 = sub_100216B24();

      if (v120 >> 62)
      {
        v121 = sub_1002170F4();
        if (v121)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v121 = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v121)
        {
LABEL_46:
          v284[0] = _swiftEmptyArrayStorage;
          sub_1001877A4(0, v121 & ~(v121 >> 63), 0);
          if (v121 < 0)
          {
            __break(1u);
          }

          v122 = 0;
          v123 = v284[0];
          do
          {
            if ((v120 & 0xC000000000000001) != 0)
            {
              v124 = sub_100217014();
            }

            else
            {
              v124 = *(v120 + 8 * v122 + 32);
            }

            v125 = v124;
            v126 = [v124 peerID];
            v127 = sub_100216974();
            v129 = v128;

            v284[0] = v123;
            v131 = v123[2];
            v130 = v123[3];
            if (v131 >= v130 >> 1)
            {
              sub_1001877A4((v130 > 1), v131 + 1, 1);
              v123 = v284[0];
            }

            ++v122;
            v123[2] = v131 + 1;
            v132 = &v123[2 * v131];
            v132[4] = v127;
            v132[5] = v129;
          }

          while (v121 != v122);

          v94 = v265;
LABEL_82:
          v187 = v282;
          v188 = v264;
          if (v261[2] <= v263[2] >> 3)
          {
            v284[0] = v263;
            sub_10018E8F8(v261);

            v189 = v284[0];
          }

          else
          {
            v189 = sub_10018EA24(v261, v263);
          }

          v190 = sub_10018EF94(v123, v189);

          if (*(v190 + 16))
          {

            v191 = sub_100216754();
            v192 = sub_100216C74();

            if (os_log_type_enabled(v191, v192))
            {
              v193 = swift_slowAlloc();
              v194 = swift_slowAlloc();
              v284[0] = v194;
              *v193 = 136315138;
              v195 = sub_100216BC4();
              v197 = v196;

              v198 = v195;
              v187 = v282;
              v199 = sub_100005FB0(v198, v197, v284);
              v94 = v265;

              *(v193 + 4) = v199;
              _os_log_impl(&_mh_execute_header, v191, v192, "Found CRKs that are being distrusted: %s", v193, 0xCu);
              sub_100006128(v194);
              v188 = v264;
            }

            else
            {
            }

            v201 = objc_allocWithZone(SecTapToRadar);
            v202 = sub_100216964();
            v203 = sub_100216964();
            v204 = sub_100216964();
            v205 = [v201 initTapToRadar:v202 description:v203 radar:v204];

            [v205 trigger];
            if (v279)
            {
              goto LABEL_92;
            }
          }

          else
          {

            if (v279)
            {
LABEL_92:
              LODWORD(v280) = 1;
              goto LABEL_93;
            }
          }

          v200 = [v94 dynamicInfo];
          LODWORD(v280) = sub_1001A81A4(v188, v200);

LABEL_93:
          v206 = v271;
          v207 = v275;
          *v275 = xmmword_10021D470;
          v207[1] = xmmword_10021D470;
          v271 = xmmword_10021D470;
          v208 = v207 + *(v206 + 24);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          v209 = [(__CFString *)v188 data];
          v210 = sub_100216224();
          v212 = v211;

          sub_100002BF0(*v207, *(v207 + 1));
          *v207 = v210;
          *(v207 + 1) = v212;
          v213 = [(__CFString *)v188 sig];
          v214 = sub_100216224();
          v216 = v215;

          sub_100002BF0(*(v207 + 2), *(v207 + 3));
          *(v207 + 2) = v214;
          *(v207 + 3) = v216;
          v217 = v188;

          v218 = sub_100216754();
          v219 = sub_100216C54();

          v220 = os_log_type_enabled(v218, v219);
          v279 = v217;
          if (v220)
          {
            v221 = swift_slowAlloc();
            v222 = swift_slowAlloc();
            v223 = swift_slowAlloc();
            v284[0] = v223;
            *v221 = 136446466;
            v224 = v281;
            *(v221 + 4) = sub_100005FB0(v281, v282, v284);
            *(v221 + 12) = 2114;
            *(v221 + 14) = v217;
            *v222 = v276;
            v225 = v217;
            _os_log_impl(&_mh_execute_header, v218, v219, "updateTrustIfNeeded: attempting updateTrust for %{public}s with: %{public}@", v221, 0x16u);
            sub_1000114D4(v222, &qword_10029D580, &unk_10021CCC0);

            sub_100006128(v223);
            v187 = v282;
          }

          else
          {

            v224 = v281;
          }

          v228 = v273;
          v229 = updated;
          __chkstk_darwin(v226, v227);
          *(&v261 - 4) = v283;
          *(&v261 - 3) = v224;
          v259 = v187;
          v260 = v275;
          sub_1001A13C4(&qword_100298D60, type metadata accessor for UpdateTrustRequest);
          sub_100216654();
          v230 = v270;
          if (v270)
          {
            v231 = v267;
            v232 = v271;
            *v267 = v271;
            *(v231 + 16) = v232;
            v233 = v269;
            v234 = *(v269 + 24);
            v235 = v230;
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            v236 = [(__CFString *)v235 data];
            v237 = sub_100216224();
            v238 = v229;
            v240 = v239;

            sub_100002BF0(*v231, *(v231 + 8));
            *v231 = v237;
            *(v231 + 8) = v240;
            v241 = [(__CFString *)v235 sig];
            v242 = sub_100216224();
            v244 = v243;

            sub_100002BF0(*(v231 + 16), *(v231 + 24));
            *(v231 + 16) = v242;
            *(v231 + 24) = v244;
            v245 = *(v238 + 36);
            sub_1000114D4(&v228[v245], &qword_1002985A8, &unk_100226650);
            sub_1001AC038(v231, &v228[v245], type metadata accessor for SignedPeerStableInfo);
            (*(v268 + 56))(&v228[v245], 0, 1, v233);
          }

          v246 = v283;
          v247 = *(v283 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 24);
          v248 = *(v283 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish + 32);
          sub_100006484((v283 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_cuttlefish), v247);
          v249 = swift_allocObject();
          v250 = v228;
          v251 = v262;
          v252 = *(v262 + 32);
          *(v249 + 88) = *(v262 + 48);
          v253 = *(v251 + 80);
          *(v249 + 104) = *(v251 + 64);
          *(v249 + 120) = v253;
          v254 = *(v251 + 16);
          *(v249 + 40) = *v251;
          *(v249 + 56) = v254;
          v255 = v277;
          *(v249 + 16) = v246;
          *(v249 + 24) = v255;
          *(v249 + 32) = v278;
          *(v249 + 136) = *(v251 + 96);
          *(v249 + 72) = v252;
          *(v249 + 144) = v280 & 1;
          v256 = *(v248 + 16);
          v257 = *(v256 + 32);
          v258 = v246;

          sub_100019C6C(v251, v284, &unk_10029D860, &qword_100226648);
          v257(v250, sub_1001ACE34, v249, v247, v256);

          sub_1001AC1E4(v250, type metadata accessor for UpdateTrustRequest);
          sub_1001AC1E4(v275, type metadata accessor for SignedPeerDynamicInfo);
          goto LABEL_99;
        }
      }

      v123 = _swiftEmptyArrayStorage;
      goto LABEL_82;
    }

    goto LABEL_39;
  }

  v41 = v284[0];
  v42 = sub_100216154();

  swift_willThrow();
  v43 = v280;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v44 = sub_100216774();
  sub_100002648(v44, qword_10029D160);
  swift_errorRetain();
  v45 = sub_100216754();
  v46 = sub_100216C54();

  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v284[0] = v48;
    *v47 = 136446210;
    v285 = v42;
    v49 = v42;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v50 = sub_100216994();
    v52 = sub_100005FB0(v50, v51, v284);

    *(v47 + 4) = v52;
    _os_log_impl(&_mh_execute_header, v45, v46, "updateTrustIfNeeded: couldn't calculate dynamic info: %{public}s", v47, 0xCu);
    sub_100006128(v48);
  }

  else
  {
    v49 = v42;
  }

  v53 = v277;
  v54 = *(v283 + v43);
  v55 = sub_100216964();
  v284[0] = 0;
  v56 = [v54 statusOfPeerWithID:v55 error:v284];

  v57 = v284[0];
  if (v284[0])
  {
    swift_willThrow();
    v58 = v57;
    v59 = sub_100216754();
    v60 = sub_100216C74();

    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      *v61 = 138543362;
      v63 = v58;
      v64 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 4) = v64;
      *v62 = v64;
      _os_log_impl(&_mh_execute_header, v59, v60, "updateTrustIfNeeded: ignoring additional error calling statusOfPeer: %{public}@", v61, 0xCu);
      sub_1000114D4(v62, &qword_10029D580, &unk_10021CCC0);

      v58 = v59;
      v59 = v63;
    }

    v65 = v279;

    v56 = 32;
  }

  else
  {
    v65 = v279;
  }

  v66 = objc_allocWithZone(TrustedPeersHelperPeerState);
  v67 = sub_100216964();
  v68 = [v66 initWithPeerID:v67 isPreapproved:0 status:v56 memberChanges:v65 & 1 unknownMachineIDs:0 osVersion:0 walrus:0 webAccess:0];

  swift_errorRetain();
  v53(v68, 0, v49);

  v69 = v276;
  if (v276)
  {
    goto LABEL_100;
  }
}

uint64_t sub_100173834(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v38 = a6;
  v34 = a3;
  v35 = a5;
  v9 = type metadata accessor for IdmsTrustedDevicesVersion(0);
  v39 = *(v9 - 8);
  v10 = *(v39 + 64);
  __chkstk_darwin(v9, v11);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SignedPeerDynamicInfo(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13, v16);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;
  v19 = [*(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) changeToken];
  if (v19)
  {
    v20 = v19;
    v21 = sub_100216974();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  v24 = a1[1];

  *a1 = v21;
  a1[1] = v23;
  v25 = a1[3];

  v26 = v35;
  a1[2] = v34;
  a1[3] = a4;
  sub_1001AC0A0(v26, v18, type metadata accessor for SignedPeerDynamicInfo);
  updated = type metadata accessor for UpdateTrustRequest(0);
  v28 = *(updated + 40);
  sub_1000114D4(a1 + v28, &unk_10029D760, &qword_10021E810);
  sub_1001AC038(v18, a1 + v28, type metadata accessor for SignedPeerDynamicInfo);
  v29 = (*(v14 + 56))(a1 + v28, 0, 1, v13);
  __chkstk_darwin(v29, v30);
  *(&v34 - 2) = v36;
  sub_1001A13C4(&qword_100298BD0, type metadata accessor for IdmsTrustedDevicesVersion);
  v31 = v37;
  sub_100216654();
  v32 = *(updated + 44);
  sub_1000114D4(a1 + v32, &qword_10029D770, &qword_10021E860);
  sub_1001AC038(v31, a1 + v32, type metadata accessor for IdmsTrustedDevicesVersion);
  return (*(v39 + 56))(a1 + v32, 0, 1, v9);
}

uint64_t sub_100173B5C(uint64_t a1, char *a2, void (*a3)(void, void, uint64_t), uint64_t a4, uint64_t a5, int a6)
{
  v69 = a6;
  v70 = a5;
  v74 = a4;
  v73 = a3;
  v71 = a2;
  v72 = a1;
  v6 = sub_10001148C(&unk_10029D750, &qword_10021E850);
  v7 = *(*(v6 - 8) + 64);
  v9 = __chkstk_darwin(v6 - 8, v8);
  v68 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9, v11);
  v13 = &v66 - v12;
  v14 = type metadata accessor for Changes(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v18 = __chkstk_darwin(v14, v17);
  v67 = (&v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18, v20);
  v22 = &v66 - v21;
  updated = type metadata accessor for UpdateTrustResponse(0);
  v24 = *(*(updated - 8) + 64);
  __chkstk_darwin(updated, v25);
  v27 = &v66 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_10001148C(&qword_1002984E0, &qword_10021DF50);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28, v30);
  v32 = (&v66 - v31);
  sub_100019C6C(v72, &v66 - v31, &qword_1002984E0, &qword_10021DF50);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1001AC038(v32, v27, type metadata accessor for UpdateTrustResponse);
    v43 = *(updated + 24);
    sub_100019C6C(&v27[v43], v13, &unk_10029D750, &qword_10021E850);
    v44 = *(v15 + 48);
    if (v44(v13, 1, v14) == 1)
    {
      *v22 = 0;
      *(v22 + 1) = 0xE000000000000000;
      *(v22 + 2) = _swiftEmptyArrayStorage;
      *(v22 + 24) = xmmword_10021D470;
      *(v22 + 40) = xmmword_10021D470;
      v22[56] = 0;
      v45 = &v22[*(v14 + 36)];
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v46 = v14;
      v47 = v44(v13, 1, v14);
      v49 = v71;
      if (v47 != 1)
      {
        v47 = sub_1000114D4(v13, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v46 = v14;
      v47 = sub_1001AC038(v13, v22, type metadata accessor for Changes);
      v49 = v71;
    }

    v50 = *&v49[OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc];
    __chkstk_darwin(v47, v48);
    *(&v66 - 4) = v22;
    *(&v66 - 3) = v49;
    *(&v66 - 16) = 0;
    sub_100216D34();
    sub_1001AC1E4(v22, type metadata accessor for Changes);
    v51 = v68;
    sub_100019C6C(&v27[v43], v68, &unk_10029D750, &qword_10021E850);
    if (v44(v51, 1, v46) == 1)
    {
      v52 = v67;
      *v67 = 0;
      v52[1] = 0xE000000000000000;
      v52[2] = _swiftEmptyArrayStorage;
      *(v52 + 3) = xmmword_10021D470;
      *(v52 + 5) = xmmword_10021D470;
      *(v52 + 56) = 0;
      v53 = v52 + *(v46 + 36);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      if (v44(v51, 1, v46) != 1)
      {
        sub_1000114D4(v51, &unk_10029D750, &qword_10021E850);
      }
    }

    else
    {
      v52 = v67;
      sub_1001AC038(v51, v67, type metadata accessor for Changes);
    }

    v54 = *(v52 + 56);
    sub_1001AC1E4(v52, type metadata accessor for Changes);
    if (v54)
    {
      v55 = swift_allocObject();
      v56 = v70;
      v57 = *(v70 + 32);
      *(v55 + 88) = *(v70 + 48);
      v58 = *(v56 + 80);
      *(v55 + 104) = *(v56 + 64);
      *(v55 + 120) = v58;
      v59 = *(v56 + 16);
      *(v55 + 40) = *v56;
      *(v55 + 56) = v59;
      v60 = v74;
      *(v55 + 16) = v73;
      *(v55 + 24) = v60;
      *(v55 + 32) = v49;
      *(v55 + 136) = *(v56 + 96);
      *(v55 + 72) = v57;
      *(v55 + 144) = v69 & 1;
      v61 = swift_allocObject();
      *(v61 + 16) = 0;
      *(v61 + 24) = v49;
      *(v61 + 32) = sub_1001A9BF8;
      *(v61 + 40) = v55;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_100056B20;
      *(v62 + 24) = v61;
      aBlock[4] = sub_1001ACCC0;
      aBlock[5] = v62;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100109050;
      aBlock[3] = &unk_100282FB8;
      v63 = _Block_copy(aBlock);
      v64 = v49;

      sub_100019C6C(v56, v75, &unk_10029D860, &qword_100226648);

      [v50 performBlockAndWait:v63];
      _Block_release(v63);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return sub_1001AC1E4(v27, type metadata accessor for UpdateTrustResponse);
      }

      __break(1u);
    }

    sub_100170394(v70, v69 & 1, v73, v74);
    return sub_1001AC1E4(v27, type metadata accessor for UpdateTrustResponse);
  }

  v33 = *v32;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v34 = sub_100216774();
  sub_100002648(v34, qword_10029D160);
  swift_errorRetain();
  v35 = sub_100216754();
  v36 = sub_100216C74();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v75[0] = v38;
    *v37 = 136446210;
    aBlock[0] = v33;
    swift_errorRetain();
    sub_10001148C(&unk_10029D560, qword_10021D450);
    v39 = sub_100216994();
    v41 = sub_100005FB0(v39, v40, v75);

    *(v37 + 4) = v41;
    _os_log_impl(&_mh_execute_header, v35, v36, "UpdateTrust failed: %{public}s", v37, 0xCu);
    sub_100006128(v38);
  }

  swift_errorRetain();
  v73(0, 0, v33);
}

void sub_10017458C(uint64_t *a1, uint64_t a2, int a3)
{
  v38 = a3;
  v5 = type metadata accessor for Changes(0);
  v6 = *(*(v5 - 8) + 64);
  v8 = __chkstk_darwin(v5 - 8, v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __chkstk_darwin(v8, v11);
  v14 = &v35 - v13;
  __chkstk_darwin(v12, v15);
  v17 = &v35 - v16;
  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v18 = sub_100216774();
  v19 = sub_100002648(v18, qword_10029D160);
  sub_1001AC0A0(a1, v17, type metadata accessor for Changes);
  sub_1001AC0A0(a1, v14, type metadata accessor for Changes);
  v37 = v19;
  v20 = sub_100216754();
  v21 = sub_100216C54();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v36 = a1;
    v23 = v22;
    *v22 = 134218240;
    v24 = *(v17 + 2);
    v35 = a2;
    v25 = *(v24 + 16);
    sub_1001AC1E4(v17, type metadata accessor for Changes);
    *(v23 + 1) = v25;
    *(v23 + 6) = 1024;
    LODWORD(v25) = v14[56];
    sub_1001AC1E4(v14, type metadata accessor for Changes);
    *(v23 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v20, v21, "persist: Received %ld peer differences, more: %{BOOL}d", v23, 0x12u);
    a1 = v36;
  }

  else
  {
    sub_1001AC1E4(v14, type metadata accessor for Changes);
    sub_1001AC1E4(v17, type metadata accessor for Changes);
  }

  sub_1001AC0A0(a1, v10, type metadata accessor for Changes);
  v26 = sub_100216754();
  v27 = sub_100216C54();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v39 = v29;
    *v28 = 136446210;
    v30 = a1;
    v31 = v10;
    v32 = *v10;
    v33 = v10[1];

    sub_1001AC1E4(v31, type metadata accessor for Changes);
    v34 = sub_100005FB0(v32, v33, &v39);

    *(v28 + 4) = v34;
    a1 = v30;
    _os_log_impl(&_mh_execute_header, v26, v27, "persist: New change token: %{public}s", v28, 0xCu);
    sub_100006128(v29);
  }

  else
  {

    sub_1001AC1E4(v10, type metadata accessor for Changes);
  }

  sub_100174C2C(a1, v38 & 1);
}

void sub_100174944(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = sub_100216974();
  v11 = v10;

  if (v9 == a1 && v11 == a2)
  {

    goto LABEL_9;
  }

  v13 = sub_1002171A4();

  if (v13)
  {
LABEL_9:
    v14 = kSecurityRTCErrorDomain;
    sub_10001148C(&unk_10029DA20, &unk_100226750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10021D600;
    *(inited + 32) = sub_100216974();
    *(inited + 72) = &type metadata for String;
    *(inited + 40) = v16;
    *(inited + 48) = 0xD000000000000025;
    *(inited + 56) = 0x800000010023CEE0;
    v17 = v14;
    sub_10001900C(inited);
    swift_setDeallocating();
    sub_1000114D4(inited + 32, &qword_100297CF0, &qword_10021D6F8);
    v18 = objc_allocWithZone(NSError);
    isa = sub_1002168C4().super.isa;

    v20 = [v18 initWithDomain:v17 code:11 userInfo:isa];

    v21 = kSecurityRTCEventNameOctagonTrustLost;
    sub_1001A9F94();
    LOBYTE(v31) = 1;
    v23 = [objc_allocWithZone(AAFAnalyticsEventSecurity) initWithKeychainCircleMetrics:0 altDSID:0 flowID:0 deviceSessionID:0 eventName:v21 testsAreEnabled:v22 canSendMetrics:v31 category:kSecurityRTCEventCategoryAccountDataAccessRecovery];

    v24 = v20;
    v25 = sub_100216144();

    [v23 sendMetricWithResult:1 error:v25];
  }

LABEL_10:
  v26 = *(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v27 = *(v26 + 16);
  v28 = *(v26 + 24);

  v29 = sub_10019CE9C(v27, v28, a1, a2);

  if (v4)
  {
    v30 = 1;
  }

  else
  {
    v30 = v29 == 0;
  }

  if (!v30)
  {
    [*(v2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc) deleteObject:v29];
  }
}

void sub_100174C2C(uint64_t *a1, int a2)
{
  v4 = v2;
  LODWORD(v60) = a2;
  v6 = type metadata accessor for PeerDifference(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8, v9);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v13 = *a1;
  v14 = a1[1];
  v15 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v16 = a1;
  v17 = sub_100216964();
  [v15 setChangeToken:v17];

  v18 = *(a1 + 56);
  [*(v4 + v12) setMoreChanges:*(a1 + 56)];
  if (v60)
  {
    [*(v4 + v12) setRefetchLevel:1];
  }

  v19 = a1[2];
  if (*(v19 + 16))
  {
    v60 = a1;
    if (qword_100297520 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v20 = sub_100216774();
      sub_100002648(v20, qword_10029D160);
      v21 = sub_100216754();
      v22 = sub_100216C54();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        HIDWORD(v59) = v18;
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "escrow cache and viable bottles are no longer valid", v23, 2u);
        v18 = HIDWORD(v59);
      }

      sub_10014C364();
      [*(v4 + v12) setAccountSettings:0];
      [*(v4 + v12) setAccountSettingsDate:0];
      v24 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_darwinNotifier);
      [swift_getObjCClassFromMetadata() post:OTCliqueChanged];
      v25 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus);
      *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_trustStatus) = 0;

      v26 = *(v19 + 16);
      v16 = v60;
      if (!v26)
      {
        break;
      }

      v12 = 0;
      while (v12 < *(v19 + 16))
      {
        sub_1001AC0A0(v19 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v12, v11, type metadata accessor for PeerDifference);
        sub_1001752A4(v11, v4);
        if (v3)
        {
          sub_1001AC1E4(v11, type metadata accessor for PeerDifference);
          return;
        }

        ++v12;
        sub_1001AC1E4(v11, type metadata accessor for PeerDifference);
        if (v26 == v12)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_46:
      swift_once();
    }
  }

LABEL_12:
  v27 = v16[3];
  v28 = v16[4];
  v29 = v16[5];
  v30 = v16[6];
  v31 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v31 != 2)
    {
      goto LABEL_30;
    }

    v32 = *(v27 + 16);
    v33 = *(v27 + 24);
LABEL_19:
    if (v32 == v33)
    {
      goto LABEL_30;
    }

    goto LABEL_20;
  }

  if (v31)
  {
    v32 = v27;
    v33 = v27 >> 32;
    goto LABEL_19;
  }

  if ((v28 & 0xFF000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_20:
  v34 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    if (v34)
    {
      if (v29 == v29 >> 32)
      {
        goto LABEL_30;
      }
    }

    else if ((v30 & 0xFF000000000000) == 0)
    {
      goto LABEL_30;
    }

LABEL_29:
    sub_100176BC0();
    goto LABEL_30;
  }

  if (v34 == 2 && *(v29 + 16) != *(v29 + 24))
  {
    goto LABEL_29;
  }

LABEL_30:
  v35 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v61 = 0;
  v36 = [v35 save:{&v61, v30}];
  v37 = v61;
  if (v36)
  {
    if (v18)
    {
      v38 = v61;
    }

    else
    {
      v40 = *(v4 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
      v61 = 0;
      v41 = v37;
      v42 = [v40 peerCountWithError:&v61];
      v43 = v61;
      if (v61)
      {
        swift_willThrow();
        v44 = qword_100297520;
        v45 = v43;
        if (v44 != -1)
        {
          swift_once();
        }

        v46 = sub_100216774();
        sub_100002648(v46, qword_10029D160);
        v47 = v45;
        v48 = sub_100216754();
        v49 = sub_100216C74();

        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          *v50 = 138543362;
          v52 = v47;
          v53 = _swift_stdlib_bridgeErrorToNSError();
          *(v50 + 4) = v53;
          *v51 = v53;
          _os_log_impl(&_mh_execute_header, v48, v49, "Error getting peerCount: %{public}@", v50, 0xCu);
          sub_1000114D4(v51, &qword_10029D580, &unk_10021CCC0);
        }

        else
        {
        }
      }

      else
      {
        v54 = v42;
        if (qword_100297520 != -1)
        {
          swift_once();
        }

        v55 = sub_100216774();
        sub_100002648(v55, qword_10029D160);
        v56 = sub_100216754();
        v57 = sub_100216C54();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          *v58 = 134217984;
          *(v58 + 4) = v54;
          _os_log_impl(&_mh_execute_header, v56, v57, "Currently know about %lu peers", v58, 0xCu);
        }
      }
    }
  }

  else
  {
    v39 = v61;
    sub_100216154();

    swift_willThrow();
  }
}

uint64_t sub_1001752A4(uint64_t a1, uint64_t a2)
{
  v109 = a2;
  v3 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v101 = &v98 - v6;
  v7 = type metadata accessor for SignedPeerDynamicInfo(0);
  v99 = *(v7 - 8);
  v100 = v7;
  v8 = *(v99 + 64);
  __chkstk_darwin(v7, v9);
  v102 = (&v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8, v13);
  v105 = &v98 - v14;
  v15 = type metadata accessor for SignedPeerStableInfo(0);
  v103 = *(v15 - 8);
  v104 = v15;
  v16 = *(v103 + 64);
  __chkstk_darwin(v15, v17);
  v106 = (&v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v107 = type metadata accessor for Peer(0);
  v19 = *(*(v107 - 8) + 64);
  v21 = __chkstk_darwin(v107, v20);
  v23 = (&v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v21, v24);
  v108 = &v98 - v25;
  v26 = sub_10001148C(&qword_100297E00, &qword_10021DA18);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8, v28);
  v30 = &v98 - v29;
  v31 = type metadata accessor for PeerDifference.OneOf_Operation(0);
  v32 = *(v31 - 8);
  v33 = *(v32 + 64);
  v35 = __chkstk_darwin(v31, v34);
  v37 = &v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35, v38);
  v40 = &v98 - v39;
  sub_100019C6C(a1, v30, &qword_100297E00, &qword_10021DA18);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {
    return sub_1000114D4(v30, &qword_100297E00, &qword_10021DA18);
  }

  sub_1001AC038(v30, v40, type metadata accessor for PeerDifference.OneOf_Operation);
  sub_1001AC0A0(v40, v37, type metadata accessor for PeerDifference.OneOf_Operation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1001AC038(v37, v23, type metadata accessor for Peer);
    sub_100174944(*v23, v23[1]);
    sub_1001AC1E4(v40, type metadata accessor for PeerDifference.OneOf_Operation);
    return sub_1001AC1E4(v23, type metadata accessor for Peer);
  }

  v42 = v108;
  sub_1001AC038(v37, v108, type metadata accessor for Peer);
  v43 = v109;
  v44 = v110;
  sub_100177364(v42);
  if (!v44)
  {
    v110 = v40;
    v46 = *v42;
    v47 = *(v42 + 8);
    v48 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
    v49 = [*(v43 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
    if (v49)
    {
      v50 = v49;
      v51 = sub_100216974();
      v53 = v52;

      if (v46 == v51 && v47 == v53)
      {

        v42 = v108;
        goto LABEL_12;
      }

      v54 = sub_1002171A4();

      v42 = v108;
      if (v54)
      {
LABEL_12:
        v55 = v105;
        sub_100019C6C(v42 + *(v107 + 32), v105, &qword_1002985A8, &unk_100226650);
        v56 = v104;
        v57 = *(v103 + 48);
        if (v57(v55, 1, v104) == 1)
        {
          v58 = v106;
          *v106 = xmmword_10021D470;
          v58[1] = xmmword_10021D470;
          v59 = v58 + *(v56 + 24);
          _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
          if (v57(v55, 1, v56) != 1)
          {
            sub_1000114D4(v55, &qword_1002985A8, &unk_100226650);
          }
        }

        else
        {
          v58 = v106;
          sub_1001AC038(v55, v106, type metadata accessor for SignedPeerStableInfo);
        }

        v60 = *v58;
        v61 = *(v58 + 1);
        v62 = *(v58 + 2);
        v63 = *(v58 + 3);
        v64 = objc_allocWithZone(TPPeerStableInfo);
        isa = sub_100216204().super.isa;
        v66 = sub_100216204().super.isa;
        v67 = [v64 initWithData:isa sig:v66];

        sub_1001AC1E4(v58, type metadata accessor for SignedPeerStableInfo);
        if (v67)
        {
          v68 = v109;
          v69 = *(v109 + v48);
          v70 = [v67 data];
          v71 = v67;
          v72 = sub_100216224();
          v74 = v73;

          v75 = sub_100216204().super.isa;
          sub_100002BF0(v72, v74);
          [v69 setEgoPeerStableInfo:v75];

          v76 = *(v68 + v48);
          v77 = [v71 sig];
          v78 = sub_100216224();
          v80 = v79;

          v81 = sub_100216204().super.isa;
          sub_100002BF0(v78, v80);
          [v76 setEgoPeerStableInfoSig:v81];

          v82 = v101;
          sub_100019C6C(v42 + *(v107 + 36), v101, &unk_10029D760, &qword_10021E810);
          v83 = v100;
          v84 = *(v99 + 48);
          if (v84(v82, 1, v100) == 1)
          {
            v85 = v102;
            *v102 = xmmword_10021D470;
            v85[1] = xmmword_10021D470;
            v86 = v85 + *(v83 + 24);
            _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
            if (v84(v82, 1, v83) != 1)
            {
              sub_1000114D4(v82, &unk_10029D760, &qword_10021E810);
            }
          }

          else
          {
            v85 = v102;
            sub_1001AC038(v82, v102, type metadata accessor for SignedPeerDynamicInfo);
          }

          v87 = *v85;
          v88 = *(v85 + 1);
          v89 = *(v85 + 2);
          v90 = *(v85 + 3);
          v91 = sub_100216204().super.isa;
          v92 = sub_100216204().super.isa;
          v93 = [objc_opt_self() dynamicInfoWithData:v91 sig:v92];

          sub_1001AC1E4(v85, type metadata accessor for SignedPeerDynamicInfo);
          if (v93)
          {
            v94 = [v93 excludedPeerIDs];
            v95 = sub_100216BB4();

            __chkstk_darwin(v96, v97);
            *(&v98 - 2) = v109;
            *(&v98 - 1) = v42;
            sub_1001E3E28(sub_1001AB644, (&v98 - 4), v95);
            sub_1001AC1E4(v110, type metadata accessor for PeerDifference.OneOf_Operation);
          }

          else
          {
            sub_1001AC1E4(v110, type metadata accessor for PeerDifference.OneOf_Operation);
          }

          return sub_1001AC1E4(v42, type metadata accessor for Peer);
        }
      }
    }

    v45 = v110;
    goto LABEL_21;
  }

  v45 = v40;
LABEL_21:
  sub_1001AC1E4(v45, type metadata accessor for PeerDifference.OneOf_Operation);
  return sub_1001AC1E4(v42, type metadata accessor for Peer);
}

void sub_100175C78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a2 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  v11 = sub_10019CE9C(v9, v10, v6, v7);

  if (v3)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11 == 0;
  }

  if (!v12)
  {
    v13 = [v11 vouchers];
    if (v13)
    {
      v14 = v13;
      v17[7] = 0;
      type metadata accessor for VoucherMO();
      sub_1001A13C4(&qword_10029DA08, type metadata accessor for VoucherMO);
      sub_100216BA4();
    }

    __chkstk_darwin(v15, v16);
    v17[2] = a3;
    v17[3] = a2;
    v17[4] = v6;
    v17[5] = v7;
    sub_1001E3F60(sub_1001AB660, v17, &_swiftEmptySetSingleton);
  }
}

void sub_100175E00(id *a1, void *a2, uint64_t a3, Swift::Int a4, unint64_t a5)
{
  v8 = *a1;
  v9 = [v8 voucherInfo];
  if (!v9)
  {
    v21 = v8;
    goto LABEL_12;
  }

  v10 = v9;
  v11 = sub_100216224();
  v13 = v12;

  v14 = [v8 voucherInfoSig];
  if (!v14)
  {
    sub_100002BF0(v11, v13);
    v21 = v8;
    goto LABEL_12;
  }

  v28 = a4;
  v29 = a5;
  v15 = v14;
  v16 = sub_100216224();
  v18 = v17;

  isa = sub_100216204().super.isa;
  v20 = sub_100216204().super.isa;
  v21 = [objc_opt_self() voucherInfoWithData:isa sig:v20];

  sub_100002BF0(v16, v18);
  sub_100002BF0(v11, v13);

  if (v21)
  {
    v22 = [v21 sponsorID];
    v23 = sub_100216974();
    v25 = v24;

    if (v23 == *a2 && v25 == a2[1])
    {

      v26 = v29;
LABEL_11:
      sub_1001820F0(v28, v26);
      goto LABEL_12;
    }

    v27 = sub_1002171A4();

    v26 = v29;
    if (v27)
    {
      goto LABEL_11;
    }

LABEL_12:
  }
}

void sub_100175FF0()
{
  v1 = v0;
  v2 = sub_100216164();
  v101 = *(v2 - 8);
  v3 = *(v101 + 64);
  v5 = __chkstk_darwin(v2, v4);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100297520 != -1)
  {
    v98 = v5;
    swift_once();
    v5 = v98;
  }

  v106 = v5;
  v8 = sub_100216774();
  v110 = sub_100002648(v8, qword_10029D160);
  v9 = sub_100216754();
  v10 = sub_100216C54();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Deleting all CloudKit data", v11, 2u);
  }

  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = sub_100216964();
  v14 = [v12 initWithEntityName:v13];

  sub_10000200C(0, &qword_10029D570, NSPredicate_ptr);
  v105 = sub_10001148C(&qword_100297D30, &qword_1002270B0);
  v15 = swift_allocObject();
  v104 = xmmword_10021D600;
  *(v15 + 16) = xmmword_10021D600;
  v16 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v17 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v103 = type metadata accessor for ContainerMO();
  *(v15 + 56) = v103;
  v102 = sub_1001A13C4(&qword_10029D5B0, type metadata accessor for ContainerMO);
  *(v15 + 64) = v102;
  *(v15 + 32) = v17;
  v18 = v17;
  v19 = sub_100216C34();
  [v14 setPredicate:v19];

  [v14 setResultType:1];
  v20 = *(v1 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc);
  v21 = objc_allocWithZone(NSBatchDeleteRequest);
  v109 = v14;
  v22 = [v21 initWithFetchRequest:v14];
  *&v116[0] = 0;
  v107 = v20;
  v23 = [v20 executeRequest:v22 error:v116];

  if (!v23)
  {
    v50 = *&v116[0];
    v51 = sub_100216154();

    swift_willThrow();
    v37 = v109;
    goto LABEL_39;
  }

  v24 = *&v116[0];

  v25 = [*(v1 + v16) egoPeerID];
  v26 = v106;
  if (v25)
  {
    v27 = v25;
    v108 = sub_100216974();
    v29 = v28;

    v100 = v1;
    v30 = [*(v1 + v16) bottles];
    if (v30)
    {
      v105 = v16;
      v31 = v30;
      sub_100216D74();
      *&v104 = v31;

      sub_1001A13C4(&unk_10029DA10, &type metadata accessor for NSFastEnumerationIterator);
      sub_100216E04();
      v111 = v29;
      v32 = _swiftEmptyArrayStorage;
      if (!v115)
      {
LABEL_9:
        (*(v101 + 8))(v7, v26);

        sub_1000114D4(&v114, &unk_100297770, &unk_10021DF90);
        v33 = objc_allocWithZone(NSSet);
        isa = sub_100216B14().super.isa;

        v35 = [v33 initWithArray:isa];

        v16 = v105;
        v36 = v100;
        [*(v100 + v105) removeBottles:v35];

        v37 = v109;
        goto LABEL_33;
      }

      while (1)
      {
        sub_1000125AC(&v114, v116);
        sub_1000060A0(v116, &v114);
        type metadata accessor for BottleMO();
        if (swift_dynamicCast())
        {
          v39 = v112;
          v40 = [v112 peerID];
          if (!v40)
          {

            sub_100006128(&v114);
LABEL_22:
            sub_1000125AC(v116, &v114);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v113 = v32;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_100187764(0, v32[2] + 1, 1);
              v32 = v113;
            }

            v49 = v32[2];
            v48 = v32[3];
            if (v49 >= v48 >> 1)
            {
              sub_100187764((v48 > 1), v49 + 1, 1);
              v32 = v113;
            }

            v32[2] = v49 + 1;
            sub_1000125AC(&v114, &v32[4 * v49 + 4]);
            goto LABEL_12;
          }

          v41 = v40;
          v42 = sub_100216974();
          v44 = v43;

          if (v42 == v108 && v44 == v111)
          {

            sub_100006128(&v114);
          }

          else
          {
            v46 = sub_1002171A4();

            sub_100006128(&v114);
            if ((v46 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          v38 = v116;
        }

        else
        {
          sub_100006128(v116);
          v38 = &v114;
        }

        sub_100006128(v38);
LABEL_12:
        sub_100216E04();
        if (!v115)
        {
          goto LABEL_9;
        }
      }
    }

    v1 = v100;
  }

  v52 = objc_allocWithZone(NSFetchRequest);
  v53 = sub_100216964();
  v35 = [v52 initWithEntityName:v53];

  v54 = swift_allocObject();
  *(v54 + 16) = v104;
  v55 = *(v1 + v16);
  v56 = v102;
  *(v54 + 56) = v103;
  *(v54 + 64) = v56;
  *(v54 + 32) = v55;
  v57 = v55;
  v58 = sub_100216C34();
  [v35 setPredicate:v58];

  v37 = v109;
  [v109 setResultType:1];
  v59 = [objc_allocWithZone(NSBatchDeleteRequest) initWithFetchRequest:v35];
  *&v116[0] = 0;
  v60 = [v107 executeRequest:v59 error:v116];

  if (!v60)
  {
    v87 = *&v116[0];
    v51 = sub_100216154();

    swift_willThrow();
LABEL_39:

    swift_errorRetain();
    v81 = sub_100216754();
    v88 = sub_100216C74();

    if (os_log_type_enabled(v81, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      *&v116[0] = v90;
      *v89 = 136446210;
      *&v114 = v51;
      swift_errorRetain();
      sub_10001148C(&unk_10029D560, qword_10021D450);
      v91 = sub_100216994();
      v93 = sub_100005FB0(v91, v92, v116);

      *(v89 + 4) = v93;
      _os_log_impl(&_mh_execute_header, v81, v88, "Local delete failed: %{public}s", v89, 0xCu);
      sub_100006128(v90);
      goto LABEL_41;
    }

LABEL_42:

    swift_willThrow();
    return;
  }

  v61 = *&v116[0];

  [*(v1 + v16) setBottles:0];
  v36 = v1;
LABEL_33:

  [*(v36 + v16) setPeers:0];
  [*(v36 + v16) setChangeToken:0];
  [*(v36 + v16) setMoreChanges:0];
  v62 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter;
  v63 = *(v36 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v64 = *(v36 + v16);

  v65 = sub_10010F154();
  v67 = v66;

  v68 = v107;
  v69 = sub_10019EC98(v107, v64, v65, v67);
  v70 = v36;
  v72 = v71;
  sub_10004CD18(v65, v67);

  v73 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v74 = *(v70 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  *(v70 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) = v69;

  v75 = *(v70 + v62);
  *(v70 + v62) = v72;

  *&v116[0] = 0;
  if (![v68 save:v116])
  {
    v86 = *&v116[0];
    v51 = sub_100216154();

    swift_willThrow();
    goto LABEL_39;
  }

  v76 = *&v116[0];

  v77 = *(v70 + v73);
  *&v116[0] = 0;
  v78 = [v77 peerCountWithError:v116];
  v79 = *&v116[0];
  if (*&v116[0])
  {
    swift_willThrow();
    v80 = v79;
    v81 = sub_100216754();
    v82 = sub_100216C74();

    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      *v83 = 138543362;
      v80;
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v83 + 4) = v85;
      *v84 = v85;
      _os_log_impl(&_mh_execute_header, v81, v82, "error getting peerCount: %{public}@", v83, 0xCu);
      sub_1000114D4(v84, &qword_10029D580, &unk_10021CCC0);
LABEL_41:

      goto LABEL_42;
    }

    goto LABEL_42;
  }

  v94 = v78;
  v95 = sub_100216754();
  v96 = sub_100216C54();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134217984;
    *(v97 + 4) = v94;
    _os_log_impl(&_mh_execute_header, v95, v96, "Saved model with %lu peers", v97, 0xCu);
  }
}

void sub_100176BC0()
{
  v1 = *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model);
  v2 = objc_allocWithZone(TPRecoveryKeyPair);
  v3 = v1;
  isa = sub_100216204().super.isa;
  v5 = sub_100216204().super.isa;
  v6 = [v2 initWithSigningKeyData:isa encryptionKeyData:v5];

  [v3 setRecoveryKeys:v6];
  v7 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO;
  v8 = *(v0 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO);
  v9 = sub_100216204().super.isa;
  [v8 setRecoveryKeySigningSPKI:v9];

  v10 = *(v0 + v7);
  v11 = sub_100216204().super.isa;
  [v10 setRecoveryKeyEncryptionSPKI:v11];
}

void sub_100176D20(uint64_t a1)
{
  v2 = type metadata accessor for Peer(0);
  v3 = v2 - 8;
  v4 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2, v5);
  v55 = (&v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8, v9);
  v11 = &v54 - v10;
  v12 = type metadata accessor for SignedCustodianRecoveryKey(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12, v15);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v3 + 52);
  v54 = a1;
  sub_100019C6C(a1 + v18, v11, &unk_10029D7B0, &unk_10021E820);
  v19 = *(v13 + 48);
  if (v19(v11, 1, v12) == 1)
  {
    *v17 = xmmword_10021D470;
    *(v17 + 1) = xmmword_10021D470;
    v20 = &v17[*(v12 + 24)];
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v19(v11, 1, v12) != 1)
    {
      sub_1000114D4(v11, &unk_10029D7B0, &unk_10021E820);
    }
  }

  else
  {
    sub_1001AC038(v11, v17, type metadata accessor for SignedCustodianRecoveryKey);
  }

  v21 = *v17;
  v22 = *(v17 + 1);
  v24 = *(v17 + 2);
  v23 = *(v17 + 3);
  v25 = objc_allocWithZone(TPECPublicKeyFactory);
  sub_100012558(v21, v22);
  sub_100012558(v24, v23);
  v26 = [v25 init];
  isa = sub_100216204().super.isa;
  v28 = sub_100216204().super.isa;
  v29 = [objc_opt_self() custodianRecoveryKeyWithData:isa sig:v28 keyFactory:v26];

  sub_100002BF0(v24, v23);
  sub_100002BF0(v21, v22);
  sub_1001AC1E4(v17, type metadata accessor for SignedCustodianRecoveryKey);
  if (v29)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v30 = sub_100216774();
    sub_100002648(v30, qword_10029D160);
    v31 = v55;
    sub_1001AC0A0(v54, v55, type metadata accessor for Peer);
    v32 = sub_100216754();
    v33 = sub_100216C54();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v57 = v35;
      *v34 = 136446210;
      v36 = *v31;
      v37 = v31[1];

      sub_1001AC1E4(v31, type metadata accessor for Peer);
      v38 = sub_100005FB0(v36, v37, &v57);

      *(v34 + 4) = v38;
      _os_log_impl(&_mh_execute_header, v32, v33, "Register CRK with peerID %{public}s", v34, 0xCu);
      sub_100006128(v35);
    }

    else
    {

      sub_1001AC1E4(v31, type metadata accessor for Peer);
    }

    v43 = v56;
    [*(v56 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_model) registerCustodianRecoveryKey:v29];
    type metadata accessor for CustodianRecoveryKeyMO();
    v40 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:*(v43 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_moc)];
    v44 = [v29 data];
    v45 = sub_100216224();
    v47 = v46;

    v48 = sub_100216204().super.isa;
    sub_100002BF0(v45, v47);
    [v40 setCrkInfo:v48];

    v49 = [v29 sig];
    v50 = sub_100216224();
    v52 = v51;

    v53 = sub_100216204().super.isa;
    sub_100002BF0(v50, v52);
    [v40 setCrkInfoSig:v53];

    [*(v43 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) addCustodianRecoveryKeysObject:v40];
  }

  else
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v39 = sub_100216774();
    sub_100002648(v39, qword_10029D160);
    v40 = sub_100216754();
    v41 = sub_100216C54();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&_mh_execute_header, v40, v41, "failed to parse custodian recovery key", v42, 2u);
    }
  }
}

void sub_100177364(char *a1)
{
  v2 = v1;
  v339 = type metadata accessor for Peer(0);
  v4 = *(*(v339 - 1) + 64);
  v6 = __chkstk_darwin(v339, v5);
  v320 = &v317 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6, v8);
  v321 = &v317 - v9;
  v10 = sub_10001148C(&unk_10029D7B0, &unk_10021E820);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8, v12);
  v326 = &v317 - v13;
  v14 = type metadata accessor for SignedVoucher(0);
  v343 = *(v14 - 8);
  v15 = v343[8];
  v17 = __chkstk_darwin(v14 - 8, v16);
  v341 = (&v317 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v17, v19);
  v335 = &v317 - v20;
  v21 = sub_10001148C(&unk_10029D760, &qword_10021E810);
  v22 = *(*(v21 - 8) + 64);
  v24 = __chkstk_darwin(v21 - 8, v23);
  v322 = &v317 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24, v26);
  v329 = &v317 - v27;
  v28 = type metadata accessor for SignedPeerDynamicInfo(0);
  v331 = *(v28 - 8);
  v332 = v28;
  v29 = *(v331 + 64);
  v31 = __chkstk_darwin(v28, v30);
  v325 = &v317 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31, v33);
  v330 = (&v317 - v34);
  v35 = sub_10001148C(&qword_1002985A8, &unk_100226650);
  v36 = *(*(v35 - 8) + 64);
  v38 = __chkstk_darwin(v35 - 8, v37);
  v338 = (&v317 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v38, v40);
  v327 = &v317 - v41;
  v42 = type metadata accessor for SignedPeerStableInfo(0);
  v333 = *(v42 - 8);
  v334 = v42;
  v43 = *(v333 + 64);
  v45 = __chkstk_darwin(v42, v44);
  v324 = (&v317 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v45, v47);
  v328 = (&v317 - v48);
  v49 = sub_10001148C(&qword_10029DA00, &unk_10021E800);
  v50 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49 - 8, v51);
  v53 = &v317 - v52;
  v54 = type metadata accessor for SignedPeerPermanentInfo(0);
  v337 = *(v54 - 8);
  v55 = v337[8];
  __chkstk_darwin(v54, v56);
  v58 = &v317 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v342 = a1;
  v59 = *a1;
  v60 = *(a1 + 1);
  v61 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_model;
  v340 = v2;
  v62 = *&v2[OBJC_IVAR____TtC18TrustedPeersHelper9Container_model];

  v63 = v62;
  v64 = sub_100216964();
  v344 = 0;
  v65 = [v63 hasPeerWithID:v64 error:&v344];

  if (v344)
  {
    v344;

LABEL_3:
    swift_willThrow();
    return;
  }

  v66 = v54;
  v68 = v337;
  v67 = v338;
  v318 = v61;
  v319 = v59;
  v323 = v60;
  if ((v65 & 1) == 0)
  {
    v81 = v53;
    sub_100019C6C(&v342[v339[7]], v53, &qword_10029DA00, &unk_10021E800);
    v82 = v68[6];
    if (v82(v53, 1, v66) == 1)
    {
      *v58 = xmmword_10021D470;
      *(v58 + 1) = xmmword_10021D470;
      v83 = &v58[*(v66 + 24)];
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v84 = v82(v53, 1, v66);
      v85 = v335;
      if (v84 != 1)
      {
        sub_1000114D4(v81, &qword_10029DA00, &unk_10021E800);
      }
    }

    else
    {
      sub_1001AC038(v53, v58, type metadata accessor for SignedPeerPermanentInfo);
      v85 = v335;
    }

    v317 = v58;
    v87 = *v58;
    v86 = *(v58 + 1);
    v89 = *(v58 + 2);
    v88 = *(v58 + 3);
    v90 = objc_allocWithZone(TPECPublicKeyFactory);

    v341 = v87;
    sub_100012558(v87, v86);
    sub_100012558(v89, v88);
    v91 = [v90 init];
    v92 = sub_100216964();

    isa = sub_100216204().super.isa;
    v94 = sub_100216204().super.isa;
    v95 = [objc_opt_self() permanentInfoWithPeerID:v92 data:isa sig:v94 keyFactory:v91];

    sub_100002BF0(v89, v88);
    sub_100002BF0(v341, v86);

    sub_1001AC1E4(v317, type metadata accessor for SignedPeerPermanentInfo);
    if (!v95)
    {

      v70 = v342;
      v111 = v326;
      sub_100019C6C(&v342[v339[11]], v326, &unk_10029D7B0, &unk_10021E820);
      v112 = type metadata accessor for SignedCustodianRecoveryKey(0);
      v113 = (*(*(v112 - 8) + 48))(v111, 1, v112);
      sub_1000114D4(v111, &unk_10029D7B0, &unk_10021E820);
      if (v113 == 1)
      {
        return;
      }

      if (*(v340 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_testIgnoreCustodianUpdates) != 1)
      {
        sub_100176D20(v70);
        return;
      }

      if (qword_100297520 == -1)
      {
        goto LABEL_23;
      }

      goto LABEL_110;
    }

    v341 = v95;
    v96 = v339;
    v97 = v327;
    sub_100019C6C(&v342[v339[8]], v327, &qword_1002985A8, &unk_100226650);
    v98 = v334;
    v99 = *(v333 + 48);
    if (v99(v97, 1, v334) == 1)
    {
      v100 = v328;
      *v328 = xmmword_10021D470;
      v100[1] = xmmword_10021D470;
      v101 = v100 + *(v98 + 24);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v102 = v99(v97, 1, v98);
      v103 = v329;
      if (v102 != 1)
      {
        sub_1000114D4(v97, &qword_1002985A8, &unk_100226650);
      }
    }

    else
    {
      v100 = v328;
      sub_1001AC038(v97, v328, type metadata accessor for SignedPeerStableInfo);
      v103 = v329;
    }

    v126 = *v100;
    v127 = *(v100 + 1);
    v128 = *(v100 + 2);
    v129 = *(v100 + 3);
    v130 = objc_allocWithZone(TPPeerStableInfo);
    v131 = sub_100216204().super.isa;
    v132 = sub_100216204().super.isa;
    v133 = [v130 initWithData:v131 sig:v132];

    sub_1001AC1E4(v100, type metadata accessor for SignedPeerStableInfo);
    v134 = v342;
    sub_100019C6C(&v342[v96[9]], v103, &unk_10029D760, &qword_10021E810);
    v135 = v332;
    v136 = *(v331 + 48);
    v137 = v136(v103, 1, v332);
    v338 = v133;
    if (v137 == 1)
    {
      v138 = v330;
      *v330 = xmmword_10021D470;
      v138[1] = xmmword_10021D470;
      v139 = v138 + *(v135 + 24);
      _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
      v140 = v136(v103, 1, v135);
      v141 = v343;
      if (v140 != 1)
      {
        sub_1000114D4(v103, &unk_10029D760, &qword_10021E810);
      }
    }

    else
    {
      v138 = v330;
      sub_1001AC038(v103, v330, type metadata accessor for SignedPeerDynamicInfo);
      v141 = v343;
    }

    v142 = *v138;
    v143 = *(v138 + 1);
    v144 = *(v138 + 2);
    v145 = *(v138 + 3);
    v146 = sub_100216204().super.isa;
    v147 = sub_100216204().super.isa;
    v339 = [objc_opt_self() dynamicInfoWithData:v146 sig:v147];

    sub_1001AC1E4(v138, type metadata accessor for SignedPeerDynamicInfo);
    v148 = *(v134 + 2);
    v344 = &_swiftEmptyArrayStorage;
    v149 = *(v148 + 16);
    if (v149)
    {
      v150 = objc_opt_self();
      v151 = v148 + ((*(v141 + 80) + 32) & ~*(v141 + 80));
      v152 = v141[9];
      v343 = &_swiftEmptyArrayStorage;
      do
      {
        sub_1001AC0A0(v151, v85, type metadata accessor for SignedVoucher);
        v153 = *v85;
        v154 = v85[1];
        v155 = v85[2];
        v156 = v85[3];
        v157 = sub_100216204().super.isa;
        v158 = sub_100216204().super.isa;
        v159 = [v150 voucherInfoWithData:v157 sig:v158];

        sub_1001AC1E4(v85, type metadata accessor for SignedVoucher);
        if (v159)
        {
          sub_100216B04();
          if (*((v344 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v344 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v160 = *((v344 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_100216B44();
          }

          sub_100216B64();
          v343 = v344;
        }

        v151 += v152;
        --v149;
      }

      while (v149);
    }

    else
    {
      v343 = &_swiftEmptyArrayStorage;
    }

    v161 = [*(v340 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_containerMO) egoPeerID];
    if (v161)
    {
      v162 = v161;
      v163 = sub_100216974();
      v165 = v164;

      v166 = v319 == v163 && v323 == v165;
      v167 = v341;
      if (v166)
      {
        v168 = 1;
      }

      else
      {
        v168 = sub_1002171A4();
      }
    }

    else
    {
      v168 = 0;
      v167 = v341;
    }

    v169 = objc_allocWithZone(TPPeer);
    v344 = 0;
    v170 = v167;
    v171 = v338;
    v172 = v339;
    v173 = [v169 initWithPermanentInfo:v170 stableInfo:v171 dynamicInfo:v172 error:&v344];
    if (v173)
    {
      v174 = v173;
      v175 = v344;

      sub_100154700(v174, v343, v168 & 1);
    }

    else
    {
      v176 = v344;
      sub_100216154();

      swift_willThrow();
    }

    return;
  }

  v69 = OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter;
  v70 = v340;
  v71 = *(v340 + OBJC_IVAR____TtC18TrustedPeersHelper9Container_dbAdapter);
  v73 = *(v71 + 16);
  v72 = *(v71 + 24);

  v74 = v73;
  v75 = v72;
  v76 = v319;
  v77 = v323;
  v78 = v336;
  v79 = sub_10019CE9C(v74, v75, v319, v323);
  v80 = v78;
  if (v78)
  {

    return;
  }

  v104 = v79;

  if (!v104)
  {
    sub_1000561D0();
    swift_allocError();
    *v177 = v76;
    *(v177 + 8) = v77;
    *(v177 + 16) = 8;
    goto LABEL_3;
  }

  v105 = v67;
  sub_100019C6C(&v342[v339[8]], v67, &qword_1002985A8, &unk_100226650);
  v106 = v334;
  v107 = *(v333 + 48);
  v108 = v107(v105, 1, v334);
  v337 = v104;
  v335 = v69;
  if (v108 == 1)
  {
    v109 = v324;
    *v324 = xmmword_10021D470;
    v109[1] = xmmword_10021D470;
    v110 = v109 + *(v106 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v107(v105, 1, v106) != 1)
    {
      sub_1000114D4(v105, &qword_1002985A8, &unk_100226650);
    }
  }

  else
  {
    v109 = v324;
    sub_1001AC038(v105, v324, type metadata accessor for SignedPeerStableInfo);
  }

  v178 = *v109;
  v179 = *(v109 + 1);
  v180 = *(v109 + 2);
  v181 = *(v109 + 3);
  v182 = objc_allocWithZone(TPPeerStableInfo);
  v183 = sub_100216204().super.isa;
  v184 = sub_100216204().super.isa;
  v185 = [v182 initWithData:v183 sig:v184];

  sub_1001AC1E4(v109, type metadata accessor for SignedPeerStableInfo);
  v186 = v337;
  v338 = v185;
  v187 = v325;
  v188 = v323;
  if (v185)
  {
    v189 = *&v70[v318];
    v190 = v338;
    v191 = sub_100216964();
    v344 = 0;
    v192 = [v189 copyPeerWithNewStableInfo:v190 forPeerWithID:v191 error:&v344];

    if (!v192)
    {
      v202 = v344;

      sub_100216154();
      swift_willThrow();

      return;
    }

    v193 = v344;
    v194 = [v192 stableInfo];
    if (v194)
    {
      v195 = v194;
      v196 = [v194 data];

      v197 = sub_100216224();
      v199 = v198;

      v200.super.isa = sub_100216204().super.isa;
      v201 = v199;
      v186 = v337;
      sub_100002BF0(v197, v201);
    }

    else
    {
      v200.super.isa = 0;
    }

    [v186 setStableInfo:v200.super.isa];

    v203 = [v192 stableInfo];
    if (v203)
    {
      v204 = v203;
      v205 = [v203 sig];

      v206 = sub_100216224();
      v208 = v207;

      v209.super.isa = sub_100216204().super.isa;
      v210 = v208;
      v186 = v337;
      sub_100002BF0(v206, v210);
    }

    else
    {
      v209.super.isa = 0;
    }

    v80 = 0;
    v70 = v340;
    v187 = v325;
    [v186 setStableInfoSig:v209.super.isa];

    v188 = v323;
  }

  v211 = v322;
  sub_100019C6C(&v342[v339[9]], v322, &unk_10029D760, &qword_10021E810);
  v212 = v332;
  v213 = *(v331 + 48);
  if (v213(v211, 1, v332) == 1)
  {
    *v187 = xmmword_10021D470;
    *(v187 + 16) = xmmword_10021D470;
    v214 = v187 + *(v212 + 24);
    _s18TrustedPeersHelper28PerformATOPRVActionsResponseVACycfC_0();
    if (v213(v211, 1, v212) != 1)
    {
      sub_1000114D4(v211, &unk_10029D760, &qword_10021E810);
    }
  }

  else
  {
    sub_1001AC038(v211, v187, type metadata accessor for SignedPeerDynamicInfo);
  }

  v215 = *v187;
  v216 = *(v187 + 8);
  v217 = *(v187 + 16);
  v218 = *(v187 + 24);
  v219 = sub_100216204().super.isa;
  v220 = sub_100216204().super.isa;
  v221 = [objc_opt_self() dynamicInfoWithData:v219 sig:v220];

  sub_1001AC1E4(v187, type metadata accessor for SignedPeerDynamicInfo);
  v339 = v221;
  if (v221)
  {
    v222 = *&v70[v318];
    v223 = v339;
    v224 = sub_100216964();
    v344 = 0;
    v225 = [v222 copyPeerWithNewDynamicInfo:v223 forPeerWithID:v224 error:&v344];

    if (!v225)
    {
      v236 = v344;

      sub_100216154();
      swift_willThrow();

LABEL_95:
      return;
    }

    v226 = v80;
    v227 = v344;
    v228 = [v225 dynamicInfo];
    if (v228)
    {
      v229 = v228;
      v230 = [v228 data];

      v231 = sub_100216224();
      v233 = v232;

      v234.super.isa = sub_100216204().super.isa;
      v235 = v231;
      v186 = v337;
      sub_100002BF0(v235, v233);
    }

    else
    {
      v234.super.isa = 0;
    }

    [v186 setDynamicInfo:v234.super.isa];

    v237 = [v225 dynamicInfo];
    if (v237)
    {
      v238 = v237;
      v239 = [v237 sig];

      v240 = sub_100216224();
      v242 = v241;

      v243.super.isa = sub_100216204().super.isa;
      v244 = v240;
      v186 = v337;
      sub_100002BF0(v244, v242);
    }

    else
    {
      v243.super.isa = 0;
    }

    v80 = v226;
    v188 = v323;
    v70 = v340;
    [v186 setDynamicInfoSig:v243.super.isa];
  }

  v245 = *(v342 + 2);
  v246 = *(v245 + 16);
  if (v246)
  {
    v247 = 0;
    while (v247 < *(v245 + 16))
    {
      v248 = v341;
      sub_1001AC0A0(v245 + ((*(v343 + 80) + 32) & ~*(v343 + 80)) + v343[9] * v247, v341, type metadata accessor for SignedVoucher);
      sub_100179334(v248, v186, v70);
      ++v247;
      sub_1001AC1E4(v248, type metadata accessor for SignedVoucher);
      if (v246 == v247)
      {
        goto LABEL_82;
      }
    }

    __break(1u);
LABEL_110:
    swift_once();
LABEL_23:
    v114 = sub_100216774();
    sub_100002648(v114, qword_10029D160);
    v115 = v321;
    sub_1001AC0A0(v70, v321, type metadata accessor for Peer);
    v116 = sub_100216754();
    v117 = sub_100216C54();
    v118 = os_log_type_enabled(v116, v117);
    v119 = v320;
    if (v118)
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v344 = v121;
      *v120 = 136446210;
      sub_1001AC0A0(v115, v119, type metadata accessor for Peer);
      v122 = sub_100216994();
      v124 = v123;
      sub_1001AC1E4(v115, type metadata accessor for Peer);
      v125 = sub_100005FB0(v122, v124, &v344);

      *(v120 + 4) = v125;
      _os_log_impl(&_mh_execute_header, v116, v117, "Ignoring Custodian update due to test request: %{public}s", v120, 0xCu);
      sub_100006128(v121);
    }

    else
    {

      sub_1001AC1E4(v115, type metadata accessor for Peer);
    }

    return;
  }

LABEL_82:
  v249 = [v186 permanentInfo];
  if (!v249)
  {
LABEL_89:
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v277 = sub_100216774();
    sub_100002648(v277, qword_10029D160);

    v278 = sub_100216754();
    v279 = sub_100216C74();

    if (os_log_type_enabled(v278, v279))
    {
      v280 = swift_slowAlloc();
      v281 = swift_slowAlloc();
      v344 = v281;
      *v280 = 136446210;
      v282 = v186;
      v283 = sub_100005FB0(v319, v188, &v344);

      *(v280 + 4) = v283;
      _os_log_impl(&_mh_execute_header, v278, v279, "addOrUpdate peer %{public}s has no/incomplete permanent info/sig", v280, 0xCu);
      sub_100006128(v281);
    }

    else
    {
    }

    goto LABEL_95;
  }

  v336 = v80;
  v250 = v249;
  v251 = sub_100216224();
  v253 = v252;

  v254 = [v186 permanentInfoSig];
  if (!v254)
  {
    sub_100002BF0(v251, v253);
    v188 = v323;
    goto LABEL_89;
  }

  v255 = v254;
  v256 = sub_100216224();
  v258 = v257;

  v259 = [objc_allocWithZone(TPECPublicKeyFactory) init];

  sub_100012558(v251, v253);
  sub_100012558(v256, v258);
  v260 = sub_100216964();

  v261 = sub_100216204().super.isa;
  v262 = sub_100216204().super.isa;
  v263 = objc_opt_self();
  v342 = v259;
  v264 = [v263 permanentInfoWithPeerID:v260 data:v261 sig:v262 keyFactory:v259];

  v343 = v258;
  sub_100002BF0(v256, v258);

  sub_100002BF0(v251, v253);
  if (!v264)
  {
    if (qword_100297520 != -1)
    {
      swift_once();
    }

    v284 = sub_100216774();
    sub_100002648(v284, qword_10029D160);
    v285 = v323;

    v286 = sub_100216754();
    v287 = sub_100216C74();

    if (os_log_type_enabled(v286, v287))
    {
      v288 = swift_slowAlloc();
      v289 = swift_slowAlloc();
      v344 = v289;
      *v288 = 136446210;
      v290 = sub_100005FB0(v319, v285, &v344);

      *(v288 + 4) = v290;
      _os_log_impl(&_mh_execute_header, v286, v287, "Couldn't parse peer identity: %{public}s", v288, 0xCu);
      sub_100006128(v289);

      sub_100002BF0(v251, v253);
      sub_100002BF0(v256, v343);
    }

    else
    {

      sub_100002BF0(v251, v253);
      sub_100002BF0(v256, v343);
    }

LABEL_107:
    return;
  }

  v265 = objc_allocWithZone(TPPeer);
  v344 = 0;
  v266 = v338;
  v267 = v339;
  v268 = v264;
  v341 = v266;
  v269 = [v265 initWithPermanentInfo:v268 stableInfo:v266 dynamicInfo:v267 error:&v344];
  if (v269)
  {
    v270 = v269;
    v271 = v344;

    v272 = *&v335[v340];

    v273 = sub_10010F154();
    v275 = v274;

    if (v275 >> 60 != 15)
    {
      v339 = v273;
      v307 = sub_100216204().super.isa;
      v308 = [v270 calculateHmacWithHmacKey:v307];
      v340 = v268;
      v309 = v308;

      v310 = sub_100216224();
      v311 = v256;
      v312 = v267;
      v314 = v313;

      v315 = sub_100216204().super.isa;
      sub_100002BF0(v310, v314);
      v316 = v337;
      [v337 setHmacSig:v315];

      sub_100002BF0(v251, v253);
      sub_100002BF0(v311, v343);

      sub_10004CD18(v339, v275);
      return;
    }

    v276 = v337;
    [v337 setHmacSig:0];

    sub_100002BF0(v251, v253);
    sub_100002BF0(v256, v343);

    goto LABEL_107;
  }

  v291 = v344;
  v292 = sub_100216154();

  swift_willThrow();
  v339 = v267;

  if (qword_100297520 != -1)
  {
    swift_once();
  }

  v293 = sub_100216774();
  sub_100002648(v293, qword_10029D160);
  v294 = v323;

  swift_errorRetain();
  v295 = sub_100216754();
  v296 = sub_100216C74();

  if (os_log_type_enabled(v295, v296))
  {
    v297 = swift_slowAlloc();
    v336 = v292;
    v298 = v297;
    v299 = swift_slowAlloc();
    v338 = v295;
    v300 = v299;
    v301 = swift_slowAlloc();
    v344 = v301;
    *v298 = 136446466;
    v302 = sub_100005FB0(v319, v294, &v344);
    v340 = v268;
    v303 = v302;

    *(v298 + 4) = v303;
    *(v298 + 12) = 2112;
    swift_errorRetain();
    v304 = _swift_stdlib_bridgeErrorToNSError();
    *(v298 + 14) = v304;
    *v300 = v304;
    v305 = v296;
    v306 = v338;
    _os_log_impl(&_mh_execute_header, v338, v305, "failed to construct peer for %{public}s: %@", v298, 0x16u);
    sub_1000114D4(v300, &qword_10029D580, &unk_10021CCC0);

    sub_100006128(v301);

    sub_100002BF0(v251, v253);
    sub_100002BF0(v256, v343);
  }

  else
  {

    sub_100002BF0(v251, v253);
    sub_100002BF0(v256, v343);
  }
}